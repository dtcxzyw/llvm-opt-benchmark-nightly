Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/position?download=true
inline.NumInlined: 1164
inline.NumDeleted: 391
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN9Stockfish8Position4initEv:bb.a
  %i.aka = xor i64 %i.ajz, %i.ajy                 ; 2 uses
  %i.akb = lshr i64 %i.aka, 27
  %i.akc = xor i64 %i.akb, %i.aka
  %i.akd = mul i64 %i.akc, 2685821657736338717
  store i64 %i.akd, ptr @_ZN9Stockfish7Zobrist7noPawnsE, align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65536) @_ZN9Stockfish6cuckooE, i8 0, i64 65536, i1 false), !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16384) @_ZN9Stockfish10cuckooMoveE, i8 0, i64 16384, i1 false), !tbaa !88
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
  store i64 %i.akk, ptr %i.akl, align 16, !tbaa !13
  %i.akm = lshr i64 %i.akj, 12
  %i.akn = xor i64 %i.akm, %i.akj                 ; 2 uses
  %i.ako = shl i64 %i.akn, 25
  %i.akp = xor i64 %i.ako, %i.akn                 ; 2 uses
  %i.akq = lshr i64 %i.akp, 27
  %i.akr = xor i64 %i.akq, %i.akp                 ; 3 uses
  %i.aks = mul i64 %i.akr, 2685821657736338717
  %i.akt = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 8
  store i64 %i.aks, ptr %i.aku, align 8, !tbaa !13
  %i.akv = lshr i64 %i.akr, 12
  %i.akw = xor i64 %i.akv, %i.akr                 ; 2 uses
  %i.akx = shl i64 %i.akw, 25
  %i.aky = xor i64 %i.akx, %i.akw                 ; 2 uses
  %i.akz = lshr i64 %i.aky, 27
  %i.ala = xor i64 %i.akz, %i.aky                 ; 3 uses
  %i.alb = mul i64 %i.ala, 2685821657736338717
  %i.alc = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 16
  store i64 %i.alb, ptr %i.ald, align 16, !tbaa !13
  %i.ale = lshr i64 %i.ala, 12
  %i.alf = xor i64 %i.ale, %i.ala                 ; 2 uses
  %i.alg = shl i64 %i.alf, 25
  %i.alh = xor i64 %i.alg, %i.alf                 ; 2 uses
  %i.ali = lshr i64 %i.alh, 27
  %i.alj = xor i64 %i.ali, %i.alh                 ; 3 uses
  %i.alk = mul i64 %i.alj, 2685821657736338717
  %i.all = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 24
  store i64 %i.alk, ptr %i.alm, align 8, !tbaa !13
  %i.aln = lshr i64 %i.alj, 12
  %i.alo = xor i64 %i.aln, %i.alj                 ; 2 uses
  %i.alp = shl i64 %i.alo, 25
  %i.alq = xor i64 %i.alp, %i.alo                 ; 2 uses
  %i.alr = lshr i64 %i.alq, 27
  %i.als = xor i64 %i.alr, %i.alq                 ; 3 uses
  %i.alt = mul i64 %i.als, 2685821657736338717
  %i.alu = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 32
  store i64 %i.alt, ptr %i.alv, align 16, !tbaa !13
  %i.alw = lshr i64 %i.als, 12
  %i.alx = xor i64 %i.alw, %i.als                 ; 2 uses
  %i.aly = shl i64 %i.alx, 25
  %i.alz = xor i64 %i.aly, %i.alx                 ; 2 uses
  %i.ama = lshr i64 %i.alz, 27
  %i.amb = xor i64 %i.ama, %i.alz                 ; 3 uses
  %i.amc = mul i64 %i.amb, 2685821657736338717
  %i.amd = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 40
  store i64 %i.amc, ptr %i.ame, align 8, !tbaa !13
  %i.amf = lshr i64 %i.amb, 12
  %i.amg = xor i64 %i.amf, %i.amb                 ; 2 uses
  %i.amh = shl i64 %i.amg, 25
  %i.ami = xor i64 %i.amh, %i.amg                 ; 2 uses
  %i.amj = lshr i64 %i.ami, 27
  %i.amk = xor i64 %i.amj, %i.ami                 ; 3 uses
  %i.aml = mul i64 %i.amk, 2685821657736338717
  %i.amm = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 48
  store i64 %i.aml, ptr %i.amn, align 16, !tbaa !13
  %i.amo = lshr i64 %i.amk, 12
  %i.amp = xor i64 %i.amo, %i.amk                 ; 2 uses
  %i.amq = shl i64 %i.amp, 25
  %i.amr = xor i64 %i.amq, %i.amp                 ; 2 uses
  %i.ams = lshr i64 %i.amr, 27
  %i.amt = xor i64 %i.ams, %i.amr                 ; 2 uses
  %i.amu = mul i64 %i.amt, 2685821657736338717
  %i.amv = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amv, i64 56
  store i64 %i.amu, ptr %i.amw, align 8, !tbaa !13
  %indvars.iv.next.7171 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7171, 64
  br i1 %exitcond.not.7, label %.preheader130, label %bb.b, !llvm.loop !143

bb.c:                                             ; preds = %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit
  ret void

_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit.preheader: ; preds = %.preheader70, %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit
  %.019.idx89 = phi i64 [ %.019.add, %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit ], [ 0, %.preheader70 ] ; 2 uses
  %.019.ptr = getelementptr inbounds nuw i8, ptr @_ZN9Stockfish12_GLOBAL__N_16PiecesE, i64 %.019.idx89
  %i.amx = load i8, ptr %.019.ptr, align 1, !tbaa !22 ; 2 uses
  %i.amy = and i8 %i.amx, 7                       ; 4 uses
  %i.amz = zext nneg i8 %i.amy to i64
  %i.ana = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish13PseudoAttacksE, i64 %i.amz
  %i.anb = zext i8 %i.amx to i64
  %i.anc = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish7Zobrist3psqE, i64 %i.anb ; 4 uses
  br label %bb.d

.loopexit:                                        ; preds = %.prol.loopexit, %._crit_edge.1, %bb.d
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  %exitcond110.not = icmp eq i64 %indvars.iv.next108, 64
  br i1 %exitcond110.not, label %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit, label %bb.d, !llvm.loop !144

_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit: ; preds = %.loopexit
  %.019.add = add nuw nsw i64 %.019.idx89, 1      ; 2 uses
  %.not23 = icmp eq i64 %.019.add, 12
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
  %i.anm = load ptr, ptr %i.anf, align 8, !tbaa !91
  %i.ann = load i64, ptr %i.anm, align 8, !tbaa !13
  %i.ano = load ptr, ptr %i.ang, align 8, !tbaa !91
  %i.anp = load i64, ptr %i.ano, align 8, !tbaa !13
  %i.anq = or i64 %i.anp, %i.ann
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.prol

bb.f:                                             ; preds = %.prol.preheader
  %i.anr = load ptr, ptr %i.ang, align 8, !tbaa !91
  %i.ans = load i64, ptr %i.anr, align 8, !tbaa !13
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.prol

bb.g:                                             ; preds = %.prol.preheader
  %i.ant = load ptr, ptr %i.anf, align 8, !tbaa !91
  %i.anu = load i64, ptr %i.ant, align 8, !tbaa !13
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.prol

bb.h:                                             ; preds = %.prol.preheader
  %i.anv = load i64, ptr %i.anh, align 8, !tbaa !13
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
  %i.aoa = load i64, ptr %i.ank, align 8, !tbaa !13
  %i.aob = getelementptr inbounds nuw [8 x i8], ptr %i.anc, i64 %indvars.iv101
  %i.aoc = load i64, ptr %i.aob, align 8, !tbaa !13
  %i.aod = xor i64 %i.aoa, %i.aoc
  %i.aoe = xor i64 %i.aod, %i.ajw                 ; 3 uses
  %i.aof = and i64 %i.aoe, 8191                   ; 2 uses
  %i.aog = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish6cuckooE, i64 %i.aof ; 2 uses
  %i.aoh = load i64, ptr %i.aog, align 8, !tbaa !13
  store i64 %i.aoe, ptr %i.aog, align 8, !tbaa !13
  %i.aoi = getelementptr inbounds nuw [2 x i8], ptr @_ZN9Stockfish10cuckooMoveE, i64 %i.aof ; 2 uses
  %.sroa.0.0.copyload.i79.prol = load i16, ptr %i.aoi, align 2, !tbaa !88 ; 2 uses
  store i16 %i.anz, ptr %i.aoi, align 2, !tbaa !88
  %i.aoj = icmp eq i16 %.sroa.0.0.copyload.i79.prol, 0
  br i1 %i.aoj, label %._crit_edge.prol, label %.lr.ph.preheader.prol

.lr.ph.preheader.prol:                            ; preds = %bb.i
  %i.aok = trunc i64 %i.aoe to i32
  %i.aol = and i32 %i.aok, 8191
  br label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.prol, %.lr.ph.preheader.prol
  %.sroa.0.0.copyload.i81.prol = phi i16 [ %.sroa.0.0.copyload.i.prol, %.lr.ph.prol ], [ %.sroa.0.0.copyload.i79.prol, %.lr.ph.preheader.prol ]
  %i.aom = phi i64 [ %i.aou, %.lr.ph.prol ], [ %i.aoh, %.lr.ph.preheader.prol ] ; 2 uses
  %.080.prol = phi i32 [ %i.aor, %.lr.ph.prol ], [ %i.aol, %.lr.ph.preheader.prol ]
  %i.aon = trunc i64 %i.aom to i32                ; 2 uses
  %i.aoo = and i32 %i.aon, 8191                   ; 2 uses
  %i.aop = icmp eq i32 %.080.prol, %i.aoo
  %0 = lshr i32 %i.aon, 16
  %i.aoq = and i32 %0, 8191
  %i.aor = select i1 %i.aop, i32 %i.aoq, i32 %i.aoo ; 2 uses
  %i.aos = zext nneg i32 %i.aor to i64            ; 2 uses
  %i.aot = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish6cuckooE, i64 %i.aos ; 2 uses
  %i.aou = load i64, ptr %i.aot, align 8, !tbaa !13
  store i64 %i.aom, ptr %i.aot, align 8, !tbaa !13
  %i.aov = getelementptr inbounds nuw [2 x i8], ptr @_ZN9Stockfish10cuckooMoveE, i64 %i.aos ; 2 uses
  %.sroa.0.0.copyload.i.prol = load i16, ptr %i.aov, align 2, !tbaa !88 ; 2 uses
  store i16 %.sroa.0.0.copyload.i81.prol, ptr %i.aov, align 2, !tbaa !88
  %i.aow = icmp eq i16 %.sroa.0.0.copyload.i.prol, 0
  br i1 %i.aow, label %._crit_edge.prol, label %.lr.ph.prol, !llvm.loop !145

._crit_edge.prol:                                 ; preds = %.lr.ph.prol, %bb.i, %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.prol, %.prol.preheader
  %indvars.iv.next104.prol = add nuw nsw i64 %indvars.iv101, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %._crit_edge.prol, %.lr.ph85
  %indvars.iv103.unr = phi i64 [ %indvars.iv101, %.lr.ph85 ], [ %indvars.iv.next104.prol, %._crit_edge.prol ]
  %i.aox = icmp eq i64 %indvars.iv107, 62
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
  %i.aoy = load ptr, ptr %i.anf, align 8, !tbaa !91
  %i.aoz = load i64, ptr %i.aoy, align 8, !tbaa !13
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit

bb.k:                                             ; preds = %.lr.ph85.new
  %i.apa = load ptr, ptr %i.ang, align 8, !tbaa !91
  %i.apb = load i64, ptr %i.apa, align 8, !tbaa !13
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit

bb.l:                                             ; preds = %.lr.ph85.new
  %i.apc = load ptr, ptr %i.anf, align 8, !tbaa !91
  %i.apd = load i64, ptr %i.apc, align 8, !tbaa !13
  %i.ape = load ptr, ptr %i.ang, align 8, !tbaa !91
  %i.apf = load i64, ptr %i.ape, align 8, !tbaa !13
  %i.apg = or i64 %i.apf, %i.apd
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit

bb.m:                                             ; preds = %.lr.ph85.new
  %i.aph = load i64, ptr %i.anh, align 8, !tbaa !13
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
  %i.apm = load i64, ptr %i.ank, align 8, !tbaa !13
  %i.apn = getelementptr inbounds nuw [8 x i8], ptr %i.anc, i64 %indvars.iv103
  %i.apo = load i64, ptr %i.apn, align 8, !tbaa !13
  %i.app = xor i64 %i.apm, %i.apo
  %i.apq = xor i64 %i.app, %i.ajw                 ; 3 uses
  %i.apr = and i64 %i.apq, 8191                   ; 2 uses
  %i.aps = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish6cuckooE, i64 %i.apr ; 2 uses
  %i.apt = load i64, ptr %i.aps, align 8, !tbaa !13
  store i64 %i.apq, ptr %i.aps, align 8, !tbaa !13
  %i.apu = getelementptr inbounds nuw [2 x i8], ptr @_ZN9Stockfish10cuckooMoveE, i64 %i.apr ; 2 uses
  %.sroa.0.0.copyload.i79 = load i16, ptr %i.apu, align 2, !tbaa !88 ; 2 uses
  store i16 %i.apl, ptr %i.apu, align 2, !tbaa !88
  %i.apv = icmp eq i16 %.sroa.0.0.copyload.i79, 0
  br i1 %i.apv, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.apw = trunc i64 %i.apq to i32
  %i.apx = and i32 %i.apw, 8191
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.0.copyload.i81 = phi i16 [ %.sroa.0.0.copyload.i, %.lr.ph ], [ %.sroa.0.0.copyload.i79, %.lr.ph.preheader ]
  %i.apy = phi i64 [ %i.aqg, %.lr.ph ], [ %i.apt, %.lr.ph.preheader ] ; 2 uses
  %.080 = phi i32 [ %i.aqd, %.lr.ph ], [ %i.apx, %.lr.ph.preheader ]
  %i.apz = trunc i64 %i.apy to i32                ; 2 uses
  %i.aqa = and i32 %i.apz, 8191                   ; 2 uses
  %i.aqb = icmp eq i32 %.080, %i.aqa
  %1 = lshr i32 %i.apz, 16
  %i.aqc = and i32 %1, 8191
  %i.aqd = select i1 %i.aqb, i32 %i.aqc, i32 %i.aqa ; 2 uses
  %i.aqe = zext nneg i32 %i.aqd to i64            ; 2 uses
  %i.aqf = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish6cuckooE, i64 %i.aqe ; 2 uses
  %i.aqg = load i64, ptr %i.aqf, align 8, !tbaa !13
  store i64 %i.apy, ptr %i.aqf, align 8, !tbaa !13
  %i.aqh = getelementptr inbounds nuw [2 x i8], ptr @_ZN9Stockfish10cuckooMoveE, i64 %i.aqe ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.aqh, align 2, !tbaa !88 ; 2 uses
  store i16 %.sroa.0.0.copyload.i81, ptr %i.aqh, align 2, !tbaa !88
  %i.aqi = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %i.aqi, label %._crit_edge, label %.lr.ph, !llvm.loop !145

._crit_edge:                                      ; preds = %.lr.ph, %bb.n, %.lr.ph85.new, %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  switch i8 %i.amy, label %bb.r [
    i8 1, label %._crit_edge.1
    i8 3, label %bb.q
    i8 4, label %bb.p
    i8 5, label %bb.o
  ]

bb.o:                                             ; preds = %._crit_edge
  %i.aqj = load ptr, ptr %i.anf, align 8, !tbaa !91
  %i.aqk = load i64, ptr %i.aqj, align 8, !tbaa !13
  %i.aql = load ptr, ptr %i.ang, align 8, !tbaa !91
  %i.aqm = load i64, ptr %i.aql, align 8, !tbaa !13
  %i.aqn = or i64 %i.aqm, %i.aqk
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.1

bb.p:                                             ; preds = %._crit_edge
  %i.aqo = load ptr, ptr %i.ang, align 8, !tbaa !91
  %i.aqp = load i64, ptr %i.aqo, align 8, !tbaa !13
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.1

bb.q:                                             ; preds = %._crit_edge
  %i.aqq = load ptr, ptr %i.anf, align 8, !tbaa !91
  %i.aqr = load i64, ptr %i.aqq, align 8, !tbaa !13
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.1

bb.r:                                             ; preds = %._crit_edge
  %i.aqs = load i64, ptr %i.anh, align 8, !tbaa !13
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.1

_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.1: ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.0.i.1 = phi i64 [ %i.aqs, %bb.r ], [ %i.aqr, %bb.q ], [ %i.aqp, %bb.p ], [ %i.aqn, %bb.o ]
  %i.aqt = shl nuw i64 2, %indvars.iv103
  %i.aqu = and i64 %.0.i.1, %i.aqt
  %.not25.1 = icmp eq i64 %i.aqu, 0
  br i1 %.not25.1, label %._crit_edge.1, label %bb.s

bb.s:                                             ; preds = %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.1
  %i.aqv = trunc nuw nsw i64 %indvars.iv.next104 to i16
  %i.aqw = add nuw nsw i16 %i.anj, %i.aqv
  %i.aqx = load i64, ptr %i.ank, align 8, !tbaa !13
  %i.aqy = getelementptr inbounds nuw [8 x i8], ptr %i.anc, i64 %indvars.iv.next104
  %i.aqz = load i64, ptr %i.aqy, align 8, !tbaa !13
  %i.ara = xor i64 %i.aqx, %i.aqz
  %i.arb = xor i64 %i.ara, %i.ajw                 ; 3 uses
  %i.arc = and i64 %i.arb, 8191                   ; 2 uses
  %i.ard = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish6cuckooE, i64 %i.arc ; 2 uses
  %i.are = load i64, ptr %i.ard, align 8, !tbaa !13
  store i64 %i.arb, ptr %i.ard, align 8, !tbaa !13
  %i.arf = getelementptr inbounds nuw [2 x i8], ptr @_ZN9Stockfish10cuckooMoveE, i64 %i.arc ; 2 uses
  %.sroa.0.0.copyload.i79.1 = load i16, ptr %i.arf, align 2, !tbaa !88 ; 2 uses
  store i16 %i.aqw, ptr %i.arf, align 2, !tbaa !88
  %i.arg = icmp eq i16 %.sroa.0.0.copyload.i79.1, 0
  br i1 %i.arg, label %._crit_edge.1, label %.lr.ph.preheader.1

.lr.ph.preheader.1:                               ; preds = %bb.s
  %i.arh = trunc i64 %i.arb to i32
  %i.ari = and i32 %i.arh, 8191
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.1, %.lr.ph.preheader.1
  %.sroa.0.0.copyload.i81.1 = phi i16 [ %.sroa.0.0.copyload.i.1, %.lr.ph.1 ], [ %.sroa.0.0.copyload.i79.1, %.lr.ph.preheader.1 ]
  %i.arj = phi i64 [ %i.arr, %.lr.ph.1 ], [ %i.are, %.lr.ph.preheader.1 ] ; 2 uses
  %.080.1 = phi i32 [ %i.aro, %.lr.ph.1 ], [ %i.ari, %.lr.ph.preheader.1 ]
  %i.ark = trunc i64 %i.arj to i32                ; 2 uses
  %i.arl = and i32 %i.ark, 8191                   ; 2 uses
  %i.arm = icmp eq i32 %.080.1, %i.arl
  %2 = lshr i32 %i.ark, 16
  %i.arn = and i32 %2, 8191
  %i.aro = select i1 %i.arm, i32 %i.arn, i32 %i.arl ; 2 uses
  %i.arp = zext nneg i32 %i.aro to i64            ; 2 uses
  %i.arq = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish6cuckooE, i64 %i.arp ; 2 uses
  %i.arr = load i64, ptr %i.arq, align 8, !tbaa !13
  store i64 %i.arj, ptr %i.arq, align 8, !tbaa !13
  %i.ars = getelementptr inbounds nuw [2 x i8], ptr @_ZN9Stockfish10cuckooMoveE, i64 %i.arp ; 2 uses
  %.sroa.0.0.copyload.i.1 = load i16, ptr %i.ars, align 2, !tbaa !88 ; 2 uses
  store i16 %.sroa.0.0.copyload.i81.1, ptr %i.ars, align 2, !tbaa !88
  %i.art = icmp eq i16 %.sroa.0.0.copyload.i.1, 0
  br i1 %i.art, label %._crit_edge.1, label %.lr.ph.1, !llvm.loop !145

._crit_edge.1:                                    ; preds = %.lr.ph.1, %bb.s, %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.1, %._crit_edge
  %indvars.iv.next104.1 = add nuw nsw i64 %indvars.iv103, 2 ; 2 uses
  %exitcond106.not.1 = icmp eq i64 %indvars.iv.next104.1, 64
  br i1 %exitcond106.not.1, label %.loopexit, label %.lr.ph85.new, !llvm.loop !146
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
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
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
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !76
  %i.t = or i32 %i.s, %i.o
  store i32 %i.t, ptr %i.r, align 8, !tbaa !76
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.h ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !75
  %i.x = or i32 %i.w, %i.o
  store i32 %i.x, ptr %i.v, align 4, !tbaa !75
  %i.y = zext i8 %2 to i64                        ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !75
  %i.ab = or i32 %i.aa, %i.o
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !75
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ad = zext nneg i8 %i.n to i64                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  store i8 %2, ptr %i.ae, align 1, !tbaa !82
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
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish9BetweenBBE, i64 %i.h
  %i.aq = zext i8 %i.ai to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 16, !tbaa !13
  %i.at = or i64 %i.as, %i.ao
  %i.au = shl nuw i64 1, %i.h
  %i.av = shl nuw i64 1, %i.y
  %i.aw = or i64 %i.au, %i.av
  %i.ax = xor i64 %i.aw, -1
  %i.ay = and i64 %i.at, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ad
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !13
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK9Stockfish8Position9set_stateEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 0, ptr %i.c, align 8, !tbaa !72
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = load i64, ptr @_ZN9Stockfish7Zobrist7noPawnsE, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !92
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 0, ptr %i.g, align 4, !tbaa !75
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 0, ptr %i.h, align 8, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 620 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4, !tbaa !81    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.l = zext i8 %i.j to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load i64, ptr %i.o, align 8, !tbaa !13   ; 2 uses
  %i.q = and i64 %i.p, %i.n
  %i.r = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.q, i1 true) ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !13   ; 2 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.r ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !91
  %i.y = load i64, ptr %i.v, align 16, !tbaa !93
  %i.z = tail call noundef i64 @llvm.pext.i64(i64 %i.t, i64 %i.y)
  %i.aa = and i64 %i.z, 4294967295
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !13 ; 2 uses
  %i.ah = or i64 %i.ag, %i.ae
  %i.ai = and i64 %i.ah, %i.ac
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !91
  %i.al = load i64, ptr %i.u, align 16, !tbaa !93
  %i.am = tail call noundef i64 @llvm.pext.i64(i64 %i.t, i64 %i.al)
  %i.an = and i64 %i.am, 4294967295
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !13
  %i.as = or i64 %i.ar, %i.ag
  %i.at = and i64 %i.as, %i.ap
  %i.au = or i64 %i.at, %i.ai
  %i.av = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 512), i64 %i.r
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !13
  %i.ax = load i64, ptr %i.k, align 8, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !13
  %i.ba = and i64 %i.ax, %i.aw
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish13PseudoAttacksE, i64 %i.r
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !13
  %i.bf = and i64 %i.be, %i.bc
  %i.bg = or i64 %i.bf, %i.ba
  %i.bh = and i64 %i.bg, %i.az
  %i.bi = or i64 %i.au, %i.bh
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 1024), i64 %i.r
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !13
  %i.bn = and i64 %i.bm, %i.bk
  %i.bo = or i64 %i.bi, %i.bn
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 3072), i64 %i.r
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !13
  %i.br = and i64 %i.bq, %i.p
  %i.bs = or i64 %i.bo, %i.br
  %i.bt = xor i8 %i.j, 1
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !13
  %i.bx = and i64 %i.bs, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !74
  tail call void @_ZNK9Stockfish8Position14set_check_infoEv(ptr noundef nonnull align 8 dereferenceable(1048) %0)
  %i.bz = load i64, ptr %i.s, align 8, !tbaa !13  ; 2 uses
  %.not18 = icmp eq i64 %i.bz, 0
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !70  ; 12 uses
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
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !83  ; 2 uses
  %.not15 = icmp eq i8 %i.cg, 64
end_hunk_0
begin_hunk_1_@_ZNK9Stockfish8Position6see_geENS_4MoveEi:bb.a
  %i.et = and i64 %i.cq, %i.es
  %i.eu = or i64 %i.et, %i.cu
  br label %bb.w

bb.t:                                             ; preds = %bb.q
  %i.ev = and i64 %i.ao, %.066                    ; 3 uses
  %.not99 = icmp eq i64 %i.ev, 0
  br i1 %.not99, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ew = sub nsw i32 2538, %.072109
  %i.ex = sub i64 0, %i.ev
  %i.ey = and i64 %i.ev, %i.ex
  %i.ez = xor i64 %i.ey, %.070110                 ; 3 uses
  %i.fa = tail call noundef i64 @llvm.pext.i64(i64 %i.ez, i64 %i.at)
  %i.fb = and i64 %i.fa, 4294967295
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !13
  %i.fe = and i64 %i.fd, %i.ba
  %i.ff = tail call noundef i64 @llvm.pext.i64(i64 %i.ez, i64 %i.ag)
  %i.fg = and i64 %i.ff, 4294967295
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !13
  %i.fj = and i64 %i.fi, %i.ap
  %i.fk = or i64 %i.fe, %i.fj
  %i.fl = or i64 %i.fk, %i.cu
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.fm = xor i64 %i.cs, -1
  %i.fn = and i64 %i.cu, %i.fm
  %.not100 = icmp eq i64 %i.fn, 0
  %i.fo = select i1 %.not100, i32 %i.de, i32 %.0112
  br label %.loopexit

bb.w:                                             ; preds = %bb.m, %bb.s, %bb.u, %bb.p, %bb.j
  %.173 = phi i32 [ %i.dg, %bb.j ], [ %i.ds, %bb.m ], [ %i.dy, %bb.p ], [ %i.ek, %bb.s ], [ %i.ew, %bb.u ]
  %.171 = phi i64 [ %i.dk, %bb.j ], [ %i.dw, %bb.m ], [ %i.ec, %bb.p ], [ %i.eo, %bb.s ], [ %i.ez, %bb.u ] ; 2 uses
  %.168 = phi i64 [ %i.dq, %bb.j ], [ %i.cu, %bb.m ], [ %i.ei, %bb.p ], [ %i.eu, %bb.s ], [ %i.fl, %bb.u ]
  %i.fp = xor i8 %i.cv, 1                         ; 2 uses
  %i.fq = and i64 %.168, %.171                    ; 2 uses
  %i.fr = zext i8 %i.fp to i64                    ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !13 ; 2 uses
  %i.fu = and i64 %i.ft, %i.fq                    ; 2 uses
  %.not92 = icmp eq i64 %i.fu, 0
  br i1 %.not92, label %.loopexit, label %bb.f, !llvm.loop !248

.loopexit:                                        ; preds = %bb.r, %bb.o, %bb.l, %bb.i, %bb.g, %bb.w, %bb.e, %bb.v
  %.074.in = phi i32 [ %i.fo, %bb.v ], [ 1, %bb.e ], [ %.0112, %bb.g ], [ %i.de, %bb.i ], [ %i.de, %bb.r ], [ %i.de, %bb.o ], [ %i.de, %bb.l ], [ %i.de, %bb.w ]
  %.074 = icmp ne i32 %.074.in, 0
  br label %bb.x

bb.x:                                             ; preds = %.loopexit, %bb.c, %bb.d, %bb.b
  %.2 = phi i1 [ %i.a, %bb.b ], [ %.074, %.loopexit ], [ false, %bb.c ], [ true, %bb.d ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK9Stockfish8Position7is_drawEi(ptr noundef nonnull align 8 dereferenceable(1048) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"struct.Stockfish::MoveList.38", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !73
  %i.e = icmp sgt i32 %i.d, 99
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !74
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %.critedge2, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(520) %2) #26
  %.not4 = icmp eq ptr %i.h, %2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.not4, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !70
  br label %bb.d

.critedge2:                                       ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.e

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %.critedge
  %i.i = phi ptr [ %.pre, %._crit_edge ], [ %i.b, %.critedge ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 188
  %i.k = load i32, ptr %i.j, align 4, !tbaa !103  ; 2 uses
  %.not.i = icmp ne i32 %i.k, 0
  %i.l = icmp slt i32 %i.k, %1
  %spec.select.i = and i1 %.not.i, %i.l
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %.critedge2, %bb.d
  %.0 = phi i1 [ %spec.select.i, %bb.d ], [ true, %.critedge2 ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK9Stockfish8Position13is_repetitionEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %0, i32 noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 188
  %i.d = load i32, ptr %i.c, align 4, !tbaa !103  ; 2 uses
  %.not = icmp ne i32 %i.d, 0
  %i.e = icmp slt i32 %i.d, %1
  %spec.select = and i1 %.not, %i.e
  ret i1 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK9Stockfish8Position12has_repeatedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.e = load i32, ptr %i.d, align 4, !tbaa !75
  %i.f = load i32, ptr %i.c, align 4, !tbaa !75
  %i.g = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.f) ; 2 uses
  %i.h = icmp sgt i32 %i.g, 3
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.in = phi i32 [ %i.k, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %.047 = phi ptr [ %i.m, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.047, i64 188
  %i.j = load i32, ptr %i.i, align 4, !tbaa !103
  %.not.not.not = icmp ne i32 %i.j, 0             ; 3 uses
  br i1 %.not.not.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = add nsw i32 %.in, -1
  %i.l = getelementptr inbounds nuw i8, ptr %.047, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !96
  %i.n = icmp sgt i32 %.in, 4
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !249

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ %.not.not.not, %bb.b ], [ %.not.not.not, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK9Stockfish8Position19upcoming_repetitionEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %0, i32 noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.e = load i32, ptr %i.d, align 4, !tbaa !75
  %i.f = load i32, ptr %i.c, align 4, !tbaa !75
  %i.g = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.f) ; 2 uses
  %i.h = icmp slt i32 %i.g, 3
  br i1 %i.h, label %.critedge48, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.j = load i64, ptr %i.i, align 8, !tbaa !72   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !96   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !72
  %i.o = load i64, ptr @_ZN9Stockfish7Zobrist4sideE, align 8, !tbaa !13 ; 2 uses
  %i.p = xor i64 %i.n, %i.j
  %i.q = xor i64 %i.p, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load i64, ptr %i.r, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  %.053 = phi i32 [ 3, %bb.b ], [ %i.be, %.critedge ] ; 2 uses
  %.03352 = phi i64 [ %i.q, %bb.b ], [ %i.ad, %.critedge ]
  %.03451 = phi ptr [ %i.l, %bb.b ], [ %i.y, %.critedge ]
  %i.t = getelementptr inbounds nuw i8, ptr %.03451, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !96   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.w = load i64, ptr %i.v, align 8, !tbaa !72
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !96   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !72  ; 3 uses
  %i.ab = xor i64 %.03352, %i.w
  %i.ac = xor i64 %i.ab, %i.o                     ; 2 uses
  %i.ad = xor i64 %i.ac, %i.aa
  %.not42 = icmp eq i64 %i.ac, %i.aa
  br i1 %.not42, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ae = xor i64 %i.aa, %i.j                     ; 5 uses
  %i.af = and i64 %i.ae, 8191
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish6cuckooE, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !13
  %i.ai = icmp eq i64 %i.ah, %i.ae
  br i1 %i.ai, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.d
  %.pre = and i64 %i.ae, 8191
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = lshr i64 %i.ae, 16
  %i.ak = and i64 %i.aj, 8191                     ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish6cuckooE, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !13
  %i.an = icmp eq i64 %i.am, %i.ae
  br i1 %i.an, label %bb.f, label %.critedge

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.ak, %bb.e ]
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr @_ZN9Stockfish10cuckooMoveE, i64 %.pre-phi
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !88 ; 2 uses
  %i.aq = lshr i16 %i.ap, 6
  %i.ar = and i16 %i.aq, 63
  %i.as = zext nneg i16 %i.ar to i64
  %i.at = and i16 %i.ap, 63
  %i.au = zext nneg i16 %i.at to i64              ; 2 uses
  %i.av = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish9BetweenBBE, i64 %i.as
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !13
  %i.ay = shl nuw i64 1, %i.au
  %i.az = xor i64 %i.ay, %i.ax
  %i.ba = and i64 %i.az, %i.s
  %.not43 = icmp eq i64 %i.ba, 0
  br i1 %.not43, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.bb = icmp sgt i32 %1, %.053
  br i1 %i.bb, label %.critedge48, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 188
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !103
  %.not44 = icmp eq i32 %i.bd, 0
  br i1 %.not44, label %.critedge, label %.critedge48

.critedge:                                        ; preds = %bb.f, %bb.h, %bb.e, %bb.c
  %i.be = add nuw nsw i32 %.053, 2                ; 2 uses
  %.not.not = icmp sgt i32 %i.be, %i.g
  br i1 %.not.not, label %.critedge48, label %bb.c, !llvm.loop !250

.critedge48:                                      ; preds = %bb.g, %bb.h, %.critedge, %bb.a
  %.7 = phi i1 [ false, %bb.a ], [ true, %bb.g ], [ true, %bb.h ], [ false, %.critedge ]
  ret i1 %.7
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish8Position4flipEv(ptr noundef nonnull align 8 dereferenceable(1048) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 33 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !80
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  store i64 0, ptr %i.b, align 8, !tbaa !39
  store i8 0, ptr %i.a, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !80
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i64 0, ptr %i.d, align 8, !tbaa !39
  store i8 0, ptr %i.c, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZNK9Stockfish8Position3fenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(1048) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #26
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.e, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 344
  store ptr null, ptr %i.f, align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 352
  store i8 0, ptr %i.g, align 8, !tbaa !59
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 353
  store i8 0, ptr %i.h, align 1, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !25
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.l = getelementptr i8, ptr %i.j, i64 -24      ; 2 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %3, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.o, align 8, !tbaa !86
  %i.p = load ptr, ptr %3, align 8, !tbaa !25
  %i.q = getelementptr i8, ptr %i.p, i64 -24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds i8, ptr %3, i64 %i.r
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.s, ptr noundef null) #26
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !25
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.t, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8, !tbaa !25
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.aa = getelementptr i8, ptr %i.z, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %i.t, i64 %i.ab
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ac, ptr noundef null) #26
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.ad, ptr %3, align 8, !tbaa !25
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.af = getelementptr i8, ptr %i.ad, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %3, i64 %i.ag
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !25
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %3, align 8, !tbaa !25
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.e, align 8, !tbaa !25
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.t, align 8, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEC2ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(104) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 24)
  %i.aj = load ptr, ptr %3, align 8, !tbaa !25
  %i.ak = getelementptr i8, ptr %i.aj, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %3, i64 %i.al
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.am, ptr noundef nonnull %i.ai) #26
  %i.an = load ptr, ptr %4, align 8, !tbaa !38    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !23
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0 = phi i8 [ 7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ] ; 2 uses
  %.not = icmp eq i8 %.0, 0                       ; 2 uses
  %i.au = select i1 %.not, i8 32, i8 47
  %i.av = call noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef signext %i.au) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.aw = load i64, ptr %i.b, align 8, !tbaa !39
  %i.ax = icmp eq i64 %i.aw, 0
  %.str.7..str.18 = select i1 %i.ax, ptr @.str.7, ptr @.str.18
  call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.ay = load ptr, ptr %2, align 8, !tbaa !38, !noalias !262
  %i.az = load i64, ptr %i.d, align 8, !tbaa !39, !noalias !262 ; 3 uses
  store ptr %i.as, ptr %5, align 8, !tbaa !80, !alias.scope !263
  store i64 0, ptr %i.at, align 8, !tbaa !39, !alias.scope !263
  store i8 0, ptr %i.as, align 8, !tbaa !23, !alias.scope !263
  %i.ba = add i64 %i.az, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ba) #26
  %i.bb = load i64, ptr %i.at, align 8, !tbaa !39, !alias.scope !263
  %i.bc = sub i64 4611686018427387903, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.az
  br i1 %i.bd, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #30
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.b
  %i.be = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.ay, i64 noundef %i.az) #26 ; 0 uses
  %i.bf = load i64, ptr %i.at, align 8, !tbaa !39, !alias.scope !263
  %i.bg = icmp eq i64 %i.bf, 4611686018427387903
  br i1 %i.bg, label %bb.d, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #30
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bh = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %.str.7..str.18, i64 noundef 1) #26 ; 0 uses
  %i.bi = load i64, ptr %i.at, align 8, !tbaa !39
  %i.bj = load ptr, ptr %5, align 8, !tbaa !38
  %i.bk = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef 0, ptr noundef %i.bj, i64 noundef %i.bi) #26 ; 0 uses
  %i.bl = load ptr, ptr %5, align 8, !tbaa !38    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.as
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.bn = load i64, ptr %i.as, align 8, !tbaa !23
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.bp = add nsw i8 %.0, -1
  br i1 %.not, label %bb.e, label %bb.b, !llvm.loop !255

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.bq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %2) #26 ; 0 uses
  %i.br = load i64, ptr %i.d, align 8, !tbaa !39
  %i.bs = icmp eq i64 %i.br, 1
  br i1 %i.bs, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread25

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.e
  %i.bt = load ptr, ptr %2, align 8, !tbaa !38
  %lhsc = load i8, ptr %i.bt, align 1
  %lhsc.fr = freeze i8 %lhsc
  %i.bu = icmp eq i8 %lhsc.fr, 119
  %spec.select = select i1 %i.bu, ptr @.str.20, ptr @.str.21
end_hunk_1
