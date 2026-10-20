Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/fraImp?download=true
inline.NumInlined: 149
inline.NumDeleted: 39
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Fra_SmlSortUsingOnes:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %wide.trip.count.i = zext nneg i32 %.val14.val.i to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 4 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.val15.i, i64 %indvars.iv.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !29
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.i, align 4, !tbaa !30   ; 3 uses
  %i.o = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.p = mul nsw i32 %i.n, %i.o
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.j, align 8, !tbaa !31   ; 2 uses
  %i.t = icmp slt i32 %i.s, %i.n
  br i1 %i.t, label %.lr.ph.preheader.i.i, label %Fra_SmlCountOnesOne.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.u = sext i32 %i.s to i64                     ; 4 uses
  %wide.trip.count.i.i = sext i32 %i.n to i64     ; 2 uses
  %i.v = sub nsw i64 %wide.trip.count.i.i, %i.u   ; 3 uses
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
  %smax = tail call i32 @llvm.smax.i32(i32 %i.cb, i32 2)
  %wide.trip.count156 = zext nneg i32 %smax to i64
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
  %i.cn = sext i32 %spec.select.i105 to i64
  %.not.i10.i106 = icmp samesign ult i64 %indvars.iv149, %i.cn
  br i1 %.not.i10.i106, label %bb.p, label %Vec_PtrPush.exit112

bb.p:                                             ; preds = %bb.o
  %i.co = zext nneg i32 %spec.select.i105 to i64
  %i.cp = shl nuw nsw i64 %i.co, 3
  br label %Vec_PtrPush.exit112.sink.split

Vec_PtrPush.exit112.sink.split:                   ; preds = %bb.n, %bb.p
  %.sink = phi i64 [ %i.cp, %bb.p ], [ 128, %bb.n ]
  %spec.select.sink.i109128.ph = phi i32 [ %spec.select.i105, %bb.p ], [ 16, %bb.n ]
  %i.cq = tail call ptr @realloc(ptr noundef nonnull %storemerge131, i64 noundef %.sink) #22
  br label %Vec_PtrPush.exit112

Vec_PtrPush.exit112:                              ; preds = %Vec_PtrPush.exit112.sink.split, %bb.m, %bb.o
  %storemerge132 = phi ptr [ %storemerge131, %bb.m ], [ %storemerge131, %bb.o ], [ %i.cq, %Vec_PtrPush.exit112.sink.split ] ; 4 uses
  %spec.select.sink.i109128 = phi i32 [ %spec.select.sink.i109129, %bb.m ], [ %spec.select.sink.i109129, %bb.o ], [ %spec.select.sink.i109128.ph, %Vec_PtrPush.exit112.sink.split ] ; 2 uses
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %storemerge132, i64 %indvars.iv149
  store ptr %i.ch, ptr %i.cr, align 8, !tbaa !29
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond157.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count156
  br i1 %exitcond157.not, label %._crit_edge, label %bb.m, !llvm.loop !68

._crit_edge:                                      ; preds = %Vec_PtrPush.exit112
  %i.cs = trunc nsw i64 %indvars.iv.next150 to i32 ; 2 uses
  store i32 %i.cs, ptr %i.bw, align 4, !tbaa !72
  store i32 %spec.select.sink.i109128, ptr %i.bv, align 8
  store ptr %storemerge132, ptr %i.ca, align 8
  %.pre = load ptr, ptr %0, align 8, !tbaa !71
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre169 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !26 ; 2 uses
  %.phi.trans.insert170 = getelementptr i8, ptr %.pre169, i64 4
  %.val93133.pre = load i32, ptr %.phi.trans.insert170, align 4, !tbaa !72
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %Vec_PtrPush.exit
  %.val = phi i32 [ %i.cs, %._crit_edge ], [ 1, %Vec_PtrPush.exit ] ; 4 uses
  %.val95 = phi ptr [ %storemerge132, %._crit_edge ], [ %i.bz, %Vec_PtrPush.exit ] ; 4 uses
  %.val93.peel = phi i32 [ %.val93133.pre, %._crit_edge ], [ %.val14.val.i, %Vec_PtrPush.exit ] ; 3 uses
  %i.ct = phi ptr [ %.pre169, %._crit_edge ], [ %.val14.i, %Vec_PtrPush.exit ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %calloc, i8 0, i64 %i.ao, i1 false)
  %i.cu = getelementptr i8, ptr %i.ct, i64 4
  %i.cv = icmp sgt i32 %.val93.peel, 0
  br i1 %i.cv, label %bb.r, label %.critedge2.preheader

bb.r:                                             ; preds = %bb.q
  %i.cw = getelementptr i8, ptr %i.ct, i64 8
  %.val97 = load ptr, ptr %i.cw, align 8, !tbaa !28
  %.not85 = icmp eq i32 %1, 0
  %.not = icmp eq i32 %.val93.peel, 1
  br i1 %.not, label %.critedge2.preheader, label %.peel.next

.critedge2.preheader:                             ; preds = %bb.w, %bb.r, %bb.q
  %i.cx = icmp sgt i32 %.val, 0
  br i1 %i.cx, label %.lr.ph138, label %.critedge4

.lr.ph138:                                        ; preds = %.critedge2.preheader
  %wide.trip.count165 = zext nneg i32 %.val to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count165, 1
  %i.cy = icmp eq i32 %.val, 1
  br i1 %i.cy, label %.critedge2.epil.preheader, label %.lr.ph138.new

.lr.ph138.new:                                    ; preds = %.lr.ph138
  %unroll_iter = and i64 %wide.trip.count165, 2147483646
  br label %.critedge2

.peel.next:                                       ; preds = %bb.r, %bb.w
  %.val93175 = phi i32 [ %.val93, %bb.w ], [ %.val93.peel, %bb.r ] ; 3 uses
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %bb.w ], [ 1, %bb.r ] ; 4 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.val97, i64 %indvars.iv158
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !29 ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.w, label %bb.s

bb.s:                                             ; preds = %.peel.next
  %i.dc = getelementptr i8, ptr %i.da, i64 24
  %.val103 = load i64, ptr %i.dc, align 8         ; 3 uses
  br i1 %.not85, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dd = and i64 %.val103, 7
  %.not114 = icmp eq i64 %i.dd, 2
  br i1 %.not114, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.de = trunc i64 %.val103 to i32
  %i.df = and i32 %i.de, 7
  %i.dg = add nsw i32 %i.df, -5
  %narrow.i113 = icmp ult i32 %i.dg, 2
  %i.dh = and i64 %.val103, 7
  %.not115 = icmp eq i64 %i.dh, 2
  %or.cond119 = or i1 %.not115, %narrow.i113
  br i1 %or.cond119, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %calloc.i, i64 %indvars.iv158
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !32
  %i.dk = sext i32 %i.dj to i64                   ; 2 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %.val95, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !29
  %i.dn = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.dk ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !32 ; 2 uses
  %i.dp = add nsw i32 %i.do, 1
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !32
  %i.dq = sext i32 %i.do to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.dq
  %i.ds = trunc nuw nsw i64 %indvars.iv158 to i32
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !32
  %.val93.pre = load i32, ptr %i.cu, align 4, !tbaa !72
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %.peel.next, %bb.t
  %.val93 = phi i32 [ %.val93175, %bb.u ], [ %.val93.pre, %bb.v ], [ %.val93175, %.peel.next ], [ %.val93175, %bb.t ] ; 2 uses
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %i.dt = sext i32 %.val93 to i64
  %i.du = icmp slt i64 %indvars.iv.next159, %i.dt
  br i1 %i.du, label %.peel.next, label %.critedge2.preheader, !llvm.loop !69

.critedge2:                                       ; preds = %.critedge2, %.lr.ph138.new
  %indvars.iv162 = phi i64 [ 0, %.lr.ph138.new ], [ %indvars.iv.next163.1, %.critedge2 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph138.new ], [ %niter.next.1, %.critedge2 ]
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.val95, i64 %indvars.iv162
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !29
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %indvars.iv162 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !32 ; 2 uses
  %i.dz = add nsw i32 %i.dy, 1
  store i32 %i.dz, ptr %i.dx, align 4, !tbaa !32
  %i.ea = sext i32 %i.dy to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.ea
  store i32 0, ptr %i.eb, align 4, !tbaa !32
  %indvars.iv.next163 = or disjoint i64 %indvars.iv162, 1 ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.val95, i64 %indvars.iv.next163
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !29
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %indvars.iv.next163 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !32 ; 2 uses
  %i.eg = add nsw i32 %i.ef, 1
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !32
  %i.eh = sext i32 %i.ef to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.eh
  store i32 0, ptr %i.ei, align 4, !tbaa !32
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
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.val95, i64 %indvars.iv162.epil.init
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !29
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %indvars.iv162.epil.init ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !32 ; 2 uses
  %i.en = add nsw i32 %i.em, 1
  store i32 %i.en, ptr %i.el, align 4, !tbaa !32
  %i.eo = sext i32 %i.em to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.eo
  store i32 0, ptr %i.ep, align 4, !tbaa !32
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge2.epil.preheader, %.critedge4.loopexit.unr-lcssa, %.critedge2.preheader
  tail call void @free(ptr noundef %calloc) #23
  %.not84 = icmp eq ptr %calloc.i, null
  br i1 %.not84, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.critedge4
  tail call void @free(ptr noundef nonnull %calloc.i) #23
end_hunk_0
