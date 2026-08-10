inline.NumInlined: 95
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4Luau7CodeGen3X6416IrCallWrapperX644callERKNS1_10OperandX64E:bb.a
  br i1 %.not107, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = lshr i32 %i.ax, 4
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [64 x i8], ptr %i.be, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.ar, align 8, !tbaa !47
  %i.bj = call noundef zeroext i1 @_ZNK4Luau7CodeGen3X6413IrRegAllocX6412isLastUseRegERKNS0_6IrInstEj(ptr noundef nonnull align 8 dereferenceable(332) %i.az, ptr noundef nonnull align 8 dereferenceable(59) %i.bh, i32 noundef %i.bi)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 54 ; 3 uses
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i8 -128, ptr %i.bk, align 2, !tbaa !59
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.bl = load i8, ptr %i.bk, align 2             ; 3 uses
  %i.bm = and i8 %i.bl, 7
  %i.bn = icmp eq i8 %i.bm, 5
  br i1 %i.bn, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !68, !align !69
  %i.bp = call noundef zeroext i1 @_ZNK4Luau7CodeGen3X6413IrRegAllocX6413shouldFreeGprENS1_11RegisterX64E(ptr noundef nonnull align 8 dereferenceable(332) %i.bo, i8 %i.bl)
  br i1 %i.bp, label %._crit_edge171, label %bb.p

._crit_edge171:                                   ; preds = %bb.n
  %.sroa.058.0.copyload.pre = load i8, ptr %i.bk, align 2, !tbaa !59
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge171, %bb.m
  %.sroa.058.0.copyload = phi i8 [ %.sroa.058.0.copyload.pre, %._crit_edge171 ], [ %i.bl, %bb.m ]
  %i.bq = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !68, !align !69
  %i.br = call i8 @_ZN4Luau7CodeGen3X6413IrRegAllocX647takeRegENS1_11RegisterX64Ej(ptr noundef nonnull align 8 dereferenceable(332) %i.bq, i8 %.sroa.058.0.copyload, i32 noundef -1) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.j, %bb.n, %bb.o, %bb.l, %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 3 uses
  %i.bt = load i8, ptr %i.bs, align 4, !tbaa !92  ; 3 uses
  %i.bu = icmp eq i8 %i.bt, 2
  br i1 %i.bu, label %_ZN4Luau7CodeGen3X64L22sameUnderlyingRegisterENS1_11RegisterX64ES2_.exit.thread.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 4, !tbaa !93
  %i.bx = icmp eq i8 %i.bw, 1
  br i1 %i.bx, label %bb.r, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.by = icmp eq i8 %i.bt, 1
  br i1 %i.by, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.bz = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !68, !align !69
  %i.ca = getelementptr inbounds nuw i8, ptr %i.av, i64 19
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = and i8 %i.cb, 15
  call void @_ZN4Luau7CodeGen3X6412ScopedRegX64C1ERNS1_13IrRegAllocX64ENS1_7SizeX64E(ptr noundef nonnull align 8 dereferenceable(9) %2, ptr noundef nonnull align 8 dereferenceable(332) %i.bz, i8 noundef zeroext %i.cc)
  invoke void @_ZN4Luau7CodeGen3X6416IrCallWrapperX6419freeSourceRegistersERNS1_12CallArgumentE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 4 dereferenceable(25) %i.av)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %i.av, i64 7
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = and i8 %i.ce, 15
  %i.cg = icmp eq i8 %i.cf, 0
  %i.ch = load ptr, ptr %i.as, align 8, !tbaa !67, !nonnull !68, !align !69 ; 2 uses
  %.sroa.054.0.copyload = load i8, ptr %i.at, align 8, !tbaa !59
  %.sroa.053.0.copyload = load i64, ptr %i.bs, align 4 ; 2 uses
  %.sroa.3137.0.insert.ext = zext i8 %.sroa.054.0.copyload to i64
  %.sroa.3137.0.insert.shift = shl nuw nsw i64 %.sroa.3137.0.insert.ext, 16
  %.sroa.2136.0.insert.insert = or disjoint i64 %.sroa.3137.0.insert.shift, 268468224 ; 2 uses
  br i1 %i.cg, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643leaENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.ch, i64 %.sroa.2136.0.insert.insert, i64 %.sroa.053.0.copyload)
          to label %bb.x unwind label %bb.v

bb.v:                                             ; preds = %bb.x, %bb.w, %bb.u, %bb.s
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau7CodeGen3X6412ScopedRegX64D1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %i.ci

bb.w:                                             ; preds = %bb.t
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.ch, i64 %.sroa.2136.0.insert.insert, i64 %.sroa.053.0.copyload)
          to label %bb.x unwind label %bb.v

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.cj = load ptr, ptr %i.as, align 8, !tbaa !67, !nonnull !68, !align !69
  %.sroa.050.0.copyload = load i64, ptr %i.bv, align 4
  %.sroa.049.0.copyload = load i8, ptr %i.at, align 8, !tbaa !59
  %.sroa.3127.0.insert.ext = zext i8 %.sroa.049.0.copyload to i64
  %.sroa.3127.0.insert.shift = shl nuw nsw i64 %.sroa.3127.0.insert.ext, 16
  %.sroa.2126.0.insert.insert = or disjoint i64 %.sroa.3127.0.insert.shift, 268468224
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.cj, i64 %.sroa.050.0.copyload, i64 %.sroa.2126.0.insert.insert)
          to label %bb.y unwind label %bb.v

bb.y:                                             ; preds = %bb.x
  call void @_ZN4Luau7CodeGen3X6412ScopedRegX64D1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %_ZN4Luau7CodeGen3X64L22sameUnderlyingRegisterENS1_11RegisterX64ES2_.exit.thread.sink.split

bb.z:                                             ; preds = %bb.r
  call void @_ZN4Luau7CodeGen3X6416IrCallWrapperX6419freeSourceRegistersERNS1_12CallArgumentE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 4 dereferenceable(25) %i.av)
  %i.ck = load ptr, ptr %i.as, align 8, !tbaa !67, !nonnull !68, !align !69
  %.sroa.048.0.copyload = load i64, ptr %i.bv, align 4
  %.sroa.047.0.copyload = load i64, ptr %i.bs, align 4
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.ck, i64 %.sroa.048.0.copyload, i64 %.sroa.047.0.copyload)
  br label %_ZN4Luau7CodeGen3X64L22sameUnderlyingRegisterENS1_11RegisterX64ES2_.exit.thread.sink.split

bb.aa:                                            ; preds = %bb.q
  %i.cl = icmp eq i8 %i.bt, 0
  br i1 %i.cl, label %bb.ab, label %_ZN4Luau7CodeGen3X64L22sameUnderlyingRegisterENS1_11RegisterX64ES2_.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.cm = getelementptr inbounds nuw i8, ptr %i.av, i64 18 ; 2 uses
  %.sroa.046.0.copyload = load i8, ptr %i.cm, align 2, !tbaa !59 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.av, i64 6
  %.sroa.045.0.copyload = load i8, ptr %i.cn, align 2, !tbaa !59 ; 2 uses
  %i.co = and i8 %.sroa.046.0.copyload, 7
  %i.cp = icmp ne i8 %i.co, 5
  %i.cq = and i8 %.sroa.045.0.copyload, 7
  %i.cr = icmp eq i8 %i.cq, 5
  %i.cs = xor i1 %i.cp, %i.cr
  %.unshifted.i = xor i8 %.sroa.045.0.copyload, %.sroa.046.0.copyload
  %i.ct = icmp ult i8 %.unshifted.i, 8
  %or.cond = and i1 %i.ct, %i.cs
  br i1 %or.cond, label %bb.ac, label %_ZN4Luau7CodeGen3X64L22sameUnderlyingRegisterENS1_11RegisterX64ES2_.exit.thread

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN4Luau7CodeGen3X6416IrCallWrapperX6419freeSourceRegistersERNS1_12CallArgumentE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 4 dereferenceable(25) %i.av)
  %.sroa.044.0.copyload = load i8, ptr %i.cm, align 2, !tbaa !59 ; 3 uses
  %i.cu = and i8 %.sroa.044.0.copyload, 7         ; 2 uses
  switch i8 %i.cu, label %bb.ad [
    i8 5, label %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6415getRegisterUsesENS1_11RegisterX64E.exit
    i8 0, label %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6415getRegisterUsesENS1_11RegisterX64E.exit.thread
  ]

bb.ad:                                            ; preds = %bb.ac
  br label %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6415getRegisterUsesENS1_11RegisterX64E.exit

_ZNK4Luau7CodeGen3X6416IrCallWrapperX6415getRegisterUsesENS1_11RegisterX64E.exit: ; preds = %bb.ac, %bb.ad
  %.sink.i = phi i64 [ 216, %bb.ad ], [ 232, %bb.ac ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i
  %i.cw = lshr i8 %.sroa.044.0.copyload, 3
  %i.cx = zext nneg i8 %i.cw to i64               ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !59
  %i.da = icmp eq i8 %i.cz, 0
  br i1 %i.da, label %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6415getRegisterUsesENS1_11RegisterX64E.exit.thread, label %.sink.split.i108

_ZNK4Luau7CodeGen3X6416IrCallWrapperX6415getRegisterUsesENS1_11RegisterX64E.exit.thread: ; preds = %bb.ac, %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6415getRegisterUsesENS1_11RegisterX64E.exit
  %i.db = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !68, !align !69
  %i.dc = call i8 @_ZN4Luau7CodeGen3X6413IrRegAllocX647takeRegENS1_11RegisterX64Ej(ptr noundef nonnull align 8 dereferenceable(332) %i.db, i8 %.sroa.044.0.copyload, i32 noundef -1) ; 0 uses
  br label %_ZN4Luau7CodeGen3X64L22sameUnderlyingRegisterENS1_11RegisterX64ES2_.exit.thread.sink.split

.sink.split.i108:                                 ; preds = %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6415getRegisterUsesENS1_11RegisterX64E.exit
  %cond = icmp eq i8 %i.cu, 5
  %spec.select = select i1 %cond, i64 232, i64 216
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cx ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !59
  %i.dg = add i8 %i.df, 1
  store i8 %i.dg, ptr %i.de, align 1, !tbaa !59
  br label %_ZN4Luau7CodeGen3X64L22sameUnderlyingRegisterENS1_11RegisterX64ES2_.exit.thread.sink.split

_ZN4Luau7CodeGen3X64L22sameUnderlyingRegisterENS1_11RegisterX64ES2_.exit.thread.sink.split: ; preds = %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6415getRegisterUsesENS1_11RegisterX64E.exit.thread, %.sink.split.i108, %bb.y, %bb.z, %bb.p
  %i.dh = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store i8 0, ptr %i.dh, align 4, !tbaa !61
  br label %_ZN4Luau7CodeGen3X64L22sameUnderlyingRegisterENS1_11RegisterX64ES2_.exit.thread

_ZN4Luau7CodeGen3X64L22sameUnderlyingRegisterENS1_11RegisterX64ES2_.exit.thread: ; preds = %_ZN4Luau7CodeGen3X64L22sameUnderlyingRegisterENS1_11RegisterX64ES2_.exit.thread.sink.split, %bb.ab, %bb.aa
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.di = load i32, ptr %i.f, align 4, !tbaa !63  ; 2 uses
  %i.dj = sext i32 %i.di to i64
  %i.dk = icmp slt i64 %indvars.iv.next, %i.dj
  br i1 %i.dk, label %bb.i, label %.preheader150, !llvm.loop !94

thread-pre-split:                                 ; preds = %_ZN4Luau7CodeGen3X6416IrCallWrapperX6426findNonInterferingArgumentEv.exit, %.thread
  %.pr = load i32, ptr %i.f, align 4, !tbaa !63
  br label %bb.ae

bb.ae:                                            ; preds = %.preheader150, %thread-pre-split
  %i.dl = phi i32 [ %.pr, %thread-pre-split ], [ %.lcssa153, %.preheader150 ] ; 3 uses
  %i.dm = icmp sgt i32 %i.dl, 0
  br i1 %i.dm, label %.lr.ph.split.us.preheader.i, label %.loopexit.thread

.lr.ph.split.us.preheader.i:                      ; preds = %bb.ae
  %wide.trip.count.i.i = zext nneg i32 %i.dl to i64 ; 2 uses
  %.sroa.03.0.copyload.i.i = load i8, ptr %i.j, align 2 ; 2 uses
  %i.dn = and i8 %.sroa.03.0.copyload.i.i, 7
  %i.do = icmp ne i8 %i.dn, 5
  %.sroa.01.0.copyload.i.i = load i8, ptr %i.r, align 1 ; 2 uses
  %i.dp = and i8 %.sroa.01.0.copyload.i.i, 7
  %i.dq = icmp ne i8 %i.dp, 5
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6427interferesWithActiveSourcesERKNS1_12CallArgumentEi.exit.thread.us.i, %.lr.ph.split.us.preheader.i
  %indvars.iv.i110 = phi i64 [ 0, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next.i111, %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6427interferesWithActiveSourcesERKNS1_12CallArgumentEi.exit.thread.us.i ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [28 x i8], ptr %i.au, i64 %indvars.iv.i110 ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load i8, ptr %i.ds, align 4, !tbaa !61, !range !95, !noundef !68
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %.lr.ph.i.us.i, label %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6427interferesWithActiveSourcesERKNS1_12CallArgumentEi.exit.thread.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.split.us.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 18
  %.sroa.0.0.copyload.i.us.i = load i8, ptr %i.dv, align 2 ; 5 uses
  %i.dw = and i8 %.sroa.0.0.copyload.i.us.i, 7
  %i.dx = icmp eq i8 %i.dw, 5                     ; 4 uses
  br label %bb.af

bb.af:                                            ; preds = %.critedge.i.us.i, %.lr.ph.i.us.i
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.i.us.i ], [ %indvars.iv.next.i.us.i, %.critedge.i.us.i ] ; 3 uses
  %i.dy = getelementptr inbounds nuw [28 x i8], ptr %i.au, i64 %indvars.iv.i.us.i ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load i8, ptr %i.dz, align 4, !tbaa !61, !range !95, !noundef !68
  %i.eb = trunc nuw i8 %i.ea to i1
  %.not.i.us.i = icmp ne i64 %indvars.iv.i.us.i, %indvars.iv.i110
  %or.cond.not.i.us.i = and i1 %.not.i.us.i, %i.eb
  br i1 %or.cond.not.i.us.i, label %bb.ag, label %.critedge.i.us.i

bb.ag:                                            ; preds = %bb.af
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 6
  %.sroa.03.0.copyload.i.i.us.i = load i8, ptr %i.ec, align 2, !tbaa !59 ; 2 uses
  %i.ed = and i8 %.sroa.03.0.copyload.i.i.us.i, 7
  %i.ee = icmp ne i8 %i.ed, 5
  %i.ef = xor i1 %i.dx, %i.ee
  %.unshifted.i.i.i.us.i = xor i8 %.sroa.03.0.copyload.i.i.us.i, %.sroa.0.0.copyload.i.us.i
  %i.eg = icmp ult i8 %.unshifted.i.i.i.us.i, 8
  %or.cond.i.i.us.i = and i1 %i.eg, %i.ef
  br i1 %or.cond.i.i.us.i, label %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6427interferesWithActiveSourcesERKNS1_12CallArgumentEi.exit.thread.us.i, label %_ZN4Luau7CodeGen3X64L22sameUnderlyingRegisterENS1_11RegisterX64ES2_.exit.thread.i.i.us.i

_ZN4Luau7CodeGen3X64L22sameUnderlyingRegisterENS1_11RegisterX64ES2_.exit.thread.i.i.us.i: ; preds = %bb.ag
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dy, i64 5
  %.sroa.01.0.copyload.i.i.us.i = load i8, ptr %i.eh, align 1, !tbaa !59 ; 2 uses
  %i.ei = and i8 %.sroa.01.0.copyload.i.i.us.i, 7
  %i.ej = icmp ne i8 %i.ei, 5
  %i.ek = xor i1 %i.dx, %i.ej
  %.unshifted.i7.i.i.us.i = xor i8 %.sroa.01.0.copyload.i.i.us.i, %.sroa.0.0.copyload.i.us.i
  %i.el = icmp ult i8 %.unshifted.i7.i.i.us.i, 8
  %or.cond17.i.us.i = and i1 %i.el, %i.ek
  br i1 %or.cond17.i.us.i, label %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6427interferesWithActiveSourcesERKNS1_12CallArgumentEi.exit.thread.us.i, label %.critedge.i.us.i

.critedge.i.us.i:                                 ; preds = %_ZN4Luau7CodeGen3X64L22sameUnderlyingRegisterENS1_11RegisterX64ES2_.exit.thread.i.i.us.i, %bb.af
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i, label %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6427interferesWithActiveSourcesERKNS1_12CallArgumentEi.exit.loopexit.us.i, label %bb.af, !llvm.loop !96

_ZN4Luau7CodeGen3X64L22sameUnderlyingRegisterENS1_11RegisterX64ES2_.exit.thread.i.us.i: ; preds = %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6427interferesWithActiveSourcesERKNS1_12CallArgumentEi.exit.loopexit.us.i
  %i.em = xor i1 %i.dq, %i.dx
  %.unshifted.i7.i.us.i = xor i8 %.sroa.0.0.copyload.i.us.i, %.sroa.01.0.copyload.i.i
  %i.en = icmp ult i8 %.unshifted.i7.i.us.i, 8
  %or.cond.us.i = and i1 %i.en, %i.em
  br i1 %or.cond.us.i, label %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6427interferesWithActiveSourcesERKNS1_12CallArgumentEi.exit.thread.us.i, label %_ZN4Luau7CodeGen3X6416IrCallWrapperX6426findNonInterferingArgumentEv.exit

_ZNK4Luau7CodeGen3X6416IrCallWrapperX6427interferesWithActiveSourcesERKNS1_12CallArgumentEi.exit.thread.us.i: ; preds = %_ZN4Luau7CodeGen3X64L22sameUnderlyingRegisterENS1_11RegisterX64ES2_.exit.thread.i.i.us.i, %bb.ag, %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6427interferesWithActiveSourcesERKNS1_12CallArgumentEi.exit.loopexit.us.i, %_ZN4Luau7CodeGen3X64L22sameUnderlyingRegisterENS1_11RegisterX64ES2_.exit.thread.i.us.i, %.lr.ph.split.us.i
  %indvars.iv.next.i111 = add nuw nsw i64 %indvars.iv.i110, 1 ; 2 uses
  %exitcond.not.i112 = icmp eq i64 %indvars.iv.next.i111, %wide.trip.count.i.i
  br i1 %exitcond.not.i112, label %.loopexit, label %.lr.ph.split.us.i, !llvm.loop !97

_ZNK4Luau7CodeGen3X6416IrCallWrapperX6427interferesWithActiveSourcesERKNS1_12CallArgumentEi.exit.loopexit.us.i: ; preds = %.critedge.i.us.i
  %i.eo = xor i1 %i.do, %i.dx
  %.unshifted.i.i.us.i = xor i8 %.sroa.0.0.copyload.i.us.i, %.sroa.03.0.copyload.i.i
  %i.ep = icmp ult i8 %.unshifted.i.i.us.i, 8
  %or.cond.i.us.i = and i1 %i.ep, %i.eo
  br i1 %or.cond.i.us.i, label %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6427interferesWithActiveSourcesERKNS1_12CallArgumentEi.exit.thread.us.i, label %_ZN4Luau7CodeGen3X64L22sameUnderlyingRegisterENS1_11RegisterX64ES2_.exit.thread.i.us.i

_ZN4Luau7CodeGen3X6416IrCallWrapperX6426findNonInterferingArgumentEv.exit: ; preds = %_ZN4Luau7CodeGen3X64L22sameUnderlyingRegisterENS1_11RegisterX64ES2_.exit.thread.i.us.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.er = getelementptr inbounds nuw i8, ptr %i.dr, i64 18
  call void @_ZN4Luau7CodeGen3X6416IrCallWrapperX6419freeSourceRegistersERNS1_12CallArgumentE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 4 dereferenceable(25) %i.dr)
  %i.es = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !68, !align !69
  %.sroa.035.0.copyload = load i8, ptr %i.er, align 2, !tbaa !59
  %i.et = call i8 @_ZN4Luau7CodeGen3X6413IrRegAllocX647takeRegENS1_11RegisterX64Ej(ptr noundef nonnull align 8 dereferenceable(332) %i.es, i8 %.sroa.035.0.copyload, i32 noundef -1) ; 0 uses
  call void @_ZN4Luau7CodeGen3X6416IrCallWrapperX6412moveToTargetERNS1_12CallArgumentE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 4 dereferenceable(25) %i.dr)
  store i8 0, ptr %i.eq, align 4, !tbaa !61
  br label %thread-pre-split

.loopexit:                                        ; preds = %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6427interferesWithActiveSourcesERKNS1_12CallArgumentEi.exit.thread.us.i
  %i.eu = call i8 @_ZNK4Luau7CodeGen3X6416IrCallWrapperX6421findConflictingTargetEv(ptr noundef nonnull align 8 dereferenceable(248) %0) ; 2 uses
  %.not145 = icmp eq i8 %i.eu, -128
  br i1 %.not145, label %.lr.ph157, label %.thread

.loopexit.thread:                                 ; preds = %bb.ae
  %i.ev = call i8 @_ZNK4Luau7CodeGen3X6416IrCallWrapperX6421findConflictingTargetEv(ptr noundef nonnull align 8 dereferenceable(248) %0) ; 2 uses
  %.not145184 = icmp eq i8 %i.ev, -128
  br i1 %.not145184, label %._crit_edge, label %.thread

.thread:                                          ; preds = %.loopexit.thread, %.loopexit
  %i.ew = phi i8 [ %i.ev, %.loopexit.thread ], [ %i.eu, %.loopexit ]
  call void @_ZN4Luau7CodeGen3X6416IrCallWrapperX6425renameConflictingRegisterENS1_11RegisterX64E(ptr noundef nonnull align 8 dereferenceable(248) %0, i8 %i.ew)
  br label %thread-pre-split

._crit_edge:                                      ; preds = %.loopexit.thread, %bb.as
  %.sroa.014.0.copyload = load i8, ptr %i.j, align 2, !tbaa !59 ; 5 uses
  %i.ex = and i8 %.sroa.014.0.copyload, 7
  switch i8 %i.ex, label %bb.ai [
    i8 5, label %bb.ah
    i8 0, label %_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit
  ]

bb.ah:                                            ; preds = %._crit_edge
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ez = lshr i8 %.sroa.014.0.copyload, 3
  %i.fa = zext nneg i8 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.fa ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !59
  %i.fd = add i8 %i.fc, -1                        ; 2 uses
  store i8 %i.fd, ptr %i.fb, align 1, !tbaa !59
  %i.fe = icmp eq i8 %i.fd, 0
  br i1 %i.fe, label %.sink.split.i113, label %_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit

bb.ai:                                            ; preds = %._crit_edge
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.fg = lshr i8 %.sroa.014.0.copyload, 3
  %i.fh = zext nneg i8 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fh ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !59
  %i.fk = add i8 %i.fj, -1                        ; 2 uses
  store i8 %i.fk, ptr %i.fi, align 1, !tbaa !59
  %i.fl = icmp eq i8 %i.fk, 0
  br i1 %i.fl, label %bb.aj, label %_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit

bb.aj:                                            ; preds = %bb.ai
  %i.fm = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !68, !align !69
  %i.fn = call noundef zeroext i1 @_ZNK4Luau7CodeGen3X6413IrRegAllocX6413shouldFreeGprENS1_11RegisterX64E(ptr noundef nonnull align 8 dereferenceable(332) %i.fm, i8 %.sroa.014.0.copyload)
  br i1 %i.fn, label %.sink.split.i113, label %_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit

.sink.split.i113:                                 ; preds = %bb.aj, %bb.ah
  %i.fo = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !68, !align !69
  call void @_ZN4Luau7CodeGen3X6413IrRegAllocX647freeRegENS1_11RegisterX64E(ptr noundef nonnull align 8 dereferenceable(332) %i.fo, i8 %.sroa.014.0.copyload)
  br label %_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit

_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit: ; preds = %._crit_edge, %bb.ah, %bb.ai, %bb.aj, %.sink.split.i113
  %.sroa.013.0.copyload = load i8, ptr %i.r, align 1, !tbaa !59 ; 5 uses
  %i.fp = and i8 %.sroa.013.0.copyload, 7
  switch i8 %i.fp, label %bb.al [
    i8 5, label %bb.ak
    i8 0, label %_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit115
  ]

bb.ak:                                            ; preds = %_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.fr = lshr i8 %.sroa.013.0.copyload, 3
  %i.fs = zext nneg i8 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fs ; 2 uses
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !59
  %i.fv = add i8 %i.fu, -1                        ; 2 uses
  store i8 %i.fv, ptr %i.ft, align 1, !tbaa !59
  %i.fw = icmp eq i8 %i.fv, 0
  br i1 %i.fw, label %.sink.split.i114, label %_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit115

bb.al:                                            ; preds = %_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.fy = lshr i8 %.sroa.013.0.copyload, 3
  %i.fz = zext nneg i8 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fz ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !59
  %i.gc = add i8 %i.gb, -1                        ; 2 uses
  store i8 %i.gc, ptr %i.ga, align 1, !tbaa !59
  %i.gd = icmp eq i8 %i.gc, 0
  br i1 %i.gd, label %bb.am, label %_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit115

bb.am:                                            ; preds = %bb.al
  %i.ge = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !68, !align !69
  %i.gf = call noundef zeroext i1 @_ZNK4Luau7CodeGen3X6413IrRegAllocX6413shouldFreeGprENS1_11RegisterX64E(ptr noundef nonnull align 8 dereferenceable(332) %i.ge, i8 %.sroa.013.0.copyload)
  br i1 %i.gf, label %.sink.split.i114, label %_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit115

.sink.split.i114:                                 ; preds = %bb.am, %bb.ak
  %i.gg = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !68, !align !69
  call void @_ZN4Luau7CodeGen3X6413IrRegAllocX647freeRegENS1_11RegisterX64E(ptr noundef nonnull align 8 dereferenceable(332) %i.gg, i8 %.sroa.013.0.copyload)
  br label %_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit115

_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit115: ; preds = %_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit, %bb.ak, %bb.al, %bb.am, %.sink.split.i114
  %i.gh = load i32, ptr %i.f, align 4, !tbaa !63  ; 2 uses
  %i.gi = icmp sgt i32 %i.gh, 0
  br i1 %i.gi, label %.lr.ph159, label %._crit_edge160

.lr.ph157:                                        ; preds = %.loopexit, %bb.as
  %i.gj = phi i32 [ %i.gw, %bb.as ], [ %i.dl, %.loopexit ]
  %indvars.iv165 = phi i64 [ %indvars.iv.next166, %bb.as ], [ 0, %.loopexit ] ; 2 uses
  %i.gk = getelementptr inbounds nuw [28 x i8], ptr %i.au, i64 %indvars.iv165 ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %i.gm = load i8, ptr %i.gl, align 4, !tbaa !92
  %i.gn = icmp eq i8 %i.gm, 2
  br i1 %i.gn, label %bb.an, label %bb.as

bb.an:                                            ; preds = %.lr.ph157
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 24 ; 2 uses
  store i8 1, ptr %i.go, align 4, !tbaa !61
  %i.gp = call i8 @_ZNK4Luau7CodeGen3X6416IrCallWrapperX6421findConflictingTargetEv(ptr noundef nonnull align 8 dereferenceable(248) %0) ; 2 uses
  %.not147.a = icmp eq i8 %i.gp, -128
  br i1 %.not147.a, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_ZN4Luau7CodeGen3X6416IrCallWrapperX6425renameConflictingRegisterENS1_11RegisterX64E(ptr noundef nonnull align 8 dereferenceable(248) %0, i8 %i.gp)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gr = load i8, ptr %i.gq, align 4, !tbaa !93
  %i.gs = icmp eq i8 %i.gr, 0
  br i1 %i.gs, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.gt = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !68, !align !69
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gk, i64 18
  %.sroa.016.0.copyload = load i8, ptr %i.gu, align 2, !tbaa !59
  %i.gv = call i8 @_ZN4Luau7CodeGen3X6413IrRegAllocX647takeRegENS1_11RegisterX64Ej(ptr noundef nonnull align 8 dereferenceable(332) %i.gt, i8 %.sroa.016.0.copyload, i32 noundef -1) ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  call void @_ZN4Luau7CodeGen3X6416IrCallWrapperX6412moveToTargetERNS1_12CallArgumentE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 4 dereferenceable(25) %i.gk)
  store i8 0, ptr %i.go, align 4, !tbaa !61
  %.pre = load i32, ptr %i.f, align 4, !tbaa !63
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph157
  %i.gw = phi i32 [ %.pre, %bb.ar ], [ %i.gj, %.lr.ph157 ] ; 2 uses
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %i.gx = sext i32 %i.gw to i64
  %i.gy = icmp slt i64 %indvars.iv.next166, %i.gx
  br i1 %i.gy, label %.lr.ph157, label %._crit_edge, !llvm.loop !98

._crit_edge160:                                   ; preds = %bb.au, %_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit115
  %i.gz = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !68, !align !69
  call void @_ZN4Luau7CodeGen3X6413IrRegAllocX6425preserveAndFreeInstValuesEv(ptr noundef nonnull align 8 dereferenceable(332) %i.gz)
  %i.ha = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !68, !align !69
  call void @_ZNK4Luau7CodeGen3X6413IrRegAllocX6413assertAllFreeEv(ptr noundef nonnull align 8 dereferenceable(332) %i.ha)
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !67, !nonnull !68, !align !69
  %.sroa.08.0.copyload = load i64, ptr %i.a, align 8
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644callENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %i.hc, i64 %.sroa.08.0.copyload)
  %i.hd = load i8, ptr %i.c, align 8              ; 2 uses
  %.not146 = icmp eq i8 %i.hd, -128
  br i1 %.not146, label %bb.ax, label %bb.av

.lr.ph159:                                        ; preds = %_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit115, %bb.au
  %i.he = phi i32 [ %i.hl, %bb.au ], [ %i.gh, %_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit115 ]
  %indvars.iv168 = phi i64 [ %indvars.iv.next169, %bb.au ], [ 0, %_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit115 ] ; 2 uses
  %i.hf = getelementptr inbounds nuw [28 x i8], ptr %i.au, i64 %indvars.iv168 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load i8, ptr %i.hg, align 4, !tbaa !93
  %i.hi = icmp eq i8 %i.hh, 0
  br i1 %i.hi, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph159
  %i.hj = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !68, !align !69
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 18
  %.sroa.09.0.copyload = load i8, ptr %i.hk, align 2, !tbaa !59
  call void @_ZN4Luau7CodeGen3X6413IrRegAllocX647freeRegENS1_11RegisterX64E(ptr noundef nonnull align 8 dereferenceable(332) %i.hj, i8 %.sroa.09.0.copyload)
  %.pre173 = load i32, ptr %i.f, align 4, !tbaa !63
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph159
  %i.hl = phi i32 [ %.pre173, %bb.at ], [ %i.he, %.lr.ph159 ] ; 2 uses
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %i.hm = sext i32 %i.hl to i64
  %i.hn = icmp slt i64 %indvars.iv.next169, %i.hm
  br i1 %i.hn, label %.lr.ph159, label %._crit_edge160, !llvm.loop !99

bb.av:                                            ; preds = %._crit_edge160
  %i.ho = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !68, !align !69
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !62
  %i.hr = call i8 @_ZN4Luau7CodeGen3X6413IrRegAllocX647takeRegENS1_11RegisterX64Ej(ptr noundef nonnull align 8 dereferenceable(332) %i.ho, i8 %i.hd, i32 noundef %i.hq) ; 0 uses
  %i.hs = load i8, ptr %i.c, align 8              ; 3 uses
  %.not105 = icmp ult i8 %i.hs, 8
  br i1 %.not105, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ht = and i8 %i.hs, 7
  %i.hu = load ptr, ptr %i.hb, align 8, !tbaa !67, !nonnull !68, !align !69
  %.sroa.3118.0.insert.ext = zext i8 %i.hs to i64
  %.sroa.3118.0.insert.shift = shl nuw nsw i64 %.sroa.3118.0.insert.ext, 16
  %.sroa.2117.0.insert.insert = or disjoint i64 %.sroa.3118.0.insert.shift, 268468224
  %.sroa.3.0.insert.ext = zext nneg i8 %i.ht to i64
  %.sroa.3.0.insert.shift = shl nuw nsw i64 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, 268468224
end_hunk_0
begin_hunk_1_@_ZN4Luau7CodeGen3X6416IrCallWrapperX6417countRegisterUsesEv:bb.a
bb.f:                                             ; preds = %_ZN4Luau7CodeGen3X6416IrCallWrapperX6414addRegisterUseENS1_11RegisterX64E.exit12
  br label %.sink.split.i13

.sink.split.i13:                                  ; preds = %bb.f, %_ZN4Luau7CodeGen3X6416IrCallWrapperX6414addRegisterUseENS1_11RegisterX64E.exit12
  %.sink.i14 = phi i64 [ 216, %bb.f ], [ 232, %_ZN4Luau7CodeGen3X6416IrCallWrapperX6414addRegisterUseENS1_11RegisterX64E.exit12 ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i14
  %i.ag = lshr i8 %.sroa.02.0.copyload, 3
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ah ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !59
  %i.ak = add i8 %i.aj, 1
  store i8 %i.ak, ptr %i.ai, align 1, !tbaa !59
  br label %_ZN4Luau7CodeGen3X6416IrCallWrapperX6414addRegisterUseENS1_11RegisterX64E.exit15

_ZN4Luau7CodeGen3X6416IrCallWrapperX6414addRegisterUseENS1_11RegisterX64E.exit15: ; preds = %_ZN4Luau7CodeGen3X6416IrCallWrapperX6414addRegisterUseENS1_11RegisterX64E.exit12, %.sink.split.i13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !74
}

declare noundef zeroext i1 @_ZNK4Luau7CodeGen3X6413IrRegAllocX6412isLastUseRegERKNS0_6IrInstEj(ptr noundef nonnull align 8 dereferenceable(332), ptr noundef nonnull align 8 dereferenceable(59), i32 noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK4Luau7CodeGen3X6413IrRegAllocX6413shouldFreeGprENS1_11RegisterX64E(ptr noundef nonnull align 8 dereferenceable(332), i8) local_unnamed_addr #6

declare i8 @_ZN4Luau7CodeGen3X6413IrRegAllocX647takeRegENS1_11RegisterX64Ej(ptr noundef nonnull align 8 dereferenceable(332), i8, i32 noundef) local_unnamed_addr #6

declare void @_ZN4Luau7CodeGen3X6412ScopedRegX64C1ERNS1_13IrRegAllocX64ENS1_7SizeX64E(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef nonnull align 8 dereferenceable(332), i8 noundef zeroext) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6416IrCallWrapperX6419freeSourceRegistersERNS1_12CallArgumentE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(25) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 6
  %.sroa.01.0.copyload = load i8, ptr %i.a, align 2, !tbaa !59 ; 5 uses
  %i.b = and i8 %.sroa.01.0.copyload, 7
  switch i8 %i.b, label %bb.c [
    i8 5, label %bb.b
    i8 0, label %_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = lshr i8 %.sroa.01.0.copyload, 3
  %i.e = zext nneg i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !59
  %i.h = add i8 %i.g, -1                          ; 2 uses
  store i8 %i.h, ptr %i.f, align 1, !tbaa !59
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %.sink.split.i, label %_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.k = lshr i8 %.sroa.01.0.copyload, 3
  %i.l = zext nneg i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !59
  %i.o = add i8 %i.n, -1                          ; 2 uses
  store i8 %i.o, ptr %i.m, align 1, !tbaa !59
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.d, label %_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !68, !align !69
  %i.r = tail call noundef zeroext i1 @_ZNK4Luau7CodeGen3X6413IrRegAllocX6413shouldFreeGprENS1_11RegisterX64E(ptr noundef nonnull align 8 dereferenceable(332) %i.q, i8 %.sroa.01.0.copyload)
  br i1 %i.r, label %.sink.split.i, label %_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit

.sink.split.i:                                    ; preds = %bb.d, %bb.b
  %i.s = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !68, !align !69
  tail call void @_ZN4Luau7CodeGen3X6413IrRegAllocX647freeRegENS1_11RegisterX64E(ptr noundef nonnull align 8 dereferenceable(332) %i.s, i8 %.sroa.01.0.copyload)
  br label %_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit

_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %.sink.split.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 5
  %.sroa.0.0.copyload = load i8, ptr %i.t, align 1, !tbaa !59 ; 5 uses
  %i.u = and i8 %.sroa.0.0.copyload, 7
  switch i8 %i.u, label %bb.f [
    i8 5, label %bb.e
    i8 0, label %_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit5
  ]

bb.e:                                             ; preds = %_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.w = lshr i8 %.sroa.0.0.copyload, 3
  %i.x = zext nneg i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !59
  %i.aa = add i8 %i.z, -1                         ; 2 uses
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !59
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %.sink.split.i4, label %_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit5

bb.f:                                             ; preds = %_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ad = lshr i8 %.sroa.0.0.copyload, 3
  %i.ae = zext nneg i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !59
  %i.ah = add i8 %i.ag, -1                        ; 2 uses
  store i8 %i.ah, ptr %i.af, align 1, !tbaa !59
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.g, label %_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit5

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !68, !align !69
  %i.ak = tail call noundef zeroext i1 @_ZNK4Luau7CodeGen3X6413IrRegAllocX6413shouldFreeGprENS1_11RegisterX64E(ptr noundef nonnull align 8 dereferenceable(332) %i.aj, i8 %.sroa.0.0.copyload)
  br i1 %i.ak, label %.sink.split.i4, label %_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit5

.sink.split.i4:                                   ; preds = %bb.g, %bb.e
  %i.al = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !68, !align !69
  tail call void @_ZN4Luau7CodeGen3X6413IrRegAllocX647freeRegENS1_11RegisterX64E(ptr noundef nonnull align 8 dereferenceable(332) %i.al, i8 %.sroa.0.0.copyload)
  br label %_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit5

_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit5: ; preds = %_ZN4Luau7CodeGen3X6416IrCallWrapperX6417removeRegisterUseENS1_11RegisterX64E.exit, %bb.e, %bb.f, %bb.g, %.sink.split.i4
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643leaENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268), i64, i64) local_unnamed_addr #6

declare void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268), i64, i64) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN4Luau7CodeGen3X6412ScopedRegX64D1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9)) unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 256) i32 @_ZNK4Luau7CodeGen3X6416IrCallWrapperX6415getRegisterUsesENS1_11RegisterX64E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %0, i8 %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = and i8 %1, 7
  switch i8 %i.a, label %bb.b [
    i8 5, label %.sink.split
    i8 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ 216, %bb.b ], [ 232, %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %i.c = lshr i8 %1, 3
  %i.d = zext nneg i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !59
  %i.g = zext i8 %i.f to i32
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.shrunk = phi i32 [ 0, %bb.a ], [ %i.g, %.sink.split ]
  ret i32 %.shrunk
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4Luau7CodeGen3X6416IrCallWrapperX6414addRegisterUseENS1_11RegisterX64E(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) %0, i8 %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = and i8 %1, 7
  switch i8 %i.a, label %bb.b [
    i8 5, label %.sink.split
    i8 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ 216, %bb.b ], [ 232, %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %i.c = lshr i8 %1, 3
  %i.d = zext nneg i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !59
  %i.g = add i8 %i.f, 1
  store i8 %i.g, ptr %i.e, align 1, !tbaa !59
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN4Luau7CodeGen3X6416IrCallWrapperX6426findNonInterferingArgumentEv(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(248) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.b = load i32, ptr %i.a, align 4, !tbaa !63   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.split.us.preheader, label %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6421interferesWithOperandERKNS1_10OperandX64ENS1_11RegisterX64E.exit.thread15

.lr.ph.split.us.preheader:                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.b to i64  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 202
  %.sroa.03.0.copyload.i = load i8, ptr %i.e, align 2 ; 2 uses
  %i.f = and i8 %.sroa.03.0.copyload.i, 7
  %i.g = icmp ne i8 %i.f, 5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 201
  %.sroa.01.0.copyload.i = load i8, ptr %i.h, align 1 ; 2 uses
  %i.i = and i8 %.sroa.01.0.copyload.i, 7
  %i.j = icmp ne i8 %i.i, 5
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6427interferesWithActiveSourcesERKNS1_12CallArgumentEi.exit.thread.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next, %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6427interferesWithActiveSourcesERKNS1_12CallArgumentEi.exit.thread.us ] ; 3 uses
  %i.k = getelementptr inbounds nuw [28 x i8], ptr %i.d, i64 %indvars.iv ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i8, ptr %i.l, align 4, !tbaa !61, !range !95, !noundef !68
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.lr.ph.i.us, label %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6427interferesWithActiveSourcesERKNS1_12CallArgumentEi.exit.thread.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.split.us
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 18
  %.sroa.0.0.copyload.i.us = load i8, ptr %i.o, align 2 ; 5 uses
  %i.p = and i8 %.sroa.0.0.copyload.i.us, 7
  %i.q = icmp eq i8 %i.p, 5                       ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.critedge.i.us, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.i.us ], [ %indvars.iv.next.i.us, %.critedge.i.us ] ; 3 uses
  %i.r = getelementptr inbounds nuw [28 x i8], ptr %i.d, i64 %indvars.iv.i.us ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load i8, ptr %i.s, align 4, !tbaa !61, !range !95, !noundef !68
  %i.u = trunc nuw i8 %i.t to i1
  %.not.i.us = icmp ne i64 %indvars.iv.i.us, %indvars.iv
  %or.cond.not.i.us = and i1 %.not.i.us, %i.u
  br i1 %or.cond.not.i.us, label %bb.c, label %.critedge.i.us

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  %.sroa.03.0.copyload.i.i.us = load i8, ptr %i.v, align 2, !tbaa !59 ; 2 uses
  %i.w = and i8 %.sroa.03.0.copyload.i.i.us, 7
  %i.x = icmp ne i8 %i.w, 5
  %i.y = xor i1 %i.q, %i.x
  %.unshifted.i.i.i.us = xor i8 %.sroa.03.0.copyload.i.i.us, %.sroa.0.0.copyload.i.us
  %i.z = icmp ult i8 %.unshifted.i.i.i.us, 8
  %or.cond.i.i.us = and i1 %i.z, %i.y
  br i1 %or.cond.i.i.us, label %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6427interferesWithActiveSourcesERKNS1_12CallArgumentEi.exit.thread.us, label %_ZN4Luau7CodeGen3X64L22sameUnderlyingRegisterENS1_11RegisterX64ES2_.exit.thread.i.i.us

_ZN4Luau7CodeGen3X64L22sameUnderlyingRegisterENS1_11RegisterX64ES2_.exit.thread.i.i.us: ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  %.sroa.01.0.copyload.i.i.us = load i8, ptr %i.aa, align 1, !tbaa !59 ; 2 uses
  %i.ab = and i8 %.sroa.01.0.copyload.i.i.us, 7
  %i.ac = icmp ne i8 %i.ab, 5
  %i.ad = xor i1 %i.q, %i.ac
  %.unshifted.i7.i.i.us = xor i8 %.sroa.01.0.copyload.i.i.us, %.sroa.0.0.copyload.i.us
  %i.ae = icmp ult i8 %.unshifted.i7.i.i.us, 8
  %or.cond17.i.us = and i1 %i.ae, %i.ad
  br i1 %or.cond17.i.us, label %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6427interferesWithActiveSourcesERKNS1_12CallArgumentEi.exit.thread.us, label %.critedge.i.us

.critedge.i.us:                                   ; preds = %_ZN4Luau7CodeGen3X64L22sameUnderlyingRegisterENS1_11RegisterX64ES2_.exit.thread.i.i.us, %bb.b
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6427interferesWithActiveSourcesERKNS1_12CallArgumentEi.exit.loopexit.us, label %bb.b, !llvm.loop !96

_ZN4Luau7CodeGen3X64L22sameUnderlyingRegisterENS1_11RegisterX64ES2_.exit.thread.i.us: ; preds = %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6427interferesWithActiveSourcesERKNS1_12CallArgumentEi.exit.loopexit.us
  %i.af = xor i1 %i.q, %i.j
  %.unshifted.i7.i.us = xor i8 %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i.us
  %i.ag = icmp ult i8 %.unshifted.i7.i.us, 8
  %or.cond.us = and i1 %i.ag, %i.af
  br i1 %or.cond.us, label %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6427interferesWithActiveSourcesERKNS1_12CallArgumentEi.exit.thread.us, label %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6421interferesWithOperandERKNS1_10OperandX64ENS1_11RegisterX64E.exit.thread15

_ZNK4Luau7CodeGen3X6416IrCallWrapperX6427interferesWithActiveSourcesERKNS1_12CallArgumentEi.exit.thread.us: ; preds = %bb.c, %_ZN4Luau7CodeGen3X64L22sameUnderlyingRegisterENS1_11RegisterX64ES2_.exit.thread.i.i.us, %_ZN4Luau7CodeGen3X64L22sameUnderlyingRegisterENS1_11RegisterX64ES2_.exit.thread.i.us, %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6427interferesWithActiveSourcesERKNS1_12CallArgumentEi.exit.loopexit.us, %.lr.ph.split.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.i
  br i1 %exitcond.not, label %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6421interferesWithOperandERKNS1_10OperandX64ENS1_11RegisterX64E.exit.thread15, label %.lr.ph.split.us, !llvm.loop !97

_ZNK4Luau7CodeGen3X6416IrCallWrapperX6427interferesWithActiveSourcesERKNS1_12CallArgumentEi.exit.loopexit.us: ; preds = %.critedge.i.us
  %i.ah = xor i1 %i.q, %i.g
  %.unshifted.i.i.us = xor i8 %.sroa.03.0.copyload.i, %.sroa.0.0.copyload.i.us
  %i.ai = icmp ult i8 %.unshifted.i.i.us, 8
  %or.cond.i.us = and i1 %i.ai, %i.ah
  br i1 %or.cond.i.us, label %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6427interferesWithActiveSourcesERKNS1_12CallArgumentEi.exit.thread.us, label %_ZN4Luau7CodeGen3X64L22sameUnderlyingRegisterENS1_11RegisterX64ES2_.exit.thread.i.us

_ZNK4Luau7CodeGen3X6416IrCallWrapperX6421interferesWithOperandERKNS1_10OperandX64ENS1_11RegisterX64E.exit.thread15: ; preds = %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6427interferesWithActiveSourcesERKNS1_12CallArgumentEi.exit.thread.us, %_ZN4Luau7CodeGen3X64L22sameUnderlyingRegisterENS1_11RegisterX64ES2_.exit.thread.i.us, %bb.a
  %i.aj = phi ptr [ null, %bb.a ], [ %i.k, %_ZN4Luau7CodeGen3X64L22sameUnderlyingRegisterENS1_11RegisterX64ES2_.exit.thread.i.us ], [ null, %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6427interferesWithActiveSourcesERKNS1_12CallArgumentEi.exit.thread.us ]
  ret ptr %i.aj
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6416IrCallWrapperX6412moveToTargetERNS1_12CallArgumentE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(25) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !92
  switch i8 %i.b, label %bb.f [
    i8 0, label %bb.b
    i8 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 6
  %.sroa.015.0.copyload = load i8, ptr %i.c, align 2, !tbaa !59 ; 2 uses
  %i.d = and i8 %.sroa.015.0.copyload, 7
  %i.e = icmp eq i8 %i.d, 5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67, !nonnull !68, !align !69 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.014.0.copyload = load i64, ptr %i.h, align 4 ; 2 uses
  %.sroa.346.0.insert.ext = zext i8 %.sroa.015.0.copyload to i64
  %.sroa.346.0.insert.shift = shl nuw nsw i64 %.sroa.346.0.insert.ext, 16
  %.sroa.245.0.insert.insert = or disjoint i64 %.sroa.346.0.insert.shift, 268468224 ; 3 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646vmovsdENS1_10OperandX64ES3_S3_(ptr noundef nonnull align 8 dereferenceable(268) %i.g, i64 %.sroa.014.0.copyload, i64 %.sroa.245.0.insert.insert, i64 %.sroa.245.0.insert.insert)
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.g, i64 %.sroa.014.0.copyload, i64 %.sroa.245.0.insert.insert)
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !67, !nonnull !68, !align !69
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.09.0.copyload = load i64, ptr %i.k, align 4
  %.sroa.08.0.copyload = load i64, ptr %i.a, align 4
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.j, i64 %.sroa.09.0.copyload, i64 %.sroa.08.0.copyload)
  br label %bb.m

bb.f:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.m = load i8, ptr %i.l, align 1
  %i.n = and i8 %i.m, 15                          ; 2 uses
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !67, !nonnull !68, !align !69
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.07.0.copyload = load i64, ptr %i.r, align 4
  %.sroa.06.0.copyload = load i64, ptr %i.a, align 4
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643leaENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.q, i64 %.sroa.07.0.copyload, i64 %.sroa.06.0.copyload)
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.u = load i8, ptr %i.t, align 2
  %i.v = and i8 %i.u, 7
  %i.w = icmp eq i8 %i.v, 5                       ; 2 uses
  %i.x = icmp eq i8 %i.n, 5
  %or.cond = and i1 %i.x, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !67, !nonnull !68, !align !69 ; 3 uses
  %.sroa.05.0.copyload = load i64, ptr %i.s, align 4 ; 3 uses
  %.sroa.04.0.copyload = load i64, ptr %i.a, align 4 ; 3 uses
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX647vmovupsENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.z, i64 %.sroa.05.0.copyload, i64 %.sroa.04.0.copyload)
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646vmovsdENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.z, i64 %.sroa.05.0.copyload, i64 %.sroa.04.0.copyload)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.z, i64 %.sroa.05.0.copyload, i64 %.sroa.04.0.copyload)
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.i, %bb.l, %bb.k, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i8 @_ZNK4Luau7CodeGen3X6416IrCallWrapperX6421findConflictingTargetEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.b = load i32, ptr %i.a, align 4, !tbaa !63   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.split.us.preheader, label %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6426interferesWithActiveTargetENS1_11RegisterX64E.exit40

.lr.ph.split.us.preheader:                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.b to i64  ; 3 uses
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6426interferesWithActiveTargetENS1_11RegisterX64E.exit29.thread.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next, %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6426interferesWithActiveTargetENS1_11RegisterX64E.exit29.thread.us ] ; 2 uses
  %i.e = getelementptr inbounds nuw [28 x i8], ptr %i.d, i64 %indvars.iv ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i8, ptr %i.f, align 4, !tbaa !61, !range !95, !noundef !68
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.lr.ph.i.us, label %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6426interferesWithActiveTargetENS1_11RegisterX64E.exit29.thread.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.split.us
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %.sroa.03.0.copyload.us = load i8, ptr %i.i, align 2, !tbaa !59 ; 3 uses
  %i.j = and i8 %.sroa.03.0.copyload.us, 7
  %i.k = icmp eq i8 %i.j, 5
  br label %bb.b

bb.b:                                             ; preds = %.critedge.i.us, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.i.us ], [ %indvars.iv.next.i.us, %.critedge.i.us ] ; 2 uses
  %i.l = getelementptr inbounds nuw [28 x i8], ptr %i.d, i64 %indvars.iv.i.us ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load i8, ptr %i.m, align 4, !tbaa !61, !range !95, !noundef !68
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %.critedge.i.us

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 18
  %.sroa.01.0.copyload.i.us = load i8, ptr %i.p, align 2, !tbaa !59 ; 2 uses
  %i.q = and i8 %.sroa.01.0.copyload.i.us, 7
  %i.r = icmp ne i8 %i.q, 5
  %i.s = xor i1 %i.k, %i.r
  %.unshifted.i.i.us = xor i8 %.sroa.01.0.copyload.i.us, %.sroa.03.0.copyload.us
  %i.t = icmp ult i8 %.unshifted.i.i.us, 8
  %or.cond.i.us = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond.i.us, label %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6426interferesWithActiveTargetENS1_11RegisterX64E.exit40, label %.critedge.i.us

.critedge.i.us:                                   ; preds = %bb.c, %bb.b
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %.lr.ph.i20.us, label %bb.b, !llvm.loop !100

.lr.ph.i20.us:                                    ; preds = %.critedge.i.us
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %.sroa.02.0.copyload.us = load i8, ptr %i.u, align 1, !tbaa !59 ; 3 uses
  %i.v = and i8 %.sroa.02.0.copyload.us, 7
  %i.w = icmp eq i8 %i.v, 5
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i23.us, %.lr.ph.i20.us
  %indvars.iv.i22.us = phi i64 [ 0, %.lr.ph.i20.us ], [ %indvars.iv.next.i24.us, %.critedge.i23.us ] ; 2 uses
  %i.x = getelementptr inbounds nuw [28 x i8], ptr %i.d, i64 %indvars.iv.i22.us ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load i8, ptr %i.y, align 4, !tbaa !61, !range !95, !noundef !68
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.e, label %.critedge.i23.us

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 18
  %.sroa.01.0.copyload.i26.us = load i8, ptr %i.ab, align 2, !tbaa !59 ; 2 uses
  %i.ac = and i8 %.sroa.01.0.copyload.i26.us, 7
  %i.ad = icmp ne i8 %i.ac, 5
  %i.ae = xor i1 %i.w, %i.ad
  %.unshifted.i.i27.us = xor i8 %.sroa.01.0.copyload.i26.us, %.sroa.02.0.copyload.us
  %i.af = icmp ult i8 %.unshifted.i.i27.us, 8
  %or.cond.i28.us = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond.i28.us, label %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6426interferesWithActiveTargetENS1_11RegisterX64E.exit40, label %.critedge.i23.us

.critedge.i23.us:                                 ; preds = %bb.e, %bb.d
  %indvars.iv.next.i24.us = add nuw nsw i64 %indvars.iv.i22.us, 1 ; 2 uses
  %exitcond.not.i25.us = icmp eq i64 %indvars.iv.next.i24.us, %wide.trip.count.i
  br i1 %exitcond.not.i25.us, label %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6426interferesWithActiveTargetENS1_11RegisterX64E.exit29.thread.us, label %bb.d, !llvm.loop !100

_ZNK4Luau7CodeGen3X6416IrCallWrapperX6426interferesWithActiveTargetENS1_11RegisterX64E.exit29.thread.us: ; preds = %.critedge.i23.us, %.lr.ph.split.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.i
  br i1 %exitcond.not, label %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6426interferesWithActiveTargetENS1_11RegisterX64E.exit, label %.lr.ph.split.us, !llvm.loop !101

_ZNK4Luau7CodeGen3X6416IrCallWrapperX6426interferesWithActiveTargetENS1_11RegisterX64E.exit: ; preds = %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6426interferesWithActiveTargetENS1_11RegisterX64E.exit29.thread.us
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 202
  %.sroa.01.0.copyload = load i8, ptr %i.ag, align 2, !tbaa !59 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ai = and i8 %.sroa.01.0.copyload, 7
  %i.aj = icmp eq i8 %i.ai, 5
  %wide.trip.count.i32 = zext nneg i32 %i.b to i64 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.critedge.i34, %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6426interferesWithActiveTargetENS1_11RegisterX64E.exit
  %indvars.iv.i33 = phi i64 [ 0, %_ZNK4Luau7CodeGen3X6416IrCallWrapperX6426interferesWithActiveTargetENS1_11RegisterX64E.exit ], [ %indvars.iv.next.i35, %.critedge.i34 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [28 x i8], ptr %i.ah, i64 %indvars.iv.i33 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load i8, ptr %i.al, align 4, !tbaa !61, !range !95, !noundef !68
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.g, label %.critedge.i34

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 18
end_hunk_1
