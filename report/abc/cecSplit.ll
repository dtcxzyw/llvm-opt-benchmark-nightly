inline.NumInlined: 178
inline.NumDeleted: 52
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Cec_GiaPrintCofStats:bb.a
  %i.d = add i32 %.val56, -1
  %or.cond.i.i = icmp ult i32 %i.d, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val56 ; 2 uses
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntStart.exit, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.e = sext i32 %spec.store.select.i.i to i64
  %i.f = shl nsw i64 %i.e, 2
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #20 ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %Vec_IntStart.exit, label %bb.b

bb.b:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.h = sext i32 %.val56 to i64
  %i.i = shl nsw i64 %i.h, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.g, i8 0, i64 %i.i, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %bb.a, %Vec_IntAlloc.exit.i, %bb.b
  %i.j = phi ptr [ %i.g, %bb.b ], [ null, %Vec_IntAlloc.exit.i ], [ null, %bb.a ] ; 6 uses
  %i.k = getelementptr i8, ptr %0, i64 32         ; 4 uses
  %i.l = icmp sgt i32 %.val56, 0                  ; 2 uses
  br i1 %i.l, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %Vec_IntStart.exit
  %.val5193 = load ptr, ptr %i.k, align 8, !tbaa !31 ; 2 uses
  %.not94 = icmp eq ptr %.val5193, null
  br i1 %.not94, label %.critedge, label %.lr.ph96

.lr.ph:                                           ; preds = %bb.f
  %.val51 = load ptr, ptr %i.k, align 8, !tbaa !31 ; 2 uses
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %.val51, i64 %indvars.iv.next
  %.not = icmp eq ptr %.val51, null
  br i1 %.not, label %.critedge, label %.lr.ph96, !llvm.loop !108

.lr.ph96:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.n = phi ptr [ %i.m, %.lr.ph ], [ %.val5193, %.lr.ph.preheader ] ; 4 uses
  %indvars.iv95 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.val52 = load i64, ptr %i.n, align 4           ; 2 uses
  %i.o = and i64 %.val52, 2147483648
  %.not.i60 = icmp ne i64 %i.o, 0
  %i.p = and i64 %.val52, 536870911
  %i.q = icmp eq i64 %i.p, 536870911
  %narrow.i.not = or i1 %.not.i60, %i.q
  br i1 %narrow.i.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.lr.ph96
  %i.r = call i32 @Gia_ObjIsMuxType(ptr noundef nonnull %i.n) #19
  %.not49 = icmp eq i32 %i.r, 0
  br i1 %.not49, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = call i32 @Gia_ObjRecognizeExor(ptr noundef nonnull %i.n, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #19
  %.not50 = icmp eq i32 %i.s, 0
  br i1 %.not50, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = call ptr @Gia_ObjRecognizeMux(ptr noundef nonnull %i.n, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #19
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, -2
  %.val53 = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.w = ptrtoint ptr %.val53 to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = sdiv exact i64 %i.x, 12
  %sext = shl i64 %i.y, 32
  %i.z = ashr exact i64 %sext, 30
  %i.aa = getelementptr inbounds i8, ptr %i.j, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !32
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph96, %bb.d, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv95, 1 ; 3 uses
  %i.ad = load i32, ptr %i.c, align 8, !tbaa !30  ; 3 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp slt i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %.lr.ph, label %..critedge.loopexit_crit_edge, !llvm.loop !108

..critedge.loopexit_crit_edge:                    ; preds = %bb.f
  br label %.critedge, !llvm.loop !108

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge.loopexit_crit_edge, %Vec_IntStart.exit
  %.lcssa72 = phi i32 [ %.val56, %Vec_IntStart.exit ], [ %.val56, %.lr.ph.preheader ], [ %i.ad, %..critedge.loopexit_crit_edge ], [ %i.ad, %.lr.ph ]
  %i.ag = getelementptr i8, ptr %0, i64 64
  %.val.i = load ptr, ptr %i.ag, align 8, !tbaa !37
  %i.ah = getelementptr i8, ptr %.val.i, i64 4
  %.val.val.i = load i32, ptr %i.ah, align 4, !tbaa !38 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !43
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  %.val.i.i = load i32, ptr %i.ak, align 4, !tbaa !38
  %i.al = add i32 %.val.i.i, %.val.val.i
  %i.am = xor i32 %i.al, -1
  %i.an = add i32 %.val.val.i, %.lcssa72
  %i.ao = add i32 %i.an, %i.am
  br i1 %i.l, label %.lr.ph.i, label %Vec_IntCountPositive.exit

.lr.ph.i:                                         ; preds = %.critedge
  %wide.trip.count.i = zext nneg i32 %.val56 to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.val56, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi98 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load = load <4 x i32>, ptr %i.ap, align 4, !tbaa !32
  %wide.load99 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !32
  %i.ar = icmp sgt <4 x i32> %wide.load, zeroinitializer
  %i.as = icmp sgt <4 x i32> %wide.load99, zeroinitializer
  %i.at = zext <4 x i1> %i.ar to <4 x i32>
  %i.au = zext <4 x i1> %i.as to <4 x i32>
  %i.av = add <4 x i32> %vec.phi, %i.at           ; 2 uses
  %i.aw = add <4 x i32> %vec.phi98, %i.au         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aw, %i.av
  %i.ay = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %Vec_IntCountPositive.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.08.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %i.ay, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.08.i = phi i32 [ %i.bd, %scalar.ph ], [ %.08.i.ph, %scalar.ph.preheader ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !32
  %i.bb = icmp sgt i32 %i.ba, 0
  %i.bc = zext i1 %i.bb to i32
  %i.bd = add nuw nsw i32 %.08.i, %i.bc           ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_IntCountPositive.exit, label %scalar.ph, !llvm.loop !112

Vec_IntCountPositive.exit:                        ; preds = %scalar.ph, %middle.block, %.critedge
  %.0.lcssa.i = phi i32 [ 0, %.critedge ], [ %i.ay, %middle.block ], [ %i.bd, %scalar.ph ]
  %i.be = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %i.ao, i32 noundef %.0.lcssa.i) ; 0 uses
  %i.bf = call i32 @Gia_ManLevelNum(ptr noundef nonnull %0) #19 ; 0 uses
  %i.bg = load i32, ptr %i.c, align 8, !tbaa !30  ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph80, label %.critedge2

.lr.ph80:                                         ; preds = %Vec_IntCountPositive.exit
  %i.bi = getelementptr i8, ptr %0, i64 160
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph80, %bb.v
  %i.bj = phi i32 [ %i.bg, %.lr.ph80 ], [ %i.ef, %bb.v ] ; 2 uses
  %indvars.iv83 = phi i64 [ 0, %.lr.ph80 ], [ %indvars.iv.next84, %bb.v ] ; 10 uses
  %.079 = phi i32 [ 0, %.lr.ph80 ], [ %.1, %bb.v ] ; 4 uses
  %.val = load ptr, ptr %i.k, align 8, !tbaa !31  ; 2 uses
  %.not45 = icmp eq ptr %.val, null
  br i1 %.not45, label %.critedge2, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %indvars.iv83
  %.val58 = load i64, ptr %i.bk, align 4          ; 3 uses
  %i.bl = and i64 %.val58, 2147483648
  %.not.i.i61 = icmp ne i64 %i.bl, 0
  %i.bm = and i64 %.val58, 536870911
  %i.bn = icmp eq i64 %i.bm, 536870911
  %narrow.i.not.not.i.not71 = or i1 %.not.i.i61, %i.bn
  %i.bo = and i64 %.val58, 2684354559
  %narrow.i3.i = icmp ne i64 %i.bo, 2684354559
  %narrow.i62.not = and i1 %narrow.i3.i, %narrow.i.not.not.i.not71
  br i1 %narrow.i62.not, label %bb.v, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv83 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !32
  %.not47 = icmp eq i32 %i.bq, 0
  br i1 %.not47, label %bb.v, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = trunc nuw nsw i64 %indvars.iv83 to i32  ; 4 uses
  %i.bs = call ptr @Gia_ManDupCofactorObj(ptr noundef nonnull %0, i32 noundef %i.br, i32 noundef 0) #19 ; 4 uses
  %i.bt = call ptr @Gia_ManDupCofactorObj(ptr noundef nonnull %0, i32 noundef %i.br, i32 noundef 1) #19 ; 4 uses
  %i.bu = add nsw i32 %.079, 1
  %i.bv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %.079) ; 0 uses
  %i.bw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.br) ; 0 uses
  %i.bx = load i32, ptr %i.bp, align 4, !tbaa !32
  %i.by = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %i.bx) ; 0 uses
  %.val59 = load ptr, ptr %i.bi, align 8, !tbaa !113 ; 7 uses
  %i.bz = add nuw nsw i64 %indvars.iv83, 1        ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.val59, i64 4 ; 3 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !38 ; 3 uses
  %i.cc = sext i32 %i.cb to i64                   ; 3 uses
  %.not.i.not.i.i = icmp slt i64 %indvars.iv83, %i.cc
  br i1 %.not.i.not.i.i, label %Gia_ObjLevelId.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cd = load i32, ptr %.val59, align 8, !tbaa !41 ; 4 uses
  %i.ce = shl nsw i32 %i.cd, 1                    ; 2 uses
  %i.cf = sext i32 %i.ce to i64
  %.not.i.i.not.i.i.a = icmp slt i64 %indvars.iv83, %i.cf
  br i1 %.not.i.i.not.i.i.a, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = getelementptr inbounds nuw i8, ptr %.val59, i64 8 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ch, null
  %i.ci = shl nuw nsw i64 %i.bz, 2                ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cj = call ptr @realloc(ptr noundef nonnull %i.ch, i64 noundef %i.ci) #21
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ck = call noalias ptr @malloc(i64 noundef %i.ci) #20
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cl = phi ptr [ %i.cj, %bb.m ], [ %i.ck, %bb.n ]
  store ptr %i.cl, ptr %i.cg, align 8, !tbaa !39
  %i.cm = trunc nuw nsw i64 %i.bz to i32
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.p:                                             ; preds = %bb.k
  %1 = sext i32 %i.cd to i64
  %.not.i.i.not.i.i = icmp slt i64 %indvars.iv83, %1
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cn = icmp slt i32 %i.cd, 1073741823
  %spec.select.i.i.i = select i1 %i.cn, i32 %i.ce, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i = icmp slt i32 %i.cd, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.r, label %Vec_IntGrow.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.co = getelementptr inbounds nuw i8, ptr %.val59, i64 8 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !39 ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.cp, null
  %i.cq = sext i32 %spec.select.i.i.i to i64
  %i.cr = shl nsw i64 %i.cq, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cs = call ptr @realloc(ptr noundef nonnull %i.cp, i64 noundef %i.cr) #21
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ct = call noalias ptr @malloc(i64 noundef %i.cr) #20
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cu = phi ptr [ %i.cs, %bb.s ], [ %i.ct, %bb.t ]
  store ptr %i.cu, ptr %i.co, align 8, !tbaa !39
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.u, %bb.o
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.u ], [ %i.cm, %bb.o ]
  store i32 %spec.select.sink.i.i.i, ptr %.val59, align 8, !tbaa !41
  %.pre.i.i = load i32, ptr %i.ca, align 4, !tbaa !38 ; 2 uses
  %.pre87 = sext i32 %.pre.i.i to i64
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.q, %bb.p
  %.pre-phi = phi i64 [ %.pre87, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.cc, %bb.q ], [ %i.cc, %bb.p ] ; 2 uses
  %2 = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.cb, %bb.q ], [ %i.cb, %bb.p ]
  %.not3.i.i = icmp sgt i64 %.pre-phi, %indvars.iv83
  br i1 %.not3.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.val59, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !39
  %i.cx = shl nsw i64 %.pre-phi, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.cw, i64 %i.cx
  %i.cy = sub i32 %i.br, %2
  %i.cz = zext i32 %i.cy to i64
  %i.da = shl nuw nsw i64 %i.cz, 2
  %i.db = add nuw nsw i64 %i.da, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, i8 0, i64 %i.db, i1 false), !tbaa !32
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  %i.dc = trunc nuw nsw i64 %i.bz to i32
  store i32 %i.dc, ptr %i.ca, align 4, !tbaa !38
  br label %Gia_ObjLevelId.exit

Gia_ObjLevelId.exit:                              ; preds = %bb.j, %._crit_edge.i.i.i
  %i.dd = getelementptr i8, ptr %.val59, i64 8
  %.val.i.i64 = load ptr, ptr %i.dd, align 8, !tbaa !39
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i64, i64 %indvars.iv83
  %i.df = load i32, ptr %i.de, align 4, !tbaa !32
  %i.dg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %i.df) ; 0 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !30
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !37
  %i.dl = getelementptr i8, ptr %i.dk, i64 4
  %.val3.i = load i32, ptr %i.dl, align 4, !tbaa !38
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !43
  %i.do = getelementptr i8, ptr %i.dn, i64 4
  %.val.i65 = load i32, ptr %i.do, align 4, !tbaa !38
  %i.dp = add i32 %.val.i65, %.val3.i
  %i.dq = xor i32 %i.dp, -1
  %i.dr = add i32 %i.di, %i.dq
  %i.ds = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %i.dr) ; 0 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !30
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !37
  %i.dx = getelementptr i8, ptr %i.dw, i64 4
  %.val3.i66 = load i32, ptr %i.dx, align 4, !tbaa !38
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bt, i64 72
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !43
  %i.ea = getelementptr i8, ptr %i.dz, i64 4
  %.val.i67 = load i32, ptr %i.ea, align 4, !tbaa !38
  %i.eb = add i32 %.val.i67, %.val3.i66
  %i.ec = xor i32 %i.eb, -1
  %i.ed = add i32 %i.du, %i.ec
  %i.ee = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %i.ed) ; 0 uses
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  call void @Gia_ManStop(ptr noundef %i.bs) #19
  call void @Gia_ManStop(ptr noundef %i.bt) #19
  %.pre = load i32, ptr %i.c, align 8, !tbaa !30
  br label %bb.v

bb.v:                                             ; preds = %Gia_ObjLevelId.exit, %bb.h, %bb.i
  %i.ef = phi i32 [ %.pre, %Gia_ObjLevelId.exit ], [ %i.bj, %bb.i ], [ %i.bj, %bb.h ] ; 2 uses
  %.1 = phi i32 [ %i.bu, %Gia_ObjLevelId.exit ], [ %.079, %bb.i ], [ %.079, %bb.h ]
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.eg = sext i32 %i.ef to i64
  %i.eh = icmp slt i64 %indvars.iv.next84, %i.eg
  br i1 %i.eh, label %bb.g, label %.critedge2, !llvm.loop !114

.critedge2:                                       ; preds = %bb.g, %bb.v, %Vec_IntCountPositive.exit
  %.not.i68 = icmp eq ptr %i.j, null
  br i1 %.not.i68, label %Vec_IntFree.exit, label %bb.w

bb.w:                                             ; preds = %.critedge2
  call void @free(ptr noundef nonnull %i.j) #19
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge2, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

declare i32 @Gia_ObjIsMuxType(ptr noundef) local_unnamed_addr #3

declare ptr @Gia_ObjRecognizeMux(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @Gia_ManLevelNum(ptr noundef) local_unnamed_addr #3

declare ptr @Gia_ManDupCofactorObj(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @Cec_GiaPrintCofStats2(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @Gia_ManLevelNum(ptr noundef %0) #19 ; 0 uses
  tail call void @Gia_ManCreateRefs(ptr noundef %0) #19
  %i.b = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %.val1925 = load i32, ptr %i.c, align 8, !tbaa !36
  %.val2026 = load ptr, ptr %i.d, align 8, !tbaa !37 ; 2 uses
  %i.e = getelementptr i8, ptr %.val2026, i64 4
  %.val20.val27 = load i32, ptr %i.e, align 4, !tbaa !38
  %i.f = icmp sgt i32 %.val20.val27, %.val1925
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.val2029 = phi ptr [ %.val2026, %.lr.ph ], [ %.val20, %bb.c ]
  %.val21 = load ptr, ptr %i.b, align 8, !tbaa !31 ; 2 uses
  %.not = icmp eq ptr %.val21, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %.val2029, i64 8
  %.val22.val = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val22.val, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !32
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [12 x i8], ptr %.val21, i64 %i.k
  %i.m = trunc nuw nsw i64 %indvars.iv to i32     ; 3 uses
  %i.n = tail call ptr @Gia_ManDupCofactorVar(ptr noundef nonnull %0, i32 noundef %i.m, i32 noundef 0) #19 ; 4 uses
  %i.o = tail call ptr @Gia_ManDupCofactorVar(ptr noundef nonnull %0, i32 noundef %i.m, i32 noundef 1) #19 ; 4 uses
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %i.m) ; 0 uses
  %.val = load ptr, ptr %i.b, align 8, !tbaa !31
  %.val18 = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = ptrtoint ptr %.val to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 12
  %sext.i = shl i64 %i.t, 32
  %i.u = ashr exact i64 %sext.i, 30
  %i.v = getelementptr inbounds i8, ptr %.val18, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !32
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %i.w) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !37
  %i.ac = getelementptr i8, ptr %i.ab, i64 4
  %.val3.i = load i32, ptr %i.ac, align 4, !tbaa !38
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.af = getelementptr i8, ptr %i.ae, i64 4
  %.val.i = load i32, ptr %i.af, align 4, !tbaa !38
  %i.ag = add i32 %.val.i, %.val3.i
  %i.ah = xor i32 %i.ag, -1
  %i.ai = add i32 %i.z, %i.ah
  %i.aj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %i.ai) ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !37
  %i.ao = getelementptr i8, ptr %i.an, i64 4
  %.val3.i23 = load i32, ptr %i.ao, align 4, !tbaa !38
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !43
  %i.ar = getelementptr i8, ptr %i.aq, i64 4
  %.val.i24 = load i32, ptr %i.ar, align 4, !tbaa !38
  %i.as = add i32 %.val.i24, %.val3.i23
  %i.at = xor i32 %i.as, -1
  %i.au = add i32 %i.al, %i.at
  %i.av = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %i.au) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  tail call void @Gia_ManStop(ptr noundef %i.n) #19
  tail call void @Gia_ManStop(ptr noundef %i.o) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val19 = load i32, ptr %i.c, align 8, !tbaa !36
  %.val20 = load ptr, ptr %i.d, align 8, !tbaa !37 ; 2 uses
  %i.aw = getelementptr i8, ptr %.val20, i64 4
  %.val20.val = load i32, ptr %i.aw, align 4, !tbaa !38
  %i.ax = sub nsw i32 %.val20.val, %.val19
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp slt i64 %indvars.iv.next, %i.ay
  br i1 %i.az, label %bb.b, label %.critedge, !llvm.loop !115

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #6 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !32
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #19 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #19
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #19 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !64
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #24
end_hunk_0
