inline.NumInlined: 1164
inline.NumDeleted: 391
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN9Stockfish8Position4initEv:bb.a
  %i.akq = lshr i64 %i.akp, 27
  %i.akr = xor i64 %i.akq, %i.akp                 ; 3 uses
  %i.aks = mul i64 %i.akr, 2685821657736338717
  %i.akt = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 8
  store i64 %i.aks, ptr %i.aku, align 8, !tbaa !11
  %i.akv = lshr i64 %i.akr, 12
  %i.akw = xor i64 %i.akv, %i.akr                 ; 2 uses
  %i.akx = shl i64 %i.akw, 25
  %i.aky = xor i64 %i.akx, %i.akw                 ; 2 uses
  %i.akz = lshr i64 %i.aky, 27
  %i.ala = xor i64 %i.akz, %i.aky                 ; 3 uses
  %i.alb = mul i64 %i.ala, 2685821657736338717
  %i.alc = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 16
  store i64 %i.alb, ptr %i.ald, align 16, !tbaa !11
  %i.ale = lshr i64 %i.ala, 12
  %i.alf = xor i64 %i.ale, %i.ala                 ; 2 uses
  %i.alg = shl i64 %i.alf, 25
  %i.alh = xor i64 %i.alg, %i.alf                 ; 2 uses
  %i.ali = lshr i64 %i.alh, 27
  %i.alj = xor i64 %i.ali, %i.alh                 ; 3 uses
  %i.alk = mul i64 %i.alj, 2685821657736338717
  %i.all = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 24
  store i64 %i.alk, ptr %i.alm, align 8, !tbaa !11
  %i.aln = lshr i64 %i.alj, 12
  %i.alo = xor i64 %i.aln, %i.alj                 ; 2 uses
  %i.alp = shl i64 %i.alo, 25
  %i.alq = xor i64 %i.alp, %i.alo                 ; 2 uses
  %i.alr = lshr i64 %i.alq, 27
  %i.als = xor i64 %i.alr, %i.alq                 ; 3 uses
  %i.alt = mul i64 %i.als, 2685821657736338717
  %i.alu = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 32
  store i64 %i.alt, ptr %i.alv, align 16, !tbaa !11
  %i.alw = lshr i64 %i.als, 12
  %i.alx = xor i64 %i.alw, %i.als                 ; 2 uses
  %i.aly = shl i64 %i.alx, 25
  %i.alz = xor i64 %i.aly, %i.alx                 ; 2 uses
  %i.ama = lshr i64 %i.alz, 27
  %i.amb = xor i64 %i.ama, %i.alz                 ; 3 uses
  %i.amc = mul i64 %i.amb, 2685821657736338717
  %i.amd = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 40
  store i64 %i.amc, ptr %i.ame, align 8, !tbaa !11
  %i.amf = lshr i64 %i.amb, 12
  %i.amg = xor i64 %i.amf, %i.amb                 ; 2 uses
  %i.amh = shl i64 %i.amg, 25
  %i.ami = xor i64 %i.amh, %i.amg                 ; 2 uses
  %i.amj = lshr i64 %i.ami, 27
  %i.amk = xor i64 %i.amj, %i.ami                 ; 3 uses
  %i.aml = mul i64 %i.amk, 2685821657736338717
  %i.amm = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 48
  store i64 %i.aml, ptr %i.amn, align 16, !tbaa !11
  %i.amo = lshr i64 %i.amk, 12
  %i.amp = xor i64 %i.amo, %i.amk                 ; 2 uses
  %i.amq = shl i64 %i.amp, 25
  %i.amr = xor i64 %i.amq, %i.amp                 ; 2 uses
  %i.ams = lshr i64 %i.amr, 27
  %i.amt = xor i64 %i.ams, %i.amr                 ; 2 uses
  %i.amu = mul i64 %i.amt, 2685821657736338717
  %i.amv = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amv, i64 56
  store i64 %i.amu, ptr %i.amw, align 8, !tbaa !11
  %indvars.iv.next.7171 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7171, 64
  br i1 %exitcond.not.7, label %.preheader130, label %bb.b, !llvm.loop !125

bb.c:                                             ; preds = %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit
  ret void

_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit.preheader: ; preds = %.preheader70, %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit
  %.020.idx89 = phi i64 [ %.020.add, %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit ], [ 0, %.preheader70 ] ; 2 uses
  %.020.ptr = getelementptr inbounds nuw i8, ptr @_ZN9Stockfish12_GLOBAL__N_16PiecesE, i64 %.020.idx89
  %i.amx = load i8, ptr %.020.ptr, align 1, !tbaa !27 ; 2 uses
  %i.amy = and i8 %i.amx, 7                       ; 4 uses
  %i.amz = zext nneg i8 %i.amy to i64
  %i.ana = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish13PseudoAttacksE, i64 %i.amz
  %i.anb = zext i8 %i.amx to i64
  %i.anc = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish7Zobrist3psqE, i64 %i.anb ; 4 uses
  br label %bb.d

.loopexit:                                        ; preds = %.prol.loopexit, %._crit_edge.1, %bb.d
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  %exitcond110.not = icmp eq i64 %indvars.iv.next108, 64
  br i1 %exitcond110.not, label %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit, label %bb.d, !llvm.loop !128

_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit: ; preds = %.loopexit
  %.020.add = add nuw nsw i64 %.020.idx89, 1      ; 2 uses
  %.not23 = icmp eq i64 %.020.add, 12
  br i1 %.not23, label %bb.c, label %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit.preheader

bb.d:                                             ; preds = %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit.preheader, %.loopexit
  %indvars.iv107 = phi i64 [ 0, %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit.preheader ], [ %indvars.iv.next108, %.loopexit ] ; 8 uses
  %indvars.iv101 = phi i64 [ 1, %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit.preheader ], [ %indvars.iv.next102, %.loopexit ] ; 6 uses
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %i.and = icmp samesign ult i64 %indvars.iv107, 63
  br i1 %i.and, label %.lr.ph85, label %.loopexit

.lr.ph85:                                         ; preds = %bb.d
  %i.ane = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %indvars.iv107 ; 2 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 8 ; 6 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %i.ane, i64 24 ; 6 uses
  %i.anh = getelementptr inbounds nuw [8 x i8], ptr %i.ana, i64 %indvars.iv107 ; 3 uses
  %i.ani = trunc nuw nsw i64 %indvars.iv107 to i16
  %i.anj = shl nuw nsw i16 %i.ani, 6              ; 3 uses
  %i.ank = getelementptr inbounds nuw [8 x i8], ptr %i.anc, i64 %indvars.iv107 ; 3 uses
  %i.anl = and i64 %indvars.iv107, 1
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
  %i.anm = load ptr, ptr %i.anf, align 8, !tbaa !129
  %i.ann = load i64, ptr %i.anm, align 8, !tbaa !11
  %i.ano = load ptr, ptr %i.ang, align 8, !tbaa !129
  %i.anp = load i64, ptr %i.ano, align 8, !tbaa !11
  %i.anq = or i64 %i.anp, %i.ann
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.prol

bb.f:                                             ; preds = %.prol.preheader
  %i.anr = load ptr, ptr %i.ang, align 8, !tbaa !129
  %i.ans = load i64, ptr %i.anr, align 8, !tbaa !11
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.prol

bb.g:                                             ; preds = %.prol.preheader
  %i.ant = load ptr, ptr %i.anf, align 8, !tbaa !129
  %i.anu = load i64, ptr %i.ant, align 8, !tbaa !11
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.prol

bb.h:                                             ; preds = %.prol.preheader
  %i.anv = load i64, ptr %i.anh, align 8, !tbaa !11
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.prol

_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.prol: ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.0.i.prol = phi i64 [ %i.anv, %bb.h ], [ %i.anu, %bb.g ], [ %i.ans, %bb.f ], [ %i.anq, %bb.e ]
  %i.anw = shl nuw i64 1, %indvars.iv101
  %i.anx = and i64 %.0.i.prol, %i.anw
  %.not25.prol = icmp eq i64 %i.anx, 0
  br i1 %.not25.prol, label %._crit_edge.prol, label %bb.i

bb.i:                                             ; preds = %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.prol
  %i.any = trunc nuw nsw i64 %indvars.iv101 to i16
  %i.anz = add nuw nsw i16 %i.anj, %i.any
  %i.aoa = load i64, ptr %i.ank, align 8, !tbaa !11
  %i.aob = getelementptr inbounds nuw [8 x i8], ptr %i.anc, i64 %indvars.iv101
  %i.aoc = load i64, ptr %i.aob, align 8, !tbaa !11
  %i.aod = xor i64 %i.aoa, %i.aoc
  %i.aoe = xor i64 %i.aod, %i.ajw                 ; 3 uses
  %i.aof = and i64 %i.aoe, 8191                   ; 2 uses
  %i.aog = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish6cuckooE, i64 %i.aof ; 2 uses
  %i.aoh = load i64, ptr %i.aog, align 8, !tbaa !11
  store i64 %i.aoe, ptr %i.aog, align 8, !tbaa !11
  %i.aoi = getelementptr inbounds nuw [2 x i8], ptr @_ZN9Stockfish10cuckooMoveE, i64 %i.aof ; 2 uses
  %.sroa.0.0.copyload.i79.prol = load i16, ptr %i.aoi, align 2, !tbaa !126 ; 2 uses
  store i16 %i.anz, ptr %i.aoi, align 2, !tbaa !126
  %i.aoj = icmp eq i16 %.sroa.0.0.copyload.i79.prol, 0
  br i1 %i.aoj, label %._crit_edge.prol, label %.lr.ph.preheader.prol

.lr.ph.preheader.prol:                            ; preds = %bb.i
  %i.aok = trunc i64 %i.aoe to i32
  %i.aol = and i32 %i.aok, 8191
  br label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.prol, %.lr.ph.preheader.prol
  %.sroa.0.0.copyload.i81.prol = phi i16 [ %.sroa.0.0.copyload.i.prol, %.lr.ph.prol ], [ %.sroa.0.0.copyload.i79.prol, %.lr.ph.preheader.prol ]
  %i.aom = phi i64 [ %i.aov, %.lr.ph.prol ], [ %i.aoh, %.lr.ph.preheader.prol ] ; 2 uses
  %.080.prol = phi i32 [ %i.aos, %.lr.ph.prol ], [ %i.aol, %.lr.ph.preheader.prol ]
  %i.aon = trunc i64 %i.aom to i32                ; 2 uses
  %i.aoo = and i32 %i.aon, 8191                   ; 2 uses
  %i.aop = icmp eq i32 %.080.prol, %i.aoo
  %i.aoq = lshr i32 %i.aon, 16
  %i.aor = and i32 %i.aoq, 8191
  %i.aos = select i1 %i.aop, i32 %i.aor, i32 %i.aoo ; 2 uses
  %i.aot = zext nneg i32 %i.aos to i64            ; 2 uses
  %i.aou = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish6cuckooE, i64 %i.aot ; 2 uses
  %i.aov = load i64, ptr %i.aou, align 8, !tbaa !11
  store i64 %i.aom, ptr %i.aou, align 8, !tbaa !11
  %i.aow = getelementptr inbounds nuw [2 x i8], ptr @_ZN9Stockfish10cuckooMoveE, i64 %i.aot ; 2 uses
  %.sroa.0.0.copyload.i.prol = load i16, ptr %i.aow, align 2, !tbaa !126 ; 2 uses
  store i16 %.sroa.0.0.copyload.i81.prol, ptr %i.aow, align 2, !tbaa !126
  %i.aox = icmp eq i16 %.sroa.0.0.copyload.i.prol, 0
  br i1 %i.aox, label %._crit_edge.prol, label %.lr.ph.prol, !llvm.loop !132

._crit_edge.prol:                                 ; preds = %.lr.ph.prol, %bb.i, %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.prol, %.prol.preheader
  %indvars.iv.next104.prol = add nuw nsw i64 %indvars.iv101, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %._crit_edge.prol, %.lr.ph85
  %indvars.iv103.unr = phi i64 [ %indvars.iv101, %.lr.ph85 ], [ %indvars.iv.next104.prol, %._crit_edge.prol ]
  %i.aoy = icmp eq i64 %indvars.iv107, 62
  br i1 %i.aoy, label %.loopexit, label %.lr.ph85.new

.lr.ph85.new:                                     ; preds = %.prol.loopexit
  %invariant.op = add i16 1, %i.anj
  br label %.lr.ph85.new.a

.lr.ph85.new.a:                                   ; preds = %._crit_edge.1, %.lr.ph85.new
  %indvars.iv103 = phi i64 [ %indvars.iv103.unr, %.lr.ph85.new ], [ %indvars.iv.next104.1, %._crit_edge.1 ] ; 7 uses
  switch i8 %i.amy, label %bb.m [
    i8 5, label %bb.l
    i8 3, label %bb.j
    i8 4, label %bb.k
    i8 1, label %._crit_edge.1
  ]

bb.j:                                             ; preds = %.lr.ph85.new.a
  %i.aoz = load ptr, ptr %i.anf, align 8, !tbaa !129
  %i.apa = load i64, ptr %i.aoz, align 8, !tbaa !11
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit

bb.k:                                             ; preds = %.lr.ph85.new.a
  %i.apb = load ptr, ptr %i.ang, align 8, !tbaa !129
  %i.apc = load i64, ptr %i.apb, align 8, !tbaa !11
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit

bb.l:                                             ; preds = %.lr.ph85.new.a
  %i.apd = load ptr, ptr %i.anf, align 8, !tbaa !129
  %i.ape = load i64, ptr %i.apd, align 8, !tbaa !11
  %i.apf = load ptr, ptr %i.ang, align 8, !tbaa !129
  %i.apg = load i64, ptr %i.apf, align 8, !tbaa !11
  %i.aph = or i64 %i.apg, %i.ape
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit

bb.m:                                             ; preds = %.lr.ph85.new.a
  %i.api = load i64, ptr %i.anh, align 8, !tbaa !11
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit

_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit: ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %.0.i = phi i64 [ %i.api, %bb.m ], [ %i.apa, %bb.j ], [ %i.apc, %bb.k ], [ %i.aph, %bb.l ]
  %i.apj = shl nuw i64 1, %indvars.iv103
  %i.apk = and i64 %.0.i, %i.apj
  %.not25 = icmp eq i64 %i.apk, 0
  br i1 %.not25, label %._crit_edge, label %bb.n

bb.n:                                             ; preds = %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit
  %i.apl = trunc nuw nsw i64 %indvars.iv103 to i16
  %i.apm = add nuw nsw i16 %i.anj, %i.apl
  %i.apn = load i64, ptr %i.ank, align 8, !tbaa !11
  %i.apo = getelementptr inbounds nuw [8 x i8], ptr %i.anc, i64 %indvars.iv103
  %i.app = load i64, ptr %i.apo, align 8, !tbaa !11
  %i.apq = xor i64 %i.apn, %i.app
  %i.apr = xor i64 %i.apq, %i.ajw                 ; 3 uses
  %i.aps = and i64 %i.apr, 8191                   ; 2 uses
  %i.apt = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish6cuckooE, i64 %i.aps ; 2 uses
  %i.apu = load i64, ptr %i.apt, align 8, !tbaa !11
  store i64 %i.apr, ptr %i.apt, align 8, !tbaa !11
  %i.apv = getelementptr inbounds nuw [2 x i8], ptr @_ZN9Stockfish10cuckooMoveE, i64 %i.aps ; 2 uses
  %.sroa.0.0.copyload.i79 = load i16, ptr %i.apv, align 2, !tbaa !126 ; 2 uses
  store i16 %i.apm, ptr %i.apv, align 2, !tbaa !126
  %i.apw = icmp eq i16 %.sroa.0.0.copyload.i79, 0
  br i1 %i.apw, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.apx = trunc i64 %i.apr to i32
  %i.apy = and i32 %i.apx, 8191
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.0.copyload.i81 = phi i16 [ %.sroa.0.0.copyload.i, %.lr.ph ], [ %.sroa.0.0.copyload.i79, %.lr.ph.preheader ]
  %i.apz = phi i64 [ %i.aqi, %.lr.ph ], [ %i.apu, %.lr.ph.preheader ] ; 2 uses
  %.080 = phi i32 [ %i.aqf, %.lr.ph ], [ %i.apy, %.lr.ph.preheader ]
  %i.aqa = trunc i64 %i.apz to i32                ; 2 uses
  %i.aqb = and i32 %i.aqa, 8191                   ; 2 uses
  %i.aqc = icmp eq i32 %.080, %i.aqb
  %i.aqd = lshr i32 %i.aqa, 16
  %i.aqe = and i32 %i.aqd, 8191
  %i.aqf = select i1 %i.aqc, i32 %i.aqe, i32 %i.aqb ; 2 uses
  %i.aqg = zext nneg i32 %i.aqf to i64            ; 2 uses
  %i.aqh = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish6cuckooE, i64 %i.aqg ; 2 uses
  %i.aqi = load i64, ptr %i.aqh, align 8, !tbaa !11
  store i64 %i.apz, ptr %i.aqh, align 8, !tbaa !11
  %i.aqj = getelementptr inbounds nuw [2 x i8], ptr @_ZN9Stockfish10cuckooMoveE, i64 %i.aqg ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.aqj, align 2, !tbaa !126 ; 2 uses
  store i16 %.sroa.0.0.copyload.i81, ptr %i.aqj, align 2, !tbaa !126
  %i.aqk = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %i.aqk, label %._crit_edge, label %.lr.ph, !llvm.loop !132

._crit_edge:                                      ; preds = %.lr.ph, %bb.n, %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit
  switch i8 %i.amy, label %bb.r [
    i8 1, label %._crit_edge.1
    i8 3, label %bb.q
    i8 4, label %bb.p
    i8 5, label %bb.o
  ]

bb.o:                                             ; preds = %._crit_edge
  %i.aql = load ptr, ptr %i.anf, align 8, !tbaa !129
  %i.aqm = load i64, ptr %i.aql, align 8, !tbaa !11
  %i.aqn = load ptr, ptr %i.ang, align 8, !tbaa !129
  %i.aqo = load i64, ptr %i.aqn, align 8, !tbaa !11
  %i.aqp = or i64 %i.aqo, %i.aqm
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.1

bb.p:                                             ; preds = %._crit_edge
  %i.aqq = load ptr, ptr %i.ang, align 8, !tbaa !129
  %i.aqr = load i64, ptr %i.aqq, align 8, !tbaa !11
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.1

bb.q:                                             ; preds = %._crit_edge
  %i.aqs = load ptr, ptr %i.anf, align 8, !tbaa !129
  %i.aqt = load i64, ptr %i.aqs, align 8, !tbaa !11
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.1

bb.r:                                             ; preds = %._crit_edge
  %i.aqu = load i64, ptr %i.anh, align 8, !tbaa !11
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.1

_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.1: ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.0.i.1 = phi i64 [ %i.aqu, %bb.r ], [ %i.aqt, %bb.q ], [ %i.aqr, %bb.p ], [ %i.aqp, %bb.o ]
  %i.aqv = shl nuw i64 2, %indvars.iv103
  %i.aqw = and i64 %.0.i.1, %i.aqv
  %.not25.1 = icmp eq i64 %i.aqw, 0
  br i1 %.not25.1, label %._crit_edge.1, label %bb.s

bb.s:                                             ; preds = %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.1
  %i.aqx = trunc i64 %indvars.iv103 to i16
  %i.aqy = add i16 %i.aqx, %invariant.op
  %i.aqz = load i64, ptr %i.ank, align 8, !tbaa !11
  %i.ara = getelementptr inbounds nuw [8 x i8], ptr %i.anc, i64 %indvars.iv103
  %0 = getelementptr inbounds nuw i8, ptr %i.ara, i64 8
  %i.arb = load i64, ptr %0, align 8, !tbaa !11
  %i.arc = xor i64 %i.aqz, %i.arb
  %i.ard = xor i64 %i.arc, %i.ajw                 ; 3 uses
  %i.are = and i64 %i.ard, 8191                   ; 2 uses
  %i.arf = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish6cuckooE, i64 %i.are ; 2 uses
  %i.arg = load i64, ptr %i.arf, align 8, !tbaa !11
  store i64 %i.ard, ptr %i.arf, align 8, !tbaa !11
  %i.arh = getelementptr inbounds nuw [2 x i8], ptr @_ZN9Stockfish10cuckooMoveE, i64 %i.are ; 2 uses
  %.sroa.0.0.copyload.i79.1 = load i16, ptr %i.arh, align 2, !tbaa !126 ; 2 uses
  store i16 %i.aqy, ptr %i.arh, align 2, !tbaa !126
  %i.ari = icmp eq i16 %.sroa.0.0.copyload.i79.1, 0
  br i1 %i.ari, label %._crit_edge.1, label %.lr.ph.preheader.1

.lr.ph.preheader.1:                               ; preds = %bb.s
  %i.arj = trunc i64 %i.ard to i32
  %i.ark = and i32 %i.arj, 8191
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.1, %.lr.ph.preheader.1
  %.sroa.0.0.copyload.i81.1 = phi i16 [ %.sroa.0.0.copyload.i.1, %.lr.ph.1 ], [ %.sroa.0.0.copyload.i79.1, %.lr.ph.preheader.1 ]
  %i.arl = phi i64 [ %i.aru, %.lr.ph.1 ], [ %i.arg, %.lr.ph.preheader.1 ] ; 2 uses
  %.080.1 = phi i32 [ %i.arr, %.lr.ph.1 ], [ %i.ark, %.lr.ph.preheader.1 ]
  %i.arm = trunc i64 %i.arl to i32                ; 2 uses
  %i.arn = and i32 %i.arm, 8191                   ; 2 uses
  %i.aro = icmp eq i32 %.080.1, %i.arn
  %i.arp = lshr i32 %i.arm, 16
  %i.arq = and i32 %i.arp, 8191
  %i.arr = select i1 %i.aro, i32 %i.arq, i32 %i.arn ; 2 uses
  %i.ars = zext nneg i32 %i.arr to i64            ; 2 uses
  %i.art = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish6cuckooE, i64 %i.ars ; 2 uses
  %i.aru = load i64, ptr %i.art, align 8, !tbaa !11
  store i64 %i.arl, ptr %i.art, align 8, !tbaa !11
  %i.arv = getelementptr inbounds nuw [2 x i8], ptr @_ZN9Stockfish10cuckooMoveE, i64 %i.ars ; 2 uses
  %.sroa.0.0.copyload.i.1 = load i16, ptr %i.arv, align 2, !tbaa !126 ; 2 uses
  store i16 %.sroa.0.0.copyload.i81.1, ptr %i.arv, align 2, !tbaa !126
  %i.arw = icmp eq i16 %.sroa.0.0.copyload.i.1, 0
  br i1 %i.arw, label %._crit_edge.1, label %.lr.ph.1, !llvm.loop !132

._crit_edge.1:                                    ; preds = %.lr.ph.1, %.lr.ph85.new.a, %bb.s, %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.1, %._crit_edge
  %indvars.iv.next104.1 = add nuw nsw i64 %indvars.iv103, 2 ; 2 uses
  %exitcond106.not.1 = icmp eq i64 %indvars.iv.next104.1, 64
  br i1 %exitcond106.not.1, label %.loopexit, label %.lr.ph85.new.a, !llvm.loop !133
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
define dso_local void @_ZN9Stockfish8Position18set_castling_rightENS_5ColorENS_6SquareE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1048) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = zext i8 %1 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11
  %i.g = and i64 %i.f, %i.d
  %i.h = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.g, i1 true) ; 4 uses
  %i.i = trunc nuw nsw i64 %i.h to i8
  %i.j = icmp ugt i8 %2, %i.i
  %i.k = select i1 %i.j, i8 5, i8 10
  %i.l = icmp eq i8 %1, 0
  %i.m = select i1 %i.l, i8 3, i8 12
  %i.n = and i8 %i.k, %i.m                        ; 2 uses
  %i.o = zext nneg i8 %i.n to i32                 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !68
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !85
  %i.t = or i32 %i.s, %i.o
  store i32 %i.t, ptr %i.r, align 8, !tbaa !85
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.h ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !83
  %i.x = or i32 %i.w, %i.o
  store i32 %i.x, ptr %i.v, align 4, !tbaa !83
  %i.y = zext i8 %2 to i64                        ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !83
  %i.ab = or i32 %i.aa, %i.o
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !83
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ad = zext nneg i8 %i.n to i64                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  store i8 %2, ptr %i.ae, align 1, !tbaa !100
  %i.af = and i32 %i.o, 5
  %.not = icmp eq i32 %i.af, 0                    ; 2 uses
  %i.ag = select i1 %.not, i8 2, i8 6
  %i.ah = mul i8 %1, 56                           ; 2 uses
  %i.ai = or disjoint i8 %i.ag, %i.ah
  %i.aj = select i1 %.not, i8 3, i8 5
  %i.ak = or disjoint i8 %i.aj, %i.ah
  %i.al = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish9BetweenBBE, i64 %i.y
  %i.am = zext i8 %i.ak to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !11
  %i.ap = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish9BetweenBBE, i64 %i.h
  %i.aq = zext i8 %i.ai to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 16, !tbaa !11
  %i.at = or i64 %i.as, %i.ao
  %i.au = shl nuw i64 1, %i.h
  %i.av = shl nuw i64 1, %i.y
  %i.aw = or i64 %i.au, %i.av
  %i.ax = xor i64 %i.aw, -1
  %i.ay = and i64 %i.at, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ad
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !11
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK9Stockfish8Position9set_stateEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 0, ptr %i.c, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = load i64, ptr @_ZN9Stockfish7Zobrist7noPawnsE, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !134
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 0, ptr %i.g, align 4, !tbaa !83
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 0, ptr %i.h, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 620 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4, !tbaa !98    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.l = zext i8 %i.j to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load i64, ptr %i.o, align 8, !tbaa !11   ; 2 uses
  %i.q = and i64 %i.p, %i.n
  %i.r = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.q, i1 true) ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !11   ; 2 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.r ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !129
  %i.y = load i64, ptr %i.v, align 16, !tbaa !135
  %i.z = tail call noundef i64 @llvm.pext.i64(i64 %i.t, i64 %i.y)
  %i.aa = and i64 %i.z, 4294967295
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !11
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !11 ; 2 uses
  %i.ah = or i64 %i.ag, %i.ae
  %i.ai = and i64 %i.ah, %i.ac
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !129
  %i.al = load i64, ptr %i.u, align 16, !tbaa !135
  %i.am = tail call noundef i64 @llvm.pext.i64(i64 %i.t, i64 %i.al)
  %i.an = and i64 %i.am, 4294967295
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !11
  %i.as = or i64 %i.ar, %i.ag
  %i.at = and i64 %i.as, %i.ap
  %i.au = or i64 %i.at, %i.ai
  %i.av = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 512), i64 %i.r
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !11
  %i.ax = load i64, ptr %i.k, align 8, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !11
  %i.ba = and i64 %i.ax, %i.aw
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish13PseudoAttacksE, i64 %i.r
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !11
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !11
  %i.bf = and i64 %i.be, %i.bc
  %i.bg = or i64 %i.bf, %i.ba
  %i.bh = and i64 %i.bg, %i.az
  %i.bi = or i64 %i.au, %i.bh
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 1024), i64 %i.r
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !11
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !11
  %i.bn = and i64 %i.bm, %i.bk
  %i.bo = or i64 %i.bi, %i.bn
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 3072), i64 %i.r
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !11
  %i.br = and i64 %i.bq, %i.p
  %i.bs = or i64 %i.bo, %i.br
  %i.bt = xor i8 %i.j, 1
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !11
  %i.bx = and i64 %i.bs, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !82
  tail call void @_ZNK9Stockfish8Position14set_check_infoEv(ptr noundef nonnull align 8 dereferenceable(1048) %0)
  %i.bz = load i64, ptr %i.s, align 8, !tbaa !11  ; 2 uses
  %.not18 = icmp eq i64 %i.bz, 0
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !68  ; 12 uses
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre, i64 64 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %i.cd = getelementptr inbounds nuw i8, ptr %.pre, i64 16 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %.pre, i64 60
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !101 ; 2 uses
  %.not15 = icmp eq i8 %i.cg, 64
  br i1 %.not15, label %bb.i, label %bb.h

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.019 = phi i64 [ %i.bz, %.lr.ph ], [ %i.cj, %bb.g ] ; 3 uses
  %i.ch = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.019, i1 true) ; 2 uses
  %i.ci = add i64 %.019, -1
  %i.cj = and i64 %i.ci, %.019                    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %i.ch
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !27  ; 3 uses
  %i.cm = zext i8 %i.cl to i64                    ; 2 uses
  %i.cn = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish7Zobrist3psqE, i64 %i.cm
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.ch ; 3 uses
end_hunk_0
