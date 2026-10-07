Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_highlights?download=true
inline.NumInlined: 258
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 95
begin_hunk_0_@dt_segments_combine:bb.a
  br label %vec.epilog.vector.body156

vec.epilog.vector.body156:                        ; preds = %vec.epilog.vector.body156, %vec.epilog.ph154
  %index157 = phi i64 [ %vec.epilog.resume.val149, %vec.epilog.ph154 ], [ %index.next158, %vec.epilog.vector.body156 ] ; 2 uses
  %i.abq = getelementptr [4 x i8], ptr %i.abg, i64 %index157 ; 2 uses
  %i.abr = getelementptr [4 x i8], ptr %i.abq, i64 %i.aaa
  store <8 x i32> splat (i32 1), ptr %i.abr, align 4, !tbaa !15
  store <8 x i32> splat (i32 1), ptr %i.abq, align 4, !tbaa !15
  %index.next158 = add nuw i64 %index157, 8       ; 2 uses
  %i.abs = icmp eq i64 %index.next158, %n.vec155
  br i1 %i.abs, label %vec.epilog.middle.block159, label %vec.epilog.vector.body156, !llvm.loop !190

vec.epilog.middle.block159:                       ; preds = %vec.epilog.vector.body156
  br i1 %cmp.n160, label %._crit_edge38.i45, label %vec.epilog.scalar.ph151.preheader

vec.epilog.scalar.ph151.preheader:                ; preds = %iter.check150, %vec.epilog.iter.check152, %vec.epilog.middle.block159
  %.035.i43.ph = phi i64 [ 0, %iter.check150 ], [ %n.vec143, %vec.epilog.iter.check152 ], [ %n.vec155, %vec.epilog.middle.block159 ] ; 3 uses
  br i1 %lcmp.mod1095.not, label %vec.epilog.scalar.ph151.prol.loopexit, label %vec.epilog.scalar.ph151.prol

vec.epilog.scalar.ph151.prol:                     ; preds = %vec.epilog.scalar.ph151.preheader, %vec.epilog.scalar.ph151.prol
  %.035.i43.prol = phi i64 [ %i.abv, %vec.epilog.scalar.ph151.prol ], [ %.035.i43.ph, %vec.epilog.scalar.ph151.preheader ] ; 2 uses
  %prol.iter1096 = phi i64 [ %prol.iter1096.next, %vec.epilog.scalar.ph151.prol ], [ 0, %vec.epilog.scalar.ph151.preheader ]
  %i.abt = getelementptr [4 x i8], ptr %i.abg, i64 %.035.i43.prol ; 2 uses
  %i.abu = getelementptr [4 x i8], ptr %i.abt, i64 %i.aaa
  store i32 1, ptr %i.abu, align 4, !tbaa !15
  store i32 1, ptr %i.abt, align 4, !tbaa !15
  %i.abv = add nuw i64 %.035.i43.prol, 1          ; 2 uses
  %prol.iter1096.next = add i64 %prol.iter1096, 1 ; 2 uses
  %prol.iter1096.cmp.not = icmp eq i64 %prol.iter1096.next, %xtraiter1094
  br i1 %prol.iter1096.cmp.not, label %vec.epilog.scalar.ph151.prol.loopexit, label %vec.epilog.scalar.ph151.prol, !llvm.loop !191

vec.epilog.scalar.ph151.prol.loopexit:            ; preds = %vec.epilog.scalar.ph151.prol, %vec.epilog.scalar.ph151.preheader
  %.035.i43.unr = phi i64 [ %.035.i43.ph, %vec.epilog.scalar.ph151.preheader ], [ %i.abv, %vec.epilog.scalar.ph151.prol ]
  %i.abw = sub nsw i64 %.035.i43.ph, %i.p
  %i.abx = icmp ugt i64 %i.abw, -8
  br i1 %i.abx, label %._crit_edge38.i45, label %vec.epilog.scalar.ph151

._crit_edge38.i45:                                ; preds = %vec.epilog.scalar.ph151.prol.loopexit, %vec.epilog.scalar.ph151, %vec.epilog.middle.block159, %middle.block147
  %i.aby = add i64 %.03239.i42, 1                 ; 2 uses
  %i.abz = icmp ult i64 %i.aby, %i.q
  br i1 %i.abz, label %iter.check150, label %_intimage_borderfill.exit46

vec.epilog.scalar.ph151:                          ; preds = %vec.epilog.scalar.ph151.prol.loopexit, %vec.epilog.scalar.ph151
  %.035.i43 = phi i64 [ %i.acx, %vec.epilog.scalar.ph151 ], [ %.035.i43.unr, %vec.epilog.scalar.ph151.prol.loopexit ] ; 9 uses
  %i.aca = getelementptr [4 x i8], ptr %i.abg, i64 %.035.i43 ; 2 uses
  %i.acb = getelementptr [4 x i8], ptr %i.aca, i64 %i.aaa
  store i32 1, ptr %i.acb, align 4, !tbaa !15
  store i32 1, ptr %i.aca, align 4, !tbaa !15
  %i.acc = getelementptr [4 x i8], ptr %i.abg, i64 %.035.i43
  %i.acd = getelementptr i8, ptr %i.acc, i64 4    ; 2 uses
  %i.ace = getelementptr [4 x i8], ptr %i.acd, i64 %i.aaa
  store i32 1, ptr %i.ace, align 4, !tbaa !15
  store i32 1, ptr %i.acd, align 4, !tbaa !15
  %i.acf = getelementptr [4 x i8], ptr %i.abg, i64 %.035.i43
  %i.acg = getelementptr i8, ptr %i.acf, i64 8    ; 2 uses
  %i.ach = getelementptr [4 x i8], ptr %i.acg, i64 %i.aaa
  store i32 1, ptr %i.ach, align 4, !tbaa !15
  store i32 1, ptr %i.acg, align 4, !tbaa !15
  %i.aci = getelementptr [4 x i8], ptr %i.abg, i64 %.035.i43
  %i.acj = getelementptr i8, ptr %i.aci, i64 12   ; 2 uses
  %i.ack = getelementptr [4 x i8], ptr %i.acj, i64 %i.aaa
  store i32 1, ptr %i.ack, align 4, !tbaa !15
  store i32 1, ptr %i.acj, align 4, !tbaa !15
  %i.acl = getelementptr [4 x i8], ptr %i.abg, i64 %.035.i43
  %i.acm = getelementptr i8, ptr %i.acl, i64 16   ; 2 uses
  %i.acn = getelementptr [4 x i8], ptr %i.acm, i64 %i.aaa
  store i32 1, ptr %i.acn, align 4, !tbaa !15
  store i32 1, ptr %i.acm, align 4, !tbaa !15
  %i.aco = getelementptr [4 x i8], ptr %i.abg, i64 %.035.i43
  %i.acp = getelementptr i8, ptr %i.aco, i64 20   ; 2 uses
  %i.acq = getelementptr [4 x i8], ptr %i.acp, i64 %i.aaa
  store i32 1, ptr %i.acq, align 4, !tbaa !15
  store i32 1, ptr %i.acp, align 4, !tbaa !15
  %i.acr = getelementptr [4 x i8], ptr %i.abg, i64 %.035.i43
  %i.acs = getelementptr i8, ptr %i.acr, i64 24   ; 2 uses
  %i.act = getelementptr [4 x i8], ptr %i.acs, i64 %i.aaa
  store i32 1, ptr %i.act, align 4, !tbaa !15
  store i32 1, ptr %i.acs, align 4, !tbaa !15
  %i.acu = getelementptr [4 x i8], ptr %i.abg, i64 %.035.i43
  %i.acv = getelementptr i8, ptr %i.acu, i64 28   ; 2 uses
  %i.acw = getelementptr [4 x i8], ptr %i.acv, i64 %i.aaa
  store i32 1, ptr %i.acw, align 4, !tbaa !15
  store i32 1, ptr %i.acv, align 4, !tbaa !15
  %i.acx = add nuw i64 %.035.i43, 8               ; 2 uses
  %exitcond44.not.i44.7 = icmp eq i64 %i.acx, %i.p
  br i1 %exitcond44.not.i44.7, label %._crit_edge38.i45, label %vec.epilog.scalar.ph151, !llvm.loop !192

_intimage_borderfill.exit46:                      ; preds = %._crit_edge38.i45, %._crit_edge.i38, %.lr.ph41.i39
  br i1 %i.ag, label %.preheader.lr.ph.i47, label %_eroding.exit

.preheader.lr.ph.i47:                             ; preds = %_intimage_borderfill.exit46
  %i.acy = sub nsw i32 %i.c, %i.g                 ; 2 uses
  %i.acz = icmp slt i32 %i.g, %i.acy
  %i.ada = sext i32 %i.c to i64                   ; 34 uses
  %i.adb = shl nsw i64 %i.ada, 1                  ; 4 uses
  %i.adc = icmp slt i32 %1, 6                     ; 2 uses
  %i.add = mul nsw i64 %i.ada, 3                  ; 4 uses
  %i.ade = icmp samesign ult i32 %1, 7            ; 2 uses
  %i.adf = shl nsw i64 %i.ada, 2                  ; 23 uses
  %i.adg = icmp samesign ult i32 %1, 8            ; 2 uses
  %i.adh = mul nsw i64 %i.ada, 5                  ; 4 uses
  br i1 %i.acz, label %.preheader.lr.ph.split.i48, label %_eroding.exit

.preheader.lr.ph.split.i48:                       ; preds = %.preheader.lr.ph.i47
  %i.adi = icmp eq i32 %1, 4
  %wide.trip.count34.i = sext i32 %i.acy to i64   ; 2 uses
  %i.adj = add nsw i64 %i.ada, 1
  %i.adk = mul i64 %i.adj, %i.p
  %i.adl = shl i64 %i.adk, 2                      ; 83 uses
  %scevgep978 = getelementptr i8, ptr %i.a, i64 %i.adl ; 7 uses
  %i.adm = shl nsw i64 %i.q, 2                    ; 10 uses
  %i.adn = shl nsw i64 %i.p, 2                    ; 10 uses
  %i.ado = sub nsw i64 %i.adm, %i.adn
  %i.adp = mul i64 %i.ado, %i.ada                 ; 9 uses
  %i.adq = add nsw i64 %i.adf, -4
  %i.adr = mul i64 %i.adq, %i.p                   ; 53 uses
  br i1 %i.adi, label %.preheader.us.i58.preheader, label %.preheader.i49.preheader

.preheader.i49.preheader:                         ; preds = %.preheader.lr.ph.split.i48
  %i.ads = add i64 %i.adp, %i.adr                 ; 2 uses
  %scevgep164 = getelementptr i8, ptr %i.a, i64 %i.ads ; 3 uses
  %i.adt = mul nsw i64 %i.ada, 20                 ; 6 uses
  %i.adu = getelementptr i8, ptr %i.af, i64 %i.adl
  %i.adv = getelementptr i8, ptr %i.adu, i64 %i.adt
  %i.adw = add nsw i64 %i.adm, 20
  %i.adx = sub nsw i64 %i.adw, %i.adn
  %i.ady = mul i64 %i.adx, %i.ada
  %i.adz = getelementptr i8, ptr %i.af, i64 %i.ady
  %i.aea = getelementptr i8, ptr %i.adz, i64 %i.adr
  %i.aeb = shl nsw i64 %i.ada, 4                  ; 13 uses
  %i.aec = getelementptr i8, ptr %i.af, i64 %i.adl
  %i.aed = getelementptr i8, ptr %i.aec, i64 %i.aeb
  %i.aee = add nsw i64 %i.adm, 16
  %i.aef = sub nsw i64 %i.aee, %i.adn
  %i.aeg = mul i64 %i.aef, %i.ada                 ; 4 uses
  %i.aeh = getelementptr i8, ptr %i.af, i64 %i.aeg
  %i.aei = getelementptr i8, ptr %i.aeh, i64 %i.adr
  %i.aej = mul nsw i64 %i.ada, 12                 ; 13 uses
  %i.aek = getelementptr i8, ptr %i.af, i64 %i.adl
  %i.ael = getelementptr i8, ptr %i.aek, i64 %i.aej
  %i.aem = add nsw i64 %i.adm, 12
  %i.aen = sub nsw i64 %i.aem, %i.adn
  %i.aeo = mul i64 %i.aen, %i.ada                 ; 5 uses
  %i.aep = getelementptr i8, ptr %i.af, i64 %i.aeo
  %i.aeq = getelementptr i8, ptr %i.aep, i64 %i.adr
  %i.aer = shl nsw i64 %i.ada, 3                  ; 16 uses
  %i.aes = getelementptr i8, ptr %i.af, i64 %i.adl
  %i.aet = getelementptr i8, ptr %i.aes, i64 %i.aer
  %i.aeu = insertelement <4 x ptr> poison, ptr %i.aed, i64 0
  %i.aev = insertelement <4 x ptr> %i.aeu, ptr %i.adv, i64 1
  %i.aew = insertelement <4 x ptr> %i.aev, ptr %i.ael, i64 2
  %i.aex = insertelement <4 x ptr> %i.aew, ptr %i.aet, i64 3
  %i.aey = getelementptr i8, <4 x ptr> %i.aex, <4 x i64> <i64 -16, i64 -8, i64 -16, i64 -20>
  %i.aez = add nsw i64 %i.adm, 8
  %i.afa = sub nsw i64 %i.aez, %i.adn
  %i.afb = mul i64 %i.afa, %i.ada                 ; 6 uses
  %i.afc = getelementptr i8, ptr %i.af, i64 %i.afb
  %i.afd = getelementptr i8, ptr %i.afc, i64 %i.adr
  %i.afe = getelementptr i8, ptr %i.af, i64 %i.adl
  %i.aff = getelementptr i8, ptr %i.afe, i64 %i.adf
  %scevgep173 = getelementptr i8, ptr %i.aff, i64 -20
  %i.afg = add nsw i64 %i.adm, 4
  %i.afh = sub nsw i64 %i.afg, %i.adn
  %i.afi = mul i64 %i.afh, %i.ada                 ; 6 uses
  %i.afj = getelementptr i8, ptr %i.af, i64 %i.afi
  %i.afk = getelementptr i8, ptr %i.afj, i64 %i.adr
  %i.afl = add i64 %i.adl, -20                    ; 2 uses
  %scevgep175 = getelementptr i8, ptr %i.af, i64 %i.afl
  %i.afm = getelementptr i8, ptr %i.af, i64 %i.adp
  %i.afn = getelementptr i8, ptr %i.afm, i64 %i.adr
  %i.afo = sub i64 %i.afl, %i.adf
  %scevgep177 = getelementptr i8, ptr %i.af, i64 %i.afo
  %i.afp = xor i64 %i.p, -1
  %i.afq = add nsw i64 %i.afp, %i.q
  %i.afr = mul i64 %i.afq, %i.ada
  %i.afs = shl i64 %i.afr, 2                      ; 13 uses
  %i.aft = getelementptr i8, ptr %i.af, i64 %i.afs
  %i.afu = getelementptr i8, ptr %i.aft, i64 %i.adr
  %i.afv = add i64 %i.adl, -20
  %i.afw = sub i64 %i.afv, %i.aer
  %scevgep179 = getelementptr i8, ptr %i.af, i64 %i.afw
  %i.afx = add nsw i64 %i.adm, -8
  %i.afy = sub nsw i64 %i.afx, %i.adn
  %i.afz = mul i64 %i.afy, %i.ada                 ; 6 uses
  %i.aga = getelementptr i8, ptr %i.af, i64 %i.afz
  %i.agb = getelementptr i8, ptr %i.aga, i64 %i.adr
  %i.agc = insertelement <8 x ptr> poison, ptr %i.aei, i64 0
  %i.agd = insertelement <8 x ptr> %i.agc, ptr %i.aea, i64 1
  %i.age = insertelement <8 x ptr> %i.agd, ptr %i.aeq, i64 2
  %i.agf = insertelement <8 x ptr> %i.age, ptr %i.afd, i64 3
  %i.agg = insertelement <8 x ptr> %i.agf, ptr %i.afk, i64 4
  %i.agh = insertelement <8 x ptr> %i.agg, ptr %i.afn, i64 5
  %i.agi = insertelement <8 x ptr> %i.agh, ptr %i.afu, i64 6
  %i.agj = insertelement <8 x ptr> %i.agi, ptr %i.agb, i64 7
  %i.agk = getelementptr i8, <8 x ptr> %i.agj, <8 x i64> <i64 16, i64 8, i64 16, i64 20, i64 20, i64 20, i64 20, i64 20>
  %i.agl = add i64 %i.adl, -16
  %i.agm = sub i64 %i.agl, %i.aej
  %scevgep181 = getelementptr i8, ptr %i.af, i64 %i.agm
  %i.agn = add i64 %i.afs, %i.adl
  %i.ago = add i64 %i.agn, 16
  %i.agp = add nsw i64 %i.ada, %i.p
  %i.agq = shl nsw i64 %i.agp, 3                  ; 8 uses
  %i.agr = sub i64 %i.ago, %i.agq
  %scevgep182 = getelementptr i8, ptr %i.af, i64 %i.agr
  %i.ags = add i64 %i.adl, 16
  %i.agt = sub i64 %i.ags, %i.aeb
  %scevgep183 = getelementptr i8, ptr %i.af, i64 %i.agt
  %i.agu = add nsw i64 %i.adm, -16
  %i.agv = sub nsw i64 %i.agu, %i.adn
  %i.agw = mul i64 %i.agv, %i.ada                 ; 5 uses
  %i.agx = add i64 %i.agw, %i.adr                 ; 2 uses
  %i.agy = getelementptr i8, ptr %i.af, i64 %i.agx
  %i.agz = add i64 %i.adl, 12
  %i.aha = sub i64 %i.agz, %i.aeb
  %scevgep185 = getelementptr i8, ptr %i.af, i64 %i.aha
  %i.ahb = getelementptr i8, ptr %i.af, i64 %i.agx
  %i.ahc = insertelement <2 x ptr> poison, ptr %i.agy, i64 0
  %i.ahd = insertelement <2 x ptr> %i.ahc, ptr %i.ahb, i64 1
  %i.ahe = getelementptr i8, <2 x ptr> %i.ahd, <2 x i64> <i64 16, i64 12>
  %i.ahf = add i64 %i.adl, -12
  %i.ahg = sub i64 %i.ahf, %i.aeb
  %scevgep187 = getelementptr i8, ptr %i.af, i64 %i.ahg
  %i.ahh = add i64 %i.agw, %i.adr                 ; 2 uses
  %i.ahi = getelementptr i8, ptr %i.af, i64 %i.ahh
  %scevgep188 = getelementptr i8, ptr %i.ahi, i64 -12
  %i.ahj = add i64 %i.adl, -16
  %i.ahk = sub i64 %i.ahj, %i.aeb
  %scevgep189 = getelementptr i8, ptr %i.af, i64 %i.ahk
  %i.ahl = getelementptr i8, ptr %i.af, i64 %i.ahh
  %scevgep190 = getelementptr i8, ptr %i.ahl, i64 -16
  %i.ahm = add i64 %i.adl, 8
  %i.ahn = sub i64 %i.ahm, %i.adt
  %scevgep191 = getelementptr i8, ptr %i.af, i64 %i.ahn
  %i.aho = add nsw i64 %i.adm, -20
  %i.ahp = sub nsw i64 %i.aho, %i.adn
  %i.ahq = mul i64 %i.ahp, %i.ada                 ; 3 uses
  %i.ahr = add i64 %i.ahq, %i.adr                 ; 2 uses
  %i.ahs = getelementptr i8, ptr %i.af, i64 %i.ahr
  %i.aht = add i64 %i.adl, 4
  %i.ahu = sub i64 %i.aht, %i.adt
  %scevgep193 = getelementptr i8, ptr %i.af, i64 %i.ahu
  %i.ahv = getelementptr i8, ptr %i.af, i64 %i.ahr
  %i.ahw = insertelement <2 x ptr> poison, ptr %i.ahs, i64 0
  %i.ahx = insertelement <2 x ptr> %i.ahw, ptr %i.ahv, i64 1
  %i.ahy = getelementptr i8, <2 x ptr> %i.ahx, <2 x i64> <i64 8, i64 4>
  %i.ahz = sub i64 %i.adl, %i.adt
  %scevgep195 = getelementptr i8, ptr %i.af, i64 %i.ahz
  %i.aia = add i64 %i.ahq, %i.adr                 ; 2 uses
  %scevgep196 = getelementptr i8, ptr %i.af, i64 %i.aia
  %i.aib = add i64 %i.adl, -4
  %i.aic = sub i64 %i.aib, %i.adt
  %scevgep197 = getelementptr i8, ptr %i.af, i64 %i.aic
  %i.aid = getelementptr i8, ptr %i.af, i64 %i.aia
  %i.aie = add i64 %i.adl, -8
  %i.aif = sub i64 %i.aie, %i.adt
  %scevgep199 = getelementptr i8, ptr %i.af, i64 %i.aif
  %i.aig = getelementptr i8, ptr %i.af, i64 %i.ahq
  %i.aih = getelementptr i8, ptr %i.aig, i64 %i.adr
  %i.aii = add i64 %i.adl, %i.aeb                 ; 2 uses
  %i.aij = getelementptr i8, ptr %i.af, i64 %i.aii
  %i.aik = add i64 %i.aeg, %i.adr                 ; 2 uses
  %i.ail = getelementptr i8, ptr %i.af, i64 %i.aik
  %i.aim = getelementptr i8, ptr %i.af, i64 %i.aii
  %i.ain = insertelement <2 x ptr> poison, ptr %i.aij, i64 0
  %i.aio = insertelement <2 x ptr> %i.ain, ptr %i.aim, i64 1
  %i.aip = getelementptr i8, <2 x ptr> %i.aio, <2 x i64> <i64 8, i64 4>
  %i.aiq = getelementptr i8, ptr %i.af, i64 %i.aik
  %i.air = insertelement <4 x ptr> poison, ptr %i.aid, i64 0
  %i.ais = insertelement <4 x ptr> %i.air, ptr %i.aih, i64 1
  %i.ait = insertelement <4 x ptr> %i.ais, ptr %i.ail, i64 2
  %i.aiu = insertelement <4 x ptr> %i.ait, ptr %i.aiq, i64 3
  %i.aiv = getelementptr i8, <4 x ptr> %i.aiu, <4 x i64> <i64 -4, i64 -8, i64 8, i64 4>
  %i.aiw = add i64 %i.adl, %i.aeb                 ; 2 uses
  %scevgep205 = getelementptr i8, ptr %i.af, i64 %i.aiw
  %i.aix = add i64 %i.aeg, %i.adr                 ; 2 uses
  %scevgep206 = getelementptr i8, ptr %i.af, i64 %i.aix
  %i.aiy = getelementptr i8, ptr %i.af, i64 %i.aiw
  %i.aiz = getelementptr i8, ptr %i.af, i64 %i.aix
  %i.aja = getelementptr i8, ptr %i.af, i64 %i.adl
  %i.ajb = getelementptr i8, ptr %i.aja, i64 %i.aeb
  %i.ajc = insertelement <2 x ptr> poison, ptr %i.aiy, i64 0
  %i.ajd = insertelement <2 x ptr> %i.ajc, ptr %i.ajb, i64 1
  %i.aje = getelementptr i8, <2 x ptr> %i.ajd, <2 x i64> <i64 -4, i64 -8>
  %i.ajf = getelementptr i8, ptr %i.af, i64 %i.aeg
  %i.ajg = getelementptr i8, ptr %i.ajf, i64 %i.adr
  %i.ajh = insertelement <2 x ptr> poison, ptr %i.aiz, i64 0
  %i.aji = insertelement <2 x ptr> %i.ajh, ptr %i.ajg, i64 1
  %i.ajj = getelementptr i8, <2 x ptr> %i.aji, <2 x i64> <i64 -4, i64 -8>
  %i.ajk = add i64 %i.adl, %i.aej                 ; 2 uses
  %i.ajl = getelementptr i8, ptr %i.af, i64 %i.ajk
  %scevgep211 = getelementptr i8, ptr %i.ajl, i64 12
  %i.ajm = add i64 %i.aeo, %i.adr                 ; 2 uses
  %i.ajn = getelementptr i8, ptr %i.af, i64 %i.ajm
  %scevgep212 = getelementptr i8, ptr %i.ajn, i64 12
  %i.ajo = getelementptr i8, ptr %i.af, i64 %i.ajk
  %i.ajp = getelementptr i8, ptr %i.af, i64 %i.ajm
  %i.ajq = add i64 %i.adl, %i.aer                 ; 2 uses
  %i.ajr = getelementptr i8, ptr %i.af, i64 %i.ajq
  %i.ajs = add i64 %i.afb, %i.adr                 ; 2 uses
  %i.ajt = getelementptr i8, ptr %i.af, i64 %i.ajs
  %i.aju = getelementptr i8, ptr %i.af, i64 %i.ajq
  %i.ajv = getelementptr i8, ptr %i.af, i64 %i.ajs
  %i.ajw = add i64 %i.adl, %i.adf                 ; 2 uses
  %i.ajx = getelementptr i8, ptr %i.af, i64 %i.ajw
  %i.ajy = insertelement <4 x ptr> poison, ptr %i.ajo, i64 0
  %i.ajz = insertelement <4 x ptr> %i.ajy, ptr %i.ajr, i64 1
  %i.aka = insertelement <4 x ptr> %i.ajz, ptr %i.aju, i64 2
  %i.akb = insertelement <4 x ptr> %i.aka, ptr %i.ajx, i64 3
  %i.akc = getelementptr i8, <4 x ptr> %i.akb, <4 x i64> <i64 -12, i64 16, i64 -16, i64 16>
  %i.akd = add i64 %i.afi, %i.adr                 ; 2 uses
  %i.ake = getelementptr i8, ptr %i.af, i64 %i.akd
  %i.akf = getelementptr i8, ptr %i.af, i64 %i.ajw
  %scevgep221 = getelementptr i8, ptr %i.akf, i64 -16
  %i.akg = getelementptr i8, ptr %i.af, i64 %i.akd
  %i.akh = getelementptr i8, ptr %i.af, i64 %i.adl
  %i.aki = add i64 %i.adp, %i.adr                 ; 2 uses
  %i.akj = getelementptr i8, ptr %i.af, i64 %i.aki
  %i.akk = getelementptr i8, ptr %i.af, i64 %i.adl
  %i.akl = insertelement <2 x ptr> poison, ptr %i.akh, i64 0
  %i.akm = insertelement <2 x ptr> %i.akl, ptr %i.akk, i64 1
  %i.akn = getelementptr i8, <2 x ptr> %i.akm, <2 x i64> <i64 16, i64 -16>
  %i.ako = getelementptr i8, ptr %i.af, i64 %i.aki
  %i.akp = add i64 %i.adl, 16
  %i.akq = sub i64 %i.akp, %i.adf
  %scevgep227 = getelementptr i8, ptr %i.af, i64 %i.akq
  %i.akr = add i64 %i.afs, %i.adr                 ; 2 uses
  %i.aks = getelementptr i8, ptr %i.af, i64 %i.akr
  %i.akt = insertelement <8 x ptr> poison, ptr %i.ajp, i64 0
  %i.aku = insertelement <8 x ptr> %i.akt, ptr %i.ajt, i64 1
  %i.akv = insertelement <8 x ptr> %i.aku, ptr %i.ajv, i64 2
  %i.akw = insertelement <8 x ptr> %i.akv, ptr %i.ake, i64 3
  %i.akx = insertelement <8 x ptr> %i.akw, ptr %i.akg, i64 4
  %i.aky = insertelement <8 x ptr> %i.akx, ptr %i.akj, i64 5
  %i.akz = insertelement <8 x ptr> %i.aky, ptr %i.ako, i64 6
  %i.ala = insertelement <8 x ptr> %i.akz, ptr %i.aks, i64 7
  %i.alb = getelementptr i8, <8 x ptr> %i.ala, <8 x i64> <i64 -12, i64 16, i64 -16, i64 16, i64 -16, i64 16, i64 -16, i64 16>
  %i.alc = add i64 %i.adl, -16
  %i.ald = sub i64 %i.alc, %i.adf
  %scevgep229 = getelementptr i8, ptr %i.af, i64 %i.ald
  %i.ale = getelementptr i8, ptr %i.af, i64 %i.akr
  %scevgep230 = getelementptr i8, ptr %i.ale, i64 -16
  %i.alf = add i64 %i.adl, 16
  %i.alg = sub i64 %i.alf, %i.aer
  %scevgep231 = getelementptr i8, ptr %i.af, i64 %i.alg
  %i.alh = add i64 %i.afz, %i.adr                 ; 2 uses
  %i.ali = getelementptr i8, ptr %i.af, i64 %i.alh
  %i.alj = add i64 %i.adl, -16
  %i.alk = sub i64 %i.alj, %i.aer
  %scevgep233 = getelementptr i8, ptr %i.af, i64 %i.alk
  %i.all = getelementptr i8, ptr %i.af, i64 %i.alh
  %i.alm = insertelement <2 x ptr> poison, ptr %i.ali, i64 0
  %i.aln = insertelement <2 x ptr> %i.alm, ptr %i.all, i64 1
  %i.alo = getelementptr i8, <2 x ptr> %i.aln, <2 x i64> <i64 16, i64 -16>
  %i.alp = add i64 %i.adl, 12
  %i.alq = sub i64 %i.alp, %i.aej
  %scevgep235 = getelementptr i8, ptr %i.af, i64 %i.alq
  %i.alr = add i64 %i.afs, %i.adl
  %i.als = add i64 %i.alr, 12
  %i.alt = sub i64 %i.als, %i.agq
  %scevgep236 = getelementptr i8, ptr %i.af, i64 %i.alt
  %i.alu = add i64 %i.adl, -12
  %i.alv = sub i64 %i.alu, %i.aej
  %scevgep237 = getelementptr i8, ptr %i.af, i64 %i.alv
  %i.alw = add i64 %i.afs, %i.adl
  %i.alx = add i64 %i.alw, -12
  %i.aly = sub i64 %i.alx, %i.agq
  %scevgep238 = getelementptr i8, ptr %i.af, i64 %i.aly
  %i.alz = add i64 %i.adl, 8
  %i.ama = sub i64 %i.alz, %i.aeb
  %scevgep239 = getelementptr i8, ptr %i.af, i64 %i.ama
  %i.amb = add i64 %i.agw, %i.adr                 ; 2 uses
  %i.amc = getelementptr i8, ptr %i.af, i64 %i.amb
  %i.amd = add i64 %i.adl, 4
  %i.ame = sub i64 %i.amd, %i.aeb
  %scevgep241 = getelementptr i8, ptr %i.af, i64 %i.ame
  %i.amf = getelementptr i8, ptr %i.af, i64 %i.amb
  %i.amg = insertelement <2 x ptr> poison, ptr %i.amc, i64 0
  %i.amh = insertelement <2 x ptr> %i.amg, ptr %i.amf, i64 1
  %i.ami = getelementptr i8, <2 x ptr> %i.amh, <2 x i64> <i64 8, i64 4>
  %i.amj = sub i64 %i.adl, %i.aeb
  %scevgep243 = getelementptr i8, ptr %i.af, i64 %i.amj
  %i.amk = add i64 %i.agw, %i.adr                 ; 2 uses
  %scevgep244 = getelementptr i8, ptr %i.af, i64 %i.amk
  %i.aml = add i64 %i.adl, -4
  %i.amm = sub i64 %i.aml, %i.aeb
  %scevgep245 = getelementptr i8, ptr %i.af, i64 %i.amm
  %i.amn = getelementptr i8, ptr %i.af, i64 %i.amk
  %i.amo = add i64 %i.adl, -8
  %i.amp = sub i64 %i.amo, %i.aeb
  %scevgep247 = getelementptr i8, ptr %i.af, i64 %i.amp
  %i.amq = getelementptr i8, ptr %i.af, i64 %i.agw
  %i.amr = getelementptr i8, ptr %i.amq, i64 %i.adr
  %i.ams = add i64 %i.adl, %i.aej                 ; 2 uses
  %i.amt = getelementptr i8, ptr %i.af, i64 %i.ams
  %i.amu = add i64 %i.aeo, %i.adr                 ; 2 uses
  %i.amv = getelementptr i8, ptr %i.af, i64 %i.amu
  %i.amw = getelementptr i8, ptr %i.af, i64 %i.ams
  %i.amx = insertelement <2 x ptr> poison, ptr %i.amt, i64 0
  %i.amy = insertelement <2 x ptr> %i.amx, ptr %i.amw, i64 1
  %i.amz = getelementptr i8, <2 x ptr> %i.amy, <2 x i64> <i64 8, i64 4>
  %i.ana = getelementptr i8, ptr %i.af, i64 %i.amu
end_hunk_0
begin_hunk_1_@_process_opposed:bb.a
  %i.ma = trunc i64 %i.kq to i32
  %i.mb = and i32 %i.ma, 1                        ; 3 uses
  %.tr.i.i.us.2 = or disjoint i32 %i.mb, %i.kg
  %i.mc = shl nuw nsw i32 %.tr.i.i.us.2, 1
  %i.md = lshr i32 %i.j, %i.mc
  %i.me = and i32 %i.md, 3
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.lz
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !12
  %i.mh = zext nneg i32 %i.me to i64              ; 2 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.mh
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !12
  %i.mk = fcmp reassoc nsz arcp contract afn oge float %i.mg, %i.mj
  %i.ml = zext i1 %i.mk to i8
  %i.mm = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.mh ; 2 uses
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !97
  %i.mo = add i8 %i.mn, %i.ml
  store i8 %i.mo, ptr %i.mm, align 1, !tbaa !97
  %i.mp = mul i32 %i.kp, %i.ki
  %invariant.op.us.1 = add i32 %i.mp, %i.ks       ; 3 uses
  %i.mq = sext i32 %invariant.op.us.1 to i64
  %.tr.i.i.us.1432 = or disjoint i32 %i.ku, %i.kk
  %i.mr = shl nuw nsw i32 %.tr.i.i.us.1432, 1
  %i.ms = lshr i32 %i.j, %i.mr
  %i.mt = and i32 %i.ms, 3
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.mq
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !12
  %i.mw = zext nneg i32 %i.mt to i64              ; 2 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.mw
  %i.my = load float, ptr %i.mx, align 4, !tbaa !12
  %i.mz = fcmp reassoc nsz arcp contract afn oge float %i.mv, %i.my
  %i.na = zext i1 %i.mz to i8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.mw ; 2 uses
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !97
  %i.nd = add i8 %i.nc, %i.na
  store i8 %i.nd, ptr %i.nb, align 1, !tbaa !97
  %.reass.us.1.1 = add i32 %invariant.op.us.1, 1
  %i.ne = sext i32 %.reass.us.1.1 to i64
  %.tr.i.i.us.1.1 = or disjoint i32 %i.ll, %i.kk
  %i.nf = shl nuw nsw i32 %.tr.i.i.us.1.1, 1
  %i.ng = lshr i32 %i.j, %i.nf
  %i.nh = and i32 %i.ng, 3
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ne
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !12
  %i.nk = zext nneg i32 %i.nh to i64              ; 2 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.nk
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !12
  %i.nn = fcmp reassoc nsz arcp contract afn oge float %i.nj, %i.nm
  %i.no = zext i1 %i.nn to i8
  %i.np = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.nk ; 2 uses
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !97
  %i.nr = add i8 %i.nq, %i.no
  store i8 %i.nr, ptr %i.np, align 1, !tbaa !97
  %.reass.us.2.1 = add i32 %invariant.op.us.1, 2
  %i.ns = sext i32 %.reass.us.2.1 to i64
  %.tr.i.i.us.2.1 = or disjoint i32 %i.mb, %i.kk
  %i.nt = shl nuw nsw i32 %.tr.i.i.us.2.1, 1
  %i.nu = lshr i32 %i.j, %i.nt
  %i.nv = and i32 %i.nu, 3
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ns
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !12
  %i.ny = zext nneg i32 %i.nv to i64              ; 2 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ny
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !12
  %i.ob = fcmp reassoc nsz arcp contract afn oge float %i.nx, %i.oa
  %i.oc = zext i1 %i.ob to i8
  %i.od = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ny ; 2 uses
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !97
  %i.of = add i8 %i.oe, %i.oc
  store i8 %i.of, ptr %i.od, align 1, !tbaa !97
  %i.og = mul i32 %i.kp, %i.km
  %invariant.op.us.2 = add i32 %i.og, %i.ks       ; 3 uses
  %i.oh = sext i32 %invariant.op.us.2 to i64
  %.tr.i.i.us.2433 = or disjoint i32 %i.ku, %i.ko
  %i.oi = shl nuw nsw i32 %.tr.i.i.us.2433, 1
  %i.oj = lshr i32 %i.j, %i.oi
  %i.ok = and i32 %i.oj, 3
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.oh
  %i.om = load float, ptr %i.ol, align 4, !tbaa !12
  %i.on = zext nneg i32 %i.ok to i64              ; 2 uses
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.on
  %i.op = load float, ptr %i.oo, align 4, !tbaa !12
  %i.oq = fcmp reassoc nsz arcp contract afn oge float %i.om, %i.op
  %i.or = zext i1 %i.oq to i8
  %i.os = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.on ; 2 uses
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !97
  %i.ou = add i8 %i.ot, %i.or
  store i8 %i.ou, ptr %i.os, align 1, !tbaa !97
  %.reass.us.1.2 = add i32 %invariant.op.us.2, 1
  %i.ov = sext i32 %.reass.us.1.2 to i64
  %.tr.i.i.us.1.2 = or disjoint i32 %i.ll, %i.ko
  %i.ow = shl nuw nsw i32 %.tr.i.i.us.1.2, 1
  %i.ox = lshr i32 %i.j, %i.ow
  %i.oy = and i32 %i.ox, 3
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ov
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !12
  %i.pb = zext nneg i32 %i.oy to i64              ; 2 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pb
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !12
  %i.pe = fcmp reassoc nsz arcp contract afn oge float %i.pa, %i.pd
  %i.pf = zext i1 %i.pe to i8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.pb ; 2 uses
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !97
  %i.pi = add i8 %i.ph, %i.pf
  store i8 %i.pi, ptr %i.pg, align 1, !tbaa !97
  %.reass.us.2.2 = add i32 %invariant.op.us.2, 2
  %i.pj = sext i32 %.reass.us.2.2 to i64
  %.tr.i.i.us.2.2 = or disjoint i32 %i.mb, %i.ko
  %i.pk = shl nuw nsw i32 %.tr.i.i.us.2.2, 1
  %i.pl = lshr i32 %i.j, %i.pk
  %i.pm = and i32 %i.pl, 3
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.pj
  %i.po = load float, ptr %i.pn, align 4, !tbaa !12
  %i.pp = zext nneg i32 %i.pm to i64              ; 2 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pp
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !12
  %i.ps = fcmp reassoc nsz arcp contract afn oge float %i.po, %i.pr
  %i.pt = zext i1 %i.ps to i8
  %i.pu = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.pp ; 2 uses
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !97
  %i.pw = add i8 %i.pv, %i.pt
  store i8 %i.pw, ptr %i.pu, align 1, !tbaa !97
  %invariant.gep363.us376 = getelementptr i8, ptr %invariant.gep.us, i64 %indvars.iv ; 3 uses
  %i.px = load i8, ptr %i.d, align 1, !tbaa !97
  %.not319.us379 = icmp ne i8 %i.px, 0            ; 2 uses
  %i.py = zext i1 %.not319.us379 to i8
  store i8 %i.py, ptr %invariant.gep363.us376, align 1, !tbaa !97
  %i.pz = zext i1 %.not319.us379 to i32
  %i.qa = or i32 %.1282367.us375, %i.pz
  %i.qb = load i8, ptr %i.dj, align 1, !tbaa !97
  %.not319.us379.1 = icmp ne i8 %i.qb, 0          ; 2 uses
  %i.qc = zext i1 %.not319.us379.1 to i8
  %gep364.us380.1 = getelementptr i8, ptr %invariant.gep363.us376, i64 %i.bf
  store i8 %i.qc, ptr %gep364.us380.1, align 1, !tbaa !97
  %i.qd = zext i1 %.not319.us379.1 to i32
  %i.qe = or i32 %i.qa, %i.qd
  %i.qf = load i8, ptr %i.dk, align 1, !tbaa !97
  %.not319.us379.2 = icmp ne i8 %i.qf, 0          ; 2 uses
  %i.qg = zext i1 %.not319.us379.2 to i8
  %gep364.us380.2 = getelementptr i8, ptr %invariant.gep363.us376, i64 %i.dl
  store i8 %i.qg, ptr %gep364.us380.2, align 1, !tbaa !97
  %i.qh = zext i1 %.not319.us379.2 to i32
  %i.qi = or i32 %i.qe, %i.qh                     ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.dh
  br i1 %exitcond.not, label %._crit_edge.split.us382, label %.split362.us

._crit_edge.split.us382:                          ; preds = %.split362.us
  %indvars.iv.next436 = add nuw nsw i64 %indvars.iv435, 1 ; 2 uses
  %exitcond438.not = icmp eq i64 %indvars.iv.next436, %i.dg
  br i1 %exitcond438.not, label %._crit_edge371, label %.preheader357.us

._crit_edge371.thread:                            ; preds = %bb.h, %.preheader357.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  br label %bb.x

._crit_edge371:                                   ; preds = %._crit_edge.split.us382, %._crit_edge.split.us.us.us
  %.0281.lcssa = phi i32 [ %i.ka, %._crit_edge.split.us.us.us ], [ %i.qi, %._crit_edge.split.us382 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %.not315 = icmp eq i32 %.0281.lcssa, 0
  br i1 %.not315, label %bb.x, label %.preheader354

.preheader354:                                    ; preds = %._crit_edge371
  %i.qj = extractelement <2 x i32> %i.ax, i64 1
  %.off = add i32 %i.qj, 2
  %.not413 = icmp ult i32 %.off, 5
  br i1 %.not413, label %._crit_edge390.split, label %.preheader353.lr.ph

.preheader353.lr.ph:                              ; preds = %.preheader354
  %invariant.gep = getelementptr i8, ptr %i.df, i64 %i.bf ; 11 uses
  %i.qk = extractelement <2 x i32> %i.ax, i64 0   ; 3 uses
  %.off415 = add i32 %i.qk, 2
  %.not414 = icmp ult i32 %.off415, 5
  %i.ql = add nsw i64 %i.ba, -4
  %i.qm = add nsw i64 %i.bc, -4
  %i.qn = insertelement <2 x i64> poison, i64 %i.bf, i64 0 ; 2 uses
  %i.qo = shufflevector <2 x i64> %i.qn, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.qp = mul <2 x i64> %i.qo, <i64 3, i64 4>     ; 3 uses
  %i.qq = extractelement <2 x i64> %i.qp, i64 0
  %i.qr = getelementptr i8, ptr %i.df, i64 %i.qq  ; 11 uses
  %i.qs = extractelement <2 x i64> %i.qp, i64 1
  %i.qt = getelementptr i8, ptr %i.df, i64 %i.qs  ; 11 uses
  %i.qu = shl i64 %i.bf, 1
  %invariant.gep386 = getelementptr i8, ptr %i.df, i64 %i.qu ; 11 uses
  %i.qv = mul i64 %i.bf, 5                        ; 2 uses
  %i.qw = getelementptr i8, ptr %i.df, i64 %i.qv  ; 11 uses
  br i1 %.not414, label %._crit_edge390.split, label %.preheader353.preheader

.preheader353.preheader:                          ; preds = %.preheader353.lr.ph
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1) ; 5 uses
  %umax477 = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %exitcond463.peel.not = icmp ult i32 %i.az, 2
  %.off521 = add i32 %i.qk, -6
  %exitcond463.peel469.not = icmp ult i32 %.off521, 3
  %.off522 = add i32 %i.qk, -9
  %exitcond463.peel475.not = icmp ult i32 %.off522, 3
  %i.qx = mul i64 %i.bd, %i.be                    ; 2 uses
  %i.qy = shufflevector <2 x i64> %i.qn, <2 x i64> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.qz = shl <4 x i64> %i.qy, <i64 0, i64 1, i64 undef, i64 undef>
  %i.ra = shufflevector <2 x i64> %i.qp, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rb = shufflevector <4 x i64> %i.qz, <4 x i64> %i.ra, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %min.iters.check = icmp ult i32 %i.az, 8
  %i.rc = add <4 x i64> %i.rb, splat (i64 -1)
  %i.rd = shl i64 %i.qx, 1
  %diff.check541 = icmp ugt i64 %i.rd, -64
  %diff.check543 = icmp ugt i64 %i.qx, -64
  %i.re = icmp ult <4 x i64> %i.rc, splat (i64 63)
  %i.rf = add i64 %i.qv, -1
  %diff.check547 = icmp ult i64 %i.rf, 63
  %i.rg = bitcast <4 x i1> %i.re to i4
  %i.rh = icmp ne i4 %i.rg, 0
  %op.rdx = or i1 %i.rh, %diff.check547
  %op.rdx607 = or i1 %diff.check541, %diff.check543
  %op.rdx608 = or i1 %op.rdx, %op.rdx607
  %min.iters.check549 = icmp ult i32 %i.az, 64
  %i.ri = and i64 %umax, 56
  %n.vec = and i64 %umax, -64                     ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ba
  %min.epilog.iters.check = icmp eq i64 %i.ri, 0
  %n.vec555 = and i64 %umax, -8                   ; 3 uses
  %cmp.n561 = icmp eq i64 %n.vec555, %i.ba
  %xtraiter = and i64 %umax, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader353

.preheader353:                                    ; preds = %.preheader353.preheader, %._crit_edge
  %.0274389 = phi i64 [ %i.ve, %._crit_edge ], [ 0, %.preheader353.preheader ] ; 4 uses
  %i.rj = mul i64 %.0274389, %i.ba                ; 16 uses
  %i.rk = icmp ugt i64 %.0274389, 2
  %i.rl = icmp ult i64 %.0274389, %i.qm
  %.fr = freeze i1 %i.rl
  %i.rm = and i1 %.fr, %i.rk
  br i1 %i.rm, label %bb.i, label %iter.check

iter.check:                                       ; preds = %.preheader353
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx608
  br i1 %brmerge, label %.lr.ph.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check549, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.rn = add i64 %index, %i.rj                   ; 6 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.rn ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 32
  %wide.load = load <32 x i8>, ptr %i.ro, align 1, !tbaa !97
  %wide.load550 = load <32 x i8>, ptr %i.rp, align 1, !tbaa !97
  %i.rq = getelementptr i8, ptr %i.qr, i64 %i.rn  ; 2 uses
  %i.rr = getelementptr i8, ptr %i.rq, i64 32
  store <32 x i8> %wide.load, ptr %i.rq, align 1, !tbaa !97
  store <32 x i8> %wide.load550, ptr %i.rr, align 1, !tbaa !97
  %i.rs = getelementptr i8, ptr %invariant.gep, i64 %i.rn ; 2 uses
  %i.rt = getelementptr i8, ptr %i.rs, i64 32
  %wide.load551 = load <32 x i8>, ptr %i.rs, align 1, !tbaa !97
  %wide.load552 = load <32 x i8>, ptr %i.rt, align 1, !tbaa !97
  %i.ru = getelementptr i8, ptr %i.qt, i64 %i.rn  ; 2 uses
  %i.rv = getelementptr i8, ptr %i.ru, i64 32
  store <32 x i8> %wide.load551, ptr %i.ru, align 1, !tbaa !97
  store <32 x i8> %wide.load552, ptr %i.rv, align 1, !tbaa !97
  %i.rw = getelementptr i8, ptr %invariant.gep386, i64 %i.rn ; 2 uses
  %i.rx = getelementptr i8, ptr %i.rw, i64 32
  %wide.load553 = load <32 x i8>, ptr %i.rw, align 1, !tbaa !97
  %wide.load554 = load <32 x i8>, ptr %i.rx, align 1, !tbaa !97
  %i.ry = getelementptr i8, ptr %i.qw, i64 %i.rn  ; 2 uses
  %i.rz = getelementptr i8, ptr %i.ry, i64 32
  store <32 x i8> %wide.load553, ptr %i.ry, align 1, !tbaa !97
  store <32 x i8> %wide.load554, ptr %i.rz, align 1, !tbaa !97
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.sa = icmp eq i64 %index.next, %n.vec
  br i1 %i.sa, label %middle.block, label %vector.body, !llvm.loop !508

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.preheader, label %vec.epilog.ph, !prof !520

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index556 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next560, %vec.epilog.vector.body ] ; 2 uses
  %i.sb = add i64 %index556, %i.rj                ; 6 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.sb
  %wide.load557 = load <8 x i8>, ptr %i.sc, align 1, !tbaa !97
  %i.sd = getelementptr i8, ptr %i.qr, i64 %i.sb
  store <8 x i8> %wide.load557, ptr %i.sd, align 1, !tbaa !97
  %i.se = getelementptr i8, ptr %invariant.gep, i64 %i.sb
  %wide.load558 = load <8 x i8>, ptr %i.se, align 1, !tbaa !97
  %i.sf = getelementptr i8, ptr %i.qt, i64 %i.sb
  store <8 x i8> %wide.load558, ptr %i.sf, align 1, !tbaa !97
  %i.sg = getelementptr i8, ptr %invariant.gep386, i64 %i.sb
  %wide.load559 = load <8 x i8>, ptr %i.sg, align 1, !tbaa !97
  %i.sh = getelementptr i8, ptr %i.qw, i64 %i.sb
  store <8 x i8> %wide.load559, ptr %i.sh, align 1, !tbaa !97
  %index.next560 = add nuw i64 %index556, 8       ; 2 uses
  %i.si = icmp eq i64 %index.next560, %n.vec555
  br i1 %i.si, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !509

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n561, label %._crit_edge, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0273385.us.ph = phi i64 [ 0, %iter.check ], [ %n.vec555, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us.prol
  %.0273385.us.prol = phi i64 [ %i.sr, %.lr.ph.split.us.prol ], [ %.0273385.us.ph, %.lr.ph.split.us.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader ]
  %i.sj = add i64 %.0273385.us.prol, %i.rj        ; 6 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.sj
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !97
  %i.sm = getelementptr i8, ptr %i.qr, i64 %i.sj
  store i8 %i.sl, ptr %i.sm, align 1, !tbaa !97
  %gep.us.prol = getelementptr i8, ptr %invariant.gep, i64 %i.sj
  %i.sn = load i8, ptr %gep.us.prol, align 1, !tbaa !97
  %i.so = getelementptr i8, ptr %i.qt, i64 %i.sj
  store i8 %i.sn, ptr %i.so, align 1, !tbaa !97
  %gep387.us.prol = getelementptr i8, ptr %invariant.gep386, i64 %i.sj
  %i.sp = load i8, ptr %gep387.us.prol, align 1, !tbaa !97
  %i.sq = getelementptr i8, ptr %i.qw, i64 %i.sj
  store i8 %i.sp, ptr %i.sq, align 1, !tbaa !97
  %i.sr = add nuw i64 %.0273385.us.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !510

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader
  %.0273385.us.unr = phi i64 [ %.0273385.us.ph, %.lr.ph.split.us.preheader ], [ %i.sr, %.lr.ph.split.us.prol ]
  %i.ss = sub i64 %.0273385.us.ph, %umax
  %i.st = icmp ugt i64 %i.ss, -4
  br i1 %i.st, label %._crit_edge, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.prol.loopexit
  %invariant.op = add i64 1, %i.rj
  %invariant.op621 = add i64 2, %i.rj
  %invariant.op623 = add i64 3, %i.rj
  br label %.lr.ph.split.us

bb.i:                                             ; preds = %.preheader353
  %i.su = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.rj
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !97
  %i.sw = getelementptr i8, ptr %i.qr, i64 %i.rj
  store i8 %i.sv, ptr %i.sw, align 1, !tbaa !97
  %gep.peel = getelementptr i8, ptr %invariant.gep, i64 %i.rj
  %i.sx = load i8, ptr %gep.peel, align 1, !tbaa !97
  %i.sy = getelementptr i8, ptr %i.qt, i64 %i.rj
  store i8 %i.sx, ptr %i.sy, align 1, !tbaa !97
  %gep387.peel = getelementptr i8, ptr %invariant.gep386, i64 %i.rj
  %i.sz = load i8, ptr %gep387.peel, align 1, !tbaa !97
  %i.ta = getelementptr i8, ptr %i.qw, i64 %i.rj
  store i8 %i.sz, ptr %i.ta, align 1, !tbaa !97
  br i1 %exitcond463.peel.not, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.tb = add i64 %i.rj, 1                        ; 6 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.tb
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !97
  %i.te = getelementptr i8, ptr %i.qr, i64 %i.tb
  store i8 %i.td, ptr %i.te, align 1, !tbaa !97
  %gep.peel467 = getelementptr i8, ptr %invariant.gep, i64 %i.tb
  %i.tf = load i8, ptr %gep.peel467, align 1, !tbaa !97
  %i.tg = getelementptr i8, ptr %i.qt, i64 %i.tb
  store i8 %i.tf, ptr %i.tg, align 1, !tbaa !97
  %gep387.peel468 = getelementptr i8, ptr %invariant.gep386, i64 %i.tb
  %i.th = load i8, ptr %gep387.peel468, align 1, !tbaa !97
  %i.ti = getelementptr i8, ptr %i.qw, i64 %i.tb
  store i8 %i.th, ptr %i.ti, align 1, !tbaa !97
  br i1 %exitcond463.peel469.not, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.tj = add i64 %i.rj, 2                        ; 6 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.tj
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !97
  %i.tm = getelementptr i8, ptr %i.qr, i64 %i.tj
  store i8 %i.tl, ptr %i.tm, align 1, !tbaa !97
  %gep.peel473 = getelementptr i8, ptr %invariant.gep, i64 %i.tj
  %i.tn = load i8, ptr %gep.peel473, align 1, !tbaa !97
  %i.to = getelementptr i8, ptr %i.qt, i64 %i.tj
  store i8 %i.tn, ptr %i.to, align 1, !tbaa !97
  %gep387.peel474 = getelementptr i8, ptr %invariant.gep386, i64 %i.tj
  %i.tp = load i8, ptr %gep387.peel474, align 1, !tbaa !97
  %i.tq = getelementptr i8, ptr %i.qw, i64 %i.tj
  store i8 %i.tp, ptr %i.tq, align 1, !tbaa !97
  br i1 %exitcond463.peel475.not, label %._crit_edge, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %.0273385.us = phi i64 [ %.0273385.us.unr, %.lr.ph.split.us.preheader.new ], [ %i.uu, %.lr.ph.split.us ] ; 5 uses
  %i.tr = add i64 %.0273385.us, %i.rj             ; 6 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.tr
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !97
  %i.tu = getelementptr i8, ptr %i.qr, i64 %i.tr
  store i8 %i.tt, ptr %i.tu, align 1, !tbaa !97
  %gep.us = getelementptr i8, ptr %invariant.gep, i64 %i.tr
  %i.tv = load i8, ptr %gep.us, align 1, !tbaa !97
end_hunk_1
begin_hunk_2_@_process_opposed:bb.a
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge371.thread, %.preheader351.thread, %._crit_edge371
  %.0281.lcssa525 = phi i32 [ %.0281.lcssa, %.preheader351.thread ], [ 0, %._crit_edge371 ], [ 0, %._crit_edge371.thread ]
  %i.zf = phi i32 [ %i.ze, %.preheader351.thread ], [ 0, %._crit_edge371 ], [ 0, %._crit_edge371.thread ]
  %i.zg = phi i32 [ %i.zc, %.preheader351.thread ], [ 0, %._crit_edge371 ], [ 0, %._crit_edge371.thread ]
  %i.zh = phi i32 [ %i.za, %.preheader351.thread ], [ 0, %._crit_edge371 ], [ 0, %._crit_edge371.thread ]
  %i.zi = load ptr, ptr %i.k, align 8, !tbaa !56  ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 644
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !92
  %i.zl = icmp eq i32 %i.zk, 2                    ; 2 uses
  br i1 %i.zl, label %.preheader350.preheader, label %bb.y

.preheader350.preheader:                          ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @img_oppchroma, ptr noundef nonnull align 16 dereferenceable(12) %i.c, i64 12, i1 false), !tbaa !12
  store i64 %i.cz, ptr @img_opphash, align 8, !tbaa !100
  store i32 %.0281.lcssa525, ptr @img_oppclipped, align 4, !tbaa !15
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.preheader350.preheader
  %i.zm = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !138
  %i.zn = and i32 %i.zm, 33554432
  %.not316 = icmp eq i32 %i.zn, 0
  br i1 %.not316, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.zo = load float, ptr %i.c, align 16, !tbaa !12
  %i.zp = fpext reassoc nsz arcp contract afn float %i.zo to double
  %i.zq = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.zr = load <2 x float>, ptr %i.zq, align 4, !tbaa !12
  %i.zs = fpext <2 x float> %i.zr to <2 x double> ; 2 uses
  %i.zt = select i1 %i.zl, ptr @.str.115, ptr @.str.116
  %i.zu = load i32, ptr @img_oppclipped, align 4, !tbaa !15
  %.not317 = icmp eq i32 %i.zu, 0
  %i.zv = select i1 %.not317, ptr @.str.117, ptr @.str.116
  %i.zw = extractelement <2 x double> %i.zs, i64 0
  %i.zx = extractelement <2 x double> %i.zs, i64 1
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.113, ptr noundef nonnull %i.zi, ptr noundef %0, i32 noundef -1, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.118, double noundef %i.zp, i32 noundef %i.zh, double noundef %i.zw, i32 noundef %i.zg, double noundef %i.zx, i32 noundef %i.zf, ptr noundef nonnull %i.zt, ptr noundef nonnull %i.zv) #33
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  br label %.thread338

.thread338:                                       ; preds = %bb.g, %bb.f, %bb.aa
  %i.zy = phi ptr [ null, %bb.f ], [ %i.df, %bb.aa ], [ null, %bb.g ]
  tail call void @free(ptr noundef %i.zy) #33
  br label %bb.ab

bb.ab:                                            ; preds = %.preheader349.preheader, %.thread338
  %.not321 = icmp eq i32 %6, 0
  br i1 %.not321, label %.thread344, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.zz = load i32, ptr %i.av, align 4, !tbaa !79
  %i.aaa = load i32, ptr %i.aw, align 4, !tbaa !78
  %i.aab = mul nsw i32 %i.aaa, %i.zz
  %i.aac = sext i32 %i.aab to i64
  %i.aad = shl nsw i64 %i.aac, 2
  %i.aae = tail call ptr @dt_alloc_aligned(i64 noundef %i.aad) #33 ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aae, i64 64) ]
  %.not322 = icmp eq ptr %i.aae, null
  br i1 %.not322, label %.thread344, label %.preheader348

.preheader348:                                    ; preds = %bb.ac
  %i.aaf = load i32, ptr %i.aw, align 4, !tbaa !78 ; 2 uses
  %i.aag = sext i32 %i.aaf to i64
  %.not418 = icmp eq i32 %i.aaf, 0
  br i1 %.not418, label %.thread344, label %.preheader347.lr.ph

.preheader347.lr.ph:                              ; preds = %.preheader348
  %i.aah = load i32, ptr %i.av, align 4, !tbaa !79 ; 2 uses
  %i.aai = sext i32 %i.aah to i64                 ; 3 uses
  %.not419 = icmp eq i32 %i.aah, 0
  %i.aaj = icmp eq i32 %i.j, 9
  br i1 %.not419, label %.thread344, label %.preheader347

.preheader347:                                    ; preds = %.preheader347.lr.ph, %._crit_edge401
  %.0268403 = phi i64 [ %i.abm, %._crit_edge401 ], [ 0, %.preheader347.lr.ph ] ; 3 uses
  %i.aak = mul i64 %.0268403, %i.aai              ; 2 uses
  %i.aal = trunc i64 %.0268403 to i32             ; 4 uses
  %i.aam = shl i32 %i.aal, 1
  %i.aan = and i32 %i.aam, 14
  %i.aao = add nsw i32 %i.aal, 600
  %i.aap = srem i32 %i.aao, 6
  %i.aaq = sext i32 %i.aap to i64
  %i.aar = getelementptr inbounds [6 x i8], ptr %i.h, i64 %i.aaq
  br i1 %i.aaj, label %fcol.exit331.us, label %fcol.exit331

fcol.exit331.us:                                  ; preds = %.preheader347, %bb.ae
  %.0267400.us = phi i64 [ %i.abl, %bb.ae ], [ 0, %.preheader347 ] ; 3 uses
  %i.aas = add i64 %i.aak, %.0267400.us           ; 2 uses
  %i.aat = trunc i64 %.0267400.us to i32          ; 2 uses
  %i.aau = add nsw i32 %i.aat, 600
  %i.aav = srem i32 %i.aau, 6
  %i.aaw = sext i32 %i.aav to i64
  %i.aax = getelementptr inbounds i8, ptr %i.aar, i64 %i.aaw
  %i.aay = load i8, ptr %i.aax, align 1, !tbaa !97
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aas
  %i.aba = load float, ptr %i.aaz, align 4, !tbaa !12 ; 4 uses
  %i.abb = zext i8 %i.aay to i64                  ; 2 uses
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.abb
  %i.abd = load float, ptr %i.abc, align 4, !tbaa !12
  %i.abe = fcmp reassoc nsz arcp contract afn ult float %i.aba, %i.abd
  br i1 %i.abe, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %fcol.exit331.us
  %i.abf = call reassoc nsz arcp contract afn fastcc float @_calc_refavg(ptr noundef nonnull %2, ptr noundef nonnull %i.h, i32 noundef 9, i32 noundef %i.aal, i32 noundef %i.aat, ptr noundef nonnull %4, ptr noundef %i.b, i32 noundef 1)
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.abb
  %i.abh = load float, ptr %i.abg, align 4, !tbaa !12
  %i.abi = fadd reassoc nsz arcp contract afn float %i.abh, %i.abf ; 2 uses
  %i.abj = fcmp reassoc nsz arcp contract afn ogt float %i.aba, %i.abi
  %..us = select reassoc nsz arcp contract afn i1 %i.abj, float %i.aba, float %i.abi
  br label %bb.ae

bb.ae:                                            ; preds = %fcol.exit331.us, %bb.ad
  %..us.sink = phi float [ %..us, %bb.ad ], [ %i.aba, %fcol.exit331.us ]
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.aae, i64 %i.aas
  store float %..us.sink, ptr %i.abk, align 4, !tbaa !12
  %i.abl = add nuw i64 %.0267400.us, 1            ; 2 uses
  %exitcond484.not = icmp eq i64 %i.abl, %i.aai
  br i1 %exitcond484.not, label %._crit_edge401, label %fcol.exit331.us

._crit_edge401:                                   ; preds = %bb.ag, %bb.ae
  %i.abm = add nuw i64 %.0268403, 1               ; 2 uses
  %exitcond485.not = icmp eq i64 %i.abm, %i.aag
  br i1 %exitcond485.not, label %.thread344, label %.preheader347

fcol.exit331:                                     ; preds = %.preheader347, %bb.ag
  %.0267400 = phi i64 [ %i.acf, %bb.ag ], [ 0, %.preheader347 ] ; 3 uses
  %i.abn = add i64 %i.aak, %.0267400              ; 2 uses
  %i.abo = trunc i64 %.0267400 to i32             ; 2 uses
  %i.abp = and i32 %i.abo, 1
  %.tr.i.i329 = or disjoint i32 %i.abp, %i.aan
  %i.abq = shl nuw nsw i32 %.tr.i.i329, 1
  %i.abr = lshr i32 %i.j, %i.abq
  %i.abs = and i32 %i.abr, 3
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.abn
  %i.abu = load float, ptr %i.abt, align 4, !tbaa !12 ; 4 uses
  %i.abv = zext nneg i32 %i.abs to i64            ; 2 uses
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.abv
  %i.abx = load float, ptr %i.abw, align 4, !tbaa !12
  %i.aby = fcmp reassoc nsz arcp contract afn ult float %i.abu, %i.abx
  br i1 %i.aby, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %fcol.exit331
  %i.abz = call reassoc nsz arcp contract afn fastcc float @_calc_refavg(ptr noundef nonnull %2, ptr noundef nonnull %i.h, i32 noundef %i.j, i32 noundef %i.aal, i32 noundef %i.abo, ptr noundef nonnull %4, ptr noundef %i.b, i32 noundef 1)
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.abv
  %i.acb = load float, ptr %i.aca, align 4, !tbaa !12
  %i.acc = fadd reassoc nsz arcp contract afn float %i.acb, %i.abz ; 2 uses
  %i.acd = fcmp reassoc nsz arcp contract afn ogt float %i.abu, %i.acc
  %. = select reassoc nsz arcp contract afn i1 %i.acd, float %i.abu, float %i.acc
  br label %bb.ag

bb.ag:                                            ; preds = %fcol.exit331, %bb.af
  %..sink = phi float [ %., %bb.af ], [ %i.abu, %fcol.exit331 ]
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.aae, i64 %i.abn
  store float %..sink, ptr %i.ace, align 4, !tbaa !12
  %i.acf = add nuw i64 %.0267400, 1               ; 2 uses
  %exitcond483.not = icmp eq i64 %i.acf, %i.aai
  br i1 %exitcond483.not, label %._crit_edge401, label %fcol.exit331

.thread344:                                       ; preds = %._crit_edge401, %.preheader348, %.preheader347.lr.ph, %bb.ab, %bb.ac
  %.not322346 = phi i1 [ true, %bb.ac ], [ true, %bb.ab ], [ false, %.preheader347.lr.ph ], [ false, %.preheader348 ], [ false, %._crit_edge401 ]
  %i.acg = phi ptr [ null, %bb.ac ], [ null, %bb.ab ], [ %i.aae, %.preheader347.lr.ph ], [ %i.aae, %.preheader348 ], [ %i.aae, %._crit_edge401 ] ; 6 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.aci = load i32, ptr %i.ach, align 4, !tbaa !78 ; 2 uses
  %i.acj = sext i32 %i.aci to i64                 ; 3 uses
  %.not420 = icmp eq i32 %i.aci, 0
  br i1 %.not420, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.thread344
  %i.ack = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.acl = load i32, ptr %i.ack, align 4, !tbaa !79 ; 7 uses
  %i.acm = sext i32 %i.acl to i64                 ; 12 uses
  %.not421 = icmp eq i32 %i.acl, 0
  %i.acn = icmp eq i32 %i.j, 9
  br i1 %.not421, label %.loopexit, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.aco = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.acp = load i32, ptr %i.aco, align 4, !tbaa !75
  %i.acq = sext i32 %i.acp to i64                 ; 3 uses
  %i.acr = load i32, ptr %5, align 4, !tbaa !74
  %i.acs = sext i32 %i.acr to i64                 ; 10 uses
  %i.act = load i32, ptr %i.av, align 4, !tbaa !79 ; 2 uses
  %i.acu = sext i32 %i.act to i64                 ; 11 uses
  %i.acv = load i32, ptr %i.aw, align 4, !tbaa !78
  %i.acw = sext i32 %i.acv to i64
  %i.acx = shl nuw nsw i64 %i.acm, 2
  %i.acy = mul nsw i64 %i.acj, %i.acm
  %i.acz = shl i64 %i.acy, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.acz
  %i.ada = shl nsw i64 %i.acm, 2
  %i.adb = mul nsw i64 %i.acq, %i.acu
  %i.adc = shl nsw i64 %i.acs, 2
  %i.add = add i64 %i.adb, %i.acs
  %i.ade = shl i64 %i.add, 2
  %scevgep563 = getelementptr i8, ptr %i.acg, i64 %i.ade
  %i.adf = add nsw i64 %i.acq, %i.acj
  %i.adg = shl nsw i64 %i.adf, 2
  %i.adh = add nsw i64 %i.adg, -4
  %i.adi = mul i64 %i.adh, %i.acu
  %i.adj = getelementptr i8, ptr %i.acg, i64 %i.adi
  %i.adk = getelementptr i8, ptr %i.adj, i64 %i.ada
  %scevgep564 = getelementptr i8, ptr %i.adk, i64 %i.adc
  %min.iters.check566 = icmp ult i32 %i.acl, 8
  %bound0 = icmp ult ptr %3, %scevgep564
  %bound1 = icmp ult ptr %scevgep563, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.adl = or i32 %i.act, %i.acl
  %i.adm = icmp slt i32 %i.adl, 0
  %i.adn = or i1 %found.conflict, %i.adm
  %min.iters.check568 = icmp ult i32 %i.acl, 32
  %n.vec570 = and i64 %i.acm, -32                 ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.acs, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert571 = insertelement <8 x i64> poison, i64 %i.acu, i64 0
  %broadcast.splat572 = shufflevector <8 x i64> %broadcast.splatinsert571, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op625 = add <8 x i64> splat (i64 8), %broadcast.splat
  %invariant.op627 = add <8 x i64> splat (i64 16), %broadcast.splat
  %invariant.op629 = add <8 x i64> splat (i64 24), %broadcast.splat
  %cmp.n583 = icmp eq i64 %n.vec570, %i.acm
  %i.ado = and i32 %i.acl, 24
  %min.epilog.iters.check588 = icmp eq i32 %i.ado, 0
  %n.vec590 = and i64 %i.acm, -8                  ; 3 uses
  %broadcast.splatinsert591 = insertelement <8 x i64> poison, i64 %i.acs, i64 0
  %broadcast.splat592 = shufflevector <8 x i64> %broadcast.splatinsert591, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert593 = insertelement <8 x i64> poison, i64 %i.acu, i64 0
  %broadcast.splat594 = shufflevector <8 x i64> %broadcast.splatinsert593, <8 x i64> poison, <8 x i32> zeroinitializer
  %cmp.n605 = icmp eq i64 %n.vec590, %i.acm
  %xtraiter615 = and i64 %i.acm, 3
  %i.adp = and i32 %i.acl, 3
  %lcmp.mod616.not = icmp eq i32 %i.adp, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge405
  %.0266410 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %i.agh, %._crit_edge405 ] ; 3 uses
  %i.adq = mul i64 %.0266410, %i.acm
  %i.adr = add i64 %.0266410, %i.acq              ; 3 uses
  %i.ads = mul i64 %i.adr, %i.acu                 ; 2 uses
  %i.adt = icmp ult i64 %i.adr, %i.acw
  %i.adu = trunc i64 %i.adr to i32                ; 3 uses
  %i.adv = shl i32 %i.adu, 1
  %i.adw = and i32 %i.adv, 14
  %i.adx = add nsw i32 %i.adu, 600
  %i.ady = srem i32 %i.adx, 6
  %i.adz = sext i32 %i.ady to i64
  %i.aea = getelementptr inbounds [6 x i8], ptr %i.h, i64 %i.adz
  %i.aeb = getelementptr [4 x i8], ptr %3, i64 %i.adq ; 9 uses
  %.fr407 = freeze i1 %i.adt
  br i1 %.fr407, label %.lr.ph.split406, label %.lr.ph.split406.us.preheader

.lr.ph.split406.us.preheader:                     ; preds = %.preheader
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aeb, i8 0, i64 %i.acx, i1 false), !tbaa !12
  br label %._crit_edge405

.lr.ph.split406:                                  ; preds = %.preheader
  br i1 %.not322346, label %.lr.ph.split406.split.us.preheader, label %iter.check585

iter.check585:                                    ; preds = %.lr.ph.split406
  %i.aec = getelementptr [4 x i8], ptr %i.acg, i64 %i.ads ; 7 uses
  %brmerge631 = select i1 %min.iters.check566, i1 true, i1 %i.adn
  br i1 %brmerge631, label %.lr.ph.split406.split.preheader, label %vector.main.loop.iter.check567

vector.main.loop.iter.check567:                   ; preds = %iter.check585
  br i1 %min.iters.check568, label %vec.epilog.ph589, label %vector.body573

vector.body573:                                   ; preds = %vector.main.loop.iter.check567, %vector.body573
  %index574 = phi i64 [ %index.next581, %vector.body573 ], [ 0, %vector.main.loop.iter.check567 ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body573 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.main.loop.iter.check567 ] ; 5 uses
  %i.aed = add <8 x i64> %vec.ind, %broadcast.splat ; 2 uses
  %i.aee = extractelement <8 x i64> %i.aed, i64 0
  %.reass626 = add <8 x i64> %vec.ind, %invariant.op625
  %.reass628 = add <8 x i64> %vec.ind, %invariant.op627
  %.reass630 = add <8 x i64> %vec.ind, %invariant.op629
  %i.aef = icmp ult <8 x i64> %i.aed, %broadcast.splat572
  %i.aeg = icmp ult <8 x i64> %.reass626, %broadcast.splat572
  %i.aeh = icmp ult <8 x i64> %.reass628, %broadcast.splat572
  %i.aei = icmp ult <8 x i64> %.reass630, %broadcast.splat572
  %i.aej = getelementptr [4 x i8], ptr %i.aec, i64 %i.aee ; 4 uses
  %i.aek = getelementptr i8, ptr %i.aej, i64 32
  %i.ael = getelementptr i8, ptr %i.aej, i64 64
  %i.aem = getelementptr i8, ptr %i.aej, i64 96
  %wide.masked.load = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aej, <8 x i1> %i.aef, <8 x float> zeroinitializer), !tbaa !12, !alias.scope !522
  %wide.masked.load575 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aek, <8 x i1> %i.aeg, <8 x float> zeroinitializer), !tbaa !12, !alias.scope !522
  %wide.masked.load576 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.ael, <8 x i1> %i.aeh, <8 x float> zeroinitializer), !tbaa !12, !alias.scope !522
  %wide.masked.load577 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aem, <8 x i1> %i.aei, <8 x float> zeroinitializer), !tbaa !12, !alias.scope !522
  %i.aen = getelementptr [4 x i8], ptr %i.aeb, i64 %index574 ; 4 uses
  %i.aeo = getelementptr i8, ptr %i.aen, i64 32
  %i.aep = getelementptr i8, ptr %i.aen, i64 64
  %i.aeq = getelementptr i8, ptr %i.aen, i64 96
  store <8 x float> %wide.masked.load, ptr %i.aen, align 4, !tbaa !12, !alias.scope !523, !noalias !522
  store <8 x float> %wide.masked.load575, ptr %i.aeo, align 4, !tbaa !12, !alias.scope !523, !noalias !522
  store <8 x float> %wide.masked.load576, ptr %i.aep, align 4, !tbaa !12, !alias.scope !523, !noalias !522
  store <8 x float> %wide.masked.load577, ptr %i.aeq, align 4, !tbaa !12, !alias.scope !523, !noalias !522
  %index.next581 = add nuw i64 %index574, 32      ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.aer = icmp eq i64 %index.next581, %n.vec570
  br i1 %i.aer, label %middle.block582, label %vector.body573, !llvm.loop !516

middle.block582:                                  ; preds = %vector.body573
  br i1 %cmp.n583, label %._crit_edge405, label %vec.epilog.iter.check587

vec.epilog.iter.check587:                         ; preds = %middle.block582
  br i1 %min.epilog.iters.check588, label %.lr.ph.split406.split.preheader, label %vec.epilog.ph589, !prof !33

vec.epilog.ph589:                                 ; preds = %vector.main.loop.iter.check567, %vec.epilog.iter.check587
  %vec.epilog.resume.val584 = phi i64 [ %n.vec570, %vec.epilog.iter.check587 ], [ 0, %vector.main.loop.iter.check567 ] ; 2 uses
  %broadcast.splatinsert595 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val584, i64 0
  %broadcast.splat596 = shufflevector <8 x i64> %broadcast.splatinsert595, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i64> %broadcast.splat596, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body597

vec.epilog.vector.body597:                        ; preds = %vec.epilog.vector.body597, %vec.epilog.ph589
  %index598 = phi i64 [ %vec.epilog.resume.val584, %vec.epilog.ph589 ], [ %index.next602, %vec.epilog.vector.body597 ] ; 2 uses
  %vec.ind599 = phi <8 x i64> [ %induction, %vec.epilog.ph589 ], [ %vec.ind.next603, %vec.epilog.vector.body597 ] ; 2 uses
  %i.aes = add <8 x i64> %vec.ind599, %broadcast.splat592 ; 2 uses
  %i.aet = extractelement <8 x i64> %i.aes, i64 0
  %i.aeu = icmp ult <8 x i64> %i.aes, %broadcast.splat594
  %i.aev = getelementptr [4 x i8], ptr %i.aec, i64 %i.aet
  %wide.masked.load600 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aev, <8 x i1> %i.aeu, <8 x float> zeroinitializer), !tbaa !12, !alias.scope !522
  %i.aew = getelementptr [4 x i8], ptr %i.aeb, i64 %index598
  store <8 x float> %wide.masked.load600, ptr %i.aew, align 4, !tbaa !12, !alias.scope !523, !noalias !522
  %index.next602 = add nuw i64 %index598, 8       ; 2 uses
  %vec.ind.next603 = add nuw <8 x i64> %vec.ind599, splat (i64 8)
  %i.aex = icmp eq i64 %index.next602, %n.vec590
  br i1 %i.aex, label %vec.epilog.middle.block604, label %vec.epilog.vector.body597, !llvm.loop !517

vec.epilog.middle.block604:                       ; preds = %vec.epilog.vector.body597
  br i1 %cmp.n605, label %._crit_edge405, label %.lr.ph.split406.split.preheader

.lr.ph.split406.split.preheader:                  ; preds = %iter.check585, %vec.epilog.iter.check587, %vec.epilog.middle.block604
  %.0265404.ph = phi i64 [ 0, %iter.check585 ], [ %n.vec590, %vec.epilog.middle.block604 ], [ %n.vec570, %vec.epilog.iter.check587 ] ; 3 uses
  br i1 %lcmp.mod616.not, label %.lr.ph.split406.split.prol.loopexit, label %.lr.ph.split406.split.prol

.lr.ph.split406.split.prol:                       ; preds = %.lr.ph.split406.split.preheader, %bb.ai
  %.0265404.prol = phi i64 [ %i.afd, %bb.ai ], [ %.0265404.ph, %.lr.ph.split406.split.preheader ] ; 3 uses
  %prol.iter617 = phi i64 [ %prol.iter617.next, %bb.ai ], [ 0, %.lr.ph.split406.split.preheader ]
  %i.aey = add i64 %.0265404.prol, %i.acs         ; 2 uses
  %i.aez = icmp ult i64 %i.aey, %i.acu
  br i1 %i.aez, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.split406.split.prol
  %i.afa = getelementptr [4 x i8], ptr %i.aec, i64 %i.aey
  %i.afb = load float, ptr %i.afa, align 4, !tbaa !12
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph.split406.split.prol
  %.1.prol = phi nsz float [ %i.afb, %bb.ah ], [ 0.000000e+00, %.lr.ph.split406.split.prol ]
  %i.afc = getelementptr [4 x i8], ptr %i.aeb, i64 %.0265404.prol
  store float %.1.prol, ptr %i.afc, align 4, !tbaa !12
  %i.afd = add nuw i64 %.0265404.prol, 1          ; 2 uses
  %prol.iter617.next = add i64 %prol.iter617, 1   ; 2 uses
  %prol.iter617.cmp.not = icmp eq i64 %prol.iter617.next, %xtraiter615
  br i1 %prol.iter617.cmp.not, label %.lr.ph.split406.split.prol.loopexit, label %.lr.ph.split406.split.prol, !llvm.loop !518

.lr.ph.split406.split.prol.loopexit:              ; preds = %bb.ai, %.lr.ph.split406.split.preheader
  %.0265404.unr = phi i64 [ %.0265404.ph, %.lr.ph.split406.split.preheader ], [ %i.afd, %bb.ai ]
  %i.afe = sub nsw i64 %.0265404.ph, %i.acm
  %i.aff = icmp ugt i64 %i.afe, -4
  br i1 %i.aff, label %._crit_edge405, label %.lr.ph.split406.split

.lr.ph.split406.split.us.preheader:               ; preds = %.lr.ph.split406
  %i.afg = getelementptr [4 x i8], ptr %2, i64 %i.ads
  br label %.lr.ph.split406.split.us

.lr.ph.split406.split.us:                         ; preds = %.lr.ph.split406.split.us.preheader, %bb.an
  %.0265404.us408 = phi i64 [ %i.agg, %bb.an ], [ 0, %.lr.ph.split406.split.us.preheader ] ; 3 uses
  %i.afh = add i64 %.0265404.us408, %i.acs        ; 3 uses
  %i.afi = icmp ult i64 %i.afh, %i.acu
  br i1 %i.afi, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %.lr.ph.split406.split.us
  %i.afj = trunc i64 %i.afh to i32                ; 3 uses
  br i1 %i.acn, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.afk = and i32 %i.afj, 1
  %.tr.i.i332.us = or disjoint i32 %i.adw, %i.afk
  %i.afl = shl nuw nsw i32 %.tr.i.i332.us, 1
  %i.afm = lshr i32 %i.j, %i.afl
  %i.afn = and i32 %i.afm, 3
  br label %fcol.exit334.us

bb.al:                                            ; preds = %bb.aj
  %i.afo = add nsw i32 %i.afj, 600
  %i.afp = srem i32 %i.afo, 6
  %i.afq = sext i32 %i.afp to i64
  %i.afr = getelementptr inbounds i8, ptr %i.aea, i64 %i.afq
  %i.afs = load i8, ptr %i.afr, align 1, !tbaa !97
  %i.aft = zext i8 %i.afs to i32
  br label %fcol.exit334.us

fcol.exit334.us:                                  ; preds = %bb.al, %bb.ak
  %.0.i333.us = phi i32 [ %i.aft, %bb.al ], [ %i.afn, %bb.ak ]
  %i.afu = getelementptr [4 x i8], ptr %i.afg, i64 %i.afh
  %i.afv = load float, ptr %i.afu, align 4, !tbaa !12 ; 4 uses
  %i.afw = zext nneg i32 %.0.i333.us to i64       ; 2 uses
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.afw
end_hunk_2
