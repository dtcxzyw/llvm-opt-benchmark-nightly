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
  %stride.check1020 = icmp slt i32 %i.apq, -3
  %invariant.op = or i1 %stride.check1020, %found.conflict
  %n.vec = and i64 %wide.trip.count809, 2147483644 ; 4 uses
  %i.apz = shl nuw nsw i64 %n.vec, 2
  %broadcast.splatinsert = insertelement <2 x float> poison, float %i.apj, i64 0
  %4 = shufflevector <2 x float> %broadcast.splatinsert, <2 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count809
  %xtraiter = and i64 %wide.trip.count809, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader631

.preheader631:                                    ; preds = %.preheader631.lr.ph.split, %._crit_edge662
  %.promoted666 = phi ptr [ %i.aoz, %.preheader631.lr.ph.split ], [ %.lcssa1011, %._crit_edge662 ] ; 8 uses
  %.0474664 = phi i32 [ 0, %.preheader631.lr.ph.split ], [ %i.aqp, %._crit_edge662 ]
  %.0475663 = phi ptr [ %i.apm, %.preheader631.lr.ph.split ], [ %i.aqo, %._crit_edge662 ] ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader631
  %scevgep1016 = getelementptr i8, ptr %.promoted666, i64 %i.apw ; 2 uses
  %bound01017 = icmp ult ptr %i.apm, %scevgep1016
  %bound11018 = icmp ult ptr %.promoted666, %scevgep1014
  %found.conflict1019 = and i1 %bound01017, %bound11018
  %conflict.rdx.reass = or i1 %found.conflict1019, %invariant.op
  %bound01021 = icmp ult ptr %i.f, %scevgep1016
  %bound11022 = icmp ult ptr %.promoted666, %scevgep1015
  %found.conflict1023 = and i1 %bound01021, %bound11022
  %conflict.rdx1024 = or i1 %conflict.rdx.reass, %found.conflict1023
  br i1 %conflict.rdx1024, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.aqa = getelementptr i8, ptr %.promoted666, i64 %i.apz ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aqb = shl i64 %index, 2                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted666, i64 %i.aqb ; 2 uses
  %i.aqc = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x float>, ptr %next.gep, align 1, !tbaa !118, !alias.scope !149
  %wide.load1026 = load <2 x float>, ptr %i.aqc, align 1, !tbaa !118, !alias.scope !149
  %i.aqd = getelementptr inbounds nuw [4 x i8], ptr %.0475663, i64 %index
  %5 = shufflevector <2 x float> %wide.load, <2 x float> %wide.load1026, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %6 = fmul nsz <4 x float> %4, %5
  store <4 x float> %6, ptr %i.aqd, align 4, !tbaa !141, !alias.scope !150, !noalias !151
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aqe = icmp eq i64 %index.next, %n.vec
  br i1 %i.aqe, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %i.aqf = getelementptr i8, ptr %.promoted666, i64 %i.aqb
  %i.aqg = getelementptr i8, ptr %i.aqf, i64 16
  store ptr %i.aqg, ptr %i.f, align 8, !tbaa !111, !alias.scope !152, !noalias !149
  br i1 %cmp.n, label %._crit_edge662, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader631, %middle.block
  %indvars.iv806.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader631 ], [ %n.vec, %middle.block ] ; 3 uses
  %.ph1372 = phi ptr [ %.promoted666, %vector.memcheck ], [ %.promoted666, %.preheader631 ], [ %i.aqa, %middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv806.prol = phi i64 [ %indvars.iv.next807.prol, %scalar.ph.prol ], [ %indvars.iv806.ph, %scalar.ph.preheader ] ; 2 uses
  %i.aqh = phi ptr [ %i.aql, %scalar.ph.prol ], [ %.ph1372, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.aqi = load float, ptr %i.aqh, align 1, !tbaa !118
  %i.aqj = fmul nsz float %i.apj, %i.aqi
  %i.aqk = getelementptr inbounds nuw [4 x i8], ptr %.0475663, i64 %indvars.iv806.prol
  store float %i.aqj, ptr %i.aqk, align 4, !tbaa !141
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqh, i64 4 ; 4 uses
  store ptr %i.aql, ptr %i.f, align 8, !tbaa !111
  %indvars.iv.next807.prol = add nuw nsw i64 %indvars.iv806.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !92

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa1375.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.aql, %scalar.ph.prol ]
  %indvars.iv806.unr = phi i64 [ %indvars.iv806.ph, %scalar.ph.preheader ], [ %indvars.iv.next807.prol, %scalar.ph.prol ]
  %.unr = phi ptr [ %.ph1372, %scalar.ph.preheader ], [ %i.aql, %scalar.ph.prol ]
  %i.aqm = sub nsw i64 %indvars.iv806.ph, %wide.trip.count809
  %i.aqn = icmp ugt i64 %i.aqm, -4
  br i1 %i.aqn, label %._crit_edge662, label %scalar.ph

._crit_edge662:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa1011 = phi ptr [ %i.aqa, %middle.block ], [ %.lcssa1375.unr, %scalar.ph.prol.loopexit ], [ %i.arj, %scalar.ph ]
  %i.aqo = getelementptr inbounds [4 x i8], ptr %.0475663, i64 %i.aps
  %i.aqp = add nuw nsw i32 %.0474664, 1           ; 2 uses
  %exitcond811.not = icmp eq i32 %i.aqp, %i.aox
  br i1 %exitcond811.not, label %.loopexit630, label %.preheader631, !llvm.loop !93

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv806 = phi i64 [ %indvars.iv.next807.3, %scalar.ph ], [ %indvars.iv806.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.aqq = phi ptr [ %i.arj, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.aqr = load float, ptr %i.aqq, align 1, !tbaa !118
  %i.aqs = fmul nsz float %i.apj, %i.aqr
  %i.aqt = getelementptr inbounds nuw [4 x i8], ptr %.0475663, i64 %indvars.iv806
  store float %i.aqs, ptr %i.aqt, align 4, !tbaa !141
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqq, i64 4 ; 2 uses
  store ptr %i.aqu, ptr %i.f, align 8, !tbaa !111
  %i.aqv = load float, ptr %i.aqu, align 1, !tbaa !118
  %i.aqw = fmul nsz float %i.apj, %i.aqv
  %i.aqx = getelementptr inbounds nuw [4 x i8], ptr %.0475663, i64 %indvars.iv806
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqx, i64 4
  store float %i.aqw, ptr %i.aqy, align 4, !tbaa !141
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqq, i64 8 ; 2 uses
  store ptr %i.aqz, ptr %i.f, align 8, !tbaa !111
  %i.ara = load float, ptr %i.aqz, align 1, !tbaa !118
  %i.arb = fmul nsz float %i.apj, %i.ara
  %i.arc = getelementptr inbounds nuw [4 x i8], ptr %.0475663, i64 %indvars.iv806
  %i.ard = getelementptr inbounds nuw i8, ptr %i.arc, i64 8
  store float %i.arb, ptr %i.ard, align 4, !tbaa !141
  %i.are = getelementptr inbounds nuw i8, ptr %i.aqq, i64 12 ; 2 uses
  store ptr %i.are, ptr %i.f, align 8, !tbaa !111
  %i.arf = load float, ptr %i.are, align 1, !tbaa !118
  %i.arg = fmul nsz float %i.apj, %i.arf
  %i.arh = getelementptr inbounds nuw [4 x i8], ptr %.0475663, i64 %indvars.iv806
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arh, i64 12
  store float %i.arg, ptr %i.ari, align 4, !tbaa !141
  %i.arj = getelementptr inbounds nuw i8, ptr %i.aqq, i64 16 ; 3 uses
  store ptr %i.arj, ptr %i.f, align 8, !tbaa !111
  %indvars.iv.next807.3 = add nuw nsw i64 %indvars.iv806, 4 ; 2 uses
  %exitcond810.not.3 = icmp eq i64 %indvars.iv.next807.3, %wide.trip.count809
  br i1 %exitcond810.not.3, label %._crit_edge662, label %scalar.ph, !llvm.loop !94

bb.bi:                                            ; preds = %bb.bg
  br i1 %i.apn, label %.preheader629.lr.ph, label %.loopexit630

.preheader629.lr.ph:                              ; preds = %bb.bi
  %i.ark = icmp sgt i32 %i.aow, 0
  %i.arl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.arm = load i32, ptr %i.arl, align 8, !tbaa !122 ; 2 uses
  %i.arn = sdiv i32 %i.arm, 4
  %i.aro = sext i32 %i.arn to i64                 ; 2 uses
  br i1 %i.ark, label %.preheader629.lr.ph.split, label %.loopexit630

.preheader629.lr.ph.split:                        ; preds = %.preheader629.lr.ph
  %wide.trip.count815 = zext nneg i32 %i.aow to i64 ; 7 uses
  %i.arp = add nsw i32 %i.aox, -1
  %i.arq = zext i32 %i.arp to i64
  %i.arr = mul nsw i64 %i.aro, %i.arq
  %i.ars = shl nuw nsw i64 %wide.trip.count815, 2
  %i.art = add nsw i64 %i.arr, %wide.trip.count815
  %i.aru = shl i64 %i.art, 2
  %scevgep1029 = getelementptr i8, ptr %i.apm, i64 %i.aru ; 2 uses
  %scevgep1030 = getelementptr i8, ptr %i.f, i64 8 ; 2 uses
  %min.iters.check1046 = icmp ult i32 %i.aow, 8
  %bound01032 = icmp ult ptr %i.apm, %scevgep1030
  %bound11033 = icmp ult ptr %i.f, %scevgep1029
  %found.conflict1034 = and i1 %bound01032, %bound11033
  %stride.check1039 = icmp slt i32 %i.arm, -3
  %invariant.op1428 = or i1 %stride.check1039, %found.conflict1034
  %n.vec1048 = and i64 %wide.trip.count815, 2147483644 ; 4 uses
  %i.arv = shl nuw nsw i64 %n.vec1048, 2
  %broadcast.splatinsert1049 = insertelement <2 x float> poison, float %i.apj, i64 0
  %7 = shufflevector <2 x float> %broadcast.splatinsert1049, <2 x float> poison, <4 x i32> zeroinitializer
  %cmp.n1059 = icmp eq i64 %n.vec1048, %wide.trip.count815
  %xtraiter1380 = and i64 %wide.trip.count815, 1
  %lcmp.mod1381.not = icmp eq i64 %xtraiter1380, 0
  %i.arw = add nsw i64 %wide.trip.count815, -1
  br label %.preheader629

.preheader629:                                    ; preds = %.preheader629.lr.ph.split, %._crit_edge669
  %.promoted673 = phi ptr [ %i.aoz, %.preheader629.lr.ph.split ], [ %.lcssa1010, %._crit_edge669 ] ; 8 uses
  %.0471671 = phi i32 [ 0, %.preheader629.lr.ph.split ], [ %i.asn, %._crit_edge669 ]
  %.0472670 = phi ptr [ %i.apm, %.preheader629.lr.ph.split ], [ %i.asm, %._crit_edge669 ] ; 5 uses
  br i1 %min.iters.check1046, label %scalar.ph1045.preheader, label %vector.memcheck1028

vector.memcheck1028:                              ; preds = %.preheader629
  %scevgep1031 = getelementptr i8, ptr %.promoted673, i64 %i.ars ; 2 uses
  %bound01036 = icmp ult ptr %i.apm, %scevgep1031
  %bound11037 = icmp ult ptr %.promoted673, %scevgep1029
  %found.conflict1038 = and i1 %bound01036, %bound11037
  %conflict.rdx1040.reass = or i1 %found.conflict1038, %invariant.op1428
  %bound01041 = icmp ult ptr %i.f, %scevgep1031
  %bound11042 = icmp ult ptr %.promoted673, %scevgep1030
  %found.conflict1043 = and i1 %bound01041, %bound11042
  %conflict.rdx1044 = or i1 %conflict.rdx1040.reass, %found.conflict1043
  br i1 %conflict.rdx1044, label %scalar.ph1045.preheader, label %vector.ph1047

vector.ph1047:                                    ; preds = %vector.memcheck1028
  %i.arx = getelementptr i8, ptr %.promoted673, i64 %i.arv ; 2 uses
  br label %vector.body1051

vector.body1051:                                  ; preds = %vector.body1051, %vector.ph1047
  %index1052 = phi i64 [ 0, %vector.ph1047 ], [ %index.next1057, %vector.body1051 ] ; 3 uses
  %i.ary = shl i64 %index1052, 2                  ; 2 uses
  %next.gep1053 = getelementptr i8, ptr %.promoted673, i64 %i.ary ; 2 uses
  %i.arz = getelementptr i8, ptr %next.gep1053, i64 8
  %wide.load1055 = load <2 x i32>, ptr %next.gep1053, align 1, !tbaa !118, !alias.scope !153
  %wide.load1056 = load <2 x i32>, ptr %i.arz, align 1, !tbaa !118, !alias.scope !153
  %i.asa = tail call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %wide.load1055)
  %i.asb = tail call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %wide.load1056)
  %8 = getelementptr inbounds nuw [4 x i8], ptr %.0472670, i64 %index1052
  %.uncasted = shufflevector <2 x i32> %i.asa, <2 x i32> %i.asb, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %9 = bitcast <4 x i32> %.uncasted to <4 x float>
  %10 = fmul nsz <4 x float> %7, %9
  store <4 x float> %10, ptr %8, align 4, !tbaa !141, !alias.scope !154, !noalias !155
  %index.next1057 = add nuw i64 %index1052, 4     ; 2 uses
  %i.asc = icmp eq i64 %index.next1057, %n.vec1048
  br i1 %i.asc, label %middle.block1058, label %vector.body1051, !llvm.loop !99

middle.block1058:                                 ; preds = %vector.body1051
  %i.asd = getelementptr i8, ptr %.promoted673, i64 %i.ary
  %i.ase = getelementptr i8, ptr %i.asd, i64 16
  store ptr %i.ase, ptr %i.f, align 8, !tbaa !111, !alias.scope !156, !noalias !153
  br i1 %cmp.n1059, label %._crit_edge669, label %scalar.ph1045.preheader

scalar.ph1045.preheader:                          ; preds = %vector.memcheck1028, %.preheader629, %middle.block1058
  %indvars.iv812.ph = phi i64 [ 0, %vector.memcheck1028 ], [ 0, %.preheader629 ], [ %n.vec1048, %middle.block1058 ] ; 4 uses
  %.ph1369 = phi ptr [ %.promoted673, %vector.memcheck1028 ], [ %.promoted673, %.preheader629 ], [ %i.arx, %middle.block1058 ] ; 3 uses
  br i1 %lcmp.mod1381.not, label %scalar.ph1045.prol.loopexit, label %scalar.ph1045.prol

scalar.ph1045.prol:                               ; preds = %scalar.ph1045.preheader
  %i.asf = load i32, ptr %.ph1369, align 1, !tbaa !118
  %i.asg = tail call i32 @llvm.bswap.i32(i32 %i.asf)
  %i.ash = bitcast i32 %i.asg to float
  %i.asi = fmul nsz float %i.apj, %i.ash
  %i.asj = getelementptr inbounds nuw [4 x i8], ptr %.0472670, i64 %indvars.iv812.ph
  store float %i.asi, ptr %i.asj, align 4, !tbaa !141
  %i.ask = getelementptr inbounds nuw i8, ptr %.ph1369, i64 4 ; 3 uses
  store ptr %i.ask, ptr %i.f, align 8, !tbaa !111
  %indvars.iv.next813.prol = or disjoint i64 %indvars.iv812.ph, 1
  br label %scalar.ph1045.prol.loopexit

scalar.ph1045.prol.loopexit:                      ; preds = %scalar.ph1045.prol, %scalar.ph1045.preheader
  %.lcssa1371.unr = phi ptr [ poison, %scalar.ph1045.preheader ], [ %i.ask, %scalar.ph1045.prol ]
  %indvars.iv812.unr = phi i64 [ %indvars.iv812.ph, %scalar.ph1045.preheader ], [ %indvars.iv.next813.prol, %scalar.ph1045.prol ]
  %.unr1383 = phi ptr [ %.ph1369, %scalar.ph1045.preheader ], [ %i.ask, %scalar.ph1045.prol ]
  %i.asl = icmp eq i64 %indvars.iv812.ph, %i.arw
  br i1 %i.asl, label %._crit_edge669, label %scalar.ph1045

._crit_edge669:                                   ; preds = %scalar.ph1045.prol.loopexit, %scalar.ph1045, %middle.block1058
  %.lcssa1010 = phi ptr [ %i.arx, %middle.block1058 ], [ %.lcssa1371.unr, %scalar.ph1045.prol.loopexit ], [ %i.atb, %scalar.ph1045 ]
  %i.asm = getelementptr inbounds [4 x i8], ptr %.0472670, i64 %i.aro
  %i.asn = add nuw nsw i32 %.0471671, 1           ; 2 uses
  %exitcond817.not = icmp eq i32 %i.asn, %i.aox
  br i1 %exitcond817.not, label %.loopexit630, label %.preheader629, !llvm.loop !100

scalar.ph1045:                                    ; preds = %scalar.ph1045.prol.loopexit, %scalar.ph1045
  %indvars.iv812 = phi i64 [ %indvars.iv.next813.1, %scalar.ph1045 ], [ %indvars.iv812.unr, %scalar.ph1045.prol.loopexit ] ; 3 uses
  %i.aso = phi ptr [ %i.atb, %scalar.ph1045 ], [ %.unr1383, %scalar.ph1045.prol.loopexit ] ; 3 uses
  %i.asp = load i32, ptr %i.aso, align 1, !tbaa !118
  %i.asq = tail call i32 @llvm.bswap.i32(i32 %i.asp)
  %i.asr = bitcast i32 %i.asq to float
  %i.ass = fmul nsz float %i.apj, %i.asr
  %i.ast = getelementptr inbounds nuw [4 x i8], ptr %.0472670, i64 %indvars.iv812
  store float %i.ass, ptr %i.ast, align 4, !tbaa !141
  %i.asu = getelementptr inbounds nuw i8, ptr %i.aso, i64 4 ; 2 uses
  store ptr %i.asu, ptr %i.f, align 8, !tbaa !111
  %i.asv = load i32, ptr %i.asu, align 1, !tbaa !118
  %i.asw = tail call i32 @llvm.bswap.i32(i32 %i.asv)
  %i.asx = bitcast i32 %i.asw to float
  %i.asy = fmul nsz float %i.apj, %i.asx
  %i.asz = getelementptr inbounds nuw [4 x i8], ptr %.0472670, i64 %indvars.iv812
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asz, i64 4
  store float %i.asy, ptr %i.ata, align 4, !tbaa !141
  %i.atb = getelementptr inbounds nuw i8, ptr %i.aso, i64 8 ; 3 uses
  store ptr %i.atb, ptr %i.f, align 8, !tbaa !111
  %indvars.iv.next813.1 = add nuw nsw i64 %indvars.iv812, 2 ; 2 uses
  %exitcond816.not.1 = icmp eq i64 %indvars.iv.next813.1, %wide.trip.count815
  br i1 %exitcond816.not.1, label %._crit_edge669, label %scalar.ph1045, !llvm.loop !101

bb.bj:                                            ; preds = %bb.be
  %i.atc = shl i32 %i.aow, 1
  %i.atd = mul i32 %i.atc, %i.aox
  %i.ate = sext i32 %i.atd to i64
  %i.atf = icmp slt i64 %i.apc, %i.ate
  br i1 %i.atf, label %.critedge567, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.atg = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.ath = load float, ptr %i.atg, align 8, !tbaa !138
  %i.ati = fdiv nsz float 1.000000e+00, %i.ath    ; 2 uses
  %i.atj = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.atk = load i32, ptr %i.atj, align 8, !tbaa !139
  %.not543 = icmp eq i32 %i.atk, 0
  %i.atl = load ptr, ptr %1, align 8, !tbaa !121  ; 2 uses
  %i.atm = icmp sgt i32 %i.aox, 0                 ; 2 uses
  br i1 %.not543, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.atm, label %.preheader635.lr.ph, label %.loopexit630

.preheader635.lr.ph:                              ; preds = %bb.bl
  %i.atn = icmp sgt i32 %i.aow, 0
  %i.ato = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.atp = getelementptr inbounds nuw i8, ptr %i.f, i64 12588
  %i.atq = getelementptr inbounds nuw i8, ptr %i.f, i64 12332
  %i.atr = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ats = load i32, ptr %i.atr, align 8, !tbaa !122
  %i.att = sdiv i32 %i.ats, 4
  %i.atu = sext i32 %i.att to i64
  br i1 %i.atn, label %.preheader635.lr.ph.split, label %.loopexit630

.preheader635.lr.ph.split:                        ; preds = %.preheader635.lr.ph
  %wide.trip.count = zext nneg i32 %i.aow to i64
  br label %.preheader635

.preheader635:                                    ; preds = %.preheader635.lr.ph.split, %._crit_edge
  %.promoted652 = phi ptr [ %i.aoz, %.preheader635.lr.ph.split ], [ %i.auq, %._crit_edge ]
  %.0468650 = phi i32 [ 0, %.preheader635.lr.ph.split ], [ %i.atw, %._crit_edge ]
  %.0469649 = phi ptr [ %i.atl, %.preheader635.lr.ph.split ], [ %i.atv, %._crit_edge ] ; 2 uses
  br label %bb.bm

._crit_edge:                                      ; preds = %bb.bm
  %i.atv = getelementptr inbounds [4 x i8], ptr %.0469649, i64 %i.atu
  %i.atw = add nuw nsw i32 %.0468650, 1           ; 2 uses
  %exitcond799.not = icmp eq i32 %i.atw, %i.aox
  br i1 %exitcond799.not, label %.loopexit630, label %.preheader635, !llvm.loop !102

bb.bm:                                            ; preds = %.preheader635, %bb.bm
  %indvars.iv = phi i64 [ 0, %.preheader635 ], [ %indvars.iv.next, %bb.bm ] ; 2 uses
  %i.atx = phi ptr [ %.promoted652, %.preheader635 ], [ %i.auq, %bb.bm ] ; 2 uses
  %i.aty = load i16, ptr %i.atx, align 1, !tbaa !118
  %i.atz = zext i16 %i.aty to i32                 ; 2 uses
  %i.aua = lshr i32 %i.atz, 10
  %i.aub = zext nneg i32 %i.aua to i64            ; 2 uses
  %i.auc = getelementptr inbounds nuw [2 x i8], ptr %i.atp, i64 %i.aub
  %i.aud = load i16, ptr %i.auc, align 2, !tbaa !125
  %i.aue = zext i16 %i.aud to i32
  %i.auf = and i32 %i.atz, 1023
  %i.aug = add nuw nsw i32 %i.auf, %i.aue
  %i.auh = zext nneg i32 %i.aug to i64
  %i.aui = getelementptr inbounds nuw [4 x i8], ptr %i.ato, i64 %i.auh
  %i.auj = load i32, ptr %i.aui, align 4, !tbaa !122
  %i.auk = getelementptr inbounds nuw [4 x i8], ptr %i.atq, i64 %i.aub
  %i.aul = load i32, ptr %i.auk, align 4, !tbaa !122
  %i.aum = add i32 %i.aul, %i.auj
  %i.aun = bitcast i32 %i.aum to float
  %i.auo = fmul nsz float %i.ati, %i.aun
  %i.aup = getelementptr inbounds nuw [4 x i8], ptr %.0469649, i64 %indvars.iv
  store float %i.auo, ptr %i.aup, align 4, !tbaa !141
  %i.auq = getelementptr inbounds nuw i8, ptr %i.atx, i64 2 ; 3 uses
  store ptr %i.auq, ptr %i.f, align 8, !tbaa !111
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.bm, !llvm.loop !103

bb.bn:                                            ; preds = %bb.bk
  br i1 %i.atm, label %.preheader633.lr.ph, label %.loopexit630

.preheader633.lr.ph:                              ; preds = %bb.bn
  %i.aur = icmp sgt i32 %i.aow, 0
  %i.aus = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.aut = getelementptr inbounds nuw i8, ptr %i.f, i64 12588
  %i.auu = getelementptr inbounds nuw i8, ptr %i.f, i64 12332
  %i.auv = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.auw = load i32, ptr %i.auv, align 8, !tbaa !122
  %i.aux = sdiv i32 %i.auw, 4
  %i.auy = sext i32 %i.aux to i64
  br i1 %i.aur, label %.preheader633.lr.ph.split, label %.loopexit630

.preheader633.lr.ph.split:                        ; preds = %.preheader633.lr.ph
  %wide.trip.count803 = zext nneg i32 %i.aow to i64
  br label %.preheader633

.preheader633:                                    ; preds = %.preheader633.lr.ph.split, %._crit_edge655
  %.promoted659 = phi ptr [ %i.aoz, %.preheader633.lr.ph.split ], [ %i.avv, %._crit_edge655 ]
  %.0465657 = phi i32 [ 0, %.preheader633.lr.ph.split ], [ %i.ava, %._crit_edge655 ]
  %.0466656 = phi ptr [ %i.atl, %.preheader633.lr.ph.split ], [ %i.auz, %._crit_edge655 ] ; 2 uses
  br label %bb.bo

._crit_edge655:                                   ; preds = %bb.bo
  %i.auz = getelementptr inbounds [4 x i8], ptr %.0466656, i64 %i.auy
  %i.ava = add nuw nsw i32 %.0465657, 1           ; 2 uses
  %exitcond805.not = icmp eq i32 %i.ava, %i.aox
  br i1 %exitcond805.not, label %.loopexit630, label %.preheader633, !llvm.loop !104

bb.bo:                                            ; preds = %.preheader633, %bb.bo
  %indvars.iv800 = phi i64 [ 0, %.preheader633 ], [ %indvars.iv.next801, %bb.bo ] ; 2 uses
  %i.avb = phi ptr [ %.promoted659, %.preheader633 ], [ %i.avv, %bb.bo ] ; 2 uses
  %i.avc = load i16, ptr %i.avb, align 1, !tbaa !118
  %i.avd = tail call i16 @llvm.bswap.i16(i16 %i.avc)
  %i.ave = zext i16 %i.avd to i32                 ; 2 uses
  %i.avf = lshr i32 %i.ave, 10
  %i.avg = zext nneg i32 %i.avf to i64            ; 2 uses
  %i.avh = getelementptr inbounds nuw [2 x i8], ptr %i.aut, i64 %i.avg
  %i.avi = load i16, ptr %i.avh, align 2, !tbaa !125
  %i.avj = zext i16 %i.avi to i32
  %i.avk = and i32 %i.ave, 1023
  %i.avl = add nuw nsw i32 %i.avk, %i.avj
  %i.avm = zext nneg i32 %i.avl to i64
  %i.avn = getelementptr inbounds nuw [4 x i8], ptr %i.aus, i64 %i.avm
  %i.avo = load i32, ptr %i.avn, align 4, !tbaa !122
  %i.avp = getelementptr inbounds nuw [4 x i8], ptr %i.auu, i64 %i.avg
  %i.avq = load i32, ptr %i.avp, align 4, !tbaa !122
  %i.avr = add i32 %i.avq, %i.avo
  %i.avs = bitcast i32 %i.avr to float
  %i.avt = fmul nsz float %i.ati, %i.avs
  %i.avu = getelementptr inbounds nuw [4 x i8], ptr %.0466656, i64 %indvars.iv800
  store float %i.avt, ptr %i.avu, align 4, !tbaa !141
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avb, i64 2 ; 3 uses
  store ptr %i.avv, ptr %i.f, align 8, !tbaa !111
  %indvars.iv.next801 = add nuw nsw i64 %indvars.iv800, 1 ; 2 uses
  %exitcond804.not = icmp eq i64 %indvars.iv.next801, %wide.trip.count803
  br i1 %exitcond804.not, label %._crit_edge655, label %bb.bo, !llvm.loop !105

end_hunk_0
