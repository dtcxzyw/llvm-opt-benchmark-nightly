Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_buffer?download=true
inline.NumInlined: 2805
inline.NumDeleted: 638
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5boost5beast19test_dynamic_bufferINS0_17basic_flat_bufferISaIcEEEEEvRKT_:bb.a

_ZZN5boost5beast19test_dynamic_bufferINS0_17basic_flat_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZZN5boost5beast19test_dynamic_bufferINS0_17basic_flat_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZZN5boost5beast19test_dynamic_bufferINS0_17basic_flat_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.06.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.apo, %_ZZN5boost5beast19test_dynamic_bufferINS0_17basic_flat_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod1343 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1343)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.06.i.epil = phi i64 [ %i.apq, %.lr.ph.i.epil ], [ %.06.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %indvars1027.epil = trunc i64 %.06.i.epil to i8
  %i.apq = add nuw nsw i64 %.06.i.epil, 1
  %i.apr = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.06.i.epil
  store i8 %indvars1027.epil, ptr %i.apr, align 1, !tbaa !23
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZZN5boost5beast19test_dynamic_bufferINS0_17basic_flat_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit, label %.lr.ph.i.epil, !llvm.loop !562

_ZZN5boost5beast19test_dynamic_bufferINS0_17basic_flat_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit: ; preds = %_ZZN5boost5beast19test_dynamic_bufferINS0_17basic_flat_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZN5boost5beast17basic_flat_bufferISaIcEED2Ev.exit675
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #29
  %i.aps = getelementptr inbounds nuw i8, ptr %45, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %45, i8 0, i64 40, i1 false)
  %i.apt = load i64, ptr %i.bb, align 8, !tbaa !85
  store i64 %i.apt, ptr %i.aps, align 8, !tbaa !85
  call void @_ZN5boost5beast17basic_flat_bufferISaIcEE9copy_fromIS2_EEvRKNS1_IT_EE(ptr noundef nonnull align 8 dereferenceable(48) %45, ptr noundef nonnull align 8 dereferenceable(48) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #29
  %i.apu = invoke { ptr, i64 } @_ZN5boost5beast17basic_flat_bufferISaIcEE7prepareEm(ptr noundef nonnull align 8 dereferenceable(48) %45, i64 noundef %spec.select)
          to label %bb.fj unwind label %bb.fp     ; 2 uses

bb.fj:                                            ; preds = %_ZZN5boost5beast19test_dynamic_bufferINS0_17basic_flat_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit
  %i.apv = extractvalue { ptr, i64 } %i.apu, 0
  store ptr %i.apv, ptr %46, align 8
  %i.apw = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 2 uses
  %i.apx = extractvalue { ptr, i64 } %i.apu, 1    ; 2 uses
  store i64 %i.apx, ptr %i.apw, align 8
  %i.apy = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #29
  %i.apz = icmp eq i64 %i.apx, %spec.select
  %i.aqa = zext i1 %i.apz to i8
  store i8 %i.aqa, ptr %i.ak, align 1, !tbaa !86
  %i.aqb = invoke noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.apy, ptr noundef nonnull align 1 dereferenceable(1) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) @.str.3, ptr noundef nonnull @.str.15, i32 noundef 547)
          to label %_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit682 unwind label %bb.fq ; 0 uses

_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit682: ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #29
  invoke void @_ZN5boost5beast20test_buffer_sequenceINS_4asio14mutable_bufferEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %46)
          to label %bb.fk unwind label %bb.fp

bb.fk:                                            ; preds = %_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit682
  %i.aqc = load i64, ptr %i.apw, align 8, !tbaa !591
  %i.aqd = call i64 @llvm.umin.i64(i64 %i.aqc, i64 %spec.select) ; 3 uses
  %.not.i.i.i683 = icmp eq i64 %i.aqd, 0
  br i1 %.not.i.i.i683, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.aqe = load ptr, ptr %46, align 8, !tbaa !201
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aqe, ptr nonnull align 1 %i.ag, i64 %i.aqd, i1 false)
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.aqf = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 3 uses
  %i.aqg = load ptr, ptr %i.aqf, align 8, !tbaa !143 ; 2 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %45, i64 24
  %i.aqi = load ptr, ptr %i.aqh, align 8, !tbaa !144
  %i.aqj = ptrtoint ptr %i.aqi to i64
  %i.aqk = ptrtoint ptr %i.aqg to i64
  %i.aql = sub i64 %i.aqj, %i.aqk
  %.sroa.speculated.i685 = call i64 @llvm.umin.i64(i64 %i.aql, i64 %i.aqd)
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aqg, i64 %.sroa.speculated.i685 ; 2 uses
  store ptr %i.aqm, ptr %i.aqf, align 8, !tbaa !143
  %i.aqn = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #29
  %i.aqo = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  %i.aqp = load ptr, ptr %i.aqo, align 8, !tbaa !146
  %i.aqq = ptrtoint ptr %i.aqm to i64
  %i.aqr = ptrtoint ptr %i.aqp to i64
  %i.aqs = sub i64 %i.aqq, %i.aqr
  %i.aqt = icmp eq i64 %i.aqs, %spec.select
  %i.aqu = zext i1 %i.aqt to i8
  store i8 %i.aqu, ptr %i.al, align 1, !tbaa !86
  %i.aqv = invoke noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.aqn, ptr noundef nonnull align 1 dereferenceable(1) %i.al, ptr noundef nonnull align 1 dereferenceable(1) @.str.3, ptr noundef nonnull @.str.15, i32 noundef 552)
          to label %_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit689 unwind label %bb.fr ; 0 uses

_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit689: ; preds = %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #29
  %i.aqw = load ptr, ptr %i.aqo, align 8, !tbaa !146 ; 2 uses
  %i.aqx = load ptr, ptr %i.aqf, align 8, !tbaa !143
  %i.aqy = ptrtoint ptr %i.aqx to i64
  %i.aqz = ptrtoint ptr %i.aqw to i64
  %i.ara = sub i64 %i.aqy, %i.aqz
  store ptr %i.aqw, ptr %47, align 8
  %i.arb = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 %i.ara, ptr %i.arb, align 8
  invoke void @_ZN5boost5beast20test_buffer_sequenceINS_4asio12const_bufferEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %47)
          to label %bb.fn unwind label %bb.fs

bb.fn:                                            ; preds = %_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit689
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #29
  %i.arc = load ptr, ptr %45, align 8, !tbaa !87  ; 3 uses
  %.not.i692 = icmp eq ptr %i.arc, null
  br i1 %.not.i692, label %_ZN5boost5beast17basic_flat_bufferISaIcEED2Ev.exit693, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.ard = getelementptr inbounds nuw i8, ptr %45, i64 32
  %i.are = load ptr, ptr %i.ard, align 8, !tbaa !88
  %i.arf = ptrtoint ptr %i.are to i64
  %i.arg = ptrtoint ptr %i.arc to i64
  %i.arh = sub i64 %i.arf, %i.arg
  call void @_ZdlPvm(ptr noundef nonnull %i.arc, i64 noundef %i.arh) #32
  br label %_ZN5boost5beast17basic_flat_bufferISaIcEED2Ev.exit693

_ZN5boost5beast17basic_flat_bufferISaIcEED2Ev.exit693: ; preds = %bb.fn, %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #29
  br i1 %.not.i680, label %._crit_edge1012, label %.preheader930.lr.ph

.preheader930.lr.ph:                              ; preds = %_ZN5boost5beast17basic_flat_bufferISaIcEED2Ev.exit693
  %i.ari = getelementptr inbounds nuw i8, ptr %48, i64 40 ; 2 uses
  %i.arj = getelementptr inbounds nuw i8, ptr %48, i64 32 ; 3 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 7 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 7 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %48, i64 24 ; 2 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 7 uses
  %i.arq = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 3 uses
  %i.arr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ars = add nuw nsw i64 %spec.select, 3
  %xtraiter1344 = and i64 %spec.select, 3         ; 3 uses
  %i.art = icmp ult i64 %i.aoe, 4
  %unroll_iter1348 = and i64 %spec.select, 12
  %lcmp.mod1346.not = icmp eq i64 %xtraiter1344, 0
  %lcmp.mod1347 = icmp ne i64 %xtraiter1344, 0
  br label %.preheader930

.preheader930:                                    ; preds = %.preheader930.lr.ph, %bb.fv
  %indvars.iv1033 = phi i64 [ 4, %.preheader930.lr.ph ], [ %indvars.iv.next1034, %bb.fv ] ; 3 uses
  %indvars.iv = phi i64 [ 2, %.preheader930.lr.ph ], [ %indvars.iv.next, %bb.fv ] ; 2 uses
  %.0931011 = phi i64 [ 1, %.preheader930.lr.ph ], [ %i.asf, %bb.fv ] ; 6 uses
  %.01010 = phi i8 [ 1, %.preheader930.lr.ph ], [ %i.ash, %bb.fv ]
  br label %.preheader.preheader

._crit_edge1012:                                  ; preds = %bb.fv, %_ZN5boost5beast17basic_flat_bufferISaIcEED2Ev.exit693
  call void @_ZN5boost5beast6detail27test_mutable_dynamic_bufferINS0_17basic_flat_bufferISaIcEEEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(48) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #29
  ret void

bb.fp:                                            ; preds = %_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit682, %_ZZN5boost5beast19test_dynamic_bufferINS0_17basic_flat_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit
  %i.aru = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.fq:                                            ; preds = %bb.fj
  %i.arv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #29
  br label %bb.ft

bb.fr:                                            ; preds = %bb.fm
  %i.arw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #29
  br label %bb.ft

bb.fs:                                            ; preds = %_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit689
  %i.arx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #29
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr, %bb.fq, %bb.fp
  %.pn143 = phi { ptr, i32 } [ %i.arx, %bb.fs ], [ %i.arw, %bb.fr ], [ %i.aru, %bb.fp ], [ %i.arv, %bb.fq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #29
  %i.ary = load ptr, ptr %45, align 8, !tbaa !87  ; 3 uses
  %.not.i694 = icmp eq ptr %i.ary, null
  br i1 %.not.i694, label %_ZN5boost5beast17basic_flat_bufferISaIcEED2Ev.exit695, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.arz = getelementptr inbounds nuw i8, ptr %45, i64 32
  %i.asa = load ptr, ptr %i.arz, align 8, !tbaa !88
  %i.asb = ptrtoint ptr %i.asa to i64
  %i.asc = ptrtoint ptr %i.ary to i64
  %i.asd = sub i64 %i.asb, %i.asc
  call void @_ZdlPvm(ptr noundef nonnull %i.ary, i64 noundef %i.asd) #32
  br label %_ZN5boost5beast17basic_flat_bufferISaIcEED2Ev.exit695

_ZN5boost5beast17basic_flat_bufferISaIcEED2Ev.exit695: ; preds = %bb.ft, %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #29
  br label %bb.hj

.loopexit929:                                     ; preds = %bb.fw
  %indvars.iv.next1031 = add nuw nsw i64 %indvars.iv1030, 1 ; 2 uses
  %exitcond1035 = icmp eq i64 %indvars.iv.next1031, %indvars.iv1033
  br i1 %exitcond1035, label %bb.fv, label %.preheader.preheader, !llvm.loop !563

.preheader.preheader:                             ; preds = %.preheader930, %.loopexit929
  %indvars.iv1030 = phi i64 [ 3, %.preheader930 ], [ %indvars.iv.next1031, %.loopexit929 ] ; 2 uses
  %storemerge1008 = phi i64 [ 1, %.preheader930 ], [ %i.ase, %.loopexit929 ] ; 2 uses
  %.11007 = phi i8 [ %.01010, %.preheader930 ], [ %i.ash, %.loopexit929 ]
  %i.ase = add nuw nsw i64 %storemerge1008, 1
  br label %.preheader

bb.fv:                                            ; preds = %.loopexit929
  %i.asf = add nuw nsw i64 %.0931011, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next1034 = add nuw nsw i64 %indvars.iv1033, 1
  %exitcond1036.not = icmp eq i64 %indvars.iv1033, %i.ars
  br i1 %exitcond1036.not, label %._crit_edge1012, label %.preheader930, !llvm.loop !564

.preheader:                                       ; preds = %.preheader.preheader, %bb.fw
  %storemerge1461005 = phi i64 [ 1, %.preheader.preheader ], [ %i.asg, %bb.fw ] ; 2 uses
  %.21004 = phi i8 [ %.11007, %.preheader.preheader ], [ %i.ash, %bb.fw ]
  br label %.lr.ph.i697.preheader

bb.fw:                                            ; preds = %_ZN5boost5beast17basic_flat_bufferISaIcEED2Ev.exit745
  %i.asg = add nuw nsw i64 %storemerge1461005, 1  ; 2 uses
  %exitcond1032 = icmp eq i64 %i.asg, %indvars.iv1030
  br i1 %exitcond1032, label %.loopexit929, label %.preheader, !llvm.loop !565

.lr.ph.i697.preheader:                            ; preds = %_ZN5boost5beast17basic_flat_bufferISaIcEED2Ev.exit745, %.preheader
  %.0941002 = phi i64 [ 1, %.preheader ], [ %i.ayy, %_ZN5boost5beast17basic_flat_bufferISaIcEED2Ev.exit745 ] ; 3 uses
  %.31001 = phi i8 [ %.21004, %.preheader ], [ %i.ash, %_ZN5boost5beast17basic_flat_bufferISaIcEED2Ev.exit745 ] ; 3 uses
  %i.ash = add i8 %.31001, 1                      ; 4 uses
  br i1 %i.art, label %.lr.ph.i697.epil.preheader, label %.lr.ph.i697

.lr.ph.i697:                                      ; preds = %.lr.ph.i697.preheader, %.lr.ph.i697
  %.06.i698 = phi i64 [ %i.ast, %.lr.ph.i697 ], [ 0, %.lr.ph.i697.preheader ] ; 5 uses
  %.045.i699 = phi i8 [ %i.asq, %.lr.ph.i697 ], [ %.31001, %.lr.ph.i697.preheader ] ; 5 uses
  %niter1349 = phi i64 [ %niter1349.next.3, %.lr.ph.i697 ], [ 0, %.lr.ph.i697.preheader ]
  %i.asi = add i8 %.045.i699, 1
  %i.asj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.06.i698
  store i8 %.045.i699, ptr %i.asj, align 1, !tbaa !23
  %i.ask = add i8 %.045.i699, 2
  %i.asl = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.06.i698
  %i.asm = getelementptr inbounds nuw i8, ptr %i.asl, i64 1
  store i8 %i.asi, ptr %i.asm, align 1, !tbaa !23
  %i.asn = add i8 %.045.i699, 3
  %i.aso = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.06.i698
  %i.asp = getelementptr inbounds nuw i8, ptr %i.aso, i64 2
  store i8 %i.ask, ptr %i.asp, align 1, !tbaa !23
  %i.asq = add i8 %.045.i699, 4                   ; 2 uses
  %i.asr = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.06.i698
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asr, i64 3
  store i8 %i.asn, ptr %i.ass, align 1, !tbaa !23
  %i.ast = add nuw nsw i64 %.06.i698, 4           ; 2 uses
  %niter1349.next.3 = add i64 %niter1349, 4       ; 2 uses
  %niter1349.ncmp.3 = icmp eq i64 %niter1349.next.3, %unroll_iter1348
  br i1 %niter1349.ncmp.3, label %_ZZN5boost5beast19test_dynamic_bufferINS0_17basic_flat_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit700.unr-lcssa, label %.lr.ph.i697, !llvm.loop !561

_ZZN5boost5beast19test_dynamic_bufferINS0_17basic_flat_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit700.unr-lcssa: ; preds = %.lr.ph.i697
  br i1 %lcmp.mod1346.not, label %_ZZN5boost5beast19test_dynamic_bufferINS0_17basic_flat_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit700, label %.lr.ph.i697.epil.preheader

.lr.ph.i697.epil.preheader:                       ; preds = %_ZZN5boost5beast19test_dynamic_bufferINS0_17basic_flat_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit700.unr-lcssa, %.lr.ph.i697.preheader
  %.06.i698.epil.init = phi i64 [ 0, %.lr.ph.i697.preheader ], [ %i.ast, %_ZZN5boost5beast19test_dynamic_bufferINS0_17basic_flat_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit700.unr-lcssa ]
  %.045.i699.epil.init = phi i8 [ %.31001, %.lr.ph.i697.preheader ], [ %i.asq, %_ZZN5boost5beast19test_dynamic_bufferINS0_17basic_flat_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit700.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1347)
  br label %.lr.ph.i697.epil

.lr.ph.i697.epil:                                 ; preds = %.lr.ph.i697.epil, %.lr.ph.i697.epil.preheader
  %.06.i698.epil = phi i64 [ %i.asw, %.lr.ph.i697.epil ], [ %.06.i698.epil.init, %.lr.ph.i697.epil.preheader ] ; 2 uses
  %.045.i699.epil = phi i8 [ %i.asu, %.lr.ph.i697.epil ], [ %.045.i699.epil.init, %.lr.ph.i697.epil.preheader ] ; 2 uses
  %epil.iter1345 = phi i64 [ %epil.iter1345.next, %.lr.ph.i697.epil ], [ 0, %.lr.ph.i697.epil.preheader ]
  %i.asu = add i8 %.045.i699.epil, 1
  %i.asv = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.06.i698.epil
  store i8 %.045.i699.epil, ptr %i.asv, align 1, !tbaa !23
  %i.asw = add nuw nsw i64 %.06.i698.epil, 1
  %epil.iter1345.next = add i64 %epil.iter1345, 1 ; 2 uses
  %epil.iter1345.cmp.not = icmp eq i64 %epil.iter1345.next, %xtraiter1344
  br i1 %epil.iter1345.cmp.not, label %_ZZN5boost5beast19test_dynamic_bufferINS0_17basic_flat_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit700, label %.lr.ph.i697.epil, !llvm.loop !566

_ZZN5boost5beast19test_dynamic_bufferINS0_17basic_flat_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit700: ; preds = %.lr.ph.i697.epil, %_ZZN5boost5beast19test_dynamic_bufferINS0_17basic_flat_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit700.unr-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %48, i8 0, i64 40, i1 false)
  %i.asx = load i64, ptr %i.bb, align 8, !tbaa !85
  store i64 %i.asx, ptr %i.ari, align 8, !tbaa !85
  %i.asy = load ptr, ptr %i.an, align 8, !tbaa !146 ; 2 uses
  %i.asz = load ptr, ptr %i.ap, align 8, !tbaa !143 ; 2 uses
  %i.ata = ptrtoint ptr %i.asz to i64
  %i.atb = ptrtoint ptr %i.asy to i64
  %i.atc = sub i64 %i.ata, %i.atb                 ; 4 uses
  %i.atd = icmp eq ptr %i.asz, %i.asy
  br i1 %i.atd, label %_ZN5boost5beast17basic_flat_bufferISaIcEE9copy_fromIS2_EEvRKNS1_IT_EE.exit.preheader, label %bb.fx

bb.fx:                                            ; preds = %_ZZN5boost5beast19test_dynamic_bufferINS0_17basic_flat_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit700
  %i.ate = icmp slt i64 %i.atc, 0
  br i1 %i.ate, label %bb.fy, label %bb.gb

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull @.str.17)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  store ptr @.str.18, ptr %13, align 8, !tbaa !203
  %i.atf = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str.19, ptr %i.atf, align 8, !tbaa !204
  %i.atg = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 549, ptr %i.atg, align 8, !tbaa !205
  %i.ath = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 73, ptr %i.ath, align 4, !tbaa !206
  invoke void @_ZN5boost15throw_exceptionISt12length_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(24) %13) #30
          to label %bb.fz unwind label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  unreachable

common.resume:                                    ; preds = %_ZN5boost5beast17basic_flat_bufferISaIcEED2Ev.exit671, %_ZN5boost5beast17basic_flat_bufferISaIcEED2Ev.exit673, %_ZN5boost5beast17basic_flat_bufferISaIcEED2Ev.exit677, %bb.hj, %bb.ga
  %common.resume.op = phi { ptr, i32 } [ %i.ati, %bb.ga ], [ %.pn153.pn, %bb.hj ], [ %.pn140.pn, %_ZN5boost5beast17basic_flat_bufferISaIcEED2Ev.exit677 ], [ %.pn138, %_ZN5boost5beast17basic_flat_bufferISaIcEED2Ev.exit673 ], [ %.pn131.pn.pn.pn.pn.pn, %_ZN5boost5beast17basic_flat_bufferISaIcEED2Ev.exit671 ]
  resume { ptr, i32 } %common.resume.op

bb.ga:                                            ; preds = %bb.fy
  %i.ati = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %common.resume

bb.gb:                                            ; preds = %bb.fx
  %i.atj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.atc) #34 ; 4 uses
  store ptr %i.atj, ptr %48, align 8, !tbaa !87
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atj, i64 %i.atc ; 4 uses
  store ptr %i.atk, ptr %i.arj, align 8, !tbaa !88
  store ptr %i.atj, ptr %i.ark, align 8, !tbaa !146
  store ptr %i.atk, ptr %i.arl, align 8, !tbaa !143
  store ptr %i.atk, ptr %i.arm, align 8, !tbaa !144
  %i.atl = load ptr, ptr %i.an, align 8, !tbaa !146
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.atj, ptr align 1 %i.atl, i64 %i.atc, i1 false)
  br label %_ZN5boost5beast17basic_flat_bufferISaIcEE9copy_fromIS2_EEvRKNS1_IT_EE.exit.preheader

_ZN5boost5beast17basic_flat_bufferISaIcEE9copy_fromIS2_EEvRKNS1_IT_EE.exit.preheader: ; preds = %_ZZN5boost5beast19test_dynamic_bufferINS0_17basic_flat_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit700, %bb.gb
  %.ph = phi ptr [ %i.atk, %bb.gb ], [ null, %_ZZN5boost5beast19test_dynamic_bufferINS0_17basic_flat_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit700 ]
  br label %_ZN5boost5beast17basic_flat_bufferISaIcEE9copy_fromIS2_EEvRKNS1_IT_EE.exit

_ZN5boost5beast17basic_flat_bufferISaIcEE9copy_fromIS2_EEvRKNS1_IT_EE.exit: ; preds = %_ZN5boost5beast17basic_flat_bufferISaIcEE9copy_fromIS2_EEvRKNS1_IT_EE.exit.preheader, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit703
  %i.atm = phi ptr [ %i.aub, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit703 ], [ %.ph, %_ZN5boost5beast17basic_flat_bufferISaIcEE9copy_fromIS2_EEvRKNS1_IT_EE.exit.preheader ]
  %.sroa.0814.0996 = phi ptr [ %i.auc, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit703 ], [ %i.ag, %_ZN5boost5beast17basic_flat_bufferISaIcEE9copy_fromIS2_EEvRKNS1_IT_EE.exit.preheader ] ; 2 uses
  %.sroa.7.0995 = phi i64 [ %i.aud, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit703 ], [ %.0931011, %_ZN5boost5beast17basic_flat_bufferISaIcEE9copy_fromIS2_EEvRKNS1_IT_EE.exit.preheader ] ; 2 uses
  %i.atn = load i64, ptr %i.ari, align 8, !tbaa !85
  %i.ato = load ptr, ptr %i.ark, align 8, !tbaa !146
  %i.atp = ptrtoint ptr %i.atm to i64
  %i.atq = ptrtoint ptr %i.ato to i64
  %.neg = add i64 %i.atn, %i.atq
  %i.atr = sub i64 %.neg, %i.atp
  %.sroa.speculated809 = call i64 @llvm.umin.i64(i64 %i.atr, i64 %storemerge1008)
  %i.ats = invoke { ptr, i64 } @_ZN5boost5beast17basic_flat_bufferISaIcEE7prepareEm(ptr noundef nonnull align 8 dereferenceable(48) %48, i64 noundef %.sroa.speculated809)
          to label %bb.gc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.gc:                                            ; preds = %_ZN5boost5beast17basic_flat_bufferISaIcEE9copy_fromIS2_EEvRKNS1_IT_EE.exit
  %i.att = extractvalue { ptr, i64 } %i.ats, 1    ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.sroa.7.0995, i64 %storemerge1461005)
  %i.atu = call i64 @llvm.umin.i64(i64 %i.att, i64 %.sroa.speculated) ; 4 uses
  %.not.i.i.i702 = icmp eq i64 %i.att, 0
  br i1 %.not.i.i.i702, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit703, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.atv = extractvalue { ptr, i64 } %i.ats, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.atv, ptr align 1 %.sroa.0814.0996, i64 %i.atu, i1 false)
  br label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit703

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit703: ; preds = %bb.gc, %bb.gd
  %i.atw = load ptr, ptr %i.arl, align 8, !tbaa !143 ; 2 uses
  %i.atx = load ptr, ptr %i.arm, align 8, !tbaa !144
  %i.aty = ptrtoint ptr %i.atx to i64
  %i.atz = ptrtoint ptr %i.atw to i64
  %i.aua = sub i64 %i.aty, %i.atz
  %.sroa.speculated.i704 = call i64 @llvm.umin.i64(i64 %i.aua, i64 %i.atu)
  %i.aub = getelementptr inbounds nuw i8, ptr %i.atw, i64 %.sroa.speculated.i704 ; 3 uses
  store ptr %i.aub, ptr %i.arl, align 8, !tbaa !143
  %i.auc = getelementptr inbounds nuw i8, ptr %.sroa.0814.0996, i64 %i.atu
  %i.aud = sub nuw i64 %.sroa.7.0995, %i.atu      ; 2 uses
  %.not149 = icmp eq i64 %i.aud, 0
  br i1 %.not149, label %bb.ge, label %_ZN5boost5beast17basic_flat_bufferISaIcEE9copy_fromIS2_EEvRKNS1_IT_EE.exit, !llvm.loop !567

bb.ge:                                            ; preds = %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit703
  %i.aue = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !48 ; 4 uses
  %i.auf = load ptr, ptr %i.ark, align 8, !tbaa !146
  %i.aug = ptrtoint ptr %i.aub to i64
  %i.auh = ptrtoint ptr %i.auf to i64
  %i.aui = sub i64 %i.aug, %i.auh
  %i.auj = icmp eq i64 %i.aui, %.0931011
  br i1 %i.auj, label %bb.gf, label %bb.gj

bb.gf:                                            ; preds = %bb.ge
  %i.auk = getelementptr inbounds nuw i8, ptr %i.aue, i64 8
  %i.aul = load i8, ptr %i.auk, align 8, !tbaa !65, !range !40, !noundef !41
  %i.aum = trunc nuw i8 %i.aul to i1
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aue, i64 9
  %i.auo = load i8, ptr %i.aun, align 1, !range !40
  %i.aup = trunc nuw i8 %i.auo to i1
  %or.cond.i.i.i = select i1 %i.aum, i1 %i.aup, i1 false
  br i1 %or.cond.i.i.i, label %bb.gg, label %_ZN5boost5beast9unit_test5suite4passIvEEvv.exit.i

bb.gg:                                            ; preds = %bb.gf
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast9unit_test5suite15abort_exceptionE, i64 16), ptr %9, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  store ptr @.str.7, ptr %10, align 8, !tbaa !203
  %i.auq = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.8, ptr %i.auq, align 8, !tbaa !204
  %i.aur = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 592, ptr %i.aur, align 8, !tbaa !205
  %i.aus = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 48, ptr %i.aus, align 4, !tbaa !206
  invoke void @_ZN5boost15throw_exceptionINS_5beast9unit_test5suite15abort_exceptionEEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(24) %10) #30
          to label %bb.gh unwind label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  unreachable

bb.gi:                                            ; preds = %bb.gg
  %i.aut = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
end_hunk_0
