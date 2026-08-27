Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaMulFind?download=true
inline.NumInlined: 669
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@Gia_ManMulFindXors:bb.a
  %i.be = load ptr, ptr %i.j, align 8, !tbaa !37  ; 2 uses
  %.not9.i.i.peel = icmp eq ptr %i.be, null
  br i1 %.not9.i.i.peel, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.be, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i.peel

bb.l:                                             ; preds = %bb.j
  %i.bg = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i.peel

Vec_IntGrow.exit11.sink.split.i.peel:             ; preds = %bb.l, %bb.k, %bb.i, %bb.h
  %storemerge.peel = phi ptr [ %i.bg, %bb.l ], [ %i.bf, %bb.k ], [ %i.bc, %bb.h ], [ %i.bd, %bb.i ] ; 2 uses
  %spec.select.sink.i.peel = phi i32 [ 16, %bb.l ], [ 16, %bb.k ], [ %spec.select.i.peel, %bb.h ], [ %spec.select.i.peel, %bb.i ]
  store ptr %storemerge.peel, ptr %i.j, align 8, !tbaa !37
  store i32 %spec.select.sink.i.peel, ptr %i.g, align 8, !tbaa !36
  br label %Vec_IntPush.exit.peel

Vec_IntPush.exit.peel:                            ; preds = %.Vec_IntPush.exit.peel_crit_edge, %Vec_IntGrow.exit11.sink.split.i.peel, %bb.f
  %i.bh = phi ptr [ %.pre, %.Vec_IntPush.exit.peel_crit_edge ], [ %storemerge.peel, %Vec_IntGrow.exit11.sink.split.i.peel ], [ %.pre130, %bb.f ]
  %i.bi = add nsw i32 %i.ah, 1                    ; 3 uses
  store i32 %i.bi, ptr %i.h, align 4, !tbaa !35
  %i.bj = sext i32 %i.ah to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bj
  store i32 %i.am, ptr %i.bk, align 4, !tbaa !31
  %.val57.peel.pre = load i32, ptr %i.aj, align 4, !tbaa !35
  br label %bb.m

bb.m:                                             ; preds = %Vec_IntPush.exit.peel, %.lr.ph
  %i.bl = phi i32 [ %i.bi, %Vec_IntPush.exit.peel ], [ %i.ag, %.lr.ph ] ; 2 uses
  %.val57.peel = phi i32 [ %.val57.peel.pre, %Vec_IntPush.exit.peel ], [ %.val57105, %.lr.ph ] ; 2 uses
  %i.bm = phi i32 [ %i.bi, %Vec_IntPush.exit.peel ], [ %i.ah, %.lr.ph ] ; 2 uses
  %i.bn = icmp sgt i32 %.val57.peel, 1
  br i1 %i.bn, label %.peel.next, label %.critedge4.loopexit

.peel.next:                                       ; preds = %bb.m, %bb.w
  %.val57134 = phi i32 [ %.val57, %bb.w ], [ %.val57.peel, %bb.m ]
  %i.bo = phi i32 [ %i.cq, %bb.w ], [ %i.bl, %bb.m ] ; 8 uses
  %i.bp = phi i32 [ %i.cr, %bb.w ], [ %i.bm, %bb.m ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.w ], [ 1, %bb.m ] ; 2 uses
  %.val60 = load ptr, ptr %i.al, align 8, !tbaa !37
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.val60, i64 %indvars.iv
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !31 ; 3 uses
  %i.bs = ashr i32 %i.br, 5
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %.val71171, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !31 ; 2 uses
  %i.bw = and i32 %i.br, 31
  %i.bx = shl nuw i32 1, %i.bw                    ; 2 uses
  %i.by = and i32 %i.bv, %i.bx
  %.not56 = icmp eq i32 %i.by, 0
  br i1 %.not56, label %bb.n, label %bb.w

bb.n:                                             ; preds = %.peel.next
  %i.bz = or i32 %i.bv, %i.bx
  store i32 %i.bz, ptr %i.bu, align 4, !tbaa !31
  %i.ca = load i32, ptr %i.g, align 8, !tbaa !36
  %i.cb = icmp eq i32 %i.bo, %i.ca
  br i1 %i.cb, label %bb.o, label %.Vec_IntPush.exit_crit_edge

.Vec_IntPush.exit_crit_edge:                      ; preds = %bb.n
  %.pre132 = load ptr, ptr %i.j, align 8, !tbaa !37
  br label %Vec_IntPush.exit

bb.o:                                             ; preds = %bb.n
  %i.cc = icmp slt i32 %i.bo, 16
  br i1 %i.cc, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.cd = load ptr, ptr %i.j, align 8, !tbaa !37  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.cd, null
  br i1 %.not9.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.cd, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.p
  %i.cf = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i

bb.s:                                             ; preds = %bb.o
  %i.cg = icmp samesign ult i32 %i.bo, 1073741823
  %i.ch = shl nuw nsw i32 %i.bo, 1
  %spec.select.i = select i1 %i.cg, i32 %i.ch, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.bo, %spec.select.i
  %.pre133 = load ptr, ptr %i.j, align 8, !tbaa !37 ; 3 uses
  br i1 %.not.i9.i, label %bb.t, label %Vec_IntPush.exit

bb.t:                                             ; preds = %bb.s
  %.not9.i10.i = icmp eq ptr %.pre133, null
  %i.ci = zext nneg i32 %spec.select.i to i64
  %i.cj = shl nuw nsw i64 %i.ci, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = tail call ptr @realloc(ptr noundef nonnull %.pre133, i64 noundef %i.cj) #23
  br label %Vec_IntGrow.exit11.sink.split.i

bb.v:                                             ; preds = %bb.t
  %i.cl = tail call noalias ptr @malloc(i64 noundef %i.cj) #24
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.u, %bb.v, %bb.q, %bb.r
  %storemerge = phi ptr [ %i.cf, %bb.r ], [ %i.ce, %bb.q ], [ %i.ck, %bb.u ], [ %i.cl, %bb.v ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.r ], [ 16, %bb.q ], [ %spec.select.i, %bb.u ], [ %spec.select.i, %bb.v ]
  store ptr %storemerge, ptr %i.j, align 8, !tbaa !37
  store i32 %spec.select.sink.i, ptr %i.g, align 8, !tbaa !36
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.Vec_IntPush.exit_crit_edge, %bb.s, %Vec_IntGrow.exit11.sink.split.i
  %i.cm = phi ptr [ %.pre132, %.Vec_IntPush.exit_crit_edge ], [ %.pre133, %bb.s ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ]
  %i.cn = add nsw i32 %i.bo, 1                    ; 3 uses
  store i32 %i.cn, ptr %i.h, align 4, !tbaa !35
  %i.co = sext i32 %i.bo to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.co
  store i32 %i.br, ptr %i.cp, align 4, !tbaa !31
  %.val57.pre = load i32, ptr %i.aj, align 4, !tbaa !35
  br label %bb.w

bb.w:                                             ; preds = %.peel.next, %Vec_IntPush.exit
  %.val57 = phi i32 [ %.val57134, %.peel.next ], [ %.val57.pre, %Vec_IntPush.exit ] ; 2 uses
  %i.cq = phi i32 [ %i.bo, %.peel.next ], [ %i.cn, %Vec_IntPush.exit ] ; 2 uses
  %i.cr = phi i32 [ %i.bp, %.peel.next ], [ %i.cn, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cs = sext i32 %.val57 to i64
  %i.ct = icmp slt i64 %indvars.iv.next, %i.cs
  br i1 %i.ct, label %.peel.next, label %.critedge4.loopexit, !llvm.loop !118

.critedge4.loopexit:                              ; preds = %bb.w, %bb.m
  %i.cu = phi i32 [ %i.bl, %bb.m ], [ %i.cq, %bb.w ]
  %i.cv = phi i32 [ %i.bm, %bb.m ], [ %i.cr, %bb.w ]
  %.pre136 = load i32, ptr %i.ab, align 4, !tbaa !31
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %.lr.ph108
  %i.cw = phi i32 [ %.pre136, %.critedge4.loopexit ], [ %i.af, %.lr.ph108 ] ; 2 uses
  %i.cx = phi i32 [ %i.cu, %.critedge4.loopexit ], [ %i.ag, %.lr.ph108 ]
  %i.cy = phi i32 [ %i.cv, %.critedge4.loopexit ], [ %i.ah, %.lr.ph108 ]
  %indvars.iv.next118 = add nsw i64 %indvars.iv117, 1 ; 2 uses
  %i.cz = sext i32 %i.cw to i64
  %i.da = icmp slt i64 %indvars.iv.next118, %i.cz
  br i1 %i.da, label %.lr.ph108, label %.critedge2.loopexit, !llvm.loop !120

.critedge2.loopexit:                              ; preds = %.critedge4
  %.pre137 = load i32, ptr %i.a, align 8, !tbaa !40
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %bb.c
  %i.db = phi i32 [ %.pre137, %.critedge2.loopexit ], [ %i.y, %bb.c ] ; 5 uses
  %i.dc = trunc nsw i64 %indvars.iv123 to i32
  %i.dd = icmp eq i32 %i.db, %i.dc
  br i1 %i.dd, label %bb.x, label %Vec_WecPushLevel.exit

bb.x:                                             ; preds = %.critedge2
  %i.de = icmp samesign ult i64 %indvars.iv123, 16
  %.not13.i.i = icmp eq ptr %.val8.pre.i77139, null ; 2 uses
  br i1 %i.de, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  br i1 %.not13.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.df = tail call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %.val8.pre.i77139, i64 noundef 256) #23
  br label %Vec_WecGrow.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.dg = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #24
  br label %Vec_WecGrow.exit.i

Vec_WecGrow.exit.i:                               ; preds = %bb.aa, %bb.z
  %i.dh = phi ptr [ %i.df, %bb.z ], [ %i.dg, %bb.aa ] ; 3 uses
  store ptr %i.dh, ptr %i.d, align 8, !tbaa !41
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %indvars.iv123
  %i.dj = sub nsw i32 16, %i.db
  %i.dk = sext i32 %i.dj to i64
  %i.dl = shl nsw i64 %i.dk, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.di, i8 0, i64 %i.dl, i1 false)
  br label %Vec_WecPushLevel.exit.thread

bb.ab:                                            ; preds = %bb.x
  %i.dm = shl nuw nsw i64 %indvars.iv123, 5       ; 2 uses
  br i1 %.not13.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dn = tail call ptr @realloc(ptr noundef nonnull %.val8.pre.i77139, i64 noundef %i.dm) #23
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.do = tail call noalias ptr @malloc(i64 noundef %i.dm) #24
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dp = phi ptr [ %i.dn, %bb.ac ], [ %i.do, %bb.ad ] ; 3 uses
  store ptr %i.dp, ptr %i.d, align 8, !tbaa !41
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %indvars.iv123
  %i.dr = shl nsw i64 %indvars.iv123, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dq, i8 0, i64 %i.dr, i1 false)
  %indvars.iv123.tr = trunc i64 %indvars.iv123 to i32
  %i.ds = shl i32 %indvars.iv123.tr, 1
  br label %Vec_WecPushLevel.exit.thread

Vec_WecPushLevel.exit.thread:                     ; preds = %Vec_WecGrow.exit.i, %bb.ae
  %.sink = phi i32 [ 16, %Vec_WecGrow.exit.i ], [ %i.ds, %bb.ae ] ; 2 uses
  %.ph = phi ptr [ %i.dh, %Vec_WecGrow.exit.i ], [ %i.dp, %bb.ae ] ; 2 uses
  store i32 %.sink, ptr %i.a, align 8, !tbaa !40
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %.ph, i64 %indvars.iv123 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  br label %Vec_WecPushLevel.exit84

Vec_WecPushLevel.exit:                            ; preds = %.critedge2
  %i.dv = or disjoint i64 %indvars.iv123, 1       ; 7 uses
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %.val8.pre.i77139, i64 %i.dv ; 4 uses
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -16 ; 3 uses
  %i.dy = trunc nsw i64 %i.dv to i32
  %i.dz = icmp eq i32 %i.db, %i.dy
  br i1 %i.dz, label %bb.af, label %Vec_WecPushLevel.exit84

bb.af:                                            ; preds = %Vec_WecPushLevel.exit
  %i.ea = icmp samesign ult i64 %indvars.iv123, 15
  %.not13.i.i81 = icmp eq ptr %.val8.pre.i77139, null ; 2 uses
  br i1 %i.ea, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  br i1 %.not13.i.i81, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eb = tail call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %.val8.pre.i77139, i64 noundef 256) #23
  br label %Vec_WecGrow.exit.i83

bb.ai:                                            ; preds = %bb.ag
  %i.ec = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #24
  br label %Vec_WecGrow.exit.i83

Vec_WecGrow.exit.i83:                             ; preds = %bb.ai, %bb.ah
  %i.ed = phi ptr [ %i.eb, %bb.ah ], [ %i.ec, %bb.ai ] ; 3 uses
  store ptr %i.ed, ptr %i.d, align 8, !tbaa !41
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.ed, i64 %i.dv
  %i.ef = sub nsw i32 16, %i.db
  %i.eg = sext i32 %i.ef to i64
  %i.eh = shl nsw i64 %i.eg, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ee, i8 0, i64 %i.eh, i1 false)
  store i32 16, ptr %i.a, align 8, !tbaa !40
  br label %Vec_WecPushLevel.exit84

bb.aj:                                            ; preds = %bb.af
  %i.ei = shl nuw nsw i64 %i.dv, 5                ; 2 uses
  br i1 %.not13.i.i81, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ej = tail call ptr @realloc(ptr noundef nonnull %.val8.pre.i77139, i64 noundef %i.ei) #23
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.ek = tail call noalias ptr @malloc(i64 noundef %i.ei) #24
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.el = phi ptr [ %i.ej, %bb.ak ], [ %i.ek, %bb.al ] ; 3 uses
  store ptr %i.el, ptr %i.d, align 8, !tbaa !41
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %i.dv
  %i.en = shl nsw i64 %i.dv, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.em, i8 0, i64 %i.en, i1 false)
  %.tr = trunc i64 %i.dv to i32
  %i.eo = shl i32 %.tr, 1                         ; 2 uses
  store i32 %i.eo, ptr %i.a, align 8, !tbaa !40
  br label %Vec_WecPushLevel.exit84

Vec_WecPushLevel.exit84:                          ; preds = %Vec_WecPushLevel.exit, %Vec_WecPushLevel.exit.thread, %Vec_WecGrow.exit.i83, %bb.am
  %i.ep = phi ptr [ %i.dx, %Vec_WecGrow.exit.i83 ], [ %i.dx, %bb.am ], [ %i.dt, %Vec_WecPushLevel.exit.thread ], [ %i.dx, %Vec_WecPushLevel.exit ] ; 2 uses
  %i.eq = phi ptr [ %i.dw, %Vec_WecGrow.exit.i83 ], [ %i.dw, %bb.am ], [ %i.du, %Vec_WecPushLevel.exit.thread ], [ %i.dw, %Vec_WecPushLevel.exit ] ; 2 uses
  %.val8.pre.i77140 = phi ptr [ %i.ed, %Vec_WecGrow.exit.i83 ], [ %i.el, %bb.am ], [ %.ph, %Vec_WecPushLevel.exit.thread ], [ %.val8.pre.i77139, %Vec_WecPushLevel.exit ] ; 2 uses
  %i.er = phi i32 [ 16, %Vec_WecGrow.exit.i83 ], [ %i.eo, %bb.am ], [ %.sink, %Vec_WecPushLevel.exit.thread ], [ %i.db, %Vec_WecPushLevel.exit ]
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 2 ; 3 uses
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %.val8.pre.i77140, i64 %indvars.iv.next124 ; 3 uses
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 -16 ; 2 uses
  %.val109 = load i32, ptr %i.h, align 4, !tbaa !35
  %i.eu = icmp sgt i32 %.val109, 0
  br i1 %i.eu, label %.lr.ph111, label %.critedge6

.lr.ph111:                                        ; preds = %Vec_WecPushLevel.exit84
  %i.ev = getelementptr inbounds i8, ptr %i.eq, i64 -12 ; 3 uses
  %i.ew = getelementptr inbounds i8, ptr %i.eq, i64 -8 ; 4 uses
  %i.ex = getelementptr inbounds i8, ptr %i.es, i64 -12 ; 3 uses
  %i.ey = getelementptr inbounds i8, ptr %i.es, i64 -8 ; 4 uses
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph111, %bb.bj
  %indvars.iv120 = phi i64 [ 0, %.lr.ph111 ], [ %indvars.iv.next121, %bb.bj ] ; 2 uses
  %.val59 = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.val59, i64 %indvars.iv120
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !31 ; 4 uses
  %i.fb = ashr i32 %i.fa, 5
  %i.fc = sext i32 %i.fb to i64                   ; 4 uses
  %i.fd = getelementptr inbounds [4 x i8], ptr %.val71171, i64 %i.fc ; 4 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !31 ; 3 uses
  %i.ff = and i32 %i.fa, 31
  %i.fg = shl nuw i32 1, %i.ff                    ; 5 uses
  %i.fh = and i32 %i.fg, %i.fe
  %.not = icmp eq i32 %i.fh, 0
  br i1 %.not, label %bb.ay, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fi = getelementptr inbounds [4 x i8], ptr %.val71.peel, i64 %i.fc
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !31
  %i.fk = and i32 %i.fj, %i.fg
  %.not53 = icmp eq i32 %i.fk, 0
  br i1 %.not53, label %bb.ap, label %bb.ay

bb.ap:                                            ; preds = %bb.ao
  %i.fl = load i32, ptr %i.ev, align 4, !tbaa !35 ; 7 uses
  %i.fm = load i32, ptr %i.ep, align 8, !tbaa !36
  %i.fn = icmp eq i32 %i.fl, %i.fm
  br i1 %i.fn, label %bb.aq, label %.Vec_IntPush.exit92_crit_edge

.Vec_IntPush.exit92_crit_edge:                    ; preds = %bb.ap
  %.pre142 = load ptr, ptr %i.ew, align 8, !tbaa !37
  br label %Vec_IntPush.exit92

bb.aq:                                            ; preds = %bb.ap
  %i.fo = icmp slt i32 %i.fl, 16
  br i1 %i.fo, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.fp = load ptr, ptr %i.ew, align 8, !tbaa !37 ; 2 uses
  %.not9.i.i90 = icmp eq ptr %i.fp, null
  br i1 %.not9.i.i90, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fq = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.fp, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i88

bb.at:                                            ; preds = %bb.ar
  %i.fr = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i88

bb.au:                                            ; preds = %bb.aq
  %i.fs = icmp samesign ult i32 %i.fl, 1073741823
  %i.ft = shl nuw nsw i32 %i.fl, 1
  %spec.select.i85 = select i1 %i.fs, i32 %i.ft, i32 2147483647 ; 4 uses
  %.not.i9.i86 = icmp samesign ult i32 %i.fl, %spec.select.i85
  %.pre143 = load ptr, ptr %i.ew, align 8, !tbaa !37 ; 3 uses
  br i1 %.not.i9.i86, label %bb.av, label %Vec_IntPush.exit92

bb.av:                                            ; preds = %bb.au
  %.not9.i10.i87 = icmp eq ptr %.pre143, null
  %i.fu = zext nneg i32 %spec.select.i85 to i64
  %i.fv = shl nuw nsw i64 %i.fu, 2                ; 2 uses
  br i1 %.not9.i10.i87, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fw = tail call ptr @realloc(ptr noundef nonnull %.pre143, i64 noundef %i.fv) #23
  br label %Vec_IntGrow.exit11.sink.split.i88

bb.ax:                                            ; preds = %bb.av
  %i.fx = tail call noalias ptr @malloc(i64 noundef %i.fv) #24
  br label %Vec_IntGrow.exit11.sink.split.i88

Vec_IntGrow.exit11.sink.split.i88:                ; preds = %bb.aw, %bb.ax, %bb.as, %bb.at
  %i.fy = phi ptr [ %i.fr, %bb.at ], [ %i.fq, %bb.as ], [ %i.fw, %bb.aw ], [ %i.fx, %bb.ax ] ; 2 uses
  %spec.select.sink.i89 = phi i32 [ 16, %bb.at ], [ 16, %bb.as ], [ %spec.select.i85, %bb.aw ], [ %spec.select.i85, %bb.ax ]
  store ptr %i.fy, ptr %i.ew, align 8, !tbaa !37
  store i32 %spec.select.sink.i89, ptr %i.ep, align 8, !tbaa !36
  %.pre144 = load i32, ptr %i.ev, align 4, !tbaa !35
  br label %Vec_IntPush.exit92

Vec_IntPush.exit92:                               ; preds = %.Vec_IntPush.exit92_crit_edge, %bb.au, %Vec_IntGrow.exit11.sink.split.i88
  %i.fz = phi i32 [ %i.fl, %.Vec_IntPush.exit92_crit_edge ], [ %i.fl, %bb.au ], [ %.pre144, %Vec_IntGrow.exit11.sink.split.i88 ] ; 2 uses
  %i.ga = phi ptr [ %.pre142, %.Vec_IntPush.exit92_crit_edge ], [ %.pre143, %bb.au ], [ %i.fy, %Vec_IntGrow.exit11.sink.split.i88 ]
  %i.gb = add nsw i32 %i.fz, 1
  store i32 %i.gb, ptr %i.ev, align 4, !tbaa !35
  %i.gc = sext i32 %i.fz to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.gc
  store i32 %i.fa, ptr %i.gd, align 4, !tbaa !31
  %.pre145 = load i32, ptr %i.fd, align 4, !tbaa !31
  br label %bb.ay

bb.ay:                                            ; preds = %Vec_IntPush.exit92, %bb.ao, %bb.an
  %i.ge = phi i32 [ %.pre145, %Vec_IntPush.exit92 ], [ %i.fe, %bb.ao ], [ %i.fe, %bb.an ] ; 3 uses
  %i.gf = and i32 %i.ge, %i.fg
  %.not54 = icmp eq i32 %i.gf, 0
  br i1 %.not54, label %bb.az, label %bb.bj

bb.az:                                            ; preds = %bb.ay
  %i.gg = getelementptr inbounds [4 x i8], ptr %.val71.peel, i64 %i.fc
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !31
  %i.gi = and i32 %i.gh, %i.fg
  %.not55 = icmp eq i32 %i.gi, 0
  br i1 %.not55, label %bb.bj, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gj = load i32, ptr %i.ex, align 4, !tbaa !35 ; 7 uses
  %i.gk = load i32, ptr %i.et, align 8, !tbaa !36
  %i.gl = icmp eq i32 %i.gj, %i.gk
  br i1 %i.gl, label %bb.bb, label %.Vec_IntPush.exit100_crit_edge

.Vec_IntPush.exit100_crit_edge:                   ; preds = %bb.ba
  %.pre146 = load ptr, ptr %i.ey, align 8, !tbaa !37
  br label %Vec_IntPush.exit100

bb.bb:                                            ; preds = %bb.ba
  %i.gm = icmp slt i32 %i.gj, 16
  br i1 %i.gm, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.gn = load ptr, ptr %i.ey, align 8, !tbaa !37 ; 2 uses
  %.not9.i.i98 = icmp eq ptr %i.gn, null
  br i1 %.not9.i.i98, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.go = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.gn, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i96

bb.be:                                            ; preds = %bb.bc
  %i.gp = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i96

bb.bf:                                            ; preds = %bb.bb
  %i.gq = icmp samesign ult i32 %i.gj, 1073741823
  %i.gr = shl nuw nsw i32 %i.gj, 1
  %spec.select.i93 = select i1 %i.gq, i32 %i.gr, i32 2147483647 ; 4 uses
  %.not.i9.i94 = icmp samesign ult i32 %i.gj, %spec.select.i93
  %.pre147 = load ptr, ptr %i.ey, align 8, !tbaa !37 ; 3 uses
  br i1 %.not.i9.i94, label %bb.bg, label %Vec_IntPush.exit100

bb.bg:                                            ; preds = %bb.bf
  %.not9.i10.i95 = icmp eq ptr %.pre147, null
  %i.gs = zext nneg i32 %spec.select.i93 to i64
  %i.gt = shl nuw nsw i64 %i.gs, 2                ; 2 uses
  br i1 %.not9.i10.i95, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gu = tail call ptr @realloc(ptr noundef nonnull %.pre147, i64 noundef %i.gt) #23
  br label %Vec_IntGrow.exit11.sink.split.i96

bb.bi:                                            ; preds = %bb.bg
  %i.gv = tail call noalias ptr @malloc(i64 noundef %i.gt) #24
  br label %Vec_IntGrow.exit11.sink.split.i96

Vec_IntGrow.exit11.sink.split.i96:                ; preds = %bb.bh, %bb.bi, %bb.bd, %bb.be
  %i.gw = phi ptr [ %i.gp, %bb.be ], [ %i.go, %bb.bd ], [ %i.gu, %bb.bh ], [ %i.gv, %bb.bi ] ; 2 uses
  %spec.select.sink.i97 = phi i32 [ 16, %bb.be ], [ 16, %bb.bd ], [ %spec.select.i93, %bb.bh ], [ %spec.select.i93, %bb.bi ]
  store ptr %i.gw, ptr %i.ey, align 8, !tbaa !37
  store i32 %spec.select.sink.i97, ptr %i.et, align 8, !tbaa !36
  %.pre148 = load i32, ptr %i.ex, align 4, !tbaa !35
  br label %Vec_IntPush.exit100

Vec_IntPush.exit100:                              ; preds = %.Vec_IntPush.exit100_crit_edge, %bb.bf, %Vec_IntGrow.exit11.sink.split.i96
  %i.gx = phi i32 [ %i.gj, %.Vec_IntPush.exit100_crit_edge ], [ %i.gj, %bb.bf ], [ %.pre148, %Vec_IntGrow.exit11.sink.split.i96 ] ; 2 uses
  %i.gy = phi ptr [ %.pre146, %.Vec_IntPush.exit100_crit_edge ], [ %.pre147, %bb.bf ], [ %i.gw, %Vec_IntGrow.exit11.sink.split.i96 ]
  %i.gz = add nsw i32 %i.gx, 1
  store i32 %i.gz, ptr %i.ex, align 4, !tbaa !35
  %i.ha = sext i32 %i.gx to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.ha
  store i32 %i.fa, ptr %i.hb, align 4, !tbaa !31
  %.pre149 = load i32, ptr %i.fd, align 4, !tbaa !31
  br label %bb.bj

bb.bj:                                            ; preds = %Vec_IntPush.exit100, %bb.az, %bb.ay
  %i.hc = phi i32 [ %.pre149, %Vec_IntPush.exit100 ], [ %i.ge, %bb.az ], [ %i.ge, %bb.ay ]
  %i.hd = xor i32 %i.fg, -1                       ; 2 uses
  %i.he = and i32 %i.hc, %i.hd
  store i32 %i.he, ptr %i.fd, align 4, !tbaa !31
  %i.hf = getelementptr inbounds [4 x i8], ptr %.val71.peel, i64 %i.fc ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !31
end_hunk_0
begin_hunk_1_@Gia_ManMulFindXors:bb.a
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %.val = load i32, ptr %i.h, align 4, !tbaa !35
  %i.hi = sext i32 %.val to i64
  %i.hj = icmp slt i64 %indvars.iv.next121, %i.hi
  br i1 %i.hj, label %bb.an, label %.critedge6, !llvm.loop !121

.critedge6:                                       ; preds = %bb.bj, %Vec_WecPushLevel.exit84
  store i32 0, ptr %i.h, align 4, !tbaa !35
  %.val58 = load i32, ptr %i.u, align 4, !tbaa !35
  %i.hk = add nsw i32 %.val58, -1
  %i.hl = sext i32 %i.hk to i64
  %i.hm = icmp slt i64 %indvars.iv.next126, %i.hl
  br i1 %i.hm, label %bb.c, label %..critedge_crit_edge, !llvm.loop !122

..critedge_crit_edge:                             ; preds = %.critedge6
  %i.hn = trunc nsw i64 %indvars.iv.next124 to i32
  store i32 %i.hn, ptr %i.b, align 4, !tbaa !38
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %Vec_BitStart.exit74
  ret ptr %i.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Gia_ManFindMulDetectOrder(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = sub nsw i32 %2, %1                       ; 6 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 6 uses
  %i.c = add i32 %i.a, -1
  %or.cond.i = icmp ult i32 %i.c, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.a ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  store i32 0, ptr %i.d, align 4, !tbaa !35
  store i32 %spec.store.select.i, ptr %i.b, align 8, !tbaa !36
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %spec.store.select.i to i64
  %i.f = shl nsw i64 %i.e, 2
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #24
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !37
  %i.j = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 6 uses
  %i.k = add i32 %2, -1
  %or.cond.i.i = icmp ult i32 %i.k, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %2 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.j, align 8, !tbaa !36
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %Vec_IntAlloc.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr null, ptr %i.m, align 8, !tbaa !37
  store i32 %2, ptr %i.l, align 4, !tbaa !35
  br label %Vec_IntStart.exit

Vec_IntAlloc.exit.i:                              ; preds = %Vec_IntAlloc.exit
  %i.n = sext i32 %spec.store.select.i.i to i64
  %i.o = shl nsw i64 %i.n, 2
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #24 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !37
  store i32 %2, ptr %i.l, align 4, !tbaa !35
  %.not.i61 = icmp eq ptr %i.p, null
  br i1 %.not.i61, label %Vec_IntStart.exit, label %bb.c

bb.c:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.r = sext i32 %2 to i64
  %i.s = shl nsw i64 %i.r, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.p, i8 0, i64 %i.s, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.c
  %.val58 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.p, %bb.c ] ; 4 uses
  %i.t = icmp slt i32 %1, %2
  br i1 %i.t, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %Vec_IntStart.exit
  %i.u = getelementptr i8, ptr %0, i64 8
  %.val57 = load ptr, ptr %i.u, align 8, !tbaa !41 ; 5 uses
  %i.v = sext i32 %1 to i64                       ; 4 uses
  %wide.trip.count = sext i32 %2 to i64           ; 2 uses
  %i.w = sub nsw i64 %wide.trip.count, %i.v       ; 3 uses
  %min.iters.check = icmp ult i64 %i.w, 13
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.x = and i64 %i.w, 3                          ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  %i.z = select i1 %i.y, i64 4, i64 %i.x
  %n.vec = sub nsw i64 %i.w, %i.z                 ; 2 uses
  %i.aa = add nsw i64 %n.vec, %i.v
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 -1), %vector.ph ], [ %i.ay, %vector.body ]
  %i.ab = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi121 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.av, %vector.body ]
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ac = add i64 %index, %i.v                    ; 4 uses
  %i.ad = getelementptr inbounds [16 x i8], ptr %.val57, i64 %i.ac
  %i.ae = getelementptr [16 x i8], ptr %.val57, i64 %i.ac
  %i.af = getelementptr [16 x i8], ptr %.val57, i64 %i.ac
  %i.ag = getelementptr [16 x i8], ptr %.val57, i64 %i.ac
  %i.ah = getelementptr i8, ptr %i.ad, i64 4
  %i.ai = getelementptr i8, ptr %i.ae, i64 20
  %i.aj = getelementptr i8, ptr %i.af, i64 36
  %i.ak = getelementptr i8, ptr %i.ag, i64 52
  %i.al = load i32, ptr %i.ah, align 4, !tbaa !35
  %i.am = load i32, ptr %i.ai, align 4, !tbaa !35
  %i.an = load i32, ptr %i.aj, align 4, !tbaa !35
  %i.ao = load i32, ptr %i.ak, align 4, !tbaa !35
  %i.ap = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %i.aq = insertelement <4 x i32> %i.ap, i32 %i.am, i64 1
  %i.ar = insertelement <4 x i32> %i.aq, i32 %i.an, i64 2
  %i.as = insertelement <4 x i32> %i.ar, i32 %i.ao, i64 3
  %.fr = freeze <4 x i32> %i.as
  %i.at = icmp eq <4 x i32> %.fr, splat (i32 2)   ; 3 uses
  %i.au = zext <4 x i1> %i.at to <4 x i32>
  %i.av = add <4 x i32> %vec.phi121, %i.au        ; 2 uses
  %i.aw = bitcast <4 x i1> %i.at to i4
  %.not = icmp eq i4 %i.aw, 0                     ; 2 uses
  %i.ax = select i1 %.not, <4 x i1> %i.ab, <4 x i1> %i.at ; 2 uses
  %i.ay = select i1 %.not, <4 x i32> %vec.phi, <4 x i32> %vec.ind ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %i.ba = tail call i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32> %i.ay, <4 x i1> %i.ax, i32 -1)
  %i.bb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.av)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.v, %.lr.ph ], [ %i.aa, %middle.block ]
  %.073.ph = phi i32 [ -1, %.lr.ph ], [ %i.ba, %middle.block ]
  %.03772.ph = phi i32 [ 0, %.lr.ph ], [ %i.bb, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %.073 = phi i32 [ %spec.select46, %scalar.ph ], [ %.073.ph, %scalar.ph.preheader ]
  %.03772 = phi i32 [ %spec.select, %scalar.ph ], [ %.03772.ph, %scalar.ph.preheader ]
  %i.bc = getelementptr inbounds [16 x i8], ptr %.val57, i64 %indvars.iv
  %i.bd = getelementptr i8, ptr %i.bc, i64 4
  %.val53 = load i32, ptr %i.bd, align 4, !tbaa !35
  %i.be = icmp eq i32 %.val53, 2                  ; 2 uses
  %i.bf = zext i1 %i.be to i32
  %spec.select = add nuw nsw i32 %.03772, %i.bf   ; 2 uses
  %i.bg = trunc nsw i64 %indvars.iv to i32
  %spec.select46 = select i1 %i.be, i32 %i.bg, i32 %.073 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %scalar.ph, !llvm.loop !124

.critedge:                                        ; preds = %scalar.ph
  %i.bh = icmp eq i32 %spec.select, 1
  br i1 %i.bh, label %.preheader.split.us.preheader, label %.critedge.thread

.preheader.split.us.preheader:                    ; preds = %.critedge
  %i.bi = getelementptr i8, ptr %i.j, i64 8
  %i.bj = getelementptr i8, ptr %0, i64 8
  %i.bk = sext i32 %1 to i64
  %wide.trip.count90 = zext nneg i32 %i.a to i64
  %wide.trip.count85 = sext i32 %2 to i64
  %exitcond91.not115 = icmp eq i32 %i.a, 0
  br i1 %exitcond91.not115, label %.loopexit, label %.lr.ph120

.preheader.split.us:                              ; preds = %..critedge2_crit_edge.us
  %exitcond91.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count90
  br i1 %exitcond91.not, label %.loopexit, label %.lr.ph120, !llvm.loop !125

.lr.ph120:                                        ; preds = %.preheader.split.us.preheader, %.preheader.split.us
  %.2.us119 = phi i32 [ %.5.us, %.preheader.split.us ], [ %spec.select46, %.preheader.split.us.preheader ] ; 3 uses
  %indvars.iv87117 = phi i64 [ %indvars.iv.next88, %.preheader.split.us ], [ 0, %.preheader.split.us.preheader ] ; 7 uses
  %i.bl = phi i32 [ %i.ca, %.preheader.split.us ], [ %spec.store.select.i, %.preheader.split.us.preheader ] ; 3 uses
  %i.bm = phi ptr [ %i.bz, %.preheader.split.us ], [ %i.h, %.preheader.split.us.preheader ] ; 6 uses
  %.val58.us93116 = phi ptr [ %.val58.us, %.preheader.split.us ], [ %.val58, %.preheader.split.us.preheader ] ; 2 uses
  %i.bn = trunc nsw i64 %indvars.iv87117 to i32
  %i.bo = icmp eq i32 %i.bl, %i.bn
  br i1 %i.bo, label %bb.d, label %Vec_IntPush.exit.us

bb.d:                                             ; preds = %.lr.ph120
  %i.bp = icmp samesign ult i64 %indvars.iv87117, 16
  br i1 %i.bp, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bq = icmp samesign ult i64 %indvars.iv87117, 1073741823
  %indvars.iv87.tr = trunc i64 %indvars.iv87117 to i32
  %i.br = shl i32 %indvars.iv87.tr, 1
  %spec.select.i.us = select i1 %i.bq, i32 %i.br, i32 2147483647 ; 4 uses
  %i.bs = sext i32 %spec.select.i.us to i64
  %.not.i9.i.us = icmp samesign ult i64 %indvars.iv87117, %i.bs
  br i1 %.not.i9.i.us, label %bb.f, label %Vec_IntPush.exit.us

bb.f:                                             ; preds = %bb.e
  %.not9.i10.i.us = icmp eq ptr %i.bm, null
  %i.bt = zext nneg i32 %spec.select.i.us to i64
  %i.bu = shl nuw nsw i64 %i.bt, 2                ; 2 uses
  br i1 %.not9.i10.i.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = tail call ptr @realloc(ptr noundef nonnull %i.bm, i64 noundef %i.bu) #23
  br label %Vec_IntGrow.exit11.sink.split.i.us

bb.h:                                             ; preds = %bb.f
  %i.bw = tail call noalias ptr @malloc(i64 noundef %i.bu) #24
  br label %Vec_IntGrow.exit11.sink.split.i.us

bb.i:                                             ; preds = %bb.d
  %.not9.i.i.us = icmp eq ptr %i.bm, null
  br i1 %.not9.i.i.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bx = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bm, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i.us

bb.k:                                             ; preds = %bb.i
  %i.by = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i.us

Vec_IntGrow.exit11.sink.split.i.us:               ; preds = %bb.k, %bb.j, %bb.h, %bb.g
  %storemerge.us = phi ptr [ %i.by, %bb.k ], [ %i.bx, %bb.j ], [ %i.bv, %bb.g ], [ %i.bw, %bb.h ] ; 2 uses
  %spec.select.sink.i.us = phi i32 [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i.us, %bb.g ], [ %spec.select.i.us, %bb.h ] ; 2 uses
  store ptr %storemerge.us, ptr %i.i, align 8, !tbaa !37
  store i32 %spec.select.sink.i.us, ptr %i.b, align 8, !tbaa !36
  %.val58.us.pre = load ptr, ptr %i.bi, align 8, !tbaa !37
  br label %Vec_IntPush.exit.us

Vec_IntPush.exit.us:                              ; preds = %Vec_IntGrow.exit11.sink.split.i.us, %bb.e, %.lr.ph120
  %.val58.us = phi ptr [ %.val58.us.pre, %Vec_IntGrow.exit11.sink.split.i.us ], [ %.val58.us93116, %bb.e ], [ %.val58.us93116, %.lr.ph120 ] ; 5 uses
  %i.bz = phi ptr [ %storemerge.us, %Vec_IntGrow.exit11.sink.split.i.us ], [ %i.bm, %bb.e ], [ %i.bm, %.lr.ph120 ] ; 3 uses
  %i.ca = phi i32 [ %spec.select.sink.i.us, %Vec_IntGrow.exit11.sink.split.i.us ], [ %i.bl, %bb.e ], [ %i.bl, %.lr.ph120 ]
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87117, 1 ; 4 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv87117
  store i32 %.2.us119, ptr %i.cb, align 4, !tbaa !31
  %i.cc = sext i32 %.2.us119 to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %.val58.us, i64 %i.cc
  store i32 1, ptr %i.cd, align 4, !tbaa !31
  %.val56.us = load ptr, ptr %i.bj, align 8, !tbaa !41 ; 2 uses
  %i.ce = getelementptr [4 x i8], ptr %i.bz, i64 %indvars.iv.next88
  %i.cf = getelementptr i8, ptr %i.ce, i64 -4
  br label %bb.l

bb.l:                                             ; preds = %Vec_IntPush.exit.us, %bb.o
  %indvars.iv82 = phi i64 [ %i.bk, %Vec_IntPush.exit.us ], [ %indvars.iv.next83, %bb.o ] ; 4 uses
  %.377.us = phi i32 [ %.2.us119, %Vec_IntPush.exit.us ], [ %.5.us, %bb.o ] ; 3 uses
  %.23976.us = phi i32 [ 0, %Vec_IntPush.exit.us ], [ %.441.us, %bb.o ] ; 3 uses
  %i.cg = getelementptr inbounds [16 x i8], ptr %.val56.us, i64 %indvars.iv82 ; 2 uses
  %i.ch = getelementptr inbounds [4 x i8], ptr %.val58.us, i64 %indvars.iv82
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !31
  %.not45.us = icmp eq i32 %i.ci, 0
  br i1 %.not45.us, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cj = load i32, ptr %i.cf, align 4, !tbaa !31
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [16 x i8], ptr %.val56.us, i64 %i.ck ; 3 uses
  %i.cm = getelementptr i8, ptr %i.cg, i64 4
  %.val17.i.us = load i32, ptr %i.cm, align 4, !tbaa !35 ; 3 uses
  %i.cn = icmp sgt i32 %.val17.i.us, 0
  br i1 %i.cn, label %.lr.ph24.i.us, label %.Gia_ManMulFindOverlap.exit.us_crit_edge

.Gia_ManMulFindOverlap.exit.us_crit_edge:         ; preds = %bb.m
  %.phi.trans.insert = getelementptr i8, ptr %i.cl, i64 4
  %.val51.us.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !35
  br label %Gia_ManMulFindOverlap.exit.us

.lr.ph24.i.us:                                    ; preds = %bb.m
  %i.co = getelementptr i8, ptr %i.cg, i64 8
  %.val19.i.us = load ptr, ptr %i.co, align 8, !tbaa !37
  %i.cp = getelementptr i8, ptr %i.cl, i64 4
  %.val.i.us = load i32, ptr %i.cp, align 4, !tbaa !35 ; 5 uses
  %i.cq = icmp sgt i32 %.val.i.us, 0
  br i1 %i.cq, label %.lr.ph24.split.us.i.us, label %Gia_ManMulFindOverlap.exit.us

.lr.ph24.split.us.i.us:                           ; preds = %.lr.ph24.i.us
  %i.cr = getelementptr i8, ptr %i.cl, i64 8
  %.val18.us.i.us = load ptr, ptr %i.cr, align 8, !tbaa !37 ; 2 uses
  %wide.trip.count31.i.us = zext nneg i32 %.val17.i.us to i64
  %wide.trip.count.i.us = zext nneg i32 %.val.i.us to i64 ; 3 uses
  %min.iters.check124 = icmp ult i32 %.val.i.us, 8
  %n.vec126 = and i64 %wide.trip.count.i.us, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec126, %wide.trip.count.i.us
  br label %.lr.ph.us.i.us

.lr.ph.us.i.us:                                   ; preds = %..critedge2_crit_edge.us.i.us, %.lr.ph24.split.us.i.us
  %indvars.iv28.i.us = phi i64 [ %indvars.iv.next29.i.us, %..critedge2_crit_edge.us.i.us ], [ 0, %.lr.ph24.split.us.i.us ] ; 2 uses
  %.023.us.i.us = phi i32 [ %spec.select.us.i.us.lcssa, %..critedge2_crit_edge.us.i.us ], [ 0, %.lr.ph24.split.us.i.us ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.val19.i.us, i64 %indvars.iv28.i.us
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !31 ; 2 uses
  br i1 %min.iters.check124, label %scalar.ph123.preheader, label %vector.ph125

vector.ph125:                                     ; preds = %.lr.ph.us.i.us
  %i.cu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.023.us.i.us, i64 0
  %broadcast.splatinsert127 = insertelement <4 x i32> poison, i32 %i.ct, i64 0
  %broadcast.splat128 = shufflevector <4 x i32> %broadcast.splatinsert127, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph125
  %index130 = phi i64 [ 0, %vector.ph125 ], [ %index.next134, %vector.body129 ] ; 2 uses
  %vec.phi131 = phi <4 x i32> [ %i.cu, %vector.ph125 ], [ %i.db, %vector.body129 ]
  %vec.phi132 = phi <4 x i32> [ zeroinitializer, %vector.ph125 ], [ %i.dc, %vector.body129 ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.val18.us.i.us, i64 %index130 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %wide.load = load <4 x i32>, ptr %i.cv, align 4, !tbaa !31
  %wide.load133 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !31
  %i.cx = icmp eq <4 x i32> %broadcast.splat128, %wide.load
  %i.cy = icmp eq <4 x i32> %broadcast.splat128, %wide.load133
  %i.cz = zext <4 x i1> %i.cx to <4 x i32>
  %i.da = zext <4 x i1> %i.cy to <4 x i32>
  %i.db = add <4 x i32> %vec.phi131, %i.cz        ; 2 uses
  %i.dc = add <4 x i32> %vec.phi132, %i.da        ; 2 uses
  %index.next134 = add nuw i64 %index130, 8       ; 2 uses
  %i.dd = icmp eq i64 %index.next134, %n.vec126
  br i1 %i.dd, label %middle.block135, label %vector.body129, !llvm.loop !126

middle.block135:                                  ; preds = %vector.body129
  %bin.rdx = add <4 x i32> %i.dc, %i.db
  %i.de = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %..critedge2_crit_edge.us.i.us, label %scalar.ph123.preheader

scalar.ph123.preheader:                           ; preds = %.lr.ph.us.i.us, %middle.block135
  %indvars.iv.i.us.ph = phi i64 [ 0, %.lr.ph.us.i.us ], [ %n.vec126, %middle.block135 ]
  %.121.us.i.us.ph = phi i32 [ %.023.us.i.us, %.lr.ph.us.i.us ], [ %i.de, %middle.block135 ]
  br label %scalar.ph123

scalar.ph123:                                     ; preds = %scalar.ph123.preheader, %scalar.ph123
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %scalar.ph123 ], [ %indvars.iv.i.us.ph, %scalar.ph123.preheader ] ; 2 uses
  %.121.us.i.us = phi i32 [ %spec.select.us.i.us, %scalar.ph123 ], [ %.121.us.i.us.ph, %scalar.ph123.preheader ]
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.val18.us.i.us, i64 %indvars.iv.i.us
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !31
  %i.dh = icmp eq i32 %i.ct, %i.dg
  %i.di = zext i1 %i.dh to i32
  %spec.select.us.i.us = add nsw i32 %.121.us.i.us, %i.di ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i.us, label %..critedge2_crit_edge.us.i.us, label %scalar.ph123, !llvm.loop !127

..critedge2_crit_edge.us.i.us:                    ; preds = %scalar.ph123, %middle.block135
  %spec.select.us.i.us.lcssa = phi i32 [ %i.de, %middle.block135 ], [ %spec.select.us.i.us, %scalar.ph123 ] ; 2 uses
  %indvars.iv.next29.i.us = add nuw nsw i64 %indvars.iv28.i.us, 1 ; 2 uses
  %exitcond32.not.i.us = icmp eq i64 %indvars.iv.next29.i.us, %wide.trip.count31.i.us
  br i1 %exitcond32.not.i.us, label %Gia_ManMulFindOverlap.exit.us, label %.lr.ph.us.i.us, !llvm.loop !107

Gia_ManMulFindOverlap.exit.us:                    ; preds = %..critedge2_crit_edge.us.i.us, %.Gia_ManMulFindOverlap.exit.us_crit_edge, %.lr.ph24.i.us
  %.val51.us = phi i32 [ %.val51.us.pre, %.Gia_ManMulFindOverlap.exit.us_crit_edge ], [ %.val.i.us, %.lr.ph24.i.us ], [ %.val.i.us, %..critedge2_crit_edge.us.i.us ] ; 2 uses
  %.0.lcssa.i.us = phi i32 [ 0, %.Gia_ManMulFindOverlap.exit.us_crit_edge ], [ 0, %.lr.ph24.i.us ], [ %spec.select.us.i.us.lcssa, %..critedge2_crit_edge.us.i.us ]
  %i.dj = icmp eq i32 %.0.lcssa.i.us, %.val51.us
  br i1 %i.dj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %Gia_ManMulFindOverlap.exit.us
  %i.dk = add nsw i32 %.val51.us, 2
  %i.dl = icmp eq i32 %.val17.i.us, %i.dk         ; 2 uses
  %i.dm = zext i1 %i.dl to i32
  %spec.select47.us = add nsw i32 %.23976.us, %i.dm
  %i.dn = trunc nsw i64 %indvars.iv82 to i32
  %spec.select48.us = select i1 %i.dl, i32 %i.dn, i32 %.377.us
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %Gia_ManMulFindOverlap.exit.us, %bb.l
  %.441.us = phi i32 [ %.23976.us, %bb.l ], [ %.23976.us, %Gia_ManMulFindOverlap.exit.us ], [ %spec.select47.us, %bb.n ] ; 2 uses
  %.5.us = phi i32 [ %.377.us, %bb.l ], [ %.377.us, %Gia_ManMulFindOverlap.exit.us ], [ %spec.select48.us, %bb.n ] ; 2 uses
  %indvars.iv.next83 = add nsw i64 %indvars.iv82, 1 ; 2 uses
  %exitcond86.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count85
  br i1 %exitcond86.not, label %..critedge2_crit_edge.us, label %bb.l, !llvm.loop !128

..critedge2_crit_edge.us:                         ; preds = %bb.o
  %.not.us = icmp eq i32 %.441.us, 1
  br i1 %.not.us, label %.preheader.split.us, label %.loopexit.split.loop.exit111, !llvm.loop !125

.loopexit.split.loop.exit111:                     ; preds = %..critedge2_crit_edge.us
  %indvars.le = trunc i64 %indvars.iv.next88 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.split.us, %.preheader.split.us.preheader, %.loopexit.split.loop.exit111
  %i.do = phi ptr [ %.val58.us, %.loopexit.split.loop.exit111 ], [ %.val58, %.preheader.split.us.preheader ], [ %.val58.us, %.preheader.split.us ]
  %.us-phi.ph = phi i32 [ %indvars.le, %.loopexit.split.loop.exit111 ], [ %i.a, %.preheader.split.us.preheader ], [ %i.a, %.preheader.split.us ] ; 2 uses
  store i32 %.us-phi.ph, ptr %i.d, align 4
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %Vec_IntStart.exit, %.loopexit, %.critedge
  %.val97 = phi i32 [ %.us-phi.ph, %.loopexit ], [ 0, %.critedge ], [ 0, %Vec_IntStart.exit ]
  %i.dp = phi ptr [ %i.do, %.loopexit ], [ %.val58, %.critedge ], [ %.val58, %Vec_IntStart.exit ] ; 2 uses
  %.not.i62 = icmp eq ptr %i.dp, null
  br i1 %.not.i62, label %Vec_IntFree.exit, label %bb.p

bb.p:                                             ; preds = %.critedge.thread
  tail call void @free(ptr noundef nonnull %i.dp) #22
  %.val.pre = load i32, ptr %i.d, align 4, !tbaa !35
end_hunk_1
begin_hunk_2_@Gia_ManMulFindAInputs:bb.a
  %i.li = load i32, ptr %i.gd, align 4, !tbaa !35
  %i.lj = add i32 %i.li, %i.ld
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds [4 x i8], ptr %i.ky, i64 %i.lk
  store i32 %i.lb, ptr %i.ll, align 4, !tbaa !31
  %indvars.iv.next.i219 = add nuw nsw i64 %indvars.iv.i218, 1 ; 2 uses
  %i.lm = load i32, ptr %i.gd, align 4, !tbaa !35 ; 2 uses
  %i.ln = sdiv i32 %i.lm, 2
  %i.lo = sext i32 %i.ln to i64
  %i.lp = icmp slt i64 %indvars.iv.next.i219, %i.lo
  br i1 %i.lp, label %bb.cg, label %Vec_IntReverseOrder.exit, !llvm.loop !135

Vec_IntReverseOrder.exit:                         ; preds = %bb.cg, %.critedge6
  %i.lq = load i32, ptr %i.he, align 4, !tbaa !35 ; 2 uses
  %i.lr = icmp sgt i32 %i.lq, 1
  br i1 %i.lr, label %.lr.ph.i220, label %Vec_IntReverseOrder.exit223

.lr.ph.i220:                                      ; preds = %Vec_IntReverseOrder.exit
  %i.ls = load ptr, ptr %i.hy, align 8, !tbaa !37 ; 3 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ch, %.lr.ph.i220
  %indvars.iv.i221 = phi i64 [ 0, %.lr.ph.i220 ], [ %indvars.iv.next.i222, %bb.ch ] ; 3 uses
  %i.lt = phi i32 [ %i.lq, %.lr.ph.i220 ], [ %i.mg, %bb.ch ]
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %indvars.iv.i221 ; 2 uses
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !31
  %i.lw = trunc nuw nsw i64 %indvars.iv.i221 to i32
  %i.lx = xor i32 %i.lw, -1                       ; 2 uses
  %i.ly = add i32 %i.lt, %i.lx
  %i.lz = sext i32 %i.ly to i64
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.ls, i64 %i.lz
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !31
  store i32 %i.mb, ptr %i.lu, align 4, !tbaa !31
  %i.mc = load i32, ptr %i.he, align 4, !tbaa !35
  %i.md = add i32 %i.mc, %i.lx
  %i.me = sext i32 %i.md to i64
  %i.mf = getelementptr inbounds [4 x i8], ptr %i.ls, i64 %i.me
  store i32 %i.lv, ptr %i.mf, align 4, !tbaa !31
  %indvars.iv.next.i222 = add nuw nsw i64 %indvars.iv.i221, 1 ; 2 uses
  %i.mg = load i32, ptr %i.he, align 4, !tbaa !35 ; 2 uses
  %i.mh = sdiv i32 %i.mg, 2
  %i.mi = sext i32 %i.mh to i64
  %i.mj = icmp slt i64 %indvars.iv.next.i222, %i.mi
  br i1 %i.mj, label %bb.ch, label %Vec_IntReverseOrder.exit223, !llvm.loop !135

Vec_IntReverseOrder.exit223:                      ; preds = %bb.ch, %Vec_IntReverseOrder.exit, %bb.r
  %.val110 = load i32, ptr %i.db, align 4, !tbaa !35
  %i.mk = add nsw i32 %.val110, -1
  %i.ml = sext i32 %i.mk to i64
  %i.mm = icmp slt i64 %indvars.iv.next269, %i.ml
  br i1 %i.mm, label %bb.r, label %.critedge4, !llvm.loop !136

.critedge4:                                       ; preds = %Vec_IntReverseOrder.exit223, %._crit_edge
  %i.mn = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !37 ; 2 uses
  %.not.i224 = icmp eq ptr %i.mo, null
  br i1 %.not.i224, label %Vec_IntFree.exit, label %bb.ci

bb.ci:                                            ; preds = %.critedge4
  tail call void @free(ptr noundef nonnull %i.mo) #22
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge4, %bb.ci
  tail call void @free(ptr noundef nonnull %i.da) #22
  %i.mp = load i32, ptr %i.g, align 8, !tbaa !40  ; 2 uses
  %i.mq = icmp sgt i32 %i.mp, 0
  %.pre.i.i225 = load ptr, ptr %i.m, align 8, !tbaa !41 ; 3 uses
  br i1 %i.mq, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %Vec_IntFree.exit
  %i.mr = zext nneg i32 %i.mp to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.ck
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.ck ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ms = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i225, i64 %indvars.iv.i.i
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8 ; 2 uses
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !37 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.mu, null
  br i1 %.not15.i.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef nonnull %i.mu) #22
  store ptr null, ptr %i.mt, align 8, !tbaa !37
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i.i, %i.mr
  br i1 %exitcond.not, label %._crit_edge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !80

._crit_edge.i.i:                                  ; preds = %Vec_IntFree.exit
  %.not.i.i = icmp eq ptr %.pre.i.i225, null
  br i1 %.not.i.i, label %Vec_WecFree.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.ck, %._crit_edge.i.i
  tail call void @free(ptr noundef nonnull %.pre.i.i225) #22
  br label %Vec_WecFree.exit

Vec_WecFree.exit:                                 ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  tail call void @free(ptr noundef nonnull %i.g) #22
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_ManMulFindBInputs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 5 uses
  store i32 0, ptr %i.b, align 4, !tbaa !38
  store i32 10, ptr %i.a, align 8, !tbaa !40
  %i.c = tail call noalias dereferenceable_or_null(160) ptr @calloc(i64 noundef 10, i64 noundef 16) #25
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 10 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !41
  %i.e = getelementptr i8, ptr %0, i64 24
  %.val128 = load i32, ptr %i.e, align 8, !tbaa !42
  %i.f = tail call ptr @Gia_ManMulFindGroups(ptr noundef %1, i32 noundef %.val128, i32 noundef 0) ; 4 uses
  %i.g = getelementptr i8, ptr %i.f, i64 4        ; 2 uses
  %.val107254 = load i32, ptr %i.g, align 4, !tbaa !35
  %i.h = icmp sgt i32 %.val107254, 1
  br i1 %i.h, label %.lr.ph256, label %.critedge

.lr.ph256:                                        ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %i.j = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.k = getelementptr i8, ptr %2, i64 4          ; 2 uses
  %i.l = getelementptr i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph256, %bb.ca
  %indvars.iv285 = phi i64 [ 0, %.lr.ph256 ], [ %indvars.iv.next286, %bb.ca ] ; 3 uses
  %.val116 = load ptr, ptr %i.i, align 8, !tbaa !37 ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.val116, i64 %indvars.iv285
  %i.n = load i32, ptr %i.m, align 4, !tbaa !31   ; 5 uses
  %i.o = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 5 uses
  store i32 0, ptr %i.p, align 4, !tbaa !35
  store i32 100, ptr %i.o, align 8, !tbaa !36
  %i.q = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !37
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.val116, i64 %indvars.iv.next286 ; 5 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !31   ; 3 uses
  %i.u = icmp slt i32 %i.n, %i.t
  br i1 %i.u, label %.lr.ph238.preheader, label %Vec_IntUniqify.exit

.lr.ph238.preheader:                              ; preds = %bb.b
  %i.v = sext i32 %i.n to i64
  br label %.lr.ph238

.lr.ph238:                                        ; preds = %.lr.ph238.preheader, %.critedge4
  %i.w = phi i32 [ %i.t, %.lr.ph238.preheader ], [ %i.au, %.critedge4 ]
  %.promoted233 = phi ptr [ %i.q, %.lr.ph238.preheader ], [ %.promoted233293, %.critedge4 ] ; 2 uses
  %.promoted230 = phi i32 [ 100, %.lr.ph238.preheader ], [ %.promoted230291, %.critedge4 ] ; 2 uses
  %.promoted = phi i32 [ 0, %.lr.ph238.preheader ], [ %.promoted289, %.critedge4 ] ; 2 uses
  %indvars.iv267 = phi i64 [ %i.v, %.lr.ph238.preheader ], [ %indvars.iv.next268, %.critedge4 ] ; 2 uses
  %.val120 = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.x = getelementptr inbounds [16 x i8], ptr %.val120, i64 %indvars.iv267 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 4        ; 2 uses
  %.val106227 = load i32, ptr %i.y, align 4, !tbaa !35
  %i.z = icmp sgt i32 %.val106227, 1
  br i1 %i.z, label %.lr.ph, label %.critedge4

.lr.ph:                                           ; preds = %.lr.ph238
  %i.aa = getelementptr i8, ptr %i.x, i64 8
  %i.ab = sext i32 %.promoted to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %indvars.iv262 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next263, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %i.ab, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 7 uses
  %storemerge221234 = phi ptr [ %.promoted233, %.lr.ph ], [ %storemerge221235, %Vec_IntPush.exit ] ; 6 uses
  %spec.select.sink.i232 = phi i32 [ %.promoted230, %.lr.ph ], [ %spec.select.sink.i231, %Vec_IntPush.exit ] ; 3 uses
  %.val114 = load ptr, ptr %i.aa, align 8, !tbaa !37
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.val114, i64 %indvars.iv262
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !31
  %i.ae = trunc nsw i64 %indvars.iv to i32
  %i.af = icmp eq i32 %spec.select.sink.i232, %i.ae
  br i1 %i.af, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %bb.c
  %i.ag = icmp slt i64 %indvars.iv, 16
  br i1 %i.ag, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %storemerge221234, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge221234, i64 noundef 64) #23
  br label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.e
  %i.ai = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.d
  %i.aj = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ak = shl i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.aj, i32 %i.ak, i32 2147483647 ; 4 uses
  %i.al = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.al
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i = icmp eq ptr %storemerge221234, null
  %i.am = zext nneg i32 %spec.select.i to i64
  %i.an = shl nuw nsw i64 %i.am, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = tail call ptr @realloc(ptr noundef nonnull %storemerge221234, i64 noundef %i.an) #23
  br label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.i
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.an) #24
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.g, %bb.f, %bb.k, %bb.j, %bb.c, %bb.h
  %storemerge221235 = phi ptr [ %storemerge221234, %bb.c ], [ %storemerge221234, %bb.h ], [ %i.ai, %bb.g ], [ %i.ah, %bb.f ], [ %i.ao, %bb.j ], [ %i.ap, %bb.k ] ; 4 uses
  %spec.select.sink.i231 = phi i32 [ %spec.select.sink.i232, %bb.c ], [ %spec.select.sink.i232, %bb.h ], [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %storemerge221235, i64 %indvars.iv
  store i32 %i.ad, ptr %i.aq, align 4, !tbaa !31
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 2 uses
  %.val106 = load i32, ptr %i.y, align 4, !tbaa !35
  %i.ar = sext i32 %.val106 to i64
  %i.as = icmp slt i64 %indvars.iv.next263, %i.ar
  br i1 %i.as, label %bb.c, label %..critedge4_crit_edge, !llvm.loop !137

..critedge4_crit_edge:                            ; preds = %Vec_IntPush.exit
  %i.at = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  store i32 %i.at, ptr %i.p, align 4, !tbaa !35
  store i32 %spec.select.sink.i231, ptr %i.o, align 8
  store ptr %storemerge221235, ptr %i.r, align 8
  %.pre = load i32, ptr %i.s, align 4, !tbaa !31
  br label %.critedge4

.critedge4:                                       ; preds = %..critedge4_crit_edge, %.lr.ph238
  %i.au = phi i32 [ %.pre, %..critedge4_crit_edge ], [ %i.w, %.lr.ph238 ] ; 3 uses
  %.promoted233293 = phi ptr [ %storemerge221235, %..critedge4_crit_edge ], [ %.promoted233, %.lr.ph238 ] ; 8 uses
  %.promoted230291 = phi i32 [ %spec.select.sink.i231, %..critedge4_crit_edge ], [ %.promoted230, %.lr.ph238 ]
  %.promoted289 = phi i32 [ %i.at, %..critedge4_crit_edge ], [ %.promoted, %.lr.ph238 ] ; 5 uses
  %indvars.iv.next268 = add nsw i64 %indvars.iv267, 1 ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next268, %i.av
  br i1 %i.aw, label %.lr.ph238, label %.critedge2, !llvm.loop !138

.critedge2:                                       ; preds = %.critedge4
  %i.ax = icmp slt i32 %.promoted289, 2
  br i1 %i.ax, label %Vec_IntUniqify.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2
  %i.ay = zext nneg i32 %.promoted289 to i64      ; 2 uses
  tail call void @qsort(ptr noundef %.promoted233293, i64 noundef %i.ay, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompare1) #22
  %i.az = add nsw i64 %i.ay, -1                   ; 3 uses
  %xtraiter = and i64 %i.az, 1
  %i.ba = icmp eq i32 %.promoted289, 2
  br i1 %i.ba, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.az, -2
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.p ] ; 3 uses
  %.024.i = phi i32 [ 1, %.lr.ph.i.new ], [ %.1.i.1, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.p ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.promoted233293, i64 %indvars.iv.i ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !31 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bb, i64 -4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !31
  %.not.i = icmp eq i32 %i.bc, %i.be
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = add nsw i32 %.024.i, 1
  %i.bg = sext i32 %.024.i to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %.promoted233293, i64 %i.bg
  store i32 %i.bc, ptr %i.bh, align 4, !tbaa !31
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1.i = phi i32 [ %i.bf, %bb.m ], [ %.024.i, %bb.l ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.promoted233293, i64 %indvars.iv.i ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !31 ; 2 uses
  %i.bl = load i32, ptr %i.bi, align 4, !tbaa !31
  %.not.i.1 = icmp eq i32 %i.bk, %i.bl
  br i1 %.not.i.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = add nsw i32 %.1.i, 1
  %i.bn = sext i32 %.1.i to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %.promoted233293, i64 %i.bn
  store i32 %i.bk, ptr %i.bo, align 4, !tbaa !31
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1.i.1 = phi i32 [ %i.bm, %bb.o ], [ %.1.i, %bb.n ] ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.l, !llvm.loop !139

._crit_edge.i.unr-lcssa:                          ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ]
  %.024.i.epil.init = phi i32 [ 1, %.lr.ph.i ], [ %.1.i.1, %._crit_edge.i.unr-lcssa ] ; 3 uses
  %lcmp.mod441 = trunc i64 %i.az to i1
  tail call void @llvm.assume(i1 %lcmp.mod441)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.promoted233293, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !31 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bp, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !31
  %.not.i.epil = icmp eq i32 %i.bq, %i.bs
  br i1 %.not.i.epil, label %._crit_edge.i, label %bb.q

bb.q:                                             ; preds = %.epil.preheader
  %i.bt = add nsw i32 %.024.i.epil.init, 1
  %i.bu = sext i32 %.024.i.epil.init to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %.promoted233293, i64 %i.bu
  store i32 %i.bq, ptr %i.bv, align 4, !tbaa !31
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %bb.q, %._crit_edge.i.unr-lcssa
  %.1.i.lcssa = phi i32 [ %.1.i.1, %._crit_edge.i.unr-lcssa ], [ %i.bt, %bb.q ], [ %.024.i.epil.init, %.epil.preheader ] ; 2 uses
  store i32 %.1.i.lcssa, ptr %i.p, align 4, !tbaa !35
  %.pre295 = load i32, ptr %i.s, align 4, !tbaa !31
  br label %Vec_IntUniqify.exit

Vec_IntUniqify.exit:                              ; preds = %bb.b, %.critedge2, %._crit_edge.i
  %i.bw = phi i32 [ %i.au, %.critedge2 ], [ %.pre295, %._crit_edge.i ], [ %i.t, %bb.b ]
  %i.bx = phi i32 [ %.promoted289, %.critedge2 ], [ %.1.i.lcssa, %._crit_edge.i ], [ 0, %bb.b ] ; 12 uses
  %i.by = sub nsw i32 %i.bw, %i.n                 ; 3 uses
  %i.bz = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 5 uses
  %i.ca = add i32 %i.bx, -1
  %or.cond.i.i = icmp ult i32 %i.ca, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.bx ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.bz, align 8, !tbaa !36
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %Vec_IntUniqify.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr null, ptr %i.cc, align 8, !tbaa !37
  store i32 %i.bx, ptr %i.cb, align 4, !tbaa !35
  br label %Vec_IntStart.exit

Vec_IntAlloc.exit.i:                              ; preds = %Vec_IntUniqify.exit
  %i.cd = sext i32 %spec.store.select.i.i to i64
  %i.ce = shl nsw i64 %i.cd, 2
  %i.cf = tail call noalias ptr @malloc(i64 noundef %i.ce) #24 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !37
  store i32 %i.bx, ptr %i.cb, align 4, !tbaa !35
  %.not.i129 = icmp eq ptr %i.cf, null
  br i1 %.not.i129, label %Vec_IntStart.exit, label %bb.r

bb.r:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.ch = sext i32 %i.bx to i64
  %i.ci = shl nsw i64 %i.ch, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cf, i8 0, i64 %i.ci, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.r
  %i.cj = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.cf, %bb.r ] ; 8 uses
  %i.ck = load i32, ptr %i.s, align 4, !tbaa !31
  %i.cl = icmp slt i32 %i.n, %i.ck
  br i1 %i.cl, label %.lr.ph244, label %.critedge6

.lr.ph244:                                        ; preds = %Vec_IntStart.exit
  %.val119 = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.cm = icmp sgt i32 %i.bx, 0
  %wide.trip.count.i = zext nneg i32 %i.bx to i64
  %i.cn = sext i32 %i.n to i64
  %i.co = getelementptr inbounds i8, ptr %i.cj, i64 -4 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph244, %.critedge8
  %indvars.iv273 = phi i64 [ %i.cn, %.lr.ph244 ], [ %indvars.iv.next274, %.critedge8 ] ; 2 uses
  %i.cp = getelementptr inbounds [16 x i8], ptr %.val119, i64 %indvars.iv273 ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 4      ; 3 uses
  %.val104240 = load i32, ptr %i.cq, align 4, !tbaa !35
  %i.cr = icmp sgt i32 %.val104240, 1
  br i1 %i.cr, label %.lr.ph242, label %.critedge8

.lr.ph242:                                        ; preds = %bb.s
  %i.cs = getelementptr i8, ptr %i.cp, i64 8
  %.val111 = load ptr, ptr %i.cs, align 8, !tbaa !37
  br i1 %i.cm, label %.lr.ph242.split.us, label %.lr.ph242.split

.lr.ph242.split.us:                               ; preds = %.lr.ph242
  %i.ct = load ptr, ptr %i.r, align 8, !tbaa !37
  br label %.lr.ph.i131.us
end_hunk_2
begin_hunk_3_@Gia_ManMulFindSimCone:bb.a
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.1, %.lr.ph.split ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.val89, i64 %indvars.iv
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !31 ; 2 uses
  %i.cv = ashr i32 %i.cu, 1
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val96, i64 %indvars.iv
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !162
  %i.cy = and i32 %i.cu, 1
  %sext = sub nsw i32 0, %i.cy
  %i.cz = sext i32 %sext to i64
  %i.da = xor i64 %i.cx, %i.cz
  %i.db = sext i32 %i.cv to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.db
  store i64 %i.da, ptr %i.dc, align 8, !tbaa !162
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.val89, i64 %indvars.iv.next
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !31 ; 2 uses
  %i.df = ashr i32 %i.de, 1
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.val96, i64 %indvars.iv.next
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !162
  %i.di = and i32 %i.de, 1
  %sext.1 = sub nsw i32 0, %i.di
  %i.dj = sext i32 %sext.1 to i64
  %i.dk = xor i64 %i.dh, %i.dj
  %i.dl = sext i32 %i.df to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.dl
  store i64 %i.dk, ptr %i.dm, align 8, !tbaa !162
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.preheader.loopexit.unr-lcssa, label %.lr.ph.split, !llvm.loop !163

.critedge2.preheader.loopexit.unr-lcssa:          ; preds = %.thread103.us
  %lcmp.mod173.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod173.not, label %.critedge2.preheader, label %.thread103.us.epil.preheader

.thread103.us.epil.preheader:                     ; preds = %.critedge2.preheader.loopexit.unr-lcssa, %.lr.ph106.split.us
  %indvars.iv131.epil.init = phi i64 [ 0, %.lr.ph106.split.us ], [ %indvars.iv.next132.3, %.critedge2.preheader.loopexit.unr-lcssa ]
  %lcmp.mod174 = icmp ne i64 %xtraiter171, 0
  tail call void @llvm.assume(i1 %lcmp.mod174)
  br label %.thread103.us.epil

.thread103.us.epil:                               ; preds = %.thread103.us.epil, %.thread103.us.epil.preheader
  %indvars.iv131.epil = phi i64 [ %indvars.iv.next132.epil, %.thread103.us.epil ], [ %indvars.iv131.epil.init, %.thread103.us.epil.preheader ] ; 3 uses
  %epil.iter172 = phi i64 [ %epil.iter172.next, %.thread103.us.epil ], [ 0, %.thread103.us.epil.preheader ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.val88154, i64 %indvars.iv131.epil
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !31
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.val94.us, i64 %indvars.iv131.epil
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !162
  %i.dr = sext i32 %i.do to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.dr
  store i64 %i.dq, ptr %i.ds, align 8, !tbaa !162
  %indvars.iv.next132.epil = add nuw nsw i64 %indvars.iv131.epil, 1
  %epil.iter172.next = add i64 %epil.iter172, 1   ; 2 uses
  %epil.iter172.cmp.not = icmp eq i64 %epil.iter172.next, %xtraiter171
  br i1 %epil.iter172.cmp.not, label %.critedge2.preheader, label %.thread103.us.epil, !llvm.loop !166

.critedge2.preheader.loopexit159.unr-lcssa:       ; preds = %.lr.ph106.split
  %lcmp.mod162.not = icmp eq i64 %xtraiter161, 0
  br i1 %lcmp.mod162.not, label %.critedge2.preheader, label %.lr.ph106.split.epil.preheader

.lr.ph106.split.epil.preheader:                   ; preds = %.critedge2.preheader.loopexit159.unr-lcssa, %.lr.ph106.split.preheader
  %indvars.iv126.epil.init = phi i64 [ 0, %.lr.ph106.split.preheader ], [ %indvars.iv.next127.1, %.critedge2.preheader.loopexit159.unr-lcssa ] ; 2 uses
  %lcmp.mod163 = trunc i32 %.val83 to i1
  tail call void @llvm.assume(i1 %lcmp.mod163)
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.val88, i64 %indvars.iv126.epil.init
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !31 ; 2 uses
  %i.dv = ashr i32 %i.du, 1
  %.val94.epil = load ptr, ptr %i.br, align 8, !tbaa !161
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %.val94.epil, i64 %indvars.iv126.epil.init
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !162
  %i.dy = and i32 %i.du, 1
  %sext157.epil = sub nsw i32 0, %i.dy
  %i.dz = sext i32 %sext157.epil to i64
  %i.ea = xor i64 %i.dx, %i.dz
  %i.eb = sext i32 %i.dv to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.eb
  store i64 %i.ea, ptr %i.ec, align 8, !tbaa !162
  br label %.critedge2.preheader

.critedge2.preheader:                             ; preds = %.lr.ph106.split.epil.preheader, %.critedge2.preheader.loopexit159.unr-lcssa, %.critedge2.preheader.loopexit.unr-lcssa, %.thread103.us.epil, %.critedge.preheader.thread, %.critedge.preheader
  %i.ed = icmp sgt i32 %.val85, 0
  br i1 %i.ed, label %.lr.ph108, label %.critedge6

.lr.ph108:                                        ; preds = %.critedge2.preheader
  %i.ee = getelementptr i8, ptr %0, i64 32
  %.val80 = load ptr, ptr %i.ee, align 8, !tbaa !30 ; 2 uses
  %.not = icmp eq ptr %.val80, null
  br i1 %.not, label %.lr.ph111, label %.lr.ph108.split

.lr.ph108.split:                                  ; preds = %.lr.ph108
  %i.ef = getelementptr i8, ptr %5, i64 8
  %.val87 = load ptr, ptr %i.ef, align 8, !tbaa !37
  %wide.trip.count139 = zext nneg i32 %.val85 to i64
  br label %.critedge2

.lr.ph106.split:                                  ; preds = %.lr.ph106.split, %.lr.ph106.split.preheader.new
  %indvars.iv126 = phi i64 [ 0, %.lr.ph106.split.preheader.new ], [ %indvars.iv.next127.1, %.lr.ph106.split ] ; 4 uses
  %niter165 = phi i64 [ 0, %.lr.ph106.split.preheader.new ], [ %niter165.next.1, %.lr.ph106.split ]
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.val88, i64 %indvars.iv126
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !31 ; 2 uses
  %i.ei = ashr i32 %i.eh, 1
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.val94, i64 %indvars.iv126
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !162
  %i.el = and i32 %i.eh, 1
  %sext157 = sub nsw i32 0, %i.el
  %i.em = sext i32 %sext157 to i64
  %i.en = xor i64 %i.ek, %i.em
  %i.eo = sext i32 %i.ei to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.eo
  store i64 %i.en, ptr %i.ep, align 8, !tbaa !162
  %indvars.iv.next127 = or disjoint i64 %indvars.iv126, 1 ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.val88, i64 %indvars.iv.next127
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !31 ; 2 uses
  %i.es = ashr i32 %i.er, 1
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.val94, i64 %indvars.iv.next127
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !162
  %i.ev = and i32 %i.er, 1
  %sext157.1 = sub nsw i32 0, %i.ev
  %i.ew = sext i32 %sext157.1 to i64
  %i.ex = xor i64 %i.eu, %i.ew
  %i.ey = sext i32 %i.es to i64
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ey
  store i64 %i.ex, ptr %i.ez, align 8, !tbaa !162
  %indvars.iv.next127.1 = add nuw nsw i64 %indvars.iv126, 2 ; 2 uses
  %niter165.next.1 = add i64 %niter165, 2         ; 2 uses
  %niter165.ncmp.1 = icmp eq i64 %niter165.next.1, %unroll_iter164
  br i1 %niter165.ncmp.1, label %.critedge2.preheader.loopexit159.unr-lcssa, label %.lr.ph106.split, !llvm.loop !165

.critedge2:                                       ; preds = %.lr.ph108.split, %.critedge2
  %indvars.iv136 = phi i64 [ 0, %.lr.ph108.split ], [ %indvars.iv.next137, %.critedge2 ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.val87, i64 %indvars.iv136
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !31 ; 3 uses
  %i.fc = sext i32 %i.fb to i64                   ; 2 uses
  %i.fd = getelementptr inbounds [12 x i8], ptr %.val80, i64 %i.fc
  %.val3.i = load i64, ptr %i.fd, align 4         ; 3 uses
  %i.fe = trunc i64 %.val3.i to i32               ; 2 uses
  %i.ff = and i32 %i.fe, 536870911
  %i.fg = sub nsw i32 %i.fb, %i.ff
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.fh
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !162
  %i.fk = lshr i64 %.val3.i, 32
  %i.fl = trunc nuw i64 %i.fk to i32
  %i.fm = and i32 %i.fl, 536870911
  %i.fn = sub nsw i32 %i.fb, %i.fm
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.fo
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !162
  %i.fr = shl i32 %i.fe, 2
  %i.fs = ashr i32 %i.fr, 31
  %i.ft = sext i32 %i.fs to i64
  %i.fu = xor i64 %i.fj, %i.ft
  %i.fv = shl i64 %.val3.i, 2
  %i.fw = ashr i64 %i.fv, 63
  %i.fx = xor i64 %i.fq, %i.fw
  %i.fy = and i64 %i.fu, %i.fx
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.fc
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !162
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %exitcond140.not = icmp eq i64 %indvars.iv.next137, %wide.trip.count139
  br i1 %exitcond140.not, label %.lr.ph111, label %.critedge2, !llvm.loop !167

.lr.ph111:                                        ; preds = %.critedge2, %.lr.ph108
  %i.ga = getelementptr i8, ptr %5, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph111, %Vec_WrdPush.exit
  %indvars.iv143 = phi i64 [ 0, %.lr.ph111 ], [ %indvars.iv.next144, %Vec_WrdPush.exit ] ; 2 uses
  %indvars.iv141 = phi i64 [ 0, %.lr.ph111 ], [ %indvars.iv.next142, %Vec_WrdPush.exit ] ; 7 uses
  %storemerge116 = phi ptr [ %.promoted115, %.lr.ph111 ], [ %storemerge117, %Vec_WrdPush.exit ] ; 6 uses
  %spec.select.sink.i114 = phi i32 [ %spec.store.select.i, %.lr.ph111 ], [ %spec.select.sink.i113, %Vec_WrdPush.exit ] ; 3 uses
  %.val86 = load ptr, ptr %i.ga, align 8, !tbaa !37
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.val86, i64 %indvars.iv143
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !31
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.gd
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !162
  %i.gg = trunc nsw i64 %indvars.iv141 to i32
  %i.gh = icmp eq i32 %spec.select.sink.i114, %i.gg
  br i1 %i.gh, label %bb.e, label %Vec_WrdPush.exit

bb.e:                                             ; preds = %bb.d
  %i.gi = icmp samesign ult i64 %indvars.iv141, 16
  br i1 %i.gi, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not9.i.i = icmp eq ptr %storemerge116, null
  br i1 %.not9.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.gj = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge116, i64 noundef 128) #23
  br label %Vec_WrdPush.exit

bb.h:                                             ; preds = %bb.f
  %i.gk = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #24
  br label %Vec_WrdPush.exit

bb.i:                                             ; preds = %bb.e
  %i.gl = icmp samesign ult i64 %indvars.iv141, 1073741823
  %indvars.iv141.tr = trunc i64 %indvars.iv141 to i32
  %i.gm = shl i32 %indvars.iv141.tr, 1
  %spec.select.i = select i1 %i.gl, i32 %i.gm, i32 2147483647 ; 4 uses
  %i.gn = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv141, %i.gn
  br i1 %.not.i9.i, label %bb.j, label %Vec_WrdPush.exit

bb.j:                                             ; preds = %bb.i
  %.not9.i10.i = icmp eq ptr %storemerge116, null
  %i.go = zext nneg i32 %spec.select.i to i64
  %i.gp = shl nuw nsw i64 %i.go, 3                ; 2 uses
  br i1 %.not9.i10.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gq = tail call ptr @realloc(ptr noundef nonnull %storemerge116, i64 noundef %i.gp) #23
  br label %Vec_WrdPush.exit

bb.l:                                             ; preds = %bb.j
  %i.gr = tail call noalias ptr @malloc(i64 noundef %i.gp) #24
  br label %Vec_WrdPush.exit

Vec_WrdPush.exit:                                 ; preds = %bb.h, %bb.g, %bb.l, %bb.k, %bb.d, %bb.i
  %storemerge117 = phi ptr [ %storemerge116, %bb.d ], [ %storemerge116, %bb.i ], [ %i.gk, %bb.h ], [ %i.gj, %bb.g ], [ %i.gq, %bb.k ], [ %i.gr, %bb.l ] ; 3 uses
  %spec.select.sink.i113 = phi i32 [ %spec.select.sink.i114, %bb.d ], [ %spec.select.sink.i114, %bb.i ], [ 16, %bb.h ], [ 16, %bb.g ], [ %spec.select.i, %bb.k ], [ %spec.select.i, %bb.l ] ; 2 uses
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %storemerge117, i64 %indvars.iv141
  store i64 %i.gf, ptr %i.gs, align 8, !tbaa !162
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %.val81 = load i32, ptr %i.a, align 4, !tbaa !35
  %i.gt = sext i32 %.val81 to i64
  %i.gu = icmp slt i64 %indvars.iv.next144, %i.gt
  br i1 %i.gu, label %bb.d, label %.critedge6.thread, !llvm.loop !168

.critedge6.thread:                                ; preds = %Vec_WrdPush.exit
  %i.gv = trunc nsw i64 %indvars.iv.next142 to i32
  store i32 %i.gv, ptr %i.d, align 4, !tbaa !157
  store i32 %spec.select.sink.i113, ptr %i.b, align 8
  store ptr %storemerge117, ptr %i.h, align 8
  br label %bb.m

.critedge6:                                       ; preds = %.critedge2.preheader
  %.not.i102 = icmp eq ptr %i.n, null
  br i1 %.not.i102, label %Vec_WrdFree.exit, label %bb.m

bb.m:                                             ; preds = %.critedge6.thread, %.critedge6
  tail call void @free(ptr noundef nonnull %i.n) #22
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %.critedge6, %bb.m
  ret ptr %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @Gia_ManMulFindGetArg(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val19 = load i32, ptr %i.a, align 4, !tbaa !157 ; 5 uses
  %i.b = icmp sgt i32 %.val19, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !161 ; 3 uses
  %i.d = zext nneg i32 %1 to i64
  %i.e = shl nuw i64 1, %i.d                      ; 3 uses
  %wide.trip.count = zext nneg i32 %.val19 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.f = icmp eq i32 %.val19, 1
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 5 uses
  %.01421 = phi i64 [ 0, %.lr.ph.new ], [ %.1.1, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv
  %i.h = load i64, ptr %i.g, align 8, !tbaa !162
  %i.i = and i64 %i.h, %i.e
  %.not17 = icmp eq i64 %i.i, 0
  %i.j = shl nuw i64 1, %indvars.iv
  %i.k = select i1 %.not17, i64 0, i64 %i.j
  %.1 = or i64 %i.k, %.01421
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !162  ; 2 uses
  %i.o = and i64 %i.n, %i.e
  %.not17.1 = icmp eq i64 %i.o, 0
  %i.p = shl nuw i64 2, %indvars.iv
  %i.q = select i1 %.not17.1, i64 0, i64 %i.p
  %.1.1 = or i64 %i.q, %.1                        ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !169

.critedge.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.critedge.loopexit.unr-lcssa ] ; 2 uses
  %.01421.epil.init = phi i64 [ 0, %.lr.ph ], [ %.1.1, %.critedge.loopexit.unr-lcssa ]
  %lcmp.mod27 = trunc i32 %.val19 to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv.epil.init
  %i.s = load i64, ptr %i.r, align 8, !tbaa !162  ; 2 uses
  %i.t = and i64 %i.s, %i.e
  %.not17.epil = icmp eq i64 %i.t, 0
  %i.u = shl nuw i64 1, %indvars.iv.epil.init
  %i.v = select i1 %.not17.epil, i64 0, i64 %i.u
  %.1.epil = or i64 %i.v, %.01421.epil.init
  br label %.critedge

.critedge:                                        ; preds = %.epil.preheader, %.critedge.loopexit.unr-lcssa, %bb.a
  %.014.lcssa = phi i64 [ 0, %bb.a ], [ %.1.1, %.critedge.loopexit.unr-lcssa ], [ %.1.epil, %.epil.preheader ] ; 3 uses
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.n, %.critedge.loopexit.unr-lcssa ], [ %i.s, %.epil.preheader ]
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.w = zext nneg i32 %1 to i64
  %i.x = shl nuw i64 1, %i.w
  %i.y = and i64 %.0.lcssa, %i.x
  %.not16 = icmp eq i64 %i.y, 0
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = zext nneg i32 %.val19 to i64
  %i.aa = shl nsw i64 -1, %i.z
  %i.ab = or i64 %i.aa, %.014.lcssa
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.critedge
  %.2 = phi i64 [ %i.ab, %bb.d ], [ %.014.lcssa, %bb.c ], [ %.014.lcssa, %.critedge ]
  ret i64 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Gia_ManMulFindSetArg(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !161 ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 4
  %.val = load i32, ptr %i.b, align 4, !tbaa !157 ; 4 uses
  %i.c = icmp sgt i32 %.val, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = zext nneg i32 %1 to i64
  %i.e = shl nuw i64 1, %i.d                      ; 3 uses
  %wide.trip.count = zext nneg i32 %.val to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.f = icmp eq i32 %.val, 1
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.g = shl nuw i64 1, %indvars.iv
  %i.h = and i64 %i.g, %2
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.val8, i64 %indvars.iv ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !162
  %i.k = or i64 %i.j, %i.e
  store i64 %i.k, ptr %i.i, align 8, !tbaa !162
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = shl nuw i64 2, %indvars.iv
  %i.m = and i64 %i.l, %2
  %.not.1 = icmp eq i64 %i.m, 0
  br i1 %.not.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val8, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !162
  %i.q = or i64 %i.p, %i.e
  store i64 %i.q, ptr %i.o, align 8, !tbaa !162
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !170

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
end_hunk_3
