Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ivyCutTrav?download=true
inline.NumInlined: 129
inline.NumDeleted: 42
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@Ivy_NodeComputeVolume2:bb.a
  %i.g = load i32, ptr %2, align 8, !tbaa !17
  %i.h = icmp eq i32 %i.f, %i.g
  br i1 %i.h, label %bb.b, label %Vec_PtrPush.exit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp slt i32 %i.f, 16
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.k, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.k, i64 noundef 128) #20
  br label %Vec_PtrGrow.exit.i

bb.e:                                             ; preds = %bb.c
  %i.m = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #21
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %bb.e, %bb.d
  %i.n = phi ptr [ %i.l, %bb.d ], [ %i.m, %bb.e ]
  store ptr %i.n, ptr %i.j, align 8, !tbaa !12
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.o = icmp samesign ult i32 %i.f, 1073741823
  %i.p = shl nuw nsw i32 %i.f, 1
  %spec.select.i = select i1 %i.o, i32 %i.p, i32 2147483647 ; 3 uses
  %.not.i10.i = icmp samesign ult i32 %i.f, %spec.select.i
  br i1 %.not.i10.i, label %bb.g, label %Vec_PtrPush.exit

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !12   ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.r, null
  %i.s = zext nneg i32 %spec.select.i to i64
  %i.t = shl nuw nsw i64 %i.s, 3                  ; 2 uses
  br i1 %.not9.i11.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call ptr @realloc(ptr noundef nonnull %i.r, i64 noundef %i.t) #20
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.t) #21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.w = phi ptr [ %i.u, %bb.h ], [ %i.v, %bb.i ]
  store ptr %i.w, ptr %i.q, align 8, !tbaa !12
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.j, %Vec_PtrGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.j ], [ 16, %Vec_PtrGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %2, align 8, !tbaa !17
  %.pre = load i32, ptr %i.a, align 4, !tbaa !8
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.a, %bb.f, %Vec_PtrGrow.exit12.sink.split.i
  %i.x = phi i32 [ %i.f, %bb.a ], [ %i.f, %bb.f ], [ %.pre, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 11 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !12
  %i.aa = add nsw i32 %i.x, 1
  store i32 %i.aa, ptr %i.a, align 4, !tbaa !8
  %i.ab = sext i32 %i.x to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ab
  store ptr %0, ptr %i.ac, align 8, !tbaa !13
  %i.ad = load i32, ptr %i.b, align 4, !tbaa !8   ; 7 uses
  %i.ae = load i32, ptr %3, align 8, !tbaa !17
  %i.af = icmp eq i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.k, label %Vec_PtrPush.exit71

bb.k:                                             ; preds = %Vec_PtrPush.exit
  %i.ag = icmp slt i32 %i.ad, 16
  br i1 %i.ag, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !12 ; 2 uses
  %.not9.i.i69 = icmp eq ptr %i.ai, null
  br i1 %.not9.i.i69, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.ai, i64 noundef 128) #20
  br label %Vec_PtrGrow.exit.i70

bb.n:                                             ; preds = %bb.l
  %i.ak = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #21
  br label %Vec_PtrGrow.exit.i70

Vec_PtrGrow.exit.i70:                             ; preds = %bb.n, %bb.m
  %i.al = phi ptr [ %i.aj, %bb.m ], [ %i.ak, %bb.n ]
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !12
  br label %Vec_PtrGrow.exit12.sink.split.i67

bb.o:                                             ; preds = %bb.k
  %i.am = icmp samesign ult i32 %i.ad, 1073741823
  %i.an = shl nuw nsw i32 %i.ad, 1
  %spec.select.i64 = select i1 %i.am, i32 %i.an, i32 2147483647 ; 3 uses
  %.not.i10.i65 = icmp samesign ult i32 %i.ad, %spec.select.i64
  br i1 %.not.i10.i65, label %bb.p, label %Vec_PtrPush.exit71

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !12 ; 2 uses
  %.not9.i11.i66 = icmp eq ptr %i.ap, null
  %i.aq = zext nneg i32 %spec.select.i64 to i64
  %i.ar = shl nuw nsw i64 %i.aq, 3                ; 2 uses
  br i1 %.not9.i11.i66, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = tail call ptr @realloc(ptr noundef nonnull %i.ap, i64 noundef %i.ar) #20
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.at = tail call noalias ptr @malloc(i64 noundef %i.ar) #21
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.au = phi ptr [ %i.as, %bb.q ], [ %i.at, %bb.r ]
  store ptr %i.au, ptr %i.ao, align 8, !tbaa !12
  br label %Vec_PtrGrow.exit12.sink.split.i67

Vec_PtrGrow.exit12.sink.split.i67:                ; preds = %bb.s, %Vec_PtrGrow.exit.i70
  %spec.select.sink.i68 = phi i32 [ %spec.select.i64, %bb.s ], [ 16, %Vec_PtrGrow.exit.i70 ]
  store i32 %spec.select.sink.i68, ptr %3, align 8, !tbaa !17
  %.pre115 = load i32, ptr %i.b, align 4, !tbaa !8
  br label %Vec_PtrPush.exit71

Vec_PtrPush.exit71:                               ; preds = %Vec_PtrPush.exit, %bb.o, %Vec_PtrGrow.exit12.sink.split.i67
  %i.av = phi i32 [ %i.ad, %Vec_PtrPush.exit ], [ %i.ad, %bb.o ], [ %.pre115, %Vec_PtrGrow.exit12.sink.split.i67 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 15 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !12
  %i.ay = add nsw i32 %i.av, 1                    ; 2 uses
  store i32 %i.ay, ptr %i.b, align 4, !tbaa !8
  %i.az = sext i32 %i.av to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.az
  store ptr %0, ptr %i.ba, align 8, !tbaa !13
  %i.bb = load i32, ptr %i.c, align 8
  %i.bc = lshr i32 %i.bb, 11
  br label %bb.t

bb.t:                                             ; preds = %bb.bg, %Vec_PtrPush.exit71
  %.val58 = phi i32 [ %i.ay, %Vec_PtrPush.exit71 ], [ %.val58116, %bb.bg ] ; 7 uses
  %.049 = phi i32 [ %i.bc, %Vec_PtrPush.exit71 ], [ %.150, %bb.bg ] ; 5 uses
  %i.bd = zext i32 %.val58 to i64                 ; 4 uses
  %i.be = icmp sgt i32 %.val58, 0
  br i1 %i.be, label %.lr.ph155.preheader, label %._crit_edge

.lr.ph155.preheader:                              ; preds = %bb.t
  %.val61 = load ptr, ptr %i.aw, align 8, !tbaa !12 ; 2 uses
  br label %.lr.ph155

bb.u:                                             ; preds = %.lr.ph155
  %i.bf = trunc nuw i64 %i.bh to i32
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph155, label %._crit_edge, !llvm.loop !65

.lr.ph155:                                        ; preds = %.lr.ph155.preheader, %bb.u
  %indvars.iv154 = phi i64 [ %i.bh, %bb.u ], [ %i.bd, %.lr.ph155.preheader ]
  %i.bh = add nsw i64 %indvars.iv154, -1          ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.val61, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !13 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = lshr i32 %i.bl, 11
  %i.bn = icmp eq i32 %i.bm, %.049
  br i1 %i.bn, label %.lr.ph157, label %bb.u, !llvm.loop !65

._crit_edge:                                      ; preds = %bb.u, %bb.t
  %i.bo = add nsw i32 %.049, -1                   ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %thread-pre-split, label %bb.bg

bb.v:                                             ; preds = %.lr.ph157
  %i.bq = trunc nuw i64 %i.bt to i32              ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph157, label %._crit_edge159, !llvm.loop !66

.lr.ph157:                                        ; preds = %.lr.ph155, %bb.v
  %i.bs = phi i32 [ %i.bq, %bb.v ], [ %.val58, %.lr.ph155 ]
  %indvars.iv.i156 = phi i64 [ %i.bt, %bb.v ], [ %i.bd, %.lr.ph155 ]
  %i.bt = add nsw i64 %indvars.iv.i156, -1        ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.val61, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !13
  %i.bw = icmp eq ptr %i.bv, %i.bj
  br i1 %i.bw, label %._crit_edge158, label %bb.v, !llvm.loop !66

._crit_edge158:                                   ; preds = %.lr.ph157
  br label %._crit_edge159, !llvm.loop !66

._crit_edge159:                                   ; preds = %bb.v, %._crit_edge158
  %.0.in.lcssa.i = phi i32 [ %i.bs, %._crit_edge158 ], [ 0, %bb.v ] ; 2 uses
  %i.bx = icmp slt i32 %.0.in.lcssa.i, %.val58
  br i1 %i.bx, label %.lr.ph.i, label %Vec_PtrRemove.exit

.lr.ph.i:                                         ; preds = %._crit_edge159
  %4 = zext i32 %.0.in.lcssa.i to i64             ; 4 uses
  %wide.trip.count.i = zext nneg i32 %.val58 to i64
  %i.by = sub nsw i64 %i.bd, %4
  %xtraiter = and i64 %i.by, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv18.i.prol = phi i64 [ %indvars.iv.next19.i.prol, %.prol.preheader ], [ %4, %.lr.ph.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.bz = load ptr, ptr %i.aw, align 8, !tbaa !12
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv18.i.prol ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !13
  %i.cc = getelementptr i8, ptr %i.ca, i64 -8
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !13
  %indvars.iv.next19.i.prol = add nuw nsw i64 %indvars.iv18.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !67

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv18.i.unr = phi i64 [ %4, %.lr.ph.i ], [ %indvars.iv.next19.i.prol, %.prol.preheader ]
  %i.cd = sub nsw i64 %4, %i.bd
  %i.ce = icmp ugt i64 %i.cd, -4
  br i1 %i.ce, label %Vec_PtrRemove.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i.3, %.lr.ph.i.new ], [ %indvars.iv18.i.unr, %.prol.loopexit ] ; 5 uses
  %i.cf = load ptr, ptr %i.aw, align 8, !tbaa !12
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv18.i ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !13
  %i.ci = getelementptr i8, ptr %i.cg, i64 -8
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !13
  %i.cj = load ptr, ptr %i.aw, align 8, !tbaa !12
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv18.i ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !13
  store ptr %i.cm, ptr %i.ck, align 8, !tbaa !13
  %i.cn = load ptr, ptr %i.aw, align 8, !tbaa !12
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv18.i ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !13
  %i.cr = getelementptr i8, ptr %i.co, i64 8
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !13
  %i.cs = load ptr, ptr %i.aw, align 8, !tbaa !12
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv18.i ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !13
  %i.cw = getelementptr i8, ptr %i.ct, i64 16
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !13
  %indvars.iv.next19.i.3 = add nuw nsw i64 %indvars.iv18.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next19.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %Vec_PtrRemove.exit, label %.lr.ph.i.new, !llvm.loop !68

Vec_PtrRemove.exit:                               ; preds = %.prol.loopexit, %.lr.ph.i.new, %._crit_edge159
  %i.cx = add nsw i32 %.val58, -1                 ; 2 uses
  store i32 %i.cx, ptr %i.b, align 4, !tbaa !8
  %i.cy = getelementptr i8, ptr %i.bj, i64 16
  %.051.val = load ptr, ptr %i.cy, align 8, !tbaa !14
  %i.cz = ptrtoint ptr %.051.val to i64
  %i.da = and i64 %i.cz, -2
  %i.db = inttoptr i64 %i.da to ptr               ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8            ; 2 uses
  %i.de = and i32 %i.dd, 16
  %.not = icmp eq i32 %i.de, 0
  br i1 %.not, label %bb.w, label %bb.an

bb.w:                                             ; preds = %Vec_PtrRemove.exit
  %i.df = or disjoint i32 %i.dd, 16
  store i32 %i.df, ptr %i.dc, align 8
  %i.dg = load i32, ptr %i.a, align 4, !tbaa !8   ; 7 uses
  %i.dh = load i32, ptr %2, align 8, !tbaa !17
  %i.di = icmp eq i32 %i.dg, %i.dh
  br i1 %i.di, label %bb.x, label %.Vec_PtrPush.exit79_crit_edge

.Vec_PtrPush.exit79_crit_edge:                    ; preds = %bb.w
  %.pre119 = load ptr, ptr %i.y, align 8, !tbaa !12
  br label %Vec_PtrPush.exit79

bb.x:                                             ; preds = %bb.w
  %i.dj = icmp slt i32 %i.dg, 16
  br i1 %i.dj, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.dk = load ptr, ptr %i.y, align 8, !tbaa !12  ; 2 uses
  %.not9.i.i77 = icmp eq ptr %i.dk, null
  br i1 %.not9.i.i77, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dl = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.dk, i64 noundef 128) #20
  br label %Vec_PtrGrow.exit12.sink.split.i75

bb.aa:                                            ; preds = %bb.y
  %i.dm = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #21
  br label %Vec_PtrGrow.exit12.sink.split.i75

bb.ab:                                            ; preds = %bb.x
  %i.dn = icmp samesign ult i32 %i.dg, 1073741823
  %i.do = shl nuw nsw i32 %i.dg, 1
  %spec.select.i72 = select i1 %i.dn, i32 %i.do, i32 2147483647 ; 4 uses
  %.not.i10.i73 = icmp samesign ult i32 %i.dg, %spec.select.i72
  %.pre120 = load ptr, ptr %i.y, align 8, !tbaa !12 ; 3 uses
  br i1 %.not.i10.i73, label %bb.ac, label %Vec_PtrPush.exit79

bb.ac:                                            ; preds = %bb.ab
  %.not9.i11.i74 = icmp eq ptr %.pre120, null
  %i.dp = zext nneg i32 %spec.select.i72 to i64
  %i.dq = shl nuw nsw i64 %i.dp, 3                ; 2 uses
  br i1 %.not9.i11.i74, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dr = tail call ptr @realloc(ptr noundef nonnull %.pre120, i64 noundef %i.dq) #20
  br label %Vec_PtrGrow.exit12.sink.split.i75

bb.ae:                                            ; preds = %bb.ac
  %i.ds = tail call noalias ptr @malloc(i64 noundef %i.dq) #21
  br label %Vec_PtrGrow.exit12.sink.split.i75

Vec_PtrGrow.exit12.sink.split.i75:                ; preds = %bb.ad, %bb.ae, %bb.z, %bb.aa
  %storemerge = phi ptr [ %i.dm, %bb.aa ], [ %i.dl, %bb.z ], [ %i.dr, %bb.ad ], [ %i.ds, %bb.ae ] ; 2 uses
  %spec.select.sink.i76 = phi i32 [ 16, %bb.aa ], [ 16, %bb.z ], [ %spec.select.i72, %bb.ad ], [ %spec.select.i72, %bb.ae ]
  store ptr %storemerge, ptr %i.y, align 8, !tbaa !12
  store i32 %spec.select.sink.i76, ptr %2, align 8, !tbaa !17
  %.pre121 = load i32, ptr %i.a, align 4, !tbaa !8
  br label %Vec_PtrPush.exit79

Vec_PtrPush.exit79:                               ; preds = %.Vec_PtrPush.exit79_crit_edge, %bb.ab, %Vec_PtrGrow.exit12.sink.split.i75
  %i.dt = phi i32 [ %i.dg, %.Vec_PtrPush.exit79_crit_edge ], [ %i.dg, %bb.ab ], [ %.pre121, %Vec_PtrGrow.exit12.sink.split.i75 ] ; 2 uses
  %i.du = phi ptr [ %.pre119, %.Vec_PtrPush.exit79_crit_edge ], [ %.pre120, %bb.ab ], [ %storemerge, %Vec_PtrGrow.exit12.sink.split.i75 ]
  %i.dv = add nsw i32 %i.dt, 1
  store i32 %i.dv, ptr %i.a, align 4, !tbaa !8
  %i.dw = sext i32 %i.dt to i64
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.dw
  store ptr %i.db, ptr %i.dx, align 8, !tbaa !13
  %i.dy = load i32, ptr %i.b, align 4, !tbaa !8   ; 7 uses
  %i.dz = load i32, ptr %3, align 8, !tbaa !17
  %i.ea = icmp eq i32 %i.dy, %i.dz
  br i1 %i.ea, label %bb.af, label %Vec_PtrPush.exit79.Vec_PtrPush.exit87_crit_edge

Vec_PtrPush.exit79.Vec_PtrPush.exit87_crit_edge:  ; preds = %Vec_PtrPush.exit79
  %.pre122 = load ptr, ptr %i.aw, align 8, !tbaa !12
  br label %Vec_PtrPush.exit87

bb.af:                                            ; preds = %Vec_PtrPush.exit79
  %i.eb = icmp slt i32 %i.dy, 16
  br i1 %i.eb, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.ec = load ptr, ptr %i.aw, align 8, !tbaa !12 ; 2 uses
  %.not9.i.i85 = icmp eq ptr %i.ec, null
  br i1 %.not9.i.i85, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ed = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.ec, i64 noundef 128) #20
  br label %Vec_PtrGrow.exit12.sink.split.i83

bb.ai:                                            ; preds = %bb.ag
  %i.ee = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #21
  br label %Vec_PtrGrow.exit12.sink.split.i83

bb.aj:                                            ; preds = %bb.af
  %i.ef = icmp samesign ult i32 %i.dy, 1073741823
  %i.eg = shl nuw nsw i32 %i.dy, 1
  %spec.select.i80 = select i1 %i.ef, i32 %i.eg, i32 2147483647 ; 4 uses
  %.not.i10.i81 = icmp samesign ult i32 %i.dy, %spec.select.i80
  %.pre123 = load ptr, ptr %i.aw, align 8, !tbaa !12 ; 3 uses
  br i1 %.not.i10.i81, label %bb.ak, label %Vec_PtrPush.exit87

bb.ak:                                            ; preds = %bb.aj
  %.not9.i11.i82 = icmp eq ptr %.pre123, null
  %i.eh = zext nneg i32 %spec.select.i80 to i64
  %i.ei = shl nuw nsw i64 %i.eh, 3                ; 2 uses
  br i1 %.not9.i11.i82, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ej = tail call ptr @realloc(ptr noundef nonnull %.pre123, i64 noundef %i.ei) #20
  br label %Vec_PtrGrow.exit12.sink.split.i83

bb.am:                                            ; preds = %bb.ak
  %i.ek = tail call noalias ptr @malloc(i64 noundef %i.ei) #21
  br label %Vec_PtrGrow.exit12.sink.split.i83

Vec_PtrGrow.exit12.sink.split.i83:                ; preds = %bb.al, %bb.am, %bb.ah, %bb.ai
  %storemerge105 = phi ptr [ %i.ee, %bb.ai ], [ %i.ed, %bb.ah ], [ %i.ej, %bb.al ], [ %i.ek, %bb.am ] ; 2 uses
  %spec.select.sink.i84 = phi i32 [ 16, %bb.ai ], [ 16, %bb.ah ], [ %spec.select.i80, %bb.al ], [ %spec.select.i80, %bb.am ]
  store ptr %storemerge105, ptr %i.aw, align 8, !tbaa !12
  store i32 %spec.select.sink.i84, ptr %3, align 8, !tbaa !17
  %.pre124 = load i32, ptr %i.b, align 4, !tbaa !8
  br label %Vec_PtrPush.exit87

Vec_PtrPush.exit87:                               ; preds = %Vec_PtrPush.exit79.Vec_PtrPush.exit87_crit_edge, %bb.aj, %Vec_PtrGrow.exit12.sink.split.i83
  %i.el = phi i32 [ %i.dy, %Vec_PtrPush.exit79.Vec_PtrPush.exit87_crit_edge ], [ %i.dy, %bb.aj ], [ %.pre124, %Vec_PtrGrow.exit12.sink.split.i83 ] ; 2 uses
  %i.em = phi ptr [ %.pre122, %Vec_PtrPush.exit79.Vec_PtrPush.exit87_crit_edge ], [ %.pre123, %bb.aj ], [ %storemerge105, %Vec_PtrGrow.exit12.sink.split.i83 ]
  %i.en = add nsw i32 %i.el, 1                    ; 2 uses
  store i32 %i.en, ptr %i.b, align 4, !tbaa !8
  %i.eo = sext i32 %i.el to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.eo
  store ptr %i.db, ptr %i.ep, align 8, !tbaa !13
  br label %bb.an

bb.an:                                            ; preds = %Vec_PtrPush.exit87, %Vec_PtrRemove.exit
  %.val58118 = phi i32 [ %i.en, %Vec_PtrPush.exit87 ], [ %i.cx, %Vec_PtrRemove.exit ] ; 2 uses
  %i.eq = getelementptr i8, ptr %i.bj, i64 24
  %.051.val56 = load ptr, ptr %i.eq, align 8, !tbaa !18
  %i.er = ptrtoint ptr %.051.val56 to i64
  %i.es = and i64 %i.er, -2                       ; 2 uses
  %i.et = inttoptr i64 %i.es to ptr               ; 3 uses
  %.not54 = icmp eq i64 %i.es, 0
  br i1 %.not54, label %bb.bg, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 8            ; 2 uses
  %i.ew = and i32 %i.ev, 16
  %.not55 = icmp eq i32 %i.ew, 0
  br i1 %.not55, label %bb.ap, label %bb.bg

bb.ap:                                            ; preds = %bb.ao
  %i.ex = or disjoint i32 %i.ev, 16
  store i32 %i.ex, ptr %i.eu, align 8
  %i.ey = load i32, ptr %i.a, align 4, !tbaa !8   ; 7 uses
  %i.ez = load i32, ptr %2, align 8, !tbaa !17
  %i.fa = icmp eq i32 %i.ey, %i.ez
  br i1 %i.fa, label %bb.aq, label %.Vec_PtrPush.exit95_crit_edge

.Vec_PtrPush.exit95_crit_edge:                    ; preds = %bb.ap
  %.pre125 = load ptr, ptr %i.y, align 8, !tbaa !12
  br label %Vec_PtrPush.exit95

bb.aq:                                            ; preds = %bb.ap
  %i.fb = icmp slt i32 %i.ey, 16
  br i1 %i.fb, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.fc = load ptr, ptr %i.y, align 8, !tbaa !12  ; 2 uses
  %.not9.i.i93 = icmp eq ptr %i.fc, null
  br i1 %.not9.i.i93, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fd = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.fc, i64 noundef 128) #20
  br label %Vec_PtrGrow.exit12.sink.split.i91

bb.at:                                            ; preds = %bb.ar
  %i.fe = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #21
  br label %Vec_PtrGrow.exit12.sink.split.i91

bb.au:                                            ; preds = %bb.aq
  %i.ff = icmp samesign ult i32 %i.ey, 1073741823
  %i.fg = shl nuw nsw i32 %i.ey, 1
  %spec.select.i88 = select i1 %i.ff, i32 %i.fg, i32 2147483647 ; 4 uses
end_hunk_0
