Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaUtil?download=true
inline.NumInlined: 1687
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 42
begin_hunk_0_@Gia_ManSumTotalOfSupportSizes:bb.a
  %i.e = tail call noalias ptr @calloc(i64 noundef %i.d, i64 noundef 16) #42
  br label %Vec_WecStart.exit

Vec_WecStart.exit:                                ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ] ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.h, align 8, !tbaa !72
  store i32 %.val, ptr %i.g, align 4, !tbaa !90
  %i.i = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %.val4660 = load ptr, ptr %i.i, align 8, !tbaa !60 ; 2 uses
  %i.j = getelementptr i8, ptr %.val4660, i64 4
  %.val46.val61 = load i32, ptr %i.j, align 4, !tbaa !61
  %i.k = icmp sgt i32 %.val46.val61, 0
  br i1 %i.k, label %.lr.ph, label %.preheader

.preheader.loopexit:                              ; preds = %Vec_IntPush.exit
  %.pre83 = load i32, ptr %i.a, align 8, !tbaa !51
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %Vec_WecStart.exit
  %i.l = phi i32 [ %.pre83, %.preheader.loopexit ], [ %.val, %Vec_WecStart.exit ] ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.n = icmp sgt i32 %i.l, 0
  br i1 %i.n, label %.lr.ph64, label %.critedge

.lr.ph:                                           ; preds = %Vec_WecStart.exit, %Vec_IntPush.exit
  %.val4681 = phi ptr [ %.val46, %Vec_IntPush.exit ], [ %.val4660, %Vec_WecStart.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_IntPush.exit ], [ 0, %Vec_WecStart.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv.next ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !61   ; 7 uses
  %i.r = load i32, ptr %i.o, align 8, !tbaa !64
  %i.s = icmp eq i32 %i.q, %i.r
  br i1 %i.s, label %bb.c, label %Vec_IntPush.exit

bb.c:                                             ; preds = %.lr.ph
  %i.t = icmp slt i32 %i.q, 16
  br i1 %i.t, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !59   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.v, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.v, i64 noundef 64) #41
  br label %Vec_IntGrow.exit.i

bb.f:                                             ; preds = %bb.d
  %i.x = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #40
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.f, %bb.e
  %i.y = phi ptr [ %i.w, %bb.e ], [ %i.x, %bb.f ]
  store ptr %i.y, ptr %i.u, align 8, !tbaa !59
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.z = icmp samesign ult i32 %i.q, 1073741823
  %i.aa = shl nuw nsw i32 %i.q, 1
  %spec.select.i = select i1 %i.z, i32 %i.aa, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.q, %spec.select.i
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !59 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ac, null
  %i.ad = zext nneg i32 %spec.select.i to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = tail call ptr @realloc(ptr noundef nonnull %i.ac, i64 noundef %i.ae) #41
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ag = tail call noalias ptr @malloc(i64 noundef %i.ae) #40
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ah = phi ptr [ %i.af, %bb.i ], [ %i.ag, %bb.j ]
  store ptr %i.ah, ptr %i.ab, align 8, !tbaa !59
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.k, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.k ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.o, align 8, !tbaa !64
  %.pre = load i32, ptr %i.p, align 4, !tbaa !61
  %.val46.pre = load ptr, ptr %i.i, align 8, !tbaa !60
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.lr.ph, %bb.g, %Vec_IntGrow.exit11.sink.split.i
  %.val46 = phi ptr [ %.val4681, %.lr.ph ], [ %.val4681, %bb.g ], [ %.val46.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ai = phi i32 [ %i.q, %.lr.ph ], [ %i.q, %bb.g ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !59
  %i.al = add nsw i32 %i.ai, 1
  store i32 %i.al, ptr %i.p, align 4, !tbaa !61
  %i.am = sext i32 %i.ai to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.am
  %i.ao = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !20
  %i.ap = getelementptr i8, ptr %.val46, i64 4
  %.val46.val = load i32, ptr %i.ap, align 4, !tbaa !61
  %i.aq = sext i32 %.val46.val to i64
  %i.ar = icmp slt i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !235

.lr.ph64:                                         ; preds = %.preheader, %bb.w
  %i.as = phi i32 [ %i.ef, %bb.w ], [ %i.l, %.preheader ]
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %bb.w ], [ 0, %.preheader ] ; 5 uses
  %.val38 = load ptr, ptr %i.m, align 8, !tbaa !54 ; 2 uses
  %.not = icmp eq ptr %.val38, null
  br i1 %.not, label %.critedge, label %bb.l

bb.l:                                             ; preds = %.lr.ph64
  %i.at = getelementptr inbounds nuw [12 x i8], ptr %.val38, i64 %indvars.iv74
  %.val39 = load i64, ptr %i.at, align 4          ; 4 uses
  %i.au = and i64 %.val39, 2147483648
  %.not.i = icmp ne i64 %i.au, 0
  %i.av = and i64 %.val39, 536870911
  %i.aw = icmp eq i64 %i.av, 536870911
  %narrow.i.not = or i1 %.not.i, %i.aw
  br i1 %narrow.i.not, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = and i64 %.val39, 536870911
  %i.ay = sub nsw i64 %indvars.iv74, %i.ax
  %sext = shl i64 %i.ay, 32
  %i.az = ashr exact i64 %sext, 28
  %i.ba = getelementptr inbounds i8, ptr %i.f, i64 %i.az ; 2 uses
  %i.bb = lshr i64 %.val39, 32
  %i.bc = and i64 %i.bb, 536870911
  %i.bd = sub nsw i64 %indvars.iv74, %i.bc
  %sext97 = shl i64 %i.bd, 32
  %i.be = ashr exact i64 %sext97, 28
  %i.bf = getelementptr inbounds i8, ptr %i.f, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv74 ; 4 uses
  %i.bh = getelementptr i8, ptr %i.ba, i64 4      ; 2 uses
  %.val6.i = load i32, ptr %i.bh, align 4, !tbaa !61 ; 3 uses
  %i.bi = getelementptr i8, ptr %i.bf, i64 4      ; 2 uses
  %.val.i = load i32, ptr %i.bi, align 4, !tbaa !61 ; 3 uses
  %i.bj = add nsw i32 %.val.i, %.val6.i           ; 3 uses
  %i.bk = load i32, ptr %i.bg, align 8, !tbaa !64
  %.not.i.i53 = icmp slt i32 %i.bk, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !59 ; 3 uses
  br i1 %.not.i.i53, label %bb.n, label %Vec_IntGrow.exit.i54

bb.n:                                             ; preds = %bb.m
  %.not9.i.i55 = icmp eq ptr %i.bm, null
  %i.bn = sext i32 %i.bj to i64
  %i.bo = shl nsw i64 %i.bn, 2                    ; 2 uses
  br i1 %.not9.i.i55, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = tail call ptr @realloc(ptr noundef nonnull %i.bm, i64 noundef %i.bo) #41
  %.val7.pre.pre.i = load i32, ptr %i.bh, align 4, !tbaa !61
  %.val9.pre.pre.i = load i32, ptr %i.bi, align 4, !tbaa !61
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bq = tail call noalias ptr @malloc(i64 noundef %i.bo) #40
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.val9.pre.i = phi i32 [ %.val9.pre.pre.i, %bb.o ], [ %.val.i, %bb.p ]
  %.val7.pre.i = phi i32 [ %.val7.pre.pre.i, %bb.o ], [ %.val6.i, %bb.p ]
  %i.br = phi ptr [ %i.bp, %bb.o ], [ %i.bq, %bb.p ] ; 2 uses
  store ptr %i.br, ptr %i.bl, align 8, !tbaa !59
  store i32 %i.bj, ptr %i.bg, align 8, !tbaa !64
  br label %Vec_IntGrow.exit.i54

Vec_IntGrow.exit.i54:                             ; preds = %bb.q, %bb.m
  %i.bs = phi ptr [ %i.br, %bb.q ], [ %i.bm, %bb.m ] ; 3 uses
  %.val9.i = phi i32 [ %.val9.pre.i, %bb.q ], [ %.val.i, %bb.m ] ; 2 uses
  %.val7.i = phi i32 [ %.val7.pre.i, %bb.q ], [ %.val6.i, %bb.m ] ; 2 uses
  %i.bt = getelementptr i8, ptr %i.ba, i64 8
  %.val8.i = load ptr, ptr %i.bt, align 8, !tbaa !59 ; 4 uses
  %i.bu = getelementptr i8, ptr %i.bf, i64 8
  %.val10.i = load ptr, ptr %i.bu, align 8, !tbaa !59 ; 4 uses
  %i.bv = sext i32 %.val7.i to i64
  %.idx.i.i = shl nsw i64 %i.bv, 2                ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %.val8.i, i64 %.idx.i.i ; 3 uses
  %i.bx = sext i32 %.val9.i to i64
  %.idx19.i.i = shl nsw i64 %i.bx, 2              ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %.val10.i, i64 %.idx19.i.i ; 3 uses
  %i.bz = icmp sgt i32 %.val7.i, 0
  %i.ca = icmp sgt i32 %.val9.i, 0
  %i.cb = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %i.cb, label %.lr.ph.i.i, label %.preheader5.i.i

.preheader5.i.i:                                  ; preds = %bb.v, %Vec_IntGrow.exit.i54
  %.036.lcssa.i.i = phi ptr [ %i.bs, %Vec_IntGrow.exit.i54 ], [ %.137.i.i, %bb.v ] ; 5 uses
  %.033.lcssa.i.i = phi ptr [ %.val8.i, %Vec_IntGrow.exit.i54 ], [ %.134.i.i, %bb.v ] ; 5 uses
  %.0.lcssa.i.i = phi ptr [ %.val10.i, %Vec_IntGrow.exit.i54 ], [ %.1.i.i, %bb.v ] ; 5 uses
  %.0.lcssa.i.i103 = ptrtoaddr ptr %.0.lcssa.i.i to i64 ; 3 uses
  %i.cc = icmp ult ptr %.033.lcssa.i.i, %i.bw
  br i1 %i.cc, label %.lr.ph13.i.i.preheader, label %.preheader.i.i

.lr.ph13.i.i.preheader:                           ; preds = %.preheader5.i.i
  %.033.lcssa.i.i109 = ptrtoaddr ptr %.033.lcssa.i.i to i64 ; 3 uses
  %.036.lcssa.i.i108 = ptrtoaddr ptr %.036.lcssa.i.i to i64
  %i.cd = ptrtoaddr ptr %.val8.i to i64
  %1 = add i64 %.idx.i.i, %i.cd
  %i.ce = add i64 %.033.lcssa.i.i109, 4
  %2 = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.ce)
  %i.cf = xor i64 %.033.lcssa.i.i109, -1
  %i.cg = add i64 %2, %i.cf                       ; 2 uses
  %i.ch = lshr i64 %i.cg, 2
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check112 = icmp ult i64 %i.cg, 28
  %i.cj = sub i64 %.033.lcssa.i.i109, %.036.lcssa.i.i108
  %diff.check110 = icmp ugt i64 %i.cj, -32
  %or.cond = select i1 %min.iters.check112, i1 true, i1 %diff.check110
  br i1 %or.cond, label %.lr.ph13.i.i.preheader128, label %vector.ph113

vector.ph113:                                     ; preds = %.lr.ph13.i.i.preheader
  %n.vec114 = and i64 %i.ci, 9223372036854775800  ; 3 uses
  %i.ck = shl i64 %n.vec114, 2                    ; 2 uses
  %i.cl = getelementptr i8, ptr %.033.lcssa.i.i, i64 %i.ck
  %i.cm = getelementptr i8, ptr %.036.lcssa.i.i, i64 %i.ck ; 2 uses
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph113
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next121, %vector.body115 ] ; 2 uses
  %i.cn = shl i64 %index116, 2                    ; 2 uses
  %next.gep117 = getelementptr i8, ptr %.033.lcssa.i.i, i64 %i.cn ; 2 uses
  %next.gep118 = getelementptr i8, ptr %.036.lcssa.i.i, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep117, i64 16
  %wide.load119 = load <4 x i32>, ptr %next.gep117, align 4, !tbaa !20
  %wide.load120 = load <4 x i32>, ptr %i.co, align 4, !tbaa !20
  %i.cp = getelementptr i8, ptr %next.gep118, i64 16
  store <4 x i32> %wide.load119, ptr %next.gep118, align 4, !tbaa !20
  store <4 x i32> %wide.load120, ptr %i.cp, align 4, !tbaa !20
  %index.next121 = add nuw i64 %index116, 8       ; 2 uses
  %i.cq = icmp eq i64 %index.next121, %n.vec114
  br i1 %i.cq, label %middle.block122, label %vector.body115, !llvm.loop !236

middle.block122:                                  ; preds = %vector.body115
  %cmp.n123 = icmp eq i64 %i.ci, %n.vec114
  br i1 %cmp.n123, label %.preheader.i.i, label %.lr.ph13.i.i.preheader128

.lr.ph13.i.i.preheader128:                        ; preds = %.lr.ph13.i.i.preheader, %middle.block122
  %.23512.i.i.ph = phi ptr [ %.033.lcssa.i.i, %.lr.ph13.i.i.preheader ], [ %i.cl, %middle.block122 ]
  %.23811.i.i.ph = phi ptr [ %.036.lcssa.i.i, %.lr.ph13.i.i.preheader ], [ %i.cm, %middle.block122 ]
  br label %.lr.ph13.i.i

.lr.ph.i.i:                                       ; preds = %Vec_IntGrow.exit.i54, %bb.v
  %.08.i.i = phi ptr [ %.1.i.i, %bb.v ], [ %.val10.i, %Vec_IntGrow.exit.i54 ] ; 4 uses
  %.0337.i.i = phi ptr [ %.134.i.i, %bb.v ], [ %.val8.i, %Vec_IntGrow.exit.i54 ] ; 4 uses
  %.0366.i.i = phi ptr [ %.137.i.i, %bb.v ], [ %i.bs, %Vec_IntGrow.exit.i54 ] ; 4 uses
  %i.cr = load i32, ptr %.0337.i.i, align 4, !tbaa !20 ; 4 uses
  %i.cs = load i32, ptr %.08.i.i, align 4, !tbaa !20 ; 3 uses
  %i.ct = icmp eq i32 %i.cr, %i.cs
  br i1 %i.ct, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.0337.i.i, i64 4
  store i32 %i.cr, ptr %.0366.i.i, align 4, !tbaa !20
  %i.cv = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  br label %bb.v

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.cw = icmp slt i32 %i.cr, %i.cs
  br i1 %i.cw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cx = getelementptr inbounds nuw i8, ptr %.0337.i.i, i64 4
  store i32 %i.cr, ptr %.0366.i.i, align 4, !tbaa !20
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.cy = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i32 %i.cs, ptr %.0366.i.i, align 4, !tbaa !20
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.r
  %.134.i.i = phi ptr [ %i.cu, %bb.r ], [ %i.cx, %bb.t ], [ %.0337.i.i, %bb.u ] ; 3 uses
  %.1.i.i = phi ptr [ %i.cv, %bb.r ], [ %.08.i.i, %bb.t ], [ %i.cy, %bb.u ] ; 3 uses
  %.137.i.i = getelementptr inbounds nuw i8, ptr %.0366.i.i, i64 4 ; 2 uses
  %i.cz = icmp ult ptr %.134.i.i, %i.bw
  %i.da = icmp ult ptr %.1.i.i, %i.by
  %i.db = select i1 %i.cz, i1 %i.da, i1 false
  br i1 %i.db, label %.lr.ph.i.i, label %.preheader5.i.i, !llvm.loop !8

.preheader.i.i:                                   ; preds = %.lr.ph13.i.i, %middle.block122, %.preheader5.i.i
  %.238.lcssa.i.i = phi ptr [ %.036.lcssa.i.i, %.preheader5.i.i ], [ %i.cm, %middle.block122 ], [ %i.dt, %.lr.ph13.i.i ] ; 5 uses
  %i.dc = icmp ult ptr %.0.lcssa.i.i, %i.by
  br i1 %i.dc, label %.lr.ph17.i.i.preheader, label %Vec_IntTwoMerge2.exit

.lr.ph17.i.i.preheader:                           ; preds = %.preheader.i.i
  %.238.lcssa.i.i102 = ptrtoaddr ptr %.238.lcssa.i.i to i64
  %i.dd = ptrtoaddr ptr %.val10.i to i64
  %3 = add i64 %.idx19.i.i, %i.dd
  %i.de = add i64 %.0.lcssa.i.i103, 4
  %4 = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.de)
  %i.df = xor i64 %.0.lcssa.i.i103, -1
  %i.dg = add i64 %4, %i.df                       ; 2 uses
  %i.dh = lshr i64 %i.dg, 2
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dg, 28
  %i.dj = sub i64 %.0.lcssa.i.i103, %.238.lcssa.i.i102
  %diff.check = icmp ugt i64 %i.dj, -32
  %or.cond126 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond126, label %.lr.ph17.i.i.preheader127, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph17.i.i.preheader
  %n.vec = and i64 %i.di, 9223372036854775800     ; 3 uses
  %i.dk = shl i64 %n.vec, 2                       ; 2 uses
  %i.dl = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.dk
  %i.dm = getelementptr i8, ptr %.238.lcssa.i.i, i64 %i.dk ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dn = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.dn ; 2 uses
  %next.gep104 = getelementptr i8, ptr %.238.lcssa.i.i, i64 %i.dn ; 2 uses
  %i.do = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !20
  %wide.load105 = load <4 x i32>, ptr %i.do, align 4, !tbaa !20
  %i.dp = getelementptr i8, ptr %next.gep104, i64 16
  store <4 x i32> %wide.load, ptr %next.gep104, align 4, !tbaa !20
  store <4 x i32> %wide.load105, ptr %i.dp, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !237

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.di, %n.vec
  br i1 %cmp.n, label %Vec_IntTwoMerge2.exit, label %.lr.ph17.i.i.preheader127

.lr.ph17.i.i.preheader127:                        ; preds = %.lr.ph17.i.i.preheader, %middle.block
  %.216.i.i.ph = phi ptr [ %.0.lcssa.i.i, %.lr.ph17.i.i.preheader ], [ %i.dl, %middle.block ]
  %.315.i.i.ph = phi ptr [ %.238.lcssa.i.i, %.lr.ph17.i.i.preheader ], [ %i.dm, %middle.block ]
  br label %.lr.ph17.i.i

.lr.ph13.i.i:                                     ; preds = %.lr.ph13.i.i.preheader128, %.lr.ph13.i.i
  %.23512.i.i = phi ptr [ %i.dr, %.lr.ph13.i.i ], [ %.23512.i.i.ph, %.lr.ph13.i.i.preheader128 ] ; 2 uses
  %.23811.i.i = phi ptr [ %i.dt, %.lr.ph13.i.i ], [ %.23811.i.i.ph, %.lr.ph13.i.i.preheader128 ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.23512.i.i, i64 4 ; 2 uses
  %i.ds = load i32, ptr %.23512.i.i, align 4, !tbaa !20
  %i.dt = getelementptr inbounds nuw i8, ptr %.23811.i.i, i64 4 ; 2 uses
  store i32 %i.ds, ptr %.23811.i.i, align 4, !tbaa !20
  %i.du = icmp ult ptr %i.dr, %i.bw
  br i1 %i.du, label %.lr.ph13.i.i, label %.preheader.i.i, !llvm.loop !238

.lr.ph17.i.i:                                     ; preds = %.lr.ph17.i.i.preheader127, %.lr.ph17.i.i
  %.216.i.i = phi ptr [ %i.dv, %.lr.ph17.i.i ], [ %.216.i.i.ph, %.lr.ph17.i.i.preheader127 ] ; 2 uses
  %.315.i.i = phi ptr [ %i.dx, %.lr.ph17.i.i ], [ %.315.i.i.ph, %.lr.ph17.i.i.preheader127 ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.216.i.i, i64 4 ; 2 uses
  %i.dw = load i32, ptr %.216.i.i, align 4, !tbaa !20
  %i.dx = getelementptr inbounds nuw i8, ptr %.315.i.i, i64 4 ; 2 uses
  store i32 %i.dw, ptr %.315.i.i, align 4, !tbaa !20
  %i.dy = icmp ult ptr %i.dv, %i.by
  br i1 %i.dy, label %.lr.ph17.i.i, label %Vec_IntTwoMerge2.exit, !llvm.loop !239

Vec_IntTwoMerge2.exit:                            ; preds = %.lr.ph17.i.i, %middle.block, %.preheader.i.i
  %.3.lcssa.i.i = phi ptr [ %.238.lcssa.i.i, %.preheader.i.i ], [ %i.dm, %middle.block ], [ %i.dx, %.lr.ph17.i.i ]
  %i.dz = ptrtoint ptr %.3.lcssa.i.i to i64
  %i.ea = ptrtoint ptr %i.bs to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = lshr exact i64 %i.eb, 2
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !61
  %.pre84 = load i32, ptr %i.a, align 8, !tbaa !51
  br label %bb.w

bb.w:                                             ; preds = %Vec_IntTwoMerge2.exit, %bb.l
  %i.ef = phi i32 [ %.pre84, %Vec_IntTwoMerge2.exit ], [ %i.as, %bb.l ] ; 2 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %i.eg = sext i32 %i.ef to i64
  %i.eh = icmp slt i64 %indvars.iv.next75, %i.eg
  br i1 %i.eh, label %.lr.ph64, label %.critedge, !llvm.loop !240

.critedge:                                        ; preds = %.lr.ph64, %bb.w, %.preheader
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !62 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 4
  %.val41 = load i32, ptr %i.ek, align 4, !tbaa !61 ; 4 uses
  %i.el = icmp sgt i32 %.val41, 0
  br i1 %i.el, label %.lr.ph68, label %.critedge2

.lr.ph68:                                         ; preds = %.critedge
  %.val42 = load ptr, ptr %i.m, align 8, !tbaa !54 ; 4 uses
  %.not36 = icmp eq ptr %.val42, null
  br i1 %.not36, label %.critedge2, label %.lr.ph68.split

.lr.ph68.split:                                   ; preds = %.lr.ph68
  %i.em = getelementptr i8, ptr %i.ej, i64 8
  %.val43.val = load ptr, ptr %i.em, align 8, !tbaa !59 ; 3 uses
  %wide.trip.count = zext nneg i32 %.val41 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.en = icmp eq i32 %.val41, 1
  br i1 %i.en, label %.epil.preheader, label %.lr.ph68.split.new

.lr.ph68.split.new:                               ; preds = %.lr.ph68.split
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph68.split.new
  %indvars.iv77 = phi i64 [ 0, %.lr.ph68.split.new ], [ %indvars.iv.next78.1, %bb.x ] ; 3 uses
  %.067 = phi i32 [ 0, %.lr.ph68.split.new ], [ %i.fk, %bb.x ]
  %niter = phi i64 [ 0, %.lr.ph68.split.new ], [ %niter.next.1, %bb.x ]
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.val43.val, i64 %indvars.iv77
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !20 ; 2 uses
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [12 x i8], ptr %.val42, i64 %i.eq
  %.val3.i = load i64, ptr %i.er, align 4
  %i.es = trunc i64 %.val3.i to i32
  %i.et = and i32 %i.es, 536870911
  %i.eu = sub nsw i32 %i.ep, %i.et
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.ev
  %i.ex = getelementptr i8, ptr %i.ew, i64 4
  %.val40 = load i32, ptr %i.ex, align 4, !tbaa !61
  %i.ey = add nsw i32 %.val40, %.067
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.val43.val, i64 %indvars.iv77
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !20 ; 2 uses
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [12 x i8], ptr %.val42, i64 %i.fc
  %.val3.i.1 = load i64, ptr %i.fd, align 4
  %i.fe = trunc i64 %.val3.i.1 to i32
  %i.ff = and i32 %i.fe, 536870911
  %i.fg = sub nsw i32 %i.fb, %i.ff
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.fh
  %i.fj = getelementptr i8, ptr %i.fi, i64 4
  %.val40.1 = load i32, ptr %i.fj, align 4, !tbaa !61
  %i.fk = add nsw i32 %.val40.1, %i.ey            ; 3 uses
  %indvars.iv.next78.1 = add nuw nsw i64 %indvars.iv77, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge2.loopexit.unr-lcssa, label %bb.x, !llvm.loop !241

.critedge2.loopexit.unr-lcssa:                    ; preds = %bb.x
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge2, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge2.loopexit.unr-lcssa, %.lr.ph68.split
  %indvars.iv77.epil.init = phi i64 [ 0, %.lr.ph68.split ], [ %indvars.iv.next78.1, %.critedge2.loopexit.unr-lcssa ]
  %.067.epil.init = phi i32 [ 0, %.lr.ph68.split ], [ %i.fk, %.critedge2.loopexit.unr-lcssa ]
  %lcmp.mod132 = trunc i32 %.val41 to i1
  tail call void @llvm.assume(i1 %lcmp.mod132)
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.val43.val, i64 %indvars.iv77.epil.init
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !20 ; 2 uses
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [12 x i8], ptr %.val42, i64 %i.fn
  %.val3.i.epil = load i64, ptr %i.fo, align 4
  %i.fp = trunc i64 %.val3.i.epil to i32
  %i.fq = and i32 %i.fp, 536870911
  %i.fr = sub nsw i32 %i.fm, %i.fq
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.ft, i64 4
  %.val40.epil = load i32, ptr %i.fu, align 4, !tbaa !61
  %i.fv = add nsw i32 %.val40.epil, %.067.epil.init
  br label %.critedge2

.critedge2:                                       ; preds = %.epil.preheader, %.critedge2.loopexit.unr-lcssa, %.lr.ph68, %.critedge
  %.0.lcssa = phi i32 [ 0, %.critedge ], [ 0, %.lr.ph68 ], [ %i.fk, %.critedge2.loopexit.unr-lcssa ], [ %i.fv, %.epil.preheader ]
  %i.fw = load i32, ptr %i.b, align 8, !tbaa !89  ; 2 uses
  %i.fx = icmp sgt i32 %i.fw, 0
  br i1 %i.fx, label %.lr.ph.i.i57.preheader, label %._crit_edge.i.i

.lr.ph.i.i57.preheader:                           ; preds = %.critedge2
  %i.fy = zext nneg i32 %i.fw to i64
  br label %.lr.ph.i.i57

.lr.ph.i.i57:                                     ; preds = %.lr.ph.i.i57.preheader, %bb.z
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.z ], [ 0, %.lr.ph.i.i57.preheader ] ; 2 uses
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !59 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.gb, null
  br i1 %.not15.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i57
  tail call void @free(ptr noundef nonnull %i.gb) #38
  store ptr null, ptr %i.ga, align 8, !tbaa !59
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.i.i57
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next.i.i, %i.fy
  br i1 %exitcond80.not, label %._crit_edge.thread.i.i, label %.lr.ph.i.i57, !llvm.loop !9

._crit_edge.i.i:                                  ; preds = %.critedge2
  %.not.i.i56 = icmp eq ptr %i.f, null
  br i1 %.not.i.i56, label %Vec_WecFree.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.z, %._crit_edge.i.i
  tail call void @free(ptr noundef nonnull %i.f) #38
  br label %Vec_WecFree.exit

Vec_WecFree.exit:                                 ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
end_hunk_0
begin_hunk_1_@Gia_ManComputeSupports:bb.a
  %i.n = tail call noalias ptr @calloc(i64 noundef %i.m, i64 noundef 16) #42
  br label %Vec_WecStart.exit58

Vec_WecStart.exit58:                              ; preds = %Vec_WecStart.exit, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ null, %Vec_WecStart.exit ] ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.o, ptr %i.q, align 8, !tbaa !72
  store i32 %.val, ptr %i.p, align 4, !tbaa !90
  %i.r = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %.val4768 = load ptr, ptr %i.r, align 8, !tbaa !60 ; 2 uses
  %i.s = getelementptr i8, ptr %.val4768, i64 4
  %.val47.val69 = load i32, ptr %i.s, align 4, !tbaa !61
  %i.t = icmp sgt i32 %.val47.val69, 0
  br i1 %i.t, label %.lr.ph, label %.preheader

.preheader.loopexit:                              ; preds = %Vec_IntPush.exit
  %.pre88 = load i32, ptr %i.j, align 8, !tbaa !51
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %Vec_WecStart.exit58
  %i.u = phi i32 [ %.pre88, %.preheader.loopexit ], [ %.val, %Vec_WecStart.exit58 ] ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.w = icmp sgt i32 %i.u, 0
  br i1 %i.w, label %.lr.ph72, label %.critedge

.lr.ph:                                           ; preds = %Vec_WecStart.exit58, %Vec_IntPush.exit
  %.val4786 = phi ptr [ %.val47, %Vec_IntPush.exit ], [ %.val4768, %Vec_WecStart.exit58 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_IntPush.exit ], [ 0, %Vec_WecStart.exit58 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv.next ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !61   ; 7 uses
  %i.aa = load i32, ptr %i.x, align 8, !tbaa !64
  %i.ab = icmp eq i32 %i.z, %i.aa
  br i1 %i.ab, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %.lr.ph
  %i.ac = icmp slt i32 %i.z, 16
  br i1 %i.ac, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !59 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ae, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ae, i64 noundef 64) #41
  br label %Vec_IntGrow.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ag = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #40
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.g, %bb.f
  %i.ah = phi ptr [ %i.af, %bb.f ], [ %i.ag, %bb.g ]
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !59
  br label %Vec_IntGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.ai = icmp samesign ult i32 %i.z, 1073741823
  %i.aj = shl nuw nsw i32 %i.z, 1
  %spec.select.i = select i1 %i.ai, i32 %i.aj, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.z, %spec.select.i
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !59 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.al, null
  %i.am = zext nneg i32 %spec.select.i to i64
  %i.an = shl nuw nsw i64 %i.am, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = tail call ptr @realloc(ptr noundef nonnull %i.al, i64 noundef %i.an) #41
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.an) #40
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aq = phi ptr [ %i.ao, %bb.j ], [ %i.ap, %bb.k ]
  store ptr %i.aq, ptr %i.ak, align 8, !tbaa !59
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.l, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.l ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.x, align 8, !tbaa !64
  %.pre = load i32, ptr %i.y, align 4, !tbaa !61
  %.val47.pre = load ptr, ptr %i.r, align 8, !tbaa !60
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.lr.ph, %bb.h, %Vec_IntGrow.exit11.sink.split.i
  %.val47 = phi ptr [ %.val4786, %.lr.ph ], [ %.val4786, %bb.h ], [ %.val47.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ar = phi i32 [ %i.z, %.lr.ph ], [ %i.z, %bb.h ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !59
  %i.au = add nsw i32 %i.ar, 1
  store i32 %i.au, ptr %i.y, align 4, !tbaa !61
  %i.av = sext i32 %i.ar to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.av
  %i.ax = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !20
  %i.ay = getelementptr i8, ptr %.val47, i64 4
  %.val47.val = load i32, ptr %i.ay, align 4, !tbaa !61
  %i.az = sext i32 %.val47.val to i64
  %i.ba = icmp slt i64 %indvars.iv.next, %i.az
  br i1 %i.ba, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !261

.lr.ph72:                                         ; preds = %.preheader, %bb.x
  %i.bb = phi i32 [ %i.eo, %bb.x ], [ %i.u, %.preheader ]
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %bb.x ], [ 0, %.preheader ] ; 5 uses
  %.val39 = load ptr, ptr %i.v, align 8, !tbaa !54 ; 2 uses
  %.not = icmp eq ptr %.val39, null
  br i1 %.not, label %.critedge, label %bb.m

bb.m:                                             ; preds = %.lr.ph72
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %.val39, i64 %indvars.iv80
  %.val40 = load i64, ptr %i.bc, align 4          ; 4 uses
  %i.bd = and i64 %.val40, 2147483648
  %.not.i = icmp ne i64 %i.bd, 0
  %i.be = and i64 %.val40, 536870911
  %i.bf = icmp eq i64 %i.be, 536870911
  %narrow.i.not = or i1 %.not.i, %i.bf
  br i1 %narrow.i.not, label %bb.x, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = and i64 %.val40, 536870911
  %i.bh = sub nsw i64 %indvars.iv80, %i.bg
  %sext = shl i64 %i.bh, 32
  %i.bi = ashr exact i64 %sext, 28
  %i.bj = getelementptr inbounds i8, ptr %i.o, i64 %i.bi ; 2 uses
  %i.bk = lshr i64 %.val40, 32
  %i.bl = and i64 %i.bk, 536870911
  %i.bm = sub nsw i64 %indvars.iv80, %i.bl
  %sext105 = shl i64 %i.bm, 32
  %i.bn = ashr exact i64 %sext105, 28
  %i.bo = getelementptr inbounds i8, ptr %i.o, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv80 ; 4 uses
  %i.bq = getelementptr i8, ptr %i.bj, i64 4      ; 2 uses
  %.val6.i = load i32, ptr %i.bq, align 4, !tbaa !61 ; 3 uses
  %i.br = getelementptr i8, ptr %i.bo, i64 4      ; 2 uses
  %.val.i = load i32, ptr %i.br, align 4, !tbaa !61 ; 3 uses
  %i.bs = add nsw i32 %.val.i, %.val6.i           ; 3 uses
  %i.bt = load i32, ptr %i.bp, align 8, !tbaa !64
  %.not.i.i59 = icmp slt i32 %i.bt, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !59 ; 3 uses
  br i1 %.not.i.i59, label %bb.o, label %Vec_IntGrow.exit.i60

bb.o:                                             ; preds = %bb.n
  %.not9.i.i61 = icmp eq ptr %i.bv, null
  %i.bw = sext i32 %i.bs to i64
  %i.bx = shl nsw i64 %i.bw, 2                    ; 2 uses
  br i1 %.not9.i.i61, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = tail call ptr @realloc(ptr noundef nonnull %i.bv, i64 noundef %i.bx) #41
  %.val7.pre.pre.i = load i32, ptr %i.bq, align 4, !tbaa !61
  %.val9.pre.pre.i = load i32, ptr %i.br, align 4, !tbaa !61
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bz = tail call noalias ptr @malloc(i64 noundef %i.bx) #40
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.val9.pre.i = phi i32 [ %.val9.pre.pre.i, %bb.p ], [ %.val.i, %bb.q ]
  %.val7.pre.i = phi i32 [ %.val7.pre.pre.i, %bb.p ], [ %.val6.i, %bb.q ]
  %i.ca = phi ptr [ %i.by, %bb.p ], [ %i.bz, %bb.q ] ; 2 uses
  store ptr %i.ca, ptr %i.bu, align 8, !tbaa !59
  store i32 %i.bs, ptr %i.bp, align 8, !tbaa !64
  br label %Vec_IntGrow.exit.i60

Vec_IntGrow.exit.i60:                             ; preds = %bb.r, %bb.n
  %i.cb = phi ptr [ %i.ca, %bb.r ], [ %i.bv, %bb.n ] ; 3 uses
  %.val9.i = phi i32 [ %.val9.pre.i, %bb.r ], [ %.val.i, %bb.n ] ; 2 uses
  %.val7.i = phi i32 [ %.val7.pre.i, %bb.r ], [ %.val6.i, %bb.n ] ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bj, i64 8
  %.val8.i = load ptr, ptr %i.cc, align 8, !tbaa !59 ; 4 uses
  %i.cd = getelementptr i8, ptr %i.bo, i64 8
  %.val10.i = load ptr, ptr %i.cd, align 8, !tbaa !59 ; 4 uses
  %i.ce = sext i32 %.val7.i to i64
  %.idx.i.i = shl nsw i64 %i.ce, 2                ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %.val8.i, i64 %.idx.i.i ; 3 uses
  %i.cg = sext i32 %.val9.i to i64
  %.idx19.i.i = shl nsw i64 %i.cg, 2              ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %.val10.i, i64 %.idx19.i.i ; 3 uses
  %i.ci = icmp sgt i32 %.val7.i, 0
  %i.cj = icmp sgt i32 %.val9.i, 0
  %i.ck = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %i.ck, label %.lr.ph.i.i, label %.preheader5.i.i

.preheader5.i.i:                                  ; preds = %bb.w, %Vec_IntGrow.exit.i60
  %.036.lcssa.i.i = phi ptr [ %i.cb, %Vec_IntGrow.exit.i60 ], [ %.137.i.i, %bb.w ] ; 5 uses
  %.033.lcssa.i.i = phi ptr [ %.val8.i, %Vec_IntGrow.exit.i60 ], [ %.134.i.i, %bb.w ] ; 5 uses
  %.0.lcssa.i.i = phi ptr [ %.val10.i, %Vec_IntGrow.exit.i60 ], [ %.1.i.i, %bb.w ] ; 5 uses
  %.0.lcssa.i.i109 = ptrtoaddr ptr %.0.lcssa.i.i to i64 ; 3 uses
  %i.cl = icmp ult ptr %.033.lcssa.i.i, %i.cf
  br i1 %i.cl, label %.lr.ph13.i.i.preheader, label %.preheader.i.i

.lr.ph13.i.i.preheader:                           ; preds = %.preheader5.i.i
  %.033.lcssa.i.i115 = ptrtoaddr ptr %.033.lcssa.i.i to i64 ; 3 uses
  %.036.lcssa.i.i114 = ptrtoaddr ptr %.036.lcssa.i.i to i64
  %i.cm = ptrtoaddr ptr %.val8.i to i64
  %1 = add i64 %.idx.i.i, %i.cm
  %i.cn = add i64 %.033.lcssa.i.i115, 4
  %2 = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.cn)
  %i.co = xor i64 %.033.lcssa.i.i115, -1
  %i.cp = add i64 %2, %i.co                       ; 2 uses
  %i.cq = lshr i64 %i.cp, 2
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %min.iters.check118 = icmp ult i64 %i.cp, 28
  %i.cs = sub i64 %.033.lcssa.i.i115, %.036.lcssa.i.i114
  %diff.check116 = icmp ugt i64 %i.cs, -32
  %or.cond = select i1 %min.iters.check118, i1 true, i1 %diff.check116
  br i1 %or.cond, label %.lr.ph13.i.i.preheader134, label %vector.ph119

vector.ph119:                                     ; preds = %.lr.ph13.i.i.preheader
  %n.vec120 = and i64 %i.cr, 9223372036854775800  ; 3 uses
  %i.ct = shl i64 %n.vec120, 2                    ; 2 uses
  %i.cu = getelementptr i8, ptr %.033.lcssa.i.i, i64 %i.ct
  %i.cv = getelementptr i8, ptr %.036.lcssa.i.i, i64 %i.ct ; 2 uses
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph119
  %index122 = phi i64 [ 0, %vector.ph119 ], [ %index.next127, %vector.body121 ] ; 2 uses
  %i.cw = shl i64 %index122, 2                    ; 2 uses
  %next.gep123 = getelementptr i8, ptr %.033.lcssa.i.i, i64 %i.cw ; 2 uses
  %next.gep124 = getelementptr i8, ptr %.036.lcssa.i.i, i64 %i.cw ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep123, i64 16
  %wide.load125 = load <4 x i32>, ptr %next.gep123, align 4, !tbaa !20
  %wide.load126 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !20
  %i.cy = getelementptr i8, ptr %next.gep124, i64 16
  store <4 x i32> %wide.load125, ptr %next.gep124, align 4, !tbaa !20
  store <4 x i32> %wide.load126, ptr %i.cy, align 4, !tbaa !20
  %index.next127 = add nuw i64 %index122, 8       ; 2 uses
  %i.cz = icmp eq i64 %index.next127, %n.vec120
  br i1 %i.cz, label %middle.block128, label %vector.body121, !llvm.loop !262

middle.block128:                                  ; preds = %vector.body121
  %cmp.n129 = icmp eq i64 %i.cr, %n.vec120
  br i1 %cmp.n129, label %.preheader.i.i, label %.lr.ph13.i.i.preheader134

.lr.ph13.i.i.preheader134:                        ; preds = %.lr.ph13.i.i.preheader, %middle.block128
  %.23512.i.i.ph = phi ptr [ %.033.lcssa.i.i, %.lr.ph13.i.i.preheader ], [ %i.cu, %middle.block128 ]
  %.23811.i.i.ph = phi ptr [ %.036.lcssa.i.i, %.lr.ph13.i.i.preheader ], [ %i.cv, %middle.block128 ]
  br label %.lr.ph13.i.i

.lr.ph.i.i:                                       ; preds = %Vec_IntGrow.exit.i60, %bb.w
  %.08.i.i = phi ptr [ %.1.i.i, %bb.w ], [ %.val10.i, %Vec_IntGrow.exit.i60 ] ; 4 uses
  %.0337.i.i = phi ptr [ %.134.i.i, %bb.w ], [ %.val8.i, %Vec_IntGrow.exit.i60 ] ; 4 uses
  %.0366.i.i = phi ptr [ %.137.i.i, %bb.w ], [ %i.cb, %Vec_IntGrow.exit.i60 ] ; 4 uses
  %i.da = load i32, ptr %.0337.i.i, align 4, !tbaa !20 ; 4 uses
  %i.db = load i32, ptr %.08.i.i, align 4, !tbaa !20 ; 3 uses
  %i.dc = icmp eq i32 %i.da, %i.db
  br i1 %i.dc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.0337.i.i, i64 4
  store i32 %i.da, ptr %.0366.i.i, align 4, !tbaa !20
  %i.de = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  br label %bb.w

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.df = icmp slt i32 %i.da, %i.db
  br i1 %i.df, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dg = getelementptr inbounds nuw i8, ptr %.0337.i.i, i64 4
  store i32 %i.da, ptr %.0366.i.i, align 4, !tbaa !20
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.dh = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i32 %i.db, ptr %.0366.i.i, align 4, !tbaa !20
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.s
  %.134.i.i = phi ptr [ %i.dd, %bb.s ], [ %i.dg, %bb.u ], [ %.0337.i.i, %bb.v ] ; 3 uses
  %.1.i.i = phi ptr [ %i.de, %bb.s ], [ %.08.i.i, %bb.u ], [ %i.dh, %bb.v ] ; 3 uses
  %.137.i.i = getelementptr inbounds nuw i8, ptr %.0366.i.i, i64 4 ; 2 uses
  %i.di = icmp ult ptr %.134.i.i, %i.cf
  %i.dj = icmp ult ptr %.1.i.i, %i.ch
  %i.dk = select i1 %i.di, i1 %i.dj, i1 false
  br i1 %i.dk, label %.lr.ph.i.i, label %.preheader5.i.i, !llvm.loop !8

.preheader.i.i:                                   ; preds = %.lr.ph13.i.i, %middle.block128, %.preheader5.i.i
  %.238.lcssa.i.i = phi ptr [ %.036.lcssa.i.i, %.preheader5.i.i ], [ %i.cv, %middle.block128 ], [ %i.ec, %.lr.ph13.i.i ] ; 5 uses
  %i.dl = icmp ult ptr %.0.lcssa.i.i, %i.ch
  br i1 %i.dl, label %.lr.ph17.i.i.preheader, label %Vec_IntTwoMerge2.exit

.lr.ph17.i.i.preheader:                           ; preds = %.preheader.i.i
  %.238.lcssa.i.i108 = ptrtoaddr ptr %.238.lcssa.i.i to i64
  %i.dm = ptrtoaddr ptr %.val10.i to i64
  %3 = add i64 %.idx19.i.i, %i.dm
  %i.dn = add i64 %.0.lcssa.i.i109, 4
  %4 = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.dn)
  %i.do = xor i64 %.0.lcssa.i.i109, -1
  %i.dp = add i64 %4, %i.do                       ; 2 uses
  %i.dq = lshr i64 %i.dp, 2
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dp, 28
  %i.ds = sub i64 %.0.lcssa.i.i109, %.238.lcssa.i.i108
  %diff.check = icmp ugt i64 %i.ds, -32
  %or.cond132 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond132, label %.lr.ph17.i.i.preheader133, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph17.i.i.preheader
  %n.vec = and i64 %i.dr, 9223372036854775800     ; 3 uses
  %i.dt = shl i64 %n.vec, 2                       ; 2 uses
  %i.du = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.dt
  %i.dv = getelementptr i8, ptr %.238.lcssa.i.i, i64 %i.dt ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dw = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.dw ; 2 uses
  %next.gep110 = getelementptr i8, ptr %.238.lcssa.i.i, i64 %i.dw ; 2 uses
  %i.dx = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !20
  %wide.load111 = load <4 x i32>, ptr %i.dx, align 4, !tbaa !20
  %i.dy = getelementptr i8, ptr %next.gep110, i64 16
  store <4 x i32> %wide.load, ptr %next.gep110, align 4, !tbaa !20
  store <4 x i32> %wide.load111, ptr %i.dy, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !263

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dr, %n.vec
  br i1 %cmp.n, label %Vec_IntTwoMerge2.exit, label %.lr.ph17.i.i.preheader133

.lr.ph17.i.i.preheader133:                        ; preds = %.lr.ph17.i.i.preheader, %middle.block
  %.216.i.i.ph = phi ptr [ %.0.lcssa.i.i, %.lr.ph17.i.i.preheader ], [ %i.du, %middle.block ]
  %.315.i.i.ph = phi ptr [ %.238.lcssa.i.i, %.lr.ph17.i.i.preheader ], [ %i.dv, %middle.block ]
  br label %.lr.ph17.i.i

.lr.ph13.i.i:                                     ; preds = %.lr.ph13.i.i.preheader134, %.lr.ph13.i.i
  %.23512.i.i = phi ptr [ %i.ea, %.lr.ph13.i.i ], [ %.23512.i.i.ph, %.lr.ph13.i.i.preheader134 ] ; 2 uses
  %.23811.i.i = phi ptr [ %i.ec, %.lr.ph13.i.i ], [ %.23811.i.i.ph, %.lr.ph13.i.i.preheader134 ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.23512.i.i, i64 4 ; 2 uses
  %i.eb = load i32, ptr %.23512.i.i, align 4, !tbaa !20
  %i.ec = getelementptr inbounds nuw i8, ptr %.23811.i.i, i64 4 ; 2 uses
  store i32 %i.eb, ptr %.23811.i.i, align 4, !tbaa !20
  %i.ed = icmp ult ptr %i.ea, %i.cf
  br i1 %i.ed, label %.lr.ph13.i.i, label %.preheader.i.i, !llvm.loop !264

.lr.ph17.i.i:                                     ; preds = %.lr.ph17.i.i.preheader133, %.lr.ph17.i.i
  %.216.i.i = phi ptr [ %i.ee, %.lr.ph17.i.i ], [ %.216.i.i.ph, %.lr.ph17.i.i.preheader133 ] ; 2 uses
  %.315.i.i = phi ptr [ %i.eg, %.lr.ph17.i.i ], [ %.315.i.i.ph, %.lr.ph17.i.i.preheader133 ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.216.i.i, i64 4 ; 2 uses
  %i.ef = load i32, ptr %.216.i.i, align 4, !tbaa !20
  %i.eg = getelementptr inbounds nuw i8, ptr %.315.i.i, i64 4 ; 2 uses
  store i32 %i.ef, ptr %.315.i.i, align 4, !tbaa !20
  %i.eh = icmp ult ptr %i.ee, %i.ch
  br i1 %i.eh, label %.lr.ph17.i.i, label %Vec_IntTwoMerge2.exit, !llvm.loop !265

Vec_IntTwoMerge2.exit:                            ; preds = %.lr.ph17.i.i, %middle.block, %.preheader.i.i
  %.3.lcssa.i.i = phi ptr [ %.238.lcssa.i.i, %.preheader.i.i ], [ %i.dv, %middle.block ], [ %i.eg, %.lr.ph17.i.i ]
  %i.ei = ptrtoint ptr %.3.lcssa.i.i to i64
  %i.ej = ptrtoint ptr %i.cb to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = lshr exact i64 %i.ek, 2
  %i.em = trunc i64 %i.el to i32
  %i.en = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i32 %i.em, ptr %i.en, align 4, !tbaa !61
  %.pre89 = load i32, ptr %i.j, align 8, !tbaa !51
  br label %bb.x

bb.x:                                             ; preds = %Vec_IntTwoMerge2.exit, %bb.m
  %i.eo = phi i32 [ %.pre89, %Vec_IntTwoMerge2.exit ], [ %i.bb, %bb.m ] ; 2 uses
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.ep = sext i32 %i.eo to i64
  %i.eq = icmp slt i64 %indvars.iv.next81, %i.ep
  br i1 %i.eq, label %.lr.ph72, label %.critedge, !llvm.loop !266

.critedge:                                        ; preds = %.lr.ph72, %bb.x, %.preheader
  %i.er = load ptr, ptr %i.a, align 8, !tbaa !62  ; 2 uses
  %i.es = getelementptr i8, ptr %i.er, i64 4
  %.val4174 = load i32, ptr %i.es, align 4, !tbaa !61
  %i.et = icmp sgt i32 %.val4174, 0
  br i1 %i.et, label %.lr.ph76, label %.critedge2

.lr.ph76:                                         ; preds = %.critedge, %Vec_IntAppend.exit
  %i.eu = phi ptr [ %i.gi, %Vec_IntAppend.exit ], [ %i.er, %.critedge ] ; 2 uses
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %Vec_IntAppend.exit ], [ 0, %.critedge ] ; 3 uses
  %.val42 = load ptr, ptr %i.v, align 8, !tbaa !54 ; 2 uses
  %.not37 = icmp eq ptr %.val42, null
  br i1 %.not37, label %.critedge2, label %bb.y

bb.y:                                             ; preds = %.lr.ph76
  %i.ev = getelementptr i8, ptr %i.eu, i64 8
  %.val43.val = load ptr, ptr %i.ev, align 8, !tbaa !59
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.val43.val, i64 %indvars.iv83
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !20 ; 2 uses
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [12 x i8], ptr %.val42, i64 %i.ey
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv83 ; 4 uses
  %.val3.i = load i64, ptr %i.ez, align 4
  %i.fb = trunc i64 %.val3.i to i32
  %i.fc = and i32 %i.fb, 536870911
  %i.fd = sub nsw i32 %i.ex, %i.fc
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.fe ; 2 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 4      ; 2 uses
  %.val67.i = load i32, ptr %i.fg, align 4, !tbaa !61
  %i.fh = icmp sgt i32 %.val67.i, 0
  br i1 %i.fh, label %.lr.ph.i, label %Vec_IntAppend.exit

.lr.ph.i:                                         ; preds = %bb.y
  %i.fi = getelementptr i8, ptr %i.ff, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fa, i64 4 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 4 uses
  br label %bb.z

bb.z:                                             ; preds = %Vec_IntPush.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %Vec_IntPush.exit.i ] ; 2 uses
  %.val.i62 = load ptr, ptr %i.fi, align 8, !tbaa !59
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.val.i62, i64 %indvars.iv.i
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !20
  %i.fn = load i32, ptr %i.fj, align 4, !tbaa !61 ; 7 uses
  %i.fo = load i32, ptr %i.fa, align 8, !tbaa !64
  %i.fp = icmp eq i32 %i.fn, %i.fo
  br i1 %i.fp, label %bb.aa, label %.Vec_IntPush.exit_crit_edge.i

.Vec_IntPush.exit_crit_edge.i:                    ; preds = %bb.z
  %.pre.i = load ptr, ptr %i.fk, align 8, !tbaa !59
  br label %Vec_IntPush.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.fq = icmp slt i32 %i.fn, 16
  br i1 %i.fq, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.fr = load ptr, ptr %i.fk, align 8, !tbaa !59 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.fr, null
  br i1 %.not9.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fs = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.fr, i64 noundef 64) #41
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.ft = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #40
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.ae:                                            ; preds = %bb.aa
  %i.fu = icmp samesign ult i32 %i.fn, 1073741823
  %i.fv = shl nuw nsw i32 %i.fn, 1
  %spec.select.i.i = select i1 %i.fu, i32 %i.fv, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.fn, %spec.select.i.i
  %.pre10.i = load ptr, ptr %i.fk, align 8, !tbaa !59 ; 3 uses
  br i1 %.not.i9.i.i, label %bb.af, label %Vec_IntPush.exit.i

bb.af:                                            ; preds = %bb.ae
  %.not9.i10.i.i = icmp eq ptr %.pre10.i, null
  %i.fw = zext nneg i32 %spec.select.i.i to i64
  %i.fx = shl nuw nsw i64 %i.fw, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fy = tail call ptr @realloc(ptr noundef nonnull %.pre10.i, i64 noundef %i.fx) #41
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.ah:                                            ; preds = %bb.af
  %i.fz = tail call noalias ptr @malloc(i64 noundef %i.fx) #40
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.ah, %bb.ag, %bb.ad, %bb.ac
  %i.ga = phi ptr [ %i.ft, %bb.ad ], [ %i.fs, %bb.ac ], [ %i.fy, %bb.ag ], [ %i.fz, %bb.ah ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.ad ], [ 16, %bb.ac ], [ %spec.select.i.i, %bb.ag ], [ %spec.select.i.i, %bb.ah ]
  store ptr %i.ga, ptr %i.fk, align 8, !tbaa !59
  store i32 %spec.select.sink.i.i, ptr %i.fa, align 8, !tbaa !64
  %.pre11.i = load i32, ptr %i.fj, align 4, !tbaa !61
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.ae, %.Vec_IntPush.exit_crit_edge.i
  %i.gb = phi i32 [ %i.fn, %.Vec_IntPush.exit_crit_edge.i ], [ %i.fn, %bb.ae ], [ %.pre11.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.gc = phi ptr [ %.pre.i, %.Vec_IntPush.exit_crit_edge.i ], [ %.pre10.i, %bb.ae ], [ %i.ga, %Vec_IntGrow.exit11.sink.split.i.i ]
  %i.gd = add nsw i32 %i.gb, 1
  store i32 %i.gd, ptr %i.fj, align 4, !tbaa !61
  %i.ge = sext i32 %i.gb to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.ge
  store i32 %i.fm, ptr %i.gf, align 4, !tbaa !20
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val6.i63 = load i32, ptr %i.fg, align 4, !tbaa !61
  %i.gg = sext i32 %.val6.i63 to i64
  %i.gh = icmp slt i64 %indvars.iv.next.i, %i.gg
  br i1 %i.gh, label %bb.z, label %Vec_IntAppend.exit.loopexit, !llvm.loop !5

Vec_IntAppend.exit.loopexit:                      ; preds = %Vec_IntPush.exit.i
  %.pre90 = load ptr, ptr %i.a, align 8, !tbaa !62
  br label %Vec_IntAppend.exit

Vec_IntAppend.exit:                               ; preds = %Vec_IntAppend.exit.loopexit, %bb.y
  %i.gi = phi ptr [ %.pre90, %Vec_IntAppend.exit.loopexit ], [ %i.eu, %bb.y ] ; 2 uses
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.gj = getelementptr i8, ptr %i.gi, i64 4
end_hunk_1
begin_hunk_2_@Gia_ManAppendObj:bb.a

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114, i32 noundef %i.b, i32 noundef %i.g) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54   ; 2 uses
  %.not33 = icmp eq ptr %i.m, null
  %i.n = sext i32 %i.g to i64
  %i.o = mul nsw i64 %i.n, 12                     ; 2 uses
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @realloc(ptr noundef nonnull %i.m, i64 noundef %i.o) #41
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.o) #40
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %i.p, %bb.g ], [ %i.q, %bb.h ] ; 2 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !54
  %i.s = load i32, ptr %i.c, align 4, !tbaa !364  ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [12 x i8], ptr %i.r, i64 %i.t
  %i.v = sub nsw i32 %i.g, %i.s
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.w, 12
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.u, i8 0, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !58   ; 2 uses
  %.not34 = icmp eq ptr %i.z, null
  br i1 %.not34, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = sext i32 %i.g to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %i.z, i64 noundef %i.ab) #41 ; 2 uses
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !58
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !364 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = sub nsw i32 %i.g, %i.ad
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.af, i8 0, i64 %i.ai, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.g, ptr %i.c, align 4, !tbaa !364
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  %i.aj = getelementptr i8, ptr %0, i64 100
  %.val36 = load i32, ptr %i.aj, align 4, !tbaa !61
  %.not35 = icmp eq i32 %.val36, 0
  br i1 %.not35, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !61 ; 7 uses
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !64
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.n, label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = icmp slt i32 %i.am, 16
  br i1 %i.ap, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !59 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ar, null
  br i1 %.not9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ar, i64 noundef 64) #41
  br label %Vec_IntGrow.exit.i

bb.q:                                             ; preds = %bb.o
  %i.at = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #40
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.q, %bb.p
  %i.au = phi ptr [ %i.as, %bb.p ], [ %i.at, %bb.q ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !59
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.n
  %i.av = icmp samesign ult i32 %i.am, 1073741823
  %i.aw = shl nuw nsw i32 %i.am, 1
  %spec.select.i = select i1 %i.av, i32 %i.aw, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.am, %spec.select.i
  br i1 %.not.i9.i, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !59 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ay, null
  %i.az = zext nneg i32 %spec.select.i to i64
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef %i.ba) #41
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.ba) #40
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bd = phi ptr [ %i.bb, %bb.t ], [ %i.bc, %bb.u ]
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !59
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.v, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.v ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ak, align 8, !tbaa !64
  %.pre = load i32, ptr %i.al, align 4, !tbaa !61
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.m, %bb.r, %Vec_IntGrow.exit11.sink.split.i
  %i.be = phi i32 [ %i.am, %bb.m ], [ %i.am, %bb.r ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !59
  %i.bh = add nsw i32 %i.be, 1
  store i32 %i.bh, ptr %i.al, align 4, !tbaa !61
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
  store i32 0, ptr %i.bj, align 4, !tbaa !20
  br label %bb.w

bb.w:                                             ; preds = %Vec_IntPush.exit, %bb.l
  %i.bk = load i32, ptr %i.a, align 8, !tbaa !51  ; 2 uses
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.a, align 8, !tbaa !51
  %i.bm = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.bm, align 8, !tbaa !54
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.bn
  ret ptr %i.bo
}

declare void @Gia_ObjAddFanout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #33

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #34

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #26

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #35

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #36

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #36

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #36

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #35

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #35

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nofree nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nocallback nofree nosync nounwind willreturn }
attributes #33 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #36 = { nofree nounwind }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #38 = { nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { nounwind allocsize(0) }
attributes #41 = { nounwind allocsize(1) }
attributes #42 = { nounwind allocsize(0,1) }
attributes #43 = { cold noreturn nounwind }

!llvm.module.flags = !{!12, !13}
!llvm.ident = !{!14}
!llvm.errno.tbaa = !{!19}

!0 = distinct !{!0, !27}
!1 = distinct !{!1, !27}
!2 = distinct !{!2, !27}
!3 = distinct !{!3, !27}
!4 = distinct !{!4, !27}
!5 = distinct !{!5, !27}
!6 = distinct !{!6, !27}
!7 = distinct !{!7, !27}
!8 = distinct !{!8, !27}
!9 = distinct !{!9, !27}
!10 = distinct !{!10, !27}
!11 = distinct !{null}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 2}
!14 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!"omnipotent char", !15, i64 0}
!17 = !{!"int", !16, i64 0}
!18 = !{!"__libc_errno", !17, i64 0}
!19 = !{!18, !17, i64 0}
!20 = !{!17, !17, i64 0}
!21 = !{!"any pointer", !16, i64 0}
!22 = !{!"any p2 pointer", !21, i64 0}
!23 = !{!"Vec_Ptr_t_", !17, i64 0, !17, i64 4, !22, i64 8}
!24 = !{!23, !17, i64 4}
!25 = !{!23, !22, i64 8}
!26 = !{!21, !21, i64 0}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!16, !16, i64 0}
!29 = !{!23, !17, i64 0}
!30 = !{!"p1 omnipotent char", !21, i64 0}
!31 = !{!"p1 _ZTS10Gia_Obj_t_", !21, i64 0}
!32 = !{!"p1 int", !21, i64 0}
!33 = !{!"p1 _ZTS10Vec_Int_t_", !21, i64 0}
!34 = !{!"Vec_Int_t_", !17, i64 0, !17, i64 4, !32, i64 8}
!35 = !{!"p1 _ZTS10Gia_Rpr_t_", !21, i64 0}
!36 = !{!"p1 _ZTS10Vec_Wec_t_", !21, i64 0}
!37 = !{!"p1 _ZTS10Vec_Str_t_", !21, i64 0}
!38 = !{!"p1 _ZTS10Abc_Cex_t_", !21, i64 0}
!39 = !{!"p1 _ZTS10Vec_Ptr_t_", !21, i64 0}
!40 = !{!"p1 _ZTS10Gia_Plc_t_", !21, i64 0}
!41 = !{!"p1 _ZTS10Gia_Man_t_", !21, i64 0}
!42 = !{!"p1 _ZTS10Vec_Flt_t_", !21, i64 0}
!43 = !{!"float", !16, i64 0}
!44 = !{!"p1 _ZTS10Vec_Vec_t_", !21, i64 0}
!45 = !{!"long", !16, i64 0}
!46 = !{!"p1 _ZTS10Vec_Wrd_t_", !21, i64 0}
!47 = !{!"p1 _ZTS10Vec_Bit_t_", !21, i64 0}
!48 = !{!"p1 _ZTS10Gia_Dat_t_", !21, i64 0}
!49 = !{!"Gia_Man_t_", !30, i64 0, !30, i64 8, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !31, i64 32, !32, i64 40, !17, i64 48, !17, i64 52, !17, i64 56, !33, i64 64, !33, i64 72, !34, i64 80, !34, i64 96, !17, i64 112, !17, i64 116, !17, i64 120, !34, i64 128, !32, i64 144, !32, i64 152, !33, i64 160, !17, i64 168, !17, i64 172, !17, i64 176, !17, i64 180, !32, i64 184, !35, i64 192, !32, i64 200, !32, i64 208, !32, i64 216, !17, i64 224, !17, i64 228, !32, i64 232, !17, i64 240, !33, i64 248, !33, i64 256, !33, i64 264, !36, i64 272, !36, i64 280, !33, i64 288, !21, i64 296, !33, i64 304, !33, i64 312, !37, i64 320, !30, i64 328, !33, i64 336, !33, i64 344, !33, i64 352, !33, i64 360, !33, i64 368, !38, i64 376, !38, i64 384, !39, i64 392, !34, i64 400, !34, i64 416, !33, i64 432, !33, i64 440, !33, i64 448, !33, i64 456, !33, i64 464, !33, i64 472, !33, i64 480, !33, i64 488, !33, i64 496, !33, i64 504, !33, i64 512, !30, i64 520, !40, i64 528, !41, i64 536, !42, i64 544, !42, i64 552, !33, i64 560, !33, i64 568, !33, i64 576, !33, i64 584, !33, i64 592, !17, i64 600, !43, i64 604, !43, i64 608, !33, i64 616, !32, i64 624, !17, i64 632, !39, i64 640, !39, i64 648, !39, i64 656, !33, i64 664, !33, i64 672, !33, i64 680, !33, i64 688, !33, i64 696, !33, i64 704, !33, i64 712, !33, i64 720, !33, i64 728, !44, i64 736, !42, i64 744, !21, i64 752, !21, i64 760, !21, i64 768, !45, i64 776, !45, i64 784, !21, i64 792, !32, i64 800, !17, i64 808, !17, i64 812, !17, i64 816, !17, i64 820, !17, i64 824, !17, i64 828, !17, i64 832, !17, i64 836, !17, i64 840, !17, i64 844, !17, i64 848, !17, i64 852, !46, i64 856, !46, i64 864, !46, i64 872, !46, i64 880, !33, i64 888, !33, i64 896, !33, i64 904, !47, i64 912, !17, i64 920, !17, i64 924, !17, i64 928, !33, i64 936, !17, i64 944, !17, i64 948, !33, i64 952, !33, i64 960, !39, i64 968, !46, i64 976, !33, i64 984, !33, i64 992, !17, i64 1000, !17, i64 1004, !46, i64 1008, !34, i64 1016, !34, i64 1032, !34, i64 1048, !48, i64 1064, !37, i64 1072, !37, i64 1080, !17, i64 1088, !17, i64 1092, !17, i64 1096, !17, i64 1100, !37, i64 1104, !33, i64 1112, !33, i64 1120, !33, i64 1128, !39, i64 1136}
!50 = !{!49, !32, i64 624}
!51 = !{!49, !17, i64 24}
!52 = !{!49, !17, i64 632}
!53 = !{!49, !17, i64 176}
!54 = !{!49, !31, i64 32}
!55 = !{!"Gia_Obj_t_", !17, i64 0, !17, i64 3, !17, i64 3, !17, i64 3, !17, i64 4, !17, i64 7, !17, i64 7, !17, i64 7, !17, i64 8}
!56 = !{!55, !17, i64 8}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!49, !32, i64 40}
!59 = !{!34, !32, i64 8}
!60 = !{!49, !33, i64 64}
!61 = !{!34, !17, i64 4}
!62 = !{!49, !33, i64 72}
!63 = !{!49, !33, i64 160}
!64 = !{!34, !17, i64 0}
!65 = !{!49, !17, i64 168}
!66 = !{!49, !17, i64 120}
!67 = !{!49, !32, i64 144}
!68 = !{!31, !31, i64 0}
!69 = !{!49, !17, i64 16}
!70 = !{!49, !33, i64 264}
!71 = !{!"Vec_Wec_t_", !17, i64 0, !17, i64 4, !33, i64 8}
!72 = !{!71, !33, i64 8}
!73 = !{!"timespec", !45, i64 0, !45, i64 8}
!74 = !{!73, !45, i64 0}
!75 = !{!73, !45, i64 8}
!76 = !{!49, !35, i64 192}
!77 = !{!49, !32, i64 200}
!78 = !{!"llvm.loop.isvectorized", i32 1}
!79 = !{!"llvm.loop.unroll.runtime.disable"}
!80 = !{!39, !39, i64 0}
!81 = !{!"p1 long", !21, i64 0}
!82 = !{!"Vec_Wrd_t_", !17, i64 0, !17, i64 4, !81, i64 8}
!83 = !{!82, !17, i64 0}
!84 = !{!82, !81, i64 8}
!85 = !{!82, !17, i64 4}
!86 = !{!49, !30, i64 0}
!87 = !{!49, !32, i64 232}
!88 = !{!49, !33, i64 248}
!89 = !{!71, !17, i64 0}
!90 = !{!71, !17, i64 4}
!91 = !{!45, !45, i64 0}
!92 = !{!"Vec_Str_t_", !17, i64 0, !17, i64 4, !30, i64 8}
!93 = !{!92, !30, i64 8}
!94 = !{!92, !17, i64 4}
!95 = !{!49, !30, i64 8}
!96 = distinct !{!96, !27}
!97 = distinct !{!97, !27}
!98 = distinct !{!98, !27}
!99 = distinct !{!99, !27}
!100 = distinct !{!100, !27}
!101 = distinct !{!101, !27}
!102 = distinct !{!102, !57}
!103 = distinct !{!103, !57}
!104 = distinct !{!104, !27}
!105 = distinct !{!105, !27}
!106 = distinct !{!106, !27}
!107 = distinct !{!107, !27}
!108 = distinct !{!108, !27}
!109 = distinct !{!109, !27}
!110 = distinct !{!110, !57}
!111 = !{!49, !33, i64 440}
!112 = distinct !{!112, !27}
!113 = distinct !{!113, !27}
!114 = distinct !{!114, !27}
!115 = distinct !{!115, !27}
!116 = distinct !{!116, !27}
!117 = distinct !{!117, !27}
!118 = distinct !{!118, !27}
!119 = distinct !{!119, !27}
!120 = distinct !{!120, !57}
!121 = distinct !{!121, !27}
!122 = distinct !{!122, !27}
!123 = distinct !{!123, !27}
!124 = distinct !{!124, !27}
!125 = distinct !{!125, !27}
!126 = distinct !{!126, !27}
!127 = distinct !{!127, !27}
!128 = distinct !{!128, !27}
!129 = distinct !{!129, !27}
!130 = !{!"Vec_Vec_t_", !17, i64 0, !17, i64 4, !22, i64 8}
!131 = !{!130, !17, i64 4}
!132 = !{!130, !22, i64 8}
!133 = distinct !{!133, !57}
!134 = distinct !{!134, !27}
!135 = distinct !{!135, !27}
!136 = distinct !{!136, !27}
!137 = distinct !{!137, !27}
!138 = distinct !{!138, !27}
!139 = distinct !{!139, !27}
!140 = distinct !{!140, !27}
!141 = distinct !{!141, !27}
!142 = !{}
!143 = distinct !{!143, !27}
!144 = distinct !{!144, !27}
!145 = distinct !{!145, !27}
!146 = distinct !{!146, !27}
!147 = distinct !{!147, !27}
!148 = !{!49, !36, i64 272}
!149 = distinct !{!149, !27}
!150 = !{!49, !17, i64 48}
end_hunk_2
