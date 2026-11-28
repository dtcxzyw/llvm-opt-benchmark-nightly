Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/dauTree?download=true
inline.NumInlined: 373
inline.NumDeleted: 72
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 36
begin_hunk_0_@Dss_ManOperation:bb.a
  br label %Vec_IntGrow.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.nk = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #30
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.ae, %bb.ad
  %i.nl = phi ptr [ %i.nj, %bb.ad ], [ %i.nk, %bb.ae ]
  store ptr %i.nl, ptr %i.nh, align 8, !tbaa !35
  br label %Vec_IntGrow.exit11.sink.split.i

bb.af:                                            ; preds = %bb.ab
  %i.nm = icmp samesign ult i32 %i.nd, 1073741823
  %i.nn = shl nuw nsw i32 %i.nd, 1
  %spec.select.i215 = select i1 %i.nm, i32 %i.nn, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.nd, %spec.select.i215
  br i1 %.not.i9.i, label %bb.ag, label %Vec_IntPush.exit

bb.ag:                                            ; preds = %bb.af
  %i.no = getelementptr inbounds nuw i8, ptr %i.mr, i64 8 ; 2 uses
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !35 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.np, null
  %i.nq = zext nneg i32 %spec.select.i215 to i64
  %i.nr = shl nuw nsw i64 %i.nq, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ns = tail call ptr @realloc(ptr noundef nonnull %i.np, i64 noundef %i.nr) #29
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.nt = tail call noalias ptr @malloc(i64 noundef %i.nr) #30
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.nu = phi ptr [ %i.ns, %bb.ah ], [ %i.nt, %bb.ai ]
  store ptr %i.nu, ptr %i.no, align 8, !tbaa !35
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.aj, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i215, %bb.aj ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.mr, align 8, !tbaa !46
  %.pre369 = load i32, ptr %i.nc, align 4, !tbaa !34
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.lr.ph285, %bb.af, %Vec_IntGrow.exit11.sink.split.i
  %i.nv = phi i32 [ %i.nd, %.lr.ph285 ], [ %i.nd, %bb.af ], [ %.pre369, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !35
  %i.ny = add nsw i32 %i.nv, 1
  store i32 %i.ny, ptr %i.nc, align 4, !tbaa !34
  %i.nz = sext i32 %i.nv to i64
  %i.oa = getelementptr inbounds [4 x i8], ptr %i.nx, i64 %i.nz
  store i32 %i.nb, ptr %i.oa, align 4, !tbaa !36
  %indvars.iv.next358 = add nuw nsw i64 %indvars.iv357, 1 ; 2 uses
  %exitcond361.not = icmp eq i64 %indvars.iv.next358, %wide.trip.count360
  br i1 %exitcond361.not, label %._crit_edge286.loopexit, label %.lr.ph285, !llvm.loop !170

._crit_edge286.loopexit:                          ; preds = %Vec_IntPush.exit
  %.pre370 = load ptr, ptr %i.mq, align 8, !tbaa !72
  br label %._crit_edge286

._crit_edge286:                                   ; preds = %Dss_ObjSort.exit197.thread, %._crit_edge286.loopexit, %Dss_ObjSort.exit197
  %.2150400 = phi i32 [ %.2150407, %._crit_edge286.loopexit ], [ %.2150, %Dss_ObjSort.exit197 ], [ %.2150.ph, %Dss_ObjSort.exit197.thread ]
  %i.ob = phi ptr [ %.pre370, %._crit_edge286.loopexit ], [ %i.mn, %Dss_ObjSort.exit197 ], [ %i.lj, %Dss_ObjSort.exit197.thread ] ; 2 uses
  %i.oc = tail call ptr @Dss_ObjHashLookup(ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef readonly %i.ob, ptr noundef readonly %5) ; 2 uses
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !36 ; 2 uses
  %.not.i = icmp eq i32 %i.od, 0
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !57 ; 2 uses
  br i1 %.not.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge286
  %i.og = getelementptr i8, ptr %i.of, i64 8
  %.val15.i = load ptr, ptr %i.og, align 8, !tbaa !30
  %i.oh = sext i32 %i.od to i64
  %i.oi = getelementptr inbounds [8 x i8], ptr %.val15.i, i64 %i.oh
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !31
  br label %Dss_ObjFindOrAdd.exit

bb.al:                                            ; preds = %._crit_edge286
  %i.ok = getelementptr i8, ptr %i.of, i64 4
  %.val.i = load i32, ptr %i.ok, align 4, !tbaa !26
  store i32 %.val.i, ptr %i.oc, align 4, !tbaa !36
  %i.ol = tail call ptr @Dss_ObjCreate(ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef readonly %i.ob, ptr noundef readonly %5)
  br label %Dss_ObjFindOrAdd.exit

Dss_ObjFindOrAdd.exit:                            ; preds = %bb.ak, %bb.al
  %.0.i = phi ptr [ %i.oj, %bb.ak ], [ %i.ol, %bb.al ]
  %i.om = load i32, ptr %.0.i, align 4, !tbaa !28
  %i.on = shl nsw i32 %i.om, 1
  %i.oo = add nuw nsw i32 %i.on, %.2150400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret i32 %i.oo
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @Dss_ManOperationFun(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @Dss_ManOperation(ptr noundef %0, i32 noundef 3, ptr noundef %1, i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Dss_ManOperationFun.Buffer, i64 4), ptr noundef null)
  %i.b = and i32 %i.a, 67108863
  %i.c = shl i32 %2, 26
  %i.d = or disjoint i32 %i.b, %i.c
  store i32 %i.d, ptr @Dss_ManOperationFun.Buffer, align 16
  ret ptr @Dss_ManOperationFun.Buffer
}

; Function Attrs: nofree nounwind uwtable
define void @Dss_EntPrint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 134217727
  %i.e = lshr i64 %i.b, 32
  %i.f = trunc nuw i64 %i.e to i32
  %i.g = and i32 %i.f, 134217727
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %i.d, i32 noundef %i.g) ; 0 uses
  %i.i = load i64, ptr %i.a, align 8
  %.not = icmp ult i64 %i.i, 576460752303423488
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.k = shl nuw nsw i64 %indvars.iv, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !42
  %i.n = zext i8 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !42
  %i.q = zext i8 %i.p to i32
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %i.n, i32 noundef %i.q) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = load i64, ptr %i.a, align 8
  %i.t = lshr i64 %i.s, 59
  %i.u = icmp samesign ult i64 %indvars.iv.next, %i.t
  br i1 %i.u, label %bb.b, label %._crit_edge, !llvm.loop !172

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.v = load i32, ptr %1, align 4
  %i.w = and i32 %i.v, 67108863
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %i.w) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @Dss_ManBooleanAnd(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 %2) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [64 x i64], align 16              ; 13 uses
  %i.b = alloca [2000 x i8], align 16             ; 4 uses
  %i.c = alloca [12 x i32], align 16              ; 10 uses
  %i.d = alloca [12 x i32], align 16              ; 15 uses
  %i.e = alloca [12 x i32], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = trunc i64 %i.i to i32
  %i.k = and i32 %i.j, 134217727                  ; 2 uses
  %i.l = getelementptr i8, ptr %i.g, i64 8
  %.val72 = load ptr, ptr %i.l, align 8, !tbaa !30 ; 2 uses
  %i.m = lshr i32 %i.k, 1
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.val72, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4
  %i.s = lshr i32 %i.r, 3
  %i.t = and i32 %i.s, 255                        ; 9 uses
  %sum.shift = lshr i64 %i.i, 33
  %i.u = and i64 %sum.shift, 67108863
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.val72, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4
  %i.z = lshr i32 %i.y, 3                         ; 3 uses
  %i.aa = and i32 %i.z, 255                       ; 3 uses
  %.not88 = icmp eq i32 %i.t, 0
  br i1 %.not88, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.t to i64    ; 3 uses
  %min.iters.check = icmp samesign ult i32 %i.t, 8
  br i1 %min.iters.check, label %.lr.ph.preheader150, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 248          ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind120 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next122, %vector.body ] ; 4 uses
  %step.add = add <4 x i32> %vec.ind120, splat (i32 4) ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <4 x i32> %vec.ind120, ptr %i.ab, align 16, !tbaa !36
  store <4 x i32> %step.add, ptr %i.ac, align 16, !tbaa !36
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.ae = shl nuw nsw <4 x i32> %vec.ind120, splat (i32 1)
  %step.add121 = shl nuw nsw <4 x i32> %step.add, splat (i32 1)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <4 x i32> %i.ae, ptr %i.ad, align 16, !tbaa !36
  store <4 x i32> %step.add121, ptr %i.af, align 16, !tbaa !36
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next122 = add <4 x i32> %vec.ind120, splat (i32 8)
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader150

.lr.ph.preheader150:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader150, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader150 ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.ai = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.ak = shl nuw nsw i32 %indvars.iv.tr, 1
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !36
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !174

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.al = load i32, ptr %0, align 8, !tbaa !70
  %i.am = call ptr @Dss_ManComputeTruth(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef %i.al, ptr noundef nonnull %i.d) ; 4 uses
  %i.an = load i32, ptr %0, align 8, !tbaa !70    ; 3 uses
  %i.ao = icmp slt i32 %i.an, 7
  %i.ap = add nsw i32 %i.an, -6
  %i.aq = shl nuw i32 1, %i.ap
  %i.ar = select i1 %i.ao, i32 1, i32 %i.aq       ; 5 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph18.preheader.i, label %Abc_TtCopy.exit

.lr.ph18.preheader.i:                             ; preds = %._crit_edge
  %min.iters.check124 = icmp ult i32 %i.ar, 4
  br i1 %min.iters.check124, label %.lr.ph18.i, label %vector.ph125

vector.ph125:                                     ; preds = %.lr.ph18.preheader.i
  %i.at = and i32 %i.ar, 2147483644
  %n.vec126 = zext nneg i32 %i.at to i64
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph125
  %index128 = phi i64 [ 0, %vector.ph125 ], [ %index.next130, %vector.body127 ] ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %index128 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <2 x i64>, ptr %i.au, align 8, !tbaa !41
  %wide.load129 = load <2 x i64>, ptr %i.av, align 8, !tbaa !41
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index128 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <2 x i64> %wide.load, ptr %i.aw, align 16, !tbaa !41
  store <2 x i64> %wide.load129, ptr %i.ax, align 16, !tbaa !41
  %index.next130 = add nuw i64 %index128, 4       ; 2 uses
  %i.ay = icmp eq i64 %index.next130, %n.vec126
  br i1 %i.ay, label %Abc_TtCopy.exit, label %vector.body127, !llvm.loop !175

.lr.ph18.i:                                       ; preds = %.lr.ph18.preheader.i
  %i.az = load i64, ptr %i.am, align 8, !tbaa !41
  store i64 %i.az, ptr %i.a, align 16, !tbaa !41
  %exitcond25.not.i = icmp eq i32 %i.ar, 1
  br i1 %exitcond25.not.i, label %Abc_TtCopy.exit, label %.lr.ph18.i.1

.lr.ph18.i.1:                                     ; preds = %.lr.ph18.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !41
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !41
  %exitcond25.not.i.1 = icmp eq i32 %i.ar, 2
  br i1 %exitcond25.not.i.1, label %Abc_TtCopy.exit, label %.lr.ph18.i.2

.lr.ph18.i.2:                                     ; preds = %.lr.ph18.i.1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !41
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.be, ptr %i.bf, align 16, !tbaa !41
  br label %Abc_TtCopy.exit

Abc_TtCopy.exit:                                  ; preds = %vector.body127, %.lr.ph18.i, %.lr.ph18.i.1, %.lr.ph18.i.2, %._crit_edge
  %.not89 = icmp eq i32 %i.aa, 0                  ; 2 uses
  br i1 %.not89, label %.preheader73, label %.lr.ph77.preheader

.lr.ph77.preheader:                               ; preds = %Abc_TtCopy.exit
  %i.bg = shl nuw nsw i32 %i.z, 2
  %i.bh = and i32 %i.bg, 1020
  %i.bi = zext nneg i32 %i.bh to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.d, i8 -1, i64 range(i64 0, 1021) %i.bi, i1 false), !tbaa !36
  br label %.preheader73

.preheader73:                                     ; preds = %.lr.ph77.preheader, %Abc_TtCopy.exit
  %i.bj = load i64, ptr %i.h, align 8             ; 3 uses
  %i.bk = lshr i64 %i.bj, 59                      ; 3 uses
  %.not90 = icmp eq i64 %i.bk, 0
  br i1 %.not90, label %.preheader, label %.lr.ph79

.lr.ph79:                                         ; preds = %.preheader73
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %xtraiter = and i64 %i.bk, 3                    ; 3 uses
  %i.bm = icmp ult i64 %i.bj, 2305843009213693952
  br i1 %i.bm, label %.epil.preheader, label %.lr.ph79.new

.lr.ph79.new:                                     ; preds = %.lr.ph79
  %unroll_iter = and i64 %i.bk, 28
  br label %bb.c

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph79
  %indvars.iv99.epil.init = phi i64 [ 0, %.lr.ph79 ], [ %indvars.iv.next100.3, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod151 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod151)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv99.epil = phi i64 [ %indvars.iv99.epil.init, %.epil.preheader ], [ %indvars.iv.next100.epil, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.bn = shl nuw nsw i64 %indvars.iv99.epil, 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !42
  %i.br = zext i8 %i.bq to i32
  %i.bs = load i8, ptr %i.bo, align 1, !tbaa !42
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bt
  store i32 %i.br, ptr %i.bu, align 4, !tbaa !36
  %indvars.iv.next100.epil = add nuw nsw i64 %indvars.iv99.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %bb.b, !llvm.loop !176

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.b, %.preheader73
  br i1 %.not89, label %._crit_edge84, label %.lr.ph83.preheader

.lr.ph83.preheader:                               ; preds = %.preheader
  %wide.trip.count107 = zext nneg i32 %i.aa to i64 ; 2 uses
  %xtraiter152 = and i64 %wide.trip.count107, 1
  %i.bv = icmp eq i32 %i.aa, 1
  br i1 %i.bv, label %.lr.ph83.epil.preheader, label %.lr.ph83.preheader.new

.lr.ph83.preheader.new:                           ; preds = %.lr.ph83.preheader
  %unroll_iter157 = and i64 %wide.trip.count107, 254
  br label %.lr.ph83

bb.c:                                             ; preds = %bb.c, %.lr.ph79.new
  %indvars.iv99 = phi i64 [ 0, %.lr.ph79.new ], [ %indvars.iv.next100.3, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph79.new ], [ %niter.next.3, %bb.c ]
  %i.bw = shl nuw nsw i64 %indvars.iv99, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !42
  %i.ca = zext i8 %i.bz to i32
  %i.cb = load i8, ptr %i.bx, align 1, !tbaa !42
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.cc
  store i32 %i.ca, ptr %i.cd, align 4, !tbaa !36
  %indvars.iv.next100 = shl nuw i64 %indvars.iv99, 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv.next100 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 3
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !42
  %i.ci = zext i8 %i.ch to i32
  %i.cj = load i8, ptr %i.cf, align 1, !tbaa !42
  %i.ck = zext i8 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ck
  store i32 %i.ci, ptr %i.cl, align 4, !tbaa !36
  %indvars.iv.next100.1 = shl nuw i64 %indvars.iv99, 1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv.next100.1 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 5
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !42
  %i.cq = zext i8 %i.cp to i32
  %i.cr = load i8, ptr %i.cn, align 1, !tbaa !42
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.cs
  store i32 %i.cq, ptr %i.ct, align 4, !tbaa !36
  %indvars.iv.next100.2 = shl nuw i64 %indvars.iv99, 1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv.next100.2 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 6
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 7
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !42
  %i.cy = zext i8 %i.cx to i32
  %i.cz = load i8, ptr %i.cv, align 1, !tbaa !42
  %i.da = zext i8 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.da
  store i32 %i.cy, ptr %i.db, align 4, !tbaa !36
  %indvars.iv.next100.3 = add nuw nsw i64 %indvars.iv99, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %bb.c, !llvm.loop !177

.lr.ph83:                                         ; preds = %bb.f, %.lr.ph83.preheader.new
  %indvars.iv104 = phi i64 [ 0, %.lr.ph83.preheader.new ], [ %indvars.iv.next105.1, %bb.f ] ; 4 uses
  %.182 = phi i32 [ %i.t, %.lr.ph83.preheader.new ], [ %.2.1, %bb.f ] ; 4 uses
  %niter158 = phi i64 [ 0, %.lr.ph83.preheader.new ], [ %niter158.next.1, %bb.f ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv104 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !36
end_hunk_0
