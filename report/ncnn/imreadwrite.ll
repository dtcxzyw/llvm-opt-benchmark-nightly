Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/imreadwrite?download=true
inline.NumInlined: 679
inline.NumDeleted: 153
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii:bb.a

bb.aq:                                            ; preds = %bb.ap
  %i.amr = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 2
  %i.ams = load i8, ptr %.2.lcssa, align 1, !tbaa !35
  %i.amt = and i8 %i.ams, 32
  %.not593 = icmp eq i8 %i.amt, 0
  %i.amu = select i1 %.not593, i8 0, i8 %i.aij
  store i8 %i.amu, ptr %i.amr, align 1, !tbaa !35
  %.not691 = icmp eq i32 %.16.lcssa, 3
  br i1 %.not691, label %.thread671, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.amv = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 3
  %i.amw = load i8, ptr %.2.lcssa, align 1, !tbaa !35
  %i.amx = and i8 %i.amw, 16
  %.not594 = icmp eq i8 %i.amx, 0
  %i.amy = select i1 %.not594, i8 0, i8 %i.aij
  store i8 %i.amy, ptr %i.amv, align 1, !tbaa !35
  %i.amz = icmp samesign ugt i32 %.16.lcssa, 4
  br i1 %i.amz, label %bb.as, label %.thread671

bb.as:                                            ; preds = %bb.ar
  %i.ana = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 4
  %i.anb = load i8, ptr %.2.lcssa, align 1, !tbaa !35
  %i.anc = and i8 %i.anb, 8
  %.not595 = icmp eq i8 %i.anc, 0
  %i.and = select i1 %.not595, i8 0, i8 %i.aij
  store i8 %i.and, ptr %i.ana, align 1, !tbaa !35
  %.not692 = icmp eq i32 %.16.lcssa, 5
  br i1 %.not692, label %.thread671, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ane = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 5
  %i.anf = load i8, ptr %.2.lcssa, align 1, !tbaa !35
  %i.ang = and i8 %i.anf, 4
  %.not596 = icmp eq i8 %i.ang, 0
  %i.anh = select i1 %.not596, i8 0, i8 %i.aij
  store i8 %i.anh, ptr %i.ane, align 1, !tbaa !35
  %i.ani = icmp eq i32 %.16.lcssa, 7
  br i1 %i.ani, label %bb.au, label %.thread671

bb.au:                                            ; preds = %bb.at
  %i.anj = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 6
  %i.ank = load i8, ptr %.2.lcssa, align 1, !tbaa !35
  %i.anl = and i8 %i.ank, 2
  %.not597 = icmp eq i8 %i.anl, 0
  %i.anm = select i1 %.not597, i8 0, i8 %i.aij
  store i8 %i.anm, ptr %i.anj, align 1, !tbaa !35
  br label %.thread671

.thread671:                                       ; preds = %._crit_edge836, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %._crit_edge844, %bb.al, %bb.aj, %bb.an, %bb.am, %bb.at, %bb.au, %._crit_edge852, %bb.ak
  br i1 %.not605, label %.loopexit, label %bb.av

bb.av:                                            ; preds = %.thread671
  %i.ann = load ptr, ptr %i.u, align 8, !tbaa !48
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ann, i64 %i.aie ; 16 uses
  br i1 %i.aho, label %.preheader, label %.preheader697

.preheader697:                                    ; preds = %bb.av
  br i1 %i.ahp, label %.lr.ph858.preheader, label %.loopexit

.lr.ph858.preheader:                              ; preds = %.preheader697
  br i1 %lcmp.mod1665.not.not, label %.lr.ph858.prol, label %.lr.ph858.prol.loopexit

.lr.ph858.prol:                                   ; preds = %.lr.ph858.preheader
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.ahx ; 4 uses
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anp, i64 3
  store i8 -1, ptr %i.anq, align 1, !tbaa !35
  %i.anr = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.ahy ; 3 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 2
  %i.ant = load i8, ptr %i.ans, align 1, !tbaa !35
  %i.anu = getelementptr inbounds nuw i8, ptr %i.anp, i64 2
  store i8 %i.ant, ptr %i.anu, align 1, !tbaa !35
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anr, i64 1
  %i.anw = load i8, ptr %i.anv, align 1, !tbaa !35
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anp, i64 1
  store i8 %i.anw, ptr %i.anx, align 1, !tbaa !35
  %i.any = load i8, ptr %i.anr, align 1, !tbaa !35
  store i8 %i.any, ptr %i.anp, align 1, !tbaa !35
  br label %.lr.ph858.prol.loopexit

.lr.ph858.prol.loopexit:                          ; preds = %.lr.ph858.prol, %.lr.ph858.preheader
  %indvars.iv969.unr = phi i64 [ %i.ahq, %.lr.ph858.preheader ], [ %indvars.iv.next970.prol, %.lr.ph858.prol ]
  br i1 %i.ahz, label %.loopexit, label %.lr.ph858

.preheader:                                       ; preds = %bb.av
  br i1 %i.ahp, label %.lr.ph861.preheader, label %.loopexit

.lr.ph861.preheader:                              ; preds = %.preheader
  br i1 %lcmp.mod1668.not, label %.lr.ph861.prol.loopexit, label %.lr.ph861.prol

.lr.ph861.prol:                                   ; preds = %.lr.ph861.preheader, %.lr.ph861.prol
  %indvars.iv972.prol = phi i64 [ %indvars.iv.next973.prol, %.lr.ph861.prol ], [ %i.ahq, %.lr.ph861.preheader ] ; 3 uses
  %prol.iter1669 = phi i64 [ %prol.iter1669.next, %.lr.ph861.prol ], [ 0, %.lr.ph861.preheader ]
  %i.anz = shl nuw nsw i64 %indvars.iv972.prol, 1
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.anz ; 2 uses
  %i.aob = getelementptr inbounds nuw i8, ptr %i.aoa, i64 1
  store i8 -1, ptr %i.aob, align 1, !tbaa !35
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.ano, i64 %indvars.iv972.prol
  %i.aod = load i8, ptr %i.aoc, align 1, !tbaa !35
  store i8 %i.aod, ptr %i.aoa, align 1, !tbaa !35
  %indvars.iv.next973.prol = add nsw i64 %indvars.iv972.prol, -1 ; 2 uses
  %prol.iter1669.next = add i64 %prol.iter1669, 1 ; 2 uses
  %prol.iter1669.cmp.not = icmp eq i64 %prol.iter1669.next, %xtraiter1667
  br i1 %prol.iter1669.cmp.not, label %.lr.ph861.prol.loopexit, label %.lr.ph861.prol, !llvm.loop !392

.lr.ph861.prol.loopexit:                          ; preds = %.lr.ph861.prol, %.lr.ph861.preheader
  %indvars.iv972.unr = phi i64 [ %i.ahq, %.lr.ph861.preheader ], [ %indvars.iv.next973.prol, %.lr.ph861.prol ]
  br i1 %i.aia, label %.loopexit, label %.lr.ph861

.lr.ph861:                                        ; preds = %.lr.ph861.prol.loopexit, %.lr.ph861
  %indvars.iv972 = phi i64 [ %indvars.iv.next973.3, %.lr.ph861 ], [ %indvars.iv972.unr, %.lr.ph861.prol.loopexit ] ; 6 uses
  %i.aoe = shl nuw nsw i64 %indvars.iv972, 1
  %i.aof = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.aoe ; 2 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 1
  store i8 -1, ptr %i.aog, align 1, !tbaa !35
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.ano, i64 %indvars.iv972
  %i.aoi = load i8, ptr %i.aoh, align 1, !tbaa !35
  store i8 %i.aoi, ptr %i.aof, align 1, !tbaa !35
  %indvars.iv.next973 = add nsw i64 %indvars.iv972, -1 ; 2 uses
  %i.aoj = shl nuw nsw i64 %indvars.iv.next973, 1
  %i.aok = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.aoj ; 2 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aok, i64 1
  store i8 -1, ptr %i.aol, align 1, !tbaa !35
  %i.aom = getelementptr inbounds nuw i8, ptr %i.ano, i64 %indvars.iv.next973
  %i.aon = load i8, ptr %i.aom, align 1, !tbaa !35
  store i8 %i.aon, ptr %i.aok, align 1, !tbaa !35
  %indvars.iv.next973.1 = add nsw i64 %indvars.iv972, -2 ; 2 uses
  %i.aoo = shl nuw nsw i64 %indvars.iv.next973.1, 1
  %i.aop = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.aoo ; 2 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 1
  store i8 -1, ptr %i.aoq, align 1, !tbaa !35
  %i.aor = getelementptr inbounds nuw i8, ptr %i.ano, i64 %indvars.iv.next973.1
  %i.aos = load i8, ptr %i.aor, align 1, !tbaa !35
  store i8 %i.aos, ptr %i.aop, align 1, !tbaa !35
  %indvars.iv.next973.2 = add nsw i64 %indvars.iv972, -3 ; 3 uses
  %i.aot = shl nuw nsw i64 %indvars.iv.next973.2, 1
  %i.aou = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.aot ; 2 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 1
  store i8 -1, ptr %i.aov, align 1, !tbaa !35
  %i.aow = getelementptr inbounds nuw i8, ptr %i.ano, i64 %indvars.iv.next973.2
  %i.aox = load i8, ptr %i.aow, align 1, !tbaa !35
  store i8 %i.aox, ptr %i.aou, align 1, !tbaa !35
  %indvars.iv.next973.3 = add nsw i64 %indvars.iv972, -4
  %.not1038.3 = icmp eq i64 %indvars.iv.next973.2, 0
  br i1 %.not1038.3, label %.loopexit, label %.lr.ph861, !llvm.loop !393

.lr.ph858:                                        ; preds = %.lr.ph858.prol.loopexit, %.lr.ph858
  %indvars.iv969 = phi i64 [ %indvars.iv.next970.1, %.lr.ph858 ], [ %indvars.iv969.unr, %.lr.ph858.prol.loopexit ] ; 4 uses
  %i.aoy = shl nuw nsw i64 %indvars.iv969, 2
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.aoy ; 4 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aoz, i64 3
  store i8 -1, ptr %i.apa, align 1, !tbaa !35
  %i.apb = mul nuw nsw i64 %indvars.iv969, 3
  %i.apc = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.apb ; 3 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apc, i64 2
  %i.ape = load i8, ptr %i.apd, align 1, !tbaa !35
  %i.apf = getelementptr inbounds nuw i8, ptr %i.aoz, i64 2
  store i8 %i.ape, ptr %i.apf, align 1, !tbaa !35
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apc, i64 1
  %i.aph = load i8, ptr %i.apg, align 1, !tbaa !35
  %i.api = getelementptr inbounds nuw i8, ptr %i.aoz, i64 1
  store i8 %i.aph, ptr %i.api, align 1, !tbaa !35
  %i.apj = load i8, ptr %i.apc, align 1, !tbaa !35
  store i8 %i.apj, ptr %i.aoz, align 1, !tbaa !35
  %indvars.iv.next970 = add nsw i64 %indvars.iv969, -1 ; 3 uses
  %i.apk = shl nuw nsw i64 %indvars.iv.next970, 2
  %i.apl = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.apk ; 4 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 3
  store i8 -1, ptr %i.apm, align 1, !tbaa !35
  %i.apn = mul nuw nsw i64 %indvars.iv.next970, 3
  %i.apo = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.apn ; 3 uses
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 2
  %i.apq = load i8, ptr %i.app, align 1, !tbaa !35
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apl, i64 2
  store i8 %i.apq, ptr %i.apr, align 1, !tbaa !35
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apo, i64 1
  %i.apt = load i8, ptr %i.aps, align 1, !tbaa !35
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apl, i64 1
  store i8 %i.apt, ptr %i.apu, align 1, !tbaa !35
  %i.apv = load i8, ptr %i.apo, align 1, !tbaa !35
  store i8 %i.apv, ptr %i.apl, align 1, !tbaa !35
  %indvars.iv.next970.1 = add nsw i64 %indvars.iv969, -2
  %.not1037.1 = icmp eq i64 %indvars.iv.next970, 0
  br i1 %.not1037.1, label %.loopexit, label %.lr.ph858, !llvm.loop !394

.loopexit:                                        ; preds = %.lr.ph858.prol.loopexit, %.lr.ph858, %.lr.ph861.prol.loopexit, %.lr.ph861, %.preheader697, %.preheader, %.thread671
  %indvars.iv.next976 = add nuw nsw i64 %indvars.iv975, 1 ; 2 uses
  %exitcond979.not = icmp eq i64 %indvars.iv.next976, %wide.trip.count978
  br i1 %exitcond979.not, label %.critedge, label %bb.ah, !llvm.loop !395

bb.aw:                                            ; preds = %._crit_edge826
  br i1 %i.a, label %bb.ax, label %.critedge

bb.ax:                                            ; preds = %._crit_edge826.thread, %bb.aw
  %i.apw = mul i32 %i.c, %5                       ; 4 uses
  %.not866 = icmp eq i32 %i.apw, 0
  br i1 %.not866, label %.critedge, label %.lr.ph831.preheader

.lr.ph831.preheader:                              ; preds = %bb.ax
  %i.apx = load ptr, ptr %i.u, align 8, !tbaa !48 ; 2 uses
  %xtraiter1670 = and i32 %i.apw, 3               ; 3 uses
  %i.apy = icmp ult i32 %i.apw, 4
  br i1 %i.apy, label %.lr.ph831.epil.preheader, label %.lr.ph831.preheader.new

.lr.ph831.preheader.new:                          ; preds = %.lr.ph831.preheader
  %unroll_iter1674 = and i32 %i.apw, -4
  br label %.lr.ph831.a

.lr.ph831.a:                                      ; preds = %.lr.ph831.a, %.lr.ph831.preheader.new
  %.0829 = phi ptr [ %i.apx, %.lr.ph831.preheader.new ], [ %30, %.lr.ph831.a ] ; 10 uses
  %niter1675 = phi i32 [ 0, %.lr.ph831.preheader.new ], [ %niter1675.next.3, %.lr.ph831.a ]
  %8 = load i8, ptr %.0829, align 1, !tbaa !35
  %9 = zext i8 %8 to i16
  %10 = shl nuw i16 %9, 8
  %i.apz = getelementptr inbounds nuw i8, ptr %.0829, i64 1
  %11 = load i8, ptr %i.apz, align 1, !tbaa !35
  %12 = zext i8 %11 to i16
  %13 = or disjoint i16 %10, %12
  store i16 %13, ptr %.0829, align 2, !tbaa !41
  %i.aqa = getelementptr i8, ptr %.0829, i64 2    ; 2 uses
  %14 = load i8, ptr %i.aqa, align 2, !tbaa !35
  %15 = zext i8 %14 to i16
  %16 = shl nuw i16 %15, 8
  %i.aqb = getelementptr i8, ptr %.0829, i64 3
  %i.aqc = load i8, ptr %i.aqb, align 1, !tbaa !35
  %17 = zext i8 %i.aqc to i16
  %18 = or disjoint i16 %16, %17
  store i16 %18, ptr %i.aqa, align 2, !tbaa !41
  %19 = getelementptr i8, ptr %.0829, i64 4       ; 2 uses
  %i.aqd = load i8, ptr %19, align 2, !tbaa !35
  %20 = zext i8 %i.aqd to i16
  %21 = shl nuw i16 %20, 8
  %i.aqe = getelementptr i8, ptr %.0829, i64 5
  %22 = load i8, ptr %i.aqe, align 1, !tbaa !35
  %23 = zext i8 %22 to i16
  %24 = or disjoint i16 %21, %23
  store i16 %24, ptr %19, align 2, !tbaa !41
  %i.aqf = getelementptr i8, ptr %.0829, i64 6    ; 2 uses
  %i.aqg = load i8, ptr %i.aqf, align 2, !tbaa !35
  %25 = zext i8 %i.aqg to i16
  %26 = shl nuw i16 %25, 8
  %27 = getelementptr i8, ptr %.0829, i64 7
  %i.aqh = load i8, ptr %27, align 1, !tbaa !35
  %28 = zext i8 %i.aqh to i16
  %29 = or disjoint i16 %26, %28
  store i16 %29, ptr %i.aqf, align 2, !tbaa !41
  %30 = getelementptr i8, ptr %.0829, i64 8       ; 2 uses
  %niter1675.next.3 = add i32 %niter1675, 4       ; 2 uses
  %niter1675.ncmp.3 = icmp eq i32 %niter1675.next.3, %unroll_iter1674
  br i1 %niter1675.ncmp.3, label %.critedge.loopexit.unr-lcssa, label %.lr.ph831.a, !llvm.loop !396

.critedge.sink.split:                             ; preds = %bb.i, %bb.g, %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge, %_ZL21stbi__mul2sizes_validii.exit12.i, %_ZL21stbi__mul2sizes_validii.exit.i, %bb.d, %_ZL21stbi__mul2sizes_validii.exit.thread15.i, %_ZL17stbi__malloc_mad3iiii.exit, %_ZL17stbi__malloc_mad3iiii.exit.thread
  %.str.27.sink = phi ptr [ @.str.26, %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge ], [ @.str.8, %_ZL21stbi__mul2sizes_validii.exit.i ], [ @.str.8, %_ZL21stbi__mul2sizes_validii.exit12.i ], [ @.str.23, %_ZL17stbi__malloc_mad3iiii.exit ], [ @.str.23, %_ZL17stbi__malloc_mad3iiii.exit.thread ], [ @.str.8, %_ZL21stbi__mul2sizes_validii.exit.thread15.i ], [ @.str.8, %bb.d ], [ @.str.27, %bb.g ], [ @.str.28, %bb.i ]
  store ptr %.str.27.sink, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %.critedge

.critedge.loopexit.unr-lcssa:                     ; preds = %.lr.ph831.a
  %lcmp.mod1672.not = icmp eq i32 %xtraiter1670, 0
  br i1 %lcmp.mod1672.not, label %.critedge, label %.lr.ph831.epil.preheader

.lr.ph831.epil.preheader:                         ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph831.preheader
  %.0829.epil.init = phi ptr [ %i.apx, %.lr.ph831.preheader ], [ %30, %.critedge.loopexit.unr-lcssa ]
  %lcmp.mod1673 = icmp ne i32 %xtraiter1670, 0
  tail call void @llvm.assume(i1 %lcmp.mod1673)
  br label %.lr.ph831.epil

.lr.ph831.epil:                                   ; preds = %.lr.ph831.epil, %.lr.ph831.epil.preheader
  %.0829.epil = phi ptr [ %31, %.lr.ph831.epil ], [ %.0829.epil.init, %.lr.ph831.epil.preheader ] ; 4 uses
  %epil.iter1671 = phi i32 [ %epil.iter1671.next, %.lr.ph831.epil ], [ 0, %.lr.ph831.epil.preheader ]
  %i.aqi = load i8, ptr %.0829.epil, align 1, !tbaa !35
  %i.aqj = zext i8 %i.aqi to i16
  %i.aqk = shl nuw i16 %i.aqj, 8
  %i.aql = getelementptr inbounds nuw i8, ptr %.0829.epil, i64 1
  %i.aqm = load i8, ptr %i.aql, align 1, !tbaa !35
  %i.aqn = zext i8 %i.aqm to i16
  %i.aqo = or disjoint i16 %i.aqk, %i.aqn
  store i16 %i.aqo, ptr %.0829.epil, align 2, !tbaa !41
  %31 = getelementptr i8, ptr %.0829.epil, i64 2
  %epil.iter1671.next = add i32 %epil.iter1671, 1 ; 2 uses
  %epil.iter1671.cmp.not = icmp eq i32 %epil.iter1671.next, %xtraiter1670
  br i1 %epil.iter1671.cmp.not, label %.critedge, label %.lr.ph831.epil, !llvm.loop !397

.critedge:                                        ; preds = %.loopexit, %.critedge.loopexit.unr-lcssa, %.lr.ph831.epil, %.critedge.sink.split, %._crit_edge826.thread, %bb.ax, %bb.aw
  %.2572 = phi i32 [ 1, %.critedge.loopexit.unr-lcssa ], [ 1, %bb.ax ], [ 1, %._crit_edge826.thread ], [ 1, %bb.aw ], [ 0, %.critedge.sink.split ], [ 1, %.lr.ph831.epil ], [ 1, %.loopexit ]
  ret i32 %.2572
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define internal fastcc noalias noundef ptr @_ZL17stbi__malloc_mad3iiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 16) %3) unnamed_addr #16 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not.i.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i.i, label %bb.b, label %_ZL21stbi__mad3sizes_validiiii.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i, label %_ZL21stbi__mul2sizes_validii.exit.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.b
  %i.c = udiv i32 2147483647, %1
  %.not23.i = icmp sgt i32 %0, %i.c
  br i1 %.not23.i, label %_ZL21stbi__mad3sizes_validiiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i, %bb.b
  %i.d = mul nuw nsw i32 %1, %0                   ; 3 uses
  %i.e = or i32 %2, %i.d
  %or.cond.not.i10.i = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i10.i, label %bb.c, label %_ZL21stbi__mad3sizes_validiiii.exit.thread

bb.c:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %_ZL21stbi__mad3sizes_validiiii.exit, label %_ZL21stbi__mul2sizes_validii.exit12.i

_ZL21stbi__mul2sizes_validii.exit12.i:            ; preds = %bb.c
  %i.g = udiv i32 2147483647, %2
  %.not.i = icmp sgt i32 %i.d, %i.g
  br i1 %.not.i, label %_ZL21stbi__mad3sizes_validiiii.exit.thread, label %_ZL21stbi__mad3sizes_validiiii.exit

_ZL21stbi__mad3sizes_validiiii.exit:              ; preds = %bb.c, %_ZL21stbi__mul2sizes_validii.exit12.i
  %i.h = mul nsw i32 %i.d, %2                     ; 2 uses
  %i.i = xor i32 %3, 2147483647
  %.not9 = icmp sgt i32 %i.h, %i.i
  br i1 %.not9, label %_ZL21stbi__mad3sizes_validiiii.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZL21stbi__mad3sizes_validiiii.exit
  %i.j = add nsw i32 %i.h, %3
  %i.k = sext i32 %i.j to i64
  %i.l = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.k) #36
  br label %_ZL21stbi__mad3sizes_validiiii.exit.thread

_ZL21stbi__mad3sizes_validiiii.exit.thread:       ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i, %bb.a, %_ZL21stbi__mul2sizes_validii.exit.i, %_ZL21stbi__mul2sizes_validii.exit12.i, %_ZL21stbi__mad3sizes_validiiii.exit, %bb.d
  %.0 = phi ptr [ %i.l, %bb.d ], [ null, %_ZL21stbi__mad3sizes_validiiii.exit ], [ null, %_ZL21stbi__mul2sizes_validii.exit12.i ], [ null, %_ZL21stbi__mul2sizes_validii.exit.i ], [ null, %bb.a ], [ null, %_ZL21stbi__mul2sizes_validii.exit.thread15.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL21stbi__mad3sizes_validiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 16) %3) unnamed_addr #17 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i, label %bb.b, label %_ZL21stbi__mul2sizes_validii.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %_ZL21stbi__mul2sizes_validii.exit.thread15, label %_ZL21stbi__mul2sizes_validii.exit

_ZL21stbi__mul2sizes_validii.exit:                ; preds = %bb.b
  %i.c = udiv i32 2147483647, %1
  %.not23 = icmp sgt i32 %0, %i.c
  br i1 %.not23, label %_ZL21stbi__mul2sizes_validii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15

_ZL21stbi__mul2sizes_validii.exit.thread15:       ; preds = %bb.b, %_ZL21stbi__mul2sizes_validii.exit
  %i.d = mul nuw nsw i32 %1, %0                   ; 3 uses
  %i.e = or i32 %2, %i.d
  %or.cond.not.i10 = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i10, label %bb.c, label %_ZL21stbi__mul2sizes_validii.exit.thread

bb.c:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %_ZL21stbi__mul2sizes_validii.exit12.thread20, label %_ZL21stbi__mul2sizes_validii.exit12

_ZL21stbi__mul2sizes_validii.exit12:              ; preds = %bb.c
  %i.g = udiv i32 2147483647, %2
  %.not = icmp sgt i32 %i.d, %i.g
  br i1 %.not, label %_ZL21stbi__mul2sizes_validii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit12.thread20

_ZL21stbi__mul2sizes_validii.exit12.thread20:     ; preds = %bb.c, %_ZL21stbi__mul2sizes_validii.exit12
  %i.h = mul nuw nsw i32 %i.d, %2
  %i.i = xor i32 %3, 2147483647
  %i.j = icmp sle i32 %i.h, %i.i
  %i.k = zext i1 %i.j to i32
  br label %_ZL21stbi__mul2sizes_validii.exit.thread

_ZL21stbi__mul2sizes_validii.exit.thread:         ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15, %bb.a, %_ZL21stbi__mul2sizes_validii.exit12.thread20, %_ZL21stbi__mul2sizes_validii.exit12, %_ZL21stbi__mul2sizes_validii.exit
  %i.l = phi i32 [ 0, %_ZL21stbi__mul2sizes_validii.exit12 ], [ 0, %_ZL21stbi__mul2sizes_validii.exit ], [ %i.k, %_ZL21stbi__mul2sizes_validii.exit12.thread20 ], [ 0, %bb.a ], [ 0, %_ZL21stbi__mul2sizes_validii.exit.thread15 ]
  ret i32 %i.l
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define internal fastcc noalias noundef ptr @_ZL17stbi__malloc_mad2iii(i32 noundef %0, i32 noundef %1, i32 noundef range(i32 0, 16) %2) unnamed_addr #16 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not.i.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i.i, label %bb.b, label %_ZL21stbi__mad2sizes_validiii.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %_ZL21stbi__mad2sizes_validiii.exit, label %_ZL21stbi__mul2sizes_validii.exit.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.b
  %i.c = udiv i32 2147483647, %1
  %.not10.i = icmp sgt i32 %0, %i.c
  br i1 %.not10.i, label %_ZL21stbi__mad2sizes_validiii.exit.thread, label %_ZL21stbi__mad2sizes_validiii.exit

_ZL21stbi__mad2sizes_validiii.exit:               ; preds = %bb.b, %_ZL21stbi__mul2sizes_validii.exit.i
  %i.d = mul nuw nsw i32 %1, %0                   ; 2 uses
  %i.e = xor i32 %2, 2147483647
  %.not7 = icmp sgt i32 %i.d, %i.e
  br i1 %.not7, label %_ZL21stbi__mad2sizes_validiii.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZL21stbi__mad2sizes_validiii.exit
  %i.f = add nsw i32 %i.d, %2
  %i.g = sext i32 %i.f to i64
  %i.h = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.g) #36
  br label %_ZL21stbi__mad2sizes_validiii.exit.thread

_ZL21stbi__mad2sizes_validiii.exit.thread:        ; preds = %bb.a, %_ZL21stbi__mul2sizes_validii.exit.i, %_ZL21stbi__mad2sizes_validiii.exit, %bb.c
  %.0 = phi ptr [ %i.h, %bb.c ], [ null, %_ZL21stbi__mad2sizes_validiii.exit ], [ null, %_ZL21stbi__mul2sizes_validii.exit.i ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0)
  %i.b = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0)
  %i.c = shl nuw i32 %i.b, 16
  %i.d = or disjoint i32 %i.c, %i.a
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 65536) i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36   ; 3 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !33
  %i.g = load i8, ptr %i.b, align 1, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !30
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZL10stbi__get8P13stbi__context.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !29
  %i.q = tail call noundef i32 %i.k(ptr noundef %i.m, ptr noundef nonnull %i.n, i32 noundef %i.p), !inline_history !5 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !31
  %i.aa = add nsw i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !31
  %i.ab = icmp eq i32 %i.q, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 8, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.n, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.q to i64
  %i.ae = getelementptr inbounds i8, ptr %i.n, i64 %i.ad
  %.pre.i = load i8, ptr %i.n, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i
end_hunk_0
begin_hunk_1_@llvm.fmuladd.v2f32
!196 = distinct !{!196, !42}
!197 = distinct !{!197, !42}
!198 = distinct !{!198, !42}
!199 = distinct !{!199, !42}
!200 = distinct !{null, ptr @_ZL10stbi__get8P13stbi__context, null}
!201 = distinct !{null, null}
!202 = !{!38, !17, i64 8}
!203 = !{!38, !17, i64 4}
!204 = !{!147}
!205 = !{!148}
!206 = !{!69, !20, i64 18544}
!207 = !{!69, !20, i64 18552}
!208 = !{!69, !20, i64 18560}
!209 = !{!69, !17, i64 18516}
!210 = !{!75, !17, i64 16}
!211 = !{!75, !17, i64 20}
!212 = !{!69, !17, i64 18484}
!213 = !{!69, !17, i64 18540}
!214 = !{!69, !17, i64 18500}
!215 = !{!179}
!216 = !{!180}
!217 = !{!"_ZTS14stbi__resample", !20, i64 0, !21, i64 8, !21, i64 16, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !17, i64 40}
!218 = !{!217, !17, i64 36}
!219 = !{!217, !17, i64 32}
!220 = !{!217, !17, i64 40}
!221 = !{!217, !21, i64 16}
!222 = !{!217, !21, i64 8}
!223 = !{!217, !20, i64 0}
!224 = !{!217, !17, i64 28}
!225 = !{!217, !17, i64 24}
!226 = distinct !{null}
!227 = distinct !{null, ptr @_ZL10stbi__get8P13stbi__context, null}
!228 = distinct !{!228, !42}
!229 = distinct !{!229, !42}
!230 = distinct !{!230, !42}
!231 = distinct !{!231, !42}
!232 = distinct !{!232, !42}
!233 = distinct !{null}
!234 = distinct !{!234, !42}
!235 = distinct !{!235, !42}
!236 = distinct !{!236, !42}
!237 = distinct !{!237, !42}
!238 = distinct !{!238, !42}
!239 = distinct !{!239, !67}
!240 = distinct !{!240, !42}
!241 = distinct !{!241, !42, !43, !44}
!242 = distinct !{!242, !42, !43, !44}
!243 = distinct !{!243, !42, !43, !44}
!244 = distinct !{!244, !42, !43, !44}
!245 = distinct !{!245, !42, !43, !44}
!246 = distinct !{!246, !42, !43, !44}
!247 = distinct !{!247, !67}
!248 = distinct !{!248, !42, !43, !44}
!249 = distinct !{!249, !42, !43, !44}
!250 = distinct !{!250, !67}
!251 = distinct !{!251, !67}
!252 = distinct !{!252, !42, !43, !44}
!253 = distinct !{!253, !42, !43, !44}
!254 = distinct !{!254, !42, !44, !43}
!255 = distinct !{!255, !42}
!256 = distinct !{!256, !42}
!257 = distinct !{!257, !42, !44, !43}
!258 = distinct !{!258, !42}
!259 = distinct !{!259, !42}
!260 = distinct !{!260, !42}
!261 = distinct !{!261, !42, !44, !43}
!262 = distinct !{!262, !42, !44, !43}
!263 = distinct !{!263, !42, !44, !43}
!264 = distinct !{!264, !42, !44, !43}
!265 = distinct !{!265, !42}
!266 = distinct !{!266, !42}
!267 = !{!"branch_weights", i32 8, i32 8}
!268 = distinct !{!268, !67}
!269 = distinct !{!269, !67}
!270 = distinct !{!270, !67}
!271 = distinct !{!271, !67}
!272 = distinct !{!272, !42, !43, !44}
!273 = distinct !{!273, !67}
!274 = distinct !{!274, !67}
!275 = distinct !{!275, !42, !43, !44}
!276 = distinct !{!276, !42, !44, !43}
!277 = distinct !{!277, !42}
!278 = distinct !{!278, !42}
!279 = distinct !{!279, !42, !44, !43}
!280 = distinct !{!280, !42}
!281 = distinct !{!281, !42}
!282 = distinct !{!282, !42}
!283 = distinct !{!283, !42}
!284 = distinct !{!284, !42}
!285 = distinct !{!285, !42}
!286 = distinct !{!286, !42}
!287 = distinct !{!287, !42}
!288 = distinct !{!288, !42}
!289 = distinct !{!289, !"LVerDomain"}
!290 = distinct !{!290, !289}
!291 = distinct !{!291, !289}
!292 = distinct !{!292, !42, !43, !44}
!293 = distinct !{!293, !67}
!294 = distinct !{!294, !42, !43}
!295 = distinct !{!295, !42}
!296 = !{!290}
!297 = !{!291}
!298 = distinct !{!298, !42}
!299 = distinct !{!299, !42}
!300 = distinct !{!300, !67}
!301 = distinct !{!301, !42}
!302 = distinct !{!302, !42}
!303 = distinct !{!303, !42}
!304 = distinct !{!304, !67}
!305 = distinct !{!305, !67}
!306 = distinct !{!306, !42}
!307 = distinct !{!307, !42, !43, !44}
!308 = distinct !{!308, !42, !43, !44}
!309 = distinct !{!309, !42, !43, !44}
!310 = distinct !{!310, !42, !43, !44}
!311 = distinct !{!311, !42, !43, !44}
!312 = distinct !{!312, !42, !43, !44}
!313 = distinct !{!313, !42, !43, !44}
!314 = distinct !{!314, !42, !43, !44}
!315 = distinct !{!315, !42, !43, !44}
!316 = distinct !{!316, !42, !43, !44}
!317 = distinct !{!317, !67}
!318 = distinct !{!318, !42, !43, !44}
!319 = distinct !{!319, !42, !43, !44}
!320 = distinct !{!320, !42, !43}
!321 = distinct !{!321, !42, !43}
!322 = distinct !{!322, !42, !43}
!323 = distinct !{!323, !42, !43}
!324 = distinct !{!324, !42, !43}
!325 = distinct !{!325, !42, !43}
!326 = distinct !{!326, !"LVerDomain"}
!327 = distinct !{!327, !326}
!328 = distinct !{!328, !326}
!329 = distinct !{!329, !42, !43, !44}
!330 = distinct !{!330, !42, !43, !44}
!331 = distinct !{!331, !67}
!332 = distinct !{!332, !42, !43}
!333 = distinct !{!333, !42}
!334 = distinct !{!334, !"LVerDomain"}
!335 = distinct !{!335, !334}
!336 = distinct !{!336, !334}
!337 = distinct !{!337, !334}
!338 = distinct !{!338, !42, !43, !44}
!339 = distinct !{!339, !42, !43, !44}
!340 = distinct !{!340, !42, !43}
!341 = distinct !{!341, !42}
!342 = distinct !{!342, !"LVerDomain"}
!343 = distinct !{!343, !342}
!344 = distinct !{!344, !342}
!345 = distinct !{!345, !342}
!346 = distinct !{!346, !42, !43, !44}
!347 = distinct !{!347, !42, !43, !44}
!348 = distinct !{!348, !67}
!349 = distinct !{!349, !42, !43}
!350 = distinct !{!350, !42}
!351 = distinct !{!351, !"LVerDomain"}
!352 = distinct !{!352, !351}
!353 = distinct !{!353, !351}
!354 = distinct !{!354, !351}
!355 = distinct !{!355, !351}
!356 = distinct !{!356, !42, !43, !44}
!357 = distinct !{!357, !42, !43, !44}
!358 = distinct !{!358, !42, !43}
!359 = distinct !{!359, !42}
!360 = distinct !{!360, !"LVerDomain"}
!361 = distinct !{!361, !360}
!362 = distinct !{!362, !360}
!363 = distinct !{!363, !360}
!364 = distinct !{!364, !360}
!365 = distinct !{!365, !360}
!366 = distinct !{!366, !42, !43, !44}
!367 = distinct !{!367, !42, !43, !44}
!368 = distinct !{!368, !42, !43}
!369 = distinct !{!369, !42}
!370 = distinct !{!370, !"LVerDomain"}
!371 = distinct !{!371, !370}
!372 = distinct !{!372, !370}
!373 = distinct !{!373, !370}
!374 = distinct !{!374, !42, !43, !44}
!375 = distinct !{!375, !42, !43, !44}
!376 = distinct !{!376, !42, !43}
!377 = distinct !{!377, !42}
!378 = distinct !{!378, !"LVerDomain"}
!379 = distinct !{!379, !378}
!380 = distinct !{!380, !378}
!381 = distinct !{!381, !378}
!382 = distinct !{!382, !42, !43, !44}
!383 = distinct !{!383, !42, !43, !44}
!384 = distinct !{!384, !42, !43}
!385 = distinct !{!385, !42}
!386 = distinct !{!386, !42}
!387 = distinct !{!387, !67}
!388 = distinct !{!388, !42}
!389 = distinct !{!389, !42}
!390 = distinct !{!390, !42}
!391 = distinct !{!391, !42}
!392 = distinct !{!392, !67}
!393 = distinct !{!393, !42}
!394 = distinct !{!394, !42}
!395 = distinct !{!395, !42}
!396 = distinct !{!396, !42}
!397 = distinct !{!397, !67}
!398 = !{!327}
!399 = !{!328}
!400 = !{!335}
!401 = !{!336}
!402 = !{!337}
!403 = !{!335, !336}
!404 = !{!343}
!405 = !{!344}
!406 = !{!345}
!407 = !{!343, !344}
!408 = !{!352}
!409 = !{!353}
!410 = !{!354}
!411 = !{!355}
!412 = !{!352, !353, !354}
!413 = !{!361}
!414 = !{!362}
!415 = !{!363}
!416 = !{!364}
!417 = !{!365}
!418 = !{!361, !362, !363, !364}
!419 = !{!371}
!420 = !{!372}
!421 = !{!373}
!422 = !{!371, !372}
!423 = !{!379}
!424 = !{!380}
!425 = !{!381}
!426 = !{!379, !380}
!427 = distinct !{!427, !42}
!428 = distinct !{!428, !42}
!429 = distinct !{!429, !42}
!430 = distinct !{!430, !42}
!431 = distinct !{!431, !42}
!432 = distinct !{!432, !"LVerDomain"}
!433 = distinct !{!433, !432}
!434 = distinct !{!434, !432}
!435 = distinct !{!435, !432}
!436 = distinct !{!436, !42, !43, !44}
!437 = distinct !{!437, !42, !43}
!438 = !{!433}
!439 = !{!434}
!440 = !{!435}
!441 = !{!433, !434}
!442 = distinct !{!442, !42}
!443 = distinct !{!443, !42}
!444 = distinct !{!444, !42}
!445 = distinct !{!445, !42}
!446 = distinct !{!446, !42}
!447 = distinct !{!447, !42}
!448 = distinct !{!448, !42}
!449 = distinct !{!449, !42}
!450 = distinct !{!450, !67}
!451 = distinct !{!451, !42}
!452 = distinct !{!452, !42}
!453 = distinct !{!453, !42}
!454 = distinct !{!454, !42}
!455 = !{!69, !17, i64 18056}
!456 = !{!69, !17, i64 18060}
!457 = !{!69, !17, i64 18072}
!458 = !{!69, !17, i64 18076}
!459 = !{!75, !17, i64 40}
!460 = !{!75, !17, i64 92}
!461 = distinct !{!461, !42}
!462 = distinct !{!462, !42}
!463 = distinct !{!463, !42}
!464 = distinct !{!464, !42}
!465 = distinct !{!465, !42}
!466 = distinct !{!466, !42}
!467 = distinct !{!467, !42, !43, !44}
!468 = distinct !{!468, !42, !43, !44}
!469 = distinct !{!469, !42, !43}
!470 = distinct !{!470, !"LVerDomain"}
!471 = distinct !{!471, !470}
!472 = distinct !{!472, !470}
!473 = distinct !{!473, !42, !43, !44}
!474 = distinct !{!474, !42, !43}
!475 = !{!471}
!476 = !{!472}
!477 = distinct !{!477, !42, !43, !44}
!478 = distinct !{!478, !42, !43, !44}
!479 = distinct !{!479, !42, !44, !43}
!480 = distinct !{!480, !42}
!481 = distinct !{!481, !42}
!482 = distinct !{!482, !42}
!483 = distinct !{!483, !42, !94}
!484 = distinct !{!484, !42}
!485 = distinct !{!485, !42}
!486 = distinct !{!486, !42}
!487 = distinct !{!487, !42}
!488 = distinct !{!488, !42, !43, !44}
!489 = distinct !{!489, !42, !43, !44}
!490 = distinct !{!490, !42, !44, !43}
!491 = distinct !{ptr @stbi_load_from_file_16, null, null, null}
!492 = distinct !{!492, !42}
!493 = distinct !{!493, !42}
!494 = distinct !{!494, !42, !43}
!495 = distinct !{ptr @stbi_loadf_from_file, null, null, null}
!496 = distinct !{!496, !42}
!497 = distinct !{!497, !42}
!498 = distinct !{!498, !67}
!499 = distinct !{!499, !42}
!500 = distinct !{!500, !42}
!501 = distinct !{!501, !42}
!502 = distinct !{!502, !42}
!503 = distinct !{!503, !42}
!504 = distinct !{!504, !42, !43, !44}
!505 = distinct !{!505, !42, !43, !44}
!506 = distinct !{!506, !67}
!507 = distinct !{!507, !42, !43}
!508 = distinct !{!508, !42}
!509 = distinct !{!509, !42}
!510 = !{!105, !21, i64 40}
!511 = !{!105, !17, i64 48}
!512 = !{!105, !17, i64 16}
!513 = !{!105, !17, i64 20}
!514 = distinct !{!514, !42}
!515 = distinct !{!515, !67}
!516 = distinct !{!516, !42}
!517 = distinct !{!517, !42, !43}
!518 = distinct !{!518, !42}
!519 = distinct !{ptr @stbi_info_from_file, null, null, null}
!520 = distinct !{null, null, null, null}
!521 = distinct !{null, null, null, null}
!522 = distinct !{!522, !42}
!523 = distinct !{null, null}
!524 = distinct !{null}
!525 = distinct !{!525, !42}
!526 = distinct !{!526, !42}
!527 = distinct !{!527, !42}
!528 = distinct !{null, null}
!529 = distinct !{null, null, null}
!530 = distinct !{null, null, null}
!531 = distinct !{!531, !42}
!532 = distinct !{!532, !42}
!533 = distinct !{!533, !42}
!534 = distinct !{!534, !42}
!535 = distinct !{null}
!536 = distinct !{null}
!537 = distinct !{!537, !42}
!538 = distinct !{!538, !42}
!539 = distinct !{!539, !42, !43, !44}
!540 = distinct !{!540, !42, !43, !44}
!541 = distinct !{!541, !42, !43}
!542 = distinct !{!542, !42, !43}
!543 = distinct !{!543, !42}
!544 = distinct !{null, null}
!545 = distinct !{!545, !42}
!546 = distinct !{!546, !42}
!547 = distinct !{null, null}
!548 = distinct !{!548, !42}
!549 = distinct !{!549, !42}
!550 = distinct !{!550, !42}
!551 = distinct !{!551, !42}
!552 = distinct !{!552, !42}
!553 = distinct !{!553, !42}
!554 = distinct !{!554, !42}
!555 = distinct !{!555, !42}
!556 = distinct !{!556, !42}
!557 = distinct !{!557, !42}
!558 = distinct !{!558, !42}
!559 = distinct !{!559, !42}
!560 = distinct !{!560, !42}
!561 = distinct !{!561, !42}
!562 = distinct !{!562, !42}
!563 = distinct !{!563, !67}
!564 = distinct !{!564, !42}
!565 = !{!"any p2 pointer", !20, i64 0}
!566 = !{!"p2 omnipotent char", !565, i64 0}
!567 = !{!566, !566, i64 0}
!568 = distinct !{!568, !42}
!569 = distinct !{!569, !42, !43, !44}
!570 = distinct !{!570, !42, !44, !43}
!571 = distinct !{!571, !42, !43, !44}
!572 = distinct !{!572, !42, !44, !43}
!573 = distinct !{!573, !42, !43, !44}
!574 = distinct !{!574, !42, !44, !43}
!575 = distinct !{!575, !42, !43, !44}
!576 = distinct !{!576, !42, !44, !43}
!577 = distinct !{!577, !42, !43, !44}
!578 = distinct !{!578, !42, !44, !43}
!579 = distinct !{!579, !42}
!580 = distinct !{!580, !42}
!581 = distinct !{!581, !42, !43, !44}
!582 = distinct !{!582, !42, !43, !44}
!583 = distinct !{!583, !42, !43, !44}
!584 = distinct !{!584, !42, !43, !44}
!585 = distinct !{!585, !42, !43, !44}
!586 = distinct !{!586, !42, !43, !44}
!587 = distinct !{!587, !42, !43, !44}
!588 = distinct !{!588, !42, !43, !44}
!589 = distinct !{!589, !42, !43, !44}
!590 = distinct !{!590, !42, !43, !44}
!591 = distinct !{!591, !42, !43, !44}
!592 = distinct !{!592, !42, !43, !44}
!593 = distinct !{!593, !42, !43}
!594 = distinct !{!594, !42, !43}
!595 = distinct !{!595, !42, !43}
!596 = distinct !{!596, !42, !43}
!597 = distinct !{!597, !42, !43}
end_hunk_1
