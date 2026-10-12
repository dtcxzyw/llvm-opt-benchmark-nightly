Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/fraImp?download=true
inline.NumInlined: 149
inline.NumDeleted: 39
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Fra_SmlSortUsingOnes:bb.a
  %min.iters.check = icmp ult i64 %i.v, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.v, -8                       ; 3 uses
  %i.w = add nsw i64 %n.vec, %i.u
  %invariant.gep = getelementptr [4 x i8], ptr %i.r, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %vec.phi184 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ab, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !32
  %wide.load185 = load <4 x i32>, ptr %i.x, align 4, !tbaa !32
  %i.y = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %wide.load)
  %i.z = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %wide.load185)
  %i.aa = add <4 x i32> %i.y, %vec.phi            ; 2 uses
  %i.ab = add <4 x i32> %i.z, %vec.phi184         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ab, %i.aa
  %i.ad = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %Fra_SmlCountOnesOne.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ %i.u, %.lr.ph.preheader.i.i ], [ %i.w, %middle.block ]
  %.011.i.i.ph = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.011.i.i = phi i32 [ %i.ah, %.lr.ph.i.i ], [ %.011.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv.i.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !32
  %i.ag = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.af)
  %i.ah = add nuw nsw i32 %i.ag, %.011.i.i        ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %Fra_SmlCountOnesOne.exit.i, label %.lr.ph.i.i, !llvm.loop !64

Fra_SmlCountOnesOne.exit.i:                       ; preds = %.lr.ph.i.i, %middle.block, %bb.c
  %.0.lcssa.i.i = phi i32 [ 0, %bb.c ], [ %i.ad, %middle.block ], [ %i.ah, %.lr.ph.i.i ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %calloc.i, i64 %indvars.iv.i
  store i32 %.0.lcssa.i.i, ptr %i.ai, align 4, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %Fra_SmlCountOnesOne.exit.i, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Fra_SmlCountOnes.exit, label %bb.b, !llvm.loop !65

Fra_SmlCountOnes.exit:                            ; preds = %bb.d, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !30 ; 3 uses
  %i.al = shl nsw i32 %i.ak, 5                    ; 2 uses
  %i.am = or disjoint i32 %i.al, 1                ; 3 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = shl nsw i64 %i.an, 2                    ; 2 uses
  %calloc = tail call ptr @calloc(i64 1, i64 %i.ao) ; 9 uses
  br i1 %i.f, label %.lr.ph, label %Vec_PtrPush.exit

.lr.ph:                                           ; preds = %Fra_SmlCountOnes.exit
  %i.ap = getelementptr i8, ptr %.val14.i, i64 8
  %.val98 = load ptr, ptr %i.ap, align 8, !tbaa !28 ; 2 uses
  %.not89 = icmp eq i32 %1, 0
  %wide.trip.count146 = zext nneg i32 %.val14.val.i to i64 ; 2 uses
  %exitcond147.peel.not = icmp eq i32 %.val14.val.i, 1 ; 2 uses
  br i1 %.not89, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  br i1 %exitcond147.peel.not, label %Vec_PtrPush.exit, label %.lr.ph.split

bb.f:                                             ; preds = %.lr.ph
  br i1 %exitcond147.peel.not, label %Vec_PtrPush.exit, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %bb.f, %bb.i
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %bb.i ], [ 1, %bb.f ] ; 3 uses
  %.077121.us = phi i32 [ %.1.us, %bb.i ], [ 0, %bb.f ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.val98, i64 %indvars.iv143
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !29 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.at = getelementptr i8, ptr %i.ar, i64 24
  %.val104.us = load i64, ptr %i.at, align 8      ; 2 uses
  %i.au = trunc i64 %.val104.us to i32
  %i.av = and i32 %i.au, 7
  %i.aw = add nsw i32 %i.av, -5
  %narrow.i.us = icmp ult i32 %i.aw, 2
  %i.ax = and i64 %.val104.us, 7
  %.not117.us = icmp eq i64 %i.ax, 2
  %or.cond118.us = or i1 %.not117.us, %narrow.i.us
  br i1 %or.cond118.us, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %calloc.i, i64 %indvars.iv143
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !32
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !32
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !32
  %i.be = add nsw i32 %.077121.us, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.lr.ph.split.us
  %.1.us = phi i32 [ %.077121.us, %.lr.ph.split.us ], [ %i.be, %bb.h ], [ %.077121.us, %bb.g ] ; 2 uses
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond147.not = icmp eq i64 %indvars.iv.next144, %wide.trip.count146
  br i1 %exitcond147.not, label %Vec_PtrPush.exit, label %.lr.ph.split.us, !llvm.loop !66

.lr.ph.split:                                     ; preds = %bb.e, %bb.l
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 1, %bb.e ] ; 3 uses
  %.077121 = phi i32 [ %.1, %bb.l ], [ 0, %bb.e ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.val98, i64 %indvars.iv
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !29 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split
  %i.bi = getelementptr i8, ptr %i.bg, i64 24
  %.val102 = load i64, ptr %i.bi, align 8
  %i.bj = and i64 %.val102, 7
  %.not116 = icmp eq i64 %i.bj, 2
  br i1 %.not116, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %calloc.i, i64 %indvars.iv
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !32
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !32
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !32
  %i.bq = add nsw i32 %.077121, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.split, %bb.j
  %.1 = phi i32 [ %.077121, %.lr.ph.split ], [ %i.bq, %bb.k ], [ %.077121, %bb.j ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count146
  br i1 %exitcond.not, label %Vec_PtrPush.exit, label %.lr.ph.split, !llvm.loop !67

Vec_PtrPush.exit:                                 ; preds = %bb.l, %bb.i, %bb.e, %bb.f, %Fra_SmlCountOnes.exit
  %.077.lcssa = phi i32 [ 0, %Fra_SmlCountOnes.exit ], [ %.1.us, %bb.i ], [ 0, %bb.f ], [ 0, %bb.e ], [ %.1, %bb.l ]
  %i.br = add i32 %i.am, %.077.lcssa
  %i.bs = sext i32 %i.br to i64
  %i.bt = shl nsw i64 %i.bs, 2
  %i.bu = tail call noalias ptr @malloc(i64 noundef %i.bt) #21 ; 2 uses
  %i.bv = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 5 uses
  %or.cond.i = icmp eq i32 %i.ak, 0
  %spec.store.select.i = select i1 %or.cond.i, i32 8, i32 %i.am ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 2 uses
  store i32 %spec.store.select.i, ptr %i.bv, align 8, !tbaa !74
  %i.bx = sext i32 %spec.store.select.i to i64
  %i.by = shl nsw i64 %i.bx, 3
  %i.bz = tail call noalias ptr @malloc(i64 noundef %i.by) #21 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !28
  store i32 1, ptr %i.bw, align 4, !tbaa !72
  store ptr %i.bu, ptr %i.bz, align 8, !tbaa !29
  %.not122 = icmp slt i32 %i.ak, 1
  br i1 %.not122, label %bb.q, label %.lr.ph125

.lr.ph125:                                        ; preds = %Vec_PtrPush.exit
  %i.cb = or disjoint i32 %i.al, 1
  %wide.trip.count156 = zext nneg i32 %i.cb to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph125, %Vec_PtrPush.exit112
  %indvars.iv151 = phi i64 [ 1, %.lr.ph125 ], [ %indvars.iv.next152, %Vec_PtrPush.exit112 ] ; 2 uses
  %indvars.iv149 = phi i64 [ 1, %.lr.ph125 ], [ %indvars.iv.next150, %Vec_PtrPush.exit112 ] ; 7 uses
  %storemerge131 = phi ptr [ %i.bz, %.lr.ph125 ], [ %storemerge132, %Vec_PtrPush.exit112 ] ; 3 uses
  %spec.select.sink.i109129 = phi i32 [ %spec.store.select.i, %.lr.ph125 ], [ %spec.select.sink.i109128, %Vec_PtrPush.exit112 ] ; 3 uses
  %.0124 = phi ptr [ %i.bu, %.lr.ph125 ], [ %i.ch, %Vec_PtrPush.exit112 ]
  %i.cc = getelementptr [4 x i8], ptr %calloc, i64 %indvars.iv151
  %i.cd = getelementptr i8, ptr %i.cc, i64 -4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !32
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr [4 x i8], ptr %.0124, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 4      ; 2 uses
  %i.ci = trunc nsw i64 %indvars.iv149 to i32
  %i.cj = icmp eq i32 %spec.select.sink.i109129, %i.ci
  br i1 %i.cj, label %bb.n, label %Vec_PtrPush.exit112

bb.n:                                             ; preds = %bb.m
  %i.ck = icmp samesign ult i64 %indvars.iv149, 16
  br i1 %i.ck, label %Vec_PtrPush.exit112.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = icmp samesign ult i64 %indvars.iv149, 1073741823
  %indvars.iv149.tr = trunc nsw i64 %indvars.iv149 to i32
  %i.cm = shl nsw i32 %indvars.iv149.tr, 1
  %spec.select.i105 = select i1 %i.cl, i32 %i.cm, i32 2147483647 ; 3 uses
  %2 = sext i32 %spec.select.i105 to i64
  %.not.i10.i106 = icmp samesign ult i64 %indvars.iv149, %2
  br i1 %.not.i10.i106, label %bb.p, label %Vec_PtrPush.exit112

bb.p:                                             ; preds = %bb.o
  %i.cn = zext nneg i32 %spec.select.i105 to i64
  %i.co = shl nuw nsw i64 %i.cn, 3
  br label %Vec_PtrPush.exit112.sink.split

Vec_PtrPush.exit112.sink.split:                   ; preds = %bb.n, %bb.p
  %.sink = phi i64 [ %i.co, %bb.p ], [ 128, %bb.n ]
  %spec.select.sink.i109128.ph = phi i32 [ %spec.select.i105, %bb.p ], [ 16, %bb.n ]
  %i.cp = tail call ptr @realloc(ptr noundef nonnull %storemerge131, i64 noundef %.sink) #22
  br label %Vec_PtrPush.exit112

Vec_PtrPush.exit112:                              ; preds = %Vec_PtrPush.exit112.sink.split, %bb.m, %bb.o
  %storemerge132 = phi ptr [ %storemerge131, %bb.m ], [ %storemerge131, %bb.o ], [ %i.cp, %Vec_PtrPush.exit112.sink.split ] ; 4 uses
  %spec.select.sink.i109128 = phi i32 [ %spec.select.sink.i109129, %bb.m ], [ %spec.select.sink.i109129, %bb.o ], [ %spec.select.sink.i109128.ph, %Vec_PtrPush.exit112.sink.split ] ; 2 uses
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %storemerge132, i64 %indvars.iv149
  store ptr %i.ch, ptr %i.cq, align 8, !tbaa !29
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond157.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count156
  br i1 %exitcond157.not, label %._crit_edge, label %bb.m, !llvm.loop !68

._crit_edge:                                      ; preds = %Vec_PtrPush.exit112
  %i.cr = trunc nsw i64 %indvars.iv.next150 to i32 ; 2 uses
  store i32 %i.cr, ptr %i.bw, align 4, !tbaa !72
  store i32 %spec.select.sink.i109128, ptr %i.bv, align 8
  store ptr %storemerge132, ptr %i.ca, align 8
  %.pre = load ptr, ptr %0, align 8, !tbaa !71
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre169 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !26 ; 2 uses
  %.phi.trans.insert170 = getelementptr i8, ptr %.pre169, i64 4
  %.val93133.pre = load i32, ptr %.phi.trans.insert170, align 4, !tbaa !72
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %Vec_PtrPush.exit
  %.val = phi i32 [ %i.cr, %._crit_edge ], [ 1, %Vec_PtrPush.exit ] ; 4 uses
  %.val95 = phi ptr [ %storemerge132, %._crit_edge ], [ %i.bz, %Vec_PtrPush.exit ] ; 4 uses
  %.val93.peel = phi i32 [ %.val93133.pre, %._crit_edge ], [ %.val14.val.i, %Vec_PtrPush.exit ] ; 3 uses
  %i.cs = phi ptr [ %.pre169, %._crit_edge ], [ %.val14.i, %Vec_PtrPush.exit ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %calloc, i8 0, i64 %i.ao, i1 false)
  %i.ct = getelementptr i8, ptr %i.cs, i64 4
  %i.cu = icmp sgt i32 %.val93.peel, 0
  br i1 %i.cu, label %bb.r, label %.critedge2.preheader

bb.r:                                             ; preds = %bb.q
  %i.cv = getelementptr i8, ptr %i.cs, i64 8
  %.val97 = load ptr, ptr %i.cv, align 8, !tbaa !28
  %.not85 = icmp eq i32 %1, 0
  %.not = icmp eq i32 %.val93.peel, 1
  br i1 %.not, label %.critedge2.preheader, label %.peel.next

.critedge2.preheader:                             ; preds = %bb.w, %bb.r, %bb.q
  %3 = icmp sgt i32 %.val, 0
  br i1 %3, label %.lr.ph138, label %.critedge4

.lr.ph138:                                        ; preds = %.critedge2.preheader
  %wide.trip.count165 = zext nneg i32 %.val to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count165, 1
  %4 = icmp eq i32 %.val, 1
  br i1 %4, label %.critedge2.epil.preheader, label %.lr.ph138.new

.lr.ph138.new:                                    ; preds = %.lr.ph138
  %unroll_iter = and i64 %wide.trip.count165, 2147483646
  br label %.critedge2

.peel.next:                                       ; preds = %bb.r, %bb.w
  %.val93175 = phi i32 [ %.val93, %bb.w ], [ %.val93.peel, %bb.r ] ; 3 uses
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %bb.w ], [ 1, %bb.r ] ; 4 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val97, i64 %indvars.iv158
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !29 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.w, label %bb.s

bb.s:                                             ; preds = %.peel.next
  %i.cz = getelementptr i8, ptr %i.cx, i64 24
  %.val103 = load i64, ptr %i.cz, align 8         ; 3 uses
  br i1 %.not85, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.da = and i64 %.val103, 7
  %.not114 = icmp eq i64 %i.da, 2
  br i1 %.not114, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.db = trunc i64 %.val103 to i32
  %i.dc = and i32 %i.db, 7
  %i.dd = add nsw i32 %i.dc, -5
  %narrow.i113 = icmp ult i32 %i.dd, 2
  %i.de = and i64 %.val103, 7
  %.not115 = icmp eq i64 %i.de, 2
  %or.cond119 = or i1 %.not115, %narrow.i113
  br i1 %or.cond119, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %calloc.i, i64 %indvars.iv158
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !32
  %i.dh = sext i32 %i.dg to i64                   ; 2 uses
  %i.di = getelementptr inbounds [8 x i8], ptr %.val95, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !29
  %i.dk = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.dh ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !32 ; 2 uses
  %i.dm = add nsw i32 %i.dl, 1
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !32
  %i.dn = sext i32 %i.dl to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.dn
  %i.dp = trunc nuw nsw i64 %indvars.iv158 to i32
  store i32 %i.dp, ptr %i.do, align 4, !tbaa !32
  %.val93.pre = load i32, ptr %i.ct, align 4, !tbaa !72
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %.peel.next, %bb.t
  %.val93 = phi i32 [ %.val93175, %bb.u ], [ %.val93.pre, %bb.v ], [ %.val93175, %.peel.next ], [ %.val93175, %bb.t ] ; 2 uses
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %i.dq = sext i32 %.val93 to i64
  %i.dr = icmp slt i64 %indvars.iv.next159, %i.dq
  br i1 %i.dr, label %.peel.next, label %.critedge2.preheader, !llvm.loop !69

.critedge2:                                       ; preds = %.critedge2, %.lr.ph138.new
  %indvars.iv162 = phi i64 [ 0, %.lr.ph138.new ], [ %indvars.iv.next163.1, %.critedge2 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph138.new ], [ %niter.next.1, %.critedge2 ]
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.val95, i64 %indvars.iv162
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !29
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %indvars.iv162 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !32 ; 2 uses
  %i.dw = add nsw i32 %i.dv, 1
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !32
  %i.dx = sext i32 %i.dv to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.dx
  store i32 0, ptr %i.dy, align 4, !tbaa !32
  %indvars.iv.next163 = or disjoint i64 %indvars.iv162, 1 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.val95, i64 %indvars.iv.next163
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !29
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %indvars.iv.next163 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !32 ; 2 uses
  %i.ed = add nsw i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !32
  %i.ee = sext i32 %i.ec to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.ee
  store i32 0, ptr %i.ef, align 4, !tbaa !32
  %indvars.iv.next163.1 = add nuw nsw i64 %indvars.iv162, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge4.loopexit.unr-lcssa, label %.critedge2, !llvm.loop !70

.critedge4.loopexit.unr-lcssa:                    ; preds = %.critedge2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge4, label %.critedge2.epil.preheader

.critedge2.epil.preheader:                        ; preds = %.critedge4.loopexit.unr-lcssa, %.lr.ph138
  %indvars.iv162.epil.init = phi i64 [ 0, %.lr.ph138 ], [ %indvars.iv.next163.1, %.critedge4.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod189 = trunc i32 %.val to i1
  tail call void @llvm.assume(i1 %lcmp.mod189)
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.val95, i64 %indvars.iv162.epil.init
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !29
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %indvars.iv162.epil.init ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !32 ; 2 uses
  %i.ek = add nsw i32 %i.ej, 1
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !32
  %i.el = sext i32 %i.ej to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.el
  store i32 0, ptr %i.em, align 4, !tbaa !32
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge2.epil.preheader, %.critedge4.loopexit.unr-lcssa, %.critedge2.preheader
  tail call void @free(ptr noundef %calloc) #23
  %.not84 = icmp eq ptr %calloc.i, null
  br i1 %.not84, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.critedge4
  tail call void @free(ptr noundef nonnull %calloc.i) #23
  br label %bb.y

bb.y:                                             ; preds = %.critedge4, %bb.x
  ret ptr %i.bv
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Fra_SmlSelectMaxCost(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %2, 1
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  %calloc = tail call ptr @calloc(i64 1, i64 %i.c) ; 8 uses
  %i.d = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.val43 = load i32, ptr %i.d, align 4, !tbaa !37 ; 4 uses
  %i.e = icmp sgt i32 %.val43, 0                  ; 2 uses
  br i1 %i.e, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %.val43 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.f = icmp ult i32 %.val43, 4
  br i1 %i.f, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod68 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod68)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil
  %i.h = load i32, ptr %i.g, align 4, !tbaa !32
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !32
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !32
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph.epil, !llvm.loop !75

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %i.m = icmp sgt i32 %2, 0
  br i1 %i.m, label %.lr.ph48, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !32
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !32
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !32
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !32
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !32
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !32
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !32
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !32
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !32
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !32
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !32
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !32
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !76

.lr.ph48:                                         ; preds = %.preheader, %bb.b
  %.047 = phi i32 [ %i.as, %bb.b ], [ %2, %.preheader ] ; 4 uses
  %.03646 = phi i32 [ %i.ar, %bb.b ], [ 0, %.preheader ]
  %i.ao = zext nneg i32 %.047 to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !32
  %i.ar = add nsw i32 %i.aq, %.03646              ; 2 uses
  %.not = icmp slt i32 %i.ar, %3
  br i1 %.not, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph48
  %i.as = add nsw i32 %.047, -1
  %i.at = icmp sgt i32 %.047, 1
  br i1 %i.at, label %.lr.ph48, label %._crit_edge, !llvm.loop !77

._crit_edge:                                      ; preds = %bb.b, %.lr.ph48, %.preheader
  %.0.lcssa = phi i32 [ %2, %.preheader ], [ %.047, %.lr.ph48 ], [ 0, %bb.b ] ; 2 uses
  %i.au = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 5 uses
  %i.av = add i32 %3, -1
  %or.cond.i = icmp ult i32 %i.av, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %3 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 2 uses
  store i32 0, ptr %i.aw, align 4, !tbaa !37
  store i32 %spec.store.select.i, ptr %i.au, align 8, !tbaa !38
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.ax = sext i32 %spec.store.select.i to i64
  %i.ay = shl nsw i64 %i.ax, 2
  %i.az = tail call noalias ptr @malloc(i64 noundef %i.ay) #21
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %._crit_edge, %bb.c
  %i.ba = phi ptr [ %i.az, %bb.c ], [ null, %._crit_edge ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !39
  br i1 %i.e, label %.lr.ph53, label %.critedge

.lr.ph53:                                         ; preds = %Vec_IntAlloc.exit
  %i.bc = getelementptr i8, ptr %0, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph53, %bb.n
  %.val4258 = phi i32 [ %.val43, %.lr.ph53 ], [ %.val42, %bb.n ]
  %i.bd = phi ptr [ %i.ba, %.lr.ph53 ], [ %i.cc, %bb.n ] ; 3 uses
  %i.be = phi ptr [ %i.ba, %.lr.ph53 ], [ %i.cd, %bb.n ] ; 5 uses
  %i.bf = phi i32 [ %spec.store.select.i, %.lr.ph53 ], [ %i.ce, %bb.n ] ; 8 uses
  %i.bg = phi i32 [ 0, %.lr.ph53 ], [ %i.cf, %bb.n ] ; 4 uses
  %indvars.iv55 = phi i64 [ 0, %.lr.ph53 ], [ %indvars.iv.next56, %bb.n ] ; 3 uses
  %.val44 = load ptr, ptr %i.bc, align 8, !tbaa !39
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.val44, i64 %indvars.iv55
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !32
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv55
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !32
  %i.bl = icmp slt i32 %i.bk, %.0.lcssa
  br i1 %i.bl, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bm = icmp eq i32 %i.bg, %i.bf
  br i1 %i.bm, label %bb.f, label %Vec_IntPush.exit

bb.f:                                             ; preds = %bb.e
  %i.bn = icmp slt i32 %i.bf, 16
  br i1 %i.bn, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.not9.i.i = icmp eq ptr %i.be, null
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bo = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.be, i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i

bb.i:                                             ; preds = %bb.g
  %i.bp = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.f
  %i.bq = icmp samesign ult i32 %i.bf, 1073741823
  %i.br = shl nuw nsw i32 %i.bf, 1
  %spec.select.i = select i1 %i.bq, i32 %i.br, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.bf, %spec.select.i
  br i1 %.not.i9.i, label %bb.k, label %Vec_IntPush.exit
end_hunk_0
