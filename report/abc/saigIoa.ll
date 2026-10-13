Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/saigIoa?download=true
inline.NumInlined: 120
inline.NumDeleted: 37
begin_hunk_0_@Saig_ManReadBlif:bb.a
bb.d:                                             ; preds = %.preheader270
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
  %1 = icmp eq i32 %i.br, 1                       ; 2 uses
  %i.bs = load i8, ptr @Saig_ManReadToken.Buffer, align 16, !tbaa !28
  switch i8 %i.bs, label %bb.w [
    i8 112, label %bb.s
    i8 108, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %2 = select i1 %1, ptr getelementptr inbounds nuw (i8, ptr @Saig_ManReadToken.Buffer, i64 1), ptr inttoptr (i64 1 to ptr)
  %i.bt = load i8, ptr %2, align 1, !tbaa !28
  %i.bu = icmp eq i8 %i.bt, 105
  br i1 %i.bu, label %bb.t, label %bb.w

bb.s:                                             ; preds = %bb.q
  %3 = select i1 %1, ptr getelementptr inbounds nuw (i8, ptr @Saig_ManReadToken.Buffer, i64 1), ptr inttoptr (i64 1 to ptr)
  %i.bv = load i8, ptr %3, align 1, !tbaa !28
  %i.bw = icmp eq i8 %i.bv, 111
  br i1 %i.bw, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bx = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not241.peel = icmp eq i32 %i.bx, 1
  br i1 %.not241.peel, label %bb.u, label %.loopexit313

bb.u:                                             ; preds = %bb.t
  %i.by = load i8, ptr @Saig_ManReadToken.Buffer, align 16, !tbaa !28
  %i.bz = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not242.peel = icmp eq i32 %i.bz, 1
  %lhsv243.peel = load i16, ptr @Saig_ManReadToken.Buffer, align 16
  %.not245.peel = icmp eq i16 %lhsv243.peel, 49
  %or.cond265.peel = select i1 %.not242.peel, i1 %.not245.peel, i1 false
  br i1 %or.cond265.peel, label %bb.v, label %.loopexit314

bb.v:                                             ; preds = %bb.u
  %i.ca = icmp eq i8 %i.by, 48
  %i.cb = ptrtoint ptr %i.bq to i64
  %i.cc = xor i64 %i.cb, 1
  %i.cd = inttoptr i64 %i.cc to ptr
  %.0151.peel = select i1 %i.ca, ptr %i.cd, ptr %i.bq
  %i.ce = tail call ptr @Aig_ObjCreateCo(ptr noundef nonnull %i.f, ptr noundef %.0151.peel) #12 ; 0 uses
  %i.cf = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not246.peel = icmp eq i32 %i.cf, 1
  br i1 %.not246.peel, label %bb.ad, label %.loopexit315

bb.w:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.cg = tail call ptr @Saig_ManReadNode(ptr noundef nonnull %i.f, ptr noundef null, ptr noundef nonnull @Saig_ManReadToken.Buffer) ; 2 uses
  %i.ch = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %i.ci = icmp eq i32 %i.ch, 1
  %Saig_ManReadToken.Buffer..i228.peel = select i1 %i.ci, ptr @Saig_ManReadToken.Buffer, ptr null
  %i.cj = tail call i32 @Saig_ManReadNumber(ptr nonnull poison, ptr noundef %Saig_ManReadToken.Buffer..i228.peel)
  %i.ck = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @Saig_ManReadToken.Buffer) #13
  %i.cl = add i64 %i.ck, -1
  %i.cm = uitofp i64 %i.cl to double
  %i.cn = tail call double @pow(double noundef 1.000000e+01, double noundef %i.cm) #12
  %i.co = fptosi double %i.cn to i32
  %i.cp = sext i32 %i.co to i64
  %i.cq = tail call noalias ptr @calloc(i64 noundef %i.cp, i64 noundef 4) #15 ; 2 uses
  %i.cr = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not247.peel = icmp eq i32 %i.cr, 1
  br i1 %.not247.peel, label %bb.x, label %.loopexit316

bb.x:                                             ; preds = %bb.w
  %i.cs = load i8, ptr @Saig_ManReadToken.Buffer, align 16, !tbaa !28
  %i.ct = icmp eq i8 %i.cs, 48
  %i.cu = ptrtoint ptr %i.bq to i64
  %i.cv = xor i64 %i.cu, 1
  %i.cw = inttoptr i64 %i.cv to ptr
  %.1152.peel = select i1 %i.ct, ptr %i.cw, ptr %i.bq
  %i.cx = load i8, ptr getelementptr inbounds nuw (i8, ptr @Saig_ManReadToken.Buffer, i64 1), align 1, !tbaa !28
  %i.cy = icmp eq i8 %i.cx, 48
  %i.cz = ptrtoint ptr %i.cg to i64
  %i.da = xor i64 %i.cz, 1
  %i.db = inttoptr i64 %i.da to ptr
  %.0150.peel = select i1 %i.cy, ptr %i.db, ptr %i.cg
  %i.dc = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not248.peel = icmp eq i32 %i.dc, 1
  %lhsv249.peel = load i16, ptr @Saig_ManReadToken.Buffer, align 16
  %.not251.peel = icmp eq i16 %lhsv249.peel, 49
  %or.cond266.peel = select i1 %.not248.peel, i1 %.not251.peel, i1 false
  br i1 %or.cond266.peel, label %bb.y, label %.loopexit317

bb.y:                                             ; preds = %bb.x
  %i.dd = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not252.peel = icmp eq i32 %i.dd, 1
  br i1 %.not252.peel, label %bb.z, label %.loopexit318

bb.z:                                             ; preds = %bb.y
  %i.de = tail call ptr @Aig_And(ptr noundef nonnull %i.f, ptr noundef %.1152.peel, ptr noundef %.0150.peel) #12 ; 2 uses
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = and i64 %i.df, 1
  %.not183.peel = icmp eq i64 %i.dg, 0
  br i1 %.not183.peel, label %bb.aa, label %.loopexit319

bb.aa:                                            ; preds = %bb.z
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 36
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !27
  %i.dj = sext i32 %i.cj to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.dj
  store i32 %i.di, ptr %i.dk, align 4, !tbaa !32
  br label %bb.ad

bb.ab:                                            ; preds = %.lr.ph301.preheader
  %i.dl = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not253.peel = icmp eq i32 %i.dl, 1
  %lhsv254.peel = load i16, ptr @Saig_ManReadToken.Buffer, align 16
  %.not256.peel = icmp eq i16 %lhsv254.peel, 49
  %or.cond264.peel = select i1 %.not253.peel, i1 %.not256.peel, i1 false
  br i1 %or.cond264.peel, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.dm = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not257.peel = icmp eq i32 %i.dm, 1
  br i1 %.not257.peel, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac, %bb.aa, %bb.v
  %.2.peel = phi ptr [ null, %bb.ac ], [ null, %bb.v ], [ %i.cq, %bb.aa ] ; 2 uses
  %i.dn = load i32, ptr @Saig_ManReadToken.Buffer, align 16
  %i.do = xor i32 %i.dn, 1835101742
  %i.dp = load i32, ptr getelementptr (i8, ptr @Saig_ManReadToken.Buffer, i64 3), align 1
  %i.dq = xor i32 %i.dp, 7562605
  %i.dr = or i32 %i.do, %i.dq
  %i.ds = icmp ne i32 %i.dr, 0
  %i.dt = zext i1 %i.ds to i32
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %.lr.ph301.peel.next, label %._crit_edge302

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
  %i.dv = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %i.dw = icmp eq i32 %i.dv, 1
  %Saig_ManReadToken.Buffer..i221 = select i1 %i.dw, ptr @Saig_ManReadToken.Buffer, ptr null
  %i.dx = tail call ptr @Saig_ManReadNode(ptr noundef nonnull %i.f, ptr noundef %.0140299, ptr noundef %Saig_ManReadToken.Buffer..i221) ; 4 uses
  %i.dy = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %4 = icmp eq i32 %i.dy, 1                       ; 2 uses
  %i.dz = load i8, ptr @Saig_ManReadToken.Buffer, align 16, !tbaa !28
  switch i8 %i.dz, label %.thread [
    i8 112, label %bb.ag
    i8 108, label %bb.ah
  ]

bb.ag:                                            ; preds = %.lr.ph301.peel.next
  %5 = select i1 %4, ptr getelementptr inbounds nuw (i8, ptr @Saig_ManReadToken.Buffer, i64 1), ptr inttoptr (i64 1 to ptr)
  %i.ea = load i8, ptr %5, align 1, !tbaa !28
  %i.eb = icmp eq i8 %i.ea, 111
  br i1 %i.eb, label %bb.ai, label %.thread

bb.ah:                                            ; preds = %.lr.ph301.peel.next
  %6 = select i1 %4, ptr getelementptr inbounds nuw (i8, ptr @Saig_ManReadToken.Buffer, i64 1), ptr inttoptr (i64 1 to ptr)
  %i.ec = load i8, ptr %6, align 1, !tbaa !28
  %i.ed = icmp eq i8 %i.ec, 105
  br i1 %i.ed, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ee = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not241 = icmp eq i32 %i.ee, 1
  br i1 %.not241, label %bb.aj, label %.loopexit313

.loopexit313:                                     ; preds = %bb.ai, %bb.t
  %puts191 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  tail call void @Aig_ManStop(ptr noundef nonnull %i.f) #12
  br label %bb.ax

bb.aj:                                            ; preds = %bb.ai
  %i.ef = load i8, ptr @Saig_ManReadToken.Buffer, align 16, !tbaa !28
  %i.eg = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not242 = icmp eq i32 %i.eg, 1
  %lhsv243 = load i16, ptr @Saig_ManReadToken.Buffer, align 16
  %.not245 = icmp eq i16 %lhsv243, 49
  %or.cond265 = select i1 %.not242, i1 %.not245, i1 false
  br i1 %or.cond265, label %bb.ak, label %.loopexit314

.loopexit314:                                     ; preds = %bb.aj, %bb.u
  %puts190 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  tail call void @Aig_ManStop(ptr noundef nonnull %i.f) #12
  br label %bb.ax

bb.ak:                                            ; preds = %bb.aj
  %i.eh = icmp eq i8 %i.ef, 48
  %i.ei = ptrtoint ptr %i.dx to i64
  %i.ej = xor i64 %i.ei, 1
  %i.ek = inttoptr i64 %i.ej to ptr
  %.0151 = select i1 %i.eh, ptr %i.ek, ptr %i.dx
  %i.el = tail call ptr @Aig_ObjCreateCo(ptr noundef nonnull %i.f, ptr noundef %.0151) #12 ; 0 uses
  %i.em = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not246 = icmp eq i32 %i.em, 1
  br i1 %.not246, label %bb.ar, label %.loopexit315

.loopexit315:                                     ; preds = %bb.ak, %bb.v
  %puts189 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  tail call void @Aig_ManStop(ptr noundef nonnull %i.f) #12
  br label %bb.ax

.thread:                                          ; preds = %.lr.ph301.peel.next, %bb.ag, %bb.ah
  %i.en = tail call ptr @Saig_ManReadNode(ptr noundef nonnull %i.f, ptr noundef %.0140299, ptr noundef nonnull @Saig_ManReadToken.Buffer) ; 2 uses
  %i.eo = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %i.ep = icmp eq i32 %i.eo, 1
  %Saig_ManReadToken.Buffer..i228 = select i1 %i.ep, ptr @Saig_ManReadToken.Buffer, ptr null
  %i.eq = tail call i32 @Saig_ManReadNumber(ptr nonnull poison, ptr noundef %Saig_ManReadToken.Buffer..i228)
  %i.er = icmp eq ptr %.0140299, null
  br i1 %i.er, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.thread
  %i.es = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @Saig_ManReadToken.Buffer) #13
  %i.et = add i64 %i.es, -1
  %i.eu = uitofp i64 %i.et to double
  %i.ev = tail call double @pow(double noundef 1.000000e+01, double noundef %i.eu) #12
  %i.ew = fptosi double %i.ev to i32
  %i.ex = sext i32 %i.ew to i64
  %i.ey = tail call noalias ptr @calloc(i64 noundef %i.ex, i64 noundef 4) #15
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.thread
  %.1 = phi ptr [ %i.ey, %bb.al ], [ %.0140299, %.thread ] ; 2 uses
  %i.ez = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not247 = icmp eq i32 %i.ez, 1
  br i1 %.not247, label %bb.an, label %.loopexit316

.loopexit316:                                     ; preds = %bb.am, %bb.w
  %puts187 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  tail call void @Aig_ManStop(ptr noundef nonnull %i.f) #12
  br label %bb.ax

bb.an:                                            ; preds = %bb.am
  %i.fa = load i8, ptr @Saig_ManReadToken.Buffer, align 16, !tbaa !28
  %i.fb = icmp eq i8 %i.fa, 48
  %i.fc = ptrtoint ptr %i.dx to i64
  %i.fd = xor i64 %i.fc, 1
  %i.fe = inttoptr i64 %i.fd to ptr
  %.1152 = select i1 %i.fb, ptr %i.fe, ptr %i.dx
  %i.ff = load i8, ptr getelementptr inbounds nuw (i8, ptr @Saig_ManReadToken.Buffer, i64 1), align 1, !tbaa !28
  %i.fg = icmp eq i8 %i.ff, 48
  %i.fh = ptrtoint ptr %i.en to i64
  %i.fi = xor i64 %i.fh, 1
  %i.fj = inttoptr i64 %i.fi to ptr
  %.0150 = select i1 %i.fg, ptr %i.fj, ptr %i.en
  %i.fk = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not248 = icmp eq i32 %i.fk, 1
  %lhsv249 = load i16, ptr @Saig_ManReadToken.Buffer, align 16
  %.not251 = icmp eq i16 %lhsv249, 49
  %or.cond266 = select i1 %.not248, i1 %.not251, i1 false
  br i1 %or.cond266, label %bb.ao, label %.loopexit317

.loopexit317:                                     ; preds = %bb.an, %bb.x
  %puts186 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  tail call void @Aig_ManStop(ptr noundef nonnull %i.f) #12
  br label %bb.ax

bb.ao:                                            ; preds = %bb.an
  %i.fl = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef nonnull @Saig_ManReadToken.Buffer) #12
  %.not252 = icmp eq i32 %i.fl, 1
  br i1 %.not252, label %bb.ap, label %.loopexit318

.loopexit318:                                     ; preds = %bb.ao, %bb.y
  %puts185 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  tail call void @Aig_ManStop(ptr noundef nonnull %i.f) #12
  br label %bb.ax

bb.ap:                                            ; preds = %bb.ao
  %i.fm = tail call ptr @Aig_And(ptr noundef nonnull %i.f, ptr noundef %.1152, ptr noundef %.0150) #12 ; 2 uses
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = and i64 %i.fn, 1
  %.not183 = icmp eq i64 %i.fo, 0
  br i1 %.not183, label %bb.aq, label %.loopexit319

.loopexit319:                                     ; preds = %bb.ap, %bb.z
  %puts184 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  tail call void @Aig_ManStop(ptr noundef nonnull %i.f) #12
  br label %bb.ax

bb.aq:                                            ; preds = %bb.ap
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 36
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !27
  %i.fr = sext i32 %i.eq to i64
  %i.fs = getelementptr inbounds [4 x i8], ptr %.1, i64 %i.fr
  store i32 %i.fq, ptr %i.fs, align 4, !tbaa !32
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ak, %bb.aq
  %.2 = phi ptr [ %.1, %bb.aq ], [ %.0140299, %bb.ak ] ; 2 uses
  %i.ft = load i32, ptr @Saig_ManReadToken.Buffer, align 16
  %i.fu = xor i32 %i.ft, 1835101742
  %i.fv = load i32, ptr getelementptr (i8, ptr @Saig_ManReadToken.Buffer, i64 3), align 1
  %i.fw = xor i32 %i.fv, 7562605
  %i.fx = or i32 %i.fu, %i.fw
  %i.fy = icmp ne i32 %i.fx, 0
  %i.fz = zext i1 %i.fy to i32
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %.lr.ph301.peel.next, label %._crit_edge302, !llvm.loop !54

._crit_edge302:                                   ; preds = %bb.ar, %bb.ad, %._crit_edge296
  %.0140.lcssa = phi ptr [ null, %._crit_edge296 ], [ %.2.peel, %bb.ad ], [ %.2, %bb.ar ] ; 2 uses
  %i.gb = load i32, ptr @Saig_ManReadToken.Buffer, align 16
  %i.gc = xor i32 %i.gb, 1684956462
  %i.gd = load i8, ptr getelementptr (i8, ptr @Saig_ManReadToken.Buffer, i64 4), align 4
  %i.ge = zext i8 %i.gd to i32
  %i.gf = or i32 %i.gc, %i.ge
  %i.gg = icmp ne i32 %i.gf, 0
  %i.gh = zext i1 %i.gg to i32
  %.not177 = icmp eq i32 %i.gh, 0
  br i1 %.not177, label %bb.at, label %bb.as

bb.as:                                            ; preds = %._crit_edge302
  %puts181 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  tail call void @Aig_ManStop(ptr noundef nonnull %i.f) #12
  br label %bb.ax

bb.at:                                            ; preds = %._crit_edge302
  %i.gi = add nuw nsw i32 %.0141.lcssa, %.0142289
  %i.gj = getelementptr i8, ptr %i.f, i64 140
  %.val209 = load i32, ptr %i.gj, align 4, !tbaa !32
  %.not178 = icmp eq i32 %i.gi, %.val209
  br i1 %.not178, label %.preheader, label %bb.au

.preheader:                                       ; preds = %bb.at
  %i.gk = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !34 ; 2 uses
  %i.gm = getelementptr i8, ptr %i.gl, i64 4      ; 2 uses
  %.val304 = load i32, ptr %i.gm, align 4, !tbaa !25
  %i.gn = icmp sgt i32 %.val304, 0
  br i1 %i.gn, label %.lr.ph306, label %.critedge6

.lr.ph306:                                        ; preds = %.preheader
  %i.go = getelementptr i8, ptr %i.gl, i64 8
  %.val210 = load ptr, ptr %i.go, align 8, !tbaa !35
  br label %bb.av

bb.au:                                            ; preds = %bb.at
  %puts180 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  tail call void @Aig_ManStop(ptr noundef nonnull %i.f) #12
  br label %bb.ax

bb.av:                                            ; preds = %.lr.ph306, %bb.av
  %indvars.iv = phi i64 [ 0, %.lr.ph306 ], [ %indvars.iv.next, %bb.av ] ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %.val210, i64 %indvars.iv
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !36
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 36
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !27 ; 2 uses
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr %.0140.lcssa, i64 %i.gt
  store i32 %i.gs, ptr %i.gu, align 4, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i32, ptr %i.gm, align 4, !tbaa !25
  %i.gv = sext i32 %.val to i64
  %i.gw = icmp slt i64 %indvars.iv.next, %i.gv
  br i1 %i.gw, label %bb.av, label %.critedge6, !llvm.loop !55

.critedge6:                                       ; preds = %bb.av, %.preheader
  %i.gx = getelementptr inbounds nuw i8, ptr %i.f, i64 296
  store ptr %.0140.lcssa, ptr %i.gx, align 8, !tbaa !58
end_hunk_0
