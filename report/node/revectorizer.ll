inline.NumInlined: 2710
inline.NumDeleted: 1072
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN2v88internal8compiler12Revectorizer13VectorizeTreeEPNS1_8PackNodeE:bb.a
  %.not181 = icmp eq i32 %i.aeb, 0
  br i1 %.not181, label %bb.fc, label %bb.ez

bb.ez:                                            ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE6resizeEm.exit246
  %i.aee = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aef = load ptr, ptr %i.aee, align 8          ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 16 ; 3 uses
  %i.aeh = load i64, ptr %i.aeg, align 8
  %i.aei = call i64 @_ZNK2v88internal8compiler19SourcePositionTable17GetSourcePositionEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(72) %i.aef, ptr noundef %i.adu) #16 ; 2 uses
  %.not.i.i247 = icmp eq i64 %i.aei, 0
  br i1 %.not.i.i247, label %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_PNS1_4NodeE.exit, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  store i64 %i.aei, ptr %i.aeg, align 8
  br label %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_PNS1_4NodeE.exit

_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_PNS1_4NodeE.exit: ; preds = %bb.ez, %bb.fa
  %i.aej = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aek = load ptr, ptr %i.aej, align 8
  %i.ael = load ptr, ptr %i.as, align 8
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 16
  %i.aen = load ptr, ptr %i.aem, align 8
  %i.aeo = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8Int64AddEv(ptr noundef nonnull align 8 dereferenceable(40) %i.aen) #16
  %i.aep = getelementptr inbounds nuw i8, ptr %i.adu, i64 20
  %i.aeq = load i32, ptr %i.aep, align 4
  %i.aer = and i32 %i.aeq, 251658240
  %.not.i.i248 = icmp eq i32 %i.aer, 251658240
  %i.aes = ptrtoint ptr %i.adu to i64
  %i.aet = add i64 %i.aes, 32
  %i.aeu = inttoptr i64 %i.aet to ptr             ; 3 uses
  br i1 %.not.i.i248, label %bb.fb, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit250

bb.fb:                                            ; preds = %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_PNS1_4NodeE.exit
  %i.aev = load ptr, ptr %i.aeu, align 8
  %i.aew = ptrtoint ptr %i.aev to i64
  %i.aex = add i64 %i.aew, 16
  %i.aey = inttoptr i64 %i.aex to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit250

_ZNK2v88internal8compiler4Node7InputAtEi.exit250: ; preds = %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_PNS1_4NodeE.exit, %bb.fb
  %.sink.i.i249 = phi ptr [ %i.aey, %bb.fb ], [ %i.aeu, %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_PNS1_4NodeE.exit ]
  %i.aez = load ptr, ptr %.sink.i.i249, align 8
  %i.afa = load ptr, ptr %i.as, align 8
  %i.afb = sext i32 %i.adh to i64
  %i.afc = call noundef ptr @_ZN2v88internal8compiler12MachineGraph13Int64ConstantEl(ptr noundef nonnull align 8 dereferenceable(800) %i.afa, i64 noundef %i.afb) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %i.aez, ptr %4, align 8
  %i.afd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.afc, ptr %i.afd, align 8
  %i.afe = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.aek, ptr noundef %i.aeo, i32 noundef 2, ptr noundef nonnull %4, i1 noundef zeroext false) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.aff = load ptr, ptr %5, align 8
  store ptr %i.afe, ptr %i.aff, align 8
  store i64 %i.aeh, ptr %i.aeg, align 8
  br label %bb.fe

bb.fc:                                            ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE6resizeEm.exit246
  %i.afg = getelementptr inbounds nuw i8, ptr %i.adu, i64 20
  %i.afh = load i32, ptr %i.afg, align 4
  %i.afi = and i32 %i.afh, 251658240
  %.not.i.i251 = icmp eq i32 %i.afi, 251658240
  %i.afj = ptrtoint ptr %i.adu to i64
  %i.afk = add i64 %i.afj, 32
  %i.afl = inttoptr i64 %i.afk to ptr             ; 3 uses
  br i1 %.not.i.i251, label %bb.fd, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit253

bb.fd:                                            ; preds = %bb.fc
  %i.afm = load ptr, ptr %i.afl, align 8
  %i.afn = ptrtoint ptr %i.afm to i64
  %i.afo = add i64 %i.afn, 16
  %i.afp = inttoptr i64 %i.afo to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit253

_ZNK2v88internal8compiler4Node7InputAtEi.exit253: ; preds = %bb.fc, %bb.fd
  %.sink.i.i252 = phi ptr [ %i.afp, %bb.fd ], [ %i.afl, %bb.fc ]
  %i.afq = load ptr, ptr %.sink.i.i252, align 8
  store ptr %i.afq, ptr %i.aec, align 8
  br label %bb.fe

bb.fe:                                            ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit253, %_ZNK2v88internal8compiler4Node7InputAtEi.exit250
  %.pre-phi393 = phi ptr [ %i.afl, %_ZNK2v88internal8compiler4Node7InputAtEi.exit253 ], [ %i.aeu, %_ZNK2v88internal8compiler4Node7InputAtEi.exit250 ] ; 6 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %i.adu, i64 20 ; 3 uses
  %i.afs = load i32, ptr %i.afr, align 4
  %i.aft = and i32 %i.afs, 251658240
  %.not.i.i254 = icmp eq i32 %i.aft, 251658240
  br i1 %.not.i.i254, label %bb.ff, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit256

bb.ff:                                            ; preds = %bb.fe
  %i.afu = load ptr, ptr %.pre-phi393, align 8
  %i.afv = ptrtoint ptr %i.afu to i64
  %i.afw = add i64 %i.afv, 16
  %i.afx = inttoptr i64 %i.afw to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit256

_ZNK2v88internal8compiler4Node7InputAtEi.exit256: ; preds = %bb.fe, %bb.ff
  %.sink.i.i255 = phi ptr [ %i.afx, %bb.ff ], [ %.pre-phi393, %bb.fe ]
  %i.afy = getelementptr inbounds nuw i8, ptr %.sink.i.i255, i64 8
  %i.afz = load ptr, ptr %i.afy, align 8
  %i.aga = load ptr, ptr %5, align 8              ; 3 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 8
  store ptr %i.afz, ptr %i.agb, align 8
  %i.agc = load i32, ptr %i.afr, align 4
  %i.agd = and i32 %i.agc, 251658240
  %.not.i.i257 = icmp eq i32 %i.agd, 251658240
  br i1 %.not.i.i257, label %bb.fg, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit259

bb.fg:                                            ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit256
  %i.age = load ptr, ptr %.pre-phi393, align 8
  %i.agf = ptrtoint ptr %i.age to i64
  %i.agg = add i64 %i.agf, 16
  %i.agh = inttoptr i64 %i.agg to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit259

_ZNK2v88internal8compiler4Node7InputAtEi.exit259: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit256, %bb.fg
  %.sink.i.i258 = phi ptr [ %i.agh, %bb.fg ], [ %.pre-phi393, %_ZNK2v88internal8compiler4Node7InputAtEi.exit256 ]
  %i.agi = getelementptr inbounds nuw i8, ptr %.sink.i.i258, i64 16
  %i.agj = load ptr, ptr %i.agi, align 8
  %i.agk = getelementptr inbounds nuw i8, ptr %i.aga, i64 16
  store ptr %i.agj, ptr %i.agk, align 8
  %i.agl = load i32, ptr %i.afr, align 4
  %i.agm = and i32 %i.agl, 251658240
  %.not.i.i260 = icmp eq i32 %i.agm, 251658240
  br i1 %.not.i.i260, label %bb.fh, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit262

bb.fh:                                            ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit259
  %i.agn = load ptr, ptr %.pre-phi393, align 8
  %i.ago = ptrtoint ptr %i.agn to i64
  %i.agp = add i64 %i.ago, 16
  %i.agq = inttoptr i64 %i.agp to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit262

_ZNK2v88internal8compiler4Node7InputAtEi.exit262: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit259, %bb.fh
  %.sink.i.i261 = phi ptr [ %i.agq, %bb.fh ], [ %.pre-phi393, %_ZNK2v88internal8compiler4Node7InputAtEi.exit259 ]
  %i.agr = getelementptr inbounds nuw i8, ptr %.sink.i.i261, i64 24
  %i.ags = load ptr, ptr %i.agr, align 8
  %i.agt = getelementptr inbounds nuw i8, ptr %i.aga, i64 24
  store ptr %i.ags, ptr %i.agt, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.fw

_ZN2v88internal8compiler12_GLOBAL__N_17IsSplatINS0_10ZoneVectorIPNS1_4NodeEEEEEbRKT_.exit: ; preds = %bb.et
  %i.agu = load ptr, ptr %i.j, align 8
  %i.agv = call noundef nonnull align 1 dereferenceable(16) ptr @_ZN2v88internal8compiler24S128ImmediateParameterOfEPKNS1_8OperatorE(ptr noundef %i.agu) #16 ; 37 uses
  %i.agw = ptrtoaddr ptr %i.agv to i64            ; 2 uses
  %i.agx = load ptr, ptr %i.l, align 8
  %i.agy = call noundef nonnull align 1 dereferenceable(16) ptr @_ZN2v88internal8compiler24S128ImmediateParameterOfEPKNS1_8OperatorE(ptr noundef %i.agx) #16 ; 37 uses
  %i.agz = ptrtoaddr ptr %i.agy to i64            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.aha = load i32, ptr %i.w, align 4
  %i.ahb = and i32 %i.aha, 251658240
  %.not.i.i263 = icmp eq i32 %i.ahb, 251658240
  %i.ahc = ptrtoint ptr %i.j to i64
  %i.ahd = add i64 %i.ahc, 32
  %i.ahe = inttoptr i64 %i.ahd to ptr             ; 2 uses
  br i1 %.not.i.i263, label %bb.fi, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit268

bb.fi:                                            ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_17IsSplatINS0_10ZoneVectorIPNS1_4NodeEEEEEbRKT_.exit
  %i.ahf = load ptr, ptr %i.ahe, align 8
  %i.ahg = ptrtoint ptr %i.ahf to i64
  %i.ahh = add i64 %i.ahg, 16
  %i.ahi = inttoptr i64 %i.ahh to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit268

_ZNK2v88internal8compiler4Node7InputAtEi.exit268: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_17IsSplatINS0_10ZoneVectorIPNS1_4NodeEEEEEbRKT_.exit, %bb.fi
  %.in = phi ptr [ %i.ahi, %bb.fi ], [ %i.ahe, %_ZN2v88internal8compiler12_GLOBAL__N_17IsSplatINS0_10ZoneVectorIPNS1_4NodeEEEEEbRKT_.exit ] ; 2 uses
  %i.ahj = load ptr, ptr %.in, align 8
  %i.ahk = getelementptr inbounds nuw i8, ptr %.in, i64 8
  %i.ahl = load ptr, ptr %i.ahk, align 8
  %i.ahm = icmp eq ptr %i.ahj, %i.ahl
  br i1 %i.ahm, label %bb.fj, label %vector.memcheck

bb.fj:                                            ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit268
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.aho = load i32, ptr %i.ahn, align 4
  %i.ahp = and i32 %i.aho, 251658240
  %.not.i.i269 = icmp eq i32 %i.ahp, 251658240
  %i.ahq = ptrtoint ptr %i.l to i64
  %i.ahr = add i64 %i.ahq, 32
  %i.ahs = inttoptr i64 %i.ahr to ptr             ; 2 uses
  br i1 %.not.i.i269, label %bb.fk, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit274

bb.fk:                                            ; preds = %bb.fj
  %i.aht = load ptr, ptr %i.ahs, align 8
  %i.ahu = ptrtoint ptr %i.aht to i64
  %i.ahv = add i64 %i.ahu, 16
  %i.ahw = inttoptr i64 %i.ahv to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit274

_ZNK2v88internal8compiler4Node7InputAtEi.exit274: ; preds = %bb.fj, %bb.fk
  %.in328 = phi ptr [ %i.ahw, %bb.fk ], [ %i.ahs, %bb.fj ] ; 2 uses
  %i.ahx = load ptr, ptr %.in328, align 8
  %i.ahy = getelementptr inbounds nuw i8, ptr %.in328, i64 8
  %i.ahz = load ptr, ptr %i.ahy, align 8
  %i.aia = icmp eq ptr %i.ahx, %i.ahz
  br i1 %i.aia, label %.preheader332.preheader, label %vector.memcheck

.preheader332.preheader:                          ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit274
  %i.aib = add nuw i64 %i.agw, 16
  %i.aic = add nuw i64 %i.d, 32                   ; 2 uses
  %i.aid = add nuw i64 %i.agz, 16
  %rt.bound0 = icmp ugt i64 %i.aic, %i.agz
  %rt.bound1 = icmp ugt i64 %i.aid, %i.d
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.bound0452 = icmp ugt i64 %i.aib, %i.d
  %rt.bound1453 = icmp ugt i64 %i.aic, %i.agw
  %rt.conflict454 = and i1 %rt.bound0452, %rt.bound1453
  %rt.conflict.all = or i1 %rt.conflict, %rt.conflict454
  %rt.guard = freeze i1 %rt.conflict.all
  br i1 %rt.guard, label %.preheader332.preheader.rtscalar, label %.preheader332.preheader.rtvec

vector.memcheck:                                  ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit268, %_ZNK2v88internal8compiler4Node7InputAtEi.exit274
  %scevgep = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %scevgep446 = getelementptr inbounds nuw i8, ptr %i.agv, i64 16
  %scevgep447 = getelementptr inbounds nuw i8, ptr %i.agy, i64 16
  %bound0 = icmp ult ptr %i.c, %scevgep446
  %bound1 = icmp ult ptr %i.agv, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0448 = icmp ult ptr %i.c, %scevgep447
  %bound1449 = icmp ult ptr %i.agy, %scevgep
  %found.conflict450 = and i1 %bound0448, %bound1449
  %conflict.rdx = or i1 %found.conflict, %found.conflict450
  br i1 %conflict.rdx, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %wide.load = load <16 x i8>, ptr %i.agv, align 1, !alias.scope !54 ; 3 uses
  %i.aie = icmp ult <16 x i8> %wide.load, splat (i8 16)
  %i.aif = add <16 x i8> %wide.load, splat (i8 16)
  %i.aig = select <16 x i1> %i.aie, <16 x i8> %wide.load, <16 x i8> %i.aif
  store <16 x i8> %i.aig, ptr %i.c, align 16, !alias.scope !57, !noalias !59
  %wide.load451 = load <16 x i8>, ptr %i.agy, align 1, !alias.scope !61 ; 3 uses
  %i.aih = icmp ult <16 x i8> %wide.load451, splat (i8 16)
  %i.aii = or disjoint <16 x i8> %wide.load451, splat (i8 16)
  %i.aij = add <16 x i8> %wide.load451, splat (i8 32)
  %i.aik = select <16 x i1> %i.aih, <16 x i8> %i.aii, <16 x i8> %i.aij
  %i.ail = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <16 x i8> %i.aik, ptr %i.ail, align 16, !alias.scope !57, !noalias !59
  br label %.loopexit333

scalar.ph:                                        ; preds = %vector.memcheck
  %i.aim = load i8, ptr %i.agv, align 1           ; 3 uses
  %i.ain = icmp ult i8 %i.aim, 16
  %i.aio = add i8 %i.aim, 16
  %spec.select = select i1 %i.ain, i8 %i.aim, i8 %i.aio
  store i8 %spec.select, ptr %i.c, align 16
  %i.aip = load i8, ptr %i.agy, align 1           ; 3 uses
  %i.aiq = icmp ult i8 %i.aip, 16
  %i.air = or disjoint i8 %i.aip, 16
  %i.ais = add i8 %i.aip, 32
  %.sink = select i1 %i.aiq, i8 %i.air, i8 %i.ais
  %i.ait = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 %.sink, ptr %i.ait, align 16
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.agv, i64 1
  %i.aiv = load i8, ptr %i.aiu, align 1           ; 3 uses
  %i.aiw = icmp ult i8 %i.aiv, 16
  %i.aix = add i8 %i.aiv, 16
  %spec.select.1 = select i1 %i.aiw, i8 %i.aiv, i8 %i.aix
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %spec.select.1, ptr %i.aiy, align 1
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.agy, i64 1
  %i.aja = load i8, ptr %i.aiz, align 1           ; 3 uses
  %i.ajb = icmp ult i8 %i.aja, 16
  %i.ajc = or disjoint i8 %i.aja, 16
  %i.ajd = add i8 %i.aja, 32
  %.sink.1 = select i1 %i.ajb, i8 %i.ajc, i8 %i.ajd
  %i.aje = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  store i8 %.sink.1, ptr %i.aje, align 1
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.agv, i64 2
  %i.ajg = load i8, ptr %i.ajf, align 1           ; 3 uses
  %i.ajh = icmp ult i8 %i.ajg, 16
  %i.aji = add i8 %i.ajg, 16
  %spec.select.2 = select i1 %i.ajh, i8 %i.ajg, i8 %i.aji
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %spec.select.2, ptr %i.ajj, align 2
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.agy, i64 2
  %i.ajl = load i8, ptr %i.ajk, align 1           ; 3 uses
  %i.ajm = icmp ult i8 %i.ajl, 16
  %i.ajn = or disjoint i8 %i.ajl, 16
  %i.ajo = add i8 %i.ajl, 32
  %.sink.2 = select i1 %i.ajm, i8 %i.ajn, i8 %i.ajo
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  store i8 %.sink.2, ptr %i.ajp, align 2
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.agv, i64 3
  %i.ajr = load i8, ptr %i.ajq, align 1           ; 3 uses
  %i.ajs = icmp ult i8 %i.ajr, 16
  %i.ajt = add i8 %i.ajr, 16
  %spec.select.3 = select i1 %i.ajs, i8 %i.ajr, i8 %i.ajt
  %i.aju = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 %spec.select.3, ptr %i.aju, align 1
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.agy, i64 3
  %i.ajw = load i8, ptr %i.ajv, align 1           ; 3 uses
  %i.ajx = icmp ult i8 %i.ajw, 16
  %i.ajy = or disjoint i8 %i.ajw, 16
  %i.ajz = add i8 %i.ajw, 32
  %.sink.3 = select i1 %i.ajx, i8 %i.ajy, i8 %i.ajz
  %i.aka = getelementptr inbounds nuw i8, ptr %i.c, i64 19
  store i8 %.sink.3, ptr %i.aka, align 1
  %i.akb = getelementptr inbounds nuw i8, ptr %i.agv, i64 4
  %i.akc = load i8, ptr %i.akb, align 1           ; 3 uses
  %i.akd = icmp ult i8 %i.akc, 16
  %i.ake = add i8 %i.akc, 16
  %spec.select.4 = select i1 %i.akd, i8 %i.akc, i8 %i.ake
  %i.akf = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i8 %spec.select.4, ptr %i.akf, align 4
  %i.akg = getelementptr inbounds nuw i8, ptr %i.agy, i64 4
  %i.akh = load i8, ptr %i.akg, align 1           ; 3 uses
  %i.aki = icmp ult i8 %i.akh, 16
  %i.akj = or disjoint i8 %i.akh, 16
  %i.akk = add i8 %i.akh, 32
  %.sink.4 = select i1 %i.aki, i8 %i.akj, i8 %i.akk
  %i.akl = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i8 %.sink.4, ptr %i.akl, align 4
  %i.akm = getelementptr inbounds nuw i8, ptr %i.agv, i64 5
  %i.akn = load i8, ptr %i.akm, align 1           ; 3 uses
  %i.ako = icmp ult i8 %i.akn, 16
  %i.akp = add i8 %i.akn, 16
  %spec.select.5 = select i1 %i.ako, i8 %i.akn, i8 %i.akp
  %i.akq = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store i8 %spec.select.5, ptr %i.akq, align 1
  %i.akr = getelementptr inbounds nuw i8, ptr %i.agy, i64 5
  %i.aks = load i8, ptr %i.akr, align 1           ; 3 uses
  %i.akt = icmp ult i8 %i.aks, 16
  %i.aku = or disjoint i8 %i.aks, 16
  %i.akv = add i8 %i.aks, 32
  %.sink.5 = select i1 %i.akt, i8 %i.aku, i8 %i.akv
  %i.akw = getelementptr inbounds nuw i8, ptr %i.c, i64 21
  store i8 %.sink.5, ptr %i.akw, align 1
  %i.akx = getelementptr inbounds nuw i8, ptr %i.agv, i64 6
  %i.aky = load i8, ptr %i.akx, align 1           ; 3 uses
  %i.akz = icmp ult i8 %i.aky, 16
  %i.ala = add i8 %i.aky, 16
  %spec.select.6 = select i1 %i.akz, i8 %i.aky, i8 %i.ala
  %i.alb = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  store i8 %spec.select.6, ptr %i.alb, align 2
  %i.alc = getelementptr inbounds nuw i8, ptr %i.agy, i64 6
  %i.ald = load i8, ptr %i.alc, align 1           ; 3 uses
  %i.ale = icmp ult i8 %i.ald, 16
  %i.alf = or disjoint i8 %i.ald, 16
  %i.alg = add i8 %i.ald, 32
  %.sink.6 = select i1 %i.ale, i8 %i.alf, i8 %i.alg
  %i.alh = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i8 %.sink.6, ptr %i.alh, align 2
  %i.ali = getelementptr inbounds nuw i8, ptr %i.agv, i64 7
  %i.alj = load i8, ptr %i.ali, align 1           ; 3 uses
  %i.alk = icmp ult i8 %i.alj, 16
  %i.all = add i8 %i.alj, 16
  %spec.select.7 = select i1 %i.alk, i8 %i.alj, i8 %i.all
  %i.alm = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  store i8 %spec.select.7, ptr %i.alm, align 1
  %i.aln = getelementptr inbounds nuw i8, ptr %i.agy, i64 7
  %i.alo = load i8, ptr %i.aln, align 1           ; 3 uses
  %i.alp = icmp ult i8 %i.alo, 16
  %i.alq = or disjoint i8 %i.alo, 16
  %i.alr = add i8 %i.alo, 32
  %.sink.7 = select i1 %i.alp, i8 %i.alq, i8 %i.alr
  %i.als = getelementptr inbounds nuw i8, ptr %i.c, i64 23
  store i8 %.sink.7, ptr %i.als, align 1
  %i.alt = getelementptr inbounds nuw i8, ptr %i.agv, i64 8
  %i.alu = load i8, ptr %i.alt, align 1           ; 3 uses
  %i.alv = icmp ult i8 %i.alu, 16
  %i.alw = add i8 %i.alu, 16
  %spec.select.8 = select i1 %i.alv, i8 %i.alu, i8 %i.alw
  %i.alx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %spec.select.8, ptr %i.alx, align 8
  %i.aly = getelementptr inbounds nuw i8, ptr %i.agy, i64 8
  %i.alz = load i8, ptr %i.aly, align 1           ; 3 uses
  %i.ama = icmp ult i8 %i.alz, 16
  %i.amb = or disjoint i8 %i.alz, 16
  %i.amc = add i8 %i.alz, 32
  %.sink.8 = select i1 %i.ama, i8 %i.amb, i8 %i.amc
  %i.amd = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 %.sink.8, ptr %i.amd, align 8
  %i.ame = getelementptr inbounds nuw i8, ptr %i.agv, i64 9
  %i.amf = load i8, ptr %i.ame, align 1           ; 3 uses
  %i.amg = icmp ult i8 %i.amf, 16
  %i.amh = add i8 %i.amf, 16
  %spec.select.9 = select i1 %i.amg, i8 %i.amf, i8 %i.amh
  %i.ami = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  store i8 %spec.select.9, ptr %i.ami, align 1
  %i.amj = getelementptr inbounds nuw i8, ptr %i.agy, i64 9
  %i.amk = load i8, ptr %i.amj, align 1           ; 3 uses
  %i.aml = icmp ult i8 %i.amk, 16
  %i.amm = or disjoint i8 %i.amk, 16
  %i.amn = add i8 %i.amk, 32
  %.sink.9 = select i1 %i.aml, i8 %i.amm, i8 %i.amn
  %i.amo = getelementptr inbounds nuw i8, ptr %i.c, i64 25
  store i8 %.sink.9, ptr %i.amo, align 1
  %i.amp = getelementptr inbounds nuw i8, ptr %i.agv, i64 10
  %i.amq = load i8, ptr %i.amp, align 1           ; 3 uses
  %i.amr = icmp ult i8 %i.amq, 16
  %i.ams = add i8 %i.amq, 16
  %spec.select.10 = select i1 %i.amr, i8 %i.amq, i8 %i.ams
  %i.amt = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  store i8 %spec.select.10, ptr %i.amt, align 2
  %i.amu = getelementptr inbounds nuw i8, ptr %i.agy, i64 10
  %i.amv = load i8, ptr %i.amu, align 1           ; 3 uses
  %i.amw = icmp ult i8 %i.amv, 16
  %i.amx = or disjoint i8 %i.amv, 16
  %i.amy = add i8 %i.amv, 32
  %.sink.10 = select i1 %i.amw, i8 %i.amx, i8 %i.amy
  %i.amz = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  store i8 %.sink.10, ptr %i.amz, align 2
  %i.ana = getelementptr inbounds nuw i8, ptr %i.agv, i64 11
  %i.anb = load i8, ptr %i.ana, align 1           ; 3 uses
  %i.anc = icmp ult i8 %i.anb, 16
  %i.and = add i8 %i.anb, 16
end_hunk_0
