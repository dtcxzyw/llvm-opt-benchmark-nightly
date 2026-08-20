inline.NumInlined: 11821
inline.NumDeleted: 2364
begin_hunk_0_@_ZN12_GLOBAL__N_130CivilTime_NextPrevWeekday_Test8TestBodyEv:bb.a
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i289

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i289: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i288
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit291

_ZN7testing15AssertionResultD2Ev.exit291:         ; preds = %bb.bf, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i289
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %_ZN7testing15AssertionResultD2Ev.exit291
  %indvars.iv.i.i300 = phi i64 [ %indvars.iv.next.i.i301, %bb.bh ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit291 ] ; 4 uses
  %indvars.iv.next.i.i301 = add nuw nsw i64 %indvars.iv.i.i300, 1
  switch i64 %indvars.iv.i.i300, label %bb.bh [
    i64 10, label %.preheader.i.i303.preheader
    i64 3, label %.preheader.i.i303.preheader
  ]

.preheader.i.i303.preheader:                      ; preds = %bb.bh, %bb.bh
  br label %.preheader.i.i303

.preheader.i.i303:                                ; preds = %.preheader.i.i303.preheader, %.preheader.i.i303
  %indvars.iv17.i.i304 = phi i64 [ %indvars.iv.next18.i.i305, %.preheader.i.i303 ], [ %indvars.iv.i.i300, %.preheader.i.i303.preheader ]
  %indvars.iv.next18.i.i305 = add nuw nsw i64 %indvars.iv17.i.i304, 1 ; 3 uses
  switch i64 %indvars.iv.next18.i.i305, label %.preheader.i.i303 [
    i64 12, label %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit311
    i64 5, label %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit311
  ]

_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit311: ; preds = %.preheader.i.i303, %.preheader.i.i303
  %i.fy = sub nsw i64 %indvars.iv.next18.i.i305, %indvars.iv.i.i300
  %i.fz = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 1970, i8 noundef signext 1, i64 noundef 1, i64 noundef %i.fy, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.fca.1.extract.i.i.i.i308 = extractvalue { i64, i64 } %i.fz, 1 ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i.i.i309 = and i64 %.fca.1.extract.i.i.i.i308, 65535 ; 2 uses
  %i.ga = extractvalue { i64, i64 } %i.fz, 0      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store i32 2, ptr %i.e, align 4, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %.sroa.22.8.extract.trunc.i.i312 = trunc i64 %.fca.1.extract.i.i.i.i308 to i8 ; 2 uses
  %.sroa.43.8.extract.shift.i.i313 = lshr i64 %.fca.1.extract.i.i.i.i308, 8
  %.sroa.43.8.extract.trunc.i.i314 = trunc i64 %.sroa.43.8.extract.shift.i.i313 to i8
  %i.gb = call noundef i64 @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %i.ga, i8 noundef signext %.sroa.22.8.extract.trunc.i.i312, i8 noundef signext %.sroa.43.8.extract.trunc.i.i314, i64 noundef 1970, i8 noundef signext 1, i8 noundef signext 1) #20 ; 2 uses
  store i64 %i.gb, ptr %i.f, align 8, !tbaa !96
  %i.gc = load i32, ptr %i.e, align 4, !tbaa !331, !noalias !1574
  %i.gd = sext i32 %i.gc to i64
  %i.ge = icmp eq i64 %i.gb, %i.gd
  br i1 %i.ge, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit311
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit318

bb.bj:                                            ; preds = %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit311
  call void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17, ptr noundef nonnull @.str.459, ptr noundef nonnull @.str.665, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit318

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit318: ; preds = %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.gf = load i8, ptr %17, align 8, !tbaa !33, !range !43, !noundef !44
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %bb.bv, label %bb.bk

bb.bk:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit318
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.bl unwind label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  %i.gh = load ptr, ptr %18, align 8, !tbaa !46
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_7day_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.gi, i64 %i.ga, i64 %.sroa.2.8.insert.insert.i.i.i.i.i309)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit322 unwind label %bb.bq ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit322: ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  %i.gk = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !45 ; 2 uses
  %.not.i.i323 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i323, label %_ZNK7testing15AssertionResult15failure_messageEv.exit324, label %bb.bm

bb.bm:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit322
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit324

_ZNK7testing15AssertionResult15failure_messageEv.exit324: ; preds = %bb.bm, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit322
  %i.gn = phi ptr [ %i.gm, %bb.bm ], [ @.str.100, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit322 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 937, ptr noundef %i.gn)
          to label %bb.bn unwind label %bb.br

bb.bn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit324
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.bo unwind label %bb.bs

bb.bo:                                            ; preds = %bb.bn
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  %i.go = load ptr, ptr %18, align 8, !tbaa !46   ; 3 uses
  %.not.i.i325 = icmp eq ptr %i.go, null
  br i1 %.not.i.i325, label %_ZN7testing7MessageD2Ev.exit327, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i326

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i326: ; preds = %bb.bo
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !9
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8
  call void %i.gr(ptr noundef nonnull align 8 dereferenceable(128) %i.go) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit327

_ZN7testing7MessageD2Ev.exit327:                  ; preds = %bb.bo, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i326
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %bb.bv

bb.bp:                                            ; preds = %bb.bk
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit330

bb.bq:                                            ; preds = %bb.bl
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.br:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit324
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bn
  %i.gv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #20
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.pn129 = phi { ptr, i32 } [ %i.gv, %bb.bs ], [ %i.gu, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bq
  %.pn129.pn = phi { ptr, i32 } [ %.pn129, %bb.bt ], [ %i.gt, %bb.bq ] ; 2 uses
  %i.gw = load ptr, ptr %18, align 8, !tbaa !46   ; 3 uses
  %.not.i.i328 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i328, label %_ZN7testing7MessageD2Ev.exit330, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i329

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i329: ; preds = %bb.bu
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !9
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef nonnull align 8 dereferenceable(128) %i.gw) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit330

_ZN7testing7MessageD2Ev.exit330:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i329, %bb.bu, %bb.bp
  %.pn129.pn.pn = phi { ptr, i32 } [ %i.gs, %bb.bp ], [ %.pn129.pn, %bb.bu ], [ %.pn129.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i329 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.gv

bb.bv:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit318, %_ZN7testing7MessageD2Ev.exit327
  %i.ha = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !45 ; 4 uses
  %.not.i.i331 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i331, label %_ZN7testing15AssertionResultD2Ev.exit335, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !31 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 16 ; 2 uses
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i333, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i332

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i332: ; preds = %bb.bw
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !32
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hg) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i333

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i333: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i332
  call void @_ZdlPvm(ptr noundef nonnull %i.hb, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit335

_ZN7testing15AssertionResultD2Ev.exit335:         ; preds = %bb.bv, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i333
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %i.hh = shl nuw i64 %.sroa.2.8.insert.insert.i.i.i.i.i309, 48
  %i.hi = ashr i64 %i.hh, 56
  %i.hj = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.ga, i8 noundef signext %.sroa.22.8.extract.trunc.i.i312, i64 noundef %i.hi, i64 noundef -7, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.sroa.3.0.in.in.i343 = extractvalue { i64, i64 } %i.hj, 1
  %.sroa.3.0.in.i344 = and i64 %.sroa.3.0.in.in.i343, 65535
  %i.hk = extractvalue { i64, i64 } %i.hj, 0
  store i64 %i.hk, ptr %21, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store i64 %.sroa.3.0.in.i344, ptr %i.hl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bx, %_ZN7testing15AssertionResultD2Ev.exit335
  %indvars.iv809 = phi i64 [ %indvars.iv.next810, %bb.bx ], [ 1, %_ZN7testing15AssertionResultD2Ev.exit335 ] ; 2 uses
  %indvars.iv807 = phi i64 [ %indvars.iv.next808, %bb.bx ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit335 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.a, %bb.bx ], [ 7, %_ZN7testing15AssertionResultD2Ev.exit335 ] ; 2 uses
  %indvars.iv.i.i354 = phi i64 [ %indvars.iv.next.i.i355, %bb.bx ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit335 ] ; 3 uses
  %indvars.iv.next.i.i355 = add nuw nsw i64 %indvars.iv.i.i354, 1
  %indvars.iv.next.a = add i64 %indvars.iv, -1
  %indvars.iv.next808 = add i64 %indvars.iv807, -1
  %indvars.iv.next810 = add nuw i64 %indvars.iv809, 1
  switch i64 %indvars.iv.i.i354, label %bb.bx [
    i64 10, label %.preheader.i.i357.preheader
    i64 3, label %.preheader.i.i357.preheader
  ]

.preheader.i.i357.preheader:                      ; preds = %bb.bx, %bb.bx
  %umin = call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %indvars.iv807)
  %i.hm = add i64 %umin, %indvars.iv809
  %i.hn = sub nsw i64 %i.hm, %indvars.iv.i.i354
  %sext20.i.i361 = shl i64 %i.hn, 32
  %i.ho = ashr exact i64 %sext20.i.i361, 32
  %i.hp = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detailmiENS3_10civil_timeINS3_7day_tagEEEl(i64 1970, i64 257, i64 noundef %i.ho) #20 ; 2 uses
  %i.hq = extractvalue { i64, i64 } %i.hp, 1      ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i4.i362 = and i64 %i.hq, 65535
  %i.hr = extractvalue { i64, i64 } %i.hp, 0      ; 2 uses
  store i64 %i.hr, ptr %22, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %.sroa.2.8.insert.insert.i.i.i4.i362, ptr %i.hs, align 8
  %i.ht = load i64, ptr %21, align 8, !tbaa !438, !noalias !1579
  %i.hu = icmp eq i64 %i.ht, %i.hr
  %i.hv = lshr i64 %i.hq, 8
  %i.hw = trunc i64 %i.hv to i8
  %i.hx = trunc i64 %i.hq to i8
  %i.hy = load i8, ptr %i.hl, align 8
  %i.hz = icmp eq i8 %i.hy, %i.hx
  %i.ia = getelementptr inbounds nuw i8, ptr %21, i64 9
  %i.ib = load <4 x i8>, ptr %i.ia, align 1
  %i.ic = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %i.hw, i64 0
  %i.id = icmp eq <4 x i8> %i.ib, %i.ic
  %i.ie = freeze <4 x i1> %i.id
  %i.if = bitcast <4 x i1> %i.ie to i4
  %i.ig = icmp eq i4 %i.if, -1
  %i.ih = and i1 %i.hu, %i.ig
  %op.rdx999 = select i1 %i.ih, i1 %i.hz, i1 false
  br i1 %op.rdx999, label %bb.by, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i365

bb.by:                                            ; preds = %.preheader.i.i357.preheader
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %20)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit367

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i365: ; preds = %.preheader.i.i357.preheader
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %20, ptr noundef nonnull @.str.668, ptr noundef nonnull @.str.670, ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) %22)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit367

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit367: ; preds = %bb.by, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i365
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  %i.ii = load i8, ptr %20, align 8, !tbaa !33, !range !43, !noundef !44
  %i.ij = trunc nuw i8 %i.ii to i1
  br i1 %i.ij, label %bb.ci, label %bb.bz

bb.bz:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit367
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.ca unwind label %bb.ce

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  %i.ik = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !45 ; 2 uses
  %.not.i.i368 = icmp eq ptr %i.il, null
  br i1 %.not.i.i368, label %_ZNK7testing15AssertionResult15failure_messageEv.exit369, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit369

_ZNK7testing15AssertionResult15failure_messageEv.exit369: ; preds = %bb.cb, %bb.ca
  %i.in = phi ptr [ %i.im, %bb.cb ], [ @.str.100, %bb.ca ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %24, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 938, ptr noundef %i.in)
          to label %bb.cc unwind label %bb.cf

bb.cc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit369
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.cd unwind label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  %i.io = load ptr, ptr %23, align 8, !tbaa !46   ; 3 uses
  %.not.i.i370 = icmp eq ptr %i.io, null
  br i1 %.not.i.i370, label %_ZN7testing7MessageD2Ev.exit372, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i371

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i371: ; preds = %bb.cd
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !9
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8
  call void %i.ir(ptr noundef nonnull align 8 dereferenceable(128) %i.io) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit372

_ZN7testing7MessageD2Ev.exit372:                  ; preds = %bb.cd, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i371
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  br label %bb.ci

bb.ce:                                            ; preds = %bb.bz
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit375

bb.cf:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit369
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cg:                                            ; preds = %bb.cc
  %i.iu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #20
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.pn133 = phi { ptr, i32 } [ %i.iu, %bb.cg ], [ %i.it, %bb.cf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  %i.iv = load ptr, ptr %23, align 8, !tbaa !46   ; 3 uses
  %.not.i.i373 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i373, label %_ZN7testing7MessageD2Ev.exit375, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i374

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i374: ; preds = %bb.ch
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !9
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(128) %i.iv) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit375

_ZN7testing7MessageD2Ev.exit375:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i374, %bb.ch, %bb.ce
  %.pn133.pn = phi { ptr, i32 } [ %i.is, %bb.ce ], [ %.pn133, %bb.ch ], [ %.pn133, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i374 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %bb.gv

bb.ci:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit367, %_ZN7testing7MessageD2Ev.exit372
  %i.iz = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !45 ; 4 uses
  %.not.i.i376 = icmp eq ptr %i.ja, null
  br i1 %.not.i.i376, label %_ZN7testing15AssertionResultD2Ev.exit380, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !31 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 16 ; 2 uses
  %i.jd = icmp eq ptr %i.jb, %i.jc
  br i1 %i.jd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i378, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i377

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i377: ; preds = %bb.cj
  %i.je = load i64, ptr %i.jc, align 8, !tbaa !32
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.jf) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i378

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i378: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i377
  call void @_ZdlPvm(ptr noundef nonnull %i.ja, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit380

_ZN7testing15AssertionResultD2Ev.exit380:         ; preds = %bb.ci, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i378
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %_ZN7testing15AssertionResultD2Ev.exit380
  %indvars.iv.i.i389 = phi i64 [ %indvars.iv.next.i.i390, %bb.ck ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit380 ] ; 4 uses
  %indvars.iv.next.i.i390 = add nuw nsw i64 %indvars.iv.i.i389, 1
  switch i64 %indvars.iv.i.i389, label %bb.ck [
    i64 10, label %.preheader.i.i392.preheader
    i64 3, label %.preheader.i.i392.preheader
  ]

.preheader.i.i392.preheader:                      ; preds = %bb.ck, %bb.ck
  br label %.preheader.i.i392

.preheader.i.i392:                                ; preds = %.preheader.i.i392.preheader, %.preheader.i.i392
  %indvars.iv17.i.i393 = phi i64 [ %indvars.iv.next18.i.i394, %.preheader.i.i392 ], [ %indvars.iv.i.i389, %.preheader.i.i392.preheader ]
  %indvars.iv.next18.i.i394 = add nuw nsw i64 %indvars.iv17.i.i393, 1 ; 3 uses
  switch i64 %indvars.iv.next18.i.i394, label %.preheader.i.i392 [
    i64 13, label %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit400
    i64 6, label %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit400
  ]

_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit400: ; preds = %.preheader.i.i392, %.preheader.i.i392
  %i.jg = sub nsw i64 %indvars.iv.next18.i.i394, %indvars.iv.i.i389
  %i.jh = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 1970, i8 noundef signext 1, i64 noundef 1, i64 noundef %i.jg, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.fca.1.extract.i.i.i.i397 = extractvalue { i64, i64 } %i.jh, 1 ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i.i.i398 = and i64 %.fca.1.extract.i.i.i.i397, 65535 ; 2 uses
  %i.ji = extractvalue { i64, i64 } %i.jh, 0      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  store i32 3, ptr %i.g, align 4, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  %.sroa.22.8.extract.trunc.i.i401 = trunc i64 %.fca.1.extract.i.i.i.i397 to i8 ; 2 uses
  %.sroa.43.8.extract.shift.i.i402 = lshr i64 %.fca.1.extract.i.i.i.i397, 8
  %.sroa.43.8.extract.trunc.i.i403 = trunc i64 %.sroa.43.8.extract.shift.i.i402 to i8
  %i.jj = call noundef i64 @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %i.ji, i8 noundef signext %.sroa.22.8.extract.trunc.i.i401, i8 noundef signext %.sroa.43.8.extract.trunc.i.i403, i64 noundef 1970, i8 noundef signext 1, i8 noundef signext 1) #20 ; 2 uses
  store i64 %i.jj, ptr %i.h, align 8, !tbaa !96
  %i.jk = load i32, ptr %i.g, align 4, !tbaa !331, !noalias !1584
  %i.jl = sext i32 %i.jk to i64
  %i.jm = icmp eq i64 %i.jj, %i.jl
  br i1 %i.jm, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit400
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %25)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit407

bb.cm:                                            ; preds = %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit400
  call void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %25, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.665, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit407

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit407: ; preds = %bb.cl, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  %i.jn = load i8, ptr %25, align 8, !tbaa !33, !range !43, !noundef !44
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_130CivilTime_NextPrevWeekday_Test8TestBodyEv:bb.a
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !31 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 16 ; 2 uses
  %i.nu = icmp eq ptr %i.ns, %i.nt
  br i1 %i.nu, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i511, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i510

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i510: ; preds = %bb.ec
  %i.nv = load i64, ptr %i.nt, align 8, !tbaa !32
  %i.nw = add i64 %i.nv, 1
  call void @_ZdlPvm(ptr noundef %i.ns, i64 noundef %i.nw) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i511

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i511: ; preds = %bb.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i510
  call void @_ZdlPvm(ptr noundef nonnull %i.nr, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit513

_ZN7testing15AssertionResultD2Ev.exit513:         ; preds = %bb.eb, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i511
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #20
  %i.nx = shl nuw i64 %.sroa.2.8.insert.insert.i.i.i.i.i487, 48
  %i.ny = ashr i64 %i.nx, 56
  %i.nz = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.mq, i8 noundef signext %.sroa.22.8.extract.trunc.i.i490, i64 noundef %i.ny, i64 noundef -7, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.sroa.3.0.in.in.i521 = extractvalue { i64, i64 } %i.nz, 1
  %.sroa.3.0.in.i522 = and i64 %.sroa.3.0.in.in.i521, 65535
  %i.oa = extractvalue { i64, i64 } %i.nz, 0
  store i64 %i.oa, ptr %37, align 8
  %i.ob = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  store i64 %.sroa.3.0.in.i522, ptr %i.ob, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #20
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ed, %_ZN7testing15AssertionResultD2Ev.exit513
  %indvars.iv.i.i532 = phi i64 [ %indvars.iv.next.i.i533, %bb.ed ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit513 ] ; 4 uses
  %indvars.iv.next.i.i533 = add nuw nsw i64 %indvars.iv.i.i532, 1
  switch i64 %indvars.iv.i.i532, label %bb.ed [
    i64 10, label %.preheader.i.i535.preheader
    i64 3, label %.preheader.i.i535.preheader
  ]

.preheader.i.i535.preheader:                      ; preds = %bb.ed, %bb.ed
  br label %.preheader.i.i535

.preheader.i.i535:                                ; preds = %.preheader.i.i535.preheader, %.preheader.i.i535
  %indvars.iv17.i.i536 = phi i64 [ %indvars.iv.next18.i.i537, %.preheader.i.i535 ], [ %indvars.iv.i.i532, %.preheader.i.i535.preheader ]
  %indvars.iv.next18.i.i537 = add nuw nsw i64 %indvars.iv17.i.i536, 1 ; 3 uses
  switch i64 %indvars.iv.next18.i.i537, label %.preheader.i.i535 [
    i64 13, label %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit542
    i64 6, label %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit542
  ]

_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit542: ; preds = %.preheader.i.i535, %.preheader.i.i535
  %i.oc = sub nsw i64 %indvars.iv.next18.i.i537, %indvars.iv.i.i532
  %i.od = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detailmiENS3_10civil_timeINS3_7day_tagEEEl(i64 1970, i64 257, i64 noundef %i.oc) #20 ; 2 uses
  %i.oe = extractvalue { i64, i64 } %i.od, 1      ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i4.i540 = and i64 %i.oe, 65535
  %i.of = extractvalue { i64, i64 } %i.od, 0      ; 2 uses
  store i64 %i.of, ptr %38, align 8
  %i.og = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 %.sroa.2.8.insert.insert.i.i.i4.i540, ptr %i.og, align 8
  %i.oh = load i64, ptr %37, align 8, !tbaa !438, !noalias !1599
  %i.oi = icmp eq i64 %i.oh, %i.of
  %i.oj = lshr i64 %i.oe, 8
  %i.ok = trunc i64 %i.oj to i8
  %i.ol = trunc i64 %i.oe to i8
  %i.om = load i8, ptr %i.ob, align 8
  %i.on = icmp eq i8 %i.om, %i.ol
  %i.oo = getelementptr inbounds nuw i8, ptr %37, i64 9
  %i.op = load <4 x i8>, ptr %i.oo, align 1
  %i.oq = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %i.ok, i64 0
  %i.or = icmp eq <4 x i8> %i.op, %i.oq
  %i.os = freeze <4 x i1> %i.or
  %i.ot = bitcast <4 x i1> %i.os to i4
  %i.ou = icmp eq i4 %i.ot, -1
  %i.ov = and i1 %i.oi, %i.ou
  %op.rdx995 = select i1 %i.ov, i1 %i.on, i1 false
  br i1 %op.rdx995, label %bb.ee, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i543

bb.ee:                                            ; preds = %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit542
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %36)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit545

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i543: ; preds = %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit542
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %36, ptr noundef nonnull @.str.668, ptr noundef nonnull @.str.672, ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %38)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit545

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit545: ; preds = %bb.ee, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i543
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  %i.ow = load i8, ptr %36, align 8, !tbaa !33, !range !43, !noundef !44
  %i.ox = trunc nuw i8 %i.ow to i1
  br i1 %i.ox, label %bb.eo, label %bb.ef

bb.ef:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit545
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.eg unwind label %bb.ek

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #20
  %i.oy = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !45 ; 2 uses
  %.not.i.i546 = icmp eq ptr %i.oz, null
  br i1 %.not.i.i546, label %_ZNK7testing15AssertionResult15failure_messageEv.exit547, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit547

_ZNK7testing15AssertionResult15failure_messageEv.exit547: ; preds = %bb.eh, %bb.eg
  %i.pb = phi ptr [ %i.pa, %bb.eh ], [ @.str.100, %bb.eg ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %40, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 948, ptr noundef %i.pb)
          to label %bb.ei unwind label %bb.el

bb.ei:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit547
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.ej unwind label %bb.em

bb.ej:                                            ; preds = %bb.ei
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #20
  %i.pc = load ptr, ptr %39, align 8, !tbaa !46   ; 3 uses
  %.not.i.i548 = icmp eq ptr %i.pc, null
  br i1 %.not.i.i548, label %_ZN7testing7MessageD2Ev.exit550, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i549

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i549: ; preds = %bb.ej
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !9
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %i.pf = load ptr, ptr %i.pe, align 8
  call void %i.pf(ptr noundef nonnull align 8 dereferenceable(128) %i.pc) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit550

_ZN7testing7MessageD2Ev.exit550:                  ; preds = %bb.ej, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i549
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  br label %bb.eo

bb.ek:                                            ; preds = %bb.ef
  %i.pg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit553

bb.el:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit547
  %i.ph = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.em:                                            ; preds = %bb.ei
  %i.pi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #20
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %.pn147 = phi { ptr, i32 } [ %i.pi, %bb.em ], [ %i.ph, %bb.el ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #20
  %i.pj = load ptr, ptr %39, align 8, !tbaa !46   ; 3 uses
  %.not.i.i551 = icmp eq ptr %i.pj, null
  br i1 %.not.i.i551, label %_ZN7testing7MessageD2Ev.exit553, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i552

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i552: ; preds = %bb.en
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !9
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %i.pm = load ptr, ptr %i.pl, align 8
  call void %i.pm(ptr noundef nonnull align 8 dereferenceable(128) %i.pj) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit553

_ZN7testing7MessageD2Ev.exit553:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i552, %bb.en, %bb.ek
  %.pn147.pn = phi { ptr, i32 } [ %i.pg, %bb.ek ], [ %.pn147, %bb.en ], [ %.pn147, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i552 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %36) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  br label %bb.gv

bb.eo:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit545, %_ZN7testing7MessageD2Ev.exit550
  %i.pn = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !45 ; 4 uses
  %.not.i.i554 = icmp eq ptr %i.po, null
  br i1 %.not.i.i554, label %_ZN7testing15AssertionResultD2Ev.exit558, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !31 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 16 ; 2 uses
  %i.pr = icmp eq ptr %i.pp, %i.pq
  br i1 %i.pr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i556, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i555

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i555: ; preds = %bb.ep
  %i.ps = load i64, ptr %i.pq, align 8, !tbaa !32
  %i.pt = add i64 %i.ps, 1
  call void @_ZdlPvm(ptr noundef %i.pp, i64 noundef %i.pt) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i556

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i556: ; preds = %bb.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i555
  call void @_ZdlPvm(ptr noundef nonnull %i.po, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit558

_ZN7testing15AssertionResultD2Ev.exit558:         ; preds = %bb.eo, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i556
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  br label %bb.eq

bb.eq:                                            ; preds = %bb.eq, %_ZN7testing15AssertionResultD2Ev.exit558
  %indvars.iv816 = phi i64 [ %indvars.iv.next817, %bb.eq ], [ 1, %_ZN7testing15AssertionResultD2Ev.exit558 ] ; 2 uses
  %indvars.iv813 = phi i64 [ %indvars.iv.next814, %bb.eq ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit558 ] ; 2 uses
  %indvars.iv811 = phi i64 [ %indvars.iv.next812.a, %bb.eq ], [ 7, %_ZN7testing15AssertionResultD2Ev.exit558 ] ; 2 uses
  %indvars.iv.i.i567 = phi i64 [ %indvars.iv.next.i.i568, %bb.eq ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit558 ] ; 3 uses
  %indvars.iv.next.i.i568 = add nuw nsw i64 %indvars.iv.i.i567, 1
  %indvars.iv.next812.a = add i64 %indvars.iv811, -1
  %indvars.iv.next814 = add i64 %indvars.iv813, -1
  %indvars.iv.next817 = add nuw i64 %indvars.iv816, 1
  switch i64 %indvars.iv.i.i567, label %bb.eq [
    i64 10, label %.preheader.i.i570.preheader
    i64 3, label %.preheader.i.i570.preheader
  ]

.preheader.i.i570.preheader:                      ; preds = %bb.eq, %bb.eq
  %umin815 = call i64 @llvm.umin.i64(i64 %indvars.iv811, i64 %indvars.iv813)
  %i.pu = add i64 %umin815, %indvars.iv816
  %i.pv = sub nsw i64 %i.pu, %indvars.iv.i.i567
  %sext20.i.i573 = shl i64 %i.pv, 32
  %i.pw = ashr exact i64 %sext20.i.i573, 32
  %i.px = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 1970, i8 noundef signext 1, i64 noundef 1, i64 noundef %i.pw, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.fca.1.extract.i.i.i.i575 = extractvalue { i64, i64 } %i.px, 1 ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i.i.i576 = and i64 %.fca.1.extract.i.i.i.i575, 65535 ; 2 uses
  %i.py = extractvalue { i64, i64 } %i.px, 0      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #20
  store i32 5, ptr %i.k, align 4, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #20
  %.sroa.22.8.extract.trunc.i.i579 = trunc i64 %.fca.1.extract.i.i.i.i575 to i8 ; 2 uses
  %.sroa.43.8.extract.shift.i.i580 = lshr i64 %.fca.1.extract.i.i.i.i575, 8
  %.sroa.43.8.extract.trunc.i.i581 = trunc i64 %.sroa.43.8.extract.shift.i.i580 to i8
  %i.pz = call noundef i64 @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %i.py, i8 noundef signext %.sroa.22.8.extract.trunc.i.i579, i8 noundef signext %.sroa.43.8.extract.trunc.i.i581, i64 noundef 1970, i8 noundef signext 1, i8 noundef signext 1) #20 ; 2 uses
  store i64 %i.pz, ptr %i.l, align 8, !tbaa !96
  %i.qa = load i32, ptr %i.k, align 4, !tbaa !331, !noalias !1604
  %i.qb = sext i32 %i.qa to i64
  %i.qc = icmp eq i64 %i.pz, %i.qb
  br i1 %i.qc, label %bb.er, label %bb.es

bb.er:                                            ; preds = %.preheader.i.i570.preheader
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %41)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit585

bb.es:                                            ; preds = %.preheader.i.i570.preheader
  call void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %41, ptr noundef nonnull @.str.465, ptr noundef nonnull @.str.665, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit585

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit585: ; preds = %bb.er, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #20
  %i.qd = load i8, ptr %41, align 8, !tbaa !33, !range !43, !noundef !44
  %i.qe = trunc nuw i8 %i.qd to i1
  br i1 %i.qe, label %bb.fe, label %bb.et

bb.et:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit585
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %bb.eu unwind label %bb.ey

bb.eu:                                            ; preds = %bb.et
  %i.qf = load ptr, ptr %42, align 8, !tbaa !46
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
  %i.qh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_7day_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.qg, i64 %i.py, i64 %.sroa.2.8.insert.insert.i.i.i.i.i576)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit589 unwind label %bb.ez ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit589: ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #20
  %i.qi = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !45 ; 2 uses
  %.not.i.i590 = icmp eq ptr %i.qj, null
  br i1 %.not.i.i590, label %_ZNK7testing15AssertionResult15failure_messageEv.exit591, label %bb.ev

bb.ev:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit589
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit591

_ZNK7testing15AssertionResult15failure_messageEv.exit591: ; preds = %bb.ev, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit589
  %i.ql = phi ptr [ %i.qk, %bb.ev ], [ @.str.100, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit589 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %43, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 952, ptr noundef %i.ql)
          to label %bb.ew unwind label %bb.fa

bb.ew:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit591
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %bb.ex unwind label %bb.fb

bb.ex:                                            ; preds = %bb.ew
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %43) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #20
  %i.qm = load ptr, ptr %42, align 8, !tbaa !46   ; 3 uses
  %.not.i.i592 = icmp eq ptr %i.qm, null
  br i1 %.not.i.i592, label %_ZN7testing7MessageD2Ev.exit594, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i593

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i593: ; preds = %bb.ex
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !9
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %i.qp = load ptr, ptr %i.qo, align 8
  call void %i.qp(ptr noundef nonnull align 8 dereferenceable(128) %i.qm) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit594

_ZN7testing7MessageD2Ev.exit594:                  ; preds = %bb.ex, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i593
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #20
  br label %bb.fe

bb.ey:                                            ; preds = %bb.et
  %i.qq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit597

bb.ez:                                            ; preds = %bb.eu
  %i.qr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.fa:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit591
  %i.qs = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.fb:                                            ; preds = %bb.ew
  %i.qt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %43) #20
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %.pn150 = phi { ptr, i32 } [ %i.qt, %bb.fb ], [ %i.qs, %bb.fa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #20
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.ez
  %.pn150.pn = phi { ptr, i32 } [ %.pn150, %bb.fc ], [ %i.qr, %bb.ez ] ; 2 uses
  %i.qu = load ptr, ptr %42, align 8, !tbaa !46   ; 3 uses
  %.not.i.i595 = icmp eq ptr %i.qu, null
  br i1 %.not.i.i595, label %_ZN7testing7MessageD2Ev.exit597, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i596

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i596: ; preds = %bb.fd
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !9
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  %i.qx = load ptr, ptr %i.qw, align 8
  call void %i.qx(ptr noundef nonnull align 8 dereferenceable(128) %i.qu) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit597

_ZN7testing7MessageD2Ev.exit597:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i596, %bb.fd, %bb.ey
  %.pn150.pn.pn = phi { ptr, i32 } [ %i.qq, %bb.ey ], [ %.pn150.pn, %bb.fd ], [ %.pn150.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i596 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %41) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #20
  br label %bb.gv

bb.fe:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit585, %_ZN7testing7MessageD2Ev.exit594
  %i.qy = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !45 ; 4 uses
  %.not.i.i598 = icmp eq ptr %i.qz, null
  br i1 %.not.i.i598, label %_ZN7testing15AssertionResultD2Ev.exit602, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !31 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qz, i64 16 ; 2 uses
  %i.rc = icmp eq ptr %i.ra, %i.rb
  br i1 %i.rc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i600, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i599

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i599: ; preds = %bb.ff
  %i.rd = load i64, ptr %i.rb, align 8, !tbaa !32
  %i.re = add i64 %i.rd, 1
  call void @_ZdlPvm(ptr noundef %i.ra, i64 noundef %i.re) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i600

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i600: ; preds = %bb.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i599
  call void @_ZdlPvm(ptr noundef nonnull %i.qz, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit602

_ZN7testing15AssertionResultD2Ev.exit602:         ; preds = %bb.fe, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i600
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #20
  %i.rf = shl nuw i64 %.sroa.2.8.insert.insert.i.i.i.i.i576, 48
  %i.rg = ashr i64 %i.rf, 56
  %i.rh = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.py, i8 noundef signext %.sroa.22.8.extract.trunc.i.i579, i64 noundef %i.rg, i64 noundef -7, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.sroa.3.0.in.in.i610 = extractvalue { i64, i64 } %i.rh, 1
  %.sroa.3.0.in.i611 = and i64 %.sroa.3.0.in.in.i610, 65535
  %i.ri = extractvalue { i64, i64 } %i.rh, 0
  store i64 %i.ri, ptr %45, align 8
  %i.rj = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  store i64 %.sroa.3.0.in.i611, ptr %i.rj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #20
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fg, %_ZN7testing15AssertionResultD2Ev.exit602
  %indvars.iv.i.i621 = phi i64 [ %indvars.iv.next.i.i622, %bb.fg ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit602 ] ; 4 uses
  %indvars.iv.next.i.i622 = add nuw nsw i64 %indvars.iv.i.i621, 1
  switch i64 %indvars.iv.i.i621, label %bb.fg [
    i64 10, label %.preheader.i.i624.preheader
    i64 3, label %.preheader.i.i624.preheader
  ]

.preheader.i.i624.preheader:                      ; preds = %bb.fg, %bb.fg
  br label %.preheader.i.i624

.preheader.i.i624:                                ; preds = %.preheader.i.i624.preheader, %.preheader.i.i624
  %indvars.iv17.i.i625 = phi i64 [ %indvars.iv.next18.i.i626, %.preheader.i.i624 ], [ %indvars.iv.i.i621, %.preheader.i.i624.preheader ]
  %indvars.iv.next18.i.i626 = add nuw nsw i64 %indvars.iv17.i.i625, 1 ; 3 uses
  switch i64 %indvars.iv.next18.i.i626, label %.preheader.i.i624 [
    i64 12, label %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit631
    i64 5, label %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit631
  ]

_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit631: ; preds = %.preheader.i.i624, %.preheader.i.i624
  %i.rk = sub nsw i64 %indvars.iv.next18.i.i626, %indvars.iv.i.i621
  %i.rl = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detailmiENS3_10civil_timeINS3_7day_tagEEEl(i64 1970, i64 257, i64 noundef %i.rk) #20 ; 2 uses
  %i.rm = extractvalue { i64, i64 } %i.rl, 1      ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i4.i629 = and i64 %i.rm, 65535
  %i.rn = extractvalue { i64, i64 } %i.rl, 0      ; 2 uses
  store i64 %i.rn, ptr %46, align 8
  %i.ro = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i64 %.sroa.2.8.insert.insert.i.i.i4.i629, ptr %i.ro, align 8
  %i.rp = load i64, ptr %45, align 8, !tbaa !438, !noalias !1609
  %i.rq = icmp eq i64 %i.rp, %i.rn
  %i.rr = lshr i64 %i.rm, 8
end_hunk_1
