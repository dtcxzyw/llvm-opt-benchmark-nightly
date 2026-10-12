Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cbaReadVer?download=true
inline.NumInlined: 1012
inline.NumDeleted: 196
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Prs_CreateOutConcat:bb.a
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
  %i.bq = tail call i32 @llvm.smin.i32(i32 %i.au, i32 %i.av) ; 2 uses
  %smin131 = sext i32 %i.bq to i64                ; 4 uses
  %i.br = add i32 %i.au, %i.av
  %i.bs = add i32 %i.br, 1
  %i.bt = sub i32 %i.bs, %i.aw                    ; 2 uses
  %i.bu = tail call i32 @llvm.smax.i32(i32 %i.au, i32 %i.av)
  %i.bv = sub i32 %i.bu, %i.bq                    ; 2 uses
  %i.bw = zext i32 %i.bv to i64
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %min.iters.check160 = icmp ult i32 %i.bv, 7
  br i1 %min.iters.check160, label %scalar.ph159.preheader, label %vector.ph161

vector.ph161:                                     ; preds = %.preheader
  %n.vec162 = and i64 %i.bx, 8589934584           ; 3 uses
  %i.by = add nsw i64 %n.vec162, %smin131
  %invariant.gep177 = getelementptr [4 x i8], ptr %.val97, i64 %smin131
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph161
  %index164 = phi i64 [ 0, %vector.ph161 ], [ %index.next167, %vector.body163 ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 -1>, %vector.ph161 ], [ %wide.load166, %vector.body163 ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph161 ], [ %i.cg, %vector.body163 ]
  %vec.phi165 = phi <4 x i32> [ zeroinitializer, %vector.ph161 ], [ %i.ch, %vector.body163 ]
  %gep178 = getelementptr [4 x i8], ptr %invariant.gep177, i64 %index164 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %gep178, i64 16
  %wide.load = load <4 x i32>, ptr %gep178, align 4, !tbaa !36 ; 3 uses
  %wide.load166 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !36 ; 4 uses
  %i.ca = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cb = shufflevector <4 x i32> %wide.load, <4 x i32> %wide.load166, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cc = icmp ne <4 x i32> %i.ca, %wide.load
  %i.cd = icmp ne <4 x i32> %i.cb, %wide.load166
  %i.ce = zext <4 x i1> %i.cc to <4 x i32>
  %i.cf = zext <4 x i1> %i.cd to <4 x i32>
  %i.cg = add <4 x i32> %vec.phi, %i.ce           ; 2 uses
  %i.ch = add <4 x i32> %vec.phi165, %i.cf        ; 2 uses
  %index.next167 = add nuw i64 %index164, 8       ; 2 uses
  %i.ci = icmp eq i64 %index.next167, %n.vec162
  br i1 %i.ci, label %middle.block168, label %vector.body163, !llvm.loop !112

middle.block168:                                  ; preds = %vector.body163
  %bin.rdx = add <4 x i32> %i.ch, %i.cg
  %i.cj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %vector.recur.extract = extractelement <4 x i32> %wide.load166, i64 3
  %cmp.n169 = icmp eq i64 %i.bx, %n.vec162
  br i1 %cmp.n169, label %.critedge, label %scalar.ph159.preheader

scalar.ph159.preheader:                           ; preds = %.preheader, %middle.block168
  %indvars.iv132.ph = phi i64 [ %smin131, %.preheader ], [ %i.by, %middle.block168 ]
  %.082122.ph = phi i32 [ -1, %.preheader ], [ %vector.recur.extract, %middle.block168 ]
  %.084121.ph = phi i32 [ 0, %.preheader ], [ %i.cj, %middle.block168 ]
  br label %scalar.ph159

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
  %i.da = phi i32 [ %i.cx, %bb.t ], [ 0, %bb.s ]  ; 3 uses
  %i.db = phi i32 [ %i.cz, %bb.t ], [ 0, %bb.s ]  ; 3 uses
  %3 = tail call noundef i32 @llvm.smin.i32(i32 %i.da, i32 %i.db)
  %i.dc = tail call noundef i32 @llvm.smax.i32(i32 %i.da, i32 %i.db) ; 2 uses
  %i.dd = tail call i32 @llvm.smin.i32(i32 %i.da, i32 %i.db) ; 3 uses
  %smin = sext i32 %i.dd to i64                   ; 3 uses
  %i.de = add i32 %i.dc, 1
  %i.df = add i32 %i.de, %i.dd
  %i.dg = sub i32 %i.df, %3
  %i.dh = sub i32 %i.dc, %i.dd                    ; 2 uses
  %i.di = zext i32 %i.dh to i64
  %i.dj = add nuw nsw i64 %i.di, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.dh, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %Cba_NtkRangeRight.exit114
  %n.vec = and i64 %i.dj, 8589934584              ; 3 uses
  %i.dk = add nsw i64 %n.vec, %smin
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.co, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.val97, i64 %smin
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %gep, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat, ptr %i.dl, align 4, !tbaa !36
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dj, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %Cba_NtkRangeRight.exit114, %middle.block
  %indvars.iv.ph = phi i64 [ %smin, %Cba_NtkRangeRight.exit114 ], [ %i.dk, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dn = getelementptr inbounds [4 x i8], ptr %.val97, i64 %indvars.iv
  store i32 %i.co, ptr %i.dn, align 4, !tbaa !36
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.dg, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !114

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count
  br i1 %exitcond130.not, label %.preheader, label %bb.s, !llvm.loop !115

scalar.ph159:                                     ; preds = %scalar.ph159.preheader, %scalar.ph159
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %scalar.ph159 ], [ %indvars.iv132.ph, %scalar.ph159.preheader ] ; 2 uses
  %.082122 = phi i32 [ %i.dp, %scalar.ph159 ], [ %.082122.ph, %scalar.ph159.preheader ]
  %.084121 = phi i32 [ %spec.select, %scalar.ph159 ], [ %.084121.ph, %scalar.ph159.preheader ]
  %i.do = getelementptr inbounds [4 x i8], ptr %.val97, i64 %indvars.iv132
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !36 ; 2 uses
  %.not94 = icmp ne i32 %.082122, %i.dp
  %i.dq = zext i1 %.not94 to i32
  %spec.select = add nuw nsw i32 %.084121, %i.dq  ; 2 uses
  %indvars.iv.next133 = add nsw i64 %indvars.iv132, 1 ; 2 uses
  %lftr.wideiv134 = trunc i64 %indvars.iv.next133 to i32
  %exitcond135.not = icmp eq i32 %i.bt, %lftr.wideiv134
  br i1 %exitcond135.not, label %.critedge, label %scalar.ph159, !llvm.loop !116

.critedge:                                        ; preds = %scalar.ph159, %middle.block168
  %spec.select.lcssa = phi i32 [ %i.cj, %middle.block168 ], [ %spec.select, %scalar.ph159 ] ; 3 uses
  %i.dr = tail call fastcc i32 @Cba_ObjAlloc(ptr noundef nonnull %0, i32 noundef 89, i32 noundef %spec.select.lcssa, i32 noundef 1)
  %i.ds = getelementptr i8, ptr %0, i64 128
  %.val103 = load ptr, ptr %i.ds, align 8, !tbaa !35
  %i.dt = sext i32 %i.dr to i64                   ; 3 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %.val103, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !36 ; 8 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.dx = add nsw i32 %i.dv, 1                    ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 3 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !33 ; 4 uses
  %.not.i.not.i.i = icmp slt i32 %i.dv, %i.dz
  br i1 %.not.i.not.i.i, label %Cba_FonSetName.exit, label %bb.u

bb.u:                                             ; preds = %.critedge
  %i.ea = load i32, ptr %i.dw, align 8, !tbaa !34 ; 4 uses
  %i.eb = shl nsw i32 %i.ea, 1                    ; 2 uses
  %.not.i.i115 = icmp slt i32 %i.dv, %i.eb
  %.not.i.i.not.i.i = icmp sgt i32 %i.ea, %i.dv   ; 2 uses
  br i1 %.not.i.i115, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !35 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ed, null
  %i.ee = sext i32 %i.dx to i64
  %i.ef = shl nsw i64 %i.ee, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eg = tail call ptr @realloc(ptr noundef nonnull %i.ed, i64 noundef %i.ef) #29
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.eh = tail call noalias ptr @malloc(i64 noundef %i.ef) #30
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ei = phi ptr [ %i.eg, %bb.x ], [ %i.eh, %bb.y ]
  store ptr %i.ei, ptr %i.ec, align 8, !tbaa !35
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.aa:                                            ; preds = %bb.u
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ej = icmp slt i32 %i.ea, 1073741823
  %spec.select.i.i.i = select i1 %i.ej, i32 %i.eb, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i = icmp slt i32 %i.ea, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.ac, label %Vec_IntGrow.exit.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !35 ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.el, null
  %i.em = sext i32 %spec.select.i.i.i to i64
  %i.en = shl nuw nsw i64 %i.em, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eo = tail call ptr @realloc(ptr noundef nonnull %i.el, i64 noundef %i.en) #29
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.ep = tail call noalias ptr @malloc(i64 noundef %i.en) #30
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.eq = phi ptr [ %i.eo, %bb.ad ], [ %i.ep, %bb.ae ]
  store ptr %i.eq, ptr %i.ek, align 8, !tbaa !35
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.af, %bb.z
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.af ], [ %i.dx, %bb.z ]
  store i32 %spec.select.sink.i.i.i, ptr %i.dw, align 8, !tbaa !34
  %.pre.i.i = load i32, ptr %i.dy, align 4, !tbaa !33
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.ab, %bb.aa, %bb.v
  %i.er = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.dz, %bb.ab ], [ %i.dz, %bb.aa ], [ %i.dz, %bb.v ] ; 3 uses
  %.not4.i.i = icmp sgt i32 %i.er, %i.dv
  br i1 %.not4.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !35
  %i.eu = sext i32 %i.er to i64
  %i.ev = shl nsw i64 %i.eu, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.et, i64 %i.ev
  %i.ew = sub i32 %i.dv, %i.er
  %i.ex = zext i32 %i.ew to i64
  %i.ey = shl nuw nsw i64 %i.ex, 2
  %i.ez = add nuw nsw i64 %i.ey, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, i8 0, i64 %i.ez, i1 false), !tbaa !36
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !33
  br label %Cba_FonSetName.exit

Cba_FonSetName.exit:                              ; preds = %.critedge, %._crit_edge.i.i.i
  %i.fa = getelementptr i8, ptr %0, i64 272
  %.val.i.i = load ptr, ptr %i.fa, align 8, !tbaa !35
  %i.fb = sext i32 %i.dv to i64
  %i.fc = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.fb
  store i32 %i.b, ptr %i.fc, align 4, !tbaa !36
  %i.fd = tail call i32 @Prs_CreateRange(ptr noundef nonnull %0, i32 noundef %i.dv, i32 noundef %i.b) ; 0 uses
  %i.fe = getelementptr i8, ptr %0, i64 112       ; 2 uses
  %i.ff = getelementptr i8, ptr %0, i64 144       ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %Cba_FonSetName.exit, %bb.al
  %indvars.iv136 = phi i64 [ %smin131, %Cba_FonSetName.exit ], [ %indvars.iv.next137, %bb.al ] ; 2 uses
  %.0126 = phi i32 [ 0, %Cba_FonSetName.exit ], [ %.1, %bb.al ] ; 2 uses
  %.183125 = phi i32 [ -1, %Cba_FonSetName.exit ], [ %i.fh, %bb.al ] ; 4 uses
  %.187124 = phi i32 [ 0, %Cba_FonSetName.exit ], [ %.288, %bb.al ] ; 3 uses
  %.val = load ptr, ptr %i.bp, align 8, !tbaa !35
  %i.fg = getelementptr inbounds [4 x i8], ptr %.val, i64 %indvars.iv136
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !36 ; 3 uses
  %i.fi = icmp eq i32 %.183125, -1
  %i.fj = icmp eq i32 %.183125, %i.fh
  %or.cond = select i1 %i.fi, i1 true, i1 %i.fj
  br i1 %or.cond, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fk = add nsw i32 %.0126, 1
  br label %bb.al

bb.ai:                                            ; preds = %bb.ag
  %i.fl = icmp eq i32 %.183125, 0
  br i1 %i.fl, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %.val.i116 = load ptr, ptr %0, align 8, !tbaa !69
  %i.fm = getelementptr i8, ptr %.val.i116, i64 16
  %.val.val.i117 = load ptr, ptr %i.fm, align 8, !tbaa !72
  %i.fn = tail call ptr @Abc_NamBuffer(ptr noundef %.val.val.i117) #28 ; 2 uses
end_hunk_0
