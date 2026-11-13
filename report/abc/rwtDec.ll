Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/rwtDec?download=true
inline.NumInlined: 38
inline.NumDeleted: 24
begin_hunk_0_@Rwt_ManPreprocess:bb.a
bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !49 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not9.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.bb, i64 noundef 128) #8
  br label %Vec_PtrGrow.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.bd = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #7
  br label %Vec_PtrGrow.exit.i.i

Vec_PtrGrow.exit.i.i:                             ; preds = %bb.n, %bb.m
  %i.be = phi ptr [ %i.bc, %bb.m ], [ %i.bd, %bb.n ]
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !49
  br label %Vec_PtrGrow.exit12.sink.split.i.i

bb.o:                                             ; preds = %bb.k
  %i.bf = icmp samesign ult i32 %i.aw, 1073741823
  %i.bg = shl nuw nsw i32 %i.aw, 1
  %spec.select.i.i = select i1 %i.bf, i32 %i.bg, i32 2147483647 ; 3 uses
  %.not.i10.i.i = icmp samesign ult i32 %i.aw, %spec.select.i.i
  br i1 %.not.i10.i.i, label %bb.p, label %Vec_VecPush.exit

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !49 ; 2 uses
  %.not9.i11.i.i = icmp eq ptr %i.bi, null
  %i.bj = zext nneg i32 %spec.select.i.i to i64
  %i.bk = shl nuw nsw i64 %i.bj, 3                ; 2 uses
  br i1 %.not9.i11.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = tail call ptr @realloc(ptr noundef nonnull %i.bi, i64 noundef %i.bk) #8
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bm = tail call noalias ptr @malloc(i64 noundef %i.bk) #7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bn = phi ptr [ %i.bl, %bb.q ], [ %i.bm, %bb.r ]
  store ptr %i.bn, ptr %i.bh, align 8, !tbaa !49
  br label %Vec_PtrGrow.exit12.sink.split.i.i

Vec_PtrGrow.exit12.sink.split.i.i:                ; preds = %bb.s, %Vec_PtrGrow.exit.i.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.s ], [ 16, %Vec_PtrGrow.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %i.au, align 8, !tbaa !48
  %.pre19.i = load i32, ptr %i.av, align 4, !tbaa !50
  br label %Vec_VecPush.exit

Vec_VecPush.exit:                                 ; preds = %bb.j, %bb.o, %Vec_PtrGrow.exit12.sink.split.i.i
  %i.bo = phi i32 [ %i.aw, %bb.j ], [ %i.aw, %bb.o ], [ %.pre19.i, %Vec_PtrGrow.exit12.sink.split.i.i ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !49
  %i.br = add nsw i32 %i.bo, 1
  store i32 %i.br, ptr %i.av, align 4, !tbaa !50
  %i.bs = sext i32 %i.bo to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store ptr %.03547, ptr %i.bt, align 8, !tbaa !39
  %i.bu = load ptr, ptr %i.l, align 8, !tbaa !51
  %i.bv = load i32, ptr %i.u, align 8
  %i.bw = and i32 %i.bv, 65535
  %i.bx = zext nneg i32 %i.bw to i64              ; 2 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !53
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.cb = load ptr, ptr %i.k, align 8, !tbaa !46  ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bx
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !21
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %i.ce
  store i16 %i.bz, ptr %i.cf, align 2, !tbaa !53
  %i.cg = getelementptr inbounds nuw i8, ptr %.03547, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !54 ; 2 uses
  %.not = icmp eq ptr %i.ch, null
  br i1 %.not, label %.loopexit.loopexit, label %.preheader46, !llvm.loop !31

.loopexit.loopexit:                               ; preds = %Vec_VecPush.exit
  %.pre62 = load i32, ptr %0, align 8, !tbaa !43
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c
  %i.ci = phi i32 [ %.pre62, %.loopexit.loopexit ], [ %i.n, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cj = sext i32 %i.ci to i64
  %i.ck = icmp slt i64 %indvars.iv.next, %i.cj
  br i1 %i.ck, label %bb.c, label %.preheader45, !llvm.loop !32

.preheader:                                       ; preds = %.preheader.preheader, %.critedge
  %i.cl = phi ptr [ %i.du, %.critedge ], [ %.ph, %.preheader.preheader ] ; 4 uses
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %.critedge ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 8
  %.val3749 = load ptr, ptr %i.cm, align 8, !tbaa !38
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.val3749, i64 %indvars.iv59
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !39 ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 4
  %.val3950 = load i32, ptr %i.cp, align 4, !tbaa !50
  %i.cq = icmp sgt i32 %.val3950, 0
  br i1 %i.cq, label %.lr.ph52, label %.critedge

.lr.ph52:                                         ; preds = %.preheader, %Rwt_NodePreprocess.exit
  %i.cr = phi ptr [ %i.dk, %Rwt_NodePreprocess.exit ], [ %i.cl, %.preheader ] ; 2 uses
  %i.cs = phi ptr [ %i.dl, %Rwt_NodePreprocess.exit ], [ %i.cl, %.preheader ] ; 2 uses
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %Rwt_NodePreprocess.exit ], [ 0, %.preheader ] ; 2 uses
  %i.ct = phi ptr [ %i.dq, %Rwt_NodePreprocess.exit ], [ %i.co, %.preheader ]
  %i.cu = getelementptr i8, ptr %i.ct, i64 8
  %.val40 = load ptr, ptr %i.cu, align 8, !tbaa !49
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.val40, i64 %indvars.iv56
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !39 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load i32, ptr %i.cx, align 8
  %trunc.i = trunc i32 %i.cy to i16
  %calloc.i11.i = tail call dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 12 uses
  switch i16 %trunc.i, label %bb.v [
    i16 0, label %bb.t
    i16 255, label %bb.u
  ]

bb.t:                                             ; preds = %.lr.ph52
  store i32 1, ptr %calloc.i11.i, align 8, !tbaa !55
  br label %Rwt_NodePreprocess.exit

bb.u:                                             ; preds = %.lr.ph52
  %i.cz = getelementptr inbounds nuw i8, ptr %calloc.i11.i, i64 4
  store i32 4, ptr %i.cz, align 4, !tbaa !56
  %i.da = getelementptr inbounds nuw i8, ptr %calloc.i11.i, i64 8
  store i32 4, ptr %i.da, align 8, !tbaa !26
  %i.db = getelementptr inbounds nuw i8, ptr %calloc.i11.i, i64 12
  store i32 58, ptr %i.db, align 4, !tbaa !27
  %i.dc = tail call noalias dereferenceable_or_null(1392) ptr @malloc(i64 noundef 1392) #7 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %calloc.i11.i, i64 16
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.dc, i8 0, i64 96, i1 false)
  br label %Rwt_NodePreprocess.exit

bb.v:                                             ; preds = %.lr.ph52
  %i.de = getelementptr inbounds nuw i8, ptr %calloc.i11.i, i64 4
  store i32 4, ptr %i.de, align 4, !tbaa !56
  %i.df = getelementptr inbounds nuw i8, ptr %calloc.i11.i, i64 8
  store i32 4, ptr %i.df, align 8, !tbaa !26
  %i.dg = getelementptr inbounds nuw i8, ptr %calloc.i11.i, i64 12
  store i32 58, ptr %i.dg, align 4, !tbaa !27
  %i.dh = tail call noalias dereferenceable_or_null(1392) ptr @malloc(i64 noundef 1392) #7 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %calloc.i11.i, i64 16
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.dh, i8 0, i64 96, i1 false)
  tail call void @Rwt_ManIncTravId(ptr noundef nonnull %0) #9
  %i.dj = tail call fastcc i32 @Rwt_TravCollect_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.cw, ptr noundef %calloc.i11.i)
  %.pre65 = load ptr, ptr %i.g, align 8, !tbaa !42 ; 2 uses
  br label %Rwt_NodePreprocess.exit

Rwt_NodePreprocess.exit:                          ; preds = %bb.t, %bb.u, %bb.v
  %i.dk = phi ptr [ %.pre65, %bb.v ], [ %i.cr, %bb.u ], [ %i.cr, %bb.t ] ; 2 uses
  %i.dl = phi ptr [ %.pre65, %bb.v ], [ %i.cs, %bb.u ], [ %i.cs, %bb.t ] ; 2 uses
  %.sink.i = phi i32 [ %i.dj, %bb.v ], [ 7, %bb.u ], [ 1, %bb.t ]
  %i.dm = getelementptr inbounds nuw i8, ptr %calloc.i11.i, i64 24
  store i32 %.sink.i, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  store ptr %calloc.i11.i, ptr %i.dn, align 8, !tbaa !54
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %i.do = getelementptr i8, ptr %i.dl, i64 8
  %.val37 = load ptr, ptr %i.do, align 8, !tbaa !38
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.val37, i64 %indvars.iv59
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !39 ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 4
  %.val39 = load i32, ptr %i.dr, align 4, !tbaa !50
  %i.ds = sext i32 %.val39 to i64
  %i.dt = icmp slt i64 %indvars.iv.next57, %i.ds
  br i1 %i.dt, label %.lr.ph52, label %.critedge, !llvm.loop !33

.critedge:                                        ; preds = %Rwt_NodePreprocess.exit, %.preheader
  %i.du = phi ptr [ %i.cl, %.preheader ], [ %i.dk, %Rwt_NodePreprocess.exit ] ; 2 uses
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 4
  %.val38 = load i32, ptr %i.dv, align 4, !tbaa !41
  %i.dw = sext i32 %.val38 to i64
  %i.dx = icmp slt i64 %indvars.iv.next60, %i.dw
  br i1 %i.dx, label %.preheader, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %.critedge, %.preheader45
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #3

declare void @Rwt_ManIncTravId(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, -2147483648) i32 @Rwt_TravCollect_rec(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 1073741824
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 8, !tbaa !57
  %i.e = shl i32 %i.d, 1
  %i.f = add i32 %i.e, 2147483646
  %i.g = and i32 %i.f, 2147483646
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load i32, ptr %i.j, align 8, !tbaa !59   ; 2 uses
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = lshr i32 %i.b, 16
  %i.n = and i32 %i.m, 255
  br label %bb.y

bb.e:                                             ; preds = %bb.c
  store i32 %i.k, ptr %i.h, align 4, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !60
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, -2
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = tail call fastcc i32 @Rwt_TravCollect_rec(ptr noundef nonnull %0, ptr noundef %i.s, ptr noundef %2)
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !60
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = trunc i64 %i.v to i32
  %i.x = and i32 %i.w, 1
  %spec.select = xor i32 %i.x, %i.t               ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !61
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = and i64 %i.aa, -2
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = tail call fastcc i32 @Rwt_TravCollect_rec(ptr noundef nonnull %0, ptr noundef %i.ac, ptr noundef %2)
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !61
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = trunc i64 %i.af to i32
  %i.ah = and i32 %i.ag, 1
  %.sroa.05.0 = xor i32 %i.ah, %i.ad              ; 5 uses
  %i.ai = load i32, ptr %i.a, align 8
  %.not36 = icmp sgt i32 %i.ai, -1
  br i1 %.not36, label %bb.s, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = xor i32 %spec.select, 1                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !26 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 9 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !27
  %i.ao = icmp eq i32 %i.al, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !28 ; 3 uses
  br i1 %i.ao, label %bb.g, label %Dec_GraphAddNodeAnd.exit.i

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i = icmp eq ptr %i.aq, null
  %i.ar = shl nsw i32 %i.al, 1                    ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = mul nsw i64 %i.as, 24                   ; 2 uses
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = tail call ptr @realloc(ptr noundef nonnull %i.aq, i64 noundef %i.at) #8
  %.pre.i.i.i = load i32, ptr %i.am, align 4, !tbaa !27
  %.pre15.pre.i.i.i = load i32, ptr %i.ak, align 8, !tbaa !26
  %.pre17.i.i.i = shl nsw i32 %.pre.i.i.i, 1
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.av = tail call noalias ptr @malloc(i64 noundef %i.at) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi.i.i.i = phi i32 [ %i.ar, %bb.i ], [ %.pre17.i.i.i, %bb.h ]
  %.pre15.i.i.i = phi i32 [ %i.al, %bb.i ], [ %.pre15.pre.i.i.i, %bb.h ]
  %i.aw = phi ptr [ %i.av, %bb.i ], [ %i.au, %bb.h ] ; 2 uses
  store ptr %i.aw, ptr %i.ap, align 8, !tbaa !28
  store i32 %.pre-phi.i.i.i, ptr %i.am, align 4, !tbaa !27
  br label %Dec_GraphAddNodeAnd.exit.i

Dec_GraphAddNodeAnd.exit.i:                       ; preds = %bb.j, %bb.f
  %i.ax = phi i32 [ %.pre15.i.i.i, %bb.j ], [ %i.al, %bb.f ] ; 2 uses
  %i.ay = phi ptr [ %i.aw, %bb.j ], [ %i.aq, %bb.f ]
  %i.az = add nsw i32 %i.ax, 1
  store i32 %i.az, ptr %i.ak, align 8, !tbaa !26
  %i.ba = sext i32 %i.ax to i64
  %i.bb = getelementptr inbounds [24 x i8], ptr %i.ay, i64 %i.ba ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  store i32 %i.aj, ptr %i.bb, align 8, !tbaa !21
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store i32 %.sroa.05.0, ptr %i.bd, align 4, !tbaa !21
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bf = shl i32 %i.aj, 15
  %i.bg = and i32 %i.bf, 32768
  %i.bh = shl i32 %.sroa.05.0, 16
  %i.bi = and i32 %i.bh, 65536
  %i.bj = or disjoint i32 %i.bi, %i.bg
  store i32 %i.bj, ptr %i.be, align 8
  %i.bk = load i32, ptr %i.ak, align 8, !tbaa !26 ; 4 uses
  %i.bl = shl i32 %i.bk, 1                        ; 3 uses
  %i.bm = xor i32 %.sroa.05.0, 1                  ; 2 uses
  %i.bn = load i32, ptr %i.am, align 4, !tbaa !27
  %i.bo = icmp eq i32 %i.bk, %i.bn
  %i.bp = load ptr, ptr %i.ap, align 8, !tbaa !28 ; 3 uses
  br i1 %i.bo, label %bb.k, label %Dec_GraphAddNodeAnd.exit42.i

bb.k:                                             ; preds = %Dec_GraphAddNodeAnd.exit.i
  %.not.i.i36.i = icmp eq ptr %i.bp, null
  %i.bq = sext i32 %i.bl to i64
  %i.br = mul nsw i64 %i.bq, 24                   ; 2 uses
  br i1 %.not.i.i36.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = tail call ptr @realloc(ptr noundef nonnull %i.bp, i64 noundef %i.br) #8
  %.pre.i.i37.i = load i32, ptr %i.am, align 4, !tbaa !27
  %.pre15.pre.i.i38.i = load i32, ptr %i.ak, align 8, !tbaa !26
  %.pre17.i.i39.i = shl nsw i32 %.pre.i.i37.i, 1
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bt = tail call noalias ptr @malloc(i64 noundef %i.br) #7
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre-phi.i.i40.i = phi i32 [ %i.bl, %bb.m ], [ %.pre17.i.i39.i, %bb.l ]
  %.pre15.i.i41.i = phi i32 [ %i.bk, %bb.m ], [ %.pre15.pre.i.i38.i, %bb.l ]
  %i.bu = phi ptr [ %i.bt, %bb.m ], [ %i.bs, %bb.l ] ; 2 uses
  store ptr %i.bu, ptr %i.ap, align 8, !tbaa !28
  store i32 %.pre-phi.i.i40.i, ptr %i.am, align 4, !tbaa !27
  br label %Dec_GraphAddNodeAnd.exit42.i

Dec_GraphAddNodeAnd.exit42.i:                     ; preds = %bb.n, %Dec_GraphAddNodeAnd.exit.i
  %i.bv = phi i32 [ %.pre15.i.i41.i, %bb.n ], [ %i.bk, %Dec_GraphAddNodeAnd.exit.i ] ; 2 uses
  %i.bw = phi ptr [ %i.bu, %bb.n ], [ %i.bp, %Dec_GraphAddNodeAnd.exit.i ]
  %i.bx = add nsw i32 %i.bv, 1
  store i32 %i.bx, ptr %i.ak, align 8, !tbaa !26
  %i.by = sext i32 %i.bv to i64
  %i.bz = getelementptr inbounds [24 x i8], ptr %i.bw, i64 %i.by ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false)
  store i32 %spec.select, ptr %i.bz, align 8, !tbaa !21
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store i32 %i.bm, ptr %i.cb, align 4, !tbaa !21
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cd = shl i32 %spec.select, 15
  %i.ce = and i32 %i.cd, 32768
  %i.cf = shl i32 %i.bm, 16
  %i.cg = and i32 %i.cf, 65536
  %i.ch = or disjoint i32 %i.cg, %i.ce
  store i32 %i.ch, ptr %i.cc, align 8
  %i.ci = load i32, ptr %i.ak, align 8, !tbaa !26 ; 4 uses
  %i.cj = shl i32 %i.ci, 1                        ; 3 uses
  %i.ck = load i32, ptr %i.am, align 4, !tbaa !27
  %i.cl = icmp eq i32 %i.ci, %i.ck
  %i.cm = load ptr, ptr %i.ap, align 8, !tbaa !28 ; 3 uses
  br i1 %i.cl, label %bb.o, label %Dec_GraphAddNodeXor.exit

bb.o:                                             ; preds = %Dec_GraphAddNodeAnd.exit42.i
  %.not.i.i43.i = icmp eq ptr %i.cm, null
  %i.cn = sext i32 %i.cj to i64
  %i.co = mul nsw i64 %i.cn, 24                   ; 2 uses
  br i1 %.not.i.i43.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cp = tail call ptr @realloc(ptr noundef nonnull %i.cm, i64 noundef %i.co) #8
  %.pre.i.i44.i = load i32, ptr %i.am, align 4, !tbaa !27
  %.pre15.pre.i.i45.i = load i32, ptr %i.ak, align 8, !tbaa !26
  %.pre17.i.i46.i = shl nsw i32 %.pre.i.i44.i, 1
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cq = tail call noalias ptr @malloc(i64 noundef %i.co) #7
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pre-phi.i.i47.i = phi i32 [ %i.cj, %bb.q ], [ %.pre17.i.i46.i, %bb.p ]
  %.pre15.i.i48.i = phi i32 [ %i.ci, %bb.q ], [ %.pre15.pre.i.i45.i, %bb.p ]
  %i.cr = phi ptr [ %i.cq, %bb.q ], [ %i.cp, %bb.p ] ; 2 uses
  store ptr %i.cr, ptr %i.ap, align 8, !tbaa !28
  store i32 %.pre-phi.i.i47.i, ptr %i.am, align 4, !tbaa !27
  br label %Dec_GraphAddNodeXor.exit

Dec_GraphAddNodeXor.exit:                         ; preds = %Dec_GraphAddNodeAnd.exit42.i, %bb.r
  %i.cs = phi i32 [ %.pre15.i.i48.i, %bb.r ], [ %i.ci, %Dec_GraphAddNodeAnd.exit42.i ] ; 2 uses
  %i.ct = phi ptr [ %i.cr, %bb.r ], [ %i.cm, %Dec_GraphAddNodeAnd.exit42.i ]
  %i.cu = insertelement <2 x i32> poison, i32 %i.bl, i64 0
  %i.cv = insertelement <2 x i32> %i.cu, i32 %i.cj, i64 1
  %i.cw = add <2 x i32> %i.cv, splat (i32 2147483646)
  %i.cx = add nsw i32 %i.cs, 1
  store i32 %i.cx, ptr %i.ak, align 8, !tbaa !26
  %i.cy = sext i32 %i.cs to i64
  %i.cz = getelementptr inbounds [24 x i8], ptr %i.ct, i64 %i.cy ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, i8 0, i64 16, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i32 16384, ptr %i.db, align 8
  %i.dc = and <2 x i32> %i.cw, splat (i32 2147483646)
  %i.dd = or disjoint <2 x i32> %i.dc, splat (i32 1)
  store <2 x i32> %i.dd, ptr %i.cz, align 8
  %i.de = load i32, ptr %i.ak, align 8, !tbaa !26
  %i.df = shl i32 %i.de, 1
  %i.dg = add i32 %i.df, 2147483646
  %i.dh = and i32 %i.dg, 2147483646
  %i.di = or disjoint i32 %i.dh, 1
  br label %bb.x

bb.s:                                             ; preds = %bb.e
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !26 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !27
  %i.dn = icmp eq i32 %i.dk, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !28 ; 3 uses
  br i1 %i.dn, label %bb.t, label %Dec_GraphAddNodeAnd.exit

bb.t:                                             ; preds = %bb.s
  %.not.i.i = icmp eq ptr %i.dp, null
  %i.dq = shl nsw i32 %i.dk, 1                    ; 2 uses
  %i.dr = sext i32 %i.dq to i64
  %i.ds = mul nsw i64 %i.dr, 24                   ; 2 uses
  br i1 %.not.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dt = tail call ptr @realloc(ptr noundef nonnull %i.dp, i64 noundef %i.ds) #8
  %.pre.i.i = load i32, ptr %i.dl, align 4, !tbaa !27
  %.pre15.pre.i.i = load i32, ptr %i.dj, align 8, !tbaa !26
  %.pre17.i.i = shl nsw i32 %.pre.i.i, 1
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.du = tail call noalias ptr @malloc(i64 noundef %i.ds) #7
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pre-phi.i.i = phi i32 [ %i.dq, %bb.v ], [ %.pre17.i.i, %bb.u ]
  %.pre15.i.i = phi i32 [ %i.dk, %bb.v ], [ %.pre15.pre.i.i, %bb.u ]
  %i.dv = phi ptr [ %i.du, %bb.v ], [ %i.dt, %bb.u ] ; 2 uses
  store ptr %i.dv, ptr %i.do, align 8, !tbaa !28
  store i32 %.pre-phi.i.i, ptr %i.dl, align 4, !tbaa !27
  br label %Dec_GraphAddNodeAnd.exit

Dec_GraphAddNodeAnd.exit:                         ; preds = %bb.s, %bb.w
  %i.dw = phi i32 [ %.pre15.i.i, %bb.w ], [ %i.dk, %bb.s ] ; 2 uses
  %i.dx = phi ptr [ %i.dv, %bb.w ], [ %i.dp, %bb.s ]
  %i.dy = add nsw i32 %i.dw, 1
  store i32 %i.dy, ptr %i.dj, align 8, !tbaa !26
  %i.dz = sext i32 %i.dw to i64
  %i.ea = getelementptr inbounds [24 x i8], ptr %i.dx, i64 %i.dz ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, i8 0, i64 16, i1 false)
  store i32 %spec.select, ptr %i.ea, align 8, !tbaa !21
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  store i32 %.sroa.05.0, ptr %i.ec, align 4, !tbaa !21
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ee = shl i32 %spec.select, 15
  %i.ef = and i32 %i.ee, 32768
  %i.eg = shl i32 %.sroa.05.0, 16
  %i.eh = and i32 %i.eg, 65536
  %i.ei = or disjoint i32 %i.eh, %i.ef
  store i32 %i.ei, ptr %i.ed, align 8
  %i.ej = load i32, ptr %i.dj, align 8, !tbaa !26
  %i.ek = shl i32 %i.ej, 1
  %i.el = add i32 %i.ek, 2147483646
  %i.em = and i32 %i.el, 2147483646
  br label %bb.x

bb.x:                                             ; preds = %Dec_GraphAddNodeAnd.exit, %Dec_GraphAddNodeXor.exit
  %.sroa.04.0 = phi i32 [ %i.di, %Dec_GraphAddNodeXor.exit ], [ %i.em, %Dec_GraphAddNodeAnd.exit ] ; 2 uses
  %3 = load i32, ptr %i.a, align 8
  %4 = shl i32 %.sroa.04.0, 16
  %5 = and i32 %4, 16711680
  %6 = and i32 %3, -16711681
  %7 = or disjoint i32 %6, %5
  store i32 %7, ptr %i.a, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.d, %bb.b
  %.sroa.031.0 = phi i32 [ %i.g, %bb.b ], [ %i.n, %bb.d ], [ %.sroa.04.0, %bb.x ]
  ret i32 %.sroa.031.0
}

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind allocsize(1) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 short", !8, i64 0}
!10 = !{!"p1 omnipotent char", !8, i64 0}
!11 = !{!"any p2 pointer", !8, i64 0}
!12 = !{!"p2 omnipotent char", !11, i64 0}
!13 = !{!"p1 _ZTS10Vec_Ptr_t_", !8, i64 0}
!14 = !{!"p2 _ZTS11Rwt_Node_t_", !11, i64 0}
!15 = !{!"p1 _ZTS10Vec_Vec_t_", !8, i64 0}
!16 = !{!"p1 _ZTS12Mem_Fixed_t_", !8, i64 0}
!17 = !{!"p1 _ZTS10Vec_Int_t_", !8, i64 0}
!18 = !{!"long", !4, i64 0}
!19 = !{!"Rwt_Man_t_", !5, i64 0, !9, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !9, i64 40, !10, i64 48, !12, i64 56, !13, i64 64, !14, i64 72, !15, i64 80, !16, i64 88, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !8, i64 120, !8, i64 128, !10, i64 136, !13, i64 144, !13, i64 152, !17, i64 160, !13, i64 168, !5, i64 176, !5, i64 180, !5, i64 184, !4, i64 188, !5, i64 1076, !5, i64 1080, !5, i64 1084, !18, i64 1088, !18, i64 1096, !18, i64 1104, !18, i64 1112, !18, i64 1120, !18, i64 1128, !18, i64 1136, !18, i64 1144}
!20 = !{!"p1 _ZTS11Rwt_Node_t_", !8, i64 0}
!21 = !{!4, !4, i64 0}
!22 = !{!"Rwt_Node_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 10, !5, i64 11, !5, i64 11, !5, i64 11, !20, i64 16, !20, i64 24, !20, i64 32}
!23 = !{!"p1 _ZTS11Dec_Node_t_", !8, i64 0}
!24 = !{!"Dec_Edge_t_", !5, i64 0, !5, i64 0}
!25 = !{!"Dec_Graph_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !23, i64 16, !24, i64 24}
!26 = !{!25, !5, i64 8}
!27 = !{!25, !5, i64 12}
!28 = !{!25, !23, i64 16}
!29 = distinct !{!29, !40}
!30 = distinct !{!30, !40}
!31 = distinct !{!31, !40}
!32 = distinct !{!32, !40}
!33 = distinct !{!33, !40}
!34 = distinct !{!34, !40}
!35 = !{!19, !9, i64 40}
!36 = !{!"Vec_Vec_t_", !5, i64 0, !5, i64 4, !11, i64 8}
!37 = !{!36, !5, i64 0}
!38 = !{!36, !11, i64 8}
!39 = !{!8, !8, i64 0}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!36, !5, i64 4}
!42 = !{!19, !15, i64 80}
!43 = !{!19, !5, i64 0}
!44 = !{!19, !14, i64 72}
!45 = !{!20, !20, i64 0}
!46 = !{!19, !10, i64 32}
!47 = !{!"Vec_Ptr_t_", !5, i64 0, !5, i64 4, !11, i64 8}
!48 = !{!47, !5, i64 0}
!49 = !{!47, !11, i64 8}
!50 = !{!47, !5, i64 4}
!51 = !{!19, !9, i64 8}
!52 = !{!"short", !4, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!22, !20, i64 32}
!55 = !{!25, !5, i64 0}
!56 = !{!25, !5, i64 4}
!57 = !{!22, !5, i64 0}
!58 = !{!22, !5, i64 4}
!59 = !{!19, !5, i64 96}
!60 = !{!22, !20, i64 16}
!61 = !{!22, !20, i64 24}
end_hunk_0
