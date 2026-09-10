Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ioReadBlifMv?download=true
inline.NumInlined: 413
inline.NumDeleted: 87
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Io_MvCollectTokens:bb.a
  %i.e = load i8, ptr %.09, align 1, !tbaa !39
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %0, align 8, !tbaa !17
  %i.h = icmp eq i32 %i.d, %i.g
  br i1 %i.h, label %bb.d, label %.Vec_PtrPush.exit_crit_edge

.Vec_PtrPush.exit_crit_edge:                      ; preds = %bb.c
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !18
  br label %Vec_PtrPush.exit

bb.d:                                             ; preds = %bb.c
  %i.i = icmp slt i32 %i.d, 16
  br i1 %i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.j, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.j, i64 noundef 128) #25
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.l = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #22
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.m = icmp samesign ult i32 %i.d, 1073741823
  %i.n = shl nuw nsw i32 %i.d, 1
  %spec.select.i = select i1 %i.m, i32 %i.n, i32 2147483647 ; 4 uses
  %.not.i10.i = icmp samesign ult i32 %i.d, %spec.select.i
  %.pre11 = load ptr, ptr %i.c, align 8, !tbaa !18 ; 3 uses
  br i1 %.not.i10.i, label %bb.i, label %Vec_PtrPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i11.i = icmp eq ptr %.pre11, null
  %i.o = zext nneg i32 %spec.select.i to i64
  %i.p = shl nuw nsw i64 %i.o, 3                  ; 2 uses
  br i1 %.not9.i11.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = tail call ptr @realloc(ptr noundef nonnull %.pre11, i64 noundef %i.p) #25
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #22
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.j, %bb.k, %bb.f, %bb.g
  %i.s = phi ptr [ %i.l, %bb.g ], [ %i.k, %bb.f ], [ %i.q, %bb.j ], [ %i.r, %bb.k ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ]
  store ptr %i.s, ptr %i.c, align 8, !tbaa !18
  store i32 %spec.select.sink.i, ptr %0, align 8, !tbaa !17
  %.pre12 = load i32, ptr %i.a, align 4, !tbaa !16
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %.Vec_PtrPush.exit_crit_edge, %bb.h, %Vec_PtrGrow.exit12.sink.split.i
  %i.t = phi i32 [ %i.d, %.Vec_PtrPush.exit_crit_edge ], [ %i.d, %bb.h ], [ %.pre12, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.u = phi ptr [ %.pre, %.Vec_PtrPush.exit_crit_edge ], [ %.pre11, %bb.h ], [ %i.s, %Vec_PtrGrow.exit12.sink.split.i ]
  %i.v = add nsw i32 %i.t, 1                      ; 2 uses
  store i32 %i.v, ptr %i.a, align 4, !tbaa !16
  %i.w = sext i32 %i.t to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.w
  store ptr %.09, ptr %i.x, align 8, !tbaa !38
  %scevgep = getelementptr i8, ptr %.09, i64 1    ; 2 uses
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %scevgep10 = getelementptr i8, ptr %scevgep, i64 %strlen
  br label %.loopexit

.loopexit:                                        ; preds = %Vec_PtrPush.exit, %bb.b
  %i.y = phi i32 [ %i.d, %bb.b ], [ %i.v, %Vec_PtrPush.exit ]
  %.2 = phi ptr [ %.09, %bb.b ], [ %scevgep10, %Vec_PtrPush.exit ]
  %i.z = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 2 uses
  %i.aa = icmp ult ptr %i.z, %2
  br i1 %i.aa, label %bb.b, label %._crit_edge, !llvm.loop !2

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

declare ptr @Io_ReadCreatePi(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @Io_ReadCreatePo(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @Abc_NtkStartMvVars(ptr noundef) local_unnamed_addr #3

declare ptr @Io_ReadCreateResetLatch(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @Io_MvParseLineNamesMv(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28   ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.i = phi ptr [ %1, %bb.a ], [ %i.g, %bb.c ]  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !39    ; 2 uses
  %.not.i.not.not.not.not.not = icmp ne i8 %i.h, 0 ; 2 uses
  br i1 %.not.i.not.not.not.not.not, label %bb.c, label %Io_MvFindArrow.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %.0.i, align 1, !tbaa !39
  %i.j = icmp eq i8 %i.i, 45
  %i.k = icmp eq i8 %i.h, 62
  %or.cond.i = and i1 %i.k, %i.j
  br i1 %or.cond.i, label %Io_MvFindArrow.exit, label %bb.b, !llvm.loop !194

Io_MvFindArrow.exit:                              ; preds = %bb.c
  store i8 32, ptr %.0.i, align 1, !tbaa !39
  store i8 32, ptr %i.g, align 1, !tbaa !39
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !56   ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !34
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %Io_MvFindArrow.exit.thread

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
  %3 = icmp ne i32 %i.ae, 0
  %.neg = sext i1 %3 to i64
  %4 = add nuw nsw i64 %i.ah, 1
  %5 = add nsw i64 %4, %.neg                      ; 3 uses
  %min.iters.check = icmp ult i64 %5, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %5, -4                         ; 3 uses
  %6 = sub nsw i64 %i.ah, %n.vec
  %i.ai = insertelement <2 x i32> <i32 poison, i32 0>, i32 %i.ae, i64 0
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %.09.i109, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ <i32 1, i32 0>, %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi235 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %vec.phi236 = phi <2 x i32> [ %i.ai, %vector.ph ], [ %i.ar, %vector.body ]
  %vec.phi237 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %i.aj = sub i64 %i.ah, %index
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.val87, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -8
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -24
  %wide.load = load <2 x ptr>, ptr %i.al, align 8, !tbaa !38
  %wide.load238 = load <2 x ptr>, ptr %i.am, align 8, !tbaa !38
  %reverse = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse239 = shufflevector <2 x ptr> %wide.load238, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %i.an = icmp ult <2 x ptr> %broadcast.splat, %reverse ; 2 uses
  %i.ao = icmp ult <2 x ptr> %broadcast.splat, %reverse239 ; 2 uses
  %i.ap = sext <2 x i1> %i.an to <2 x i32>
  %i.aq = sext <2 x i1> %i.ao to <2 x i32>
  %i.ar = add <2 x i32> %vec.phi236, %i.ap        ; 2 uses
  %i.as = add <2 x i32> %vec.phi237, %i.aq        ; 2 uses
  %i.at = zext <2 x i1> %i.an to <2 x i32>
  %i.au = zext <2 x i1> %i.ao to <2 x i32>
  %i.av = add <2 x i32> %vec.phi, %i.at           ; 2 uses
  %i.aw = add <2 x i32> %vec.phi235, %i.au        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !195

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.aw, %i.av
  %i.ay = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %bin.rdx240 = add <2 x i32> %i.as, %i.ar
  %i.az = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx240) ; 2 uses
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ah, %.lr.ph ], [ %6, %middle.block ]
  %.070139.ph = phi i32 [ 1, %.lr.ph ], [ %i.ay, %middle.block ]
  %.073138.ph = phi i32 [ %i.ae, %.lr.ph ], [ %i.az, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %.070139 = phi i32 [ %.171, %scalar.ph ], [ %.070139.ph, %scalar.ph.preheader ]
  %.073138 = phi i32 [ %.174, %scalar.ph ], [ %.073138.ph, %scalar.ph.preheader ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.val87, i64 %indvars.iv
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !38
  %i.bc = icmp ult ptr %.09.i109, %i.bb           ; 2 uses
  %i.bd = sext i1 %i.bc to i32
  %.174 = add nsw i32 %.073138, %i.bd             ; 2 uses
  %i.be = zext i1 %i.bc to i32
  %.171 = add nuw nsw i32 %.070139, %i.be         ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bf = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.bf, label %scalar.ph, label %.loopexit, !llvm.loop !196

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %Io_MvSplitIntoTokens.exit
  %.275 = phi i32 [ %i.ae, %Io_MvSplitIntoTokens.exit ], [ %i.az, %middle.block ], [ %.174, %scalar.ph ] ; 7 uses
  %.272 = phi i32 [ 1, %Io_MvSplitIntoTokens.exit ], [ %i.ay, %middle.block ], [ %.171, %scalar.ph ] ; 7 uses
  %i.bg = getelementptr i8, ptr %i.d, i64 8       ; 4 uses
  %i.bh = sext i32 %.val84 to i64
  %i.bi = getelementptr [8 x i8], ptr %.val87, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 -8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !38 ; 3 uses
  %i.bl = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bk) #24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %Io_MvCharIsSpace.exit.thread11.i, %.loopexit
  %.0.i92 = phi ptr [ %i.bm, %.loopexit ], [ %i.br, %Io_MvCharIsSpace.exit.thread11.i ] ; 5 uses
  %i.bn = load i8, ptr %.0.i92, align 1, !tbaa !39
  switch i8 %i.bn, label %Io_MvCharIsSpace.exit.thread11.i [
    i8 46, label %bb.i
    i8 32, label %Io_MvCharIsSpace.exit.thread.i93
    i8 13, label %Io_MvCharIsSpace.exit.thread.i93
    i8 9, label %Io_MvCharIsSpace.exit.thread.i93
    i8 10, label %Io_MvCharIsSpace.exit.thread.i93
  ]

bb.i:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i92, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !39
  %i.bq = icmp eq i8 %i.bp, 100
  br i1 %i.bq, label %Io_MvCharIsSpace.exit.thread11.i, label %Io_MvSplitIntoTokensMv.exit

Io_MvCharIsSpace.exit.thread.i93:                 ; preds = %bb.h, %bb.h, %bb.h, %bb.h
  store i8 0, ptr %.0.i92, align 1, !tbaa !39
  br label %Io_MvCharIsSpace.exit.thread11.i

Io_MvCharIsSpace.exit.thread11.i:                 ; preds = %Io_MvCharIsSpace.exit.thread.i93, %bb.i, %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i92, i64 1
  br label %bb.h, !llvm.loop !197

Io_MvSplitIntoTokensMv.exit:                      ; preds = %bb.i
  tail call fastcc void @Io_MvCollectTokens(ptr noundef %i.f, ptr noundef nonnull %i.bm, ptr noundef nonnull %.0.i92)
  %i.bs = getelementptr i8, ptr %i.f, i64 8       ; 6 uses
  %.val86 = load ptr, ptr %i.bs, align 8, !tbaa !18
  %i.bt = load ptr, ptr %.val86, align 8, !tbaa !38 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !39
  %i.bv = icmp eq i8 %i.bu, 46
  %i.bw = getelementptr i8, ptr %i.f, i64 4
  %.val82 = load i32, ptr %i.bw, align 4, !tbaa !16
  %i.bx = xor i32 %.272, -1
  %i.by = select i1 %i.bv, i32 %i.bx, i32 0
  %.069 = add i32 %.val82, %i.by                  ; 2 uses
  %i.bz = add nsw i32 %.272, %.275                ; 3 uses
  %i.ca = srem i32 %.069, %i.bz
  %i.cb = sdiv i32 %.069, %i.bz
  %.not = icmp eq i32 %i.ca, 0
  br i1 %.not, label %bb.m, label %bb.j

bb.j:                                             ; preds = %Io_MvSplitIntoTokensMv.exit
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !56  ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 88
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !25 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 4
  %.val.i94 = load i32, ptr %i.cg, align 4, !tbaa !16 ; 2 uses
  %i.ch = icmp sgt i32 %.val.i94, 0
  br i1 %i.ch, label %.lr.ph.i96, label %Io_MvGetLine.exit103

.lr.ph.i96:                                       ; preds = %bb.j
  %i.ci = getelementptr i8, ptr %i.cf, i64 8
  %.val9.i97 = load ptr, ptr %i.ci, align 8, !tbaa !18
  %wide.trip.count.i98 = zext nneg i32 %.val.i94 to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i96
  %indvars.iv.i99 = phi i64 [ 0, %.lr.ph.i96 ], [ %indvars.iv.next.i100, %bb.l ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.val9.i97, i64 %indvars.iv.i99
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !38
  %i.cl = icmp ult ptr %i.bt, %i.ck
  br i1 %i.cl, label %.critedge.loopexit.split.loop.exit14.i102, label %bb.l

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next.i100 = add nuw nsw i64 %indvars.iv.i99, 1 ; 2 uses
  %exitcond.not.i101 = icmp eq i64 %indvars.iv.next.i100, %wide.trip.count.i98
  br i1 %exitcond.not.i101, label %Io_MvGetLine.exit103, label %bb.k, !llvm.loop !0

.critedge.loopexit.split.loop.exit14.i102:        ; preds = %bb.k
  %i.cm = trunc nuw nsw i64 %indvars.iv.i99 to i32
  br label %Io_MvGetLine.exit103

Io_MvGetLine.exit103:                             ; preds = %bb.l, %bb.j, %.critedge.loopexit.split.loop.exit14.i102
  %.08.i95 = phi i32 [ -1, %bb.j ], [ %i.cm, %.critedge.loopexit.split.loop.exit14.i102 ], [ -1, %bb.l ]
  %i.cn = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.cd, ptr noundef nonnull dereferenceable(1) @.str.75, i32 noundef %.08.i95, ptr noundef nonnull %i.bk) #23 ; 0 uses
  br label %Io_MvParseLineNamesMvOne.exit.thread

bb.m:                                             ; preds = %Io_MvSplitIntoTokensMv.exit
  %i.co = icmp eq i32 %.275, 0
  %i.cp = icmp sgt i32 %i.cb, 1
  %or.cond3 = and i1 %i.co, %i.cp
  br i1 %or.cond3, label %.preheader, label %.preheader115

.preheader115:                                    ; preds = %bb.m
  %.not.i105 = icmp eq i32 %2, 0
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.cr = add nsw i32 %.272, 1
  %i.cs = getelementptr i8, ptr %i.f, i64 4       ; 3 uses
  %i.ct = icmp sgt i32 %.275, 0
  %i.cu = sext i32 %i.bz to i64                   ; 2 uses
  %wide.trip.count.i57.i = zext nneg i32 %.275 to i64
  %wide.trip.count = zext i32 %.272 to i64
  br label %bb.q

.preheader:                                       ; preds = %bb.m
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.not80 = icmp eq i32 %2, 0
  br label %bb.n

bb.n:                                             ; preds = %.preheader, %bb.p
  %.1143 = phi i32 [ 0, %.preheader ], [ %i.dk, %bb.p ] ; 2 uses
  %.val = load i32, ptr %i.ad, align 4, !tbaa !16
  %i.cw = sub i32 %.1143, %.272
  %i.cx = add i32 %i.cw, %.val
  %.val85 = load ptr, ptr %i.bg, align 8, !tbaa !18
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %.val85, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !38 ; 2 uses
  %i.db = load ptr, ptr %i.cv, align 8, !tbaa !59
  %i.dc = tail call ptr @Abc_NtkFindOrCreateNet(ptr noundef %i.db, ptr noundef %i.da) #23
  br i1 %.not80, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dd = tail call fastcc ptr @Io_MvParseAddResetCircuit(ptr noundef nonnull %0, ptr noundef %i.da)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.076 = phi ptr [ %i.dd, %bb.o ], [ %i.dc, %bb.n ]
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 40 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !92
  %i.dh = add nsw i32 %i.dg, 1
  store i32 %i.dh, ptr %i.df, align 8, !tbaa !92
  %i.di = load ptr, ptr %i.cv, align 8, !tbaa !59
  %i.dj = tail call ptr @Abc_NtkCreateNodeConst0(ptr noundef %i.di) #23
  tail call void @Abc_ObjAddFanin(ptr noundef %.076, ptr noundef %i.dj) #23
  %i.dk = add nuw nsw i32 %.1143, 1               ; 2 uses
  %exitcond174.not = icmp eq i32 %i.dk, %.272
  br i1 %exitcond174.not, label %Io_MvParseLineNamesMvOne.exit.thread, label %bb.n, !llvm.loop !198

bb.q:                                             ; preds = %.preheader115, %bb.au
  %indvars.iv171 = phi i64 [ 0, %.preheader115 ], [ %indvars.iv.next172, %bb.au ] ; 3 uses
  %.val.i104 = load i32, ptr %i.ad, align 4, !tbaa !16
  %i.dl = trunc nuw nsw i64 %indvars.iv171 to i32 ; 2 uses
  %i.dm = sub i32 %i.dl, %.272
  %i.dn = add i32 %i.dm, %.val.i104
  %.val42.i = load ptr, ptr %i.bg, align 8, !tbaa !18
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [8 x i8], ptr %.val42.i, i64 %i.do
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !38 ; 8 uses
  %i.dr = load ptr, ptr %i.cq, align 8, !tbaa !59 ; 2 uses
  br i1 %.not.i105, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ds = tail call ptr @Abc_NtkFindNet(ptr noundef %i.dr, ptr noundef %i.dq) #23
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !56  ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 88
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !25 ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 4
  %.val.i.i = load i32, ptr %i.dy, align 4, !tbaa !16 ; 2 uses
  %i.dz = icmp sgt i32 %.val.i.i, 0
  br i1 %i.dz, label %.lr.ph.i.i, label %Io_MvGetLine.exit.i

.lr.ph.i.i:                                       ; preds = %bb.s
  %i.ea = getelementptr i8, ptr %i.dx, i64 8
  %.val9.i.i = load ptr, ptr %i.ea, align 8, !tbaa !18
  %wide.trip.count.i.i = zext nneg i32 %.val.i.i to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.u ] ; 3 uses
end_hunk_0
