Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/j2k?download=true
inline.NumInlined: 157
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 34
begin_hunk_0_@opj_j2k_setup_encoder:bb.a
  br label %.critedge692

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 5608 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !49   ; 6 uses
  %i.o = add i32 %i.n, -1025
  %or.cond679 = icmp ult i32 %i.o, -1021
  br i1 %or.cond679, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %i.n) #21 ; 0 uses
  br label %.critedge692

bb.h:                                             ; preds = %bb.f
  %i.q = mul nuw nsw i32 %i.n, %i.j
  %i.r = icmp samesign ugt i32 %i.q, 4096
  br i1 %i.r, label %bb.i, label %.lr.ph.i

bb.i:                                             ; preds = %bb.h
  %i.s = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.3) #21 ; 0 uses
  br label %.critedge692

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.06.i = phi i32 [ %i.u, %.lr.ph.i ], [ 0, %bb.h ] ; 2 uses
  %.045.i = phi i32 [ %i.t, %.lr.ph.i ], [ %i.j, %bb.h ] ; 2 uses
  %i.t = lshr i32 %.045.i, 1
  %i.u = add nuw nsw i32 %.06.i, 1
  %i.v = icmp samesign ugt i32 %.045.i, 3
  br i1 %i.v, label %.lr.ph.i, label %.lr.ph.i694, !llvm.loop !245

.lr.ph.i694:                                      ; preds = %.lr.ph.i, %.lr.ph.i694
  %.06.i695 = phi i32 [ %i.x, %.lr.ph.i694 ], [ 0, %.lr.ph.i ] ; 2 uses
  %.045.i696 = phi i32 [ %i.w, %.lr.ph.i694 ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %i.w = lshr i32 %.045.i696, 1
  %i.x = add nuw nsw i32 %.06.i695, 1
  %i.y = icmp samesign ugt i32 %.045.i696, 3
  br i1 %i.y, label %.lr.ph.i694, label %opj_int_floorlog2.exit697, !llvm.loop !245

opj_int_floorlog2.exit697:                        ; preds = %.lr.ph.i694
  %i.z = shl nuw i32 2, %.06.i
  %.not = icmp eq i32 %i.j, %i.z
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %opj_int_floorlog2.exit697
  %i.aa = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %i.j) #21 ; 0 uses
  br label %.critedge692

bb.k:                                             ; preds = %opj_int_floorlog2.exit697
  %i.ab = shl nuw i32 2, %.06.i695
  %.not639 = icmp eq i32 %i.n, %i.ab
  br i1 %.not639, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %i.n) #21 ; 0 uses
  br label %.critedge692

bb.m:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !259
  %.not640 = icmp eq i32 %i.ae, 0
  br i1 %.not640, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !260
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ai = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.4) #21 ; 0 uses
  br label %.critedge692

bb.p:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4796
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !50
  %i.al = icmp sgt i32 %i.ak, 10
  br i1 %i.al, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.am = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef 10) #21 ; 0 uses
  br label %.critedge692

bb.r:                                             ; preds = %bb.p
  %i.an = icmp samesign ugt i32 %i.f, 10
  br i1 %i.an, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ao = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 10) #21 ; 0 uses
  br label %.critedge692

bb.t:                                             ; preds = %bb.r, %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 16 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !53
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  store i32 1, ptr %i.at, align 8, !tbaa !33
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 5 uses
  store i32 1, ptr %i.au, align 4, !tbaa !32
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 18716 ; 10 uses
  %i.aw = load i16, ptr %i.av, align 4, !tbaa !54
  %i.ax = icmp eq i16 %i.aw, 0
  br i1 %i.ax, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 18684
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !261
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
  %switch.gep1003 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.opj_j2k_setup_encoder.22, i64 %i.bd
  %switch.load1004 = load i32, ptr %switch.gep1003, align 4
  store i16 %switch.masked, ptr %i.av, align 4, !tbaa !54
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 18712
  store i32 %switch.load, ptr %i.be, align 8, !tbaa !55
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 18688
  store i32 %switch.load1004, ptr %i.bf, align 8, !tbaa !56
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %switch.lookup
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 18692
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !262
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
  %.sink964 = phi i16 [ -32512, %bb.x ], [ 4, %bb.w ], [ 3, %bb.v ]
  store i16 %.sink964, ptr %i.av, align 4, !tbaa !54
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.y
  %i.bi = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 2, ptr noundef nonnull @.str.7) #21 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread, %bb.t
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 4796 ; 7 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !50 ; 5 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %.preheader750.thread, label %bb.aa

.preheader750.thread:                             ; preds = %bb.z
  store i32 1, ptr %i.bj, align 4, !tbaa !50
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 1, ptr %i.bm, align 4, !tbaa !57
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 4800
  store float 0.000000e+00, ptr %i.bn, align 8, !tbaa !59
  br label %.loopexit749

bb.aa:                                            ; preds = %bb.z
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !57
  %i.bo = icmp eq i32 %.pre, 0
  br i1 %i.bo, label %bb.aj, label %.preheader750

.preheader750:                                    ; preds = %bb.aa
  %.not981 = icmp eq i32 %i.bk, 1
  br i1 %.not981, label %.loopexit749, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader750, %bb.ai
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ai ], [ 1, %.preheader750 ] ; 3 uses
  %indvars825 = trunc nuw i64 %indvars.iv to i32  ; 5 uses
  %i.bp = add i32 %indvars825, -1                 ; 4 uses
  %i.bq = getelementptr [4 x i8], ptr %1, i64 %indvars.iv
  %i.br = getelementptr i8, ptr %i.bq, i64 4796
  %i.bs = load <2 x float>, ptr %i.br, align 4, !tbaa !59 ; 5 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 1
  %i.bu = fpext float %i.bt to double             ; 4 uses
  %i.bv = extractelement <2 x float> %i.bs, i64 0
  %i.bw = fpext float %i.bv to double             ; 4 uses
  %i.bx = fcmp ole <2 x float> %i.bs, splat (float 1.000000e+00)
  %i.by = select <2 x i1> %i.bx, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bs ; 4 uses
  %i.bz = extractelement <2 x float> %i.by, i64 0 ; 2 uses
  %i.ca = extractelement <2 x float> %i.by, i64 1 ; 2 uses
  %i.cb = fcmp ult float %i.ca, %i.bz
  br i1 %i.cb, label %bb.ai, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph
  %i.cc = fcmp une <2 x float> %i.by, %i.bs       ; 3 uses
  %4 = bitcast <2 x i1> %i.cc to i2
  %5 = icmp eq i2 %4, -1
  br i1 %5, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cd = fpext <2 x float> %i.by to <2 x double> ; 2 uses
  %i.ce = extractelement <2 x double> %i.cd, i64 0
  %i.cf = extractelement <2 x double> %i.cd, i64 1
  %i.cg = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef %indvars825, double noundef %i.bu, double noundef %i.cf, i32 noundef %i.bp, double noundef %i.bw, double noundef %i.ce) #21 ; 0 uses
  br label %bb.ai

bb.ad:                                            ; preds = %bb.ab
  %6 = extractelement <2 x i1> %i.cc, i64 1
  br i1 %6, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ch = fpext float %i.ca to double
  %i.ci = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef %indvars825, double noundef %i.bu, double noundef %i.ch, i32 noundef %i.bp, double noundef %i.bw) #21 ; 0 uses
  br label %bb.ai

bb.af:                                            ; preds = %bb.ad
  %7 = extractelement <2 x i1> %i.cc, i64 0
  br i1 %7, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cj = fpext float %i.bz to double
  %i.ck = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef %indvars825, double noundef %i.bu, i32 noundef %i.bp, double noundef %i.bw, double noundef %i.cj) #21 ; 0 uses
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.cl = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 2, ptr noundef nonnull @.str.11, i32 noundef %indvars825, double noundef %i.bu, i32 noundef %i.bp, double noundef %i.bw) #21 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ac, %bb.ag, %bb.ah, %bb.ae, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cm = load i32, ptr %i.bj, align 4, !tbaa !50 ; 2 uses
  %i.cn = zext i32 %i.cm to i64
  %i.co = icmp samesign ult i64 %indvars.iv.next, %i.cn
  br i1 %i.co, label %.lr.ph, label %.loopexit749, !llvm.loop !246

bb.aj:                                            ; preds = %bb.aa
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !263
  %.not643 = icmp eq i32 %i.cq, 0
  br i1 %.not643, label %.loopexit749, label %.preheader748

.preheader748:                                    ; preds = %bb.aj
  %.not982 = icmp eq i32 %i.bk, 1
  br i1 %.not982, label %.loopexit749, label %.lr.ph769

.lr.ph769:                                        ; preds = %.preheader748
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 5200 ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph769, %bb.an
  %i.cs = phi i32 [ %i.bk, %.lr.ph769 ], [ %i.dh, %bb.an ] ; 3 uses
  %indvars.iv826 = phi i64 [ 1, %.lr.ph769 ], [ %indvars.iv.next827, %bb.an ] ; 5 uses
  %indvars828 = trunc nuw i64 %indvars.iv826 to i32 ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv826
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !59 ; 3 uses
  %i.cv = add i32 %indvars828, -1
  %i.cw = getelementptr [4 x i8], ptr %i.cr, i64 %indvars.iv826
  %i.cx = getelementptr i8, ptr %i.cw, i64 -4
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !59 ; 2 uses
  %i.cz = fcmp olt float %i.cu, %i.cy
  br i1 %i.cz, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.da = add i32 %i.cs, -1
  %i.db = zext i32 %i.da to i64
  %i.dc = icmp eq i64 %indvars.iv826, %i.db
  %i.dd = fcmp oeq float %i.cu, 0.000000e+00
  %or.cond681 = and i1 %i.dc, %i.dd
  br i1 %or.cond681, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.de = fpext float %i.cu to double
  %i.df = fpext float %i.cy to double
  %i.dg = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef %indvars828, double noundef %i.de, i32 noundef %i.cv, double noundef %i.df) #21 ; 0 uses
  %.pre872 = load i32, ptr %i.bj, align 4, !tbaa !50
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.ak, %bb.am
  %i.dh = phi i32 [ %i.cs, %bb.al ], [ %i.cs, %bb.ak ], [ %.pre872, %bb.am ] ; 3 uses
  %indvars.iv.next827 = add nuw nsw i64 %indvars.iv826, 1 ; 2 uses
  %i.di = zext i32 %i.dh to i64
  %i.dj = icmp samesign ult i64 %indvars.iv.next827, %i.di
  br i1 %i.dj, label %bb.ak, label %.loopexit749, !llvm.loop !247

.loopexit749:                                     ; preds = %bb.ai, %bb.an, %.preheader750.thread, %.preheader750, %.preheader748, %bb.aj
  %i.dk = phi i32 [ %i.dh, %bb.an ], [ 1, %.preheader750.thread ], [ 1, %.preheader750 ], [ 1, %.preheader748 ], [ %i.bk, %bb.aj ], [ %i.cm, %bb.ai ] ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 18712 ; 3 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !55 ; 3 uses
  %i.dn = icmp slt i32 %i.dm, 1
  br i1 %i.dn, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %.loopexit749
  %i.do = sext i32 %i.dk to i64
  %i.dp = getelementptr [4 x i8], ptr %1, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.dp, i64 4796
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !59 ; 2 uses
  %i.ds = fcmp ogt float %i.dr, 0.000000e+00
  br i1 %i.ds, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.dt = load i32, ptr %i.ap, align 8, !tbaa !53
  %i.du = uitofp i32 %i.dt to double
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !60 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !62
  %i.dz = uitofp i32 %i.dy to double
  %i.ea = fmul nnan double %i.du, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !63
  %i.ed = uitofp i32 %i.ec to double
  %i.ee = fmul double %i.ea, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !64
  %i.eh = uitofp i32 %i.eg to double
  %i.ei = fmul double %i.ee, %i.eh
  %i.ej = fpext nnan float %i.dr to double
  %i.ek = fmul nnan double %i.ej, 8.000000e+00
  %i.el = load i32, ptr %i.dw, align 8, !tbaa !65
  %i.em = uitofp i32 %i.el to double
  %i.en = fmul double %i.ek, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !66
  %i.eq = uitofp i32 %i.ep to double
  %i.er = fmul double %i.en, %i.eq
  %i.es = fdiv double %i.ei, %i.er                ; 2 uses
  %i.et = fcmp ogt double %i.es, f0x41E0000010000000
  br i1 %i.et, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eu = fptrunc double %i.es to float
  %i.ev = tail call float @llvm.floor.f32(float %i.eu)
  %i.ew = fptosi float %i.ev to i32
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %storemerge = phi i32 [ %i.ew, %bb.aq ], [ 2147483647, %bb.ap ]
  store i32 %storemerge, ptr %i.dl, align 8, !tbaa !55
  br label %._crit_edge.thread

bb.as:                                            ; preds = %bb.ao
  store i32 0, ptr %i.dl, align 8, !tbaa !55
  br label %._crit_edge.thread

bb.at:                                            ; preds = %.loopexit749
  %i.ex = load i16, ptr %i.av, align 4, !tbaa !54
  %i.ey = add i16 %i.ex, -1024
  %or.cond682 = icmp ult i16 %i.ey, 1436
  %i.ez = icmp eq i32 %i.dk, 1
  %or.cond965 = and i1 %or.cond682, %i.ez
  br i1 %or.cond965, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 4800 ; 2 uses
  %i.fb = load float, ptr %i.fa, align 8, !tbaa !59
  %i.fc = fcmp oeq float %i.fb, 0.000000e+00
  br i1 %i.fc, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fd = load i32, ptr %i.ap, align 8, !tbaa !53
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !60 ; 5 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !62
  %i.fi = mul i32 %i.fh, %i.fd
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !63
  %i.fl = mul i32 %i.fi, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !64
  %i.fo = mul i32 %i.fl, %i.fn
  %i.fp = uitofp i32 %i.fo to float
  %i.fq = shl i32 %i.dm, 3
  %i.fr = load i32, ptr %i.ff, align 8, !tbaa !65
  %i.fs = mul i32 %i.fq, %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !66
  %i.fv = mul i32 %i.fs, %i.fu
  %i.fw = uitofp i32 %i.fv to float
  %i.fx = fdiv float %i.fp, %i.fw
  store float %i.fx, ptr %i.fa, align 8, !tbaa !59
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %i.fy = load i32, ptr %i.ap, align 8, !tbaa !53
  %i.fz = uitofp i32 %i.fy to double
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !60 ; 5 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !62
  %i.ge = uitofp i32 %i.gd to double
  %i.gf = fmul nnan double %i.fz, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gb, i64 12
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !63
  %i.gi = uitofp i32 %i.gh to double
  %i.gj = fmul double %i.gf, %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !64
  %i.gm = uitofp i32 %i.gl to double
  %i.gn = fmul double %i.gj, %i.gm
  %i.go = uitofp nneg i32 %i.dm to double
  %i.gp = fmul nnan double %i.go, 8.000000e+00
  %i.gq = load i32, ptr %i.gb, align 8, !tbaa !65
  %i.gr = uitofp i32 %i.gq to double
  %i.gs = fmul double %i.gp, %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !66
  %i.gv = uitofp i32 %i.gu to double
  %i.gw = fmul double %i.gs, %i.gv
  %i.gx = fdiv double %i.gn, %i.gw
  %i.gy = fptrunc double %i.gx to float           ; 2 uses
  %.not803 = icmp eq i32 %i.dk, 0
  br i1 %.not803, label %._crit_edge.thread, label %.lr.ph772

.lr.ph772:                                        ; preds = %bb.aw
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 4800 ; 2 uses
  %wide.trip.count = zext i32 %i.dk to i64        ; 2 uses
  br label %.outer
end_hunk_0
