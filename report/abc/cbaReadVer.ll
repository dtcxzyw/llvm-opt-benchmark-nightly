Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cbaReadVer?download=true
inline.NumInlined: 1012
inline.NumDeleted: 196
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Vec_IntPushThree:bb.a
  store i32 %spec.select.sink.i17, ptr %0, align 8, !tbaa !34
  %.pre23 = load i32, ptr %i.a, align 4, !tbaa !33
  br label %Vec_IntPush.exit20

Vec_IntPush.exit20:                               ; preds = %Vec_IntPush.exit12, %bb.o, %Vec_IntGrow.exit11.sink.split.i16
  %i.aw = phi i32 [ %i.an, %Vec_IntPush.exit12 ], [ %i.an, %bb.o ], [ %.pre23, %Vec_IntGrow.exit11.sink.split.i16 ] ; 2 uses
  %i.ax = phi ptr [ %i.aj, %Vec_IntPush.exit12 ], [ %i.aj, %bb.o ], [ %i.av, %Vec_IntGrow.exit11.sink.split.i16 ]
  %i.ay = add nsw i32 %i.aw, 1
  store i32 %i.ay, ptr %i.a, align 4, !tbaa !33
  %i.az = sext i32 %i.aw to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.az
  store i32 %3, ptr %i.ba, align 4, !tbaa !36
  ret void
}

; Function Attrs: nounwind uwtable
define void @Prs_CreateOutConcat(ptr nofree noundef captures(none) initializes((420, 424)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !36     ; 9 uses
  %.val98 = load ptr, ptr %0, align 8, !tbaa !69  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val98, i64 48 ; 2 uses
  %i.d = add nsw i32 %i.b, 1                      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val98, i64 52 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !33   ; 4 uses
  %.not.i.not.i.i.i = icmp slt i32 %i.b, %i.f
  br i1 %.not.i.not.i.i.i, label %Cba_NtkGetMap.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.c, align 8, !tbaa !34   ; 4 uses
  %i.h = shl nsw i32 %i.g, 1                      ; 2 uses
  %.not.i.i.i = icmp slt i32 %i.b, %i.h
  %.not.i.i.not.i.i.i = icmp sgt i32 %i.g, %i.b   ; 2 uses
  br i1 %.not.i.i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i.i.not.i.i.i, label %Vec_IntGrow.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val98, i64 56 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35   ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.j, null
  %i.k = sext i32 %i.d to i64
  %i.l = shl nsw i64 %i.k, 2                      ; 2 uses
  br i1 %.not9.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call ptr @realloc(ptr noundef nonnull %i.j, i64 noundef %i.l) #29
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.l) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = phi ptr [ %i.m, %bb.e ], [ %i.n, %bb.f ]
  store ptr %i.o, ptr %i.i, align 8, !tbaa !35
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

bb.h:                                             ; preds = %bb.b
  br i1 %.not.i.i.not.i.i.i, label %Vec_IntGrow.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = icmp slt i32 %i.g, 1073741823
  %spec.select.i.i.i.i = select i1 %i.p, i32 %i.h, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i.i = icmp slt i32 %i.g, %spec.select.i.i.i.i
  br i1 %.not.i22.i.i.i.i, label %bb.j, label %Vec_IntGrow.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %.val98, i64 56 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !35   ; 2 uses
  %.not9.i23.i.i.i.i = icmp eq ptr %i.r, null
  %i.s = sext i32 %spec.select.i.i.i.i to i64
  %i.t = shl nuw nsw i64 %i.s, 2                  ; 2 uses
  br i1 %.not9.i23.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call ptr @realloc(ptr noundef nonnull %i.r, i64 noundef %i.t) #29
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.t) #30
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = phi ptr [ %i.u, %bb.k ], [ %i.v, %bb.l ]
  store ptr %i.w, ptr %i.q, align 8, !tbaa !35
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i.i:              ; preds = %bb.m, %bb.g
  %spec.select.sink.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %bb.m ], [ %i.d, %bb.g ]
  store i32 %spec.select.sink.i.i.i.i, ptr %i.c, align 8, !tbaa !34
  %.pre.i.i.i = load i32, ptr %i.e, align 4, !tbaa !33
  br label %Vec_IntGrow.exit.i.i.i.i

Vec_IntGrow.exit.i.i.i.i:                         ; preds = %Vec_IntGrow.exit.sink.split.i.i.i.i, %bb.i, %bb.h, %bb.c
  %i.x = phi i32 [ %.pre.i.i.i, %Vec_IntGrow.exit.sink.split.i.i.i.i ], [ %i.f, %bb.i ], [ %i.f, %bb.h ], [ %i.f, %bb.c ] ; 3 uses
  %.not3.i.i.i = icmp sgt i32 %i.x, %i.b
  br i1 %.not3.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %Vec_IntGrow.exit.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.val98, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35
  %i.aa = sext i32 %i.x to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.z, i64 %i.ab
  %i.ac = sub i32 %i.b, %i.x
  %i.ad = zext i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2
  %i.af = add nuw nsw i64 %i.ae, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i, i8 0, i64 %i.af, i1 false), !tbaa !36
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %Vec_IntGrow.exit.i.i.i.i
  store i32 %i.d, ptr %i.e, align 4, !tbaa !33
  br label %Cba_NtkGetMap.exit

Cba_NtkGetMap.exit:                               ; preds = %bb.a, %._crit_edge.i.i.i.i
  %i.ag = getelementptr i8, ptr %.val98, i64 56
  %.val.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !35
  %i.ah = sext i32 %i.b to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %.val.i.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !36 ; 2 uses
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %Cba_NtkRangeRight.exit, label %bb.n

bb.n:                                             ; preds = %Cba_NtkGetMap.exit
  %i.ak = load ptr, ptr %0, align 8, !tbaa !69
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %.val.i = load ptr, ptr %i.an, align 8, !tbaa !46
  %i.ao = getelementptr i8, ptr %.val.i, i64 8
  %.val.val.i = load ptr, ptr %i.ao, align 8, !tbaa !35
  %.neg = mul i32 %i.aj, -4
  %i.ap = sext i32 %.neg to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !76
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !77
  br label %Cba_NtkRangeRight.exit

Cba_NtkRangeRight.exit:                           ; preds = %Cba_NtkGetMap.exit, %bb.n
  %i.au = phi i32 [ %i.ar, %bb.n ], [ 0, %Cba_NtkGetMap.exit ] ; 5 uses
  %i.av = phi i32 [ %i.at, %bb.n ], [ 0, %Cba_NtkGetMap.exit ] ; 5 uses
  %i.aw = tail call noundef i32 @llvm.smin.i32(i32 %i.au, i32 %i.av)
  %i.ax = tail call noundef i32 @llvm.smax.i32(i32 %i.au, i32 %i.av) ; 3 uses
  %i.ay = add nsw i32 %i.ax, 1                    ; 4 uses
  %i.az = load i32, ptr %i.a, align 8, !tbaa !34
  %.not.i.i.not = icmp sgt i32 %i.az, %i.ax
  br i1 %.not.i.i.not, label %Vec_IntGrow.exit.i, label %bb.o

bb.o:                                             ; preds = %Cba_NtkRangeRight.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !35 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.bb, null
  %i.bc = sext i32 %i.ay to i64
  %i.bd = shl nsw i64 %i.bc, 2                    ; 2 uses
  br i1 %.not9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = tail call ptr @realloc(ptr noundef nonnull %i.bb, i64 noundef %i.bd) #29
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bf = tail call noalias ptr @malloc(i64 noundef %i.bd) #30
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bg = phi ptr [ %i.be, %bb.p ], [ %i.bf, %bb.q ]
  store ptr %i.bg, ptr %i.ba, align 8, !tbaa !35
  store i32 %i.ay, ptr %i.a, align 8, !tbaa !34
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.r, %Cba_NtkRangeRight.exit
  %i.bh = icmp sgt i32 %i.ax, -1
  br i1 %i.bh, label %.lr.ph.i, label %Vec_IntFill.exit

.lr.ph.i:                                         ; preds = %Vec_IntGrow.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !35
  %i.bk = zext nneg i32 %i.ay to i64
  %i.bl = shl nuw nsw i64 %i.bk, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bj, i8 0, i64 %i.bl, i1 false), !tbaa !36
  br label %Vec_IntFill.exit

Vec_IntFill.exit:                                 ; preds = %Vec_IntGrow.exit.i, %.lr.ph.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 420
  store i32 %i.ay, ptr %i.bm, align 4, !tbaa !33
  %i.bn = icmp sgt i32 %2, 0
  %i.bo = getelementptr i8, ptr %0, i64 424
  %.val97 = load ptr, ptr %i.bo, align 8, !tbaa !35 ; 4 uses
  br i1 %i.bn, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %Vec_IntFill.exit
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.s

.preheader:                                       ; preds = %.loopexit, %Vec_IntFill.exit
  %i.bp = getelementptr i8, ptr %0, i64 424
  %i.bq = tail call i32 @llvm.smin.i32(i32 %i.av, i32 %i.au) ; 2 uses
  %smin131 = sext i32 %i.bq to i64                ; 4 uses
  %i.br = add i32 %i.au, %i.av
  %i.bs = add i32 %i.br, 1
  %i.bt = sub i32 %i.bs, %i.aw                    ; 2 uses
  %i.bu = tail call i32 @llvm.smax.i32(i32 %i.au, i32 %i.av)
  %i.bv = sub i32 %i.bu, %i.bq                    ; 2 uses
  %i.bw = zext i32 %i.bv to i64
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %min.iters.check161 = icmp ult i32 %i.bv, 7
  br i1 %min.iters.check161, label %scalar.ph160.preheader, label %vector.ph162

vector.ph162:                                     ; preds = %.preheader
  %n.vec163 = and i64 %i.bx, 8589934584           ; 3 uses
  %i.by = add nsw i64 %n.vec163, %smin131
  %invariant.gep178 = getelementptr [4 x i8], ptr %.val97, i64 %smin131
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph162
  %index165 = phi i64 [ 0, %vector.ph162 ], [ %index.next168, %vector.body164 ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 -1>, %vector.ph162 ], [ %wide.load167, %vector.body164 ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph162 ], [ %i.cg, %vector.body164 ]
  %vec.phi166 = phi <4 x i32> [ zeroinitializer, %vector.ph162 ], [ %i.ch, %vector.body164 ]
  %gep179 = getelementptr [4 x i8], ptr %invariant.gep178, i64 %index165 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %gep179, i64 16
  %wide.load = load <4 x i32>, ptr %gep179, align 4, !tbaa !36 ; 3 uses
  %wide.load167 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !36 ; 4 uses
  %i.ca = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cb = shufflevector <4 x i32> %wide.load, <4 x i32> %wide.load167, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cc = icmp ne <4 x i32> %i.ca, %wide.load
  %i.cd = icmp ne <4 x i32> %i.cb, %wide.load167
  %i.ce = zext <4 x i1> %i.cc to <4 x i32>
  %i.cf = zext <4 x i1> %i.cd to <4 x i32>
  %i.cg = add <4 x i32> %vec.phi, %i.ce           ; 2 uses
  %i.ch = add <4 x i32> %vec.phi166, %i.cf        ; 2 uses
  %index.next168 = add nuw i64 %index165, 8       ; 2 uses
  %i.ci = icmp eq i64 %index.next168, %n.vec163
  br i1 %i.ci, label %middle.block169, label %vector.body164, !llvm.loop !112

middle.block169:                                  ; preds = %vector.body164
  %bin.rdx = add <4 x i32> %i.ch, %i.cg
  %i.cj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %vector.recur.extract = extractelement <4 x i32> %wide.load167, i64 3
  %cmp.n170 = icmp eq i64 %i.bx, %n.vec163
  br i1 %cmp.n170, label %.critedge, label %scalar.ph160.preheader

scalar.ph160.preheader:                           ; preds = %.preheader, %middle.block169
  %indvars.iv132.ph = phi i64 [ %smin131, %.preheader ], [ %i.by, %middle.block169 ]
  %.082122.ph = phi i32 [ -1, %.preheader ], [ %vector.recur.extract, %middle.block169 ]
  %.084121.ph = phi i32 [ 0, %.preheader ], [ %i.cj, %middle.block169 ]
  br label %scalar.ph160

bb.s:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv127 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next128, %.loopexit ] ; 2 uses
  %.idx = mul nuw nsw i64 %indvars.iv127, 12
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !36 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !36 ; 2 uses
  %.not.i107 = icmp eq i32 %i.cm, 0
  br i1 %.not.i107, label %Cba_NtkRangeRight.exit114, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cp = load ptr, ptr %0, align 8, !tbaa !69
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !73
  %i.cs = getelementptr i8, ptr %i.cr, i64 8
  %.val.i108 = load ptr, ptr %i.cs, align 8, !tbaa !46
  %i.ct = getelementptr i8, ptr %.val.i108, i64 8
  %.val.val.i109 = load ptr, ptr %i.ct, align 8, !tbaa !35
  %i.cu = shl nsw i32 %i.cm, 2
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %.val.val.i109, i64 %i.cv ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !76
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !77
  br label %Cba_NtkRangeRight.exit114

Cba_NtkRangeRight.exit114:                        ; preds = %bb.s, %bb.t
  %i.da = phi i32 [ %i.cx, %bb.t ], [ 0, %bb.s ]  ; 4 uses
  %i.db = phi i32 [ %i.cz, %bb.t ], [ 0, %bb.s ]  ; 4 uses
  %i.dc = tail call noundef i32 @llvm.smin.i32(i32 %i.da, i32 %i.db)
  %i.dd = tail call noundef i32 @llvm.smax.i32(i32 %i.da, i32 %i.db)
  %i.de = tail call i32 @llvm.smin.i32(i32 %i.db, i32 %i.da) ; 3 uses
  %smin = sext i32 %i.de to i64                   ; 3 uses
  %i.df = add i32 %i.dd, 1
  %i.dg = add i32 %i.df, %i.de
  %i.dh = sub i32 %i.dg, %i.dc
  %3 = tail call i32 @llvm.smax.i32(i32 %i.da, i32 %i.db)
  %i.di = sub i32 %3, %i.de                       ; 2 uses
  %i.dj = zext i32 %i.di to i64
  %i.dk = add nuw nsw i64 %i.dj, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.di, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %Cba_NtkRangeRight.exit114
  %n.vec = and i64 %i.dk, 8589934584              ; 3 uses
  %i.dl = add nsw i64 %n.vec, %smin
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.co, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.val97, i64 %smin
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %gep, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat, ptr %i.dm, align 4, !tbaa !36
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dk, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %Cba_NtkRangeRight.exit114, %middle.block
  %indvars.iv.ph = phi i64 [ %smin, %Cba_NtkRangeRight.exit114 ], [ %i.dl, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.do = getelementptr inbounds [4 x i8], ptr %.val97, i64 %indvars.iv
  store i32 %i.co, ptr %i.do, align 4, !tbaa !36
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.dh, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !114

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count
  br i1 %exitcond130.not, label %.preheader, label %bb.s, !llvm.loop !115

scalar.ph160:                                     ; preds = %scalar.ph160.preheader, %scalar.ph160
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %scalar.ph160 ], [ %indvars.iv132.ph, %scalar.ph160.preheader ] ; 2 uses
  %.082122 = phi i32 [ %i.dq, %scalar.ph160 ], [ %.082122.ph, %scalar.ph160.preheader ]
  %.084121 = phi i32 [ %spec.select, %scalar.ph160 ], [ %.084121.ph, %scalar.ph160.preheader ]
  %i.dp = getelementptr inbounds [4 x i8], ptr %.val97, i64 %indvars.iv132
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !36 ; 2 uses
  %.not94 = icmp ne i32 %.082122, %i.dq
  %i.dr = zext i1 %.not94 to i32
  %spec.select = add nuw nsw i32 %.084121, %i.dr  ; 2 uses
  %indvars.iv.next133 = add nsw i64 %indvars.iv132, 1 ; 2 uses
  %lftr.wideiv134 = trunc i64 %indvars.iv.next133 to i32
  %exitcond135.not = icmp eq i32 %i.bt, %lftr.wideiv134
  br i1 %exitcond135.not, label %.critedge, label %scalar.ph160, !llvm.loop !116

.critedge:                                        ; preds = %scalar.ph160, %middle.block169
  %spec.select.lcssa = phi i32 [ %i.cj, %middle.block169 ], [ %spec.select, %scalar.ph160 ] ; 3 uses
  %i.ds = tail call fastcc i32 @Cba_ObjAlloc(ptr noundef nonnull %0, i32 noundef 89, i32 noundef %spec.select.lcssa, i32 noundef 1)
  %i.dt = getelementptr i8, ptr %0, i64 128
  %.val103 = load ptr, ptr %i.dt, align 8, !tbaa !35
  %i.du = sext i32 %i.ds to i64                   ; 3 uses
  %i.dv = getelementptr inbounds [4 x i8], ptr %.val103, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !36 ; 8 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.dy = add nsw i32 %i.dw, 1                    ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 3 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !33 ; 4 uses
  %.not.i.not.i.i = icmp slt i32 %i.dw, %i.ea
  br i1 %.not.i.not.i.i, label %Cba_FonSetName.exit, label %bb.u

bb.u:                                             ; preds = %.critedge
  %i.eb = load i32, ptr %i.dx, align 8, !tbaa !34 ; 4 uses
  %i.ec = shl nsw i32 %i.eb, 1                    ; 2 uses
  %.not.i.i115 = icmp slt i32 %i.dw, %i.ec
  %.not.i.i.not.i.i = icmp sgt i32 %i.eb, %i.dw   ; 2 uses
  br i1 %.not.i.i115, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !35 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ee, null
  %i.ef = sext i32 %i.dy to i64
  %i.eg = shl nsw i64 %i.ef, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eh = tail call ptr @realloc(ptr noundef nonnull %i.ee, i64 noundef %i.eg) #29
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.ei = tail call noalias ptr @malloc(i64 noundef %i.eg) #30
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ej = phi ptr [ %i.eh, %bb.x ], [ %i.ei, %bb.y ]
  store ptr %i.ej, ptr %i.ed, align 8, !tbaa !35
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.aa:                                            ; preds = %bb.u
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ek = icmp slt i32 %i.eb, 1073741823
  %spec.select.i.i.i = select i1 %i.ek, i32 %i.ec, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i = icmp slt i32 %i.eb, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.ac, label %Vec_IntGrow.exit.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !35 ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.em, null
  %i.en = sext i32 %spec.select.i.i.i to i64
  %i.eo = shl nuw nsw i64 %i.en, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ep = tail call ptr @realloc(ptr noundef nonnull %i.em, i64 noundef %i.eo) #29
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.eq = tail call noalias ptr @malloc(i64 noundef %i.eo) #30
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.er = phi ptr [ %i.ep, %bb.ad ], [ %i.eq, %bb.ae ]
  store ptr %i.er, ptr %i.el, align 8, !tbaa !35
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.af, %bb.z
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.af ], [ %i.dy, %bb.z ]
  store i32 %spec.select.sink.i.i.i, ptr %i.dx, align 8, !tbaa !34
  %.pre.i.i = load i32, ptr %i.dz, align 4, !tbaa !33
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.ab, %bb.aa, %bb.v
  %i.es = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.ea, %bb.ab ], [ %i.ea, %bb.aa ], [ %i.ea, %bb.v ] ; 3 uses
  %.not4.i.i = icmp sgt i32 %i.es, %i.dw
  br i1 %.not4.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !35
  %i.ev = sext i32 %i.es to i64
  %i.ew = shl nsw i64 %i.ev, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.eu, i64 %i.ew
  %i.ex = sub i32 %i.dw, %i.es
  %i.ey = zext i32 %i.ex to i64
  %i.ez = shl nuw nsw i64 %i.ey, 2
  %i.fa = add nuw nsw i64 %i.ez, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, i8 0, i64 %i.fa, i1 false), !tbaa !36
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !33
  br label %Cba_FonSetName.exit

Cba_FonSetName.exit:                              ; preds = %.critedge, %._crit_edge.i.i.i
  %i.fb = getelementptr i8, ptr %0, i64 272
  %.val.i.i = load ptr, ptr %i.fb, align 8, !tbaa !35
  %i.fc = sext i32 %i.dw to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.fc
  store i32 %i.b, ptr %i.fd, align 4, !tbaa !36
  %i.fe = tail call i32 @Prs_CreateRange(ptr noundef nonnull %0, i32 noundef %i.dw, i32 noundef %i.b) ; 0 uses
  %i.ff = getelementptr i8, ptr %0, i64 112       ; 2 uses
  %i.fg = getelementptr i8, ptr %0, i64 144       ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %Cba_FonSetName.exit, %bb.al
  %indvars.iv137 = phi i64 [ %smin131, %Cba_FonSetName.exit ], [ %indvars.iv.next138, %bb.al ] ; 2 uses
  %.0126 = phi i32 [ 0, %Cba_FonSetName.exit ], [ %.1, %bb.al ] ; 2 uses
  %.183125 = phi i32 [ -1, %Cba_FonSetName.exit ], [ %i.fi, %bb.al ] ; 4 uses
  %.187124 = phi i32 [ 0, %Cba_FonSetName.exit ], [ %.288, %bb.al ] ; 3 uses
  %.val = load ptr, ptr %i.bp, align 8, !tbaa !35
  %i.fh = getelementptr inbounds [4 x i8], ptr %.val, i64 %indvars.iv137
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !36 ; 3 uses
  %i.fj = icmp eq i32 %.183125, -1
  %i.fk = icmp eq i32 %.183125, %i.fi
  %or.cond = select i1 %i.fj, i1 true, i1 %i.fk
  br i1 %or.cond, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fl = add nsw i32 %.0126, 1
  br label %bb.al

bb.ai:                                            ; preds = %bb.ag
  %i.fm = icmp eq i32 %.183125, 0
  br i1 %i.fm, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %.val.i116 = load ptr, ptr %0, align 8, !tbaa !69
  %i.fn = getelementptr i8, ptr %.val.i116, i64 16
  %.val.val.i117 = load ptr, ptr %i.fn, align 8, !tbaa !72
  %i.fo = tail call ptr @Abc_NamBuffer(ptr noundef %.val.val.i117) #28 ; 2 uses
end_hunk_0
