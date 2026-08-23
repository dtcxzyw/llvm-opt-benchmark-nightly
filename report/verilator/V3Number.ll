Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Number?download=true
inline.NumInlined: 2597
inline.NumDeleted: 451
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN8V3Number6createEPKc:bb.a
_ZN8V3Number6setBitEic.exit405:                   ; preds = %_ZN8V3Number6setBitEic.exit400, %_ZN12V3NumberData3numEv.exit.i403
  %i.aej = add nsw i32 %.0220576, 3               ; 3 uses
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
  %i.afb = add nsw i32 %.0220576, 4               ; 2 uses
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
  %i.agb = load i8, ptr %.0578, align 1, !tbaa !23 ; 2 uses
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
  %.1221 = phi i32 [ %.0220576, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit425 ], [ %.0220576, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit378 ], [ %i.vf, %bb.eu ], [ %i.vg, %bb.ev ], [ %i.vh, %bb.ew ], [ %.0220576, %bb.gd ], [ %.0220576, %bb.et ], [ %.0220576, %_ZN7V3Error10v3errorStrB5cxx11Ev.exit395 ], [ %i.ww, %bb.fi ], [ %i.wz, %bb.fj ], [ %i.xc, %bb.fk ], [ %i.xf, %bb.fl ], [ %i.xi, %bb.fm ], [ %i.xl, %bb.fn ], [ %i.xo, %bb.fo ], [ %i.xr, %bb.fp ], [ %i.xu, %bb.fq ], [ %i.vi, %_ZN12V3NumberData3numEv.exit.i371 ], [ %.0220576, %bb.fh ], [ %.0220576, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit420 ], [ %i.aal, %bb.ge ], [ %i.aap, %bb.gf ], [ %i.aat, %bb.gg ], [ %i.aax, %bb.gh ], [ %i.abb, %bb.gi ], [ %i.abf, %bb.gj ], [ %i.abj, %bb.gk ], [ %i.abn, %bb.gl ], [ %i.abr, %bb.gm ], [ %i.abv, %bb.gn ], [ %i.abz, %bb.go ], [ %i.acd, %bb.gp ], [ %i.ach, %bb.gq ], [ %i.acl, %bb.gr ], [ %i.acp, %bb.gs ], [ %i.act, %bb.gt ], [ %i.acx, %bb.gu ], [ %i.zg, %_ZN12V3NumberData3numEv.exit.i391 ], [ %i.vi, %bb.ex ], [ %i.zg, %_ZN8V3Number6setBitEic.exit388 ], [ %i.afb, %_ZN8V3Number6setBitEic.exit410 ], [ %i.afb, %_ZN12V3NumberData3numEv.exit.i413 ] ; 2 uses
  %.1218 = phi i32 [ %.0217577, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit425 ], [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit378 ], [ 1, %bb.eu ], [ 1, %bb.ev ], [ 1, %bb.ew ], [ 4, %bb.gd ], [ 1, %bb.et ], [ 3, %_ZN7V3Error10v3errorStrB5cxx11Ev.exit395 ], [ 3, %bb.fi ], [ 3, %bb.fj ], [ 3, %bb.fk ], [ 3, %bb.fl ], [ 3, %bb.fm ], [ 3, %bb.fn ], [ 3, %bb.fo ], [ 3, %bb.fp ], [ 3, %bb.fq ], [ 1, %_ZN12V3NumberData3numEv.exit.i371 ], [ 3, %bb.fh ], [ 4, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit420 ], [ 4, %bb.ge ], [ 4, %bb.gf ], [ 4, %bb.gg ], [ 4, %bb.gh ], [ 4, %bb.gi ], [ 4, %bb.gj ], [ 4, %bb.gk ], [ 4, %bb.gl ], [ 4, %bb.gm ], [ 4, %bb.gn ], [ 4, %bb.go ], [ 4, %bb.gp ], [ 4, %bb.gq ], [ 4, %bb.gr ], [ 4, %bb.gs ], [ 4, %bb.gt ], [ 4, %bb.gu ], [ 3, %_ZN12V3NumberData3numEv.exit.i391 ], [ 1, %bb.ex ], [ 3, %_ZN8V3Number6setBitEic.exit388 ], [ 4, %_ZN8V3Number6setBitEic.exit410 ], [ 4, %_ZN12V3NumberData3numEv.exit.i413 ] ; 2 uses
  %.0 = getelementptr inbounds i8, ptr %.0578, i64 -1 ; 2 uses
  %.not273 = icmp ult ptr %.0, %.2226
  br i1 %.not273, label %.loopexit496, label %.lr.ph580, !llvm.loop !153

.loopexit496:                                     ; preds = %_ZN8V3Number6setBitEic.exit373, %._crit_edge591.thread, %bb.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365, %._crit_edge591, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit357
  %.2222 = phi i32 [ %i.lu, %._crit_edge591 ], [ %i.lu, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit357 ], [ %.0220576, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365 ], [ 0, %bb.eh ], [ %i.kx, %._crit_edge591.thread ], [ %.1221, %_ZN8V3Number6setBitEic.exit373 ] ; 4 uses
  %.2219 = phi i32 [ 1, %._crit_edge591 ], [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit357 ], [ %.0217577, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365 ], [ 1, %bb.eh ], [ 1, %._crit_edge591.thread ], [ %.1218, %_ZN8V3Number6setBitEic.exit373 ] ; 2 uses
  br i1 %.0250, label %bb.hu, label %bb.hs

bb.hs:                                            ; preds = %.loopexit496
  %i.aha = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.ahb = load i8, ptr %i.aha, align 1           ; 2 uses
  %i.ahc = and i8 %i.ahb, 32
  %.not280 = icmp eq i8 %i.ahc, 0
  br i1 %.not280, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.ahd = load i32, ptr %i.dn, align 8, !tbaa !41
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
  br i1 %spec.select.i.i.i426, label %_ZNK8V3Number10widthToFitEv.exit, label %_ZNK12V3NumberData3numEv.exit.i.i427

_ZNK12V3NumberData3numEv.exit.i.i427:             ; preds = %.lr.ph.i, %_ZNK8V3Number6bitIs0Ei.exit.backedge.i
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

_ZNK8V3Number6bitIs0Ei.exit.backedge.i:           ; preds = %_ZNK12V3NumberData3numEv.exit.i.i427
  %i.aht = icmp samesign ugt i32 %.06.in11.i, 2
  br i1 %i.aht, label %_ZNK12V3NumberData3numEv.exit.i.i427, label %_ZNK8V3Number10widthToFitEv.exit, !llvm.loop !154

_ZNK8V3Number10widthToFitEv.exit:                 ; preds = %_ZNK12V3NumberData3numEv.exit.i.i427, %_ZNK8V3Number6bitIs0Ei.exit.backedge.i, %bb.ht, %.lr.ph.i
  %8 = phi i32 [ 1, %bb.ht ], [ %.fr.i.i.i, %.lr.ph.i ], [ 1, %_ZNK8V3Number6bitIs0Ei.exit.backedge.i ], [ %.06.in11.i, %_ZNK12V3NumberData3numEv.exit.i.i427 ]
  %i.ahu = add nsw i32 %.2219, -1
  %i.ahv = add i32 %i.ahu, %8                     ; 2 uses
  %i.ahw = srem i32 %i.ahv, %.2219
  %i.ahx = sub i32 %i.ahv, %i.ahw
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.ahx, i32 32)
  %i.ahy = and i8 %i.ahb, -34
  store i8 %i.ahy, ptr %i.aha, align 1
  call void @_ZN12V3NumberData6resizeEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.sroa.speculated)
  br label %bb.hu

bb.hu:                                            ; preds = %_ZNK8V3Number10widthToFitEv.exit, %bb.hs, %.loopexit496
  %i.ahz = load i32, ptr %i.dn, align 8, !tbaa !41
  %.fr.i595 = freeze i32 %i.ahz                   ; 2 uses
  %i.aia = icmp sle i32 %.2222, %.fr.i595
  %i.aib = icmp ne i32 %.2222, 0
  %or.cond596 = and i1 %i.aib, %i.aia
  br i1 %or.cond596, label %.lr.ph600.preheader, label %.critedge5

.lr.ph600.preheader:                              ; preds = %bb.hu
  %i.aic = icmp slt i32 %.2222, 1
  br label %.lr.ph600

.lr.ph600:                                        ; preds = %.lr.ph600.preheader, %bb.hv
  %.fr.i598 = phi i32 [ %.fr.i, %bb.hv ], [ %.fr.i595, %.lr.ph600.preheader ]
  %.3223597 = phi i32 [ %i.air, %bb.hv ], [ %.2222, %.lr.ph600.preheader ] ; 4 uses
  %i.aid = add nsw i32 %.3223597, -1              ; 3 uses
  %i.aie = load i8, ptr %i.g, align 4, !tbaa !42
  %i.aif = add i8 %i.aie, -3
  %spec.select.i.i432 = icmp ult i8 %i.aif, -2
  %or.cond10.i = or i1 %i.aic, %spec.select.i.i432
  br i1 %or.cond10.i, label %.critedge5, label %_ZNK8V3Number7bitIsXZEi.exit

_ZNK8V3Number7bitIsXZEi.exit:                     ; preds = %.lr.ph600
  %i.aig = icmp samesign ult i32 %.fr.i598, 129
  %i.aih = load ptr, ptr %0, align 8
  %spec.select.i7.i = select i1 %i.aig, ptr %0, ptr %i.aih
  %i.aii = lshr i32 %i.aid, 5
  %i.aij = zext nneg i32 %i.aii to i64
  %i.aik = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i7.i, i64 %i.aij
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aik, i64 4
  %.sroa.3.0.copyload.i = load i32, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !66
  %i.ail = zext i32 %.sroa.3.0.copyload.i to i64
  %i.aim = and i32 %i.aid, 31
  %i.ain = zext nneg i32 %i.aim to i64
  %i.aio = shl nuw nsw i64 1, %i.ain
  %i.aip = and i64 %i.aio, %i.ail
  %.not493 = icmp eq i64 %i.aip, 0
  br i1 %.not493, label %.critedge5, label %bb.hv

bb.hv:                                            ; preds = %_ZNK8V3Number7bitIsXZEi.exit
  %i.aiq = call noundef signext i8 @_ZNK8V3Number5bitIsEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %i.aid)
  call void @_ZN8V3Number6setBitEic(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.3223597, i8 noundef signext %i.aiq)
  %i.air = add nuw nsw i32 %.3223597, 1
  %i.ais = load i32, ptr %i.dn, align 8, !tbaa !41
  %.fr.i = freeze i32 %i.ais                      ; 2 uses
  %i.ait = icmp slt i32 %.3223597, %.fr.i
  br i1 %i.ait, label %.lr.ph600, label %.critedge5, !llvm.loop !155

.critedge5:                                       ; preds = %_ZNK8V3Number7bitIsXZEi.exit, %bb.hv, %.lr.ph600, %bb.hu
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
end_hunk_0
begin_hunk_1_@_ZNK8V3Number9displayedEP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK11VFormatAttr:bb.a
  store ptr %i.rr, ptr %0, align 8, !tbaa !29
  %i.rw = load i64, ptr %i.av, align 8, !tbaa !23
  store i64 %i.rw, ptr %i.rq, align 8, !tbaa !23
  %.pre1076 = load i64, ptr %i.aw, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit331

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit331: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i330
  %i.rx = phi i64 [ %i.rt, %bb.dd ], [ %.pre1076, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i330 ]
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.rx, ptr %i.ry, align 8, !tbaa !20
  store ptr %i.av, ptr %6, align 8, !tbaa !29
  store i64 0, ptr %i.aw, align 8, !tbaa !20
  store i8 0, ptr %i.av, align 8, !tbaa !23
  br label %bb.jn

bb.de:                                            ; preds = %.loopexit
  %i.rz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %.body258

bb.df:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  switch i8 %i.ba, label %bb.dv [
    i8 68, label %bb.dg
    i8 83, label %bb.dn
    i8 33, label %bb.du
  ]

bb.dg:                                            ; preds = %bb.df
  %i.sa = invoke noundef double @_ZNK8V3Number8toDoubleEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.dh unwind label %bb.dl

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %i.sb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 1100, ptr noundef nonnull @.str.36, double noundef %i.sa) #30 ; 0 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.sc, ptr %0, align 8, !tbaa !15
  %i.sd = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.sd, ptr %i.a, align 8, !tbaa !40
  %i.se = icmp ugt i64 %i.sd, 15
  br i1 %i.se, label %.noexc.i333, label %._crit_edge.i.i332

.noexc.i333:                                      ; preds = %bb.dh
  %i.sf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc334 unwind label %bb.dm ; 2 uses

.noexc334:                                        ; preds = %.noexc.i333
  store ptr %i.sf, ptr %0, align 8, !tbaa !29
  %i.sg = load i64, ptr %i.a, align 8, !tbaa !40
  store i64 %i.sg, ptr %i.sc, align 8, !tbaa !23
  br label %._crit_edge.i.i332

._crit_edge.i.i332:                               ; preds = %.noexc334, %bb.dh
  %i.sh = phi ptr [ %i.sf, %.noexc334 ], [ %i.sc, %bb.dh ] ; 2 uses
  switch i64 %i.sd, label %bb.dj [
    i64 1, label %bb.di
    i64 0, label %bb.dk
  ]

bb.di:                                            ; preds = %._crit_edge.i.i332
  %i.si = load i8, ptr %i.d, align 16, !tbaa !23
  store i8 %i.si, ptr %i.sh, align 1, !tbaa !23
  br label %bb.dk

bb.dj:                                            ; preds = %._crit_edge.i.i332
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sh, ptr nonnull align 16 %i.d, i64 %i.sd, i1 false)
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di, %._crit_edge.i.i332
  %i.sj = load i64, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.sj, ptr %i.sk, align 8, !tbaa !20
  %i.sl = load ptr, ptr %0, align 8, !tbaa !29
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 %i.sj
  store i8 0, ptr %i.sm, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  br label %bb.jn

bb.dl:                                            ; preds = %bb.dg
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %.body258

bb.dm:                                            ; preds = %.noexc.i333
  %i.so = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  br label %.body258

bb.dn:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  invoke void @_ZNK8V3Number8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.do unwind label %bb.dr

bb.do:                                            ; preds = %bb.dn
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, i8 noundef signext 34, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.dp unwind label %bb.ds

bb.dp:                                            ; preds = %bb.do
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %15, i8 noundef signext 34)
          to label %bb.dq unwind label %bb.dt

bb.dq:                                            ; preds = %bb.dp
  %i.sp = load ptr, ptr %15, align 8, !tbaa !29   ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.sr = icmp eq ptr %i.sp, %i.sq
  br i1 %i.sr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336: ; preds = %bb.dq
  %i.ss = load i64, ptr %i.sq, align 8, !tbaa !23
  %i.st = add i64 %i.ss, 1
  call void @_ZdlPvm(ptr noundef %i.sp, i64 noundef %i.st) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336
  %i.su = load ptr, ptr %16, align 8, !tbaa !29   ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.sw = icmp eq ptr %i.su, %i.sv
  br i1 %i.sw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338
  %i.sx = load i64, ptr %i.sv, align 8, !tbaa !23
  %i.sy = add i64 %i.sx, 1
  call void @_ZdlPvm(ptr noundef %i.su, i64 noundef %i.sy) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %bb.jn

bb.dr:                                            ; preds = %bb.dn
  %i.sz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347

bb.ds:                                            ; preds = %bb.do
  %i.ta = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344

bb.dt:                                            ; preds = %bb.dp
  %i.tb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tc = load ptr, ptr %15, align 8, !tbaa !29   ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.te = icmp eq ptr %i.tc, %i.td
  br i1 %i.te, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342: ; preds = %bb.dt
  %i.tf = load i64, ptr %i.td, align 8, !tbaa !23
  %i.tg = add i64 %i.tf, 1
  call void @_ZdlPvm(ptr noundef %i.tc, i64 noundef %i.tg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344: ; preds = %bb.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342, %bb.ds
  %.pn233 = phi { ptr, i32 } [ %i.ta, %bb.ds ], [ %i.tb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342 ], [ %i.tb, %bb.dt ] ; 2 uses
  %i.th = load ptr, ptr %16, align 8, !tbaa !29   ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.tj = icmp eq ptr %i.th, %i.ti
  br i1 %i.tj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344
  %i.tk = load i64, ptr %i.ti, align 8, !tbaa !23
  %i.tl = add i64 %i.tk, 1
  call void @_ZdlPvm(ptr noundef %i.th, i64 noundef %i.tl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345, %bb.dr
  %.pn233.pn = phi { ptr, i32 } [ %i.sz, %bb.dr ], [ %.pn233, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345 ], [ %.pn233, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %.body258

bb.du:                                            ; preds = %bb.df
  invoke void @_ZNK8V3Number8toStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.jn unwind label %bb.h

bb.dv:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.37, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.dw unwind label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %bb.jn

bb.dx:                                            ; preds = %bb.dv
  %i.tm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %.body258

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.tn = phi i32 [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ], [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ], [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ], [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ], [ 104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i ]
  %i.to = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.tp = load i32, ptr %i.to, align 8, !tbaa !41
  %.fr.i.i = freeze i32 %i.tp                     ; 2 uses
  %i.tq = add i32 %.fr.i.i, -1                    ; 5 uses
  %i.tr = load i64, ptr %i.u, align 8
  %i.ts = icmp ne i64 %i.tr, 0
  %or.cond975.not = select i1 %i.r, i1 true, i1 %i.ts
  br i1 %or.cond975.not, label %.preheader999, label %.critedge18

.preheader999:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread
  %i.tt = icmp samesign ult i32 %.fr.i.i, 129
  %.not2231036 = icmp eq i32 %i.tq, 0
  br i1 %.not2231036, label %.critedge18, label %.lr.ph1038

.lr.ph1038:                                       ; preds = %.preheader999
  %i.tu = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.tv = load i8, ptr %i.tu, align 4, !tbaa !42
  %.fr1054 = freeze i8 %i.tv
  %i.tw = add i8 %.fr1054, -3
  %spec.select.i.i = icmp ult i8 %i.tw, -2
  br i1 %spec.select.i.i, label %.critedge18, label %.lr.ph1038.split.preheader

.lr.ph1038.split.preheader:                       ; preds = %.lr.ph1038
  %smin = call i32 @llvm.smin.i32(i32 %i.tq, i32 -1)
  br label %.lr.ph1038.split

.lr.ph1038.split:                                 ; preds = %.lr.ph1038.split.preheader, %_ZNK8V3Number6bitIs0Ei.exit.thread
  %.01591037 = phi i32 [ %i.uj, %_ZNK8V3Number6bitIs0Ei.exit.thread ], [ %i.tq, %.lr.ph1038.split.preheader ] ; 5 uses
  %i.tx = icmp slt i32 %.01591037, 0
  br i1 %i.tx, label %.critedge18, label %_ZNK8V3Number6bitIs0Ei.exit

_ZNK8V3Number6bitIs0Ei.exit:                      ; preds = %.lr.ph1038.split
  %i.ty = load ptr, ptr %1, align 8
  %spec.select.i9.i = select i1 %i.tt, ptr %1, ptr %i.ty
  %i.tz = lshr i32 %.01591037, 5
  %i.ua = zext nneg i32 %i.tz to i64
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i9.i, i64 %i.ua ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.ub, align 4, !tbaa !66
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ub, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !66
  %i.uc = or i32 %.sroa.4.0.copyload.i, %.sroa.0.0.copyload.i
  %i.ud = zext i32 %i.uc to i64
  %i.ue = and i32 %.01591037, 31
  %i.uf = zext nneg i32 %i.ue to i64
  %i.ug = shl nuw nsw i64 1, %i.uf
  %i.uh = and i64 %i.ug, %i.ud
  %i.ui = icmp eq i64 %i.uh, 0
  br i1 %i.ui, label %_ZNK8V3Number6bitIs0Ei.exit.thread, label %.critedge18

_ZNK8V3Number6bitIs0Ei.exit.thread:               ; preds = %_ZNK8V3Number6bitIs0Ei.exit
  %i.uj = add nsw i32 %.01591037, -1              ; 2 uses
  %.not223 = icmp eq i32 %i.uj, 0
  br i1 %.not223, label %.critedge18, label %.lr.ph1038.split, !llvm.loop !250

bb.dy:                                            ; preds = %bb.ei, %bb.eh, %bb.ef, %bb.ec
  %i.uk = landingpad { ptr, i32 }
          cleanup
  br label %.body258

.critedge18:                                      ; preds = %_ZNK8V3Number6bitIs0Ei.exit.thread, %_ZNK8V3Number6bitIs0Ei.exit, %.lr.ph1038.split, %.preheader999, %.lr.ph1038, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread
  %.1 = phi i32 [ %i.tq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread ], [ 0, %.preheader999 ], [ %i.tq, %.lr.ph1038 ], [ %smin, %.lr.ph1038.split ], [ 0, %_ZNK8V3Number6bitIs0Ei.exit.thread ], [ %.01591037, %_ZNK8V3Number6bitIs0Ei.exit ] ; 4 uses
  switch i32 %i.tn, label %.preheader993 [
    i32 98, label %.preheader994
    i32 111, label %.preheader998
  ]

.preheader994:                                    ; preds = %.critedge18
  %i.ul = icmp sgt i32 %.1, -1
  br i1 %i.ul, label %.lr.ph1048, label %.loopexit992

.lr.ph1048:                                       ; preds = %.preheader994
  %i.um = getelementptr inbounds nuw i8, ptr %1, i64 36
  br label %bb.dz

bb.dz:                                            ; preds = %.lr.ph1048, %bb.ej
  %.21046 = phi i32 [ %.1, %.lr.ph1048 ], [ %i.ye, %bb.ej ] ; 9 uses
  %i.un = load i8, ptr %i.um, align 4, !tbaa !42
  %i.uo = add i8 %i.un, -3
  %spec.select.i.i351 = icmp ult i8 %i.uo, -2
  br i1 %spec.select.i.i351, label %_ZNK8V3Number6bitIsZEi.exit.thread, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.up = load i32, ptr %i.to, align 8, !tbaa !41
  %.fr.i.i353 = freeze i32 %i.up                  ; 9 uses
  %.not.i354 = icmp slt i32 %.21046, %.fr.i.i353
  br i1 %.not.i354, label %_ZNK8V3Number6bitIs0Ei.exit365, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.uq = icmp slt i32 %.fr.i.i353, 1
  br i1 %i.uq, label %_ZNK8V3Number6bitIs0Ei.exit365.thread, label %tailrecurse.preheader.i.i355

tailrecurse.preheader.i.i355:                     ; preds = %bb.eb
  %i.ur = add nsw i32 %.fr.i.i353, -1             ; 2 uses
  %i.us = icmp samesign ult i32 %.fr.i.i353, 129
  %i.ut = load ptr, ptr %1, align 8               ; 2 uses
  %spec.select.i7.i.i356 = select i1 %i.us, ptr %1, ptr %i.ut
  %i.uu = lshr i32 %i.ur, 5
  %i.uv = zext nneg i32 %i.uu to i64
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i7.i.i356, i64 %i.uv
  %.sroa.3.0..sroa_idx.i.i357 = getelementptr inbounds nuw i8, ptr %i.uw, i64 4
  %.sroa.3.0.copyload.i.i358 = load i32, ptr %.sroa.3.0..sroa_idx.i.i357, align 4, !tbaa !66
  %i.ux = zext i32 %.sroa.3.0.copyload.i.i358 to i64
  %i.uy = and i32 %i.ur, 31
  %i.uz = zext nneg i32 %i.uy to i64
  %i.va = shl nuw nsw i64 1, %i.uz
  %i.vb = and i64 %i.va, %i.ux
  %i.vc = icmp eq i64 %i.vb, 0
  br i1 %i.vc, label %_ZNK8V3Number6bitIs0Ei.exit365.thread, label %bb.ed

_ZNK8V3Number6bitIs0Ei.exit365:                   ; preds = %bb.ea
  %i.vd = icmp samesign ult i32 %.fr.i.i353, 129
  %i.ve = load ptr, ptr %1, align 8               ; 2 uses
  %spec.select.i9.i361 = select i1 %i.vd, ptr %1, ptr %i.ve
  %i.vf = lshr i32 %.21046, 5
  %i.vg = zext nneg i32 %i.vf to i64
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i9.i361, i64 %i.vg ; 2 uses
  %.sroa.0.0.copyload.i362 = load i32, ptr %i.vh, align 4, !tbaa !66
  %.sroa.4.0..sroa_idx.i363 = getelementptr inbounds nuw i8, ptr %i.vh, i64 4
  %.sroa.4.0.copyload.i364 = load i32, ptr %.sroa.4.0..sroa_idx.i363, align 4, !tbaa !66
  %i.vi = or i32 %.sroa.4.0.copyload.i364, %.sroa.0.0.copyload.i362
  %i.vj = zext i32 %i.vi to i64
  %i.vk = and i32 %.21046, 31
  %i.vl = zext nneg i32 %i.vk to i64
  %i.vm = shl nuw nsw i64 1, %i.vl
  %i.vn = and i64 %i.vm, %i.vj
  %i.vo = icmp eq i64 %i.vn, 0
  br i1 %i.vo, label %_ZNK8V3Number6bitIs0Ei.exit365.thread, label %bb.ed

_ZNK8V3Number6bitIs0Ei.exit365.thread:            ; preds = %bb.eb, %tailrecurse.preheader.i.i355, %_ZNK8V3Number6bitIs0Ei.exit365
  %i.vp = load i64, ptr %i.aw, align 8, !tbaa !20 ; 4 uses
  %i.vq = add i64 %i.vp, 1                        ; 2 uses
  %i.vr = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.vs = icmp eq ptr %i.vr, %i.av
  br i1 %i.vs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i369, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i366

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i369: ; preds = %_ZNK8V3Number6bitIs0Ei.exit365.thread
  %i.vt = icmp ult i64 %i.vp, 16
  call void @llvm.assume(i1 %i.vt)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i367

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i366: ; preds = %_ZNK8V3Number6bitIs0Ei.exit365.thread
  %i.vu = load i64, ptr %i.av, align 8, !tbaa !23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i367

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i367: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i366, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i369
  %i.vv = phi i64 [ %i.vu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i366 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i369 ]
  %i.vw = icmp ugt i64 %i.vq, %i.vv
  br i1 %i.vw, label %bb.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit371

bb.ec:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i367
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.vp, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc370 unwind label %bb.dy

.noexc370:                                        ; preds = %bb.ec
  %.pre.i.i368 = load ptr, ptr %6, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit371

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit371: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i367, %.noexc370
  %i.vx = phi ptr [ %.pre.i.i368, %.noexc370 ], [ %i.vr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i367 ]
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 %i.vp
  store i8 48, ptr %i.vy, align 1, !tbaa !23
  br label %bb.ej

bb.ed:                                            ; preds = %_ZNK8V3Number6bitIs0Ei.exit365, %tailrecurse.preheader.i.i355
  %i.vz = phi ptr [ %i.ve, %_ZNK8V3Number6bitIs0Ei.exit365 ], [ %i.ut, %tailrecurse.preheader.i.i355 ] ; 2 uses
  %.not.i374 = icmp samesign ult i32 %.21046, %.fr.i.i353 ; 2 uses
  br i1 %.not.i374, label %_ZNK12V3NumberData3numEv.exit.i376, label %tailrecurse.preheader.i

_ZNK12V3NumberData3numEv.exit.i376:               ; preds = %bb.ed
  %i.wa = icmp samesign ult i32 %.fr.i.i353, 129
  %spec.select.i10.i = select i1 %i.wa, ptr %1, ptr %i.vz
  %i.wb = lshr i32 %.21046, 5
  %i.wc = zext nneg i32 %i.wb to i64
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i10.i, i64 %i.wc ; 2 uses
  %.sroa.0.0.copyload.i377 = load i32, ptr %i.wd, align 4, !tbaa !66
  %i.we = zext i32 %.sroa.0.0.copyload.i377 to i64
  %i.wf = and i32 %.21046, 31
  %i.wg = zext nneg i32 %i.wf to i64
  %i.wh = shl nuw nsw i64 1, %i.wg                ; 2 uses
  %i.wi = and i64 %i.wh, %i.we
  %.not7.i = icmp eq i64 %i.wi, 0
  br i1 %.not7.i, label %tailrecurse.preheader.i, label %_ZNK8V3Number6bitIs1Ei.exit

_ZNK8V3Number6bitIs1Ei.exit:                      ; preds = %_ZNK12V3NumberData3numEv.exit.i376
  %.sroa.4.0..sroa_idx.i378 = getelementptr inbounds nuw i8, ptr %i.wd, i64 4
  %.sroa.4.0.copyload.i379 = load i32, ptr %.sroa.4.0..sroa_idx.i378, align 4, !tbaa !66
  %i.wj = zext i32 %.sroa.4.0.copyload.i379 to i64
  %i.wk = and i64 %i.wh, %i.wj
  %.not8.i = icmp eq i64 %i.wk, 0
  br i1 %.not8.i, label %bb.ee, label %tailrecurse.preheader.i

bb.ee:                                            ; preds = %_ZNK8V3Number6bitIs1Ei.exit
  %i.wl = load i64, ptr %i.aw, align 8, !tbaa !20 ; 4 uses
  %i.wm = add i64 %i.wl, 1                        ; 2 uses
  %i.wn = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.wo = icmp eq ptr %i.wn, %i.av
  br i1 %i.wo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i383, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i380

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i383: ; preds = %bb.ee
  %i.wp = icmp ult i64 %i.wl, 16
  call void @llvm.assume(i1 %i.wp)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i381

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i380: ; preds = %bb.ee
  %i.wq = load i64, ptr %i.av, align 8, !tbaa !23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i381

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i381: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i380, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i383
  %i.wr = phi i64 [ %i.wq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i380 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i383 ]
  %i.ws = icmp ugt i64 %i.wm, %i.wr
  br i1 %i.ws, label %bb.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit385

bb.ef:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i381
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.wl, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc384 unwind label %bb.dy

.noexc384:                                        ; preds = %bb.ef
  %.pre.i.i382 = load ptr, ptr %6, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit385

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit385: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i381, %.noexc384
  %i.wt = phi ptr [ %.pre.i.i382, %.noexc384 ], [ %i.wn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i381 ]
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 %i.wl
  store i8 49, ptr %i.wu, align 1, !tbaa !23
  br label %bb.ej

tailrecurse.preheader.i:                          ; preds = %bb.ed, %_ZNK12V3NumberData3numEv.exit.i376, %_ZNK8V3Number6bitIs1Ei.exit
  %i.wv = add nsw i32 %.fr.i.i353, -1
  %spec.select.i = select i1 %.not.i374, i32 %.21046, i32 %i.wv ; 2 uses
  %i.ww = icmp samesign ult i32 %.fr.i.i353, 129
  %spec.select.i9.i387 = select i1 %i.ww, ptr %1, ptr %i.vz
  %i.wx = lshr i32 %spec.select.i, 5
  %i.wy = zext nneg i32 %i.wx to i64
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i9.i387, i64 %i.wy ; 2 uses
  %.sroa.0.0.copyload.i388 = load i32, ptr %i.wz, align 4, !tbaa !66
  %i.xa = xor i32 %.sroa.0.0.copyload.i388, -1
  %i.xb = zext i32 %i.xa to i64
  %i.xc = and i32 %spec.select.i, 31
  %i.xd = zext nneg i32 %i.xc to i64
  %i.xe = shl nuw nsw i64 1, %i.xd                ; 2 uses
  %i.xf = and i64 %i.xe, %i.xb
  %.not7.i389 = icmp eq i64 %i.xf, 0
  br i1 %.not7.i389, label %_ZNK8V3Number6bitIsZEi.exit.thread, label %_ZNK8V3Number6bitIsZEi.exit

_ZNK8V3Number6bitIsZEi.exit:                      ; preds = %tailrecurse.preheader.i
  %.sroa.4.0..sroa_idx.i390 = getelementptr inbounds nuw i8, ptr %i.wz, i64 4
  %.sroa.4.0.copyload.i391 = load i32, ptr %.sroa.4.0..sroa_idx.i390, align 4, !tbaa !66
  %i.xg = zext i32 %.sroa.4.0.copyload.i391 to i64
  %i.xh = and i64 %i.xe, %i.xg
  %.not = icmp eq i64 %i.xh, 0
  br i1 %.not, label %_ZNK8V3Number6bitIsZEi.exit.thread, label %bb.eg

bb.eg:                                            ; preds = %_ZNK8V3Number6bitIsZEi.exit
  %i.xi = load i64, ptr %i.aw, align 8, !tbaa !20 ; 4 uses
  %i.xj = add i64 %i.xi, 1                        ; 2 uses
  %i.xk = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.xl = icmp eq ptr %i.xk, %i.av
  br i1 %i.xl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i396, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i393

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i396: ; preds = %bb.eg
  %i.xm = icmp ult i64 %i.xi, 16
end_hunk_1
begin_hunk_2_@_ZN8V3Number6opMulSERKS_S1_:bb.a
bb.ak:                                            ; preds = %bb.aj
  %i.gp = load ptr, ptr %3, align 8, !tbaa !57    ; 3 uses
  %.not.i.i.i.i.i.i.i88 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i.i.i.i88, label %_ZN8V3NumberD2Ev.exit91, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !60
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = ptrtoint ptr %i.gp to i64
  %i.gu = sub i64 %i.gs, %i.gt
  call void @_ZdlPvm(ptr noundef nonnull %i.gp, i64 noundef %i.gu) #31
  br label %_ZN8V3NumberD2Ev.exit91

_ZN8V3NumberD2Ev.exit91:                          ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i89, %bb.aj, %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.aq

bb.am:                                            ; preds = %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.eo, %bb.z ], [ %i.en, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.am ], [ %i.bq, %bb.r ]
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #30
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.an ], [ %i.bp, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.m
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ao ], [ %i.as, %bb.m ]
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.aq:                                            ; preds = %_ZN8V3NumberD2Ev.exit91, %bb.i
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number5opDivERKS_S1_(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %0, %2
  %.not17 = or i1 %i.a, %i.b
  br i1 %.not17, label %bb.b, label %bb.c, !prof !156

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2117) ; 0 uses
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
  %i.h = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2118) ; 0 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.74)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.l) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.n = load i8, ptr %i.m, align 4, !tbaa !42
  %.not18 = icmp eq i8 %i.n, 1
  br i1 %.not18, label %bb.g, label %bb.f, !prof !43

bb.f:                                             ; preds = %bb.e
  %i.o = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2118) ; 0 uses
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
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.w = tail call noundef zeroext i1 @_ZNK8V3Number8isEqZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number18setAllBitsXRemovedEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !41
  %i.aa = icmp slt i32 %i.z, 65
  br i1 %i.aa, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ab = tail call noundef i64 @_ZNK8V3Number7toUQuadEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.ac = tail call noundef i64 @_ZNK8V3Number7toUQuadEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
  %i.ad = udiv i64 %i.ab, %i.ac
  %i.ae = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7setQuadEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ad) ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.af = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number12opModDivGutsERKS_S1_b(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, i1 noundef zeroext false) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k, %bb.i
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number12opModDivGutsERKS_S1_b(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca [129 x i32], align 16             ; 15 uses
  %i.b = alloca [129 x i32], align 16             ; 15 uses
  %14 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = icmp eq ptr %0, %1
  %i.d = icmp eq ptr %0, %2
  %.not206 = or i1 %i.c, %i.d
  br i1 %.not206, label %bb.b, label %bb.c, !prof !156

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2188) ; 0 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.73)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.g) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 9 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !42
  %.not = icmp eq i8 %i.i, 1
  br i1 %.not, label %bb.e, label %bb.d, !prof !43

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2189) ; 0 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.74)
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.n) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 5 uses
  %i.p = load i8, ptr %i.o, align 4, !tbaa !42
  %.not207 = icmp eq i8 %i.p, 1
  br i1 %.not207, label %bb.g, label %bb.f, !prof !43

bb.f:                                             ; preds = %bb.e
  %i.q = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2189) ; 0 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.74)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %2)
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.u) #32
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.v = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7setZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %.fr.i.i.i = freeze i32 %i.x                    ; 12 uses
  %i.y = add nsw i32 %.fr.i.i.i, 31
  %i.z = sdiv i32 %i.y, 32                        ; 4 uses
  %i.aa = icmp sgt i32 %.fr.i.i.i, 0              ; 2 uses
  br i1 %i.aa, label %.lr.ph.i, label %_ZNK8V3Number12mostSetBitP1Ev.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.ab = icmp samesign ult i32 %.fr.i.i.i, 129
  %i.ac = load i8, ptr %i.h, align 4, !tbaa !42
  %i.ad = add i8 %i.ac, -3
  %spec.select.i.i.i = icmp ult i8 %i.ad, -2
  %i.ae = load ptr, ptr %1, align 8
  %spec.select.i9.i.i = select i1 %i.ab, ptr %1, ptr %i.ae
  br i1 %spec.select.i.i.i, label %_ZNK8V3Number12mostSetBitP1Ev.exit, label %_ZNK12V3NumberData3numEv.exit.i.i

_ZNK12V3NumberData3numEv.exit.i.i:                ; preds = %.lr.ph.i, %_ZNK8V3Number6bitIs0Ei.exit.backedge.i
  %.06.in11.i = phi i32 [ %.0612.i, %_ZNK8V3Number6bitIs0Ei.exit.backedge.i ], [ %.fr.i.i.i, %.lr.ph.i ] ; 3 uses
  %.0612.i = add nsw i32 %.06.in11.i, -1          ; 3 uses
  %i.af = lshr i32 %.0612.i, 5
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i9.i.i, i64 %i.ag ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ah, align 4, !tbaa !66
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !66
  %i.ai = or i32 %.sroa.4.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  %i.aj = zext i32 %i.ai to i64
  %i.ak = and i32 %.0612.i, 31
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl nuw nsw i64 1, %i.al
  %i.an = and i64 %i.am, %i.aj
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_ZNK8V3Number6bitIs0Ei.exit.backedge.i, label %_ZNK8V3Number12mostSetBitP1Ev.exit

_ZNK8V3Number6bitIs0Ei.exit.backedge.i:           ; preds = %_ZNK12V3NumberData3numEv.exit.i.i
  %i.ap = icmp samesign ugt i32 %.06.in11.i, 1
  br i1 %i.ap, label %_ZNK12V3NumberData3numEv.exit.i.i, label %_ZNK8V3Number12mostSetBitP1Ev.exit, !llvm.loop !341

_ZNK8V3Number12mostSetBitP1Ev.exit:               ; preds = %_ZNK12V3NumberData3numEv.exit.i.i, %_ZNK8V3Number6bitIs0Ei.exit.backedge.i, %bb.g, %.lr.ph.i
  %24 = phi i32 [ 0, %bb.g ], [ %.fr.i.i.i, %.lr.ph.i ], [ 0, %_ZNK8V3Number6bitIs0Ei.exit.backedge.i ], [ %.06.in11.i, %_ZNK12V3NumberData3numEv.exit.i.i ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !41
  %.fr.i.i.i244 = freeze i32 %i.ar                ; 7 uses
  %i.as = icmp sgt i32 %.fr.i.i.i244, 0
  br i1 %i.as, label %.lr.ph.i245, label %_ZNK8V3Number12mostSetBitP1Ev.exit260.thread

.lr.ph.i245:                                      ; preds = %_ZNK8V3Number12mostSetBitP1Ev.exit
  %i.at = icmp samesign ult i32 %.fr.i.i.i244, 129
  %i.au = load i8, ptr %i.o, align 4, !tbaa !42   ; 3 uses
  %i.av = add i8 %i.au, -3
  %spec.select.i.i.i246 = icmp ult i8 %i.av, -2
  %i.aw = load ptr, ptr %2, align 8               ; 2 uses
  %spec.select.i9.i.i247 = select i1 %i.at, ptr %2, ptr %i.aw
  br i1 %spec.select.i.i.i246, label %_ZNK8V3Number12mostSetBitP1Ev.exit260, label %_ZNK12V3NumberData3numEv.exit.i.i253

_ZNK12V3NumberData3numEv.exit.i.i253:             ; preds = %.lr.ph.i245, %_ZNK8V3Number6bitIs0Ei.exit.backedge.i257
  %.06.in11.i250 = phi i32 [ %.0612.i251, %_ZNK8V3Number6bitIs0Ei.exit.backedge.i257 ], [ %.fr.i.i.i244, %.lr.ph.i245 ] ; 3 uses
  %.0612.i251 = add nsw i32 %.06.in11.i250, -1    ; 3 uses
  %i.ax = lshr i32 %.0612.i251, 5
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i9.i.i247, i64 %i.ay ; 2 uses
  %.sroa.0.0.copyload.i.i254 = load i32, ptr %i.az, align 4, !tbaa !66
  %.sroa.4.0..sroa_idx.i.i255 = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %.sroa.4.0.copyload.i.i256 = load i32, ptr %.sroa.4.0..sroa_idx.i.i255, align 4, !tbaa !66
  %i.ba = or i32 %.sroa.4.0.copyload.i.i256, %.sroa.0.0.copyload.i.i254
  %i.bb = zext i32 %i.ba to i64
  %i.bc = and i32 %.0612.i251, 31
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = shl nuw nsw i64 1, %i.bd
  %i.bf = and i64 %i.be, %i.bb
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_ZNK8V3Number6bitIs0Ei.exit.backedge.i257, label %_ZNK8V3Number12mostSetBitP1Ev.exit260

_ZNK8V3Number6bitIs0Ei.exit.backedge.i257:        ; preds = %_ZNK12V3NumberData3numEv.exit.i.i253
  %i.bh = icmp samesign ugt i32 %.06.in11.i250, 1
  br i1 %i.bh, label %_ZNK12V3NumberData3numEv.exit.i.i253, label %_ZNK8V3Number12mostSetBitP1Ev.exit260.thread, !llvm.loop !341

_ZNK8V3Number12mostSetBitP1Ev.exit260:            ; preds = %_ZNK12V3NumberData3numEv.exit.i.i253, %.lr.ph.i245
  %25 = phi i32 [ %.fr.i.i.i244, %.lr.ph.i245 ], [ %.06.in11.i250, %_ZNK12V3NumberData3numEv.exit.i.i253 ] ; 7 uses
  %i.bi = icmp eq i32 %24, 0
  br i1 %i.bi, label %_ZNK8V3Number12mostSetBitP1Ev.exit260.thread, label %bb.z, !prof !388

_ZNK8V3Number12mostSetBitP1Ev.exit260.thread:     ; preds = %_ZNK8V3Number6bitIs0Ei.exit.backedge.i257, %_ZNK8V3Number12mostSetBitP1Ev.exit, %_ZNK8V3Number12mostSetBitP1Ev.exit260
  %i.bj = tail call noundef i32 @_ZL5debugv()
  %i.bk = icmp sgt i32 %i.bj, 8
  br i1 %i.bk, label %bb.h, label %bb.dh, !prof !156

bb.h:                                             ; preds = %_ZNK8V3Number12mostSetBitP1Ev.exit260.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.82, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull @.str.15, i32 noundef 2197)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bm = load ptr, ptr %5, align 8, !tbaa !29
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !20
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.bm, i64 noundef %i.bo)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.r ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.i
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.86, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit261 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit261: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.j unwind label %bb.r       ; 2 uses

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit261
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull @.str.84, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit262 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit262: ; preds = %bb.j
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.k unwind label %bb.r       ; 2 uses

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit262
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef nonnull @.str.87, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit263 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit263: ; preds = %bb.k
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.l unwind label %bb.r       ; 0 uses

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit263
  %i.bw = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !23
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.n unwind label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !20 ; 2 uses
  %i.cd = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 %i.cc
  %i.cf = getelementptr i8, ptr %i.ce, i64 -1
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !23
  %.not239 = icmp eq i8 %i.cg, 10
  %i.ch = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i265, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i265: ; preds = %bb.n
  %i.ck = icmp ult i64 %i.cc, 16
  call void @llvm.assume(i1 %i.ck)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264: ; preds = %bb.n
  %i.cl = load i64, ptr %i.ci, align 8, !tbaa !23
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cm) #31
  %.pre531 = load ptr, ptr %6, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i265, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264
  %i.cn = phi ptr [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i265 ], [ %.pre531, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !23
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br i1 %.not239, label %bb.u, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext 10)
          to label %bb.u unwind label %bb.p       ; 0 uses

bb.p:                                             ; preds = %bb.h, %bb.o
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272

bb.r:                                             ; preds = %bb.k, %bb.j, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit263, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit262, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit261
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cw = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270: ; preds = %bb.r
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !23
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270, %bb.q
  %.pn235 = phi { ptr, i32 } [ %i.cu, %bb.q ], [ %i.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270 ], [ %i.cv, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.y

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275

bb.t:                                             ; preds = %bb.m
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.dd = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273: ; preds = %bb.t
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !23
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273, %bb.s
  %.pn237 = phi { ptr, i32 } [ %i.db, %bb.s ], [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273 ], [ %i.dc, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.y

bb.u:                                             ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.di = load ptr, ptr %8, align 8, !tbaa !29
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !20
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.di, i64 noundef %i.dk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit276 unwind label %bb.x ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit276: ; preds = %bb.v
  %i.dm = load ptr, ptr %8, align 8, !tbaa !29    ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit276
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !23
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit276, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.dh

bb.w:                                             ; preds = %bb.u
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

bb.x:                                             ; preds = %bb.v
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = load ptr, ptr %8, align 8, !tbaa !29    ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280: ; preds = %bb.x
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !23
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280, %bb.w
  %.pn240 = phi { ptr, i32 } [ %i.dr, %bb.w ], [ %i.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280 ], [ %i.ds, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, %bb.p
  %.pn240.pn = phi { ptr, i32 } [ %.pn240, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282 ], [ %i.ct, %bb.p ], [ %.pn237, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275 ], [ %.pn235, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.di

bb.z:                                             ; preds = %_ZNK8V3Number12mostSetBitP1Ev.exit260
  %i.dy = add i32 %24, 31                         ; 3 uses
  %i.dz = lshr i32 %i.dy, 5                       ; 4 uses
  %i.ea = add nsw i32 %25, 31
  %i.eb = sdiv i32 %i.ea, 32                      ; 8 uses
  %i.ec = icmp ult i32 %25, 33
  br i1 %i.ec, label %.preheader, label %bb.bb

.preheader:                                       ; preds = %bb.z
  %.not469 = icmp eq i32 %i.dz, 0
  br i1 %.not469, label %._crit_edge466, label %.lr.ph465

.lr.ph465:                                        ; preds = %.preheader
  %i.ed = load i8, ptr %i.h, align 4, !tbaa !42
  %i.ee = add i8 %i.ed, -1
  %spec.select.i.i = icmp ult i8 %i.ee, 2
  %i.ef = icmp slt i32 %.fr.i.i.i, 129
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.eh = icmp slt i32 %.fr.i.i.i244, 129         ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 32
  br i1 %spec.select.i.i, label %.lr.ph465.split, label %bb.aa, !prof !43

.lr.ph465.split:                                  ; preds = %.lr.ph465
  %i.ej = add i8 %i.au, -1
  %spec.select.i.i283 = icmp ult i8 %i.ej, 2
  br i1 %spec.select.i.i283, label %.lr.ph465.split.split, label %bb.ab, !prof !43

.lr.ph465.split.split:                            ; preds = %.lr.ph465.split
  %i.ek = load i8, ptr %i.eg, align 4, !tbaa !42
  %i.el = add i8 %i.ek, -1
  %spec.select.i.i286 = icmp ult i8 %i.el, 2
  br i1 %spec.select.i.i286, label %.lr.ph465.split.split.split, label %bb.ac, !prof !43

.lr.ph465.split.split.split:                      ; preds = %.lr.ph465.split.split
  %i.em = load i32, ptr %i.ei, align 8, !tbaa !41
  %i.en = icmp slt i32 %i.em, 129                 ; 2 uses
  %i.eo = lshr i32 %i.dy, 5
  %i.ep = zext nneg i32 %i.eo to i64
  %.pre529 = load ptr, ptr %0, align 8
  br label %_ZNK12V3NumberData3numEv.exit

._crit_edge466:                                   ; preds = %_ZNK12V3NumberData3numEv.exit, %.preheader
  %.0176.lcssa = phi i64 [ 0, %.preheader ], [ %i.fn, %_ZNK12V3NumberData3numEv.exit ] ; 2 uses
  %i.eq = tail call noundef i32 @_ZL5debugv()
  %i.er = icmp sgt i32 %i.eq, 8
  br i1 %i.er, label %bb.ad, label %bb.ax, !prof !156

_ZNK12V3NumberData3numEv.exit:                    ; preds = %.lr.ph465.split.split.split, %_ZNK12V3NumberData3numEv.exit
  %i.es = phi ptr [ %.pre529, %.lr.ph465.split.split.split ], [ %i.ff, %_ZNK12V3NumberData3numEv.exit ]
  %i.et = phi ptr [ %i.aw, %.lr.ph465.split.split.split ], [ %i.fj, %_ZNK12V3NumberData3numEv.exit ]
  %indvars.iv522 = phi i64 [ %i.ep, %.lr.ph465.split.split.split ], [ %indvars.iv.next523, %_ZNK12V3NumberData3numEv.exit ] ; 2 uses
  %.0176463 = phi i64 [ 0, %.lr.ph465.split.split.split ], [ %i.fn, %_ZNK12V3NumberData3numEv.exit ]
  %indvars.iv.next523 = add nsw i64 %indvars.iv522, -1 ; 4 uses
  %i.eu = shl i64 %.0176463, 32
  %i.ev = load ptr, ptr %1, align 8
  %spec.select.i = select i1 %i.ef, ptr %1, ptr %i.ev
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %indvars.iv.next523
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !44
  %i.ey = zext i32 %i.ex to i64
  %i.ez = or disjoint i64 %i.eu, %i.ey            ; 2 uses
  %spec.select.i284 = select i1 %i.eh, ptr %2, ptr %i.et
  %i.fa = load i32, ptr %spec.select.i284, align 4, !tbaa !44
  %i.fb = zext i32 %i.fa to i64
  %i.fc = udiv i64 %i.ez, %i.fb
  %i.fd = trunc i64 %i.fc to i32
  %spec.select.i287 = select i1 %i.en, ptr %0, ptr %i.es
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i287, i64 %indvars.iv.next523
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !44
  %i.ff = load ptr, ptr %0, align 8               ; 2 uses
  %spec.select.i289 = select i1 %i.en, ptr %0, ptr %i.ff
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i289, i64 %indvars.iv.next523
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !44
  %i.fi = zext i32 %i.fh to i64
  %i.fj = load ptr, ptr %2, align 8               ; 2 uses
  %spec.select.i292 = select i1 %i.eh, ptr %2, ptr %i.fj
  %i.fk = load i32, ptr %spec.select.i292, align 4, !tbaa !44
  %i.fl = zext i32 %i.fk to i64
  %i.fm = mul nuw i64 %i.fl, %i.fi
  %i.fn = sub i64 %i.ez, %i.fm                    ; 2 uses
  %i.fo = icmp samesign ugt i64 %indvars.iv522, 1
  br i1 %i.fo, label %_ZNK12V3NumberData3numEv.exit, label %._crit_edge466, !llvm.loop !389

bb.aa:                                            ; preds = %.lr.ph465
  %i.fp = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.fq = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.fr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.fq, ptr noundef nonnull @.str.118)
  %i.fs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.fr, ptr noundef nonnull align 1 dereferenceable(1) %i.h)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.fs) #32
  unreachable

bb.ab:                                            ; preds = %.lr.ph465.split
  %i.ft = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.fu = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.fv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.fu, ptr noundef nonnull @.str.118)
  %i.fw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.fv, ptr noundef nonnull align 1 dereferenceable(1) %i.o)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.fw) #32
  unreachable

bb.ac:                                            ; preds = %.lr.ph465.split.split
  %i.fx = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242) ; 0 uses
  %i.fy = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.fz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.fy, ptr noundef nonnull @.str.118)
  %i.ga = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.fz, ptr noundef nonnull align 1 dereferenceable(1) %i.eg)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.ga) #32
  unreachable

bb.ad:                                            ; preds = %._crit_edge466
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9)
  %i.gb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.82, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294 unwind label %bb.an ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294: ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull @.str.15, i32 noundef 2215)
          to label %bb.ae unwind label %bb.ao

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294
  %i.gc = load ptr, ptr %10, align 8, !tbaa !29
  %i.gd = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !20
  %i.gf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %i.gc, i64 noundef %i.ge)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit295 unwind label %bb.ap ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit295: ; preds = %bb.ae
  %i.gg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gf, ptr noundef nonnull @.str.88, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit296 unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit296: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit295
  %i.gh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.gf, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.af unwind label %bb.ap     ; 2 uses

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit296
  %i.gi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gh, ptr noundef nonnull @.str.84, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit297 unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit297: ; preds = %bb.af
  %i.gj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.gh, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.ag unwind label %bb.ap     ; 2 uses

bb.ag:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit297
  %i.gk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gj, ptr noundef nonnull @.str.89, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit298 unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit298: ; preds = %bb.ag
  %i.gl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.gj, ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.ah unwind label %bb.ap     ; 4 uses

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit298
  %i.gm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gl, ptr noundef nonnull @.str.90, i64 noundef 7)
          to label %bb.ai unwind label %bb.ap     ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  %i.gn = load ptr, ptr %i.gl, align 8, !tbaa !38
  %i.go = getelementptr i8, ptr %i.gn, i64 -24
  %i.gp = load i64, ptr %i.go, align 8
  %i.gq = getelementptr inbounds i8, ptr %i.gl, i64 %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !390
  %i.gt = and i32 %i.gs, -75
  %i.gu = or disjoint i32 %i.gt, 8
  store i32 %i.gu, ptr %i.gr, align 8, !tbaa !391
  %i.gv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gl, i64 noundef %.0176.lcssa)
          to label %bb.aj unwind label %bb.ap     ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !38
  %i.gx = getelementptr i8, ptr %i.gw, i64 -24
  %i.gy = load i64, ptr %i.gx, align 8
  %i.gz = getelementptr inbounds i8, ptr %i.gv, i64 %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24 ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !390
  %i.hc = and i32 %i.hb, -75
  %i.hd = or disjoint i32 %i.hc, 2
  store i32 %i.hd, ptr %i.ha, align 8, !tbaa !391
  %i.he = load ptr, ptr %10, align 8, !tbaa !29   ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301: ; preds = %bb.aj
  %i.hh = load i64, ptr %i.hf, align 8, !tbaa !23
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hi) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(112) %9)
          to label %bb.ak unwind label %bb.aq

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(112) %9)
          to label %bb.al unwind label %bb.ar

bb.al:                                            ; preds = %bb.ak
  %i.hj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !20 ; 2 uses
  %i.hl = load ptr, ptr %11, align 8, !tbaa !29   ; 2 uses
  %i.hm = getelementptr i8, ptr %i.hl, i64 %i.hk
  %i.hn = getelementptr i8, ptr %i.hm, i64 -1
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !23
  %.not230 = icmp eq i8 %i.ho, 10
  %i.hp = load ptr, ptr %12, align 8, !tbaa !29   ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN8V3Number12opModDivGutsERKS_S1_b:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320, %bb.au
  %.pn231 = phi { ptr, i32 } [ %i.iz, %bb.au ], [ %i.ja, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320 ], [ %i.ja, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312, %bb.an
  %.pn231.pn = phi { ptr, i32 } [ %.pn231, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322 ], [ %i.ib, %bb.an ], [ %.pn228, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315 ], [ %.pn226, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.di

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, %._crit_edge466
  br i1 %3, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.jg = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7setZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ji = load i8, ptr %i.jh, align 4, !tbaa !42
  %i.jj = add i8 %i.ji, -1
  %spec.select.i.i323 = icmp ult i8 %i.jj, 2
  br i1 %spec.select.i.i323, label %_ZN12V3NumberData3numEv.exit325, label %bb.az, !prof !43

bb.az:                                            ; preds = %bb.ay
  %i.jk = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242) ; 0 uses
  %i.jl = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.jm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.jl, ptr noundef nonnull @.str.118)
  %i.jn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.jm, ptr noundef nonnull align 1 dereferenceable(1) %i.jh)
  call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.jn) #32
  unreachable

_ZN12V3NumberData3numEv.exit325:                  ; preds = %bb.ay
  %i.jo = trunc i64 %.0176.lcssa to i32
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !41
  %i.jr = icmp slt i32 %i.jq, 129
  %i.js = load ptr, ptr %0, align 8
  %spec.select.i324 = select i1 %i.jr, ptr %0, ptr %i.js
  store i32 %i.jo, ptr %spec.select.i324, align 4, !tbaa !44
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN12V3NumberData3numEv.exit325, %bb.ax
  call void @_ZN8V3Number11opCleanThisEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  br label %bb.dh

bb.bb:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  br i1 %i.aa, label %.lr.ph, label %.preheader422

.lr.ph:                                           ; preds = %bb.bb
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ju = load i8, ptr %i.jt, align 4, !tbaa !42
  %i.jv = add i8 %i.ju, -1
  %spec.select.i.i326 = icmp ult i8 %i.jv, 2
  br i1 %spec.select.i.i326, label %.lr.ph.split, label %bb.bc, !prof !43

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !41
  %.fr468 = freeze i32 %i.jx
  %i.jy = icmp slt i32 %.fr468, 129
  %smax479 = tail call i32 @llvm.smax.i32(i32 %i.z, i32 1)
  %wide.trip.count480 = zext nneg i32 %smax479 to i64 ; 4 uses
  br i1 %i.jy, label %_ZN12V3NumberData3numEv.exit328.us.preheader, label %_ZN12V3NumberData3numEv.exit328.preheader

_ZN12V3NumberData3numEv.exit328.preheader:        ; preds = %.lr.ph.split
  %xtraiter = and i64 %wide.trip.count480, 3      ; 3 uses
  %i.jz = icmp slt i32 %.fr.i.i.i, 97
  br i1 %i.jz, label %_ZN12V3NumberData3numEv.exit328.epil.preheader, label %_ZN12V3NumberData3numEv.exit328.preheader.new

_ZN12V3NumberData3numEv.exit328.preheader.new:    ; preds = %_ZN12V3NumberData3numEv.exit328.preheader
  %unroll_iter = and i64 %wide.trip.count480, 67108860
  br label %_ZN12V3NumberData3numEv.exit328

_ZN12V3NumberData3numEv.exit328.us.preheader:     ; preds = %.lr.ph.split
  %xtraiter630 = and i64 %wide.trip.count480, 7   ; 3 uses
  %i.ka = icmp slt i32 %.fr.i.i.i, 225
  br i1 %i.ka, label %_ZN12V3NumberData3numEv.exit328.us.epil.preheader, label %_ZN12V3NumberData3numEv.exit328.us.preheader.new

_ZN12V3NumberData3numEv.exit328.us.preheader.new: ; preds = %_ZN12V3NumberData3numEv.exit328.us.preheader
  %unroll_iter634 = and i64 %wide.trip.count480, 67108856
  br label %_ZN12V3NumberData3numEv.exit328.us

_ZN12V3NumberData3numEv.exit328.us:               ; preds = %_ZN12V3NumberData3numEv.exit328.us, %_ZN12V3NumberData3numEv.exit328.us.preheader.new
  %indvars.iv476 = phi i64 [ 0, %_ZN12V3NumberData3numEv.exit328.us.preheader.new ], [ %indvars.iv.next477.7, %_ZN12V3NumberData3numEv.exit328.us ] ; 9 uses
  %niter635 = phi i64 [ 0, %_ZN12V3NumberData3numEv.exit328.us.preheader.new ], [ %niter635.next.7, %_ZN12V3NumberData3numEv.exit328.us ]
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv476
  store i32 0, ptr %i.kb, align 8, !tbaa !44
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv476
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  store i32 0, ptr %i.kd, align 8, !tbaa !44
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv476
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  store i32 0, ptr %i.kf, align 8, !tbaa !44
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv476
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  store i32 0, ptr %i.kh, align 8, !tbaa !44
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv476
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 32
  store i32 0, ptr %i.kj, align 8, !tbaa !44
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv476
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 40
  store i32 0, ptr %i.kl, align 8, !tbaa !44
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv476
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 48
  store i32 0, ptr %i.kn, align 8, !tbaa !44
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv476
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 56
  store i32 0, ptr %i.kp, align 8, !tbaa !44
  %indvars.iv.next477.7 = add nuw nsw i64 %indvars.iv476, 8 ; 2 uses
  %niter635.next.7 = add i64 %niter635, 8         ; 2 uses
  %niter635.ncmp.7 = icmp eq i64 %niter635.next.7, %unroll_iter634
  br i1 %niter635.ncmp.7, label %.lr.ph434.preheader.loopexit.unr-lcssa, label %_ZN12V3NumberData3numEv.exit328.us, !llvm.loop !392

.preheader422:                                    ; preds = %bb.bb
  %.not208432 = icmp slt i32 %.fr.i.i.i, -62
  br i1 %.not208432, label %._crit_edge, label %.lr.ph434.preheader

.lr.ph434.preheader.loopexit.unr-lcssa:           ; preds = %_ZN12V3NumberData3numEv.exit328.us
  %lcmp.mod632.not = icmp eq i64 %xtraiter630, 0
  br i1 %lcmp.mod632.not, label %.lr.ph434.preheader, label %_ZN12V3NumberData3numEv.exit328.us.epil.preheader

_ZN12V3NumberData3numEv.exit328.us.epil.preheader: ; preds = %.lr.ph434.preheader.loopexit.unr-lcssa, %_ZN12V3NumberData3numEv.exit328.us.preheader
  %indvars.iv476.epil.init = phi i64 [ 0, %_ZN12V3NumberData3numEv.exit328.us.preheader ], [ %indvars.iv.next477.7, %.lr.ph434.preheader.loopexit.unr-lcssa ]
  %lcmp.mod633 = icmp ne i64 %xtraiter630, 0
  tail call void @llvm.assume(i1 %lcmp.mod633)
  br label %_ZN12V3NumberData3numEv.exit328.us.epil

_ZN12V3NumberData3numEv.exit328.us.epil:          ; preds = %_ZN12V3NumberData3numEv.exit328.us.epil, %_ZN12V3NumberData3numEv.exit328.us.epil.preheader
  %indvars.iv476.epil = phi i64 [ %indvars.iv.next477.epil, %_ZN12V3NumberData3numEv.exit328.us.epil ], [ %indvars.iv476.epil.init, %_ZN12V3NumberData3numEv.exit328.us.epil.preheader ] ; 2 uses
  %epil.iter631 = phi i64 [ %epil.iter631.next, %_ZN12V3NumberData3numEv.exit328.us.epil ], [ 0, %_ZN12V3NumberData3numEv.exit328.us.epil.preheader ]
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv476.epil
  store i32 0, ptr %i.kq, align 8, !tbaa !44
  %indvars.iv.next477.epil = add nuw nsw i64 %indvars.iv476.epil, 1
  %epil.iter631.next = add i64 %epil.iter631, 1   ; 2 uses
  %epil.iter631.cmp.not = icmp eq i64 %epil.iter631.next, %xtraiter630
  br i1 %epil.iter631.cmp.not, label %.lr.ph434.preheader, label %_ZN12V3NumberData3numEv.exit328.us.epil, !llvm.loop !393

.lr.ph434.preheader.loopexit627.unr-lcssa:        ; preds = %_ZN12V3NumberData3numEv.exit328
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph434.preheader, label %_ZN12V3NumberData3numEv.exit328.epil.preheader

_ZN12V3NumberData3numEv.exit328.epil.preheader:   ; preds = %.lr.ph434.preheader.loopexit627.unr-lcssa, %_ZN12V3NumberData3numEv.exit328.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %_ZN12V3NumberData3numEv.exit328.preheader ], [ %indvars.iv.next.3, %.lr.ph434.preheader.loopexit627.unr-lcssa ]
  %lcmp.mod629 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod629)
  br label %_ZN12V3NumberData3numEv.exit328.epil

_ZN12V3NumberData3numEv.exit328.epil:             ; preds = %_ZN12V3NumberData3numEv.exit328.epil, %_ZN12V3NumberData3numEv.exit328.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %_ZN12V3NumberData3numEv.exit328.epil ], [ %indvars.iv.epil.init, %_ZN12V3NumberData3numEv.exit328.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN12V3NumberData3numEv.exit328.epil ], [ 0, %_ZN12V3NumberData3numEv.exit328.epil.preheader ]
  %i.kr = load ptr, ptr %0, align 8
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %indvars.iv.epil
  store i32 0, ptr %i.ks, align 4, !tbaa !44
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph434.preheader, label %_ZN12V3NumberData3numEv.exit328.epil, !llvm.loop !394

.lr.ph434.preheader:                              ; preds = %.lr.ph434.preheader.loopexit627.unr-lcssa, %_ZN12V3NumberData3numEv.exit328.epil, %.lr.ph434.preheader.loopexit.unr-lcssa, %_ZN12V3NumberData3numEv.exit328.us.epil, %.preheader422
  %smax482 = tail call i32 @llvm.smax.i32(i32 %i.z, i32 0)
  %i.kt = zext nneg i32 %smax482 to i64
  %i.ku = shl nuw nsw i64 %i.kt, 2
  %i.kv = add nuw nsw i64 %i.ku, 4                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, i8 0, i64 %i.kv, i1 false), !tbaa !66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 0, i64 %i.kv, i1 false), !tbaa !66
  br label %._crit_edge

_ZN12V3NumberData3numEv.exit328:                  ; preds = %_ZN12V3NumberData3numEv.exit328, %_ZN12V3NumberData3numEv.exit328.preheader.new
  %indvars.iv = phi i64 [ 0, %_ZN12V3NumberData3numEv.exit328.preheader.new ], [ %indvars.iv.next.3, %_ZN12V3NumberData3numEv.exit328 ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN12V3NumberData3numEv.exit328.preheader.new ], [ %niter.next.3, %_ZN12V3NumberData3numEv.exit328 ]
  %i.kw = load ptr, ptr %0, align 8
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %indvars.iv
  store i32 0, ptr %i.kx, align 4, !tbaa !44
  %i.ky = load ptr, ptr %0, align 8
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %indvars.iv
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  store i32 0, ptr %i.la, align 4, !tbaa !44
  %i.lb = load ptr, ptr %0, align 8
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %indvars.iv
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  store i32 0, ptr %i.ld, align 4, !tbaa !44
  %i.le = load ptr, ptr %0, align 8
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %indvars.iv
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 24
  store i32 0, ptr %i.lg, align 4, !tbaa !44
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph434.preheader.loopexit627.unr-lcssa, label %_ZN12V3NumberData3numEv.exit328, !llvm.loop !392

bb.bc:                                            ; preds = %.lr.ph
  %i.lh = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242) ; 0 uses
  %i.li = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.lj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.li, ptr noundef nonnull @.str.118)
  %i.lk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.lj, ptr noundef nonnull align 1 dereferenceable(1) %i.jt)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.lk) #32
  unreachable

._crit_edge:                                      ; preds = %.lr.ph434.preheader, %.preheader422
  %i.ll = sub i32 0, %25
  %i.lm = and i32 %i.ll, 31                       ; 13 uses
  %.not209.not = icmp eq i32 %i.lm, 0             ; 7 uses
  %i.ln = add nsw i32 %i.eb, -1                   ; 3 uses
  %i.lo = icmp sgt i32 %25, 32
  %i.lp = add i8 %i.au, -1
  %spec.select.i.i332 = icmp ult i8 %i.lp, 2      ; 2 uses
  br i1 %i.lo, label %.lr.ph437, label %._crit_edge438

.lr.ph437:                                        ; preds = %._crit_edge
  %i.lq = sub nuw nsw i32 32, %i.lm               ; 2 uses
  br i1 %spec.select.i.i332, label %.lr.ph437.split, label %bb.be, !prof !43

.lr.ph437.split:                                  ; preds = %.lr.ph437
  %i.lr = icmp slt i32 %.fr.i.i.i244, 129
  %i.ls = load ptr, ptr %2, align 8
  %spec.select.i333 = select i1 %i.lr, ptr %2, ptr %i.ls ; 5 uses
  %i.lt = zext i32 %i.ln to i64                   ; 3 uses
  %i.lu = tail call i32 @llvm.smin.i32(i32 %i.ln, i32 1)
  %i.lv = xor i32 %i.lu, -1
  %i.lw = add i32 %i.eb, %i.lv                    ; 2 uses
  %i.lx = zext i32 %i.lw to i64
  %i.ly = add nuw nsw i64 %i.lx, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.lw, 3
  br i1 %min.iters.check, label %_ZNK12V3NumberData3numEv.exit337.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph437.split
  %n.vec = and i64 %i.ly, 8589934588              ; 3 uses
  %i.lz = sub nsw i64 %i.lt, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.lm, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert622 = insertelement <4 x i32> poison, i32 %i.lq, i64 0
  %broadcast.splat623 = shufflevector <4 x i32> %broadcast.splatinsert622, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ma = sub i64 %i.lt, %index                   ; 5 uses
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i333, i64 %i.ma ; 2 uses
  %i.mc = getelementptr [8 x i8], ptr %spec.select.i333, i64 %i.ma ; 2 uses
  %i.md = getelementptr i8, ptr %i.mc, i64 -8
  %i.me = getelementptr [8 x i8], ptr %spec.select.i333, i64 %i.ma ; 2 uses
  %i.mf = getelementptr i8, ptr %i.me, i64 -16
  %i.mg = getelementptr [8 x i8], ptr %spec.select.i333, i64 %i.ma ; 2 uses
  %i.mh = getelementptr i8, ptr %i.mg, i64 -24
  %i.mi = load i32, ptr %i.mb, align 4, !tbaa !44
  %i.mj = load i32, ptr %i.md, align 4, !tbaa !44
  %i.mk = load i32, ptr %i.mf, align 4, !tbaa !44
  %i.ml = load i32, ptr %i.mh, align 4, !tbaa !44
  %i.mm = insertelement <4 x i32> poison, i32 %i.mi, i64 0
  %i.mn = insertelement <4 x i32> %i.mm, i32 %i.mj, i64 1
  %i.mo = insertelement <4 x i32> %i.mn, i32 %i.mk, i64 2
  %i.mp = insertelement <4 x i32> %i.mo, i32 %i.ml, i64 3
  %i.mq = shl <4 x i32> %i.mp, %broadcast.splat
  %i.mr = getelementptr i8, ptr %i.mb, i64 -8
  %i.ms = getelementptr i8, ptr %i.mc, i64 -16
  %i.mt = getelementptr i8, ptr %i.me, i64 -24
  %i.mu = getelementptr i8, ptr %i.mg, i64 -32
  %i.mv = load i32, ptr %i.mr, align 4, !tbaa !44
  %i.mw = load i32, ptr %i.ms, align 4, !tbaa !44
  %i.mx = load i32, ptr %i.mt, align 4, !tbaa !44
  %i.my = load i32, ptr %i.mu, align 4, !tbaa !44
  %i.mz = insertelement <4 x i32> poison, i32 %i.mv, i64 0
  %i.na = insertelement <4 x i32> %i.mz, i32 %i.mw, i64 1
  %i.nb = insertelement <4 x i32> %i.na, i32 %i.mx, i64 2
  %i.nc = insertelement <4 x i32> %i.nb, i32 %i.my, i64 3
  %i.nd = lshr <4 x i32> %i.nc, %broadcast.splat623
  %i.ne = select i1 %.not209.not, <4 x i32> zeroinitializer, <4 x i32> %i.nd
  %i.nf = or <4 x i32> %i.ne, %i.mq
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ma
  %i.nh = getelementptr inbounds i8, ptr %i.ng, i64 -12
  %reverse = shufflevector <4 x i32> %i.nf, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.nh, align 4, !tbaa !66
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ni = icmp eq i64 %index.next, %n.vec
  br i1 %i.ni, label %middle.block, label %vector.body, !llvm.loop !395

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ly, %n.vec
  br i1 %cmp.n, label %_ZNK12V3NumberData3numEv.exit331, label %_ZNK12V3NumberData3numEv.exit337.preheader

_ZNK12V3NumberData3numEv.exit337.preheader:       ; preds = %.lr.ph437.split, %middle.block
  %indvars.iv487.ph = phi i64 [ %i.lt, %.lr.ph437.split ], [ %i.lz, %middle.block ]
  br label %_ZNK12V3NumberData3numEv.exit337

._crit_edge438:                                   ; preds = %._crit_edge
  br i1 %spec.select.i.i332, label %_ZNK12V3NumberData3numEv.exit331, label %bb.bd, !prof !396

bb.bd:                                            ; preds = %._crit_edge438
  %i.nj = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.nk = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.nl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.nk, ptr noundef nonnull @.str.118)
  %i.nm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.nl, ptr noundef nonnull align 1 dereferenceable(1) %i.o)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.nm) #32
  unreachable

_ZNK12V3NumberData3numEv.exit331:                 ; preds = %_ZNK12V3NumberData3numEv.exit337, %middle.block, %._crit_edge438
  %i.nn = icmp slt i32 %.fr.i.i.i244, 129
  %i.no = load ptr, ptr %2, align 8
  %spec.select.i330 = select i1 %i.nn, ptr %2, ptr %i.no
  %i.np = load i32, ptr %spec.select.i330, align 4, !tbaa !44
  %i.nq = shl i32 %i.np, %i.lm
  store i32 %i.nq, ptr %i.b, align 16, !tbaa !66
  br i1 %.not209.not, label %bb.bh, label %bb.bf

_ZNK12V3NumberData3numEv.exit337:                 ; preds = %_ZNK12V3NumberData3numEv.exit337.preheader, %_ZNK12V3NumberData3numEv.exit337
  %indvars.iv487 = phi i64 [ %indvars.iv.next488, %_ZNK12V3NumberData3numEv.exit337 ], [ %indvars.iv487.ph, %_ZNK12V3NumberData3numEv.exit337.preheader ] ; 4 uses
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i333, i64 %indvars.iv487 ; 2 uses
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !44
  %i.nt = shl i32 %i.ns, %i.lm
  %i.nu = getelementptr i8, ptr %i.nr, i64 -8
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !44
  %i.nw = lshr i32 %i.nv, %i.lq
  %i.nx = select i1 %.not209.not, i32 0, i32 %i.nw
  %i.ny = or i32 %i.nx, %i.nt
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv487
  store i32 %i.ny, ptr %i.nz, align 4, !tbaa !66
  %indvars.iv.next488 = add nsw i64 %indvars.iv487, -1
  %i.oa = trunc nuw i64 %indvars.iv487 to i32
  %i.ob = icmp sgt i32 %i.oa, 1
  br i1 %i.ob, label %_ZNK12V3NumberData3numEv.exit337, label %_ZNK12V3NumberData3numEv.exit331, !llvm.loop !397

bb.be:                                            ; preds = %.lr.ph437
  %i.oc = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.od = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.oe = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.od, ptr noundef nonnull @.str.118)
  %i.of = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.oe, ptr noundef nonnull align 1 dereferenceable(1) %i.o)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.of) #32
  unreachable

bb.bf:                                            ; preds = %_ZNK12V3NumberData3numEv.exit331
  %i.og = load i8, ptr %i.h, align 4, !tbaa !42   ; 2 uses
  %i.oh = add i8 %i.og, -1
  %spec.select.i.i338 = icmp ult i8 %i.oh, 2
  br i1 %spec.select.i.i338, label %_ZNK12V3NumberData3numEv.exit340, label %bb.bg, !prof !43

bb.bg:                                            ; preds = %bb.bf
  %i.oi = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.oj = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.ok = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.oj, ptr noundef nonnull @.str.118)
  %i.ol = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.ok, ptr noundef nonnull align 1 dereferenceable(1) %i.h)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.ol) #32
  unreachable

_ZNK12V3NumberData3numEv.exit340:                 ; preds = %bb.bf
  %i.om = icmp slt i32 %.fr.i.i.i, 129
  %i.on = load ptr, ptr %1, align 8
  %spec.select.i339 = select i1 %i.om, ptr %1, ptr %i.on
  %i.oo = zext nneg i32 %i.dz to i64              ; 2 uses
  %i.op = getelementptr [8 x i8], ptr %spec.select.i339, i64 %i.oo
  %i.oq = getelementptr i8, ptr %i.op, i64 -8
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !44
  %i.os = sub nuw nsw i32 32, %i.lm
  %i.ot = lshr i32 %i.or, %i.os
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.oo
  store i32 %i.ot, ptr %i.ou, align 4, !tbaa !66
  br label %bb.bi

bb.bh:                                            ; preds = %_ZNK12V3NumberData3numEv.exit331
  %i.ov = zext nneg i32 %i.dz to i64
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ov
  store i32 0, ptr %i.ow, align 4, !tbaa !66
  %.pre.pre = load i8, ptr %i.h, align 4, !tbaa !42
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %_ZNK12V3NumberData3numEv.exit340
  %.pre = phi i8 [ %.pre.pre, %bb.bh ], [ %i.og, %_ZNK12V3NumberData3numEv.exit340 ]
  %i.ox = icmp ugt i32 %24, 32
  %i.oy = add i8 %.pre, -1
  %spec.select.i.i344 = icmp ult i8 %i.oy, 2      ; 2 uses
  br i1 %i.ox, label %.lr.ph441, label %._crit_edge442

.lr.ph441:                                        ; preds = %bb.bi
  %i.oz = sub nuw nsw i32 32, %i.lm
  br i1 %spec.select.i.i344, label %.lr.ph441.split, label %bb.bk, !prof !43

.lr.ph441.split:                                  ; preds = %.lr.ph441
  %i.pa = icmp slt i32 %.fr.i.i.i, 129
  %i.pb = load ptr, ptr %1, align 8
  %spec.select.i345 = select i1 %i.pa, ptr %1, ptr %i.pb ; 2 uses
  %i.pc = lshr i32 %i.dy, 5
  %i.pd = zext nneg i32 %i.pc to i64
  br label %_ZNK12V3NumberData3numEv.exit349

._crit_edge442:                                   ; preds = %bb.bi
  br i1 %spec.select.i.i344, label %_ZNK12V3NumberData3numEv.exit343, label %bb.bj, !prof !398

bb.bj:                                            ; preds = %._crit_edge442
  %i.pe = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.pf = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.pg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.pf, ptr noundef nonnull @.str.118)
  %i.ph = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.pg, ptr noundef nonnull align 1 dereferenceable(1) %i.h)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.ph) #32
  unreachable

_ZNK12V3NumberData3numEv.exit343:                 ; preds = %_ZNK12V3NumberData3numEv.exit349, %._crit_edge442
  %i.pi = icmp slt i32 %.fr.i.i.i, 129
  %i.pj = load ptr, ptr %1, align 8
  %spec.select.i342 = select i1 %i.pi, ptr %1, ptr %i.pj
  %i.pk = load i32, ptr %spec.select.i342, align 4, !tbaa !44
  %i.pl = shl i32 %i.pk, %i.lm
  store i32 %i.pl, ptr %i.a, align 16, !tbaa !66
  %i.pm = sub nsw i32 %i.dz, %i.eb                ; 2 uses
  %i.pn = icmp sgt i32 %i.pm, -1
  br i1 %i.pn, label %.lr.ph455, label %._crit_edge456

.lr.ph455:                                        ; preds = %_ZNK12V3NumberData3numEv.exit343
  %i.po = sext i32 %i.ln to i64
  %i.pp = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.po
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !66
  %i.pr = zext i32 %i.pq to i64                   ; 4 uses
  %i.ps = sext i32 %i.eb to i64                   ; 2 uses
  %i.pt = getelementptr [4 x i8], ptr %i.b, i64 %i.ps
  %i.pu = getelementptr i8, ptr %i.pt, i64 -8
  %i.pv = icmp sgt i32 %25, 0                     ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.px = load i8, ptr %i.pw, align 4, !tbaa !42
  %i.py = add i8 %i.px, -1
  %spec.select.i.i350 = icmp ult i8 %i.py, 2
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %smax495 = tail call i32 @llvm.smax.i32(i32 %i.eb, i32 1) ; 3 uses
  %i.qa = zext nneg i32 %i.pm to i64
  %invariant.gep615 = getelementptr [4 x i8], ptr %i.a, i64 %i.ps
  %wide.trip.count496 = zext nneg i32 %smax495 to i64 ; 5 uses
  %i.qb = add nsw i64 %wide.trip.count496, -1     ; 2 uses
  %xtraiter636 = and i64 %wide.trip.count496, 1
  %i.qc = icmp eq i64 %i.qb, 0
  %unroll_iter641 = and i64 %wide.trip.count496, 67108862
  %lcmp.mod638.not = icmp eq i64 %xtraiter636, 0
  %lcmp.mod640 = trunc i32 %smax495 to i1
  %xtraiter643 = and i64 %wide.trip.count496, 1
  %i.qd = icmp eq i64 %i.qb, 0
  %unroll_iter648 = and i64 %wide.trip.count496, 67108862
  %lcmp.mod645.not = icmp eq i64 %xtraiter643, 0
  %lcmp.mod647 = trunc i32 %smax495 to i1
  br label %bb.bl

_ZNK12V3NumberData3numEv.exit349:                 ; preds = %.lr.ph441.split, %_ZNK12V3NumberData3numEv.exit349
  %indvars.iv490 = phi i64 [ %i.pd, %.lr.ph441.split ], [ %indvars.iv.next491, %_ZNK12V3NumberData3numEv.exit349 ] ; 3 uses
  %indvars.iv.next491 = add nsw i64 %indvars.iv490, -1 ; 3 uses
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i345, i64 %indvars.iv.next491
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !44
  %i.qg = shl i32 %i.qf, %i.lm
  %i.qh = getelementptr [8 x i8], ptr %spec.select.i345, i64 %indvars.iv490
  %i.qi = getelementptr i8, ptr %i.qh, i64 -16
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !44
  %i.qk = lshr i32 %i.qj, %i.oz
  %i.ql = select i1 %.not209.not, i32 0, i32 %i.qk
  %i.qm = or i32 %i.ql, %i.qg
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next491
  store i32 %i.qm, ptr %i.qn, align 4, !tbaa !66
  %i.qo = icmp samesign ugt i64 %indvars.iv490, 2
  br i1 %i.qo, label %_ZNK12V3NumberData3numEv.exit349, label %_ZNK12V3NumberData3numEv.exit343, !llvm.loop !399

bb.bk:                                            ; preds = %.lr.ph441
  %i.qp = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.qq = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.qr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.qq, ptr noundef nonnull @.str.118)
  %i.qs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.qr, ptr noundef nonnull align 1 dereferenceable(1) %i.h)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.qs) #32
  unreachable

._crit_edge456:                                   ; preds = %bb.br, %_ZNK12V3NumberData3numEv.exit343
  br i1 %3, label %.preheader421, label %bb.cm

.preheader421:                                    ; preds = %._crit_edge456
  %i.qt = icmp sgt i32 %25, 0
  br i1 %i.qt, label %.lr.ph458, label %.preheader420

.lr.ph458:                                        ; preds = %.preheader421
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.qv = load i8, ptr %i.qu, align 4, !tbaa !42
  %i.qw = add i8 %i.qv, -1
  %spec.select.i.i356 = icmp ult i8 %i.qw, 2
  %i.qx = sub nuw nsw i32 32, %i.lm               ; 3 uses
  br i1 %spec.select.i.i356, label %.lr.ph458.split, label %bb.bs, !prof !43

.lr.ph458.split:                                  ; preds = %.lr.ph458
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.qz = load i32, ptr %i.qy, align 8, !tbaa !41
  %i.ra = icmp slt i32 %i.qz, 129                 ; 3 uses
  %smax509 = tail call i32 @llvm.smax.i32(i32 %i.eb, i32 1) ; 2 uses
  %wide.trip.count510 = zext nneg i32 %smax509 to i64 ; 2 uses
  %.pre527 = load i32, ptr %i.a, align 16, !tbaa !66 ; 2 uses
  %xtraiter650 = and i64 %wide.trip.count510, 1
  %i.rb = icmp slt i32 %25, 33
  br i1 %i.rb, label %_ZN12V3NumberData3numEv.exit358.epil.preheader, label %.lr.ph458.split.new

.lr.ph458.split.new:                              ; preds = %.lr.ph458.split
  %unroll_iter654 = and i64 %wide.trip.count510, 67108862
  br label %_ZN12V3NumberData3numEv.exit358

bb.bl:                                            ; preds = %.lr.ph455, %bb.br
  %indvars.iv504 = phi i64 [ %i.qa, %.lr.ph455 ], [ %indvars.iv.next505, %bb.br ] ; 7 uses
  %gep616 = getelementptr [4 x i8], ptr %invariant.gep615, i64 %indvars.iv504 ; 6 uses
  %i.rc = getelementptr i8, ptr %gep616, i64 -4
  %i.rd = load i64, ptr %i.rc, align 4            ; 3 uses
  %i.re = udiv i64 %i.rd, %i.pr                   ; 2 uses
  %i.rf = mul i64 %i.re, %i.pr                    ; 0 uses
  %.recomposed = urem i64 %i.rd, %i.pr
  %i.rg = getelementptr i8, ptr %gep616, i64 -8
  %i.rh = lshr i64 %i.rd, 32
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bo, %bb.bl
  %.0168 = phi i64 [ %i.re, %bb.bl ], [ %i.rr, %bb.bo ] ; 4 uses
  %.0167 = phi i64 [ %.recomposed, %bb.bl ], [ %i.rs, %bb.bo ] ; 2 uses
  %i.ri = icmp ugt i64 %.0168, 4294967295
  br i1 %i.ri, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.rj = load i32, ptr %i.pu, align 4, !tbaa !66
  %i.rk = zext i32 %i.rj to i64
  %i.rl = mul nuw i64 %.0168, %i.rk
  %i.rm = shl i64 %.0167, 32
  %i.rn = load i32, ptr %i.rg, align 4, !tbaa !66
  %i.ro = zext i32 %i.rn to i64
  %i.rp = or disjoint i64 %i.rm, %i.ro
  %i.rq = icmp ugt i64 %i.rl, %i.rp
  br i1 %i.rq, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.rr = add i64 %.0168, -1                      ; 2 uses
  %i.rs = add i64 %.0167, %i.pr                   ; 2 uses
  %i.rt = icmp ult i64 %i.rs, 4294967296
  br i1 %i.rt, label %bb.bm, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.1169 = phi i64 [ %i.rr, %bb.bo ], [ %.0168, %bb.bn ] ; 4 uses
  br i1 %i.pv, label %.lr.ph446.preheader, label %._crit_edge447

.lr.ph446.preheader:                              ; preds = %bb.bp
  %invariant.gep = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv504 ; 3 uses
  br i1 %i.qc, label %.lr.ph446.epil.preheader, label %.lr.ph446

._crit_edge447.loopexit.unr-lcssa:                ; preds = %.lr.ph446
  br i1 %lcmp.mod638.not, label %._crit_edge447.loopexit, label %.lr.ph446.epil.preheader

.lr.ph446.epil.preheader:                         ; preds = %._crit_edge447.loopexit.unr-lcssa, %.lr.ph446.preheader
  %indvars.iv492.epil.init = phi i64 [ 0, %.lr.ph446.preheader ], [ %indvars.iv.next493.1, %._crit_edge447.loopexit.unr-lcssa ] ; 2 uses
  %.0165443.epil.init = phi i64 [ 0, %.lr.ph446.preheader ], [ %i.tu, %._crit_edge447.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod640)
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv492.epil.init
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !66
  %i.rw = zext i32 %i.rv to i64
  %i.rx = mul i64 %.1169, %i.rw                   ; 2 uses
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv492.epil.init ; 2 uses
  %i.ry = load i32, ptr %gep.epil, align 4, !tbaa !66
  %i.rz = zext i32 %i.ry to i64
  %i.sa = and i64 %i.rx, 4294967295
  %i.sb = add nuw nsw i64 %.0165443.epil.init, %i.sa
  %i.sc = sub nsw i64 %i.rz, %i.sb                ; 2 uses
  %i.sd = trunc i64 %i.sc to i32
  store i32 %i.sd, ptr %gep.epil, align 4, !tbaa !66
  %i.se = lshr i64 %i.rx, 32
  %i.sf = ashr i64 %i.sc, 32
  %i.sg = sub nsw i64 %i.se, %i.sf
  br label %._crit_edge447.loopexit

._crit_edge447.loopexit:                          ; preds = %._crit_edge447.loopexit.unr-lcssa, %.lr.ph446.epil.preheader
  %.lcssa625 = phi i64 [ %i.tu, %._crit_edge447.loopexit.unr-lcssa ], [ %i.sg, %.lr.ph446.epil.preheader ]
  %.pre524 = load i32, ptr %gep616, align 4, !tbaa !66
  %i.sh = zext i32 %.pre524 to i64
  br label %._crit_edge447

._crit_edge447:                                   ; preds = %._crit_edge447.loopexit, %bb.bp
  %i.si = phi i64 [ %i.rh, %bb.bp ], [ %i.sh, %._crit_edge447.loopexit ]
  %.0165.lcssa = phi i64 [ 0, %bb.bp ], [ %.lcssa625, %._crit_edge447.loopexit ]
  %i.sj = sub nsw i64 %i.si, %.0165.lcssa         ; 2 uses
  %i.sk = trunc i64 %i.sj to i32                  ; 2 uses
  store i32 %i.sk, ptr %gep616, align 4, !tbaa !66
  br i1 %spec.select.i.i350, label %_ZN12V3NumberData3numEv.exit352, label %bb.bq, !prof !43

bb.bq:                                            ; preds = %._crit_edge447
  %i.sl = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242) ; 0 uses
  %i.sm = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.sn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.sm, ptr noundef nonnull @.str.118)
  %i.so = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.sn, ptr noundef nonnull align 1 dereferenceable(1) %i.pw)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.so) #32
  unreachable

_ZN12V3NumberData3numEv.exit352:                  ; preds = %._crit_edge447
  %i.sp = trunc i64 %.1169 to i32
  %i.sq = load i32, ptr %i.pz, align 8, !tbaa !41
  %i.sr = icmp slt i32 %i.sq, 129                 ; 2 uses
  %i.ss = load ptr, ptr %0, align 8
  %spec.select.i351 = select i1 %i.sr, ptr %0, ptr %i.ss
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i351, i64 %indvars.iv504
  store i32 %i.sp, ptr %i.st, align 4, !tbaa !44
  %i.su = icmp slt i64 %i.sj, 0
  br i1 %i.su, label %_ZN12V3NumberData3numEv.exit355, label %bb.br

.lr.ph446:                                        ; preds = %.lr.ph446.preheader, %.lr.ph446
  %indvars.iv492 = phi i64 [ %indvars.iv.next493.1, %.lr.ph446 ], [ 0, %.lr.ph446.preheader ] ; 4 uses
  %.0165443 = phi i64 [ %i.tu, %.lr.ph446 ], [ 0, %.lr.ph446.preheader ]
  %niter642 = phi i64 [ %niter642.next.1, %.lr.ph446 ], [ 0, %.lr.ph446.preheader ]
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv492
  %i.sw = load i32, ptr %i.sv, align 8, !tbaa !66
  %i.sx = zext i32 %i.sw to i64
  %i.sy = mul i64 %.1169, %i.sx                   ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv492 ; 2 uses
  %i.sz = load i32, ptr %gep, align 4, !tbaa !66
  %i.ta = zext i32 %i.sz to i64
  %i.tb = and i64 %i.sy, 4294967295
  %i.tc = add nuw nsw i64 %.0165443, %i.tb
  %i.td = sub nsw i64 %i.ta, %i.tc                ; 2 uses
  %i.te = trunc i64 %i.td to i32
  store i32 %i.te, ptr %gep, align 4, !tbaa !66
  %i.tf = lshr i64 %i.sy, 32
  %i.tg = ashr i64 %i.td, 32
  %i.th = sub nsw i64 %i.tf, %i.tg
  %indvars.iv.next493 = or disjoint i64 %indvars.iv492, 1 ; 2 uses
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next493
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !66
  %i.tk = zext i32 %i.tj to i64
  %i.tl = mul i64 %.1169, %i.tk                   ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next493 ; 2 uses
  %i.tm = load i32, ptr %gep.1, align 4, !tbaa !66
  %i.tn = zext i32 %i.tm to i64
  %i.to = and i64 %i.tl, 4294967295
  %i.tp = add nuw nsw i64 %i.th, %i.to
  %i.tq = sub nsw i64 %i.tn, %i.tp                ; 2 uses
  %i.tr = trunc i64 %i.tq to i32
  store i32 %i.tr, ptr %gep.1, align 4, !tbaa !66
  %i.ts = lshr i64 %i.tl, 32
  %i.tt = ashr i64 %i.tq, 32
  %i.tu = sub nsw i64 %i.ts, %i.tt                ; 3 uses
  %indvars.iv.next493.1 = add nuw nsw i64 %indvars.iv492, 2 ; 2 uses
  %niter642.next.1 = add i64 %niter642, 2         ; 2 uses
  %niter642.ncmp.1 = icmp eq i64 %niter642.next.1, %unroll_iter641
  br i1 %niter642.ncmp.1, label %._crit_edge447.loopexit.unr-lcssa, label %.lr.ph446, !llvm.loop !400

_ZN12V3NumberData3numEv.exit355:                  ; preds = %_ZN12V3NumberData3numEv.exit352
  %i.tv = load ptr, ptr %0, align 8
  %spec.select.i354 = select i1 %i.sr, ptr %0, ptr %i.tv
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i354, i64 %indvars.iv504 ; 2 uses
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !44
  %i.ty = add i32 %i.tx, -1
  store i32 %i.ty, ptr %i.tw, align 4, !tbaa !44
  br i1 %i.pv, label %.lr.ph450.preheader, label %._crit_edge451

.lr.ph450.preheader:                              ; preds = %_ZN12V3NumberData3numEv.exit355
  %invariant.gep613 = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv504 ; 3 uses
  br i1 %i.qd, label %.lr.ph450.epil.preheader, label %.lr.ph450

._crit_edge451.loopexit.unr-lcssa:                ; preds = %.lr.ph450
  br i1 %lcmp.mod645.not, label %._crit_edge451.loopexit, label %.lr.ph450.epil.preheader

.lr.ph450.epil.preheader:                         ; preds = %._crit_edge451.loopexit.unr-lcssa, %.lr.ph450.preheader
  %indvars.iv498.epil.init = phi i64 [ 0, %.lr.ph450.preheader ], [ %indvars.iv.next499.1, %._crit_edge451.loopexit.unr-lcssa ] ; 2 uses
  %.1166448.epil.init = phi i64 [ 0, %.lr.ph450.preheader ], [ %i.vc, %._crit_edge451.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod647)
  %gep614.epil = getelementptr [4 x i8], ptr %invariant.gep613, i64 %indvars.iv498.epil.init ; 2 uses
  %i.tz = load i32, ptr %gep614.epil, align 4, !tbaa !66
  %i.ua = zext i32 %i.tz to i64
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv498.epil.init
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !66
  %i.ud = zext i32 %i.uc to i64
  %i.ue = add nuw nsw i64 %.1166448.epil.init, %i.ua
  %i.uf = add nuw nsw i64 %i.ue, %i.ud            ; 2 uses
  %i.ug = trunc i64 %i.uf to i32
  store i32 %i.ug, ptr %gep614.epil, align 4, !tbaa !66
  %i.uh = lshr i64 %i.uf, 32
  br label %._crit_edge451.loopexit

._crit_edge451.loopexit:                          ; preds = %._crit_edge451.loopexit.unr-lcssa, %.lr.ph450.epil.preheader
  %.lcssa626 = phi i64 [ %i.vc, %._crit_edge451.loopexit.unr-lcssa ], [ %i.uh, %.lr.ph450.epil.preheader ]
  %.pre525 = load i32, ptr %gep616, align 4, !tbaa !66
  %i.ui = trunc nuw nsw i64 %.lcssa626 to i32
  br label %._crit_edge451

._crit_edge451:                                   ; preds = %._crit_edge451.loopexit, %_ZN12V3NumberData3numEv.exit355
  %i.uj = phi i32 [ %i.sk, %_ZN12V3NumberData3numEv.exit355 ], [ %.pre525, %._crit_edge451.loopexit ]
  %.1166.lcssa = phi i32 [ 0, %_ZN12V3NumberData3numEv.exit355 ], [ %i.ui, %._crit_edge451.loopexit ]
  %i.uk = add i32 %i.uj, %.1166.lcssa
  store i32 %i.uk, ptr %gep616, align 4, !tbaa !66
  br label %bb.br

.lr.ph450:                                        ; preds = %.lr.ph450.preheader, %.lr.ph450
  %indvars.iv498 = phi i64 [ %indvars.iv.next499.1, %.lr.ph450 ], [ 0, %.lr.ph450.preheader ] ; 4 uses
  %.1166448 = phi i64 [ %i.vc, %.lr.ph450 ], [ 0, %.lr.ph450.preheader ]
  %niter649 = phi i64 [ %niter649.next.1, %.lr.ph450 ], [ 0, %.lr.ph450.preheader ]
  %gep614 = getelementptr [4 x i8], ptr %invariant.gep613, i64 %indvars.iv498 ; 2 uses
  %i.ul = load i32, ptr %gep614, align 4, !tbaa !66
  %i.um = zext i32 %i.ul to i64
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv498
end_hunk_3
begin_hunk_4_@_ZN8V3Number9opSelIntoERKS_ii:bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.m) #32
  unreachable

._crit_edge:                                      ; preds = %bb.h, %.preheader
  ret ptr %0

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %.020 = phi i32 [ %2, %.lr.ph ], [ %i.u, %bb.h ] ; 2 uses
  %.01619 = phi i32 [ 0, %.lr.ph ], [ %i.t, %bb.h ] ; 3 uses
  %i.n = load i32, ptr %i.h, align 8, !tbaa !41
  %i.o = icmp slt i32 %.01619, %i.n
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call noundef signext i8 @_ZNK8V3Number5bitIsEi(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %.01619)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 43), align 1, !tbaa !172, !range !192, !noundef !193
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = select i1 %i.r, i8 0, i8 120
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink = phi i8 [ %i.s, %bb.g ], [ %i.p, %bb.f ]
  tail call void @_ZN8V3Number6setBitEic(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.020, i8 noundef signext %.sink)
  %i.t = add nuw nsw i32 %.01619, 1
  %i.u = add nsw i32 %.020, 1                     ; 2 uses
  %i.v = icmp slt i32 %i.u, %i.f
  br i1 %i.v, label %bb.e, label %._crit_edge, !llvm.loop !416
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7opIToRDERKS_b(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.V3Number, align 8            ; 22 uses
  %4 = alloca %class.V3Number, align 8            ; 13 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !156

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2527) ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.73)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.c) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i8, ptr %i.d, align 4, !tbaa !42
  %.not24 = icmp eq i8 %i.e, 1
  br i1 %.not24, label %bb.e, label %bb.d, !prof !43

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2528) ; 0 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.74)
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.j) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN12V3NumberDataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false)
  %i.m = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number13opAssignNonXZERKS_b(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.p       ; 0 uses

bb.f:                                             ; preds = %bb.e
  br i1 %2, label %bb.g, label %_ZNK8V3Number10isNegativeEv.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.o = load i8, ptr %i.n, align 4, !tbaa !42    ; 2 uses
  %i.p = icmp eq i8 %i.o, 3
  br i1 %i.p, label %_ZNK8V3Number10isNegativeEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !41   ; 3 uses
  %i.s = add i8 %i.o, -3
  %spec.select.i.i.i = icmp ult i8 %i.s, -2
  %i.t = icmp slt i32 %i.r, 1
  %or.cond.i.i = or i1 %spec.select.i.i.i, %i.t
  br i1 %or.cond.i.i, label %_ZNK8V3Number10isNegativeEv.exit.thread, label %_ZNK12V3NumberData3numEv.exit.i.i

_ZNK12V3NumberData3numEv.exit.i.i:                ; preds = %bb.h
  %i.u = add nsw i32 %i.r, -1                     ; 2 uses
  %i.v = icmp samesign ult i32 %i.r, 129
  %i.w = load ptr, ptr %3, align 8
  %spec.select.i10.i.i = select i1 %i.v, ptr %3, ptr %i.w
  %i.x = lshr i32 %i.u, 5
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i10.i.i, i64 %i.y ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.z, align 4, !tbaa !66
  %i.aa = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.ab = and i32 %i.u, 31
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 1, %i.ac                ; 2 uses
  %i.ae = and i64 %i.ad, %i.aa
  %.not7.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not7.i.i, label %_ZNK8V3Number10isNegativeEv.exit.thread, label %_ZNK8V3Number10isNegativeEv.exit

_ZNK8V3Number10isNegativeEv.exit:                 ; preds = %_ZNK12V3NumberData3numEv.exit.i.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !66
  %i.af = zext i32 %.sroa.4.0.copyload.i.i to i64
  %i.ag = and i64 %i.ad, %i.af
  %.not8.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not8.i.i, label %bb.i, label %_ZNK8V3Number10isNegativeEv.exit.thread

bb.i:                                             ; preds = %_ZNK8V3Number10isNegativeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZN12V3NumberDataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  %i.ai = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number8opNegateERKS_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.k unwind label %bb.s       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !42  ; 2 uses
  %i.al = icmp eq i8 %i.ak, 3
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZN8V3NumberD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.l
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !23
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #31
  br label %_ZN8V3NumberD2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !41
  %i.at = icmp sgt i32 %i.as, 128
  %i.au = icmp eq i8 %i.ak, 1
  %i.av = and i1 %i.au, %i.at
  br i1 %i.av, label %bb.n, label %_ZN8V3NumberD2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.aw = load ptr, ptr %4, align 8, !tbaa !57    ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN8V3NumberD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !60
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #31
  br label %_ZN8V3NumberD2Ev.exit

_ZN8V3NumberD2Ev.exit:                            ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZNK8V3Number10isNegativeEv.exit.thread

bb.p:                                             ; preds = %bb.e
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.q:                                             ; preds = %._crit_edge
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.r:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.j
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #30
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.s ], [ %i.be, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.aa

_ZNK8V3Number10isNegativeEv.exit.thread:          ; preds = %_ZNK12V3NumberData3numEv.exit.i.i, %bb.h, %bb.g, %bb.f, %_ZN8V3NumberD2Ev.exit, %_ZNK8V3Number10isNegativeEv.exit
  %i.bg = phi i1 [ false, %_ZNK8V3Number10isNegativeEv.exit ], [ true, %_ZN8V3NumberD2Ev.exit ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.h ], [ false, %_ZNK12V3NumberData3numEv.exit.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !41 ; 3 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK8V3Number10isNegativeEv.exit.thread
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.bl = load i8, ptr %i.bk, align 4, !tbaa !42
  %i.bm = add i8 %i.bl, -1
  %spec.select.i.i = icmp ult i8 %i.bm, 2
  %i.bn = icmp samesign ult i32 %i.bi, 129
  %i.bo = load ptr, ptr %3, align 8
  %spec.select.i10.i = select i1 %i.bn, ptr %3, ptr %i.bo
  br i1 %spec.select.i.i, label %_ZNK12V3NumberData3numEv.exit.i, label %._crit_edge

_ZNK12V3NumberData3numEv.exit.i:                  ; preds = %.lr.ph, %_ZNK8V3Number6bitIs1Ei.exit.thread
  %.037.us.in = phi i32 [ %.037.us, %_ZNK8V3Number6bitIs1Ei.exit.thread ], [ %i.bi, %.lr.ph ] ; 2 uses
  %.01736.us = phi double [ %.1.us, %_ZNK8V3Number6bitIs1Ei.exit.thread ], [ 0.000000e+00, %.lr.ph ] ; 3 uses
  %.037.us = add nsw i32 %.037.us.in, -1          ; 4 uses
  %i.bp = lshr i32 %.037.us, 5
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i10.i, i64 %i.bq ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.br, align 4, !tbaa !66
  %i.bs = zext i32 %.sroa.0.0.copyload.i to i64
  %i.bt = and i32 %.037.us, 31
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = shl nuw nsw i64 1, %i.bu                ; 2 uses
  %i.bw = and i64 %i.bv, %i.bs
  %.not7.i = icmp eq i64 %i.bw, 0
  br i1 %.not7.i, label %_ZNK8V3Number6bitIs1Ei.exit.thread, label %_ZNK8V3Number6bitIs1Ei.exit

_ZNK8V3Number6bitIs1Ei.exit:                      ; preds = %_ZNK12V3NumberData3numEv.exit.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !66
  %i.bx = zext i32 %.sroa.4.0.copyload.i to i64
  %i.by = and i64 %i.bv, %i.bx
  %.not8.i = icmp eq i64 %i.by, 0
  br i1 %.not8.i, label %bb.u, label %_ZNK8V3Number6bitIs1Ei.exit.thread

bb.u:                                             ; preds = %_ZNK8V3Number6bitIs1Ei.exit
  %i.bz = uitofp nneg i32 %.037.us to double
  %i.ca = call double @exp2(double noundef %i.bz) #30
  %i.cb = fadd double %.01736.us, %i.ca
  br label %_ZNK8V3Number6bitIs1Ei.exit.thread

_ZNK8V3Number6bitIs1Ei.exit.thread:               ; preds = %bb.u, %_ZNK8V3Number6bitIs1Ei.exit, %_ZNK12V3NumberData3numEv.exit.i
  %.1.us = phi double [ %i.cb, %bb.u ], [ %.01736.us, %_ZNK8V3Number6bitIs1Ei.exit ], [ %.01736.us, %_ZNK12V3NumberData3numEv.exit.i ] ; 2 uses
  %i.cc = icmp samesign ugt i32 %.037.us.in, 1
  br i1 %i.cc, label %_ZNK12V3NumberData3numEv.exit.i, label %._crit_edge, !llvm.loop !417

._crit_edge:                                      ; preds = %_ZNK8V3Number6bitIs1Ei.exit.thread, %.lr.ph, %_ZNK8V3Number10isNegativeEv.exit.thread
  %.017.lcssa = phi double [ 0.000000e+00, %_ZNK8V3Number10isNegativeEv.exit.thread ], [ 0.000000e+00, %.lr.ph ], [ %.1.us, %_ZNK8V3Number6bitIs1Ei.exit.thread ] ; 2 uses
  %5 = fneg double %.017.lcssa
  %.2 = select i1 %i.bg, double %5, double %.017.lcssa
  %6 = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number9setDoubleEd(ptr noundef nonnull align 8 dereferenceable(56) %0, double noundef %.2)
          to label %bb.v unwind label %bb.q       ; 0 uses

bb.v:                                             ; preds = %._crit_edge
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ce = load i8, ptr %i.cd, align 4, !tbaa !42  ; 2 uses
  %i.cf = icmp eq i8 %i.ce, 3
  br i1 %i.cf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cg = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZN8V3NumberD2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %bb.w
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !23
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #31
  br label %_ZN8V3NumberD2Ev.exit32

bb.x:                                             ; preds = %bb.v
  %i.cl = load i32, ptr %i.bh, align 8, !tbaa !41
  %i.cm = icmp sgt i32 %i.cl, 128
  %i.cn = icmp eq i8 %i.ce, 1
  %i.co = and i1 %i.cn, %i.cm
  br i1 %i.co, label %bb.y, label %_ZN8V3NumberD2Ev.exit32

bb.y:                                             ; preds = %bb.x
  %i.cp = load ptr, ptr %3, align 8, !tbaa !57    ; 3 uses
  %.not.i.i.i.i.i.i.i29 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i.i.i.i29, label %_ZN8V3NumberD2Ev.exit32, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !60
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cp to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.cu) #31
  br label %_ZN8V3NumberD2Ev.exit32

_ZN8V3NumberD2Ev.exit32:                          ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret ptr %0

bb.aa:                                            ; preds = %bb.q, %bb.t, %bb.p
  %.pn26.pn = phi { ptr, i32 } [ %i.bc, %bb.p ], [ %.pn, %bb.t ], [ %i.bd, %bb.q ]
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn26.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp2(double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7opRToISERKS_(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !156

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2546) ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.73)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.c) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i8, ptr %i.d, align 4, !tbaa !42
  %i.f = icmp eq i8 %i.e, 2
  br i1 %i.f, label %bb.e, label %bb.d, !prof !43

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2547) ; 0 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.96)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.k) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i32, ptr %i.l, align 8
  %.not7 = icmp eq i32 %i.m, 64
  br i1 %.not7, label %_ZNK8V3Number8toDoubleEv.exit, label %.critedge.i, !prof !246

.critedge.i:                                      ; preds = %bb.e
  %i.n = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1073) ; 0 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.68)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.p) #32
  unreachable

_ZNK8V3Number8toDoubleEv.exit:                    ; preds = %bb.e
  %i.q = load i32, ptr %1, align 8, !tbaa !44
  %.sroa.0.0.insert.ext.i = zext i32 %i.q to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !44
  %.sroa.0.4.insert.ext.i = zext i32 %i.s to i64
  %.sroa.0.4.insert.shift.i = shl nuw i64 %.sroa.0.4.insert.ext.i, 32
  %.sroa.0.4.insert.insert.i = or disjoint i64 %.sroa.0.4.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.t = bitcast i64 %.sroa.0.4.insert.insert.i to double
  %i.u = tail call double @llvm.trunc.f64(double %i.t)
  %i.v = fptosi double %i.u to i32
  %i.w = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number8setLongSEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %i.v) ; 0 uses
  ret ptr %0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #11

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number12opRealToBitsERKS_(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !156

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2584) ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.73)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.c) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i8, ptr %i.d, align 4, !tbaa !42
  %i.f = icmp eq i8 %i.e, 2
  br i1 %i.f, label %bb.e, label %bb.d, !prof !43

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2585) ; 0 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.96)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.k) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !41
  %i.n = icmp ne i32 %i.m, 64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i32, ptr %i.o, align 8
  %i.q = icmp ne i32 %i.p, 64
  %or.cond = select i1 %i.n, i1 true, i1 %i.q, !prof !200
  br i1 %or.cond, label %.critedge, label %_ZNK8V3Number8toDoubleEv.exit, !prof !200

.critedge:                                        ; preds = %bb.e
  %i.r = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2586) ; 0 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.16)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.t) #32
  unreachable

_ZNK8V3Number8toDoubleEv.exit:                    ; preds = %bb.e
  %i.u = load i32, ptr %1, align 8, !tbaa !44
  %.sroa.0.0.insert.ext.i = zext i32 %i.u to i64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !44
  %.sroa.0.4.insert.ext.i = zext i32 %i.w to i64
  %.sroa.0.4.insert.shift.i = shl nuw i64 %.sroa.0.4.insert.ext.i, 32
  %.sroa.0.4.insert.insert.i = or disjoint i64 %.sroa.0.4.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.x = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7setQuadEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %.sroa.0.4.insert.insert.i) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number13opBitsToRealDERKS_(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !156

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2595) ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.73)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.c) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !41
  %i.f = icmp ne i32 %i.e, 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp ne i32 %i.h, 64
  %or.cond = select i1 %i.f, i1 true, i1 %i.i, !prof !200
  br i1 %or.cond, label %.critedge, label %bb.d, !prof !200

.critedge:                                        ; preds = %bb.c
  %i.j = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2596) ; 0 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.16)
end_hunk_4
