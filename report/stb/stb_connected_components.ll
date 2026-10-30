Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_connected_components?download=true
inline.NumInlined: 13
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@stbcc_init_grid:bb.a
  %i.amj = load i8, ptr %i.amb, align 1, !tbaa !11, !alias.scope !82
  %i.amk = load i8, ptr %i.amc, align 1, !tbaa !11, !alias.scope !82
  %i.aml = load i8, ptr %i.amd, align 1, !tbaa !11, !alias.scope !82
  %i.amm = load i8, ptr %i.ame, align 1, !tbaa !11, !alias.scope !82
  %i.amn = load i8, ptr %i.amf, align 1, !tbaa !11, !alias.scope !82
  %i.amo = load i8, ptr %i.amg, align 1, !tbaa !11, !alias.scope !82
  %i.amp = insertelement <8 x i8> poison, i8 %i.amh, i64 0
  %i.amq = insertelement <8 x i8> %i.amp, i8 %i.ami, i64 1
  %i.amr = insertelement <8 x i8> %i.amq, i8 %i.amj, i64 2
  %i.ams = insertelement <8 x i8> %i.amr, i8 %i.amk, i64 3
  %i.amt = insertelement <8 x i8> %i.ams, i8 %i.aml, i64 4
  %i.amu = insertelement <8 x i8> %i.amt, i8 %i.amm, i64 5
  %i.amv = insertelement <8 x i8> %i.amu, i8 %i.amn, i64 6
  %i.amw = insertelement <8 x i8> %i.amv, i8 %i.amo, i64 7
  %i.amx = icmp eq <8 x i8> %i.amw, zeroinitializer
  %i.amy = select <8 x i1> %i.amx, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.amz = or disjoint <8 x i8> %i.amy, %i.ali
  %i.ana = add i64 %i.add, 25769803776
  %i.anb = add i64 %i.ade, 25769803776
  %i.anc = add i64 %i.adf, 25769803776
  %i.and = add i64 %i.adg, 25769803776
  %i.ane = add i64 %i.adh, 25769803776
  %i.anf = add i64 %i.adi, 25769803776
  %i.ang = add i64 %i.adj, 25769803776
  %i.anh = add i64 %i.adk, 25769803776
  %i.ani = ashr exact i64 %i.ana, 32
  %i.anj = ashr exact i64 %i.anb, 32
  %i.ank = ashr exact i64 %i.anc, 32
  %i.anl = ashr exact i64 %i.and, 32
  %i.anm = ashr exact i64 %i.ane, 32
  %i.ann = ashr exact i64 %i.anf, 32
  %i.ano = ashr exact i64 %i.ang, 32
  %i.anp = ashr exact i64 %i.anh, 32
  %i.anq = getelementptr inbounds i8, ptr %1, i64 %i.ani
  %i.anr = getelementptr inbounds i8, ptr %1, i64 %i.anj
  %i.ans = getelementptr inbounds i8, ptr %1, i64 %i.ank
  %i.ant = getelementptr inbounds i8, ptr %1, i64 %i.anl
  %i.anu = getelementptr inbounds i8, ptr %1, i64 %i.anm
  %i.anv = getelementptr inbounds i8, ptr %1, i64 %i.ann
  %i.anw = getelementptr inbounds i8, ptr %1, i64 %i.ano
  %i.anx = getelementptr inbounds i8, ptr %1, i64 %i.anp
  %i.any = load i8, ptr %i.anq, align 1, !tbaa !11, !alias.scope !83
  %i.anz = load i8, ptr %i.anr, align 1, !tbaa !11, !alias.scope !83
  %i.aoa = load i8, ptr %i.ans, align 1, !tbaa !11, !alias.scope !83
  %i.aob = load i8, ptr %i.ant, align 1, !tbaa !11, !alias.scope !83
  %i.aoc = load i8, ptr %i.anu, align 1, !tbaa !11, !alias.scope !83
  %i.aod = load i8, ptr %i.anv, align 1, !tbaa !11, !alias.scope !83
  %i.aoe = load i8, ptr %i.anw, align 1, !tbaa !11, !alias.scope !83
  %i.aof = load i8, ptr %i.anx, align 1, !tbaa !11, !alias.scope !83
  %i.aog = insertelement <8 x i8> poison, i8 %i.any, i64 0
  %i.aoh = insertelement <8 x i8> %i.aog, i8 %i.anz, i64 1
  %i.aoi = insertelement <8 x i8> %i.aoh, i8 %i.aoa, i64 2
  %i.aoj = insertelement <8 x i8> %i.aoi, i8 %i.aob, i64 3
  %i.aok = insertelement <8 x i8> %i.aoj, i8 %i.aoc, i64 4
  %i.aol = insertelement <8 x i8> %i.aok, i8 %i.aod, i64 5
  %i.aom = insertelement <8 x i8> %i.aol, i8 %i.aoe, i64 6
  %i.aon = insertelement <8 x i8> %i.aom, i8 %i.aof, i64 7
  %i.aoo = icmp eq <8 x i8> %i.aon, zeroinitializer
  %i.aop = select <8 x i1> %i.aoo, <8 x i8> splat (i8 64), <8 x i8> zeroinitializer
  %i.aoq = or <8 x i8> %i.aop, %i.amz
  %i.aor = add i64 %i.add, 30064771072
  %i.aos = add i64 %i.ade, 30064771072
  %i.aot = add i64 %i.adf, 30064771072
  %i.aou = add i64 %i.adg, 30064771072
  %i.aov = add i64 %i.adh, 30064771072
  %i.aow = add i64 %i.adi, 30064771072
  %i.aox = add i64 %i.adj, 30064771072
  %i.aoy = add i64 %i.adk, 30064771072
  %i.aoz = ashr exact i64 %i.aor, 32
  %i.apa = ashr exact i64 %i.aos, 32
  %i.apb = ashr exact i64 %i.aot, 32
  %i.apc = ashr exact i64 %i.aou, 32
  %i.apd = ashr exact i64 %i.aov, 32
  %i.ape = ashr exact i64 %i.aow, 32
  %i.apf = ashr exact i64 %i.aox, 32
  %i.apg = ashr exact i64 %i.aoy, 32
  %i.aph = getelementptr inbounds i8, ptr %1, i64 %i.aoz
  %i.api = getelementptr inbounds i8, ptr %1, i64 %i.apa
  %i.apj = getelementptr inbounds i8, ptr %1, i64 %i.apb
  %i.apk = getelementptr inbounds i8, ptr %1, i64 %i.apc
  %i.apl = getelementptr inbounds i8, ptr %1, i64 %i.apd
  %i.apm = getelementptr inbounds i8, ptr %1, i64 %i.ape
  %i.apn = getelementptr inbounds i8, ptr %1, i64 %i.apf
  %i.apo = getelementptr inbounds i8, ptr %1, i64 %i.apg
  %i.app = load i8, ptr %i.aph, align 1, !tbaa !11, !alias.scope !84
  %i.apq = load i8, ptr %i.api, align 1, !tbaa !11, !alias.scope !84
  %i.apr = load i8, ptr %i.apj, align 1, !tbaa !11, !alias.scope !84
  %i.aps = load i8, ptr %i.apk, align 1, !tbaa !11, !alias.scope !84
  %i.apt = load i8, ptr %i.apl, align 1, !tbaa !11, !alias.scope !84
  %i.apu = load i8, ptr %i.apm, align 1, !tbaa !11, !alias.scope !84
  %i.apv = load i8, ptr %i.apn, align 1, !tbaa !11, !alias.scope !84
  %i.apw = load i8, ptr %i.apo, align 1, !tbaa !11, !alias.scope !84
  %i.apx = insertelement <8 x i8> poison, i8 %i.app, i64 0
  %i.apy = insertelement <8 x i8> %i.apx, i8 %i.apq, i64 1
  %i.apz = insertelement <8 x i8> %i.apy, i8 %i.apr, i64 2
  %i.aqa = insertelement <8 x i8> %i.apz, i8 %i.aps, i64 3
  %i.aqb = insertelement <8 x i8> %i.aqa, i8 %i.apt, i64 4
  %i.aqc = insertelement <8 x i8> %i.aqb, i8 %i.apu, i64 5
  %i.aqd = insertelement <8 x i8> %i.aqc, i8 %i.apv, i64 6
  %i.aqe = insertelement <8 x i8> %i.aqd, i8 %i.apw, i64 7
  %i.aqf = icmp eq <8 x i8> %i.aqe, zeroinitializer
  %i.aqg = select <8 x i1> %i.aqf, <8 x i8> splat (i8 -128), <8 x i8> zeroinitializer
  %i.aqh = or <8 x i8> %i.aqg, %i.aoq
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.bd, i64 %index170
  store <8 x i8> %i.aqh, ptr %i.aqi, align 1, !tbaa !11, !alias.scope !85, !noalias !86
  %index.next171 = add nuw i64 %index170, 8       ; 2 uses
  %i.aqj = icmp eq i64 %index.next171, %n.vec169
  br i1 %i.aqj, label %.preheader64.preheader, label %vec.epilog.vector.body, !llvm.loop !68

.preheader63:                                     ; preds = %._crit_edge, %.preheader65.lr.ph, %bb.a
  %i.aqk = icmp sgt i32 %i.d, 0
  %i.aql = icmp sgt i32 %i.b, 0
  %or.cond = and i1 %i.aqk, %i.aql
  br i1 %or.cond, label %.preheader62, label %._crit_edge77

.preheader64:                                     ; preds = %.preheader64.preheader, %.preheader64
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader64 ], [ %indvars.iv.ph, %.preheader64.preheader ] ; 3 uses
  %i.aqm = add nuw nsw i64 %indvars.iv, %i.bc     ; 8 uses
  %sext = shl i64 %i.aqm, 32
  %i.aqn = ashr exact i64 %sext, 32
  %i.aqo = getelementptr inbounds i8, ptr %1, i64 %i.aqn
  %i.aqp = load i8, ptr %i.aqo, align 1, !tbaa !11
  %i.aqq = icmp eq i8 %i.aqp, 0
  %i.aqr = zext i1 %i.aqq to i8
  %i.aqs = shl i64 %i.aqm, 32
  %sext102 = add i64 %i.aqs, 4294967296
  %i.aqt = ashr exact i64 %sext102, 32
  %i.aqu = getelementptr inbounds i8, ptr %1, i64 %i.aqt
  %i.aqv = load i8, ptr %i.aqu, align 1, !tbaa !11
  %i.aqw = icmp eq i8 %i.aqv, 0
  %i.aqx = select i1 %i.aqw, i8 2, i8 0
  %.1.1 = or disjoint i8 %i.aqx, %i.aqr
  %i.aqy = shl i64 %i.aqm, 32
  %sext103 = add i64 %i.aqy, 8589934592
  %i.aqz = ashr exact i64 %sext103, 32
  %i.ara = getelementptr inbounds i8, ptr %1, i64 %i.aqz
  %i.arb = load i8, ptr %i.ara, align 1, !tbaa !11
  %i.arc = icmp eq i8 %i.arb, 0
  %i.ard = select i1 %i.arc, i8 4, i8 0
  %.1.2 = or disjoint i8 %i.ard, %.1.1
  %i.are = shl i64 %i.aqm, 32
  %sext104 = add i64 %i.are, 12884901888
  %i.arf = ashr exact i64 %sext104, 32
  %i.arg = getelementptr inbounds i8, ptr %1, i64 %i.arf
  %i.arh = load i8, ptr %i.arg, align 1, !tbaa !11
  %i.ari = icmp eq i8 %i.arh, 0
  %i.arj = select i1 %i.ari, i8 8, i8 0
  %.1.3 = or disjoint i8 %i.arj, %.1.2
  %i.ark = shl i64 %i.aqm, 32
  %sext105 = add i64 %i.ark, 17179869184
  %i.arl = ashr exact i64 %sext105, 32
  %i.arm = getelementptr inbounds i8, ptr %1, i64 %i.arl
  %i.arn = load i8, ptr %i.arm, align 1, !tbaa !11
  %i.aro = icmp eq i8 %i.arn, 0
  %i.arp = select i1 %i.aro, i8 16, i8 0
  %.1.4 = or disjoint i8 %i.arp, %.1.3
  %i.arq = shl i64 %i.aqm, 32
  %sext106 = add i64 %i.arq, 21474836480
  %i.arr = ashr exact i64 %sext106, 32
  %i.ars = getelementptr inbounds i8, ptr %1, i64 %i.arr
  %i.art = load i8, ptr %i.ars, align 1, !tbaa !11
  %i.aru = icmp eq i8 %i.art, 0
  %i.arv = select i1 %i.aru, i8 32, i8 0
  %.1.5 = or disjoint i8 %i.arv, %.1.4
  %i.arw = shl i64 %i.aqm, 32
  %sext107 = add i64 %i.arw, 25769803776
  %i.arx = ashr exact i64 %sext107, 32
  %i.ary = getelementptr inbounds i8, ptr %1, i64 %i.arx
  %i.arz = load i8, ptr %i.ary, align 1, !tbaa !11
  %i.asa = icmp eq i8 %i.arz, 0
  %i.asb = select i1 %i.asa, i8 64, i8 0
  %.1.6 = or i8 %i.asb, %.1.5
  %i.asc = shl i64 %i.aqm, 32
  %sext108 = add i64 %i.asc, 30064771072
  %i.asd = ashr exact i64 %sext108, 32
  %i.ase = getelementptr inbounds i8, ptr %1, i64 %i.asd
  %i.asf = load i8, ptr %i.ase, align 1, !tbaa !11
  %i.asg = icmp eq i8 %i.asf, 0
  %i.ash = select i1 %i.asg, i8 -128, i8 0
  %.1.7 = or i8 %i.ash, %.1.6
  %i.asi = lshr exact i64 %indvars.iv, 3
  %i.asj = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.asi
  store i8 %.1.7, ptr %i.asj, align 1, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.ask = icmp samesign ult i64 %indvars.iv.next, %i.j
  br i1 %i.ask, label %.preheader64, label %._crit_edge, !llvm.loop !69

._crit_edge:                                      ; preds = %.preheader64
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count
  br i1 %exitcond.not, label %.preheader63, label %iter.check, !llvm.loop !70

.preheader62:                                     ; preds = %.preheader63, %._crit_edge71
  %i.asl = phi i32 [ %i.ass, %._crit_edge71 ], [ %i.d, %.preheader63 ]
  %i.asm = phi i32 [ %i.ast, %._crit_edge71 ], [ %i.b, %.preheader63 ] ; 2 uses
  %.15472 = phi i32 [ %i.asu, %._crit_edge71 ], [ 0, %.preheader63 ] ; 2 uses
  %i.asn = icmp sgt i32 %i.asm, 0
  br i1 %i.asn, label %.lr.ph, label %._crit_edge71

.preheader61:                                     ; preds = %._crit_edge71
  %i.aso = icmp sgt i32 %i.ass, 0
  %or.cond113 = and i1 %i.aso, %5
  br i1 %or.cond113, label %.preheader60, label %._crit_edge77

.lr.ph:                                           ; preds = %.preheader62, %.lr.ph
  %.15670 = phi i32 [ %i.asp, %.lr.ph ], [ 0, %.preheader62 ] ; 2 uses
  tail call void @stbcc__build_clumps_for_cluster(ptr noundef nonnull %0, i32 noundef %.15670, i32 noundef %.15472)
  %i.asp = add nuw nsw i32 %.15670, 1             ; 2 uses
  %i.asq = load i32, ptr %i.c, align 4, !tbaa !21 ; 3 uses
  %i.asr = icmp slt i32 %i.asp, %i.asq
  br i1 %i.asr, label %.lr.ph, label %._crit_edge71.loopexit, !llvm.loop !71

._crit_edge71.loopexit:                           ; preds = %.lr.ph
  %.pre = load i32, ptr %i.e, align 4, !tbaa !22
  %4 = icmp sgt i32 %i.asq, 0
  br label %._crit_edge71

._crit_edge71:                                    ; preds = %._crit_edge71.loopexit, %.preheader62
  %i.ass = phi i32 [ %.pre, %._crit_edge71.loopexit ], [ %i.asl, %.preheader62 ] ; 4 uses
  %5 = phi i1 [ %4, %._crit_edge71.loopexit ], [ false, %.preheader62 ]
  %i.ast = phi i32 [ %i.asq, %._crit_edge71.loopexit ], [ %i.asm, %.preheader62 ] ; 2 uses
  %i.asu = add nuw nsw i32 %.15472, 1             ; 2 uses
  %i.asv = icmp slt i32 %i.asu, %i.ass
  br i1 %i.asv, label %.preheader62, label %.preheader61, !llvm.loop !72

.preheader60:                                     ; preds = %.preheader61, %._crit_edge75
  %i.asw = phi i32 [ %i.atc, %._crit_edge75 ], [ %i.ass, %.preheader61 ]
  %i.asx = phi i32 [ %i.atd, %._crit_edge75 ], [ %i.ast, %.preheader61 ] ; 2 uses
  %.276 = phi i32 [ %i.ate, %._crit_edge75 ], [ 0, %.preheader61 ] ; 2 uses
  %i.asy = icmp sgt i32 %i.asx, 0
  br i1 %i.asy, label %.lr.ph74, label %._crit_edge75

.lr.ph74:                                         ; preds = %.preheader60, %.lr.ph74
  %.25773 = phi i32 [ %i.asz, %.lr.ph74 ], [ 0, %.preheader60 ] ; 2 uses
  tail call void @stbcc__build_all_connections_for_cluster(ptr noundef nonnull %0, i32 noundef %.25773, i32 noundef %.276)
  %i.asz = add nuw nsw i32 %.25773, 1             ; 2 uses
  %i.ata = load i32, ptr %i.c, align 4, !tbaa !21 ; 2 uses
  %i.atb = icmp slt i32 %i.asz, %i.ata
  br i1 %i.atb, label %.lr.ph74, label %._crit_edge75.loopexit, !llvm.loop !73

._crit_edge75.loopexit:                           ; preds = %.lr.ph74
  %.pre86 = load i32, ptr %i.e, align 4, !tbaa !22
  br label %._crit_edge75

._crit_edge75:                                    ; preds = %._crit_edge75.loopexit, %.preheader60
  %i.atc = phi i32 [ %.pre86, %._crit_edge75.loopexit ], [ %i.asw, %.preheader60 ] ; 2 uses
  %i.atd = phi i32 [ %i.ata, %._crit_edge75.loopexit ], [ %i.asx, %.preheader60 ]
  %i.ate = add nuw nsw i32 %.276, 1               ; 2 uses
  %i.atf = icmp slt i32 %i.ate, %i.atc
  br i1 %i.atf, label %.preheader60, label %._crit_edge77, !llvm.loop !74

._crit_edge77:                                    ; preds = %._crit_edge75, %.preheader63, %.preheader61
  tail call void @stbcc__build_connected_components_for_clumps(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @stbcc__add_clump_connection(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 {
bb.a:
  %i.a = ashr i32 %1, 5
  %i.b = ashr i32 %2, 5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 131092 ; 2 uses
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds [2048 x i8], ptr %i.c, i64 %i.d
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds [2 x i8], ptr %i.e, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2228244
  %i.j = sext i32 %i.b to i64
  %i.k = getelementptr inbounds [139392 x i8], ptr %i.i, i64 %i.j
  %i.l = sext i32 %i.a to i64
  %i.m = getelementptr inbounds [4356 x i8], ptr %i.k, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = zext i16 %i.h to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.r = load i8, ptr %i.q, align 4, !tbaa !18    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 5
  %i.t = load i8, ptr %i.s, align 1, !tbaa !23
  %i.u = icmp eq i8 %i.r, %i.t
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  store i8 1, ptr %i.v, align 1, !tbaa !19
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.w = sext i32 %4 to i64
  %i.x = getelementptr inbounds [2048 x i8], ptr %i.c, i64 %i.w
  %i.y = sext i32 %3 to i64
  %i.z = getelementptr inbounds [2 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !10
  %i.ab = and i16 %i.aa, 4095
  %i.ac = sub nsw i32 %3, %1
  %i.ad = trunc i32 %i.ac to i16
  %i.ae = shl i16 %i.ad, 12
  %i.af = and i16 %i.ae, 12288
  %i.ag = or disjoint i16 %i.af, %i.ab
  %i.ah = sub nsw i32 %4, %2
  %i.ai = trunc i32 %i.ah to i16
  %i.aj = shl i16 %i.ai, 14
  %i.ak = or disjoint i16 %i.ag, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 4100
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 6
  %i.an = load i8, ptr %i.am, align 2, !tbaa !17
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.ao
  %i.aq = add i8 %i.r, 1
  store i8 %i.aq, ptr %i.q, align 4, !tbaa !18
  %i.ar = zext i8 %i.r to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.ar
  store i16 %i.ak, ptr %i.as, align 2, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbcc__remove_clump_connection(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = ashr i32 %1, 5
  %i.b = ashr i32 %2, 5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 131092 ; 2 uses
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds [2048 x i8], ptr %i.c, i64 %i.d
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds [2 x i8], ptr %i.e, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !tbaa !10
  %i.i = sext i32 %4 to i64
  %i.j = getelementptr inbounds [2048 x i8], ptr %i.c, i64 %i.i
  %i.k = sext i32 %3 to i64
  %i.l = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2228244
  %i.o = sext i32 %i.b to i64
  %i.p = getelementptr inbounds [139392 x i8], ptr %i.n, i64 %i.o
  %i.q = sext i32 %i.a to i64
  %i.r = getelementptr inbounds [4356 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = zext i16 %i.h to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4100
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  %i.x = load i8, ptr %i.w, align 2, !tbaa !17
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.y ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !18  ; 3 uses
  %.not = icmp eq i8 %i.ab, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ac = sub nsw i32 %4, %2
  %i.ad = sub nsw i32 %3, %1
  %i.ae = shl i32 %i.ad, 30
  %i.af = ashr exact i32 %i.ae, 30
  %i.ag = shl i32 %i.ac, 30
  %i.ah = ashr exact i32 %i.ag, 30
  %wide.trip.count = zext i8 %i.ab to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv
  %i.aj = load i16, ptr %i.ai, align 2            ; 3 uses
  %i.ak = xor i16 %i.aj, %i.m
  %i.al = and i16 %i.ak, 4095
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.an = shl i16 %i.aj, 2
  %i.ao = ashr i16 %i.an, 14
  %i.ap = sext i16 %i.ao to i32
  %i.aq = icmp eq i32 %i.af, %i.ap
  br i1 %i.aq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ar = ashr i16 %i.aj, 14
  %i.as = sext i16 %i.ar to i32
  %i.at = icmp eq i32 %i.ah, %i.as
  br i1 %i.at, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !0

bb.f:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv
  %i.av = add i8 %i.ab, -1                        ; 2 uses
  store i8 %i.av, ptr %i.aa, align 4, !tbaa !18
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !11
  store i16 %i.ay, ptr %i.au, align 2, !tbaa !11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.a, %bb.f
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define i16 @stbcc__incluster_find(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds [64 x i8], ptr %0, i64 %i.a
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %.sroa.03.0.copyload = load i8, ptr %i.d, align 2, !tbaa !11 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 1, !tbaa !11 ; 2 uses
  %i.e = zext i8 %.sroa.03.0.copyload to i32      ; 2 uses
  %i.f = icmp eq i32 %1, %i.e
  %i.g = zext i8 %.sroa.6.0.copyload to i32       ; 2 uses
  %i.h = icmp eq i32 %2, %i.g
  %or.cond = select i1 %i.f, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

end_hunk_0
