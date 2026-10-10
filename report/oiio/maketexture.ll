Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/maketexture?download=true
inline.NumInlined: 6377
inline.NumDeleted: 1711
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN11OpenImageIO4v3_1L17make_texture_implENS0_12ImageBufAlgo15MakeTextureModeEPKNS0_8ImageBufENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS0_9ImageSpecEPSo:bb.a
  %i.azj = fmul nnan contract <2 x float> %i.azg, splat (float f0x3C188B0D)
  %i.azk = fsub nnan contract <2 x float> splat (float f0x3D5541C9), %i.azj
  %i.azl = fmul nnan contract <2 x float> %i.azg, splat (float f0x3EF5162D)
  %i.azm = fadd nnan contract <2 x float> %i.azl, splat (float f0xBF389E54)
  %i.azn = fmul contract <2 x float> %i.azg, %i.azk
  %i.azo = fadd contract <2 x float> %i.azn, splat (float f0xBE0CD4FD)
  %i.azp = fmul contract <2 x float> %i.azg, %i.azo
  %i.azq = fadd contract <2 x float> %i.azp, splat (float f0x3E77ADBD)
  %i.azr = fmul contract <2 x float> %i.azg, %i.azq
  %i.azs = fadd contract <2 x float> %i.azr, splat (float f0xBEB1D206)
  %i.azt = fmul contract <2 x float> %i.azg, %i.azm
  %i.azu = fadd contract <2 x float> %i.azt, splat (float f0x3FB8AA10)
  %i.azv = fmul <2 x float> %i.azg, %i.azu
  %i.azw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.azi, <2 x float> %i.azs, <2 x float> %i.azv)
  %i.azx = sitofp <2 x i32> %i.azc to <2 x float>
  %i.azy = fadd <2 x float> %i.azw, %i.azx
  %i.azz = fmul <2 x float> %i.azy, splat (float f0x3F317218) ; 3 uses
  %i.baa = fcmp ogt <2 x float> %i.azz, splat (float -5.000000e+00)
  %i.bab = fneg <2 x float> %i.azz
  %i.bac = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.bab)
  %i.bad = fadd <2 x float> %i.bac, splat (float -3.000000e+00) ; 8 uses
  %i.bae = fmul contract <2 x float> %i.bad, splat (float f0x3951F09B)
  %i.baf = fsub contract <2 x float> splat (float f0x38D3B56B), %i.bae
  %i.bag = fmul contract <2 x float> %i.bad, %i.baf
  %i.bah = fadd contract <2 x float> %i.bag, splat (float f0x3AB0DC72)
  %i.bai = fmul contract <2 x float> %i.bad, %i.bah
  %i.baj = fadd contract <2 x float> %i.bai, splat (float f0xBB70BDE7)
  %i.bak = fmul contract <2 x float> %i.bad, %i.baj
  %i.bal = fadd contract <2 x float> %i.bak, splat (float f0x3BBC127B)
  %i.bam = fmul contract <2 x float> %i.bad, %i.bal
  %i.ban = fadd contract <2 x float> %i.bam, splat (float f0xBBF9C5D7)
  %i.bao = fmul contract <2 x float> %i.bad, %i.ban
  %i.bap = fadd contract <2 x float> %i.bao, splat (float f0x3C1AA57E)
  %i.baq = fmul contract <2 x float> %i.bad, %i.bap
  %i.bar = fadd contract <2 x float> %i.baq, splat (float f0x3F8036DB)
  %i.bas = fmul contract <2 x float> %i.bad, %i.bar
  %i.bat = fadd contract <2 x float> %i.bas, splat (float f0x40354F7E)
  %i.bau = fsub <2 x float> splat (float -2.500000e+00), %i.azz ; 8 uses
  %i.bav = fmul nnan contract <2 x float> %i.bau, splat (float f0x32F16588)
  %i.baw = fadd nnan contract <2 x float> %i.bav, splat (float f0x34B84B36)
  %i.bax = fmul contract <2 x float> %i.bau, %i.baw
  %i.bay = fadd contract <2 x float> %i.bax, splat (float f0xB66C7357)
  %i.baz = fmul contract <2 x float> %i.bau, %i.bay
  %i.bba = fadd contract <2 x float> %i.baz, splat (float f0xB6935AC1)
  %i.bbb = fmul contract <2 x float> %i.bau, %i.bba
  %i.bbc = fadd contract <2 x float> %i.bbb, splat (float f0x396532DB)
  %i.bbd = fmul contract <2 x float> %i.bau, %i.bbc
  %i.bbe = fadd contract <2 x float> %i.bbd, splat (float f0xBAA45408)
  %i.bbf = fmul contract <2 x float> %i.bau, %i.bbe
  %i.bbg = fadd contract <2 x float> %i.bbf, splat (float f0xBB88E4EF)
  %i.bbh = fmul contract <2 x float> %i.bau, %i.bbg
  %i.bbi = fadd contract <2 x float> %i.bbh, splat (float f0x3E7C8F63)
  %i.bbj = fmul contract <2 x float> %i.bau, %i.bbi
  %i.bbk = fadd contract <2 x float> %i.bbj, splat (float f0x3FC02E2F)
  %predphi = select <2 x i1> %i.baa, <2 x float> %i.bbk, <2 x float> %i.bat
  %i.bbl = fmul <2 x float> %i.ayp, %predphi
  %i.bbm = fpext <2 x float> %i.bbl to <2 x double>
  %i.bbn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat3331, <2 x double> %i.bbm, <2 x double> splat (double 5.000000e-01)) ; 2 uses
  %i.bbo = fptrunc <2 x double> %i.bbn to <2 x float>
  %i.bbp = fcmp ogt <2 x double> %i.bbn, splat (double f0x3690000000000000)
  %i.bbq = select <2 x i1> %i.bbp, <2 x float> %i.bbo, <2 x float> zeroinitializer ; 2 uses
  %i.bbr = fcmp olt <2 x float> %i.bbq, splat (float 1.000000e+00)
  %i.bbs = select <2 x i1> %i.bbr, <2 x float> %i.bbq, <2 x float> splat (float 1.000000e+00)
  %i.bbt = getelementptr inbounds nuw [4 x i8], ptr %i.awo, i64 %index
  store <2 x float> %i.bbs, ptr %i.bbt, align 4, !tbaa !153
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bbu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bbu, label %middle.block, label %vector.body, !llvm.loop !465

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.noexc.preheader

.noexc.preheader:                                 ; preds = %.preheader2511, %middle.block
  %.05712569.ph = phi i64 [ 0, %.preheader2511 ], [ %n.vec, %middle.block ]
  br label %.noexc

bb.oq:                                            ; preds = %bb.on
  %i.bbv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #30
  br label %bb.po

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %store_forwarded = phi i64 [ %i.bck, %.lr.ph ], [ %load_initial, %.lr.ph.preheader ]
  %.05722568 = phi i64 [ %i.bcl, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.bbw = getelementptr [8 x i8], ptr %i.axv, i64 %.05722568 ; 2 uses
  %i.bbx = load i64, ptr %i.bbw, align 8, !tbaa !59
  %i.bby = add i64 %i.bbx, %store_forwarded       ; 2 uses
  store i64 %i.bby, ptr %i.bbw, align 8, !tbaa !59
  %i.bbz = getelementptr [8 x i8], ptr %i.axv, i64 %.05722568
  %i.bca = getelementptr i8, ptr %i.bbz, i64 8    ; 2 uses
  %i.bcb = load i64, ptr %i.bca, align 8, !tbaa !59
  %i.bcc = add i64 %i.bcb, %i.bby                 ; 2 uses
  store i64 %i.bcc, ptr %i.bca, align 8, !tbaa !59
  %i.bcd = getelementptr [8 x i8], ptr %i.axv, i64 %.05722568
  %i.bce = getelementptr i8, ptr %i.bcd, i64 16   ; 2 uses
  %i.bcf = load i64, ptr %i.bce, align 8, !tbaa !59
  %i.bcg = add i64 %i.bcf, %i.bcc                 ; 2 uses
  store i64 %i.bcg, ptr %i.bce, align 8, !tbaa !59
  %i.bch = getelementptr [8 x i8], ptr %i.axv, i64 %.05722568
  %i.bci = getelementptr i8, ptr %i.bch, i64 24   ; 2 uses
  %i.bcj = load i64, ptr %i.bci, align 8, !tbaa !59
  %i.bck = add i64 %i.bcj, %i.bcg                 ; 3 uses
  store i64 %i.bck, ptr %i.bci, align 8, !tbaa !59
  %i.bcl = add nuw i64 %.05722568, 4              ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader2511.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !466

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.ox, %middle.block
  call void @llvm.lifetime.start.p0(ptr nonnull %156) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %157) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !548)
  store ptr %i.awz, ptr %157, align 8, !tbaa !58, !alias.scope !548
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %157, i64 noundef 1, i8 noundef signext 45)
          to label %._crit_edge.i.i1284 unwind label %bb.ot

._crit_edge.i.i1284:                              ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.bcm = load ptr, ptr %157, align 8, !tbaa !61, !alias.scope !548 ; 2 uses
  %i.bcn = icmp samesign ugt i32 %.05732573, 9    ; 2 uses
  br i1 %i.bcn, label %bb.or, label %bb.os

bb.or:                                            ; preds = %._crit_edge.i.i1284
  %i.bco = shl nuw nsw i32 %.05732573, 1
  %i.bcp = zext nneg i32 %i.bco to i64
  %i.bcq = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bcp ; 2 uses
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bcq, i64 1
  %i.bcs = load i8, ptr %i.bcr, align 1, !tbaa !62, !noalias !548
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bcm, i64 1
  store i8 %i.bcs, ptr %i.bct, align 1, !tbaa !62
  %i.bcu = load i8, ptr %i.bcq, align 2, !tbaa !62, !noalias !548
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.os:                                            ; preds = %._crit_edge.i.i1284
  %i.bcv = trunc nuw nsw i32 %.05732573 to i8
  %i.bcw = or disjoint i8 %i.bcv, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.ot:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.bcx = landingpad { ptr, i32 }
          catch ptr null
  %i.bcy = extractvalue { ptr, i32 } %i.bcx, 0
  call void @__clang_call_terminate(ptr %i.bcy) #35
  unreachable

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.or, %bb.os
  %storemerge.i.i = phi i8 [ %i.bcw, %bb.os ], [ %i.bcu, %bb.or ]
  store i8 %storemerge.i.i, ptr %i.bcm, align 1, !tbaa !62
  %i.bcz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %157, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.92, i64 noundef 7)
          to label %.noexc1287 unwind label %bb.pe ; 6 uses

.noexc1287:                                       ; preds = %_ZNSt7__cxx119to_stringEi.exit
  store ptr %i.axa, ptr %156, align 8, !tbaa !58, !alias.scope !549
  %i.bda = load ptr, ptr %i.bcz, align 8, !tbaa !61 ; 2 uses
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bcz, i64 16 ; 5 uses
  %i.bdc = icmp eq ptr %i.bda, %i.bdb
  br i1 %i.bdc, label %bb.ou, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1285

bb.ou:                                            ; preds = %.noexc1287
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bcz, i64 8
  %i.bde = load i64, ptr %i.bdd, align 8, !tbaa !63 ; 3 uses
  %i.bdf = icmp ult i64 %i.bde, 16
  call void @llvm.assume(i1 %i.bdf)
  %i.bdg = add nuw nsw i64 %i.bde, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.axa, ptr noundef nonnull align 8 dereferenceable(1) %i.bdb, i64 %i.bdg, i1 false)
  br label %bb.oy

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1285: ; preds = %.noexc1287
  store ptr %i.bda, ptr %156, align 8, !tbaa !61, !alias.scope !549
  %i.bdh = load i64, ptr %i.bdb, align 8, !tbaa !62
  store i64 %i.bdh, ptr %i.axa, align 8, !tbaa !62, !alias.scope !549
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bcz, i64 8
  %.pre.i1286 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !63
  br label %bb.oy

.noexc:                                           ; preds = %.noexc.preheader, %bb.ox
  %.05712569 = phi i64 [ %i.bgf, %bb.ox ], [ %.05712569.ph, %.noexc.preheader ] ; 3 uses
  %i.bdi = getelementptr inbounds nuw [8 x i8], ptr %i.axv, i64 %.05712569
  %i.bdj = load i64, ptr %i.bdi, align 8, !tbaa !59
  %i.bdk = uitofp i64 %i.bdj to float
  %i.bdl = fdiv float %i.bdk, %i.ayk
  %i.bdm = call float @llvm.fmuladd.f32(float %i.bdl, float 2.000000e+00, float -1.000000e+00)
  %i.bdn = fmul float %i.awg, %i.bdm              ; 2 uses
  %i.bdo = call float @llvm.fabs.f32(float %i.bdn) ; 2 uses
  %i.bdp = fcmp ogt float %i.bdo, f0x3F7FFFFF
  %spec.store.select.i = select i1 %i.bdp, float f0x3F7FFFFF, float %i.bdo ; 2 uses
  %i.bdq = fsub float 1.000000e+00, %spec.store.select.i
  %i.bdr = fadd float %spec.store.select.i, 1.000000e+00
  %i.bds = fmul float %i.bdq, %i.bdr              ; 2 uses
  %.inv2476 = fcmp oge float %i.bds, f0x00800000
  %.0.i.i = select i1 %.inv2476, float %i.bds, float f0x00800000 ; 2 uses
  %i.bdt = fcmp ogt float %.0.i.i, f0x7F7FFFFF
  %i.bdu = bitcast float %.0.i.i to i32
  %i.bdv = select i1 %i.bdt, i32 2139095039, i32 %i.bdu ; 2 uses
  %i.bdw = lshr i32 %i.bdv, 23
  %i.bdx = add nsw i32 %i.bdw, -127
  %i.bdy = and i32 %i.bdv, 8388607
  %i.bdz = or disjoint i32 %i.bdy, 1065353216
  %i.bea = bitcast i32 %i.bdz to float
  %i.beb = fadd float %i.bea, -1.000000e+00       ; 9 uses
  %i.bec = fmul float %i.beb, %i.beb              ; 2 uses
  %i.bed = fmul float %i.bec, %i.bec
  %i.bee = fmul nnan contract float %i.beb, f0x3C188B0D
  %i.bef = fsub nnan contract float f0x3D5541C9, %i.bee
  %i.beg = fmul nnan contract float %i.beb, f0x3EF5162D
  %i.beh = fadd nnan contract float %i.beg, f0xBF389E54
  %410 = fmul contract float %i.beb, %i.bef
  %411 = fadd contract float %410, f0xBE0CD4FD
  %412 = fmul contract float %i.beb, %411
  %413 = fadd contract float %412, f0x3E77ADBD
  %414 = fmul contract float %i.beb, %413
  %415 = fadd contract float %414, f0xBEB1D206
  %416 = fmul contract float %i.beb, %i.beh
  %417 = fadd contract float %416, f0x3FB8AA10
  %i.bei = fmul float %i.beb, %417
  %i.bej = call float @llvm.fmuladd.f32(float %i.bed, float %415, float %i.bei)
  %i.bek = sitofp i32 %i.bdx to float
  %i.bel = fadd float %i.bej, %i.bek
  %i.bem = fmul float %i.bel, f0x3F317218         ; 3 uses
  %i.ben = fcmp ogt float %i.bem, -5.000000e+00
  br i1 %i.ben, label %bb.ov, label %bb.ow

bb.ov:                                            ; preds = %.noexc
  %i.beo = fsub float -2.500000e+00, %i.bem       ; 8 uses
  %i.bep = fmul nnan contract float %i.beo, f0x32F16588
  %i.beq = fadd nnan contract float %i.bep, f0x34B84B36
  %i.ber = fmul contract float %i.beo, %i.beq
  %i.bes = fadd contract float %i.ber, f0xB66C7357
  %i.bet = fmul contract float %i.beo, %i.bes
  %i.beu = fadd contract float %i.bet, f0xB6935AC1
  %i.bev = fmul contract float %i.beo, %i.beu
  %i.bew = fadd contract float %i.bev, f0x396532DB
  %i.bex = fmul contract float %i.beo, %i.bew
  %i.bey = fadd contract float %i.bex, f0xBAA45408
  %i.bez = fmul contract float %i.beo, %i.bey
  %i.bfa = fadd contract float %i.bez, f0xBB88E4EF
  %i.bfb = fmul contract float %i.beo, %i.bfa
  %i.bfc = fadd contract float %i.bfb, f0x3E7C8F63
  %i.bfd = fmul contract float %i.beo, %i.bfc
  %i.bfe = fadd contract float %i.bfd, f0x3FC02E2F
  br label %bb.ox

bb.ow:                                            ; preds = %.noexc
  %i.bff = fneg float %i.bem
  %i.bfg = call float @llvm.sqrt.f32(float %i.bff)
  %i.bfh = fadd float %i.bfg, -3.000000e+00       ; 8 uses
  %i.bfi = fmul contract float %i.bfh, f0x3951F09B
  %i.bfj = fsub contract float f0x38D3B56B, %i.bfi
  %i.bfk = fmul contract float %i.bfh, %i.bfj
  %i.bfl = fadd contract float %i.bfk, f0x3AB0DC72
  %i.bfm = fmul contract float %i.bfh, %i.bfl
  %i.bfn = fadd contract float %i.bfm, f0xBB70BDE7
  %i.bfo = fmul contract float %i.bfh, %i.bfn
  %i.bfp = fadd contract float %i.bfo, f0x3BBC127B
  %i.bfq = fmul contract float %i.bfh, %i.bfp
  %i.bfr = fadd contract float %i.bfq, f0xBBF9C5D7
  %i.bfs = fmul contract float %i.bfh, %i.bfr
  %i.bft = fadd contract float %i.bfs, f0x3C1AA57E
  %i.bfu = fmul contract float %i.bfh, %i.bft
  %i.bfv = fadd contract float %i.bfu, f0x3F8036DB
  %i.bfw = fmul contract float %i.bfh, %i.bfv
  %i.bfx = fadd contract float %i.bfw, f0x40354F7E
  br label %bb.ox

bb.ox:                                            ; preds = %bb.ow, %bb.ov
  %.0.i = phi float [ %i.bfe, %bb.ov ], [ %i.bfx, %bb.ow ]
  %i.bfy = fmul float %i.bdn, %.0.i
  %i.bfz = fpext float %i.bfy to double
  %i.bga = call double @llvm.fmuladd.f64(double %i.awy, double %i.bfz, double 5.000000e-01) ; 2 uses
  %i.bgb = fptrunc double %i.bga to float
  %i.bgc = fcmp ogt double %i.bga, f0x3690000000000000
  %.sroa.speculated2262 = select i1 %i.bgc, float %i.bgb, float 0.000000e+00 ; 2 uses
  %i.bgd = fcmp olt float %.sroa.speculated2262, 1.000000e+00
  %.sroa.speculated2259 = select i1 %i.bgd, float %.sroa.speculated2262, float 1.000000e+00
  %i.bge = getelementptr inbounds nuw [4 x i8], ptr %i.awo, i64 %.05712569
  store float %.sroa.speculated2259, ptr %i.bge, align 4, !tbaa !153
  %i.bgf = add nuw i64 %.05712569, 1              ; 2 uses
  %exitcond2618.not = icmp eq i64 %i.bgf, %i.avg
  br i1 %exitcond2618.not, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.noexc, !llvm.loop !471

bb.oy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1285, %bb.ou
  %i.bgg = phi i64 [ %i.bde, %bb.ou ], [ %.pre.i1286, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1285 ]
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bcz, i64 8
  store i64 %i.bgg, ptr %i.axb, align 8, !tbaa !63, !alias.scope !549
  store ptr %i.bdb, ptr %i.bcz, align 8, !tbaa !61
  store i64 0, ptr %i.bgh, align 8, !tbaa !63
  store i8 0, ptr %i.bdb, align 8, !tbaa !62
  %i.bgi = load ptr, ptr %156, align 8, !tbaa !61
  store ptr %i.bgi, ptr %155, align 8, !tbaa !55
  %i.bgj = load i64, ptr %i.axb, align 8, !tbaa !63
  store i64 %i.bgj, ptr %i.axc, align 8, !tbaa !56
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %58, ptr noundef nonnull dead_on_return %155, i64 %.sroa.02251.0.insert.insert, ptr noundef nonnull %i.awo)
          to label %bb.oz unwind label %bb.pf

bb.oz:                                            ; preds = %bb.oy
  %i.bgk = load ptr, ptr %156, align 8, !tbaa !61 ; 2 uses
  %i.bgl = icmp eq ptr %i.bgk, %i.axa
  br i1 %i.bgl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1292, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1290

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1290: ; preds = %bb.oz
  %i.bgm = load i64, ptr %i.axa, align 8, !tbaa !62
  %i.bgn = add i64 %i.bgm, 1
  call void @_ZdlPvm(ptr noundef %i.bgk, i64 noundef %i.bgn) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1292

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1292: ; preds = %bb.oz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1290
  %i.bgo = load ptr, ptr %157, align 8, !tbaa !61 ; 2 uses
  %i.bgp = icmp eq ptr %i.bgo, %i.awz
  br i1 %i.bgp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1295, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1293

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1293: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1292
  %i.bgq = load i64, ptr %i.awz, align 8, !tbaa !62
  %i.bgr = add i64 %i.bgq, 1
  call void @_ZdlPvm(ptr noundef %i.bgo, i64 noundef %i.bgr) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1295

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1295: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1292, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1293
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #30
  br label %bb.pg

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i1299: ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfET_S7_S7_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %159) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %160) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !550)
  store ptr %i.axj, ptr %160, align 8, !tbaa !58, !alias.scope !550
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %160, i64 noundef 1, i8 noundef signext 45)
          to label %._crit_edge.i.i1303 unwind label %bb.pc

._crit_edge.i.i1303:                              ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i1299
  %i.bgs = load ptr, ptr %160, align 8, !tbaa !61, !alias.scope !550 ; 2 uses
  br i1 %i.bcn, label %bb.pa, label %bb.pb

bb.pa:                                            ; preds = %._crit_edge.i.i1303
  %i.bgt = shl nuw nsw i32 %.05732573, 1
  %i.bgu = zext nneg i32 %i.bgt to i64
  %i.bgv = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bgu ; 2 uses
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.bgv, i64 1
  %i.bgx = load i8, ptr %i.bgw, align 1, !tbaa !62, !noalias !550
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bgs, i64 1
  store i8 %i.bgx, ptr %i.bgy, align 1, !tbaa !62
  %i.bgz = load i8, ptr %i.bgv, align 2, !tbaa !62, !noalias !550
  br label %_ZNSt7__cxx119to_stringEi.exit1310

bb.pb:                                            ; preds = %._crit_edge.i.i1303
  %i.bha = trunc nuw nsw i32 %.05732573 to i8
  %i.bhb = or disjoint i8 %i.bha, 48
  br label %_ZNSt7__cxx119to_stringEi.exit1310

bb.pc:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i1299
  %i.bhc = landingpad { ptr, i32 }
          catch ptr null
  %i.bhd = extractvalue { ptr, i32 } %i.bhc, 0
  call void @__clang_call_terminate(ptr %i.bhd) #35
  unreachable

_ZNSt7__cxx119to_stringEi.exit1310:               ; preds = %bb.pa, %bb.pb
  %storemerge.i.i1305 = phi i8 [ %i.bhb, %bb.pb ], [ %i.bgz, %bb.pa ]
  store i8 %storemerge.i.i1305, ptr %i.bgs, align 1, !tbaa !62
  %i.bhe = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %160, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.93, i64 noundef 4)
          to label %.noexc1314 unwind label %bb.pj ; 6 uses

.noexc1314:                                       ; preds = %_ZNSt7__cxx119to_stringEi.exit1310
  store ptr %i.axk, ptr %159, align 8, !tbaa !58, !alias.scope !551
  %i.bhf = load ptr, ptr %i.bhe, align 8, !tbaa !61 ; 2 uses
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bhe, i64 16 ; 5 uses
  %i.bhh = icmp eq ptr %i.bhf, %i.bhg
  br i1 %i.bhh, label %bb.pd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1311

bb.pd:                                            ; preds = %.noexc1314
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bhe, i64 8
  %i.bhj = load i64, ptr %i.bhi, align 8, !tbaa !63 ; 3 uses
  %i.bhk = icmp ult i64 %i.bhj, 16
  call void @llvm.assume(i1 %i.bhk)
  %i.bhl = add nuw nsw i64 %i.bhj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.axk, ptr noundef nonnull align 8 dereferenceable(1) %i.bhg, i64 %i.bhl, i1 false)
  br label %bb.ph

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1311: ; preds = %.noexc1314
  store ptr %i.bhf, ptr %159, align 8, !tbaa !61, !alias.scope !551
  %i.bhm = load i64, ptr %i.bhg, align 8, !tbaa !62
  store i64 %i.bhm, ptr %i.axk, align 8, !tbaa !62, !alias.scope !551
  %.phi.trans.insert.i1312 = getelementptr inbounds nuw i8, ptr %i.bhe, i64 8
  %.pre.i1313 = load i64, ptr %.phi.trans.insert.i1312, align 8, !tbaa !63
  br label %bb.ph

bb.pe:                                            ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.bhn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1318

bb.pf:                                            ; preds = %bb.oy
  %i.bho = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bhp = load ptr, ptr %156, align 8, !tbaa !61 ; 2 uses
  %i.bhq = icmp eq ptr %i.bhp, %i.axa
  br i1 %i.bhq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1318, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1316

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1316: ; preds = %bb.pf
  %i.bhr = load i64, ptr %i.axa, align 8, !tbaa !62
  %i.bhs = add i64 %i.bhr, 1
  call void @_ZdlPvm(ptr noundef %i.bhp, i64 noundef %i.bhs) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1318

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1318: ; preds = %bb.pf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1316, %bb.pe
  %.pn846 = phi { ptr, i32 } [ %i.bhn, %bb.pe ], [ %i.bho, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1316 ], [ %i.bho, %bb.pf ]
  %i.bht = load ptr, ptr %157, align 8, !tbaa !61 ; 2 uses
  %i.bhu = icmp eq ptr %i.bht, %i.awz
  br i1 %i.bhu, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1319: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1318
  %i.bhv = load i64, ptr %i.awz, align 8, !tbaa !62
  %i.bhw = add i64 %i.bhv, 1
  call void @_ZdlPvm(ptr noundef %i.bht, i64 noundef %i.bhw) #31
  br label %.thread

end_hunk_0
