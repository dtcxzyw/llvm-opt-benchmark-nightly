Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/c_dblat3c?download=true
inline.NumInlined: 30
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 37
begin_hunk_0_@main:bb.a

bb.ar:                                            ; preds = %bb.am
  br i1 %.b49, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.nr = call i32 @dchk2_(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @main.snames, i64 13), ptr noundef nonnull @main.eps, ptr noundef nonnull @main.thresh, ptr nonnull poison, ptr nonnull poison, ptr noundef nonnull @main.trace, ptr nonnull poison, ptr noundef nonnull @main.fatal, ptr noundef nonnull @main.nidim, ptr noundef nonnull @main.idim, ptr noundef nonnull @main.nalf, ptr noundef nonnull @main.alf, ptr noundef nonnull @main.nbet, ptr noundef nonnull @main.bet, ptr noundef nonnull @c__65, ptr noundef nonnull @main.ab, ptr noundef nonnull @main.aa, ptr noundef nonnull @main.as, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @main.ab, i64 33800), ptr noundef nonnull @main.bb, ptr noundef nonnull @main.bs, ptr noundef nonnull @main.c__, ptr noundef nonnull @main.cc, ptr noundef nonnull @main.cs, ptr noundef nonnull @main.ct, ptr noundef nonnull @main.g, ptr noundef nonnull @c__0, i32 poison) ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.b53 = load i1, ptr @main.rorder, align 4
  br i1 %.b53, label %bb.au, label %bb.bh

bb.au:                                            ; preds = %bb.at
  %i.ns = load i32, ptr @main.isnum, align 4, !tbaa !10
  %i.nt = sext i32 %i.ns to i64
  %i.nu = getelementptr [13 x i8], ptr @main.snames, i64 %i.nt
  %i.nv = getelementptr i8, ptr %i.nu, i64 -13
  %i.nw = call i32 @dchk2_(ptr noundef %i.nv, ptr noundef nonnull @main.eps, ptr noundef nonnull @main.thresh, ptr nonnull poison, ptr nonnull poison, ptr noundef nonnull @main.trace, ptr nonnull poison, ptr noundef nonnull @main.fatal, ptr noundef nonnull @main.nidim, ptr noundef nonnull @main.idim, ptr noundef nonnull @main.nalf, ptr noundef nonnull @main.alf, ptr noundef nonnull @main.nbet, ptr noundef nonnull @main.bet, ptr noundef nonnull @c__65, ptr noundef nonnull @main.ab, ptr noundef nonnull @main.aa, ptr noundef nonnull @main.as, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @main.ab, i64 33800), ptr noundef nonnull @main.bb, ptr noundef nonnull @main.bs, ptr noundef nonnull @main.c__, ptr noundef nonnull @main.cc, ptr noundef nonnull @main.cs, ptr noundef nonnull @main.ct, ptr noundef nonnull @main.g, ptr noundef nonnull @c__1, i32 poison) ; 0 uses
  br label %bb.bh

bb.av:                                            ; preds = %bb.am, %bb.am
  br i1 %.b49, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.nx = zext nneg i32 %i.nh to i64
  %i.ny = getelementptr [13 x i8], ptr @main.snames, i64 %i.nx
  %i.nz = getelementptr i8, ptr %i.ny, i64 -13
  %i.oa = call i32 @dchk3_(ptr noundef %i.nz, ptr noundef nonnull @main.eps, ptr noundef nonnull @main.thresh, ptr nonnull poison, ptr nonnull poison, ptr noundef nonnull @main.trace, ptr nonnull poison, ptr noundef nonnull @main.fatal, ptr noundef nonnull @main.nidim, ptr noundef nonnull @main.idim, ptr noundef nonnull @main.nalf, ptr noundef nonnull @main.alf, ptr noundef nonnull @c__65, ptr noundef nonnull @main.ab, ptr noundef nonnull @main.aa, ptr noundef nonnull @main.as, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @main.ab, i64 33800), ptr noundef nonnull @main.bb, ptr noundef nonnull @main.bs, ptr noundef nonnull @main.ct, ptr noundef nonnull @main.g, ptr noundef nonnull @main.c__, ptr noundef nonnull @c__0, i32 poison) ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.b52 = load i1, ptr @main.rorder, align 4
  br i1 %.b52, label %bb.ay, label %bb.bh

bb.ay:                                            ; preds = %bb.ax
  %i.ob = load i32, ptr @main.isnum, align 4, !tbaa !10
  %i.oc = sext i32 %i.ob to i64
  %i.od = getelementptr [13 x i8], ptr @main.snames, i64 %i.oc
  %i.oe = getelementptr i8, ptr %i.od, i64 -13
  %i.of = call i32 @dchk3_(ptr noundef %i.oe, ptr noundef nonnull @main.eps, ptr noundef nonnull @main.thresh, ptr nonnull poison, ptr nonnull poison, ptr noundef nonnull @main.trace, ptr nonnull poison, ptr noundef nonnull @main.fatal, ptr noundef nonnull @main.nidim, ptr noundef nonnull @main.idim, ptr noundef nonnull @main.nalf, ptr noundef nonnull @main.alf, ptr noundef nonnull @c__65, ptr noundef nonnull @main.ab, ptr noundef nonnull @main.aa, ptr noundef nonnull @main.as, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @main.ab, i64 33800), ptr noundef nonnull @main.bb, ptr noundef nonnull @main.bs, ptr noundef nonnull @main.ct, ptr noundef nonnull @main.g, ptr noundef nonnull @main.c__, ptr noundef nonnull @c__1, i32 poison) ; 0 uses
  br label %bb.bh

bb.az:                                            ; preds = %bb.am
  br i1 %.b49, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.og = call i32 @dchk4_(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @main.snames, i64 52), ptr noundef nonnull @main.eps, ptr noundef nonnull @main.thresh, ptr nonnull poison, ptr nonnull poison, ptr noundef nonnull @main.trace, ptr nonnull poison, ptr noundef nonnull @main.fatal, ptr noundef nonnull @main.nidim, ptr noundef nonnull @main.idim, ptr noundef nonnull @main.nalf, ptr noundef nonnull @main.alf, ptr noundef nonnull @main.nbet, ptr noundef nonnull @main.bet, ptr noundef nonnull @c__65, ptr noundef nonnull @main.ab, ptr noundef nonnull @main.aa, ptr noundef nonnull @main.as, ptr nonnull poison, ptr nonnull poison, ptr nonnull poison, ptr noundef nonnull @main.c__, ptr noundef nonnull @main.cc, ptr noundef nonnull @main.cs, ptr noundef nonnull @main.ct, ptr noundef nonnull @main.g, ptr noundef nonnull @c__0, i32 poison) ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.b51 = load i1, ptr @main.rorder, align 4
  br i1 %.b51, label %bb.bc, label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  %i.oh = load i32, ptr @main.isnum, align 4, !tbaa !10
  %i.oi = sext i32 %i.oh to i64
  %i.oj = getelementptr [13 x i8], ptr @main.snames, i64 %i.oi
  %i.ok = getelementptr i8, ptr %i.oj, i64 -13
  %i.ol = call i32 @dchk4_(ptr noundef %i.ok, ptr noundef nonnull @main.eps, ptr noundef nonnull @main.thresh, ptr nonnull poison, ptr nonnull poison, ptr noundef nonnull @main.trace, ptr nonnull poison, ptr noundef nonnull @main.fatal, ptr noundef nonnull @main.nidim, ptr noundef nonnull @main.idim, ptr noundef nonnull @main.nalf, ptr noundef nonnull @main.alf, ptr noundef nonnull @main.nbet, ptr noundef nonnull @main.bet, ptr noundef nonnull @c__65, ptr noundef nonnull @main.ab, ptr noundef nonnull @main.aa, ptr noundef nonnull @main.as, ptr nonnull poison, ptr nonnull poison, ptr nonnull poison, ptr noundef nonnull @main.c__, ptr noundef nonnull @main.cc, ptr noundef nonnull @main.cs, ptr noundef nonnull @main.ct, ptr noundef nonnull @main.g, ptr noundef nonnull @c__1, i32 poison) ; 0 uses
  br label %bb.bh

bb.bd:                                            ; preds = %bb.am
  br i1 %.b49, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.om = call i32 @dchk5_(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @main.snames, i64 65), ptr noundef nonnull @main.eps, ptr noundef nonnull @main.thresh, ptr nonnull poison, ptr nonnull poison, ptr noundef nonnull @main.trace, ptr nonnull poison, ptr noundef nonnull @main.fatal, ptr noundef nonnull @main.nidim, ptr noundef nonnull @main.idim, ptr noundef nonnull @main.nalf, ptr noundef nonnull @main.alf, ptr noundef nonnull @main.nbet, ptr noundef nonnull @main.bet, ptr noundef nonnull @c__65, ptr noundef nonnull @main.ab, ptr noundef nonnull @main.aa, ptr noundef nonnull @main.as, ptr noundef nonnull @main.bb, ptr noundef nonnull @main.bs, ptr noundef nonnull @main.c__, ptr noundef nonnull @main.cc, ptr noundef nonnull @main.cs, ptr noundef nonnull @main.ct, ptr noundef nonnull @main.g, ptr noundef nonnull @main.w, ptr noundef nonnull @c__0, i32 poison) ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.b50 = load i1, ptr @main.rorder, align 4
  br i1 %.b50, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.on = load i32, ptr @main.isnum, align 4, !tbaa !10
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr [13 x i8], ptr @main.snames, i64 %i.oo
  %i.oq = getelementptr i8, ptr %i.op, i64 -13
  %i.or = call i32 @dchk5_(ptr noundef %i.oq, ptr noundef nonnull @main.eps, ptr noundef nonnull @main.thresh, ptr nonnull poison, ptr nonnull poison, ptr noundef nonnull @main.trace, ptr nonnull poison, ptr noundef nonnull @main.fatal, ptr noundef nonnull @main.nidim, ptr noundef nonnull @main.idim, ptr noundef nonnull @main.nalf, ptr noundef nonnull @main.alf, ptr noundef nonnull @main.nbet, ptr noundef nonnull @main.bet, ptr noundef nonnull @c__65, ptr noundef nonnull @main.ab, ptr noundef nonnull @main.aa, ptr noundef nonnull @main.as, ptr noundef nonnull @main.bb, ptr noundef nonnull @main.bs, ptr noundef nonnull @main.c__, ptr noundef nonnull @main.cc, ptr noundef nonnull @main.cs, ptr noundef nonnull @main.ct, ptr noundef nonnull @main.g, ptr noundef nonnull @main.w, ptr noundef nonnull @c__1, i32 poison) ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg, %bb.bb, %bb.bc, %bb.ax, %bb.ay, %bb.at, %bb.au, %bb.ap, %bb.aq
  %i.os = load i32, ptr @main.fatal, align 4, !tbaa !10
  %i.ot = icmp ne i32 %i.os, 0
  %i.ou = load i32, ptr @main.sfatal, align 4
  %i.ov = icmp ne i32 %i.ou, 0
  %or.cond16 = select i1 %i.ot, i1 %i.ov, i1 false
  br i1 %or.cond16, label %.loopexit, label %bb.bi

bb.bi:                                            ; preds = %bb.y, %bb.bh
  %i.ow = load i32, ptr @main.isnum, align 4, !tbaa !10 ; 2 uses
  %i.ox = add nsw i32 %i.ow, 1                    ; 2 uses
  store i32 %i.ox, ptr @main.isnum, align 4, !tbaa !10
  %i.oy = icmp slt i32 %i.ow, 6
  br i1 %i.oy, label %bb.x, label %.loopexit, !llvm.loop !30

bb.bj:                                            ; preds = %bb.e, %._crit_edge, %bb.a, %bb.c
  %.sink = phi i64 [ 48, %._crit_edge ], [ 54, %bb.a ], [ 45, %bb.c ], [ 47, %bb.e ]
  %.str.9.sink = phi ptr [ @.str.7, %._crit_edge ], [ @.str.4, %bb.a ], [ @.str.6, %bb.c ], [ @.str.9, %bb.e ]
  %i.oz = load ptr, ptr @stderr, align 8, !tbaa !34
  %fwrite = call i64 @fwrite(ptr nonnull %.str.9.sink, i64 %.sink, i64 1, ptr %i.oz) #22 ; 0 uses
  %puts100 = call i32 @puts(ptr nonnull dereferenceable(1) @str.16) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bh, %bb.bi, %bb.bj
  %str.17.sink = phi ptr [ @str.17, %bb.bj ], [ @str.5, %bb.bi ], [ @str.6, %bb.bh ]
  %puts101 = call i32 @puts(ptr nonnull dereferenceable(1) %str.17.sink) ; 0 uses
  call void @exit(i32 noundef 0) #23
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define double @ddiff_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !14
  %i.b = load double, ptr %1, align 8, !tbaa !14
  %i.c = fsub double %i.a, %i.b
  ret double %i.c
}

; Function Attrs: nofree nounwind uwtable
define noundef i32 @dmmch_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr nofree noundef readonly captures(none) %11, ptr nofree noundef readonly captures(none) %12, ptr nofree noundef captures(none) %13, ptr nofree noundef captures(none) %14, ptr nofree noundef readonly captures(none) %15, ptr nofree noundef readonly captures(none) %16, ptr nofree noundef readonly captures(none) %17, ptr nofree noundef writeonly captures(none) %18, ptr nofree noundef writeonly captures(none) %19, ptr nofree readnone captures(none) %20, ptr nofree noundef readonly captures(none) %21, i32 %22, i32 %23) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %7, align 4, !tbaa !10     ; 6 uses
  %narrow = xor i32 %i.a, -1
  %i.b = sext i32 %narrow to i64                  ; 3 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %6, i64 %i.b ; 4 uses
  %i.d = load i32, ptr %9, align 4, !tbaa !10     ; 4 uses
  %narrow178 = xor i32 %i.d, -1
  %i.e = sext i32 %narrow178 to i64               ; 5 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %8, i64 %i.e ; 4 uses
  %i.g = load i32, ptr %12, align 4, !tbaa !10    ; 2 uses
  %narrow179 = xor i32 %i.g, -1
  %i.h = sext i32 %narrow179 to i64               ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %11, i64 %i.h
  %i.j = getelementptr inbounds i8, ptr %13, i64 -8 ; 12 uses
  %i.k = getelementptr inbounds i8, ptr %14, i64 -8 ; 10 uses
  %i.l = load i32, ptr %16, align 4, !tbaa !10    ; 4 uses
  %narrow180 = xor i32 %i.l, -1
  %i.m = sext i32 %narrow180 to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %15, i64 %i.m ; 3 uses
  %i.o = load i8, ptr %0, align 1, !tbaa !11      ; 2 uses
  %i.p = icmp eq i8 %i.o, 84
  %i.q = icmp eq i8 %i.o, 67
  %narrow207 = or i1 %i.p, %i.q
  %narrow207.fr = freeze i1 %narrow207            ; 3 uses
  %i.r = load i8, ptr %1, align 1, !tbaa !11      ; 4 uses
  %i.s = load i32, ptr %3, align 4, !tbaa !10     ; 2 uses
  %.not272 = icmp slt i32 %i.s, 1
  br i1 %.not272, label %.loopexit215, label %.lr.ph275

.lr.ph275:                                        ; preds = %bb.a
  %i.t = icmp eq i8 %i.r, 84
  %i.u = icmp eq i8 %i.r, 67
  %narrow208 = or i1 %i.t, %i.u                   ; 2 uses
  %i.v = xor i1 %narrow207.fr, true
  %or.cond5 = select i1 %i.v, i1 %narrow208, i1 false
  %or.cond7 = select i1 %narrow207.fr, i1 %narrow208, i1 false
  %i.w = sext i32 %i.a to i64                     ; 12 uses
  %i.x = sext i32 %i.d to i64                     ; 12 uses
  %i.y = sext i32 %i.g to i64                     ; 3 uses
  %i.z = sext i32 %i.l to i64
  %i.aa = add nuw i32 %i.s, 1                     ; 2 uses
  %wide.trip.count350 = zext i32 %i.aa to i64
  %scevgep = getelementptr i8, ptr %13, i64 -8
  %scevgep392 = getelementptr i8, ptr %14, i64 -8
  %scevgep394 = getelementptr i8, ptr %5, i64 8   ; 2 uses
  %scevgep395 = getelementptr i8, ptr %10, i64 8  ; 2 uses
  %i.ab = or i64 %i.y, %i.h
  %i.ac = shl nsw i64 %i.ab, 3
  %i.ad = shl nsw i64 %i.y, 3
  %scevgep431 = getelementptr i8, ptr %13, i64 -8
  %scevgep433 = getelementptr i8, ptr %14, i64 -8
  %scevgep435 = getelementptr i8, ptr %6, i64 -24
  %i.ae = or i64 %i.x, %i.e
  %i.af = shl nsw i64 %i.ae, 3
  %i.ag = shl nsw i64 %i.x, 3
  %scevgep477 = getelementptr i8, ptr %13, i64 -8
  %scevgep479 = getelementptr i8, ptr %14, i64 -8
  %i.ah = shl nsw i64 %i.w, 3
  %i.ai = shl nsw i64 %i.b, 3                     ; 2 uses
  %i.aj = getelementptr i8, ptr %6, i64 %i.ah
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.ai
  %24 = insertelement <2 x ptr> poison, ptr %14, i64 1 ; 2 uses
  %25 = insertelement <2 x ptr> %24, ptr %i.ak, i64 0
  %26 = getelementptr i8, <2 x ptr> %25, <2 x i64> <i64 8, i64 0>
  %scevgep482 = getelementptr i8, ptr %6, i64 %i.ai
  %i.al = or i64 %i.x, %i.e
  %i.am = shl nsw i64 %i.al, 3                    ; 2 uses
  %i.an = shl nsw i64 %i.x, 3
  %scevgep530 = getelementptr i8, ptr %13, i64 -8
  %scevgep532 = getelementptr i8, ptr %14, i64 -8
  %scevgep534 = getelementptr i8, ptr %6, i64 -24
  %i.ao = or i64 %i.x, %i.e
  %i.ap = shl nsw i64 %i.ao, 3                    ; 2 uses
  %i.aq = shl nsw i64 %i.x, 3
  %scevgep579 = getelementptr i8, ptr %13, i64 -8
  %scevgep581 = getelementptr i8, ptr %14, i64 -8
  %i.ar = shl nsw i64 %i.w, 3
  %i.as = shl nsw i64 %i.b, 3                     ; 2 uses
  %i.at = getelementptr i8, ptr %6, i64 %i.ar
  %i.au = getelementptr i8, ptr %i.at, i64 %i.as
  %27 = insertelement <2 x ptr> %24, ptr %i.au, i64 0
  %28 = getelementptr i8, <2 x ptr> %27, <2 x i64> <i64 8, i64 0>
  %scevgep584 = getelementptr i8, ptr %6, i64 %i.as
  %i.av = or i64 %i.x, %i.e
  %i.aw = shl nsw i64 %i.av, 3
  %i.ax = shl nsw i64 %i.x, 3
  %i.ay = getelementptr i8, ptr %8, i64 %i.aw
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %i.ba = getelementptr i8, ptr %8, i64 %i.ap
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %i.bc = getelementptr i8, ptr %8, i64 %i.ap
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  %i.be = getelementptr i8, ptr %8, i64 %i.am
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %i.bg = getelementptr i8, ptr %8, i64 %i.am
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  %i.bi = getelementptr i8, ptr %8, i64 %i.af
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  %i.bk = getelementptr i8, ptr %11, i64 %i.ac
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  %i.bm = insertelement <4 x ptr> poison, ptr %13, i64 0
  %i.bn = insertelement <4 x ptr> %i.bm, ptr %14, i64 1
  %i.bo = shufflevector <4 x ptr> %i.bn, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %29 = shufflevector <2 x ptr> %28, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %stride.check594 = icmp slt i32 %i.a, 0
  %i.bp = insertelement <4 x ptr> poison, ptr %13, i64 0
  %i.bq = insertelement <4 x ptr> %i.bp, ptr %14, i64 1
  %i.br = shufflevector <4 x ptr> %i.bq, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bs = insertelement <4 x ptr> poison, ptr %14, i64 0
  %i.bt = insertelement <4 x ptr> %i.bs, ptr %6, i64 1
  %ident.check528.not = icmp eq i32 %i.a, 1
  %stride.check549 = icmp slt i32 %i.d, 0
  %i.bu = insertelement <4 x ptr> poison, ptr %13, i64 0
  %i.bv = insertelement <4 x ptr> %i.bu, ptr %14, i64 1
  %i.bw = shufflevector <4 x ptr> %i.bv, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %30 = shufflevector <2 x ptr> %26, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bx = or i32 %i.a, %i.d
  %op.rdx629 = icmp slt i32 %i.bx, 0
  %i.by = insertelement <4 x ptr> poison, ptr %13, i64 0
  %i.bz = insertelement <4 x ptr> %i.by, ptr %14, i64 1
  %i.ca = shufflevector <4 x ptr> %i.bz, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cb = insertelement <4 x ptr> poison, ptr %14, i64 0
  %i.cc = insertelement <4 x ptr> %i.cb, ptr %6, i64 1
  %ident.check.not = icmp eq i32 %i.a, 1
  %bound0398 = icmp ult ptr %13, %scevgep394
  %bound0401 = icmp ult ptr %13, %scevgep395
  %bound0409 = icmp ult ptr %14, %scevgep394
  %bound0413 = icmp ult ptr %14, %scevgep395
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph275, %._crit_edge268
  %indvar = phi i64 [ 0, %.lr.ph275 ], [ %indvar.next, %._crit_edge268 ] ; 6 uses
  %indvars.iv347 = phi i64 [ 1, %.lr.ph275 ], [ %indvars.iv.next348, %._crit_edge268 ] ; 8 uses
  %i.cd = mul i64 %i.ax, %indvar
  %scevgep586 = getelementptr i8, ptr %i.az, i64 %i.cd ; 2 uses
  %i.ce = shl nuw nsw i64 %indvar, 3              ; 2 uses
  %scevgep536 = getelementptr i8, ptr %i.bb, i64 %i.ce ; 2 uses
  %scevgep537 = getelementptr i8, ptr %i.bd, i64 %i.ce
  %i.cf = shl nuw nsw i64 %indvar, 3              ; 2 uses
  %scevgep484 = getelementptr i8, ptr %i.bf, i64 %i.cf ; 2 uses
  %scevgep485 = getelementptr i8, ptr %i.bh, i64 %i.cf
  %i.cg = mul i64 %i.ag, %indvar
  %scevgep437 = getelementptr i8, ptr %i.bj, i64 %i.cg ; 2 uses
  %i.ch = mul i64 %i.ad, %indvar
  %scevgep396 = getelementptr i8, ptr %i.bl, i64 %i.ch ; 2 uses
  %i.ci = load i32, ptr %2, align 4, !tbaa !10    ; 26 uses
  %.not182216 = icmp slt i32 %i.ci, 1             ; 6 uses
  br i1 %.not182216, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.cj, 3                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %13, i8 0, i64 %i.ck, i1 false), !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr align 8 %14, i8 0, i64 %i.ck, i1 false), !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.b
  br i1 %narrow207.fr, label %switch.early.test, label %switch.early.test380

switch.early.test380:                             ; preds = %._crit_edge
  switch i8 %i.r, label %bb.c [
    i8 84, label %bb.e
    i8 67, label %bb.e
  ]

bb.c:                                             ; preds = %switch.early.test380
  %i.cl = load i32, ptr %4, align 4, !tbaa !10    ; 2 uses
  %.not184223 = icmp slt i32 %i.cl, 1
  br i1 %.not184223, label %.sink.split, label %.preheader211.lr.ph

.preheader211.lr.ph:                              ; preds = %bb.c
  br i1 %.not182216, label %._crit_edge261.thread, label %.preheader211.preheader

.preheader211.preheader:                          ; preds = %.preheader211.lr.ph
  %i.cm = mul nsw i64 %indvars.iv347, %i.x
  %i.cn = add nuw i32 %i.ci, 1
  %i.co = add nuw i32 %i.cl, 1
  %wide.trip.count305 = zext i32 %i.co to i64     ; 2 uses
  %invariant.gep362 = getelementptr [8 x i8], ptr %i.f, i64 %i.cm ; 2 uses
  %wide.trip.count = zext i32 %i.cn to i64        ; 2 uses
  %i.cp = shl nuw nsw i64 %wide.trip.count, 3     ; 3 uses
  %scevgep580 = getelementptr i8, ptr %scevgep579, i64 %i.cp
  %scevgep582 = getelementptr i8, ptr %scevgep581, i64 %i.cp ; 2 uses
  %i.cq = shl nuw nsw i64 %wide.trip.count305, 3  ; 2 uses
  %i.cr = add nsw i64 %i.cq, -8
  %i.cs = mul i64 %i.cr, %i.w
  %i.ct = getelementptr i8, ptr %scevgep584, i64 %i.cs
  %scevgep585 = getelementptr i8, ptr %i.ct, i64 %i.cp
  %scevgep587 = getelementptr i8, ptr %invariant.gep362, i64 %i.cq ; 2 uses
  %i.cu = insertelement <4 x ptr> poison, ptr %scevgep585, i64 0
  %i.cv = insertelement <4 x ptr> %i.cu, ptr %scevgep582, i64 1 ; 2 uses
  %i.cw = insertelement <4 x ptr> %i.cv, ptr %scevgep587, i64 2
  %i.cx = shufflevector <4 x ptr> %i.cw, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.cy = shufflevector <4 x ptr> %i.cv, <4 x ptr> poison, <2 x i32> <i32 poison, i32 1>
  %i.cz = insertelement <2 x ptr> %i.cy, ptr %scevgep580, i64 0
  %i.da = shufflevector <2 x ptr> %i.cz, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.db = zext nneg i32 %i.ci to i64
  %i.dc = zext nneg i32 %i.ci to i64              ; 2 uses
  %min.iters.check610 = icmp ult i32 %i.ci, 8
  %i.dd = icmp ult <4 x ptr> %i.bo, %i.cx
  %31 = insertelement <4 x ptr> %29, ptr %scevgep586, i64 2
  %32 = shufflevector <4 x ptr> %31, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.de = icmp ult <4 x ptr> %32, %i.da
  %i.df = and <4 x i1> %i.dd, %i.de
  %bound0605 = icmp ult ptr %14, %scevgep587
  %bound1606 = icmp ult ptr %scevgep586, %scevgep582
  %found.conflict607 = and i1 %bound0605, %bound1606
  %i.dg = bitcast <4 x i1> %i.df to i4
  %i.dh = icmp ne i4 %i.dg, 0
  %op.rdx633 = or i1 %i.dh, %found.conflict607
  %op.rdx634 = or i1 %op.rdx633, %stride.check594
  %n.vec612 = and i64 %i.dc, 2147483644           ; 3 uses
  %i.di = or disjoint i64 %n.vec612, 1
  %cmp.n625 = icmp eq i64 %n.vec612, %i.dc
  %i.dj = and i32 %i.ci, 1
  %lcmp.mod.not = icmp eq i32 %i.dj, 0
  br label %.preheader211

.preheader211:                                    ; preds = %.preheader211.preheader, %._crit_edge221
  %indvars.iv302 = phi i64 [ 1, %.preheader211.preheader ], [ %indvars.iv.next303, %._crit_edge221 ] ; 3 uses
  %i.dk = mul nsw i64 %indvars.iv302, %i.w
  %gep363 = getelementptr [8 x i8], ptr %invariant.gep362, i64 %indvars.iv302 ; 7 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.c, i64 %i.dk ; 4 uses
  %brmerge = select i1 %min.iters.check610, i1 true, i1 %op.rdx634
  br i1 %brmerge, label %scalar.ph609.preheader, label %vector.ph611

vector.ph611:                                     ; preds = %.preheader211
  %i.dl = load double, ptr %gep363, align 8, !tbaa !14, !alias.scope !79 ; 3 uses
  %broadcast.splatinsert619 = insertelement <4 x double> poison, double %i.dl, i64 0
  %broadcast.splat620 = shufflevector <4 x double> %broadcast.splatinsert619, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert613 = insertelement <4 x double> poison, double %i.dl, i64 0
  %broadcast.splat614 = shufflevector <4 x double> %broadcast.splatinsert613, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dm = fneg <4 x double> %broadcast.splat614
  %i.dn = fcmp oge double %i.dl, 0.000000e+00
  %i.do = select i1 %i.dn, <4 x double> %broadcast.splat614, <4 x double> %i.dm
  br label %vector.body615

vector.body615:                                   ; preds = %vector.body615, %vector.ph611
  %index616 = phi i64 [ 0, %vector.ph611 ], [ %index.next623, %vector.body615 ] ; 4 uses
  %i.dp = getelementptr [8 x i8], ptr %invariant.gep, i64 %index616
  %i.dq = getelementptr i8, ptr %i.dp, i64 8
  %wide.load617 = load <4 x double>, ptr %i.dq, align 8, !tbaa !14, !alias.scope !80 ; 4 uses
  %i.dr = getelementptr [8 x i8], ptr %13, i64 %index616 ; 2 uses
  %wide.load618 = load <4 x double>, ptr %i.dr, align 8, !tbaa !14, !alias.scope !81, !noalias !82
  %i.ds = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load617, <4 x double> %broadcast.splat620, <4 x double> %wide.load618)
  store <4 x double> %i.ds, ptr %i.dr, align 8, !tbaa !14, !alias.scope !81, !noalias !82
  %i.dt = fcmp oge <4 x double> %wide.load617, zeroinitializer
  %i.du = fneg <4 x double> %wide.load617
  %i.dv = select <4 x i1> %i.dt, <4 x double> %wide.load617, <4 x double> %i.du
  %i.dw = getelementptr [8 x i8], ptr %14, i64 %index616 ; 2 uses
  %wide.load622 = load <4 x double>, ptr %i.dw, align 8, !tbaa !14, !alias.scope !83, !noalias !84
  %i.dx = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dv, <4 x double> %i.do, <4 x double> %wide.load622)
  store <4 x double> %i.dx, ptr %i.dw, align 8, !tbaa !14, !alias.scope !83, !noalias !84
  %index.next623 = add nuw i64 %index616, 4       ; 2 uses
  %i.dy = icmp eq i64 %index.next623, %n.vec612
  br i1 %i.dy, label %middle.block624, label %vector.body615, !llvm.loop !41

middle.block624:                                  ; preds = %vector.body615
  br i1 %cmp.n625, label %._crit_edge221, label %scalar.ph609.preheader

scalar.ph609.preheader:                           ; preds = %.preheader211, %middle.block624
  %indvars.iv.ph = phi i64 [ %i.di, %middle.block624 ], [ 1, %.preheader211 ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph609.prol.loopexit, label %scalar.ph609.prol

scalar.ph609.prol:                                ; preds = %scalar.ph609.preheader
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.ph ; 2 uses
  %i.dz = load double, ptr %gep.prol, align 8, !tbaa !14
  %i.ea = load double, ptr %gep363, align 8, !tbaa !14
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.ph ; 2 uses
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !14
  %i.ed = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.ea, double %i.ec)
  store double %i.ed, ptr %i.eb, align 8, !tbaa !14
  %i.ee = load double, ptr %gep.prol, align 8, !tbaa !14 ; 3 uses
  %i.ef = fcmp oge double %i.ee, 0.000000e+00
  %i.eg = fneg double %i.ee
  %i.eh = select i1 %i.ef, double %i.ee, double %i.eg
  %i.ei = load double, ptr %gep363, align 8, !tbaa !14 ; 3 uses
  %i.ej = fcmp oge double %i.ei, 0.000000e+00
  %i.ek = fneg double %i.ei
  %i.el = select i1 %i.ej, double %i.ei, double %i.ek
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.ph ; 2 uses
  %i.en = load double, ptr %i.em, align 8, !tbaa !14
  %i.eo = tail call double @llvm.fmuladd.f64(double %i.eh, double %i.el, double %i.en)
  store double %i.eo, ptr %i.em, align 8, !tbaa !14
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %scalar.ph609.prol.loopexit

scalar.ph609.prol.loopexit:                       ; preds = %scalar.ph609.prol, %scalar.ph609.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph609.preheader ], [ %indvars.iv.next.prol, %scalar.ph609.prol ]
  %i.ep = icmp eq i64 %indvars.iv.ph, %i.db
  br i1 %i.ep, label %._crit_edge221, label %scalar.ph609

scalar.ph609:                                     ; preds = %scalar.ph609.prol.loopexit, %scalar.ph609
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph609 ], [ %indvars.iv.unr, %scalar.ph609.prol.loopexit ] ; 7 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.eq = load double, ptr %gep, align 8, !tbaa !14
  %i.er = load double, ptr %gep363, align 8, !tbaa !14
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.et = load double, ptr %i.es, align 8, !tbaa !14
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.eq, double %i.er, double %i.et)
  store double %i.eu, ptr %i.es, align 8, !tbaa !14
  %i.ev = load double, ptr %gep, align 8, !tbaa !14 ; 3 uses
  %i.ew = fcmp oge double %i.ev, 0.000000e+00
  %i.ex = fneg double %i.ev
  %i.ey = select i1 %i.ew, double %i.ev, double %i.ex
  %i.ez = load double, ptr %gep363, align 8, !tbaa !14 ; 3 uses
  %i.fa = fcmp oge double %i.ez, 0.000000e+00
  %i.fb = fneg double %i.ez
  %i.fc = select i1 %i.fa, double %i.ez, double %i.fb
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !14
  %i.ff = tail call double @llvm.fmuladd.f64(double %i.ey, double %i.fc, double %i.fe)
  store double %i.ff, ptr %i.fd, align 8, !tbaa !14
  %i.fg = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr i8, ptr %i.fg, i64 8     ; 2 uses
  %i.fh = load double, ptr %gep.1, align 8, !tbaa !14
  %i.fi = load double, ptr %gep363, align 8, !tbaa !14
  %i.fj = getelementptr [8 x i8], ptr %13, i64 %indvars.iv ; 2 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !14
  %i.fl = tail call double @llvm.fmuladd.f64(double %i.fh, double %i.fi, double %i.fk)
  store double %i.fl, ptr %i.fj, align 8, !tbaa !14
  %i.fm = load double, ptr %gep.1, align 8, !tbaa !14 ; 3 uses
  %i.fn = fcmp oge double %i.fm, 0.000000e+00
  %i.fo = fneg double %i.fm
  %i.fp = select i1 %i.fn, double %i.fm, double %i.fo
  %i.fq = load double, ptr %gep363, align 8, !tbaa !14 ; 3 uses
  %i.fr = fcmp oge double %i.fq, 0.000000e+00
  %i.fs = fneg double %i.fq
  %i.ft = select i1 %i.fr, double %i.fq, double %i.fs
  %i.fu = getelementptr [8 x i8], ptr %14, i64 %indvars.iv ; 2 uses
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !14
  %i.fw = tail call double @llvm.fmuladd.f64(double %i.fp, double %i.ft, double %i.fv)
  store double %i.fw, ptr %i.fu, align 8, !tbaa !14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge221, label %scalar.ph609, !llvm.loop !42

._crit_edge221:                                   ; preds = %scalar.ph609.prol.loopexit, %scalar.ph609, %middle.block624
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next303, %wide.trip.count305
  br i1 %exitcond306.not, label %.sink.split, label %.preheader211, !llvm.loop !43

switch.early.test:                                ; preds = %._crit_edge
  switch i8 %i.r, label %bb.d [
    i8 84, label %bb.e
    i8 67, label %bb.e
  ]

bb.d:                                             ; preds = %switch.early.test
  %i.fx = load i32, ptr %4, align 4, !tbaa !10    ; 2 uses
  %.not188232 = icmp slt i32 %i.fx, 1
  br i1 %.not188232, label %.sink.split, label %.preheader210.lr.ph

.preheader210.lr.ph:                              ; preds = %bb.d
  br i1 %.not182216, label %._crit_edge261.thread, label %.preheader210.preheader

.preheader210.preheader:                          ; preds = %.preheader210.lr.ph
  %i.fy = mul nsw i64 %indvars.iv347, %i.x
  %i.fz = add nuw i32 %i.ci, 1
  %i.ga = add nuw i32 %i.fx, 1
  %wide.trip.count335 = zext i32 %i.ga to i64     ; 2 uses
  %invariant.gep374 = getelementptr [8 x i8], ptr %i.f, i64 %i.fy ; 2 uses
  %wide.trip.count330 = zext i32 %i.fz to i64     ; 2 uses
  %i.gb = shl nuw nsw i64 %wide.trip.count330, 3  ; 3 uses
  %scevgep432 = getelementptr i8, ptr %scevgep431, i64 %i.gb
  %scevgep434 = getelementptr i8, ptr %scevgep433, i64 %i.gb ; 2 uses
  %i.gc = shl nuw nsw i64 %wide.trip.count335, 3  ; 2 uses
  %i.gd = getelementptr i8, ptr %scevgep435, i64 %i.gc
  %scevgep436 = getelementptr i8, ptr %i.gd, i64 %i.gb
  %scevgep438 = getelementptr i8, ptr %invariant.gep374, i64 %i.gc ; 2 uses
  %i.ge = insertelement <4 x ptr> poison, ptr %scevgep434, i64 0 ; 2 uses
  %i.gf = insertelement <4 x ptr> %i.ge, ptr %scevgep436, i64 1
  %i.gg = insertelement <4 x ptr> %i.gf, ptr %scevgep438, i64 2
  %i.gh = shufflevector <4 x ptr> %i.gg, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.gi = insertelement <4 x ptr> %i.cc, ptr %scevgep437, i64 2
  %i.gj = shufflevector <4 x ptr> %i.gi, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.gk = shufflevector <4 x ptr> %i.ge, <4 x ptr> poison, <2 x i32> <i32 poison, i32 0>
  %i.gl = insertelement <2 x ptr> %i.gk, ptr %scevgep432, i64 0
  %i.gm = shufflevector <2 x ptr> %i.gl, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gn = zext nneg i32 %i.ci to i64
  %i.go = zext nneg i32 %i.ci to i64              ; 2 uses
  %min.iters.check459 = icmp ugt i32 %i.ci, 7
  %or.cond = select i1 %min.iters.check459, i1 %ident.check.not, i1 false
  %i.gp = icmp ult <4 x ptr> %i.ca, %i.gh
  %i.gq = icmp ult <4 x ptr> %i.gj, %i.gm
  %i.gr = and <4 x i1> %i.gp, %i.gq
  %bound0454 = icmp ult ptr %14, %scevgep438
  %bound1455 = icmp ult ptr %scevgep437, %scevgep434
  %found.conflict456 = and i1 %bound0454, %bound1455
  %i.gs = bitcast <4 x i1> %i.gr to i4
  %i.gt = icmp ne i4 %i.gs, 0
  %op.rdx = or i1 %i.gt, %found.conflict456
  %n.vec461 = and i64 %i.go, 2147483644           ; 3 uses
  %i.gu = or disjoint i64 %n.vec461, 1
  %cmp.n474 = icmp eq i64 %n.vec461, %i.go
  %i.gv = and i32 %i.ci, 1
  %lcmp.mod645.not = icmp eq i32 %i.gv, 0
  br label %.preheader210

.preheader210:                                    ; preds = %.preheader210.preheader, %._crit_edge230
  %indvars.iv332 = phi i64 [ 1, %.preheader210.preheader ], [ %indvars.iv.next333, %._crit_edge230 ] ; 3 uses
  %gep375 = getelementptr [8 x i8], ptr %invariant.gep374, i64 %indvars.iv332 ; 7 uses
  %invariant.gep372 = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv332 ; 4 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge648 = select i1 %or.cond.not, i1 true, i1 %op.rdx
  br i1 %brmerge648, label %scalar.ph458.preheader, label %vector.ph460

vector.ph460:                                     ; preds = %.preheader210
  %i.gw = load double, ptr %gep375, align 8, !tbaa !14, !alias.scope !85 ; 3 uses
  %broadcast.splatinsert468 = insertelement <4 x double> poison, double %i.gw, i64 0
  %broadcast.splat469 = shufflevector <4 x double> %broadcast.splatinsert468, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert462 = insertelement <4 x double> poison, double %i.gw, i64 0
  %broadcast.splat463 = shufflevector <4 x double> %broadcast.splatinsert462, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gx = fneg <4 x double> %broadcast.splat463
  %i.gy = fcmp oge double %i.gw, 0.000000e+00
  %i.gz = select i1 %i.gy, <4 x double> %broadcast.splat463, <4 x double> %i.gx
  br label %vector.body464

vector.body464:                                   ; preds = %vector.body464, %vector.ph460
  %index465 = phi i64 [ 0, %vector.ph460 ], [ %index.next472, %vector.body464 ] ; 4 uses
  %i.ha = getelementptr [8 x i8], ptr %invariant.gep372, i64 %index465
  %i.hb = getelementptr i8, ptr %i.ha, i64 8
  %wide.load466 = load <4 x double>, ptr %i.hb, align 8, !tbaa !14, !alias.scope !86 ; 4 uses
  %i.hc = getelementptr [8 x i8], ptr %13, i64 %index465 ; 2 uses
  %wide.load467 = load <4 x double>, ptr %i.hc, align 8, !tbaa !14, !alias.scope !87, !noalias !88
  %i.hd = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load466, <4 x double> %broadcast.splat469, <4 x double> %wide.load467)
  store <4 x double> %i.hd, ptr %i.hc, align 8, !tbaa !14, !alias.scope !87, !noalias !88
  %i.he = fcmp oge <4 x double> %wide.load466, zeroinitializer
  %i.hf = fneg <4 x double> %wide.load466
  %i.hg = select <4 x i1> %i.he, <4 x double> %wide.load466, <4 x double> %i.hf
  %i.hh = getelementptr [8 x i8], ptr %14, i64 %index465 ; 2 uses
  %wide.load471 = load <4 x double>, ptr %i.hh, align 8, !tbaa !14, !alias.scope !89, !noalias !90
  %i.hi = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hg, <4 x double> %i.gz, <4 x double> %wide.load471)
  store <4 x double> %i.hi, ptr %i.hh, align 8, !tbaa !14, !alias.scope !89, !noalias !90
  %index.next472 = add nuw i64 %index465, 4       ; 2 uses
  %i.hj = icmp eq i64 %index.next472, %n.vec461
  br i1 %i.hj, label %middle.block473, label %vector.body464, !llvm.loop !49

middle.block473:                                  ; preds = %vector.body464
  br i1 %cmp.n474, label %._crit_edge230, label %scalar.ph458.preheader

scalar.ph458.preheader:                           ; preds = %.preheader210, %middle.block473
  %indvars.iv327.ph = phi i64 [ %i.gu, %middle.block473 ], [ 1, %.preheader210 ] ; 6 uses
  br i1 %lcmp.mod645.not, label %scalar.ph458.prol.loopexit, label %scalar.ph458.prol

scalar.ph458.prol:                                ; preds = %scalar.ph458.preheader
  %i.hk = mul nsw i64 %indvars.iv327.ph, %i.w
  %gep373.prol = getelementptr [8 x i8], ptr %invariant.gep372, i64 %i.hk ; 2 uses
  %i.hl = load double, ptr %gep373.prol, align 8, !tbaa !14
  %i.hm = load double, ptr %gep375, align 8, !tbaa !14
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv327.ph ; 2 uses
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !14
  %i.hp = tail call double @llvm.fmuladd.f64(double %i.hl, double %i.hm, double %i.ho)
  store double %i.hp, ptr %i.hn, align 8, !tbaa !14
  %i.hq = load double, ptr %gep373.prol, align 8, !tbaa !14 ; 3 uses
  %i.hr = fcmp oge double %i.hq, 0.000000e+00
  %i.hs = fneg double %i.hq
  %i.ht = select i1 %i.hr, double %i.hq, double %i.hs
  %i.hu = load double, ptr %gep375, align 8, !tbaa !14 ; 3 uses
  %i.hv = fcmp oge double %i.hu, 0.000000e+00
  %i.hw = fneg double %i.hu
  %i.hx = select i1 %i.hv, double %i.hu, double %i.hw
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv327.ph ; 2 uses
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !14
  %i.ia = tail call double @llvm.fmuladd.f64(double %i.ht, double %i.hx, double %i.hz)
  store double %i.ia, ptr %i.hy, align 8, !tbaa !14
  %indvars.iv.next328.prol = add nuw nsw i64 %indvars.iv327.ph, 1
  br label %scalar.ph458.prol.loopexit

scalar.ph458.prol.loopexit:                       ; preds = %scalar.ph458.prol, %scalar.ph458.preheader
  %indvars.iv327.unr = phi i64 [ %indvars.iv327.ph, %scalar.ph458.preheader ], [ %indvars.iv.next328.prol, %scalar.ph458.prol ]
  %i.ib = icmp eq i64 %indvars.iv327.ph, %i.gn
  br i1 %i.ib, label %._crit_edge230, label %scalar.ph458

scalar.ph458:                                     ; preds = %scalar.ph458.prol.loopexit, %scalar.ph458
  %indvars.iv327 = phi i64 [ %indvars.iv.next328.1, %scalar.ph458 ], [ %indvars.iv327.unr, %scalar.ph458.prol.loopexit ] ; 7 uses
  %i.ic = mul nsw i64 %indvars.iv327, %i.w
  %gep373 = getelementptr [8 x i8], ptr %invariant.gep372, i64 %i.ic ; 2 uses
  %i.id = load double, ptr %gep373, align 8, !tbaa !14
  %i.ie = load double, ptr %gep375, align 8, !tbaa !14
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv327 ; 2 uses
  %i.ig = load double, ptr %i.if, align 8, !tbaa !14
  %i.ih = tail call double @llvm.fmuladd.f64(double %i.id, double %i.ie, double %i.ig)
  store double %i.ih, ptr %i.if, align 8, !tbaa !14
  %i.ii = load double, ptr %gep373, align 8, !tbaa !14 ; 3 uses
  %i.ij = fcmp oge double %i.ii, 0.000000e+00
  %i.ik = fneg double %i.ii
  %i.il = select i1 %i.ij, double %i.ii, double %i.ik
  %i.im = load double, ptr %gep375, align 8, !tbaa !14 ; 3 uses
  %i.in = fcmp oge double %i.im, 0.000000e+00
  %i.io = fneg double %i.im
  %i.ip = select i1 %i.in, double %i.im, double %i.io
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv327 ; 2 uses
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !14
  %i.is = tail call double @llvm.fmuladd.f64(double %i.il, double %i.ip, double %i.ir)
  store double %i.is, ptr %i.iq, align 8, !tbaa !14
  %indvars.iv.next328 = add nuw nsw i64 %indvars.iv327, 1
  %i.it = mul nsw i64 %indvars.iv.next328, %i.w
  %gep373.1 = getelementptr [8 x i8], ptr %invariant.gep372, i64 %i.it ; 2 uses
  %i.iu = load double, ptr %gep373.1, align 8, !tbaa !14
  %i.iv = load double, ptr %gep375, align 8, !tbaa !14
  %i.iw = getelementptr [8 x i8], ptr %13, i64 %indvars.iv327 ; 2 uses
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !14
  %i.iy = tail call double @llvm.fmuladd.f64(double %i.iu, double %i.iv, double %i.ix)
  store double %i.iy, ptr %i.iw, align 8, !tbaa !14
  %i.iz = load double, ptr %gep373.1, align 8, !tbaa !14 ; 3 uses
  %i.ja = fcmp oge double %i.iz, 0.000000e+00
  %i.jb = fneg double %i.iz
  %i.jc = select i1 %i.ja, double %i.iz, double %i.jb
  %i.jd = load double, ptr %gep375, align 8, !tbaa !14 ; 3 uses
  %i.je = fcmp oge double %i.jd, 0.000000e+00
  %i.jf = fneg double %i.jd
  %i.jg = select i1 %i.je, double %i.jd, double %i.jf
  %i.jh = getelementptr [8 x i8], ptr %14, i64 %indvars.iv327 ; 2 uses
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !14
  %i.jj = tail call double @llvm.fmuladd.f64(double %i.jc, double %i.jg, double %i.ji)
  store double %i.jj, ptr %i.jh, align 8, !tbaa !14
  %indvars.iv.next328.1 = add nuw nsw i64 %indvars.iv327, 2 ; 2 uses
  %exitcond331.not.1 = icmp eq i64 %indvars.iv.next328.1, %wide.trip.count330
  br i1 %exitcond331.not.1, label %._crit_edge230, label %scalar.ph458, !llvm.loop !50

._crit_edge230:                                   ; preds = %scalar.ph458.prol.loopexit, %scalar.ph458, %middle.block473
  %indvars.iv.next333 = add nuw nsw i64 %indvars.iv332, 1 ; 2 uses
  %exitcond336.not = icmp eq i64 %indvars.iv.next333, %wide.trip.count335
  br i1 %exitcond336.not, label %.sink.split, label %.preheader210, !llvm.loop !51

bb.e:                                             ; preds = %switch.early.test380, %switch.early.test380, %switch.early.test, %switch.early.test
  br i1 %or.cond5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.jk = load i32, ptr %4, align 4, !tbaa !10    ; 2 uses
  %.not196252 = icmp slt i32 %i.jk, 1
  br i1 %.not196252, label %.sink.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.f
  br i1 %.not182216, label %._crit_edge261.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.jl = add nuw i32 %i.ci, 1
  %i.jm = add nuw i32 %i.jk, 1
  %wide.trip.count325 = zext i32 %i.jm to i64     ; 3 uses
  %invariant.gep370 = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv347
  %wide.trip.count320 = zext i32 %i.jl to i64     ; 2 uses
  %i.jn = shl nuw nsw i64 %wide.trip.count320, 3  ; 3 uses
  %scevgep478 = getelementptr i8, ptr %scevgep477, i64 %i.jn
  %scevgep480 = getelementptr i8, ptr %scevgep479, i64 %i.jn ; 2 uses
  %i.jo = shl nuw nsw i64 %wide.trip.count325, 3
  %i.jp = add nsw i64 %i.jo, -8
  %i.jq = mul i64 %i.jp, %i.w
  %i.jr = getelementptr i8, ptr %scevgep482, i64 %i.jq
  %scevgep483 = getelementptr i8, ptr %i.jr, i64 %i.jn
  %i.js = add nsw i64 %wide.trip.count325, -2
  %i.jt = mul i64 %i.an, %i.js
  %scevgep486 = getelementptr i8, ptr %scevgep485, i64 %i.jt ; 2 uses
  %i.ju = insertelement <4 x ptr> poison, ptr %scevgep483, i64 0
  %i.jv = insertelement <4 x ptr> %i.ju, ptr %scevgep480, i64 1 ; 2 uses
  %i.jw = insertelement <4 x ptr> %i.jv, ptr %scevgep486, i64 2
  %i.jx = shufflevector <4 x ptr> %i.jw, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.jy = shufflevector <4 x ptr> %i.jv, <4 x ptr> poison, <2 x i32> <i32 poison, i32 1>
  %i.jz = insertelement <2 x ptr> %i.jy, ptr %scevgep478, i64 0
  %i.ka = shufflevector <2 x ptr> %i.jz, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kb = zext nneg i32 %i.ci to i64
  %i.kc = zext nneg i32 %i.ci to i64              ; 2 uses
  %min.iters.check510 = icmp ult i32 %i.ci, 8
  %i.kd = icmp ult <4 x ptr> %i.bw, %i.jx
  %33 = insertelement <4 x ptr> %30, ptr %scevgep484, i64 2
  %34 = shufflevector <4 x ptr> %33, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ke = icmp ult <4 x ptr> %34, %i.ka
  %i.kf = and <4 x i1> %i.kd, %i.ke
  %bound0504 = icmp ult ptr %14, %scevgep486
  %bound1505 = icmp ult ptr %scevgep484, %scevgep480
  %found.conflict506 = and i1 %bound0504, %bound1505
  %i.kg = bitcast <4 x i1> %i.kf to i4
  %i.kh = icmp ne i4 %i.kg, 0
  %op.rdx628 = or i1 %i.kh, %found.conflict506
  %op.rdx630 = or i1 %op.rdx628, %op.rdx629
  %n.vec512 = and i64 %i.kc, 2147483644           ; 3 uses
  %i.ki = or disjoint i64 %n.vec512, 1
  %cmp.n525 = icmp eq i64 %n.vec512, %i.kc
  %i.kj = and i32 %i.ci, 1
  %lcmp.mod643.not = icmp eq i32 %i.kj, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge250
  %indvars.iv322 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next323, %._crit_edge250 ] ; 3 uses
  %i.kk = mul nsw i64 %indvars.iv322, %i.w
  %i.kl = mul nsw i64 %indvars.iv322, %i.x
  %gep371 = getelementptr [8 x i8], ptr %invariant.gep370, i64 %i.kl ; 7 uses
  %invariant.gep368 = getelementptr [8 x i8], ptr %i.c, i64 %i.kk ; 4 uses
  %brmerge649 = select i1 %min.iters.check510, i1 true, i1 %op.rdx630
  br i1 %brmerge649, label %scalar.ph509.preheader, label %vector.ph511

vector.ph511:                                     ; preds = %.preheader
  %i.km = load double, ptr %gep371, align 8, !tbaa !14, !alias.scope !91 ; 3 uses
  %broadcast.splatinsert519 = insertelement <4 x double> poison, double %i.km, i64 0
  %broadcast.splat520 = shufflevector <4 x double> %broadcast.splatinsert519, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert513 = insertelement <4 x double> poison, double %i.km, i64 0
  %broadcast.splat514 = shufflevector <4 x double> %broadcast.splatinsert513, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kn = fneg <4 x double> %broadcast.splat514
  %i.ko = fcmp oge double %i.km, 0.000000e+00
  %i.kp = select i1 %i.ko, <4 x double> %broadcast.splat514, <4 x double> %i.kn
  br label %vector.body515

vector.body515:                                   ; preds = %vector.body515, %vector.ph511
  %index516 = phi i64 [ 0, %vector.ph511 ], [ %index.next523, %vector.body515 ] ; 4 uses
  %i.kq = getelementptr [8 x i8], ptr %invariant.gep368, i64 %index516
  %i.kr = getelementptr i8, ptr %i.kq, i64 8
  %wide.load517 = load <4 x double>, ptr %i.kr, align 8, !tbaa !14, !alias.scope !92 ; 4 uses
  %i.ks = getelementptr [8 x i8], ptr %13, i64 %index516 ; 2 uses
  %wide.load518 = load <4 x double>, ptr %i.ks, align 8, !tbaa !14, !alias.scope !93, !noalias !94
  %i.kt = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load517, <4 x double> %broadcast.splat520, <4 x double> %wide.load518)
  store <4 x double> %i.kt, ptr %i.ks, align 8, !tbaa !14, !alias.scope !93, !noalias !94
  %i.ku = fcmp oge <4 x double> %wide.load517, zeroinitializer
  %i.kv = fneg <4 x double> %wide.load517
  %i.kw = select <4 x i1> %i.ku, <4 x double> %wide.load517, <4 x double> %i.kv
  %i.kx = getelementptr [8 x i8], ptr %14, i64 %index516 ; 2 uses
  %wide.load522 = load <4 x double>, ptr %i.kx, align 8, !tbaa !14, !alias.scope !95, !noalias !96
  %i.ky = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kw, <4 x double> %i.kp, <4 x double> %wide.load522)
  store <4 x double> %i.ky, ptr %i.kx, align 8, !tbaa !14, !alias.scope !95, !noalias !96
  %index.next523 = add nuw i64 %index516, 4       ; 2 uses
  %i.kz = icmp eq i64 %index.next523, %n.vec512
  br i1 %i.kz, label %middle.block524, label %vector.body515, !llvm.loop !57

middle.block524:                                  ; preds = %vector.body515
  br i1 %cmp.n525, label %._crit_edge250, label %scalar.ph509.preheader

scalar.ph509.preheader:                           ; preds = %.preheader, %middle.block524
  %indvars.iv317.ph = phi i64 [ %i.ki, %middle.block524 ], [ 1, %.preheader ] ; 6 uses
  br i1 %lcmp.mod643.not, label %scalar.ph509.prol.loopexit, label %scalar.ph509.prol

scalar.ph509.prol:                                ; preds = %scalar.ph509.preheader
  %gep369.prol = getelementptr [8 x i8], ptr %invariant.gep368, i64 %indvars.iv317.ph ; 2 uses
  %i.la = load double, ptr %gep369.prol, align 8, !tbaa !14
  %i.lb = load double, ptr %gep371, align 8, !tbaa !14
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv317.ph ; 2 uses
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !14
  %i.le = tail call double @llvm.fmuladd.f64(double %i.la, double %i.lb, double %i.ld)
  store double %i.le, ptr %i.lc, align 8, !tbaa !14
  %i.lf = load double, ptr %gep369.prol, align 8, !tbaa !14 ; 3 uses
  %i.lg = fcmp oge double %i.lf, 0.000000e+00
  %i.lh = fneg double %i.lf
  %i.li = select i1 %i.lg, double %i.lf, double %i.lh
  %i.lj = load double, ptr %gep371, align 8, !tbaa !14 ; 3 uses
  %i.lk = fcmp oge double %i.lj, 0.000000e+00
  %i.ll = fneg double %i.lj
  %i.lm = select i1 %i.lk, double %i.lj, double %i.ll
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv317.ph ; 2 uses
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !14
  %i.lp = tail call double @llvm.fmuladd.f64(double %i.li, double %i.lm, double %i.lo)
  store double %i.lp, ptr %i.ln, align 8, !tbaa !14
  %indvars.iv.next318.prol = add nuw nsw i64 %indvars.iv317.ph, 1
  br label %scalar.ph509.prol.loopexit

scalar.ph509.prol.loopexit:                       ; preds = %scalar.ph509.prol, %scalar.ph509.preheader
  %indvars.iv317.unr = phi i64 [ %indvars.iv317.ph, %scalar.ph509.preheader ], [ %indvars.iv.next318.prol, %scalar.ph509.prol ]
  %i.lq = icmp eq i64 %indvars.iv317.ph, %i.kb
  br i1 %i.lq, label %._crit_edge250, label %scalar.ph509

scalar.ph509:                                     ; preds = %scalar.ph509.prol.loopexit, %scalar.ph509
  %indvars.iv317 = phi i64 [ %indvars.iv.next318.1, %scalar.ph509 ], [ %indvars.iv317.unr, %scalar.ph509.prol.loopexit ] ; 7 uses
  %gep369 = getelementptr [8 x i8], ptr %invariant.gep368, i64 %indvars.iv317 ; 2 uses
  %i.lr = load double, ptr %gep369, align 8, !tbaa !14
  %i.ls = load double, ptr %gep371, align 8, !tbaa !14
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv317 ; 2 uses
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !14
  %i.lv = tail call double @llvm.fmuladd.f64(double %i.lr, double %i.ls, double %i.lu)
  store double %i.lv, ptr %i.lt, align 8, !tbaa !14
  %i.lw = load double, ptr %gep369, align 8, !tbaa !14 ; 3 uses
  %i.lx = fcmp oge double %i.lw, 0.000000e+00
  %i.ly = fneg double %i.lw
  %i.lz = select i1 %i.lx, double %i.lw, double %i.ly
  %i.ma = load double, ptr %gep371, align 8, !tbaa !14 ; 3 uses
  %i.mb = fcmp oge double %i.ma, 0.000000e+00
  %i.mc = fneg double %i.ma
  %i.md = select i1 %i.mb, double %i.ma, double %i.mc
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv317 ; 2 uses
  %i.mf = load double, ptr %i.me, align 8, !tbaa !14
  %i.mg = tail call double @llvm.fmuladd.f64(double %i.lz, double %i.md, double %i.mf)
  store double %i.mg, ptr %i.me, align 8, !tbaa !14
  %i.mh = getelementptr [8 x i8], ptr %invariant.gep368, i64 %indvars.iv317
  %gep369.1 = getelementptr i8, ptr %i.mh, i64 8  ; 2 uses
  %i.mi = load double, ptr %gep369.1, align 8, !tbaa !14
  %i.mj = load double, ptr %gep371, align 8, !tbaa !14
  %i.mk = getelementptr [8 x i8], ptr %13, i64 %indvars.iv317 ; 2 uses
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !14
  %i.mm = tail call double @llvm.fmuladd.f64(double %i.mi, double %i.mj, double %i.ml)
  store double %i.mm, ptr %i.mk, align 8, !tbaa !14
  %i.mn = load double, ptr %gep369.1, align 8, !tbaa !14 ; 3 uses
  %i.mo = fcmp oge double %i.mn, 0.000000e+00
  %i.mp = fneg double %i.mn
  %i.mq = select i1 %i.mo, double %i.mn, double %i.mp
  %i.mr = load double, ptr %gep371, align 8, !tbaa !14 ; 3 uses
  %i.ms = fcmp oge double %i.mr, 0.000000e+00
  %i.mt = fneg double %i.mr
  %i.mu = select i1 %i.ms, double %i.mr, double %i.mt
  %i.mv = getelementptr [8 x i8], ptr %14, i64 %indvars.iv317 ; 2 uses
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !14
  %i.mx = tail call double @llvm.fmuladd.f64(double %i.mq, double %i.mu, double %i.mw)
  store double %i.mx, ptr %i.mv, align 8, !tbaa !14
  %indvars.iv.next318.1 = add nuw nsw i64 %indvars.iv317, 2 ; 2 uses
  %exitcond321.not.1 = icmp eq i64 %indvars.iv.next318.1, %wide.trip.count320
  br i1 %exitcond321.not.1, label %._crit_edge250, label %scalar.ph509, !llvm.loop !58

._crit_edge250:                                   ; preds = %scalar.ph509.prol.loopexit, %scalar.ph509, %middle.block524
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 2 uses
  %exitcond326.not = icmp eq i64 %indvars.iv.next323, %wide.trip.count325
  br i1 %exitcond326.not, label %.sink.split, label %.preheader, !llvm.loop !59

bb.g:                                             ; preds = %bb.e
  br i1 %or.cond7, label %bb.h, label %.sink.split

bb.h:                                             ; preds = %bb.g
  %i.my = load i32, ptr %4, align 4, !tbaa !10    ; 2 uses
  %.not192242 = icmp slt i32 %i.my, 1
  br i1 %.not192242, label %.sink.split, label %.preheader209.lr.ph

.preheader209.lr.ph:                              ; preds = %bb.h
  br i1 %.not182216, label %._crit_edge261.thread, label %.preheader209.preheader

.preheader209.preheader:                          ; preds = %.preheader209.lr.ph
  %i.mz = add nuw i32 %i.ci, 1
  %i.na = add nuw i32 %i.my, 1
  %wide.trip.count315 = zext i32 %i.na to i64     ; 3 uses
  %invariant.gep366 = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv347
  %wide.trip.count310 = zext i32 %i.mz to i64     ; 3 uses
  %i.nb = shl nuw nsw i64 %wide.trip.count310, 3  ; 2 uses
  %scevgep531 = getelementptr i8, ptr %scevgep530, i64 %i.nb
  %scevgep533 = getelementptr i8, ptr %scevgep532, i64 %i.nb ; 2 uses
  %i.nc = add nuw nsw i64 %wide.trip.count315, %wide.trip.count310
  %i.nd = shl nuw nsw i64 %i.nc, 3
  %scevgep535 = getelementptr i8, ptr %scevgep534, i64 %i.nd
  %i.ne = add nsw i64 %wide.trip.count315, -2
  %i.nf = mul i64 %i.aq, %i.ne
  %scevgep538 = getelementptr i8, ptr %scevgep537, i64 %i.nf ; 2 uses
  %i.ng = insertelement <4 x ptr> poison, ptr %scevgep533, i64 0 ; 2 uses
  %i.nh = insertelement <4 x ptr> %i.ng, ptr %scevgep535, i64 1
  %i.ni = insertelement <4 x ptr> %i.nh, ptr %scevgep538, i64 2
  %i.nj = shufflevector <4 x ptr> %i.ni, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.nk = insertelement <4 x ptr> %i.bt, ptr %scevgep536, i64 2
  %i.nl = shufflevector <4 x ptr> %i.nk, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.nm = shufflevector <4 x ptr> %i.ng, <4 x ptr> poison, <2 x i32> <i32 poison, i32 0>
  %i.nn = insertelement <2 x ptr> %i.nm, ptr %scevgep531, i64 0
  %i.no = shufflevector <2 x ptr> %i.nn, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.np = zext nneg i32 %i.ci to i64
  %i.nq = zext nneg i32 %i.ci to i64              ; 2 uses
  %min.iters.check561 = icmp ugt i32 %i.ci, 7
  %or.cond627 = select i1 %min.iters.check561, i1 %ident.check528.not, i1 false
  %i.nr = icmp ult <4 x ptr> %i.br, %i.nj
  %i.ns = icmp ult <4 x ptr> %i.nl, %i.no
  %i.nt = and <4 x i1> %i.nr, %i.ns
  %bound0555 = icmp ult ptr %14, %scevgep538
  %bound1556 = icmp ult ptr %scevgep536, %scevgep533
  %found.conflict557 = and i1 %bound0555, %bound1556
  %i.nu = bitcast <4 x i1> %i.nt to i4
  %i.nv = icmp ne i4 %i.nu, 0
  %op.rdx631 = or i1 %i.nv, %found.conflict557
  %op.rdx632 = or i1 %op.rdx631, %stride.check549
  %n.vec563 = and i64 %i.nq, 2147483644           ; 3 uses
  %i.nw = or disjoint i64 %n.vec563, 1
  %cmp.n576 = icmp eq i64 %n.vec563, %i.nq
  %i.nx = and i32 %i.ci, 1
  %lcmp.mod641.not = icmp eq i32 %i.nx, 0
  br label %.preheader209

.preheader209:                                    ; preds = %.preheader209.preheader, %._crit_edge240
  %indvars.iv312 = phi i64 [ 1, %.preheader209.preheader ], [ %indvars.iv.next313, %._crit_edge240 ] ; 3 uses
  %i.ny = mul nsw i64 %indvars.iv312, %i.x
  %gep367 = getelementptr [8 x i8], ptr %invariant.gep366, i64 %i.ny ; 7 uses
end_hunk_0
