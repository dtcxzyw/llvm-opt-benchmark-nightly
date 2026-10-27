Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/rv60dec?download=true
inline.NumInlined: 185
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 86
begin_hunk_0_@pred_angle:bb.a
  store i8 %i.bxv, ptr %i.bxw, align 1, !tbaa !42
  %i.bxx = add nsw i32 %i.bve, %i.bxt             ; 2 uses
  %i.bxy = lshr i32 %i.bxx, 5
  %i.bxz = trunc i32 %i.bxy to i8
  %i.bya = getelementptr inbounds nuw i8, ptr %i.e, i64 50
  store i8 %i.bxz, ptr %i.bya, align 2, !tbaa !42
  %i.byb = add nsw i32 %i.bve, %i.bxx             ; 2 uses
  %i.byc = lshr i32 %i.byb, 5
  %i.byd = trunc i32 %i.byc to i8
  %i.bye = getelementptr inbounds nuw i8, ptr %i.e, i64 51
  store i8 %i.byd, ptr %i.bye, align 1, !tbaa !42
  %i.byf = add nsw i32 %i.bve, %i.byb             ; 2 uses
  %i.byg = lshr i32 %i.byf, 5
  %i.byh = trunc i32 %i.byg to i8
  %i.byi = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  store i8 %i.byh, ptr %i.byi, align 4, !tbaa !42
  %i.byj = add nsw i32 %i.bve, %i.byf             ; 2 uses
  %i.byk = lshr i32 %i.byj, 5
  %i.byl = trunc i32 %i.byk to i8
  %i.bym = getelementptr inbounds nuw i8, ptr %i.e, i64 53
  store i8 %i.byl, ptr %i.bym, align 1, !tbaa !42
  %i.byn = add nsw i32 %i.bve, %i.byj             ; 2 uses
  %i.byo = lshr i32 %i.byn, 5
  %i.byp = trunc i32 %i.byo to i8
  %i.byq = getelementptr inbounds nuw i8, ptr %i.e, i64 54
  store i8 %i.byp, ptr %i.byq, align 2, !tbaa !42
  %i.byr = add nsw i32 %i.bve, %i.byn             ; 2 uses
  %i.bys = lshr i32 %i.byr, 5
  %i.byt = trunc i32 %i.bys to i8
  %i.byu = getelementptr inbounds nuw i8, ptr %i.e, i64 55
  store i8 %i.byt, ptr %i.byu, align 1, !tbaa !42
  %i.byv = add nsw i32 %i.bve, %i.byr             ; 2 uses
  %i.byw = lshr i32 %i.byv, 5
  %i.byx = trunc i32 %i.byw to i8
  %i.byy = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i8 %i.byx, ptr %i.byy, align 8, !tbaa !42
  %i.byz = add nsw i32 %i.bve, %i.byv             ; 2 uses
  %i.bza = lshr i32 %i.byz, 5
  %i.bzb = trunc i32 %i.bza to i8
  %i.bzc = getelementptr inbounds nuw i8, ptr %i.e, i64 57
  store i8 %i.bzb, ptr %i.bzc, align 1, !tbaa !42
  %i.bzd = add nsw i32 %i.bve, %i.byz             ; 2 uses
  %i.bze = lshr i32 %i.bzd, 5
  %i.bzf = trunc i32 %i.bze to i8
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  store i8 %i.bzf, ptr %i.bzg, align 2, !tbaa !42
  %i.bzh = add nsw i32 %i.bve, %i.bzd             ; 2 uses
  %i.bzi = lshr i32 %i.bzh, 5
  %i.bzj = trunc i32 %i.bzi to i8
  %i.bzk = getelementptr inbounds nuw i8, ptr %i.e, i64 59
  store i8 %i.bzj, ptr %i.bzk, align 1, !tbaa !42
  %i.bzl = add nsw i32 %i.bve, %i.bzh             ; 2 uses
  %i.bzm = lshr i32 %i.bzl, 5
  %i.bzn = trunc i32 %i.bzm to i8
  %i.bzo = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  store i8 %i.bzn, ptr %i.bzo, align 4, !tbaa !42
  %i.bzp = add nsw i32 %i.bve, %i.bzl             ; 2 uses
  %i.bzq = lshr i32 %i.bzp, 5
  %i.bzr = trunc i32 %i.bzq to i8
  %i.bzs = getelementptr inbounds nuw i8, ptr %i.e, i64 61
  store i8 %i.bzr, ptr %i.bzs, align 1, !tbaa !42
  %i.bzt = add nsw i32 %i.bve, %i.bzp             ; 2 uses
  %i.bzu = lshr i32 %i.bzt, 5
  %i.bzv = trunc i32 %i.bzu to i8
  %i.bzw = getelementptr inbounds nuw i8, ptr %i.e, i64 62
  store i8 %i.bzv, ptr %i.bzw, align 2, !tbaa !42
  %i.bzx = add nsw i32 %i.bve, %i.bzt
  %i.bzy = lshr i32 %i.bzx, 5
  %i.bzz = trunc i32 %i.bzy to i8
  %i.caa = getelementptr inbounds nuw i8, ptr %i.e, i64 63
  store i8 %i.bzz, ptr %i.caa, align 1, !tbaa !42
  %i.cab = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 3 uses
  %i.cac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cad = load i8, ptr %i.cac, align 4, !tbaa !42
  %i.cae = zext i8 %i.cad to i32                  ; 2 uses
  %i.caf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cag = load i8, ptr %i.caf, align 4, !tbaa !42
  %i.cah = zext i8 %i.cag to i32
  %i.cai = sub nsw i32 %i.cah, %i.cae             ; 6 uses
  %i.caj = icmp sgt i32 %i.buu, 0
  br i1 %i.caj, label %iter.check566, label %filter_bilin32.exit316

iter.check566:                                    ; preds = %.lr.ph.i301
  %i.cak = shl nuw nsw i32 %i.cae, 5
  %i.cal = or disjoint i32 %i.cak, 16             ; 5 uses
  %wide.trip.count.i310 = zext nneg i32 %i.buu to i64 ; 6 uses
  %min.iters.check549 = icmp ult i32 %i.buu, 4
  br i1 %min.iters.check549, label %.lr.ph.i311.preheader, label %vector.main.loop.iter.check550

vector.main.loop.iter.check550:                   ; preds = %iter.check566
  %min.iters.check551 = icmp ult i32 %i.buu, 32
  br i1 %min.iters.check551, label %vec.epilog.ph570, label %vector.ph552

vector.ph552:                                     ; preds = %vector.main.loop.iter.check550
  %i.cam = and i64 %wide.trip.count.i310, 28
  %n.vec553 = and i64 %wide.trip.count.i310, 67108832 ; 5 uses
  %broadcast.splatinsert554 = insertelement <16 x i32> poison, i32 %i.cai, i64 0
  %broadcast.splat555 = shufflevector <16 x i32> %broadcast.splatinsert554, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.can = trunc nuw nsw i64 %n.vec553 to i32
  %i.cao = mul i32 %i.cai, %i.can
  %i.cap = add i32 %i.cal, %i.cao                 ; 2 uses
  %i.caq = shl <16 x i32> %broadcast.splat555, splat (i32 4) ; 3 uses
  %broadcast.splatinsert556 = insertelement <16 x i32> poison, i32 %i.cal, i64 0
  %broadcast.splat557 = shufflevector <16 x i32> %broadcast.splatinsert556, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.car = mul nsw <16 x i32> %broadcast.splat555, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %induction558 = add nsw <16 x i32> %broadcast.splat557, %i.car
  %invariant.op = add <16 x i32> %i.caq, %i.caq
  br label %vector.body559

vector.body559:                                   ; preds = %vector.ph552, %vector.body559
  %index560 = phi i64 [ 0, %vector.ph552 ], [ %index.next562, %vector.body559 ] ; 2 uses
  %vec.ind561 = phi <16 x i32> [ %induction558, %vector.ph552 ], [ %vec.ind.next563.reass, %vector.body559 ] ; 3 uses
  %step.add = add nsw <16 x i32> %vec.ind561, %i.caq
  %i.cas = lshr <16 x i32> %vec.ind561, splat (i32 5)
  %i.cat = lshr <16 x i32> %step.add, splat (i32 5)
  %i.cau = trunc <16 x i32> %i.cas to <16 x i8>
  %i.cav = trunc <16 x i32> %i.cat to <16 x i8>
  %i.caw = getelementptr inbounds nuw i8, ptr %i.cab, i64 %index560 ; 2 uses
  %i.cax = getelementptr inbounds nuw i8, ptr %i.caw, i64 16
  store <16 x i8> %i.cau, ptr %i.caw, align 16, !tbaa !42
  store <16 x i8> %i.cav, ptr %i.cax, align 16, !tbaa !42
  %index.next562 = add nuw i64 %index560, 32      ; 2 uses
  %vec.ind.next563.reass = add <16 x i32> %vec.ind561, %invariant.op
  %i.cay = icmp eq i64 %index.next562, %n.vec553
  br i1 %i.cay, label %middle.block564, label %vector.body559, !llvm.loop !283

middle.block564:                                  ; preds = %vector.body559
  %cmp.n565 = icmp eq i64 %n.vec553, %wide.trip.count.i310
  br i1 %cmp.n565, label %filter_bilin32.exit316, label %vec.epilog.iter.check567

vec.epilog.iter.check567:                         ; preds = %middle.block564
  %min.epilog.iters.check569 = icmp eq i64 %i.cam, 0
  br i1 %min.epilog.iters.check569, label %.lr.ph.i311.preheader, label %vec.epilog.ph570, !prof !292

vec.epilog.ph570:                                 ; preds = %vector.main.loop.iter.check550, %vec.epilog.iter.check567
  %vec.epilog.resume.val571 = phi i64 [ %n.vec553, %vec.epilog.iter.check567 ], [ 0, %vector.main.loop.iter.check550 ]
  %bc.resume.val572 = phi i32 [ %i.cap, %vec.epilog.iter.check567 ], [ %i.cal, %vector.main.loop.iter.check550 ]
  %n.vec573 = and i64 %wide.trip.count.i310, 67108860 ; 4 uses
  %i.caz = trunc nuw nsw i64 %n.vec573 to i32
  %i.cba = mul i32 %i.cai, %i.caz
  %i.cbb = add i32 %i.cal, %i.cba
  %broadcast.splatinsert574 = insertelement <4 x i32> poison, i32 %bc.resume.val572, i64 0
  %broadcast.splat575 = shufflevector <4 x i32> %broadcast.splatinsert574, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert576 = insertelement <4 x i32> poison, i32 %i.cai, i64 0
  %broadcast.splat577 = shufflevector <4 x i32> %broadcast.splatinsert576, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cbc = mul nsw <4 x i32> %broadcast.splat577, <i32 0, i32 1, i32 2, i32 3>
  %induction578 = add nsw <4 x i32> %broadcast.splat575, %i.cbc
  %i.cbd = shl nsw i32 %i.cai, 2
  %broadcast.splatinsert579 = insertelement <4 x i32> poison, i32 %i.cbd, i64 0
  %broadcast.splat580 = shufflevector <4 x i32> %broadcast.splatinsert579, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body581

vec.epilog.vector.body581:                        ; preds = %vec.epilog.vector.body581, %vec.epilog.ph570
  %index582 = phi i64 [ %vec.epilog.resume.val571, %vec.epilog.ph570 ], [ %index.next584, %vec.epilog.vector.body581 ] ; 2 uses
  %vec.ind583 = phi <4 x i32> [ %induction578, %vec.epilog.ph570 ], [ %vec.ind.next585, %vec.epilog.vector.body581 ] ; 2 uses
  %i.cbe = lshr <4 x i32> %vec.ind583, splat (i32 5)
  %i.cbf = trunc <4 x i32> %i.cbe to <4 x i8>
  %i.cbg = getelementptr inbounds nuw i8, ptr %i.cab, i64 %index582
  store <4 x i8> %i.cbf, ptr %i.cbg, align 4, !tbaa !42
  %index.next584 = add nuw i64 %index582, 4       ; 2 uses
  %vec.ind.next585 = add nsw <4 x i32> %vec.ind583, %broadcast.splat580
  %i.cbh = icmp eq i64 %index.next584, %n.vec573
  br i1 %i.cbh, label %vec.epilog.middle.block586, label %vec.epilog.vector.body581, !llvm.loop !284

vec.epilog.middle.block586:                       ; preds = %vec.epilog.vector.body581
  %cmp.n587 = icmp eq i64 %n.vec573, %wide.trip.count.i310
  br i1 %cmp.n587, label %filter_bilin32.exit316, label %.lr.ph.i311.preheader

.lr.ph.i311.preheader:                            ; preds = %iter.check566, %vec.epilog.iter.check567, %vec.epilog.middle.block586
  %indvars.iv.i312.ph = phi i64 [ 0, %iter.check566 ], [ %n.vec553, %vec.epilog.iter.check567 ], [ %n.vec573, %vec.epilog.middle.block586 ]
  %.01011.i313.ph = phi i32 [ %i.cal, %iter.check566 ], [ %i.cap, %vec.epilog.iter.check567 ], [ %i.cbb, %vec.epilog.middle.block586 ]
  br label %.lr.ph.i311

.lr.ph.i311:                                      ; preds = %.lr.ph.i311.preheader, %.lr.ph.i311
  %indvars.iv.i312 = phi i64 [ %indvars.iv.next.i314, %.lr.ph.i311 ], [ %indvars.iv.i312.ph, %.lr.ph.i311.preheader ] ; 2 uses
  %.01011.i313 = phi i32 [ %i.cbl, %.lr.ph.i311 ], [ %.01011.i313.ph, %.lr.ph.i311.preheader ] ; 2 uses
  %i.cbi = lshr i32 %.01011.i313, 5
  %i.cbj = trunc i32 %i.cbi to i8
  %i.cbk = getelementptr inbounds nuw i8, ptr %i.cab, i64 %indvars.iv.i312
  store i8 %i.cbj, ptr %i.cbk, align 1, !tbaa !42
  %i.cbl = add nsw i32 %i.cai, %.01011.i313
  %indvars.iv.next.i314 = add nuw nsw i64 %indvars.iv.i312, 1 ; 2 uses
  %exitcond.not.i315 = icmp eq i64 %indvars.iv.next.i314, %wide.trip.count.i310
  br i1 %exitcond.not.i315, label %filter_bilin32.exit316, label %.lr.ph.i311, !llvm.loop !285

filter_bilin32.exit316:                           ; preds = %.lr.ph.i311, %middle.block564, %vec.epilog.middle.block586, %.lr.ph.i301, %bb.ai
  call fastcc void @pred_ver_angle(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.bur, ptr noundef %i.e)
  br label %pred_dc.exit

pred_dc.exit:                                     ; preds = %.lr.ph102.i.prol.loopexit, %.lr.ph102.i, %.lr.ph342.prol.loopexit, %.lr.ph342, %..loopexit_crit_edge.us.i, %..loopexit40_crit_edge.us.us.i258, %.lr.ph354.prol.loopexit, %.lr.ph354, %..loopexit40_crit_edge.us.us.i, %middle.block482, %vec.epilog.middle.block496, %middle.block616, %vec.epilog.middle.block632, %middle.block762, %vec.epilog.middle.block778, %bb.af, %bb.s, %.loopexit335, %.loopexit, %filter_bilin32.exit204, %bb.l, %bb.k, %bb.j, %._crit_edge97.i, %pred_plane.exit, %filter_bilin32.exit316, %._crit_edge, %._crit_edge351.split, %bb.ag
  %.0165 = phi i32 [ -1094995529, %bb.ag ], [ 0, %middle.block762 ], [ 0, %bb.af ], [ 0, %pred_plane.exit ], [ 0, %._crit_edge351.split ], [ 0, %middle.block616 ], [ 0, %._crit_edge ], [ 0, %filter_bilin32.exit316 ], [ 0, %bb.s ], [ 0, %..loopexit40_crit_edge.us.us.i ], [ 0, %._crit_edge97.i ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %filter_bilin32.exit204 ], [ 0, %.loopexit ], [ 0, %.loopexit335 ], [ 0, %middle.block482 ], [ 0, %.lr.ph354.prol.loopexit ], [ 0, %.lr.ph342.prol.loopexit ], [ 0, %vec.epilog.middle.block778 ], [ 0, %..loopexit40_crit_edge.us.us.i258 ], [ 0, %vec.epilog.middle.block632 ], [ 0, %..loopexit_crit_edge.us.i ], [ 0, %vec.epilog.middle.block496 ], [ 0, %.lr.ph354 ], [ 0, %.lr.ph342 ], [ 0, %.lr.ph102.i ], [ 0, %.lr.ph102.i.prol.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  ret i32 %.0165
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 0, -3) %4, i32 noundef range(i32 0, -3) %5, i32 noundef range(i32 0, -3) %6, i32 noundef range(i32 0, -3) %7, i32 %8, i32 noundef range(i32 0, 2) %9) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4900 x i8], align 16             ; 4 uses
  %i.b = alloca [1600 x i8], align 16             ; 24 uses
  %.not = icmp eq i32 %9, 0                       ; 5 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %2, align 4, !tbaa !41
  %i.d = mul nsw i32 %i.c, %5
  %i.e = add nsw i32 %i.d, %4
  %i.f = sext i32 %i.e to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !68   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !69   ; 2 uses
  %i.l = shl i32 %8, 16
  %i.m = ashr i32 %i.l, 18                        ; 2 uses
  %i.n = and i32 %8, 3                            ; 3 uses
  %i.o = ashr i32 %8, 16                          ; 2 uses
  %i.p = ashr i32 %8, 18
  %i.q = and i32 %i.o, 3                          ; 3 uses
  %i.r = zext nneg i32 %i.n to i64                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr @rv60_edge1, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !42
  %i.u = zext i8 %i.t to i32
  %i.v = zext nneg i32 %i.q to i64                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr @rv60_edge2, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !42
  %i.y = zext i8 %i.x to i32
  %i.z = add nsw i32 %i.m, %4                     ; 3 uses
  %i.aa = add nsw i32 %i.p, %5                    ; 4 uses
  %.not.i = icmp slt i32 %i.z, %i.u
  br i1 %.not.i, label %check_pos.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr @rv60_edge1, i64 %i.v
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !42
  %i.ad = zext i8 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr @rv60_edge2, i64 %i.r
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !42
  %i.ag = zext i8 %i.af to i32
  %i.ah = add nsw i32 %i.z, %6
  %i.ai = add nsw i32 %i.ah, %i.ag
  %.not16.i = icmp sgt i32 %i.ai, %i.i
  %.not17.i = icmp slt i32 %i.aa, %i.ad
  %or.cond.i = select i1 %.not16.i, i1 true, i1 %.not17.i
  br i1 %or.cond.i, label %check_pos.exit.thread, label %check_pos.exit

check_pos.exit:                                   ; preds = %bb.d
  %i.aj = add nsw i32 %i.aa, %7
  %i.ak = add nsw i32 %i.aj, %i.y
  %.not139 = icmp sgt i32 %i.ak, %i.k
  br i1 %.not139, label %check_pos.exit.thread, label %bb.e

bb.e:                                             ; preds = %check_pos.exit
  %i.al = load ptr, ptr %1, align 8, !tbaa !40
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.g
  %i.an = load i32, ptr %2, align 4, !tbaa !41
  %i.ao = load ptr, ptr %3, align 8, !tbaa !40
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !41 ; 2 uses
  %i.ar = mul nsw i32 %i.aq, %i.aa
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %i.ao, i64 %i.as
  %i.au = sext i32 %4 to i64
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %i.au
  %i.aw = sext i32 %i.m to i64
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 %i.aw
  tail call fastcc void @luma_mc(ptr noundef %i.am, i32 noundef %i.an, ptr noundef %i.ax, i32 noundef %i.aq, i32 noundef %6, i32 noundef %7, i32 noundef %i.n, i32 noundef %i.q)
  br label %bb.f

check_pos.exit.thread:                            ; preds = %bb.c, %bb.d, %check_pos.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ay = add nsw i32 %i.z, -2                    ; 2 uses
  %i.az = add nsw i32 %i.aa, -2                   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !297
  %i.bc = load ptr, ptr %3, align 8, !tbaa !40
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !41 ; 2 uses
  %i.bf = mul nsw i32 %i.be, %i.az
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %i.bc, i64 %i.bg
  %i.bi = sext i32 %i.ay to i64
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 %i.bi
  %i.bk = sext i32 %i.be to i64
  %i.bl = add nsw i32 %6, 5
  %i.bm = add nsw i32 %7, 5
  call void %i.bb(ptr noundef nonnull %i.a, ptr noundef %i.bj, i64 noundef 70, i64 noundef %i.bk, i32 noundef %i.bl, i32 noundef %i.bm, i32 noundef %i.ay, i32 noundef %i.az, i32 noundef %i.i, i32 noundef %i.k) #18
  %i.bn = load ptr, ptr %1, align 8, !tbaa !40
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %i.g
  %i.bp = load i32, ptr %2, align 4, !tbaa !41
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 142
  call fastcc void @luma_mc(ptr noundef %i.bo, i32 noundef %i.bp, ptr noundef nonnull %i.bq, i32 noundef 70, i32 noundef %6, i32 noundef %7, i32 noundef %i.n, i32 noundef %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.f

bb.f:                                             ; preds = %check_pos.exit.thread, %bb.e
  %i.br = load i32, ptr %i.h, align 8, !tbaa !68
  %i.bs = ashr i32 %i.br, 1                       ; 7 uses
  %i.bt = load i32, ptr %i.j, align 4, !tbaa !69
  %i.bu = ashr i32 %i.bt, 1                       ; 7 uses
  %.lhs.trunc = trunc i32 %8 to i16
  %i.bv = sdiv i16 %.lhs.trunc, 2
  %.sext = sext i16 %i.bv to i32                  ; 2 uses
  %.lhs.trunc137 = trunc nsw i32 %i.o to i16
  %i.bw = sdiv i16 %.lhs.trunc137, 2
  %.sext138 = sext i16 %i.bw to i32               ; 2 uses
  %i.bx = ashr i32 %.sext, 2                      ; 2 uses
  %i.by = and i32 %.sext, 3                       ; 10 uses
  %i.bz = ashr i32 %.sext138, 2
  %i.ca = and i32 %.sext138, 3                    ; 10 uses
  %i.cb = ashr i32 %6, 1                          ; 12 uses
  %i.cc = ashr i32 %7, 1                          ; 12 uses
  %i.cd = ashr i32 %4, 1                          ; 8 uses
  %i.ce = ashr i32 %5, 1                          ; 7 uses
  %i.cf = add nsw i32 %i.bx, %i.cd                ; 8 uses
  %i.cg = add nsw i32 %i.bz, %i.ce                ; 18 uses
  %.not.i130 = icmp slt i32 %i.cf, 0
  %i.ch = sext i32 %i.cd to i64                   ; 10 uses
  %i.ci = sext i32 %i.bx to i64                   ; 10 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ck = add nsw i32 %i.cb, 1                    ; 6 uses
  %i.cl = add nsw i32 %i.cc, 1                    ; 6 uses
  br i1 %.not.i130, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.f
  br i1 %.not, label %bb.g, label %check_pos.exit134.thread.us

bb.g:                                             ; preds = %.split.us.preheader
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !41
  %i.co = mul nsw i32 %i.cn, %i.ce
  %i.cp = add nsw i32 %i.co, %i.cd
  %i.cq = sext i32 %i.cp to i64
  br label %check_pos.exit134.thread.us

check_pos.exit134.thread.us:                      ; preds = %bb.g, %.split.us.preheader
  %i.cr = phi i64 [ %i.cq, %bb.g ], [ 0, %.split.us.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !297
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !40
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !41 ; 2 uses
  %i.cx = mul nsw i32 %i.cw, %i.cg
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cy
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 %i.ch
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 %i.ci
  %i.dc = sext i32 %i.cw to i64
  call void %i.cs(ptr noundef nonnull %i.b, ptr noundef %i.db, i64 noundef 40, i64 noundef %i.dc, i32 noundef %i.ck, i32 noundef %i.cl, i32 noundef %i.cf, i32 noundef %i.cg, i32 noundef %i.bs, i32 noundef %i.bu) #18
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !40
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 %i.cr
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !41
  call fastcc void @chroma_mc(ptr noundef %i.df, i32 noundef %i.dh, ptr noundef nonnull %i.b, i32 noundef 40, i32 noundef %i.cb, i32 noundef %i.cc, i32 noundef %i.by, i32 noundef %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br i1 %.not, label %bb.h, label %check_pos.exit134.thread.us.1

bb.h:                                             ; preds = %check_pos.exit134.thread.us
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !41
  %i.dk = mul nsw i32 %i.dj, %i.ce
  %i.dl = add nsw i32 %i.dk, %i.cd
  %i.dm = sext i32 %i.dl to i64
  br label %check_pos.exit134.thread.us.1

check_pos.exit134.thread.us.1:                    ; preds = %bb.h, %check_pos.exit134.thread.us
  %i.dn = phi i64 [ %i.dm, %bb.h ], [ 0, %check_pos.exit134.thread.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.do = load ptr, ptr %i.cj, align 8, !tbaa !297
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !40
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !41 ; 2 uses
  %i.dt = mul nsw i32 %i.ds, %i.cg
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds i8, ptr %i.dq, i64 %i.du
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 %i.ch
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 %i.ci
  %i.dy = sext i32 %i.ds to i64
  call void %i.do(ptr noundef nonnull %i.b, ptr noundef %i.dx, i64 noundef 40, i64 noundef %i.dy, i32 noundef %i.ck, i32 noundef %i.cl, i32 noundef %i.cf, i32 noundef %i.cg, i32 noundef %i.bs, i32 noundef %i.bu) #18
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !40
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 %i.dn
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !41
  call fastcc void @chroma_mc(ptr noundef %i.eb, i32 noundef %i.ed, ptr noundef nonnull %i.b, i32 noundef 40, i32 noundef %i.cb, i32 noundef %i.cc, i32 noundef %i.by, i32 noundef %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %.split143.us

.split:                                           ; preds = %bb.f
  %i.ee = add nsw i32 %i.cf, %i.cb
  %.not16.i131 = icmp slt i32 %i.ee, %i.bs
  %.not17.i132 = icmp sgt i32 %i.cg, -1
  %or.cond.i133.not147 = select i1 %.not16.i131, i1 %.not17.i132, i1 false
  %i.ef = add nsw i32 %i.cg, %i.cc
  %.not140 = icmp slt i32 %i.ef, %i.bu
  %or.cond = select i1 %or.cond.i133.not147, i1 %.not140, i1 false
  br i1 %or.cond, label %.split.split.us, label %.split.split

.split.split.us:                                  ; preds = %.split
  br i1 %.not, label %.split.split.us.split.us.preheader, label %.split.split.us.split.preheader

.split.split.us.split.preheader:                  ; preds = %.split.split.us
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !40
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !41
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !40
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.en = load i32, ptr %i.em, align 4, !tbaa !41 ; 2 uses
  %i.eo = mul nsw i32 %i.en, %i.cg
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds i8, ptr %i.el, i64 %i.ep
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 %i.ch
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 %i.ci
  call fastcc void @chroma_mc(ptr noundef %i.eh, i32 noundef %i.ej, ptr noundef %i.es, i32 noundef %i.en, i32 noundef %i.cb, i32 noundef %i.cc, i32 noundef %i.by, i32 noundef %i.ca)
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !40
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !41
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !40
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !41 ; 2 uses
  %i.fb = mul nsw i32 %i.fa, %i.cg
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds i8, ptr %i.ey, i64 %i.fc
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 %i.ch
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 %i.ci
  call fastcc void @chroma_mc(ptr noundef %i.eu, i32 noundef %i.ew, ptr noundef %i.ff, i32 noundef %i.fa, i32 noundef %i.cb, i32 noundef %i.cc, i32 noundef %i.by, i32 noundef %i.ca)
  br label %.split143.us

.split.split.us.split.us.preheader:               ; preds = %.split.split.us
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !41 ; 2 uses
  %i.fi = mul nsw i32 %i.fh, %i.ce
  %i.fj = add nsw i32 %i.fi, %i.cd
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !40
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 %i.fk
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !40
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !41 ; 2 uses
  %i.fs = mul nsw i32 %i.fr, %i.cg
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds i8, ptr %i.fp, i64 %i.ft
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 %i.ch
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 %i.ci
  call fastcc void @chroma_mc(ptr noundef %i.fn, i32 noundef %i.fh, ptr noundef %i.fw, i32 noundef %i.fr, i32 noundef %i.cb, i32 noundef %i.cc, i32 noundef %i.by, i32 noundef %i.ca)
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !41 ; 2 uses
  %i.fz = mul nsw i32 %i.fy, %i.ce
  %i.ga = add nsw i32 %i.fz, %i.cd
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !40
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 %i.gb
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !40
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !41 ; 2 uses
  %i.gj = mul nsw i32 %i.gi, %i.cg
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds i8, ptr %i.gg, i64 %i.gk
  %i.gm = getelementptr inbounds i8, ptr %i.gl, i64 %i.ch
  %i.gn = getelementptr inbounds i8, ptr %i.gm, i64 %i.ci
  call fastcc void @chroma_mc(ptr noundef %i.ge, i32 noundef %i.fy, ptr noundef %i.gn, i32 noundef %i.gi, i32 noundef %i.cb, i32 noundef %i.cc, i32 noundef %i.by, i32 noundef %i.ca)
  br label %.split143.us

.split.split:                                     ; preds = %.split
  br i1 %.not, label %check_pos.exit134.thread.us146.preheader, label %check_pos.exit134.thread.preheader

check_pos.exit134.thread.preheader:               ; preds = %.split.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.go = load ptr, ptr %i.cj, align 8, !tbaa !297
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !40
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !41 ; 2 uses
  %i.gt = mul nsw i32 %i.gs, %i.cg
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds i8, ptr %i.gq, i64 %i.gu
  %i.gw = getelementptr inbounds i8, ptr %i.gv, i64 %i.ch
  %i.gx = getelementptr inbounds i8, ptr %i.gw, i64 %i.ci
  %i.gy = sext i32 %i.gs to i64
  call void %i.go(ptr noundef nonnull %i.b, ptr noundef %i.gx, i64 noundef 40, i64 noundef %i.gy, i32 noundef %i.ck, i32 noundef %i.cl, i32 noundef %i.cf, i32 noundef %i.cg, i32 noundef %i.bs, i32 noundef %i.bu) #18
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !40
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !41
  call fastcc void @chroma_mc(ptr noundef %i.ha, i32 noundef %i.hc, ptr noundef nonnull %i.b, i32 noundef 40, i32 noundef %i.cb, i32 noundef %i.cc, i32 noundef %i.by, i32 noundef %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.hd = load ptr, ptr %i.cj, align 8, !tbaa !297
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !40
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !41 ; 2 uses
  %i.hi = mul nsw i32 %i.hh, %i.cg
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds i8, ptr %i.hf, i64 %i.hj
  %i.hl = getelementptr inbounds i8, ptr %i.hk, i64 %i.ch
  %i.hm = getelementptr inbounds i8, ptr %i.hl, i64 %i.ci
  %i.hn = sext i32 %i.hh to i64
  call void %i.hd(ptr noundef nonnull %i.b, ptr noundef %i.hm, i64 noundef 40, i64 noundef %i.hn, i32 noundef %i.ck, i32 noundef %i.cl, i32 noundef %i.cf, i32 noundef %i.cg, i32 noundef %i.bs, i32 noundef %i.bu) #18
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !40
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !41
  call fastcc void @chroma_mc(ptr noundef %i.hp, i32 noundef %i.hr, ptr noundef nonnull %i.b, i32 noundef 40, i32 noundef %i.cb, i32 noundef %i.cc, i32 noundef %i.by, i32 noundef %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %.split143.us

check_pos.exit134.thread.us146.preheader:         ; preds = %.split.split
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !41
  %i.hu = mul nsw i32 %i.ht, %i.ce
  %i.hv = add nsw i32 %i.hu, %i.cd
  %i.hw = sext i32 %i.hv to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.hx = load ptr, ptr %i.cj, align 8, !tbaa !297
  %i.hy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !40
  %i.ia = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !41 ; 2 uses
  %i.ic = mul nsw i32 %i.ib, %i.cg
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds i8, ptr %i.hz, i64 %i.id
  %i.if = getelementptr inbounds i8, ptr %i.ie, i64 %i.ch
  %i.ig = getelementptr inbounds i8, ptr %i.if, i64 %i.ci
  %i.ih = sext i32 %i.ib to i64
  call void %i.hx(ptr noundef nonnull %i.b, ptr noundef %i.ig, i64 noundef 40, i64 noundef %i.ih, i32 noundef %i.ck, i32 noundef %i.cl, i32 noundef %i.cf, i32 noundef %i.cg, i32 noundef %i.bs, i32 noundef %i.bu) #18
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !40
  %i.ik = getelementptr inbounds i8, ptr %i.ij, i64 %i.hw
  %i.il = load i32, ptr %i.hs, align 4, !tbaa !41
  call fastcc void @chroma_mc(ptr noundef %i.ik, i32 noundef %i.il, ptr noundef nonnull %i.b, i32 noundef 40, i32 noundef %i.cb, i32 noundef %i.cc, i32 noundef %i.by, i32 noundef %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !41
  %i.io = mul nsw i32 %i.in, %i.ce
  %i.ip = add nsw i32 %i.io, %i.cd
  %i.iq = sext i32 %i.ip to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.ir = load ptr, ptr %i.cj, align 8, !tbaa !297
  %i.is = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !40
  %i.iu = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !41 ; 2 uses
  %i.iw = mul nsw i32 %i.iv, %i.cg
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds i8, ptr %i.it, i64 %i.ix
  %i.iz = getelementptr inbounds i8, ptr %i.iy, i64 %i.ch
  %i.ja = getelementptr inbounds i8, ptr %i.iz, i64 %i.ci
  %i.jb = sext i32 %i.iv to i64
  call void %i.ir(ptr noundef nonnull %i.b, ptr noundef %i.ja, i64 noundef 40, i64 noundef %i.jb, i32 noundef %i.ck, i32 noundef %i.cl, i32 noundef %i.cf, i32 noundef %i.cg, i32 noundef %i.bs, i32 noundef %i.bu) #18
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !40
  %i.je = getelementptr inbounds i8, ptr %i.jd, i64 %i.iq
  %i.jf = load i32, ptr %i.im, align 4, !tbaa !41
  call fastcc void @chroma_mc(ptr noundef %i.je, i32 noundef %i.jf, ptr noundef nonnull %i.b, i32 noundef 40, i32 noundef %i.cb, i32 noundef %i.cc, i32 noundef %i.by, i32 noundef %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %.split143.us

.split143.us:                                     ; preds = %check_pos.exit134.thread.preheader, %check_pos.exit134.thread.us146.preheader, %.split.split.us.split.preheader, %.split.split.us.split.us.preheader, %check_pos.exit134.thread.us.1
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 16777216) i32 @decode_cbp16(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 4) %1, i32 noundef range(i32 0, 69) %2) unnamed_addr #7 {
bb.a:
  %i.a = zext nneg i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr @rv60_qp_to_idx, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !42
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw [128 x i8], ptr @cbp16_vlc, i64 %i.d
  %i.f = zext nneg i32 %1 to i64
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.f ; 4 uses
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !65  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !50   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !46   ; 8 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !44     ; 8 uses
  %i.n = lshr i32 %i.j, 3
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = load i32, ptr %i.p, align 1, !tbaa !42
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.q)
  %i.s = and i32 %i.j, 7
  %i.t = shl i32 %i.r, %i.s
  %i.u = lshr i32 %i.t, 23
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.v ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !42
  %i.y = sext i16 %i.x to i32                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !42  ; 2 uses
  %i.ab = sext i16 %i.aa to i32                   ; 2 uses
  %i.ac = icmp slt i16 %i.aa, 0
  br i1 %i.ac, label %bb.b, label %get_vlc2.exit34.i

bb.b:                                             ; preds = %bb.a
  %i.ad = add i32 %i.j, 9
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.ad) ; 3 uses
  %i.af = lshr i32 %i.ae, 3
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 1, !tbaa !42
  %i.aj = tail call i32 @llvm.bswap.i32(i32 %i.ai)
  %i.ak = and i32 %i.ae, 7
  %i.al = shl i32 %i.aj, %i.ak
  %i.am = add nsw i32 %i.ab, 32
  %i.an = lshr i32 %i.al, %i.am
  %i.ao = add i32 %i.an, %i.y
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !42
  %i.at = sext i16 %i.as to i32
  %i.au = load i16, ptr %i.aq, align 2, !tbaa !42
  %i.av = sext i16 %i.au to i32
  br label %get_vlc2.exit34.i

get_vlc2.exit34.i:                                ; preds = %bb.b, %bb.a
  %.167.i31.i = phi i32 [ %i.av, %bb.b ], [ %i.y, %bb.a ] ; 4 uses
  %.165.i32.i = phi i32 [ %i.ae, %bb.b ], [ %i.j, %bb.a ]
  %.1.i33.i = phi i32 [ %i.at, %bb.b ], [ %i.ab, %bb.a ]
  %i.aw = add i32 %.1.i33.i, %.165.i32.i
  %i.ax = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.aw) ; 5 uses
  store i32 %i.ax, ptr %i.i, align 8, !tbaa !50
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !65 ; 2 uses
  %i.ba = lshr i32 %i.ax, 3
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 1, !tbaa !42
  %i.be = tail call i32 @llvm.bswap.i32(i32 %i.bd)
  %i.bf = and i32 %i.ax, 7
  %i.bg = shl i32 %i.be, %i.bf
  %i.bh = lshr i32 %i.bg, 23
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.bi ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !42
  %i.bl = sext i16 %i.bk to i32                   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !42 ; 2 uses
  %i.bo = sext i16 %i.bn to i32                   ; 2 uses
  %i.bp = icmp slt i16 %i.bn, 0
  br i1 %i.bp, label %bb.c, label %get_vlc2.exit30.i

bb.c:                                             ; preds = %get_vlc2.exit34.i
  %i.bq = add i32 %i.ax, 9
  %i.br = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.bq) ; 3 uses
  %i.bs = lshr i32 %i.br, 3
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 1, !tbaa !42
  %i.bw = tail call i32 @llvm.bswap.i32(i32 %i.bv)
  %i.bx = and i32 %i.br, 7
  %i.by = shl i32 %i.bw, %i.bx
  %i.bz = add nsw i32 %i.bo, 32
  %i.ca = lshr i32 %i.by, %i.bz
  %i.cb = add i32 %i.ca, %i.bl
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !42
  %i.cg = sext i16 %i.cf to i32
  %i.ch = load i16, ptr %i.cd, align 2, !tbaa !42
  %i.ci = sext i16 %i.ch to i32
  br label %get_vlc2.exit30.i

get_vlc2.exit30.i:                                ; preds = %bb.c, %get_vlc2.exit34.i
  %.167.i27.i = phi i32 [ %i.ci, %bb.c ], [ %i.bl, %get_vlc2.exit34.i ] ; 4 uses
  %.165.i28.i = phi i32 [ %i.br, %bb.c ], [ %i.ax, %get_vlc2.exit34.i ]
  %.1.i29.i = phi i32 [ %i.cg, %bb.c ], [ %i.bo, %get_vlc2.exit34.i ]
  %i.cj = add i32 %.1.i29.i, %.165.i28.i
  %i.ck = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.cj) ; 5 uses
  store i32 %i.ck, ptr %i.i, align 8, !tbaa !50
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cm = load ptr, ptr %i.cl, align 16, !tbaa !65 ; 2 uses
  %i.cn = lshr i32 %i.ck, 3
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 1, !tbaa !42
  %i.cr = tail call i32 @llvm.bswap.i32(i32 %i.cq)
  %i.cs = and i32 %i.ck, 7
  %i.ct = shl i32 %i.cr, %i.cs
  %i.cu = lshr i32 %i.ct, 23
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.cv ; 2 uses
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !42
  %i.cy = sext i16 %i.cx to i32                   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !42 ; 2 uses
  %i.db = sext i16 %i.da to i32                   ; 2 uses
  %i.dc = icmp slt i16 %i.da, 0
  br i1 %i.dc, label %bb.d, label %get_vlc2.exit26.i

bb.d:                                             ; preds = %get_vlc2.exit30.i
  %i.dd = add i32 %i.ck, 9
  %i.de = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.dd) ; 3 uses
  %i.df = lshr i32 %i.de, 3
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 1, !tbaa !42
  %i.dj = tail call i32 @llvm.bswap.i32(i32 %i.di)
  %i.dk = and i32 %i.de, 7
  %i.dl = shl i32 %i.dj, %i.dk
  %i.dm = add nsw i32 %i.db, 32
  %i.dn = lshr i32 %i.dl, %i.dm
  %i.do = add i32 %i.dn, %i.cy
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !42
  %i.dt = sext i16 %i.ds to i32
  %i.du = load i16, ptr %i.dq, align 2, !tbaa !42
  %i.dv = sext i16 %i.du to i32
  br label %get_vlc2.exit26.i

get_vlc2.exit26.i:                                ; preds = %bb.d, %get_vlc2.exit30.i
  %.167.i23.i = phi i32 [ %i.dv, %bb.d ], [ %i.cy, %get_vlc2.exit30.i ] ; 4 uses
  %.165.i24.i = phi i32 [ %i.de, %bb.d ], [ %i.ck, %get_vlc2.exit30.i ]
  %.1.i25.i = phi i32 [ %i.dt, %bb.d ], [ %i.db, %get_vlc2.exit30.i ]
  %i.dw = add i32 %.1.i25.i, %.165.i24.i
  %i.dx = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.dw) ; 5 uses
  store i32 %i.dx, ptr %i.i, align 8, !tbaa !50
  %i.dy = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !65 ; 2 uses
  %i.ea = lshr i32 %i.dx, 3
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 1, !tbaa !42
  %i.ee = tail call i32 @llvm.bswap.i32(i32 %i.ed)
  %i.ef = and i32 %i.dx, 7
  %i.eg = shl i32 %i.ee, %i.ef
  %i.eh = lshr i32 %i.eg, 23
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.ei ; 2 uses
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !42
  %i.el = sext i16 %i.ek to i32                   ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  %i.en = load i16, ptr %i.em, align 2, !tbaa !42 ; 2 uses
  %i.eo = sext i16 %i.en to i32                   ; 2 uses
  %i.ep = icmp slt i16 %i.en, 0
  br i1 %i.ep, label %bb.e, label %decode_super_cbp.exit

bb.e:                                             ; preds = %get_vlc2.exit26.i
  %i.eq = add i32 %i.dx, 9
  %i.er = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.eq) ; 3 uses
  %i.es = lshr i32 %i.er, 3
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 1, !tbaa !42
  %i.ew = tail call i32 @llvm.bswap.i32(i32 %i.ev)
  %i.ex = and i32 %i.er, 7
  %i.ey = shl i32 %i.ew, %i.ex
  %i.ez = add nsw i32 %i.eo, 32
  %i.fa = lshr i32 %i.ey, %i.ez
  %i.fb = add i32 %i.fa, %i.el
end_hunk_0
