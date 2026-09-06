Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_highlights?download=true
inline.NumInlined: 258
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 95
begin_hunk_0_@process:bb.a
  %i.adw = select <8 x i1> %i.adu, <8 x i1> splat (i1 true), <8 x i1> %i.adv ; 11 uses
  %i.adx = xor <8 x i1> %i.adw, splat (i1 true)   ; 9 uses
  %i.ady = add <8 x i64> %vec.ind, splat (i64 -1) ; 2 uses
  %i.adz = extractelement <8 x i64> %i.ady, i64 0 ; 3 uses
  %i.aea = add <8 x i64> %vec.ind, splat (i64 1)  ; 2 uses
  %i.aeb = extractelement <8 x i64> %i.aea, i64 0 ; 3 uses
  %i.aec = getelementptr [4 x i8], ptr %i.acx, i64 %index
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aec, <8 x i1> %i.adx, <8 x float> poison), !tbaa !12, !alias.scope !428, !noalias !429 ; 4 uses
  %i.aed = getelementptr [4 x i8], ptr %i.acy, i64 %index
  %wide.masked.load537 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aed, <8 x i1> %i.adx, <8 x float> poison), !tbaa !12, !alias.scope !428, !noalias !429 ; 4 uses
  %i.aee = getelementptr [4 x i8], ptr %i.acz, i64 %i.adz
  %wide.masked.load538 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aee, <8 x i1> %i.adx, <8 x float> poison), !tbaa !12, !alias.scope !428, !noalias !429 ; 5 uses
  %i.aef = getelementptr [4 x i8], ptr %i.acz, i64 %i.aeb
  %wide.masked.load539 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aef, <8 x i1> %i.adx, <8 x float> poison), !tbaa !12, !alias.scope !428, !noalias !429 ; 5 uses
  %i.aeg = getelementptr [4 x i8], ptr %i.acx, i64 %i.aeb
  %wide.masked.load540 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aeg, <8 x i1> %i.adx, <8 x float> poison), !tbaa !12, !alias.scope !428, !noalias !429 ; 3 uses
  %i.aeh = getelementptr [4 x i8], ptr %i.acx, i64 %i.adz
  %wide.masked.load541 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aeh, <8 x i1> %i.adx, <8 x float> poison), !tbaa !12, !alias.scope !428, !noalias !429 ; 3 uses
  %i.aei = getelementptr [4 x i8], ptr %i.acy, i64 %i.aeb
  %wide.masked.load542 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aei, <8 x i1> %i.adx, <8 x float> poison), !tbaa !12, !alias.scope !428, !noalias !429 ; 3 uses
  %i.aej = getelementptr [4 x i8], ptr %i.acy, i64 %i.adz
  %wide.masked.load543 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aej, <8 x i1> %i.adx, <8 x float> poison), !tbaa !12, !alias.scope !428, !noalias !429 ; 3 uses
  %i.aek = icmp eq <8 x i32> %i.adp, splat (i32 1) ; 2 uses
  %i.ael = select <8 x i1> %i.adw, <8 x i1> splat (i1 true), <8 x i1> %i.aek ; 2 uses
  %i.aem = xor <8 x i1> %i.ael, splat (i1 true)
  %i.aen = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load537, %wide.masked.load ; 2 uses
  %i.aeo = fadd reassoc nsz arcp contract afn <8 x float> %i.aen, %wide.masked.load538
  %i.aep = fadd reassoc nsz arcp contract afn <8 x float> %i.aeo, %wide.masked.load539
  %i.aeq = fmul reassoc nsz arcp contract afn <8 x float> %i.aep, splat (float 2.500000e-01)
  %i.aer = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load, %broadcast.splat526
  %i.aes = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load537, %broadcast.splat526
  %i.aet = select <8 x i1> %i.aer, <8 x i1> splat (i1 true), <8 x i1> %i.aes
  %i.aeu = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load539, %broadcast.splat526
  %i.aev = select <8 x i1> %i.aet, <8 x i1> splat (i1 true), <8 x i1> %i.aeu
  %i.aew = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load538, %broadcast.splat526
  %i.aex = select <8 x i1> %i.aev, <8 x i1> splat (i1 true), <8 x i1> %i.aew
  %i.aey = icmp eq <8 x i32> %i.adp, zeroinitializer ; 2 uses
  %i.aez = select <8 x i1> %i.aem, <8 x i1> %i.aey, <8 x i1> zeroinitializer ; 5 uses
  %i.afa = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load, %broadcast.splat528
  %i.afb = or disjoint <8 x i64> %i.adk, %broadcast.splat518
  %i.afc = trunc nuw nsw <8 x i64> %i.afb to <8 x i32>
  %i.afd = shl nuw nsw <8 x i32> %i.afc, splat (i32 1) ; 2 uses
  %i.afe = select <8 x i1> %i.adx, <8 x i1> %i.aek, <8 x i1> zeroinitializer ; 3 uses
  %i.aff = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load, %broadcast.splat526
  %i.afg = select <8 x i1> %i.ael, <8 x i1> splat (i1 true), <8 x i1> %i.aey
  %i.afh = xor <8 x i1> %i.afg, splat (i1 true)
  %i.afi = or <8 x i1> %i.afe, %i.afh             ; 4 uses
  %i.afj = shl nuw <8 x i32> splat (i32 3), %i.afd
  %i.afk = and <8 x i32> %i.afj, %broadcast.splat522
  %i.afl = icmp eq <8 x i32> %i.afk, zeroinitializer ; 2 uses
  %i.afm = select <8 x i1> %i.afi, <8 x i1> %i.afl, <8 x i1> zeroinitializer ; 2 uses
  %i.afn = or disjoint <8 x i64> %i.adk, %broadcast.splat520
  %i.afo = trunc nuw nsw <8 x i64> %i.afn to <8 x i32>
  %i.afp = shl nuw nsw <8 x i32> %i.afo, splat (i32 1) ; 2 uses
  %i.afq = shl nuw <8 x i32> splat (i32 3), %i.afp
  %i.afr = and <8 x i32> %i.afq, %broadcast.splat522
  %i.afs = icmp eq <8 x i32> %i.afr, zeroinitializer ; 2 uses
  %i.aft = xor <8 x i1> %i.afs, splat (i1 true)
  %i.afu = select <8 x i1> %i.afm, <8 x i1> %i.aft, <8 x i1> zeroinitializer
  %i.afv = xor <8 x i1> %i.afl, splat (i1 true)
  %i.afw = select <8 x i1> %i.afi, <8 x i1> %i.afv, <8 x i1> zeroinitializer
  %i.afx = or <8 x i1> %i.afu, %i.afw
  %i.afy = and <8 x i64> %i.ady, splat (i64 1)
  %i.afz = or disjoint <8 x i64> %i.afy, %broadcast.splat
  %i.aga = trunc nuw nsw <8 x i64> %i.afz to <8 x i32>
  %i.agb = shl nuw nsw <8 x i32> %i.aga, splat (i32 1) ; 2 uses
  %i.agc = shl nuw <8 x i32> splat (i32 3), %i.agb
  %i.agd = and <8 x i32> %i.agc, %broadcast.splat522
  %i.age = icmp eq <8 x i32> %i.agd, zeroinitializer
  %i.agf = select <8 x i1> %i.afx, <8 x i1> %i.age, <8 x i1> zeroinitializer
  %i.agg = and <8 x i64> %i.aea, splat (i64 1)
  %i.agh = or disjoint <8 x i64> %i.agg, %broadcast.splat
  %i.agi = trunc nuw nsw <8 x i64> %i.agh to <8 x i32>
  %i.agj = shl nuw nsw <8 x i32> %i.agi, splat (i32 1) ; 2 uses
  %i.agk = shl nuw <8 x i32> splat (i32 3), %i.agj
  %i.agl = and <8 x i32> %i.agk, %broadcast.splat522
  %i.agm = icmp eq <8 x i32> %i.agl, zeroinitializer
  %i.agn = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load541, %wide.masked.load540
  %i.ago = fadd reassoc nsz arcp contract afn <8 x float> %i.agn, %wide.masked.load542
  %i.agp = fadd reassoc nsz arcp contract afn <8 x float> %i.ago, %wide.masked.load543
  %i.agq = fmul reassoc nsz arcp contract afn <8 x float> %i.agp, splat (float 2.500000e-01) ; 2 uses
  %i.agr = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load541, %broadcast.splat528
  %i.ags = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load540, %broadcast.splat528
  %i.agt = select <8 x i1> %i.agr, <8 x i1> splat (i1 true), <8 x i1> %i.ags
  %i.agu = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load543, %broadcast.splat528
  %i.agv = select <8 x i1> %i.agt, <8 x i1> splat (i1 true), <8 x i1> %i.agu
  %i.agw = select <8 x i1> %i.agf, <8 x i1> %i.agm, <8 x i1> zeroinitializer ; 3 uses
  %i.agx = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load539, %wide.masked.load538
  %i.agy = fmul reassoc nsz arcp contract afn <8 x float> %i.agx, splat (float 5.000000e-01) ; 2 uses
  %i.agz = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load538, %broadcast.splat528
  %i.aha = select <8 x i1> %i.afm, <8 x i1> %i.afs, <8 x i1> zeroinitializer ; 3 uses
  %i.ahb = fmul reassoc nsz arcp contract afn <8 x float> %i.aen, splat (float 5.000000e-01) ; 2 uses
  %i.ahc = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load, %broadcast.splat528
  %predphi545 = select <8 x i1> %i.agw, <8 x float> %wide.masked.load539, <8 x float> %wide.masked.load542
  %predphi546 = select <8 x i1> %i.aha, <8 x float> %wide.masked.load537, <8 x float> %predphi545
  %predphi547 = select <8 x i1> %i.agw, <8 x i1> %i.agz, <8 x i1> %i.agv
  %predphi548 = select <8 x i1> %i.aha, <8 x i1> %i.ahc, <8 x i1> %predphi547
  %predphi549 = select nsz <8 x i1> %i.agw, <8 x float> %i.agy, <8 x float> %i.agq
  %predphi550 = select nsz <8 x i1> %i.aha, <8 x float> %i.ahb, <8 x float> %predphi549
  %i.ahd = fcmp reassoc nsz arcp contract afn ogt <8 x float> %predphi546, %broadcast.splat528
  %i.ahe = select <8 x i1> %predphi548, <8 x i1> splat (i1 true), <8 x i1> %i.ahd
  %i.ahf = icmp eq <8 x i32> %i.adp, splat (i32 2) ; 2 uses
  %i.ahg = xor <8 x i1> %i.ahf, splat (i1 true)
  %i.ahh = select <8 x i1> %i.afi, <8 x i1> %i.ahg, <8 x i1> %i.aez ; 2 uses
  %i.ahi = xor <8 x i1> %i.afe, splat (i1 true)
  %i.ahj = lshr <8 x i32> %broadcast.splat522, %i.afd
  %i.ahk = and <8 x i32> %i.ahj, splat (i32 3)
  %i.ahl = icmp eq <8 x i32> %i.ahk, splat (i32 2) ; 2 uses
  %i.ahm = select <8 x i1> %i.ahh, <8 x i1> %i.ahl, <8 x i1> zeroinitializer ; 2 uses
  %i.ahn = lshr <8 x i32> %broadcast.splat522, %i.afp
  %i.aho = and <8 x i32> %i.ahn, splat (i32 3)
  %i.ahp = icmp eq <8 x i32> %i.aho, splat (i32 2) ; 2 uses
  %i.ahq = xor <8 x i1> %i.ahp, splat (i1 true)
  %i.ahr = select <8 x i1> %i.ahm, <8 x i1> %i.ahq, <8 x i1> zeroinitializer
  %i.ahs = xor <8 x i1> %i.ahl, splat (i1 true)
  %i.aht = select <8 x i1> %i.ahh, <8 x i1> %i.ahs, <8 x i1> zeroinitializer
  %i.ahu = or <8 x i1> %i.ahr, %i.aht             ; 2 uses
  %i.ahv = lshr <8 x i32> %broadcast.splat522, %i.agb
  %i.ahw = and <8 x i32> %i.ahv, splat (i32 3)
  %i.ahx = icmp eq <8 x i32> %i.ahw, splat (i32 2) ; 2 uses
  %i.ahy = select <8 x i1> %i.ahu, <8 x i1> %i.ahx, <8 x i1> zeroinitializer ; 2 uses
  %i.ahz = lshr <8 x i32> %broadcast.splat522, %i.agj
  %i.aia = and <8 x i32> %i.ahz, splat (i32 3)
  %i.aib = icmp eq <8 x i32> %i.aia, splat (i32 2) ; 2 uses
  %i.aic = xor <8 x i1> %i.ahx, splat (i1 true)
  %i.aid = select <8 x i1> %i.ahu, <8 x i1> %i.aic, <8 x i1> zeroinitializer
  %i.aie = xor <8 x i1> %i.aib, splat (i1 true)
  %i.aif = select <8 x i1> %i.ahy, <8 x i1> %i.aie, <8 x i1> zeroinitializer
  %i.aig = or <8 x i1> %i.aid, %i.aif
  %i.aih = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load541, %broadcast.splat530
  %i.aii = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load540, %broadcast.splat530
  %i.aij = select <8 x i1> %i.aih, <8 x i1> splat (i1 true), <8 x i1> %i.aii
  %i.aik = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load543, %broadcast.splat530
  %i.ail = select <8 x i1> %i.aij, <8 x i1> splat (i1 true), <8 x i1> %i.aik
  %i.aim = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load542, %broadcast.splat530
  %i.ain = select <8 x i1> %i.ail, <8 x i1> splat (i1 true), <8 x i1> %i.aim
  %i.aio = select <8 x i1> %i.ahy, <8 x i1> %i.aib, <8 x i1> zeroinitializer ; 2 uses
  %i.aip = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load538, %broadcast.splat530
  %i.aiq = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load539, %broadcast.splat530
  %i.air = select <8 x i1> %i.aip, <8 x i1> splat (i1 true), <8 x i1> %i.aiq
  %i.ais = select <8 x i1> %i.ahm, <8 x i1> %i.ahp, <8 x i1> zeroinitializer ; 2 uses
  %i.ait = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load, %broadcast.splat530
  %i.aiu = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load537, %broadcast.splat530
  %i.aiv = select <8 x i1> %i.ait, <8 x i1> splat (i1 true), <8 x i1> %i.aiu
  %i.aiw = select <8 x i1> %i.afi, <8 x i1> %i.ahf, <8 x i1> zeroinitializer ; 5 uses
  %i.aix = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load, %broadcast.splat530
  %i.aiy = zext nneg <8 x i32> %i.adp to <8 x i64>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.k, <8 x i64> %i.aiy
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> %i.adw, <8 x float> poison), !tbaa !12, !noalias !430
  %i.aiz = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load, %wide.masked.gather ; 4 uses
  %i.aja = zext <8 x i1> %i.aiz to <8 x i32>      ; 3 uses
  %not. = xor <8 x i1> %i.aiw, splat (i1 true)
  %i.ajb = select <8 x i1> %not., <8 x i1> %i.aez, <8 x i1> zeroinitializer
  %i.ajc = select <8 x i1> %i.adw, <8 x i1> splat (i1 true), <8 x i1> %i.ajb
  %predphi556 = select nsz <8 x i1> %i.ajc, <8 x float> %wide.load, <8 x float> %predphi550 ; 3 uses
  %i.ajd = select <8 x i1> %i.aiw, <8 x i1> splat (i1 true), <8 x i1> %i.aez
  %not.594 = xor <8 x i1> %i.ajd, splat (i1 true)
  %i.aje = select <8 x i1> %not.594, <8 x i1> %i.afe, <8 x i1> zeroinitializer
  %i.ajf = select <8 x i1> %i.adw, <8 x i1> splat (i1 true), <8 x i1> %i.aje
  %predphi558 = select nsz <8 x i1> %i.ajf, <8 x float> %wide.load, <8 x float> %i.aeq ; 3 uses
  %predphi559 = select nsz <8 x i1> %i.aig, <8 x float> %i.agq, <8 x float> %wide.load
  %predphi560 = select nsz <8 x i1> %i.aio, <8 x float> %i.agy, <8 x float> %predphi559
  %predphi561 = select nsz <8 x i1> %i.ais, <8 x float> %i.ahb, <8 x float> %predphi560 ; 3 uses
  %i.ajg = xor <8 x i1> %i.aez, splat (i1 true)
  %i.ajh = select <8 x i1> %i.aiw, <8 x i1> splat (i1 true), <8 x i1> %i.ajg
  %predphi562.v = select <8 x i1> %i.ajh, <8 x i1> %i.ahe, <8 x i1> %i.afa ; 2 uses
  %predphi562 = zext <8 x i1> %predphi562.v to <8 x i32>
  %predphi563 = select <8 x i1> %i.adw, <8 x i32> %i.aja, <8 x i32> %predphi562
  %i.aji = select <8 x i1> %i.aiw, <8 x i1> splat (i1 true), <8 x i1> %i.aez
  %i.ajj = select <8 x i1> %i.aji, <8 x i1> splat (i1 true), <8 x i1> %i.ahi
  %predphi564.v = select <8 x i1> %i.ajj, <8 x i1> %i.aex, <8 x i1> %i.aff ; 2 uses
  %predphi564 = zext <8 x i1> %predphi564.v to <8 x i32>
  %predphi565 = select <8 x i1> %i.adw, <8 x i32> %i.aja, <8 x i32> %predphi564
  %predphi566.v = select <8 x i1> %i.aio, <8 x i1> %i.air, <8 x i1> %i.ain
  %predphi567.v = select <8 x i1> %i.ais, <8 x i1> %i.aiv, <8 x i1> %predphi566.v
  %predphi568.v = select <8 x i1> %i.aiw, <8 x i1> %i.aix, <8 x i1> %predphi567.v ; 2 uses
  %predphi568 = zext <8 x i1> %predphi568.v to <8 x i32>
  %predphi569 = select <8 x i1> %i.adw, <8 x i32> %i.aja, <8 x i32> %predphi568
  %i.ajk = fmul reassoc nsz arcp contract afn <8 x float> %predphi556, %predphi556
  %i.ajl = fmul reassoc nsz arcp contract afn <8 x float> %predphi558, %predphi558
  %i.ajm = fadd reassoc nsz arcp contract afn <8 x float> %i.ajl, %i.ajk
  %i.ajn = fmul reassoc nsz arcp contract afn <8 x float> %predphi561, %predphi561
  %i.ajo = fadd reassoc nsz arcp contract afn <8 x float> %i.ajm, %i.ajn
  %i.ajp = call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.ajo)
  %i.ajq = uitofp nneg <8 x i32> %predphi569 to <8 x float>
  %i.ajr = select <8 x i1> %i.adw, <8 x i1> %i.aiz, <8 x i1> %predphi562.v
  %i.ajs = select <8 x i1> %i.adw, <8 x i1> %i.aiz, <8 x i1> %predphi564.v
  %i.ajt = select <8 x i1> %i.ajr, <8 x i1> splat (i1 true), <8 x i1> %i.ajs
  %i.aju = select <8 x i1> %i.adw, <8 x i1> %i.aiz, <8 x i1> %predphi568.v
  %i.ajv = select <8 x i1> %i.ajt, <8 x i1> splat (i1 true), <8 x i1> %i.aju
  %i.ajw = select <8 x i1> %i.ajv, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ajx = shufflevector <8 x i32> %predphi563, <8 x i32> %predphi565, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ajy = uitofp nneg <16 x i32> %i.ajx to <16 x float>
  %i.ajz = shufflevector <8 x float> %i.ajq, <8 x float> %i.ajw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.ajy, <16 x float> %i.ajz, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.adj, align 4, !tbaa !12, !alias.scope !427, !noalias !431
  %i.aka = fmul reassoc nsz arcp contract afn <8 x float> %predphi556, %i.abz
  %i.akb = shl i64 %i.adq, 4
  %i.akc = getelementptr inbounds nuw i8, ptr %i.abu, i64 %i.akb
  %i.akd = fmul reassoc nsz arcp contract afn <8 x float> %predphi558, %i.aca
  %7 = shufflevector <8 x float> %i.aka, <8 x float> %i.akd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %8 = fmul reassoc nsz arcp contract afn <8 x float> %predphi561, %i.acb
  %i.ake = shufflevector <8 x float> %8, <8 x float> %i.ajp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.akf = shufflevector <16 x float> %7, <16 x float> %i.ake, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  %interleaved.vec570 = call reassoc nsz arcp contract afn <32 x float> @llvm.maxnum.v32f32(<32 x float> %i.akf, <32 x float> zeroinitializer)
  store <32 x float> %interleaved.vec570, ptr %i.akc, align 4, !tbaa !12, !alias.scope !426, !noalias !432
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i64> %vec.ind, splat (i64 8)
  %i.akg = icmp eq i64 %index.next, %n.vec
  br i1 %i.akg, label %middle.block, label %vector.body, !llvm.loop !407

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i, %middle.block
  %.0190240.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i.i ]
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %bb.fk, %middle.block
  %exitcond245.not.i.i = icmp eq i64 %i.acv, %i.aaj
  br i1 %exitcond245.not.i.i, label %_interpolate_and_mask.exit.i, label %.preheader.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.fk
  %.0190240.i.i = phi i64 [ %.pre-phi.i.i, %bb.fk ], [ %.0190240.i.i.ph, %scalar.ph.preheader ] ; 10 uses
  %i.akh = shl i64 %.0190240.i.i, 4
  %scevgep.i.i = getelementptr i8, ptr %i.ade, i64 %i.akh ; 4 uses
  %i.aki = and i64 %.0190240.i.i, 1               ; 5 uses
  %i.akj = or disjoint i64 %i.aki, %i.acp
  %.tr.i.i.i = trunc nuw nsw i64 %i.akj to i32
  %i.akk = shl nuw nsw i32 %.tr.i.i.i, 1
  %i.akl = lshr i32 %i.zv, %i.akk
  %i.akm = and i32 %i.akl, 3                      ; 4 uses
  %i.akn = add i64 %.0190240.i.i, %i.acq          ; 2 uses
  %i.ako = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.akn
  %i.akp = load float, ptr %i.ako, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 10 uses
  %i.akq = icmp eq i64 %.0190240.i.i, 0
  %or.cond.i.i = or i1 %i.acr, %i.akq
  %or.cond201.i.i = select i1 %or.cond.i.i, i1 true, i1 %i.acs
  %i.akr = icmp eq i64 %.0190240.i.i, %i.abx
  %or.cond203.i.i = select i1 %or.cond201.i.i, i1 true, i1 %i.akr
  br i1 %or.cond203.i.i, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %scalar.ph
  %i.aks = zext nneg i32 %i.akm to i64
  %i.akt = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.aks
  %i.aku = load float, ptr %i.akt, align 4, !tbaa !12, !noalias !430
  %i.akv = fcmp reassoc nsz arcp contract afn ogt float %i.akp, %i.aku
  %i.akw = zext i1 %i.akv to i32                  ; 3 uses
  %.pre254.i.i = add nuw i64 %.0190240.i.i, 1
  br label %bb.fk

bb.eu:                                            ; preds = %scalar.ph
  %i.akx = add i64 %.0190240.i.i, -1              ; 5 uses
  %i.aky = add nuw i64 %.0190240.i.i, 1           ; 9 uses
  %i.akz = getelementptr [4 x i8], ptr %i.acx, i64 %.0190240.i.i
  %i.ala = load float, ptr %i.akz, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 6 uses
  %i.alb = getelementptr [4 x i8], ptr %i.acy, i64 %.0190240.i.i
  %i.alc = load float, ptr %i.alb, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 6 uses
  %i.ald = getelementptr [4 x i8], ptr %i.acz, i64 %i.akx
  %i.ale = load float, ptr %i.ald, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 6 uses
  %i.alf = getelementptr [4 x i8], ptr %i.acz, i64 %i.aky
  %i.alg = load float, ptr %i.alf, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 6 uses
  %i.alh = getelementptr [4 x i8], ptr %i.acx, i64 %i.aky
  %i.ali = load float, ptr %i.alh, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 4 uses
  %i.alj = getelementptr [4 x i8], ptr %i.acx, i64 %i.akx
  %i.alk = load float, ptr %i.alj, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 4 uses
  %i.all = getelementptr [4 x i8], ptr %i.acy, i64 %i.aky
  %i.alm = load float, ptr %i.all, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 4 uses
  %i.aln = getelementptr [4 x i8], ptr %i.acy, i64 %i.akx
  %i.alo = load float, ptr %i.aln, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 4 uses
  %i.alp = icmp eq i32 %i.akm, 1
  br i1 %i.alp, label %.thread.i.i, label %bb.ev

.thread.i.i:                                      ; preds = %bb.eu
  %i.alq = fcmp reassoc nsz arcp contract afn ogt float %i.akp, %i.ace
  %i.alr = zext i1 %i.alq to i32
  br label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.als = fadd reassoc nsz arcp contract afn float %i.alc, %i.ala
  %i.alt = fadd reassoc nsz arcp contract afn float %i.als, %i.ale
  %i.alu = fadd reassoc nsz arcp contract afn float %i.alt, %i.alg
  %i.alv = fmul reassoc nsz arcp contract afn float %i.alu, 2.500000e-01 ; 2 uses
  %i.alw = fcmp reassoc nsz arcp contract afn ogt float %i.ala, %i.acc
  %i.alx = fcmp reassoc nsz arcp contract afn ogt float %i.alc, %i.acc
  %or.cond204.i.i = select i1 %i.alw, i1 true, i1 %i.alx
  %i.aly = fcmp reassoc nsz arcp contract afn ogt float %i.alg, %i.acc
  %or.cond205.i.i = select i1 %or.cond204.i.i, i1 true, i1 %i.aly
  %i.alz = fcmp reassoc nsz arcp contract afn ogt float %i.ale, %i.acc
  %narrow.i.i = select i1 %or.cond205.i.i, i1 true, i1 %i.alz
  %i.ama = zext i1 %narrow.i.i to i32             ; 2 uses
  %i.amb = icmp eq i32 %i.akm, 0
  br i1 %i.amb, label %.thread224.i.i, label %bb.ew

.thread224.i.i:                                   ; preds = %bb.ev
  %i.amc = fcmp reassoc nsz arcp contract afn ogt float %i.akp, %i.acd
  %i.amd = zext i1 %i.amc to i32
  %.pre255.i.i = or disjoint i64 %i.aki, %i.adb
  %.pre257.i.i = trunc nuw nsw i64 %.pre255.i.i to i32
  %.pre258.i.i = shl nuw nsw i32 %.pre257.i.i, 1
  br label %bb.fe

bb.ew:                                            ; preds = %bb.ev, %.thread.i.i
  %.0180223.i.i = phi i32 [ %i.alr, %.thread.i.i ], [ %i.ama, %bb.ev ] ; 2 uses
  %.0186221.i.i = phi float [ %i.akp, %.thread.i.i ], [ %i.alv, %bb.ev ] ; 2 uses
  %i.ame = or disjoint i64 %i.aki, %i.adb
  %.tr.i210.i.i = trunc nuw nsw i64 %i.ame to i32
  %i.amf = shl nuw nsw i32 %.tr.i210.i.i, 1       ; 2 uses
  %i.amg = shl nuw i32 3, %i.amf
  %i.amh = and i32 %i.amg, %i.zv
  %i.ami = icmp eq i32 %i.amh, 0
  br i1 %i.ami, label %bb.ex, label %bb.ez

bb.ex:                                            ; preds = %bb.ew
  %i.amj = or disjoint i64 %i.aki, %i.add
  %.tr.i211.i.i = trunc nuw nsw i64 %i.amj to i32
  %i.amk = shl nuw nsw i32 %.tr.i211.i.i, 1
  %i.aml = shl nuw i32 3, %i.amk
  %i.amm = and i32 %i.aml, %i.zv
  %i.amn = icmp eq i32 %i.amm, 0
  br i1 %i.amn, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.amo = fadd reassoc nsz arcp contract afn float %i.alc, %i.ala
  %i.amp = fmul reassoc nsz arcp contract afn float %i.amo, 5.000000e-01
  %i.amq = fcmp reassoc nsz arcp contract afn ogt float %i.ala, %i.ach
  br label %bb.fc

bb.ez:                                            ; preds = %bb.ex, %bb.ew
  %i.amr = and i64 %i.akx, 1
  %i.ams = or disjoint i64 %i.amr, %i.acp
  %.tr.i212.i.i = trunc nuw nsw i64 %i.ams to i32
  %i.amt = shl nuw nsw i32 %.tr.i212.i.i, 1
  %i.amu = shl nuw i32 3, %i.amt
  %i.amv = and i32 %i.amu, %i.zv
  %i.amw = icmp eq i32 %i.amv, 0
  br i1 %i.amw, label %bb.fa, label %._crit_edge249.i.i

bb.fa:                                            ; preds = %bb.ez
  %i.amx = and i64 %i.aky, 1
  %i.amy = or disjoint i64 %i.amx, %i.acp
  %.tr.i213.i.i = trunc nuw nsw i64 %i.amy to i32
  %i.amz = shl nuw nsw i32 %.tr.i213.i.i, 1
  %i.ana = shl nuw i32 3, %i.amz
  %i.anb = and i32 %i.ana, %i.zv
  %i.anc = icmp eq i32 %i.anb, 0
  br i1 %i.anc, label %bb.fb, label %._crit_edge249.i.i

bb.fb:                                            ; preds = %bb.fa
  %i.and = fadd reassoc nsz arcp contract afn float %i.alg, %i.ale
  %i.ane = fmul reassoc nsz arcp contract afn float %i.and, 5.000000e-01
  %i.anf = fcmp reassoc nsz arcp contract afn ogt float %i.ale, %i.acg
  br label %bb.fc

._crit_edge249.i.i:                               ; preds = %bb.ez, %bb.fa
  %i.ang = fadd reassoc nsz arcp contract afn float %i.alk, %i.ali
  %i.anh = fadd reassoc nsz arcp contract afn float %i.ang, %i.alm
  %i.ani = fadd reassoc nsz arcp contract afn float %i.anh, %i.alo
  %i.anj = fmul reassoc nsz arcp contract afn float %i.ani, 2.500000e-01
  %i.ank = fcmp reassoc nsz arcp contract afn ogt float %i.alk, %i.acf
  %i.anl = fcmp reassoc nsz arcp contract afn ogt float %i.ali, %i.acf
  %or.cond206.i.i = select i1 %i.ank, i1 true, i1 %i.anl
  %i.anm = fcmp reassoc nsz arcp contract afn ogt float %i.alo, %i.acf
  %or.cond207.i.i = select i1 %or.cond206.i.i, i1 true, i1 %i.anm
  br label %bb.fc

bb.fc:                                            ; preds = %._crit_edge249.i.i, %bb.fb, %bb.ey
  %.sink508 = phi float [ %i.alm, %._crit_edge249.i.i ], [ %i.alg, %bb.fb ], [ %i.alc, %bb.ey ]
  %or.cond207.i.i.sink = phi i1 [ %or.cond207.i.i, %._crit_edge249.i.i ], [ %i.anf, %bb.fb ], [ %i.amq, %bb.ey ]
  %.0188.i.i = phi nsz float [ %i.anj, %._crit_edge249.i.i ], [ %i.ane, %bb.fb ], [ %i.amp, %bb.ey ] ; 2 uses
  %i.ann = fcmp reassoc nsz arcp contract afn ogt float %.sink508, %i.aci
  %narrow233.i.i = select i1 %or.cond207.i.i.sink, i1 true, i1 %i.ann
  %.0182.i.i = zext i1 %narrow233.i.i to i32      ; 2 uses
  %i.ano = icmp eq i32 %i.akm, 2
  br i1 %i.ano, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.anp = fcmp reassoc nsz arcp contract afn ogt float %i.akp, %i.zn
  %i.anq = zext i1 %i.anp to i32
  br label %bb.fk

bb.fe:                                            ; preds = %bb.fc, %.thread224.i.i
  %.pre-phi259.i.i = phi i32 [ %.pre258.i.i, %.thread224.i.i ], [ %i.amf, %bb.fc ]
  %.0182232.i.i = phi i32 [ %i.amd, %.thread224.i.i ], [ %.0182.i.i, %bb.fc ] ; 3 uses
  %.0188231.i.i = phi float [ %i.akp, %.thread224.i.i ], [ %.0188.i.i, %bb.fc ] ; 3 uses
  %.0186220230.i.i = phi float [ %i.alv, %.thread224.i.i ], [ %.0186221.i.i, %bb.fc ] ; 3 uses
  %.0180222229.i.i = phi i32 [ %i.ama, %.thread224.i.i ], [ %.0180223.i.i, %bb.fc ] ; 3 uses
  %i.anr = lshr i32 %i.zv, %.pre-phi259.i.i
  %i.ans = and i32 %i.anr, 3
  %i.ant = icmp eq i32 %i.ans, 2
  br i1 %i.ant, label %bb.ff, label %bb.fh

bb.ff:                                            ; preds = %bb.fe
  %i.anu = or disjoint i64 %i.aki, %i.add
  %.tr.i215.i.i = trunc nuw nsw i64 %i.anu to i32
  %i.anv = shl nuw nsw i32 %.tr.i215.i.i, 1
  %i.anw = lshr i32 %i.zv, %i.anv
  %i.anx = and i32 %i.anw, 3
  %i.any = icmp eq i32 %i.anx, 2
  br i1 %i.any, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.anz = fadd reassoc nsz arcp contract afn float %i.alc, %i.ala
  %i.aoa = fmul reassoc nsz arcp contract afn float %i.anz, 5.000000e-01
end_hunk_0
