Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Number?download=true
inline.NumInlined: 2597
inline.NumDeleted: 451
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN8V3Number6createEPKc:bb.a
  %i.aea = icmp slt i32 %i.acz, 129
  %i.aeb = load ptr, ptr %0, align 8
  %spec.select.i.i404 = select i1 %i.aea, ptr %0, ptr %i.aeb
  %i.aec = sdiv i32 %i.acy, 32
  %i.aed = sext i32 %i.aec to i64
  %i.aee = getelementptr inbounds [8 x i8], ptr %spec.select.i.i404, i64 %i.aed ; 2 uses
  %i.aef = load <2 x i32>, ptr %i.aee, align 4, !tbaa !66
  %i.aeg = insertelement <2 x i32> poison, i32 %i.adz, i64 0
  %i.aeh = shufflevector <2 x i32> %i.aeg, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aei = or <2 x i32> %i.aef, %i.aeh
  store <2 x i32> %i.aei, ptr %i.aee, align 4, !tbaa !66
  br label %_ZN8V3Number6setBitEic.exit405

_ZN8V3Number6setBitEic.exit405:                   ; preds = %_ZN8V3Number6setBitEic.exit400, %_ZN12V3NumberData3numEv.exit.i403
  %i.aej = add nsw i32 %.0220574, 3               ; 3 uses
  %.not.i406 = icmp slt i32 %i.adr, %i.acz
  br i1 %.not.i406, label %bb.ha, label %_ZN8V3Number6setBitEic.exit410

bb.ha:                                            ; preds = %_ZN8V3Number6setBitEic.exit405
  %i.aek = load i8, ptr %i.g, align 4, !tbaa !42
  %i.ael = add i8 %i.aek, -1
  %spec.select.i.i.i407 = icmp ult i8 %i.ael, 2
  br i1 %spec.select.i.i.i407, label %_ZN12V3NumberData3numEv.exit.i408, label %bb.hb, !prof !43

bb.hb:                                            ; preds = %bb.ha
  %i.aem = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242) ; 0 uses
  %i.aen = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.aeo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.aen, ptr noundef nonnull @.str.118)
  %i.aep = call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.aeo, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
  call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.aep) #32
  unreachable

_ZN12V3NumberData3numEv.exit.i408:                ; preds = %bb.ha
  %i.aeq = and i32 %i.adr, 31
  %i.aer = shl nuw i32 1, %i.aeq
  %i.aes = icmp slt i32 %i.acz, 129
  %i.aet = load ptr, ptr %0, align 8
  %spec.select.i.i409 = select i1 %i.aes, ptr %0, ptr %i.aet
  %i.aeu = sdiv i32 %i.adr, 32
  %i.aev = sext i32 %i.aeu to i64
  %i.aew = getelementptr inbounds [8 x i8], ptr %spec.select.i.i409, i64 %i.aev ; 2 uses
  %i.aex = load <2 x i32>, ptr %i.aew, align 4, !tbaa !66
  %i.aey = insertelement <2 x i32> poison, i32 %i.aer, i64 0
  %i.aez = shufflevector <2 x i32> %i.aey, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.afa = or <2 x i32> %i.aex, %i.aez
  store <2 x i32> %i.afa, ptr %i.aew, align 4, !tbaa !66
  br label %_ZN8V3Number6setBitEic.exit410

_ZN8V3Number6setBitEic.exit410:                   ; preds = %_ZN8V3Number6setBitEic.exit405, %_ZN12V3NumberData3numEv.exit.i408
  %i.afb = add nsw i32 %.0220574, 4               ; 2 uses
  %.not.i411 = icmp slt i32 %i.aej, %i.acz
  br i1 %.not.i411, label %bb.hc, label %_ZN8V3Number6setBitEic.exit373

bb.hc:                                            ; preds = %_ZN8V3Number6setBitEic.exit410
  %i.afc = load i8, ptr %i.g, align 4, !tbaa !42
  %i.afd = add i8 %i.afc, -1
  %spec.select.i.i.i412 = icmp ult i8 %i.afd, 2
  br i1 %spec.select.i.i.i412, label %_ZN12V3NumberData3numEv.exit.i413, label %bb.hd, !prof !43

bb.hd:                                            ; preds = %bb.hc
  %i.afe = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242) ; 0 uses
  %i.aff = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.afg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.aff, ptr noundef nonnull @.str.118)
  %i.afh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.afg, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
  call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.afh) #32
  unreachable

_ZN12V3NumberData3numEv.exit.i413:                ; preds = %bb.hc
  %i.afi = and i32 %i.aej, 31
  %i.afj = shl nuw i32 1, %i.afi
  %i.afk = icmp slt i32 %i.acz, 129
  %i.afl = load ptr, ptr %0, align 8
  %spec.select.i.i414 = select i1 %i.afk, ptr %0, ptr %i.afl
  %i.afm = sdiv i32 %i.aej, 32
  %i.afn = sext i32 %i.afm to i64
  %i.afo = getelementptr inbounds [8 x i8], ptr %spec.select.i.i414, i64 %i.afn ; 2 uses
  %i.afp = load <2 x i32>, ptr %i.afo, align 4, !tbaa !66
  %i.afq = insertelement <2 x i32> poison, i32 %i.afj, i64 0
  %i.afr = shufflevector <2 x i32> %i.afq, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.afs = or <2 x i32> %i.afp, %i.afr
  store <2 x i32> %i.afs, ptr %i.afo, align 4, !tbaa !66
  br label %_ZN8V3Number6setBitEic.exit373

bb.he:                                            ; preds = %bb.gd
  %i.aft = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5) ; 0 uses
  %i.afu = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.afv = icmp eq i8 %i.afu, 0
  br i1 %i.afv, label %bb.hf, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit417, !prof !68

bb.hf:                                            ; preds = %bb.he
  %i.afw = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #30
  %.not.i.i416 = icmp eq i32 %i.afw, 0
  br i1 %.not.i.i416, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit417, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.hh unwind label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.afx = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #30
  br label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit417

bb.hi:                                            ; preds = %bb.hg
  %i.afy = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #30
  br label %common.resume

_ZN7V3Error10v3errorStrB5cxx11Ev.exit417:         ; preds = %bb.he, %bb.hf, %bb.hh
  %i.afz = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.123, ptr nonnull @.str.124, i32 481, ptr null) ; 6 uses
  %i.aga = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.afz, ptr noundef nonnull @.str.10, i64 noundef 35) ; 0 uses
  %i.agb = load i8, ptr %.0576, align 1, !tbaa !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.agb, ptr %i.b, align 1, !tbaa !23
  %i.agc = load ptr, ptr %i.afz, align 8, !tbaa !38
  %i.agd = getelementptr i8, ptr %i.agc, i64 -24
  %i.age = load i64, ptr %i.agd, align 8
  %i.agf = getelementptr inbounds i8, ptr %i.afz, i64 %i.age
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 16
  %i.agh = load i64, ptr %i.agg, align 8, !tbaa !151
  %.not.i418 = icmp eq i64 %i.agh, 0
  br i1 %.not.i418, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit417
  %i.agi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.afz, ptr noundef nonnull %i.b, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit420

bb.hk:                                            ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit417
  %i.agj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.afz, i8 noundef signext %i.agb) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit420

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit420: ; preds = %bb.hj, %bb.hk
  %.0.i419 = phi ptr [ %i.agi, %bb.hj ], [ %i.afz, %bb.hk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_ZNK8V3Number10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %.0.i419)
  br label %_ZN8V3Number6setBitEic.exit373

bb.hl:                                            ; preds = %bb.es
  %i.agk = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5) ; 0 uses
  %i.agl = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.agm = icmp eq i8 %i.agl, 0
  br i1 %i.agm, label %bb.hm, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit422, !prof !68

bb.hm:                                            ; preds = %bb.hl
  %i.agn = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #30
  %.not.i.i421 = icmp eq i32 %i.agn, 0
  br i1 %.not.i.i421, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit422, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.ho unwind label %bb.hp

bb.ho:                                            ; preds = %bb.hn
  %i.ago = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #30
  br label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit422

bb.hp:                                            ; preds = %bb.hn
  %i.agp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #30
  br label %common.resume

_ZN7V3Error10v3errorStrB5cxx11Ev.exit422:         ; preds = %bb.hl, %bb.hm, %bb.ho
  %i.agq = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.123, ptr nonnull @.str.124, i32 481, ptr null) ; 6 uses
  %i.agr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.agq, ptr noundef nonnull @.str.11, i64 noundef 24) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %.1248, ptr %i.a, align 1, !tbaa !23
  %i.ags = load ptr, ptr %i.agq, align 8, !tbaa !38
  %i.agt = getelementptr i8, ptr %i.ags, i64 -24
  %i.agu = load i64, ptr %i.agt, align 8
  %i.agv = getelementptr inbounds i8, ptr %i.agq, i64 %i.agu
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 16
  %i.agx = load i64, ptr %i.agw, align 8, !tbaa !151
  %.not.i423 = icmp eq i64 %i.agx, 0
  br i1 %.not.i423, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit422
  %i.agy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.agq, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit425

bb.hr:                                            ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit422
  %i.agz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.agq, i8 noundef signext %.1248) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit425

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit425: ; preds = %bb.hq, %bb.hr
  %.0.i424 = phi ptr [ %i.agy, %bb.hq ], [ %i.agq, %bb.hr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZNK8V3Number10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %.0.i424)
  br label %_ZN8V3Number6setBitEic.exit373

_ZN8V3Number6setBitEic.exit373:                   ; preds = %_ZN12V3NumberData3numEv.exit.i413, %_ZN8V3Number6setBitEic.exit410, %_ZN12V3NumberData3numEv.exit.i391, %_ZN8V3Number6setBitEic.exit388, %_ZN12V3NumberData3numEv.exit.i371, %bb.ex, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit425, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit378, %bb.ew, %bb.ev, %bb.eu, %bb.et, %_ZN7V3Error10v3errorStrB5cxx11Ev.exit395, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit420, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd
  %.1221 = phi i32 [ %.0220574, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit425 ], [ %.0220574, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit378 ], [ %i.vf, %bb.eu ], [ %i.vg, %bb.ev ], [ %i.vh, %bb.ew ], [ %.0220574, %bb.gd ], [ %.0220574, %bb.et ], [ %.0220574, %_ZN7V3Error10v3errorStrB5cxx11Ev.exit395 ], [ %i.ww, %bb.fi ], [ %i.wz, %bb.fj ], [ %i.xc, %bb.fk ], [ %i.xf, %bb.fl ], [ %i.xi, %bb.fm ], [ %i.xl, %bb.fn ], [ %i.xo, %bb.fo ], [ %i.xr, %bb.fp ], [ %i.xu, %bb.fq ], [ %i.vi, %_ZN12V3NumberData3numEv.exit.i371 ], [ %.0220574, %bb.fh ], [ %.0220574, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit420 ], [ %i.aal, %bb.ge ], [ %i.aap, %bb.gf ], [ %i.aat, %bb.gg ], [ %i.aax, %bb.gh ], [ %i.abb, %bb.gi ], [ %i.abf, %bb.gj ], [ %i.abj, %bb.gk ], [ %i.abn, %bb.gl ], [ %i.abr, %bb.gm ], [ %i.abv, %bb.gn ], [ %i.abz, %bb.go ], [ %i.acd, %bb.gp ], [ %i.ach, %bb.gq ], [ %i.acl, %bb.gr ], [ %i.acp, %bb.gs ], [ %i.act, %bb.gt ], [ %i.acx, %bb.gu ], [ %i.zg, %_ZN12V3NumberData3numEv.exit.i391 ], [ %i.vi, %bb.ex ], [ %i.zg, %_ZN8V3Number6setBitEic.exit388 ], [ %i.afb, %_ZN8V3Number6setBitEic.exit410 ], [ %i.afb, %_ZN12V3NumberData3numEv.exit.i413 ] ; 2 uses
  %.1218 = phi i32 [ %.0217575, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit425 ], [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit378 ], [ 1, %bb.eu ], [ 1, %bb.ev ], [ 1, %bb.ew ], [ 4, %bb.gd ], [ 1, %bb.et ], [ 3, %_ZN7V3Error10v3errorStrB5cxx11Ev.exit395 ], [ 3, %bb.fi ], [ 3, %bb.fj ], [ 3, %bb.fk ], [ 3, %bb.fl ], [ 3, %bb.fm ], [ 3, %bb.fn ], [ 3, %bb.fo ], [ 3, %bb.fp ], [ 3, %bb.fq ], [ 1, %_ZN12V3NumberData3numEv.exit.i371 ], [ 3, %bb.fh ], [ 4, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit420 ], [ 4, %bb.ge ], [ 4, %bb.gf ], [ 4, %bb.gg ], [ 4, %bb.gh ], [ 4, %bb.gi ], [ 4, %bb.gj ], [ 4, %bb.gk ], [ 4, %bb.gl ], [ 4, %bb.gm ], [ 4, %bb.gn ], [ 4, %bb.go ], [ 4, %bb.gp ], [ 4, %bb.gq ], [ 4, %bb.gr ], [ 4, %bb.gs ], [ 4, %bb.gt ], [ 4, %bb.gu ], [ 3, %_ZN12V3NumberData3numEv.exit.i391 ], [ 1, %bb.ex ], [ 3, %_ZN8V3Number6setBitEic.exit388 ], [ 4, %_ZN8V3Number6setBitEic.exit410 ], [ 4, %_ZN12V3NumberData3numEv.exit.i413 ] ; 2 uses
  %.0 = getelementptr inbounds i8, ptr %.0576, i64 -1 ; 2 uses
  %.not273 = icmp ult ptr %.0, %.2226
  br i1 %.not273, label %.loopexit496, label %.lr.ph578, !llvm.loop !153

.loopexit496:                                     ; preds = %_ZN8V3Number6setBitEic.exit373, %._crit_edge589.thread, %bb.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365, %._crit_edge589, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit357
  %.2222 = phi i32 [ %i.lu, %._crit_edge589 ], [ %i.lu, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit357 ], [ %.0220574, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365 ], [ 0, %bb.eh ], [ %i.kx, %._crit_edge589.thread ], [ %.1221, %_ZN8V3Number6setBitEic.exit373 ]
  %.2219 = phi i32 [ 1, %._crit_edge589 ], [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit357 ], [ %.0217575, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365 ], [ 1, %bb.eh ], [ 1, %._crit_edge589.thread ], [ %.1218, %_ZN8V3Number6setBitEic.exit373 ] ; 2 uses
  %.2222.fr = freeze i32 %.2222                   ; 3 uses
  br i1 %.0250, label %bb.hu, label %bb.hs

bb.hs:                                            ; preds = %.loopexit496
  %i.aha = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.ahb = load i8, ptr %i.aha, align 1           ; 2 uses
  %i.ahc = and i8 %i.ahb, 32
  %.not280 = icmp eq i8 %i.ahc, 0
  br i1 %.not280, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.ahd = load i32, ptr %i.ao, align 8, !tbaa !41
  %.fr.i.i.i = freeze i32 %i.ahd                  ; 4 uses
  %i.ahe = icmp sgt i32 %.fr.i.i.i, 1
  br i1 %i.ahe, label %.lr.ph.i, label %_ZNK8V3Number10widthToFitEv.exit

.lr.ph.i:                                         ; preds = %bb.ht
  %i.ahf = icmp samesign ult i32 %.fr.i.i.i, 129
  %i.ahg = load i8, ptr %i.g, align 4, !tbaa !42
  %i.ahh = add i8 %i.ahg, -3
  %spec.select.i.i.i426 = icmp ult i8 %i.ahh, -2
  %i.ahi = load ptr, ptr %0, align 8
  %spec.select.i9.i.i = select i1 %i.ahf, ptr %0, ptr %i.ahi
  br i1 %spec.select.i.i.i426, label %_ZNK8V3Number10widthToFitEv.exit, label %.lr.ph.split.split.i

.lr.ph.split.split.i:                             ; preds = %.lr.ph.i, %_ZNK8V3Number6bitIs0Ei.exit.backedge.i
  %.06.in11.i = phi i32 [ %.0612.i, %_ZNK8V3Number6bitIs0Ei.exit.backedge.i ], [ %.fr.i.i.i, %.lr.ph.i ] ; 3 uses
  %.0612.i = add nsw i32 %.06.in11.i, -1          ; 3 uses
  %i.ahj = lshr i32 %.0612.i, 5
  %i.ahk = zext nneg i32 %i.ahj to i64
  %i.ahl = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i9.i.i, i64 %i.ahk ; 2 uses
  %.sroa.0.0.copyload.i.i428 = load i32, ptr %i.ahl, align 4, !tbaa !66
  %.sroa.4.0..sroa_idx.i.i429 = getelementptr inbounds nuw i8, ptr %i.ahl, i64 4
  %.sroa.4.0.copyload.i.i430 = load i32, ptr %.sroa.4.0..sroa_idx.i.i429, align 4, !tbaa !66
  %i.ahm = or i32 %.sroa.4.0.copyload.i.i430, %.sroa.0.0.copyload.i.i428
  %i.ahn = zext i32 %i.ahm to i64
  %i.aho = and i32 %.0612.i, 31
  %i.ahp = zext nneg i32 %i.aho to i64
  %i.ahq = shl nuw nsw i64 1, %i.ahp
  %i.ahr = and i64 %i.ahq, %i.ahn
  %i.ahs = icmp eq i64 %i.ahr, 0
  br i1 %i.ahs, label %_ZNK8V3Number6bitIs0Ei.exit.backedge.i, label %_ZNK8V3Number10widthToFitEv.exit

_ZNK8V3Number6bitIs0Ei.exit.backedge.i:           ; preds = %.lr.ph.split.split.i
  %i.aht = icmp samesign ugt i32 %.06.in11.i, 2
  br i1 %i.aht, label %.lr.ph.split.split.i, label %_ZNK8V3Number10widthToFitEv.exit, !llvm.loop !154

_ZNK8V3Number10widthToFitEv.exit:                 ; preds = %.lr.ph.split.split.i, %_ZNK8V3Number6bitIs0Ei.exit.backedge.i, %bb.ht, %.lr.ph.i
  %i.ahu = phi i32 [ 1, %bb.ht ], [ %.fr.i.i.i, %.lr.ph.i ], [ 1, %_ZNK8V3Number6bitIs0Ei.exit.backedge.i ], [ %.06.in11.i, %.lr.ph.split.split.i ]
  %i.ahv = add nsw i32 %.2219, -1
  %i.ahw = add i32 %i.ahv, %i.ahu                 ; 2 uses
  %i.ahx = srem i32 %i.ahw, %.2219
  %i.ahy = sub i32 %i.ahw, %i.ahx
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.ahy, i32 32)
  %i.ahz = and i8 %i.ahb, -34
  store i8 %i.ahz, ptr %i.aha, align 1
  call void @_ZN12V3NumberData6resizeEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.sroa.speculated)
  br label %bb.hu

bb.hu:                                            ; preds = %_ZNK8V3Number10widthToFitEv.exit, %bb.hs, %.loopexit496
  %i.aia = load i32, ptr %i.ao, align 8, !tbaa !41
  %.fr.i593 = freeze i32 %i.aia                   ; 2 uses
  %8 = icmp sgt i32 %.2222.fr, %.fr.i593
  %9 = icmp slt i32 %.2222.fr, 1
  %or.cond = or i1 %9, %8
  br i1 %or.cond, label %.critedge5, label %.lr.ph598

.lr.ph598:                                        ; preds = %bb.hu, %bb.hv
  %.fr.i596 = phi i32 [ %.fr.i, %bb.hv ], [ %.fr.i593, %bb.hu ]
  %.3223595 = phi i32 [ %i.aip, %bb.hv ], [ %.2222.fr, %bb.hu ] ; 4 uses
  %i.aib = add nsw i32 %.3223595, -1              ; 3 uses
  %i.aic = load i8, ptr %i.g, align 4, !tbaa !42
  %i.aid = add i8 %i.aic, -3
  %spec.select.i.i432 = icmp ult i8 %i.aid, -2
  br i1 %spec.select.i.i432, label %.critedge5, label %_ZNK8V3Number7bitIsXZEi.exit

_ZNK8V3Number7bitIsXZEi.exit:                     ; preds = %.lr.ph598
  %i.aie = icmp samesign ult i32 %.fr.i596, 129
  %i.aif = load ptr, ptr %0, align 8
  %spec.select.i7.i = select i1 %i.aie, ptr %0, ptr %i.aif
  %i.aig = lshr i32 %i.aib, 5
  %i.aih = zext nneg i32 %i.aig to i64
  %i.aii = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i7.i, i64 %i.aih
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aii, i64 4
  %.sroa.3.0.copyload.i = load i32, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !66
  %i.aij = zext i32 %.sroa.3.0.copyload.i to i64
  %i.aik = and i32 %i.aib, 31
  %i.ail = zext nneg i32 %i.aik to i64
  %i.aim = shl nuw nsw i64 1, %i.ail
  %i.ain = and i64 %i.aim, %i.aij
  %.not493 = icmp eq i64 %i.ain, 0
  br i1 %.not493, label %.critedge5, label %bb.hv

bb.hv:                                            ; preds = %_ZNK8V3Number7bitIsXZEi.exit
  %i.aio = call noundef signext i8 @_ZNK8V3Number5bitIsEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %i.aib)
  call void @_ZN8V3Number6setBitEic(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.3223595, i8 noundef signext %i.aio)
  %i.aip = add nuw nsw i32 %.3223595, 1
  %i.aiq = load i32, ptr %i.ao, align 8, !tbaa !41
  %.fr.i = freeze i32 %i.aiq                      ; 2 uses
  %i.air = icmp slt i32 %.3223595, %.fr.i
  br i1 %i.air, label %.lr.ph598, label %.critedge5, !llvm.loop !155

.critedge5:                                       ; preds = %.lr.ph598, %bb.hv, %_ZNK8V3Number7bitIsXZEi.exit, %bb.hu
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
  %.fr.i.i = freeze i32 %i.e                      ; 7 uses
  %i.f = add nsw i32 %.fr.i.i, -1                 ; 2 uses
  %i.g = icmp samesign ult i32 %.fr.i.i, 129
  %i.h = load ptr, ptr %0, align 8
  %spec.select.i7.i.i = select i1 %i.g, ptr %0, ptr %i.h ; 5 uses
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
  br i1 %i.o, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  br i1 %i.p, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, label %bb.c, !prof !329

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  br i1 %i.p, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, label %.lr.ph.split.split.us.preheader37, !prof !329

.lr.ph.split.split.us.preheader37:                ; preds = %.lr.ph.split.split.us.preheader
  %3 = add i32 %1, %2
  %4 = and i32 %3, 1
  %lcmp.mod.not.not = icmp eq i32 %4, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.split.split.us.prol, label %.lr.ph.split.split.us.a

.lr.ph.split.split.us.prol:                       ; preds = %.lr.ph.split.split.us.preheader37
  %.not.i.us.prol = icmp slt i32 %2, %.fr.i.i
  br i1 %.not.i.us.prol, label %_ZNK8V3Number6bitIs0Ei.exit.us.prol, label %_ZNK8V3Number6bitIs0Ei.exit.thread.us.prol

_ZNK8V3Number6bitIs0Ei.exit.us.prol:              ; preds = %.lr.ph.split.split.us.prol
  %5 = lshr i32 %2, 5
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i7.i.i, i64 %6 ; 2 uses
  %.sroa.0.0.copyload.i.us.prol = load i32, ptr %7, align 4, !tbaa !66
  %.sroa.4.0..sroa_idx.i.us.prol = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.4.0.copyload.i.us.prol = load i32, ptr %.sroa.4.0..sroa_idx.i.us.prol, align 4, !tbaa !66
  %8 = or i32 %.sroa.4.0.copyload.i.us.prol, %.sroa.0.0.copyload.i.us.prol
  %9 = zext i32 %8 to i64
  %10 = and i32 %2, 31
  %11 = zext nneg i32 %10 to i64
  %12 = shl nuw nsw i64 1, %11
  %13 = and i64 %12, %9
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %_ZNK8V3Number6bitIs0Ei.exit.thread.us.prol, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, !prof !330

_ZNK8V3Number6bitIs0Ei.exit.thread.us.prol:       ; preds = %_ZNK8V3Number6bitIs0Ei.exit.us.prol, %.lr.ph.split.split.us.prol
  %15 = add nuw i32 %2, 1
  br label %.lr.ph.split.split.us.a

.lr.ph.split.split.us.a:                          ; preds = %_ZNK8V3Number6bitIs0Ei.exit.thread.us.prol, %.lr.ph.split.split.us.preheader37
  %.0713.us.a = phi i32 [ %2, %.lr.ph.split.split.us.preheader37 ], [ %15, %_ZNK8V3Number6bitIs0Ei.exit.thread.us.prol ]
  %16 = icmp eq i32 %1, %2
  br i1 %16, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.split.us.a, %.lr.ph.split.split.a
  %.0713.us = phi i32 [ %27, %.lr.ph.split.split.a ], [ %.0713.us.a, %.lr.ph.split.split.us.a ] ; 5 uses
  %.not.i.us = icmp slt i32 %.0713.us, %.fr.i.i
  br i1 %.not.i.us, label %_ZNK8V3Number6bitIs0Ei.exit.us, label %_ZNK8V3Number6bitIs0Ei.exit.thread.us

_ZNK8V3Number6bitIs0Ei.exit.us:                   ; preds = %bb.b
  %i.q = lshr i32 %.0713.us, 5
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i7.i.i, i64 %i.r ; 2 uses
  %.sroa.0.0.copyload.i.us = load i32, ptr %i.s, align 4, !tbaa !66
  %.sroa.4.0..sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.sroa.4.0.copyload.i.us = load i32, ptr %.sroa.4.0..sroa_idx.i.us, align 4, !tbaa !66
  %i.t = or i32 %.sroa.4.0.copyload.i.us, %.sroa.0.0.copyload.i.us
  %i.u = zext i32 %i.t to i64
  %i.v = and i32 %.0713.us, 31
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl nuw nsw i64 1, %i.w
  %i.y = and i64 %i.x, %i.u
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZNK8V3Number6bitIs0Ei.exit.thread.us, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, !prof !330

_ZNK8V3Number6bitIs0Ei.exit.thread.us:            ; preds = %bb.b, %_ZNK8V3Number6bitIs0Ei.exit.us
  %17 = add i32 %.0713.us, 1                      ; 4 uses
  %.not.i.us.1 = icmp slt i32 %17, %.fr.i.i
  br i1 %.not.i.us.1, label %_ZNK8V3Number6bitIs0Ei.exit.thread.us.a, label %.lr.ph.split.split.a

_ZNK8V3Number6bitIs0Ei.exit.thread.us.a:          ; preds = %_ZNK8V3Number6bitIs0Ei.exit.thread.us
  %18 = lshr i32 %17, 5
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i7.i.i, i64 %19 ; 2 uses
  %.sroa.0.0.copyload.i.us.1 = load i32, ptr %20, align 4, !tbaa !66
  %.sroa.4.0..sroa_idx.i.us.1 = getelementptr inbounds nuw i8, ptr %20, i64 4
  %.sroa.4.0.copyload.i.us.1 = load i32, ptr %.sroa.4.0..sroa_idx.i.us.1, align 4, !tbaa !66
  %21 = or i32 %.sroa.4.0.copyload.i.us.1, %.sroa.0.0.copyload.i.us.1
  %22 = zext i32 %21 to i64
  %23 = and i32 %17, 31
  %24 = zext nneg i32 %23 to i64
  %25 = shl nuw nsw i64 1, %24
  %26 = and i64 %25, %22
  %exitcond27.not = icmp eq i64 %26, 0
  br i1 %exitcond27.not, label %.lr.ph.split.split.a, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, !prof !330

.lr.ph.split.split.a:                             ; preds = %_ZNK8V3Number6bitIs0Ei.exit.thread.us.a, %_ZNK8V3Number6bitIs0Ei.exit.thread.us
  %27 = add i32 %.0713.us, 2
  %exitcond27.not.1 = icmp eq i32 %17, %1
  br i1 %exitcond27.not.1, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, label %bb.b, !llvm.loop !331

bb.c:                                             ; preds = %.lr.ph.split.split.preheader, %_ZNK8V3Number6bitIs0Ei.exit.thread
  %.0713 = phi i32 [ %i.an, %_ZNK8V3Number6bitIs0Ei.exit.thread ], [ %2, %.lr.ph.split.split.preheader ] ; 5 uses
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
  br i1 %exitcond.not, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, label %bb.c, !llvm.loop !331

_ZNK8V3Number6bitIs0Ei.exit.thread10:             ; preds = %tailrecurse.preheader.i.i, %_ZNK8V3Number6bitIs0Ei.exit, %_ZNK8V3Number6bitIs0Ei.exit.thread, %.lr.ph.split.split.us.a, %_ZNK8V3Number6bitIs0Ei.exit.us, %_ZNK8V3Number6bitIs0Ei.exit.thread.us.a, %.lr.ph.split.split.a, %_ZNK8V3Number6bitIs0Ei.exit.us.prol, %.lr.ph.split.split.preheader, %.lr.ph.split.split.us.preheader, %.lr.ph, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph.split.split.preheader ], [ false, %.lr.ph ], [ false, %.lr.ph.split.split.us.preheader ], [ false, %_ZNK8V3Number6bitIs0Ei.exit.thread.us.a ], [ true, %.lr.ph.split.split.us.a ], [ false, %_ZNK8V3Number6bitIs0Ei.exit.us.prol ], [ true, %.lr.ph.split.split.a ], [ false, %_ZNK8V3Number6bitIs0Ei.exit.us ], [ true, %_ZNK8V3Number6bitIs0Ei.exit.thread ], [ false, %tailrecurse.preheader.i.i ], [ false, %_ZNK8V3Number6bitIs0Ei.exit ]
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
