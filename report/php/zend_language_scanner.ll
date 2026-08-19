inline.NumInlined: 61
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@lex_scan:bb.a
.preheader6859:                                   ; preds = %bb.aho
  %i.cci = getelementptr inbounds nuw i8, ptr %i.zt, i64 5 ; 2 uses
  store ptr %i.cci, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !104
  %i.ccj = getelementptr inbounds nuw i8, ptr %i.zt, i64 6 ; 2 uses
  %.not61089719 = icmp ult ptr %i.ccj, %i.ad
  br i1 %.not61089719, label %.lr.ph9720, label %.thread6532

.lr.ph9717:                                       ; preds = %.preheader6863, %.backedge6866
  %i.cck = phi ptr [ %i.ccq, %.backedge6866 ], [ %i.boq, %.preheader6863 ] ; 2 uses
  %i.ccl = phi ptr [ %i.ccp, %.backedge6866 ], [ %i.bop, %.preheader6863 ] ; 3 uses
  %i.ccm = load i8, ptr %i.ccl, align 1, !tbaa !44 ; 3 uses
  %i.ccn = icmp ult i8 %i.ccm, 32
  br i1 %i.ccn, label %bb.ahp, label %bb.ahq

bb.ahp:                                           ; preds = %.lr.ph9717
  %i.cco = icmp eq i8 %i.ccm, 9
  br i1 %i.cco, label %.backedge6866, label %.thread6501

.backedge6866:                                    ; preds = %bb.ahp, %bb.ahq
  %i.ccp = getelementptr inbounds nuw i8, ptr %i.ccl, i64 1 ; 2 uses
  store ptr %i.ccp, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !104
  %i.ccq = getelementptr inbounds nuw i8, ptr %i.ccl, i64 2 ; 2 uses
  %.not6107 = icmp ult ptr %i.ccq, %i.ad
  br i1 %.not6107, label %.lr.ph9717, label %.thread6532

bb.ahq:                                           ; preds = %.lr.ph9717
  switch i8 %i.ccm, label %.thread6501 [
    i8 32, label %.backedge6866
    i8 41, label %bb.aox
  ]

bb.ahr:                                           ; preds = %bb.ahy, %bb.ahx, %bb.ahv
  %i.ccr = getelementptr inbounds nuw i8, ptr %i.ccu, i64 1 ; 3 uses
  store ptr %i.ccr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !104
  %i.ccs = getelementptr inbounds nuw i8, ptr %i.ccu, i64 4
  %.not6064 = icmp ult ptr %i.ccs, %i.ad
  br i1 %.not6064, label %bb.ahs, label %.thread6532

bb.ahs:                                           ; preds = %bb.ahr
  %i.cct = load i8, ptr %i.ccr, align 1, !tbaa !44
  br label %.preheader6891

.preheader6891:                                   ; preds = %bb.adc, %bb.ahs
  %i.ccu = phi ptr [ %i.ccr, %bb.ahs ], [ %i.box, %bb.adc ] ; 3 uses
  %.64885 = phi i8 [ %i.cct, %bb.ahs ], [ %i.boy, %bb.adc ] ; 7 uses
  %i.ccv = icmp ult i8 %.64885, 91
  br i1 %i.ccv, label %bb.aht, label %bb.ahw

bb.aht:                                           ; preds = %.preheader6891
  %i.ccw = icmp samesign ult i8 %.64885, 48
  br i1 %i.ccw, label %bb.ahu, label %bb.ahv

bb.ahu:                                           ; preds = %bb.aht
  %i.ccx = icmp eq i8 %.64885, 34
  br i1 %i.ccx, label %bb.aoy, label %.thread6501

bb.ahv:                                           ; preds = %bb.aht
  %i.ccy = add nsw i8 %.64885, -58
  %or.cond740 = icmp ult i8 %i.ccy, 7
  br i1 %or.cond740, label %.thread6501, label %bb.ahr

bb.ahw:                                           ; preds = %.preheader6891
  %i.ccz = icmp ult i8 %.64885, 97
  br i1 %i.ccz, label %bb.ahx, label %bb.ahy

bb.ahx:                                           ; preds = %bb.ahw
  %i.cda = icmp eq i8 %.64885, 95
  br i1 %i.cda, label %bb.ahr, label %.thread6501

bb.ahy:                                           ; preds = %bb.ahw
  %or.cond743 = icmp sgt i8 %.64885, 122
  br i1 %or.cond743, label %.thread6501, label %bb.ahr

bb.ahz:                                           ; preds = %bb.aig, %bb.aif, %bb.aid
  %i.cdb = getelementptr inbounds nuw i8, ptr %i.cde, i64 1 ; 3 uses
  store ptr %i.cdb, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !104
  %i.cdc = getelementptr inbounds nuw i8, ptr %i.cde, i64 4
  %.not6063 = icmp ult ptr %i.cdc, %i.ad
  br i1 %.not6063, label %bb.aia, label %.thread6532

bb.aia:                                           ; preds = %bb.ahz
  %i.cdd = load i8, ptr %i.cdb, align 1, !tbaa !44
  br label %.preheader6894

.preheader6894:                                   ; preds = %bb.add, %bb.aia
  %i.cde = phi ptr [ %i.cdb, %bb.aia ], [ %i.bpb, %bb.add ] ; 3 uses
  %.74886 = phi i8 [ %i.cdd, %bb.aia ], [ %i.bpc, %bb.add ] ; 7 uses
  %i.cdf = icmp ult i8 %.74886, 91
  br i1 %i.cdf, label %bb.aib, label %bb.aie

bb.aib:                                           ; preds = %.preheader6894
  %i.cdg = icmp samesign ult i8 %.74886, 48
  br i1 %i.cdg, label %bb.aic, label %bb.aid

bb.aic:                                           ; preds = %bb.aib
  %i.cdh = icmp eq i8 %.74886, 39
  br i1 %i.cdh, label %bb.aoy, label %.thread6501

bb.aid:                                           ; preds = %bb.aib
  %i.cdi = add nsw i8 %.74886, -58
  %or.cond746 = icmp ult i8 %i.cdi, 7
  br i1 %or.cond746, label %.thread6501, label %bb.ahz

bb.aie:                                           ; preds = %.preheader6894
  %i.cdj = icmp ult i8 %.74886, 97
  br i1 %i.cdj, label %bb.aif, label %bb.aig

bb.aif:                                           ; preds = %bb.aie
  %i.cdk = icmp eq i8 %.74886, 95
  br i1 %i.cdk, label %bb.ahz, label %.thread6501

bb.aig:                                           ; preds = %bb.aie
  %or.cond749 = icmp sgt i8 %.74886, 122
  br i1 %or.cond749, label %.thread6501, label %bb.ahz

.loopexit13721.split.loop.exit16825:              ; preds = %bb.aoy
  %i.cdl = getelementptr inbounds nuw i8, ptr %i.dao, i64 1
  br label %.loopexit13721

.loopexit13721:                                   ; preds = %bb.adf, %.loopexit13721.split.loop.exit16825, %.loopexit6900
  %i.cdm = phi ptr [ %i.cht, %.loopexit6900 ], [ %i.cdl, %.loopexit13721.split.loop.exit16825 ], [ %i.bpf, %bb.adf ]
  %i.cdn = getelementptr inbounds nuw i8, ptr %i.cdm, i64 1 ; 2 uses
  store ptr %i.cdn, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !104
  br label %bb.aih

bb.aih:                                           ; preds = %.loopexit6900, %.loopexit13721
  %i.cdo = phi ptr [ %i.cht, %.loopexit6900 ], [ %i.cdn, %.loopexit13721 ]
  %i.cdp = ptrtoint ptr %i.cdo to i64
  %i.cdq = ptrtoint ptr %i.y to i64
  %i.cdr = sub i64 %i.cdp, %i.cdq
  %i.cds = trunc i64 %i.cdr to i32
  store i32 %i.cds, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48
  %i.cdt = load i8, ptr %i.y, align 1, !tbaa !44
  %.not6065 = icmp ne i8 %i.cdt, 60               ; 2 uses
  %i.cdu = tail call noalias ptr @_emalloc_24() #16 ; 5 uses
  %i.cdv = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !66
  %i.cdw = add nsw i32 %i.cdv, 1
  store i32 %i.cdw, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !66
  %i.cdx = load i32, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48 ; 2 uses
  %i.cdy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 32), align 8, !tbaa !160 ; 2 uses
  %i.cdz = add i32 %i.cdx, -2
  %i.cea = zext i32 %i.cdz to i64
  %i.ceb = getelementptr inbounds nuw i8, ptr %i.cdy, i64 %i.cea
  %i.cec = load i8, ptr %i.ceb, align 1, !tbaa !44
  %i.ced = icmp eq i8 %i.cec, 13
  %.neg = sext i1 %i.ced to i32
  %i.cee = select i1 %.not6065, i32 -5, i32 -4
  %i.cef = add i32 %i.cee, %i.cdx
  %i.ceg = add i32 %i.cef, %.neg                  ; 2 uses
  %i.ceh = getelementptr inbounds nuw i8, ptr %i.cdu, i64 8 ; 4 uses
  store i32 %i.ceg, ptr %i.ceh, align 8, !tbaa !179
  %i.cei = zext i1 %.not6065 to i64
  %i.cej = getelementptr inbounds nuw i8, ptr %i.cdy, i64 %i.cei
  %i.cek = getelementptr inbounds nuw i8, ptr %i.cej, i64 3
  br label %bb.aii

bb.aii:                                           ; preds = %.critedge30, %bb.aih
  %i.cel = phi i32 [ %i.ceg, %bb.aih ], [ %i.ceo, %.critedge30 ] ; 3 uses
  %.04995 = phi ptr [ %i.cek, %bb.aih ], [ %i.cen, %.critedge30 ] ; 4 uses
  %i.cem = load i8, ptr %.04995, align 1, !tbaa !44 ; 3 uses
  switch i8 %i.cem, label %bb.aij [
    i8 32, label %.critedge30
    i8 9, label %.critedge30
  ]

.critedge30:                                      ; preds = %bb.aii, %bb.aii
  %i.cen = getelementptr inbounds nuw i8, ptr %.04995, i64 1
  %i.ceo = add nsw i32 %i.cel, -1                 ; 2 uses
  store i32 %i.ceo, ptr %i.ceh, align 8, !tbaa !179
  br label %bb.aii, !llvm.loop !180

bb.aij:                                           ; preds = %bb.aii
  %.not6071 = icmp eq i8 %i.cem, 39               ; 2 uses
  br i1 %.not6071, label %.sink.split16869, label %bb.aik

bb.aik:                                           ; preds = %bb.aij
  %i.cep = icmp eq i8 %i.cem, 34
  br i1 %i.cep, label %.sink.split16869, label %bb.ail

.sink.split16869:                                 ; preds = %bb.aik, %bb.aij
  %storemerge6067.ph = phi i32 [ 10, %bb.aij ], [ 4, %bb.aik ]
  %i.ceq = getelementptr inbounds nuw i8, ptr %.04995, i64 1
  %i.cer = add nsw i32 %i.cel, -2                 ; 2 uses
  store i32 %i.cer, ptr %i.ceh, align 8, !tbaa !179
  br label %bb.ail

bb.ail:                                           ; preds = %.sink.split16869, %bb.aik
  %i.ces = phi i32 [ %i.cel, %bb.aik ], [ %i.cer, %.sink.split16869 ]
  %storemerge6067 = phi i32 [ 4, %bb.aik ], [ %storemerge6067.ph, %.sink.split16869 ]
  %.24997 = phi ptr [ %.04995, %bb.aik ], [ %i.ceq, %.sink.split16869 ] ; 2 uses
  store i32 %storemerge6067, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 64), align 8, !tbaa !62
  %i.cet = sext i32 %i.ces to i64
  %i.ceu = tail call noalias ptr @_estrndup(ptr noundef nonnull %.24997, i64 noundef %i.cet) #16
  store ptr %i.ceu, ptr %i.cdu, align 8, !tbaa !46
  %i.cev = getelementptr inbounds nuw i8, ptr %i.cdu, i64 16 ; 2 uses
  store i8 0, ptr %i.cev, align 8, !tbaa !181
  %i.cew = getelementptr inbounds nuw i8, ptr %i.cdu, i64 12 ; 3 uses
  store i32 0, ptr %i.cew, align 4, !tbaa !182
  %i.cex = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !104 ; 3 uses
  %i.cey = load i32, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 96), align 8, !tbaa !183 ; 3 uses
  %i.cez = load i32, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 100), align 4, !tbaa !184 ; 3 uses
  %.not.i6388 = icmp slt i32 %i.cey, %i.cez
  br i1 %.not.i6388, label %.zend_ptr_stack_push.exit_crit_edge, label %.preheader6890

.zend_ptr_stack_push.exit_crit_edge:              ; preds = %bb.ail
  %.pre12789 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 112), align 8, !tbaa !185
  br label %zend_ptr_stack_push.exit

.preheader6890:                                   ; preds = %bb.ail
  %i.cfa = add i32 %i.cez, 64                     ; 2 uses
  %i.cfb = add i32 %i.cey, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.cfa, i32 %i.cfb)
  %13 = xor i32 %i.cez, -1
  %14 = add i32 %smax, %13
  %i.cfc = and i32 %14, -64
  %i.cfd = add i32 %i.cfa, %i.cfc                 ; 2 uses
  store i32 %i.cfd, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 100), align 4, !tbaa !184
  %i.cfe = load i8, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 120), align 8, !tbaa !186, !range !87, !noundef !88
  %i.cff = trunc nuw i8 %i.cfe to i1
  %i.cfg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 104), align 8, !tbaa !187 ; 2 uses
  %i.cfh = sext i32 %i.cfd to i64                 ; 2 uses
  br i1 %i.cff, label %bb.aim, label %bb.ain

bb.aim:                                           ; preds = %.preheader6890
  %i.cfi = tail call ptr @_safe_realloc(ptr noundef %i.cfg, i64 noundef 8, i64 noundef %i.cfh, i64 noundef 0) #16
  br label %bb.aio

bb.ain:                                           ; preds = %.preheader6890
  %i.cfj = tail call ptr @_safe_erealloc(ptr noundef %i.cfg, i64 noundef 8, i64 noundef %i.cfh, i64 noundef 0) #16
  br label %bb.aio

bb.aio:                                           ; preds = %bb.ain, %bb.aim
  %i.cfk = phi ptr [ %i.cfi, %bb.aim ], [ %i.cfj, %bb.ain ] ; 2 uses
  store ptr %i.cfk, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 104), align 8, !tbaa !187
  %i.cfl = load i32, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 96), align 8, !tbaa !183 ; 2 uses
  %i.cfm = sext i32 %i.cfl to i64
  %i.cfn = getelementptr inbounds [8 x i8], ptr %i.cfk, i64 %i.cfm
  br label %zend_ptr_stack_push.exit

zend_ptr_stack_push.exit:                         ; preds = %.zend_ptr_stack_push.exit_crit_edge, %bb.aio
  %i.cfo = phi ptr [ %.pre12789, %.zend_ptr_stack_push.exit_crit_edge ], [ %i.cfn, %bb.aio ] ; 2 uses
  %i.cfp = phi i32 [ %i.cey, %.zend_ptr_stack_push.exit_crit_edge ], [ %i.cfl, %bb.aio ]
  %i.cfq = add nsw i32 %i.cfp, 1
  store i32 %i.cfq, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 96), align 8, !tbaa !183
  %i.cfr = getelementptr inbounds nuw i8, ptr %i.cfo, i64 8
  store ptr %i.cfr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 112), align 8, !tbaa !185
  store ptr %i.cdu, ptr %i.cfo, align 8, !tbaa !56
  %i.cfs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 56), align 8, !tbaa !52 ; 5 uses
  %.promoted9680 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !104 ; 5 uses
  %i.cft = icmp ult ptr %.promoted9680, %i.cfs
  br i1 %i.cft, label %.lr.ph9683.preheader, label %.critedge32

.lr.ph9683.preheader:                             ; preds = %zend_ptr_stack_push.exit
  %.promoted968012744 = ptrtoaddr ptr %.promoted9680 to i64 ; 2 uses
  %i.cfu = ptrtoaddr ptr %i.cfs to i64            ; 2 uses
  %i.cfv = trunc i64 %i.cfu to i32
  %i.cfw = trunc i64 %.promoted968012744 to i32
  %i.cfx = sub i32 %i.cfv, %i.cfw
  %i.cfy = sub i64 %i.cfu, %.promoted968012744
  %scevgep12745 = getelementptr i8, ptr %.promoted9680, i64 %i.cfy
  br label %.lr.ph9683

.lr.ph9683:                                       ; preds = %.lr.ph9683.preheader, %.critedge34
  %.049929682 = phi i32 [ %i.cgd, %.critedge34 ], [ 0, %.lr.ph9683.preheader ] ; 2 uses
  %.049939681 = phi i32 [ %.14994, %.critedge34 ], [ 0, %.lr.ph9683.preheader ] ; 2 uses
  %i.cfz = phi ptr [ %i.cgc, %.critedge34 ], [ %.promoted9680, %.lr.ph9683.preheader ] ; 3 uses
  %i.cga = load i8, ptr %i.cfz, align 1, !tbaa !44 ; 2 uses
  switch i8 %i.cga, label %.critedge32.loopexit [
    i8 32, label %.critedge34
    i8 9, label %.critedge34
  ]

.critedge34:                                      ; preds = %.lr.ph9683, %.lr.ph9683
  %i.cgb = icmp eq i8 %i.cga, 9
  %.14994.v = select i1 %i.cgb, i32 2, i32 1
  %.14994 = or i32 %.14994.v, %.049939681         ; 2 uses
  %i.cgc = getelementptr inbounds nuw i8, ptr %i.cfz, i64 1 ; 3 uses
  store ptr %i.cgc, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !104
  %i.cgd = add nuw nsw i32 %.049929682, 1
  %exitcond12746.not = icmp eq ptr %i.cgc, %i.cfs
  br i1 %exitcond12746.not, label %.critedge32.loopexit, label %.lr.ph9683, !llvm.loop !188

.critedge32.loopexit:                             ; preds = %.lr.ph9683, %.critedge34
  %.04993.lcssa.ph = phi i32 [ %.14994, %.critedge34 ], [ %.049939681, %.lr.ph9683 ]
  %.04992.lcssa.ph = phi i32 [ %i.cfx, %.critedge34 ], [ %.049929682, %.lr.ph9683 ]
  %.lcssa7744.ph = phi ptr [ %scevgep12745, %.critedge34 ], [ %i.cfz, %.lr.ph9683 ]
  %i.cge = icmp eq i32 %.04993.lcssa.ph, 3
  br label %.critedge32

.critedge32:                                      ; preds = %.critedge32.loopexit, %zend_ptr_stack_push.exit
  %.04993.lcssa = phi i1 [ false, %zend_ptr_stack_push.exit ], [ %i.cge, %.critedge32.loopexit ]
  %.04992.lcssa = phi i32 [ 0, %zend_ptr_stack_push.exit ], [ %.04992.lcssa.ph, %.critedge32.loopexit ]
  %.lcssa7744 = phi ptr [ %.promoted9680, %zend_ptr_stack_push.exit ], [ %.lcssa7744.ph, %.critedge32.loopexit ] ; 4 uses
  %i.cgf = icmp eq ptr %.lcssa7744, %i.cfs
  br i1 %i.cgf, label %bb.aip, label %bb.aiq

bb.aip:                                           ; preds = %.critedge32
  store ptr %i.cex, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !104
  br label %.thread6538

bb.aiq:                                           ; preds = %.critedge32
  %i.cgg = load i32, ptr %i.ceh, align 8, !tbaa !179
  %i.cgh = sext i32 %i.cgg to i64                 ; 3 uses
  %i.cgi = ptrtoint ptr %i.cfs to i64
  %i.cgj = ptrtoint ptr %.lcssa7744 to i64
  %i.cgk = sub i64 %i.cgi, %i.cgj
  %i.cgl = icmp sgt i64 %i.cgk, %i.cgh
  br i1 %i.cgl, label %bb.air, label %bb.aix

bb.air:                                           ; preds = %bb.aiq
  %bcmp6068 = tail call i32 @bcmp(ptr %.lcssa7744, ptr nonnull %.24997, i64 %i.cgh)
  %.not6069 = icmp eq i32 %bcmp6068, 0
  br i1 %.not6069, label %bb.ais, label %bb.aix

bb.ais:                                           ; preds = %bb.air
  %i.cgm = getelementptr inbounds i8, ptr %.lcssa7744, i64 %i.cgh
  %i.cgn = load i8, ptr %i.cgm, align 1, !tbaa !44 ; 4 uses
  %i.cgo = and i8 %i.cgn, -33
  %i.cgp = add i8 %i.cgo, -65
  %or.cond6608 = icmp ult i8 %i.cgp, 26
  %i.cgq = add i8 %i.cgn, -48
  %or.cond6295 = icmp ult i8 %i.cgq, 10
  %or.cond6609 = or i1 %or.cond6295, %or.cond6608
  br i1 %or.cond6609, label %bb.aix, label %bb.ait

bb.ait:                                           ; preds = %bb.ais
  %i.cgr = icmp eq i8 %i.cgn, 95
  %i.cgs = icmp slt i8 %i.cgn, 0
  %or.cond6296 = or i1 %i.cgr, %i.cgs
  br i1 %or.cond6296, label %bb.aix, label %bb.aiu

bb.aiu:                                           ; preds = %bb.ait
  br i1 %.04993.lcssa, label %bb.aiv, label %bb.aiw

bb.aiv:                                           ; preds = %bb.aiu
  %i.cgt = load ptr, ptr @zend_ce_parse_error, align 8, !tbaa !80
  %i.cgu = tail call ptr @zend_throw_exception(ptr noundef %i.cgt, ptr noundef nonnull @.str.6, i64 noundef 0) #16 ; 0 uses
  br i1 %.not5629, label %bb.aiw, label %.thread6538, !prof !165

bb.aiw:                                           ; preds = %bb.aiv, %bb.aiu
  store ptr %i.cex, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !104
  store i32 %.04992.lcssa, ptr %i.cew, align 4, !tbaa !182
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 64), align 8, !tbaa !62
  br label %.thread6538

bb.aix:                                           ; preds = %bb.ais, %bb.ait, %bb.air, %bb.aiq
  store ptr %i.cex, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !104
  %i.cgv = load i8, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 152), align 8, !range !87
  %i.cgw = trunc nuw i8 %i.cgv to i1
  %or.cond36 = select i1 %.not6071, i1 true, i1 %i.cgw
  br i1 %or.cond36, label %.thread6538, label %bb.aiy

bb.aiy:                                           ; preds = %bb.aix
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %i.cgx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 160), align 8, !tbaa !36
  call void @zend_save_lexical_state(ptr noundef nonnull %11)
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 152), align 8, !tbaa !38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 156), align 4, !tbaa !189
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 160), align 8, !tbaa !190
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 232), i8 0, i64 16, i1 false)
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 160), align 8, !tbaa !36
  call void @zend_ptr_stack_reverse_apply(ptr noundef nonnull %i.v, ptr noundef nonnull @copy_heredoc_label_stack) #16
  call void @zend_exception_save() #16
  br label %bb.aiz

bb.aiz:                                           ; preds = %bb.aiy, %bb.ajf
  %.049849694 = phi i32 [ 0, %bb.aiy ], [ %spec.select, %bb.ajf ] ; 3 uses
  %.049889693 = phi i32 [ 1, %bb.aiy ], [ %.24990, %bb.ajf ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  store i32 0, ptr %i.w, align 8, !tbaa !44
  %i.cgy = call i32 @lex_scan(ptr noundef nonnull %12, ptr noundef null) ; 2 uses
  %i.cgz = load i8, ptr %i.x, align 1, !tbaa !44
  %.not.i6389 = icmp eq i8 %i.cgz, 0
  br i1 %.not.i6389, label %zval_ptr_dtor_nogc.exit, label %bb.aja

bb.aja:                                           ; preds = %bb.aiz
  %i.cha = load ptr, ptr %12, align 8, !tbaa !44  ; 2 uses
  %i.chb = load i32, ptr %i.cha, align 4, !tbaa !45 ; 2 uses
  %i.chc = icmp ne i32 %i.chb, 0
  call void @llvm.assume(i1 %i.chc)
  %i.chd = add i32 %i.chb, -1                     ; 2 uses
  store i32 %i.chd, ptr %i.cha, align 4, !tbaa !45
  %.not3.i = icmp eq i32 %i.chd, 0
  br i1 %.not3.i, label %bb.ajb, label %zval_ptr_dtor_nogc.exit

bb.ajb:                                           ; preds = %bb.aja
  %i.che = load ptr, ptr %12, align 8, !tbaa !44
  call void @rc_dtor_func(ptr noundef %i.che) #16
  br label %zval_ptr_dtor_nogc.exit

zval_ptr_dtor_nogc.exit:                          ; preds = %bb.aiz, %bb.aja, %bb.ajb
  %i.chf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !109
  %.not6072 = icmp eq ptr %i.chf, null
  br i1 %.not6072, label %bb.ajc, label %.thread6505

.thread6505:                                      ; preds = %zval_ptr_dtor_nogc.exit
  call void @zend_clear_exception() #16
  br label %.loopexit6889.sink.split

bb.ajc:                                           ; preds = %zval_ptr_dtor_nogc.exit
  %.not6073 = icmp eq i32 %.049849694, 0
  %spec.select = select i1 %.not6073, i32 %i.cgy, i32 %.049849694 ; 3 uses
  switch i32 %i.cgy, label %bb.ajf [
    i32 398, label %bb.ajd
    i32 399, label %bb.aje
    i32 0, label %.loopexit6889.sink.split
  ]

bb.ajd:                                           ; preds = %bb.ajc
  %i.chg = add nsw i32 %.049889693, 1
  br label %bb.ajf

bb.aje:                                           ; preds = %bb.ajc
  %i.chh = add nsw i32 %.049889693, -1
  br label %bb.ajf
end_hunk_0
