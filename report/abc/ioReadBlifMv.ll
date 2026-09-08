Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ioReadBlifMv?download=true
inline.NumInlined: 413
inline.NumDeleted: 87
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Io_MvParseLineNamesMv:bb.a

bb.d:                                             ; preds = %Io_MvFindArrow.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25   ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %.val.i = load i32, ptr %i.r, align 4, !tbaa !16 ; 2 uses
  %i.s = icmp sgt i32 %.val.i, 0
  br i1 %i.s, label %.lr.ph.i, label %Io_MvGetLine.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.t = getelementptr i8, ptr %i.q, i64 8
  %.val9.i = load ptr, ptr %i.t, align 8, !tbaa !18
  %wide.trip.count.i = zext nneg i32 %.val.i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.val9.i, i64 %indvars.iv.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !38
  %i.w = icmp ult ptr %1, %i.v
  br i1 %i.w, label %.critedge.loopexit.split.loop.exit14.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Io_MvGetLine.exit, label %bb.e, !llvm.loop !0

.critedge.loopexit.split.loop.exit14.i:           ; preds = %bb.e
  %i.x = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %Io_MvGetLine.exit

Io_MvGetLine.exit:                                ; preds = %bb.f, %bb.d, %.critedge.loopexit.split.loop.exit14.i
  %.08.i = phi i32 [ -1, %bb.d ], [ %i.x, %.critedge.loopexit.split.loop.exit14.i ], [ -1, %bb.f ]
  %i.y = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(1) @.str.74, i32 noundef %.08.i) #23 ; 0 uses
  br label %Io_MvParseLineNamesMvOne.exit.thread

Io_MvFindArrow.exit.thread:                       ; preds = %bb.b, %Io_MvFindArrow.exit
  %.09.i109 = phi ptr [ %.0.i, %Io_MvFindArrow.exit ], [ null, %bb.b ] ; 2 uses
  %i.z = load i8, ptr %1, align 1, !tbaa !39      ; 2 uses
  %.not11.i = icmp eq i8 %i.z, 0
  br i1 %.not11.i, label %Io_MvSplitIntoTokens.exit, label %.lr.ph.i90

.lr.ph.i90:                                       ; preds = %Io_MvFindArrow.exit.thread, %bb.g
  %i.aa = phi i8 [ %i.ac, %bb.g ], [ %i.z, %Io_MvFindArrow.exit.thread ]
  %.012.i = phi ptr [ %i.ab, %bb.g ], [ %1, %Io_MvFindArrow.exit.thread ] ; 2 uses
  switch i8 %i.aa, label %bb.g [
    i8 32, label %Io_MvCharIsSpace.exit.thread.i
    i8 13, label %Io_MvCharIsSpace.exit.thread.i
    i8 9, label %Io_MvCharIsSpace.exit.thread.i
    i8 10, label %Io_MvCharIsSpace.exit.thread.i
  ]

Io_MvCharIsSpace.exit.thread.i:                   ; preds = %.lr.ph.i90, %.lr.ph.i90, %.lr.ph.i90, %.lr.ph.i90
  store i8 0, ptr %.012.i, align 1, !tbaa !39
  br label %bb.g

bb.g:                                             ; preds = %Io_MvCharIsSpace.exit.thread.i, %.lr.ph.i90
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i, i64 1 ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !39  ; 2 uses
  %.not.i91 = icmp eq i8 %i.ac, 0
  br i1 %.not.i91, label %Io_MvSplitIntoTokens.exit, label %.lr.ph.i90, !llvm.loop !1

Io_MvSplitIntoTokens.exit:                        ; preds = %bb.g, %Io_MvFindArrow.exit.thread
  %.0.lcssa.i = phi ptr [ %1, %Io_MvFindArrow.exit.thread ], [ %i.ab, %bb.g ]
  tail call fastcc void @Io_MvCollectTokens(ptr noundef %i.d, ptr noundef nonnull %1, ptr noundef nonnull %.0.lcssa.i)
  %i.ad = getelementptr i8, ptr %i.d, i64 4       ; 3 uses
  %.val84 = load i32, ptr %i.ad, align 4, !tbaa !16 ; 3 uses
  %i.ae = add i32 %.val84, -2                     ; 5 uses
  %i.af = icmp sgt i32 %.val84, 2
  %or.cond = select i1 %.not.i.not.not.not.not.not, i1 %i.af, i1 false
  %i.ag = getelementptr i8, ptr %i.d, i64 8
  %.val87 = load ptr, ptr %i.ag, align 8, !tbaa !18 ; 3 uses
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %Io_MvSplitIntoTokens.exit
  %i.ah = zext i32 %i.ae to i64                   ; 4 uses
  %i.ai = icmp ne i32 %i.ae, 0
  %.neg = sext i1 %i.ai to i64
  %i.aj = add nuw nsw i64 %i.ah, 1
  %i.ak = add nsw i64 %i.aj, %.neg                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ak, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.ak, -4                      ; 3 uses
  %i.al = sub nsw i64 %i.ah, %n.vec
  %i.am = insertelement <2 x i32> <i32 poison, i32 0>, i32 %i.ae, i64 0
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %.09.i109, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ <i32 1, i32 0>, %vector.ph ], [ %i.az, %vector.body ]
  %vec.phi235 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ba, %vector.body ]
  %vec.phi236 = phi <2 x i32> [ %i.am, %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi237 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %i.an = sub i64 %i.ah, %index
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.val87, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -24
  %wide.load = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !38
  %wide.load238 = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !38
  %reverse = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse239 = shufflevector <2 x ptr> %wide.load238, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %i.ar = icmp ult <2 x ptr> %broadcast.splat, %reverse ; 2 uses
  %i.as = icmp ult <2 x ptr> %broadcast.splat, %reverse239 ; 2 uses
  %i.at = sext <2 x i1> %i.ar to <2 x i32>
  %i.au = sext <2 x i1> %i.as to <2 x i32>
  %i.av = add <2 x i32> %vec.phi236, %i.at        ; 2 uses
  %i.aw = add <2 x i32> %vec.phi237, %i.au        ; 2 uses
  %i.ax = zext <2 x i1> %i.ar to <2 x i32>
  %i.ay = zext <2 x i1> %i.as to <2 x i32>
  %i.az = add <2 x i32> %vec.phi, %i.ax           ; 2 uses
  %i.ba = add <2 x i32> %vec.phi235, %i.ay        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !195

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.ba, %i.az
  %i.bc = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %bin.rdx240 = add <2 x i32> %i.aw, %i.av
  %i.bd = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx240) ; 2 uses
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ah, %.lr.ph ], [ %i.al, %middle.block ]
  %.070139.ph = phi i32 [ 1, %.lr.ph ], [ %i.bc, %middle.block ]
  %.073138.ph = phi i32 [ %i.ae, %.lr.ph ], [ %i.bd, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %.070139 = phi i32 [ %.171, %scalar.ph ], [ %.070139.ph, %scalar.ph.preheader ]
  %.073138 = phi i32 [ %.174, %scalar.ph ], [ %.073138.ph, %scalar.ph.preheader ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.val87, i64 %indvars.iv
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !38
  %i.bg = icmp ult ptr %.09.i109, %i.bf           ; 2 uses
  %i.bh = sext i1 %i.bg to i32
  %.174 = add nsw i32 %.073138, %i.bh             ; 2 uses
  %i.bi = zext i1 %i.bg to i32
  %.171 = add nuw nsw i32 %.070139, %i.bi         ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bj = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.bj, label %scalar.ph, label %.loopexit, !llvm.loop !196

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %Io_MvSplitIntoTokens.exit
  %.275 = phi i32 [ %i.ae, %Io_MvSplitIntoTokens.exit ], [ %i.bd, %middle.block ], [ %.174, %scalar.ph ] ; 7 uses
  %.272 = phi i32 [ 1, %Io_MvSplitIntoTokens.exit ], [ %i.bc, %middle.block ], [ %.171, %scalar.ph ] ; 7 uses
  %i.bk = getelementptr i8, ptr %i.d, i64 8       ; 4 uses
  %i.bl = sext i32 %.val84 to i64
  %i.bm = getelementptr [8 x i8], ptr %.val87, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 -8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !38 ; 3 uses
  %i.bp = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bo) #24
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %Io_MvCharIsSpace.exit.thread11.i, %.loopexit
  %.0.i92 = phi ptr [ %i.bq, %.loopexit ], [ %i.bv, %Io_MvCharIsSpace.exit.thread11.i ] ; 5 uses
  %i.br = load i8, ptr %.0.i92, align 1, !tbaa !39
  switch i8 %i.br, label %Io_MvCharIsSpace.exit.thread11.i [
    i8 46, label %bb.i
    i8 32, label %Io_MvCharIsSpace.exit.thread.i93
    i8 13, label %Io_MvCharIsSpace.exit.thread.i93
    i8 9, label %Io_MvCharIsSpace.exit.thread.i93
    i8 10, label %Io_MvCharIsSpace.exit.thread.i93
  ]

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i92, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !39
  %i.bu = icmp eq i8 %i.bt, 100
  br i1 %i.bu, label %Io_MvCharIsSpace.exit.thread11.i, label %Io_MvSplitIntoTokensMv.exit

Io_MvCharIsSpace.exit.thread.i93:                 ; preds = %bb.h, %bb.h, %bb.h, %bb.h
  store i8 0, ptr %.0.i92, align 1, !tbaa !39
  br label %Io_MvCharIsSpace.exit.thread11.i

Io_MvCharIsSpace.exit.thread11.i:                 ; preds = %Io_MvCharIsSpace.exit.thread.i93, %bb.i, %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i92, i64 1
  br label %bb.h, !llvm.loop !197

Io_MvSplitIntoTokensMv.exit:                      ; preds = %bb.i
  tail call fastcc void @Io_MvCollectTokens(ptr noundef %i.f, ptr noundef nonnull %i.bq, ptr noundef nonnull %.0.i92)
  %i.bw = getelementptr i8, ptr %i.f, i64 8       ; 6 uses
  %.val86 = load ptr, ptr %i.bw, align 8, !tbaa !18
  %i.bx = load ptr, ptr %.val86, align 8, !tbaa !38 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !39
  %i.bz = icmp eq i8 %i.by, 46
  %i.ca = getelementptr i8, ptr %i.f, i64 4
  %.val82 = load i32, ptr %i.ca, align 4, !tbaa !16
  %i.cb = xor i32 %.272, -1
  %i.cc = select i1 %i.bz, i32 %i.cb, i32 0
  %.069 = add i32 %.val82, %i.cc                  ; 2 uses
  %i.cd = add nsw i32 %.272, %.275                ; 3 uses
  %i.ce = srem i32 %.069, %i.cd
  %i.cf = sdiv i32 %.069, %i.cd
  %.not = icmp eq i32 %i.ce, 0
  br i1 %.not, label %bb.m, label %bb.j

bb.j:                                             ; preds = %Io_MvSplitIntoTokensMv.exit
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !56  ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 88
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !25 ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 4
  %.val.i94 = load i32, ptr %i.ck, align 4, !tbaa !16 ; 2 uses
  %i.cl = icmp sgt i32 %.val.i94, 0
  br i1 %i.cl, label %.lr.ph.i96, label %Io_MvGetLine.exit103

.lr.ph.i96:                                       ; preds = %bb.j
  %i.cm = getelementptr i8, ptr %i.cj, i64 8
  %.val9.i97 = load ptr, ptr %i.cm, align 8, !tbaa !18
  %wide.trip.count.i98 = zext nneg i32 %.val.i94 to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i96
  %indvars.iv.i99 = phi i64 [ 0, %.lr.ph.i96 ], [ %indvars.iv.next.i100, %bb.l ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.val9.i97, i64 %indvars.iv.i99
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !38
  %i.cp = icmp ult ptr %i.bx, %i.co
  br i1 %i.cp, label %.critedge.loopexit.split.loop.exit14.i102, label %bb.l

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next.i100 = add nuw nsw i64 %indvars.iv.i99, 1 ; 2 uses
  %exitcond.not.i101 = icmp eq i64 %indvars.iv.next.i100, %wide.trip.count.i98
  br i1 %exitcond.not.i101, label %Io_MvGetLine.exit103, label %bb.k, !llvm.loop !0

.critedge.loopexit.split.loop.exit14.i102:        ; preds = %bb.k
  %i.cq = trunc nuw nsw i64 %indvars.iv.i99 to i32
  br label %Io_MvGetLine.exit103

Io_MvGetLine.exit103:                             ; preds = %bb.l, %bb.j, %.critedge.loopexit.split.loop.exit14.i102
  %.08.i95 = phi i32 [ -1, %bb.j ], [ %i.cq, %.critedge.loopexit.split.loop.exit14.i102 ], [ -1, %bb.l ]
  %i.cr = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ch, ptr noundef nonnull dereferenceable(1) @.str.75, i32 noundef %.08.i95, ptr noundef nonnull %i.bo) #23 ; 0 uses
  br label %Io_MvParseLineNamesMvOne.exit.thread

bb.m:                                             ; preds = %Io_MvSplitIntoTokensMv.exit
  %i.cs = icmp eq i32 %.275, 0
  %i.ct = icmp sgt i32 %i.cf, 1
  %or.cond3 = and i1 %i.cs, %i.ct
  br i1 %or.cond3, label %.preheader, label %.preheader115

.preheader115:                                    ; preds = %bb.m
  %.not.i105 = icmp eq i32 %2, 0
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.cv = add nsw i32 %.272, 1
  %i.cw = getelementptr i8, ptr %i.f, i64 4       ; 3 uses
  %i.cx = icmp sgt i32 %.275, 0
  %i.cy = sext i32 %i.cd to i64                   ; 2 uses
  %wide.trip.count.i57.i = zext nneg i32 %.275 to i64
  %wide.trip.count = zext i32 %.272 to i64
  br label %bb.q

.preheader:                                       ; preds = %bb.m
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.not80 = icmp eq i32 %2, 0
  br label %bb.n

bb.n:                                             ; preds = %.preheader, %bb.p
  %.1143 = phi i32 [ 0, %.preheader ], [ %i.do, %bb.p ] ; 2 uses
  %.val = load i32, ptr %i.ad, align 4, !tbaa !16
  %i.da = sub i32 %.1143, %.272
  %i.db = add i32 %i.da, %.val
  %.val85 = load ptr, ptr %i.bk, align 8, !tbaa !18
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %.val85, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !38 ; 2 uses
  %i.df = load ptr, ptr %i.cz, align 8, !tbaa !59
  %i.dg = tail call ptr @Abc_NtkFindOrCreateNet(ptr noundef %i.df, ptr noundef %i.de) #23
  br i1 %.not80, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dh = tail call fastcc ptr @Io_MvParseAddResetCircuit(ptr noundef nonnull %0, ptr noundef %i.de)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.076 = phi ptr [ %i.dh, %bb.o ], [ %i.dg, %bb.n ]
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 40 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !92
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr %i.dj, align 8, !tbaa !92
  %i.dm = load ptr, ptr %i.cz, align 8, !tbaa !59
  %i.dn = tail call ptr @Abc_NtkCreateNodeConst0(ptr noundef %i.dm) #23
  tail call void @Abc_ObjAddFanin(ptr noundef %.076, ptr noundef %i.dn) #23
  %i.do = add nuw nsw i32 %.1143, 1               ; 2 uses
  %exitcond174.not = icmp eq i32 %i.do, %.272
  br i1 %exitcond174.not, label %Io_MvParseLineNamesMvOne.exit.thread, label %bb.n, !llvm.loop !198

bb.q:                                             ; preds = %.preheader115, %bb.au
  %indvars.iv171 = phi i64 [ 0, %.preheader115 ], [ %indvars.iv.next172, %bb.au ] ; 3 uses
  %.val.i104 = load i32, ptr %i.ad, align 4, !tbaa !16
  %i.dp = trunc nuw nsw i64 %indvars.iv171 to i32 ; 2 uses
  %i.dq = sub i32 %i.dp, %.272
  %i.dr = add i32 %i.dq, %.val.i104
  %.val42.i = load ptr, ptr %i.bk, align 8, !tbaa !18
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %.val42.i, i64 %i.ds
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !38 ; 8 uses
  %i.dv = load ptr, ptr %i.cu, align 8, !tbaa !59 ; 2 uses
  br i1 %.not.i105, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dw = tail call ptr @Abc_NtkFindNet(ptr noundef %i.dv, ptr noundef %i.du) #23
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.dy = load ptr, ptr %i.a, align 8, !tbaa !56  ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 88
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !25 ; 2 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 4
  %.val.i.i = load i32, ptr %i.ec, align 4, !tbaa !16 ; 2 uses
  %i.ed = icmp sgt i32 %.val.i.i, 0
  br i1 %i.ed, label %.lr.ph.i.i, label %Io_MvGetLine.exit.i

.lr.ph.i.i:                                       ; preds = %bb.s
  %i.ee = getelementptr i8, ptr %i.eb, i64 8
  %.val9.i.i = load ptr, ptr %i.ee, align 8, !tbaa !18
  %wide.trip.count.i.i = zext nneg i32 %.val.i.i to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.u ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.val9.i.i, i64 %indvars.iv.i.i
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !38
  %i.eh = icmp ult ptr %i.du, %i.eg
  br i1 %i.eh, label %.critedge.loopexit.split.loop.exit14.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %Io_MvGetLine.exit.i, label %bb.t, !llvm.loop !0

.critedge.loopexit.split.loop.exit14.i.i:         ; preds = %bb.t
  %i.ei = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %Io_MvGetLine.exit.i

Io_MvGetLine.exit.i:                              ; preds = %bb.u, %.critedge.loopexit.split.loop.exit14.i.i, %bb.s
  %.08.i.i = phi i32 [ -1, %bb.s ], [ %i.ei, %.critedge.loopexit.split.loop.exit14.i.i ], [ -1, %bb.u ]
  %i.ej = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.dz, ptr noundef nonnull dereferenceable(1) @.str.78, i32 noundef %.08.i.i, ptr noundef %i.du) #23 ; 0 uses
  br label %Io_MvParseLineNamesMvOne.exit.thread

bb.v:                                             ; preds = %bb.r
  %i.ek = tail call fastcc ptr @Io_MvParseAddResetCircuit(ptr noundef nonnull readonly %0, ptr noundef %i.du)
  %i.el = load ptr, ptr %i.cu, align 8, !tbaa !59
  %i.em = tail call ptr @Abc_ObjName(ptr noundef %i.ek) #23
  %i.en = load ptr, ptr %i.bk, align 8, !tbaa !18
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = tail call ptr @Io_ReadCreateNode(ptr noundef %i.el, ptr noundef %i.em, ptr noundef nonnull %i.eo, i32 noundef range(i32 -2147483648, 2147483646) %.275) #23
  br label %bb.ab

bb.w:                                             ; preds = %bb.q
  %i.eq = tail call ptr @Abc_NtkFindOrCreateNet(ptr noundef %i.dv, ptr noundef %i.du) #23
  %i.er = getelementptr i8, ptr %i.eq, i64 28
  %.val43.i = load i32, ptr %i.er, align 4, !tbaa !88
  %i.es = icmp sgt i32 %.val43.i, 0
  br i1 %i.es, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.et = load ptr, ptr %i.a, align 8, !tbaa !56  ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 88
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !25 ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 4
  %.val.i44.i = load i32, ptr %i.ex, align 4, !tbaa !16 ; 2 uses
  %i.ey = icmp sgt i32 %.val.i44.i, 0
  br i1 %i.ey, label %.lr.ph.i46.i, label %Io_MvGetLine.exit53.i

.lr.ph.i46.i:                                     ; preds = %bb.x
  %i.ez = getelementptr i8, ptr %i.ew, i64 8
  %.val9.i47.i = load ptr, ptr %i.ez, align 8, !tbaa !18
  %wide.trip.count.i48.i = zext nneg i32 %.val.i44.i to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %.lr.ph.i46.i
  %indvars.iv.i49.i = phi i64 [ 0, %.lr.ph.i46.i ], [ %indvars.iv.next.i50.i, %bb.z ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.val9.i47.i, i64 %indvars.iv.i49.i
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !38
  %i.fc = icmp ult ptr %i.du, %i.fb
  br i1 %i.fc, label %.critedge.loopexit.split.loop.exit14.i52.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %indvars.iv.next.i50.i = add nuw nsw i64 %indvars.iv.i49.i, 1 ; 2 uses
  %exitcond.not.i51.i = icmp eq i64 %indvars.iv.next.i50.i, %wide.trip.count.i48.i
  br i1 %exitcond.not.i51.i, label %Io_MvGetLine.exit53.i, label %bb.y, !llvm.loop !0

.critedge.loopexit.split.loop.exit14.i52.i:       ; preds = %bb.y
  %i.fd = trunc nuw nsw i64 %indvars.iv.i49.i to i32
  br label %Io_MvGetLine.exit53.i

Io_MvGetLine.exit53.i:                            ; preds = %bb.z, %.critedge.loopexit.split.loop.exit14.i52.i, %bb.x
  %.08.i45.i = phi i32 [ -1, %bb.x ], [ %i.fd, %.critedge.loopexit.split.loop.exit14.i52.i ], [ -1, %bb.z ]
  %i.fe = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.eu, ptr noundef nonnull dereferenceable(1) @.str.79, i32 noundef %.08.i45.i, ptr noundef %i.du) #23 ; 0 uses
  br label %Io_MvParseLineNamesMvOne.exit.thread

bb.aa:                                            ; preds = %bb.w
  %i.ff = load ptr, ptr %i.cu, align 8, !tbaa !59
  %i.fg = load ptr, ptr %i.bk, align 8, !tbaa !18
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = tail call ptr @Io_ReadCreateNode(ptr noundef %i.ff, ptr noundef %i.du, ptr noundef nonnull %i.fh, i32 noundef range(i32 -2147483648, 2147483646) %.275) #23
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.v
  %.0.i106 = phi ptr [ %i.ep, %bb.v ], [ %i.fi, %bb.aa ] ; 6 uses
  %i.fj = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 80
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !33 ; 13 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4 ; 6 uses
  store i32 0, ptr %i.fm, align 4, !tbaa !30
  %.val46.i.i = load ptr, ptr %i.bw, align 8, !tbaa !18
  %i.fn = load ptr, ptr %.val46.i.i, align 8, !tbaa !38
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !39
  %i.fp = icmp eq i8 %i.fo, 46
  br i1 %i.fp, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.fq = load i32, ptr %i.fl, align 8, !tbaa !31
  %i.fr = icmp eq i32 %i.fq, 0
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !32 ; 3 uses
  br i1 %i.fr, label %bb.ad, label %Vec_StrPush.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  %.not9.i.i.i.i = icmp eq ptr %i.ft, null
  br i1 %.not9.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fu = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ft, i64 noundef 16) #25
  %.pre71.pre.i.i = load i32, ptr %i.fm, align 4, !tbaa !30
  br label %Vec_StrGrow.exit11.sink.split.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.fv = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22
  br label %Vec_StrGrow.exit11.sink.split.i.i.i

Vec_StrGrow.exit11.sink.split.i.i.i:              ; preds = %bb.af, %bb.ae
  %.pre71.i.i = phi i32 [ %.pre71.pre.i.i, %bb.ae ], [ 0, %bb.af ]
  %i.fw = phi ptr [ %i.fu, %bb.ae ], [ %i.fv, %bb.af ] ; 2 uses
end_hunk_0
