Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaSatLut?download=true
inline.NumInlined: 1157
inline.NumDeleted: 108
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 62
begin_hunk_0_@Sbl_ManComputeCuts:bb.a
  %i.awv = sext i32 %i.awu to i64
  %i.aww = getelementptr inbounds [12 x i8], ptr %.val188, i64 %i.awv
  %i.awx = getelementptr inbounds nuw i8, ptr %i.aww, i64 8
  store i32 -1, ptr %i.awx, align 4, !tbaa !212
  %i.awy = getelementptr inbounds nuw [4 x i8], ptr %.val181, i64 %indvars.iv354
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awy, i64 12
  %i.axa = load i32, ptr %i.awz, align 4, !tbaa !49
  %i.axb = sext i32 %i.axa to i64
  %i.axc = getelementptr inbounds [12 x i8], ptr %.val188, i64 %i.axb
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 8
  store i32 -1, ptr %i.axd, align 4, !tbaa !212
  %indvars.iv.next355.3 = add nuw nsw i64 %indvars.iv354, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge10.loopexit.unr-lcssa, label %bb.lc, !llvm.loop !207

.critedge10.loopexit.unr-lcssa:                   ; preds = %bb.lc
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge10, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge10.loopexit.unr-lcssa, %.lr.ph335.split
  %indvars.iv354.epil.init = phi i64 [ 0, %.lr.ph335.split ], [ %indvars.iv.next355.3, %.critedge10.loopexit.unr-lcssa ]
  %lcmp.mod526 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod526)
  br label %bb.ld

bb.ld:                                            ; preds = %bb.ld, %.epil.preheader
  %indvars.iv354.epil = phi i64 [ %indvars.iv354.epil.init, %.epil.preheader ], [ %indvars.iv.next355.epil, %bb.ld ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ld ]
  %i.axe = getelementptr inbounds nuw [4 x i8], ptr %.val181, i64 %indvars.iv354.epil
  %i.axf = load i32, ptr %i.axe, align 4, !tbaa !49
  %i.axg = sext i32 %i.axf to i64
  %i.axh = getelementptr inbounds [12 x i8], ptr %.val188, i64 %i.axg
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axh, i64 8
  store i32 -1, ptr %i.axi, align 4, !tbaa !212
  %indvars.iv.next355.epil = add nuw nsw i64 %indvars.iv354.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge10, label %bb.ld, !llvm.loop !208

.critedge10:                                      ; preds = %.critedge10.loopexit.unr-lcssa, %bb.ld, %.lr.ph335, %.critedge6
  %i.axj = icmp sgt i32 %.val172.lcssa, 0
  br i1 %i.axj, label %.lr.ph338, label %.critedge12

.lr.ph338:                                        ; preds = %.critedge10
  %i.axk = load ptr, ptr %i.ac, align 8, !tbaa !57
  %i.axl = getelementptr i8, ptr %i.axk, i64 32
  %.val187 = load ptr, ptr %i.axl, align 8, !tbaa !124 ; 6 uses
  %.not162 = icmp eq ptr %.val187, null
  br i1 %.not162, label %.critedge12, label %.lr.ph338.split

.lr.ph338.split:                                  ; preds = %.lr.ph338
  %i.axm = getelementptr i8, ptr %.lcssa, i64 8
  %.val180 = load ptr, ptr %i.axm, align 8, !tbaa !61 ; 5 uses
  %wide.trip.count362 = zext nneg i32 %.val172.lcssa to i64 ; 2 uses
  %xtraiter528 = and i64 %wide.trip.count362, 3   ; 3 uses
  %i.axn = icmp ult i32 %.val172.lcssa, 4
  br i1 %i.axn, label %.epil.preheader527, label %.lr.ph338.split.new

.lr.ph338.split.new:                              ; preds = %.lr.ph338.split
  %unroll_iter532 = and i64 %wide.trip.count362, 2147483644
  br label %bb.le

bb.le:                                            ; preds = %bb.le, %.lr.ph338.split.new
  %indvars.iv359 = phi i64 [ 0, %.lr.ph338.split.new ], [ %indvars.iv.next360.3, %bb.le ] ; 5 uses
  %niter533 = phi i64 [ 0, %.lr.ph338.split.new ], [ %niter533.next.3, %bb.le ]
  %i.axo = getelementptr inbounds nuw [4 x i8], ptr %.val180, i64 %indvars.iv359
  %i.axp = load i32, ptr %i.axo, align 4, !tbaa !49
  %i.axq = sext i32 %i.axp to i64
  %i.axr = getelementptr inbounds [12 x i8], ptr %.val187, i64 %i.axq
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axr, i64 8
  store i32 -1, ptr %i.axs, align 4, !tbaa !212
  %i.axt = getelementptr inbounds nuw [4 x i8], ptr %.val180, i64 %indvars.iv359
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axt, i64 4
  %i.axv = load i32, ptr %i.axu, align 4, !tbaa !49
  %i.axw = sext i32 %i.axv to i64
  %i.axx = getelementptr inbounds [12 x i8], ptr %.val187, i64 %i.axw
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axx, i64 8
  store i32 -1, ptr %i.axy, align 4, !tbaa !212
  %i.axz = getelementptr inbounds nuw [4 x i8], ptr %.val180, i64 %indvars.iv359
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axz, i64 8
  %i.ayb = load i32, ptr %i.aya, align 4, !tbaa !49
  %i.ayc = sext i32 %i.ayb to i64
  %i.ayd = getelementptr inbounds [12 x i8], ptr %.val187, i64 %i.ayc
  %i.aye = getelementptr inbounds nuw i8, ptr %i.ayd, i64 8
  store i32 -1, ptr %i.aye, align 4, !tbaa !212
  %i.ayf = getelementptr inbounds nuw [4 x i8], ptr %.val180, i64 %indvars.iv359
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.ayf, i64 12
  %i.ayh = load i32, ptr %i.ayg, align 4, !tbaa !49
  %i.ayi = sext i32 %i.ayh to i64
  %i.ayj = getelementptr inbounds [12 x i8], ptr %.val187, i64 %i.ayi
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayj, i64 8
  store i32 -1, ptr %i.ayk, align 4, !tbaa !212
  %indvars.iv.next360.3 = add nuw nsw i64 %indvars.iv359, 4 ; 2 uses
  %niter533.next.3 = add i64 %niter533, 4         ; 2 uses
  %niter533.ncmp.3 = icmp eq i64 %niter533.next.3, %unroll_iter532
  br i1 %niter533.ncmp.3, label %.critedge12.loopexit.unr-lcssa, label %bb.le, !llvm.loop !209

.critedge12.loopexit.unr-lcssa:                   ; preds = %bb.le
  %lcmp.mod530.not = icmp eq i64 %xtraiter528, 0
  br i1 %lcmp.mod530.not, label %.critedge12, label %.epil.preheader527

.epil.preheader527:                               ; preds = %.critedge12.loopexit.unr-lcssa, %.lr.ph338.split
  %indvars.iv359.epil.init = phi i64 [ 0, %.lr.ph338.split ], [ %indvars.iv.next360.3, %.critedge12.loopexit.unr-lcssa ]
  %lcmp.mod531 = icmp ne i64 %xtraiter528, 0
  call void @llvm.assume(i1 %lcmp.mod531)
  br label %bb.lf

bb.lf:                                            ; preds = %bb.lf, %.epil.preheader527
  %indvars.iv359.epil = phi i64 [ %indvars.iv359.epil.init, %.epil.preheader527 ], [ %indvars.iv.next360.epil, %bb.lf ] ; 2 uses
  %epil.iter529 = phi i64 [ 0, %.epil.preheader527 ], [ %epil.iter529.next, %bb.lf ]
  %i.ayl = getelementptr inbounds nuw [4 x i8], ptr %.val180, i64 %indvars.iv359.epil
  %i.aym = load i32, ptr %i.ayl, align 4, !tbaa !49
  %i.ayn = sext i32 %i.aym to i64
  %i.ayo = getelementptr inbounds [12 x i8], ptr %.val187, i64 %i.ayn
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.ayo, i64 8
  store i32 -1, ptr %i.ayp, align 4, !tbaa !212
  %indvars.iv.next360.epil = add nuw nsw i64 %indvars.iv359.epil, 1
  %epil.iter529.next = add i64 %epil.iter529, 1   ; 2 uses
  %epil.iter529.cmp.not = icmp eq i64 %epil.iter529.next, %xtraiter528
  br i1 %epil.iter529.cmp.not, label %.critedge12, label %bb.lf, !llvm.loop !210

.critedge12:                                      ; preds = %.critedge12.loopexit.unr-lcssa, %bb.lf, %.lr.ph338, %.critedge10
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.ayq = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #30
  %i.ayr = icmp slt i32 %i.ayq, 0
  br i1 %i.ayr, label %Abc_Clock.exit299, label %bb.lg

bb.lg:                                            ; preds = %.critedge12
  %i.ays = load i64, ptr %1, align 8, !tbaa !104
  %i.ayt = mul nsw i64 %i.ays, 1000000
  %i.ayu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ayv = load i64, ptr %i.ayu, align 8, !tbaa !105
  %i.ayw = sdiv i64 %i.ayv, 1000
  %i.ayx = add nsw i64 %i.ayw, %i.ayt
  br label %Abc_Clock.exit299

Abc_Clock.exit299:                                ; preds = %.critedge12, %bb.lg
  %.0.i298 = phi i64 [ %i.ayx, %bb.lg ], [ -1, %.critedge12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.ayy = add i64 %.0.i298, %.0.i.neg
  %i.ayz = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.aza = load i64, ptr %i.ayz, align 8, !tbaa !132
  %i.azb = add nsw i64 %i.ayy, %i.aza
  store i64 %i.azb, ptr %i.ayz, align 8, !tbaa !132
  %i.azc = load ptr, ptr %i.q, align 8, !tbaa !86
  %i.azd = getelementptr i8, ptr %i.azc, i64 4
  %.val199 = load i32, ptr %i.azd, align 4, !tbaa !83
  ret i32 %.val199
}

; Function Attrs: nounwind uwtable
define noundef i32 @Sbl_ManCreateCnf(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !88
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val69 = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !89
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val68 = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.h = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.i = tail call i32 @sat_solver_nvars(ptr noundef %i.h) #30
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !86
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %.val67 = load i32, ptr %i.l, align 4, !tbaa !83
  %i.m = add nsw i32 %.val67, %i.i
  tail call void @sat_solver_setnvars(ptr noundef %i.h, i32 noundef %i.m) #30
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !63
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %.val6495 = load i32, ptr %i.p, align 4, !tbaa !59
  %i.q = icmp sgt i32 %.val6495, 0
  br i1 %i.q, label %.lr.ph98, label %._crit_edge99

.lr.ph98:                                         ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph98, %._crit_edge94
  %.06096 = phi i32 [ 0, %.lr.ph98 ], [ %i.ec, %._crit_edge94 ] ; 3 uses
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !91
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !62
  %i.aa = getelementptr i8, ptr %i.z, i64 4
  %.val63 = load i32, ptr %i.aa, align 4, !tbaa !59
  %i.ab = add nsw i32 %.val63, %.06096
  %i.ac = getelementptr i8, ptr %i.y, i64 8
  %.val66 = load ptr, ptr %i.ac, align 8, !tbaa !61
  %i.ad = sext i32 %i.ab to i64                   ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %.val66, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !49 ; 6 uses
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !90
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val65 = load ptr, ptr %i.ah, align 8, !tbaa !61
  %i.ai = getelementptr inbounds [4 x i8], ptr %.val65, i64 %i.ad
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !49 ; 3 uses
  %i.ak = add i32 %i.af, -1
  %i.al = add i32 %i.ak, %i.aj
  %i.am = load ptr, ptr %i.u, align 8, !tbaa !100 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 3 uses
  store i32 0, ptr %i.an, align 4, !tbaa !59
  %i.ao = shl nuw nsw i32 %.06096, 1              ; 2 uses
  %i.ap = or disjoint i32 %i.ao, 1
  %i.aq = load i32, ptr %i.am, align 8, !tbaa !60
  %i.ar = icmp eq i32 %i.aq, 0
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !61 ; 3 uses
  br i1 %i.ar, label %bb.c, label %Vec_IntPush.exit

bb.c:                                             ; preds = %bb.b
  %.not9.i.i = icmp eq ptr %i.at, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.au = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.at, i64 noundef 64) #32
  %.pre103.pre = load i32, ptr %i.an, align 4, !tbaa !59
  br label %Vec_IntGrow.exit11.sink.split.i

bb.e:                                             ; preds = %bb.c
  %i.av = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.d, %bb.e
  %.pre103 = phi i32 [ %.pre103.pre, %bb.d ], [ 0, %bb.e ]
  %i.aw = phi ptr [ %i.au, %bb.d ], [ %i.av, %bb.e ] ; 2 uses
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !61
  store i32 16, ptr %i.am, align 8, !tbaa !60
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.b, %Vec_IntGrow.exit11.sink.split.i
  %i.ax = phi i32 [ %.pre103, %Vec_IntGrow.exit11.sink.split.i ], [ 0, %bb.b ] ; 2 uses
  %i.ay = phi ptr [ %i.aw, %Vec_IntGrow.exit11.sink.split.i ], [ %i.at, %bb.b ]
  %i.az = add nsw i32 %i.ax, 1
  store i32 %i.az, ptr %i.an, align 4, !tbaa !59
  %i.ba = sext i32 %i.ax to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.ba
  store i32 %i.ap, ptr %i.bb, align 4, !tbaa !49
  %i.bc = icmp slt i32 %i.af, %i.al
  br i1 %i.bc, label %.lr.ph.preheader, label %._crit_edge94.critedge

.lr.ph.preheader:                                 ; preds = %Vec_IntPush.exit
  %1 = add i32 %i.aj, -1
  %2 = add i32 %1, %i.af
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %Vec_IntPush.exit81
  %.05882 = phi i32 [ %i.cg, %Vec_IntPush.exit81 ], [ %i.af, %.lr.ph.preheader ] ; 2 uses
  %i.bd = load ptr, ptr %i.u, align 8, !tbaa !100 ; 6 uses
  %i.be = load i32, ptr %i.v, align 4, !tbaa !30
  %i.bf = add nsw i32 %i.be, %.05882
  %i.bg = shl nsw i32 %i.bf, 1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !59 ; 7 uses
  %i.bj = load i32, ptr %i.bd, align 8, !tbaa !60
  %i.bk = icmp eq i32 %i.bi, %i.bj
  br i1 %i.bk, label %bb.f, label %Vec_IntPush.exit81

bb.f:                                             ; preds = %.lr.ph
  %i.bl = icmp slt i32 %i.bi, 16
  br i1 %i.bl, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !61 ; 2 uses
  %.not9.i.i79 = icmp eq ptr %i.bn, null
  br i1 %.not9.i.i79, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bo = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bn, i64 noundef 64) #32
  br label %Vec_IntGrow.exit.i80

bb.i:                                             ; preds = %bb.g
  %i.bp = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit.i80

Vec_IntGrow.exit.i80:                             ; preds = %bb.i, %bb.h
  %i.bq = phi ptr [ %i.bo, %bb.h ], [ %i.bp, %bb.i ]
  store ptr %i.bq, ptr %i.bm, align 8, !tbaa !61
  br label %Vec_IntGrow.exit11.sink.split.i77

bb.j:                                             ; preds = %bb.f
  %i.br = icmp samesign ult i32 %i.bi, 1073741823
  %i.bs = shl nuw nsw i32 %i.bi, 1
  %spec.select.i74 = select i1 %i.br, i32 %i.bs, i32 2147483647 ; 3 uses
  %.not.i9.i75 = icmp samesign ult i32 %i.bi, %spec.select.i74
  br i1 %.not.i9.i75, label %bb.k, label %Vec_IntPush.exit81

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !61 ; 2 uses
  %.not9.i10.i76 = icmp eq ptr %i.bu, null
  %i.bv = zext nneg i32 %spec.select.i74 to i64
  %i.bw = shl nuw nsw i64 %i.bv, 2                ; 2 uses
  br i1 %.not9.i10.i76, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = call ptr @realloc(ptr noundef nonnull %i.bu, i64 noundef %i.bw) #32
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.by = call noalias ptr @malloc(i64 noundef %i.bw) #31
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bz = phi ptr [ %i.bx, %bb.l ], [ %i.by, %bb.m ]
  store ptr %i.bz, ptr %i.bt, align 8, !tbaa !61
  br label %Vec_IntGrow.exit11.sink.split.i77

Vec_IntGrow.exit11.sink.split.i77:                ; preds = %bb.n, %Vec_IntGrow.exit.i80
  %spec.select.sink.i78 = phi i32 [ %spec.select.i74, %bb.n ], [ 16, %Vec_IntGrow.exit.i80 ]
  store i32 %spec.select.sink.i78, ptr %i.bd, align 8, !tbaa !60
  %.pre104 = load i32, ptr %i.bh, align 4, !tbaa !59
  br label %Vec_IntPush.exit81

Vec_IntPush.exit81:                               ; preds = %.lr.ph, %bb.j, %Vec_IntGrow.exit11.sink.split.i77
  %i.ca = phi i32 [ %i.bi, %.lr.ph ], [ %i.bi, %bb.j ], [ %.pre104, %Vec_IntGrow.exit11.sink.split.i77 ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !61
  %i.cd = add nsw i32 %i.ca, 1
  store i32 %i.cd, ptr %i.bh, align 4, !tbaa !59
  %i.ce = sext i32 %i.ca to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.ce
  store i32 %i.bg, ptr %i.cf, align 4, !tbaa !49
  %i.cg = add nsw i32 %.05882, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.cg, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !213

._crit_edge:                                      ; preds = %Vec_IntPush.exit81
  %i.ch = load ptr, ptr %0, align 8, !tbaa !29
  %i.ci = load ptr, ptr %i.u, align 8, !tbaa !100 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  %.val71 = load ptr, ptr %i.cj, align 8, !tbaa !61 ; 2 uses
  %i.ck = getelementptr i8, ptr %i.ci, i64 4
  %.val72 = load i32, ptr %i.ck, align 4, !tbaa !59
  %i.cl = sext i32 %.val72 to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %.val71, i64 %i.cl
  %i.cn = call i32 @sat_solver_addclause(ptr noundef %i.ch, ptr noundef %.val71, ptr noundef %i.cm) #30 ; 0 uses
  %i.co = sext i32 %i.af to i64
  %3 = add i32 %i.aj, -1
  %4 = add i32 %3, %i.af
  br label %.lr.ph93

.lr.ph93:                                         ; preds = %._crit_edge, %._crit_edge90
  %indvars.iv = phi i64 [ %i.co, %._crit_edge ], [ %indvars.iv.next, %._crit_edge90 ] ; 4 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %.val69, i64 %indvars.iv
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !110 ; 2 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %.val68, i64 %indvars.iv
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !110 ; 2 uses
  %i.ct = load i32, ptr %i.v, align 4, !tbaa !30
  %i.cu = trunc nsw i64 %indvars.iv to i32
  %i.cv = add nsw i32 %i.ct, %i.cu
  %i.cw = shl nsw i32 %i.cv, 1
  %i.cx = or disjoint i32 %i.cw, 1
  store i32 %i.cx, ptr %i.a, align 4, !tbaa !49
  store i32 %i.ao, ptr %i.w, align 4, !tbaa !49
  %i.cy = load ptr, ptr %0, align 8, !tbaa !29
  %i.cz = call i32 @sat_solver_addclause(ptr noundef %i.cy, ptr noundef nonnull %i.a, ptr noundef nonnull %i.x) #30 ; 0 uses
  %.not = icmp eq i64 %i.cq, 0
  br i1 %.not, label %.preheader, label %.lr.ph86

.preheader:                                       ; preds = %bb.p, %.lr.ph93
  %.not100 = icmp eq i64 %i.cs, 0
  br i1 %.not100, label %._crit_edge90, label %.lr.ph89

.lr.ph86:                                         ; preds = %.lr.ph93, %bb.p
  %.05684 = phi i64 [ %i.dg, %bb.p ], [ %i.cq, %.lr.ph93 ] ; 2 uses
  %.05783 = phi i32 [ %i.df, %bb.p ], [ 0, %.lr.ph93 ] ; 3 uses
  %i.da = and i64 %.05684, 1
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph86
  %i.dc = shl nuw nsw i32 %.05783, 1
  store i32 %i.dc, ptr %i.w, align 4, !tbaa !49
  %i.dd = load ptr, ptr %0, align 8, !tbaa !29
  %i.de = call i32 @sat_solver_addclause(ptr noundef %i.dd, ptr noundef nonnull %i.a, ptr noundef nonnull %i.x) #30 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph86, %bb.o
  %i.df = add nuw nsw i32 %.05783, 1
  %i.dg = lshr i64 %.05684, 1                     ; 2 uses
  %i.dh = icmp samesign ult i32 %.05783, 63
  %i.di = icmp ne i64 %i.dg, 0
  %i.dj = and i1 %i.dh, %i.di
  br i1 %i.dj, label %.lr.ph86, label %.preheader, !llvm.loop !214

.lr.ph89:                                         ; preds = %.preheader, %bb.r
  %.088 = phi i64 [ %i.dr, %bb.r ], [ %i.cs, %.preheader ] ; 2 uses
  %.187 = phi i32 [ %i.dq, %bb.r ], [ 0, %.preheader ] ; 3 uses
  %i.dk = and i64 %.088, 1
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph89
  %i.dm = shl nuw nsw i32 %.187, 1
  %i.dn = add nuw nsw i32 %i.dm, 128
  store i32 %i.dn, ptr %i.w, align 4, !tbaa !49
  %i.do = load ptr, ptr %0, align 8, !tbaa !29
  %i.dp = call i32 @sat_solver_addclause(ptr noundef %i.do, ptr noundef nonnull %i.a, ptr noundef nonnull %i.x) #30 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph89, %bb.q
  %i.dq = add nuw nsw i32 %.187, 1
  %i.dr = lshr i64 %.088, 1                       ; 2 uses
  %i.ds = icmp samesign ult i32 %.187, 63
  %i.dt = icmp ne i64 %i.dr, 0
  %i.du = and i1 %i.ds, %i.dt
  br i1 %i.du, label %.lr.ph89, label %._crit_edge90, !llvm.loop !215

._crit_edge90:                                    ; preds = %bb.r, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond102.not = icmp eq i32 %4, %lftr.wideiv
  br i1 %exitcond102.not, label %._crit_edge94, label %.lr.ph93, !llvm.loop !216

._crit_edge94.critedge:                           ; preds = %Vec_IntPush.exit
  %i.dv = load ptr, ptr %0, align 8, !tbaa !29
  %i.dw = load ptr, ptr %i.u, align 8, !tbaa !100 ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 8
  %.val71.c = load ptr, ptr %i.dx, align 8, !tbaa !61 ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dw, i64 4
  %.val72.c = load i32, ptr %i.dy, align 4, !tbaa !59
  %i.dz = sext i32 %.val72.c to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %.val71.c, i64 %i.dz
  %i.eb = call i32 @sat_solver_addclause(ptr noundef %i.dv, ptr noundef %.val71.c, ptr noundef %i.ea) #30 ; 0 uses
  br label %._crit_edge94

._crit_edge94:                                    ; preds = %._crit_edge90, %._crit_edge94.critedge
  %i.ec = add nuw nsw i32 %.06096, 1              ; 2 uses
  %i.ed = load ptr, ptr %i.n, align 8, !tbaa !63
  %i.ee = getelementptr i8, ptr %i.ed, i64 4
  %.val64 = load i32, ptr %i.ee, align 4, !tbaa !59
  %i.ef = icmp slt i32 %i.ec, %.val64
  br i1 %i.ef, label %bb.b, label %._crit_edge99, !llvm.loop !217

._crit_edge99:                                    ; preds = %._crit_edge94, %bb.a
  %i.eg = load ptr, ptr %0, align 8, !tbaa !29    ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !102 ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 8
  %.val70 = load ptr, ptr %i.ej, align 8, !tbaa !61 ; 5 uses
  %i.ek = getelementptr i8, ptr %i.ei, i64 4
  %.val = load i32, ptr %i.ek, align 4, !tbaa !59 ; 3 uses
  %i.el = load i32, ptr %i.eg, align 8, !tbaa !45
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %._crit_edge99
  %i.en = getelementptr inbounds nuw i8, ptr %i.eg, i64 216
  br label %bb.s

.preheader.i:                                     ; preds = %bb.s, %._crit_edge99
  %i.eo = icmp sgt i32 %.val, 0
  br i1 %i.eo, label %.lr.ph12.i, label %sat_solver_set_polarity.exit

.lr.ph12.i:                                       ; preds = %.preheader.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 216 ; 5 uses
  %wide.trip.count.i = zext nneg i32 %.val to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.eq = icmp ult i32 %.val, 4
  br i1 %i.eq, label %.epil.preheader, label %.lr.ph12.i.new

.lr.ph12.i.new:                                   ; preds = %.lr.ph12.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.t

bb.s:                                             ; preds = %bb.s, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.s ] ; 2 uses
  %i.er = load ptr, ptr %i.en, align 8, !tbaa !221
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %indvars.iv.i
  store i8 0, ptr %i.es, align 1, !tbaa !133
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.et = load i32, ptr %i.eg, align 8, !tbaa !45
  %i.eu = sext i32 %i.et to i64
  %i.ev = icmp slt i64 %indvars.iv.next.i, %i.eu
  br i1 %i.ev, label %bb.s, label %.preheader.i, !llvm.loop !218

bb.t:                                             ; preds = %bb.t, %.lr.ph12.i.new
  %indvars.iv14.i = phi i64 [ 0, %.lr.ph12.i.new ], [ %indvars.iv.next15.i.3, %bb.t ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph12.i.new ], [ %niter.next.3, %bb.t ]
  %i.ew = load ptr, ptr %i.ep, align 8, !tbaa !221
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.val70, i64 %indvars.iv14.i
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !49
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds i8, ptr %i.ew, i64 %i.ez
  store i8 1, ptr %i.fa, align 1, !tbaa !133
  %i.fb = load ptr, ptr %i.ep, align 8, !tbaa !221
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.val70, i64 %indvars.iv14.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !49
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds i8, ptr %i.fb, i64 %i.ff
  store i8 1, ptr %i.fg, align 1, !tbaa !133
  %i.fh = load ptr, ptr %i.ep, align 8, !tbaa !221
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.val70, i64 %indvars.iv14.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !49
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds i8, ptr %i.fh, i64 %i.fl
  store i8 1, ptr %i.fm, align 1, !tbaa !133
  %i.fn = load ptr, ptr %i.ep, align 8, !tbaa !221
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.val70, i64 %indvars.iv14.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !49
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds i8, ptr %i.fn, i64 %i.fr
  store i8 1, ptr %i.fs, align 1, !tbaa !133
  %indvars.iv.next15.i.3 = add nuw nsw i64 %indvars.iv14.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %sat_solver_set_polarity.exit.loopexit.unr-lcssa, label %bb.t, !llvm.loop !219

sat_solver_set_polarity.exit.loopexit.unr-lcssa:  ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %sat_solver_set_polarity.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %sat_solver_set_polarity.exit.loopexit.unr-lcssa, %.lr.ph12.i
  %indvars.iv14.i.epil.init = phi i64 [ 0, %.lr.ph12.i ], [ %indvars.iv.next15.i.3, %sat_solver_set_polarity.exit.loopexit.unr-lcssa ]
  %lcmp.mod117 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod117)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader
  %indvars.iv14.i.epil = phi i64 [ %indvars.iv14.i.epil.init, %.epil.preheader ], [ %indvars.iv.next15.i.epil, %bb.u ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.u ]
  %i.ft = load ptr, ptr %i.ep, align 8, !tbaa !221
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.val70, i64 %indvars.iv14.i.epil
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !49
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds i8, ptr %i.ft, i64 %i.fw
  store i8 1, ptr %i.fx, align 1, !tbaa !133
  %indvars.iv.next15.i.epil = add nuw nsw i64 %indvars.iv14.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %sat_solver_set_polarity.exit, label %bb.u, !llvm.loop !220

sat_solver_set_polarity.exit:                     ; preds = %sat_solver_set_polarity.exit.loopexit.unr-lcssa, %bb.u, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i32 1
}

declare void @sat_solver_setnvars(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @sat_solver_addclause(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Sbl_ManWindow(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !59
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !134  ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %.val3056 = load i32, ptr %i.h, align 4, !tbaa !59
  %i.i = icmp sgt i32 %.val3056, 0
  br i1 %i.i, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %Vec_IntPush.exit
  %i.j = phi ptr [ %i.ai, %Vec_IntPush.exit ], [ %i.e, %bb.a ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_IntPush.exit ], [ 0, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %i.aq, %Vec_IntPush.exit ], [ %i.g, %bb.a ]
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val38.val = load ptr, ptr %i.l, align 8, !tbaa !61
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.val38.val, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !49   ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !62   ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !59   ; 7 uses
  %i.r = load i32, ptr %i.o, align 8, !tbaa !60
  %i.s = icmp eq i32 %i.q, %i.r
  br i1 %i.s, label %bb.c, label %Vec_IntPush.exit

bb.c:                                             ; preds = %bb.b
  %i.t = icmp slt i32 %i.q, 16
  br i1 %i.t, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !61   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.v, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.v, i64 noundef 64) #32
  br label %Vec_IntGrow.exit.i

bb.f:                                             ; preds = %bb.d
  %i.x = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.f, %bb.e
  %i.y = phi ptr [ %i.w, %bb.e ], [ %i.x, %bb.f ]
  store ptr %i.y, ptr %i.u, align 8, !tbaa !61
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.z = icmp samesign ult i32 %i.q, 1073741823
  %i.aa = shl nuw nsw i32 %i.q, 1
  %spec.select.i = select i1 %i.z, i32 %i.aa, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.q, %spec.select.i
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !61 ; 2 uses
end_hunk_0
