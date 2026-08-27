Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaMan?download=true
inline.NumInlined: 920
inline.NumDeleted: 112
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@Gia_GenPutOnTop:bb.a
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.ba) #28
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.m, %bb.n, %bb.i, %bb.j
  %storemerge102 = phi ptr [ %i.aw, %bb.j ], [ %i.av, %bb.i ], [ %i.bb, %bb.m ], [ %i.bc, %bb.n ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.j ], [ 16, %bb.i ], [ %spec.select.i, %bb.m ], [ %spec.select.i, %bb.n ] ; 2 uses
  store ptr %storemerge102, ptr %i.aj, align 8, !tbaa !34
  store i32 %spec.select.sink.i, ptr %i.ac, align 8, !tbaa !33
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.lr.ph115, %bb.k, %Vec_IntGrow.exit11.sink.split.i
  %i.bd = phi ptr [ %i.ap, %.lr.ph115 ], [ %i.ap, %bb.k ], [ %storemerge102, %Vec_IntGrow.exit11.sink.split.i ] ; 3 uses
  %i.be = phi i32 [ %i.aq, %.lr.ph115 ], [ %i.aq, %bb.k ], [ %spec.select.sink.i, %Vec_IntGrow.exit11.sink.split.i ]
  %i.bf = add nuw nsw i32 %i.ar, 1                ; 2 uses
  store i32 %i.bf, ptr %i.ae, align 4, !tbaa !32
  %i.bg = zext nneg i32 %i.ar to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bg
  store i32 %i.as, ptr %i.bh, align 4, !tbaa !102
  %i.bi = add nuw nsw i32 %.157114, 1             ; 2 uses
  %.val72 = load ptr, ptr %i.aa, align 8, !tbaa !35
  %i.bj = getelementptr i8, ptr %.val72, i64 4
  %.val72.val = load i32, ptr %i.bj, align 4, !tbaa !32
  %i.bk = icmp slt i32 %i.bi, %.val72.val
  br i1 %i.bk, label %.lr.ph115, label %.preheader105, !llvm.loop !317

.preheader.loopexit:                              ; preds = %._crit_edge125
  %.pre159.pre = load ptr, ptr %i.aj, align 8, !tbaa !34
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader105
  %.pre159 = phi ptr [ %.pre159.pre, %.preheader.loopexit ], [ %.pre159161, %.preheader105 ] ; 3 uses
  %.val67 = load i32, ptr %i.ae, align 4, !tbaa !32 ; 2 uses
  %i.bl = icmp sgt i32 %.val67, 0
  br i1 %i.bl, label %.lr.ph130, label %.critedge

.lr.ph130:                                        ; preds = %.preheader
  %wide.trip.count152 = zext nneg i32 %.val67 to i64
  br label %bb.ar

bb.o:                                             ; preds = %.lr.ph128, %._crit_edge125
  %indvars.iv144 = phi i64 [ 0, %.lr.ph128 ], [ %indvars.iv.next145, %._crit_edge125 ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv144
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !75 ; 2 uses
  %.val69.pr = load i32, ptr %i.ae, align 4, !tbaa !32 ; 3 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 64     ; 3 uses
  %.val71116 = load ptr, ptr %i.bo, align 8, !tbaa !35
  %i.bp = getelementptr i8, ptr %.val71116, i64 4
  %.val71.val117 = load i32, ptr %i.bp, align 4, !tbaa !32 ; 2 uses
  %i.bq = icmp slt i32 %.val69.pr, %.val71.val117
  br i1 %i.bq, label %.lr.ph121.preheader, label %.preheader104

.lr.ph121.preheader:                              ; preds = %bb.o
  %i.br = sext i32 %.val69.pr to i64
  br label %.lr.ph121

.preheader104.loopexit:                           ; preds = %Vec_IntPush.exit90
  %.promoted.pre = load i32, ptr %i.ae, align 4, !tbaa !32
  br label %.preheader104

.preheader104:                                    ; preds = %.preheader104.loopexit, %bb.o
  %.val70.val123 = phi i32 [ %.val71.val, %.preheader104.loopexit ], [ %.val71.val117, %bb.o ]
  %.promoted = phi i32 [ %.promoted.pre, %.preheader104.loopexit ], [ %.val69.pr, %bb.o ] ; 3 uses
  %i.bs = icmp sgt i32 %.promoted, %.val70.val123
  br i1 %i.bs, label %.lr.ph124, label %._crit_edge125

.lr.ph124:                                        ; preds = %.preheader104
  %i.bt = load ptr, ptr %i.aj, align 8, !tbaa !34
  %i.bu = sext i32 %.promoted to i64
  br label %bb.ag

.lr.ph121:                                        ; preds = %.lr.ph121.preheader, %Vec_IntPush.exit90
  %indvars.iv138 = phi i64 [ %i.br, %.lr.ph121.preheader ], [ %indvars.iv.next139, %Vec_IntPush.exit90 ] ; 7 uses
  %i.bv = tail call fastcc ptr @Gia_ManAppendObj(ptr noundef nonnull %i.y) ; 4 uses
  %i.bw = load i64, ptr %i.bv, align 4
  %i.bx = or i64 %i.bw, 2684354559                ; 2 uses
  store i64 %i.bx, ptr %i.bv, align 4
  %i.by = load ptr, ptr %i.al, align 8, !tbaa !35
  %i.bz = getelementptr i8, ptr %i.by, i64 4
  %.val.i = load i32, ptr %i.bz, align 4, !tbaa !32
  %i.ca = and i32 %.val.i, 536870911
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = shl nuw nsw i64 %i.cb, 32
  %i.cd = and i64 %i.bx, -2305843004918726657
  %i.ce = or disjoint i64 %i.cc, %i.cd
  store i64 %i.ce, ptr %i.bv, align 4
  %i.cf = load ptr, ptr %i.al, align 8, !tbaa !35 ; 6 uses
  %.val11.i = load ptr, ptr %i.am, align 8, !tbaa !30 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4 ; 3 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !32 ; 7 uses
  %i.ci = load i32, ptr %i.cf, align 8, !tbaa !33
  %i.cj = icmp eq i32 %i.ch, %i.ci
  br i1 %i.cj, label %bb.p, label %Gia_ManAppendCi.exit

bb.p:                                             ; preds = %.lr.ph121
  %i.ck = icmp slt i32 %i.ch, 16
  br i1 %i.ck, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !34 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not9.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.cm, i64 noundef 64) #31
  br label %Vec_IntGrow.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.co = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.s, %bb.r
  %i.cp = phi ptr [ %i.cn, %bb.r ], [ %i.co, %bb.s ]
  store ptr %i.cp, ptr %i.cl, align 8, !tbaa !34
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.t:                                             ; preds = %bb.p
  %i.cq = icmp samesign ult i32 %i.ch, 1073741823
  %i.cr = shl nuw nsw i32 %i.ch, 1
  %spec.select.i.i = select i1 %i.cq, i32 %i.cr, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.ch, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.u, label %Gia_ManAppendCi.exit

bb.u:                                             ; preds = %bb.t
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !34 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.ct, null
  %i.cu = zext nneg i32 %spec.select.i.i to i64
  %i.cv = shl nuw nsw i64 %i.cu, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cw = tail call ptr @realloc(ptr noundef nonnull %i.ct, i64 noundef %i.cv) #31
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.cx = tail call noalias ptr @malloc(i64 noundef %i.cv) #28
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cy = phi ptr [ %i.cw, %bb.v ], [ %i.cx, %bb.w ]
  store ptr %i.cy, ptr %i.cs, align 8, !tbaa !34
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.x, %Vec_IntGrow.exit.i.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.x ], [ 16, %Vec_IntGrow.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %i.cf, align 8, !tbaa !33
  %.pre.i = load i32, ptr %i.cg, align 4, !tbaa !32
  %.val10.pre.i = load ptr, ptr %i.am, align 8, !tbaa !30
  br label %Gia_ManAppendCi.exit

Gia_ManAppendCi.exit:                             ; preds = %.lr.ph121, %bb.t, %Vec_IntGrow.exit11.sink.split.i.i
  %.val10.i = phi ptr [ %.val11.i, %.lr.ph121 ], [ %.val11.i, %bb.t ], [ %.val10.pre.i, %Vec_IntGrow.exit11.sink.split.i.i ]
  %i.cz = phi i32 [ %i.ch, %.lr.ph121 ], [ %i.ch, %bb.t ], [ %.pre.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.da = ptrtoint ptr %i.bv to i64               ; 2 uses
  %i.db = ptrtoint ptr %.val11.i to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = sdiv exact i64 %i.dc, 12
  %i.de = trunc i64 %i.dd to i32
  %i.df = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !34
  %i.dh = add nsw i32 %i.cz, 1
  store i32 %i.dh, ptr %i.cg, align 4, !tbaa !32
  %i.di = sext i32 %i.cz to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.di
  store i32 %i.de, ptr %i.dj, align 4, !tbaa !102
  %i.dk = ptrtoint ptr %.val10.i to i64
  %i.dl = sub i64 %i.da, %i.dk
  %i.dm = sdiv exact i64 %i.dl, 12
  %i.dn = trunc i64 %i.dm to i32
  %i.do = shl i32 %i.dn, 1
  %i.dp = load i32, ptr %i.ac, align 8, !tbaa !33
  %i.dq = trunc nsw i64 %indvars.iv138 to i32
  %i.dr = icmp eq i32 %i.dp, %i.dq
  br i1 %i.dr, label %bb.y, label %Gia_ManAppendCi.exit.Vec_IntPush.exit90_crit_edge

Gia_ManAppendCi.exit.Vec_IntPush.exit90_crit_edge: ; preds = %Gia_ManAppendCi.exit
  %.pre154 = load ptr, ptr %i.aj, align 8, !tbaa !34
  br label %Vec_IntPush.exit90

bb.y:                                             ; preds = %Gia_ManAppendCi.exit
  %i.ds = icmp slt i64 %indvars.iv138, 16
  br i1 %i.ds, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.dt = load ptr, ptr %i.aj, align 8, !tbaa !34 ; 2 uses
  %.not9.i.i88 = icmp eq ptr %i.dt, null
  br i1 %.not9.i.i88, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.du = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.dt, i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i86

bb.ab:                                            ; preds = %bb.z
  %i.dv = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i86

bb.ac:                                            ; preds = %bb.y
  %i.dw = icmp samesign ult i64 %indvars.iv138, 1073741823
  %indvars.iv138.tr = trunc nuw nsw i64 %indvars.iv138 to i32
  %i.dx = shl nuw i32 %indvars.iv138.tr, 1
  %spec.select.i83 = select i1 %i.dw, i32 %i.dx, i32 2147483647 ; 4 uses
  %2 = sext i32 %spec.select.i83 to i64
  %.not.i9.i84 = icmp samesign ult i64 %indvars.iv138, %2
  %.pre155 = load ptr, ptr %i.aj, align 8, !tbaa !34 ; 3 uses
  br i1 %.not.i9.i84, label %bb.ad, label %Vec_IntPush.exit90

bb.ad:                                            ; preds = %bb.ac
  %.not9.i10.i85 = icmp eq ptr %.pre155, null
  %i.dy = zext nneg i32 %spec.select.i83 to i64
  %i.dz = shl nuw nsw i64 %i.dy, 2                ; 2 uses
  br i1 %.not9.i10.i85, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ea = tail call ptr @realloc(ptr noundef nonnull %.pre155, i64 noundef %i.dz) #31
  br label %Vec_IntGrow.exit11.sink.split.i86

bb.af:                                            ; preds = %bb.ad
  %i.eb = tail call noalias ptr @malloc(i64 noundef %i.dz) #28
  br label %Vec_IntGrow.exit11.sink.split.i86

Vec_IntGrow.exit11.sink.split.i86:                ; preds = %bb.ae, %bb.af, %bb.aa, %bb.ab
  %storemerge = phi ptr [ %i.dv, %bb.ab ], [ %i.du, %bb.aa ], [ %i.ea, %bb.ae ], [ %i.eb, %bb.af ] ; 2 uses
  %spec.select.sink.i87 = phi i32 [ 16, %bb.ab ], [ 16, %bb.aa ], [ %spec.select.i83, %bb.ae ], [ %spec.select.i83, %bb.af ]
  store ptr %storemerge, ptr %i.aj, align 8, !tbaa !34
  store i32 %spec.select.sink.i87, ptr %i.ac, align 8, !tbaa !33
  br label %Vec_IntPush.exit90

Vec_IntPush.exit90:                               ; preds = %Gia_ManAppendCi.exit.Vec_IntPush.exit90_crit_edge, %bb.ac, %Vec_IntGrow.exit11.sink.split.i86
  %i.ec = phi ptr [ %.pre154, %Gia_ManAppendCi.exit.Vec_IntPush.exit90_crit_edge ], [ %.pre155, %bb.ac ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i86 ]
  %indvars.iv.next139 = add nsw i64 %indvars.iv138, 1 ; 3 uses
  %i.ed = trunc nsw i64 %indvars.iv.next139 to i32
  store i32 %i.ed, ptr %i.ae, align 4, !tbaa !32
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %indvars.iv138
  store i32 %i.do, ptr %i.ee, align 4, !tbaa !102
  %.val71 = load ptr, ptr %i.bo, align 8, !tbaa !35
  %i.ef = getelementptr i8, ptr %.val71, i64 4
  %.val71.val = load i32, ptr %i.ef, align 4, !tbaa !32 ; 2 uses
  %i.eg = sext i32 %.val71.val to i64
  %i.eh = icmp slt i64 %indvars.iv.next139, %i.eg
  br i1 %i.eh, label %.lr.ph121, label %.preheader104.loopexit, !llvm.loop !318

bb.ag:                                            ; preds = %.lr.ph124, %Gia_ManAppendCo.exit
  %indvars.iv141 = phi i64 [ %i.bu, %.lr.ph124 ], [ %indvars.iv.next142, %Gia_ManAppendCo.exit ]
  %indvars.iv.next142 = add nsw i64 %indvars.iv141, -1 ; 4 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %indvars.iv.next142
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !102 ; 2 uses
  %i.ek = tail call fastcc ptr @Gia_ManAppendObj(ptr noundef nonnull %i.y) ; 8 uses
  %i.el = load i64, ptr %i.ek, align 4
  %i.em = or i64 %i.el, 2147483648                ; 2 uses
  store i64 %i.em, ptr %i.ek, align 4
  %.val20.i = load ptr, ptr %i.am, align 8, !tbaa !30
  %i.en = ptrtoint ptr %i.ek to i64               ; 2 uses
  %i.eo = ptrtoint ptr %.val20.i to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = sdiv exact i64 %i.ep, 12
  %i.er = trunc i64 %i.eq to i32
  %i.es = lshr i32 %i.ej, 1
  %i.et = sub i32 %i.er, %i.es
  %i.eu = and i32 %i.et, 536870911
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = and i64 %i.em, -1073741824
  %i.ex = shl i32 %i.ej, 29
  %i.ey = and i32 %i.ex, 536870912
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = or disjoint i64 %i.ew, %i.ez
  %i.fb = or disjoint i64 %i.fa, %i.ev            ; 2 uses
  store i64 %i.fb, ptr %i.ek, align 4
  %i.fc = load ptr, ptr %i.an, align 8, !tbaa !36
  %i.fd = getelementptr i8, ptr %i.fc, i64 4
  %.val.i91 = load i32, ptr %i.fd, align 4, !tbaa !32
  %i.fe = and i32 %.val.i91, 536870911
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = shl nuw nsw i64 %i.ff, 32
  %i.fh = and i64 %i.fb, -2305843004918726657
  %i.fi = or disjoint i64 %i.fh, %i.fg
  store i64 %i.fi, ptr %i.ek, align 4
  %i.fj = load ptr, ptr %i.an, align 8, !tbaa !36 ; 6 uses
  %.val19.i = load ptr, ptr %i.am, align 8, !tbaa !30
  %i.fk = ptrtoint ptr %.val19.i to i64
  %i.fl = sub i64 %i.en, %i.fk
  %i.fm = sdiv exact i64 %i.fl, 12
  %i.fn = trunc i64 %i.fm to i32
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 4 ; 3 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !32 ; 7 uses
  %i.fq = load i32, ptr %i.fj, align 8, !tbaa !33
  %i.fr = icmp eq i32 %i.fp, %i.fq
  br i1 %i.fr, label %bb.ah, label %Vec_IntPush.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.fs = icmp slt i32 %i.fp, 16
  br i1 %i.fs, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !34 ; 2 uses
  %.not9.i.i.i99 = icmp eq ptr %i.fu, null
  br i1 %.not9.i.i.i99, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fv = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.fu, i64 noundef 64) #31
  br label %Vec_IntGrow.exit.i.i100

bb.ak:                                            ; preds = %bb.ai
  %i.fw = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit.i.i100

Vec_IntGrow.exit.i.i100:                          ; preds = %bb.ak, %bb.aj
  %i.fx = phi ptr [ %i.fv, %bb.aj ], [ %i.fw, %bb.ak ]
  store ptr %i.fx, ptr %i.ft, align 8, !tbaa !34
  br label %Vec_IntGrow.exit11.sink.split.i.i96

bb.al:                                            ; preds = %bb.ah
  %i.fy = icmp samesign ult i32 %i.fp, 1073741823
  %i.fz = shl nuw nsw i32 %i.fp, 1
  %spec.select.i.i93 = select i1 %i.fy, i32 %i.fz, i32 2147483647 ; 3 uses
  %.not.i9.i.i94 = icmp samesign ult i32 %i.fp, %spec.select.i.i93
  br i1 %.not.i9.i.i94, label %bb.am, label %Vec_IntPush.exit.i

bb.am:                                            ; preds = %bb.al
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !34 ; 2 uses
  %.not9.i10.i.i95 = icmp eq ptr %i.gb, null
  %i.gc = zext nneg i32 %spec.select.i.i93 to i64
  %i.gd = shl nuw nsw i64 %i.gc, 2                ; 2 uses
  br i1 %.not9.i10.i.i95, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ge = tail call ptr @realloc(ptr noundef nonnull %i.gb, i64 noundef %i.gd) #31
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.gf = tail call noalias ptr @malloc(i64 noundef %i.gd) #28
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.gg = phi ptr [ %i.ge, %bb.an ], [ %i.gf, %bb.ao ]
  store ptr %i.gg, ptr %i.ga, align 8, !tbaa !34
  br label %Vec_IntGrow.exit11.sink.split.i.i96

Vec_IntGrow.exit11.sink.split.i.i96:              ; preds = %bb.ap, %Vec_IntGrow.exit.i.i100
  %spec.select.sink.i.i97 = phi i32 [ %spec.select.i.i93, %bb.ap ], [ 16, %Vec_IntGrow.exit.i.i100 ]
  store i32 %spec.select.sink.i.i97, ptr %i.fj, align 8, !tbaa !33
  %.pre.i98 = load i32, ptr %i.fo, align 4, !tbaa !32
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i96, %bb.al, %bb.ag
  %i.gh = phi i32 [ %i.fp, %bb.ag ], [ %i.fp, %bb.al ], [ %.pre.i98, %Vec_IntGrow.exit11.sink.split.i.i96 ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !34
  %i.gk = add nsw i32 %i.gh, 1
  store i32 %i.gk, ptr %i.fo, align 4, !tbaa !32
  %i.gl = sext i32 %i.gh to i64
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.gj, i64 %i.gl
  store i32 %i.fn, ptr %i.gm, align 4, !tbaa !102
  %i.gn = load ptr, ptr %i.ao, align 8, !tbaa !84
  %.not.i92 = icmp eq ptr %i.gn, null
  br i1 %.not.i92, label %Gia_ManAppendCo.exit, label %bb.aq

bb.aq:                                            ; preds = %Vec_IntPush.exit.i
  %i.go = load i64, ptr %i.ek, align 4
  %i.gp = and i64 %i.go, 536870911
  %i.gq = sub nsw i64 0, %i.gp
  %i.gr = getelementptr inbounds [12 x i8], ptr %i.ek, i64 %i.gq
  tail call void @Gia_ObjAddFanout(ptr noundef nonnull %i.y, ptr noundef nonnull %i.gr, ptr noundef nonnull %i.ek) #29
  br label %Gia_ManAppendCo.exit

Gia_ManAppendCo.exit:                             ; preds = %Vec_IntPush.exit.i, %bb.aq
  %.val70 = load ptr, ptr %i.bo, align 8, !tbaa !35
  %i.gs = getelementptr i8, ptr %.val70, i64 4
  %.val70.val = load i32, ptr %i.gs, align 4, !tbaa !32
  %i.gt = sext i32 %.val70.val to i64
  %i.gu = icmp sgt i64 %indvars.iv.next142, %i.gt
  br i1 %i.gu, label %bb.ag, label %._crit_edge125.loopexit, !llvm.loop !319

._crit_edge125.loopexit:                          ; preds = %Gia_ManAppendCo.exit
  %i.gv = trunc nsw i64 %indvars.iv.next142 to i32
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %._crit_edge125.loopexit, %.preheader104
  %.lcssa = phi i32 [ %.promoted, %.preheader104 ], [ %i.gv, %._crit_edge125.loopexit ]
  store i32 %.lcssa, ptr %i.ae, align 4
  tail call void @Gia_GenPutOnTopOne(ptr noundef nonnull %i.y, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.ac)
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %exitcond148.not = icmp eq i64 %indvars.iv.next145, %wide.trip.count147
  br i1 %exitcond148.not, label %.preheader.loopexit, label %bb.o, !llvm.loop !320

bb.ar:                                            ; preds = %.lr.ph130, %bb.ar
  %indvars.iv149 = phi i64 [ 0, %.lr.ph130 ], [ %indvars.iv.next150, %bb.ar ] ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.pre159, i64 %indvars.iv149
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !102
  tail call fastcc void @Gia_ManAppendCo(ptr noundef nonnull %i.y, i32 noundef %i.gx)
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond153.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count152
  br i1 %exitcond153.not, label %.critedge.thread, label %bb.ar, !llvm.loop !321

.critedge:                                        ; preds = %.preheader
  %.not.i101 = icmp eq ptr %.pre159, null
  br i1 %.not.i101, label %Vec_IntFree.exit, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.ar, %.critedge
  tail call void @free(ptr noundef nonnull %.pre159) #29
  br label %Vec_IntFree.exit
end_hunk_0
