Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/deflate_compress?download=true
inline.NumInlined: 48
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 50
begin_hunk_0_@deflate_flush_block:bb.a
  %i.aor = zext i8 %i.aoq to i64                  ; 2 uses
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr %.0106, i64 %i.aor
  %i.aot = load i32, ptr %i.aos, align 4, !tbaa !22, !alias.scope !153
  %i.aou = zext i32 %i.aot to i64
  %i.aov = getelementptr inbounds nuw i8, ptr %i.alk, i64 %i.aor
  %i.aow = load i8, ptr %i.aov, align 1, !tbaa !21, !alias.scope !153
  %i.aox = zext i8 %i.aow to i32
  %i.aoy = zext nneg i32 %i.aoo to i64
  %i.aoz = shl nuw nsw i64 %i.aou, %i.aoy
  %i.apa = or i64 %i.aoz, %i.aon                  ; 2 uses
  %i.apb = add nuw nsw i32 %i.aoo, %i.aox         ; 3 uses
  %i.apc = getelementptr inbounds nuw i8, ptr %.1.lcssa106.i, i64 1 ; 2 uses
  %.not87.i = icmp eq i32 %i.aop, 0
  br i1 %.not87.i, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.apd = load i8, ptr %i.apc, align 1, !tbaa !21, !alias.scope !155
  %i.ape = zext i8 %i.apd to i64                  ; 2 uses
  %i.apf = getelementptr inbounds nuw [4 x i8], ptr %.0106, i64 %i.ape
  %i.apg = load i32, ptr %i.apf, align 4, !tbaa !22, !alias.scope !153
  %i.aph = zext i32 %i.apg to i64
  %i.api = getelementptr inbounds nuw i8, ptr %i.alk, i64 %i.ape
  %i.apj = load i8, ptr %i.api, align 1, !tbaa !21, !alias.scope !153
  %i.apk = zext i8 %i.apj to i32
  %i.apl = zext nneg i32 %i.apb to i64
  %i.apm = shl i64 %i.aph, %i.apl
  %i.apn = or i64 %i.apm, %i.apa                  ; 2 uses
  %i.apo = add nuw nsw i32 %i.apb, %i.apk         ; 3 uses
  %i.app = getelementptr inbounds nuw i8, ptr %.1.lcssa106.i, i64 2 ; 2 uses
  %.not88.i = icmp eq i32 %i.aop, 1
  br i1 %.not88.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.apq = load i8, ptr %i.app, align 1, !tbaa !21, !alias.scope !155
  %i.apr = zext i8 %i.apq to i64                  ; 2 uses
  %i.aps = getelementptr inbounds nuw [4 x i8], ptr %.0106, i64 %i.apr
  %i.apt = load i32, ptr %i.aps, align 4, !tbaa !22, !alias.scope !153
  %i.apu = zext i32 %i.apt to i64
  %i.apv = getelementptr inbounds nuw i8, ptr %i.alk, i64 %i.apr
  %i.apw = load i8, ptr %i.apv, align 1, !tbaa !21, !alias.scope !153
  %i.apx = zext i8 %i.apw to i32
  %i.apy = zext nneg i32 %i.apo to i64
  %i.apz = shl i64 %i.apu, %i.apy
  %i.aqa = or i64 %i.apz, %i.apn
  %i.aqb = add nuw nsw i32 %i.apo, %i.apx
  %i.aqc = getelementptr inbounds nuw i8, ptr %.1.lcssa106.i, i64 3
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy, %bb.cx
  %i.aqd = phi i32 [ %i.aqb, %bb.cz ], [ %i.apo, %bb.cy ], [ %i.apb, %bb.cx ] ; 3 uses
  %i.aqe = phi i64 [ %i.aqa, %bb.cz ], [ %i.apn, %bb.cy ], [ %i.apa, %bb.cx ] ; 2 uses
  %.2.i = phi ptr [ %i.aqc, %bb.cz ], [ %i.app, %bb.cy ], [ %i.apc, %bb.cx ]
  store i64 %i.aqe, ptr %i.aom, align 1, !noalias !156
  %i.aqf = and i32 %i.aqd, -8
  %i.aqg = zext nneg i32 %i.aqf to i64
  %i.aqh = lshr i64 %i.aqe, %i.aqg
  %i.aqi = load ptr, ptr %i.adu, align 8, !tbaa !33, !alias.scope !152
  %i.aqj = ptrtoint ptr %i.aqi to i64
  %i.aqk = ptrtoint ptr %i.aom to i64
  %i.aql = sub i64 %i.aqj, %i.aqk
  %i.aqm = lshr i32 %i.aqd, 3
  %i.aqn = zext nneg i32 %i.aqm to i64
  %..i91.i = tail call i64 @llvm.smin.i64(i64 %i.aql, i64 %i.aqn)
  %i.aqo = getelementptr inbounds i8, ptr %i.aom, i64 %..i91.i
  %i.aqp = and i32 %i.aqd, 7
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %._crit_edge.i, %bb.cv
  %i.aqq = phi ptr [ %i.aqo, %bb.da ], [ %i.aod, %._crit_edge.i ], [ %.promoted98.i, %bb.cv ] ; 4 uses
  %i.aqr = phi i64 [ %i.aqh, %bb.da ], [ %i.any, %._crit_edge.i ], [ %.promoted97.i, %bb.cv ] ; 2 uses
  %i.aqs = phi i32 [ %i.aqp, %bb.da ], [ %i.aoe, %._crit_edge.i ], [ %.promoted.i122, %bb.cv ] ; 3 uses
  %.3.i = phi ptr [ %.2.i, %bb.da ], [ %i.aof, %._crit_edge.i ], [ %.080.i, %bb.cv ]
  %.not89.i = icmp eq i32 %i.alq, 0
  br i1 %.not89.i, label %deflate_write_item_list.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.aqt = zext nneg i32 %i.alq to i64
  %i.aqu = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.aqt
  %i.aqv = getelementptr inbounds nuw i8, ptr %.081.i, i64 7
  %i.aqw = load i8, ptr %i.aqv, align 1, !tbaa !41, !alias.scope !154
  %i.aqx = zext i8 %i.aqw to i64                  ; 3 uses
  %i.aqy = add nuw nsw i64 %i.aqx, 257            ; 2 uses
  %i.aqz = getelementptr inbounds nuw [4 x i8], ptr %.0106, i64 %i.aqy
  %i.ara = load i32, ptr %i.aqz, align 4, !tbaa !22, !alias.scope !153
  %i.arb = zext i32 %i.ara to i64
  %i.arc = getelementptr inbounds nuw i8, ptr %i.alk, i64 %i.aqy
  %i.ard = load i8, ptr %i.arc, align 1, !tbaa !21, !alias.scope !153
  %i.are = zext i8 %i.ard to i32
  %i.arf = zext nneg i32 %i.aqs to i64
  %i.arg = shl nuw nsw i64 %i.arb, %i.arf
  %i.arh = add nuw nsw i32 %i.aqs, %i.are         ; 2 uses
  %i.ari = getelementptr inbounds nuw [4 x i8], ptr @deflate_length_slot_base, i64 %i.aqx
  %i.arj = load i32, ptr %i.ari, align 4, !tbaa !22, !noalias !156
  %i.ark = sub i32 %i.alq, %i.arj
  %i.arl = zext i32 %i.ark to i64
  %i.arm = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.aqx
  %i.arn = load i8, ptr %i.arm, align 1, !tbaa !21, !noalias !156
  %i.aro = zext i8 %i.arn to i32
  %i.arp = zext nneg i32 %i.arh to i64
  %i.arq = shl i64 %i.arl, %i.arp
  %i.arr = or i64 %i.arg, %i.arq
  %i.ars = add nuw nsw i32 %i.arh, %i.aro         ; 2 uses
  %i.art = getelementptr inbounds nuw i8, ptr %.081.i, i64 6
  %i.aru = load i8, ptr %i.art, align 2, !tbaa !42, !alias.scope !154
  %i.arv = zext i8 %i.aru to i64                  ; 4 uses
  %i.arw = getelementptr inbounds nuw [4 x i8], ptr %i.all, i64 %i.arv
  %i.arx = load i32, ptr %i.arw, align 4, !tbaa !22, !alias.scope !153
  %i.ary = zext i32 %i.arx to i64
  %i.arz = getelementptr inbounds nuw i8, ptr %i.alm, i64 %i.arv
  %i.asa = load i8, ptr %i.arz, align 1, !tbaa !21, !alias.scope !153
  %i.asb = zext i8 %i.asa to i32
  %i.asc = zext nneg i32 %i.ars to i64
  %i.asd = shl i64 %i.ary, %i.asc
  %i.ase = or i64 %i.arr, %i.asd
  %i.asf = add nuw nsw i32 %i.ars, %i.asb         ; 2 uses
  %i.asg = getelementptr inbounds nuw i8, ptr %.081.i, i64 4
  %i.ash = load i16, ptr %i.asg, align 4, !tbaa !40, !alias.scope !154
  %i.asi = zext i16 %i.ash to i32
  %i.asj = getelementptr inbounds nuw [4 x i8], ptr @deflate_offset_slot_base, i64 %i.arv
  %i.ask = load i32, ptr %i.asj, align 4, !tbaa !22, !noalias !156
  %i.asl = sub i32 %i.asi, %i.ask
  %i.asm = zext i32 %i.asl to i64
  %i.asn = getelementptr inbounds nuw i8, ptr @deflate_extra_offset_bits, i64 %i.arv
  %i.aso = load i8, ptr %i.asn, align 1, !tbaa !21, !noalias !156
  %i.asp = zext i8 %i.aso to i32
  %i.asq = zext nneg i32 %i.asf to i64
  %i.asr = shl i64 %i.asm, %i.asq
  %i.ass = or i64 %i.ase, %i.asr
  %i.ast = or i64 %i.ass, %i.aqr                  ; 2 uses
  %i.asu = add nuw nsw i32 %i.asf, %i.asp         ; 3 uses
  store i64 %i.ast, ptr %i.aqq, align 1, !noalias !156
  %i.asv = and i32 %i.asu, -8
  %i.asw = zext nneg i32 %i.asv to i64
  %i.asx = lshr i64 %i.ast, %i.asw                ; 2 uses
  store i64 %i.asx, ptr %1, align 8, !tbaa !29, !alias.scope !152
  %i.asy = load ptr, ptr %i.adu, align 8, !tbaa !33, !alias.scope !152 ; 2 uses
  %i.asz = ptrtoint ptr %i.asy to i64
  %i.ata = ptrtoint ptr %i.aqq to i64
  %i.atb = sub i64 %i.asz, %i.ata
  %i.atc = lshr i32 %i.asu, 3
  %i.atd = zext nneg i32 %i.atc to i64
  %..i.i120 = tail call i64 @llvm.smin.i64(i64 %i.atb, i64 %i.atd)
  %i.ate = getelementptr inbounds i8, ptr %i.aqq, i64 %..i.i120 ; 2 uses
  store ptr %i.ate, ptr %i.adp, align 8, !tbaa !32, !alias.scope !152
  %i.atf = and i32 %i.asu, 7                      ; 2 uses
  store i32 %i.atf, ptr %i.zm, align 8, !tbaa !30, !alias.scope !152
  %i.atg = getelementptr inbounds nuw i8, ptr %.081.i, i64 8
  br label %bb.cv

deflate_write_item_list.exit:                     ; preds = %bb.db, %bb.ct
  %i.ath = phi ptr [ %i.alh, %bb.ct ], [ %i.aqq, %bb.db ] ; 3 uses
  %i.ati = phi i64 [ %i.alc, %bb.ct ], [ %i.aqr, %bb.db ]
  %i.atj = phi i32 [ %storemerge.i, %bb.ct ], [ %i.aqs, %bb.db ] ; 2 uses
  %i.atk = getelementptr i8, ptr %.0106, i64 1024
  %.0106.val = load i32, ptr %i.atk, align 4, !tbaa !22
  %i.atl = getelementptr i8, ptr %.0106, i64 1536
  %.0106.val109 = load i8, ptr %i.atl, align 4, !tbaa !21
  %i.atm = zext i32 %.0106.val to i64
  %i.atn = zext i8 %.0106.val109 to i32
  %i.ato = zext nneg i32 %i.atj to i64
  %i.atp = shl nuw nsw i64 %i.atm, %i.ato
  %i.atq = or i64 %i.atp, %i.ati                  ; 2 uses
  %i.atr = add nuw nsw i32 %i.atj, %i.atn         ; 3 uses
  store i64 %i.atq, ptr %i.ath, align 1
  %i.ats = and i32 %i.atr, -8
  %i.att = zext nneg i32 %i.ats to i64
  %i.atu = lshr i64 %i.atq, %i.att
  store i64 %i.atu, ptr %1, align 8, !tbaa !29
  %i.atv = load ptr, ptr %i.adu, align 8, !tbaa !33
  %i.atw = ptrtoint ptr %i.atv to i64
  %i.atx = ptrtoint ptr %i.ath to i64
  %i.aty = sub i64 %i.atw, %i.atx
  %i.atz = lshr i32 %i.atr, 3
  %i.aua = zext nneg i32 %i.atz to i64
  %..i.i123 = tail call i64 @llvm.smin.i64(i64 %i.aty, i64 %i.aua)
  %i.aub = getelementptr inbounds i8, ptr %i.ath, i64 %..i.i123
  store ptr %i.aub, ptr %i.adp, align 8, !tbaa !32
  %i.auc = and i32 %i.atr, 7
  store i32 %i.auc, ptr %i.zm, align 8, !tbaa !30
  br label %deflate_write_uncompressed_blocks.exit

deflate_write_uncompressed_blocks.exit:           ; preds = %deflate_write_uncompressed_block.exit.i.peel, %deflate_write_uncompressed_block.exit.i, %deflate_write_item_list.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16>, <8 x i16>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @do_end_block_check(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !157  ; 6 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert59 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre60 = load i32, ptr %.phi.trans.insert59, align 4, !tbaa !22
  %.phi.trans.insert64 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre65 = load i32, ptr %.phi.trans.insert64, align 4, !tbaa !22
  %.phi.trans.insert66 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.pre67 = load i32, ptr %.phi.trans.insert66, align 4, !tbaa !22
  %.phi.trans.insert71 = getelementptr inbounds nuw i8, ptr %0, i64 60
  %.pre72 = load i32, ptr %.phi.trans.insert71, align 4, !tbaa !22
  %.phi.trans.insert73 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre74 = load i32, ptr %.phi.trans.insert73, align 4, !tbaa !22
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4, !tbaa !22
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 4, !tbaa !22
  %.phi.trans.insert85 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.pre86 = load i32, ptr %.phi.trans.insert85, align 4, !tbaa !22
  %.phi.trans.insert87 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre88 = load i32, ptr %.phi.trans.insert87, align 4, !tbaa !22
  %.phi.trans.insert92 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre93 = load i32, ptr %.phi.trans.insert92, align 4, !tbaa !22
  %.phi.trans.insert94 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.pre95 = load i32, ptr %.phi.trans.insert94, align 4, !tbaa !22
  %.phi.trans.insert99 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.pre100 = load i32, ptr %.phi.trans.insert99, align 4, !tbaa !22
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i32, ptr %i.d, align 4, !tbaa !43   ; 3 uses
  %2 = load <8 x i32>, ptr %i.c, align 4, !tbaa !22 ; 5 uses
  %3 = insertelement <8 x i32> poison, i32 %i.e, i64 0
  %4 = shufflevector <8 x i32> %3, <8 x i32> poison, <8 x i32> zeroinitializer
  %5 = mul <8 x i32> %4, %2                       ; 3 uses
  %6 = load <8 x i32>, ptr %0, align 4, !tbaa !22 ; 5 uses
  %7 = insertelement <8 x i32> poison, i32 %i.b, i64 0
  %8 = shufflevector <8 x i32> %7, <8 x i32> poison, <8 x i32> zeroinitializer
  %9 = mul <8 x i32> %6, %8                       ; 3 uses
  %10 = icmp ugt <8 x i32> %9, %5
  %11 = sub nuw <8 x i32> %9, %5
  %12 = sub nuw <8 x i32> %5, %9
  %13 = select <8 x i1> %10, <8 x i32> %11, <8 x i32> %12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i32, ptr %i.f, align 4, !tbaa !22   ; 2 uses
  %i.h = mul i32 %i.e, %i.g                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 4, !tbaa !22   ; 2 uses
  %i.k = mul i32 %i.j, %i.b                       ; 3 uses
  %14 = icmp ugt i32 %i.k, %i.h
  %i.l = sub nuw i32 %i.k, %i.h
  %i.m = sub nuw i32 %i.h, %i.k
  %15 = select i1 %14, i32 %i.l, i32 %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.o = load i32, ptr %i.n, align 4, !tbaa !22   ; 2 uses
  %i.p = mul i32 %i.e, %i.o                       ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !22   ; 2 uses
  %i.s = mul i32 %i.r, %i.b                       ; 3 uses
  %16 = icmp ugt i32 %i.s, %i.p
  %i.t = sub nuw i32 %i.s, %i.p
  %i.u = sub nuw i32 %i.p, %i.s
  %17 = select i1 %16, i32 %i.t, i32 %i.u
  %18 = lshr i32 %1, 12
  %i.v = mul i32 %i.b, %18
  %19 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %13)
  %op.rdx = add i32 %19, %15
  %op.rdx101 = add i32 %17, %i.v
  %op.rdx102 = add i32 %op.rdx, %op.rdx101
  %i.w = mul i32 %i.b, 200
  %.not42 = icmp ult i32 %op.rdx102, %i.w
  br i1 %.not42, label %.preheader._crit_edge, label %bb.c

.preheader._crit_edge:                            ; preds = %.preheader
  %.pre = load i32, ptr %i.a, align 4, !tbaa !157
  %20 = extractelement <8 x i32> %6, i64 4
  %21 = extractelement <8 x i32> %6, i64 5
  %22 = extractelement <8 x i32> %6, i64 6
  %23 = extractelement <8 x i32> %6, i64 7
  %24 = extractelement <8 x i32> %2, i64 4
  %25 = extractelement <8 x i32> %2, i64 5
  %26 = extractelement <8 x i32> %2, i64 6
  %27 = extractelement <8 x i32> %2, i64 7
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %.preheader._crit_edge
  %i.x = phi i32 [ %i.o, %.preheader._crit_edge ], [ %.pre100, %._crit_edge ]
  %i.y = phi i32 [ %i.r, %.preheader._crit_edge ], [ %.pre95, %._crit_edge ] ; 2 uses
  %i.z = phi i32 [ %i.g, %.preheader._crit_edge ], [ %.pre93, %._crit_edge ]
  %i.aa = phi i32 [ %i.j, %.preheader._crit_edge ], [ %.pre88, %._crit_edge ] ; 2 uses
  %i.ab = phi i32 [ %27, %.preheader._crit_edge ], [ %.pre86, %._crit_edge ]
  %i.ac = phi i32 [ %23, %.preheader._crit_edge ], [ %.pre81, %._crit_edge ] ; 2 uses
  %i.ad = phi i32 [ %26, %.preheader._crit_edge ], [ %.pre79, %._crit_edge ]
  %i.ae = phi i32 [ %22, %.preheader._crit_edge ], [ %.pre74, %._crit_edge ] ; 2 uses
  %i.af = phi i32 [ %25, %.preheader._crit_edge ], [ %.pre72, %._crit_edge ]
  %i.ag = phi i32 [ %21, %.preheader._crit_edge ], [ %.pre67, %._crit_edge ] ; 2 uses
  %i.ah = phi i32 [ %24, %.preheader._crit_edge ], [ %.pre65, %._crit_edge ]
  %i.ai = phi i32 [ %20, %.preheader._crit_edge ], [ %.pre60, %._crit_edge ] ; 2 uses
  %i.aj = phi i32 [ %.pre, %.preheader._crit_edge ], [ 0, %._crit_edge ]
  %.in105 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %28 = load i32, ptr %.in105, align 4, !tbaa !22 ; 2 uses
  %.in104 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %29 = load i32, ptr %.in104, align 4, !tbaa !22
  %.in103 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %30 = load i32, ptr %.in103, align 4, !tbaa !22 ; 2 uses
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 52
  %31 = load i32, ptr %.in, align 4, !tbaa !22
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %32 = load <2 x i32>, ptr %0, align 4, !tbaa !22 ; 3 uses
  %33 = extractelement <2 x i32> %32, i64 0
  %i.al = add i32 %i.aj, %33
  %34 = extractelement <2 x i32> %32, i64 1
  %i.am = add i32 %i.al, %34
  %35 = load <2 x i32>, ptr %i.ak, align 4, !tbaa !22
  %36 = add <2 x i32> %35, %32
  store <2 x i32> %36, ptr %i.ak, align 4, !tbaa !22
  %i.an = add i32 %i.am, %28
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = add i32 %29, %28
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !22
  %i.aq = add i32 %i.an, %30
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.as = add i32 %31, %30
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !22
  store <4 x i32> zeroinitializer, ptr %0, align 4, !tbaa !22
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = add i32 %i.aq, %i.ai
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = add i32 %i.ah, %i.ai
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !22
  %i.ax = add i32 %i.au, %i.ag
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.az = add i32 %i.af, %i.ag
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !22
  %i.ba = add i32 %i.ax, %i.ae
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bc = add i32 %i.ad, %i.ae
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !22
  %i.bd = add i32 %i.ba, %i.ac
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bf = add i32 %i.ab, %i.ac
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !22
  store <4 x i32> zeroinitializer, ptr %i.at, align 4, !tbaa !22
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bh = add i32 %i.bd, %i.aa
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = add i32 %i.z, %i.aa
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !22
  store i32 0, ptr %i.bg, align 4, !tbaa !22
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bl = add i32 %i.bh, %i.y
  store i32 %i.bl, ptr %i.a, align 4, !tbaa !157
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bn = add i32 %i.x, %i.y
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !22
  store i32 0, ptr %i.bk, align 4, !tbaa !22
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.bo, align 4, !tbaa !43
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.b
  %.137 = phi i1 [ false, %bb.b ], [ true, %.preheader ]
  ret i1 %.137
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @deflate_make_huffman_code(i32 noundef range(i32 19, 289) %0, i32 noundef range(i32 7, 16) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) unnamed_addr #14 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 12 uses
  %i.b = alloca [288 x i32], align 16             ; 13 uses
  %i.c = alloca [16 x i32], align 16              ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17, !noalias !187
  %i.d = add nuw nsw i32 %0, 3
  %i.e = and i32 %i.d, 1020                       ; 4 uses
  %i.f = shl nuw nsw i32 %i.e, 2
  %i.g = zext nneg i32 %i.f to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 0, i64 %i.g, i1 false), !noalias !187
  %i.h = add nsw i32 %i.e, -1                     ; 4 uses
  %wide.trip.count.i.i = zext nneg i32 %0 to i64  ; 11 uses
  %i.i = add nsw i64 %wide.trip.count.i.i, -1     ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %wide.trip.count.i.i, 510
  br label %bb.b

.lr.ph.preheader.i.i.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.preheader.i.i.unr-lcssa, %bb.a
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.i.1, %.lr.ph.preheader.i.i.unr-lcssa ]
  %lcmp.mod65 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod65)
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.i.epil.init
  %i.l = load i32, ptr %i.k, align 4, !tbaa !22, !alias.scope !188
  %..i.i.epil = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.h)
  %i.m = zext nneg i32 %..i.i.epil to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !22, !noalias !187
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !22, !noalias !187
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.preheader.i.i.unr-lcssa, %.epil.preheader
  %wide.trip.count68.i.i = zext nneg i32 %i.e to i64 ; 2 uses
  %i.q = icmp eq i32 %i.e, 4
  br i1 %i.q, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %i.r = add nsw i64 %wide.trip.count68.i.i, -8
  br label %.lr.ph.i.i

bb.b:                                             ; preds = %bb.b, %.new
  %indvars.iv.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.b ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.i
  %i.t = load i32, ptr %i.s, align 4, !tbaa !22, !alias.scope !188
  %..i.i = tail call i32 @llvm.umin.i32(i32 %i.t, i32 %i.h)
  %i.u = zext nneg i32 %..i.i to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !22, !noalias !187
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !22, !noalias !187
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !22, !alias.scope !188
  %..i.i.1 = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 %i.h)
  %i.ab = zext nneg i32 %..i.i.1 to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !22, !noalias !187
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !22, !noalias !187
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.preheader.i.i.unr-lcssa, label %bb.b

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv65.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next66.i.i.3, %.lr.ph.i.i ] ; 5 uses
  %.03855.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.at, %.lr.ph.i.i ] ; 2 uses
  %niter71 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter71.next.3, %.lr.ph.i.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv65.i.i ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !22, !noalias !187
  store i32 %.03855.i.i, ptr %i.af, align 4, !tbaa !22, !noalias !187
  %i.ah = add i32 %i.ag, %.03855.i.i              ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv65.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !22, !noalias !187
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !22, !noalias !187
  %i.al = add i32 %i.ak, %i.ah                    ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv65.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !22, !noalias !187
  store i32 %i.al, ptr %i.an, align 4, !tbaa !22, !noalias !187
  %i.ap = add i32 %i.ao, %i.al                    ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv65.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 12 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !22, !noalias !187
  store i32 %i.ap, ptr %i.ar, align 4, !tbaa !22, !noalias !187
  %i.at = add i32 %i.as, %i.ap                    ; 2 uses
  %indvars.iv.next66.i.i.3 = add nuw nsw i64 %indvars.iv65.i.i, 4 ; 2 uses
  %niter71.next.3 = add nuw nsw i64 %niter71, 4
  %niter71.ncmp.3 = icmp eq i64 %niter71, %i.r
  br i1 %niter71.ncmp.3, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

.lr.ph.i.i.epil.preheader:                        ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv65.i.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %indvars.iv.next66.i.i.3, %.lr.ph.i.i ]
  %.03855.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.at, %.lr.ph.i.i ]
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv65.i.i.epil = phi i64 [ %indvars.iv65.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next66.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %.03855.i.i.epil = phi i32 [ %.03855.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %i.aw, %.lr.ph.i.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv65.i.i.epil ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !22, !noalias !187
  store i32 %.03855.i.i.epil, ptr %i.au, align 4, !tbaa !22, !noalias !187
  %i.aw = add i32 %i.av, %.03855.i.i.epil         ; 7 uses
  %indvars.iv.next66.i.i.epil = add nuw nsw i64 %indvars.iv65.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 3
  br i1 %epil.iter.cmp.not, label %.preheader.i.i, label %.lr.ph.i.i.epil, !llvm.loop !166

.preheader.i.i:                                   ; preds = %.lr.ph.i.i.epil, %bb.e
  %indvars.iv70.i.i = phi i64 [ %indvars.iv.next71.i.i, %bb.e ], [ 0, %.lr.ph.i.i.epil ] ; 4 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv70.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !22, !alias.scope !188 ; 3 uses
  %.not.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i.i
  %i.az = shl i32 %i.ay, 10
  %i.ba = trunc nuw nsw i64 %indvars.iv70.i.i to i32
  %i.bb = or i32 %i.az, %i.ba
  %i.bc = tail call i32 @llvm.umin.i32(i32 %i.ay, i32 %i.h)
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !22, !noalias !187 ; 2 uses
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !22, !noalias !187
  %i.bh = zext i32 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bh
  store i32 %i.bb, ptr %i.bi, align 4, !tbaa !22, !alias.scope !189
  br label %bb.e

bb.d:                                             ; preds = %.preheader.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv70.i.i
  store i8 0, ptr %i.bj, align 1, !tbaa !21, !alias.scope !190
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next71.i.i = add nuw nsw i64 %indvars.iv70.i.i, 1 ; 2 uses
  %exitcond74.not.i.i = icmp eq i64 %indvars.iv.next71.i.i, %wide.trip.count.i.i
  br i1 %exitcond74.not.i.i, label %bb.f, label %.preheader.i.i
end_hunk_0
begin_hunk_1_@deflate_make_huffman_code:bb.a
  %i.ip = getelementptr i8, ptr %i.io, i64 -4
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !22, !alias.scope !198, !noalias !192
  %i.ir = add i32 %i.iq, %i.in
  %i.is = shl i32 %i.ir, 1                        ; 2 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv37.i.i
  store i32 %i.is, ptr %i.it, align 8, !tbaa !22, !noalias !199
  %indvars.iv.next38.i.i = or disjoint i64 %indvars.iv37.i.i, 1 ; 2 uses
  %i.iu = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next38.i.i
  %i.iv = getelementptr i8, ptr %i.iu, i64 -4
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !22, !alias.scope !198, !noalias !192
  %i.ix = add i32 %i.iw, %i.is
  %i.iy = shl i32 %i.ix, 1                        ; 2 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next38.i.i
  store i32 %i.iy, ptr %i.iz, align 4, !tbaa !22, !noalias !199
  %indvars.iv.next38.i.i.1 = add nuw nsw i64 %indvars.iv37.i.i, 2 ; 2 uses
  %i.ja = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next38.i.i.1
  %i.jb = getelementptr i8, ptr %i.ja, i64 -4
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !22, !alias.scope !198, !noalias !192
  %i.jd = add i32 %i.jc, %i.iy
  %i.je = shl i32 %i.jd, 1                        ; 2 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next38.i.i.1
  store i32 %i.je, ptr %i.jf, align 8, !tbaa !22, !noalias !199
  %indvars.iv.next38.i.i.2 = add nuw nsw i64 %indvars.iv37.i.i, 3 ; 2 uses
  %i.jg = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next38.i.i.2
  %i.jh = getelementptr i8, ptr %i.jg, i64 -4
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !22, !alias.scope !198, !noalias !192
  %i.jj = add i32 %i.ji, %i.je
  %i.jk = shl i32 %i.jj, 1                        ; 3 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next38.i.i.2
  store i32 %i.jk, ptr %i.jl, align 4, !tbaa !22, !noalias !199
  %indvars.iv.next38.i.i.3 = add nuw nsw i64 %indvars.iv37.i.i, 4 ; 2 uses
  %niter81.next.3 = add nuw i64 %niter81, 4       ; 2 uses
  %niter81.ncmp.3 = icmp eq i64 %niter81.next.3, %unroll_iter80
  br i1 %niter81.ncmp.3, label %.preheader.i42.i.preheader.unr-lcssa, label %bb.aa

.preheader.i42.i.preheader.unr-lcssa:             ; preds = %bb.aa
  %lcmp.mod78.not = icmp eq i64 %xtraiter76, 0
  br i1 %lcmp.mod78.not, label %.preheader.i42.i.preheader, label %.epil.preheader75

.epil.preheader75:                                ; preds = %.preheader.i42.i.preheader.unr-lcssa
  %lcmp.mod79 = icmp ne i64 %xtraiter76, 0
  tail call void @llvm.assume(i1 %lcmp.mod79)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.epil.preheader75
  %i.jm = phi i32 [ %i.jk, %.epil.preheader75 ], [ %i.jr, %bb.ab ]
  %indvars.iv37.i.i.epil = phi i64 [ %indvars.iv.next38.i.i.3, %.epil.preheader75 ], [ %indvars.iv.next38.i.i.epil, %bb.ab ] ; 3 uses
  %epil.iter77 = phi i64 [ 0, %.epil.preheader75 ], [ %epil.iter77.next, %bb.ab ]
  %i.jn = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv37.i.i.epil
  %i.jo = getelementptr i8, ptr %i.jn, i64 -4
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !22, !alias.scope !198, !noalias !192
  %i.jq = add i32 %i.jp, %i.jm
  %i.jr = shl i32 %i.jq, 1                        ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv37.i.i.epil
  store i32 %i.jr, ptr %i.js, align 4, !tbaa !22, !noalias !199
  %indvars.iv.next38.i.i.epil = add nuw nsw i64 %indvars.iv37.i.i.epil, 1
  %epil.iter77.next = add i64 %epil.iter77, 1     ; 2 uses
  %epil.iter77.cmp.not = icmp eq i64 %epil.iter77.next, %xtraiter76
  br i1 %epil.iter77.cmp.not, label %.preheader.i42.i.preheader, label %bb.ab, !llvm.loop !175

.preheader.i42.i.preheader:                       ; preds = %bb.ab, %.preheader.i42.i.preheader.unr-lcssa
  %xtraiter82 = and i64 %wide.trip.count.i.i, 1
  %i.jt = icmp eq i64 %i.i, 0
  br i1 %i.jt, label %.preheader.i42.i.epil.preheader, label %.preheader.i42.i.preheader.new

.preheader.i42.i.preheader.new:                   ; preds = %.preheader.i42.i.preheader
  %unroll_iter86 = and i64 %wide.trip.count.i.i, 510
  br label %.preheader.i42.i

.preheader.i42.i:                                 ; preds = %.preheader.i42.i, %.preheader.i42.i.preheader.new
  %indvars.iv41.i.i = phi i64 [ 0, %.preheader.i42.i.preheader.new ], [ %indvars.iv.next42.i.i.1, %.preheader.i42.i ] ; 4 uses
  %niter87 = phi i64 [ 0, %.preheader.i42.i.preheader.new ], [ %niter87.next.1, %.preheader.i42.i ]
  %i.ju = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv41.i.i
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !21, !alias.scope !201
  %i.jw = zext i8 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jw ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !22, !noalias !199 ; 2 uses
  %i.jz = add i32 %i.jy, 1
  store i32 %i.jz, ptr %i.jx, align 4, !tbaa !22, !noalias !199
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv41.i.i
  store i32 %i.jy, ptr %i.ka, align 4, !tbaa !22, !alias.scope !200
  %indvars.iv.next42.i.i = or disjoint i64 %indvars.iv41.i.i, 1 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next42.i.i
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !21, !alias.scope !201
  %i.kd = zext i8 %i.kc to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kd ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !22, !noalias !199 ; 2 uses
  %i.kg = add i32 %i.kf, 1
  store i32 %i.kg, ptr %i.ke, align 4, !tbaa !22, !noalias !199
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next42.i.i
  store i32 %i.kf, ptr %i.kh, align 4, !tbaa !22, !alias.scope !200
  %indvars.iv.next42.i.i.1 = add nuw nsw i64 %indvars.iv41.i.i, 2 ; 2 uses
  %niter87.next.1 = add nuw nsw i64 %niter87, 2   ; 2 uses
  %niter87.ncmp.1 = icmp eq i64 %niter87.next.1, %unroll_iter86
  br i1 %niter87.ncmp.1, label %gen_codewords.exit.i.unr-lcssa, label %.preheader.i42.i

gen_codewords.exit.i.unr-lcssa:                   ; preds = %.preheader.i42.i
  %lcmp.mod84.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod84.not, label %gen_codewords.exit.i, label %.preheader.i42.i.epil.preheader

.preheader.i42.i.epil.preheader:                  ; preds = %gen_codewords.exit.i.unr-lcssa, %.preheader.i42.i.preheader
  %indvars.iv41.i.i.epil.init = phi i64 [ 0, %.preheader.i42.i.preheader ], [ %indvars.iv.next42.i.i.1, %gen_codewords.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod85 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod85)
  %i.ki = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv41.i.i.epil.init
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !21, !alias.scope !201
  %i.kk = zext i8 %i.kj to i64
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kk ; 2 uses
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !22, !noalias !199 ; 2 uses
  %i.kn = add i32 %i.km, 1
  store i32 %i.kn, ptr %i.kl, align 4, !tbaa !22, !noalias !199
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv41.i.i.epil.init
  store i32 %i.km, ptr %i.ko, align 4, !tbaa !22, !alias.scope !200
  br label %gen_codewords.exit.i

gen_codewords.exit.i:                             ; preds = %gen_codewords.exit.i.unr-lcssa, %.preheader.i42.i.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17, !noalias !192
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %gen_codewords.exit.i, %bb.m, %sort_symbols.exit.i
  %i.kp = shl nuw nsw i64 %wide.trip.count.i.i, 2
  %i.kq = getelementptr i8, ptr %4, i64 %i.kp
  %i.kr = getelementptr i8, ptr %3, i64 %wide.trip.count.i.i
  %bound0 = icmp ult ptr %4, %i.kr
  %bound1 = icmp ult ptr %3, %i.kq
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i, 508      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ks, align 4, !tbaa !22, !alias.scope !202, !noalias !203
  %i.kt = getelementptr inbounds nuw i8, ptr %3, i64 %index
  %wide.load61 = load <4 x i8>, ptr %i.kt, align 1, !tbaa !21, !alias.scope !203
  %i.ku = trunc <4 x i32> %wide.load to <4 x i16>
  %i.kv = tail call <4 x i16> @llvm.bitreverse.v4i16(<4 x i16> %i.ku)
  %i.kw = zext <4 x i16> %i.kv to <4 x i32>
  %i.kx = zext <4 x i8> %wide.load61 to <4 x i32>
  %i.ky = sub nsw <4 x i32> splat (i32 16), %i.kx
  %i.kz = lshr <4 x i32> %i.kw, %i.ky
  store <4 x i32> %i.kz, ptr %i.ks, align 4, !tbaa !22, !alias.scope !202, !noalias !203
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.la = icmp eq i64 %index.next, %n.vec
  br i1 %i.la, label %middle.block, label %vector.body, !llvm.loop !179

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !22
  %i.ld = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !21
  %trunc.i = trunc i32 %i.lc to i16
  %rev.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i)
  %i.lf = zext i16 %rev.i to i32
  %i.lg = zext i8 %i.le to i32
  %i.lh = sub nsw i32 16, %i.lg
  %i.li = lshr i32 %i.lf, %i.lh
  store i32 %i.li, ptr %i.lb, align 4, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.i.i
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !180

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bitreverse.v4i16(<4 x i16>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"deflate_freqs", !5, i64 0, !5, i64 1152}
!11 = !{!"deflate_codewords", !5, i64 0, !5, i64 1152}
!12 = !{!"deflate_lens", !5, i64 0, !5, i64 288}
!13 = !{!"deflate_codes", !11, i64 0, !12, i64 1280}
!14 = !{!"block_split_stats", !5, i64 0, !5, i64 40, !6, i64 80, !6, i64 84}
!15 = !{!"libdeflate_compressor", !9, i64 0, !10, i64 8, !13, i64 1288, !13, i64 2888, !14, i64 4488, !5, i64 4576, !6, i64 37348, !6, i64 37352, !6, i64 37356, !6, i64 37360, !5, i64 37364, !5, i64 37440, !5, i64 37460, !5, i64 37536, !6, i64 38816, !6, i64 38820, !6, i64 38824, !6, i64 38828, !5, i64 38848}
!16 = !{!15, !6, i64 37356}
!17 = !{!15, !6, i64 37360}
!18 = !{!15, !9, i64 0}
!19 = !{!15, !6, i64 37352}
!20 = !{!15, !6, i64 37348}
!21 = !{!5, !5, i64 0}
!22 = !{!6, !6, i64 0}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{!"long", !5, i64 0}
!27 = !{!"p1 omnipotent char", !9, i64 0}
!28 = !{!"deflate_output_bitstream", !26, i64 0, !6, i64 8, !27, i64 16, !27, i64 24, !27, i64 32}
!29 = !{!28, !26, i64 0}
!30 = !{!28, !6, i64 8}
!31 = !{!28, !27, i64 16}
!32 = !{!28, !27, i64 24}
!33 = !{!28, !27, i64 32}
!34 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!35 = !{!"short", !5, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!38 = !{!"deflate_sequence", !6, i64 0, !35, i64 4, !5, i64 6, !5, i64 7}
!39 = !{!38, !6, i64 0}
!40 = !{!38, !35, i64 4}
!41 = !{!38, !5, i64 7}
!42 = !{!38, !5, i64 6}
!43 = !{!14, !6, i64 80}
!44 = !{!"deflate_optimum_node", !6, i64 0, !6, i64 4}
!45 = !{!44, !6, i64 4}
!46 = distinct !{!46, !23}
!47 = distinct !{!47, !24, !25}
!48 = distinct !{!48, !24, !25}
!49 = distinct !{!49, !24}
!50 = distinct !{!50, i1 true, !"hc_matchfinder_longest_match"}
!51 = distinct !{!51, !50, !"hc_matchfinder_longest_match: argument 4"}
!52 = distinct !{!52, !50, !"hc_matchfinder_longest_match: argument 3"}
!53 = distinct !{!53, !50, !"hc_matchfinder_longest_match: argument 1"}
!54 = distinct !{!54, !50, !"hc_matchfinder_longest_match: argument 0"}
!55 = distinct !{!55, i1 true, !"hc_matchfinder_skip_positions"}
!56 = distinct !{!56, !55, !"hc_matchfinder_skip_positions: argument 2"}
!57 = distinct !{!57, !55, !"hc_matchfinder_skip_positions: argument 1"}
!58 = distinct !{!58, !55, !"hc_matchfinder_skip_positions: argument 0"}
!59 = distinct !{!59, !23}
!60 = !{!53, !52, !51}
!61 = !{!54}
!62 = !{!57, !56}
!63 = !{!58}
!64 = distinct !{!64, i1 true, !"hc_matchfinder_longest_match"}
!65 = distinct !{!65, !64, !"hc_matchfinder_longest_match: argument 4"}
!66 = distinct !{!66, !64, !"hc_matchfinder_longest_match: argument 3"}
!67 = distinct !{!67, !64, !"hc_matchfinder_longest_match: argument 1"}
!68 = distinct !{!68, !64, !"hc_matchfinder_longest_match: argument 0"}
!69 = distinct !{!69, i1 true, !"hc_matchfinder_skip_positions"}
!70 = distinct !{!70, !69, !"hc_matchfinder_skip_positions: argument 2"}
!71 = distinct !{!71, !69, !"hc_matchfinder_skip_positions: argument 1"}
!72 = distinct !{!72, !69, !"hc_matchfinder_skip_positions: argument 0"}
!73 = distinct !{!73, i1 true, !"hc_matchfinder_longest_match"}
!74 = distinct !{!74, !73, !"hc_matchfinder_longest_match: argument 4"}
!75 = distinct !{!75, !73, !"hc_matchfinder_longest_match: argument 3"}
!76 = distinct !{!76, !73, !"hc_matchfinder_longest_match: argument 1"}
!77 = distinct !{!77, !73, !"hc_matchfinder_longest_match: argument 0"}
!78 = distinct !{!78, i1 true, !"hc_matchfinder_skip_positions"}
!79 = distinct !{!79, !78, !"hc_matchfinder_skip_positions: argument 2"}
!80 = distinct !{!80, !78, !"hc_matchfinder_skip_positions: argument 1"}
!81 = distinct !{!81, !78, !"hc_matchfinder_skip_positions: argument 0"}
!82 = distinct !{!82, !23}
!83 = !{!67, !66, !65}
!84 = !{!68}
!85 = !{!71, !70}
!86 = !{!72}
!87 = !{!76, !75, !74}
!88 = !{!77}
!89 = !{!80, !79}
!90 = !{!81}
!91 = distinct !{!91, i1 true, !"bt_matchfinder_advance_one_byte"}
!92 = distinct !{!92, !91, !"bt_matchfinder_advance_one_byte: argument 0"}
!93 = distinct !{!93, !91, !"bt_matchfinder_advance_one_byte: argument 1"}
!94 = distinct !{!94, !91, !"bt_matchfinder_advance_one_byte: argument 4"}
!95 = distinct !{!95, !91, !"bt_matchfinder_advance_one_byte: argument 3"}
!96 = distinct !{!96, !91, !"bt_matchfinder_advance_one_byte: argument 2"}
!97 = distinct !{!97, i1 true, !"bt_matchfinder_advance_one_byte"}
!98 = distinct !{!98, !97, !"bt_matchfinder_advance_one_byte: argument 0"}
!99 = distinct !{!99, !97, !"bt_matchfinder_advance_one_byte: argument 1"}
!100 = distinct !{!100, !97, !"bt_matchfinder_advance_one_byte: argument 4"}
!101 = distinct !{!101, !97, !"bt_matchfinder_advance_one_byte: argument 3"}
!102 = distinct !{!102, !97, !"bt_matchfinder_advance_one_byte: argument 2"}
!103 = distinct !{!103, !23}
!104 = distinct !{!104, !24, !25}
!105 = distinct !{!105, !24}
!106 = distinct !{!106, i1 false, !"LVerDomain"}
!107 = distinct !{!107, !106}
!108 = distinct !{!108, !106}
!109 = distinct !{!109, !24, !25}
!110 = distinct !{!110, !24}
!111 = distinct !{!111, i1 false, !"LVerDomain"}
!112 = distinct !{!112, !111}
!113 = distinct !{!113, !111}
!114 = distinct !{!114, !23}
!115 = !{!92}
!116 = !{!93}
!117 = !{!94}
!118 = !{!93, !96, !95, !94}
!119 = !{!"lz_match", !35, i64 0, !35, i64 2}
!120 = !{!119, !35, i64 0}
!121 = !{!119, !35, i64 2}
!122 = !{!98}
!123 = !{!99}
!124 = !{!99, !102, !101, !100}
!125 = !{!44, !6, i64 0}
!126 = !{!107}
!127 = !{!108}
!128 = !{!112}
!129 = !{!113}
!130 = distinct !{!130, !23}
!131 = distinct !{!131, i1 true, !"deflate_compute_precode_items"}
!132 = distinct !{!132, !131, !"deflate_compute_precode_items: argument 0"}
!133 = distinct !{!133, !131, !"deflate_compute_precode_items: argument 1"}
!134 = distinct !{!134, !131, !"deflate_compute_precode_items: argument 2"}
!135 = distinct !{!135, !24, !25}
!136 = distinct !{!136, !25, !24}
!137 = distinct !{!137, !24, !25}
!138 = distinct !{!138, !151}
!139 = distinct !{!139, i1 true, !"deflate_write_sequences"}
!140 = distinct !{!140, !139, !"deflate_write_sequences: argument 0"}
!141 = distinct !{!141, !139, !"deflate_write_sequences: argument 1"}
!142 = distinct !{!142, !139, !"deflate_write_sequences: argument 2"}
!143 = distinct !{!143, !139, !"deflate_write_sequences: argument 3"}
!144 = !{!15, !6, i64 38816}
!145 = !{!15, !6, i64 38820}
!146 = !{!132}
!147 = !{!133}
!148 = !{!134}
!149 = !{!15, !6, i64 38828}
!150 = !{!15, !6, i64 38824}
!151 = !{!"llvm.loop.peeled.count", i32 1}
!152 = !{!140}
!153 = !{!141}
!154 = !{!142}
!155 = !{!143}
!156 = !{!140, !141, !142, !143}
!157 = !{!14, !6, i64 84}
!158 = distinct !{!158, i1 true, !"make_canonical_huffman_code"}
!159 = distinct !{!159, !158, !"make_canonical_huffman_code: argument 0"}
!160 = distinct !{!160, !158, !"make_canonical_huffman_code: argument 1"}
!161 = distinct !{!161, !158, !"make_canonical_huffman_code: argument 2"}
!162 = distinct !{!162, i1 true, !"sort_symbols"}
!163 = distinct !{!163, !162, !"sort_symbols: argument 0"}
!164 = distinct !{!164, !162, !"sort_symbols: argument 1"}
!165 = distinct !{!165, !162, !"sort_symbols: argument 2"}
!166 = distinct !{!166, !23}
!167 = distinct !{!167, i1 true, !"compute_length_counts"}
!168 = distinct !{!168, !167, !"compute_length_counts: argument 0"}
!169 = distinct !{!169, !167, !"compute_length_counts: argument 1"}
!170 = distinct !{!170, i1 true, !"gen_codewords"}
!171 = distinct !{!171, !170, !"gen_codewords: argument 0"}
end_hunk_1
