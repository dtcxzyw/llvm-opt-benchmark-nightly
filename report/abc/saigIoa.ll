Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/saigIoa?download=true
inline.NumInlined: 120
inline.NumDeleted: 37
begin_hunk_0_@Saig_ManReadBlif:bb.a
  %puts203 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.22) ; 0 uses
  br label %bb.ax

.critedge:                                        ; preds = %bb.c
  %i.e = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not232 = icmp eq i32 %i.e, 1
  br i1 %.not232, label %Abc_UtilStrsav.exit, label %bb.e

bb.e:                                             ; preds = %.critedge
  %puts202 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.21) ; 0 uses
  br label %bb.ax

Abc_UtilStrsav.exit:                              ; preds = %.critedge
  %i.f = tail call ptr @Aig_ManStart(i32 noundef 10000) #12 ; 37 uses
  %i.g = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) @Saig_ManReadToken.Buffer) #13
  %i.h = add i64 %i.g, 1
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #14 ; 2 uses
  %i.j = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull readonly dereferenceable(1) @Saig_ManReadToken.Buffer) #12 ; 0 uses
  store ptr %i.i, ptr %i.f, align 8, !tbaa !33
  %.not.i212 = icmp eq ptr %0, null
  br i1 %.not.i212, label %Abc_UtilStrsav.exit213, label %bb.f

bb.f:                                             ; preds = %Abc_UtilStrsav.exit
  %i.k = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #13
  %i.l = add i64 %i.k, 1
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #14 ; 2 uses
  %i.n = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull readonly dereferenceable(1) %0) #12 ; 0 uses
  br label %Abc_UtilStrsav.exit213

Abc_UtilStrsav.exit213:                           ; preds = %Abc_UtilStrsav.exit, %bb.f
  %i.o = phi ptr [ %i.m, %bb.f ], [ null, %Abc_UtilStrsav.exit ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !56
  %i.q = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not233 = icmp eq i32 %i.q, 1
  %lhsv = load i64, ptr @Saig_ManReadToken.Buffer, align 16
  %.not235 = icmp eq i64 %lhsv, 32497670068005166
  %or.cond = select i1 %.not233, i1 %.not235, i1 false
  br i1 %or.cond, label %.preheader269, label %bb.g

.preheader269:                                    ; preds = %Abc_UtilStrsav.exit213
  %i.r = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not236286 = icmp eq i32 %i.r, 1
  br i1 %.not236286, label %.lr.ph, label %.loopexit

bb.g:                                             ; preds = %Abc_UtilStrsav.exit213
  %puts201 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.20) ; 0 uses
  tail call void @Aig_ManStop(ptr noundef nonnull %i.f) #12
  br label %bb.ax

.lr.ph:                                           ; preds = %.preheader269, %bb.h
  %.0143287 = phi i32 [ %i.t, %bb.h ], [ 0, %.preheader269 ] ; 2 uses
  %i.s = load i8, ptr @Saig_ManReadToken.Buffer, align 16, !tbaa !28
  %.not173 = icmp eq i8 %i.s, 46
  br i1 %.not173, label %.critedge2, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.t = add nuw nsw i32 %.0143287, 1
  %i.u = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not236 = icmp eq i32 %i.u, 1
  br i1 %.not236, label %.lr.ph, label %.loopexit, !llvm.loop !50

.critedge2:                                       ; preds = %.lr.ph
  %i.v = load i64, ptr @Saig_ManReadToken.Buffer, align 16
  %i.w = xor i64 %i.v, 8319403537510788910
  %i.x = load i8, ptr getelementptr (i8, ptr @Saig_ManReadToken.Buffer, i64 8), align 8
  %i.y = zext i8 %i.x to i64
  %i.z = or i64 %i.w, %i.y
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %.not174 = icmp eq i32 %i.ab, 0
  br i1 %.not174, label %.preheader268, label %.loopexit

.preheader268:                                    ; preds = %.critedge2
  %i.ac = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not237288 = icmp eq i32 %i.ac, 1
  br i1 %.not237288, label %.lr.ph290, label %._crit_edge

.loopexit:                                        ; preds = %bb.h, %.preheader269, %.critedge2
  %puts200 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19) ; 0 uses
  tail call void @Aig_ManStop(ptr noundef nonnull %i.f) #12
  br label %bb.ax

.lr.ph290:                                        ; preds = %.preheader268, %bb.i
  %.0142289 = phi i32 [ %i.am, %bb.i ], [ 0, %.preheader268 ] ; 2 uses
  %i.ad = load i8, ptr @Saig_ManReadToken.Buffer, align 16, !tbaa !28
  %.not176 = icmp eq i8 %i.ad, 46
  br i1 %.not176, label %.critedge4.preheader, label %bb.i

.critedge4.preheader:                             ; preds = %.lr.ph290
  %i.ae = load i32, ptr @Saig_ManReadToken.Buffer, align 16
  %i.af = xor i32 %i.ae, 1952541742
  %i.ag = load i32, ptr getelementptr (i8, ptr @Saig_ManReadToken.Buffer, i64 3), align 1
  %i.ah = xor i32 %i.ag, 6841204
  %i.ai = or i32 %i.af, %i.ah
  %i.aj = icmp ne i32 %i.ai, 0
  %i.ak = zext i1 %i.aj to i32
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph293, label %.preheader267

bb.i:                                             ; preds = %.lr.ph290
  %i.am = add nuw nsw i32 %.0142289, 1
  %i.an = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not237 = icmp eq i32 %i.an, 1
  br i1 %.not237, label %.lr.ph290, label %._crit_edge, !llvm.loop !51

._crit_edge:                                      ; preds = %bb.i, %.preheader268
  %puts199 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18) ; 0 uses
  tail call void @Aig_ManStop(ptr noundef nonnull %i.f) #12
  br label %bb.ax

.preheader267:                                    ; preds = %.critedge4, %.critedge4.preheader
  %.0141.lcssa = phi i32 [ 0, %.critedge4.preheader ], [ %i.at, %.critedge4 ] ; 4 uses
  %i.ao = add nuw nsw i32 %.0141.lcssa, %.0143287 ; 2 uses
  %.not307 = icmp eq i32 %i.ao, 0
  br i1 %.not307, label %._crit_edge296, label %.lr.ph295

.lr.ph293:                                        ; preds = %.critedge4.preheader, %.critedge4
  %.0141292 = phi i32 [ %i.at, %.critedge4 ], [ 0, %.critedge4.preheader ]
  %i.ap = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not258 = icmp eq i32 %i.ap, 1
  br i1 %.not258, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph293
  %puts198 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17) ; 0 uses
  tail call void @Aig_ManStop(ptr noundef nonnull %i.f) #12
  br label %bb.ax

bb.k:                                             ; preds = %.lr.ph293
  %i.aq = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not259 = icmp eq i32 %i.aq, 1
  br i1 %.not259, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %puts197 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16) ; 0 uses
  tail call void @Aig_ManStop(ptr noundef nonnull %i.f) #12
  br label %bb.ax

bb.m:                                             ; preds = %bb.k
  %i.ar = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not260 = icmp eq i32 %i.ar, 1
  br i1 %.not260, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %puts196 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  tail call void @Aig_ManStop(ptr noundef nonnull %i.f) #12
  br label %bb.ax

bb.o:                                             ; preds = %bb.m
  %i.as = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not261 = icmp eq i32 %i.as, 1
  br i1 %.not261, label %.critedge4, label %bb.p

bb.p:                                             ; preds = %bb.o
  %puts195 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14) ; 0 uses
  tail call void @Aig_ManStop(ptr noundef nonnull %i.f) #12
  br label %bb.ax

.critedge4:                                       ; preds = %bb.o
  %i.at = add nuw nsw i32 %.0141292, 1            ; 2 uses
  %i.au = load i32, ptr @Saig_ManReadToken.Buffer, align 16
  %i.av = xor i32 %i.au, 1952541742
  %i.aw = load i32, ptr getelementptr (i8, ptr @Saig_ManReadToken.Buffer, i64 3), align 1
  %i.ax = xor i32 %i.aw, 6841204
  %i.ay = or i32 %i.av, %i.ax
  %i.az = icmp ne i32 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph293, label %.preheader267, !llvm.loop !52

.lr.ph295:                                        ; preds = %.preheader267, %.lr.ph295
  %.1145294 = phi i32 [ %i.bd, %.lr.ph295 ], [ 0, %.preheader267 ]
  %i.bc = tail call ptr @Aig_ObjCreateCi(ptr noundef nonnull %i.f) #12 ; 0 uses
  %i.bd = add nuw i32 %.1145294, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bd, %i.ao
  br i1 %exitcond.not, label %._crit_edge296, label %.lr.ph295, !llvm.loop !53

._crit_edge296:                                   ; preds = %.lr.ph295, %.preheader267
  tail call void @Aig_ManSetRegNum(ptr noundef nonnull %i.f, i32 noundef %.0141.lcssa) #12
  %i.be = load i32, ptr @Saig_ManReadToken.Buffer, align 16
  %i.bf = xor i32 %i.be, 1835101742
  %i.bg = load i32, ptr getelementptr (i8, ptr @Saig_ManReadToken.Buffer, i64 3), align 1
  %i.bh = xor i32 %i.bg, 7562605
  %i.bi = or i32 %i.bf, %i.bh
  %i.bj = icmp ne i32 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph301.preheader, label %._crit_edge302

.lr.ph301.preheader:                              ; preds = %._crit_edge296
  %i.bm = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %i.bn = load i8, ptr @Saig_ManReadToken.Buffer, align 16
  %i.bo = icmp eq i8 %i.bn, 110
  br i1 %i.bo, label %bb.ab, label %bb.q

bb.q:                                             ; preds = %.lr.ph301.preheader
  %i.bp = icmp eq i32 %i.bm, 1
  %Saig_ManReadToken.Buffer..i221.peel = select i1 %i.bp, ptr @Saig_ManReadToken.Buffer, ptr null
  %i.bq = tail call ptr @Saig_ManReadNode(ptr noundef nonnull %i.f, ptr noundef null, ptr noundef %Saig_ManReadToken.Buffer..i221.peel) ; 4 uses
  %i.br = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %i.bs = load i8, ptr @Saig_ManReadToken.Buffer, align 16, !tbaa !28
  switch i8 %i.bs, label %bb.w [
    i8 112, label %bb.s
    i8 108, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.bt = load i8, ptr getelementptr inbounds nuw (i8, ptr @Saig_ManReadToken.Buffer, i64 1), align 1, !tbaa !28
  %i.bu = icmp eq i8 %i.bt, 105
  br i1 %i.bu, label %bb.t, label %bb.w

bb.s:                                             ; preds = %bb.q
  %1 = icmp eq i32 %i.br, 1
  %i.bv = select i1 %1, ptr getelementptr inbounds nuw (i8, ptr @Saig_ManReadToken.Buffer, i64 1), ptr inttoptr (i64 1 to ptr)
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !28
  %i.bx = icmp eq i8 %i.bw, 111
  br i1 %i.bx, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.by = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not241.peel = icmp eq i32 %i.by, 1
  br i1 %.not241.peel, label %bb.u, label %.loopexit313

bb.u:                                             ; preds = %bb.t
  %i.bz = load i8, ptr @Saig_ManReadToken.Buffer, align 16, !tbaa !28
  %i.ca = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not242.peel = icmp eq i32 %i.ca, 1
  %lhsv243.peel = load i16, ptr @Saig_ManReadToken.Buffer, align 16
  %.not245.peel = icmp eq i16 %lhsv243.peel, 49
  %or.cond265.peel = select i1 %.not242.peel, i1 %.not245.peel, i1 false
  br i1 %or.cond265.peel, label %bb.v, label %.loopexit314

bb.v:                                             ; preds = %bb.u
  %i.cb = icmp eq i8 %i.bz, 48
  %i.cc = ptrtoint ptr %i.bq to i64
  %i.cd = xor i64 %i.cc, 1
  %i.ce = inttoptr i64 %i.cd to ptr
  %.0151.peel = select i1 %i.cb, ptr %i.ce, ptr %i.bq
  %i.cf = tail call ptr @Aig_ObjCreateCo(ptr noundef nonnull %i.f, ptr noundef %.0151.peel) #12 ; 0 uses
  %i.cg = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not246.peel = icmp eq i32 %i.cg, 1
  br i1 %.not246.peel, label %bb.ad, label %.loopexit315

bb.w:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.ch = tail call ptr @Saig_ManReadNode(ptr noundef nonnull %i.f, ptr noundef null, ptr noundef nonnull @Saig_ManReadToken.Buffer) ; 2 uses
  %i.ci = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %i.cj = icmp eq i32 %i.ci, 1
  %Saig_ManReadToken.Buffer..i228.peel = select i1 %i.cj, ptr @Saig_ManReadToken.Buffer, ptr null
  %i.ck = tail call i32 @Saig_ManReadNumber(ptr nonnull poison, ptr noundef %Saig_ManReadToken.Buffer..i228.peel)
  %i.cl = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @Saig_ManReadToken.Buffer) #13
  %i.cm = add i64 %i.cl, -1
  %i.cn = uitofp i64 %i.cm to double
  %i.co = tail call double @pow(double noundef 1.000000e+01, double noundef %i.cn) #12
  %i.cp = fptosi double %i.co to i32
  %i.cq = sext i32 %i.cp to i64
  %i.cr = tail call noalias ptr @calloc(i64 noundef %i.cq, i64 noundef 4) #15 ; 2 uses
  %i.cs = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not247.peel = icmp eq i32 %i.cs, 1
  br i1 %.not247.peel, label %bb.x, label %.loopexit316

bb.x:                                             ; preds = %bb.w
  %i.ct = load i8, ptr @Saig_ManReadToken.Buffer, align 16, !tbaa !28
  %i.cu = icmp eq i8 %i.ct, 48
  %i.cv = ptrtoint ptr %i.bq to i64
  %i.cw = xor i64 %i.cv, 1
  %i.cx = inttoptr i64 %i.cw to ptr
  %.1152.peel = select i1 %i.cu, ptr %i.cx, ptr %i.bq
  %i.cy = load i8, ptr getelementptr inbounds nuw (i8, ptr @Saig_ManReadToken.Buffer, i64 1), align 1, !tbaa !28
  %i.cz = icmp eq i8 %i.cy, 48
  %i.da = ptrtoint ptr %i.ch to i64
  %i.db = xor i64 %i.da, 1
  %i.dc = inttoptr i64 %i.db to ptr
  %.0150.peel = select i1 %i.cz, ptr %i.dc, ptr %i.ch
  %i.dd = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not248.peel = icmp eq i32 %i.dd, 1
  %lhsv249.peel = load i16, ptr @Saig_ManReadToken.Buffer, align 16
  %.not251.peel = icmp eq i16 %lhsv249.peel, 49
  %or.cond266.peel = select i1 %.not248.peel, i1 %.not251.peel, i1 false
  br i1 %or.cond266.peel, label %bb.y, label %.loopexit317

bb.y:                                             ; preds = %bb.x
  %i.de = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not252.peel = icmp eq i32 %i.de, 1
  br i1 %.not252.peel, label %bb.z, label %.loopexit318

bb.z:                                             ; preds = %bb.y
  %i.df = tail call ptr @Aig_And(ptr noundef nonnull %i.f, ptr noundef %.1152.peel, ptr noundef %.0150.peel) #12 ; 2 uses
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = and i64 %i.dg, 1
  %.not183.peel = icmp eq i64 %i.dh, 0
  br i1 %.not183.peel, label %bb.aa, label %.loopexit319

bb.aa:                                            ; preds = %bb.z
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 36
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !27
  %i.dk = sext i32 %i.ck to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.dk
  store i32 %i.dj, ptr %i.dl, align 4, !tbaa !32
  br label %bb.ad

bb.ab:                                            ; preds = %.lr.ph301.preheader
  %i.dm = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not253.peel = icmp eq i32 %i.dm, 1
  %lhsv254.peel = load i16, ptr @Saig_ManReadToken.Buffer, align 16
  %.not256.peel = icmp eq i16 %lhsv254.peel, 49
  %or.cond264.peel = select i1 %.not253.peel, i1 %.not256.peel, i1 false
  br i1 %or.cond264.peel, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.dn = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not257.peel = icmp eq i32 %i.dn, 1
  br i1 %.not257.peel, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac, %bb.aa, %bb.v
  %.2.peel = phi ptr [ null, %bb.ac ], [ null, %bb.v ], [ %i.cr, %bb.aa ] ; 2 uses
  %i.do = load i32, ptr @Saig_ManReadToken.Buffer, align 16
  %i.dp = xor i32 %i.do, 1835101742
  %i.dq = load i32, ptr getelementptr (i8, ptr @Saig_ManReadToken.Buffer, i64 3), align 1
  %i.dr = xor i32 %i.dq, 7562605
  %i.ds = or i32 %i.dp, %i.dr
  %i.dt = icmp ne i32 %i.ds, 0
  %i.du = zext i1 %i.dt to i32
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %.lr.ph301.peel.next, label %._crit_edge302

bb.ae:                                            ; preds = %bb.ab
  %puts194 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  tail call void @Aig_ManStop(ptr noundef nonnull %i.f) #12
  br label %bb.ax

bb.af:                                            ; preds = %bb.ac
  %puts193 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12) ; 0 uses
  tail call void @Aig_ManStop(ptr noundef nonnull %i.f) #12
  br label %bb.ax

.lr.ph301.peel.next:                              ; preds = %bb.ad, %bb.ar
  %.0140299 = phi ptr [ %.2, %bb.ar ], [ %.2.peel, %bb.ad ] ; 5 uses
  %i.dw = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %i.dx = icmp eq i32 %i.dw, 1
  %Saig_ManReadToken.Buffer..i221 = select i1 %i.dx, ptr @Saig_ManReadToken.Buffer, ptr null
  %i.dy = tail call ptr @Saig_ManReadNode(ptr noundef nonnull %i.f, ptr noundef %.0140299, ptr noundef %Saig_ManReadToken.Buffer..i221) ; 4 uses
  %i.dz = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %i.ea = load i8, ptr @Saig_ManReadToken.Buffer, align 16, !tbaa !28
  switch i8 %i.ea, label %.thread [
    i8 112, label %bb.ag
    i8 108, label %bb.ah
  ]

bb.ag:                                            ; preds = %.lr.ph301.peel.next
  %2 = icmp eq i32 %i.dz, 1
  %i.eb = select i1 %2, ptr getelementptr inbounds nuw (i8, ptr @Saig_ManReadToken.Buffer, i64 1), ptr inttoptr (i64 1 to ptr)
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !28
  %i.ed = icmp eq i8 %i.ec, 111
  br i1 %i.ed, label %bb.ai, label %.thread

bb.ah:                                            ; preds = %.lr.ph301.peel.next
  %i.ee = load i8, ptr getelementptr inbounds nuw (i8, ptr @Saig_ManReadToken.Buffer, i64 1), align 1, !tbaa !28
  %i.ef = icmp eq i8 %i.ee, 105
  br i1 %i.ef, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.eg = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not241 = icmp eq i32 %i.eg, 1
  br i1 %.not241, label %bb.aj, label %.loopexit313

.loopexit313:                                     ; preds = %bb.ai, %bb.t
  %puts191 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  tail call void @Aig_ManStop(ptr noundef nonnull %i.f) #12
  br label %bb.ax

bb.aj:                                            ; preds = %bb.ai
  %i.eh = load i8, ptr @Saig_ManReadToken.Buffer, align 16, !tbaa !28
  %i.ei = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not242 = icmp eq i32 %i.ei, 1
  %lhsv243 = load i16, ptr @Saig_ManReadToken.Buffer, align 16
  %.not245 = icmp eq i16 %lhsv243, 49
  %or.cond265 = select i1 %.not242, i1 %.not245, i1 false
  br i1 %or.cond265, label %bb.ak, label %.loopexit314

.loopexit314:                                     ; preds = %bb.aj, %bb.u
  %puts190 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  tail call void @Aig_ManStop(ptr noundef nonnull %i.f) #12
  br label %bb.ax

bb.ak:                                            ; preds = %bb.aj
  %i.ej = icmp eq i8 %i.eh, 48
  %i.ek = ptrtoint ptr %i.dy to i64
  %i.el = xor i64 %i.ek, 1
  %i.em = inttoptr i64 %i.el to ptr
  %.0151 = select i1 %i.ej, ptr %i.em, ptr %i.dy
  %i.en = tail call ptr @Aig_ObjCreateCo(ptr noundef nonnull %i.f, ptr noundef %.0151) #12 ; 0 uses
  %i.eo = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not246 = icmp eq i32 %i.eo, 1
  br i1 %.not246, label %bb.ar, label %.loopexit315

.loopexit315:                                     ; preds = %bb.ak, %bb.v
  %puts189 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  tail call void @Aig_ManStop(ptr noundef nonnull %i.f) #12
  br label %bb.ax

.thread:                                          ; preds = %.lr.ph301.peel.next, %bb.ag, %bb.ah
  %i.ep = tail call ptr @Saig_ManReadNode(ptr noundef nonnull %i.f, ptr noundef %.0140299, ptr noundef nonnull @Saig_ManReadToken.Buffer) ; 2 uses
  %i.eq = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %i.er = icmp eq i32 %i.eq, 1
  %Saig_ManReadToken.Buffer..i228 = select i1 %i.er, ptr @Saig_ManReadToken.Buffer, ptr null
  %i.es = tail call i32 @Saig_ManReadNumber(ptr nonnull poison, ptr noundef %Saig_ManReadToken.Buffer..i228)
  %i.et = icmp eq ptr %.0140299, null
  br i1 %i.et, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.thread
  %i.eu = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @Saig_ManReadToken.Buffer) #13
  %i.ev = add i64 %i.eu, -1
  %i.ew = uitofp i64 %i.ev to double
  %i.ex = tail call double @pow(double noundef 1.000000e+01, double noundef %i.ew) #12
  %i.ey = fptosi double %i.ex to i32
  %i.ez = sext i32 %i.ey to i64
  %i.fa = tail call noalias ptr @calloc(i64 noundef %i.ez, i64 noundef 4) #15
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.thread
  %.1 = phi ptr [ %i.fa, %bb.al ], [ %.0140299, %.thread ] ; 2 uses
  %i.fb = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not247 = icmp eq i32 %i.fb, 1
  br i1 %.not247, label %bb.an, label %.loopexit316

.loopexit316:                                     ; preds = %bb.am, %bb.w
  %puts187 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  tail call void @Aig_ManStop(ptr noundef nonnull %i.f) #12
  br label %bb.ax

bb.an:                                            ; preds = %bb.am
  %i.fc = load i8, ptr @Saig_ManReadToken.Buffer, align 16, !tbaa !28
  %i.fd = icmp eq i8 %i.fc, 48
  %i.fe = ptrtoint ptr %i.dy to i64
  %i.ff = xor i64 %i.fe, 1
  %i.fg = inttoptr i64 %i.ff to ptr
  %.1152 = select i1 %i.fd, ptr %i.fg, ptr %i.dy
  %i.fh = load i8, ptr getelementptr inbounds nuw (i8, ptr @Saig_ManReadToken.Buffer, i64 1), align 1, !tbaa !28
  %i.fi = icmp eq i8 %i.fh, 48
  %i.fj = ptrtoint ptr %i.ep to i64
  %i.fk = xor i64 %i.fj, 1
  %i.fl = inttoptr i64 %i.fk to ptr
  %.0150 = select i1 %i.fi, ptr %i.fl, ptr %i.ep
  %i.fm = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not248 = icmp eq i32 %i.fm, 1
  %lhsv249 = load i16, ptr @Saig_ManReadToken.Buffer, align 16
  %.not251 = icmp eq i16 %lhsv249, 49
  %or.cond266 = select i1 %.not248, i1 %.not251, i1 false
  br i1 %or.cond266, label %bb.ao, label %.loopexit317

.loopexit317:                                     ; preds = %bb.an, %bb.x
  %puts186 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  tail call void @Aig_ManStop(ptr noundef nonnull %i.f) #12
  br label %bb.ax

bb.ao:                                            ; preds = %bb.an
  %i.fn = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not252 = icmp eq i32 %i.fn, 1
  br i1 %.not252, label %bb.ap, label %.loopexit318

.loopexit318:                                     ; preds = %bb.ao, %bb.y
  %puts185 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  tail call void @Aig_ManStop(ptr noundef nonnull %i.f) #12
  br label %bb.ax

bb.ap:                                            ; preds = %bb.ao
  %i.fo = tail call ptr @Aig_And(ptr noundef nonnull %i.f, ptr noundef %.1152, ptr noundef %.0150) #12 ; 2 uses
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = and i64 %i.fp, 1
  %.not183 = icmp eq i64 %i.fq, 0
  br i1 %.not183, label %bb.aq, label %.loopexit319

.loopexit319:                                     ; preds = %bb.ap, %bb.z
  %puts184 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  tail call void @Aig_ManStop(ptr noundef nonnull %i.f) #12
  br label %bb.ax

bb.aq:                                            ; preds = %bb.ap
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 36
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !27
  %i.ft = sext i32 %i.es to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %.1, i64 %i.ft
  store i32 %i.fs, ptr %i.fu, align 4, !tbaa !32
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ak, %bb.aq
  %.2 = phi ptr [ %.1, %bb.aq ], [ %.0140299, %bb.ak ] ; 2 uses
  %i.fv = load i32, ptr @Saig_ManReadToken.Buffer, align 16
  %i.fw = xor i32 %i.fv, 1835101742
  %i.fx = load i32, ptr getelementptr (i8, ptr @Saig_ManReadToken.Buffer, i64 3), align 1
  %i.fy = xor i32 %i.fx, 7562605
  %i.fz = or i32 %i.fw, %i.fy
  %i.ga = icmp ne i32 %i.fz, 0
  %i.gb = zext i1 %i.ga to i32
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %.lr.ph301.peel.next, label %._crit_edge302, !llvm.loop !54

._crit_edge302:                                   ; preds = %bb.ar, %bb.ad, %._crit_edge296
  %.0140.lcssa = phi ptr [ null, %._crit_edge296 ], [ %.2.peel, %bb.ad ], [ %.2, %bb.ar ] ; 2 uses
  %i.gd = load i32, ptr @Saig_ManReadToken.Buffer, align 16
  %i.ge = xor i32 %i.gd, 1684956462
  %i.gf = load i8, ptr getelementptr (i8, ptr @Saig_ManReadToken.Buffer, i64 4), align 4
  %i.gg = zext i8 %i.gf to i32
  %i.gh = or i32 %i.ge, %i.gg
  %i.gi = icmp ne i32 %i.gh, 0
  %i.gj = zext i1 %i.gi to i32
  %.not177 = icmp eq i32 %i.gj, 0
  br i1 %.not177, label %bb.at, label %bb.as

bb.as:                                            ; preds = %._crit_edge302
  %puts181 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  tail call void @Aig_ManStop(ptr noundef nonnull %i.f) #12
  br label %bb.ax

bb.at:                                            ; preds = %._crit_edge302
  %i.gk = add nuw nsw i32 %.0141.lcssa, %.0142289
  %i.gl = getelementptr i8, ptr %i.f, i64 140
  %.val209 = load i32, ptr %i.gl, align 4, !tbaa !32
  %.not178 = icmp eq i32 %i.gk, %.val209
  br i1 %.not178, label %.preheader, label %bb.au

.preheader:                                       ; preds = %bb.at
  %i.gm = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !34 ; 2 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 4      ; 2 uses
  %.val304 = load i32, ptr %i.go, align 4, !tbaa !25
  %i.gp = icmp sgt i32 %.val304, 0
  br i1 %i.gp, label %.lr.ph306, label %.critedge6

.lr.ph306:                                        ; preds = %.preheader
  %i.gq = getelementptr i8, ptr %i.gn, i64 8
  %.val210 = load ptr, ptr %i.gq, align 8, !tbaa !35
  br label %bb.av

bb.au:                                            ; preds = %bb.at
  %puts180 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  tail call void @Aig_ManStop(ptr noundef nonnull %i.f) #12
  br label %bb.ax

bb.av:                                            ; preds = %.lr.ph306, %bb.av
  %indvars.iv = phi i64 [ 0, %.lr.ph306 ], [ %indvars.iv.next, %bb.av ] ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %.val210, i64 %indvars.iv
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !36
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 36
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !27 ; 2 uses
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [4 x i8], ptr %.0140.lcssa, i64 %i.gv
  store i32 %i.gu, ptr %i.gw, align 4, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i32, ptr %i.go, align 4, !tbaa !25
  %i.gx = sext i32 %.val to i64
  %i.gy = icmp slt i64 %indvars.iv.next, %i.gx
  br i1 %i.gy, label %bb.av, label %.critedge6, !llvm.loop !55

.critedge6:                                       ; preds = %bb.av, %.preheader
  %i.gz = getelementptr inbounds nuw i8, ptr %i.f, i64 296
  store ptr %.0140.lcssa, ptr %i.gz, align 8, !tbaa !58
end_hunk_0
