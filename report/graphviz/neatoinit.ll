Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/neatoinit?download=true
inline.NumInlined: 111
inline.NumDeleted: 48
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@makeGraphData:bb.a
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str.21, i64 noundef %i.r) #23 ; 0 uses
  tail call fastcc void @graphviz_exit() #24
  unreachable

gv_calloc.exit217:                                ; preds = %gv_calloc.exit
  %i.t = shl nsw i32 %i.a, 1
  %i.u = add nsw i32 %i.t, %1                     ; 3 uses
  %i.v = sext i32 %i.u to i64                     ; 10 uses
  %.not.i = icmp eq i32 %i.u, 0                   ; 2 uses
  br i1 %.not.i, label %gv_calloc.exit220, label %bb.f

bb.f:                                             ; preds = %gv_calloc.exit217
  %mul.ov.i219 = icmp slt i32 %i.u, 0
  br i1 %mul.ov.i219, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.20, i64 noundef %i.v, i64 noundef 4) #23 ; 0 uses
  tail call fastcc void @graphviz_exit() #24
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.y = tail call noalias ptr @calloc(i64 noundef %i.v, i64 noundef 4) #22 ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %gv_calloc.exit220.thread

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.ab = shl nuw nsw i64 %i.v, 2
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aa, ptr noundef nonnull @.str.21, i64 noundef %i.ab) #23 ; 0 uses
  tail call fastcc void @graphviz_exit() #24
  unreachable

gv_calloc.exit220:                                ; preds = %gv_calloc.exit217
  %i.ad = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #22 ; 3 uses
  %or.cond = or i1 %i.h, %.0176                   ; 2 uses
  br i1 %or.cond, label %gv_calloc.exit225.thread, label %gv_calloc.exit225.thread389

gv_calloc.exit220.thread:                         ; preds = %bb.h
  %or.cond247 = or i1 %i.h, %.0176                ; 4 uses
  br i1 %or.cond247, label %.thread, label %gv_calloc.exit225

.thread:                                          ; preds = %gv_calloc.exit220.thread
  %i.ae = tail call noalias ptr @calloc(i64 noundef %i.v, i64 noundef 4) #22 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.j, label %gv_calloc.exit225

bb.j:                                             ; preds = %.thread
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.ah = shl nuw nsw i64 %i.v, 2
  %i.ai = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ag, ptr noundef nonnull @.str.21, i64 noundef %i.ah) #23 ; 0 uses
  tail call fastcc void @graphviz_exit() #24
  unreachable

gv_calloc.exit225:                                ; preds = %.thread, %gv_calloc.exit220.thread
  %.0192 = phi ptr [ null, %gv_calloc.exit220.thread ], [ %i.ae, %.thread ] ; 3 uses
  br i1 %.0175, label %bb.k, label %gv_calloc.exit230

gv_calloc.exit225.thread389:                      ; preds = %gv_calloc.exit220
  br i1 %.0175, label %.thread.i229, label %gv_calloc.exit230

gv_calloc.exit225.thread:                         ; preds = %gv_calloc.exit220
  %i.aj = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #22 ; 2 uses
  br i1 %.0175, label %.thread.i229, label %gv_calloc.exit230

.thread.i229:                                     ; preds = %gv_calloc.exit225.thread389, %gv_calloc.exit225.thread
  %.0192258263 = phi ptr [ null, %gv_calloc.exit225.thread389 ], [ %i.aj, %gv_calloc.exit225.thread ]
  %i.ak = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #22
  br label %gv_calloc.exit230

bb.k:                                             ; preds = %gv_calloc.exit225
  %i.al = tail call noalias ptr @calloc(i64 noundef %i.v, i64 noundef 4) #22 ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.l, label %gv_calloc.exit230.thread

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.ao = shl nuw nsw i64 %i.v, 2
  %i.ap = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.an, ptr noundef nonnull @.str.21, i64 noundef %i.ao) #23 ; 0 uses
  tail call fastcc void @graphviz_exit() #24
  unreachable

gv_calloc.exit230:                                ; preds = %gv_calloc.exit225.thread389, %.thread.i229, %gv_calloc.exit225.thread, %gv_calloc.exit225
  %.0192257 = phi ptr [ %i.aj, %gv_calloc.exit225.thread ], [ %.0192, %gv_calloc.exit225 ], [ %.0192258263, %.thread.i229 ], [ null, %gv_calloc.exit225.thread389 ] ; 3 uses
  %i.aq = phi ptr [ %i.ad, %gv_calloc.exit225.thread ], [ %i.y, %gv_calloc.exit225 ], [ %i.ad, %.thread.i229 ], [ %i.ad, %gv_calloc.exit225.thread389 ] ; 3 uses
  %or.cond248255 = phi i1 [ true, %gv_calloc.exit225.thread ], [ %or.cond247, %gv_calloc.exit225 ], [ %or.cond, %.thread.i229 ], [ false, %gv_calloc.exit225.thread389 ] ; 3 uses
  %.0183 = phi ptr [ null, %gv_calloc.exit225.thread ], [ null, %gv_calloc.exit225 ], [ %i.ak, %.thread.i229 ], [ null, %gv_calloc.exit225.thread389 ] ; 3 uses
  br i1 %i.h, label %bb.m, label %gv_calloc.exit235

gv_calloc.exit230.thread:                         ; preds = %bb.k
  br i1 %i.h, label %.thread275, label %gv_calloc.exit235

bb.m:                                             ; preds = %gv_calloc.exit230
  br i1 %.not.i, label %.thread.i234, label %.thread275

.thread.i234:                                     ; preds = %bb.m
  %i.ar = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 1) #22
  br label %gv_calloc.exit235

.thread275:                                       ; preds = %gv_calloc.exit230.thread, %bb.m
  %.0192257270284 = phi ptr [ %.0192257, %bb.m ], [ %.0192, %gv_calloc.exit230.thread ]
  %i.as = phi ptr [ %i.aq, %bb.m ], [ %i.y, %gv_calloc.exit230.thread ]
  %or.cond248255272282 = phi i1 [ %or.cond248255, %bb.m ], [ %or.cond247, %gv_calloc.exit230.thread ]
  %.0183274280 = phi ptr [ %.0183, %bb.m ], [ %i.al, %gv_calloc.exit230.thread ]
  %i.at = tail call noalias ptr @calloc(i64 noundef %i.v, i64 noundef 1) #22 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.n, label %gv_calloc.exit235

bb.n:                                             ; preds = %.thread275
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.aw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str.21, i64 noundef %i.v) #23 ; 0 uses
  tail call fastcc void @graphviz_exit() #24
  unreachable

gv_calloc.exit235:                                ; preds = %.thread275, %.thread.i234, %gv_calloc.exit230.thread, %gv_calloc.exit230
  %.0183273 = phi ptr [ %i.al, %gv_calloc.exit230.thread ], [ %.0183, %gv_calloc.exit230 ], [ %.0183, %.thread.i234 ], [ %.0183274280, %.thread275 ]
  %or.cond248255271 = phi i1 [ %or.cond247, %gv_calloc.exit230.thread ], [ %or.cond248255, %gv_calloc.exit230 ], [ %or.cond248255, %.thread.i234 ], [ %or.cond248255272282, %.thread275 ] ; 2 uses
  %i.ax = phi ptr [ %i.y, %gv_calloc.exit230.thread ], [ %i.aq, %gv_calloc.exit230 ], [ %i.aq, %.thread.i234 ], [ %i.as, %.thread275 ]
  %.0192257269 = phi ptr [ %.0192, %gv_calloc.exit230.thread ], [ %.0192257, %gv_calloc.exit230 ], [ %.0192257, %.thread.i234 ], [ %.0192257270284, %.thread275 ] ; 2 uses
  %.0179 = phi ptr [ null, %gv_calloc.exit230.thread ], [ null, %gv_calloc.exit230 ], [ %i.ar, %.thread.i234 ], [ %i.at, %.thread275 ]
  %i.ay = tail call ptr @agfstnode(ptr noundef %0) #21 ; 2 uses
  %.not209318 = icmp eq ptr %i.ay, null
  br i1 %.not209318, label %._crit_edge327, label %.lr.ph326.preheader

.lr.ph326.preheader:                              ; preds = %gv_calloc.exit235
  %spec.select405.idx = select i1 %or.cond248255271, i64 4, i64 0
  %.2185.idx = select i1 %.0175, i64 4, i64 0
  %.2181.idx = zext i1 %i.h to i64
  br label %.lr.ph326

.lr.ph326:                                        ; preds = %.lr.ph326.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph326.preheader ] ; 4 uses
  %.0173325 = phi ptr [ %.1174.lcssa, %._crit_edge ], [ %i.ax, %.lr.ph326.preheader ] ; 3 uses
  %.1180323 = phi ptr [ %.3182.lcssa, %._crit_edge ], [ %.0179, %.lr.ph326.preheader ] ; 2 uses
  %.1184322 = phi ptr [ %.3186.lcssa, %._crit_edge ], [ %.0183273, %.lr.ph326.preheader ] ; 2 uses
  %.0191321 = phi ptr [ %i.fa, %._crit_edge ], [ %i.ay, %.lr.ph326.preheader ] ; 6 uses
  %.1193320 = phi ptr [ %.3195.lcssa, %._crit_edge ], [ %.0192257269, %.lr.ph326.preheader ] ; 2 uses
  %.0201319 = phi i32 [ %.1202.lcssa, %._crit_edge ], [ 0, %.lr.ph326.preheader ] ; 2 uses
  tail call void @clearPM(ptr noundef %i.b) #21
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  store ptr %.0191321, ptr %i.az, align 8, !tbaa !77
  %i.ba = getelementptr inbounds nuw i8, ptr %.0173325, i64 4 ; 2 uses
  %i.bb = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %indvars.iv ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  store ptr %.0173325, ptr %i.bc, align 8, !tbaa !197
  %spec.select = select i1 %or.cond248255271, ptr %.1193320, ptr null
  %spec.select405 = getelementptr inbounds nuw i8, ptr %.1193320, i64 %spec.select405.idx ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  store ptr %spec.select, ptr %i.bd, align 8, !tbaa !200
  %.sink361 = select i1 %.0175, ptr %.1184322, ptr null
  %.2185 = getelementptr inbounds nuw i8, ptr %.1184322, i64 %.2185.idx ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 2 uses
  store ptr %.sink361, ptr %i.be, align 8, !tbaa !201
  %.sink362 = select i1 %i.h, ptr %.1180323, ptr null
  %.2181 = getelementptr inbounds nuw i8, ptr %.1180323, i64 %.2181.idx ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr %.sink362, ptr %i.bf, align 8, !tbaa !202
  %i.bg = tail call ptr @agfstedge(ptr noundef %0, ptr noundef nonnull %.0191321) #21 ; 2 uses
  %.not212302 = icmp eq ptr %i.bg, null
  br i1 %.not212302, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph326, %bb.ae
  %.0312 = phi i64 [ %.1, %bb.ae ], [ 1, %.lr.ph326 ] ; 4 uses
  %.0171311 = phi i32 [ %.1172, %bb.ae ], [ 1, %.lr.ph326 ] ; 6 uses
  %.1174310 = phi ptr [ %.2, %bb.ae ], [ %i.ba, %.lr.ph326 ] ; 5 uses
  %.3182309 = phi ptr [ %.6, %bb.ae ], [ %.2181, %.lr.ph326 ] ; 7 uses
  %.3186308 = phi ptr [ %.5188, %bb.ae ], [ %.2185, %.lr.ph326 ] ; 6 uses
  %.0190305 = phi ptr [ %i.ex, %bb.ae ], [ %i.bg, %.lr.ph326 ] ; 18 uses
  %.3195304 = phi ptr [ %.5197, %bb.ae ], [ %spec.select405, %.lr.ph326 ] ; 8 uses
  %.1202303 = phi i32 [ %.2203, %bb.ae ], [ %.0201319, %.lr.ph326 ] ; 4 uses
  %i.bh = load i32, ptr %.0190305, align 8
  %i.bi = and i32 %i.bh, 3                        ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 2                    ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %.0190305, i64 -64 ; 3 uses
  %i.bl = select i1 %i.bj, ptr %.0190305, ptr %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !85
  %i.bo = icmp eq i32 %i.bi, 3                    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0190305, i64 64 ; 2 uses
  %i.bq = select i1 %i.bo, ptr %.0190305, ptr %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !85
  %i.bt = icmp eq ptr %i.bn, %i.bs
  br i1 %i.bt, label %bb.ae, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.bu = select i1 %i.bo, i64 56, i64 120
  %i.bv = getelementptr inbounds nuw i8, ptr %.0190305, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !85
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 164
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !189 ; 2 uses
  %i.cb = select i1 %i.bj, i64 56, i64 -8
  %i.cc = getelementptr inbounds i8, ptr %.0190305, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !85
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 164
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !189 ; 2 uses
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.ca, i32 %i.ch)
  %spec.select18.i = tail call i32 @llvm.smax.i32(i32 %i.ca, i32 %i.ch)
  %i.ci = tail call i32 @insertPM(ptr noundef %i.b, i32 noundef %spec.select.i, i32 noundef %spec.select18.i, i32 noundef %.0171311) #21 ; 3 uses
  %.not213 = icmp eq i32 %i.ci, %.0171311
  br i1 %.not213, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %.0175, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %.0190305, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 176
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !148
  %i.cn = load ptr, ptr %i.be, align 8, !tbaa !201
  %i.co = sext i32 %i.ci to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.co ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !203
  %i.cr = fpext float %i.cq to double
  %i.cs = fadd double %i.cm, %i.cr
  %i.ct = fptrunc double %i.cs to float
  store float %i.ct, ptr %i.cp, align 4, !tbaa !203
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %.0176, label %bb.s, label %bb.ae

bb.s:                                             ; preds = %bb.r
  %i.cu = load ptr, ptr %i.bd, align 8, !tbaa !200
  %i.cv = sext i32 %i.ci to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cv ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !203
  %i.cy = fpext nsz float %i.cx to double
  %i.cz = getelementptr inbounds nuw i8, ptr %.0190305, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 184
  %i.dc = load double, ptr %i.db, align 8, !tbaa !159
  %i.dd = tail call nsz double @llvm.maxnum.f64(double %i.cy, double %i.dc)
  %i.de = fptrunc double %i.dd to float
  store float %i.de, ptr %i.cw, align 4, !tbaa !203
  br label %bb.ae

bb.t:                                             ; preds = %bb.o
  %i.df = load i32, ptr %.0190305, align 8
  %i.dg = and i32 %i.df, 3                        ; 2 uses
  %i.dh = icmp eq i32 %i.dg, 3
  %i.di = select i1 %i.dh, ptr %.0190305, ptr %i.bp
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !85 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %.0191321
  br i1 %i.dl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dm = icmp eq i32 %i.dg, 2
  %i.dn = select i1 %i.dm, ptr %.0190305, ptr %i.bk
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !85
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.dq = phi ptr [ %i.dp, %bb.u ], [ %i.dk, %bb.t ]
  %i.dr = add nsw i32 %.1202303, 1
  %i.ds = add nsw i32 %.0171311, 1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 164
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !189
  %i.dx = getelementptr inbounds nuw i8, ptr %.1174310, i64 4
  store i32 %i.dw, ptr %.1174310, align 4, !tbaa !74
  br i1 %.0175, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dy = getelementptr inbounds nuw i8, ptr %.0190305, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 176
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !148
  %i.ec = fptrunc double %i.eb to float
  %i.ed = getelementptr inbounds nuw i8, ptr %.3186308, i64 4
  store float %i.ec, ptr %.3186308, align 4, !tbaa !203
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.4187 = phi ptr [ %i.ed, %bb.w ], [ %.3186308, %bb.v ]
  br i1 %.0176, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %i.h, label %.thread285, label %.thread289

.thread285:                                       ; preds = %bb.y
  %i.ee = getelementptr inbounds nuw i8, ptr %.3195304, i64 4
  store float 1.000000e+00, ptr %.3195304, align 4, !tbaa !203
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.ef = getelementptr inbounds nuw i8, ptr %.0190305, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 184
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !159
  %i.ej = fptrunc double %i.ei to float
  %i.ek = getelementptr inbounds nuw i8, ptr %.3195304, i64 4 ; 2 uses
  store float %i.ej, ptr %.3195304, align 4, !tbaa !203
  br i1 %i.h, label %bb.aa, label %.thread289

bb.aa:                                            ; preds = %.thread285, %bb.z
  %.4196288 = phi ptr [ %i.ee, %.thread285 ], [ %i.ek, %bb.z ]
  %i.el = tail call ptr @agget(ptr noundef nonnull %.0190305, ptr noundef nonnull @.str.60) #21 ; 2 uses
  %.not214 = icmp eq ptr %i.el, null
  br i1 %.not214, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.em = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.el, ptr noundef nonnull dereferenceable(5) @.str.61, i64 noundef 4) #25
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.eo = load i32, ptr %.0190305, align 8
  %i.ep = and i32 %i.eo, 3
  %i.eq = icmp eq i32 %i.ep, 2
  %i.er = select i1 %i.eq, ptr %.0190305, ptr %i.bk
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 56
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !85
  %i.eu = icmp eq ptr %.0191321, %i.et
  %i.ev = select i1 %i.eu, i8 1, i8 -1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %storemerge = phi i8 [ %i.ev, %bb.ac ], [ 0, %bb.ab ]
  %.4 = getelementptr inbounds nuw i8, ptr %.3182309, i64 1
  store i8 %storemerge, ptr %.3182309, align 1, !tbaa !46
  br label %.thread289

.thread289:                                       ; preds = %bb.y, %bb.ad, %bb.z
  %.4196287 = phi ptr [ %.4196288, %bb.ad ], [ %i.ek, %bb.z ], [ %.3195304, %bb.y ]
  %.5 = phi ptr [ %.4, %bb.ad ], [ %.3182309, %bb.z ], [ %.3182309, %bb.y ]
  %i.ew = add i64 %.0312, 1
  br label %bb.ae

bb.ae:                                            ; preds = %.thread289, %bb.s, %bb.r, %.lr.ph
  %.2203 = phi i32 [ %.1202303, %.lr.ph ], [ %.1202303, %bb.s ], [ %.1202303, %bb.r ], [ %i.dr, %.thread289 ] ; 2 uses
  %.5197 = phi ptr [ %.3195304, %.lr.ph ], [ %.3195304, %bb.s ], [ %.3195304, %bb.r ], [ %.4196287, %.thread289 ] ; 2 uses
  %.5188 = phi ptr [ %.3186308, %.lr.ph ], [ %.3186308, %bb.s ], [ %.3186308, %bb.r ], [ %.4187, %.thread289 ] ; 2 uses
  %.6 = phi ptr [ %.3182309, %.lr.ph ], [ %.3182309, %bb.s ], [ %.3182309, %bb.r ], [ %.5, %.thread289 ] ; 2 uses
  %.2 = phi ptr [ %.1174310, %.lr.ph ], [ %.1174310, %bb.s ], [ %.1174310, %bb.r ], [ %i.dx, %.thread289 ] ; 2 uses
  %.1172 = phi i32 [ %.0171311, %.lr.ph ], [ %.0171311, %bb.s ], [ %.0171311, %bb.r ], [ %i.ds, %.thread289 ]
  %.1 = phi i64 [ %.0312, %.lr.ph ], [ %.0312, %bb.s ], [ %.0312, %bb.r ], [ %i.ew, %.thread289 ] ; 2 uses
  %i.ex = tail call ptr @agnxtedge(ptr noundef %0, ptr noundef nonnull %.0190305, ptr noundef nonnull %.0191321) #21 ; 2 uses
  %.not212 = icmp eq ptr %i.ex, null
  br i1 %.not212, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !204

._crit_edge.loopexit:                             ; preds = %bb.ae
  %.pre = load ptr, ptr %i.bc, align 8, !tbaa !197
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph326
  %i.ey = phi ptr [ %.0173325, %.lr.ph326 ], [ %.pre, %._crit_edge.loopexit ]
  %.1202.lcssa = phi i32 [ %.0201319, %.lr.ph326 ], [ %.2203, %._crit_edge.loopexit ] ; 2 uses
  %.3195.lcssa = phi ptr [ %spec.select405, %.lr.ph326 ], [ %.5197, %._crit_edge.loopexit ] ; 2 uses
  %.3186.lcssa = phi ptr [ %.2185, %.lr.ph326 ], [ %.5188, %._crit_edge.loopexit ]
  %.3182.lcssa = phi ptr [ %.2181, %.lr.ph326 ], [ %.6, %._crit_edge.loopexit ]
  %.1174.lcssa = phi ptr [ %i.ba, %.lr.ph326 ], [ %.2, %._crit_edge.loopexit ]
  %.0.lcssa = phi i64 [ 1, %.lr.ph326 ], [ %.1, %._crit_edge.loopexit ]
  store i64 %.0.lcssa, ptr %i.bb, align 8, !tbaa !205
  %i.ez = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ez, ptr %i.ey, align 4, !tbaa !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.fa = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.0191321) #21 ; 2 uses
  %.not209 = icmp eq ptr %i.fa, null
  br i1 %.not209, label %._crit_edge327.loopexit, label %.lr.ph326, !llvm.loop !206

._crit_edge327.loopexit:                          ; preds = %._crit_edge
  %i.fb = sdiv i32 %.1202.lcssa, 2
  br label %._crit_edge327

._crit_edge327:                                   ; preds = %._crit_edge327.loopexit, %gv_calloc.exit235
  %.0201.lcssa = phi i32 [ 0, %gv_calloc.exit235 ], [ %i.fb, %._crit_edge327.loopexit ] ; 3 uses
  %.1193.lcssa = phi ptr [ %.0192257269, %gv_calloc.exit235 ], [ %.3195.lcssa, %._crit_edge327.loopexit ] ; 2 uses
  br i1 %i.h, label %.preheader.preheader, label %acyclic.exit

.preheader.preheader:                             ; preds = %._crit_edge327
  %xtraiter = and i64 %i.i, 3                     ; 3 uses
  %i.fc = icmp samesign ult i32 %1, 4
  br i1 %i.fc, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.i, 2147483644
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.new ], [ %indvars.iv.next.i.3, %.preheader ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !77
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !8  ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 224
  store i64 0, ptr %i.fh, align 8, !tbaa !207
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 232
  store i8 0, ptr %i.fi, align 8, !tbaa !208
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !77
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !8  ; 2 uses
end_hunk_0
