inline.NumInlined: 751
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 38
begin_hunk_0_@Abc_NtkAreaOpt2:.critedge.preheader
  %i.w = getelementptr inbounds [8 x i8], ptr %.val95.val.val, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !77
  %i.y = getelementptr i8, ptr %i.x, i64 20       ; 2 uses
  %.val79 = load i32, ptr %i.y, align 4           ; 2 uses
  %i.z = and i32 %.val79, 47
  %or.cond = icmp eq i32 %i.z, 7
  br i1 %or.cond, label %bb.a, label %.critedge

bb.a:                                             ; preds = %.lr.ph
  %i.aa = or disjoint i32 %.val79, 32
  store i32 %i.aa, ptr %i.y, align 4
  %.val89 = load ptr, ptr %i.r, align 8, !tbaa !117
  %.val90 = load ptr, ptr %i.s, align 8, !tbaa !118
  %i.ab = getelementptr i8, ptr %.val89, i64 32
  %.val89.val = load ptr, ptr %i.ab, align 8, !tbaa !74
  %.val90.val = load i32, ptr %.val90, align 4, !tbaa !12
  %i.ac = getelementptr i8, ptr %.val89.val, i64 8
  %.val89.val.val = load ptr, ptr %i.ac, align 8, !tbaa !76
  %i.ad = sext i32 %.val90.val to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %.val89.val.val, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !77
  %i.ag = icmp eq i32 %i.o, %i.n
  br i1 %i.ag, label %bb.b, label %Vec_PtrPush.exit

bb.b:                                             ; preds = %bb.a
  %i.ah = icmp slt i32 %i.n, 16
  br i1 %i.ah, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not9.i.i = icmp eq ptr %i.m, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.m, i64 noundef 128) #28
  br label %Vec_PtrPush.exit

bb.e:                                             ; preds = %bb.c
  %i.aj = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #29
  br label %Vec_PtrPush.exit

bb.f:                                             ; preds = %bb.b
  %i.ak = icmp samesign ult i32 %i.n, 1073741823
  %i.al = shl nuw nsw i32 %i.n, 1
  %spec.select.i = select i1 %i.ak, i32 %i.al, i32 2147483647 ; 6 uses
  %.not.i10.i = icmp samesign ult i32 %i.n, %spec.select.i
  br i1 %.not.i10.i, label %bb.g, label %Vec_PtrPush.exit

bb.g:                                             ; preds = %bb.f
  %.not9.i11.i = icmp eq ptr %i.m, null
  %i.am = zext nneg i32 %spec.select.i to i64
  %i.an = shl nuw nsw i64 %i.am, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = tail call ptr @realloc(ptr noundef nonnull %i.m, i64 noundef %i.an) #28
  br label %Vec_PtrPush.exit

bb.i:                                             ; preds = %bb.g
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.an) #29
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.e, %bb.d, %bb.i, %bb.h, %bb.a, %bb.f
  %i.aq = phi i32 [ %i.j, %bb.a ], [ %i.j, %bb.f ], [ 16, %bb.e ], [ 16, %bb.d ], [ %spec.select.i, %bb.h ], [ %spec.select.i, %bb.i ]
  %i.ar = phi ptr [ %i.l, %bb.a ], [ %i.l, %bb.f ], [ %i.aj, %bb.e ], [ %i.ai, %bb.d ], [ %i.ao, %bb.h ], [ %i.ap, %bb.i ] ; 3 uses
  %i.as = phi i32 [ %i.n, %bb.a ], [ %i.n, %bb.f ], [ 16, %bb.e ], [ 16, %bb.d ], [ %spec.select.i, %bb.h ], [ %spec.select.i, %bb.i ]
  %i.at = add nsw i32 %i.o, 1
  %i.au = sext i32 %i.o to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.au
  store ptr %i.af, ptr %i.av, align 8, !tbaa !77
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !41
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %Vec_PtrPush.exit
  %i.aw = phi i32 [ %i.j, %.lr.ph ], [ %i.aq, %Vec_PtrPush.exit ] ; 3 uses
  %i.ax = phi ptr [ %i.k, %.lr.ph ], [ %.pre, %Vec_PtrPush.exit ] ; 3 uses
  %i.ay = phi ptr [ %i.l, %.lr.ph ], [ %i.ar, %Vec_PtrPush.exit ] ; 3 uses
  %i.az = phi ptr [ %i.m, %.lr.ph ], [ %i.ar, %Vec_PtrPush.exit ]
  %i.ba = phi i32 [ %i.n, %.lr.ph ], [ %i.as, %Vec_PtrPush.exit ]
  %i.bb = phi i32 [ %i.o, %.lr.ph ], [ %i.at, %Vec_PtrPush.exit ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.ax, i64 64
  %.val87 = load ptr, ptr %i.bc, align 8, !tbaa !336 ; 2 uses
  %i.bd = getelementptr i8, ptr %.val87, i64 4
  %.val87.val = load i32, ptr %i.bd, align 4, !tbaa !75
  %i.be = sext i32 %.val87.val to i64
  %i.bf = icmp slt i64 %indvars.iv.next, %i.be
  br i1 %i.bf, label %.lr.ph, label %.critedge2.preheader, !llvm.loop !337

.critedge2..critedge4.preheader_crit_edge:        ; preds = %.critedge6
  %.pre159.a = load ptr, ptr %i.a, align 8, !tbaa !41
  br label %.critedge4.preheader

.critedge4.preheader:                             ; preds = %.critedge.preheader, %.critedge2..critedge4.preheader_crit_edge, %.critedge2.preheader
  %i.bg = phi ptr [ %storemerge118137, %.critedge2..critedge4.preheader_crit_edge ], [ %i.ay, %.critedge2.preheader ], [ %i.e, %.critedge.preheader ] ; 2 uses
  %i.bh = phi ptr [ %.pre159.a, %.critedge2..critedge4.preheader_crit_edge ], [ %i.ax, %.critedge2.preheader ], [ %i.b, %.critedge.preheader ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !74 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 4
  %.val139 = load i32, ptr %i.bk, align 4, !tbaa !75
  %i.bl = icmp sgt i32 %.val139, 0
  br i1 %i.bl, label %.lr.ph141, label %.critedge8

.lr.ph130:                                        ; preds = %.critedge2.preheader, %.critedge6
  %i.bm = phi i32 [ %i.dz, %.critedge6 ], [ %i.aw, %.critedge2.preheader ] ; 7 uses
  %i.bn = phi i32 [ %i.ea, %.critedge6 ], [ %i.aw, %.critedge2.preheader ] ; 12 uses
  %indvars.iv148 = phi i64 [ %indvars.iv.next149, %.critedge6 ], [ 0, %.critedge2.preheader ] ; 2 uses
  %storemerge118136.a = phi ptr [ %storemerge118137, %.critedge6 ], [ %i.ay, %.critedge2.preheader ] ; 9 uses
  %i.bo = phi i32 [ %i.eb, %.critedge6 ], [ %i.bb, %.critedge2.preheader ] ; 8 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %storemerge118136.a, i64 %indvars.iv148
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !77 ; 4 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 20
  %.val97 = load i32, ptr %i.br, align 4
  %i.bs = and i32 %.val97, 15
  %.not = icmp eq i32 %i.bs, 0
  br i1 %.not, label %.critedge6, label %bb.j

bb.j:                                             ; preds = %.lr.ph130
  %i.bt = getelementptr i8, ptr %i.bq, i64 16
  %.val85 = load i32, ptr %i.bt, align 8, !tbaa !122
  %i.bu = tail call ptr @Abc_NtkAreaOptOne(ptr noundef %0, i32 noundef %.val85) ; 6 uses
  %.not65 = icmp eq ptr %i.bu, null
  br i1 %.not65, label %._crit_edge, label %bb.k

._crit_edge:                                      ; preds = %bb.j
  %.phi.trans.insert = getelementptr i8, ptr %i.bq, i64 28
  %.062.val80124.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !114
  br label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr i8, ptr %i.bu, i64 20     ; 2 uses
  %.val78 = load i32, ptr %i.bv, align 4          ; 3 uses
  %i.bw = and i32 %.val78, 15
  %.not117 = icmp eq i32 %i.bw, 7
  br i1 %.not117, label %bb.l, label %.critedge6

bb.l:                                             ; preds = %bb.k
  %i.bx = getelementptr i8, ptr %i.bu, i64 28
  %.val81 = load i32, ptr %i.bx, align 4, !tbaa !114 ; 2 uses
  %i.by = icmp ne i32 %.val81, 0
  %i.bz = and i32 %.val78, 32
  %.not67 = icmp eq i32 %i.bz, 0
  %or.cond114 = and i1 %.not67, %i.by
  br i1 %or.cond114, label %bb.m, label %.critedge6

bb.m:                                             ; preds = %bb.l
  %i.ca = getelementptr i8, ptr %i.bu, i64 16
  %.val84 = load i32, ptr %i.ca, align 8, !tbaa !122
  %i.cb = icmp slt i32 %.val84, %.val86.val
  br i1 %i.cb, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.cc = or disjoint i32 %.val78, 32
  store i32 %i.cc, ptr %i.bv, align 4
  %i.cd = icmp eq i32 %i.bo, %i.bn
  br i1 %i.cd, label %bb.o, label %Vec_PtrPush.exit105

bb.o:                                             ; preds = %bb.n
  %i.ce = icmp slt i32 %i.bn, 16
  br i1 %i.ce, label %Vec_PtrPush.exit105.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = icmp samesign ult i32 %i.bn, 1073741823
  %i.cg = shl nuw nsw i32 %i.bn, 1
  %spec.select.i98 = select i1 %i.cf, i32 %i.cg, i32 2147483647 ; 3 uses
  %.not.i10.i99 = icmp samesign ult i32 %i.bn, %spec.select.i98
  br i1 %.not.i10.i99, label %bb.q, label %Vec_PtrPush.exit105

bb.q:                                             ; preds = %bb.p
  %i.ch = zext nneg i32 %spec.select.i98 to i64
  %i.ci = shl nuw nsw i64 %i.ch, 3
  br label %Vec_PtrPush.exit105.sink.split

Vec_PtrPush.exit105.sink.split:                   ; preds = %bb.o, %bb.q
  %.sink = phi i64 [ %i.ci, %bb.q ], [ 128, %bb.o ]
  %.ph = phi i32 [ %spec.select.i98, %bb.q ], [ 16, %bb.o ] ; 2 uses
  %i.cj = tail call ptr @realloc(ptr noundef nonnull %storemerge118136.a, i64 noundef %.sink) #28
  br label %Vec_PtrPush.exit105

Vec_PtrPush.exit105:                              ; preds = %Vec_PtrPush.exit105.sink.split, %bb.n, %bb.p
  %i.ck = phi i32 [ %i.bm, %bb.n ], [ %i.bm, %bb.p ], [ %.ph, %Vec_PtrPush.exit105.sink.split ]
  %i.cl = phi i32 [ %i.bn, %bb.n ], [ %i.bn, %bb.p ], [ %.ph, %Vec_PtrPush.exit105.sink.split ]
  %storemerge118138 = phi ptr [ %storemerge118136.a, %bb.n ], [ %storemerge118136.a, %bb.p ], [ %i.cj, %Vec_PtrPush.exit105.sink.split ] ; 2 uses
  %i.cm = add nuw nsw i32 %i.bo, 1
  %i.cn = zext nneg i32 %i.bo to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %storemerge118138, i64 %i.cn
  store ptr %i.bu, ptr %i.co, align 8, !tbaa !77
  br label %.critedge6

bb.r:                                             ; preds = %._crit_edge, %bb.m
  %.062.val80124 = phi i32 [ %.val81, %bb.m ], [ %.062.val80124.pre, %._crit_edge ] ; 2 uses
  %.062 = phi ptr [ %i.bu, %bb.m ], [ %i.bq, %._crit_edge ] ; 3 uses
  %i.cp = getelementptr i8, ptr %.062, i64 28
  %i.cq = icmp sgt i32 %.062.val80124, 0
  br i1 %i.cq, label %.lr.ph127, label %.critedge6

.lr.ph127:                                        ; preds = %bb.r
  %i.cr = getelementptr i8, ptr %.062, i64 32
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph127, %bb.ac
  %.062.val80157 = phi i32 [ %.062.val80124, %.lr.ph127 ], [ %.062.val80, %bb.ac ]
  %i.cs = phi i32 [ %i.bm, %.lr.ph127 ], [ %i.du, %bb.ac ] ; 8 uses
  %i.ct = phi i32 [ %i.bn, %.lr.ph127 ], [ %i.dv, %bb.ac ]
  %indvars.iv145 = phi i64 [ 0, %.lr.ph127 ], [ %indvars.iv.next146, %bb.ac ] ; 2 uses
  %storemerge118135 = phi ptr [ %storemerge118136.a, %.lr.ph127 ], [ %storemerge118133, %bb.ac ] ; 7 uses
  %i.cu = phi i32 [ %i.bo, %.lr.ph127 ], [ %i.dw, %bb.ac ] ; 4 uses
  %.062.val82 = load ptr, ptr %.062, align 8, !tbaa !117
  %.062.val83 = load ptr, ptr %i.cr, align 8, !tbaa !118
  %i.cv = getelementptr i8, ptr %.062.val82, i64 32
  %.062.val82.val = load ptr, ptr %i.cv, align 8, !tbaa !74
  %i.cw = getelementptr i8, ptr %.062.val82.val, i64 8
  %.062.val82.val.val = load ptr, ptr %i.cw, align 8, !tbaa !76
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.062.val83, i64 %indvars.iv145
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !12
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %.062.val82.val.val, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !77 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 20     ; 2 uses
  %.val77 = load i32, ptr %i.dc, align 4          ; 2 uses
  %i.dd = and i32 %.val77, 47
  %i.de = icmp eq i32 %i.dd, 7
  br i1 %i.de, label %bb.t, label %bb.ac

bb.t:                                             ; preds = %bb.s
  %i.df = or disjoint i32 %.val77, 32
  store i32 %i.df, ptr %i.dc, align 4
  %i.dg = icmp eq i32 %i.cu, %i.cs
  br i1 %i.dg, label %bb.u, label %Vec_PtrPush.exit113

bb.u:                                             ; preds = %bb.t
  %i.dh = icmp slt i32 %i.cs, 16
  br i1 %i.dh, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %.not9.i.i111 = icmp eq ptr %storemerge118135, null
  br i1 %.not9.i.i111, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.di = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge118135, i64 noundef 128) #28
  br label %Vec_PtrPush.exit113

bb.x:                                             ; preds = %bb.v
  %i.dj = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #29
  br label %Vec_PtrPush.exit113

bb.y:                                             ; preds = %bb.u
  %i.dk = icmp samesign ult i32 %i.cs, 1073741823
  %i.dl = shl nuw nsw i32 %i.cs, 1
  %spec.select.i106 = select i1 %i.dk, i32 %i.dl, i32 2147483647 ; 4 uses
  %.not.i10.i107 = icmp samesign ult i32 %i.cs, %spec.select.i106
  br i1 %.not.i10.i107, label %bb.z, label %Vec_PtrPush.exit113

bb.z:                                             ; preds = %bb.y
  %.not9.i11.i108 = icmp eq ptr %storemerge118135, null
  %i.dm = zext nneg i32 %spec.select.i106 to i64
  %i.dn = shl nuw nsw i64 %i.dm, 3                ; 2 uses
  br i1 %.not9.i11.i108, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.do = tail call ptr @realloc(ptr noundef nonnull %storemerge118135, i64 noundef %i.dn) #28
  br label %Vec_PtrPush.exit113

bb.ab:                                            ; preds = %bb.z
  %i.dp = tail call noalias ptr @malloc(i64 noundef %i.dn) #29
  br label %Vec_PtrPush.exit113

Vec_PtrPush.exit113:                              ; preds = %bb.x, %bb.w, %bb.ab, %bb.aa, %bb.t, %bb.y
  %i.dq = phi i32 [ %i.cs, %bb.t ], [ %i.cs, %bb.y ], [ 16, %bb.x ], [ 16, %bb.w ], [ %spec.select.i106, %bb.aa ], [ %spec.select.i106, %bb.ab ] ; 2 uses
  %storemerge118134 = phi ptr [ %storemerge118135, %bb.t ], [ %storemerge118135, %bb.y ], [ %i.dj, %bb.x ], [ %i.di, %bb.w ], [ %i.do, %bb.aa ], [ %i.dp, %bb.ab ] ; 2 uses
  %i.dr = add nuw nsw i32 %i.cu, 1
  %i.ds = zext nneg i32 %i.cu to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %storemerge118134, i64 %i.ds
  store ptr %i.db, ptr %i.dt, align 8, !tbaa !77
  %.062.val80.pre = load i32, ptr %i.cp, align 4, !tbaa !114
  br label %bb.ac

bb.ac:                                            ; preds = %bb.s, %Vec_PtrPush.exit113
  %.062.val80 = phi i32 [ %.062.val80157, %bb.s ], [ %.062.val80.pre, %Vec_PtrPush.exit113 ] ; 2 uses
  %i.du = phi i32 [ %i.cs, %bb.s ], [ %i.dq, %Vec_PtrPush.exit113 ] ; 2 uses
  %i.dv = phi i32 [ %i.ct, %bb.s ], [ %i.dq, %Vec_PtrPush.exit113 ] ; 2 uses
  %storemerge118133 = phi ptr [ %storemerge118135, %bb.s ], [ %storemerge118134, %Vec_PtrPush.exit113 ] ; 2 uses
  %i.dw = phi i32 [ %i.cu, %bb.s ], [ %i.dr, %Vec_PtrPush.exit113 ] ; 2 uses
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %i.dx = sext i32 %.062.val80 to i64
  %i.dy = icmp slt i64 %indvars.iv.next146, %i.dx
  br i1 %i.dy, label %bb.s, label %.critedge6, !llvm.loop !338

.critedge6:                                       ; preds = %bb.ac, %bb.r, %bb.k, %bb.l, %.lr.ph130, %Vec_PtrPush.exit105
  %i.dz = phi i32 [ %i.ck, %Vec_PtrPush.exit105 ], [ %i.bm, %bb.k ], [ %i.bm, %bb.l ], [ %i.bm, %.lr.ph130 ], [ %i.bm, %bb.r ], [ %i.du, %bb.ac ]
  %i.ea = phi i32 [ %i.cl, %Vec_PtrPush.exit105 ], [ %i.bn, %bb.k ], [ %i.bn, %bb.l ], [ %i.bn, %.lr.ph130 ], [ %i.bn, %bb.r ], [ %i.dv, %bb.ac ]
  %storemerge118137 = phi ptr [ %storemerge118138, %Vec_PtrPush.exit105 ], [ %storemerge118136.a, %bb.k ], [ %storemerge118136.a, %bb.l ], [ %storemerge118136.a, %.lr.ph130 ], [ %storemerge118136.a, %bb.r ], [ %storemerge118133, %bb.ac ] ; 2 uses
  %i.eb = phi i32 [ %i.cm, %Vec_PtrPush.exit105 ], [ %i.bo, %bb.k ], [ %i.bo, %bb.l ], [ %i.bo, %.lr.ph130 ], [ %i.bo, %bb.r ], [ %i.dw, %bb.ac ] ; 2 uses
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = icmp samesign ult i64 %indvars.iv.next149, %i.ec
  br i1 %i.ed, label %.lr.ph130, label %.critedge2..critedge4.preheader_crit_edge, !llvm.loop !339

.lr.ph141:                                        ; preds = %.critedge4.preheader, %.critedge4
  %i.ee = phi ptr [ %i.en, %.critedge4 ], [ %i.bh, %.critedge4.preheader ]
  %indvars.iv151 = phi i64 [ %indvars.iv.next152, %.critedge4 ], [ 0, %.critedge4.preheader ] ; 2 uses
  %i.ef = phi ptr [ %i.ep, %.critedge4 ], [ %i.bj, %.critedge4.preheader ]
  %i.eg = getelementptr i8, ptr %i.ef, i64 8
  %.val75.val = load ptr, ptr %i.eg, align 8, !tbaa !76
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.val75.val, i64 %indvars.iv151
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !77 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %.critedge4, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph141
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 20 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4
  %i.em = and i32 %i.el, -33
  store i32 %i.em, ptr %i.ek, align 4
  %.pre160 = load ptr, ptr %i.a, align 8, !tbaa !41
  br label %.critedge4

.critedge4:                                       ; preds = %bb.ad, %.lr.ph141
  %i.en = phi ptr [ %.pre160, %bb.ad ], [ %i.ee, %.lr.ph141 ] ; 2 uses
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !74 ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 4
  %.val = load i32, ptr %i.eq, align 4, !tbaa !75
  %i.er = sext i32 %.val to i64
  %i.es = icmp slt i64 %indvars.iv.next152, %i.er
  br i1 %i.es, label %.lr.ph141, label %.critedge8, !llvm.loop !340

.critedge8:                                       ; preds = %.critedge4, %.critedge4.preheader
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %Vec_PtrFree.exit, label %bb.ae

bb.ae:                                            ; preds = %.critedge8
  tail call void @free(ptr noundef nonnull %i.bg) #27
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %.critedge8, %bb.ae
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_NtkDelayOpt(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !40     ; 6 uses
  tail call void @Abc_NtkCleanMarkABC(ptr noundef %i.b) #27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !334
  %or.cond174243 = icmp sgt i32 %i.f, -1
  br i1 %or.cond174243, label %.critedge.lr.ph, label %.thread214

.critedge.lr.ph:                                  ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 984        ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 980        ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.z = getelementptr i8, ptr %0, i64 228        ; 3 uses
  %i.aa = getelementptr i8, ptr %0, i64 292       ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.ac = getelementptr i8, ptr %0, i64 296
  %i.ad = getelementptr i8, ptr %i.b, i64 32      ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1196 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.ap = getelementptr i8, ptr %0, i64 308
  %i.aq = getelementptr i8, ptr %0, i64 312
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1140 ; 2 uses
  %i.aw = getelementptr i8, ptr %0, i64 232
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1164 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1156 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1148 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %.pre = load i32, ptr %i.g, align 4, !tbaa !330
end_hunk_0
