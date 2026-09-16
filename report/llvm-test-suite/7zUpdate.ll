Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/7zUpdate?download=true
inline.NumInlined: 583
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN8NArchive3N7z6UpdateEP9IInStreamPKNS0_18CArchiveDatabaseExERK13CObjectVectorINS0_11CUpdateItemEERNS0_11COutArchiveERNS0_16CArchiveDatabaseEP20ISequentialOutStreamP22IArchiveUpdateCallbackRKNS0_14CUpdateOptionsEP22ICryptoGetTextPassword:bb.a
bb.ik:                                            ; preds = %bb.ij, %.noexc752
  store ptr %0, ptr %i.aen, align 8, !tbaa !66
  %i.axq = load ptr, ptr %i.aeo, align 8, !tbaa !48
  %i.axr = getelementptr inbounds [8 x i8], ptr %i.axq, i64 %i.arb
  %i.axs = load ptr, ptr %i.axr, align 8, !tbaa !49
  store ptr %i.axs, ptr %i.aep, align 8, !tbaa !94
  %i.axt = load i64, ptr %i.aeq, align 8, !tbaa !291
  %i.axu = load ptr, ptr %i.aer, align 8, !tbaa !48
  %i.axv = getelementptr inbounds [4 x i8], ptr %i.axu, i64 %i.arb
  %i.axw = load i32, ptr %i.axv, align 4, !tbaa !17
  %i.axx = load ptr, ptr %i.aes, align 8, !tbaa !48
  %i.axy = sext i32 %i.axw to i64                 ; 2 uses
  %i.axz = getelementptr inbounds [8 x i8], ptr %i.axx, i64 %i.axy
  %i.aya = load i64, ptr %i.axz, align 8, !tbaa !108
  %i.ayb = add i64 %i.aya, %i.axt
  store i64 %i.ayb, ptr %i.aet, align 8, !tbaa !92
  %i.ayc = load ptr, ptr %i.aeu, align 8, !tbaa !48
  %i.ayd = getelementptr inbounds [8 x i8], ptr %i.ayc, i64 %i.axy
  store ptr %i.ayd, ptr %i.aev, align 8, !tbaa !93
  invoke void @_ZN11CVirtThread5StartEv(ptr noundef nonnull align 8 dereferenceable(233) %22)
          to label %bb.il unwind label %bb.in

bb.il:                                            ; preds = %bb.ik
  %i.aye = load i32, ptr %i.aew, align 4, !tbaa !47 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aex, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.aey, align 8, !tbaa !101
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE, i64 16), ptr %32, align 8, !tbaa !41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.afa, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.afb, align 8, !tbaa !101
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIN8NArchive3N7z9CBindPairEE, i64 16), ptr %i.aez, align 8, !tbaa !41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.afd, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.afe, align 8, !tbaa !101
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIjE, i64 16), ptr %i.afc, align 8, !tbaa !41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.afg, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.afh, align 8, !tbaa !101
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIyE, i64 16), ptr %i.aff, align 8, !tbaa !41
  store i8 0, ptr %i.afi, align 4, !tbaa !296
  %i.ayf = load ptr, ptr %30, align 8, !tbaa !141
  %i.ayg = load ptr, ptr %i.afj, align 8, !tbaa !42
  %i.ayh = invoke noundef i32 @_ZN8NArchive3N7z8CEncoder6EncodeEP19ISequentialInStreamPKyS5_RNS0_7CFolderEP20ISequentialOutStreamR13CRecordVectorIyEP21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(433) %27, ptr noundef %i.ayf, ptr noundef null, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(133) %32, ptr noundef %i.ayg, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %i.uf)
          to label %bb.im unwind label %bb.io     ; 2 uses

bb.im:                                            ; preds = %bb.il
  %.not603 = icmp eq i32 %i.ayh, 0
  br i1 %.not603, label %bb.ip, label %bb.iu

bb.in:                                            ; preds = %bb.ij, %bb.ii, %bb.ih, %bb.ik
  %i.ayi = landingpad { ptr, i32 }
          cleanup
  br label %bb.jg

bb.io:                                            ; preds = %bb.il
  %i.ayj = landingpad { ptr, i32 }
          cleanup
  br label %.body760

bb.ip:                                            ; preds = %bb.im
  %i.ayk = invoke noundef i32 @Event_Wait(ptr noundef nonnull align 8 dereferenceable(104) %i.afk)
          to label %_ZN11CVirtThread10WaitFinishEv.exit unwind label %.loopexit1198 ; 0 uses

_ZN11CVirtThread10WaitFinishEv.exit:              ; preds = %bb.ip
  %i.ayl = load i32, ptr %i.afl, align 4, !tbaa !98 ; 3 uses
  %.not604 = icmp eq i32 %i.ayl, 0                ; 2 uses
  %.10.676... = select i1 %.not604, i32 %.10.676, i32 %i.ayl
  br i1 %.not604, label %.preheader1189, label %bb.iu

.preheader1189:                                   ; preds = %_ZN11CVirtThread10WaitFinishEv.exit
  %i.aym = load i32, ptr %i.aew, align 4, !tbaa !47 ; 2 uses
  %i.ayn = icmp slt i32 %i.aye, %i.aym
  br i1 %i.ayn, label %.lr.ph1675, label %._crit_edge1676

.lr.ph1675:                                       ; preds = %.preheader1189
  %i.ayo = load ptr, ptr %i.afm, align 8, !tbaa !48 ; 8 uses
  %.promoted1677 = load i64, ptr %i.afn, align 8, !tbaa !297 ; 3 uses
  %i.ayp = sext i32 %i.aye to i64                 ; 6 uses
  %wide.trip.count1987 = sext i32 %i.aym to i64   ; 5 uses
  %i.ayq = sub nsw i64 %wide.trip.count1987, %i.ayp ; 3 uses
  %min.iters.check2763 = icmp ult i64 %i.ayq, 4
  br i1 %min.iters.check2763, label %scalar.ph2762.preheader, label %vector.memcheck2756

vector.memcheck2756:                              ; preds = %.lr.ph1675
  %i.ayr = shl nsw i64 %i.ayp, 3
  %scevgep2757 = getelementptr i8, ptr %i.ayo, i64 %i.ayr
  %i.ays = shl nsw i64 %wide.trip.count1987, 3
  %scevgep2758 = getelementptr i8, ptr %i.ayo, i64 %i.ays
  %bound02759 = icmp ult ptr %i.afn, %scevgep2758
  %bound12760 = icmp ult ptr %scevgep2757, %scevgep
  %found.conflict2761 = and i1 %bound02759, %bound12760
  br i1 %found.conflict2761, label %scalar.ph2762.preheader, label %vector.ph2764

vector.ph2764:                                    ; preds = %vector.memcheck2756
  %n.vec2765 = and i64 %i.ayq, -4                 ; 3 uses
  %i.ayt = add nsw i64 %n.vec2765, %i.ayp
  %i.ayu = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted1677, i64 0
  %invariant.gep = getelementptr [8 x i8], ptr %i.ayo, i64 %i.ayp
  br label %vector.body2766

vector.body2766:                                  ; preds = %vector.body2766, %vector.ph2764
  %index2767 = phi i64 [ 0, %vector.ph2764 ], [ %index.next2772, %vector.body2766 ] ; 2 uses
  %vec.phi2768 = phi <2 x i64> [ %i.ayu, %vector.ph2764 ], [ %i.ayw, %vector.body2766 ]
  %vec.phi2769 = phi <2 x i64> [ zeroinitializer, %vector.ph2764 ], [ %i.ayx, %vector.body2766 ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index2767 ; 2 uses
  %i.ayv = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load2770 = load <2 x i64>, ptr %gep, align 8, !tbaa !108, !alias.scope !298
  %wide.load2771 = load <2 x i64>, ptr %i.ayv, align 8, !tbaa !108, !alias.scope !298
  %i.ayw = add <2 x i64> %vec.phi2768, %wide.load2770 ; 2 uses
  %i.ayx = add <2 x i64> %vec.phi2769, %wide.load2771 ; 2 uses
  %index.next2772 = add nuw i64 %index2767, 4     ; 2 uses
  %i.ayy = icmp eq i64 %index.next2772, %n.vec2765
  br i1 %i.ayy, label %middle.block2773, label %vector.body2766, !llvm.loop !204

middle.block2773:                                 ; preds = %vector.body2766
  %bin.rdx2774 = add <2 x i64> %i.ayx, %i.ayw
  %i.ayz = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx2774) ; 2 uses
  store i64 %i.ayz, ptr %i.afn, align 8, !tbaa !297, !alias.scope !299, !noalias !298
  %cmp.n2775 = icmp eq i64 %i.ayq, %n.vec2765
  br i1 %cmp.n2775, label %._crit_edge1676, label %scalar.ph2762.preheader

scalar.ph2762.preheader:                          ; preds = %vector.memcheck2756, %.lr.ph1675, %middle.block2773
  %indvars.iv1984.ph = phi i64 [ %i.ayp, %vector.memcheck2756 ], [ %i.ayp, %.lr.ph1675 ], [ %i.ayt, %middle.block2773 ] ; 4 uses
  %.ph2815 = phi i64 [ %.promoted1677, %vector.memcheck2756 ], [ %.promoted1677, %.lr.ph1675 ], [ %i.ayz, %middle.block2773 ] ; 2 uses
  %i.aza = sub nsw i64 %wide.trip.count1987, %indvars.iv1984.ph
  %xtraiter3062 = and i64 %i.aza, 3               ; 2 uses
  %lcmp.mod3063.not = icmp eq i64 %xtraiter3062, 0
  br i1 %lcmp.mod3063.not, label %scalar.ph2762.prol.loopexit, label %scalar.ph2762.prol

scalar.ph2762.prol:                               ; preds = %scalar.ph2762.preheader, %scalar.ph2762.prol
  %indvars.iv1984.prol = phi i64 [ %indvars.iv.next1985.prol, %scalar.ph2762.prol ], [ %indvars.iv1984.ph, %scalar.ph2762.preheader ] ; 2 uses
  %i.azb = phi i64 [ %i.aze, %scalar.ph2762.prol ], [ %.ph2815, %scalar.ph2762.preheader ]
  %prol.iter3064 = phi i64 [ %prol.iter3064.next, %scalar.ph2762.prol ], [ 0, %scalar.ph2762.preheader ]
  %i.azc = getelementptr inbounds [8 x i8], ptr %i.ayo, i64 %indvars.iv1984.prol
  %i.azd = load i64, ptr %i.azc, align 8, !tbaa !108
  %i.aze = add i64 %i.azb, %i.azd                 ; 3 uses
  store i64 %i.aze, ptr %i.afn, align 8, !tbaa !297
  %indvars.iv.next1985.prol = add nsw i64 %indvars.iv1984.prol, 1 ; 2 uses
  %prol.iter3064.next = add i64 %prol.iter3064, 1 ; 2 uses
  %prol.iter3064.cmp.not = icmp eq i64 %prol.iter3064.next, %xtraiter3062
  br i1 %prol.iter3064.cmp.not, label %scalar.ph2762.prol.loopexit, label %scalar.ph2762.prol, !llvm.loop !206

scalar.ph2762.prol.loopexit:                      ; preds = %scalar.ph2762.prol, %scalar.ph2762.preheader
  %indvars.iv1984.unr = phi i64 [ %indvars.iv1984.ph, %scalar.ph2762.preheader ], [ %indvars.iv.next1985.prol, %scalar.ph2762.prol ]
  %.unr3065 = phi i64 [ %.ph2815, %scalar.ph2762.preheader ], [ %i.aze, %scalar.ph2762.prol ]
  %i.azf = sub nsw i64 %indvars.iv1984.ph, %wide.trip.count1987
  %i.azg = icmp ugt i64 %i.azf, -4
  br i1 %i.azg, label %._crit_edge1676, label %scalar.ph2762

.loopexit1198:                                    ; preds = %bb.ip, %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit, %bb.is
  %lpad.loopexit1200 = landingpad { ptr, i32 }
          cleanup
  br label %.body760

.loopexit.split-lp1199:                           ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i
  %lpad.loopexit.split-lp1201 = landingpad { ptr, i32 }
          cleanup
  br label %.body760

scalar.ph2762:                                    ; preds = %scalar.ph2762.prol.loopexit, %scalar.ph2762
  %indvars.iv1984 = phi i64 [ %indvars.iv.next1985.3, %scalar.ph2762 ], [ %indvars.iv1984.unr, %scalar.ph2762.prol.loopexit ] ; 5 uses
  %i.azh = phi i64 [ %i.azw, %scalar.ph2762 ], [ %.unr3065, %scalar.ph2762.prol.loopexit ]
  %i.azi = getelementptr inbounds [8 x i8], ptr %i.ayo, i64 %indvars.iv1984
  %i.azj = load i64, ptr %i.azi, align 8, !tbaa !108
  %i.azk = add i64 %i.azh, %i.azj                 ; 2 uses
  store i64 %i.azk, ptr %i.afn, align 8, !tbaa !297
  %i.azl = getelementptr [8 x i8], ptr %i.ayo, i64 %indvars.iv1984
  %i.azm = getelementptr i8, ptr %i.azl, i64 8
  %i.azn = load i64, ptr %i.azm, align 8, !tbaa !108
  %i.azo = add i64 %i.azk, %i.azn                 ; 2 uses
  store i64 %i.azo, ptr %i.afn, align 8, !tbaa !297
  %i.azp = getelementptr [8 x i8], ptr %i.ayo, i64 %indvars.iv1984
  %i.azq = getelementptr i8, ptr %i.azp, i64 16
  %i.azr = load i64, ptr %i.azq, align 8, !tbaa !108
  %i.azs = add i64 %i.azo, %i.azr                 ; 2 uses
  store i64 %i.azs, ptr %i.afn, align 8, !tbaa !297
  %i.azt = getelementptr [8 x i8], ptr %i.ayo, i64 %indvars.iv1984
  %i.azu = getelementptr i8, ptr %i.azt, i64 24
  %i.azv = load i64, ptr %i.azu, align 8, !tbaa !108
  %i.azw = add i64 %i.azs, %i.azv                 ; 2 uses
  store i64 %i.azw, ptr %i.afn, align 8, !tbaa !297
  %indvars.iv.next1985.3 = add nsw i64 %indvars.iv1984, 4 ; 2 uses
  %exitcond1988.not.3 = icmp eq i64 %indvars.iv.next1985.3, %wide.trip.count1987
  br i1 %exitcond1988.not.3, label %._crit_edge1676, label %scalar.ph2762, !llvm.loop !207

._crit_edge1676:                                  ; preds = %scalar.ph2762.prol.loopexit, %scalar.ph2762, %middle.block2773, %.preheader1189
  %i.azx = load i32, ptr %i.afo, align 4, !tbaa !47 ; 3 uses
  %i.azy = icmp eq i32 %i.azx, 0
  br i1 %i.azy, label %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i: ; preds = %._crit_edge1676
  %i.azz = icmp sgt i32 %i.azx, 0
  br i1 %i.azz, label %.lr.ph.i755, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i

.lr.ph.i755:                                      ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i
  %.0614.i = add nsw i32 %i.azx, -1               ; 2 uses
  %i.baa = load i32, ptr %i.afp, align 4, !tbaa !47 ; 2 uses
  %i.bab = icmp sgt i32 %i.baa, 0
  %i.bac = load ptr, ptr %i.afq, align 8
  %wide.trip.count.i.i756 = zext nneg i32 %i.baa to i64
  br i1 %i.bab, label %.lr.ph.i.us.i, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.i: ; preds = %bb.iq
  %.06.i = add nsw i32 %.0615.us.i, -1
  %46 = icmp sgt i32 %.0615.us.i, 0
  br i1 %46, label %.lr.ph.i.us.i, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i, !llvm.loop !208

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i755, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.i
  %.0615.us.i = phi i32 [ %.06.i, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.i ], [ %.0614.i, %.lr.ph.i755 ] ; 4 uses
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ir, %.lr.ph.i.us.i
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.i.us.i ], [ %indvars.iv.next.i.us.i, %bb.ir ] ; 2 uses
  %i.bad = getelementptr inbounds nuw [8 x i8], ptr %i.bac, i64 %indvars.iv.i.us.i
  %i.bae = getelementptr inbounds nuw i8, ptr %i.bad, i64 4
  %i.baf = load i32, ptr %i.bae, align 4, !tbaa !300
  %i.bag = icmp eq i32 %i.baf, %.0615.us.i
  br i1 %i.bag, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.i, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i756
  br i1 %exitcond.not.i.us.i, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i, label %bb.iq, !llvm.loop !209

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i: ; preds = %bb.ir, %.lr.ph.i755
  %.0613.i = phi i32 [ %.0614.i, %.lr.ph.i755 ], [ %.0615.us.i, %bb.ir ]
  %i.bah = load ptr, ptr %i.afr, align 8, !tbaa !48
  %i.bai = sext i32 %.0613.i to i64
  %i.baj = getelementptr inbounds [8 x i8], ptr %i.bah, i64 %i.bai
  %i.bak = load i64, ptr %i.baj, align 8, !tbaa !108
  br label %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i: ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.i
  %i.bal = call ptr @__cxa_allocate_exception(i64 4) #17 ; 2 uses
  store i32 1, ptr %i.bal, align 16, !tbaa !17
  invoke void @__cxa_throw(ptr nonnull %i.bal, ptr nonnull @_ZTIi, ptr null) #21
          to label %.noexc757 unwind label %.loopexit.split-lp1199

.noexc757:                                        ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i
  unreachable

_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit:  ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i, %._crit_edge1676
  %.1.i = phi i64 [ %i.bak, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i ], [ 0, %._crit_edge1676 ]
  %i.bam = load i64, ptr %i.afs, align 8, !tbaa !301
  %i.ban = add i64 %i.bam, %.1.i
  store i64 %i.ban, ptr %i.afs, align 8, !tbaa !301
  %i.bao = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #18
          to label %.noexc758 unwind label %.loopexit1198 ; 3 uses

.noexc758:                                        ; preds = %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit
  invoke void @_ZN8NArchive3N7z7CFolderC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(133) %i.bao, ptr noundef nonnull align 8 dereferenceable(133) %32)
          to label %bb.is unwind label %bb.it

bb.is:                                            ; preds = %.noexc758
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.aft)
          to label %_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE3AddERKS2_.exit762 unwind label %.loopexit1198

bb.it:                                            ; preds = %.noexc758
  %i.bap = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bao, i64 noundef 136) #19
  br label %.body760

_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE3AddERKS2_.exit762: ; preds = %bb.is
  %i.baq = load ptr, ptr %i.afu, align 8, !tbaa !48
  %i.bar = load i32, ptr %i.afv, align 4, !tbaa !47 ; 2 uses
  %i.bas = sext i32 %i.bar to i64
  %i.bat = getelementptr inbounds [8 x i8], ptr %i.baq, i64 %i.bas
  store ptr %i.bao, ptr %i.bat, align 8, !tbaa !49
  %i.bau = add nsw i32 %i.bar, 1
  store i32 %i.bau, ptr %i.afv, align 4, !tbaa !47
  br label %bb.iu

bb.iu:                                            ; preds = %_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE3AddERKS2_.exit762, %_ZN11CVirtThread10WaitFinishEv.exit, %bb.im
  %i.bav = phi i1 [ false, %bb.im ], [ false, %_ZN11CVirtThread10WaitFinishEv.exit ], [ true, %_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE3AddERKS2_.exit762 ]
  %.16 = phi i32 [ %i.ayh, %bb.im ], [ %i.ayl, %_ZN11CVirtThread10WaitFinishEv.exit ], [ %.10.676..., %_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE3AddERKS2_.exit762 ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.aff) #17
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.afc) #17
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.aez) #17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE, i64 16), ptr %32, align 8, !tbaa !41
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(133) %32)
          to label %_ZN8NArchive3N7z7CFolderD2Ev.exit unwind label %bb.iv, !inline_history !142

bb.iv:                                            ; preds = %bb.iu
  %i.baw = landingpad { ptr, i32 }
          catch ptr null
  %i.bax = extractvalue { ptr, i32 } %i.baw, 0
  call void @__clang_call_terminate(ptr %i.bax) #20, !inline_history !142
  unreachable

_ZN8NArchive3N7z7CFolderD2Ev.exit:                ; preds = %bb.iu
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(133) %32) #17, !inline_history !142
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #17
  br label %bb.iw

bb.iw:                                            ; preds = %_ZN8NArchive3N7z17CFolderOutStream24InitEPKNS0_18CArchiveDatabaseExEjPK13CRecordVectorIbEP20ISequentialOutStream.exit, %_ZN8NArchive3N7z7CFolderD2Ev.exit
  %.14547 = phi i1 [ %i.bav, %_ZN8NArchive3N7z7CFolderD2Ev.exit ], [ false, %_ZN8NArchive3N7z17CFolderOutStream24InitEPKNS0_18CArchiveDatabaseExEjPK13CRecordVectorIbEP20ISequentialOutStream.exit ]
  %.17 = phi i32 [ %.16, %_ZN8NArchive3N7z7CFolderD2Ev.exit ], [ 1, %_ZN8NArchive3N7z17CFolderOutStream24InitEPKNS0_18CArchiveDatabaseExEjPK13CRecordVectorIbEP20ISequentialOutStream.exit ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %31) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #17
  %i.bay = load ptr, ptr %30, align 8, !tbaa !141 ; 3 uses
  %.not.i763 = icmp eq ptr %i.bay, null
  br i1 %.not.i763, label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.baz = load ptr, ptr %i.bay, align 8, !tbaa !41
  %i.bba = getelementptr inbounds nuw i8, ptr %i.baz, i64 16
  %i.bbb = load ptr, ptr %i.bba, align 8
  %i.bbc = invoke noundef i32 %i.bbb(ptr noundef nonnull align 8 dereferenceable(8) %i.bay)
          to label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit unwind label %bb.iy ; 0 uses

bb.iy:                                            ; preds = %bb.ix
  %i.bbd = landingpad { ptr, i32 }
          catch ptr null
  %i.bbe = extractvalue { ptr, i32 } %i.bbd, 0
  call void @__clang_call_terminate(ptr %i.bbe) #20
  unreachable

_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit:    ; preds = %bb.iw, %bb.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #17
  %i.bbf = load ptr, ptr %29, align 8, !tbaa !42  ; 3 uses
  %.not.i764 = icmp eq ptr %i.bbf, null
  br i1 %.not.i764, label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit, label %bb.iz

bb.iz:                                            ; preds = %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
  %i.bbg = load ptr, ptr %i.bbf, align 8, !tbaa !41
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bbg, i64 16
  %i.bbi = load ptr, ptr %i.bbh, align 8
  %i.bbj = invoke noundef i32 %i.bbi(ptr noundef nonnull align 8 dereferenceable(8) %i.bbf)
          to label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit unwind label %bb.ja ; 0 uses

bb.ja:                                            ; preds = %bb.iz
  %i.bbk = landingpad { ptr, i32 }
          catch ptr null
  %i.bbl = extractvalue { ptr, i32 } %i.bbk, 0
  call void @__clang_call_terminate(ptr %i.bbl) #20
  unreachable

_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit:   ; preds = %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit, %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #17
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ht, %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit
  %.15548 = phi i1 [ %.14547, %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit ], [ false, %bb.ht ]
  %.18 = phi i32 [ %.17, %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit ], [ %i.auz, %bb.ht ] ; 2 uses
  %i.bbm = load ptr, ptr %i.aed, align 8, !tbaa !138 ; 5 uses
  %.not.i765 = icmp eq ptr %i.bbm, null
  br i1 %.not.i765, label %bb.je, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbm, i64 88
  %i.bbo = load i8, ptr %i.bbn, align 8, !tbaa !144, !range !54, !noundef !55
  %i.bbp = trunc nuw i8 %i.bbo to i1
  br i1 %i.bbp, label %bb.jd, label %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i

bb.jd:                                            ; preds = %bb.jc
  %i.bbq = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(89) %i.bbm) #17 ; 0 uses
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbm, i64 40
  %i.bbs = call i32 @pthread_cond_destroy(ptr noundef nonnull %i.bbr) #17 ; 0 uses
  br label %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i

_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i: ; preds = %bb.jd, %bb.jc
  call void @_ZdlPvm(ptr noundef nonnull %i.bbm, i64 noundef 96) #19
  br label %bb.je

bb.je:                                            ; preds = %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i, %bb.jb
  store ptr null, ptr %i.aed, align 8, !tbaa !138
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE, i64 16), ptr null>, ptr %i.aec, align 16
  %i.bbt = invoke noundef i32 @Event_Close(ptr noundef nonnull align 8 dereferenceable(104) %i.aeb)
          to label %_ZN13CStreamBinderD2Ev.exit unwind label %bb.jf ; 0 uses

bb.jf:                                            ; preds = %bb.je
  %i.bbu = landingpad { ptr, i32 }
          catch ptr null
  %i.bbv = extractvalue { ptr, i32 } %i.bbu, 0
  call void @__clang_call_terminate(ptr %i.bbv) #20
  unreachable

_ZN13CStreamBinderD2Ev.exit:                      ; preds = %bb.je
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #17
  br i1 %.15548, label %bb.jn, label %.critedge675.thread.loopexit

.body760:                                         ; preds = %.loopexit1198, %.loopexit.split-lp1199, %bb.it, %bb.io
  %.pn605 = phi { ptr, i32 } [ %i.ayj, %bb.io ], [ %i.bap, %bb.it ], [ %lpad.loopexit1200, %.loopexit1198 ], [ %lpad.loopexit.split-lp1201, %.loopexit.split-lp1199 ]
  call void @_ZN8NArchive3N7z7CFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(133) dereferenceable(133) %32) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #17
  br label %bb.jg

bb.jg:                                            ; preds = %.body760, %bb.in, %bb.if, %bb.ic
  %.pn608 = phi { ptr, i32 } [ %i.awt, %bb.ic ], [ %.pn605, %.body760 ], [ %i.ayi, %bb.in ], [ %i.axb, %bb.if ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %31) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #17
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jg, %bb.hz
  %.pn608.pn = phi { ptr, i32 } [ %.pn608, %bb.jg ], [ %i.awa, %bb.hz ]
  %i.bbw = load ptr, ptr %30, align 8, !tbaa !141 ; 3 uses
  %.not.i766 = icmp eq ptr %i.bbw, null
  br i1 %.not.i766, label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit767, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.bbx = load ptr, ptr %i.bbw, align 8, !tbaa !41
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbx, i64 16
  %i.bbz = load ptr, ptr %i.bby, align 8
  %i.bca = invoke noundef i32 %i.bbz(ptr noundef nonnull align 8 dereferenceable(8) %i.bbw)
          to label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit767 unwind label %bb.jj ; 0 uses

bb.jj:                                            ; preds = %bb.ji
  %i.bcb = landingpad { ptr, i32 }
          catch ptr null
  %i.bcc = extractvalue { ptr, i32 } %i.bcb, 0
  call void @__clang_call_terminate(ptr %i.bcc) #20
  unreachable

_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit767: ; preds = %bb.jh, %bb.ji
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #17
  %i.bcd = load ptr, ptr %29, align 8, !tbaa !42  ; 3 uses
  %.not.i768 = icmp eq ptr %i.bcd, null
  br i1 %.not.i768, label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit769, label %bb.jk

bb.jk:                                            ; preds = %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit767
  %i.bce = load ptr, ptr %i.bcd, align 8, !tbaa !41
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bce, i64 16
  %i.bcg = load ptr, ptr %i.bcf, align 8
  %i.bch = invoke noundef i32 %i.bcg(ptr noundef nonnull align 8 dereferenceable(8) %i.bcd)
          to label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit769 unwind label %bb.jl ; 0 uses

bb.jl:                                            ; preds = %bb.jk
  %i.bci = landingpad { ptr, i32 }
          catch ptr null
  %i.bcj = extractvalue { ptr, i32 } %i.bci, 0
  call void @__clang_call_terminate(ptr %i.bcj) #20
  unreachable
end_hunk_0
begin_hunk_1_@_ZN8NArchive3N7z6UpdateEP9IInStreamPKNS0_18CArchiveDatabaseExERK13CObjectVectorINS0_11CUpdateItemEERNS0_11COutArchiveERNS0_16CArchiveDatabaseEP20ISequentialOutStreamP22IArchiveUpdateCallbackRKNS0_14CUpdateOptionsEP22ICryptoGetTextPassword:bb.a
          to label %bb.ly unwind label %bb.mc

bb.ly:                                            ; preds = %bb.lx
  %i.bne = load ptr, ptr %i.bnd, align 8, !tbaa !41
  %i.bnf = getelementptr inbounds nuw i8, ptr %i.bne, i64 8
  %i.bng = load ptr, ptr %i.bnf, align 8
  %i.bnh = invoke noundef i32 %i.bng(ptr noundef nonnull align 8 dereferenceable(8) %i.bnd)
          to label %_ZN9CMyComPtrI19ISequentialInStreamEC2EPS0_.exit unwind label %bb.md, !inline_history !226 ; 0 uses

_ZN9CMyComPtrI19ISequentialInStreamEC2EPS0_.exit: ; preds = %bb.ly
  %i.bni = load ptr, ptr %i.agt, align 8, !tbaa !48
  %i.bnj = sext i32 %.5 to i64                    ; 2 uses
  %i.bnk = getelementptr inbounds [4 x i8], ptr %i.bni, i64 %i.bnj
  invoke void @_ZN8NArchive3N7z15CFolderInStream4InitEP22IArchiveUpdateCallbackPKjj(ptr noundef nonnull align 8 dereferenceable(184) %i.bnd, ptr noundef nonnull %6, ptr noundef nonnull %i.bnk, i32 noundef %spec.store.select21)
          to label %bb.lz unwind label %bb.me

bb.lz:                                            ; preds = %_ZN9CMyComPtrI19ISequentialInStreamEC2EPS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.agy, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.agz, align 8, !tbaa !101
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE, i64 16), ptr %40, align 8, !tbaa !41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ahb, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.ahc, align 8, !tbaa !101
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIN8NArchive3N7z9CBindPairEE, i64 16), ptr %i.aha, align 8, !tbaa !41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ahe, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.ahf, align 8, !tbaa !101
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIjE, i64 16), ptr %i.ahd, align 8, !tbaa !41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ahh, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.ahi, align 8, !tbaa !101
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIyE, i64 16), ptr %i.ahg, align 8, !tbaa !41
  store i8 0, ptr %i.ahj, align 4, !tbaa !296
  %i.bnl = load i32, ptr %i.aew, align 4, !tbaa !47 ; 2 uses
  %i.bnm = load ptr, ptr %i.afj, align 8, !tbaa !42
  %i.bnn = invoke noundef i32 @_ZN8NArchive3N7z8CEncoder6EncodeEP19ISequentialInStreamPKyS5_RNS0_7CFolderEP20ISequentialOutStreamR13CRecordVectorIyEP21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(433) %27, ptr noundef nonnull %i.bnd, ptr noundef null, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(133) %40, ptr noundef %i.bnm, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %i.uf)
          to label %bb.ma unwind label %bb.mf     ; 3 uses

bb.ma:                                            ; preds = %bb.lz
  %.not627 = icmp eq i32 %i.bnn, 0                ; 2 uses
  %.23. = select i1 %.not627, i32 %.23, i32 %i.bnn
  br i1 %.not627, label %.preheader1183, label %.loopexit

.preheader1183:                                   ; preds = %bb.ma
  %i.bno = load i32, ptr %i.aew, align 4, !tbaa !47 ; 2 uses
  %i.bnp = icmp slt i32 %i.bnl, %i.bno
  br i1 %i.bnp, label %.lr.ph1714, label %._crit_edge1715

.lr.ph1714:                                       ; preds = %.preheader1183
  %i.bnq = load ptr, ptr %i.afm, align 8, !tbaa !48 ; 8 uses
  %.promoted1716 = load i64, ptr %i.afn, align 8, !tbaa !297 ; 3 uses
  %i.bnr = sext i32 %i.bnl to i64                 ; 6 uses
  %wide.trip.count2015 = sext i32 %i.bno to i64   ; 5 uses
  %i.bns = sub nsw i64 %wide.trip.count2015, %i.bnr ; 3 uses
  %min.iters.check2694 = icmp ult i64 %i.bns, 4
  br i1 %min.iters.check2694, label %scalar.ph2693.preheader, label %vector.memcheck2690

vector.memcheck2690:                              ; preds = %.lr.ph1714
  %i.bnt = shl nsw i64 %i.bnr, 3
  %scevgep2691 = getelementptr i8, ptr %i.bnq, i64 %i.bnt
  %i.bnu = shl nsw i64 %wide.trip.count2015, 3
  %scevgep2692 = getelementptr i8, ptr %i.bnq, i64 %i.bnu
  %bound0 = icmp ult ptr %i.afn, %scevgep2692
  %bound1 = icmp ult ptr %scevgep2691, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph2693.preheader, label %vector.ph2695

vector.ph2695:                                    ; preds = %vector.memcheck2690
  %n.vec2696 = and i64 %i.bns, -4                 ; 3 uses
  %i.bnv = add nsw i64 %n.vec2696, %i.bnr
  %i.bnw = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted1716, i64 0
  %invariant.gep3326 = getelementptr [8 x i8], ptr %i.bnq, i64 %i.bnr
  br label %vector.body2697

vector.body2697:                                  ; preds = %vector.body2697, %vector.ph2695
  %index2698 = phi i64 [ 0, %vector.ph2695 ], [ %index.next2703, %vector.body2697 ] ; 2 uses
  %vec.phi2699 = phi <2 x i64> [ %i.bnw, %vector.ph2695 ], [ %i.bny, %vector.body2697 ]
  %vec.phi2700 = phi <2 x i64> [ zeroinitializer, %vector.ph2695 ], [ %i.bnz, %vector.body2697 ]
  %gep3327 = getelementptr [8 x i8], ptr %invariant.gep3326, i64 %index2698 ; 2 uses
  %i.bnx = getelementptr inbounds nuw i8, ptr %gep3327, i64 16
  %wide.load2701 = load <2 x i64>, ptr %gep3327, align 8, !tbaa !108, !alias.scope !308
  %wide.load2702 = load <2 x i64>, ptr %i.bnx, align 8, !tbaa !108, !alias.scope !308
  %i.bny = add <2 x i64> %vec.phi2699, %wide.load2701 ; 2 uses
  %i.bnz = add <2 x i64> %vec.phi2700, %wide.load2702 ; 2 uses
  %index.next2703 = add nuw i64 %index2698, 4     ; 2 uses
  %i.boa = icmp eq i64 %index.next2703, %n.vec2696
  br i1 %i.boa, label %middle.block2704, label %vector.body2697, !llvm.loop !229

middle.block2704:                                 ; preds = %vector.body2697
  %bin.rdx2705 = add <2 x i64> %i.bnz, %i.bny
  %i.bob = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx2705) ; 2 uses
  store i64 %i.bob, ptr %i.afn, align 8, !tbaa !297, !alias.scope !309, !noalias !308
  %cmp.n2706 = icmp eq i64 %i.bns, %n.vec2696
  br i1 %cmp.n2706, label %._crit_edge1715, label %scalar.ph2693.preheader

scalar.ph2693.preheader:                          ; preds = %vector.memcheck2690, %.lr.ph1714, %middle.block2704
  %indvars.iv2011.ph = phi i64 [ %i.bnr, %vector.memcheck2690 ], [ %i.bnr, %.lr.ph1714 ], [ %i.bnv, %middle.block2704 ] ; 4 uses
  %.ph = phi i64 [ %.promoted1716, %vector.memcheck2690 ], [ %.promoted1716, %.lr.ph1714 ], [ %i.bob, %middle.block2704 ] ; 2 uses
  %i.boc = sub nsw i64 %wide.trip.count2015, %indvars.iv2011.ph
  %xtraiter3075 = and i64 %i.boc, 3               ; 2 uses
  %lcmp.mod3076.not = icmp eq i64 %xtraiter3075, 0
  br i1 %lcmp.mod3076.not, label %scalar.ph2693.prol.loopexit, label %scalar.ph2693.prol

scalar.ph2693.prol:                               ; preds = %scalar.ph2693.preheader, %scalar.ph2693.prol
  %indvars.iv2011.prol = phi i64 [ %indvars.iv.next2012.prol, %scalar.ph2693.prol ], [ %indvars.iv2011.ph, %scalar.ph2693.preheader ] ; 2 uses
  %i.bod = phi i64 [ %i.bog, %scalar.ph2693.prol ], [ %.ph, %scalar.ph2693.preheader ]
  %prol.iter3077 = phi i64 [ %prol.iter3077.next, %scalar.ph2693.prol ], [ 0, %scalar.ph2693.preheader ]
  %i.boe = getelementptr inbounds [8 x i8], ptr %i.bnq, i64 %indvars.iv2011.prol
  %i.bof = load i64, ptr %i.boe, align 8, !tbaa !108
  %i.bog = add i64 %i.bod, %i.bof                 ; 3 uses
  store i64 %i.bog, ptr %i.afn, align 8, !tbaa !297
  %indvars.iv.next2012.prol = add nsw i64 %indvars.iv2011.prol, 1 ; 2 uses
  %prol.iter3077.next = add i64 %prol.iter3077, 1 ; 2 uses
  %prol.iter3077.cmp.not = icmp eq i64 %prol.iter3077.next, %xtraiter3075
  br i1 %prol.iter3077.cmp.not, label %scalar.ph2693.prol.loopexit, label %scalar.ph2693.prol, !llvm.loop !231

scalar.ph2693.prol.loopexit:                      ; preds = %scalar.ph2693.prol, %scalar.ph2693.preheader
  %indvars.iv2011.unr = phi i64 [ %indvars.iv2011.ph, %scalar.ph2693.preheader ], [ %indvars.iv.next2012.prol, %scalar.ph2693.prol ]
  %.unr3078 = phi i64 [ %.ph, %scalar.ph2693.preheader ], [ %i.bog, %scalar.ph2693.prol ]
  %i.boh = sub nsw i64 %indvars.iv2011.ph, %wide.trip.count2015
  %i.boi = icmp ugt i64 %i.boh, -4
  br i1 %i.boi, label %._crit_edge1715, label %scalar.ph2693

bb.mb:                                            ; preds = %.thread1157
  %i.boj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit922

bb.mc:                                            ; preds = %bb.lx
  %i.bok = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bnd, i64 noundef 184) #19
  br label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit922

bb.md:                                            ; preds = %bb.ly
  %i.bol = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit922

bb.me:                                            ; preds = %_ZN9CMyComPtrI19ISequentialInStreamEC2EPS0_.exit
  %i.bom = landingpad { ptr, i32 }
          cleanup
  br label %bb.ne

.loopexit1192:                                    ; preds = %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit894, %bb.mi
  %lpad.loopexit1194 = landingpad { ptr, i32 }
          cleanup
  br label %.body897

.loopexit.split-lp1193:                           ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i879
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body897

bb.mf:                                            ; preds = %bb.lz
  %i.bon = landingpad { ptr, i32 }
          cleanup
  br label %.body897

scalar.ph2693:                                    ; preds = %scalar.ph2693.prol.loopexit, %scalar.ph2693
  %indvars.iv2011 = phi i64 [ %indvars.iv.next2012.3, %scalar.ph2693 ], [ %indvars.iv2011.unr, %scalar.ph2693.prol.loopexit ] ; 5 uses
  %i.boo = phi i64 [ %i.bpd, %scalar.ph2693 ], [ %.unr3078, %scalar.ph2693.prol.loopexit ]
  %i.bop = getelementptr inbounds [8 x i8], ptr %i.bnq, i64 %indvars.iv2011
  %i.boq = load i64, ptr %i.bop, align 8, !tbaa !108
  %i.bor = add i64 %i.boo, %i.boq                 ; 2 uses
  store i64 %i.bor, ptr %i.afn, align 8, !tbaa !297
  %i.bos = getelementptr [8 x i8], ptr %i.bnq, i64 %indvars.iv2011
  %i.bot = getelementptr i8, ptr %i.bos, i64 8
  %i.bou = load i64, ptr %i.bot, align 8, !tbaa !108
  %i.bov = add i64 %i.bor, %i.bou                 ; 2 uses
  store i64 %i.bov, ptr %i.afn, align 8, !tbaa !297
  %i.bow = getelementptr [8 x i8], ptr %i.bnq, i64 %indvars.iv2011
  %i.box = getelementptr i8, ptr %i.bow, i64 16
  %i.boy = load i64, ptr %i.box, align 8, !tbaa !108
  %i.boz = add i64 %i.bov, %i.boy                 ; 2 uses
  store i64 %i.boz, ptr %i.afn, align 8, !tbaa !297
  %i.bpa = getelementptr [8 x i8], ptr %i.bnq, i64 %indvars.iv2011
  %i.bpb = getelementptr i8, ptr %i.bpa, i64 24
  %i.bpc = load i64, ptr %i.bpb, align 8, !tbaa !108
  %i.bpd = add i64 %i.boz, %i.bpc                 ; 2 uses
  store i64 %i.bpd, ptr %i.afn, align 8, !tbaa !297
  %indvars.iv.next2012.3 = add nsw i64 %indvars.iv2011, 4 ; 2 uses
  %exitcond2016.not.3 = icmp eq i64 %indvars.iv.next2012.3, %wide.trip.count2015
  br i1 %exitcond2016.not.3, label %._crit_edge1715, label %scalar.ph2693, !llvm.loop !232

._crit_edge1715:                                  ; preds = %scalar.ph2693.prol.loopexit, %scalar.ph2693, %middle.block2704, %.preheader1183
  %i.bpe = load i32, ptr %i.ahk, align 4, !tbaa !47 ; 3 uses
  %i.bpf = icmp eq i32 %i.bpe, 0
  br i1 %i.bpf, label %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit894, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i878

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i878: ; preds = %._crit_edge1715
  %i.bpg = icmp sgt i32 %i.bpe, 0
  br i1 %i.bpg, label %.lr.ph.i880, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i879

.lr.ph.i880:                                      ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i878
  %.0614.i881 = add nsw i32 %i.bpe, -1            ; 2 uses
  %i.bph = load i32, ptr %i.ahl, align 4, !tbaa !47 ; 2 uses
  %i.bpi = icmp sgt i32 %i.bph, 0
  %i.bpj = load ptr, ptr %i.ahm, align 8
  %wide.trip.count.i.i882 = zext nneg i32 %i.bph to i64
  br i1 %i.bpi, label %.lr.ph.i.us.i886, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i883

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.i895: ; preds = %bb.mg
  %.06.i896 = add nsw i32 %.0615.us.i887, -1
  %47 = icmp sgt i32 %.0615.us.i887, 0
  br i1 %47, label %.lr.ph.i.us.i886, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i879, !llvm.loop !208

.lr.ph.i.us.i886:                                 ; preds = %.lr.ph.i880, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.i895
  %.0615.us.i887 = phi i32 [ %.06.i896, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.i895 ], [ %.0614.i881, %.lr.ph.i880 ] ; 4 uses
  br label %bb.mg

bb.mg:                                            ; preds = %bb.mh, %.lr.ph.i.us.i886
  %indvars.iv.i.us.i888 = phi i64 [ 0, %.lr.ph.i.us.i886 ], [ %indvars.iv.next.i.us.i889, %bb.mh ] ; 2 uses
  %i.bpk = getelementptr inbounds nuw [8 x i8], ptr %i.bpj, i64 %indvars.iv.i.us.i888
  %i.bpl = getelementptr inbounds nuw i8, ptr %i.bpk, i64 4
  %i.bpm = load i32, ptr %i.bpl, align 4, !tbaa !300
  %i.bpn = icmp eq i32 %i.bpm, %.0615.us.i887
  br i1 %i.bpn, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.i895, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %indvars.iv.next.i.us.i889 = add nuw nsw i64 %indvars.iv.i.us.i888, 1 ; 2 uses
  %exitcond.not.i.us.i890 = icmp eq i64 %indvars.iv.next.i.us.i889, %wide.trip.count.i.i882
  br i1 %exitcond.not.i.us.i890, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i883, label %bb.mg, !llvm.loop !209

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i883: ; preds = %bb.mh, %.lr.ph.i880
  %.0613.i884 = phi i32 [ %.0614.i881, %.lr.ph.i880 ], [ %.0615.us.i887, %bb.mh ]
  %i.bpo = load ptr, ptr %i.ahn, align 8, !tbaa !48
  %i.bpp = sext i32 %.0613.i884 to i64
  %i.bpq = getelementptr inbounds [8 x i8], ptr %i.bpo, i64 %i.bpp
  %i.bpr = load i64, ptr %i.bpq, align 8, !tbaa !108
  br label %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit894

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i879: ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i878, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.i895
  %i.bps = call ptr @__cxa_allocate_exception(i64 4) #17 ; 2 uses
  store i32 1, ptr %i.bps, align 16, !tbaa !17
  invoke void @__cxa_throw(ptr nonnull %i.bps, ptr nonnull @_ZTIi, ptr null) #21
          to label %.noexc893 unwind label %.loopexit.split-lp1193

.noexc893:                                        ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i879
  unreachable

_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit894: ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i883, %._crit_edge1715
  %.1.i885 = phi i64 [ %i.bpr, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i883 ], [ 0, %._crit_edge1715 ]
  %i.bpt = load i64, ptr %i.afs, align 8, !tbaa !301
  %i.bpu = add i64 %i.bpt, %.1.i885
  store i64 %i.bpu, ptr %i.afs, align 8, !tbaa !301
  %i.bpv = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #18
          to label %.noexc895 unwind label %.loopexit1192 ; 3 uses

.noexc895:                                        ; preds = %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit894
  invoke void @_ZN8NArchive3N7z7CFolderC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(133) %i.bpv, ptr noundef nonnull align 8 dereferenceable(133) %40)
          to label %bb.mi unwind label %bb.mj

bb.mi:                                            ; preds = %.noexc895
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.aft)
          to label %_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE3AddERKS2_.exit899 unwind label %.loopexit1192

bb.mj:                                            ; preds = %.noexc895
  %i.bpw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bpv, i64 noundef 136) #19
  br label %.body897

_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE3AddERKS2_.exit899: ; preds = %bb.mi
  %i.bpx = load ptr, ptr %i.afu, align 8, !tbaa !48
  %i.bpy = load i32, ptr %i.afv, align 4, !tbaa !47 ; 2 uses
  %i.bpz = sext i32 %i.bpy to i64
  %i.bqa = getelementptr inbounds [8 x i8], ptr %i.bpx, i64 %i.bpz
  store ptr %i.bpv, ptr %i.bqa, align 8, !tbaa !49
  %i.bqb = add nsw i32 %i.bpy, 1
  store i32 %i.bqb, ptr %i.afv, align 4, !tbaa !47
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.bnd, i64 104
  %i.bqd = getelementptr inbounds nuw i8, ptr %i.bnd, i64 136
  %i.bqe = getelementptr inbounds nuw i8, ptr %i.bnd, i64 168
  %wide.trip.count2021 = zext i32 %spec.store.select21 to i64
  br label %bb.mk

bb.mk:                                            ; preds = %_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE3AddERKS2_.exit899, %_ZN8NArchive3N7z9CFileItemD2Ev.exit914.jt57
  %indvars.iv2017 = phi i64 [ 0, %_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE3AddERKS2_.exit899 ], [ %indvars.iv.next2018, %_ZN8NArchive3N7z9CFileItemD2Ev.exit914.jt57 ] ; 5 uses
  %.03851718 = phi i32 [ 0, %_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE3AddERKS2_.exit899 ], [ %.2.jt57, %_ZN8NArchive3N7z9CFileItemD2Ev.exit914.jt57 ] ; 2 uses
  %i.bqf = load ptr, ptr %i.agt, align 8, !tbaa !48
  %i.bqg = getelementptr [4 x i8], ptr %i.bqf, i64 %indvars.iv2017
  %i.bqh = getelementptr [4 x i8], ptr %i.bqg, i64 %i.bnj
  %i.bqi = load i32, ptr %i.bqh, align 4, !tbaa !17
  %i.bqj = load ptr, ptr %i.aej, align 8, !tbaa !48
  %i.bqk = sext i32 %i.bqi to i64
  %i.bql = getelementptr inbounds [8 x i8], ptr %i.bqj, i64 %i.bqk
  %i.bqm = load ptr, ptr %i.bql, align 8, !tbaa !49 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aho, i8 0, i64 16, i1 false)
  %i.bqn = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #18
          to label %.noexc911 unwind label %bb.mn ; 9 uses

.noexc911:                                        ; preds = %bb.mk
  %i.bqo = ptrtoaddr ptr %i.bqn to i64
  %i.bqp = load i32, ptr %i.ahq, align 4, !tbaa !121
  %i.bqq = icmp sgt i32 %i.bqp, 0
  %.pre1.i.i900 = load i32, ptr %i.ahp, align 8, !tbaa !21 ; 5 uses
  br i1 %i.bqq, label %.preheader.i.i.i901, label %bb.ml

.preheader.i.i.i901:                              ; preds = %.noexc911
  %i.bqr = icmp sgt i32 %.pre1.i.i900, 0
  %.pre.i.i.i902 = load ptr, ptr %i.aho, align 8, !tbaa !100 ; 9 uses
  br i1 %i.bqr, label %.lr.ph.i.i.i906, label %._crit_edge.i.i.i903

.lr.ph.i.i.i906:                                  ; preds = %.preheader.i.i.i901
  %.pre.i.i.i9022676 = ptrtoaddr ptr %.pre.i.i.i902 to i64
  %wide.trip.count.i.i.i907 = zext nneg i32 %.pre1.i.i900 to i64 ; 5 uses
  %min.iters.check2679 = icmp ult i32 %.pre1.i.i900, 8
  %i.bqs = sub i64 %.pre.i.i.i9022676, %i.bqo
  %diff.check2677 = icmp ugt i64 %i.bqs, -32
  %or.cond2813 = select i1 %min.iters.check2679, i1 true, i1 %diff.check2677
  br i1 %or.cond2813, label %scalar.ph2678.preheader, label %vector.ph2680

vector.ph2680:                                    ; preds = %.lr.ph.i.i.i906
  %n.vec2681 = and i64 %wide.trip.count.i.i.i907, 2147483640 ; 3 uses
  br label %vector.body2682

vector.body2682:                                  ; preds = %vector.body2682, %vector.ph2680
  %index2683 = phi i64 [ 0, %vector.ph2680 ], [ %index.next2686, %vector.body2682 ] ; 3 uses
  %i.bqt = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i902, i64 %index2683 ; 2 uses
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqt, i64 16
  %wide.load2684 = load <4 x i32>, ptr %i.bqt, align 4, !tbaa !23
  %wide.load2685 = load <4 x i32>, ptr %i.bqu, align 4, !tbaa !23
  %i.bqv = getelementptr inbounds nuw [4 x i8], ptr %i.bqn, i64 %index2683 ; 2 uses
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.bqv, i64 16
  store <4 x i32> %wide.load2684, ptr %i.bqv, align 4, !tbaa !23
  store <4 x i32> %wide.load2685, ptr %i.bqw, align 4, !tbaa !23
  %index.next2686 = add nuw i64 %index2683, 8     ; 2 uses
  %i.bqx = icmp eq i64 %index.next2686, %n.vec2681
  br i1 %i.bqx, label %middle.block2687, label %vector.body2682, !llvm.loop !233

middle.block2687:                                 ; preds = %vector.body2682
  %cmp.n2688 = icmp eq i64 %n.vec2681, %wide.trip.count.i.i.i907
  br i1 %cmp.n2688, label %._crit_edge.thread.i.i.i904, label %scalar.ph2678.preheader

scalar.ph2678.preheader:                          ; preds = %.lr.ph.i.i.i906, %middle.block2687
  %indvars.iv.i.i.i908.ph = phi i64 [ 0, %.lr.ph.i.i.i906 ], [ %n.vec2681, %middle.block2687 ] ; 3 uses
  %xtraiter3079 = and i64 %wide.trip.count.i.i.i907, 3 ; 2 uses
  %lcmp.mod3080.not = icmp eq i64 %xtraiter3079, 0
  br i1 %lcmp.mod3080.not, label %scalar.ph2678.prol.loopexit, label %scalar.ph2678.prol

scalar.ph2678.prol:                               ; preds = %scalar.ph2678.preheader, %scalar.ph2678.prol
  %indvars.iv.i.i.i908.prol = phi i64 [ %indvars.iv.next.i.i.i909.prol, %scalar.ph2678.prol ], [ %indvars.iv.i.i.i908.ph, %scalar.ph2678.preheader ] ; 3 uses
  %prol.iter3081 = phi i64 [ %prol.iter3081.next, %scalar.ph2678.prol ], [ 0, %scalar.ph2678.preheader ]
  %i.bqy = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i902, i64 %indvars.iv.i.i.i908.prol
  %i.bqz = load i32, ptr %i.bqy, align 4, !tbaa !23
  %i.bra = getelementptr inbounds nuw [4 x i8], ptr %i.bqn, i64 %indvars.iv.i.i.i908.prol
  store i32 %i.bqz, ptr %i.bra, align 4, !tbaa !23
  %indvars.iv.next.i.i.i909.prol = add nuw nsw i64 %indvars.iv.i.i.i908.prol, 1 ; 2 uses
  %prol.iter3081.next = add i64 %prol.iter3081, 1 ; 2 uses
  %prol.iter3081.cmp.not = icmp eq i64 %prol.iter3081.next, %xtraiter3079
  br i1 %prol.iter3081.cmp.not, label %scalar.ph2678.prol.loopexit, label %scalar.ph2678.prol, !llvm.loop !234

scalar.ph2678.prol.loopexit:                      ; preds = %scalar.ph2678.prol, %scalar.ph2678.preheader
  %indvars.iv.i.i.i908.unr = phi i64 [ %indvars.iv.i.i.i908.ph, %scalar.ph2678.preheader ], [ %indvars.iv.next.i.i.i909.prol, %scalar.ph2678.prol ]
  %i.brb = sub nsw i64 %indvars.iv.i.i.i908.ph, %wide.trip.count.i.i.i907
  %i.brc = icmp ugt i64 %i.brb, -4
  br i1 %i.brc, label %._crit_edge.thread.i.i.i904, label %scalar.ph2678

._crit_edge.i.i.i903:                             ; preds = %.preheader.i.i.i901
  %i.brd = icmp eq ptr %.pre.i.i.i902, null
  br i1 %i.brd, label %bb.ml, label %._crit_edge.thread.i.i.i904

scalar.ph2678:                                    ; preds = %scalar.ph2678.prol.loopexit, %scalar.ph2678
  %indvars.iv.i.i.i908 = phi i64 [ %indvars.iv.next.i.i.i909.3, %scalar.ph2678 ], [ %indvars.iv.i.i.i908.unr, %scalar.ph2678.prol.loopexit ] ; 6 uses
  %i.bre = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i902, i64 %indvars.iv.i.i.i908
  %i.brf = load i32, ptr %i.bre, align 4, !tbaa !23
  %i.brg = getelementptr inbounds nuw [4 x i8], ptr %i.bqn, i64 %indvars.iv.i.i.i908
  store i32 %i.brf, ptr %i.brg, align 4, !tbaa !23
  %indvars.iv.next.i.i.i909 = add nuw nsw i64 %indvars.iv.i.i.i908, 1 ; 2 uses
  %i.brh = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i902, i64 %indvars.iv.next.i.i.i909
  %i.bri = load i32, ptr %i.brh, align 4, !tbaa !23
  %i.brj = getelementptr inbounds nuw [4 x i8], ptr %i.bqn, i64 %indvars.iv.next.i.i.i909
  store i32 %i.bri, ptr %i.brj, align 4, !tbaa !23
  %indvars.iv.next.i.i.i909.1 = add nuw nsw i64 %indvars.iv.i.i.i908, 2 ; 2 uses
  %i.brk = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i902, i64 %indvars.iv.next.i.i.i909.1
  %i.brl = load i32, ptr %i.brk, align 4, !tbaa !23
  %i.brm = getelementptr inbounds nuw [4 x i8], ptr %i.bqn, i64 %indvars.iv.next.i.i.i909.1
  store i32 %i.brl, ptr %i.brm, align 4, !tbaa !23
  %indvars.iv.next.i.i.i909.2 = add nuw nsw i64 %indvars.iv.i.i.i908, 3 ; 2 uses
  %i.brn = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i902, i64 %indvars.iv.next.i.i.i909.2
  %i.bro = load i32, ptr %i.brn, align 4, !tbaa !23
  %i.brp = getelementptr inbounds nuw [4 x i8], ptr %i.bqn, i64 %indvars.iv.next.i.i.i909.2
  store i32 %i.bro, ptr %i.brp, align 4, !tbaa !23
  %indvars.iv.next.i.i.i909.3 = add nuw nsw i64 %indvars.iv.i.i.i908, 4 ; 2 uses
  %exitcond.not.i.i.i910.3 = icmp eq i64 %indvars.iv.next.i.i.i909.3, %wide.trip.count.i.i.i907
  br i1 %exitcond.not.i.i.i910.3, label %._crit_edge.thread.i.i.i904, label %scalar.ph2678, !llvm.loop !235

._crit_edge.thread.i.i.i904:                      ; preds = %scalar.ph2678.prol.loopexit, %scalar.ph2678, %middle.block2687, %._crit_edge.i.i.i903
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i902) #19
  %.pre.i.i905 = load i32, ptr %i.ahp, align 8, !tbaa !21
  br label %bb.ml

bb.ml:                                            ; preds = %._crit_edge.thread.i.i.i904, %._crit_edge.i.i.i903, %.noexc911
  %i.brq = phi i32 [ %.pre1.i.i900, %.noexc911 ], [ %.pre1.i.i900, %._crit_edge.i.i.i903 ], [ %.pre.i.i905, %._crit_edge.thread.i.i.i904 ]
  store ptr %i.bqn, ptr %i.aho, align 8, !tbaa !100
  %i.brr = sext i32 %i.brq to i64
  %i.brs = getelementptr inbounds [4 x i8], ptr %i.bqn, i64 %i.brr
  store i32 0, ptr %i.brs, align 4, !tbaa !23
  store i32 4, ptr %i.ahq, align 4, !tbaa !121
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.ahr, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #17
  %i.brt = getelementptr inbounds nuw i8, ptr %i.bqm, i64 61
  %i.bru = load i8, ptr %i.brt, align 1, !tbaa !302, !range !54, !noundef !55
  %i.brv = trunc nuw i8 %i.bru to i1
  br i1 %i.brv, label %bb.mm, label %bb.mq

bb.mm:                                            ; preds = %bb.ml
  invoke fastcc void @_ZN8NArchive3N7zL24FromUpdateItemToFileItemERKNS0_11CUpdateItemERNS0_9CFileItemERNS0_10CFileItem2E(ptr noundef nonnull align 8 dereferenceable(68) %i.bqm, ptr noundef nonnull align 8 dereferenceable(36) %41, ptr noundef nonnull align 8 dereferenceable(40) %42)
          to label %bb.mr unwind label %bb.mo

bb.mn:                                            ; preds = %bb.mk
  %i.brw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8NArchive3N7z9CFileItemD2Ev.exit913

bb.mo:                                            ; preds = %bb.mt, %bb.mq, %bb.mm
  %i.brx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #17
  %i.bry = load ptr, ptr %i.aho, align 8, !tbaa !100 ; 2 uses
  %i.brz = icmp eq ptr %i.bry, null
  br i1 %i.brz, label %_ZN8NArchive3N7z9CFileItemD2Ev.exit913, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  call void @_ZdaPv(ptr noundef nonnull %i.bry) #19
  br label %_ZN8NArchive3N7z9CFileItemD2Ev.exit913

bb.mq:                                            ; preds = %bb.ml
  %i.bsa = load i32, ptr %i.bqm, align 8, !tbaa !258
  invoke void @_ZNK8NArchive3N7z16CArchiveDatabase7GetFileEiRNS0_9CFileItemERNS0_10CFileItem2E(ptr noundef nonnull align 8 dereferenceable(480) %1, i32 noundef %i.bsa, ptr noundef nonnull align 8 dereferenceable(36) %41, ptr noundef nonnull align 8 dereferenceable(40) %42)
          to label %bb.mr unwind label %bb.mo
end_hunk_1
