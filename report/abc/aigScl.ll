inline.NumInlined: 294
inline.NumDeleted: 52
begin_hunk_0_@Aig_ManSeqCleanup:bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i32 %.val173, ptr %i.l, align 8, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val155 = load i32, ptr %i.d, align 8, !tbaa !28
  %i.m = sub nsw i32 %.val155, %.val164
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %bb.b, label %.critedge, !llvm.loop !56

.critedge:                                        ; preds = %bb.b, %bb.a
  %i.p = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 3 uses
  store i32 0, ptr %i.q, align 4, !tbaa !24
  store i32 100, ptr %i.p, align 8, !tbaa !54
  %i.r = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #17 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !39
  %i.t = getelementptr i8, ptr %0, i64 140        ; 8 uses
  %.val180229 = load i32, ptr %i.t, align 4, !tbaa !28
  %i.u = icmp sgt i32 %.val180229, %.val164
  br i1 %i.u, label %.lr.ph232, label %.critedge2.preheader

.lr.ph232:                                        ; preds = %.critedge
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

..critedge2.preheader_crit_edge:                  ; preds = %Vec_PtrPush.exit
  %i.w = trunc nsw i64 %indvars.iv.next266 to i32 ; 2 uses
  store i32 %i.w, ptr %i.q, align 4, !tbaa !24
  store i32 %spec.select.sink.i235, ptr %i.p, align 8
  store ptr %storemerge222239, ptr %i.s, align 8
  br label %.critedge2.preheader

.critedge2.preheader:                             ; preds = %..critedge2.preheader_crit_edge, %.critedge
  %.val144244 = phi i32 [ %i.w, %..critedge2.preheader_crit_edge ], [ 0, %.critedge ] ; 2 uses
  %.val162240 = phi i32 [ %.val163, %..critedge2.preheader_crit_edge ], [ %.val164, %.critedge ] ; 3 uses
  %i.x = icmp sgt i32 %.val162240, 0
  br i1 %i.x, label %.critedge4.lr.ph, label %.preheader

.critedge4.lr.ph:                                 ; preds = %.critedge2.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.critedge4

bb.c:                                             ; preds = %.lr.ph232, %Vec_PtrPush.exit
  %indvars.iv267 = phi i64 [ 0, %.lr.ph232 ], [ %indvars.iv.next268, %Vec_PtrPush.exit ] ; 2 uses
  %indvars.iv265 = phi i64 [ 0, %.lr.ph232 ], [ %indvars.iv.next266, %Vec_PtrPush.exit ] ; 7 uses
  %storemerge222238 = phi ptr [ %i.r, %.lr.ph232 ], [ %storemerge222239, %Vec_PtrPush.exit ] ; 6 uses
  %spec.select.sink.i236 = phi i32 [ 100, %.lr.ph232 ], [ %spec.select.sink.i235, %Vec_PtrPush.exit ] ; 3 uses
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !47
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %.val150 = load ptr, ptr %i.ab, align 8, !tbaa !39
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.val150, i64 %indvars.iv267
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !40
  %i.ae = trunc nsw i64 %indvars.iv265 to i32
  %i.af = icmp eq i32 %spec.select.sink.i236, %i.ae
  br i1 %i.af, label %bb.d, label %Vec_PtrPush.exit

bb.d:                                             ; preds = %bb.c
  %i.ag = icmp samesign ult i64 %indvars.iv265, 16
  br i1 %i.ag, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %storemerge222238, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge222238, i64 noundef 128) #18
  br label %Vec_PtrPush.exit

bb.g:                                             ; preds = %bb.e
  %i.ai = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #17
  br label %Vec_PtrPush.exit

bb.h:                                             ; preds = %bb.d
  %i.aj = icmp samesign ult i64 %indvars.iv265, 1073741823
  %indvars.iv265.tr = trunc i64 %indvars.iv265 to i32
  %i.ak = shl i32 %indvars.iv265.tr, 1
  %spec.select.i = select i1 %i.aj, i32 %i.ak, i32 2147483647 ; 4 uses
  %i.al = sext i32 %spec.select.i to i64
  %.not.i10.i = icmp samesign ult i64 %indvars.iv265, %i.al
  br i1 %.not.i10.i, label %bb.i, label %Vec_PtrPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i11.i = icmp eq ptr %storemerge222238, null
  %i.am = zext nneg i32 %spec.select.i to i64
  %i.an = shl nuw nsw i64 %i.am, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = tail call ptr @realloc(ptr noundef nonnull %storemerge222238, i64 noundef %i.an) #18
  br label %Vec_PtrPush.exit

bb.k:                                             ; preds = %bb.i
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.an) #17
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.g, %bb.f, %bb.k, %bb.j, %bb.c, %bb.h
  %storemerge222239 = phi ptr [ %storemerge222238, %bb.c ], [ %storemerge222238, %bb.h ], [ %i.ai, %bb.g ], [ %i.ah, %bb.f ], [ %i.ao, %bb.j ], [ %i.ap, %bb.k ] ; 3 uses
  %spec.select.sink.i235 = phi i32 [ %spec.select.sink.i236, %bb.c ], [ %spec.select.sink.i236, %bb.h ], [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ] ; 2 uses
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %storemerge222239, i64 %indvars.iv265
  store ptr %i.ad, ptr %i.aq, align 8, !tbaa !40
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %.val180 = load i32, ptr %i.t, align 4, !tbaa !28
  %.val163 = load i32, ptr %i.e, align 8, !tbaa !43 ; 2 uses
  %i.ar = sub nsw i32 %.val180, %.val163
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp slt i64 %indvars.iv.next268, %i.as
  br i1 %i.at, label %bb.c, label %..critedge2.preheader_crit_edge, !llvm.loop !57

.preheader:                                       ; preds = %.critedge4, %.critedge2.preheader
  %.val161247287 = phi i32 [ %.val162240, %.critedge2.preheader ], [ %.val162, %.critedge4 ]
  %i.au = icmp sgt i32 %.val144244, 0
  br i1 %i.au, label %.lr.ph246, label %.critedge6.preheader

.critedge4:                                       ; preds = %.critedge4.lr.ph, %.critedge4
  %.val162240.pn = phi i32 [ %.val162240, %.critedge4.lr.ph ], [ %.val162, %.critedge4 ]
  %.2242 = phi i32 [ 0, %.critedge4.lr.ph ], [ %i.bi, %.critedge4 ] ; 2 uses
  %i.av = load ptr, ptr %i.y, align 8, !tbaa !47
  %.val4.i = load i32, ptr %i.t, align 4, !tbaa !28
  %i.aw = sub i32 %.2242, %.val162240.pn          ; 2 uses
  %i.ax = add i32 %i.aw, %.val4.i
  %i.ay = getelementptr i8, ptr %i.av, i64 8
  %.val.i = load ptr, ptr %i.ay, align 8, !tbaa !39
  %i.az = sext i32 %i.ax to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !40
  %i.bc = load ptr, ptr %i.z, align 8, !tbaa !38
  %.val3.i184 = load i32, ptr %i.d, align 8, !tbaa !28
  %i.bd = add i32 %i.aw, %.val3.i184
  %i.be = getelementptr i8, ptr %i.bc, i64 8
  %.val.i186 = load ptr, ptr %i.be, align 8, !tbaa !39
  %i.bf = sext i32 %i.bd to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %.val.i186, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !40
  store ptr %i.bb, ptr %i.bh, align 8, !tbaa !37
  %i.bi = add nuw nsw i32 %.2242, 1               ; 2 uses
  %.val162 = load i32, ptr %i.e, align 8, !tbaa !43 ; 3 uses
  %i.bj = icmp slt i32 %i.bi, %.val162
  br i1 %i.bj, label %.critedge4, label %.preheader, !llvm.loop !58

.critedge6.preheader.loopexit:                    ; preds = %.lr.ph246
  %.val161247.pre = load i32, ptr %i.e, align 8, !tbaa !43
  br label %.critedge6.preheader

.critedge6.preheader:                             ; preds = %.critedge6.preheader.loopexit, %.preheader
  %.val161247 = phi i32 [ %.val161247287, %.preheader ], [ %.val161247.pre, %.critedge6.preheader.loopexit ] ; 3 uses
  %.val144.lcssa = phi i32 [ %.val144244, %.preheader ], [ %.val144, %.critedge6.preheader.loopexit ] ; 2 uses
  %i.bk = icmp sgt i32 %.val161247, 0
  br i1 %i.bk, label %.critedge8.lr.ph, label %.critedge6._crit_edge

.critedge8.lr.ph:                                 ; preds = %.critedge6.preheader
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.critedge8

.lr.ph246:                                        ; preds = %.preheader, %.lr.ph246
  %indvars.iv272 = phi i64 [ %indvars.iv.next273, %.lr.ph246 ], [ 0, %.preheader ] ; 2 uses
  %.val149 = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.val149, i64 %indvars.iv272
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !40
  tail call void @Aig_ManSeqCleanup_rec(ptr noundef nonnull %0, ptr noundef %i.bn, ptr noundef nonnull %i.p)
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 2 uses
  %.val144 = load i32, ptr %i.q, align 4, !tbaa !24 ; 2 uses
  %i.bo = sext i32 %.val144 to i64
  %i.bp = icmp slt i64 %indvars.iv.next273, %i.bo
  br i1 %i.bp, label %.lr.ph246, label %.critedge6.preheader.loopexit, !llvm.loop !59

.critedge8:                                       ; preds = %.critedge8.lr.ph, %.critedge8
  %.val161249 = phi i32 [ %.val161247, %.critedge8.lr.ph ], [ %.val161, %.critedge8 ]
  %.4248 = phi i32 [ 0, %.critedge8.lr.ph ], [ %i.bx, %.critedge8 ] ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !38
  %.val3.i190 = load i32, ptr %i.d, align 8, !tbaa !28
  %i.br = sub i32 %.4248, %.val161249
  %i.bs = add i32 %i.br, %.val3.i190
  %i.bt = getelementptr i8, ptr %i.bq, i64 8
  %.val.i192 = load ptr, ptr %i.bt, align 8, !tbaa !39
  %i.bu = sext i32 %i.bs to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %.val.i192, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !40
  store ptr null, ptr %i.bw, align 8, !tbaa !37
  %i.bx = add nuw nsw i32 %.4248, 1               ; 2 uses
  %.val161 = load i32, ptr %i.e, align 8, !tbaa !43 ; 3 uses
  %i.by = icmp slt i32 %i.bx, %.val161
  br i1 %i.by, label %.critedge8, label %.critedge6._crit_edge, !llvm.loop !60

.critedge6._crit_edge:                            ; preds = %.critedge8, %.critedge6.preheader
  %.val161.lcssa = phi i32 [ %.val161247, %.critedge6.preheader ], [ %.val161, %.critedge8 ]
  %.val179 = load i32, ptr %i.t, align 4, !tbaa !28 ; 3 uses
  %i.bz = icmp slt i32 %.val144.lcssa, %.val179
  br i1 %i.bz, label %bb.l, label %bb.au

bb.l:                                             ; preds = %.critedge6._crit_edge
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !30 ; 3 uses
  %.not = icmp eq ptr %i.cb, null
  br i1 %.not, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !47 ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 4      ; 2 uses
  %.val142251 = load i32, ptr %i.ce, align 4, !tbaa !24 ; 2 uses
  %i.cf = icmp sgt i32 %.val142251, 0
  br i1 %i.cf, label %.lr.ph254, label %.critedge10

.lr.ph254:                                        ; preds = %bb.m
  %1 = sub nsw i32 %.val179, %.val161.lcssa
  %i.cg = getelementptr i8, ptr %i.cd, i64 8
  %i.ch = getelementptr i8, ptr %i.cb, i64 8
  %i.ci = sext i32 %1 to i64                      ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph254, %bb.q
  %.val142288 = phi i32 [ %.val142251, %.lr.ph254 ], [ %.val142, %bb.q ] ; 2 uses
  %indvars.iv275 = phi i64 [ 0, %.lr.ph254 ], [ %indvars.iv.next276, %bb.q ] ; 4 uses
  %.0253 = phi i32 [ 0, %.lr.ph254 ], [ %.1, %bb.q ] ; 4 uses
  %.not136 = icmp slt i64 %indvars.iv275, %i.ci
  br i1 %.not136, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val148 = load ptr, ptr %i.cg, align 8, !tbaa !39
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.val148, i64 %indvars.iv275
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !40
  %.val170 = load i32, ptr %i.b, align 8, !tbaa !52
  %i.cl = getelementptr i8, ptr %i.ck, i64 32
  %.val171 = load i32, ptr %i.cl, align 8, !tbaa !53
  %.not218 = icmp eq i32 %.val171, %.val170
  br i1 %.not218, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %2 = sub nsw i64 %indvars.iv275, %i.ci
  %.val165 = load ptr, ptr %i.ch, align 8, !tbaa !34 ; 2 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %.val165, i64 %2
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !28
  %i.co = add nsw i32 %.0253, 1
  %i.cp = sext i32 %.0253 to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %.val165, i64 %i.cp
  store i32 %i.cn, ptr %i.cq, align 4, !tbaa !28
  %.val142.pre = load i32, ptr %i.ce, align 4, !tbaa !24
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p
  %.val142 = phi i32 [ %.val142.pre, %bb.p ], [ %.val142288, %bb.o ], [ %.val142288, %bb.n ] ; 2 uses
  %.1 = phi i32 [ %i.co, %bb.p ], [ %.0253, %bb.o ], [ %.0253, %bb.n ] ; 2 uses
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %i.cr = sext i32 %.val142 to i64
  %i.cs = icmp slt i64 %indvars.iv.next276, %i.cr
  br i1 %i.cs, label %bb.n, label %.critedge10, !llvm.loop !61

.critedge10:                                      ; preds = %bb.q, %bb.m
  %.0.lcssa = phi i32 [ 0, %bb.m ], [ %.1, %bb.q ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 %.0.lcssa, ptr %i.ct, align 4, !tbaa !31
  br label %bb.r

bb.r:                                             ; preds = %.critedge10, %bb.l
  %.val154 = load i32, ptr %i.d, align 8, !tbaa !28 ; 2 uses
  %i.cu = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 5 uses
  %i.cv = add i32 %.val154, -1
  %or.cond.i = icmp ult i32 %i.cv, 7
  %spec.store.select.i = select i1 %or.cond.i, i32 8, i32 %.val154 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 4 ; 3 uses
  store i32 0, ptr %i.cw, align 4, !tbaa !24
  store i32 %spec.store.select.i, ptr %i.cu, align 8, !tbaa !54
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_PtrAlloc.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = sext i32 %spec.store.select.i to i64
  %i.cy = shl nsw i64 %i.cx, 3
  %i.cz = tail call noalias ptr @malloc(i64 noundef %i.cy) #17
  br label %Vec_PtrAlloc.exit

Vec_PtrAlloc.exit:                                ; preds = %bb.r, %bb.s
  %i.da = phi ptr [ %i.cz, %bb.s ], [ null, %bb.r ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  store ptr %i.da, ptr %i.db, align 8, !tbaa !39
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !38 ; 3 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 4
  %.val141256 = load i32, ptr %i.de, align 4, !tbaa !24
  %i.df = icmp sgt i32 %.val141256, 0
  br i1 %i.df, label %.lr.ph258, label %.critedge12

.lr.ph258:                                        ; preds = %Vec_PtrAlloc.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph258, %bb.ae
  %i.dh = phi ptr [ %i.da, %.lr.ph258 ], [ %i.ei, %bb.ae ] ; 3 uses
  %i.di = phi ptr [ %i.da, %.lr.ph258 ], [ %i.ej, %bb.ae ] ; 5 uses
  %i.dj = phi i32 [ %spec.store.select.i, %.lr.ph258 ], [ %i.ek, %bb.ae ] ; 9 uses
  %i.dk = phi i32 [ 0, %.lr.ph258 ], [ %i.el, %bb.ae ] ; 3 uses
  %indvars.iv278 = phi i64 [ 0, %.lr.ph258 ], [ %indvars.iv.next279, %bb.ae ] ; 2 uses
  %i.dl = phi ptr [ %i.dd, %.lr.ph258 ], [ %i.eo, %bb.ae ]
  %i.dm = getelementptr i8, ptr %i.dl, i64 8
  %.val147 = load ptr, ptr %i.dm, align 8, !tbaa !39
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.val147, i64 %indvars.iv278
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !40 ; 3 uses
  %.val168 = load i32, ptr %i.b, align 8, !tbaa !52
  %i.dp = getelementptr i8, ptr %i.do, i64 32
  %.val169 = load i32, ptr %i.dp, align 8, !tbaa !53
  %.not220 = icmp eq i32 %.val169, %.val168
  br i1 %.not220, label %bb.u, label %bb.ad

bb.u:                                             ; preds = %bb.t
  %i.dq = icmp eq i32 %i.dk, %i.dj
  br i1 %i.dq, label %bb.v, label %Vec_PtrPush.exit200

bb.v:                                             ; preds = %bb.u
  %i.dr = icmp slt i32 %i.dj, 16
  br i1 %i.dr, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %.not9.i.i198 = icmp eq ptr %i.di, null
  br i1 %.not9.i.i198, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ds = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.di, i64 noundef 128) #18
  br label %Vec_PtrGrow.exit12.sink.split.i196

bb.y:                                             ; preds = %bb.w
  %i.dt = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #17
  br label %Vec_PtrGrow.exit12.sink.split.i196

bb.z:                                             ; preds = %bb.v
  %i.du = icmp samesign ult i32 %i.dj, 1073741823
  %i.dv = shl nuw nsw i32 %i.dj, 1
  %spec.select.i193 = select i1 %i.du, i32 %i.dv, i32 2147483647 ; 4 uses
  %.not.i10.i194 = icmp samesign ult i32 %i.dj, %spec.select.i193
  br i1 %.not.i10.i194, label %bb.aa, label %Vec_PtrPush.exit200

bb.aa:                                            ; preds = %bb.z
  %.not9.i11.i195 = icmp eq ptr %i.di, null
  %i.dw = zext nneg i32 %spec.select.i193 to i64
  %i.dx = shl nuw nsw i64 %i.dw, 3                ; 2 uses
  br i1 %.not9.i11.i195, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dy = tail call ptr @realloc(ptr noundef nonnull %i.di, i64 noundef %i.dx) #18
  br label %Vec_PtrGrow.exit12.sink.split.i196

bb.ac:                                            ; preds = %bb.aa
  %i.dz = tail call noalias ptr @malloc(i64 noundef %i.dx) #17
  br label %Vec_PtrGrow.exit12.sink.split.i196

Vec_PtrGrow.exit12.sink.split.i196:               ; preds = %bb.ab, %bb.ac, %bb.x, %bb.y
  %storemerge221 = phi ptr [ %i.dt, %bb.y ], [ %i.ds, %bb.x ], [ %i.dy, %bb.ab ], [ %i.dz, %bb.ac ] ; 2 uses
  %spec.select.sink.i197 = phi i32 [ 16, %bb.y ], [ 16, %bb.x ], [ %spec.select.i193, %bb.ab ], [ %spec.select.i193, %bb.ac ] ; 2 uses
  store ptr %storemerge221, ptr %i.db, align 8, !tbaa !39
  store i32 %spec.select.sink.i197, ptr %i.cu, align 8, !tbaa !54
  %.pre = load i32, ptr %i.cw, align 4, !tbaa !24
  br label %Vec_PtrPush.exit200

Vec_PtrPush.exit200:                              ; preds = %bb.u, %bb.z, %Vec_PtrGrow.exit12.sink.split.i196
  %i.ea = phi i32 [ %i.dk, %bb.u ], [ %i.dj, %bb.z ], [ %.pre, %Vec_PtrGrow.exit12.sink.split.i196 ] ; 2 uses
  %i.eb = phi ptr [ %i.dh, %bb.u ], [ %i.dh, %bb.z ], [ %storemerge221, %Vec_PtrGrow.exit12.sink.split.i196 ] ; 3 uses
  %i.ec = phi i32 [ %i.dj, %bb.u ], [ %i.dj, %bb.z ], [ %spec.select.sink.i197, %Vec_PtrGrow.exit12.sink.split.i196 ]
  %i.ed = add nsw i32 %i.ea, 1                    ; 2 uses
  store i32 %i.ed, ptr %i.cw, align 4, !tbaa !24
  br label %bb.ae

bb.ad:                                            ; preds = %bb.t
  %i.ee = load ptr, ptr %i.dg, align 8, !tbaa !8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.do, i64 36
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !62
  %i.eh = getelementptr i8, ptr %i.ee, i64 8
  %.val183 = load ptr, ptr %i.eh, align 8, !tbaa !39
  br label %bb.ae

bb.ae:                                            ; preds = %Vec_PtrPush.exit200, %bb.ad
  %.sink313.a = phi i32 [ %i.ea, %Vec_PtrPush.exit200 ], [ %i.eg, %bb.ad ]
  %.sink311 = phi ptr [ %i.eb, %Vec_PtrPush.exit200 ], [ %.val183, %bb.ad ]
  %.sink = phi ptr [ %i.do, %Vec_PtrPush.exit200 ], [ null, %bb.ad ]
  %i.ei = phi ptr [ %i.eb, %Vec_PtrPush.exit200 ], [ %i.dh, %bb.ad ]
  %i.ej = phi ptr [ %i.eb, %Vec_PtrPush.exit200 ], [ %i.di, %bb.ad ]
  %i.ek = phi i32 [ %i.ec, %Vec_PtrPush.exit200 ], [ %i.dj, %bb.ad ]
  %i.el = phi i32 [ %i.ed, %Vec_PtrPush.exit200 ], [ %i.dk, %bb.ad ]
  %i.em = sext i32 %.sink313.a to i64
  %i.en = getelementptr inbounds [8 x i8], ptr %.sink311, i64 %i.em
  store ptr %.sink, ptr %i.en, align 8, !tbaa !40
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 2 uses
  %i.eo = load ptr, ptr %i.dc, align 8, !tbaa !38 ; 3 uses
  %i.ep = getelementptr i8, ptr %i.eo, i64 4
  %.val141 = load i32, ptr %i.ep, align 4, !tbaa !24
  %i.eq = sext i32 %.val141 to i64
  %i.er = icmp slt i64 %indvars.iv.next279, %i.eq
  br i1 %i.er, label %bb.t, label %.critedge12, !llvm.loop !63

.critedge12:                                      ; preds = %bb.ae, %Vec_PtrAlloc.exit
  %i.es = phi ptr [ %i.dd, %Vec_PtrAlloc.exit ], [ %i.eo, %bb.ae ]
  %.val177 = load i32, ptr %i.t, align 4, !tbaa !28 ; 2 uses
  %i.et = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 5 uses
  %i.eu = add i32 %.val177, -1
  %or.cond.i201 = icmp ult i32 %i.eu, 7
  %spec.store.select.i202 = select i1 %or.cond.i201, i32 8, i32 %.val177 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 4 ; 4 uses
  store i32 0, ptr %i.ev, align 4, !tbaa !24
  store i32 %spec.store.select.i202, ptr %i.et, align 8, !tbaa !54
  %.not.i203 = icmp eq i32 %spec.store.select.i202, 0
  br i1 %.not.i203, label %Vec_PtrAlloc.exit204, label %bb.af

bb.af:                                            ; preds = %.critedge12
  %i.ew = sext i32 %spec.store.select.i202 to i64
  %i.ex = shl nsw i64 %i.ew, 3
  %i.ey = tail call noalias ptr @malloc(i64 noundef %i.ex) #17
  br label %Vec_PtrAlloc.exit204

Vec_PtrAlloc.exit204:                             ; preds = %.critedge12, %bb.af
  %i.ez = phi ptr [ %i.ey, %bb.af ], [ null, %.critedge12 ] ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !39
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !47 ; 2 uses
  %i.fd = getelementptr i8, ptr %i.fc, i64 4
  %.val140259 = load i32, ptr %i.fd, align 4, !tbaa !24
  %i.fe = icmp sgt i32 %.val140259, 0
  br i1 %i.fe, label %.lr.ph261, label %.critedge14

.lr.ph261:                                        ; preds = %Vec_PtrAlloc.exit204
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph261, %bb.ar
  %i.fg = phi ptr [ %i.ez, %.lr.ph261 ], [ %i.gh, %bb.ar ] ; 3 uses
  %i.fh = phi ptr [ %i.ez, %.lr.ph261 ], [ %i.gi, %bb.ar ] ; 5 uses
  %i.fi = phi i32 [ %spec.store.select.i202, %.lr.ph261 ], [ %i.gj, %bb.ar ] ; 9 uses
  %i.fj = phi i32 [ 0, %.lr.ph261 ], [ %i.gk, %bb.ar ] ; 3 uses
  %indvars.iv281 = phi i64 [ 0, %.lr.ph261 ], [ %indvars.iv.next282, %bb.ar ] ; 2 uses
  %i.fk = phi ptr [ %i.fc, %.lr.ph261 ], [ %i.gn, %bb.ar ]
  %i.fl = getelementptr i8, ptr %i.fk, i64 8
  %.val146 = load ptr, ptr %i.fl, align 8, !tbaa !39
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %.val146, i64 %indvars.iv281
end_hunk_0
