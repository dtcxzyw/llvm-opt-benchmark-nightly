Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/domdec?download=true
inline.NumInlined: 3413
inline.NumDeleted: 1670
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN3gmx26DomainDecompositionBuilder4ImplC2ERKNS_8MDLoggerERKNS_7MpiCommERKNS_13DomdecOptionsERKNS_12MdrunOptionsERK10gmx_mtop_tRK10t_inputrecRKNS_18MDModulesNotifiersEPA3_KfNS_8ArrayRefIKNS_17RangePartitioningEEEbfNSQ_IKNS_11BasicVectorIfEEEEbbbbb:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ahi, i8 0, i64 24, i1 false), !noalias !735
  store ptr %i.ahi, ptr %31, align 8, !tbaa !47, !noalias !735
  %i.ahj = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 0, ptr %i.ahj, align 8, !tbaa !52, !noalias !735
  %i.ahk = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %31, ptr noundef nonnull @.str.125, i32 noundef %i.ahe, i32 noundef %.sink.i, i32 noundef 1)
          to label %bb.ez unwind label %bb.fa, !noalias !735

bb.ez:                                            ; preds = %bb.ey
  %i.ahl = load ptr, ptr %i.ahg, align 8, !tbaa !479, !noalias !735
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 16
  %i.ahn = load ptr, ptr %i.ahm, align 8, !noalias !735
  invoke void %i.ahn(ptr noundef nonnull align 8 dereferenceable(8) %i.ahg, ptr noundef nonnull align 8 dereferenceable(40) %i.ahk)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit38.i unwind label %bb.fa, !noalias !735, !inline_history !2

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit38.i: ; preds = %bb.ez
  %i.aho = load ptr, ptr %31, align 8, !tbaa !51, !noalias !735 ; 2 uses
  %i.ahp = icmp eq ptr %i.aho, %i.ahi
  br i1 %i.ahp, label %_ZN3gmx14LogEntryWriterD2Ev.exit41.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39.i: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit38.i
  %i.ahq = load i64, ptr %i.ahi, align 8, !tbaa !31, !noalias !735
  %i.ahr = add i64 %i.ahq, 1
  call void @_ZdlPvm(ptr noundef %i.aho, i64 noundef %i.ahr) #31, !noalias !735
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit41.i

_ZN3gmx14LogEntryWriterD2Ev.exit41.i:             ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit38.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39.i
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #29, !noalias !735
  br label %_ZL14getDDRankSetupRKN3gmx8MDLoggerEiNS_11DdRankOrderERK11DDGridSetupRK10t_inputrec.exit

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %i.ahs = landingpad { ptr, i32 }
          cleanup
  %i.aht = load ptr, ptr %31, align 8, !tbaa !51, !noalias !735 ; 2 uses
  %i.ahu = icmp eq ptr %i.aht, %i.ahi
  br i1 %i.ahu, label %_ZN3gmx14LogEntryWriterD2Ev.exit44.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42.i: ; preds = %bb.fa
  %i.ahv = load i64, ptr %i.ahi, align 8, !tbaa !31, !noalias !735
  %i.ahw = add i64 %i.ahv, 1
  call void @_ZdlPvm(ptr noundef %i.aht, i64 noundef %i.ahw) #31, !noalias !735
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit44.i

_ZN3gmx14LogEntryWriterD2Ev.exit44.i:             ; preds = %bb.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42.i
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #29, !noalias !735
  call void @_ZN11DDRankSetupD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %62) #29
  br label %.body152

_ZL14getDDRankSetupRKN3gmx8MDLoggerEiNS_11DdRankOrderERK11DDGridSetupRK10t_inputrec.exit: ; preds = %_ZL8usingPmeRK22CoulombInteractionType.exit.i, %_ZN3gmx14LogEntryWriterD2Ev.exit41.i, %bb.ex
  %i.ahx = call noundef nonnull align 8 dereferenceable(232) ptr @_ZN11DDRankSetupaSEOS_(ptr noundef nonnull align 8 dereferenceable(232) %i.ar, ptr noundef nonnull align 8 dereferenceable(232) %62) #29 ; 0 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %62, i64 200
  %i.ahz = load ptr, ptr %i.ahy, align 8, !tbaa !29 ; 3 uses
  %.not.i.i.i.i.i154 = icmp eq ptr %i.ahz, null
  br i1 %.not.i.i.i.i.i154, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i, label %bb.fb

bb.fb:                                            ; preds = %_ZL14getDDRankSetupRKN3gmx8MDLoggerEiNS_11DdRankOrderERK11DDGridSetupRK10t_inputrec.exit
  %i.aia = getelementptr inbounds nuw i8, ptr %62, i64 216
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !159
  %i.aic = ptrtoint ptr %i.aib to i64
  %i.aid = ptrtoint ptr %i.ahz to i64
  %i.aie = sub i64 %i.aic, %i.aid
  call void @_ZdlPvm(ptr noundef nonnull %i.ahz, i64 noundef %i.aie) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i:                ; preds = %bb.fb, %_ZL14getDDRankSetupRKN3gmx8MDLoggerEiNS_11DdRankOrderERK11DDGridSetupRK10t_inputrec.exit
  %i.aif = getelementptr inbounds nuw i8, ptr %62, i64 176
  %i.aig = load ptr, ptr %i.aif, align 8, !tbaa !29 ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.aig, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i.i, label %bb.fc

bb.fc:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i
  %i.aih = getelementptr inbounds nuw i8, ptr %62, i64 192
  %i.aii = load ptr, ptr %i.aih, align 8, !tbaa !159
  %i.aij = ptrtoint ptr %i.aii to i64
  %i.aik = ptrtoint ptr %i.aig to i64
  %i.ail = sub i64 %i.aij, %i.aik
  call void @_ZdlPvm(ptr noundef nonnull %i.aig, i64 noundef %i.ail) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit2.i.i:               ; preds = %bb.fc, %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i
  %i.aim = load ptr, ptr %i.aga, align 8, !tbaa !438 ; 3 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.aim, null
  br i1 %.not.i.i.i3.i.i, label %_ZN9gmx_ddpmeD2Ev.exit.i, label %bb.fd

bb.fd:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i.i
  %i.ain = getelementptr inbounds nuw i8, ptr %62, i64 168
  %i.aio = load ptr, ptr %i.ain, align 8, !tbaa !439
  %i.aip = ptrtoint ptr %i.aio to i64
  %i.aiq = ptrtoint ptr %i.aim to i64
  %i.air = sub i64 %i.aip, %i.aiq
  call void @_ZdlPvm(ptr noundef nonnull %i.aim, i64 noundef %i.air) #31
  br label %_ZN9gmx_ddpmeD2Ev.exit.i

_ZN9gmx_ddpmeD2Ev.exit.i:                         ; preds = %bb.fd, %_ZNSt6vectorIiSaIiEED2Ev.exit2.i.i
  %i.ais = getelementptr inbounds nuw i8, ptr %62, i64 104
  %i.ait = load ptr, ptr %i.ais, align 8, !tbaa !29 ; 3 uses
  %.not.i.i.i.i.1.i = icmp eq ptr %i.ait, null
  br i1 %.not.i.i.i.i.1.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.1.i, label %bb.fe

bb.fe:                                            ; preds = %_ZN9gmx_ddpmeD2Ev.exit.i
  %i.aiu = getelementptr inbounds nuw i8, ptr %62, i64 120
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !159
  %i.aiw = ptrtoint ptr %i.aiv to i64
  %i.aix = ptrtoint ptr %i.ait to i64
  %i.aiy = sub i64 %i.aiw, %i.aix
  call void @_ZdlPvm(ptr noundef nonnull %i.ait, i64 noundef %i.aiy) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.1.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.1.i:              ; preds = %bb.fe, %_ZN9gmx_ddpmeD2Ev.exit.i
  %i.aiz = getelementptr inbounds nuw i8, ptr %62, i64 80
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !29 ; 3 uses
  %.not.i.i.i1.i.1.i = icmp eq ptr %i.aja, null
  br i1 %.not.i.i.i1.i.1.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i.1.i, label %bb.ff

bb.ff:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.1.i
  %i.ajb = getelementptr inbounds nuw i8, ptr %62, i64 96
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !159
  %i.ajd = ptrtoint ptr %i.ajc to i64
  %i.aje = ptrtoint ptr %i.aja to i64
  %i.ajf = sub i64 %i.ajd, %i.aje
  call void @_ZdlPvm(ptr noundef nonnull %i.aja, i64 noundef %i.ajf) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i.1.i

_ZNSt6vectorIiSaIiEED2Ev.exit2.i.1.i:             ; preds = %bb.ff, %_ZNSt6vectorIiSaIiEED2Ev.exit.i.1.i
  %i.ajg = load ptr, ptr %i.afx, align 8, !tbaa !438 ; 3 uses
  %.not.i.i.i3.i.1.i = icmp eq ptr %i.ajg, null
  br i1 %.not.i.i.i3.i.1.i, label %_ZN11DDRankSetupD2Ev.exit, label %bb.fg

bb.fg:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i.1.i
  %i.ajh = getelementptr inbounds nuw i8, ptr %62, i64 72
  %i.aji = load ptr, ptr %i.ajh, align 8, !tbaa !439
  %i.ajj = ptrtoint ptr %i.aji to i64
  %i.ajk = ptrtoint ptr %i.ajg to i64
  %i.ajl = sub i64 %i.ajj, %i.ajk
  call void @_ZdlPvm(ptr noundef nonnull %i.ajg, i64 noundef %i.ajl) #31
  br label %_ZN11DDRankSetupD2Ev.exit

_ZN11DDRankSetupD2Ev.exit:                        ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i.1.i, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #29
  %i.ajm = load ptr, ptr %0, align 8, !tbaa !472, !nonnull !28, !align !216 ; 5 uses
  %i.ajn = load i32, ptr %i.aev, align 4, !tbaa !734 ; 3 uses
  %.val73 = load i8, ptr %i.r, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !738)
  %i.ajo = getelementptr inbounds nuw i8, ptr %0, i64 476 ; 2 uses
  %i.ajp = load i8, ptr %i.ajo, align 4, !tbaa !298, !range !27, !noalias !738, !noundef !28
  %i.ajq = trunc nuw i8 %i.ajp to i1
  br i1 %i.ajq, label %bb.fh, label %bb.hz

bb.fh:                                            ; preds = %_ZN11DDRankSetupD2Ev.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !739)
  invoke void @_ZN3gmx7MpiCommC1ENS0_10SingleRankE(ptr noundef nonnull align 8 dereferenceable(168) %63)
          to label %.noexc166 unwind label %bb.ik

.noexc166:                                        ; preds = %bb.fh
  %i.ajr = getelementptr inbounds nuw i8, ptr %63, i64 24 ; 3 uses
  invoke void @_ZN3gmx7MpiCommC1ENS0_10SingleRankE(ptr noundef nonnull align 8 dereferenceable(24) %i.ajr)
          to label %_ZN3gmx9CommSetupC2Ev.exit.i.i unwind label %bb.fi

bb.fi:                                            ; preds = %.noexc166
  %i.ajs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx7MpiCommD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(168) %63) #29
  br label %.body167

_ZN3gmx9CommSetupC2Ev.exit.i.i:                   ; preds = %.noexc166
  %i.ajt = getelementptr inbounds nuw i8, ptr %63, i64 48 ; 4 uses
  %scevgep.i.i.i.i = getelementptr inbounds nuw i8, ptr %63, i64 52 ; 4 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %63, i64 72
  %i.ajv = getelementptr inbounds nuw i8, ptr %63, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ajv, i8 0, i64 24, i1 false), !alias.scope !740
  %i.ajw = getelementptr inbounds nuw i8, ptr %63, i64 64 ; 3 uses
  store i32 0, ptr %i.ajw, align 8, !alias.scope !740
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.aju, i8 0, i64 24, i1 false), !alias.scope !740
  %i.ajx = getelementptr inbounds nuw i8, ptr %63, i64 132 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.ajx, i8 0, i64 36, i1 false), !alias.scope !740
  %i.ajy = icmp eq i32 %i.ajn, 3                  ; 2 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %63, i64 96
  %i.aka = zext i1 %i.ajy to i8
  store i8 %i.aka, ptr %i.ajz, align 8, !tbaa !30, !alias.scope !740
  store i8 0, ptr %i.ajt, align 8, !tbaa !26, !alias.scope !740
  %i.akb = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.akc = load i32, ptr %i.akb, align 8, !tbaa !15, !noalias !740 ; 3 uses
  store i32 %i.akc, ptr %scevgep.i.i.i.i, align 4, !tbaa !15, !alias.scope !740
  %i.akd = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.ake = getelementptr inbounds nuw i8, ptr %63, i64 56 ; 3 uses
  %i.akf = load <2 x i32>, ptr %i.akd, align 4, !tbaa !15, !noalias !740 ; 6 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %63, i64 60 ; 2 uses
  store <2 x i32> %i.akf, ptr %i.ake, align 8, !tbaa !15, !alias.scope !740
  br i1 %i.ajy, label %bb.fj, label %.thread255.i.i

bb.fj:                                            ; preds = %_ZN3gmx9CommSetupC2Ev.exit.i.i
  %i.akh = load i32, ptr %i.as, align 4, !tbaa !299, !noalias !740 ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.akj = load i32, ptr %i.aki, align 4, !tbaa !300, !noalias !740 ; 2 uses
  %i.akk = insertelement <2 x i32> poison, i32 %i.akj, i64 0
  %i.akl = shufflevector <2 x i32> %i.akk, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.akm = mul nsw <2 x i32> %i.akl, %i.akf       ; 3 uses
  %i.akn = insertelement <2 x i32> poison, i32 %i.akh, i64 0
  %i.ako = shufflevector <2 x i32> %i.akn, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.akp = srem <2 x i32> %i.akm, %i.ako
  %i.akq = icmp eq <2 x i32> %i.akp, zeroinitializer ; 2 uses
  %i.akr = extractelement <2 x i1> %i.akq, i64 0  ; 2 uses
  %64 = extractelement <2 x i1> %i.akq, i64 1     ; 2 uses
  %or.cond.i.i161 = select i1 %i.akr, i1 true, i1 %64
  br i1 %or.cond.i.i161, label %bb.fk, label %bb.fo

bb.fk:                                            ; preds = %bb.fj
  store i8 1, ptr %i.ajt, align 8, !tbaa !26, !alias.scope !740
  br i1 %64, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.aks = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.akt = load i32, ptr %i.aks, align 4, !tbaa !737, !noalias !740
  %i.aku = icmp slt i32 %i.akt, 2
  %or.cond5.i.i = and i1 %i.akr, %i.aku
  %shift = shufflevector <2 x i32> %i.akf, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.akv = icmp sle <2 x i32> %i.akf, %shift
  %i.akw = extractelement <2 x i1> %i.akv, i64 0
  %or.cond256.not.i.i = select i1 %or.cond5.i.i, i1 %i.akw, i1 false
  %i.akx = extractelement <2 x i32> %i.akm, i64 1
  br i1 %or.cond256.not.i.i, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.aky = extractelement <2 x i32> %i.akm, i64 0
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %.sink.i.i = phi i32 [ 1, %bb.fm ], [ 2, %bb.fl ]
  %.pre-phi.i.i = phi i32 [ %i.aky, %bb.fm ], [ %i.akx, %bb.fl ]
  %i.akz = phi i64 [ 1, %bb.fm ], [ 2, %bb.fl ]
  store i32 %.sink.i.i, ptr %i.ajw, align 8, !tbaa !301, !alias.scope !740
  %i.ala = sdiv i32 %.pre-phi.i.i, %i.akh
  %i.alb = getelementptr inbounds nuw [4 x i8], ptr %scevgep.i.i.i.i, i64 %i.akz ; 2 uses
  %i.alc = load i32, ptr %i.alb, align 4, !tbaa !15, !alias.scope !740
  %i.ald = add nsw i32 %i.alc, %i.ala
  store i32 %i.ald, ptr %i.alb, align 4, !tbaa !15, !alias.scope !740
  br label %bb.ft

bb.fo:                                            ; preds = %bb.fj
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ajm, i64 32 ; 2 uses
  %i.alf = load ptr, ptr %i.ale, align 8, !tbaa !475, !noalias !740 ; 3 uses
  %i.alg = icmp eq ptr %i.alf, null
  br i1 %i.alg, label %bb.ft, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29, !noalias !740
  %i.alh = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.alh, i8 0, i64 24, i1 false), !noalias !740
  store ptr %i.alh, ptr %18, align 8, !tbaa !47, !noalias !740
  %i.ali = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.ali, align 8, !tbaa !52, !noalias !740
  %i.alj = extractelement <2 x i32> %i.akf, i64 0
  %i.alk = extractelement <2 x i32> %i.akf, i64 1
  %i.all = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull @.str.126, i32 noundef %i.akj, i32 noundef %i.akc, i32 noundef %i.alj, i32 noundef %i.akc, i32 noundef %i.alk)
          to label %bb.fq unwind label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.alm = load ptr, ptr %i.alf, align 8, !tbaa !479
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alm, i64 16
  %i.alo = load ptr, ptr %i.aln, align 8
  invoke void %i.alo(ptr noundef nonnull align 8 dereferenceable(8) %i.alf, ptr noundef nonnull align 8 dereferenceable(40) %i.all)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i.i162 unwind label %bb.fr, !inline_history !2

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i.i162: ; preds = %bb.fq
  %i.alp = load ptr, ptr %18, align 8, !tbaa !51, !noalias !740 ; 2 uses
  %i.alq = icmp eq ptr %i.alp, %i.alh
  br i1 %i.alq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i163: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i.i162
  %i.alr = load i64, ptr %i.alh, align 8, !tbaa !31, !noalias !740
  %i.als = add i64 %i.alr, 1
  call void @_ZdlPvm(ptr noundef %i.alp, i64 noundef %i.als) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i165

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %i.alt = landingpad { ptr, i32 }
          cleanup
  %i.alu = load ptr, ptr %18, align 8, !tbaa !51, !noalias !740 ; 2 uses
  %i.alv = icmp eq ptr %i.alu, %i.alh
  br i1 %i.alv, label %_ZN3gmx14LogEntryWriterD2Ev.exit132.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i130.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i130.i.i: ; preds = %bb.fr
  %i.alw = load i64, ptr %i.alh, align 8, !tbaa !31, !noalias !740
  %i.alx = add i64 %i.alw, 1
  call void @_ZdlPvm(ptr noundef %i.alu, i64 noundef %i.alx) #31
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit132.i.i

_ZN3gmx14LogEntryWriterD2Ev.exit132.i.i:          ; preds = %bb.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i130.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29, !noalias !740
  br label %bb.hy

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i165: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i.i162, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29, !noalias !740
  %.pr.i.i = load ptr, ptr %i.ale, align 8, !tbaa !475, !noalias !740 ; 3 uses
  %i.aly = icmp eq ptr %.pr.i.i, null
  br i1 %i.aly, label %bb.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i165
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29, !noalias !740
  %i.alz = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.alz, i8 0, i64 24, i1 false), !noalias !740
  store ptr %i.alz, ptr %19, align 8, !tbaa !47, !noalias !740
  %i.ama = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 0, ptr %i.ama, align 8, !tbaa !52, !noalias !740
  %i.amb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull @.str.127, i64 noundef 53)
          to label %_ZN3gmx14LogEntryWriter10appendTextEPKc.exit.i.i unwind label %bb.fs ; 0 uses

_ZN3gmx14LogEntryWriter10appendTextEPKc.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i
  %i.amc = load ptr, ptr %.pr.i.i, align 8, !tbaa !479
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 16
  %i.ame = load ptr, ptr %i.amd, align 8
  invoke void %i.ame(ptr noundef nonnull align 8 dereferenceable(8) %.pr.i.i, ptr noundef nonnull align 8 dereferenceable(40) %19)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit135.i.i unwind label %bb.fs, !inline_history !2

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit135.i.i: ; preds = %_ZN3gmx14LogEntryWriter10appendTextEPKc.exit.i.i
  %i.amf = load ptr, ptr %19, align 8, !tbaa !51, !noalias !740 ; 2 uses
  %i.amg = icmp eq ptr %i.amf, %i.alz
  br i1 %i.amg, label %_ZN3gmx14LogEntryWriterD2Ev.exit138.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i136.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i136.i.i: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit135.i.i
  %i.amh = load i64, ptr %i.alz, align 8, !tbaa !31, !noalias !740
  %i.ami = add i64 %i.amh, 1
  call void @_ZdlPvm(ptr noundef %i.amf, i64 noundef %i.ami) #31
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit138.i.i

_ZN3gmx14LogEntryWriterD2Ev.exit138.i.i:          ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit135.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i136.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29, !noalias !740
  br label %bb.ft

bb.fs:                                            ; preds = %_ZN3gmx14LogEntryWriter10appendTextEPKc.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i
  %i.amj = landingpad { ptr, i32 }
          cleanup
  %i.amk = load ptr, ptr %19, align 8, !tbaa !51, !noalias !740 ; 2 uses
  %i.aml = icmp eq ptr %i.amk, %i.alz
  br i1 %i.aml, label %_ZN3gmx14LogEntryWriterD2Ev.exit141.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i139.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i139.i.i: ; preds = %bb.fs
  %i.amm = load i64, ptr %i.alz, align 8, !tbaa !31, !noalias !740
  %i.amn = add i64 %i.amm, 1
  call void @_ZdlPvm(ptr noundef %i.amk, i64 noundef %i.amn) #31
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit141.i.i

_ZN3gmx14LogEntryWriterD2Ev.exit141.i.i:          ; preds = %bb.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i139.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29, !noalias !740
  br label %bb.hy

bb.ft:                                            ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit138.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i165, %bb.fo, %bb.fn
  %.pre214.i.i = load i8, ptr %i.ajt, align 8, !tbaa !26, !range !27, !alias.scope !740
  %i.amo = trunc nuw i8 %.pre214.i.i to i1
  br i1 %i.amo, label %bb.fu, label %.thread255.i.i

bb.fu:                                            ; preds = %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29, !noalias !740
  store i32 0, ptr %i.a, align 4, !tbaa !15, !noalias !740
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29, !noalias !740
  %i.amp = getelementptr inbounds nuw i8, ptr %i.ajm, i64 32 ; 2 uses
  %i.amq = load ptr, ptr %i.amp, align 8, !tbaa !475, !noalias !740 ; 3 uses
  %i.amr = icmp eq ptr %i.amq, null
  br i1 %i.amr, label %bb.fy, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29, !noalias !740
  %i.ams = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ams, i8 0, i64 24, i1 false), !noalias !740
  store ptr %i.ams, ptr %20, align 8, !tbaa !47, !noalias !740
  %i.amt = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 0, ptr %i.amt, align 8, !tbaa !52, !noalias !740
  %i.amu = load i32, ptr %scevgep.i.i.i.i, align 4, !tbaa !15, !alias.scope !740
  %i.amv = load i32, ptr %i.ake, align 8, !tbaa !15, !alias.scope !740
  %i.amw = load i32, ptr %i.akg, align 4, !tbaa !15, !alias.scope !740
  %i.amx = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull @.str.128, i32 noundef %i.amu, i32 noundef %i.amv, i32 noundef %i.amw)
          to label %bb.fw unwind label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.amy = load ptr, ptr %i.amq, align 8, !tbaa !479
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amy, i64 16
  %i.ana = load ptr, ptr %i.amz, align 8
  invoke void %i.ana(ptr noundef nonnull align 8 dereferenceable(8) %i.amq, ptr noundef nonnull align 8 dereferenceable(40) %i.amx)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit143.i.i unwind label %bb.fx, !inline_history !2

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit143.i.i: ; preds = %bb.fw
  %i.anb = load ptr, ptr %20, align 8, !tbaa !51, !noalias !740 ; 2 uses
  %i.anc = icmp eq ptr %i.anb, %i.ams
  br i1 %i.anc, label %_ZN3gmx14LogEntryWriterD2Ev.exit146.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i144.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i144.i.i: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit143.i.i
  %i.and = load i64, ptr %i.ams, align 8, !tbaa !31, !noalias !740
  %i.ane = add i64 %i.and, 1
  call void @_ZdlPvm(ptr noundef %i.anb, i64 noundef %i.ane) #31
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit146.i.i

_ZN3gmx14LogEntryWriterD2Ev.exit146.i.i:          ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit143.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i144.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29, !noalias !740
  br label %bb.fy

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %i.anf = landingpad { ptr, i32 }
          cleanup
  %i.ang = load ptr, ptr %20, align 8, !tbaa !51, !noalias !740 ; 2 uses
  %i.anh = icmp eq ptr %i.ang, %i.ams
  br i1 %i.anh, label %_ZN3gmx14LogEntryWriterD2Ev.exit149.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i147.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i147.i.i: ; preds = %bb.fx
  %i.ani = load i64, ptr %i.ams, align 8, !tbaa !31, !noalias !740
  %i.anj = add i64 %i.ani, 1
  call void @_ZdlPvm(ptr noundef %i.ang, i64 noundef %i.anj) #31
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit149.i.i

_ZN3gmx14LogEntryWriterD2Ev.exit149.i.i:          ; preds = %bb.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i147.i.i
end_hunk_0
