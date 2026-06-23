inline.NumInlined: 12
inline.NumDeleted: 7
begin_hunk_0_@nsis_BZ2_bzDecompress:bb.a
vector.body493.2:                                 ; preds = %vector.body493.1
  %i.akh = add nuw nsw i64 %i.ajc, 4294967231
  %i.aki = and i64 %i.akh, 4294967295
  %i.akj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aki ; 2 uses
  %i.akk = getelementptr inbounds i8, ptr %i.akj, i64 -15
  %i.akl = getelementptr inbounds i8, ptr %i.akj, i64 -31
  %wide.load.2 = load <16 x i8>, ptr %i.akk, align 1, !tbaa !34
  %wide.load495.2 = load <16 x i8>, ptr %i.akl, align 1, !tbaa !34
  %i.akm = getelementptr i8, ptr %i.a, i64 %i.ajc ; 2 uses
  %i.akn = getelementptr i8, ptr %i.akm, i64 -79
  %i.ako = getelementptr i8, ptr %i.akm, i64 -95
  store <16 x i8> %wide.load.2, ptr %i.akn, align 1, !tbaa !34
  store <16 x i8> %wide.load495.2, ptr %i.ako, align 1, !tbaa !34
  %i.akp = icmp eq i64 %n.vec492, 96
  br i1 %i.akp, label %middle.block497, label %vector.body493.3

vector.body493.3:                                 ; preds = %vector.body493.2
  %i.akq = add nuw nsw i64 %i.ajc, 4294967199
  %i.akr = and i64 %i.akq, 4294967295
  %i.aks = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.akr ; 2 uses
  %i.akt = getelementptr inbounds i8, ptr %i.aks, i64 -15
  %i.aku = getelementptr inbounds i8, ptr %i.aks, i64 -31
  %wide.load.3 = load <16 x i8>, ptr %i.akt, align 1, !tbaa !34
  %wide.load495.3 = load <16 x i8>, ptr %i.aku, align 1, !tbaa !34
  %i.akv = getelementptr i8, ptr %i.a, i64 %i.ajc ; 2 uses
  %i.akw = getelementptr i8, ptr %i.akv, i64 -111
  %i.akx = getelementptr i8, ptr %i.akv, i64 -127
  store <16 x i8> %wide.load.3, ptr %i.akw, align 1, !tbaa !34
  store <16 x i8> %wide.load495.3, ptr %i.akx, align 1, !tbaa !34
  %i.aky = icmp eq i64 %n.vec492, 128
  br i1 %i.aky, label %middle.block497, label %vector.body493.4

vector.body493.4:                                 ; preds = %vector.body493.3
  %i.akz = add nuw nsw i64 %i.ajc, 4294967167
  %i.ala = and i64 %i.akz, 4294967295
  %i.alb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ala ; 2 uses
  %i.alc = getelementptr inbounds i8, ptr %i.alb, i64 -15
  %i.ald = getelementptr inbounds i8, ptr %i.alb, i64 -31
  %wide.load.4 = load <16 x i8>, ptr %i.alc, align 1, !tbaa !34
  %wide.load495.4 = load <16 x i8>, ptr %i.ald, align 1, !tbaa !34
  %i.ale = getelementptr i8, ptr %i.a, i64 %i.ajc ; 2 uses
  %i.alf = getelementptr i8, ptr %i.ale, i64 -143
  %i.alg = getelementptr i8, ptr %i.ale, i64 -159
  store <16 x i8> %wide.load.4, ptr %i.alf, align 1, !tbaa !34
  store <16 x i8> %wide.load495.4, ptr %i.alg, align 1, !tbaa !34
  %i.alh = icmp eq i64 %n.vec492, 160
  br i1 %i.alh, label %middle.block497, label %vector.body493.5

vector.body493.5:                                 ; preds = %vector.body493.4
  %i.ali = add nuw nsw i64 %i.ajc, 4294967135
  %i.alj = and i64 %i.ali, 4294967295
  %i.alk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.alj ; 2 uses
  %i.all = getelementptr inbounds i8, ptr %i.alk, i64 -15
  %i.alm = getelementptr inbounds i8, ptr %i.alk, i64 -31
  %wide.load.5 = load <16 x i8>, ptr %i.all, align 1, !tbaa !34
  %wide.load495.5 = load <16 x i8>, ptr %i.alm, align 1, !tbaa !34
  %i.aln = getelementptr i8, ptr %i.a, i64 %i.ajc ; 2 uses
  %i.alo = getelementptr i8, ptr %i.aln, i64 -175
  %i.alp = getelementptr i8, ptr %i.aln, i64 -191
  store <16 x i8> %wide.load.5, ptr %i.alo, align 1, !tbaa !34
  store <16 x i8> %wide.load495.5, ptr %i.alp, align 1, !tbaa !34
  %i.alq = icmp eq i64 %n.vec492, 192
  br i1 %i.alq, label %middle.block497, label %vector.body493.6

vector.body493.6:                                 ; preds = %vector.body493.5
  %i.alr = add nuw nsw i64 %i.ajc, 4294967103
  %i.als = and i64 %i.alr, 4294967295
  %i.alt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.als ; 2 uses
  %i.alu = getelementptr inbounds i8, ptr %i.alt, i64 -15
  %i.alv = getelementptr inbounds i8, ptr %i.alt, i64 -31
  %wide.load.6 = load <16 x i8>, ptr %i.alu, align 1, !tbaa !34
  %wide.load495.6 = load <16 x i8>, ptr %i.alv, align 1, !tbaa !34
  %i.alw = getelementptr i8, ptr %i.a, i64 %i.ajc ; 2 uses
  %i.alx = getelementptr i8, ptr %i.alw, i64 -207
  %i.aly = getelementptr i8, ptr %i.alw, i64 -223
  store <16 x i8> %wide.load.6, ptr %i.alx, align 1, !tbaa !34
  store <16 x i8> %wide.load495.6, ptr %i.aly, align 1, !tbaa !34
  br label %middle.block497

middle.block497:                                  ; preds = %vector.body493.6, %vector.body493.5, %vector.body493.4, %vector.body493.3, %vector.body493.2, %vector.body493.1, %vector.ph490
  %cmp.n498 = icmp eq i64 %n.vec492, %i.ajc
  br i1 %cmp.n498, label %._crit_edge1526.i, label %vec.epilog.iter.check503

vec.epilog.iter.check503:                         ; preds = %middle.block497
  %min.epilog.iters.check504 = icmp eq i64 %n.mod.vf491, 0
  br i1 %min.epilog.iters.check504, label %.lr.ph1525.i.preheader, label %vec.epilog.ph505, !prof !85

vec.epilog.ph505:                                 ; preds = %vector.main.loop.iter.check488, %vec.epilog.iter.check503
  %vec.epilog.resume.val499 = phi i64 [ %n.vec492, %vec.epilog.iter.check503 ], [ 0, %vector.main.loop.iter.check488 ]
  %n.vec507 = and i64 %i.ajc, 252                 ; 2 uses
  %i.alz = and i64 %i.ajc, 3
  br label %vec.epilog.vector.body508

vec.epilog.vector.body508:                        ; preds = %vec.epilog.vector.body508, %vec.epilog.ph505
  %index509 = phi i64 [ %vec.epilog.resume.val499, %vec.epilog.ph505 ], [ %index.next511, %vec.epilog.vector.body508 ] ; 2 uses
  %i.ama = sub i64 %i.ajc, %index509              ; 2 uses
  %i.amb = add nuw nsw i64 %i.ama, 4294967295
  %i.amc = and i64 %i.amb, 4294967295
  %i.amd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.amc
  %i.ame = getelementptr inbounds i8, ptr %i.amd, i64 -3
  %wide.load510 = load <4 x i8>, ptr %i.ame, align 1, !tbaa !34
  %i.amf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ama
  %i.amg = getelementptr inbounds i8, ptr %i.amf, i64 -3
  store <4 x i8> %wide.load510, ptr %i.amg, align 1, !tbaa !34
  %index.next511 = add nuw i64 %index509, 4       ; 2 uses
  %i.amh = icmp eq i64 %index.next511, %n.vec507
  br i1 %i.amh, label %vec.epilog.middle.block512, label %vec.epilog.vector.body508, !llvm.loop !88

vec.epilog.middle.block512:                       ; preds = %vec.epilog.vector.body508
  %cmp.n513 = icmp eq i64 %n.vec507, %i.ajc
  br i1 %cmp.n513, label %._crit_edge1526.i, label %.lr.ph1525.i.preheader

.lr.ph1525.i.preheader:                           ; preds = %vector.memcheck, %vector.scevcheck485, %iter.check501, %vec.epilog.iter.check503, %vec.epilog.middle.block512
  %indvars.iv.i.ph = phi i64 [ %i.ajc, %iter.check501 ], [ %i.ajc, %vector.scevcheck485 ], [ %i.ajc, %vector.memcheck ], [ %i.ajo, %vec.epilog.iter.check503 ], [ %i.alz, %vec.epilog.middle.block512 ] ; 6 uses
  %i.ami = trunc nuw i64 %indvars.iv.i.ph to i8
  %xtraiter = and i8 %i.ami, 1
  %lcmp.mod.not = icmp eq i8 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1525.i.prol.loopexit, label %.lr.ph1525.i.prol

.lr.ph1525.i.prol:                                ; preds = %.lr.ph1525.i.preheader
  %i.amj = add nuw nsw i64 %indvars.iv.i.ph, 4294967295
  %i.amk = and i64 %i.amj, 4294967295
  %i.aml = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.amk
  %i.amm = load i8, ptr %i.aml, align 1, !tbaa !34
  %i.amn = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.ph
  store i8 %i.amm, ptr %i.amn, align 1, !tbaa !34
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.ph, -1
  br label %.lr.ph1525.i.prol.loopexit

.lr.ph1525.i.prol.loopexit:                       ; preds = %.lr.ph1525.i.prol, %.lr.ph1525.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph1525.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph1525.i.prol ]
  %i.amo = icmp eq i64 %indvars.iv.i.ph, 1
  br i1 %i.amo, label %._crit_edge1526.i, label %.lr.ph1525.i

.lr.ph1525.i:                                     ; preds = %.lr.ph1525.i.prol.loopexit, %.lr.ph1525.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph1525.i ], [ %indvars.iv.i.unr, %.lr.ph1525.i.prol.loopexit ] ; 5 uses
  %i.amp = add nuw nsw i64 %indvars.iv.i, 4294967295
  %i.amq = and i64 %i.amp, 4294967295
  %i.amr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.amq
  %i.ams = load i8, ptr %i.amr, align 1, !tbaa !34
  %i.amt = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %i.ams, ptr %i.amt, align 1, !tbaa !34
  %i.amu = add nsw i64 %indvars.iv.i, 4294967294
  %i.amv = and i64 %i.amu, 4294967295
  %i.amw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.amv
  %i.amx = load i8, ptr %i.amw, align 1, !tbaa !34
  %i.amy = getelementptr i8, ptr %i.a, i64 %indvars.iv.i
  %i.amz = getelementptr i8, ptr %i.amy, i64 -1
  store i8 %i.amx, ptr %i.amz, align 1, !tbaa !34
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.ana = and i64 %indvars.iv.next.i.1, 255
  %.not1348.i.1 = icmp eq i64 %i.ana, 0
  br i1 %.not1348.i.1, label %._crit_edge1526.i, label %.lr.ph1525.i, !llvm.loop !89

._crit_edge1526.i:                                ; preds = %.lr.ph1525.i.prol.loopexit, %.lr.ph1525.i, %middle.block497, %vec.epilog.middle.block512, %bb.di
  store i8 %i.aje, ptr %i.a, align 16, !tbaa !34
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv1737.i
  store i8 %i.aje, ptr %i.anb, align 1, !tbaa !34
  %indvars.iv.next1738.i = add nuw nsw i64 %indvars.iv1737.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next1738.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge1529.i, label %bb.di, !llvm.loop !90

._crit_edge1529.i:                                ; preds = %._crit_edge1526.i, %.preheader1393.i
  %.12.lcssa.i = phi i32 [ 0, %.preheader1393.i ], [ %.01032.i, %._crit_edge1526.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.dj

bb.dj:                                            ; preds = %bb.ec, %._crit_edge1529.i
  %i.anc = phi i32 [ %i.afm, %._crit_edge1529.i ], [ %i.app, %bb.ec ]
  %i.and = phi i32 [ %i.afn, %._crit_edge1529.i ], [ %i.apq, %bb.ec ]
  %i.ane = phi i32 [ %i.afo, %._crit_edge1529.i ], [ %i.apr, %bb.ec ]
  %i.anf = phi i32 [ %i.afp, %._crit_edge1529.i ], [ %i.aps, %bb.ec ] ; 3 uses
  %i.ang = phi i32 [ %i.afq, %._crit_edge1529.i ], [ %i.apt, %bb.ec ]
  %i.anh = phi i32 [ %i.afr, %._crit_edge1529.i ], [ %i.apu, %bb.ec ]
  %i.ani = phi i32 [ %i.afs, %._crit_edge1529.i ], [ %i.apv, %bb.ec ] ; 3 uses
  %i.anj = phi i32 [ %i.aft, %._crit_edge1529.i ], [ %i.apw, %bb.ec ] ; 3 uses
  %i.ank = phi i32 [ %i.afv, %._crit_edge1529.i ], [ %i.apx, %bb.ec ] ; 3 uses
  %i.anl = phi i32 [ %i.afw, %._crit_edge1529.i ], [ %i.apy, %bb.ec ] ; 2 uses
  %i.anm = phi i32 [ %i.afx, %._crit_edge1529.i ], [ %i.apz, %bb.ec ] ; 3 uses
  %i.ann = phi i32 [ %i.afy, %._crit_edge1529.i ], [ %i.aqa, %bb.ec ] ; 3 uses
  %i.ano = phi i32 [ %i.afz, %._crit_edge1529.i ], [ %i.aqb, %bb.ec ] ; 2 uses
  %i.anp = phi i32 [ %i.aga, %._crit_edge1529.i ], [ %i.aqc, %bb.ec ] ; 2 uses
  %i.anq = phi ptr [ %i.agb, %._crit_edge1529.i ], [ %i.aqd, %bb.ec ] ; 2 uses
  %i.anr = phi ptr [ %i.agc, %._crit_edge1529.i ], [ %i.aqe, %bb.ec ] ; 2 uses
  %i.ans = phi ptr [ %i.agd, %._crit_edge1529.i ], [ %i.aqf, %bb.ec ] ; 2 uses
  %.01155.i = phi i32 [ %i.afu, %._crit_edge1529.i ], [ %.21157.i, %bb.ec ] ; 3 uses
  %.31035.i = phi i32 [ %.01032.i, %._crit_edge1529.i ], [ %.51037.i, %bb.ec ] ; 4 uses
  %.41014.i = phi i32 [ %.11011.i, %._crit_edge1529.i ], [ %.61016.i, %bb.ec ] ; 7 uses
  %.5988.i = phi i32 [ %.2985.i, %._crit_edge1529.i ], [ %.7990.i, %bb.ec ] ; 9 uses
  %.0964.i = phi i32 [ 0, %._crit_edge1529.i ], [ %i.aur, %bb.ec ] ; 2 uses
  %.9944.i = phi i32 [ %.6941.i, %._crit_edge1529.i ], [ %.11946.i, %bb.ec ] ; 3 uses
  %.13.i = phi i32 [ %.12.lcssa.i, %._crit_edge1529.i ], [ %.15.i, %bb.ec ]
  %i.ant = icmp slt i32 %.0964.i, %.41014.i
  br i1 %i.ant, label %bb.dk, label %.preheader1392.i

.preheader1392.i:                                 ; preds = %bb.dj
  %i.anu = icmp sgt i32 %.41014.i, 0
  br i1 %i.anu, label %.preheader1391.lr.ph.i, label %._crit_edge1539.i

.preheader1391.lr.ph.i:                           ; preds = %.preheader1392.i
  %1 = icmp slt i32 %.5988.i, 1                   ; 2 uses
  %wide.trip.count.i.i = zext i32 %.5988.i to i64 ; 7 uses
  %wide.trip.count1751.i = zext nneg i32 %.41014.i to i64
  %min.iters.check529 = icmp ult i32 %.5988.i, 8
  %n.vec532 = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %cmp.n543 = icmp eq i64 %n.vec532, %wide.trip.count.i.i
  %xtraiter720 = and i64 %wide.trip.count.i.i, 1
  %i.anv = icmp eq i32 %.5988.i, 1
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  %lcmp.mod721.not = icmp eq i64 %xtraiter720, 0
  %lcmp.mod723 = trunc i32 %.5988.i to i1
  %xtraiter724 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.anw = icmp ult i32 %.5988.i, 4
  %unroll_iter727 = and i64 %wide.trip.count.i.i, 2147483644
  %lcmp.mod725.not = icmp eq i64 %xtraiter724, 0
  %lcmp.mod726 = icmp ne i64 %xtraiter724, 0
  br label %.preheader1391.i

bb.dk:                                            ; preds = %bb.dj, %bb.at
  %i.anx = phi i32 [ %i.anc, %bb.dj ], [ %.pre1854.i, %bb.at ] ; 2 uses
  %i.any = phi i32 [ %i.and, %bb.dj ], [ %.pre1856.i, %bb.at ] ; 2 uses
  %i.anz = phi i32 [ %i.ane, %bb.dj ], [ %.pre1858.i, %bb.at ] ; 2 uses
  %i.aoa = phi i32 [ %i.anf, %bb.dj ], [ %.pre1860.i, %bb.at ] ; 2 uses
  %i.aob = phi i32 [ %i.ang, %bb.dj ], [ %.pre1862.i, %bb.at ] ; 2 uses
  %i.aoc = phi i32 [ %i.anh, %bb.dj ], [ %.pre1864.i, %bb.at ] ; 2 uses
  %i.aod = phi i32 [ %i.ani, %bb.dj ], [ %.pre1866.i, %bb.at ] ; 2 uses
  %i.aoe = phi i32 [ %i.anj, %bb.dj ], [ %.pre1868.i, %bb.at ] ; 2 uses
  %i.aof = phi i32 [ %i.ank, %bb.dj ], [ %.pre1872.i, %bb.at ] ; 2 uses
  %i.aog = phi i32 [ %i.anl, %bb.dj ], [ %.pre1874.i, %bb.at ] ; 2 uses
  %i.aoh = phi i32 [ %i.anm, %bb.dj ], [ %.pre1876.i, %bb.at ] ; 2 uses
  %i.aoi = phi i32 [ %i.ann, %bb.dj ], [ %.pre1878.i, %bb.at ] ; 2 uses
  %i.aoj = phi i32 [ %i.ano, %bb.dj ], [ %.pre1880.i, %bb.at ] ; 2 uses
  %i.aok = phi i32 [ %i.anp, %bb.dj ], [ %.pre1882.i, %bb.at ] ; 2 uses
  %i.aol = phi ptr [ %i.anq, %bb.dj ], [ %.pre1884.i, %bb.at ] ; 2 uses
  %i.aom = phi ptr [ %i.anr, %bb.dj ], [ %.pre1886.i, %bb.at ] ; 2 uses
  %i.aon = phi ptr [ %i.ans, %bb.dj ], [ %.pre1888.i, %bb.at ] ; 2 uses
  %.11156.i = phi i32 [ %.01155.i, %bb.dj ], [ %.pre1870.i, %bb.at ]
  %.41036.i = phi i32 [ %.31035.i, %bb.dj ], [ %.pre1852.i, %bb.at ] ; 2 uses
  %.51015.i = phi i32 [ %.41014.i, %bb.dj ], [ %.pre1850.i, %bb.at ] ; 2 uses
  %.6989.i = phi i32 [ %.5988.i, %bb.dj ], [ %.pre1848.i, %bb.at ] ; 2 uses
  %.1965.i = phi i32 [ %.0964.i, %bb.dj ], [ %.pre1846.i, %bb.at ] ; 2 uses
  %.10945.i = phi i32 [ %.9944.i, %bb.dj ], [ %.pre1844.i, %bb.at ] ; 2 uses
  %.14.i = phi i32 [ %.13.i, %bb.dj ], [ %.pre.i36, %bb.at ]
  store i32 33, ptr %i.g, align 8, !tbaa !19
  %.promoted1633.i = load i32, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20 ; 3 uses
  %i.aoo = icmp sgt i32 %.promoted1633.i, 4
  br i1 %i.aoo, label %.._crit_edge1636_crit_edge.i, label %.lr.ph1635.i

.._crit_edge1636_crit_edge.i:                     ; preds = %bb.dk
  %.pre1946.i = load i32, ptr %i.v, align 8, !tbaa !21
  br label %._crit_edge1636.i

.lr.ph1635.i:                                     ; preds = %bb.dk
  %i.aop = load ptr, ptr %i.d, align 8, !tbaa !14 ; 5 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 8 ; 2 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aop, i64 12 ; 2 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aop, i64 16 ; 2 uses
  %.promoted1639.i = load i32, ptr %i.aoq, align 8, !tbaa !76
  br label %bb.dl

._crit_edge1636.i:                                ; preds = %bb.do, %.._crit_edge1636_crit_edge.i
  %i.aot = phi i32 [ %.pre1946.i, %.._crit_edge1636_crit_edge.i ], [ %i.apf, %bb.do ]
  %.lcssa1421.i = phi i32 [ %.promoted1633.i, %.._crit_edge1636_crit_edge.i ], [ %i.apg, %bb.do ]
  %i.aou = add nsw i32 %.lcssa1421.i, -5          ; 2 uses
  %i.aov = lshr i32 %i.aot, %i.aou
  %i.aow = and i32 %i.aov, 31
  store i32 %i.aou, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  br label %bb.dp

bb.dl:                                            ; preds = %bb.do, %.lr.ph1635.i
  %i.aox = phi i32 [ %.promoted1639.i, %.lr.ph1635.i ], [ %i.api, %bb.do ] ; 2 uses
  %i.aoy = phi i32 [ %.promoted1633.i, %.lr.ph1635.i ], [ %i.apg, %bb.do ] ; 2 uses
  %i.aoz = icmp eq i32 %i.aox, 0
  br i1 %i.aoz, label %BZ2_decompress.exit, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.apa = load i32, ptr %i.v, align 8, !tbaa !21
  %i.apb = shl i32 %i.apa, 8
  %i.apc = load ptr, ptr %i.aop, align 8, !tbaa !77 ; 2 uses
  %i.apd = load i8, ptr %i.apc, align 1, !tbaa !34
  %i.ape = zext i8 %i.apd to i32
  %i.apf = or disjoint i32 %i.apb, %i.ape         ; 2 uses
  store i32 %i.apf, ptr %i.v, align 8, !tbaa !21
  %i.apg = add nsw i32 %i.aoy, 8                  ; 3 uses
  store i32 %i.apg, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apc, i64 1
  store ptr %i.aph, ptr %i.aop, align 8, !tbaa !77
  %i.api = add i32 %i.aox, -1                     ; 2 uses
  store i32 %i.api, ptr %i.aoq, align 8, !tbaa !76
  %i.apj = load i32, ptr %i.aor, align 4, !tbaa !23
  %i.apk = add i32 %i.apj, 1                      ; 2 uses
  store i32 %i.apk, ptr %i.aor, align 4, !tbaa !23
  %i.apl = icmp eq i32 %i.apk, 0
  br i1 %i.apl, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.apm = load i32, ptr %i.aos, align 8, !tbaa !24
  %i.apn = add i32 %i.apm, 1
  store i32 %i.apn, ptr %i.aos, align 8, !tbaa !24
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.apo = icmp sgt i32 %i.aoy, -4
  br i1 %i.apo, label %._crit_edge1636.i, label %bb.dl

bb.dp:                                            ; preds = %bb.eb, %._crit_edge1636.i
  %i.app = phi i32 [ %i.anx, %._crit_edge1636.i ], [ %i.aqz, %bb.eb ] ; 2 uses
  %i.apq = phi i32 [ %i.any, %._crit_edge1636.i ], [ %i.ara, %bb.eb ] ; 2 uses
  %i.apr = phi i32 [ %i.anz, %._crit_edge1636.i ], [ %i.arb, %bb.eb ] ; 2 uses
  %i.aps = phi i32 [ %i.aoa, %._crit_edge1636.i ], [ %i.arc, %bb.eb ] ; 2 uses
  %i.apt = phi i32 [ %i.aob, %._crit_edge1636.i ], [ %i.ard, %bb.eb ] ; 2 uses
  %i.apu = phi i32 [ %i.aoc, %._crit_edge1636.i ], [ %i.are, %bb.eb ] ; 2 uses
  %i.apv = phi i32 [ %i.aod, %._crit_edge1636.i ], [ %i.arf, %bb.eb ] ; 2 uses
  %i.apw = phi i32 [ %i.aoe, %._crit_edge1636.i ], [ %i.arg, %bb.eb ] ; 2 uses
  %i.apx = phi i32 [ %i.aof, %._crit_edge1636.i ], [ %i.arh, %bb.eb ] ; 2 uses
  %i.apy = phi i32 [ %i.aog, %._crit_edge1636.i ], [ %i.ari, %bb.eb ] ; 2 uses
  %i.apz = phi i32 [ %i.aoh, %._crit_edge1636.i ], [ %i.arj, %bb.eb ] ; 2 uses
  %i.aqa = phi i32 [ %i.aoi, %._crit_edge1636.i ], [ %i.ark, %bb.eb ] ; 2 uses
  %i.aqb = phi i32 [ %i.aoj, %._crit_edge1636.i ], [ %i.arl, %bb.eb ] ; 2 uses
  %i.aqc = phi i32 [ %i.aok, %._crit_edge1636.i ], [ %i.arm, %bb.eb ] ; 2 uses
  %i.aqd = phi ptr [ %i.aol, %._crit_edge1636.i ], [ %i.arn, %bb.eb ] ; 2 uses
  %i.aqe = phi ptr [ %i.aom, %._crit_edge1636.i ], [ %i.aro, %bb.eb ] ; 2 uses
  %i.aqf = phi ptr [ %i.aon, %._crit_edge1636.i ], [ %i.arp, %bb.eb ] ; 2 uses
  %.21157.i = phi i32 [ %i.aow, %._crit_edge1636.i ], [ %.41159.i, %bb.eb ] ; 2 uses
  %.51037.i = phi i32 [ %.41036.i, %._crit_edge1636.i ], [ %.71039.i, %bb.eb ] ; 2 uses
  %.61016.i = phi i32 [ %.51015.i, %._crit_edge1636.i ], [ %.81018.i, %bb.eb ] ; 2 uses
  %.7990.i = phi i32 [ %.6989.i, %._crit_edge1636.i ], [ %.9992.i, %bb.eb ] ; 3 uses
  %.2966.i = phi i32 [ %.1965.i, %._crit_edge1636.i ], [ %.4968.i, %bb.eb ] ; 2 uses
  %.11946.i = phi i32 [ %.10945.i, %._crit_edge1636.i ], [ %.13948.i, %bb.eb ] ; 2 uses
  %.15.i = phi i32 [ 0, %._crit_edge1636.i ], [ %i.auq, %bb.eb ] ; 3 uses
  %i.aqg = icmp slt i32 %.15.i, %.7990.i
  br i1 %i.aqg, label %bb.dq, label %bb.ec

bb.dq:                                            ; preds = %._crit_edge1650.i, %bb.dp
  %i.aqh = phi i32 [ %i.app, %bb.dp ], [ %i.ass, %._crit_edge1650.i ] ; 2 uses
  %i.aqi = phi i32 [ %i.apq, %bb.dp ], [ %i.ast, %._crit_edge1650.i ] ; 2 uses
  %i.aqj = phi i32 [ %i.apr, %bb.dp ], [ %i.asu, %._crit_edge1650.i ] ; 2 uses
  %i.aqk = phi i32 [ %i.aps, %bb.dp ], [ %i.asv, %._crit_edge1650.i ] ; 2 uses
  %i.aql = phi i32 [ %i.apt, %bb.dp ], [ %i.asw, %._crit_edge1650.i ] ; 2 uses
  %i.aqm = phi i32 [ %i.apu, %bb.dp ], [ %i.asx, %._crit_edge1650.i ] ; 2 uses
  %i.aqn = phi i32 [ %i.apv, %bb.dp ], [ %i.asy, %._crit_edge1650.i ] ; 2 uses
  %i.aqo = phi i32 [ %i.apw, %bb.dp ], [ %i.asz, %._crit_edge1650.i ] ; 2 uses
  %i.aqp = phi i32 [ %i.apx, %bb.dp ], [ %i.ata, %._crit_edge1650.i ] ; 2 uses
  %i.aqq = phi i32 [ %i.apy, %bb.dp ], [ %i.atb, %._crit_edge1650.i ] ; 2 uses
  %i.aqr = phi i32 [ %i.apz, %bb.dp ], [ %i.atc, %._crit_edge1650.i ] ; 2 uses
  %i.aqs = phi i32 [ %i.aqa, %bb.dp ], [ %i.atd, %._crit_edge1650.i ] ; 2 uses
  %i.aqt = phi i32 [ %i.aqb, %bb.dp ], [ %i.ate, %._crit_edge1650.i ] ; 2 uses
  %i.aqu = phi i32 [ %i.aqc, %bb.dp ], [ %i.atf, %._crit_edge1650.i ] ; 2 uses
  %i.aqv = phi ptr [ %i.aqd, %bb.dp ], [ %i.atg, %._crit_edge1650.i ] ; 2 uses
  %i.aqw = phi ptr [ %i.aqe, %bb.dp ], [ %i.ath, %._crit_edge1650.i ] ; 2 uses
  %i.aqx = phi ptr [ %i.aqf, %bb.dp ], [ %i.ati, %._crit_edge1650.i ] ; 2 uses
  %.31158.i = phi i32 [ %.21157.i, %bb.dp ], [ %.61161.i, %._crit_edge1650.i ] ; 3 uses
  %.61038.i = phi i32 [ %.51037.i, %bb.dp ], [ %.81040.i, %._crit_edge1650.i ] ; 2 uses
  %.71017.i = phi i32 [ %.61016.i, %bb.dp ], [ %.91019.i, %._crit_edge1650.i ] ; 2 uses
  %.8991.i = phi i32 [ %.7990.i, %bb.dp ], [ %.10993.i, %._crit_edge1650.i ] ; 2 uses
  %.3967.i = phi i32 [ %.2966.i, %bb.dp ], [ %.5969.i, %._crit_edge1650.i ] ; 2 uses
  %.12947.i = phi i32 [ %.11946.i, %bb.dp ], [ %.14949.i, %._crit_edge1650.i ] ; 2 uses
  %.16.i = phi i32 [ %.15.i, %bb.dp ], [ %.18.i, %._crit_edge1650.i ] ; 2 uses
  %i.aqy = add i32 %.31158.i, -21
  %or.cond3.i = icmp ult i32 %i.aqy, -20
  br i1 %or.cond3.i, label %BZ2_decompress.exit, label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.at
  %i.aqz = phi i32 [ %i.aqh, %bb.dq ], [ %.pre1854.i, %bb.at ] ; 3 uses
  %i.ara = phi i32 [ %i.aqi, %bb.dq ], [ %.pre1856.i, %bb.at ] ; 3 uses
  %i.arb = phi i32 [ %i.aqj, %bb.dq ], [ %.pre1858.i, %bb.at ] ; 3 uses
  %i.arc = phi i32 [ %i.aqk, %bb.dq ], [ %.pre1860.i, %bb.at ] ; 3 uses
  %i.ard = phi i32 [ %i.aql, %bb.dq ], [ %.pre1862.i, %bb.at ] ; 3 uses
  %i.are = phi i32 [ %i.aqm, %bb.dq ], [ %.pre1864.i, %bb.at ] ; 3 uses
  %i.arf = phi i32 [ %i.aqn, %bb.dq ], [ %.pre1866.i, %bb.at ] ; 3 uses
  %i.arg = phi i32 [ %i.aqo, %bb.dq ], [ %.pre1868.i, %bb.at ] ; 3 uses
  %i.arh = phi i32 [ %i.aqp, %bb.dq ], [ %.pre1872.i, %bb.at ] ; 3 uses
  %i.ari = phi i32 [ %i.aqq, %bb.dq ], [ %.pre1874.i, %bb.at ] ; 3 uses
  %i.arj = phi i32 [ %i.aqr, %bb.dq ], [ %.pre1876.i, %bb.at ] ; 3 uses
  %i.ark = phi i32 [ %i.aqs, %bb.dq ], [ %.pre1878.i, %bb.at ] ; 3 uses
  %i.arl = phi i32 [ %i.aqt, %bb.dq ], [ %.pre1880.i, %bb.at ] ; 3 uses
  %i.arm = phi i32 [ %i.aqu, %bb.dq ], [ %.pre1882.i, %bb.at ] ; 3 uses
  %i.arn = phi ptr [ %i.aqv, %bb.dq ], [ %.pre1884.i, %bb.at ] ; 3 uses
  %i.aro = phi ptr [ %i.aqw, %bb.dq ], [ %.pre1886.i, %bb.at ] ; 3 uses
  %i.arp = phi ptr [ %i.aqx, %bb.dq ], [ %.pre1888.i, %bb.at ] ; 3 uses
  %.41159.i = phi i32 [ %.31158.i, %bb.dq ], [ %.pre1870.i, %bb.at ] ; 4 uses
  %.71039.i = phi i32 [ %.61038.i, %bb.dq ], [ %.pre1852.i, %bb.at ] ; 3 uses
  %.81018.i = phi i32 [ %.71017.i, %bb.dq ], [ %.pre1850.i, %bb.at ] ; 3 uses
  %.9992.i = phi i32 [ %.8991.i, %bb.dq ], [ %.pre1848.i, %bb.at ] ; 3 uses
  %.4968.i = phi i32 [ %.3967.i, %bb.dq ], [ %.pre1846.i, %bb.at ] ; 4 uses
  %.13948.i = phi i32 [ %.12947.i, %bb.dq ], [ %.pre1844.i, %bb.at ] ; 3 uses
  %.17.i = phi i32 [ %.16.i, %bb.dq ], [ %.pre.i36, %bb.at ] ; 4 uses
  store i32 34, ptr %i.g, align 8, !tbaa !19
  %.promoted1640.i = load i32, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20 ; 3 uses
  %i.arq = icmp sgt i32 %.promoted1640.i, 0
  br i1 %i.arq, label %.._crit_edge1643_crit_edge.i, label %.lr.ph1642.i

.._crit_edge1643_crit_edge.i:                     ; preds = %bb.dr
  %.pre1948.i = load i32, ptr %i.v, align 8, !tbaa !21
  br label %._crit_edge1643.i

.lr.ph1642.i:                                     ; preds = %bb.dr
  %i.arr = load ptr, ptr %i.d, align 8, !tbaa !14 ; 5 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arr, i64 8 ; 2 uses
  %i.art = getelementptr inbounds nuw i8, ptr %i.arr, i64 12 ; 2 uses
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arr, i64 16 ; 2 uses
  %.promoted1646.i = load i32, ptr %i.ars, align 8, !tbaa !76
  br label %bb.ds

._crit_edge1643.i:                                ; preds = %bb.dv, %.._crit_edge1643_crit_edge.i
  %i.arv = phi i32 [ %.pre1948.i, %.._crit_edge1643_crit_edge.i ], [ %i.asi, %bb.dv ]
  %.lcssa1417.i = phi i32 [ %.promoted1640.i, %.._crit_edge1643_crit_edge.i ], [ %i.asj, %bb.dv ]
  %i.arw = add nsw i32 %.lcssa1417.i, -1          ; 3 uses
  store i32 %i.arw, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  %i.arx = shl nuw i32 1, %i.arw
  %i.ary = and i32 %i.arx, %i.arv
  %i.arz = icmp eq i32 %i.ary, 0
  br i1 %i.arz, label %bb.eb, label %bb.dw

bb.ds:                                            ; preds = %bb.dv, %.lr.ph1642.i
  %i.asa = phi i32 [ %.promoted1646.i, %.lr.ph1642.i ], [ %i.asl, %bb.dv ] ; 2 uses
  %i.asb = phi i32 [ %.promoted1640.i, %.lr.ph1642.i ], [ %i.asj, %bb.dv ] ; 2 uses
  %i.asc = icmp eq i32 %i.asa, 0
  br i1 %i.asc, label %BZ2_decompress.exit, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.asd = load i32, ptr %i.v, align 8, !tbaa !21
  %i.ase = shl i32 %i.asd, 8
  %i.asf = load ptr, ptr %i.arr, align 8, !tbaa !77 ; 2 uses
  %i.asg = load i8, ptr %i.asf, align 1, !tbaa !34
  %i.ash = zext i8 %i.asg to i32
  %i.asi = or disjoint i32 %i.ase, %i.ash         ; 2 uses
  store i32 %i.asi, ptr %i.v, align 8, !tbaa !21
  %i.asj = add nsw i32 %i.asb, 8                  ; 3 uses
  store i32 %i.asj, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asf, i64 1
  store ptr %i.ask, ptr %i.arr, align 8, !tbaa !77
  %i.asl = add i32 %i.asa, -1                     ; 2 uses
  store i32 %i.asl, ptr %i.ars, align 8, !tbaa !76
  %i.asm = load i32, ptr %i.art, align 4, !tbaa !23
  %i.asn = add i32 %i.asm, 1                      ; 2 uses
  store i32 %i.asn, ptr %i.art, align 4, !tbaa !23
  %i.aso = icmp eq i32 %i.asn, 0
  br i1 %i.aso, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.asp = load i32, ptr %i.aru, align 8, !tbaa !24
  %i.asq = add i32 %i.asp, 1
  store i32 %i.asq, ptr %i.aru, align 8, !tbaa !24
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.asr = icmp sgt i32 %i.asb, -8
  br i1 %i.asr, label %._crit_edge1643.i, label %bb.ds

bb.dw:                                            ; preds = %._crit_edge1643.i, %._crit_edge1949.i
  %i.ass = phi i32 [ %i.aqz, %._crit_edge1643.i ], [ %.pre1854.i, %._crit_edge1949.i ] ; 2 uses
  %i.ast = phi i32 [ %i.ara, %._crit_edge1643.i ], [ %.pre1856.i, %._crit_edge1949.i ] ; 2 uses
  %i.asu = phi i32 [ %i.arb, %._crit_edge1643.i ], [ %.pre1858.i, %._crit_edge1949.i ] ; 2 uses
  %i.asv = phi i32 [ %i.arc, %._crit_edge1643.i ], [ %.pre1860.i, %._crit_edge1949.i ] ; 2 uses
  %i.asw = phi i32 [ %i.ard, %._crit_edge1643.i ], [ %.pre1862.i, %._crit_edge1949.i ] ; 2 uses
  %i.asx = phi i32 [ %i.are, %._crit_edge1643.i ], [ %.pre1864.i, %._crit_edge1949.i ] ; 2 uses
  %i.asy = phi i32 [ %i.arf, %._crit_edge1643.i ], [ %.pre1866.i, %._crit_edge1949.i ] ; 2 uses
  %i.asz = phi i32 [ %i.arg, %._crit_edge1643.i ], [ %.pre1868.i, %._crit_edge1949.i ] ; 2 uses
  %i.ata = phi i32 [ %i.arh, %._crit_edge1643.i ], [ %.pre1872.i, %._crit_edge1949.i ] ; 2 uses
  %i.atb = phi i32 [ %i.ari, %._crit_edge1643.i ], [ %.pre1874.i, %._crit_edge1949.i ] ; 2 uses
  %i.atc = phi i32 [ %i.arj, %._crit_edge1643.i ], [ %.pre1876.i, %._crit_edge1949.i ] ; 2 uses
  %i.atd = phi i32 [ %i.ark, %._crit_edge1643.i ], [ %.pre1878.i, %._crit_edge1949.i ] ; 2 uses
  %i.ate = phi i32 [ %i.arl, %._crit_edge1643.i ], [ %.pre1880.i, %._crit_edge1949.i ] ; 2 uses
  %i.atf = phi i32 [ %i.arm, %._crit_edge1643.i ], [ %.pre1882.i, %._crit_edge1949.i ] ; 2 uses
  %i.atg = phi ptr [ %i.arn, %._crit_edge1643.i ], [ %.pre1884.i, %._crit_edge1949.i ] ; 2 uses
  %i.ath = phi ptr [ %i.aro, %._crit_edge1643.i ], [ %.pre1886.i, %._crit_edge1949.i ] ; 2 uses
  %i.ati = phi ptr [ %i.arp, %._crit_edge1643.i ], [ %.pre1888.i, %._crit_edge1949.i ] ; 2 uses
  %.promoted1647.i = phi i32 [ %i.arw, %._crit_edge1643.i ], [ %.promoted1647.pre.i, %._crit_edge1949.i ] ; 3 uses
  %.51160.i = phi i32 [ %.41159.i, %._crit_edge1643.i ], [ %.pre1870.i, %._crit_edge1949.i ] ; 2 uses
  %.81040.i = phi i32 [ %.71039.i, %._crit_edge1643.i ], [ %.pre1852.i, %._crit_edge1949.i ] ; 2 uses
  %.91019.i = phi i32 [ %.81018.i, %._crit_edge1643.i ], [ %.pre1850.i, %._crit_edge1949.i ] ; 2 uses
  %.10993.i = phi i32 [ %.9992.i, %._crit_edge1643.i ], [ %.pre1848.i, %._crit_edge1949.i ] ; 2 uses
  %.5969.i = phi i32 [ %.4968.i, %._crit_edge1643.i ], [ %.pre1846.i, %._crit_edge1949.i ] ; 2 uses
  %.14949.i = phi i32 [ %.13948.i, %._crit_edge1643.i ], [ %.pre1844.i, %._crit_edge1949.i ] ; 2 uses
  %.18.i = phi i32 [ %.17.i, %._crit_edge1643.i ], [ %.pre.i36, %._crit_edge1949.i ] ; 2 uses
  store i32 35, ptr %i.g, align 8, !tbaa !19
  %i.atj = icmp sgt i32 %.promoted1647.i, 0
  br i1 %i.atj, label %.._crit_edge1650_crit_edge.i, label %.lr.ph1649.i

.._crit_edge1650_crit_edge.i:                     ; preds = %bb.dw
  %.pre1953.i = load i32, ptr %i.v, align 8, !tbaa !21
  br label %._crit_edge1650.i

.lr.ph1649.i:                                     ; preds = %bb.dw
  %i.atk = load ptr, ptr %i.d, align 8, !tbaa !14 ; 5 uses
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atk, i64 8 ; 2 uses
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atk, i64 12 ; 2 uses
  %i.atn = getelementptr inbounds nuw i8, ptr %i.atk, i64 16 ; 2 uses
  %.promoted1653.i = load i32, ptr %i.atl, align 8, !tbaa !76
  br label %bb.dx

._crit_edge1650.i:                                ; preds = %bb.ea, %.._crit_edge1650_crit_edge.i
  %i.ato = phi i32 [ %.pre1953.i, %.._crit_edge1650_crit_edge.i ], [ %i.aub, %bb.ea ]
  %.lcssa1413.i = phi i32 [ %.promoted1647.i, %.._crit_edge1650_crit_edge.i ], [ %i.auc, %bb.ea ]
  %i.atp = add nsw i32 %.lcssa1413.i, -1          ; 2 uses
  store i32 %i.atp, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  %i.atq = shl nuw i32 1, %i.atp
  %i.atr = and i32 %i.atq, %i.ato
  %i.ats = icmp eq i32 %i.atr, 0
  %.61161.v.i = select i1 %i.ats, i32 1, i32 -1
  %.61161.i = add nsw i32 %.61161.v.i, %.51160.i
  br label %bb.dq

bb.dx:                                            ; preds = %bb.ea, %.lr.ph1649.i
  %i.att = phi i32 [ %.promoted1653.i, %.lr.ph1649.i ], [ %i.aue, %bb.ea ] ; 2 uses
  %i.atu = phi i32 [ %.promoted1647.i, %.lr.ph1649.i ], [ %i.auc, %bb.ea ] ; 2 uses
  %i.atv = icmp eq i32 %i.att, 0
  br i1 %i.atv, label %BZ2_decompress.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.atw = load i32, ptr %i.v, align 8, !tbaa !21
  %i.atx = shl i32 %i.atw, 8
  %i.aty = load ptr, ptr %i.atk, align 8, !tbaa !77 ; 2 uses
  %i.atz = load i8, ptr %i.aty, align 1, !tbaa !34
  %i.aua = zext i8 %i.atz to i32
  %i.aub = or disjoint i32 %i.atx, %i.aua         ; 2 uses
  store i32 %i.aub, ptr %i.v, align 8, !tbaa !21
  %i.auc = add nsw i32 %i.atu, 8                  ; 3 uses
  store i32 %i.auc, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  %i.aud = getelementptr inbounds nuw i8, ptr %i.aty, i64 1
  store ptr %i.aud, ptr %i.atk, align 8, !tbaa !77
  %i.aue = add i32 %i.att, -1                     ; 2 uses
  store i32 %i.aue, ptr %i.atl, align 8, !tbaa !76
  %i.auf = load i32, ptr %i.atm, align 4, !tbaa !23
  %i.aug = add i32 %i.auf, 1                      ; 2 uses
  store i32 %i.aug, ptr %i.atm, align 4, !tbaa !23
  %i.auh = icmp eq i32 %i.aug, 0
  br i1 %i.auh, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.aui = load i32, ptr %i.atn, align 8, !tbaa !24
  %i.auj = add i32 %i.aui, 1
  store i32 %i.auj, ptr %i.atn, align 8, !tbaa !24
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.auk = icmp sgt i32 %i.atu, -8
  br i1 %i.auk, label %._crit_edge1650.i, label %bb.dx

bb.eb:                                            ; preds = %._crit_edge1643.i
  %i.aul = trunc i32 %.41159.i to i8
  %i.aum = sext i32 %.4968.i to i64
  %i.aun = getelementptr inbounds [258 x i8], ptr %i.ac, i64 %i.aum
  %i.auo = sext i32 %.17.i to i64
  %i.aup = getelementptr inbounds i8, ptr %i.aun, i64 %i.auo
  store i8 %i.aul, ptr %i.aup, align 1, !tbaa !34
  %i.auq = add nsw i32 %.17.i, 1
  br label %bb.dp, !llvm.loop !91

bb.ec:                                            ; preds = %bb.dp
  %i.aur = add nsw i32 %.2966.i, 1
  br label %bb.dj, !llvm.loop !92

.preheader1391.i:                                 ; preds = %CreateDecodeTables.exit.i, %.preheader1391.lr.ph.i
  %indvars.iv1747.i = phi i64 [ 0, %.preheader1391.lr.ph.i ], [ %indvars.iv.next1748.i, %CreateDecodeTables.exit.i ] ; 8 uses
  br i1 %1, label %.preheader68.i.thread.i, label %.lr.ph1534.i

.preheader68.i.thread.i:                          ; preds = %.preheader1391.i
  %i.aus = getelementptr inbounds nuw [1032 x i8], ptr %i.ae, i64 %indvars.iv1747.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %i.aus, i8 0, i64 92, i1 false), !tbaa !4
  br label %.preheader66.i.i

.lr.ph1534.i:                                     ; preds = %.preheader1391.i
  %i.aut = getelementptr inbounds nuw [258 x i8], ptr %i.ac, i64 %indvars.iv1747.i ; 10 uses
  br i1 %min.iters.check529, label %scalar.ph528.preheader, label %vector.body533

vector.body533:                                   ; preds = %.lr.ph1534.i, %vector.body533
  %index534 = phi i64 [ %index.next540, %vector.body533 ], [ 0, %.lr.ph1534.i ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ava, %vector.body533 ], [ splat (i32 32), %.lr.ph1534.i ]
  %vec.phi535 = phi <4 x i32> [ %i.avb, %vector.body533 ], [ splat (i32 32), %.lr.ph1534.i ]
  %vec.phi536 = phi <4 x i32> [ %i.auy, %vector.body533 ], [ zeroinitializer, %.lr.ph1534.i ]
  %vec.phi537 = phi <4 x i32> [ %i.auz, %vector.body533 ], [ zeroinitializer, %.lr.ph1534.i ]
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aut, i64 %index534 ; 2 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %i.auu, i64 4
  %wide.load538 = load <4 x i8>, ptr %i.auu, align 1, !tbaa !34
  %wide.load539 = load <4 x i8>, ptr %i.auv, align 1, !tbaa !34
  %i.auw = zext <4 x i8> %wide.load538 to <4 x i32> ; 2 uses
  %i.aux = zext <4 x i8> %wide.load539 to <4 x i32> ; 2 uses
  %i.auy = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi536, <4 x i32> %i.auw) ; 2 uses
  %i.auz = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi537, <4 x i32> %i.aux) ; 2 uses
  %i.ava = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.auw) ; 2 uses
  %i.avb = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.phi535, <4 x i32> %i.aux) ; 2 uses
  %index.next540 = add nuw i64 %index534, 8       ; 2 uses
  %i.avc = icmp eq i64 %index.next540, %n.vec532
  br i1 %i.avc, label %middle.block541, label %vector.body533, !llvm.loop !93

middle.block541:                                  ; preds = %vector.body533
  %rdx.minmax = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ava, <4 x i32> %i.avb)
  %i.avd = tail call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %rdx.minmax542 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.auy, <4 x i32> %i.auz)
  %i.ave = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax542) ; 2 uses
  br i1 %cmp.n543, label %.preheader69.us.i.preheader.i, label %scalar.ph528.preheader

scalar.ph528.preheader:                           ; preds = %.lr.ph1534.i, %middle.block541
  %indvars.iv1741.i.ph = phi i64 [ 0, %.lr.ph1534.i ], [ %n.vec532, %middle.block541 ]
  %.09221533.i.ph = phi i32 [ 32, %.lr.ph1534.i ], [ %i.avd, %middle.block541 ]
  %.09251532.i.ph = phi i32 [ 0, %.lr.ph1534.i ], [ %i.ave, %middle.block541 ]
  br label %scalar.ph528

scalar.ph528:                                     ; preds = %scalar.ph528.preheader, %scalar.ph528
  %indvars.iv1741.i = phi i64 [ %indvars.iv.next1742.i, %scalar.ph528 ], [ %indvars.iv1741.i.ph, %scalar.ph528.preheader ] ; 2 uses
  %.09221533.i = phi i32 [ %.1.i, %scalar.ph528 ], [ %.09221533.i.ph, %scalar.ph528.preheader ]
  %.09251532.i = phi i32 [ %spec.select.i, %scalar.ph528 ], [ %.09251532.i.ph, %scalar.ph528.preheader ]
  %i.avf = getelementptr inbounds nuw i8, ptr %i.aut, i64 %indvars.iv1741.i
  %i.avg = load i8, ptr %i.avf, align 1, !tbaa !34
  %i.avh = zext i8 %i.avg to i32                  ; 2 uses
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %.09251532.i, i32 %i.avh) ; 2 uses
  %.1.i = tail call i32 @llvm.umin.i32(i32 %.09221533.i, i32 %i.avh) ; 2 uses
  %indvars.iv.next1742.i = add nuw nsw i64 %indvars.iv1741.i, 1 ; 2 uses
  %exitcond1746.not.i = icmp eq i64 %indvars.iv.next1742.i, %wide.trip.count.i.i
  br i1 %exitcond1746.not.i, label %.preheader69.us.i.preheader.i, label %scalar.ph528, !llvm.loop !94

.preheader69.us.i.preheader.i:                    ; preds = %scalar.ph528, %middle.block541
  %spec.select.i.lcssa = phi i32 [ %i.ave, %middle.block541 ], [ %spec.select.i, %scalar.ph528 ] ; 2 uses
  %.1.i.lcssa = phi i32 [ %i.avd, %middle.block541 ], [ %.1.i, %scalar.ph528 ] ; 2 uses
  %i.avi = getelementptr inbounds nuw [1032 x i8], ptr %i.af, i64 %indvars.iv1747.i ; 3 uses
  br label %.preheader69.us.i.i

.preheader69.us.i.i:                              ; preds = %._crit_edge.us.i.i, %.preheader69.us.i.preheader.i
  %.05774.us.i.i = phi i32 [ %i.awh, %._crit_edge.us.i.i ], [ %.1.i.lcssa, %.preheader69.us.i.preheader.i ] ; 5 uses
  %.05873.us.i.i = phi i32 [ %.260.us.i.i.lcssa, %._crit_edge.us.i.i ], [ 0, %.preheader69.us.i.preheader.i ] ; 2 uses
  br i1 %i.anv, label %.epil.preheader, label %.preheader69.us.i.i.new

.preheader69.us.i.i.new:                          ; preds = %.preheader69.us.i.i, %bb.eg
  %indvars.iv.i1359.i = phi i64 [ %indvars.iv.next.i1360.i.1, %bb.eg ], [ 0, %.preheader69.us.i.i ] ; 4 uses
  %.15970.us.i.i = phi i32 [ %.260.us.i.i.1, %bb.eg ], [ %.05873.us.i.i, %.preheader69.us.i.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.eg ], [ 0, %.preheader69.us.i.i ]
  %i.avj = getelementptr inbounds nuw i8, ptr %i.aut, i64 %indvars.iv.i1359.i
  %i.avk = load i8, ptr %i.avj, align 1, !tbaa !34
  %i.avl = zext i8 %i.avk to i32
  %i.avm = icmp eq i32 %.05774.us.i.i, %i.avl
  br i1 %i.avm, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %.preheader69.us.i.i.new
  %i.avn = sext i32 %.15970.us.i.i to i64
  %i.avo = getelementptr inbounds [4 x i8], ptr %i.avi, i64 %i.avn
  %i.avp = trunc nuw nsw i64 %indvars.iv.i1359.i to i32
  store i32 %i.avp, ptr %i.avo, align 4, !tbaa !4
  %i.avq = add nsw i32 %.15970.us.i.i, 1
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %.preheader69.us.i.i.new
  %.260.us.i.i = phi i32 [ %i.avq, %bb.ed ], [ %.15970.us.i.i, %.preheader69.us.i.i.new ] ; 3 uses
  %indvars.iv.next.i1360.i = or disjoint i64 %indvars.iv.i1359.i, 1 ; 2 uses
  %i.avr = getelementptr inbounds nuw i8, ptr %i.aut, i64 %indvars.iv.next.i1360.i
  %i.avs = load i8, ptr %i.avr, align 1, !tbaa !34
  %i.avt = zext i8 %i.avs to i32
  %i.avu = icmp eq i32 %.05774.us.i.i, %i.avt
  br i1 %i.avu, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.avv = sext i32 %.260.us.i.i to i64
  %i.avw = getelementptr inbounds [4 x i8], ptr %i.avi, i64 %i.avv
  %i.avx = trunc nuw nsw i64 %indvars.iv.next.i1360.i to i32
  store i32 %i.avx, ptr %i.avw, align 4, !tbaa !4
  %i.avy = add nsw i32 %.260.us.i.i, 1
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %.260.us.i.i.1 = phi i32 [ %i.avy, %bb.ef ], [ %.260.us.i.i, %bb.ee ] ; 3 uses
  %indvars.iv.next.i1360.i.1 = add nuw nsw i64 %indvars.iv.i1359.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.i.unr-lcssa, label %.preheader69.us.i.i.new, !llvm.loop !95

._crit_edge.us.i.i.unr-lcssa:                     ; preds = %bb.eg
  br i1 %lcmp.mod721.not, label %._crit_edge.us.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.i.unr-lcssa, %.preheader69.us.i.i
  %indvars.iv.i1359.i.epil.init = phi i64 [ 0, %.preheader69.us.i.i ], [ %indvars.iv.next.i1360.i.1, %._crit_edge.us.i.i.unr-lcssa ] ; 2 uses
  %.15970.us.i.i.epil.init = phi i32 [ %.05873.us.i.i, %.preheader69.us.i.i ], [ %.260.us.i.i.1, %._crit_edge.us.i.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod723)
  %i.avz = getelementptr inbounds nuw i8, ptr %i.aut, i64 %indvars.iv.i1359.i.epil.init
  %i.awa = load i8, ptr %i.avz, align 1, !tbaa !34
  %i.awb = zext i8 %i.awa to i32
  %i.awc = icmp eq i32 %.05774.us.i.i, %i.awb
  br i1 %i.awc, label %bb.eh, label %._crit_edge.us.i.i

bb.eh:                                            ; preds = %.epil.preheader
  %i.awd = sext i32 %.15970.us.i.i.epil.init to i64
  %i.awe = getelementptr inbounds [4 x i8], ptr %i.avi, i64 %i.awd
  %i.awf = trunc nuw nsw i64 %indvars.iv.i1359.i.epil.init to i32
  store i32 %i.awf, ptr %i.awe, align 4, !tbaa !4
  %i.awg = add nsw i32 %.15970.us.i.i.epil.init, 1
  br label %._crit_edge.us.i.i

._crit_edge.us.i.i:                               ; preds = %.epil.preheader, %bb.eh, %._crit_edge.us.i.i.unr-lcssa
  %.260.us.i.i.lcssa = phi i32 [ %.260.us.i.i.1, %._crit_edge.us.i.i.unr-lcssa ], [ %i.awg, %bb.eh ], [ %.15970.us.i.i.epil.init, %.epil.preheader ]
  %i.awh = add nuw nsw i32 %.05774.us.i.i, 1
  %exitcond88.not.i.i = icmp eq i32 %.05774.us.i.i, %spec.select.i.lcssa
  br i1 %exitcond88.not.i.i, label %.preheader68.i.i, label %.preheader69.us.i.i, !llvm.loop !96

.preheader68.i.i:                                 ; preds = %._crit_edge.us.i.i
  %2 = getelementptr inbounds nuw [1032 x i8], ptr %i.ae, i64 %indvars.iv1747.i ; 28 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %2, i8 0, i64 92, i1 false), !tbaa !4
  br i1 %i.anw, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

.preheader66.loopexit.i.i.unr-lcssa:              ; preds = %.lr.ph.i.i
  br i1 %lcmp.mod725.not, label %.preheader66.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.preheader66.loopexit.i.i.unr-lcssa, %.preheader68.i.i
  %indvars.iv92.i.i.epil.init = phi i64 [ 0, %.preheader68.i.i ], [ %indvars.iv.next93.i.i.3, %.preheader66.loopexit.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod726)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv92.i.i.epil = phi i64 [ %indvars.iv.next93.i.i.epil, %.lr.ph.i.i.epil ], [ %indvars.iv92.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.awi = getelementptr inbounds nuw i8, ptr %i.aut, i64 %indvars.iv92.i.i.epil
  %i.awj = load i8, ptr %i.awi, align 1, !tbaa !34
  %i.awk = zext i8 %i.awj to i64
  %i.awl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.awk
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awl, i64 4 ; 2 uses
  %i.awn = load i32, ptr %i.awm, align 4, !tbaa !4
  %i.awo = add nsw i32 %i.awn, 1
  store i32 %i.awo, ptr %i.awm, align 4, !tbaa !4
  %indvars.iv.next93.i.i.epil = add nuw nsw i64 %indvars.iv92.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter724
  br i1 %epil.iter.cmp.not, label %.preheader66.loopexit.i.i, label %.lr.ph.i.i.epil, !llvm.loop !97

.preheader66.loopexit.i.i:                        ; preds = %.lr.ph.i.i.epil, %.preheader66.loopexit.i.i.unr-lcssa
  %.phi.trans.insert.i.i = getelementptr i8, ptr %2, i64 4
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !4
  %.phi.trans.insert114.i.i = getelementptr i8, ptr %2, i64 8
  %.pre115.i.i = load i32, ptr %.phi.trans.insert114.i.i, align 4, !tbaa !4
  %.phi.trans.insert116.i.i = getelementptr i8, ptr %2, i64 12
  %.pre117.i.i = load i32, ptr %.phi.trans.insert116.i.i, align 4, !tbaa !4
  %.phi.trans.insert118.i.i = getelementptr i8, ptr %2, i64 16
  %.pre119.i.i = load i32, ptr %.phi.trans.insert118.i.i, align 4, !tbaa !4
  %.phi.trans.insert120.i.i = getelementptr i8, ptr %2, i64 20
  %.pre121.i.i = load i32, ptr %.phi.trans.insert120.i.i, align 4, !tbaa !4
  %.phi.trans.insert122.i.i = getelementptr i8, ptr %2, i64 24
  %.pre123.i.i = load i32, ptr %.phi.trans.insert122.i.i, align 4, !tbaa !4
  %.phi.trans.insert124.i.i = getelementptr i8, ptr %2, i64 28
  %.pre125.i.i = load i32, ptr %.phi.trans.insert124.i.i, align 4, !tbaa !4
  %.phi.trans.insert126.i.i = getelementptr i8, ptr %2, i64 32
  %.pre127.i.i = load i32, ptr %.phi.trans.insert126.i.i, align 4, !tbaa !4
  %.phi.trans.insert128.i.i = getelementptr i8, ptr %2, i64 36
  %.pre129.i.i = load i32, ptr %.phi.trans.insert128.i.i, align 4, !tbaa !4
  %.phi.trans.insert130.i.i = getelementptr i8, ptr %2, i64 40
  %.pre131.i.i = load i32, ptr %.phi.trans.insert130.i.i, align 4, !tbaa !4
  %.phi.trans.insert132.i.i = getelementptr i8, ptr %2, i64 44
  %.pre133.i.i = load i32, ptr %.phi.trans.insert132.i.i, align 4, !tbaa !4
  %.phi.trans.insert134.i.i = getelementptr i8, ptr %2, i64 48
  %.pre135.i.i = load i32, ptr %.phi.trans.insert134.i.i, align 4, !tbaa !4
  %.phi.trans.insert136.i.i = getelementptr i8, ptr %2, i64 52
  %.pre137.i.i = load i32, ptr %.phi.trans.insert136.i.i, align 4, !tbaa !4
  %.phi.trans.insert138.i.i = getelementptr i8, ptr %2, i64 56
  %.pre139.i.i = load i32, ptr %.phi.trans.insert138.i.i, align 4, !tbaa !4
  %.phi.trans.insert140.i.i = getelementptr i8, ptr %2, i64 60
  %.pre141.i.i = load i32, ptr %.phi.trans.insert140.i.i, align 4, !tbaa !4
  %.phi.trans.insert142.i.i = getelementptr i8, ptr %2, i64 64
  %.pre143.i.i = load i32, ptr %.phi.trans.insert142.i.i, align 4, !tbaa !4
  %.phi.trans.insert144.i.i = getelementptr i8, ptr %2, i64 68
  %.pre145.i.i = load i32, ptr %.phi.trans.insert144.i.i, align 4, !tbaa !4
  %.phi.trans.insert146.i.i = getelementptr i8, ptr %2, i64 72
  %.pre147.i.i = load i32, ptr %.phi.trans.insert146.i.i, align 4, !tbaa !4
  %.phi.trans.insert148.i.i = getelementptr i8, ptr %2, i64 76
  %.pre149.i.i = load i32, ptr %.phi.trans.insert148.i.i, align 4, !tbaa !4
  %.phi.trans.insert150.i.i = getelementptr i8, ptr %2, i64 80
  %.pre151.i.i = load i32, ptr %.phi.trans.insert150.i.i, align 4, !tbaa !4
  %.phi.trans.insert1913.i = getelementptr i8, ptr %2, i64 84
  %.pre1914.i = load i32, ptr %.phi.trans.insert1913.i, align 4, !tbaa !4
  %.phi.trans.insert1915.i = getelementptr i8, ptr %2, i64 88
  %.pre1916.i = load i32, ptr %.phi.trans.insert1915.i, align 4, !tbaa !4
  br label %.preheader66.i.i

.preheader66.i.i:                                 ; preds = %.preheader66.loopexit.i.i, %.preheader68.i.thread.i
  %.0925.lcssa20082018.i = phi i32 [ %spec.select.i.lcssa, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ] ; 4 uses
  %.0922.lcssa20102017.i = phi i32 [ %.1.i.lcssa, %.preheader66.loopexit.i.i ], [ 32, %.preheader68.i.thread.i ] ; 5 uses
  %i.awp = phi i32 [ %.pre1916.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.awq = phi i32 [ %.pre1914.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.awr = phi i32 [ %.pre151.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.aws = phi i32 [ %.pre149.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.awt = phi i32 [ %.pre147.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.awu = phi i32 [ %.pre145.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.awv = phi i32 [ %.pre143.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.aww = phi i32 [ %.pre141.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.awx = phi i32 [ %.pre139.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.awy = phi i32 [ %.pre137.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.awz = phi i32 [ %.pre135.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.axa = phi i32 [ %.pre133.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.axb = phi i32 [ %.pre131.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.axc = phi i32 [ %.pre129.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.axd = phi i32 [ %.pre127.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.axe = phi i32 [ %.pre125.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.axf = phi i32 [ %.pre123.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.axg = phi i32 [ %.pre121.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.axh = phi i32 [ %.pre119.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.axi = phi i32 [ %.pre117.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.axj = phi i32 [ %.pre115.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.axk = phi i32 [ %.pre.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ] ; 2 uses
  %i.axl = getelementptr inbounds nuw [1032 x i8], ptr %i.ae, i64 %indvars.iv1747.i ; 28 uses
  %i.axm = getelementptr inbounds nuw [1032 x i8], ptr %i.ad, i64 %indvars.iv1747.i ; 6 uses
  %i.axn = getelementptr i8, ptr %i.axl, i64 4
  store i32 %i.axk, ptr %i.axn, align 4, !tbaa !4
  %i.axo = getelementptr i8, ptr %i.axl, i64 8
  %i.axp = add nsw i32 %i.axk, %i.axj             ; 2 uses
  store i32 %i.axp, ptr %i.axo, align 4, !tbaa !4
  %i.axq = getelementptr i8, ptr %i.axl, i64 12
  %i.axr = add nsw i32 %i.axp, %i.axi             ; 2 uses
  store i32 %i.axr, ptr %i.axq, align 4, !tbaa !4
  %i.axs = getelementptr i8, ptr %i.axl, i64 16
  %i.axt = add nsw i32 %i.axr, %i.axh             ; 2 uses
  store i32 %i.axt, ptr %i.axs, align 4, !tbaa !4
  %i.axu = getelementptr i8, ptr %i.axl, i64 20
  %i.axv = add nsw i32 %i.axt, %i.axg             ; 2 uses
  store i32 %i.axv, ptr %i.axu, align 4, !tbaa !4
  %i.axw = getelementptr i8, ptr %i.axl, i64 24
  %i.axx = add nsw i32 %i.axv, %i.axf             ; 2 uses
  store i32 %i.axx, ptr %i.axw, align 4, !tbaa !4
  %i.axy = getelementptr i8, ptr %i.axl, i64 28
  %i.axz = add nsw i32 %i.axx, %i.axe             ; 2 uses
  store i32 %i.axz, ptr %i.axy, align 4, !tbaa !4
  %i.aya = getelementptr i8, ptr %i.axl, i64 32
  %i.ayb = add nsw i32 %i.axz, %i.axd             ; 2 uses
  store i32 %i.ayb, ptr %i.aya, align 4, !tbaa !4
  %i.ayc = getelementptr i8, ptr %i.axl, i64 36
  %i.ayd = add nsw i32 %i.ayb, %i.axc             ; 2 uses
  store i32 %i.ayd, ptr %i.ayc, align 4, !tbaa !4
  %i.aye = getelementptr i8, ptr %i.axl, i64 40
  %i.ayf = add nsw i32 %i.ayd, %i.axb             ; 2 uses
  store i32 %i.ayf, ptr %i.aye, align 4, !tbaa !4
  %i.ayg = getelementptr i8, ptr %i.axl, i64 44
  %i.ayh = add nsw i32 %i.ayf, %i.axa             ; 2 uses
  store i32 %i.ayh, ptr %i.ayg, align 4, !tbaa !4
  %i.ayi = getelementptr i8, ptr %i.axl, i64 48
  %i.ayj = add nsw i32 %i.ayh, %i.awz             ; 2 uses
  store i32 %i.ayj, ptr %i.ayi, align 4, !tbaa !4
  %i.ayk = getelementptr i8, ptr %i.axl, i64 52
  %i.ayl = add nsw i32 %i.ayj, %i.awy             ; 2 uses
  store i32 %i.ayl, ptr %i.ayk, align 4, !tbaa !4
  %i.aym = getelementptr i8, ptr %i.axl, i64 56
  %i.ayn = add nsw i32 %i.ayl, %i.awx             ; 2 uses
  store i32 %i.ayn, ptr %i.aym, align 4, !tbaa !4
  %i.ayo = getelementptr i8, ptr %i.axl, i64 60
  %i.ayp = add nsw i32 %i.ayn, %i.aww             ; 2 uses
  store i32 %i.ayp, ptr %i.ayo, align 4, !tbaa !4
  %i.ayq = getelementptr i8, ptr %i.axl, i64 64
  %i.ayr = add nsw i32 %i.ayp, %i.awv             ; 2 uses
  store i32 %i.ayr, ptr %i.ayq, align 4, !tbaa !4
  %i.ays = getelementptr i8, ptr %i.axl, i64 68
  %i.ayt = add nsw i32 %i.ayr, %i.awu             ; 2 uses
  store i32 %i.ayt, ptr %i.ays, align 4, !tbaa !4
  %i.ayu = getelementptr i8, ptr %i.axl, i64 72
  %i.ayv = add nsw i32 %i.ayt, %i.awt             ; 2 uses
  store i32 %i.ayv, ptr %i.ayu, align 4, !tbaa !4
  %i.ayw = getelementptr i8, ptr %i.axl, i64 76
  %i.ayx = add nsw i32 %i.ayv, %i.aws             ; 2 uses
  store i32 %i.ayx, ptr %i.ayw, align 4, !tbaa !4
  %i.ayy = getelementptr i8, ptr %i.axl, i64 80
  %i.ayz = add nsw i32 %i.ayx, %i.awr             ; 2 uses
  store i32 %i.ayz, ptr %i.ayy, align 4, !tbaa !4
  %i.aza = getelementptr i8, ptr %i.axl, i64 84
  %i.azb = add nsw i32 %i.ayz, %i.awq             ; 2 uses
  store i32 %i.azb, ptr %i.aza, align 4, !tbaa !4
  %i.azc = getelementptr i8, ptr %i.axl, i64 88
  %i.azd = add nsw i32 %i.azb, %i.awp
  store i32 %i.azd, ptr %i.azc, align 4, !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %i.axm, i8 0, i64 92, i1 false), !tbaa !4
  br i1 %1, label %.preheader.i.i, label %.lr.ph82.preheader.i.i

.lr.ph.i.i:                                       ; preds = %.preheader68.i.i, %.lr.ph.i.i
  %indvars.iv92.i.i = phi i64 [ %indvars.iv.next93.i.i.3, %.lr.ph.i.i ], [ 0, %.preheader68.i.i ] ; 5 uses
  %niter728 = phi i64 [ %niter728.next.3, %.lr.ph.i.i ], [ 0, %.preheader68.i.i ]
  %i.aze = getelementptr inbounds nuw i8, ptr %i.aut, i64 %indvars.iv92.i.i
  %i.azf = load i8, ptr %i.aze, align 1, !tbaa !34
  %i.azg = zext i8 %i.azf to i64
  %i.azh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.azg
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azh, i64 4 ; 2 uses
  %i.azj = load i32, ptr %i.azi, align 4, !tbaa !4
  %i.azk = add nsw i32 %i.azj, 1
  store i32 %i.azk, ptr %i.azi, align 4, !tbaa !4
  %i.azl = getelementptr inbounds nuw i8, ptr %i.aut, i64 %indvars.iv92.i.i
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azl, i64 1
  %i.azn = load i8, ptr %i.azm, align 1, !tbaa !34
  %i.azo = zext i8 %i.azn to i64
  %i.azp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.azo
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azp, i64 4 ; 2 uses
  %i.azr = load i32, ptr %i.azq, align 4, !tbaa !4
  %i.azs = add nsw i32 %i.azr, 1
  store i32 %i.azs, ptr %i.azq, align 4, !tbaa !4
  %i.azt = getelementptr inbounds nuw i8, ptr %i.aut, i64 %indvars.iv92.i.i
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azt, i64 2
  %i.azv = load i8, ptr %i.azu, align 1, !tbaa !34
  %i.azw = zext i8 %i.azv to i64
  %i.azx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.azw
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azx, i64 4 ; 2 uses
  %i.azz = load i32, ptr %i.azy, align 4, !tbaa !4
  %i.baa = add nsw i32 %i.azz, 1
  store i32 %i.baa, ptr %i.azy, align 4, !tbaa !4
  %i.bab = getelementptr inbounds nuw i8, ptr %i.aut, i64 %indvars.iv92.i.i
  %i.bac = getelementptr inbounds nuw i8, ptr %i.bab, i64 3
  %i.bad = load i8, ptr %i.bac, align 1, !tbaa !34
  %i.bae = zext i8 %i.bad to i64
  %i.baf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bae
  %i.bag = getelementptr inbounds nuw i8, ptr %i.baf, i64 4 ; 2 uses
  %i.bah = load i32, ptr %i.bag, align 4, !tbaa !4
  %i.bai = add nsw i32 %i.bah, 1
  store i32 %i.bai, ptr %i.bag, align 4, !tbaa !4
  %indvars.iv.next93.i.i.3 = add nuw nsw i64 %indvars.iv92.i.i, 4 ; 2 uses
  %niter728.next.3 = add i64 %niter728, 4         ; 2 uses
  %niter728.ncmp.3 = icmp eq i64 %niter728.next.3, %unroll_iter727
  br i1 %niter728.ncmp.3, label %.preheader66.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !99

.lr.ph82.preheader.i.i:                           ; preds = %.preheader66.i.i
  %i.baj = zext nneg i32 %.0922.lcssa20102017.i to i64 ; 4 uses
  %i.bak = add nuw nsw i32 %.0925.lcssa20082018.i, 1
  %wide.trip.count107.i.i = zext nneg i32 %i.bak to i64
  %.phi.trans.insert1917.i = getelementptr inbounds nuw [4 x i8], ptr %i.axl, i64 %i.baj
  %.pre1918.i = load i32, ptr %.phi.trans.insert1917.i, align 4, !tbaa !4 ; 2 uses
  %3 = sub nsw i64 %wide.trip.count107.i.i, %i.baj ; 3 uses
  %xtraiter729 = and i64 %3, 1
  %i.bal = icmp eq i32 %.0925.lcssa20082018.i, %.0922.lcssa20102017.i
  br i1 %i.bal, label %.lr.ph82.i.i.epil.preheader, label %.lr.ph82.preheader.i.i.new

.lr.ph82.preheader.i.i.new:                       ; preds = %.lr.ph82.preheader.i.i
  %unroll_iter733 = and i64 %3, -2
  br label %.lr.ph82.i.i

.preheader.i.i.loopexit.unr-lcssa:                ; preds = %.lr.ph82.i.i
  %lcmp.mod731.not = icmp eq i64 %xtraiter729, 0
  br i1 %lcmp.mod731.not, label %.preheader.i.i, label %.lr.ph82.i.i.epil.preheader

.lr.ph82.i.i.epil.preheader:                      ; preds = %.preheader.i.i.loopexit.unr-lcssa, %.lr.ph82.preheader.i.i
  %.epil.init = phi i32 [ %.pre1918.i, %.lr.ph82.preheader.i.i ], [ %i.bbn, %.preheader.i.i.loopexit.unr-lcssa ]
  %indvars.iv104.i.i.epil.init = phi i64 [ %i.baj, %.lr.ph82.preheader.i.i ], [ %indvars.iv.next105.i.i.1, %.preheader.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.081.i.i.epil.init = phi i32 [ 0, %.lr.ph82.preheader.i.i ], [ %i.bbs, %.preheader.i.i.loopexit.unr-lcssa ]
  %lcmp.mod732 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod732)
  %i.bam = getelementptr inbounds nuw [4 x i8], ptr %i.axl, i64 %indvars.iv104.i.i.epil.init
  %i.ban = getelementptr inbounds nuw i8, ptr %i.bam, i64 4
  %i.bao = load i32, ptr %i.ban, align 4, !tbaa !4
  %i.bap = sub nsw i32 %i.bao, %.epil.init
  %i.baq = add nsw i32 %i.bap, %.081.i.i.epil.init
  %i.bar = add nsw i32 %i.baq, -1
  %i.bas = getelementptr inbounds nuw [4 x i8], ptr %i.axm, i64 %indvars.iv104.i.i.epil.init
  store i32 %i.bar, ptr %i.bas, align 4, !tbaa !4
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph82.i.i.epil.preheader, %.preheader.i.i.loopexit.unr-lcssa, %.preheader66.i.i
  %.not63.not83.i.i = icmp samesign ult i32 %.0922.lcssa20102017.i, %.0925.lcssa20082018.i
  br i1 %.not63.not83.i.i, label %.lr.ph85.preheader.i.i, label %CreateDecodeTables.exit.i

.lr.ph85.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.bat = zext i32 %.0922.lcssa20102017.i to i64 ; 4 uses
  %wide.trip.count112.i.i = zext nneg i32 %.0925.lcssa20082018.i to i64 ; 2 uses
  %i.bau = sub nsw i64 %wide.trip.count112.i.i, %i.bat ; 3 uses
  %min.iters.check516 = icmp ult i64 %i.bau, 4
  br i1 %min.iters.check516, label %.lr.ph85.i.i.preheader, label %vector.ph517

vector.ph517:                                     ; preds = %.lr.ph85.preheader.i.i
  %n.vec519 = and i64 %i.bau, -4                  ; 3 uses
  %i.bav = add nsw i64 %n.vec519, %i.bat
  br label %vector.body520

vector.body520:                                   ; preds = %vector.body520, %vector.ph517
  %index521 = phi i64 [ 0, %vector.ph517 ], [ %index.next524, %vector.body520 ] ; 2 uses
  %i.baw = add i64 %index521, %i.bat              ; 2 uses
  %i.bax = getelementptr inbounds nuw [4 x i8], ptr %i.axm, i64 %i.baw
  %wide.load522 = load <4 x i32>, ptr %i.bax, align 4, !tbaa !4
  %i.bay = shl <4 x i32> %wide.load522, splat (i32 1)
  %i.baz = add <4 x i32> %i.bay, splat (i32 2)
  %i.bba = getelementptr inbounds nuw [4 x i8], ptr %i.axl, i64 %i.baw
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.bba, i64 4 ; 2 uses
  %wide.load523 = load <4 x i32>, ptr %i.bbb, align 4, !tbaa !4
  %i.bbc = sub <4 x i32> %i.baz, %wide.load523
  store <4 x i32> %i.bbc, ptr %i.bbb, align 4, !tbaa !4
  %index.next524 = add nuw i64 %index521, 4       ; 2 uses
  %i.bbd = icmp eq i64 %index.next524, %n.vec519
  br i1 %i.bbd, label %middle.block525, label %vector.body520, !llvm.loop !100

middle.block525:                                  ; preds = %vector.body520
  %cmp.n526 = icmp eq i64 %i.bau, %n.vec519
  br i1 %cmp.n526, label %CreateDecodeTables.exit.i, label %.lr.ph85.i.i.preheader

.lr.ph85.i.i.preheader:                           ; preds = %.lr.ph85.preheader.i.i, %middle.block525
  %indvars.iv109.i.i.ph = phi i64 [ %i.bat, %.lr.ph85.preheader.i.i ], [ %i.bav, %middle.block525 ]
  br label %.lr.ph85.i.i

.lr.ph82.i.i:                                     ; preds = %.lr.ph82.i.i, %.lr.ph82.preheader.i.i.new
  %i.bbe = phi i32 [ %.pre1918.i, %.lr.ph82.preheader.i.i.new ], [ %i.bbn, %.lr.ph82.i.i ]
  %indvars.iv104.i.i = phi i64 [ %i.baj, %.lr.ph82.preheader.i.i.new ], [ %indvars.iv.next105.i.i.1, %.lr.ph82.i.i ] ; 3 uses
  %.081.i.i = phi i32 [ 0, %.lr.ph82.preheader.i.i.new ], [ %i.bbs, %.lr.ph82.i.i ]
  %niter734 = phi i64 [ 0, %.lr.ph82.preheader.i.i.new ], [ %niter734.next.1, %.lr.ph82.i.i ]
  %indvars.iv.next105.i.i = add nuw nsw i64 %indvars.iv104.i.i, 1 ; 2 uses
  %i.bbf = getelementptr inbounds nuw [4 x i8], ptr %i.axl, i64 %indvars.iv.next105.i.i
  %i.bbg = load i32, ptr %i.bbf, align 4, !tbaa !4 ; 2 uses
  %i.bbh = sub nsw i32 %i.bbg, %i.bbe
  %i.bbi = add nsw i32 %i.bbh, %.081.i.i          ; 2 uses
  %i.bbj = add nsw i32 %i.bbi, -1
  %i.bbk = getelementptr inbounds nuw [4 x i8], ptr %i.axm, i64 %indvars.iv104.i.i
  store i32 %i.bbj, ptr %i.bbk, align 4, !tbaa !4
  %i.bbl = shl i32 %i.bbi, 1
  %indvars.iv.next105.i.i.1 = add nuw nsw i64 %indvars.iv104.i.i, 2 ; 3 uses
  %i.bbm = getelementptr inbounds nuw [4 x i8], ptr %i.axl, i64 %indvars.iv.next105.i.i.1
  %i.bbn = load i32, ptr %i.bbm, align 4, !tbaa !4 ; 3 uses
  %i.bbo = sub nsw i32 %i.bbn, %i.bbg
  %i.bbp = add nsw i32 %i.bbo, %i.bbl             ; 2 uses
  %i.bbq = add nsw i32 %i.bbp, -1
  %i.bbr = getelementptr inbounds nuw [4 x i8], ptr %i.axm, i64 %indvars.iv.next105.i.i
  store i32 %i.bbq, ptr %i.bbr, align 4, !tbaa !4
  %i.bbs = shl i32 %i.bbp, 1                      ; 2 uses
  %niter734.next.1 = add i64 %niter734, 2         ; 2 uses
  %niter734.ncmp.1 = icmp eq i64 %niter734.next.1, %unroll_iter733
  br i1 %niter734.ncmp.1, label %.preheader.i.i.loopexit.unr-lcssa, label %.lr.ph82.i.i, !llvm.loop !101

.lr.ph85.i.i:                                     ; preds = %.lr.ph85.i.i.preheader, %.lr.ph85.i.i
  %indvars.iv109.i.i = phi i64 [ %indvars.iv.next110.i.i, %.lr.ph85.i.i ], [ %indvars.iv109.i.i.ph, %.lr.ph85.i.i.preheader ] ; 2 uses
  %indvars.iv.next110.i.i = add nuw nsw i64 %indvars.iv109.i.i, 1 ; 3 uses
  %i.bbt = getelementptr inbounds nuw [4 x i8], ptr %i.axm, i64 %indvars.iv109.i.i
  %i.bbu = load i32, ptr %i.bbt, align 4, !tbaa !4
  %i.bbv = shl i32 %i.bbu, 1
  %i.bbw = add i32 %i.bbv, 2
  %i.bbx = getelementptr inbounds nuw [4 x i8], ptr %i.axl, i64 %indvars.iv.next110.i.i ; 2 uses
  %i.bby = load i32, ptr %i.bbx, align 4, !tbaa !4
  %i.bbz = sub i32 %i.bbw, %i.bby
  store i32 %i.bbz, ptr %i.bbx, align 4, !tbaa !4
  %exitcond113.not.i.i = icmp eq i64 %indvars.iv.next110.i.i, %wide.trip.count112.i.i
  br i1 %exitcond113.not.i.i, label %CreateDecodeTables.exit.i, label %.lr.ph85.i.i, !llvm.loop !102

CreateDecodeTables.exit.i:                        ; preds = %.lr.ph85.i.i, %middle.block525, %.preheader.i.i
  %i.bca = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv1747.i
  store i32 %.0922.lcssa20102017.i, ptr %i.bca, align 4, !tbaa !4
  %indvars.iv.next1748.i = add nuw nsw i64 %indvars.iv1747.i, 1 ; 2 uses
  %exitcond1752.not.i = icmp eq i64 %indvars.iv.next1748.i, %wide.trip.count1751.i
  br i1 %exitcond1752.not.i, label %._crit_edge1539.i, label %.preheader1391.i, !llvm.loop !103

._crit_edge1539.i:                                ; preds = %CreateDecodeTables.exit.i, %.preheader1392.i
  %.6970.lcssa.i = phi i32 [ 0, %.preheader1392.i ], [ %.41014.i, %CreateDecodeTables.exit.i ] ; 2 uses
  %i.bcb = load i32, ptr %i.y, align 8, !tbaa !82
  %i.bcc = load i32, ptr %i.t, align 8, !tbaa !51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ah, i8 0, i64 1024, i1 false), !tbaa !4
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.d, i64 7804
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.bcd, align 4, !tbaa !34
  %i.bce = getelementptr inbounds nuw i8, ptr %i.d, i64 7880
  store i32 4080, ptr %i.bce, align 8, !tbaa !4
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.d, i64 7788
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.bcf, align 4, !tbaa !34
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.d, i64 7876
  store i32 4064, ptr %i.bcg, align 4, !tbaa !4
  %i.bch = getelementptr inbounds nuw i8, ptr %i.d, i64 7772
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.bch, align 4, !tbaa !34
  %i.bci = getelementptr inbounds nuw i8, ptr %i.d, i64 7872
  store i32 4048, ptr %i.bci, align 8, !tbaa !4
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.d, i64 7756
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.bcj, align 4, !tbaa !34
  %i.bck = getelementptr inbounds nuw i8, ptr %i.d, i64 7868
  store i32 4032, ptr %i.bck, align 4, !tbaa !4
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.d, i64 7740
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.bcl, align 4, !tbaa !34
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.d, i64 7864
  store i32 4016, ptr %i.bcm, align 8, !tbaa !4
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.d, i64 7724
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.bcn, align 4, !tbaa !34
  %i.bco = getelementptr inbounds nuw i8, ptr %i.d, i64 7860
  store i32 4000, ptr %i.bco, align 4, !tbaa !4
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.d, i64 7708
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.bcp, align 4, !tbaa !34
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.d, i64 7856
  store i32 3984, ptr %i.bcq, align 8, !tbaa !4
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.d, i64 7692
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.bcr, align 4, !tbaa !34
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.d, i64 7852
  store i32 3968, ptr %i.bcs, align 4, !tbaa !4
  %i.bct = getelementptr inbounds nuw i8, ptr %i.d, i64 7676
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.bct, align 4, !tbaa !34
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.d, i64 7848
  store i32 3952, ptr %i.bcu, align 8, !tbaa !4
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.d, i64 7660
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.bcv, align 4, !tbaa !34
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.d, i64 7844
  store i32 3936, ptr %i.bcw, align 4, !tbaa !4
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.d, i64 7644
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.bcx, align 4, !tbaa !34
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.d, i64 7840
  store i32 3920, ptr %i.bcy, align 8, !tbaa !4
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.d, i64 7628
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.bcz, align 4, !tbaa !34
  %i.bda = getelementptr inbounds nuw i8, ptr %i.d, i64 7836
  store i32 3904, ptr %i.bda, align 4, !tbaa !4
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.d, i64 7612
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.bdb, align 4, !tbaa !34
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.d, i64 7832
  store i32 3888, ptr %i.bdc, align 8, !tbaa !4
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.d, i64 7596
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.bdd, align 4, !tbaa !34
  %i.bde = getelementptr inbounds nuw i8, ptr %i.d, i64 7828
  store i32 3872, ptr %i.bde, align 4, !tbaa !4
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.d, i64 7580
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.bdf, align 4, !tbaa !34
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.d, i64 7824
  store i32 3856, ptr %i.bdg, align 8, !tbaa !4
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.d, i64 7564
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.bdh, align 4, !tbaa !34
  store i32 3840, ptr %i.aj, align 4, !tbaa !4
  %i.bdi = add nsw i32 %i.bcb, 1                  ; 2 uses
  %i.bdj = mul nsw i32 %i.bcc, 100000             ; 2 uses
  %i.bdk = icmp slt i32 %.31035.i, 1
  br i1 %i.bdk, label %BZ2_decompress.exit, label %bb.ei

bb.ei:                                            ; preds = %._crit_edge1539.i
  %i.bdl = load i8, ptr %i.ab, align 4, !tbaa !34 ; 2 uses
  %i.bdm = zext i8 %i.bdl to i64                  ; 4 uses
  %i.bdn = getelementptr inbounds nuw [1032 x i8], ptr %i.ae, i64 %i.bdm
  %i.bdo = getelementptr inbounds nuw [1032 x i8], ptr %i.af, i64 %i.bdm
  %i.bdp = getelementptr inbounds nuw [1032 x i8], ptr %i.ad, i64 %i.bdm
  %i.bdq = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bdm
  %i.bdr = load i32, ptr %i.bdq, align 4, !tbaa !4 ; 2 uses
  %i.bds = zext i8 %i.bdl to i32
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.at
  %i.bdt = phi i32 [ %i.anf, %bb.ei ], [ %.pre1860.i, %bb.at ] ; 3 uses
  %i.bdu = phi i32 [ %i.ani, %bb.ei ], [ %.pre1866.i, %bb.at ] ; 3 uses
  %i.bdv = phi i32 [ %i.anj, %bb.ei ], [ %.pre1868.i, %bb.at ] ; 3 uses
  %i.bdw = phi i32 [ %i.ank, %bb.ei ], [ %.pre1872.i, %bb.at ] ; 3 uses
  %i.bdx = phi i32 [ %i.anm, %bb.ei ], [ %.pre1876.i, %bb.at ] ; 2 uses
  %i.bdy = phi i32 [ %i.ann, %bb.ei ], [ %.pre1878.i, %bb.at ] ; 3 uses
  %.11258.i = phi i32 [ %i.bds, %bb.ei ], [ %.pre1880.i, %bb.at ] ; 3 uses
  %.11243.i = phi i32 [ %i.bdr, %bb.ei ], [ %.pre1882.i, %bb.at ] ; 3 uses
  %.11228.i = phi ptr [ %i.bdp, %bb.ei ], [ %.pre1884.i, %bb.at ] ; 3 uses
  %.11213.i = phi ptr [ %i.bdn, %bb.ei ], [ %.pre1886.i, %bb.at ] ; 3 uses
  %.11198.i = phi ptr [ %i.bdo, %bb.ei ], [ %.pre1888.i, %bb.at ] ; 3 uses
  %.01174.i = phi i32 [ %i.bdr, %bb.ei ], [ %.pre1874.i, %bb.at ] ; 7 uses
  %.71162.i = phi i32 [ %.01155.i, %bb.ei ], [ %.pre1870.i, %bb.at ] ; 3 uses
  %.01118.i = phi i32 [ 0, %bb.ei ], [ %.pre1864.i, %bb.at ] ; 3 uses
  %.01106.i = phi i32 [ %i.bdj, %bb.ei ], [ %.pre1862.i, %bb.at ] ; 3 uses
  %.11083.i = phi i32 [ 49, %bb.ei ], [ %.pre1858.i, %bb.at ] ; 3 uses
end_hunk_0
