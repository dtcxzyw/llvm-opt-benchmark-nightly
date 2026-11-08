Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/position?download=true
inline.NumInlined: 1164
inline.NumDeleted: 391
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN9Stockfish8Position4initEv:bb.a
  %i.agr = xor i64 %i.agq, %i.agp                 ; 2 uses
  %i.ags = shl i64 %i.agr, 25
  %i.agt = xor i64 %i.ags, %i.agr                 ; 2 uses
  %i.agu = lshr i64 %i.agt, 27
  %i.agv = xor i64 %i.agu, %i.agt                 ; 3 uses
  %i.agw = lshr i64 %i.agv, 12
  %i.agx = xor i64 %i.agw, %i.agv                 ; 2 uses
  %i.agy = shl i64 %i.agx, 25
  %i.agz = xor i64 %i.agy, %i.agx                 ; 2 uses
  %i.aha = lshr i64 %i.agz, 27
  %i.ahb = xor i64 %i.aha, %i.agz                 ; 3 uses
  %i.ahc = insertelement <8 x i64> poison, i64 %i.afl, i64 0
  %i.ahd = insertelement <8 x i64> %i.ahc, i64 %i.afr, i64 1
  %i.ahe = insertelement <8 x i64> %i.ahd, i64 %i.afx, i64 2
  %i.ahf = insertelement <8 x i64> %i.ahe, i64 %i.agd, i64 3
  %i.ahg = insertelement <8 x i64> %i.ahf, i64 %i.agj, i64 4
  %i.ahh = insertelement <8 x i64> %i.ahg, i64 %i.agp, i64 5
  %i.ahi = insertelement <8 x i64> %i.ahh, i64 %i.agv, i64 6
  %i.ahj = insertelement <8 x i64> %i.ahi, i64 %i.ahb, i64 7
  %i.ahk = mul <8 x i64> %i.ahj, splat (i64 2685821657736338717)
  store <8 x i64> %i.ahk, ptr @_ZN9Stockfish7Zobrist8castlingE, align 64, !tbaa !56
  %i.ahl = lshr i64 %i.ahb, 12
  %i.ahm = xor i64 %i.ahl, %i.ahb                 ; 2 uses
  %i.ahn = shl i64 %i.ahm, 25
  %i.aho = xor i64 %i.ahn, %i.ahm                 ; 2 uses
  %i.ahp = lshr i64 %i.aho, 27
  %i.ahq = xor i64 %i.ahp, %i.aho                 ; 3 uses
  %i.ahr = lshr i64 %i.ahq, 12
  %i.ahs = xor i64 %i.ahr, %i.ahq                 ; 2 uses
  %i.aht = shl i64 %i.ahs, 25
  %i.ahu = xor i64 %i.aht, %i.ahs                 ; 2 uses
  %i.ahv = lshr i64 %i.ahu, 27
  %i.ahw = xor i64 %i.ahv, %i.ahu                 ; 3 uses
  %i.ahx = lshr i64 %i.ahw, 12
  %i.ahy = xor i64 %i.ahx, %i.ahw                 ; 2 uses
  %i.ahz = shl i64 %i.ahy, 25
  %i.aia = xor i64 %i.ahz, %i.ahy                 ; 2 uses
  %i.aib = lshr i64 %i.aia, 27
  %i.aic = xor i64 %i.aib, %i.aia                 ; 3 uses
  %i.aid = lshr i64 %i.aic, 12
  %i.aie = xor i64 %i.aid, %i.aic                 ; 2 uses
  %i.aif = shl i64 %i.aie, 25
  %i.aig = xor i64 %i.aif, %i.aie                 ; 2 uses
  %i.aih = lshr i64 %i.aig, 27
  %i.aii = xor i64 %i.aih, %i.aig                 ; 3 uses
  %i.aij = lshr i64 %i.aii, 12
  %i.aik = xor i64 %i.aij, %i.aii                 ; 2 uses
  %i.ail = shl i64 %i.aik, 25
  %i.aim = xor i64 %i.ail, %i.aik                 ; 2 uses
  %i.ain = lshr i64 %i.aim, 27
  %i.aio = xor i64 %i.ain, %i.aim                 ; 3 uses
  %i.aip = lshr i64 %i.aio, 12
  %i.aiq = xor i64 %i.aip, %i.aio                 ; 2 uses
  %i.air = shl i64 %i.aiq, 25
  %i.ais = xor i64 %i.air, %i.aiq                 ; 2 uses
  %i.ait = lshr i64 %i.ais, 27
  %i.aiu = xor i64 %i.ait, %i.ais                 ; 3 uses
  %i.aiv = lshr i64 %i.aiu, 12
  %i.aiw = xor i64 %i.aiv, %i.aiu                 ; 2 uses
  %i.aix = shl i64 %i.aiw, 25
  %i.aiy = xor i64 %i.aix, %i.aiw                 ; 2 uses
  %i.aiz = lshr i64 %i.aiy, 27
  %i.aja = xor i64 %i.aiz, %i.aiy                 ; 3 uses
  %i.ajb = lshr i64 %i.aja, 12
  %i.ajc = xor i64 %i.ajb, %i.aja                 ; 2 uses
  %i.ajd = shl i64 %i.ajc, 25
  %i.aje = xor i64 %i.ajd, %i.ajc                 ; 2 uses
  %i.ajf = lshr i64 %i.aje, 27
  %i.ajg = xor i64 %i.ajf, %i.aje                 ; 3 uses
  %i.ajh = insertelement <8 x i64> poison, i64 %i.ahq, i64 0
  %i.aji = insertelement <8 x i64> %i.ajh, i64 %i.ahw, i64 1
  %i.ajj = insertelement <8 x i64> %i.aji, i64 %i.aic, i64 2
  %i.ajk = insertelement <8 x i64> %i.ajj, i64 %i.aii, i64 3
  %i.ajl = insertelement <8 x i64> %i.ajk, i64 %i.aio, i64 4
  %i.ajm = insertelement <8 x i64> %i.ajl, i64 %i.aiu, i64 5
  %i.ajn = insertelement <8 x i64> %i.ajm, i64 %i.aja, i64 6
  %i.ajo = insertelement <8 x i64> %i.ajn, i64 %i.ajg, i64 7
  %i.ajp = mul <8 x i64> %i.ajo, splat (i64 2685821657736338717)
  store <8 x i64> %i.ajp, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist8castlingE, i64 64), align 64, !tbaa !56
  %i.ajq = lshr i64 %i.ajg, 12
  %i.ajr = xor i64 %i.ajq, %i.ajg                 ; 2 uses
  %i.ajs = shl i64 %i.ajr, 25
  %i.ajt = xor i64 %i.ajs, %i.ajr                 ; 2 uses
  %i.aju = lshr i64 %i.ajt, 27
  %i.ajv = xor i64 %i.aju, %i.ajt                 ; 3 uses
  %i.ajw = mul i64 %i.ajv, 2685821657736338717    ; 4 uses
  store i64 %i.ajw, ptr @_ZN9Stockfish7Zobrist4sideE, align 8, !tbaa !56
  %i.ajx = lshr i64 %i.ajv, 12
  %i.ajy = xor i64 %i.ajx, %i.ajv                 ; 2 uses
  %i.ajz = shl i64 %i.ajy, 25
  %i.aka = xor i64 %i.ajz, %i.ajy                 ; 2 uses
  %i.akb = lshr i64 %i.aka, 27
  %i.akc = xor i64 %i.akb, %i.aka
  %i.akd = mul i64 %i.akc, 2685821657736338717
  store i64 %i.akd, ptr @_ZN9Stockfish7Zobrist7noPawnsE, align 8, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65536) @_ZN9Stockfish6cuckooE, i8 0, i64 65536, i1 false), !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16384) @_ZN9Stockfish10cuckooMoveE, i8 0, i64 16384, i1 false), !tbaa !131
  br label %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit.preheader

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.7171, %bb.b ] ; 9 uses
  %.sroa.060.172 = phi i64 [ 1070372, %bb.a ], [ %i.amt, %bb.b ] ; 2 uses
  %i.ake = lshr i64 %.sroa.060.172, 12
  %i.akf = xor i64 %i.ake, %.sroa.060.172         ; 2 uses
  %i.akg = shl i64 %i.akf, 25
  %i.akh = xor i64 %i.akg, %i.akf                 ; 2 uses
  %i.aki = lshr i64 %i.akh, 27
  %i.akj = xor i64 %i.aki, %i.akh                 ; 3 uses
  %i.akk = mul i64 %i.akj, 2685821657736338717
  %i.akl = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  store i64 %i.akk, ptr %i.akl, align 16, !tbaa !56
  %i.akm = lshr i64 %i.akj, 12
  %i.akn = xor i64 %i.akm, %i.akj                 ; 2 uses
  %i.ako = shl i64 %i.akn, 25
  %i.akp = xor i64 %i.ako, %i.akn                 ; 2 uses
  %i.akq = lshr i64 %i.akp, 27
  %i.akr = xor i64 %i.akq, %i.akp                 ; 3 uses
  %i.aks = mul i64 %i.akr, 2685821657736338717
  %i.akt = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 8
  store i64 %i.aks, ptr %i.aku, align 8, !tbaa !56
  %i.akv = lshr i64 %i.akr, 12
  %i.akw = xor i64 %i.akv, %i.akr                 ; 2 uses
  %i.akx = shl i64 %i.akw, 25
  %i.aky = xor i64 %i.akx, %i.akw                 ; 2 uses
  %i.akz = lshr i64 %i.aky, 27
  %i.ala = xor i64 %i.akz, %i.aky                 ; 3 uses
  %i.alb = mul i64 %i.ala, 2685821657736338717
  %i.alc = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 16
  store i64 %i.alb, ptr %i.ald, align 16, !tbaa !56
  %i.ale = lshr i64 %i.ala, 12
  %i.alf = xor i64 %i.ale, %i.ala                 ; 2 uses
  %i.alg = shl i64 %i.alf, 25
  %i.alh = xor i64 %i.alg, %i.alf                 ; 2 uses
  %i.ali = lshr i64 %i.alh, 27
  %i.alj = xor i64 %i.ali, %i.alh                 ; 3 uses
  %i.alk = mul i64 %i.alj, 2685821657736338717
  %i.all = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 24
  store i64 %i.alk, ptr %i.alm, align 8, !tbaa !56
  %i.aln = lshr i64 %i.alj, 12
  %i.alo = xor i64 %i.aln, %i.alj                 ; 2 uses
  %i.alp = shl i64 %i.alo, 25
  %i.alq = xor i64 %i.alp, %i.alo                 ; 2 uses
  %i.alr = lshr i64 %i.alq, 27
  %i.als = xor i64 %i.alr, %i.alq                 ; 3 uses
  %i.alt = mul i64 %i.als, 2685821657736338717
  %i.alu = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 32
  store i64 %i.alt, ptr %i.alv, align 16, !tbaa !56
  %i.alw = lshr i64 %i.als, 12
  %i.alx = xor i64 %i.alw, %i.als                 ; 2 uses
  %i.aly = shl i64 %i.alx, 25
  %i.alz = xor i64 %i.aly, %i.alx                 ; 2 uses
  %i.ama = lshr i64 %i.alz, 27
  %i.amb = xor i64 %i.ama, %i.alz                 ; 3 uses
  %i.amc = mul i64 %i.amb, 2685821657736338717
  %i.amd = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 40
  store i64 %i.amc, ptr %i.ame, align 8, !tbaa !56
  %i.amf = lshr i64 %i.amb, 12
  %i.amg = xor i64 %i.amf, %i.amb                 ; 2 uses
  %i.amh = shl i64 %i.amg, 25
  %i.ami = xor i64 %i.amh, %i.amg                 ; 2 uses
  %i.amj = lshr i64 %i.ami, 27
  %i.amk = xor i64 %i.amj, %i.ami                 ; 3 uses
  %i.aml = mul i64 %i.amk, 2685821657736338717
  %i.amm = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 48
  store i64 %i.aml, ptr %i.amn, align 16, !tbaa !56
  %i.amo = lshr i64 %i.amk, 12
  %i.amp = xor i64 %i.amo, %i.amk                 ; 2 uses
  %i.amq = shl i64 %i.amp, 25
  %i.amr = xor i64 %i.amq, %i.amp                 ; 2 uses
  %i.ams = lshr i64 %i.amr, 27
  %i.amt = xor i64 %i.ams, %i.amr                 ; 2 uses
  %i.amu = mul i64 %i.amt, 2685821657736338717
  %i.amv = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amv, i64 56
  store i64 %i.amu, ptr %i.amw, align 8, !tbaa !56
  %indvars.iv.next.7171 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7171, 64
  br i1 %exitcond.not.7, label %.preheader130, label %bb.b, !llvm.loop !192

bb.c:                                             ; preds = %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit
  ret void

_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit.preheader: ; preds = %.preheader70, %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit
  %.019.idx89 = phi i64 [ %.019.add, %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit ], [ 0, %.preheader70 ] ; 2 uses
  %.019.ptr = getelementptr inbounds nuw i8, ptr @_ZN9Stockfish12_GLOBAL__N_16PiecesE, i64 %.019.idx89
  %i.amx = load i8, ptr %.019.ptr, align 1, !tbaa !65 ; 2 uses
  %i.amy = and i8 %i.amx, 7                       ; 4 uses
  %i.amz = zext nneg i8 %i.amy to i64
  %i.ana = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish13PseudoAttacksE, i64 %i.amz
  %i.anb = zext i8 %i.amx to i64
  %i.anc = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish7Zobrist3psqE, i64 %i.anb ; 4 uses
  br label %bb.d

.loopexit:                                        ; preds = %.prol.loopexit, %._crit_edge.1, %bb.d
  %exitcond110.not = icmp eq i64 %indvars.iv.next108, 64
  br i1 %exitcond110.not, label %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit, label %bb.d, !llvm.loop !193

_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit: ; preds = %.loopexit
  %.019.add = add nuw nsw i64 %.019.idx89, 1      ; 2 uses
  %.not23 = icmp eq i64 %.019.add, 12
  br i1 %.not23, label %bb.c, label %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit.preheader

bb.d:                                             ; preds = %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit.preheader, %.loopexit
  %indvars.iv101.a = phi i64 [ 0, %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit.preheader ], [ %indvars.iv.next108, %.loopexit ] ; 10 uses
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv101.a, 1 ; 5 uses
  %i.and = icmp samesign ult i64 %indvars.iv101.a, 63
  br i1 %i.and, label %.lr.ph85, label %.loopexit

.lr.ph85:                                         ; preds = %bb.d
  %i.ane = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %indvars.iv101.a ; 2 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 8 ; 6 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %i.ane, i64 24 ; 6 uses
  %i.anh = getelementptr inbounds nuw [8 x i8], ptr %i.ana, i64 %indvars.iv101.a ; 3 uses
  %i.ani = trunc nuw nsw i64 %indvars.iv101.a to i16
  %i.anj = shl nuw nsw i16 %i.ani, 6              ; 3 uses
  %i.ank = getelementptr inbounds nuw [8 x i8], ptr %i.anc, i64 %indvars.iv101.a ; 3 uses
  %i.anl = and i64 %indvars.iv101.a, 1
  %lcmp.mod.not.not = icmp eq i64 %i.anl, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph85
  switch i8 %i.amy, label %bb.h [
    i8 1, label %._crit_edge.prol
    i8 3, label %bb.g
    i8 4, label %bb.f
    i8 5, label %bb.e
  ]

bb.e:                                             ; preds = %.prol.preheader
  %i.anm = load ptr, ptr %i.anf, align 8, !tbaa !134
  %i.ann = load i64, ptr %i.anm, align 8, !tbaa !56
  %i.ano = load ptr, ptr %i.ang, align 8, !tbaa !134
  %i.anp = load i64, ptr %i.ano, align 8, !tbaa !56
  %i.anq = or i64 %i.anp, %i.ann
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.prol

bb.f:                                             ; preds = %.prol.preheader
  %i.anr = load ptr, ptr %i.ang, align 8, !tbaa !134
  %i.ans = load i64, ptr %i.anr, align 8, !tbaa !56
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.prol

bb.g:                                             ; preds = %.prol.preheader
  %i.ant = load ptr, ptr %i.anf, align 8, !tbaa !134
  %i.anu = load i64, ptr %i.ant, align 8, !tbaa !56
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.prol

bb.h:                                             ; preds = %.prol.preheader
  %i.anv = load i64, ptr %i.anh, align 8, !tbaa !56
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.prol

_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.prol: ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.0.i.prol = phi i64 [ %i.anv, %bb.h ], [ %i.anu, %bb.g ], [ %i.ans, %bb.f ], [ %i.anq, %bb.e ]
  %i.anw = shl nuw i64 2, %indvars.iv101.a
  %i.anx = and i64 %.0.i.prol, %i.anw
  %.not25.prol = icmp eq i64 %i.anx, 0
  br i1 %.not25.prol, label %._crit_edge.prol, label %bb.i

bb.i:                                             ; preds = %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.prol
  %i.any = trunc nuw nsw i64 %indvars.iv.next108 to i16
  %0 = or disjoint i16 %i.anj, %i.any
  %i.anz = load i64, ptr %i.ank, align 8, !tbaa !56
  %i.aoa = getelementptr inbounds nuw [8 x i8], ptr %i.anc, i64 %indvars.iv.next108
  %i.aob = load i64, ptr %i.aoa, align 8, !tbaa !56
  %i.aoc = xor i64 %i.anz, %i.aob
  %i.aod = xor i64 %i.aoc, %i.ajw                 ; 3 uses
  %i.aoe = and i64 %i.aod, 8191                   ; 2 uses
  %i.aof = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish6cuckooE, i64 %i.aoe ; 2 uses
  %i.aog = load i64, ptr %i.aof, align 8, !tbaa !56
  store i64 %i.aod, ptr %i.aof, align 8, !tbaa !56
  %i.aoh = getelementptr inbounds nuw [2 x i8], ptr @_ZN9Stockfish10cuckooMoveE, i64 %i.aoe ; 2 uses
  %.sroa.0.0.copyload.i79.prol = load i16, ptr %i.aoh, align 2, !tbaa !131 ; 2 uses
  store i16 %0, ptr %i.aoh, align 2, !tbaa !131
  %i.aoi = icmp eq i16 %.sroa.0.0.copyload.i79.prol, 0
  br i1 %i.aoi, label %._crit_edge.prol, label %.lr.ph.preheader.prol

.lr.ph.preheader.prol:                            ; preds = %bb.i
  %i.aoj = trunc i64 %i.aod to i32
  %i.aok = and i32 %i.aoj, 8191
  br label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.prol, %.lr.ph.preheader.prol
  %.sroa.0.0.copyload.i81.prol = phi i16 [ %.sroa.0.0.copyload.i.prol, %.lr.ph.prol ], [ %.sroa.0.0.copyload.i79.prol, %.lr.ph.preheader.prol ]
  %i.aol = phi i64 [ %i.aou, %.lr.ph.prol ], [ %i.aog, %.lr.ph.preheader.prol ] ; 2 uses
  %.080.prol = phi i32 [ %i.aor, %.lr.ph.prol ], [ %i.aok, %.lr.ph.preheader.prol ]
  %i.aom = trunc i64 %i.aol to i32                ; 2 uses
  %i.aon = and i32 %i.aom, 8191                   ; 2 uses
  %i.aoo = icmp eq i32 %.080.prol, %i.aon
  %i.aop = lshr i32 %i.aom, 16
  %i.aoq = and i32 %i.aop, 8191
  %i.aor = select i1 %i.aoo, i32 %i.aoq, i32 %i.aon ; 2 uses
  %i.aos = zext nneg i32 %i.aor to i64            ; 2 uses
  %i.aot = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish6cuckooE, i64 %i.aos ; 2 uses
  %i.aou = load i64, ptr %i.aot, align 8, !tbaa !56
  store i64 %i.aol, ptr %i.aot, align 8, !tbaa !56
  %i.aov = getelementptr inbounds nuw [2 x i8], ptr @_ZN9Stockfish10cuckooMoveE, i64 %i.aos ; 2 uses
  %.sroa.0.0.copyload.i.prol = load i16, ptr %i.aov, align 2, !tbaa !131 ; 2 uses
  store i16 %.sroa.0.0.copyload.i81.prol, ptr %i.aov, align 2, !tbaa !131
  %i.aow = icmp eq i16 %.sroa.0.0.copyload.i.prol, 0
  br i1 %i.aow, label %._crit_edge.prol, label %.lr.ph.prol, !llvm.loop !194

._crit_edge.prol:                                 ; preds = %.lr.ph.prol, %bb.i, %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.prol, %.prol.preheader
  %indvars.iv.next104.prol = add nuw nsw i64 %indvars.iv101.a, 2
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %._crit_edge.prol, %.lr.ph85
  %indvars.iv103.unr = phi i64 [ %indvars.iv.next108, %.lr.ph85 ], [ %indvars.iv.next104.prol, %._crit_edge.prol ]
  %i.aox = icmp eq i64 %indvars.iv101.a, 62
  br i1 %i.aox, label %.loopexit, label %.lr.ph85.new

.lr.ph85.new:                                     ; preds = %.prol.loopexit, %._crit_edge.1
  %indvars.iv103 = phi i64 [ %indvars.iv.next104.1, %._crit_edge.1 ], [ %indvars.iv103.unr, %.prol.loopexit ] ; 6 uses
  switch i8 %i.amy, label %bb.m [
    i8 1, label %._crit_edge
    i8 3, label %bb.j
    i8 4, label %bb.k
    i8 5, label %bb.l
  ]

bb.j:                                             ; preds = %.lr.ph85.new
  %i.aoy = load ptr, ptr %i.anf, align 8, !tbaa !134
  %i.aoz = load i64, ptr %i.aoy, align 8, !tbaa !56
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit

bb.k:                                             ; preds = %.lr.ph85.new
  %i.apa = load ptr, ptr %i.ang, align 8, !tbaa !134
  %i.apb = load i64, ptr %i.apa, align 8, !tbaa !56
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit

bb.l:                                             ; preds = %.lr.ph85.new
  %i.apc = load ptr, ptr %i.anf, align 8, !tbaa !134
  %i.apd = load i64, ptr %i.apc, align 8, !tbaa !56
  %i.ape = load ptr, ptr %i.ang, align 8, !tbaa !134
  %i.apf = load i64, ptr %i.ape, align 8, !tbaa !56
  %i.apg = or i64 %i.apf, %i.apd
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit

bb.m:                                             ; preds = %.lr.ph85.new
  %i.aph = load i64, ptr %i.anh, align 8, !tbaa !56
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit

_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit: ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %.0.i = phi i64 [ %i.aph, %bb.m ], [ %i.aoz, %bb.j ], [ %i.apb, %bb.k ], [ %i.apg, %bb.l ]
  %i.api = shl nuw i64 1, %indvars.iv103
  %i.apj = and i64 %.0.i, %i.api
  %.not25 = icmp eq i64 %i.apj, 0
  br i1 %.not25, label %._crit_edge, label %bb.n

bb.n:                                             ; preds = %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit
  %i.apk = trunc nuw nsw i64 %indvars.iv103 to i16
  %i.apl = add nuw nsw i16 %i.anj, %i.apk
  %i.apm = load i64, ptr %i.ank, align 8, !tbaa !56
  %i.apn = getelementptr inbounds nuw [8 x i8], ptr %i.anc, i64 %indvars.iv103
  %i.apo = load i64, ptr %i.apn, align 8, !tbaa !56
  %i.app = xor i64 %i.apm, %i.apo
  %i.apq = xor i64 %i.app, %i.ajw                 ; 3 uses
  %i.apr = and i64 %i.apq, 8191                   ; 2 uses
  %i.aps = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish6cuckooE, i64 %i.apr ; 2 uses
  %i.apt = load i64, ptr %i.aps, align 8, !tbaa !56
  store i64 %i.apq, ptr %i.aps, align 8, !tbaa !56
  %i.apu = getelementptr inbounds nuw [2 x i8], ptr @_ZN9Stockfish10cuckooMoveE, i64 %i.apr ; 2 uses
  %.sroa.0.0.copyload.i79 = load i16, ptr %i.apu, align 2, !tbaa !131 ; 2 uses
  store i16 %i.apl, ptr %i.apu, align 2, !tbaa !131
  %i.apv = icmp eq i16 %.sroa.0.0.copyload.i79, 0
  br i1 %i.apv, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.apw = trunc i64 %i.apq to i32
  %i.apx = and i32 %i.apw, 8191
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.0.copyload.i81 = phi i16 [ %.sroa.0.0.copyload.i, %.lr.ph ], [ %.sroa.0.0.copyload.i79, %.lr.ph.preheader ]
  %i.apy = phi i64 [ %i.aqh, %.lr.ph ], [ %i.apt, %.lr.ph.preheader ] ; 2 uses
  %.080 = phi i32 [ %i.aqe, %.lr.ph ], [ %i.apx, %.lr.ph.preheader ]
  %i.apz = trunc i64 %i.apy to i32                ; 2 uses
  %i.aqa = and i32 %i.apz, 8191                   ; 2 uses
  %i.aqb = icmp eq i32 %.080, %i.aqa
  %i.aqc = lshr i32 %i.apz, 16
  %i.aqd = and i32 %i.aqc, 8191
  %i.aqe = select i1 %i.aqb, i32 %i.aqd, i32 %i.aqa ; 2 uses
  %i.aqf = zext nneg i32 %i.aqe to i64            ; 2 uses
  %i.aqg = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish6cuckooE, i64 %i.aqf ; 2 uses
  %i.aqh = load i64, ptr %i.aqg, align 8, !tbaa !56
  store i64 %i.apy, ptr %i.aqg, align 8, !tbaa !56
  %i.aqi = getelementptr inbounds nuw [2 x i8], ptr @_ZN9Stockfish10cuckooMoveE, i64 %i.aqf ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.aqi, align 2, !tbaa !131 ; 2 uses
  store i16 %.sroa.0.0.copyload.i81, ptr %i.aqi, align 2, !tbaa !131
  %i.aqj = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %i.aqj, label %._crit_edge, label %.lr.ph, !llvm.loop !194

._crit_edge:                                      ; preds = %.lr.ph, %bb.n, %.lr.ph85.new, %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  switch i8 %i.amy, label %bb.r [
    i8 1, label %._crit_edge.1
    i8 3, label %bb.q
    i8 4, label %bb.p
    i8 5, label %bb.o
  ]

bb.o:                                             ; preds = %._crit_edge
  %i.aqk = load ptr, ptr %i.anf, align 8, !tbaa !134
  %i.aql = load i64, ptr %i.aqk, align 8, !tbaa !56
  %i.aqm = load ptr, ptr %i.ang, align 8, !tbaa !134
  %i.aqn = load i64, ptr %i.aqm, align 8, !tbaa !56
  %i.aqo = or i64 %i.aqn, %i.aql
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.1

bb.p:                                             ; preds = %._crit_edge
  %i.aqp = load ptr, ptr %i.ang, align 8, !tbaa !134
  %i.aqq = load i64, ptr %i.aqp, align 8, !tbaa !56
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.1

bb.q:                                             ; preds = %._crit_edge
  %i.aqr = load ptr, ptr %i.anf, align 8, !tbaa !134
  %i.aqs = load i64, ptr %i.aqr, align 8, !tbaa !56
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.1

bb.r:                                             ; preds = %._crit_edge
  %i.aqt = load i64, ptr %i.anh, align 8, !tbaa !56
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.1

_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.1: ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.0.i.1 = phi i64 [ %i.aqt, %bb.r ], [ %i.aqs, %bb.q ], [ %i.aqq, %bb.p ], [ %i.aqo, %bb.o ]
  %i.aqu = shl nuw i64 2, %indvars.iv103
  %i.aqv = and i64 %.0.i.1, %i.aqu
  %.not25.1 = icmp eq i64 %i.aqv, 0
  br i1 %.not25.1, label %._crit_edge.1, label %bb.s

bb.s:                                             ; preds = %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.1
  %i.aqw = trunc nuw nsw i64 %indvars.iv.next104 to i16
  %i.aqx = add nuw nsw i16 %i.anj, %i.aqw
  %i.aqy = load i64, ptr %i.ank, align 8, !tbaa !56
  %i.aqz = getelementptr inbounds nuw [8 x i8], ptr %i.anc, i64 %indvars.iv.next104
  %i.ara = load i64, ptr %i.aqz, align 8, !tbaa !56
  %i.arb = xor i64 %i.aqy, %i.ara
  %i.arc = xor i64 %i.arb, %i.ajw                 ; 3 uses
  %i.ard = and i64 %i.arc, 8191                   ; 2 uses
  %i.are = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish6cuckooE, i64 %i.ard ; 2 uses
  %i.arf = load i64, ptr %i.are, align 8, !tbaa !56
  store i64 %i.arc, ptr %i.are, align 8, !tbaa !56
  %i.arg = getelementptr inbounds nuw [2 x i8], ptr @_ZN9Stockfish10cuckooMoveE, i64 %i.ard ; 2 uses
  %.sroa.0.0.copyload.i79.1 = load i16, ptr %i.arg, align 2, !tbaa !131 ; 2 uses
  store i16 %i.aqx, ptr %i.arg, align 2, !tbaa !131
  %i.arh = icmp eq i16 %.sroa.0.0.copyload.i79.1, 0
  br i1 %i.arh, label %._crit_edge.1, label %.lr.ph.preheader.1

.lr.ph.preheader.1:                               ; preds = %bb.s
  %i.ari = trunc i64 %i.arc to i32
  %i.arj = and i32 %i.ari, 8191
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.1, %.lr.ph.preheader.1
  %.sroa.0.0.copyload.i81.1 = phi i16 [ %.sroa.0.0.copyload.i.1, %.lr.ph.1 ], [ %.sroa.0.0.copyload.i79.1, %.lr.ph.preheader.1 ]
  %i.ark = phi i64 [ %i.art, %.lr.ph.1 ], [ %i.arf, %.lr.ph.preheader.1 ] ; 2 uses
  %.080.1 = phi i32 [ %i.arq, %.lr.ph.1 ], [ %i.arj, %.lr.ph.preheader.1 ]
  %i.arl = trunc i64 %i.ark to i32                ; 2 uses
  %i.arm = and i32 %i.arl, 8191                   ; 2 uses
  %i.arn = icmp eq i32 %.080.1, %i.arm
  %i.aro = lshr i32 %i.arl, 16
  %i.arp = and i32 %i.aro, 8191
  %i.arq = select i1 %i.arn, i32 %i.arp, i32 %i.arm ; 2 uses
  %i.arr = zext nneg i32 %i.arq to i64            ; 2 uses
  %i.ars = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish6cuckooE, i64 %i.arr ; 2 uses
  %i.art = load i64, ptr %i.ars, align 8, !tbaa !56
  store i64 %i.ark, ptr %i.ars, align 8, !tbaa !56
  %i.aru = getelementptr inbounds nuw [2 x i8], ptr @_ZN9Stockfish10cuckooMoveE, i64 %i.arr ; 2 uses
  %.sroa.0.0.copyload.i.1 = load i16, ptr %i.aru, align 2, !tbaa !131 ; 2 uses
  store i16 %.sroa.0.0.copyload.i81.1, ptr %i.aru, align 2, !tbaa !131
  %i.arv = icmp eq i16 %.sroa.0.0.copyload.i.1, 0
  br i1 %i.arv, label %._crit_edge.1, label %.lr.ph.1, !llvm.loop !194

._crit_edge.1:                                    ; preds = %.lr.ph.1, %bb.s, %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.1, %._crit_edge
  %indvars.iv.next104.1 = add nuw nsw i64 %indvars.iv103, 2 ; 2 uses
  %exitcond106.not.1 = icmp eq i64 %indvars.iv.next104.1, 64
  br i1 %exitcond106.not.1, label %.loopexit, label %.lr.ph85.new, !llvm.loop !195
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @islower(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @toupper(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN9Stockfish8Position18set_castling_rightENS_5ColorENS_6SquareE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1048) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #9 align 2 !guid !197 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = zext i8 %1 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load i64, ptr %i.e, align 8, !tbaa !56
  %i.g = and i64 %i.f, %i.d
  %i.h = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.g, i1 true) ; 4 uses
  %i.i = trunc nuw nsw i64 %i.h to i8
  %i.j = icmp ugt i8 %2, %i.i
  %i.k = select i1 %i.j, i8 5, i8 10
  %i.l = icmp eq i8 %1, 0
  %i.m = select i1 %i.l, i8 3, i8 12
  %i.n = and i8 %i.k, %i.m                        ; 2 uses
  %i.o = zext nneg i8 %i.n to i32                 ; 4 uses
end_hunk_0
