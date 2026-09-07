Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/compress?download=true
inline.NumInlined: 91
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@BZ2_compressBlock:bb.a
  %i.amq = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.amp ; 2 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amq, i64 8
  %i.ams = load i32, ptr %i.amr, align 8, !tbaa !74
  %i.amt = add i32 %i.amm, %i.ams
  %i.amu = getelementptr i8, ptr %i.sw, i64 92
  %i.amv = load i16, ptr %i.amu, align 2, !tbaa !79
  %i.amw = zext i16 %i.amv to i64
  %i.amx = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.amw ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 8
  %i.amz = load i32, ptr %i.amy, align 8, !tbaa !74
  %i.ana = add i32 %i.amt, %i.amz
  %i.anb = getelementptr i8, ptr %i.sw, i64 94
  %i.anc = load i16, ptr %i.anb, align 2, !tbaa !79
  %i.and = zext i16 %i.anc to i64
  %i.ane = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.and ; 2 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 8
  %i.ang = load i32, ptr %i.anf, align 8, !tbaa !74
  %i.anh = add i32 %i.ana, %i.ang
  %i.ani = getelementptr i8, ptr %i.sw, i64 96
  %i.anj = load i16, ptr %i.ani, align 2, !tbaa !79
  %i.ank = zext i16 %i.anj to i64
  %i.anl = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ank ; 2 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anl, i64 8
  %i.ann = load i32, ptr %i.anm, align 8, !tbaa !74
  %i.ano = add i32 %i.anh, %i.ann
  %i.anp = getelementptr i8, ptr %i.sw, i64 98
  %i.anq = load i16, ptr %i.anp, align 2, !tbaa !79
  %i.anr = zext i16 %i.anq to i64
  %i.ans = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.anr ; 2 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 8
  %i.anu = load i32, ptr %i.ant, align 8, !tbaa !74
  %i.anv = add i32 %i.ano, %i.anu
  %i.anw = load <2 x i32>, ptr %i.ala, align 8, !tbaa !74
  %i.anx = add <2 x i32> %i.akt, %i.anw
  %i.any = load <2 x i32>, ptr %i.alh, align 8, !tbaa !74
  %i.anz = add <2 x i32> %i.anx, %i.any
  %i.aoa = load <2 x i32>, ptr %i.alo, align 8, !tbaa !74
  %i.aob = add <2 x i32> %i.anz, %i.aoa
  %i.aoc = load <2 x i32>, ptr %i.alv, align 8, !tbaa !74
  %i.aod = add <2 x i32> %i.aob, %i.aoc
  %i.aoe = load <2 x i32>, ptr %i.amc, align 8, !tbaa !74
  %i.aof = add <2 x i32> %i.aod, %i.aoe
  %i.aog = load <2 x i32>, ptr %i.amj, align 8, !tbaa !74
  %i.aoh = add <2 x i32> %i.aof, %i.aog
  %i.aoi = load <2 x i32>, ptr %i.amq, align 8, !tbaa !74
  %i.aoj = add <2 x i32> %i.aoh, %i.aoi
  %i.aok = load <2 x i32>, ptr %i.amx, align 8, !tbaa !74
  %i.aol = add <2 x i32> %i.aoj, %i.aok
  %i.aom = load <2 x i32>, ptr %i.ane, align 8, !tbaa !74
  %i.aon = add <2 x i32> %i.aol, %i.aom
  %i.aoo = load <2 x i32>, ptr %i.anl, align 8, !tbaa !74
  %i.aop = add <2 x i32> %i.aon, %i.aoo
  %i.aoq = load <2 x i32>, ptr %i.ans, align 8, !tbaa !74
  %i.aor = add <2 x i32> %i.aop, %i.aoq
  store <2 x i32> %i.aor, ptr %i.a, align 8
  store i32 %i.anv, ptr %i.pf, align 8
  br label %.loopexit1973.i.preheader

.lr.ph2134.i:                                     ; preds = %.loopexit, %.lr.ph2134.preheader.i
  %indvars.iv2381.i = phi i64 [ %i.st, %.lr.ph2134.preheader.i ], [ %indvars.iv.next2382.i, %.loopexit ] ; 2 uses
  %i.aos = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %indvars.iv2381.i
  %i.aot = load i16, ptr %i.aos, align 2, !tbaa !79
  %i.aou = zext i16 %i.aot to i64
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.aou ; 5 uses
  br i1 %min.iters.check1128, label %scalar.ph.preheader, label %vector.body1131

vector.body1131:                                  ; preds = %.lr.ph2134.i
  %i.aov = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 258
  %i.aow = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 516
  %i.aox = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 774
  %i.aoy = load i8, ptr %invariant.gep.i, align 1, !tbaa !19
  %i.aoz = load i8, ptr %i.aov, align 1, !tbaa !19
  %i.apa = load i8, ptr %i.aow, align 1, !tbaa !19
  %i.apb = load i8, ptr %i.aox, align 1, !tbaa !19
  %i.apc = insertelement <4 x i8> poison, i8 %i.aoy, i64 0
  %i.apd = insertelement <4 x i8> %i.apc, i8 %i.aoz, i64 1
  %i.ape = insertelement <4 x i8> %i.apd, i8 %i.apa, i64 2
  %i.apf = insertelement <4 x i8> %i.ape, i8 %i.apb, i64 3
  %i.apg = zext <4 x i8> %i.apf to <4 x i16>
  %wide.load = load <4 x i16>, ptr %i.a, align 8, !tbaa !79
  %i.aph = add <4 x i16> %wide.load, %i.apg
  store <4 x i16> %i.aph, ptr %i.a, align 8, !tbaa !79
  br i1 %cmp.n1135, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph2134.i, %vector.body1131
  %indvars.iv2376.i.ph = phi i64 [ 0, %.lr.ph2134.i ], [ %n.vec1130, %vector.body1131 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv2376.i = phi i64 [ %indvars.iv.next2377.i, %scalar.ph ], [ %indvars.iv2376.i.ph, %scalar.ph.preheader ] ; 3 uses
  %gep.i = getelementptr inbounds nuw [258 x i8], ptr %invariant.gep.i, i64 %indvars.iv2376.i
  %i.api = load i8, ptr %gep.i, align 1, !tbaa !19
  %i.apj = zext i8 %i.api to i16
  %i.apk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv2376.i ; 2 uses
  %i.apl = load i16, ptr %i.apk, align 2, !tbaa !79
  %i.apm = add i16 %i.apl, %i.apj
  store i16 %i.apm, ptr %i.apk, align 2, !tbaa !79
  %indvars.iv.next2377.i = add nuw nsw i64 %indvars.iv2376.i, 1 ; 2 uses
  %exitcond2380.not.i = icmp eq i64 %indvars.iv.next2377.i, %i.ow
  br i1 %exitcond2380.not.i, label %.loopexit, label %scalar.ph, !llvm.loop !34

.loopexit:                                        ; preds = %scalar.ph, %vector.body1131
  %indvars.iv.next2382.i = add nsw i64 %indvars.iv2381.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next2382.i to i32
  %exitcond2385.not.i = icmp eq i32 %i.su, %lftr.wideiv.i
  br i1 %exitcond2385.not.i, label %.loopexit1973.i.preheader, label %.lr.ph2134.i, !llvm.loop !35

.loopexit1973.i.preheader:                        ; preds = %.loopexit, %bb.ba, %.preheader1972.i
  br i1 %i.pk, label %.loopexit1973.i.epil.preheader, label %.loopexit1973.i

.loopexit1973.i:                                  ; preds = %.loopexit1973.i.preheader, %.loopexit1973.i
  %indvars.iv2386.i = phi i64 [ %indvars.iv.next2387.i.3, %.loopexit1973.i ], [ 0, %.loopexit1973.i.preheader ] ; 6 uses
  %.014902136.i = phi i32 [ %spec.select1521.i.3, %.loopexit1973.i ], [ 999999999, %.loopexit1973.i.preheader ] ; 2 uses
  %.014922135.i = phi i32 [ %spec.select1520.i.3, %.loopexit1973.i ], [ -1, %.loopexit1973.i.preheader ]
  %niter1384 = phi i64 [ %niter1384.next.3, %.loopexit1973.i ], [ 0, %.loopexit1973.i.preheader ]
  %i.apn = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv2386.i
  %i.apo = load i16, ptr %i.apn, align 8, !tbaa !79
  %i.app = zext i16 %i.apo to i32                 ; 2 uses
  %i.apq = icmp samesign ugt i32 %.014902136.i, %i.app
  %i.apr = trunc nuw nsw i64 %indvars.iv2386.i to i32
  %spec.select1520.i = select i1 %i.apq, i32 %i.apr, i32 %.014922135.i
  %spec.select1521.i = call i32 @llvm.umin.i32(i32 %.014902136.i, i32 %i.app) ; 2 uses
  %indvars.iv.next2387.i = or disjoint i64 %indvars.iv2386.i, 1 ; 2 uses
  %i.aps = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next2387.i
  %i.apt = load i16, ptr %i.aps, align 2, !tbaa !79
  %i.apu = zext i16 %i.apt to i32                 ; 2 uses
  %i.apv = icmp samesign ugt i32 %spec.select1521.i, %i.apu
  %i.apw = trunc nuw nsw i64 %indvars.iv.next2387.i to i32
  %spec.select1520.i.1 = select i1 %i.apv, i32 %i.apw, i32 %spec.select1520.i
  %spec.select1521.i.1 = call i32 @llvm.umin.i32(i32 %spec.select1521.i, i32 %i.apu) ; 2 uses
  %indvars.iv.next2387.i.1 = or disjoint i64 %indvars.iv2386.i, 2 ; 2 uses
  %i.apx = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next2387.i.1
  %i.apy = load i16, ptr %i.apx, align 4, !tbaa !79
  %i.apz = zext i16 %i.apy to i32                 ; 2 uses
  %i.aqa = icmp samesign ugt i32 %spec.select1521.i.1, %i.apz
  %i.aqb = trunc nuw nsw i64 %indvars.iv.next2387.i.1 to i32
  %spec.select1520.i.2 = select i1 %i.aqa, i32 %i.aqb, i32 %spec.select1520.i.1
  %spec.select1521.i.2 = call i32 @llvm.umin.i32(i32 %spec.select1521.i.1, i32 %i.apz) ; 2 uses
  %indvars.iv.next2387.i.2 = or disjoint i64 %indvars.iv2386.i, 3 ; 2 uses
  %i.aqc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next2387.i.2
  %i.aqd = load i16, ptr %i.aqc, align 2, !tbaa !79
  %i.aqe = zext i16 %i.aqd to i32                 ; 2 uses
  %i.aqf = icmp samesign ugt i32 %spec.select1521.i.2, %i.aqe
  %i.aqg = trunc nuw nsw i64 %indvars.iv.next2387.i.2 to i32
  %spec.select1520.i.3 = select i1 %i.aqf, i32 %i.aqg, i32 %spec.select1520.i.2 ; 3 uses
  %spec.select1521.i.3 = call i32 @llvm.umin.i32(i32 %spec.select1521.i.2, i32 %i.aqe) ; 3 uses
  %indvars.iv.next2387.i.3 = add nuw nsw i64 %indvars.iv2386.i, 4 ; 2 uses
  %niter1384.next.3 = add i64 %niter1384, 4       ; 2 uses
  %niter1384.ncmp.3 = icmp eq i64 %niter1384.next.3, %unroll_iter1383
  br i1 %niter1384.ncmp.3, label %.unr-lcssa, label %.loopexit1973.i, !llvm.loop !36

.unr-lcssa:                                       ; preds = %.loopexit1973.i
  br i1 %lcmp.mod1379.not, label %.epilog-lcssa, label %.loopexit1973.i.epil.preheader

.loopexit1973.i.epil.preheader:                   ; preds = %.unr-lcssa, %.loopexit1973.i.preheader
  %indvars.iv2386.i.epil.init = phi i64 [ 0, %.loopexit1973.i.preheader ], [ %indvars.iv.next2387.i.3, %.unr-lcssa ]
  %.014902136.i.epil.init = phi i32 [ 999999999, %.loopexit1973.i.preheader ], [ %spec.select1521.i.3, %.unr-lcssa ]
  %.014922135.i.epil.init = phi i32 [ -1, %.loopexit1973.i.preheader ], [ %spec.select1520.i.3, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1382)
  br label %.loopexit1973.i.epil

.loopexit1973.i.epil:                             ; preds = %.loopexit1973.i.epil, %.loopexit1973.i.epil.preheader
  %indvars.iv2386.i.epil = phi i64 [ %indvars.iv.next2387.i.epil, %.loopexit1973.i.epil ], [ %indvars.iv2386.i.epil.init, %.loopexit1973.i.epil.preheader ] ; 3 uses
  %.014902136.i.epil = phi i32 [ %spec.select1521.i.epil, %.loopexit1973.i.epil ], [ %.014902136.i.epil.init, %.loopexit1973.i.epil.preheader ] ; 2 uses
  %.014922135.i.epil = phi i32 [ %spec.select1520.i.epil, %.loopexit1973.i.epil ], [ %.014922135.i.epil.init, %.loopexit1973.i.epil.preheader ]
  %epil.iter1378 = phi i64 [ %epil.iter1378.next, %.loopexit1973.i.epil ], [ 0, %.loopexit1973.i.epil.preheader ]
  %i.aqh = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv2386.i.epil
  %i.aqi = load i16, ptr %i.aqh, align 2, !tbaa !79
  %i.aqj = zext i16 %i.aqi to i32                 ; 2 uses
  %i.aqk = icmp samesign ugt i32 %.014902136.i.epil, %i.aqj
  %i.aql = trunc nuw nsw i64 %indvars.iv2386.i.epil to i32
  %spec.select1520.i.epil = select i1 %i.aqk, i32 %i.aql, i32 %.014922135.i.epil ; 2 uses
  %spec.select1521.i.epil = call i32 @llvm.umin.i32(i32 %.014902136.i.epil, i32 %i.aqj) ; 2 uses
  %indvars.iv.next2387.i.epil = add nuw nsw i64 %indvars.iv2386.i.epil, 1
  %epil.iter1378.next = add i64 %epil.iter1378, 1 ; 2 uses
  %epil.iter1378.cmp.not = icmp eq i64 %epil.iter1378.next, %xtraiter1377
  br i1 %epil.iter1378.cmp.not, label %.epilog-lcssa, label %.loopexit1973.i.epil, !llvm.loop !37

.epilog-lcssa:                                    ; preds = %.loopexit1973.i.epil, %.unr-lcssa
  %spec.select1520.i.lcssa = phi i32 [ %spec.select1520.i.3, %.unr-lcssa ], [ %spec.select1520.i.epil, %.loopexit1973.i.epil ] ; 2 uses
  %spec.select1521.i.lcssa = phi i32 [ %spec.select1521.i.3, %.unr-lcssa ], [ %spec.select1521.i.epil, %.loopexit1973.i.epil ]
  %i.aqm = add nuw nsw i32 %spec.select1521.i.lcssa, %.014762143.i ; 2 uses
  %i.aqn = sext i32 %spec.select1520.i.lcssa to i64 ; 3 uses
  %i.aqo = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aqn ; 2 uses
  %i.aqp = load i32, ptr %i.aqo, align 4, !tbaa !74
  %i.aqq = add nsw i32 %i.aqp, 1
  store i32 %i.aqq, ptr %i.aqo, align 4, !tbaa !74
  %i.aqr = trunc i32 %spec.select1520.i.lcssa to i8
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.pg, i64 %indvars.iv2397.i
  store i8 %i.aqr, ptr %i.aqs, align 1, !tbaa !19
  %indvars.iv.next2398.i = add nuw nsw i64 %indvars.iv2397.i, 1 ; 2 uses
  br i1 %or.cond1519.i, label %bb.bb, label %.preheader1970.i

.preheader1970.i:                                 ; preds = %.epilog-lcssa
  %.not15132138.not.i = icmp sgt i32 %i.so, %.114702144.i
  br i1 %.not15132138.not.i, label %.lr.ph2140.i, label %.loopexit1971.i

.lr.ph2140.i:                                     ; preds = %.preheader1970.i
  %i.aqt = getelementptr inbounds [1032 x i8], ptr %i.oy, i64 %i.aqn ; 5 uses
  %i.aqu = sext i32 %.114702144.i to i64          ; 2 uses
  %smax2394.i = call i32 @llvm.smax.i32(i32 %.114702144.i, i32 %spec.select.i127) ; 2 uses
  %i.aqv = add nsw i32 %smax2394.i, 1             ; 2 uses
  %i.aqw = sub i32 %i.aqv, %.114702144.i
  %i.aqx = sub i32 %smax2394.i, %.114702144.i
  %xtraiter1385 = and i32 %i.aqw, 3               ; 2 uses
  %lcmp.mod1386.not = icmp eq i32 %xtraiter1385, 0
  br i1 %lcmp.mod1386.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph2140.i, %.prol.preheader
  %indvars.iv2391.i.prol = phi i64 [ %indvars.iv.next2392.i.prol, %.prol.preheader ], [ %i.aqu, %.lr.ph2140.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph2140.i ]
  %i.aqy = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %indvars.iv2391.i.prol
  %i.aqz = load i16, ptr %i.aqy, align 2, !tbaa !79
  %i.ara = zext i16 %i.aqz to i64
  %i.arb = getelementptr inbounds nuw [4 x i8], ptr %i.aqt, i64 %i.ara ; 2 uses
  %i.arc = load i32, ptr %i.arb, align 4, !tbaa !74
  %i.ard = add nsw i32 %i.arc, 1
  store i32 %i.ard, ptr %i.arb, align 4, !tbaa !74
  %indvars.iv.next2392.i.prol = add nsw i64 %indvars.iv2391.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter1385
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !38

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph2140.i
  %indvars.iv2391.i.unr = phi i64 [ %i.aqu, %.lr.ph2140.i ], [ %indvars.iv.next2392.i.prol, %.prol.preheader ]
  %i.are = icmp ult i32 %i.aqx, 3
  br i1 %i.are, label %.loopexit1971.i, label %.lr.ph2140.i.new

bb.bb:                                            ; preds = %.epilog-lcssa
  %i.arf = getelementptr inbounds [1032 x i8], ptr %i.oy, i64 %i.aqn ; 50 uses
  %i.arg = sext i32 %.114702144.i to i64
  %i.arh = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %i.arg ; 50 uses
  %i.ari = load i16, ptr %i.arh, align 2, !tbaa !79
  %i.arj = zext i16 %i.ari to i64
  %i.ark = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.arj ; 2 uses
  %i.arl = load i32, ptr %i.ark, align 4, !tbaa !74
  %i.arm = add nsw i32 %i.arl, 1
  store i32 %i.arm, ptr %i.ark, align 4, !tbaa !74
  %i.arn = getelementptr i8, ptr %i.arh, i64 2
  %i.aro = load i16, ptr %i.arn, align 2, !tbaa !79
  %i.arp = zext i16 %i.aro to i64
  %i.arq = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.arp ; 2 uses
  %i.arr = load i32, ptr %i.arq, align 4, !tbaa !74
  %i.ars = add nsw i32 %i.arr, 1
  store i32 %i.ars, ptr %i.arq, align 4, !tbaa !74
  %i.art = getelementptr i8, ptr %i.arh, i64 4
  %i.aru = load i16, ptr %i.art, align 2, !tbaa !79
  %i.arv = zext i16 %i.aru to i64
  %i.arw = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.arv ; 2 uses
  %i.arx = load i32, ptr %i.arw, align 4, !tbaa !74
  %i.ary = add nsw i32 %i.arx, 1
  store i32 %i.ary, ptr %i.arw, align 4, !tbaa !74
  %i.arz = getelementptr i8, ptr %i.arh, i64 6
  %i.asa = load i16, ptr %i.arz, align 2, !tbaa !79
  %i.asb = zext i16 %i.asa to i64
  %i.asc = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.asb ; 2 uses
  %i.asd = load i32, ptr %i.asc, align 4, !tbaa !74
  %i.ase = add nsw i32 %i.asd, 1
  store i32 %i.ase, ptr %i.asc, align 4, !tbaa !74
  %i.asf = getelementptr i8, ptr %i.arh, i64 8
  %i.asg = load i16, ptr %i.asf, align 2, !tbaa !79
  %i.ash = zext i16 %i.asg to i64
  %i.asi = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.ash ; 2 uses
  %i.asj = load i32, ptr %i.asi, align 4, !tbaa !74
  %i.ask = add nsw i32 %i.asj, 1
  store i32 %i.ask, ptr %i.asi, align 4, !tbaa !74
  %i.asl = getelementptr i8, ptr %i.arh, i64 10
  %i.asm = load i16, ptr %i.asl, align 2, !tbaa !79
  %i.asn = zext i16 %i.asm to i64
  %i.aso = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.asn ; 2 uses
  %i.asp = load i32, ptr %i.aso, align 4, !tbaa !74
  %i.asq = add nsw i32 %i.asp, 1
  store i32 %i.asq, ptr %i.aso, align 4, !tbaa !74
  %i.asr = getelementptr i8, ptr %i.arh, i64 12
  %i.ass = load i16, ptr %i.asr, align 2, !tbaa !79
  %i.ast = zext i16 %i.ass to i64
  %i.asu = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.ast ; 2 uses
  %i.asv = load i32, ptr %i.asu, align 4, !tbaa !74
  %i.asw = add nsw i32 %i.asv, 1
  store i32 %i.asw, ptr %i.asu, align 4, !tbaa !74
  %i.asx = getelementptr i8, ptr %i.arh, i64 14
  %i.asy = load i16, ptr %i.asx, align 2, !tbaa !79
  %i.asz = zext i16 %i.asy to i64
  %i.ata = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.asz ; 2 uses
  %i.atb = load i32, ptr %i.ata, align 4, !tbaa !74
  %i.atc = add nsw i32 %i.atb, 1
  store i32 %i.atc, ptr %i.ata, align 4, !tbaa !74
  %i.atd = getelementptr i8, ptr %i.arh, i64 16
  %i.ate = load i16, ptr %i.atd, align 2, !tbaa !79
  %i.atf = zext i16 %i.ate to i64
  %i.atg = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.atf ; 2 uses
  %i.ath = load i32, ptr %i.atg, align 4, !tbaa !74
  %i.ati = add nsw i32 %i.ath, 1
  store i32 %i.ati, ptr %i.atg, align 4, !tbaa !74
  %i.atj = getelementptr i8, ptr %i.arh, i64 18
  %i.atk = load i16, ptr %i.atj, align 2, !tbaa !79
  %i.atl = zext i16 %i.atk to i64
  %i.atm = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.atl ; 2 uses
  %i.atn = load i32, ptr %i.atm, align 4, !tbaa !74
  %i.ato = add nsw i32 %i.atn, 1
  store i32 %i.ato, ptr %i.atm, align 4, !tbaa !74
  %i.atp = getelementptr i8, ptr %i.arh, i64 20
  %i.atq = load i16, ptr %i.atp, align 2, !tbaa !79
  %i.atr = zext i16 %i.atq to i64
  %i.ats = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.atr ; 2 uses
  %i.att = load i32, ptr %i.ats, align 4, !tbaa !74
  %i.atu = add nsw i32 %i.att, 1
  store i32 %i.atu, ptr %i.ats, align 4, !tbaa !74
  %i.atv = getelementptr i8, ptr %i.arh, i64 22
  %i.atw = load i16, ptr %i.atv, align 2, !tbaa !79
  %i.atx = zext i16 %i.atw to i64
  %i.aty = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.atx ; 2 uses
  %i.atz = load i32, ptr %i.aty, align 4, !tbaa !74
  %i.aua = add nsw i32 %i.atz, 1
  store i32 %i.aua, ptr %i.aty, align 4, !tbaa !74
  %i.aub = getelementptr i8, ptr %i.arh, i64 24
  %i.auc = load i16, ptr %i.aub, align 2, !tbaa !79
  %i.aud = zext i16 %i.auc to i64
  %i.aue = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.aud ; 2 uses
  %i.auf = load i32, ptr %i.aue, align 4, !tbaa !74
  %i.aug = add nsw i32 %i.auf, 1
  store i32 %i.aug, ptr %i.aue, align 4, !tbaa !74
  %i.auh = getelementptr i8, ptr %i.arh, i64 26
  %i.aui = load i16, ptr %i.auh, align 2, !tbaa !79
  %i.auj = zext i16 %i.aui to i64
  %i.auk = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.auj ; 2 uses
  %i.aul = load i32, ptr %i.auk, align 4, !tbaa !74
  %i.aum = add nsw i32 %i.aul, 1
  store i32 %i.aum, ptr %i.auk, align 4, !tbaa !74
  %i.aun = getelementptr i8, ptr %i.arh, i64 28
  %i.auo = load i16, ptr %i.aun, align 2, !tbaa !79
  %i.aup = zext i16 %i.auo to i64
  %i.auq = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.aup ; 2 uses
  %i.aur = load i32, ptr %i.auq, align 4, !tbaa !74
  %i.aus = add nsw i32 %i.aur, 1
  store i32 %i.aus, ptr %i.auq, align 4, !tbaa !74
  %i.aut = getelementptr i8, ptr %i.arh, i64 30
  %i.auu = load i16, ptr %i.aut, align 2, !tbaa !79
  %i.auv = zext i16 %i.auu to i64
  %i.auw = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.auv ; 2 uses
  %i.aux = load i32, ptr %i.auw, align 4, !tbaa !74
  %i.auy = add nsw i32 %i.aux, 1
  store i32 %i.auy, ptr %i.auw, align 4, !tbaa !74
  %i.auz = getelementptr i8, ptr %i.arh, i64 32
  %i.ava = load i16, ptr %i.auz, align 2, !tbaa !79
  %i.avb = zext i16 %i.ava to i64
  %i.avc = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.avb ; 2 uses
  %i.avd = load i32, ptr %i.avc, align 4, !tbaa !74
  %i.ave = add nsw i32 %i.avd, 1
  store i32 %i.ave, ptr %i.avc, align 4, !tbaa !74
  %i.avf = getelementptr i8, ptr %i.arh, i64 34
  %i.avg = load i16, ptr %i.avf, align 2, !tbaa !79
  %i.avh = zext i16 %i.avg to i64
  %i.avi = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.avh ; 2 uses
  %i.avj = load i32, ptr %i.avi, align 4, !tbaa !74
  %i.avk = add nsw i32 %i.avj, 1
  store i32 %i.avk, ptr %i.avi, align 4, !tbaa !74
  %i.avl = getelementptr i8, ptr %i.arh, i64 36
  %i.avm = load i16, ptr %i.avl, align 2, !tbaa !79
  %i.avn = zext i16 %i.avm to i64
  %i.avo = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.avn ; 2 uses
  %i.avp = load i32, ptr %i.avo, align 4, !tbaa !74
  %i.avq = add nsw i32 %i.avp, 1
  store i32 %i.avq, ptr %i.avo, align 4, !tbaa !74
  %i.avr = getelementptr i8, ptr %i.arh, i64 38
  %i.avs = load i16, ptr %i.avr, align 2, !tbaa !79
  %i.avt = zext i16 %i.avs to i64
  %i.avu = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.avt ; 2 uses
  %i.avv = load i32, ptr %i.avu, align 4, !tbaa !74
  %i.avw = add nsw i32 %i.avv, 1
  store i32 %i.avw, ptr %i.avu, align 4, !tbaa !74
  %i.avx = getelementptr i8, ptr %i.arh, i64 40
  %i.avy = load i16, ptr %i.avx, align 2, !tbaa !79
  %i.avz = zext i16 %i.avy to i64
  %i.awa = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.avz ; 2 uses
  %i.awb = load i32, ptr %i.awa, align 4, !tbaa !74
  %i.awc = add nsw i32 %i.awb, 1
  store i32 %i.awc, ptr %i.awa, align 4, !tbaa !74
  %i.awd = getelementptr i8, ptr %i.arh, i64 42
  %i.awe = load i16, ptr %i.awd, align 2, !tbaa !79
  %i.awf = zext i16 %i.awe to i64
  %i.awg = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.awf ; 2 uses
  %i.awh = load i32, ptr %i.awg, align 4, !tbaa !74
  %i.awi = add nsw i32 %i.awh, 1
  store i32 %i.awi, ptr %i.awg, align 4, !tbaa !74
  %i.awj = getelementptr i8, ptr %i.arh, i64 44
  %i.awk = load i16, ptr %i.awj, align 2, !tbaa !79
  %i.awl = zext i16 %i.awk to i64
  %i.awm = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.awl ; 2 uses
  %i.awn = load i32, ptr %i.awm, align 4, !tbaa !74
  %i.awo = add nsw i32 %i.awn, 1
  store i32 %i.awo, ptr %i.awm, align 4, !tbaa !74
  %i.awp = getelementptr i8, ptr %i.arh, i64 46
  %i.awq = load i16, ptr %i.awp, align 2, !tbaa !79
  %i.awr = zext i16 %i.awq to i64
  %i.aws = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.awr ; 2 uses
  %i.awt = load i32, ptr %i.aws, align 4, !tbaa !74
  %i.awu = add nsw i32 %i.awt, 1
  store i32 %i.awu, ptr %i.aws, align 4, !tbaa !74
  %i.awv = getelementptr i8, ptr %i.arh, i64 48
  %i.aww = load i16, ptr %i.awv, align 2, !tbaa !79
  %i.awx = zext i16 %i.aww to i64
end_hunk_0
begin_hunk_1_@BZ2_compressBlock:bb.a
  %i.axm = add nsw i32 %i.axl, 1
  store i32 %i.axm, ptr %i.axk, align 4, !tbaa !74
  %i.axn = getelementptr i8, ptr %i.arh, i64 54
  %i.axo = load i16, ptr %i.axn, align 2, !tbaa !79
  %i.axp = zext i16 %i.axo to i64
  %i.axq = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.axp ; 2 uses
  %i.axr = load i32, ptr %i.axq, align 4, !tbaa !74
  %i.axs = add nsw i32 %i.axr, 1
  store i32 %i.axs, ptr %i.axq, align 4, !tbaa !74
  %i.axt = getelementptr i8, ptr %i.arh, i64 56
  %i.axu = load i16, ptr %i.axt, align 2, !tbaa !79
  %i.axv = zext i16 %i.axu to i64
  %i.axw = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.axv ; 2 uses
  %i.axx = load i32, ptr %i.axw, align 4, !tbaa !74
  %i.axy = add nsw i32 %i.axx, 1
  store i32 %i.axy, ptr %i.axw, align 4, !tbaa !74
  %i.axz = getelementptr i8, ptr %i.arh, i64 58
  %i.aya = load i16, ptr %i.axz, align 2, !tbaa !79
  %i.ayb = zext i16 %i.aya to i64
  %i.ayc = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.ayb ; 2 uses
  %i.ayd = load i32, ptr %i.ayc, align 4, !tbaa !74
  %i.aye = add nsw i32 %i.ayd, 1
  store i32 %i.aye, ptr %i.ayc, align 4, !tbaa !74
  %i.ayf = getelementptr i8, ptr %i.arh, i64 60
  %i.ayg = load i16, ptr %i.ayf, align 2, !tbaa !79
  %i.ayh = zext i16 %i.ayg to i64
  %i.ayi = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.ayh ; 2 uses
  %i.ayj = load i32, ptr %i.ayi, align 4, !tbaa !74
  %i.ayk = add nsw i32 %i.ayj, 1
  store i32 %i.ayk, ptr %i.ayi, align 4, !tbaa !74
  %i.ayl = getelementptr i8, ptr %i.arh, i64 62
  %i.aym = load i16, ptr %i.ayl, align 2, !tbaa !79
  %i.ayn = zext i16 %i.aym to i64
  %i.ayo = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.ayn ; 2 uses
  %i.ayp = load i32, ptr %i.ayo, align 4, !tbaa !74
  %i.ayq = add nsw i32 %i.ayp, 1
  store i32 %i.ayq, ptr %i.ayo, align 4, !tbaa !74
  %i.ayr = getelementptr i8, ptr %i.arh, i64 64
  %i.ays = load i16, ptr %i.ayr, align 2, !tbaa !79
  %i.ayt = zext i16 %i.ays to i64
  %i.ayu = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.ayt ; 2 uses
  %i.ayv = load i32, ptr %i.ayu, align 4, !tbaa !74
  %i.ayw = add nsw i32 %i.ayv, 1
  store i32 %i.ayw, ptr %i.ayu, align 4, !tbaa !74
  %i.ayx = getelementptr i8, ptr %i.arh, i64 66
  %i.ayy = load i16, ptr %i.ayx, align 2, !tbaa !79
  %i.ayz = zext i16 %i.ayy to i64
  %i.aza = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.ayz ; 2 uses
  %i.azb = load i32, ptr %i.aza, align 4, !tbaa !74
  %i.azc = add nsw i32 %i.azb, 1
  store i32 %i.azc, ptr %i.aza, align 4, !tbaa !74
  %i.azd = getelementptr i8, ptr %i.arh, i64 68
  %i.aze = load i16, ptr %i.azd, align 2, !tbaa !79
  %i.azf = zext i16 %i.aze to i64
  %i.azg = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.azf ; 2 uses
  %i.azh = load i32, ptr %i.azg, align 4, !tbaa !74
  %i.azi = add nsw i32 %i.azh, 1
  store i32 %i.azi, ptr %i.azg, align 4, !tbaa !74
  %i.azj = getelementptr i8, ptr %i.arh, i64 70
  %i.azk = load i16, ptr %i.azj, align 2, !tbaa !79
  %i.azl = zext i16 %i.azk to i64
  %i.azm = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.azl ; 2 uses
  %i.azn = load i32, ptr %i.azm, align 4, !tbaa !74
  %i.azo = add nsw i32 %i.azn, 1
  store i32 %i.azo, ptr %i.azm, align 4, !tbaa !74
  %i.azp = getelementptr i8, ptr %i.arh, i64 72
  %i.azq = load i16, ptr %i.azp, align 2, !tbaa !79
  %i.azr = zext i16 %i.azq to i64
  %i.azs = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.azr ; 2 uses
  %i.azt = load i32, ptr %i.azs, align 4, !tbaa !74
  %i.azu = add nsw i32 %i.azt, 1
  store i32 %i.azu, ptr %i.azs, align 4, !tbaa !74
  %i.azv = getelementptr i8, ptr %i.arh, i64 74
  %i.azw = load i16, ptr %i.azv, align 2, !tbaa !79
  %i.azx = zext i16 %i.azw to i64
  %i.azy = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.azx ; 2 uses
  %i.azz = load i32, ptr %i.azy, align 4, !tbaa !74
  %i.baa = add nsw i32 %i.azz, 1
  store i32 %i.baa, ptr %i.azy, align 4, !tbaa !74
  %i.bab = getelementptr i8, ptr %i.arh, i64 76
  %i.bac = load i16, ptr %i.bab, align 2, !tbaa !79
  %i.bad = zext i16 %i.bac to i64
  %i.bae = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.bad ; 2 uses
  %i.baf = load i32, ptr %i.bae, align 4, !tbaa !74
  %i.bag = add nsw i32 %i.baf, 1
  store i32 %i.bag, ptr %i.bae, align 4, !tbaa !74
  %i.bah = getelementptr i8, ptr %i.arh, i64 78
  %i.bai = load i16, ptr %i.bah, align 2, !tbaa !79
  %i.baj = zext i16 %i.bai to i64
  %i.bak = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.baj ; 2 uses
  %i.bal = load i32, ptr %i.bak, align 4, !tbaa !74
  %i.bam = add nsw i32 %i.bal, 1
  store i32 %i.bam, ptr %i.bak, align 4, !tbaa !74
  %i.ban = getelementptr i8, ptr %i.arh, i64 80
  %i.bao = load i16, ptr %i.ban, align 2, !tbaa !79
  %i.bap = zext i16 %i.bao to i64
  %i.baq = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.bap ; 2 uses
  %i.bar = load i32, ptr %i.baq, align 4, !tbaa !74
  %i.bas = add nsw i32 %i.bar, 1
  store i32 %i.bas, ptr %i.baq, align 4, !tbaa !74
  %i.bat = getelementptr i8, ptr %i.arh, i64 82
  %i.bau = load i16, ptr %i.bat, align 2, !tbaa !79
  %i.bav = zext i16 %i.bau to i64
  %i.baw = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.bav ; 2 uses
  %i.bax = load i32, ptr %i.baw, align 4, !tbaa !74
  %i.bay = add nsw i32 %i.bax, 1
  store i32 %i.bay, ptr %i.baw, align 4, !tbaa !74
  %i.baz = getelementptr i8, ptr %i.arh, i64 84
  %i.bba = load i16, ptr %i.baz, align 2, !tbaa !79
  %i.bbb = zext i16 %i.bba to i64
  %i.bbc = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.bbb ; 2 uses
  %i.bbd = load i32, ptr %i.bbc, align 4, !tbaa !74
  %i.bbe = add nsw i32 %i.bbd, 1
  store i32 %i.bbe, ptr %i.bbc, align 4, !tbaa !74
  %i.bbf = getelementptr i8, ptr %i.arh, i64 86
  %i.bbg = load i16, ptr %i.bbf, align 2, !tbaa !79
  %i.bbh = zext i16 %i.bbg to i64
  %i.bbi = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.bbh ; 2 uses
  %i.bbj = load i32, ptr %i.bbi, align 4, !tbaa !74
  %i.bbk = add nsw i32 %i.bbj, 1
  store i32 %i.bbk, ptr %i.bbi, align 4, !tbaa !74
  %i.bbl = getelementptr i8, ptr %i.arh, i64 88
  %i.bbm = load i16, ptr %i.bbl, align 2, !tbaa !79
  %i.bbn = zext i16 %i.bbm to i64
  %i.bbo = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.bbn ; 2 uses
  %i.bbp = load i32, ptr %i.bbo, align 4, !tbaa !74
  %i.bbq = add nsw i32 %i.bbp, 1
  store i32 %i.bbq, ptr %i.bbo, align 4, !tbaa !74
  %i.bbr = getelementptr i8, ptr %i.arh, i64 90
  %i.bbs = load i16, ptr %i.bbr, align 2, !tbaa !79
  %i.bbt = zext i16 %i.bbs to i64
  %i.bbu = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.bbt ; 2 uses
  %i.bbv = load i32, ptr %i.bbu, align 4, !tbaa !74
  %i.bbw = add nsw i32 %i.bbv, 1
  store i32 %i.bbw, ptr %i.bbu, align 4, !tbaa !74
  %i.bbx = getelementptr i8, ptr %i.arh, i64 92
  %i.bby = load i16, ptr %i.bbx, align 2, !tbaa !79
  %i.bbz = zext i16 %i.bby to i64
  %i.bca = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.bbz ; 2 uses
  %i.bcb = load i32, ptr %i.bca, align 4, !tbaa !74
  %i.bcc = add nsw i32 %i.bcb, 1
  store i32 %i.bcc, ptr %i.bca, align 4, !tbaa !74
  %i.bcd = getelementptr i8, ptr %i.arh, i64 94
  %i.bce = load i16, ptr %i.bcd, align 2, !tbaa !79
  %i.bcf = zext i16 %i.bce to i64
  %i.bcg = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.bcf ; 2 uses
  %i.bch = load i32, ptr %i.bcg, align 4, !tbaa !74
  %i.bci = add nsw i32 %i.bch, 1
  store i32 %i.bci, ptr %i.bcg, align 4, !tbaa !74
  %i.bcj = getelementptr i8, ptr %i.arh, i64 96
  %i.bck = load i16, ptr %i.bcj, align 2, !tbaa !79
  %i.bcl = zext i16 %i.bck to i64
  %i.bcm = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.bcl ; 2 uses
  %i.bcn = load i32, ptr %i.bcm, align 4, !tbaa !74
  %i.bco = add nsw i32 %i.bcn, 1
  store i32 %i.bco, ptr %i.bcm, align 4, !tbaa !74
  %i.bcp = getelementptr i8, ptr %i.arh, i64 98
  %i.bcq = load i16, ptr %i.bcp, align 2, !tbaa !79
  %i.bcr = zext i16 %i.bcq to i64
  %i.bcs = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.bcr ; 2 uses
  %i.bct = load i32, ptr %i.bcs, align 4, !tbaa !74
  %i.bcu = add nsw i32 %i.bct, 1
  store i32 %i.bcu, ptr %i.bcs, align 4, !tbaa !74
  br label %.loopexit1971.i

.lr.ph2140.i.new:                                 ; preds = %.prol.loopexit, %.lr.ph2140.i.new
  %indvars.iv2391.i = phi i64 [ %indvars.iv.next2392.i.3, %.lr.ph2140.i.new ], [ %indvars.iv2391.i.unr, %.prol.loopexit ] ; 5 uses
  %i.bcv = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %indvars.iv2391.i
  %i.bcw = load i16, ptr %i.bcv, align 2, !tbaa !79
  %i.bcx = zext i16 %i.bcw to i64
  %i.bcy = getelementptr inbounds nuw [4 x i8], ptr %i.aqt, i64 %i.bcx ; 2 uses
  %i.bcz = load i32, ptr %i.bcy, align 4, !tbaa !74
  %i.bda = add nsw i32 %i.bcz, 1
  store i32 %i.bda, ptr %i.bcy, align 4, !tbaa !74
  %i.bdb = getelementptr [2 x i8], ptr %i.jr, i64 %indvars.iv2391.i
  %i.bdc = getelementptr i8, ptr %i.bdb, i64 2
  %i.bdd = load i16, ptr %i.bdc, align 2, !tbaa !79
  %i.bde = zext i16 %i.bdd to i64
  %i.bdf = getelementptr inbounds nuw [4 x i8], ptr %i.aqt, i64 %i.bde ; 2 uses
  %i.bdg = load i32, ptr %i.bdf, align 4, !tbaa !74
  %i.bdh = add nsw i32 %i.bdg, 1
  store i32 %i.bdh, ptr %i.bdf, align 4, !tbaa !74
  %i.bdi = getelementptr [2 x i8], ptr %i.jr, i64 %indvars.iv2391.i
  %i.bdj = getelementptr i8, ptr %i.bdi, i64 4
  %i.bdk = load i16, ptr %i.bdj, align 2, !tbaa !79
  %i.bdl = zext i16 %i.bdk to i64
  %i.bdm = getelementptr inbounds nuw [4 x i8], ptr %i.aqt, i64 %i.bdl ; 2 uses
  %i.bdn = load i32, ptr %i.bdm, align 4, !tbaa !74
  %i.bdo = add nsw i32 %i.bdn, 1
  store i32 %i.bdo, ptr %i.bdm, align 4, !tbaa !74
  %i.bdp = getelementptr [2 x i8], ptr %i.jr, i64 %indvars.iv2391.i
  %i.bdq = getelementptr i8, ptr %i.bdp, i64 6
  %i.bdr = load i16, ptr %i.bdq, align 2, !tbaa !79
  %i.bds = zext i16 %i.bdr to i64
  %i.bdt = getelementptr inbounds nuw [4 x i8], ptr %i.aqt, i64 %i.bds ; 2 uses
  %i.bdu = load i32, ptr %i.bdt, align 4, !tbaa !74
  %i.bdv = add nsw i32 %i.bdu, 1
  store i32 %i.bdv, ptr %i.bdt, align 4, !tbaa !74
  %indvars.iv.next2392.i.3 = add nsw i64 %indvars.iv2391.i, 4 ; 2 uses
  %lftr.wideiv2395.i.3 = trunc i64 %indvars.iv.next2392.i.3 to i32
  %exitcond2396.not.i.3 = icmp eq i32 %i.aqv, %lftr.wideiv2395.i.3
  br i1 %exitcond2396.not.i.3, label %.loopexit1971.i, label %.lr.ph2140.i.new, !llvm.loop !39

.loopexit1971.i:                                  ; preds = %.prol.loopexit, %.lr.ph2140.i.new, %bb.bb, %.preheader1970.i
  %i.bdw = add nsw i32 %spec.select.i127, 1       ; 2 uses
  %i.bdx = load i32, ptr %i.nv, align 4, !tbaa !80 ; 2 uses
  %.not1510.i = icmp slt i32 %i.bdw, %i.bdx
  br i1 %.not1510.i, label %.lr.ph2146.i, label %._crit_edge2147.loopexit.i

._crit_edge2147.loopexit.i:                       ; preds = %.loopexit1971.i
  %i.bdy = trunc nuw i64 %indvars.iv.next2398.i to i32
  %i.bdz = lshr i32 %i.aqm, 3
  br label %._crit_edge2147.i

._crit_edge2147.i:                                ; preds = %._crit_edge2147.loopexit.i, %.loopexit1976.i
  %.11488.lcssa.i = phi i32 [ 0, %.loopexit1976.i ], [ %i.bdy, %._crit_edge2147.loopexit.i ] ; 6 uses
  %.01476.lcssa.i = phi i32 [ 0, %.loopexit1976.i ], [ %i.bdz, %._crit_edge2147.loopexit.i ]
  %i.bea = load i32, ptr %i.nw, align 8, !tbaa !64
  %i.beb = icmp sgt i32 %i.bea, 2
  br i1 %i.beb, label %bb.bc, label %.preheader

bb.bc:                                            ; preds = %._crit_edge2147.i
  %i.bec = load ptr, ptr @stderr, align 8, !tbaa !66
  %i.bed = add nuw nsw i32 %.014892152.i, 1
  %i.bee = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bec, ptr noundef nonnull @.str.4, i32 noundef %i.bed, i32 noundef %.01476.lcssa.i) #10 ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %bb.bc
  %indvars.iv2400.i = phi i64 [ 0, %bb.bc ], [ %indvars.iv.next2401.i, %bb.bd ] ; 2 uses
  %i.bef = load ptr, ptr @stderr, align 8, !tbaa !66
  %i.beg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv2400.i
  %i.beh = load i32, ptr %i.beg, align 4, !tbaa !74
  %i.bei = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bef, ptr noundef nonnull @.str.5, i32 noundef %i.beh) #10 ; 0 uses
  %indvars.iv.next2401.i = add nuw nsw i64 %indvars.iv2400.i, 1 ; 2 uses
  %exitcond2404.not.i = icmp eq i64 %indvars.iv.next2401.i, %i.ow
  br i1 %exitcond2404.not.i, label %bb.be, label %bb.bd, !llvm.loop !40

bb.be:                                            ; preds = %bb.bd
  %i.bej = load ptr, ptr @stderr, align 8, !tbaa !66
  %fputc.i = call i32 @fputc(i32 10, ptr %i.bej)  ; 0 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.be, %._crit_edge2147.i
  br label %bb.bf

bb.bf:                                            ; preds = %.preheader, %bb.bf
  %indvars.iv2405.i = phi i64 [ %indvars.iv.next2406.i, %bb.bf ], [ 0, %.preheader ] ; 3 uses
  %i.bek = getelementptr inbounds nuw [258 x i8], ptr %i.og, i64 %indvars.iv2405.i
  %i.bel = getelementptr inbounds nuw [1032 x i8], ptr %i.oy, i64 %indvars.iv2405.i
  call void @BZ2_hbMakeCodeLengths(ptr noundef nonnull %i.bek, ptr noundef nonnull %i.bel, i32 noundef %i.oe, i32 noundef 17) #11
  %indvars.iv.next2406.i = add nuw nsw i64 %indvars.iv2405.i, 1 ; 2 uses
  %exitcond2409.not.i = icmp eq i64 %indvars.iv.next2406.i, %i.ow
  br i1 %exitcond2409.not.i, label %bb.bg, label %bb.bf, !llvm.loop !41

bb.bg:                                            ; preds = %bb.bf
  %i.bem = add nuw nsw i32 %.014892152.i, 1       ; 2 uses
  %exitcond2410.not.i = icmp eq i32 %i.bem, 4
  br i1 %exitcond2410.not.i, label %bb.bh, label %.preheader1978.i, !llvm.loop !42

bb.bh:                                            ; preds = %bb.bg
  %i.ben = icmp slt i32 %.11488.lcssa.i, 18003
  br i1 %i.ben, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @BZ2_bz__AssertH__fail(i32 noundef 3003) #11
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %min.iters.check1138 = icmp samesign ult i32 %.01481.i, 4
  br i1 %min.iters.check1138, label %scalar.ph1137.preheader, label %vector.body1141

vector.body1141:                                  ; preds = %bb.bj
  %n.vec1140 = and i64 %i.ow, 4                   ; 2 uses
  store <4 x i8> <i8 0, i8 1, i8 2, i8 3>, ptr %i.c, align 4, !tbaa !19
  %cmp.n1147 = icmp eq i64 %n.vec1140, %i.ow
  br i1 %cmp.n1147, label %.preheader1969.i, label %scalar.ph1137.preheader

scalar.ph1137.preheader:                          ; preds = %bb.bj, %vector.body1141
  %indvars.iv2411.i.ph = phi i64 [ 0, %bb.bj ], [ %n.vec1140, %vector.body1141 ]
  br label %scalar.ph1137

.preheader1969.i:                                 ; preds = %scalar.ph1137, %vector.body1141
  %i.beo = icmp sgt i32 %.11488.lcssa.i, 0        ; 2 uses
  br i1 %i.beo, label %.lr.ph2165.i, label %._crit_edge2166.i

.lr.ph2165.i:                                     ; preds = %.preheader1969.i
  %.promoted.i = load i8, ptr %i.c, align 4
  %i.bep = getelementptr inbounds nuw i8, ptr %0, i64 19706
  %wide.trip.count2421.i = zext nneg i32 %.11488.lcssa.i to i64
  br label %bb.bk

scalar.ph1137:                                    ; preds = %scalar.ph1137.preheader, %scalar.ph1137
  %indvars.iv2411.i = phi i64 [ %indvars.iv.next2412.i, %scalar.ph1137 ], [ %indvars.iv2411.i.ph, %scalar.ph1137.preheader ] ; 3 uses
  %i.beq = trunc i64 %indvars.iv2411.i to i8
  %i.ber = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv2411.i
  store i8 %i.beq, ptr %i.ber, align 1, !tbaa !19
  %indvars.iv.next2412.i = add nuw nsw i64 %indvars.iv2411.i, 1 ; 2 uses
  %exitcond2415.not.i = icmp eq i64 %indvars.iv.next2412.i, %i.ow
  br i1 %exitcond2415.not.i, label %.preheader1969.i, label %scalar.ph1137, !llvm.loop !43

bb.bk:                                            ; preds = %._crit_edge2159.i, %.lr.ph2165.i
  %indvars.iv2418.i = phi i64 [ 0, %.lr.ph2165.i ], [ %indvars.iv.next2419.i, %._crit_edge2159.i ] ; 3 uses
  %.01464.lcssa21622163.i = phi i8 [ %.promoted.i, %.lr.ph2165.i ], [ %.01464.lcssa.i, %._crit_edge2159.i ] ; 3 uses
  %i.bes = getelementptr inbounds nuw i8, ptr %i.pg, i64 %indvars.iv2418.i
  %i.bet = load i8, ptr %i.bes, align 1, !tbaa !19 ; 3 uses
  %.not15092154.i = icmp eq i8 %i.bet, %.01464.lcssa21622163.i
  br i1 %.not15092154.i, label %._crit_edge2159.i, label %.lr.ph2158.i

.lr.ph2158.i:                                     ; preds = %bb.bk, %.lr.ph2158.i
  %indvars.iv2416.i = phi i64 [ %indvars.iv.next2417.i, %.lr.ph2158.i ], [ 0, %bb.bk ]
  %.014642156.i = phi i8 [ %i.bev, %.lr.ph2158.i ], [ %.01464.lcssa21622163.i, %bb.bk ]
  %indvars.iv.next2417.i = add nuw nsw i64 %indvars.iv2416.i, 1 ; 3 uses
  %i.beu = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next2417.i ; 2 uses
  %i.bev = load i8, ptr %i.beu, align 1, !tbaa !19 ; 2 uses
  store i8 %.014642156.i, ptr %i.beu, align 1, !tbaa !19
  %.not1509.i = icmp eq i8 %i.bet, %i.bev
  br i1 %.not1509.i, label %._crit_edge2159.loopexit.i, label %.lr.ph2158.i, !llvm.loop !44

._crit_edge2159.loopexit.i:                       ; preds = %.lr.ph2158.i
  %i.bew = trunc i64 %indvars.iv.next2417.i to i8
  br label %._crit_edge2159.i

._crit_edge2159.i:                                ; preds = %._crit_edge2159.loopexit.i, %bb.bk
  %.01465.lcssa.i = phi i8 [ 0, %bb.bk ], [ %i.bew, %._crit_edge2159.loopexit.i ]
  %.01464.lcssa.i = phi i8 [ %.01464.lcssa21622163.i, %bb.bk ], [ %i.bet, %._crit_edge2159.loopexit.i ]
  %i.bex = getelementptr inbounds nuw i8, ptr %i.bep, i64 %indvars.iv2418.i
  store i8 %.01465.lcssa.i, ptr %i.bex, align 1, !tbaa !19
  %indvars.iv.next2419.i = add nuw nsw i64 %indvars.iv2418.i, 1 ; 2 uses
  %exitcond2422.not.i = icmp eq i64 %indvars.iv.next2419.i, %wide.trip.count2421.i
  br i1 %exitcond2422.not.i, label %._crit_edge2166.i, label %bb.bk, !llvm.loop !45

._crit_edge2166.i:                                ; preds = %._crit_edge2159.i, %.preheader1969.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.bey = getelementptr inbounds nuw i8, ptr %0, i64 39256 ; 3 uses
  %min.iters.check1150 = icmp slt i32 %i.oe, 8
  %n.vec1152 = and i64 %wide.trip.count.i122, 2147483640 ; 3 uses
  %cmp.n1163 = icmp eq i64 %n.vec1152, %wide.trip.count.i122
  br label %.preheader1968.i

.preheader1968.i:                                 ; preds = %.thread.i, %._crit_edge2166.i
  %indvars.iv2428.i = phi i64 [ 0, %._crit_edge2166.i ], [ %indvars.iv.next2429.i, %.thread.i ] ; 4 uses
  br i1 %i.of, label %.lr.ph2171.i, label %.thread.i

.lr.ph2171.i:                                     ; preds = %.preheader1968.i
  %i.bez = getelementptr inbounds nuw [258 x i8], ptr %i.og, i64 %indvars.iv2428.i ; 2 uses
  br i1 %min.iters.check1150, label %scalar.ph1149.preheader, label %vector.body1153

vector.body1153:                                  ; preds = %.lr.ph2171.i, %vector.body1153
  %index1154 = phi i64 [ %index.next1160, %vector.body1153 ], [ 0, %.lr.ph2171.i ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bfe, %vector.body1153 ], [ zeroinitializer, %.lr.ph2171.i ]
  %vec.phi1155 = phi <4 x i32> [ %i.bff, %vector.body1153 ], [ zeroinitializer, %.lr.ph2171.i ]
  %vec.phi1156 = phi <4 x i32> [ %i.bfg, %vector.body1153 ], [ splat (i32 32), %.lr.ph2171.i ]
  %vec.phi1157 = phi <4 x i32> [ %i.bfh, %vector.body1153 ], [ splat (i32 32), %.lr.ph2171.i ]
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bez, i64 %index1154 ; 2 uses
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bfa, i64 4
  %wide.load1158 = load <4 x i8>, ptr %i.bfa, align 1, !tbaa !19
  %wide.load1159 = load <4 x i8>, ptr %i.bfb, align 1, !tbaa !19
  %i.bfc = zext <4 x i8> %wide.load1158 to <4 x i32> ; 2 uses
  %i.bfd = zext <4 x i8> %wide.load1159 to <4 x i32> ; 2 uses
  %i.bfe = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.bfc) ; 2 uses
  %i.bff = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi1155, <4 x i32> %i.bfd) ; 2 uses
  %i.bfg = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.phi1156, <4 x i32> %i.bfc) ; 2 uses
  %i.bfh = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.phi1157, <4 x i32> %i.bfd) ; 2 uses
  %index.next1160 = add nuw i64 %index1154, 8     ; 2 uses
  %i.bfi = icmp eq i64 %index.next1160, %n.vec1152
  br i1 %i.bfi, label %middle.block1161, label %vector.body1153, !llvm.loop !46

middle.block1161:                                 ; preds = %vector.body1153
  %rdx.minmax = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.bfe, <4 x i32> %i.bff)
  %i.bfj = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %rdx.minmax1162 = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bfg, <4 x i32> %i.bfh)
  %i.bfk = call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %rdx.minmax1162) ; 2 uses
  br i1 %cmp.n1163, label %._crit_edge2172.i, label %scalar.ph1149.preheader

scalar.ph1149.preheader:                          ; preds = %.lr.ph2171.i, %middle.block1161
  %indvars.iv2423.i.ph = phi i64 [ 0, %.lr.ph2171.i ], [ %n.vec1152, %middle.block1161 ]
  %.014832169.i.ph = phi i32 [ 0, %.lr.ph2171.i ], [ %i.bfj, %middle.block1161 ]
  %.014852168.i.ph = phi i32 [ 32, %.lr.ph2171.i ], [ %i.bfk, %middle.block1161 ]
  br label %scalar.ph1149

scalar.ph1149:                                    ; preds = %scalar.ph1149.preheader, %scalar.ph1149
  %indvars.iv2423.i = phi i64 [ %indvars.iv.next2424.i, %scalar.ph1149 ], [ %indvars.iv2423.i.ph, %scalar.ph1149.preheader ] ; 2 uses
  %.014832169.i = phi i32 [ %spec.select1524.i, %scalar.ph1149 ], [ %.014832169.i.ph, %scalar.ph1149.preheader ]
  %.014852168.i = phi i32 [ %.11486.i, %scalar.ph1149 ], [ %.014852168.i.ph, %scalar.ph1149.preheader ]
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bez, i64 %indvars.iv2423.i
  %i.bfm = load i8, ptr %i.bfl, align 1, !tbaa !19
  %i.bfn = zext i8 %i.bfm to i32                  ; 2 uses
  %spec.select1524.i = call i32 @llvm.umax.i32(i32 %.014832169.i, i32 %i.bfn) ; 2 uses
  %.11486.i = call i32 @llvm.umin.i32(i32 %.014852168.i, i32 %i.bfn) ; 2 uses
  %indvars.iv.next2424.i = add nuw nsw i64 %indvars.iv2423.i, 1 ; 2 uses
  %exitcond2427.not.i = icmp eq i64 %indvars.iv.next2424.i, %wide.trip.count.i122
  br i1 %exitcond2427.not.i, label %._crit_edge2172.i, label %scalar.ph1149, !llvm.loop !47

._crit_edge2172.i:                                ; preds = %scalar.ph1149, %middle.block1161
  %spec.select1524.i.lcssa = phi i32 [ %i.bfj, %middle.block1161 ], [ %spec.select1524.i, %scalar.ph1149 ] ; 3 uses
  %.11486.i.lcssa = phi i32 [ %i.bfk, %middle.block1161 ], [ %.11486.i, %scalar.ph1149 ] ; 2 uses
  %i.bfo = icmp samesign ugt i32 %spec.select1524.i.lcssa, 17
  br i1 %i.bfo, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %._crit_edge2172.i
end_hunk_1
