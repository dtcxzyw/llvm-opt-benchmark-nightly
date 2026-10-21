Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pnmdec?download=true
inline.NumInlined: 16
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@pnm_decode_frame:bb.a
  %i.akw = getelementptr inbounds nuw i8, ptr %i.f, i64 12588 ; 3 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %i.f, i64 12332 ; 3 uses
  %i.aky = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.akz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ala = load i32, ptr %i.akz, align 8, !tbaa !122
  %i.alb = sdiv i32 %i.ala, 4
  %i.alc = sext i32 %i.alb to i64
  %i.ald = load <2 x i32>, ptr %i.aky, align 8, !tbaa !122
  %i.ale = sdiv <2 x i32> %i.ald, splat (i32 4)   ; 2 uses
  %i.alf = extractelement <2 x i32> %i.ale, i64 0
  %i.alg = sext i32 %i.alf to i64
  %i.alh = extractelement <2 x i32> %i.ale, i64 1
  %i.ali = sext i32 %i.alh to i64
  br i1 %i.aku, label %.preheader625.lr.ph.split, label %.loopexit622

.preheader625.lr.ph.split:                        ; preds = %.preheader625.lr.ph
  %wide.trip.count827 = zext nneg i32 %i.acg to i64
  br label %.preheader625

.preheader625:                                    ; preds = %.preheader625.lr.ph.split, %._crit_edge685
  %.promoted691 = phi ptr [ %i.acj, %.preheader625.lr.ph.split ], [ %i.anv, %._crit_edge685 ]
  %.0477689 = phi i32 [ 0, %.preheader625.lr.ph.split ], [ %i.alm, %._crit_edge685 ]
  %.0478688 = phi ptr [ %i.aht, %.preheader625.lr.ph.split ], [ %i.all, %._crit_edge685 ] ; 2 uses
  %.0479687 = phi ptr [ %i.ahr, %.preheader625.lr.ph.split ], [ %i.alk, %._crit_edge685 ] ; 2 uses
  %.0480686 = phi ptr [ %i.ahq, %.preheader625.lr.ph.split ], [ %i.alj, %._crit_edge685 ] ; 2 uses
  br label %bb.bd

._crit_edge685:                                   ; preds = %bb.bd
  %i.alj = getelementptr inbounds [4 x i8], ptr %.0480686, i64 %i.alc
  %i.alk = getelementptr inbounds [4 x i8], ptr %.0479687, i64 %i.alg
  %i.all = getelementptr inbounds [4 x i8], ptr %.0478688, i64 %i.ali
  %i.alm = add nuw nsw i32 %.0477689, 1           ; 2 uses
  %exitcond829.not = icmp eq i32 %i.alm, %i.ach
  br i1 %exitcond829.not, label %.loopexit622, label %.preheader625, !llvm.loop !85

bb.bd:                                            ; preds = %.preheader625, %bb.bd
  %indvars.iv824 = phi i64 [ 0, %.preheader625 ], [ %indvars.iv.next825, %bb.bd ] ; 4 uses
  %i.aln = phi ptr [ %.promoted691, %.preheader625 ], [ %i.anv, %bb.bd ] ; 4 uses
  %i.alo = load i16, ptr %i.aln, align 1, !tbaa !118
  %i.alp = tail call i16 @llvm.bswap.i16(i16 %i.alo)
  %i.alq = zext i16 %i.alp to i32                 ; 2 uses
  %i.alr = lshr i32 %i.alq, 10
  %i.als = zext nneg i32 %i.alr to i64            ; 2 uses
  %i.alt = getelementptr inbounds nuw [2 x i8], ptr %i.akw, i64 %i.als
  %i.alu = load i16, ptr %i.alt, align 2, !tbaa !125
  %i.alv = zext i16 %i.alu to i32
  %i.alw = and i32 %i.alq, 1023
  %i.alx = add nuw nsw i32 %i.alw, %i.alv
  %i.aly = zext nneg i32 %i.alx to i64
  %i.alz = getelementptr inbounds nuw [4 x i8], ptr %i.akv, i64 %i.aly
  %i.ama = load i32, ptr %i.alz, align 4, !tbaa !122
  %i.amb = getelementptr inbounds nuw [4 x i8], ptr %i.akx, i64 %i.als
  %i.amc = load i32, ptr %i.amb, align 4, !tbaa !122
  %i.amd = add i32 %i.amc, %i.ama
  %i.ame = bitcast i32 %i.amd to float
  %i.amf = fmul nsz float %i.ahm, %i.ame
  %i.amg = getelementptr inbounds nuw [4 x i8], ptr %.0480686, i64 %indvars.iv824
  store float %i.amf, ptr %i.amg, align 4, !tbaa !141
  %i.amh = getelementptr inbounds nuw i8, ptr %i.aln, i64 2
  %i.ami = load i16, ptr %i.amh, align 1, !tbaa !118
  %i.amj = tail call i16 @llvm.bswap.i16(i16 %i.ami)
  %i.amk = zext i16 %i.amj to i32                 ; 2 uses
  %i.aml = lshr i32 %i.amk, 10
  %i.amm = zext nneg i32 %i.aml to i64            ; 2 uses
  %i.amn = getelementptr inbounds nuw [2 x i8], ptr %i.akw, i64 %i.amm
  %i.amo = load i16, ptr %i.amn, align 2, !tbaa !125
  %i.amp = zext i16 %i.amo to i32
  %i.amq = and i32 %i.amk, 1023
  %i.amr = add nuw nsw i32 %i.amq, %i.amp
  %i.ams = zext nneg i32 %i.amr to i64
  %i.amt = getelementptr inbounds nuw [4 x i8], ptr %i.akv, i64 %i.ams
  %i.amu = load i32, ptr %i.amt, align 4, !tbaa !122
  %i.amv = getelementptr inbounds nuw [4 x i8], ptr %i.akx, i64 %i.amm
  %i.amw = load i32, ptr %i.amv, align 4, !tbaa !122
  %i.amx = add i32 %i.amw, %i.amu
  %i.amy = bitcast i32 %i.amx to float
  %i.amz = fmul nsz float %i.ahm, %i.amy
  %i.ana = getelementptr inbounds nuw [4 x i8], ptr %.0479687, i64 %indvars.iv824
  store float %i.amz, ptr %i.ana, align 4, !tbaa !141
  %i.anb = getelementptr inbounds nuw i8, ptr %i.aln, i64 4
  %i.anc = load i16, ptr %i.anb, align 1, !tbaa !118
  %i.and = tail call i16 @llvm.bswap.i16(i16 %i.anc)
  %i.ane = zext i16 %i.and to i32                 ; 2 uses
  %i.anf = lshr i32 %i.ane, 10
  %i.ang = zext nneg i32 %i.anf to i64            ; 2 uses
  %i.anh = getelementptr inbounds nuw [2 x i8], ptr %i.akw, i64 %i.ang
  %i.ani = load i16, ptr %i.anh, align 2, !tbaa !125
  %i.anj = zext i16 %i.ani to i32
  %i.ank = and i32 %i.ane, 1023
  %i.anl = add nuw nsw i32 %i.ank, %i.anj
  %i.anm = zext nneg i32 %i.anl to i64
  %i.ann = getelementptr inbounds nuw [4 x i8], ptr %i.akv, i64 %i.anm
  %i.ano = load i32, ptr %i.ann, align 4, !tbaa !122
  %i.anp = getelementptr inbounds nuw [4 x i8], ptr %i.akx, i64 %i.ang
  %i.anq = load i32, ptr %i.anp, align 4, !tbaa !122
  %i.anr = add i32 %i.anq, %i.ano
  %i.ans = bitcast i32 %i.anr to float
  %i.ant = fmul nsz float %i.ahm, %i.ans
  %i.anu = getelementptr inbounds nuw [4 x i8], ptr %.0478688, i64 %indvars.iv824
  store float %i.ant, ptr %i.anu, align 4, !tbaa !141
  %i.anv = getelementptr inbounds nuw i8, ptr %i.aln, i64 6 ; 3 uses
  store ptr %i.anv, ptr %i.f, align 8, !tbaa !111
  %indvars.iv.next825 = add nuw nsw i64 %indvars.iv824, 1 ; 2 uses
  %exitcond828.not = icmp eq i64 %indvars.iv.next825, %wide.trip.count827
  br i1 %exitcond828.not, label %._crit_edge685, label %bb.bd, !llvm.loop !86

.loopexit622:                                     ; preds = %._crit_edge676, %._crit_edge685, %._crit_edge694, %._crit_edge703, %bb.ba, %.preheader627.lr.ph, %bb.bc, %.preheader625.lr.ph, %bb.av, %.preheader623.lr.ph, %bb.aw, %.preheader621.lr.ph
  %i.anw = add nsw i32 %i.ach, -1                 ; 3 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.any = load i32, ptr %i.anx, align 8, !tbaa !122 ; 2 uses
  %i.anz = mul nsw i32 %i.anw, %i.any
  %i.aoa = load ptr, ptr %1, align 8, !tbaa !121
  %i.aob = sext i32 %i.anz to i64
  %i.aoc = getelementptr inbounds i8, ptr %i.aoa, i64 %i.aob
  store ptr %i.aoc, ptr %1, align 8, !tbaa !121
  %i.aod = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.aoe = load i32, ptr %i.aod, align 4, !tbaa !122 ; 2 uses
  %i.aof = mul nsw i32 %i.aoe, %i.anw
  %i.aog = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aoh = load ptr, ptr %i.aog, align 8, !tbaa !121
  %i.aoi = sext i32 %i.aof to i64
  %i.aoj = getelementptr inbounds i8, ptr %i.aoh, i64 %i.aoi
  store ptr %i.aoj, ptr %i.aog, align 8, !tbaa !121
  %i.aok = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aol = load i32, ptr %i.aok, align 8, !tbaa !122 ; 2 uses
  %i.aom = mul nsw i32 %i.aol, %i.anw
  %i.aon = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aoo = load ptr, ptr %i.aon, align 8, !tbaa !121
  %i.aop = sext i32 %i.aom to i64
  %i.aoq = getelementptr inbounds i8, ptr %i.aoo, i64 %i.aop
  store ptr %i.aoq, ptr %i.aon, align 8, !tbaa !121
  %i.aor = sub nsw i32 0, %i.any
  store i32 %i.aor, ptr %i.anx, align 8, !tbaa !122
  %i.aos = sub nsw i32 0, %i.aoe
  store i32 %i.aos, ptr %i.aod, align 4, !tbaa !122
  %i.aot = sub nsw i32 0, %i.aol
  store i32 %i.aot, ptr %i.aok, align 8, !tbaa !122
  br label %.loopexit

bb.be:                                            ; preds = %bb.f
  %i.aou = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.aov = load i32, ptr %i.aou, align 4, !tbaa !137
  %.not = icmp eq i32 %i.aov, 0
  %i.aow = load i32, ptr %i.q, align 8, !tbaa !115 ; 12 uses
  %i.aox = load i32, ptr %i.s, align 4, !tbaa !116 ; 11 uses
  %i.aoy = load ptr, ptr %i.j, align 8, !tbaa !113
  %i.aoz = load ptr, ptr %i.f, align 8, !tbaa !111 ; 5 uses
  %i.apa = ptrtoint ptr %i.aoy to i64
  %i.apb = ptrtoint ptr %i.aoz to i64
  %i.apc = sub i64 %i.apa, %i.apb                 ; 2 uses
  br i1 %.not, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.apd = shl i32 %i.aow, 2
  %i.ape = mul i32 %i.apd, %i.aox
  %i.apf = sext i32 %i.ape to i64
  %i.apg = icmp slt i64 %i.apc, %i.apf
  br i1 %i.apg, label %.critedge567, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.aph = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.api = load float, ptr %i.aph, align 8, !tbaa !138
  %i.apj = fdiv nsz float 1.000000e+00, %i.api    ; 10 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.apl = load i32, ptr %i.apk, align 8, !tbaa !139
  %.not542 = icmp eq i32 %i.apl, 0
  %i.apm = load ptr, ptr %1, align 8, !tbaa !121  ; 8 uses
  %i.apn = icmp sgt i32 %i.aox, 0                 ; 2 uses
  br i1 %.not542, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.apn, label %.preheader631.lr.ph, label %.loopexit630

.preheader631.lr.ph:                              ; preds = %bb.bh
  %i.apo = icmp sgt i32 %i.aow, 0
  %i.app = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.apq = load i32, ptr %i.app, align 8, !tbaa !122 ; 2 uses
  %i.apr = sdiv i32 %i.apq, 4
  %i.aps = sext i32 %i.apr to i64                 ; 2 uses
  br i1 %i.apo, label %.preheader631.lr.ph.split, label %.loopexit630

.preheader631.lr.ph.split:                        ; preds = %.preheader631.lr.ph
  %wide.trip.count809 = zext nneg i32 %i.aow to i64 ; 7 uses
  %i.apt = add nsw i32 %i.aox, -1
  %i.apu = zext i32 %i.apt to i64
  %i.apv = mul nsw i64 %i.aps, %i.apu
  %i.apw = shl nuw nsw i64 %wide.trip.count809, 2
  %i.apx = add nsw i64 %i.apv, %wide.trip.count809
  %i.apy = shl i64 %i.apx, 2
  %scevgep1014 = getelementptr i8, ptr %i.apm, i64 %i.apy ; 2 uses
  %scevgep1015 = getelementptr i8, ptr %i.f, i64 8 ; 2 uses
  %min.iters.check = icmp ult i32 %i.aow, 10
  %bound0 = icmp ult ptr %i.apm, %scevgep1015
  %bound1 = icmp ult ptr %i.f, %scevgep1014
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.apq, -3
  %i.apz = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %wide.trip.count809, 2147483644 ; 4 uses
  %i.aqa = shl nuw nsw i64 %n.vec, 2
  %broadcast.splatinsert = insertelement <2 x float> poison, float %i.apj, i64 0
  %broadcast.splat = shufflevector <2 x float> %broadcast.splatinsert, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count809
  %xtraiter = and i64 %wide.trip.count809, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader631

.preheader631:                                    ; preds = %.preheader631.lr.ph.split, %._crit_edge662
  %.promoted666 = phi ptr [ %i.aoz, %.preheader631.lr.ph.split ], [ %.lcssa1011, %._crit_edge662 ] ; 8 uses
  %.0474664 = phi i32 [ 0, %.preheader631.lr.ph.split ], [ %i.aqq, %._crit_edge662 ]
  %.0475663 = phi ptr [ %i.apm, %.preheader631.lr.ph.split ], [ %i.aqp, %._crit_edge662 ] ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader631
  %scevgep1016 = getelementptr i8, ptr %.promoted666, i64 %i.apw ; 2 uses
  %bound01017 = icmp ult ptr %i.apm, %scevgep1016
  %bound11018 = icmp ult ptr %.promoted666, %scevgep1014
  %found.conflict1019 = and i1 %bound01017, %bound11018
  %conflict.rdx = or i1 %i.apz, %found.conflict1019
  %bound01020 = icmp ult ptr %i.f, %scevgep1016
  %bound11021 = icmp ult ptr %.promoted666, %scevgep1015
  %found.conflict1022 = and i1 %bound01020, %bound11021
  %conflict.rdx1023 = or i1 %conflict.rdx, %found.conflict1022
  br i1 %conflict.rdx1023, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.aqb = getelementptr i8, ptr %.promoted666, i64 %i.aqa ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aqc = shl i64 %index, 2                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted666, i64 %i.aqc ; 2 uses
  %i.aqd = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x float>, ptr %next.gep, align 1, !tbaa !118, !alias.scope !149
  %wide.load1025 = load <2 x float>, ptr %i.aqd, align 1, !tbaa !118, !alias.scope !149
  %4 = fmul nsz <2 x float> %broadcast.splat, %wide.load
  %5 = fmul nsz <2 x float> %broadcast.splat, %wide.load1025
  %i.aqe = getelementptr inbounds nuw [4 x i8], ptr %.0475663, i64 %index ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.aqe, i64 8
  store <2 x float> %4, ptr %i.aqe, align 4, !tbaa !141, !alias.scope !150, !noalias !151
  store <2 x float> %5, ptr %6, align 4, !tbaa !141, !alias.scope !150, !noalias !151
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aqf = icmp eq i64 %index.next, %n.vec
  br i1 %i.aqf, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %i.aqg = getelementptr i8, ptr %.promoted666, i64 %i.aqc
  %i.aqh = getelementptr i8, ptr %i.aqg, i64 16
  store ptr %i.aqh, ptr %i.f, align 8, !tbaa !111, !alias.scope !152, !noalias !149
  br i1 %cmp.n, label %._crit_edge662, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader631, %middle.block
  %indvars.iv806.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader631 ], [ %n.vec, %middle.block ] ; 3 uses
  %.ph1352 = phi ptr [ %.promoted666, %vector.memcheck ], [ %.promoted666, %.preheader631 ], [ %i.aqb, %middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv806.prol = phi i64 [ %indvars.iv.next807.prol, %scalar.ph.prol ], [ %indvars.iv806.ph, %scalar.ph.preheader ] ; 2 uses
  %i.aqi = phi ptr [ %i.aqm, %scalar.ph.prol ], [ %.ph1352, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.aqj = load float, ptr %i.aqi, align 1, !tbaa !118
  %i.aqk = fmul nsz float %i.apj, %i.aqj
  %i.aql = getelementptr inbounds nuw [4 x i8], ptr %.0475663, i64 %indvars.iv806.prol
  store float %i.aqk, ptr %i.aql, align 4, !tbaa !141
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aqi, i64 4 ; 4 uses
  store ptr %i.aqm, ptr %i.f, align 8, !tbaa !111
  %indvars.iv.next807.prol = add nuw nsw i64 %indvars.iv806.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !92

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa1355.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.aqm, %scalar.ph.prol ]
  %indvars.iv806.unr = phi i64 [ %indvars.iv806.ph, %scalar.ph.preheader ], [ %indvars.iv.next807.prol, %scalar.ph.prol ]
  %.unr = phi ptr [ %.ph1352, %scalar.ph.preheader ], [ %i.aqm, %scalar.ph.prol ]
  %i.aqn = sub nsw i64 %indvars.iv806.ph, %wide.trip.count809
  %i.aqo = icmp ugt i64 %i.aqn, -4
  br i1 %i.aqo, label %._crit_edge662, label %scalar.ph

._crit_edge662:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa1011 = phi ptr [ %i.aqb, %middle.block ], [ %.lcssa1355.unr, %scalar.ph.prol.loopexit ], [ %i.ark, %scalar.ph ]
  %i.aqp = getelementptr inbounds [4 x i8], ptr %.0475663, i64 %i.aps
  %i.aqq = add nuw nsw i32 %.0474664, 1           ; 2 uses
  %exitcond811.not = icmp eq i32 %i.aqq, %i.aox
  br i1 %exitcond811.not, label %.loopexit630, label %.preheader631, !llvm.loop !93

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv806 = phi i64 [ %indvars.iv.next807.3, %scalar.ph ], [ %indvars.iv806.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.aqr = phi ptr [ %i.ark, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.aqs = load float, ptr %i.aqr, align 1, !tbaa !118
  %i.aqt = fmul nsz float %i.apj, %i.aqs
  %i.aqu = getelementptr inbounds nuw [4 x i8], ptr %.0475663, i64 %indvars.iv806
  store float %i.aqt, ptr %i.aqu, align 4, !tbaa !141
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqr, i64 4 ; 2 uses
  store ptr %i.aqv, ptr %i.f, align 8, !tbaa !111
  %i.aqw = load float, ptr %i.aqv, align 1, !tbaa !118
  %i.aqx = fmul nsz float %i.apj, %i.aqw
  %i.aqy = getelementptr inbounds nuw [4 x i8], ptr %.0475663, i64 %indvars.iv806
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqy, i64 4
  store float %i.aqx, ptr %i.aqz, align 4, !tbaa !141
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqr, i64 8 ; 2 uses
  store ptr %i.ara, ptr %i.f, align 8, !tbaa !111
  %i.arb = load float, ptr %i.ara, align 1, !tbaa !118
  %i.arc = fmul nsz float %i.apj, %i.arb
  %i.ard = getelementptr inbounds nuw [4 x i8], ptr %.0475663, i64 %indvars.iv806
  %i.are = getelementptr inbounds nuw i8, ptr %i.ard, i64 8
  store float %i.arc, ptr %i.are, align 4, !tbaa !141
  %i.arf = getelementptr inbounds nuw i8, ptr %i.aqr, i64 12 ; 2 uses
  store ptr %i.arf, ptr %i.f, align 8, !tbaa !111
  %i.arg = load float, ptr %i.arf, align 1, !tbaa !118
  %i.arh = fmul nsz float %i.apj, %i.arg
  %i.ari = getelementptr inbounds nuw [4 x i8], ptr %.0475663, i64 %indvars.iv806
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ari, i64 12
  store float %i.arh, ptr %i.arj, align 4, !tbaa !141
  %i.ark = getelementptr inbounds nuw i8, ptr %i.aqr, i64 16 ; 3 uses
  store ptr %i.ark, ptr %i.f, align 8, !tbaa !111
  %indvars.iv.next807.3 = add nuw nsw i64 %indvars.iv806, 4 ; 2 uses
  %exitcond810.not.3 = icmp eq i64 %indvars.iv.next807.3, %wide.trip.count809
  br i1 %exitcond810.not.3, label %._crit_edge662, label %scalar.ph, !llvm.loop !94

bb.bi:                                            ; preds = %bb.bg
  br i1 %i.apn, label %.preheader629.lr.ph, label %.loopexit630

.preheader629.lr.ph:                              ; preds = %bb.bi
  %i.arl = icmp sgt i32 %i.aow, 0
  %i.arm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.arn = load i32, ptr %i.arm, align 8, !tbaa !122 ; 2 uses
  %i.aro = sdiv i32 %i.arn, 4
  %i.arp = sext i32 %i.aro to i64                 ; 2 uses
  br i1 %i.arl, label %.preheader629.lr.ph.split, label %.loopexit630

.preheader629.lr.ph.split:                        ; preds = %.preheader629.lr.ph
  %wide.trip.count815 = zext nneg i32 %i.aow to i64 ; 7 uses
  %i.arq = add nsw i32 %i.aox, -1
  %i.arr = zext i32 %i.arq to i64
  %i.ars = mul nsw i64 %i.arp, %i.arr
  %i.art = shl nuw nsw i64 %wide.trip.count815, 2
  %i.aru = add nsw i64 %i.ars, %wide.trip.count815
  %i.arv = shl i64 %i.aru, 2
  %scevgep1028 = getelementptr i8, ptr %i.apm, i64 %i.arv ; 2 uses
  %scevgep1029 = getelementptr i8, ptr %i.f, i64 8 ; 2 uses
  %min.iters.check1044 = icmp ult i32 %i.aow, 8
  %bound01031 = icmp ult ptr %i.apm, %scevgep1029
  %bound11032 = icmp ult ptr %i.f, %scevgep1028
  %found.conflict1033 = and i1 %bound01031, %bound11032
  %stride.check1034 = icmp slt i32 %i.arn, -3
  %i.arw = or i1 %found.conflict1033, %stride.check1034
  %n.vec1046 = and i64 %wide.trip.count815, 2147483644 ; 4 uses
  %i.arx = shl nuw nsw i64 %n.vec1046, 2
  %broadcast.splatinsert1047 = insertelement <2 x float> poison, float %i.apj, i64 0
  %broadcast.splat1048 = shufflevector <2 x float> %broadcast.splatinsert1047, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n1057 = icmp eq i64 %n.vec1046, %wide.trip.count815
  %xtraiter1360 = and i64 %wide.trip.count815, 1
  %lcmp.mod1361.not = icmp eq i64 %xtraiter1360, 0
  %i.ary = add nsw i64 %wide.trip.count815, -1
  br label %.preheader629

.preheader629:                                    ; preds = %.preheader629.lr.ph.split, %._crit_edge669
  %.promoted673 = phi ptr [ %i.aoz, %.preheader629.lr.ph.split ], [ %.lcssa1010, %._crit_edge669 ] ; 8 uses
  %.0471671 = phi i32 [ 0, %.preheader629.lr.ph.split ], [ %i.asp, %._crit_edge669 ]
  %.0472670 = phi ptr [ %i.apm, %.preheader629.lr.ph.split ], [ %i.aso, %._crit_edge669 ] ; 5 uses
  br i1 %min.iters.check1044, label %scalar.ph1043.preheader, label %vector.memcheck1027

vector.memcheck1027:                              ; preds = %.preheader629
  %scevgep1030 = getelementptr i8, ptr %.promoted673, i64 %i.art ; 2 uses
  %bound01035 = icmp ult ptr %i.apm, %scevgep1030
  %bound11036 = icmp ult ptr %.promoted673, %scevgep1028
  %found.conflict1037 = and i1 %bound01035, %bound11036
  %conflict.rdx1038 = or i1 %i.arw, %found.conflict1037
  %bound01039 = icmp ult ptr %i.f, %scevgep1030
  %bound11040 = icmp ult ptr %.promoted673, %scevgep1029
  %found.conflict1041 = and i1 %bound01039, %bound11040
  %conflict.rdx1042 = or i1 %conflict.rdx1038, %found.conflict1041
  br i1 %conflict.rdx1042, label %scalar.ph1043.preheader, label %vector.ph1045

vector.ph1045:                                    ; preds = %vector.memcheck1027
  %i.arz = getelementptr i8, ptr %.promoted673, i64 %i.arx ; 2 uses
  br label %vector.body1049

vector.body1049:                                  ; preds = %vector.body1049, %vector.ph1045
  %index1050 = phi i64 [ 0, %vector.ph1045 ], [ %index.next1055, %vector.body1049 ] ; 3 uses
  %i.asa = shl i64 %index1050, 2                  ; 2 uses
  %next.gep1051 = getelementptr i8, ptr %.promoted673, i64 %i.asa ; 2 uses
  %i.asb = getelementptr i8, ptr %next.gep1051, i64 8
  %wide.load1053 = load <2 x i32>, ptr %next.gep1051, align 1, !tbaa !118, !alias.scope !153
  %wide.load1054 = load <2 x i32>, ptr %i.asb, align 1, !tbaa !118, !alias.scope !153
  %i.asc = tail call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %wide.load1053)
  %i.asd = tail call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %wide.load1054)
  %7 = bitcast <2 x i32> %i.asc to <2 x float>
  %8 = bitcast <2 x i32> %i.asd to <2 x float>
  %9 = fmul nsz <2 x float> %broadcast.splat1048, %7
  %10 = fmul nsz <2 x float> %broadcast.splat1048, %8
  %11 = getelementptr inbounds nuw [4 x i8], ptr %.0472670, i64 %index1050 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store <2 x float> %9, ptr %11, align 4, !tbaa !141, !alias.scope !154, !noalias !155
  store <2 x float> %10, ptr %12, align 4, !tbaa !141, !alias.scope !154, !noalias !155
  %index.next1055 = add nuw i64 %index1050, 4     ; 2 uses
  %i.ase = icmp eq i64 %index.next1055, %n.vec1046
  br i1 %i.ase, label %middle.block1056, label %vector.body1049, !llvm.loop !99

middle.block1056:                                 ; preds = %vector.body1049
  %i.asf = getelementptr i8, ptr %.promoted673, i64 %i.asa
  %i.asg = getelementptr i8, ptr %i.asf, i64 16
  store ptr %i.asg, ptr %i.f, align 8, !tbaa !111, !alias.scope !156, !noalias !153
  br i1 %cmp.n1057, label %._crit_edge669, label %scalar.ph1043.preheader

scalar.ph1043.preheader:                          ; preds = %vector.memcheck1027, %.preheader629, %middle.block1056
  %indvars.iv812.ph = phi i64 [ 0, %vector.memcheck1027 ], [ 0, %.preheader629 ], [ %n.vec1046, %middle.block1056 ] ; 4 uses
  %.ph1349 = phi ptr [ %.promoted673, %vector.memcheck1027 ], [ %.promoted673, %.preheader629 ], [ %i.arz, %middle.block1056 ] ; 3 uses
  br i1 %lcmp.mod1361.not, label %scalar.ph1043.prol.loopexit, label %scalar.ph1043.prol

scalar.ph1043.prol:                               ; preds = %scalar.ph1043.preheader
  %i.ash = load i32, ptr %.ph1349, align 1, !tbaa !118
  %i.asi = tail call i32 @llvm.bswap.i32(i32 %i.ash)
  %i.asj = bitcast i32 %i.asi to float
  %i.ask = fmul nsz float %i.apj, %i.asj
  %i.asl = getelementptr inbounds nuw [4 x i8], ptr %.0472670, i64 %indvars.iv812.ph
  store float %i.ask, ptr %i.asl, align 4, !tbaa !141
  %i.asm = getelementptr inbounds nuw i8, ptr %.ph1349, i64 4 ; 3 uses
  store ptr %i.asm, ptr %i.f, align 8, !tbaa !111
  %indvars.iv.next813.prol = or disjoint i64 %indvars.iv812.ph, 1
  br label %scalar.ph1043.prol.loopexit

scalar.ph1043.prol.loopexit:                      ; preds = %scalar.ph1043.prol, %scalar.ph1043.preheader
  %.lcssa1351.unr = phi ptr [ poison, %scalar.ph1043.preheader ], [ %i.asm, %scalar.ph1043.prol ]
  %indvars.iv812.unr = phi i64 [ %indvars.iv812.ph, %scalar.ph1043.preheader ], [ %indvars.iv.next813.prol, %scalar.ph1043.prol ]
  %.unr1363 = phi ptr [ %.ph1349, %scalar.ph1043.preheader ], [ %i.asm, %scalar.ph1043.prol ]
  %i.asn = icmp eq i64 %indvars.iv812.ph, %i.ary
  br i1 %i.asn, label %._crit_edge669, label %scalar.ph1043

._crit_edge669:                                   ; preds = %scalar.ph1043.prol.loopexit, %scalar.ph1043, %middle.block1056
  %.lcssa1010 = phi ptr [ %i.arz, %middle.block1056 ], [ %.lcssa1351.unr, %scalar.ph1043.prol.loopexit ], [ %i.atd, %scalar.ph1043 ]
  %i.aso = getelementptr inbounds [4 x i8], ptr %.0472670, i64 %i.arp
  %i.asp = add nuw nsw i32 %.0471671, 1           ; 2 uses
  %exitcond817.not = icmp eq i32 %i.asp, %i.aox
  br i1 %exitcond817.not, label %.loopexit630, label %.preheader629, !llvm.loop !100

scalar.ph1043:                                    ; preds = %scalar.ph1043.prol.loopexit, %scalar.ph1043
  %indvars.iv812 = phi i64 [ %indvars.iv.next813.1, %scalar.ph1043 ], [ %indvars.iv812.unr, %scalar.ph1043.prol.loopexit ] ; 3 uses
  %i.asq = phi ptr [ %i.atd, %scalar.ph1043 ], [ %.unr1363, %scalar.ph1043.prol.loopexit ] ; 3 uses
  %i.asr = load i32, ptr %i.asq, align 1, !tbaa !118
  %i.ass = tail call i32 @llvm.bswap.i32(i32 %i.asr)
  %i.ast = bitcast i32 %i.ass to float
  %i.asu = fmul nsz float %i.apj, %i.ast
  %i.asv = getelementptr inbounds nuw [4 x i8], ptr %.0472670, i64 %indvars.iv812
  store float %i.asu, ptr %i.asv, align 4, !tbaa !141
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asq, i64 4 ; 2 uses
  store ptr %i.asw, ptr %i.f, align 8, !tbaa !111
  %i.asx = load i32, ptr %i.asw, align 1, !tbaa !118
  %i.asy = tail call i32 @llvm.bswap.i32(i32 %i.asx)
  %i.asz = bitcast i32 %i.asy to float
  %i.ata = fmul nsz float %i.apj, %i.asz
  %i.atb = getelementptr inbounds nuw [4 x i8], ptr %.0472670, i64 %indvars.iv812
  %i.atc = getelementptr inbounds nuw i8, ptr %i.atb, i64 4
  store float %i.ata, ptr %i.atc, align 4, !tbaa !141
  %i.atd = getelementptr inbounds nuw i8, ptr %i.asq, i64 8 ; 3 uses
  store ptr %i.atd, ptr %i.f, align 8, !tbaa !111
  %indvars.iv.next813.1 = add nuw nsw i64 %indvars.iv812, 2 ; 2 uses
  %exitcond816.not.1 = icmp eq i64 %indvars.iv.next813.1, %wide.trip.count815
  br i1 %exitcond816.not.1, label %._crit_edge669, label %scalar.ph1043, !llvm.loop !101

bb.bj:                                            ; preds = %bb.be
  %i.ate = shl i32 %i.aow, 1
  %i.atf = mul i32 %i.ate, %i.aox
  %i.atg = sext i32 %i.atf to i64
  %i.ath = icmp slt i64 %i.apc, %i.atg
  br i1 %i.ath, label %.critedge567, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ati = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.atj = load float, ptr %i.ati, align 8, !tbaa !138
  %i.atk = fdiv nsz float 1.000000e+00, %i.atj    ; 2 uses
  %i.atl = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.atm = load i32, ptr %i.atl, align 8, !tbaa !139
  %.not543 = icmp eq i32 %i.atm, 0
  %i.atn = load ptr, ptr %1, align 8, !tbaa !121  ; 2 uses
  %i.ato = icmp sgt i32 %i.aox, 0                 ; 2 uses
  br i1 %.not543, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.ato, label %.preheader635.lr.ph, label %.loopexit630

.preheader635.lr.ph:                              ; preds = %bb.bl
  %i.atp = icmp sgt i32 %i.aow, 0
  %i.atq = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.atr = getelementptr inbounds nuw i8, ptr %i.f, i64 12588
  %i.ats = getelementptr inbounds nuw i8, ptr %i.f, i64 12332
  %i.att = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.atu = load i32, ptr %i.att, align 8, !tbaa !122
  %i.atv = sdiv i32 %i.atu, 4
  %i.atw = sext i32 %i.atv to i64
  br i1 %i.atp, label %.preheader635.lr.ph.split, label %.loopexit630

.preheader635.lr.ph.split:                        ; preds = %.preheader635.lr.ph
  %wide.trip.count = zext nneg i32 %i.aow to i64
  br label %.preheader635

.preheader635:                                    ; preds = %.preheader635.lr.ph.split, %._crit_edge
  %.promoted652 = phi ptr [ %i.aoz, %.preheader635.lr.ph.split ], [ %i.aus, %._crit_edge ]
  %.0468650 = phi i32 [ 0, %.preheader635.lr.ph.split ], [ %i.aty, %._crit_edge ]
  %.0469649 = phi ptr [ %i.atn, %.preheader635.lr.ph.split ], [ %i.atx, %._crit_edge ] ; 2 uses
  br label %bb.bm

._crit_edge:                                      ; preds = %bb.bm
  %i.atx = getelementptr inbounds [4 x i8], ptr %.0469649, i64 %i.atw
  %i.aty = add nuw nsw i32 %.0468650, 1           ; 2 uses
  %exitcond799.not = icmp eq i32 %i.aty, %i.aox
  br i1 %exitcond799.not, label %.loopexit630, label %.preheader635, !llvm.loop !102

bb.bm:                                            ; preds = %.preheader635, %bb.bm
  %indvars.iv = phi i64 [ 0, %.preheader635 ], [ %indvars.iv.next, %bb.bm ] ; 2 uses
  %i.atz = phi ptr [ %.promoted652, %.preheader635 ], [ %i.aus, %bb.bm ] ; 2 uses
  %i.aua = load i16, ptr %i.atz, align 1, !tbaa !118
  %i.aub = zext i16 %i.aua to i32                 ; 2 uses
  %i.auc = lshr i32 %i.aub, 10
  %i.aud = zext nneg i32 %i.auc to i64            ; 2 uses
  %i.aue = getelementptr inbounds nuw [2 x i8], ptr %i.atr, i64 %i.aud
  %i.auf = load i16, ptr %i.aue, align 2, !tbaa !125
  %i.aug = zext i16 %i.auf to i32
  %i.auh = and i32 %i.aub, 1023
  %i.aui = add nuw nsw i32 %i.auh, %i.aug
  %i.auj = zext nneg i32 %i.aui to i64
  %i.auk = getelementptr inbounds nuw [4 x i8], ptr %i.atq, i64 %i.auj
  %i.aul = load i32, ptr %i.auk, align 4, !tbaa !122
  %i.aum = getelementptr inbounds nuw [4 x i8], ptr %i.ats, i64 %i.aud
  %i.aun = load i32, ptr %i.aum, align 4, !tbaa !122
  %i.auo = add i32 %i.aun, %i.aul
  %i.aup = bitcast i32 %i.auo to float
  %i.auq = fmul nsz float %i.atk, %i.aup
  %i.aur = getelementptr inbounds nuw [4 x i8], ptr %.0469649, i64 %indvars.iv
  store float %i.auq, ptr %i.aur, align 4, !tbaa !141
  %i.aus = getelementptr inbounds nuw i8, ptr %i.atz, i64 2 ; 3 uses
  store ptr %i.aus, ptr %i.f, align 8, !tbaa !111
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.bm, !llvm.loop !103

bb.bn:                                            ; preds = %bb.bk
  br i1 %i.ato, label %.preheader633.lr.ph, label %.loopexit630

.preheader633.lr.ph:                              ; preds = %bb.bn
  %i.aut = icmp sgt i32 %i.aow, 0
  %i.auu = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.auv = getelementptr inbounds nuw i8, ptr %i.f, i64 12588
  %i.auw = getelementptr inbounds nuw i8, ptr %i.f, i64 12332
  %i.aux = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.auy = load i32, ptr %i.aux, align 8, !tbaa !122
  %i.auz = sdiv i32 %i.auy, 4
  %i.ava = sext i32 %i.auz to i64
  br i1 %i.aut, label %.preheader633.lr.ph.split, label %.loopexit630

.preheader633.lr.ph.split:                        ; preds = %.preheader633.lr.ph
  %wide.trip.count803 = zext nneg i32 %i.aow to i64
  br label %.preheader633

.preheader633:                                    ; preds = %.preheader633.lr.ph.split, %._crit_edge655
  %.promoted659 = phi ptr [ %i.aoz, %.preheader633.lr.ph.split ], [ %i.avx, %._crit_edge655 ]
  %.0465657 = phi i32 [ 0, %.preheader633.lr.ph.split ], [ %i.avc, %._crit_edge655 ]
  %.0466656 = phi ptr [ %i.atn, %.preheader633.lr.ph.split ], [ %i.avb, %._crit_edge655 ] ; 2 uses
  br label %bb.bo

._crit_edge655:                                   ; preds = %bb.bo
  %i.avb = getelementptr inbounds [4 x i8], ptr %.0466656, i64 %i.ava
  %i.avc = add nuw nsw i32 %.0465657, 1           ; 2 uses
  %exitcond805.not = icmp eq i32 %i.avc, %i.aox
  br i1 %exitcond805.not, label %.loopexit630, label %.preheader633, !llvm.loop !104

bb.bo:                                            ; preds = %.preheader633, %bb.bo
  %indvars.iv800 = phi i64 [ 0, %.preheader633 ], [ %indvars.iv.next801, %bb.bo ] ; 2 uses
  %i.avd = phi ptr [ %.promoted659, %.preheader633 ], [ %i.avx, %bb.bo ] ; 2 uses
  %i.ave = load i16, ptr %i.avd, align 1, !tbaa !118
  %i.avf = tail call i16 @llvm.bswap.i16(i16 %i.ave)
  %i.avg = zext i16 %i.avf to i32                 ; 2 uses
  %i.avh = lshr i32 %i.avg, 10
  %i.avi = zext nneg i32 %i.avh to i64            ; 2 uses
  %i.avj = getelementptr inbounds nuw [2 x i8], ptr %i.auv, i64 %i.avi
  %i.avk = load i16, ptr %i.avj, align 2, !tbaa !125
  %i.avl = zext i16 %i.avk to i32
  %i.avm = and i32 %i.avg, 1023
  %i.avn = add nuw nsw i32 %i.avm, %i.avl
  %i.avo = zext nneg i32 %i.avn to i64
  %i.avp = getelementptr inbounds nuw [4 x i8], ptr %i.auu, i64 %i.avo
  %i.avq = load i32, ptr %i.avp, align 4, !tbaa !122
  %i.avr = getelementptr inbounds nuw [4 x i8], ptr %i.auw, i64 %i.avi
  %i.avs = load i32, ptr %i.avr, align 4, !tbaa !122
  %i.avt = add i32 %i.avs, %i.avq
  %i.avu = bitcast i32 %i.avt to float
  %i.avv = fmul nsz float %i.atk, %i.avu
  %i.avw = getelementptr inbounds nuw [4 x i8], ptr %.0466656, i64 %indvars.iv800
  store float %i.avv, ptr %i.avw, align 4, !tbaa !141
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avd, i64 2 ; 3 uses
  store ptr %i.avx, ptr %i.f, align 8, !tbaa !111
  %indvars.iv.next801 = add nuw nsw i64 %indvars.iv800, 1 ; 2 uses
  %exitcond804.not = icmp eq i64 %indvars.iv.next801, %wide.trip.count803
  br i1 %exitcond804.not, label %._crit_edge655, label %bb.bo, !llvm.loop !105

end_hunk_0
