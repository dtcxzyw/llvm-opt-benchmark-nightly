inline.NumInlined: 2597
inline.NumDeleted: 451
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN8V3Number6createEPKc:bb.a
  %i.aeb = icmp slt i32 %i.ada, 129
  %i.aec = load ptr, ptr %0, align 8
  %spec.select.i.i404 = select i1 %i.aeb, ptr %0, ptr %i.aec
  %i.aed = sdiv i32 %i.acz, 32
  %i.aee = sext i32 %i.aed to i64
  %i.aef = getelementptr inbounds [8 x i8], ptr %spec.select.i.i404, i64 %i.aee ; 2 uses
  %i.aeg = load <2 x i32>, ptr %i.aef, align 4, !tbaa !66
  %i.aeh = insertelement <2 x i32> poison, i32 %i.aea, i64 0
  %i.aei = shufflevector <2 x i32> %i.aeh, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aej = or <2 x i32> %i.aeg, %i.aei
  store <2 x i32> %i.aej, ptr %i.aef, align 4, !tbaa !66
  br label %_ZN8V3Number6setBitEic.exit405

_ZN8V3Number6setBitEic.exit405:                   ; preds = %_ZN8V3Number6setBitEic.exit400, %_ZN12V3NumberData3numEv.exit.i403
  %i.aek = add nsw i32 %.0220576, 3               ; 3 uses
  %.not.i406 = icmp slt i32 %i.ads, %i.ada
  br i1 %.not.i406, label %bb.hb, label %_ZN8V3Number6setBitEic.exit410

bb.hb:                                            ; preds = %_ZN8V3Number6setBitEic.exit405
  %i.ael = load i8, ptr %i.g, align 4, !tbaa !42
  %i.aem = add i8 %i.ael, -1
  %spec.select.i.i.i407 = icmp ult i8 %i.aem, 2
  br i1 %spec.select.i.i.i407, label %_ZN12V3NumberData3numEv.exit.i408, label %bb.hc, !prof !43

bb.hc:                                            ; preds = %bb.hb
  %i.aen = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242) ; 0 uses
  %i.aeo = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.aep = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.aeo, ptr noundef nonnull @.str.118)
  %i.aeq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.aep, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
  call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.aeq) #32
  unreachable

_ZN12V3NumberData3numEv.exit.i408:                ; preds = %bb.hb
  %i.aer = and i32 %i.ads, 31
  %i.aes = shl nuw i32 1, %i.aer
  %i.aet = icmp slt i32 %i.ada, 129
  %i.aeu = load ptr, ptr %0, align 8
  %spec.select.i.i409 = select i1 %i.aet, ptr %0, ptr %i.aeu
  %i.aev = sdiv i32 %i.ads, 32
  %i.aew = sext i32 %i.aev to i64
  %i.aex = getelementptr inbounds [8 x i8], ptr %spec.select.i.i409, i64 %i.aew ; 2 uses
  %i.aey = load <2 x i32>, ptr %i.aex, align 4, !tbaa !66
  %i.aez = insertelement <2 x i32> poison, i32 %i.aes, i64 0
  %i.afa = shufflevector <2 x i32> %i.aez, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.afb = or <2 x i32> %i.aey, %i.afa
  store <2 x i32> %i.afb, ptr %i.aex, align 4, !tbaa !66
  br label %_ZN8V3Number6setBitEic.exit410

_ZN8V3Number6setBitEic.exit410:                   ; preds = %_ZN8V3Number6setBitEic.exit405, %_ZN12V3NumberData3numEv.exit.i408
  %i.afc = add nsw i32 %.0220576, 4               ; 2 uses
  %.not.i411 = icmp slt i32 %i.aek, %i.ada
  br i1 %.not.i411, label %bb.hd, label %_ZN8V3Number6setBitEic.exit373

bb.hd:                                            ; preds = %_ZN8V3Number6setBitEic.exit410
  %i.afd = load i8, ptr %i.g, align 4, !tbaa !42
  %i.afe = add i8 %i.afd, -1
  %spec.select.i.i.i412 = icmp ult i8 %i.afe, 2
  br i1 %spec.select.i.i.i412, label %_ZN12V3NumberData3numEv.exit.i413, label %bb.he, !prof !43

bb.he:                                            ; preds = %bb.hd
  %i.aff = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242) ; 0 uses
  %i.afg = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.afh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.afg, ptr noundef nonnull @.str.118)
  %i.afi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.afh, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
  call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.afi) #32
  unreachable

_ZN12V3NumberData3numEv.exit.i413:                ; preds = %bb.hd
  %i.afj = and i32 %i.aek, 31
  %i.afk = shl nuw i32 1, %i.afj
  %i.afl = icmp slt i32 %i.ada, 129
  %i.afm = load ptr, ptr %0, align 8
  %spec.select.i.i414 = select i1 %i.afl, ptr %0, ptr %i.afm
  %i.afn = sdiv i32 %i.aek, 32
  %i.afo = sext i32 %i.afn to i64
  %i.afp = getelementptr inbounds [8 x i8], ptr %spec.select.i.i414, i64 %i.afo ; 2 uses
  %i.afq = load <2 x i32>, ptr %i.afp, align 4, !tbaa !66
  %i.afr = insertelement <2 x i32> poison, i32 %i.afk, i64 0
  %i.afs = shufflevector <2 x i32> %i.afr, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aft = or <2 x i32> %i.afq, %i.afs
  store <2 x i32> %i.aft, ptr %i.afp, align 4, !tbaa !66
  br label %_ZN8V3Number6setBitEic.exit373

bb.hf:                                            ; preds = %bb.ge
  %i.afu = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5) ; 0 uses
  %i.afv = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.afw = icmp eq i8 %i.afv, 0
  br i1 %i.afw, label %bb.hg, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit417, !prof !68

bb.hg:                                            ; preds = %bb.hf
  %i.afx = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #30
  %.not.i.i416 = icmp eq i32 %i.afx, 0
  br i1 %.not.i.i416, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit417, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.hi unwind label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.afy = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #30
  br label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit417

bb.hj:                                            ; preds = %bb.hh
  %i.afz = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #30
  br label %common.resume

_ZN7V3Error10v3errorStrB5cxx11Ev.exit417:         ; preds = %bb.hf, %bb.hg, %bb.hi
  %i.aga = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.123, ptr nonnull @.str.124, i32 481, ptr null) ; 6 uses
  %i.agb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aga, ptr noundef nonnull @.str.10, i64 noundef 35) ; 0 uses
  %i.agc = load i8, ptr %.0578, align 1, !tbaa !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.agc, ptr %i.b, align 1, !tbaa !23
  %i.agd = load ptr, ptr %i.aga, align 8, !tbaa !38
  %i.age = getelementptr i8, ptr %i.agd, i64 -24
  %i.agf = load i64, ptr %i.age, align 8
  %i.agg = getelementptr inbounds i8, ptr %i.aga, i64 %i.agf
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 16
  %i.agi = load i64, ptr %i.agh, align 8, !tbaa !151
  %.not.i418 = icmp eq i64 %i.agi, 0
  br i1 %.not.i418, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit417
  %i.agj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aga, ptr noundef nonnull %i.b, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit420

bb.hl:                                            ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit417
  %i.agk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aga, i8 noundef signext %i.agc) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit420

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit420: ; preds = %bb.hk, %bb.hl
  %.0.i419 = phi ptr [ %i.agj, %bb.hk ], [ %i.aga, %bb.hl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_ZNK8V3Number10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %.0.i419)
  br label %_ZN8V3Number6setBitEic.exit373

bb.hm:                                            ; preds = %bb.et
  %i.agl = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5) ; 0 uses
  %i.agm = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.agn = icmp eq i8 %i.agm, 0
  br i1 %i.agn, label %bb.hn, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit422, !prof !68

bb.hn:                                            ; preds = %bb.hm
  %i.ago = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #30
  %.not.i.i421 = icmp eq i32 %i.ago, 0
  br i1 %.not.i.i421, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit422, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.hp unwind label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.agp = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #30
  br label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit422

bb.hq:                                            ; preds = %bb.ho
  %i.agq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #30
  br label %common.resume

_ZN7V3Error10v3errorStrB5cxx11Ev.exit422:         ; preds = %bb.hm, %bb.hn, %bb.hp
  %i.agr = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.123, ptr nonnull @.str.124, i32 481, ptr null) ; 6 uses
  %i.ags = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.agr, ptr noundef nonnull @.str.11, i64 noundef 24) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %.1248, ptr %i.a, align 1, !tbaa !23
  %i.agt = load ptr, ptr %i.agr, align 8, !tbaa !38
  %i.agu = getelementptr i8, ptr %i.agt, i64 -24
  %i.agv = load i64, ptr %i.agu, align 8
  %i.agw = getelementptr inbounds i8, ptr %i.agr, i64 %i.agv
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 16
  %i.agy = load i64, ptr %i.agx, align 8, !tbaa !151
  %.not.i423 = icmp eq i64 %i.agy, 0
  br i1 %.not.i423, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit422
  %i.agz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.agr, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit425

bb.hs:                                            ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit422
  %i.aha = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.agr, i8 noundef signext %.1248) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit425

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit425: ; preds = %bb.hr, %bb.hs
  %.0.i424 = phi ptr [ %i.agz, %bb.hr ], [ %i.agr, %bb.hs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZNK8V3Number10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %.0.i424)
  br label %_ZN8V3Number6setBitEic.exit373

_ZN8V3Number6setBitEic.exit373:                   ; preds = %_ZN12V3NumberData3numEv.exit.i413, %_ZN8V3Number6setBitEic.exit410, %_ZN12V3NumberData3numEv.exit.i391, %_ZN8V3Number6setBitEic.exit388, %_ZN12V3NumberData3numEv.exit.i371, %bb.ey, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit425, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit378, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %_ZN7V3Error10v3errorStrB5cxx11Ev.exit395, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit420, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge
  %.1221 = phi i32 [ %.0220576, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit425 ], [ %.0220576, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit378 ], [ %i.vg, %bb.ev ], [ %i.vh, %bb.ew ], [ %i.vi, %bb.ex ], [ %.0220576, %bb.ge ], [ %.0220576, %bb.eu ], [ %.0220576, %_ZN7V3Error10v3errorStrB5cxx11Ev.exit395 ], [ %i.wx, %bb.fj ], [ %i.xa, %bb.fk ], [ %i.xd, %bb.fl ], [ %i.xg, %bb.fm ], [ %i.xj, %bb.fn ], [ %i.xm, %bb.fo ], [ %i.xp, %bb.fp ], [ %i.xs, %bb.fq ], [ %i.xv, %bb.fr ], [ %i.vj, %_ZN12V3NumberData3numEv.exit.i371 ], [ %.0220576, %bb.fi ], [ %.0220576, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit420 ], [ %i.aam, %bb.gf ], [ %i.aaq, %bb.gg ], [ %i.aau, %bb.gh ], [ %i.aay, %bb.gi ], [ %i.abc, %bb.gj ], [ %i.abg, %bb.gk ], [ %i.abk, %bb.gl ], [ %i.abo, %bb.gm ], [ %i.abs, %bb.gn ], [ %i.abw, %bb.go ], [ %i.aca, %bb.gp ], [ %i.ace, %bb.gq ], [ %i.aci, %bb.gr ], [ %i.acm, %bb.gs ], [ %i.acq, %bb.gt ], [ %i.acu, %bb.gu ], [ %i.acy, %bb.gv ], [ %i.zh, %_ZN12V3NumberData3numEv.exit.i391 ], [ %i.vj, %bb.ey ], [ %i.zh, %_ZN8V3Number6setBitEic.exit388 ], [ %i.afc, %_ZN8V3Number6setBitEic.exit410 ], [ %i.afc, %_ZN12V3NumberData3numEv.exit.i413 ] ; 2 uses
  %.1218 = phi i32 [ %.0217577, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit425 ], [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit378 ], [ 1, %bb.ev ], [ 1, %bb.ew ], [ 1, %bb.ex ], [ 4, %bb.ge ], [ 1, %bb.eu ], [ 3, %_ZN7V3Error10v3errorStrB5cxx11Ev.exit395 ], [ 3, %bb.fj ], [ 3, %bb.fk ], [ 3, %bb.fl ], [ 3, %bb.fm ], [ 3, %bb.fn ], [ 3, %bb.fo ], [ 3, %bb.fp ], [ 3, %bb.fq ], [ 3, %bb.fr ], [ 1, %_ZN12V3NumberData3numEv.exit.i371 ], [ 3, %bb.fi ], [ 4, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit420 ], [ 4, %bb.gf ], [ 4, %bb.gg ], [ 4, %bb.gh ], [ 4, %bb.gi ], [ 4, %bb.gj ], [ 4, %bb.gk ], [ 4, %bb.gl ], [ 4, %bb.gm ], [ 4, %bb.gn ], [ 4, %bb.go ], [ 4, %bb.gp ], [ 4, %bb.gq ], [ 4, %bb.gr ], [ 4, %bb.gs ], [ 4, %bb.gt ], [ 4, %bb.gu ], [ 4, %bb.gv ], [ 3, %_ZN12V3NumberData3numEv.exit.i391 ], [ 1, %bb.ey ], [ 3, %_ZN8V3Number6setBitEic.exit388 ], [ 4, %_ZN8V3Number6setBitEic.exit410 ], [ 4, %_ZN12V3NumberData3numEv.exit.i413 ] ; 2 uses
  %.0 = getelementptr inbounds i8, ptr %.0578, i64 -1 ; 2 uses
  %.not273 = icmp ult ptr %.0, %.2226
  br i1 %.not273, label %.loopexit496, label %.lr.ph580, !llvm.loop !153

.loopexit496:                                     ; preds = %_ZN8V3Number6setBitEic.exit373, %._crit_edge591.thread, %bb.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365, %._crit_edge591, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit357
  %.2222 = phi i32 [ %i.lv, %._crit_edge591 ], [ %i.lv, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit357 ], [ %.0220576, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365 ], [ 0, %bb.ei ], [ %i.ky, %._crit_edge591.thread ], [ %.1221, %_ZN8V3Number6setBitEic.exit373 ] ; 4 uses
  %.2219 = phi i32 [ 1, %._crit_edge591 ], [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit357 ], [ %.0217577, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365 ], [ 1, %bb.ei ], [ 1, %._crit_edge591.thread ], [ %.1218, %_ZN8V3Number6setBitEic.exit373 ] ; 2 uses
  br i1 %.0250, label %bb.hv, label %bb.ht

bb.ht:                                            ; preds = %.loopexit496
  %i.ahb = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.ahc = load i8, ptr %i.ahb, align 1           ; 2 uses
  %i.ahd = and i8 %i.ahc, 32
  %.not280 = icmp eq i8 %i.ahd, 0
  br i1 %.not280, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  %i.ahe = load i32, ptr %i.do, align 8, !tbaa !41
  %.fr.i.i.i = freeze i32 %i.ahe                  ; 6 uses
  %i.ahf = icmp sgt i32 %.fr.i.i.i, 1
  br i1 %i.ahf, label %.lr.ph.i, label %_ZNK8V3Number10widthToFitEv.exit

.lr.ph.i:                                         ; preds = %bb.hu
  %i.ahg = icmp samesign ult i32 %.fr.i.i.i, 129
  %i.ahh = add nsw i32 %.fr.i.i.i, -1             ; 2 uses
  %i.ahi = load i8, ptr %i.g, align 4, !tbaa !42
  %i.ahj = add i8 %i.ahi, -3
  %spec.select.i.i.i426 = icmp ult i8 %i.ahj, -2
  %i.ahk = load ptr, ptr %0, align 8
  %spec.select.i9.i.i = select i1 %i.ahg, ptr %0, ptr %i.ahk ; 2 uses
  %i.ahl = lshr i32 %i.ahh, 5
  %i.ahm = zext nneg i32 %i.ahl to i64
  %i.ahn = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i9.i.i, i64 %i.ahm
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ahn, i64 4
  %i.aho = and i32 %i.ahh, 31
  %i.ahp = zext nneg i32 %i.aho to i64
  %i.ahq = shl nuw nsw i64 1, %i.ahp
  br i1 %spec.select.i.i.i426, label %_ZNK8V3Number10widthToFitEv.exit, label %.lr.ph.split.split.i

.lr.ph.split.split.i:                             ; preds = %.lr.ph.i, %_ZNK8V3Number6bitIs0Ei.exit.backedge.i
  %.06.in11.i = phi i32 [ %.0612.i, %_ZNK8V3Number6bitIs0Ei.exit.backedge.i ], [ %.fr.i.i.i, %.lr.ph.i ] ; 5 uses
  %.0612.i = add nsw i32 %.06.in11.i, -1          ; 3 uses
  %.not.i.not.i = icmp sgt i32 %.06.in11.i, %.fr.i.i.i
  br i1 %.not.i.not.i, label %tailrecurse.preheader.i.i.i, label %_ZNK12V3NumberData3numEv.exit.i.i427

tailrecurse.preheader.i.i.i:                      ; preds = %.lr.ph.split.split.i
  %.sroa.3.0.copyload.i.i.i = load i32, ptr %.sroa.3.0..sroa_idx.i.i.i, align 4, !tbaa !66
  %i.ahr = zext i32 %.sroa.3.0.copyload.i.i.i to i64
  %i.ahs = and i64 %i.ahq, %i.ahr
  %i.aht = icmp eq i64 %i.ahs, 0
  br i1 %i.aht, label %_ZNK8V3Number6bitIs0Ei.exit.backedge.i, label %_ZNK8V3Number10widthToFitEv.exit

_ZNK12V3NumberData3numEv.exit.i.i427:             ; preds = %.lr.ph.split.split.i
  %i.ahu = lshr i32 %.0612.i, 5
  %i.ahv = zext nneg i32 %i.ahu to i64
  %i.ahw = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i9.i.i, i64 %i.ahv ; 2 uses
  %.sroa.0.0.copyload.i.i428 = load i32, ptr %i.ahw, align 4, !tbaa !66
  %.sroa.4.0..sroa_idx.i.i429 = getelementptr inbounds nuw i8, ptr %i.ahw, i64 4
  %.sroa.4.0.copyload.i.i430 = load i32, ptr %.sroa.4.0..sroa_idx.i.i429, align 4, !tbaa !66
  %i.ahx = or i32 %.sroa.4.0.copyload.i.i430, %.sroa.0.0.copyload.i.i428
  %i.ahy = zext i32 %i.ahx to i64
  %i.ahz = and i32 %.0612.i, 31
  %i.aia = zext nneg i32 %i.ahz to i64
  %i.aib = shl nuw nsw i64 1, %i.aia
  %i.aic = and i64 %i.aib, %i.ahy
  %i.aid = icmp eq i64 %i.aic, 0
  br i1 %i.aid, label %_ZNK8V3Number6bitIs0Ei.exit.backedge.i, label %_ZNK8V3Number10widthToFitEv.exit

_ZNK8V3Number6bitIs0Ei.exit.backedge.i:           ; preds = %_ZNK12V3NumberData3numEv.exit.i.i427, %tailrecurse.preheader.i.i.i
  %i.aie = icmp samesign ugt i32 %.06.in11.i, 2
  br i1 %i.aie, label %.lr.ph.split.split.i, label %_ZNK8V3Number10widthToFitEv.exit, !llvm.loop !154

_ZNK8V3Number10widthToFitEv.exit:                 ; preds = %tailrecurse.preheader.i.i.i, %_ZNK12V3NumberData3numEv.exit.i.i427, %_ZNK8V3Number6bitIs0Ei.exit.backedge.i, %bb.hu, %.lr.ph.i
  %i.aif = phi i32 [ 1, %bb.hu ], [ %.fr.i.i.i, %.lr.ph.i ], [ 1, %_ZNK8V3Number6bitIs0Ei.exit.backedge.i ], [ %.06.in11.i, %_ZNK12V3NumberData3numEv.exit.i.i427 ], [ %.06.in11.i, %tailrecurse.preheader.i.i.i ]
  %i.aig = add nsw i32 %.2219, -1
  %i.aih = add i32 %i.aig, %i.aif                 ; 2 uses
  %i.aii = srem i32 %i.aih, %.2219
  %i.aij = sub i32 %i.aih, %i.aii
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.aij, i32 32)
  %i.aik = and i8 %i.ahc, -34
  store i8 %i.aik, ptr %i.ahb, align 1
  call void @_ZN12V3NumberData6resizeEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.sroa.speculated)
  br label %bb.hv

bb.hv:                                            ; preds = %_ZNK8V3Number10widthToFitEv.exit, %bb.ht, %.loopexit496
  %i.ail = load i32, ptr %i.do, align 8, !tbaa !41
  %.fr.i595 = freeze i32 %i.ail                   ; 2 uses
  %8 = icmp sle i32 %.2222, %.fr.i595
  %9 = icmp ne i32 %.2222, 0
  %or.cond596 = and i1 %9, %8
  br i1 %or.cond596, label %.lr.ph600.preheader, label %.critedge5

.lr.ph600.preheader:                              ; preds = %bb.hv
  %10 = icmp slt i32 %.2222, 1
  br label %.lr.ph600

.lr.ph600:                                        ; preds = %.lr.ph600.preheader, %bb.hw
  %.fr.i598 = phi i32 [ %.fr.i, %bb.hw ], [ %.fr.i595, %.lr.ph600.preheader ]
  %.3223597 = phi i32 [ %i.aja, %bb.hw ], [ %.2222, %.lr.ph600.preheader ] ; 4 uses
  %i.aim = add nsw i32 %.3223597, -1              ; 3 uses
  %i.ain = load i8, ptr %i.g, align 4, !tbaa !42
  %i.aio = add i8 %i.ain, -3
  %spec.select.i.i432 = icmp ult i8 %i.aio, -2
  %or.cond10.i = or i1 %10, %spec.select.i.i432
  br i1 %or.cond10.i, label %.critedge5, label %_ZNK8V3Number7bitIsXZEi.exit

_ZNK8V3Number7bitIsXZEi.exit:                     ; preds = %.lr.ph600
  %i.aip = icmp samesign ult i32 %.fr.i598, 129
  %i.aiq = load ptr, ptr %0, align 8
  %spec.select.i7.i = select i1 %i.aip, ptr %0, ptr %i.aiq
  %i.air = lshr i32 %i.aim, 5
  %i.ais = zext nneg i32 %i.air to i64
  %i.ait = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i7.i, i64 %i.ais
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ait, i64 4
  %.sroa.3.0.copyload.i = load i32, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !66
  %i.aiu = zext i32 %.sroa.3.0.copyload.i to i64
  %i.aiv = and i32 %i.aim, 31
  %i.aiw = zext nneg i32 %i.aiv to i64
  %i.aix = shl nuw nsw i64 1, %i.aiw
  %i.aiy = and i64 %i.aix, %i.aiu
  %.not493 = icmp eq i64 %i.aiy, 0
  br i1 %.not493, label %.critedge5, label %bb.hw

bb.hw:                                            ; preds = %_ZNK8V3Number7bitIsXZEi.exit
  %i.aiz = call noundef signext i8 @_ZNK8V3Number5bitIsEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %i.aim)
  call void @_ZN8V3Number6setBitEic(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.3223597, i8 noundef signext %i.aiz)
  %i.aja = add nuw nsw i32 %.3223597, 1
  %i.ajb = load i32, ptr %i.do, align 8, !tbaa !41
  %.fr.i = freeze i32 %i.ajb                      ; 2 uses
  %i.ajc = icmp slt i32 %.3223597, %.fr.i
  br i1 %i.ajc, label %.lr.ph600, label %.critedge5, !llvm.loop !155

.critedge5:                                       ; preds = %_ZNK8V3Number7bitIsXZEi.exit, %bb.hw, %.lr.ph600, %bb.hv
  call void @_ZN8V3Number11opCleanThisEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8) #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev() #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7V3Error1sEv.exit, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #30
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7V3Error1sEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #30 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #30
  br label %_ZN7V3Error1sEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #30
  resume { ptr, i32 } %i.e

_ZN7V3Error1sEv.exit:                             ; preds = %bb.a, %bb.b, %bb.d
  %i.f = tail call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.123, ptr nonnull @.str.124, i32 481, ptr null)
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8V3Number5wordsEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !41
  %i.c = add nsw i32 %i.b, 31
  %i.d = sdiv i32 %i.c, 32
  ret i32 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8V3Number6setBitEic(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i8 noundef signext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %.not = icmp slt i32 %1, %i.b
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %1, 31
  %i.d = shl nuw i32 1, %i.c                      ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.f = load i8, ptr %i.e, align 4, !tbaa !42
  %i.g = add i8 %i.f, -1
  %spec.select.i.i = icmp ult i8 %i.g, 2
  br i1 %spec.select.i.i, label %_ZN12V3NumberData3numEv.exit, label %bb.c, !prof !43

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242) ; 0 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.118)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.k) #32
  unreachable

_ZN12V3NumberData3numEv.exit:                     ; preds = %bb.b
  %i.l = icmp slt i32 %i.b, 129
  %i.m = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.l, ptr %0, ptr %i.m
  %i.n = sdiv i32 %1, 32
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %spec.select.i, i64 %i.o ; 10 uses
  switch i8 %2, label %bb.g [
    i8 48, label %bb.d
    i8 0, label %bb.d
    i8 49, label %bb.e
    i8 1, label %bb.e
    i8 122, label %bb.f
    i8 2, label %bb.f
  ]

bb.d:                                             ; preds = %_ZN12V3NumberData3numEv.exit, %_ZN12V3NumberData3numEv.exit
  %i.q = xor i32 %i.d, -1
  %i.r = load <2 x i32>, ptr %i.p, align 4, !tbaa !66
  %i.s = insertelement <2 x i32> poison, i32 %i.q, i64 0
  %i.t = shufflevector <2 x i32> %i.s, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.u = and <2 x i32> %i.r, %i.t
  store <2 x i32> %i.u, ptr %i.p, align 4, !tbaa !66
  br label %bb.h

bb.e:                                             ; preds = %_ZN12V3NumberData3numEv.exit, %_ZN12V3NumberData3numEv.exit
  %i.v = load i32, ptr %i.p, align 4, !tbaa !44
  %i.w = or i32 %i.v, %i.d
  store i32 %i.w, ptr %i.p, align 4, !tbaa !44
  %i.x = xor i32 %i.d, -1
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !148
  %i.aa = and i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !148
  br label %bb.h

bb.f:                                             ; preds = %_ZN12V3NumberData3numEv.exit, %_ZN12V3NumberData3numEv.exit
  %i.ab = xor i32 %i.d, -1
  %i.ac = load i32, ptr %i.p, align 4, !tbaa !44
  %i.ad = and i32 %i.ac, %i.ab
  store i32 %i.ad, ptr %i.p, align 4, !tbaa !44
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !148
  %i.ag = or i32 %i.af, %i.d
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !148
  br label %bb.h

bb.g:                                             ; preds = %_ZN12V3NumberData3numEv.exit
  %i.ah = load <2 x i32>, ptr %i.p, align 4, !tbaa !66
  %i.ai = insertelement <2 x i32> poison, i32 %i.d, i64 0
  %i.aj = shufflevector <2 x i32> %i.ai, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ak = or <2 x i32> %i.ah, %i.aj
  store <2 x i32> %i.ak, ptr %i.p, align 4, !tbaa !66
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8V3Number5sizedEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.b = load i8, ptr %i.a, align 1
  %i.c = trunc i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8V3Number5widthEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !41
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8V3NumberC2EPKS_ij(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  store i8 0, ptr %i.b, align 4, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, -128
  store i8 %i.e, ptr %i.c, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  invoke void @_ZN8V3Number4initEP7AstNodeib(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef null, i32 noundef %2, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr %i.b, align 4, !tbaa !42
  %i.h = add i8 %i.g, -1
  %spec.select.i.i = icmp ult i8 %i.h, 2
  br i1 %spec.select.i.i, label %bb.d, label %bb.c, !prof !43

bb.c:                                             ; preds = %bb.b
  %i.i = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242)
          to label %.noexc unwind label %bb.f     ; 0 uses

.noexc:                                           ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc5 unwind label %bb.f    ; 2 uses

.noexc5:                                          ; preds = %.noexc
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.118, i64 noundef 40)
          to label %.noexc6 unwind label %bb.f    ; 0 uses

.noexc6:                                          ; preds = %.noexc5
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
end_hunk_0
begin_hunk_1_@_ZNK12V3NumberData3strB5cxx11Ev:bb.a

bb.c:                                             ; preds = %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZNK8V3Number6toHashEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.V3Hash, align 4              ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !41   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !42    ; 2 uses
  %i.e = icmp eq i8 %i.d, 3
  br i1 %i.e, label %_ZNK12V3NumberData3strB5cxx11Ev.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = add nuw nsw i32 %i.b, 31
  %i.g = sdiv i32 %i.f, 32
  %i.h = icmp sgt i32 %i.b, 0
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.i = add i8 %i.d, -1
  %spec.select.i.i = icmp ult i8 %i.i, 2
  %i.j = icmp samesign ult i32 %i.b, 129
  %i.k = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.j, ptr %0, ptr %i.k ; 3 uses
  br i1 %spec.select.i.i, label %_ZNK12V3NumberData3numEv.exit.preheader, label %bb.b, !prof !43

_ZNK12V3NumberData3numEv.exit.preheader:          ; preds = %.lr.ph
  %smax = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1) ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.l = icmp slt i32 %i.b, 33
  br i1 %i.l, label %_ZNK12V3NumberData3numEv.exit.epil.preheader, label %_ZNK12V3NumberData3numEv.exit.preheader.new

_ZNK12V3NumberData3numEv.exit.preheader.new:      ; preds = %_ZNK12V3NumberData3numEv.exit.preheader
  %unroll_iter = and i64 %wide.trip.count, 67108862
  br label %_ZNK12V3NumberData3numEv.exit

_ZNK12V3NumberData3strB5cxx11Ev.exit:             ; preds = %bb.a
  call void @_ZN6V3HashC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.m = load i32, ptr %1, align 4
  %i.n = shl i32 %i.b, 6
  %i.o = lshr i32 %i.b, 2
  %i.p = add i32 %i.n, -1640531527
  %i.q = add i32 %i.p, %i.o
  %i.r = add i32 %i.q, %i.m
  %i.s = xor i32 %i.r, %i.b
  br label %.loopexit

_ZNK12V3NumberData3numEv.exit:                    ; preds = %_ZNK12V3NumberData3numEv.exit, %_ZNK12V3NumberData3numEv.exit.preheader.new
  %indvars.iv = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.preheader.new ], [ %indvars.iv.next.1, %_ZNK12V3NumberData3numEv.exit ] ; 3 uses
  %.sroa.0.06 = phi i32 [ %i.b, %_ZNK12V3NumberData3numEv.exit.preheader.new ], [ %i.aj, %_ZNK12V3NumberData3numEv.exit ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.preheader.new ], [ %niter.next.1, %_ZNK12V3NumberData3numEv.exit ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !44
  %i.v = shl i32 %.sroa.0.06, 6
  %i.w = lshr i32 %.sroa.0.06, 2
  %i.x = add i32 %i.v, -1640531527
  %i.y = add i32 %i.x, %i.w
  %i.z = add i32 %i.y, %i.u
  %i.aa = xor i32 %i.z, %.sroa.0.06               ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !44
  %i.ae = shl i32 %i.aa, 6
  %i.af = lshr i32 %i.aa, 2
  %i.ag = add i32 %i.ae, -1640531527
  %i.ah = add i32 %i.ag, %i.af
  %i.ai = add i32 %i.ah, %i.ad
  %i.aj = xor i32 %i.ai, %i.aa                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %_ZNK12V3NumberData3numEv.exit, !llvm.loop !327

bb.b:                                             ; preds = %.lr.ph
  %i.ak = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.al = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.118)
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.an) #32
  unreachable

.loopexit.loopexit.unr-lcssa:                     ; preds = %_ZNK12V3NumberData3numEv.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %_ZNK12V3NumberData3numEv.exit.epil.preheader

_ZNK12V3NumberData3numEv.exit.epil.preheader:     ; preds = %.loopexit.loopexit.unr-lcssa, %_ZNK12V3NumberData3numEv.exit.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.0.06.epil.init = phi i32 [ %i.b, %_ZNK12V3NumberData3numEv.exit.preheader ], [ %i.aj, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod11 = trunc i32 %smax to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %indvars.iv.epil.init
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !44
  %i.aq = shl i32 %.sroa.0.06.epil.init, 6
  %i.ar = lshr i32 %.sroa.0.06.epil.init, 2
  %i.as = add i32 %i.aq, -1640531527
  %i.at = add i32 %i.as, %i.ar
  %i.au = add i32 %i.at, %i.ap
  %i.av = xor i32 %i.au, %.sroa.0.06.epil.init
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK12V3NumberData3numEv.exit.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZNK12V3NumberData3strB5cxx11Ev.exit
  %.sroa.0.1 = phi i32 [ %i.s, %_ZNK12V3NumberData3strB5cxx11Ev.exit ], [ %i.b, %.preheader ], [ %i.aj, %.loopexit.loopexit.unr-lcssa ], [ %i.av, %_ZNK12V3NumberData3numEv.exit.epil.preheader ]
  ret i32 %.sroa.0.1
}

declare void @_ZN6V3HashC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i8 @_ZNK8V3Number8dataByteEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = sdiv i32 %1, 4
  %i.b = tail call noundef i32 @_ZNK8V3Number9edataWordEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %i.a)
  %i.c = shl nsw i32 %1, 3
  %i.d = and i32 %i.c, 24
  %i.e = lshr i32 %i.b, %i.d
  %i.f = trunc i32 %i.e to i8
  ret i8 %i.f
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK8V3Number9isNeqZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !42    ; 2 uses
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %_ZNK12V3NumberData3strB5cxx11Ev.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !41   ; 3 uses
  %i.f = add nuw nsw i32 %i.e, 31
  %i.g = sdiv i32 %i.f, 32
  %i.h = icmp sgt i32 %i.e, 0
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.i = add i8 %i.b, -1
  %spec.select.i.i = icmp ult i8 %i.i, 2
  %i.j = icmp samesign ult i32 %i.e, 129
  %i.k = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.j, ptr %0, ptr %i.k
  br i1 %spec.select.i.i, label %_ZNK12V3NumberData3numEv.exit.preheader, label %bb.b, !prof !43

_ZNK12V3NumberData3numEv.exit.preheader:          ; preds = %.lr.ph
  %smax = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %_ZNK12V3NumberData3numEv.exit

_ZNK12V3NumberData3strB5cxx11Ev.exit:             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !20
  %i.n = icmp ne i64 %i.m, 0
  br label %.loopexit

_ZNK12V3NumberData3numEv.exit:                    ; preds = %_ZNK12V3NumberData3numEv.exit, %_ZNK12V3NumberData3numEv.exit.preheader
  %indvars.iv = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.preheader ], [ %indvars.iv.next, %_ZNK12V3NumberData3numEv.exit ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %indvars.iv ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.o, align 4, !tbaa !66
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !66
  %i.p = xor i32 %.sroa.4.0.copyload, -1
  %i.q = and i32 %.sroa.0.0.copyload, %i.p
  %.not.not = icmp ne i32 %i.q, 0                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %.not.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %.loopexit, label %_ZNK12V3NumberData3numEv.exit, !llvm.loop !328

bb.b:                                             ; preds = %.lr.ph
  %i.r = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.118)
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.u) #32
  unreachable

.loopexit:                                        ; preds = %_ZNK12V3NumberData3numEv.exit, %.preheader, %_ZNK12V3NumberData3strB5cxx11Ev.exit
  %.3 = phi i1 [ %i.n, %_ZNK12V3NumberData3strB5cxx11Ev.exit ], [ false, %.preheader ], [ %.not.not, %_ZNK12V3NumberData3numEv.exit ]
  ret i1 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK8V3Number10isBitsZeroEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 {
bb.a:
  %.not12 = icmp sgt i32 %2, %1
  br i1 %.not12, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !42
  %.fr24 = freeze i8 %i.b
  %i.c = add i8 %.fr24, -3
  %spec.select.i.i = icmp ult i8 %i.c, -2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8
  %.fr.i.i = freeze i32 %i.e                      ; 5 uses
  %i.f = add nsw i32 %.fr.i.i, -1                 ; 2 uses
  %i.g = icmp samesign ult i32 %.fr.i.i, 129
  %i.h = load ptr, ptr %0, align 8
  %spec.select.i7.i.i = select i1 %i.g, ptr %0, ptr %i.h ; 3 uses
  %i.i = lshr i32 %i.f, 5
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i7.i.i, i64 %i.j
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.l = and i32 %i.f, 31
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl nuw nsw i64 1, %i.m
  br i1 %spec.select.i.i, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, label %.lr.ph.split, !prof !329

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.o = icmp slt i32 %.fr.i.i, 1
  %i.p = icmp slt i32 %2, 0                       ; 2 uses
  br i1 %i.o, label %.lr.ph.split.split.us.a, label %.lr.ph.split.split.a

.lr.ph.split.split.us.a:                          ; preds = %.lr.ph.split, %_ZNK8V3Number6bitIs0Ei.exit.thread.us.a
  %.0713.us.a = phi i32 [ %3, %_ZNK8V3Number6bitIs0Ei.exit.thread.us.a ], [ %2, %.lr.ph.split ] ; 5 uses
  br i1 %i.p, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, label %bb.b, !prof !329

bb.b:                                             ; preds = %.lr.ph.split.split.us.a
  %.not.i.us = icmp slt i32 %.0713.us.a, %.fr.i.i
  br i1 %.not.i.us, label %_ZNK8V3Number6bitIs0Ei.exit.us, label %_ZNK8V3Number6bitIs0Ei.exit.thread.us.a

_ZNK8V3Number6bitIs0Ei.exit.us:                   ; preds = %bb.b
  %i.q = lshr i32 %.0713.us.a, 5
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i7.i.i, i64 %i.r ; 2 uses
  %.sroa.0.0.copyload.i.us = load i32, ptr %i.s, align 4, !tbaa !66
  %.sroa.4.0..sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.sroa.4.0.copyload.i.us = load i32, ptr %.sroa.4.0..sroa_idx.i.us, align 4, !tbaa !66
  %i.t = or i32 %.sroa.4.0.copyload.i.us, %.sroa.0.0.copyload.i.us
  %i.u = zext i32 %i.t to i64
  %i.v = and i32 %.0713.us.a, 31
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl nuw nsw i64 1, %i.w
  %i.y = and i64 %i.x, %i.u
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZNK8V3Number6bitIs0Ei.exit.thread.us.a, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, !prof !330

_ZNK8V3Number6bitIs0Ei.exit.thread.us.a:          ; preds = %bb.b, %_ZNK8V3Number6bitIs0Ei.exit.us
  %3 = add i32 %.0713.us.a, 1
  %exitcond27.not = icmp eq i32 %.0713.us.a, %1
  br i1 %exitcond27.not, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, label %.lr.ph.split.split.us.a, !llvm.loop !331

.lr.ph.split.split.a:                             ; preds = %.lr.ph.split, %_ZNK8V3Number6bitIs0Ei.exit.thread
  %.0713 = phi i32 [ %i.an, %_ZNK8V3Number6bitIs0Ei.exit.thread ], [ %2, %.lr.ph.split ] ; 5 uses
  br i1 %i.p, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, label %bb.c, !prof !329

bb.c:                                             ; preds = %.lr.ph.split.split.a
  %.not.i = icmp slt i32 %.0713, %.fr.i.i
  br i1 %.not.i, label %_ZNK8V3Number6bitIs0Ei.exit, label %tailrecurse.preheader.i.i

tailrecurse.preheader.i.i:                        ; preds = %bb.c
  %.sroa.3.0.copyload.i.i = load i32, ptr %.sroa.3.0..sroa_idx.i.i, align 4, !tbaa !66
  %i.aa = zext i32 %.sroa.3.0.copyload.i.i to i64
  %i.ab = and i64 %i.n, %i.aa
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_ZNK8V3Number6bitIs0Ei.exit.thread, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, !prof !330

_ZNK8V3Number6bitIs0Ei.exit:                      ; preds = %bb.c
  %i.ad = lshr i32 %.0713, 5
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i7.i.i, i64 %i.ae ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.af, align 4, !tbaa !66
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !66
  %i.ag = or i32 %.sroa.4.0.copyload.i, %.sroa.0.0.copyload.i
  %i.ah = zext i32 %i.ag to i64
  %i.ai = and i32 %.0713, 31
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = shl nuw nsw i64 1, %i.aj
  %i.al = and i64 %i.ak, %i.ah
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_ZNK8V3Number6bitIs0Ei.exit.thread, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, !prof !330

_ZNK8V3Number6bitIs0Ei.exit.thread:               ; preds = %tailrecurse.preheader.i.i, %_ZNK8V3Number6bitIs0Ei.exit
  %i.an = add i32 %.0713, 1
  %exitcond.not = icmp eq i32 %.0713, %1
  br i1 %exitcond.not, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, label %.lr.ph.split.split.a, !llvm.loop !331

_ZNK8V3Number6bitIs0Ei.exit.thread10:             ; preds = %_ZNK8V3Number6bitIs0Ei.exit.thread, %_ZNK8V3Number6bitIs0Ei.exit, %tailrecurse.preheader.i.i, %.lr.ph.split.split.a, %_ZNK8V3Number6bitIs0Ei.exit.thread.us.a, %_ZNK8V3Number6bitIs0Ei.exit.us, %.lr.ph.split.split.us.a, %.lr.ph, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph.split.split.us.a ], [ false, %.lr.ph ], [ false, %_ZNK8V3Number6bitIs0Ei.exit.us ], [ true, %_ZNK8V3Number6bitIs0Ei.exit.thread.us.a ], [ true, %_ZNK8V3Number6bitIs0Ei.exit.thread ], [ false, %.lr.ph.split.split.a ], [ false, %tailrecurse.preheader.i.i ], [ false, %_ZNK8V3Number6bitIs0Ei.exit ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK8V3Number7isEqOneEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !42
  %i.c = add i8 %i.b, -1
  %spec.select.i.i = icmp ult i8 %i.c, 2
  br i1 %spec.select.i.i, label %_ZNK12V3NumberData3numEv.exit, label %bb.b, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.118)
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.g) #32
  unreachable

_ZNK12V3NumberData3numEv.exit:                    ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !41   ; 3 uses
  %i.j = icmp slt i32 %i.i, 129
  %i.k = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.j, ptr %0, ptr %i.k ; 3 uses
  %i.l = load i32, ptr %spec.select.i, align 4, !tbaa !44
  %.not = icmp eq i32 %i.l, 1
  br i1 %.not, label %_ZNK12V3NumberData3numEv.exit16, label %.loopexit

_ZNK12V3NumberData3numEv.exit16:                  ; preds = %_ZNK12V3NumberData3numEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !148
  %.not11 = icmp eq i32 %i.n, 0
  br i1 %.not11, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZNK12V3NumberData3numEv.exit16
  %i.o = icmp slt i32 %i.i, 33
  br i1 %i.o, label %.loopexit, label %_ZNK12V3NumberData3numEv.exit19.preheader

_ZNK12V3NumberData3numEv.exit19.preheader:        ; preds = %.preheader
  %i.p = add nuw nsw i32 %i.i, 31
  %i.q = lshr i32 %i.p, 5
  %wide.trip.count = zext nneg i32 %i.q to i64
  br label %_ZNK12V3NumberData3numEv.exit19

_ZNK12V3NumberData3numEv.exit19:                  ; preds = %_ZNK12V3NumberData3numEv.exit19, %_ZNK12V3NumberData3numEv.exit19.preheader
  %indvars.iv = phi i64 [ 1, %_ZNK12V3NumberData3numEv.exit19.preheader ], [ %indvars.iv.next, %_ZNK12V3NumberData3numEv.exit19 ] ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %indvars.iv ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.r, align 4, !tbaa !66
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !66
  %i.s = icmp eq i32 %.sroa.0.0.copyload, 0
  %i.t = icmp eq i32 %.sroa.4.0.copyload, 0
  %or.cond.not = select i1 %i.s, i1 %i.t, i1 false ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not24 = select i1 %or.cond.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not24, label %_ZNK12V3NumberData3numEv.exit19, label %.loopexit, !llvm.loop !332

.loopexit:                                        ; preds = %_ZNK12V3NumberData3numEv.exit19, %.preheader, %_ZNK12V3NumberData3numEv.exit, %_ZNK12V3NumberData3numEv.exit16
  %.3 = phi i1 [ false, %_ZNK12V3NumberData3numEv.exit16 ], [ false, %_ZNK12V3NumberData3numEv.exit ], [ true, %.preheader ], [ %or.cond.not, %_ZNK12V3NumberData3numEv.exit19 ]
  ret i1 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK8V3Number11isEqAllOnesEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %.08 = select i1 %.not, i32 %i.b, i32 %1        ; 2 uses
  %i.c = icmp slt i32 %.08, 1
  br i1 %i.c, label %_ZNK8V3Number6bitIs1Ei.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i8, ptr %i.d, align 4, !tbaa !42
  %i.f = add i8 %i.e, -3
  %spec.select.i.i = icmp ult i8 %i.f, -2
  %i.g = icmp samesign ult i32 %i.b, 129
  %i.h = load ptr, ptr %0, align 8
  %spec.select.i10.i = select i1 %i.g, ptr %0, ptr %i.h
  br i1 %spec.select.i.i, label %_ZNK8V3Number6bitIs1Ei.exit.thread, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 0)
  br label %.lr.ph.split

bb.b:                                             ; preds = %_ZNK8V3Number6bitIs1Ei.exit
  %i.i = add nuw nsw i32 %.0712, 1                ; 2 uses
  %exitcond20.not = icmp eq i32 %i.i, %.08
  br i1 %exitcond20.not, label %_ZNK8V3Number6bitIs1Ei.exit.thread, label %.lr.ph.split, !llvm.loop !333

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.b
  %.0712 = phi i32 [ %i.i, %bb.b ], [ 0, %.lr.ph.split.preheader ] ; 4 uses
  %exitcond.not = icmp eq i32 %.0712, %smax
  br i1 %exitcond.not, label %_ZNK8V3Number6bitIs1Ei.exit.thread, label %_ZNK12V3NumberData3numEv.exit.i

_ZNK12V3NumberData3numEv.exit.i:                  ; preds = %.lr.ph.split
  %i.j = lshr i32 %.0712, 5
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i10.i, i64 %i.k ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.l, align 4, !tbaa !66
  %i.m = zext i32 %.sroa.0.0.copyload.i to i64
  %i.n = and i32 %.0712, 31
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = and i64 %i.p, %i.m
  %.not7.i = icmp eq i64 %i.q, 0
  br i1 %.not7.i, label %_ZNK8V3Number6bitIs1Ei.exit.thread, label %_ZNK8V3Number6bitIs1Ei.exit

_ZNK8V3Number6bitIs1Ei.exit:                      ; preds = %_ZNK12V3NumberData3numEv.exit.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !66
  %i.r = zext i32 %.sroa.4.0.copyload.i to i64
  %i.s = and i64 %i.p, %i.r
  %.not8.i = icmp eq i64 %i.s, 0
  br i1 %.not8.i, label %bb.b, label %_ZNK8V3Number6bitIs1Ei.exit.thread

_ZNK8V3Number6bitIs1Ei.exit.thread:               ; preds = %bb.b, %_ZNK8V3Number6bitIs1Ei.exit, %.lr.ph.split, %_ZNK12V3NumberData3numEv.exit.i, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %_ZNK12V3NumberData3numEv.exit.i ], [ false, %.lr.ph.split ], [ false, %_ZNK8V3Number6bitIs1Ei.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8V3Number6bitIsXEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !42
  %i.c = add i8 %i.b, -3
  %spec.select.i = icmp ult i8 %i.c, -2
  %i.d = icmp slt i32 %1, 0
  %or.cond = or i1 %i.d, %spec.select.i
  br i1 %or.cond, label %_ZNK8V3Number6bitIsZEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !41
  %.fr.i = freeze i32 %i.f                        ; 5 uses
  %.not = icmp slt i32 %1, %.fr.i
  br i1 %.not, label %_ZNK12V3NumberData3numEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i32 %.fr.i, 1
  br i1 %i.g, label %_ZNK8V3Number6bitIsZEi.exit, label %tailrecurse.preheader.i

tailrecurse.preheader.i:                          ; preds = %bb.c
  %i.h = add nsw i32 %.fr.i, -1                   ; 2 uses
  %i.i = icmp samesign ult i32 %.fr.i, 129
  %i.j = load ptr, ptr %0, align 8
  %spec.select.i9.i = select i1 %i.i, ptr %0, ptr %i.j
  %i.k = lshr i32 %i.h, 5
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i9.i, i64 %i.l ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.m, align 4, !tbaa !66
  %i.n = xor i32 %.sroa.0.0.copyload.i, -1
  %i.o = zext i32 %i.n to i64
  %i.p = and i32 %i.h, 31
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw nsw i64 1, %i.q                  ; 2 uses
  %i.s = and i64 %i.r, %i.o
  %.not7.i = icmp eq i64 %i.s, 0
  br i1 %.not7.i, label %_ZNK8V3Number6bitIsZEi.exit, label %_ZNK8V3Number6bitIsZEi.exit.sink.split

_ZNK12V3NumberData3numEv.exit:                    ; preds = %bb.b
  %i.t = icmp samesign ult i32 %.fr.i, 129
  %i.u = load ptr, ptr %0, align 8
  %spec.select.i11 = select i1 %i.t, ptr %0, ptr %i.u
  %i.v = lshr i32 %1, 5
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i11, i64 %i.w ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.x, align 4, !tbaa !66
  %i.y = zext i32 %.sroa.0.0.copyload to i64
  %i.z = and i32 %1, 31
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl nuw nsw i64 1, %i.aa                ; 2 uses
  %i.ac = and i64 %i.ab, %i.y
  %.not7 = icmp eq i64 %i.ac, 0
  br i1 %.not7, label %_ZNK8V3Number6bitIsZEi.exit, label %_ZNK8V3Number6bitIsZEi.exit.sink.split

_ZNK8V3Number6bitIsZEi.exit.sink.split:           ; preds = %_ZNK12V3NumberData3numEv.exit, %tailrecurse.preheader.i
  %.sink = phi ptr [ %i.m, %tailrecurse.preheader.i ], [ %i.x, %_ZNK12V3NumberData3numEv.exit ]
  %.sink13 = phi i64 [ %i.r, %tailrecurse.preheader.i ], [ %i.ab, %_ZNK12V3NumberData3numEv.exit ]
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !66
  %i.ad = zext i32 %.sroa.4.0.copyload.i to i64
  %i.ae = and i64 %.sink13, %i.ad
  %i.af = icmp ne i64 %i.ae, 0
  br label %_ZNK8V3Number6bitIsZEi.exit

_ZNK8V3Number6bitIsZEi.exit:                      ; preds = %_ZNK8V3Number6bitIsZEi.exit.sink.split, %tailrecurse.preheader.i, %bb.c, %_ZNK12V3NumberData3numEv.exit, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %_ZNK12V3NumberData3numEv.exit ], [ false, %tailrecurse.preheader.i ], [ false, %bb.c ], [ %i.af, %_ZNK8V3Number6bitIsZEi.exit.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK8V3Number7isAnyXZEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
end_hunk_1
begin_hunk_2_@_ZN8V3Number8opShiftRERKS_S1_:bb.a
  %i.z = load i8, ptr %i.m, align 4, !tbaa !42
  %i.aa = add i8 %i.z, -3
  %spec.select.i.i = icmp ult i8 %i.aa, -2
  br i1 %spec.select.i.i, label %._crit_edge.split, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ab = icmp samesign ult i32 %i.x, 129
  %i.ac = load ptr, ptr %2, align 8
  %spec.select.i10.i = select i1 %i.ab, ptr %2, ptr %i.ac
  br label %_ZNK12V3NumberData3numEv.exit.i

_ZNK12V3NumberData3numEv.exit.i:                  ; preds = %.lr.ph.split, %_ZNK8V3Number6bitIs1Ei.exit.thread
  %.02535 = phi i32 [ 32, %.lr.ph.split ], [ %i.an, %_ZNK8V3Number6bitIs1Ei.exit.thread ] ; 3 uses
  %i.ad = lshr i32 %.02535, 5
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i10.i, i64 %i.ae ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.af, align 4, !tbaa !66
  %i.ag = zext i32 %.sroa.0.0.copyload.i to i64
  %i.ah = and i32 %.02535, 31
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 1, %i.ai                ; 2 uses
  %i.ak = and i64 %i.aj, %i.ag
  %.not7.i = icmp eq i64 %i.ak, 0
  br i1 %.not7.i, label %_ZNK8V3Number6bitIs1Ei.exit.thread, label %_ZNK8V3Number6bitIs1Ei.exit

_ZNK8V3Number6bitIs1Ei.exit:                      ; preds = %_ZNK12V3NumberData3numEv.exit.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !66
  %i.al = zext i32 %.sroa.4.0.copyload.i to i64
  %i.am = and i64 %i.aj, %i.al
  %.not8.i = icmp eq i64 %i.am, 0
  br i1 %.not8.i, label %.loopexit, label %_ZNK8V3Number6bitIs1Ei.exit.thread

_ZNK8V3Number6bitIs1Ei.exit.thread:               ; preds = %_ZNK12V3NumberData3numEv.exit.i, %_ZNK8V3Number6bitIs1Ei.exit
  %i.an = add nuw nsw i32 %.02535, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.an, %i.x
  br i1 %exitcond.not, label %._crit_edge.split, label %_ZNK12V3NumberData3numEv.exit.i, !llvm.loop !384

._crit_edge.split:                                ; preds = %_ZNK8V3Number6bitIs1Ei.exit.thread, %.lr.ph, %bb.i
  %i.ao = tail call noundef i32 @_ZNK8V3Number6toUIntEv(ptr noundef nonnull align 8 dereferenceable(56) %2) ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !41
  %i.ar = icmp ult i32 %i.ao, %i.aq
  br i1 %i.ar, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge.split
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !41
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph37, label %.loopexit

.lr.ph37:                                         ; preds = %.preheader, %.lr.ph37
  %.036 = phi i32 [ %i.ax, %.lr.ph37 ], [ 0, %.preheader ] ; 3 uses
  %i.av = add i32 %.036, %i.ao
  %i.aw = tail call noundef signext i8 @_ZNK8V3Number5bitIsEi(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %i.av)
  tail call void @_ZN8V3Number6setBitEic(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.036, i8 noundef signext %i.aw)
  %i.ax = add nuw nsw i32 %.036, 1                ; 2 uses
  %i.ay = load i32, ptr %i.as, align 8, !tbaa !41
  %i.az = icmp slt i32 %i.ax, %i.ay
  br i1 %i.az, label %.lr.ph37, label %.loopexit, !llvm.loop !385

.loopexit:                                        ; preds = %_ZNK8V3Number6bitIs1Ei.exit, %.lr.ph37, %.preheader, %._crit_edge.split, %bb.h
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number9opShiftRSERKS_S1_j(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %0, %2
  %.not33 = or i1 %i.a, %i.b
  br i1 %.not33, label %bb.b, label %bb.c, !prof !156

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1991) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.73)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.e) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.g = load i8, ptr %i.f, align 4, !tbaa !42
  %.not = icmp eq i8 %i.g, 1
  br i1 %.not, label %bb.e, label %bb.d, !prof !43

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1992) ; 0 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.74)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.l) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.n = load i8, ptr %i.m, align 4, !tbaa !42
  %.not34 = icmp eq i8 %i.n, 1
  br i1 %.not34, label %bb.g, label %bb.f, !prof !43

bb.f:                                             ; preds = %bb.e
  %i.o = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1992) ; 0 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.74)
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(56) %2)
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.s) #32
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.t = tail call noundef zeroext i1 @_ZNK8V3Number11isFourStateEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number11setAllBitsXEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.v = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7setZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %.fr.i.i.i = freeze i32 %i.x                    ; 4 uses
  %i.y = icmp sgt i32 %.fr.i.i.i, 32
  br i1 %i.y, label %.lr.ph.i, label %.critedge

.lr.ph.i:                                         ; preds = %bb.i
  %i.z = add nsw i32 %.fr.i.i.i, -1               ; 3 uses
  %i.aa = load i8, ptr %i.m, align 4, !tbaa !42
  %.fr24.i = freeze i8 %i.aa
  %i.ab = add i8 %.fr24.i, -3
  %spec.select.i.i.i = icmp ult i8 %i.ab, -2
  %i.ac = icmp samesign ult i32 %.fr.i.i.i, 129
  %i.ad = load ptr, ptr %2, align 8
  %spec.select.i7.i.i.i = select i1 %i.ac, ptr %2, ptr %i.ad ; 2 uses
  %i.ae = lshr i32 %i.z, 5
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i7.i.i.i, i64 %i.af
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ah = and i32 %i.z, 31
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 1, %i.ai
  br i1 %spec.select.i.i.i, label %.critedge37, label %.lr.ph.split.split.i, !prof !329

.lr.ph.split.split.i:                             ; preds = %.lr.ph.i, %_ZNK8V3Number6bitIs0Ei.exit.thread.i
  %.0713.i = phi i32 [ %i.ax, %_ZNK8V3Number6bitIs0Ei.exit.thread.i ], [ 32, %.lr.ph.i ] ; 5 uses
  %.not.i.i = icmp slt i32 %.0713.i, %.fr.i.i.i
  br i1 %.not.i.i, label %_ZNK8V3Number6bitIs0Ei.exit.i, label %tailrecurse.preheader.i.i.i

tailrecurse.preheader.i.i.i:                      ; preds = %.lr.ph.split.split.i
  %.sroa.3.0.copyload.i.i.i = load i32, ptr %.sroa.3.0..sroa_idx.i.i.i, align 4, !tbaa !66
  %i.ak = zext i32 %.sroa.3.0.copyload.i.i.i to i64
  %i.al = and i64 %i.aj, %i.ak
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_ZNK8V3Number6bitIs0Ei.exit.thread.i, label %.critedge37, !prof !330

_ZNK8V3Number6bitIs0Ei.exit.i:                    ; preds = %.lr.ph.split.split.i
  %i.an = lshr i32 %.0713.i, 5
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i7.i.i.i, i64 %i.ao ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ap, align 4, !tbaa !66
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !66
  %i.aq = or i32 %.sroa.4.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  %i.ar = zext i32 %i.aq to i64
  %i.as = and i32 %.0713.i, 31
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl nuw nsw i64 1, %i.at
  %i.av = and i64 %i.au, %i.ar
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_ZNK8V3Number6bitIs0Ei.exit.thread.i, label %.critedge37, !prof !330

_ZNK8V3Number6bitIs0Ei.exit.thread.i:             ; preds = %_ZNK8V3Number6bitIs0Ei.exit.i, %tailrecurse.preheader.i.i.i
  %i.ax = add nuw nsw i32 %.0713.i, 1
  %exitcond.not.i = icmp eq i32 %.0713.i, %i.z
  br i1 %exitcond.not.i, label %.critedge, label %.lr.ph.split.split.i, !llvm.loop !331

.critedge:                                        ; preds = %_ZNK8V3Number6bitIs0Ei.exit.thread.i, %bb.i
  %i.ay = tail call noundef i32 @_ZNK8V3Number6toUIntEv(ptr noundef nonnull align 8 dereferenceable(56) %2) ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !41
  %.not35 = icmp ult i32 %i.ay, %i.ba
  br i1 %.not35, label %.preheader, label %.critedge37

.preheader:                                       ; preds = %.critedge
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !41
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.02942 = phi i32 [ %i.bg, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.be = add i32 %.02942, %i.ay
  %i.bf = tail call noundef signext i8 @_ZNK8V3Number11bitIsExtendEii(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %i.be, i32 noundef %3)
  tail call void @_ZN8V3Number6setBitEic(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.02942, i8 noundef signext %i.bf)
  %i.bg = add nuw nsw i32 %.02942, 1              ; 2 uses
  %i.bh = load i32, ptr %i.bb, align 8, !tbaa !41
  %i.bi = icmp slt i32 %i.bg, %i.bh
  br i1 %i.bi, label %.lr.ph, label %.loopexit, !llvm.loop !386

.critedge37:                                      ; preds = %_ZNK8V3Number6bitIs0Ei.exit.i, %tailrecurse.preheader.i.i.i, %.lr.ph.i, %.critedge
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !41
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph44, label %.loopexit

.lr.ph44:                                         ; preds = %.critedge37
  %i.bm = add i32 %3, -1
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph44, %bb.j
  %.043 = phi i32 [ 0, %.lr.ph44 ], [ %i.bo, %bb.j ] ; 2 uses
  %i.bn = tail call noundef signext i8 @_ZNK8V3Number5bitIsEi(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %i.bm)
  tail call void @_ZN8V3Number6setBitEic(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.043, i8 noundef signext %i.bn)
  %i.bo = add nuw nsw i32 %.043, 1                ; 2 uses
  %i.bp = load i32, ptr %i.bj, align 8, !tbaa !41
  %i.bq = icmp slt i32 %i.bo, %i.bp
  br i1 %i.bq, label %bb.j, label %.loopexit, !llvm.loop !387

.loopexit:                                        ; preds = %.lr.ph, %bb.j, %.preheader, %.critedge37, %bb.h
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNK8V3Number11bitIsExtendEii(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !41   ; 3 uses
  %.not = icmp sgt i32 %2, %i.c
  br i1 %.not, label %bb.c, label %bb.d, !prof !156

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 447) ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.128)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.f) #32
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not17 = icmp slt i32 %1, %2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.h = load i8, ptr %i.g, align 4, !tbaa !42
  %i.i = add i8 %i.h, -1
  %spec.select.i.i23 = icmp ult i8 %i.i, 2        ; 2 uses
  br i1 %.not17, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %spec.select.i.i23, label %_ZNK12V3NumberData3numEv.exit, label %bb.f, !prof !43

bb.f:                                             ; preds = %bb.e
  %i.j = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.118)
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.m) #32
  unreachable

_ZNK12V3NumberData3numEv.exit:                    ; preds = %bb.e
  %i.n = tail call i32 @llvm.usub.sat.i32(i32 %2, i32 1) ; 2 uses
  %i.o = icmp slt i32 %i.c, 129
  %i.p = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.o, ptr %0, ptr %i.p
  %i.q = sdiv i32 %i.n, 32
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %spec.select.i, i64 %i.r
  br label %.sink.split

bb.g:                                             ; preds = %bb.d
  br i1 %spec.select.i.i23, label %_ZNK12V3NumberData3numEv.exit25, label %bb.h, !prof !43

bb.h:                                             ; preds = %bb.g
  %i.t = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.u = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.118)
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.w) #32
  unreachable

_ZNK12V3NumberData3numEv.exit25:                  ; preds = %bb.g
  %i.x = icmp slt i32 %i.c, 129
  %i.y = load ptr, ptr %0, align 8
  %spec.select.i24 = select i1 %i.x, ptr %0, ptr %i.y
  %i.z = lshr i32 %1, 5
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i24, i64 %i.aa
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNK12V3NumberData3numEv.exit, %_ZNK12V3NumberData3numEv.exit25
  %.sink36 = phi ptr [ %i.ab, %_ZNK12V3NumberData3numEv.exit25 ], [ %i.s, %_ZNK12V3NumberData3numEv.exit ] ; 2 uses
  %.sink = phi i32 [ %1, %_ZNK12V3NumberData3numEv.exit25 ], [ %i.n, %_ZNK12V3NumberData3numEv.exit ]
  %.sroa.0.0.copyload.sink = load i32, ptr %.sink36, align 4, !tbaa !66
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink36, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !66
  %i.ac = and i32 %.sink, 31                      ; 2 uses
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 1, %i.ad
  %i.af = lshr i32 %.sroa.0.0.copyload.sink, %i.ac
  %i.ag = and i32 %i.af, 1
  %i.ah = zext i32 %.sroa.4.0.copyload to i64
  %i.ai = and i64 %i.ae, %i.ah
  %.not19 = icmp eq i64 %i.ai, 0
  %i.aj = select i1 %.not19, i32 0, i32 2
  %i.ak = or disjoint i32 %i.aj, %i.ag
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr @.str.125, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !23
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i8 [ 48, %bb.a ], [ %i.an, %.sink.split ]
  ret i8 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number5opSubERKS_S1_(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.V3Number, align 8            ; 17 uses
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %0, %2
  %.not15 = or i1 %i.a, %i.b
  br i1 %.not15, label %bb.b, label %bb.c, !prof !156

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2061) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.73)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.e) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.g = load i8, ptr %i.f, align 4, !tbaa !42
  %.not = icmp eq i8 %i.g, 1
  br i1 %.not, label %bb.e, label %bb.d, !prof !43

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2062) ; 0 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.74)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.l) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.n = load i8, ptr %i.m, align 4, !tbaa !42
  %.not16 = icmp eq i8 %i.n, 1
  br i1 %.not16, label %bb.g, label %bb.f, !prof !43

bb.f:                                             ; preds = %bb.e
  %i.o = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2062) ; 0 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.74)
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(56) %2)
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.s) #32
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.t = tail call noundef zeroext i1 @_ZNK8V3Number11isFourStateEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call noundef zeroext i1 @_ZNK8V3Number11isFourStateEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number11setAllBitsXEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  br label %bb.s

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i32 0, ptr %i.y, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  store i8 0, ptr %i.z, align 4, !tbaa !42
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 37 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = and i8 %i.ab, -128
  store i8 %i.ac, ptr %i.aa, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  invoke void @_ZN8V3Number4initEP7AstNodeib(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef null, i32 noundef %i.x, i1 noundef zeroext true)
          to label %_ZN8V3NumberC2EPKS_i.exit unwind label %bb.k

common.resume:                                    ; preds = %bb.r, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %bb.k ], [ %i.bb, %bb.r ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12V3NumberDataD2Ev(ptr noundef nonnull align 8 dead_on_return(38) dereferenceable(56) %3) #30
  br label %common.resume
end_hunk_2
