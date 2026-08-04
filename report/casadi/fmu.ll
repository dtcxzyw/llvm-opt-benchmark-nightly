inline.NumInlined: 3885
inline.NumDeleted: 746
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK6casadi11FmuInternal7eval_fdEPNS_9FmuMemoryEb:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit697: ; preds = %bb.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i695, %bb.ee
  %.pn450 = phi { ptr, i32 } [ %i.adw, %bb.ee ], [ %i.adx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i695 ], [ %i.adx, %bb.ef ] ; 2 uses
  %i.aed = load ptr, ptr %52, align 8, !tbaa !25  ; 2 uses
  %i.aee = icmp eq ptr %i.aed, %i.adb
  br i1 %i.aee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i698

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i698: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit697
  %i.aef = load i64, ptr %i.adb, align 8, !tbaa !21
  %i.aeg = add i64 %i.aef, 1
  call void @_ZdlPvm(ptr noundef %i.aed, i64 noundef %i.aeg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit697, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i698, %bb.ed
  %.pn450.pn = phi { ptr, i32 } [ %i.adv, %bb.ed ], [ %.pn450, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i698 ], [ %.pn450, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit697 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #28
  br label %bb.gb

bb.eg:                                            ; preds = %.critedge
  %i.aeh = load ptr, ptr %i.cl, align 8, !tbaa !161, !nonnull !122, !align !162 ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 1520
  %i.aej = load double, ptr %i.aei, align 8, !tbaa !383 ; 3 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aeh, i64 1584
  %i.ael = load i32, ptr %i.aek, align 8, !tbaa !382
  %i.aem = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 3 uses
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !157 ; 2 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %1, i64 696
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !157
  %i.aeq = icmp eq ptr %i.aen, %i.aep
  %spec.select.i701 = select i1 %i.aeq, ptr null, ptr %i.aen
  call void @_ZN6casadi11finite_diffIdEEvNS_6FdModeEPPKT_PS2_S2_xS2_(i32 noundef %i.ael, ptr noundef nonnull %i.f, ptr noundef %spec.select.i701, double noundef %i.aej, i64 noundef %i.v, double noundef f0x3CB0000000000000)
  %i.aer = load ptr, ptr %i.p, align 8, !tbaa !47 ; 3 uses
  %i.aes = load ptr, ptr %i.o, align 8, !tbaa !50 ; 8 uses
  %.not1117 = icmp eq ptr %i.aer, %i.aes          ; 2 uses
  br i1 %2, label %.preheader, label %.preheader971

.preheader971:                                    ; preds = %bb.eg
  br i1 %.not1117, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph1093

.lr.ph1093:                                       ; preds = %.preheader971
  %i.aet = ptrtoint ptr %i.aer to i64
  %i.aeu = ptrtoint ptr %i.aes to i64
  %i.aev = sub i64 %i.aet, %i.aeu
  %i.aew = ashr exact i64 %i.aev, 3               ; 3 uses
  %i.aex = load ptr, ptr %i.aem, align 8, !tbaa !66 ; 5 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.aez = load ptr, ptr %i.aey, align 8, !tbaa !66 ; 5 uses
  %xtraiter1732 = and i64 %i.aew, 3               ; 3 uses
  %i.afa = icmp ult i64 %i.aew, 4
  br i1 %i.afa, label %.epil.preheader1731, label %.lr.ph1093.new

.lr.ph1093.new:                                   ; preds = %.lr.ph1093
  %unroll_iter1735 = and i64 %i.aew, -4
  br label %bb.eh

.preheader:                                       ; preds = %bb.eg
  br i1 %.not1117, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph1108

.lr.ph1108:                                       ; preds = %.preheader
  %i.afb = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.afc = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.afd = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.afe = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.aff = mul i64 %i.ct, %i.v
  %i.afg = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 28 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.afj = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.afk = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.afl = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.afm = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 7 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 2 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %53, i64 64 ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %53, i64 48 ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %53, i64 56 ; 2 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %53, i64 96 ; 3 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.aft = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.afu = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 4 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 4 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 7 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %56, i64 8 ; 2 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 6 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.aga = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.agb = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 4 uses
  %i.agc = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.agd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.age = getelementptr i8, ptr %i.agc, i64 -24
  %i.agf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.agg = getelementptr inbounds nuw i8, ptr %53, i64 24 ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %53, i64 112 ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %53, i64 80
  %i.agj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.agk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.agl = getelementptr i8, ptr %i.agj, i64 -24
  %i.agm = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.agn = getelementptr inbounds nuw i8, ptr %53, i64 128
  %umax1192 = call i64 @llvm.umax.i64(i64 %i.n, i64 1) ; 2 uses
  %exitcond1194.peel.not = icmp eq i64 %i.cp, 1
  %exitcond1202.peel.not = icmp eq i64 %i.cp, 1
  br label %bb.ei

bb.eh:                                            ; preds = %bb.eh, %.lr.ph1093.new
  %.03531092 = phi i64 [ 0, %.lr.ph1093.new ], [ %i.ahl, %bb.eh ] ; 6 uses
  %niter1736 = phi i64 [ 0, %.lr.ph1093.new ], [ %niter1736.next.3, %bb.eh ]
  %i.ago = getelementptr inbounds nuw [8 x i8], ptr %i.aex, i64 %.03531092
  %i.agp = load double, ptr %i.ago, align 8, !tbaa !67
  %i.agq = getelementptr inbounds nuw [8 x i8], ptr %i.aes, i64 %.03531092
  %i.agr = load i64, ptr %i.agq, align 8, !tbaa !28
  %i.ags = getelementptr inbounds nuw [8 x i8], ptr %i.aez, i64 %i.agr
  store double %i.agp, ptr %i.ags, align 8, !tbaa !67
  %i.agt = or disjoint i64 %.03531092, 1          ; 2 uses
  %i.agu = getelementptr inbounds nuw [8 x i8], ptr %i.aex, i64 %i.agt
  %i.agv = load double, ptr %i.agu, align 8, !tbaa !67
  %i.agw = getelementptr inbounds nuw [8 x i8], ptr %i.aes, i64 %i.agt
  %i.agx = load i64, ptr %i.agw, align 8, !tbaa !28
  %i.agy = getelementptr inbounds nuw [8 x i8], ptr %i.aez, i64 %i.agx
  store double %i.agv, ptr %i.agy, align 8, !tbaa !67
  %i.agz = or disjoint i64 %.03531092, 2          ; 2 uses
  %i.aha = getelementptr inbounds nuw [8 x i8], ptr %i.aex, i64 %i.agz
  %i.ahb = load double, ptr %i.aha, align 8, !tbaa !67
  %i.ahc = getelementptr inbounds nuw [8 x i8], ptr %i.aes, i64 %i.agz
  %i.ahd = load i64, ptr %i.ahc, align 8, !tbaa !28
  %i.ahe = getelementptr inbounds nuw [8 x i8], ptr %i.aez, i64 %i.ahd
  store double %i.ahb, ptr %i.ahe, align 8, !tbaa !67
  %i.ahf = or disjoint i64 %.03531092, 3          ; 2 uses
  %i.ahg = getelementptr inbounds nuw [8 x i8], ptr %i.aex, i64 %i.ahf
  %i.ahh = load double, ptr %i.ahg, align 8, !tbaa !67
  %i.ahi = getelementptr inbounds nuw [8 x i8], ptr %i.aes, i64 %i.ahf
  %i.ahj = load i64, ptr %i.ahi, align 8, !tbaa !28
  %i.ahk = getelementptr inbounds nuw [8 x i8], ptr %i.aez, i64 %i.ahj
  store double %i.ahh, ptr %i.ahk, align 8, !tbaa !67
  %i.ahl = add nuw i64 %.03531092, 4              ; 2 uses
  %niter1736.next.3 = add i64 %niter1736, 4       ; 2 uses
  %niter1736.ncmp.3 = icmp eq i64 %niter1736.next.3, %unroll_iter1735
  br i1 %niter1736.ncmp.3, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.loopexit1713.unr-lcssa, label %bb.eh, !llvm.loop !404

bb.ei:                                            ; preds = %.lr.ph1108, %bb.fz
  %i.ahm = phi ptr [ %i.aes, %.lr.ph1108 ], [ %i.atw, %bb.fz ] ; 4 uses
  %i.ahn = phi ptr [ %i.aer, %.lr.ph1108 ], [ %i.atx, %bb.fz ] ; 3 uses
  %.03521105 = phi i64 [ 0, %.lr.ph1108 ], [ %i.aty, %bb.fz ] ; 12 uses
  %i.aho = getelementptr inbounds nuw [8 x i8], ptr %i.ahm, i64 %.03521105
  %i.ahp = load i64, ptr %i.aho, align 8, !tbaa !28 ; 5 uses
  %i.ahq = load ptr, ptr %i.afb, align 8, !tbaa !50
  %i.ahr = getelementptr inbounds nuw [8 x i8], ptr %i.ahq, i64 %i.ahp
  %i.ahs = load i64, ptr %i.ahr, align 8, !tbaa !28 ; 8 uses
  br i1 %.not1112, label %._crit_edge1097, label %.lr.ph1096

.lr.ph1096:                                       ; preds = %bb.ei
  %i.aht = load ptr, ptr %i.g, align 8, !tbaa !50
  br label %bb.ej

bb.ej:                                            ; preds = %.lr.ph1096, %bb.ek
  %.03481094 = phi i64 [ 0, %.lr.ph1096 ], [ %i.ahx, %bb.ek ] ; 3 uses
  %i.ahu = getelementptr inbounds nuw [8 x i8], ptr %i.aht, i64 %.03481094
  %i.ahv = load i64, ptr %i.ahu, align 8, !tbaa !28
  %i.ahw = icmp eq i64 %i.ahv, %i.ahs
  br i1 %i.ahw, label %._crit_edge1097, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.ahx = add nuw i64 %.03481094, 1              ; 2 uses
  %exitcond1193.not = icmp eq i64 %i.ahx, %umax1192
  br i1 %exitcond1193.not, label %._crit_edge1097, label %bb.ej, !llvm.loop !405

._crit_edge1097:                                  ; preds = %bb.ek, %bb.ej, %bb.ei
  %.0348.lcssa = phi i64 [ 0, %bb.ei ], [ %.03481094, %bb.ej ], [ %umax1192, %bb.ek ] ; 3 uses
  %i.ahy = load ptr, ptr %i.afc, align 8, !tbaa !66
  %i.ahz = getelementptr inbounds nuw [8 x i8], ptr %i.ahy, i64 %i.ahp
  %i.aia = load double, ptr %i.ahz, align 8, !tbaa !67 ; 7 uses
  %i.aib = load ptr, ptr %i.aem, align 8, !tbaa !66
  %i.aic = getelementptr inbounds nuw [8 x i8], ptr %i.aib, i64 %.03521105
  %i.aid = load double, ptr %i.aic, align 8, !tbaa !67
  %i.aie = fmul double %i.aia, %i.aid             ; 2 uses
  %i.aif = load ptr, ptr %i.en, align 8, !tbaa !131
  %i.aig = sdiv i64 %.0348.lcssa, 64
  %i.aih = getelementptr inbounds [8 x i8], ptr %i.aif, i64 %i.aig
  %i.aii = and i64 %.0348.lcssa, -9223372036854775745
  %i.aij = icmp ugt i64 %i.aii, -9223372036854775808
  %storemerge.idx.i.i.i.i.i702 = select i1 %i.aij, i64 -8, i64 0
  %storemerge.i.i.i.i.i703 = getelementptr inbounds i8, ptr %i.aih, i64 %storemerge.idx.i.i.i.i.i702
  %i.aik = and i64 %.0348.lcssa, 63
  %i.ail = shl nuw i64 1, %i.aik
  %i.aim = load i64, ptr %storemerge.i.i.i.i.i703, align 8, !tbaa !28
  %i.ain = and i64 %i.aim, %i.ail
  %.not956 = icmp eq i64 %i.ain, 0
  %i.aio = fneg double %i.aie
  %.0346 = select i1 %.not956, double %i.aie, double %i.aio ; 2 uses
  %i.aip = load ptr, ptr %i.cl, align 8, !tbaa !161, !nonnull !122, !align !162 ; 3 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 1512
  %i.air = load i8, ptr %i.aiq, align 8, !tbaa !212, !range !121, !noundef !122
  %i.ais = trunc nuw i8 %i.air to i1
  %i.ait = load ptr, ptr %i.afd, align 8, !tbaa !66
  %i.aiu = getelementptr inbounds nuw [8 x i8], ptr %i.ait, i64 %i.ahp ; 2 uses
  br i1 %i.ais, label %bb.el, label %bb.fy

bb.el:                                            ; preds = %._crit_edge1097
  %i.aiv = load double, ptr %i.aiu, align 8, !tbaa !67
  %i.aiw = load ptr, ptr %i.afe, align 8, !tbaa !66
  %i.aix = getelementptr inbounds nuw [8 x i8], ptr %i.aiw, i64 %i.ahs
  %i.aiy = load double, ptr %i.aix, align 8, !tbaa !67 ; 2 uses
  %61 = fdiv double %i.aiv, %i.aiy                ; 5 uses
  %62 = fdiv double %.0346, %i.aiy                ; 4 uses
  %i.aiz = fcmp uno double %61, 0.000000e+00      ; 3 uses
  %63 = call nsz double @llvm.fabs.f64(double %62)
  %64 = call nsz double @llvm.fabs.f64(double %61)
  %i.aja = call nsz double @llvm.maxnum.f64(double %63, double %64) ; 2 uses
  br i1 %i.aiz, label %bb.eo, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aip, i64 1528
  %i.ajc = load double, ptr %i.ajb, align 8, !tbaa !406
  %i.ajd = fmul double %i.aia, %i.ajc
  %i.aje = fcmp ogt double %i.aja, %i.ajd
  br i1 %i.aje, label %bb.en, label %bb.fz

bb.en:                                            ; preds = %bb.em
  %i.ajf = fsub double %61, %62
  %i.ajg = call double @llvm.fabs.f64(double %i.ajf)
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.aip, i64 1536
  %i.aji = load double, ptr %i.ajh, align 8, !tbaa !407
  %i.ajj = fmul double %i.aja, %i.aji
  %i.ajk = fcmp ogt double %i.ajg, %i.ajj
  br i1 %i.ajk, label %bb.eo, label %bb.fz

bb.eo:                                            ; preds = %bb.en, %bb.el
  %i.ajl = add i64 %.03521105, %i.aff             ; 3 uses
  %i.ajm = load ptr, ptr %i.cw, align 8, !tbaa !63
  %i.ajn = load ptr, ptr %i.cu, align 8, !tbaa !66 ; 2 uses
  %i.ajo = ptrtoint ptr %i.ajm to i64
  %i.ajp = ptrtoint ptr %i.ajn to i64
  %i.ajq = sub i64 %i.ajo, %i.ajp
  %i.ajr = ashr exact i64 %i.ajq, 3               ; 2 uses
  %.not.i.i706 = icmp ult i64 %i.ajl, %i.ajr
  br i1 %.not.i.i706, label %_ZNSt6vectorIdSaIdEE2atEm.exit, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.233, i64 noundef %i.ajl, i64 noundef %i.ajr) #29
  unreachable

_ZNSt6vectorIdSaIdEE2atEm.exit:                   ; preds = %bb.eo
  %i.ajs = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.ajl
  %i.ajt = load double, ptr %i.ajs, align 8, !tbaa !67 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #28
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %53)
  %i.aju = load ptr, ptr %i.cl, align 8, !tbaa !161, !nonnull !122, !align !162
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 1560
  %i.ajw = load i64, ptr %i.ajv, align 8, !tbaa !18
  %i.ajx = icmp eq i64 %i.ajw, 0
  br i1 %i.ajx, label %bb.eq, label %bb.fl

bb.eq:                                            ; preds = %_ZNSt6vectorIdSaIdEE2atEm.exit
  %i.ajy = select i1 %i.aiz, ptr @.str.144, ptr @.str.145
  %i.ajz = select i1 %i.aiz, i64 3, i64 12
  %i.aka = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.afg, ptr noundef nonnull %i.ajy, i64 noundef %i.ajz)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit709 unwind label %.loopexit966 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit709: ; preds = %bb.eq
  %i.akb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.afg, ptr noundef nonnull @.str.146, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit711 unwind label %.loopexit966 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit711: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit709
  %i.akc = load ptr, ptr %i.afh, align 8, !tbaa !37
  %i.akd = getelementptr inbounds nuw [32 x i8], ptr %i.akc, i64 %i.ahp ; 2 uses
  %i.ake = load ptr, ptr %i.akd, align 8, !tbaa !25
  %i.akf = getelementptr inbounds nuw i8, ptr %i.akd, i64 8
  %i.akg = load i64, ptr %i.akf, align 8, !tbaa !18
  %i.akh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.afg, ptr noundef %i.ake, i64 noundef %i.akg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit713 unwind label %.loopexit966 ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit713: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit711
  %i.aki = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.akh, ptr noundef nonnull @.str.147, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit715 unwind label %.loopexit966 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit715: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit713
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #28
  invoke void @_ZNK6casadi11FmuInternal7desc_inB5cxx11EPNS_9FmuMemoryEmb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %54, ptr noundef nonnull align 8 dereferenceable(769) %0, ptr noundef nonnull %1, i64 noundef %i.ahs, i1 noundef zeroext true)
          to label %bb.er unwind label %bb.eu

bb.er:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit715
  %i.akj = load ptr, ptr %54, align 8, !tbaa !25
  %i.akk = load i64, ptr %i.afs, align 8, !tbaa !18
  %i.akl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.akh, ptr noundef %i.akj, i64 noundef %i.akk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit717 unwind label %bb.ev ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit717: ; preds = %bb.er
  %i.akm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.akl, ptr noundef nonnull @.str.148, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit719 unwind label %bb.ev ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit719: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit717
  %i.akn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.akl, double noundef %61)
          to label %_ZNSolsEd.exit unwind label %bb.ev ; 2 uses

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit719
  %i.ako = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.akn, ptr noundef nonnull @.str.149, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit722 unwind label %bb.ev ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit722: ; preds = %_ZNSolsEd.exit
  %i.akp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.akn, double noundef %62)
          to label %_ZNSolsEd.exit724 unwind label %bb.ev ; 2 uses

_ZNSolsEd.exit724:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit722
  %i.akq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.akp, ptr noundef nonnull @.str.150, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit726 unwind label %bb.ev ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit726: ; preds = %_ZNSolsEd.exit724
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #28
  %i.akr = load ptr, ptr %i.cl, align 8, !tbaa !161, !nonnull !122, !align !162
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 1584
  %i.akt = load i32, ptr %i.aks, align 8, !tbaa !382
  invoke void @_ZN6casadi9to_stringB5cxx11ENS_6FdModeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %55, i32 noundef %i.akt)
          to label %bb.es unwind label %bb.ew

bb.es:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit726
  %i.aku = load ptr, ptr %55, align 8, !tbaa !25
  %i.akv = load i64, ptr %i.aft, align 8, !tbaa !18
  %i.akw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.akp, ptr noundef %i.aku, i64 noundef %i.akv)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit728 unwind label %bb.ex

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit728: ; preds = %bb.es
  %i.akx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.akw, ptr noundef nonnull @.str.151, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit730 unwind label %bb.ex ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit730: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit728
  %i.aky = load ptr, ptr %55, align 8, !tbaa !25  ; 2 uses
  %i.akz = icmp eq ptr %i.aky, %i.afu
  br i1 %i.akz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit733, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i731

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i731: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit730
  %i.ala = load i64, ptr %i.afu, align 8, !tbaa !21
  %i.alb = add i64 %i.ala, 1
  call void @_ZdlPvm(ptr noundef %i.aky, i64 noundef %i.alb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit733

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit733: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit730, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i731
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #28
  %i.alc = load ptr, ptr %54, align 8, !tbaa !25  ; 2 uses
  %i.ald = icmp eq ptr %i.alc, %i.afv
  br i1 %i.ald, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit736, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i734

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i734: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit733
  %i.ale = load i64, ptr %i.afv, align 8, !tbaa !21
  %i.alf = add i64 %i.ale, 1
  call void @_ZdlPvm(ptr noundef %i.alc, i64 noundef %i.alf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit736

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit736: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit733, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i734
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #28
  %i.alg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.afg, ptr noundef nonnull @.str.152, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit738 unwind label %.loopexit966 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit738: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit736
  %i.alh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.afg, double noundef %i.aej)
          to label %_ZNSolsEd.exit740 unwind label %.loopexit966 ; 2 uses

_ZNSolsEd.exit740:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit738
  %i.ali = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.alh, ptr noundef nonnull @.str.1, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit742 unwind label %.loopexit966 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit742: ; preds = %_ZNSolsEd.exit740
  %i.alj = fmul double %i.aia, %i.ajt
  %i.alk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.alh, double noundef %i.alj)
          to label %_ZNSolsEd.exit744 unwind label %.loopexit966

_ZNSolsEd.exit744:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit742
  %i.all = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.alk, ptr noundef nonnull @.str.153, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit746.preheader unwind label %.loopexit966 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit746.preheader: ; preds = %_ZNSolsEd.exit744
  br i1 %.not4321088, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit756.peel, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit746._crit_edge

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit756.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit746.preheader
  %.pre1215 = load ptr, ptr %i.cu, align 8, !tbaa !66 ; 2 uses
  %.pre1214 = load ptr, ptr %i.cw, align 8, !tbaa !63
  %i.alm = ptrtoint ptr %.pre1214 to i64
  %i.aln = ptrtoint ptr %.pre1215 to i64
  %i.alo = sub i64 %i.alm, %i.aln
  %i.alp = ashr exact i64 %i.alo, 3               ; 2 uses
  %.not.i.i757.peel = icmp ult i64 %.03521105, %i.alp
  br i1 %.not.i.i757.peel, label %bb.et, label %.loopexit1207

bb.et:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit756.peel
  %i.alq = getelementptr inbounds nuw [8 x i8], ptr %.pre1215, i64 %.03521105
  %i.alr = load double, ptr %i.alq, align 8, !tbaa !67
  %i.als = fsub double %i.alr, %i.ajt
  %i.alt = fmul double %i.aia, %i.als
  %i.alu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.afg, double noundef %i.alt)
          to label %_ZNSolsEd.exit761.peel unwind label %.loopexit.loopexit.split-lp ; 0 uses

_ZNSolsEd.exit761.peel:                           ; preds = %bb.et
  br i1 %exitcond1202.peel.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit746._crit_edge, label %.lr.ph1104.peel.next

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit746._crit_edge: ; preds = %_ZNSolsEd.exit761, %_ZNSolsEd.exit761.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit746.preheader
  %i.alv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.afg, ptr noundef nonnull @.str.155, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit748 unwind label %.loopexit966 ; 0 uses

.loopexit966:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit748, %bb.fa, %bb.eq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit709, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit711, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit713, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit736, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit738, %_ZNSolsEd.exit740, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit742, %_ZNSolsEd.exit744, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit746._crit_edge, %bb.fb, %bb.fl, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit798, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit800, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit802, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit804, %_ZNSolsEd.exit806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit808, %_ZNSolsEd.exit810, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit812, %_ZNSolsEd.exit814, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit816, %_ZNSolsEd.exit818, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit820, %_ZNSolsEd.exit822, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit824, %_ZNSolsEd.exit826, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit828, %_ZNSolsEd.exit830, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit832, %_ZNSolsEd.exit834, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit836, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit838._crit_edge, %bb.fq, %.noexc882, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc884
  %lpad.loopexit968 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp967:                            ; preds = %bb.fo
  %lpad.loopexit.split-lp969 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.eu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit715
  %i.alw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754

bb.ev:                                            ; preds = %_ZNSolsEd.exit724, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit722, %_ZNSolsEd.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit719, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit717, %bb.er
  %i.alx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

bb.ew:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit726
  %i.aly = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit751

bb.ex:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit728, %bb.es
  %i.alz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ama = load ptr, ptr %55, align 8, !tbaa !25  ; 2 uses
  %i.amb = icmp eq ptr %i.ama, %i.afu
  br i1 %i.amb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit751, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i749

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i749: ; preds = %bb.ex
  %i.amc = load i64, ptr %i.afu, align 8, !tbaa !21
  %i.amd = add i64 %i.amc, 1
  call void @_ZdlPvm(ptr noundef %i.ama, i64 noundef %i.amd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit751

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit751: ; preds = %bb.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i749, %bb.ew
  %.pn438 = phi { ptr, i32 } [ %i.aly, %bb.ew ], [ %i.alz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i749 ], [ %i.alz, %bb.ex ]
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #28
  br label %bb.ey

bb.ey:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit751, %bb.ev
  %.pn438.pn = phi { ptr, i32 } [ %.pn438, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit751 ], [ %i.alx, %bb.ev ] ; 2 uses
  %i.ame = load ptr, ptr %54, align 8, !tbaa !25  ; 2 uses
  %i.amf = icmp eq ptr %i.ame, %i.afv
  br i1 %i.amf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i752

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i752: ; preds = %bb.ey
  %i.amg = load i64, ptr %i.afv, align 8, !tbaa !21
  %i.amh = add i64 %i.amg, 1
  call void @_ZdlPvm(ptr noundef %i.ame, i64 noundef %i.amh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754: ; preds = %bb.ey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i752, %bb.eu
  %.pn438.pn.pn = phi { ptr, i32 } [ %i.alw, %bb.eu ], [ %.pn438.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i752 ], [ %.pn438.pn, %bb.ey ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #28
  br label %.loopexit

.lr.ph1104.peel.next:                             ; preds = %_ZNSolsEd.exit761.peel, %_ZNSolsEd.exit761
  %.02771103 = phi i64 [ %i.amw, %_ZNSolsEd.exit761 ], [ 1, %_ZNSolsEd.exit761.peel ] ; 2 uses
  %i.ami = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.afg, ptr noundef nonnull @.str.154, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit756 unwind label %.loopexit.loopexit ; 0 uses

.loopexit.loopexit:                               ; preds = %bb.ez, %.lr.ph1104.peel.next
  %lpad.loopexit1204 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp:                      ; preds = %bb.et
  %lpad.loopexit.split-lp1205 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.loopexit1207
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit756: ; preds = %.lr.ph1104.peel.next
  %i.amj = mul i64 %.02771103, %i.v
  %i.amk = add i64 %i.amj, %.03521105             ; 3 uses
  %i.aml = load ptr, ptr %i.cw, align 8, !tbaa !63
  %i.amm = load ptr, ptr %i.cu, align 8, !tbaa !66 ; 2 uses
  %i.amn = ptrtoint ptr %i.aml to i64
  %i.amo = ptrtoint ptr %i.amm to i64
  %i.amp = sub i64 %i.amn, %i.amo
  %i.amq = ashr exact i64 %i.amp, 3               ; 2 uses
  %.not.i.i757 = icmp ult i64 %i.amk, %i.amq
  br i1 %.not.i.i757, label %bb.ez, label %.loopexit1207

.loopexit1207:                                    ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit756.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit756
  %.lcssa1126 = phi i64 [ %i.amk, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit756 ], [ %.03521105, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit756.peel ]
  %.lcssa1124 = phi i64 [ %i.amq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit756 ], [ %i.alp, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit756.peel ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.233, i64 noundef %.lcssa1126, i64 noundef %.lcssa1124) #29
          to label %.noexc758 unwind label %.loopexit.split-lp

.noexc758:                                        ; preds = %.loopexit1207
  unreachable

bb.ez:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit756
  %i.amr = getelementptr inbounds nuw [8 x i8], ptr %i.amm, i64 %i.amk
end_hunk_0
begin_hunk_1_@_ZNK6casadi11FmuInternal7eval_fdEPNS_9FmuMemoryEb:bb.a
  store ptr %i.anp, ptr %58, align 8, !tbaa !25
  %i.anq = load i64, ptr %i.a, align 8, !tbaa !28 ; 3 uses
  store i64 %i.anq, ptr %i.afy, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(53) %i.anp, ptr noundef nonnull align 1 dereferenceable(53) @.str.156, i64 53, i1 false)
  store i64 %i.anq, ptr %i.afz, align 8, !tbaa !18
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anp, i64 %i.anq
  store i8 0, ptr %i.anr, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %57, ptr noundef nonnull align 8 dereferenceable(32) %58)
          to label %bb.ff unwind label %bb.fi

bb.ff:                                            ; preds = %.noexc771
  %i.ans = load ptr, ptr %57, align 8, !tbaa !25
  %i.ant = load i64, ptr %i.aga, align 8, !tbaa !18
  %i.anu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ann, ptr noundef %i.ans, i64 noundef %i.ant)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit774 unwind label %bb.fj ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit774: ; preds = %bb.ff
  %i.anv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.anu, ptr noundef nonnull @.str.121, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit776 unwind label %bb.fj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit776: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit774
  %i.anw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.anu)
          to label %_ZNSolsEPFRSoS_E.exit778 unwind label %bb.fj ; 0 uses

_ZNSolsEPFRSoS_E.exit778:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit776
  %i.anx = load ptr, ptr %57, align 8, !tbaa !25  ; 2 uses
  %i.any = icmp eq ptr %i.anx, %i.agb
  br i1 %i.any, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit781, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i779

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i779: ; preds = %_ZNSolsEPFRSoS_E.exit778
  %i.anz = load i64, ptr %i.agb, align 8, !tbaa !21
  %i.aoa = add i64 %i.anz, 1
  call void @_ZdlPvm(ptr noundef %i.anx, i64 noundef %i.aoa) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit781

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit781: ; preds = %_ZNSolsEPFRSoS_E.exit778, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i779
  %i.aob = load ptr, ptr %58, align 8, !tbaa !25  ; 2 uses
  %i.aoc = icmp eq ptr %i.aob, %i.afy
  br i1 %i.aoc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit784, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i782

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i782: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit781
  %i.aod = load i64, ptr %i.afy, align 8, !tbaa !21
  %i.aoe = add i64 %i.aod, 1
  call void @_ZdlPvm(ptr noundef %i.aob, i64 noundef %i.aoe) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit784

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit784: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit781, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i782
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #28
  %i.aof = load ptr, ptr %56, align 8, !tbaa !25  ; 2 uses
  %i.aog = icmp eq ptr %i.aof, %i.afw
  br i1 %i.aog, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit787, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i785

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i785: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit784
  %i.aoh = load i64, ptr %i.afw, align 8, !tbaa !21
  %i.aoi = add i64 %i.aoh, 1
  call void @_ZdlPvm(ptr noundef %i.aof, i64 noundef %i.aoi) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit787

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit787: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit784, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i785
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #28
  br label %bb.fx

bb.fg:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit766, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.aoj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.fh:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit768
  %i.aok = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit793

bb.fi:                                            ; preds = %.noexc771
  %i.aol = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit790

bb.fj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit776, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit774, %bb.ff
  %i.aom = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aon = load ptr, ptr %57, align 8, !tbaa !25  ; 2 uses
  %i.aoo = icmp eq ptr %i.aon, %i.agb
  br i1 %i.aoo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit790, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i788

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i788: ; preds = %bb.fj
  %i.aop = load i64, ptr %i.agb, align 8, !tbaa !21
  %i.aoq = add i64 %i.aop, 1
  call void @_ZdlPvm(ptr noundef %i.aon, i64 noundef %i.aoq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit790

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit790: ; preds = %bb.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i788, %bb.fi
  %.pn442 = phi { ptr, i32 } [ %i.aol, %bb.fi ], [ %i.aom, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i788 ], [ %i.aom, %bb.fj ] ; 2 uses
  %i.aor = load ptr, ptr %58, align 8, !tbaa !25  ; 2 uses
  %i.aos = icmp eq ptr %i.aor, %i.afy
  br i1 %i.aos, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit793, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i791

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i791: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit790
  %i.aot = load i64, ptr %i.afy, align 8, !tbaa !21
  %i.aou = add i64 %i.aot, 1
  call void @_ZdlPvm(ptr noundef %i.aor, i64 noundef %i.aou) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit793

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit793: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit790, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i791, %bb.fh
  %.pn442.pn = phi { ptr, i32 } [ %i.aok, %bb.fh ], [ %.pn442, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i791 ], [ %.pn442, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit790 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #28
  br label %bb.fk

bb.fk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit793, %bb.fg
  %.pn442.pn.pn = phi { ptr, i32 } [ %.pn442.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit793 ], [ %i.aoj, %bb.fg ] ; 2 uses
  %i.aov = load ptr, ptr %56, align 8, !tbaa !25  ; 2 uses
  %i.aow = icmp eq ptr %i.aov, %i.afw
  br i1 %i.aow, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.fk, %bb.fd
  %.sink = phi ptr [ %i.anj, %bb.fd ], [ %i.aov, %bb.fk ]
  %.pn442.pn.pn.pn.ph = phi { ptr, i32 } [ %i.ani, %bb.fd ], [ %.pn442.pn.pn, %bb.fk ]
  %i.aox = load i64, ptr %i.afw, align 8, !tbaa !21
  %i.aoy = add i64 %i.aox, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.aoy) #27
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.fk, %bb.fd
  %.pn442.pn.pn.pn = phi { ptr, i32 } [ %i.ani, %bb.fd ], [ %.pn442.pn.pn, %bb.fk ], [ %.pn442.pn.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #28
  br label %.loopexit

bb.fl:                                            ; preds = %_ZNSt6vectorIdSaIdEE2atEm.exit
  %i.aoz = load ptr, ptr %i.afh, align 8, !tbaa !37
  %i.apa = getelementptr inbounds nuw [32 x i8], ptr %i.aoz, i64 %i.ahp ; 2 uses
  %i.apb = load ptr, ptr %i.apa, align 8, !tbaa !25
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apa, i64 8
  %i.apd = load i64, ptr %i.apc, align 8, !tbaa !18
  %i.ape = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.afg, ptr noundef %i.apb, i64 noundef %i.apd)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit798 unwind label %.loopexit966

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit798: ; preds = %bb.fl
  %i.apf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ape, ptr noundef nonnull @.str.104, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit800 unwind label %.loopexit966 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit800: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit798
  %i.apg = load ptr, ptr %i.afi, align 8, !tbaa !37
  %i.aph = getelementptr inbounds nuw [32 x i8], ptr %i.apg, i64 %i.ahs ; 2 uses
  %i.api = load ptr, ptr %i.aph, align 8, !tbaa !25
  %i.apj = getelementptr inbounds nuw i8, ptr %i.aph, i64 8
  %i.apk = load i64, ptr %i.apj, align 8, !tbaa !18
  %i.apl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.afg, ptr noundef %i.api, i64 noundef %i.apk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit802 unwind label %.loopexit966

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit802: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit800
  %i.apm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.apl, ptr noundef nonnull @.str.104, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit804 unwind label %.loopexit966 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit804: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit802
  %i.apn = load ptr, ptr %i.afj, align 8, !tbaa !66
  %i.apo = getelementptr inbounds nuw [8 x i8], ptr %i.apn, i64 %i.ahs
  %i.app = load double, ptr %i.apo, align 8, !tbaa !67
  %i.apq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.afg, double noundef %i.app)
          to label %_ZNSolsEd.exit806 unwind label %.loopexit966

_ZNSolsEd.exit806:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit804
  %i.apr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.apq, ptr noundef nonnull @.str.104, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit808 unwind label %.loopexit966 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit808: ; preds = %_ZNSolsEd.exit806
  %i.aps = load ptr, ptr %i.afe, align 8, !tbaa !66
  %i.apt = getelementptr inbounds nuw [8 x i8], ptr %i.aps, i64 %i.ahs
  %i.apu = load double, ptr %i.apt, align 8, !tbaa !67
  %i.apv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.afg, double noundef %i.apu)
          to label %_ZNSolsEd.exit810 unwind label %.loopexit966

_ZNSolsEd.exit810:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit808
  %i.apw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.apv, ptr noundef nonnull @.str.104, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit812 unwind label %.loopexit966 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit812: ; preds = %_ZNSolsEd.exit810
  %i.apx = load ptr, ptr %i.afk, align 8, !tbaa !66
  %i.apy = getelementptr inbounds nuw [8 x i8], ptr %i.apx, i64 %i.ahs
  %i.apz = load double, ptr %i.apy, align 8, !tbaa !67
  %i.aqa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.afg, double noundef %i.apz)
          to label %_ZNSolsEd.exit814 unwind label %.loopexit966

_ZNSolsEd.exit814:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit812
  %i.aqb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aqa, ptr noundef nonnull @.str.104, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit816 unwind label %.loopexit966 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit816: ; preds = %_ZNSolsEd.exit814
  %i.aqc = load ptr, ptr %i.afl, align 8, !tbaa !66
  %i.aqd = getelementptr inbounds nuw [8 x i8], ptr %i.aqc, i64 %i.ahs
  %i.aqe = load double, ptr %i.aqd, align 8, !tbaa !67
  %i.aqf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.afg, double noundef %i.aqe)
          to label %_ZNSolsEd.exit818 unwind label %.loopexit966

_ZNSolsEd.exit818:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit816
  %i.aqg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aqf, ptr noundef nonnull @.str.104, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit820 unwind label %.loopexit966 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit820: ; preds = %_ZNSolsEd.exit818
  %i.aqh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.afg, double noundef %61)
          to label %_ZNSolsEd.exit822 unwind label %.loopexit966

_ZNSolsEd.exit822:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit820
  %i.aqi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aqh, ptr noundef nonnull @.str.104, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit824 unwind label %.loopexit966 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit824: ; preds = %_ZNSolsEd.exit822
  %i.aqj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.afg, double noundef %62)
          to label %_ZNSolsEd.exit826 unwind label %.loopexit966

_ZNSolsEd.exit826:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit824
  %i.aqk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aqj, ptr noundef nonnull @.str.104, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit828 unwind label %.loopexit966 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit828: ; preds = %_ZNSolsEd.exit826
  %i.aql = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.afg, double noundef %i.aej)
          to label %_ZNSolsEd.exit830 unwind label %.loopexit966

_ZNSolsEd.exit830:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit828
  %i.aqm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aql, ptr noundef nonnull @.str.104, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit832 unwind label %.loopexit966 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit832: ; preds = %_ZNSolsEd.exit830
  %i.aqn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.afg, double noundef %i.ajt)
          to label %_ZNSolsEd.exit834 unwind label %.loopexit966

_ZNSolsEd.exit834:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit832
  %i.aqo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aqn, ptr noundef nonnull @.str.104, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit836 unwind label %.loopexit966 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit836: ; preds = %_ZNSolsEd.exit834
  %i.aqp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.afg, ptr noundef nonnull @.str.157, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit838.preheader unwind label %.loopexit966 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit838.preheader: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit836
  br i1 %.not4321088, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit842.peel, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit838._crit_edge

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit842.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit838.preheader
  %.pre1213 = load ptr, ptr %i.cu, align 8, !tbaa !66 ; 2 uses
  %.pre1212 = load ptr, ptr %i.cw, align 8, !tbaa !63
  %i.aqq = ptrtoint ptr %.pre1212 to i64
  %i.aqr = ptrtoint ptr %.pre1213 to i64
  %i.aqs = sub i64 %i.aqq, %i.aqr
  %i.aqt = ashr exact i64 %i.aqs, 3               ; 2 uses
  %.not.i.i843.peel = icmp ult i64 %.03521105, %i.aqt
  br i1 %.not.i.i843.peel, label %bb.fm, label %.loopexit1198

bb.fm:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit842.peel
  %i.aqu = getelementptr inbounds nuw [8 x i8], ptr %.pre1213, i64 %.03521105
  %i.aqv = load double, ptr %i.aqu, align 8, !tbaa !67
  %i.aqw = fsub double %i.aqv, %i.ajt
  %i.aqx = fmul double %i.aia, %i.aqw
  %i.aqy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.afg, double noundef %i.aqx)
          to label %_ZNSolsEd.exit847.peel unwind label %.loopexit961.loopexit.split-lp ; 0 uses

_ZNSolsEd.exit847.peel:                           ; preds = %bb.fm
  br i1 %exitcond1194.peel.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit838._crit_edge, label %.lr.ph1102.peel.next

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit838._crit_edge: ; preds = %_ZNSolsEd.exit847, %_ZNSolsEd.exit847.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit838.preheader
  %i.aqz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.afg, ptr noundef nonnull @.str.155, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit840 unwind label %.loopexit966 ; 0 uses

.lr.ph1102.peel.next:                             ; preds = %_ZNSolsEd.exit847.peel, %_ZNSolsEd.exit847
  %.02761101 = phi i64 [ %i.aro, %_ZNSolsEd.exit847 ], [ 1, %_ZNSolsEd.exit847.peel ] ; 2 uses
  %i.ara = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.afg, ptr noundef nonnull @.str.158, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit842 unwind label %.loopexit961.loopexit ; 0 uses

.loopexit961.loopexit:                            ; preds = %bb.fn, %.lr.ph1102.peel.next
  %lpad.loopexit1196 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit961.loopexit.split-lp:                   ; preds = %bb.fm
  %lpad.loopexit.split-lp1197 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp962:                            ; preds = %.loopexit1198
  %lpad.loopexit.split-lp964 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit842: ; preds = %.lr.ph1102.peel.next
  %i.arb = mul i64 %.02761101, %i.v
  %i.arc = add i64 %i.arb, %.03521105             ; 3 uses
  %i.ard = load ptr, ptr %i.cw, align 8, !tbaa !63
  %i.are = load ptr, ptr %i.cu, align 8, !tbaa !66 ; 2 uses
  %i.arf = ptrtoint ptr %i.ard to i64
  %i.arg = ptrtoint ptr %i.are to i64
  %i.arh = sub i64 %i.arf, %i.arg
  %i.ari = ashr exact i64 %i.arh, 3               ; 2 uses
  %.not.i.i843 = icmp ult i64 %i.arc, %i.ari
  br i1 %.not.i.i843, label %bb.fn, label %.loopexit1198

.loopexit1198:                                    ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit842.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit842
  %.lcssa1122 = phi i64 [ %i.arc, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit842 ], [ %.03521105, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit842.peel ]
  %.lcssa = phi i64 [ %i.ari, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit842 ], [ %i.aqt, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit842.peel ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.233, i64 noundef %.lcssa1122, i64 noundef %.lcssa) #29
          to label %.noexc844 unwind label %.loopexit.split-lp962

.noexc844:                                        ; preds = %.loopexit1198
  unreachable

bb.fn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit842
  %i.arj = getelementptr inbounds nuw [8 x i8], ptr %i.are, i64 %i.arc
  %i.ark = load double, ptr %i.arj, align 8, !tbaa !67
  %i.arl = fsub double %i.ark, %i.ajt
  %i.arm = fmul double %i.aia, %i.arl
  %i.arn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.afg, double noundef %i.arm)
          to label %_ZNSolsEd.exit847 unwind label %.loopexit961.loopexit ; 0 uses

_ZNSolsEd.exit847:                                ; preds = %bb.fn
  %i.aro = add nuw nsw i64 %.02761101, 1          ; 2 uses
  %exitcond1194.not = icmp eq i64 %i.aro, %i.cp
  br i1 %exitcond1194.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit838._crit_edge, label %.lr.ph1102.peel.next, !llvm.loop !417

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit840: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit838._crit_edge
  %i.arp = load ptr, ptr %i.afg, align 8, !tbaa !26
  %i.arq = getelementptr i8, ptr %i.arp, i64 -24
  %i.arr = load i64, ptr %i.arq, align 8
  %i.ars = getelementptr inbounds i8, ptr %i.afg, i64 %i.arr
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 240
  %i.aru = load ptr, ptr %i.art, align 8, !tbaa !418 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.aru, null
  br i1 %.not.i.i.i, label %bb.fo, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.fo:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit840
  invoke void @_ZSt16__throw_bad_castv() #29
          to label %.noexc881 unwind label %.loopexit.split-lp967

.noexc881:                                        ; preds = %bb.fo
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit840
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aru, i64 56
  %i.arw = load i8, ptr %i.arv, align 8, !tbaa !431
  %.not.i1.i.i = icmp eq i8 %i.arw, 0
  br i1 %.not.i1.i.i, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.arx = getelementptr inbounds nuw i8, ptr %i.aru, i64 67
  %i.ary = load i8, ptr %i.arx, align 1, !tbaa !21
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.fq:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aru)
          to label %.noexc882 unwind label %.loopexit966

.noexc882:                                        ; preds = %bb.fq
  %i.arz = load ptr, ptr %i.aru, align 8, !tbaa !26
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arz, i64 48
  %i.asb = load ptr, ptr %i.asa, align 8
  %i.asc = invoke noundef signext i8 %i.asb(ptr noundef nonnull align 8 dereferenceable(570) %i.aru, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit966, !inline_history !436

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc882, %bb.fp
  %.0.i.i.i = phi i8 [ %i.ary, %bb.fp ], [ %i.asc, %.noexc882 ]
  %i.asd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.afg, i8 noundef signext %.0.i.i.i)
          to label %.noexc884 unwind label %.loopexit966

.noexc884:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ase = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.asd)
          to label %_ZNSolsEPFRSoS_E.exit849 unwind label %.loopexit966 ; 0 uses

_ZNSolsEPFRSoS_E.exit849:                         ; preds = %.noexc884
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #28
  %i.asf = load ptr, ptr %i.cl, align 8, !tbaa !161, !nonnull !122, !align !162
  %i.asg = getelementptr inbounds nuw i8, ptr %i.asf, i64 1552
  invoke void @_ZN6casadi10Filesystem12ofstream_ptrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt13_Ios_Openmode(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %59, ptr noundef nonnull align 8 dereferenceable(32) %i.asg, i32 noundef 1)
          to label %bb.fr unwind label %bb.fv

bb.fr:                                            ; preds = %_ZNSolsEPFRSoS_E.exit849
  %i.ash = load ptr, ptr %59, align 8, !tbaa !437
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !438)
  call void @llvm.experimental.noalias.scope.decl(metadata !441)
  store ptr %i.afm, ptr %60, align 8, !tbaa !12, !alias.scope !444
  store i64 0, ptr %i.afn, align 8, !tbaa !18, !alias.scope !444
  store i8 0, ptr %i.afm, align 8, !tbaa !21, !alias.scope !444
  %i.asi = load ptr, ptr %i.afo, align 8, !tbaa !77, !noalias !444 ; 3 uses
  %.not.i.not.i.i850 = icmp eq ptr %i.asi, null
  %i.asj = load ptr, ptr %i.afp, align 8, !noalias !444 ; 2 uses
  %i.ask = icmp ugt ptr %i.asi, %i.asj
  %.08.i.i.i851 = select i1 %i.ask, ptr %i.asi, ptr %i.asj ; 2 uses
  %.not5.i.i852 = icmp eq ptr %.08.i.i.i851, null
  %.not.i.i853 = select i1 %.not.i.not.i.i850, i1 true, i1 %.not5.i.i852
  br i1 %.not.i.i853, label %bb.fu, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.asl = load ptr, ptr %i.afq, align 8, !tbaa !81, !noalias !444 ; 2 uses
  %i.asm = ptrtoint ptr %.08.i.i.i851 to i64
  %i.asn = ptrtoint ptr %i.asl to i64
  %i.aso = sub i64 %i.asm, %i.asn
  %i.asp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %60, i64 noundef 0, i64 noundef 0, ptr noundef %i.asl, i64 noundef %i.aso)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit859 unwind label %bb.ft ; 0 uses

bb.ft:                                            ; preds = %bb.fu, %bb.fs
  %i.asq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.asr = load ptr, ptr %60, align 8, !tbaa !25, !alias.scope !444 ; 2 uses
  %i.ass = icmp eq ptr %i.asr, %i.afm
  br i1 %i.ass, label %.body857, label %.body857.sink.split

bb.fu:                                            ; preds = %bb.fr
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %60, ptr noundef nonnull align 8 dereferenceable(32) %i.afr)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit859 unwind label %bb.ft

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit859: ; preds = %bb.fu, %bb.fs
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb:bb.a
  br i1 %.not26.i.i.i90, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, i64 8
  %i.eg = shl nsw i64 -1, %i.dx                   ; 2 uses
  br i1 %4, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.eh = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !28
  %i.ei = or i64 %i.eh, %i.eg
  br label %_ZSt14__fill_bvectorPmjjb.exit.i.i.i92

bb.ab:                                            ; preds = %bb.z
  %i.ej = xor i64 %i.eg, -1
  %i.ek = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !28
  %i.el = and i64 %i.ek, %i.ej
  br label %_ZSt14__fill_bvectorPmjjb.exit.i.i.i92

_ZSt14__fill_bvectorPmjjb.exit.i.i.i92:           ; preds = %bb.ab, %bb.aa
  %storemerge.i.i.i.i93 = phi i64 [ %i.el, %bb.ab ], [ %i.ei, %bb.aa ]
  store i64 %storemerge.i.i.i.i93, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !28
  br label %bb.ac

bb.ac:                                            ; preds = %_ZSt14__fill_bvectorPmjjb.exit.i.i.i92, %bb.y
  %.0.i.i.i94 = phi ptr [ %i.ef, %_ZSt14__fill_bvectorPmjjb.exit.i.i.i92 ], [ %.sroa.03.0.lcssa.i.i.i.i.i.i, %bb.y ] ; 2 uses
  %i.em = ptrtoint ptr %storemerge.i.i.i86 to i64
  %i.en = ptrtoint ptr %.0.i.i.i94 to i64
  %i.eo = sub i64 %i.em, %i.en
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i.i.i94, i8 %.neg, i64 %i.eo, i1 false)
  %.not27.i.i.i95 = icmp eq i32 %i.ee, 0
  br i1 %.not27.i.i.i95, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ep = sub nuw nsw i32 64, %i.ee
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = lshr i64 -1, %i.eq                      ; 2 uses
  br i1 %4, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.es = load i64, ptr %storemerge.i.i.i86, align 8, !tbaa !28
  %i.et = or i64 %i.es, %i.er
  br label %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i96

bb.af:                                            ; preds = %bb.ad
  %i.eu = xor i64 %i.er, -1
  %i.ev = load i64, ptr %storemerge.i.i.i86, align 8, !tbaa !28
  %i.ew = and i64 %i.ev, %i.eu
  br label %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i96

_ZSt14__fill_bvectorPmjjb.exit29.i.i.i96:         ; preds = %bb.af, %bb.ae
  %storemerge.i28.i.i.i97 = phi i64 [ %i.ew, %bb.af ], [ %i.et, %bb.ae ]
  store i64 %storemerge.i28.i.i.i97, ptr %storemerge.i.i.i86, align 8, !tbaa !28
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101

bb.ag:                                            ; preds = %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit
  %.not25.i.i.i98 = icmp eq i32 %.sroa.55.0.lcssa.i.i.i.i.i.i, %i.ee
  br i1 %.not25.i.i.i98, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ex = shl nsw i64 -1, %i.dx
  %i.ey = sub nuw nsw i32 64, %i.ee
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = lshr i64 -1, %i.ez
  %i.fb = and i64 %i.fa, %i.ex                    ; 2 uses
  br i1 %4, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fc = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !28
  %i.fd = or i64 %i.fc, %i.fb
  br label %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i99

bb.aj:                                            ; preds = %bb.ah
  %i.fe = xor i64 %i.fb, -1
  %i.ff = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !28
  %i.fg = and i64 %i.ff, %i.fe
  br label %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i99

_ZSt14__fill_bvectorPmjjb.exit31.i.i.i99:         ; preds = %bb.aj, %bb.ai
  %storemerge.i30.i.i.i100 = phi i64 [ %i.fg, %bb.aj ], [ %i.fd, %bb.ai ]
  store i64 %storemerge.i30.i.i.i100, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !28
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101

_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101: ; preds = %bb.ac, %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i96, %bb.ag, %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i99
  %.sroa.0.0.copyload.i102 = load ptr, ptr %i.i, align 8
  %.sroa.2.0.copyload.i104 = load i32, ptr %i.k, align 8
  %i.fh = ptrtoint ptr %.sroa.0.0.copyload.i102 to i64
  %i.fi = sub i64 %i.fh, %i.cz
  %i.fj = shl nsw i64 %i.fi, 3
  %i.fk = zext i32 %.sroa.2.0.copyload.i104 to i64
  %i.fl = zext i32 %2 to i64
  %i.fm = sub nsw i64 %i.fk, %i.fl
  %i.fn = add i64 %i.fm, %i.fj                    ; 2 uses
  %i.fo = icmp sgt i64 %i.fn, 0
  br i1 %i.fo, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122
  %.024.i.i.i.i.i118 = phi i64 [ %i.ge, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ], [ %i.fn, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ] ; 2 uses
  %.sroa.516.023.i.i.i.i.i = phi i32 [ %spec.select19.i.i.i.i.i126, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ], [ %2, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ] ; 3 uses
  %.sroa.013.022.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i125, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ], [ %1, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ] ; 2 uses
  %.sroa.59.021.i.i.i.i.i119 = phi i32 [ %.sroa.59.1.i.i.i.i.i129, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ], [ %i.ee, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ] ; 3 uses
  %.sroa.07.020.i.i.i.i.i120 = phi ptr [ %.sroa.07.1.i.i.i.i.i128, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ], [ %storemerge.i.i.i86, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ] ; 4 uses
  %i.fp = zext nneg i32 %.sroa.516.023.i.i.i.i.i to i64
  %i.fq = shl nuw i64 1, %i.fp
  %i.fr = zext nneg i32 %.sroa.59.021.i.i.i.i.i119 to i64
  %i.fs = shl nuw i64 1, %i.fr                    ; 2 uses
  %i.ft = load i64, ptr %.sroa.013.022.i.i.i.i.i, align 8, !tbaa !28
  %i.fu = and i64 %i.ft, %i.fq
  %.not.i.i.i.i.i.i121 = icmp eq i64 %i.fu, 0
  br i1 %.not.i.i.i.i.i.i121, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.fv = load i64, ptr %.sroa.07.020.i.i.i.i.i120, align 8, !tbaa !28
  %i.fw = or i64 %i.fv, %i.fs
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122

bb.al:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.fx = xor i64 %i.fs, -1
  %i.fy = load i64, ptr %.sroa.07.020.i.i.i.i.i120, align 8, !tbaa !28
  %i.fz = and i64 %i.fy, %i.fx
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122:   ; preds = %bb.al, %bb.ak
  %storemerge.i.i.i.i.i123 = phi i64 [ %i.fw, %bb.ak ], [ %i.fz, %bb.al ]
  store i64 %storemerge.i.i.i.i.i123, ptr %.sroa.07.020.i.i.i.i.i120, align 8, !tbaa !28
  %i.ga = add i32 %.sroa.516.023.i.i.i.i.i, 1
  %i.gb = icmp eq i32 %.sroa.516.023.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i124 = select i1 %i.gb, i64 8, i64 0
  %spec.select.i.i.i.i.i125 = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i124
  %spec.select19.i.i.i.i.i126 = select i1 %i.gb, i32 0, i32 %i.ga
  %i.gc = add i32 %.sroa.59.021.i.i.i.i.i119, 1
  %i.gd = icmp eq i32 %.sroa.59.021.i.i.i.i.i119, 63 ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i127 = select i1 %i.gd, i64 8, i64 0
  %.sroa.07.1.i.i.i.i.i128 = getelementptr inbounds nuw i8, ptr %.sroa.07.020.i.i.i.i.i120, i64 %.sroa.07.1.idx.i.i.i.i.i127 ; 2 uses
  %.sroa.59.1.i.i.i.i.i129 = select i1 %i.gd, i32 0, i32 %i.gc ; 2 uses
  %i.ge = add nsw i64 %.024.i.i.i.i.i118, -1
  %i.gf = icmp sgt i64 %.024.i.i.i.i.i118, 1
  br i1 %i.gf, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !575

_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit:  ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101
  %.sroa.07.0.lcssa.i.i.i.i.i114 = phi ptr [ %storemerge.i.i.i86, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ], [ %.sroa.07.1.i.i.i.i.i128, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ]
  %.sroa.59.0.lcssa.i.i.i.i.i115 = phi i32 [ %i.ee, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ], [ %.sroa.59.1.i.i.i.i.i129, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ]
  %i.gg = load ptr, ptr %0, align 8, !tbaa !131   ; 2 uses
  %.not.i130 = icmp eq ptr %i.gg, null
  br i1 %.not.i130, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.gh = load ptr, ptr %i.b, align 8, !tbaa !572 ; 2 uses
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = ptrtoint ptr %i.gg to i64
  %i.gk = sub i64 %i.gi, %i.gj                    ; 2 uses
  %i.gl = ashr exact i64 %i.gk, 3
  %i.gm = sub nsw i64 0, %i.gl
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gh, i64 %i.gm
  tail call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gk) #27
  br label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit: ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, %bb.am
  %i.go = lshr i64 %i.cv, 6
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.go
  store ptr %i.gp, ptr %i.b, align 8, !tbaa !572
  store ptr %i.cy, ptr %0, align 8
  %.sroa.5138.0..sroa_idx139 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.5138.0..sroa_idx139, align 8
  store ptr %.sroa.07.0.lcssa.i.i.i.i.i114, ptr %i.i, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit
  %.sroa.59.0.lcssa.i.i.i.i.i115.sink = phi i32 [ %.sroa.59.0.lcssa.i.i.i.i.i115, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit ], [ %i.co, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit ]
  store i32 %.sroa.59.0.lcssa.i.i.i.i.i115.sink, ptr %i.k, align 8
  br label %bb.an

bb.an:                                            ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi21casadi_smoothing_diffIdEEvPPKT_PS1_S1_xS1_(ptr noundef %0, ptr noundef %1, double noundef %2, i64 noundef %3, double noundef %4) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = fmul double %2, %2                       ; 3 uses
  %i.c = fmul double %2, 2.000000e+00
  %.pre = load ptr, ptr %0, align 8, !tbaa !157
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre52 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !157
  %.phi.trans.insert53 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre54 = load ptr, ptr %.phi.trans.insert53, align 8, !tbaa !157
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !157
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !157
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.04451 = phi i64 [ 0, %.lr.ph ], [ %i.bt, %bb.e ] ; 7 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.04451 ; 4 uses
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !67
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.04451
  %i.j = load double, ptr %i.i, align 8, !tbaa !67 ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.pre52, i64 %.04451 ; 2 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !67 ; 4 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.pre54, i64 %.04451 ; 3 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !67 ; 4 uses
  %i.o = tail call double @llvm.fabs.f64(double %i.j)
  %i.p = fcmp one double %i.o, +inf
  %i.q = tail call double @llvm.fabs.f64(double %i.l) ; 2 uses
  %i.r = fcmp one double %i.q, +inf
  %or.cond = select i1 %i.p, i1 %i.r, i1 false
  %i.s = tail call double @llvm.fabs.f64(double %i.n) ; 2 uses
  %i.t = fcmp one double %i.s, +inf
  %or.cond48 = select i1 %or.cond, i1 %i.t, i1 false
  br i1 %or.cond48, label %_ZN6casadi29casadi_smoothing_diff_weightsIdEET_xS1_S1_S1_PS1_.exit, label %bb.c

_ZN6casadi29casadi_smoothing_diff_weightsIdEET_xS1_S1_S1_PS1_.exit: ; preds = %bb.b
  %i.u = fmul nnan double %i.l, -4.000000e+00
  %5 = tail call double @llvm.fmuladd.f64(double %i.n, double 3.000000e+00, double %i.u)
  %6 = fadd double %i.j, %5
  %7 = tail call double @llvm.fmuladd.f64(double %i.l, double -2.000000e+00, double %i.n)
  %8 = fadd double %i.j, %7
  %i.v = fdiv double %8, %i.b                     ; 2 uses
  %i.w = tail call double @llvm.fmuladd.f64(double %i.v, double %i.v, double %4)
  %i.x = fdiv double 1.000000e+00, %i.w           ; 2 uses
  %i.y = fadd double %i.x, 0.000000e+00
  %i.z = tail call double @llvm.fmuladd.f64(double %i.x, double %6, double 0.000000e+00) ; 2 uses
  store double %i.z, ptr %i.h, align 8, !tbaa !67
  %.pre56 = load double, ptr %i.k, align 8, !tbaa !67 ; 2 uses
  %.pre57 = load double, ptr %i.m, align 8, !tbaa !67 ; 2 uses
  %.pre61 = tail call double @llvm.fabs.f64(double %.pre56)
  %.pre62 = tail call double @llvm.fabs.f64(double %.pre57)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN6casadi29casadi_smoothing_diff_weightsIdEET_xS1_S1_S1_PS1_.exit
  %.pre-phi63 = phi double [ %i.s, %bb.b ], [ %.pre62, %_ZN6casadi29casadi_smoothing_diff_weightsIdEET_xS1_S1_S1_PS1_.exit ] ; 2 uses
  %.pre-phi = phi double [ %i.q, %bb.b ], [ %.pre61, %_ZN6casadi29casadi_smoothing_diff_weightsIdEET_xS1_S1_S1_PS1_.exit ]
  %i.aa = phi double [ 0.000000e+00, %bb.b ], [ %i.z, %_ZN6casadi29casadi_smoothing_diff_weightsIdEET_xS1_S1_S1_PS1_.exit ] ; 2 uses
  %i.ab = phi double [ %i.n, %bb.b ], [ %.pre57, %_ZN6casadi29casadi_smoothing_diff_weightsIdEET_xS1_S1_S1_PS1_.exit ] ; 2 uses
  %i.ac = phi double [ %i.l, %bb.b ], [ %.pre56, %_ZN6casadi29casadi_smoothing_diff_weightsIdEET_xS1_S1_S1_PS1_.exit ] ; 2 uses
  %.1 = phi double [ 0.000000e+00, %bb.b ], [ %i.y, %_ZN6casadi29casadi_smoothing_diff_weightsIdEET_xS1_S1_S1_PS1_.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.04451 ; 2 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !67 ; 4 uses
  %i.af = fcmp one double %.pre-phi, +inf
  %i.ag = fcmp one double %.pre-phi63, +inf
  %or.cond.1 = select i1 %i.af, i1 %i.ag, i1 false
  %i.ah = tail call double @llvm.fabs.f64(double %i.ae) ; 2 uses
  %i.ai = fcmp one double %i.ah, +inf
  %or.cond48.1 = select i1 %or.cond.1, i1 %i.ai, i1 false
  br i1 %or.cond48.1, label %_ZN6casadi29casadi_smoothing_diff_weightsIdEET_xS1_S1_S1_PS1_.exit.1, label %bb.d

_ZN6casadi29casadi_smoothing_diff_weightsIdEET_xS1_S1_S1_PS1_.exit.1: ; preds = %bb.c
  %i.aj = fsub double %i.ae, %i.ac
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.ab, double -2.000000e+00, double %i.ae)
  %i.al = fadd double %i.ac, %i.ak
  %i.am = fdiv double %i.al, %i.b                 ; 2 uses
  %i.an = tail call double @llvm.fmuladd.f64(double %i.am, double %i.am, double %4)
  %i.ao = fdiv double 4.000000e+00, %i.an         ; 2 uses
  %i.ap = fadd double %.1, %i.ao
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.aj, double %i.aa) ; 2 uses
  store double %i.aq, ptr %i.h, align 8, !tbaa !67
  %.pre59 = load double, ptr %i.m, align 8, !tbaa !67 ; 2 uses
  %.pre60 = load double, ptr %i.ad, align 8, !tbaa !67 ; 2 uses
  %.pre64 = tail call double @llvm.fabs.f64(double %.pre59)
  %.pre66 = tail call double @llvm.fabs.f64(double %.pre60)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6casadi29casadi_smoothing_diff_weightsIdEET_xS1_S1_S1_PS1_.exit.1, %bb.c
  %.pre-phi67 = phi double [ %.pre66, %_ZN6casadi29casadi_smoothing_diff_weightsIdEET_xS1_S1_S1_PS1_.exit.1 ], [ %i.ah, %bb.c ]
  %.pre-phi65 = phi double [ %.pre64, %_ZN6casadi29casadi_smoothing_diff_weightsIdEET_xS1_S1_S1_PS1_.exit.1 ], [ %.pre-phi63, %bb.c ]
  %i.ar = phi double [ %i.aq, %_ZN6casadi29casadi_smoothing_diff_weightsIdEET_xS1_S1_S1_PS1_.exit.1 ], [ %i.aa, %bb.c ] ; 2 uses
  %i.as = phi double [ %.pre60, %_ZN6casadi29casadi_smoothing_diff_weightsIdEET_xS1_S1_S1_PS1_.exit.1 ], [ %i.ae, %bb.c ] ; 2 uses
  %i.at = phi double [ %.pre59, %_ZN6casadi29casadi_smoothing_diff_weightsIdEET_xS1_S1_S1_PS1_.exit.1 ], [ %i.ab, %bb.c ] ; 2 uses
  %.1.1 = phi double [ %i.ap, %_ZN6casadi29casadi_smoothing_diff_weightsIdEET_xS1_S1_S1_PS1_.exit.1 ], [ %.1, %bb.c ] ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.04451
  %i.av = load double, ptr %i.au, align 8, !tbaa !67 ; 3 uses
  %i.aw = fcmp one double %.pre-phi65, +inf
  %i.ax = fcmp one double %.pre-phi67, +inf
  %or.cond.2 = select i1 %i.aw, i1 %i.ax, i1 false
  %i.ay = tail call double @llvm.fabs.f64(double %i.av)
  %i.az = fcmp one double %i.ay, +inf
  %or.cond48.2 = select i1 %or.cond.2, i1 %i.az, i1 false
  br i1 %or.cond48.2, label %_ZN6casadi29casadi_smoothing_diff_weightsIdEET_xS1_S1_S1_PS1_.exit.2, label %bb.e

_ZN6casadi29casadi_smoothing_diff_weightsIdEET_xS1_S1_S1_PS1_.exit.2: ; preds = %bb.d
  %i.ba = fmul nnan double %i.as, 4.000000e+00
  %i.bb = insertelement <2 x double> poison, double %i.at, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.as, i64 1
  %i.bd = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.av, i64 1
  %i.bf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> <double -3.000000e+00, double -2.000000e+00>, <2 x double> %i.be) ; 2 uses
  %i.bg = extractelement <2 x double> %i.bf, i64 0
  %i.bh = fsub double %i.bg, %i.av
  %i.bi = extractelement <2 x double> %i.bf, i64 1
  %i.bj = fadd double %i.at, %i.bi
  %i.bk = fdiv double %i.bj, %i.b                 ; 2 uses
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bk, double %i.bk, double %4)
  %i.bm = fdiv double 1.000000e+00, %i.bl         ; 2 uses
  %i.bn = fadd double %.1.1, %i.bm
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bh, double %i.ar)
  br label %bb.e

bb.e:                                             ; preds = %_ZN6casadi29casadi_smoothing_diff_weightsIdEET_xS1_S1_S1_PS1_.exit.2, %bb.d
  %i.bp = phi double [ %i.bo, %_ZN6casadi29casadi_smoothing_diff_weightsIdEET_xS1_S1_S1_PS1_.exit.2 ], [ %i.ar, %bb.d ]
  %.1.2 = phi double [ %i.bn, %_ZN6casadi29casadi_smoothing_diff_weightsIdEET_xS1_S1_S1_PS1_.exit.2 ], [ %.1.1, %bb.d ] ; 2 uses
  %i.bq = fcmp oeq double %.1.2, 0.000000e+00
  %i.br = fmul double %i.c, %.1.2
  %i.bs = fdiv double %i.bp, %i.br
  %storemerge = select i1 %i.bq, double +qnan, double %i.bs
  store double %storemerge, ptr %i.h, align 8, !tbaa !67
  %i.bt = add nuw nsw i64 %.04451, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bt, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !576

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void
}

declare void @_ZN6casadi17SerializingStream4packERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(73), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN6casadi17SerializingStream8decorateEc(ptr noundef nonnull align 8 dereferenceable(73), i8 noundef signext) local_unnamed_addr #2

declare void @_ZN6casadi17SerializingStream4packEx(ptr noundef nonnull align 8 dereferenceable(73), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi17SerializingStream4packINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorImSaImEEEEvRKSt3mapIT_T0_St4lessISC_ESaISt4pairIKSC_SD_EEE(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN6casadi17SerializingStream8decorateEc(ptr noundef nonnull align 8 dereferenceable(73) %0, i8 noundef signext 68)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !222
  tail call void @_ZN6casadi17SerializingStream4packEx(ptr noundef nonnull align 8 dereferenceable(73) %0, i64 noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !220  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not10 = icmp eq ptr %i.d, %i.e
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6casadi17SerializingStream4packImEEvRKSt6vectorIT_SaIS3_EE.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN6casadi17SerializingStream4packImEEvRKSt6vectorIT_SaIS3_EE.exit
  %.sroa.07.011 = phi ptr [ %i.s, %_ZN6casadi17SerializingStream4packImEEvRKSt6vectorIT_SaIS3_EE.exit ], [ %i.d, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 32
  tail call void @_ZN6casadi17SerializingStream4packERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 64 ; 2 uses
  tail call void @_ZN6casadi17SerializingStream8decorateEc(ptr noundef nonnull align 8 dereferenceable(73) %0, i8 noundef signext 86)
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 72 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  tail call void @_ZN6casadi17SerializingStream4packEx(ptr noundef nonnull align 8 dereferenceable(73) %0, i64 noundef %i.n)
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !125  ; 2 uses
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !125  ; 2 uses
  %.not9.i = icmp eq ptr %i.o, %i.p
  br i1 %.not9.i, label %_ZN6casadi17SerializingStream4packImEEvRKSt6vectorIT_SaIS3_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %.sroa.06.010.i = phi ptr [ %i.r, %.lr.ph.i ], [ %i.o, %.lr.ph ] ; 2 uses
  %i.q = load i64, ptr %.sroa.06.010.i, align 8, !tbaa !28
  tail call void @_ZN6casadi17SerializingStream4packEm(ptr noundef nonnull align 8 dereferenceable(73) %0, i64 noundef %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.r, %i.p
  br i1 %.not.i, label %_ZN6casadi17SerializingStream4packImEEvRKSt6vectorIT_SaIS3_EE.exit, label %.lr.ph.i

_ZN6casadi17SerializingStream4packImEEvRKSt6vectorIT_SaIS3_EE.exit: ; preds = %.lr.ph.i, %.lr.ph
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.07.011) #31 ; 2 uses
  %.not = icmp eq ptr %i.s, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare void @_ZN6casadi17SerializingStream4packEm(ptr noundef nonnull align 8 dereferenceable(73), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #22

declare void @_ZN6casadi17SerializingStream4packEb(ptr noundef nonnull align 8 dereferenceable(73), i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN6casadi17SerializingStream4packEd(ptr noundef nonnull align 8 dereferenceable(73), double noundef) local_unnamed_addr #2

declare void @_ZN6casadi17SerializingStream4packEj(ptr noundef nonnull align 8 dereferenceable(73), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi17SerializingStream4packISt6vectorImSaImEEEEvRKS2_IT_SaIS5_EE(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN6casadi17SerializingStream8decorateEc(ptr noundef nonnull align 8 dereferenceable(73) %0, i8 noundef signext 86)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.c = load ptr, ptr %1, align 8, !tbaa !62
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24
  tail call void @_ZN6casadi17SerializingStream4packEx(ptr noundef nonnull align 8 dereferenceable(73) %0, i64 noundef %i.g)
  %i.h = load ptr, ptr %1, align 8, !tbaa !577    ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !577  ; 2 uses
  %.not9 = icmp eq ptr %i.h, %i.i
  br i1 %.not9, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6casadi17SerializingStream4packImEEvRKSt6vectorIT_SaIS3_EE.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN6casadi17SerializingStream4packImEEvRKSt6vectorIT_SaIS3_EE.exit
  %.sroa.06.010 = phi ptr [ %i.u, %_ZN6casadi17SerializingStream4packImEEvRKSt6vectorIT_SaIS3_EE.exit ], [ %i.h, %bb.a ] ; 4 uses
  tail call void @_ZN6casadi17SerializingStream8decorateEc(ptr noundef nonnull align 8 dereferenceable(73) %0, i8 noundef signext 86)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.l = load ptr, ptr %.sroa.06.010, align 8, !tbaa !50
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  tail call void @_ZN6casadi17SerializingStream4packEx(ptr noundef nonnull align 8 dereferenceable(73) %0, i64 noundef %i.p)
  %i.q = load ptr, ptr %.sroa.06.010, align 8, !tbaa !125 ; 2 uses
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !125  ; 2 uses
  %.not9.i = icmp eq ptr %i.q, %i.r
  br i1 %.not9.i, label %_ZN6casadi17SerializingStream4packImEEvRKSt6vectorIT_SaIS3_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %.sroa.06.010.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.q, %.lr.ph ] ; 2 uses
  %i.s = load i64, ptr %.sroa.06.010.i, align 8, !tbaa !28
  tail call void @_ZN6casadi17SerializingStream4packEm(ptr noundef nonnull align 8 dereferenceable(73) %0, i64 noundef %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %i.r
  br i1 %.not.i, label %_ZN6casadi17SerializingStream4packImEEvRKSt6vectorIT_SaIS3_EE.exit, label %.lr.ph.i
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIjSaIjEE17_M_default_appendEm:bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.241) #29
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #26 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !288
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !288
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #27
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36: ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !230
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !287
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !231
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi19DeserializingStream6unpackISt6vectorImSaImEEEEvRS2_IT_SaIS5_EE(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  tail call void @_ZN6casadi19DeserializingStream17assert_decorationEc(ptr noundef nonnull align 8 dereferenceable(42) %0, i8 noundef signext 86)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @_ZN6casadi19DeserializingStream6unpackERx(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.c = load i64, ptr %i.b, align 8, !tbaa !158  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59   ; 5 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !62     ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 24                  ; 3 uses
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = sub nuw i64 %i.c, %i.j
  call void @_ZNSt6vectorIS_ImSaImEESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.l)
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !577
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp ult i64 %i.c, %i.j
  br i1 %i.m, label %bb.d, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.c ; 4 uses
  %.not.i.i = icmp eq ptr %i.e, %i.n
  br i1 %.not.i.i, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.d ] ; 3 uses
  %i.o = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !50 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !232
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #27
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.e
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !233

_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  store ptr %i.n, ptr %i.d, align 8, !tbaa !59
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit

_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit:    ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.v = phi ptr [ %.pre, %bb.b ], [ %i.e, %bb.c ], [ %i.e, %bb.d ], [ %i.n, %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !577    ; 2 uses
  %.not9 = icmp eq ptr %i.w, %i.v
  br i1 %.not9, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6casadi19DeserializingStream6unpackImEEvRSt6vectorIT_SaIS3_EE.exit, %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  ret void

.lr.ph:                                           ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit, %_ZN6casadi19DeserializingStream6unpackImEEvRSt6vectorIT_SaIS3_EE.exit
  %.sroa.06.010 = phi ptr [ %i.am, %_ZN6casadi19DeserializingStream6unpackImEEvRSt6vectorIT_SaIS3_EE.exit ], [ %i.w, %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit ] ; 5 uses
  call void @_ZN6casadi19DeserializingStream17assert_decorationEc(ptr noundef nonnull align 8 dereferenceable(42) %0, i8 noundef signext 86)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @_ZN6casadi19DeserializingStream6unpackERx(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.x = load i64, ptr %i.a, align 8, !tbaa !158  ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 8 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !47   ; 4 uses
  %i.aa = load ptr, ptr %.sroa.06.010, align 8, !tbaa !50 ; 5 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3                 ; 3 uses
  %i.af = icmp ugt i64 %i.x, %i.ae
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.ag = sub nuw i64 %i.x, %i.ae
  call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.010, i64 noundef %i.ag)
  %.pre.i = load ptr, ptr %.sroa.06.010, align 8, !tbaa !125
  %.pre11.i = load ptr, ptr %i.y, align 8, !tbaa !125
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit.i

bb.g:                                             ; preds = %.lr.ph
  %i.ah = icmp ult i64 %i.x, %i.ae
  br i1 %i.ah, label %bb.h, label %_ZNSt6vectorImSaImEE6resizeEm.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.x ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, %i.ai
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit.i, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.h
  store ptr %i.ai, ptr %i.y, align 8, !tbaa !47
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit.i

_ZNSt6vectorImSaImEE6resizeEm.exit.i:             ; preds = %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i, %bb.h, %bb.g, %bb.f
  %i.aj = phi ptr [ %.pre11.i, %bb.f ], [ %i.z, %bb.g ], [ %i.z, %bb.h ], [ %i.ai, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i ] ; 2 uses
  %i.ak = phi ptr [ %.pre.i, %bb.f ], [ %i.aa, %bb.g ], [ %i.aa, %bb.h ], [ %i.aa, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i ] ; 2 uses
  %.not9.i = icmp eq ptr %i.ak, %i.aj
  br i1 %.not9.i, label %_ZN6casadi19DeserializingStream6unpackImEEvRSt6vectorIT_SaIS3_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit.i, %.lr.ph.i
  %.sroa.06.010.i = phi ptr [ %i.al, %.lr.ph.i ], [ %i.ak, %_ZNSt6vectorImSaImEE6resizeEm.exit.i ] ; 2 uses
  call void @_ZN6casadi19DeserializingStream6unpackERm(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.06.010.i)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.al, %i.aj
  br i1 %.not.i, label %_ZN6casadi19DeserializingStream6unpackImEEvRSt6vectorIT_SaIS3_EE.exit, label %.lr.ph.i

_ZN6casadi19DeserializingStream6unpackImEEvRSt6vectorIT_SaIS3_EE.exit: ; preds = %.lr.ph.i, %_ZNSt6vectorImSaImEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.am, %i.v
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare void @_ZN6casadi19DeserializingStream6unpackERNS_8SparsityE(ptr noundef nonnull align 8 dereferenceable(42), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN6casadi19DeserializingStream6unpackERNS_8ResourceE(ptr noundef nonnull align 8 dereferenceable(42), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn }
attributes #9 = { nounwind memory(none) }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nofree nounwind }
attributes #13 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #15 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { builtin nounwind }
attributes #28 = { nounwind }
attributes #29 = { noreturn }
attributes #30 = { noreturn nounwind }
attributes #31 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEE", !10, i64 0}
!10 = !{!"p1 _ZTSN6casadi20SharedObjectInternalE", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZN6casadi9to_stringB5cxx11ENS_6FmuApiE: argument 0"}
!17 = distinct !{!17, !"_ZN6casadi9to_stringB5cxx11ENS_6FmuApiE"}
!18 = !{!19, !20, i64 8}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !20, i64 8, !6, i64 16}
!20 = !{!"long", !6, i64 0}
!21 = !{!6, !6, i64 0}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!24 = distinct !{!24, !"_ZN6casadi6strvecB5cxx11Ev"}
!25 = !{!19, !14, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"vtable pointer", !7, i64 0}
!28 = !{!20, !20, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!33 = distinct !{!33, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!34 = !{!35, !32}
!35 = distinct !{!35, !36, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!36 = distinct !{!36, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!37 = !{!38, !30, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!39 = !{!38, !30, i64 8}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!38, !30, i64 16}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!45 = distinct !{!45, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!46 = !{!"branch_weights", i32 1, i32 1048575}
!47 = !{!48, !49, i64 8}
!48 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!49 = !{!"p1 long", !11, i64 0}
!50 = !{!48, !49, i64 0}
!51 = distinct !{!51, !41}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!54 = distinct !{!54, !"_ZN6casadi6strvecB5cxx11Ev"}
!55 = distinct !{!55, !41}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!58 = distinct !{!58, !"_ZN6casadi6strvecB5cxx11Ev"}
!59 = !{!60, !61, i64 8}
!60 = !{!"_ZTSNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!61 = !{!"p1 _ZTSSt6vectorImSaImEE", !11, i64 0}
!62 = !{!60, !61, i64 0}
!63 = !{!64, !65, i64 8}
!64 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!65 = !{!"p1 double", !11, i64 0}
!66 = !{!64, !65, i64 0}
!67 = !{!68, !68, i64 0}
!68 = !{!"double", !6, i64 0}
!69 = !{!64, !65, i64 16}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!72 = distinct !{!72, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!75 = distinct !{!75, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!76 = !{!74, !71}
!77 = !{!78, !14, i64 40}
!78 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !79, i64 56}
!79 = !{!"_ZTSSt6locale", !80, i64 0}
!80 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!81 = !{!78, !14, i64 32}
!82 = !{!83, !20, i64 8}
!83 = !{!"_ZTSSi", !20, i64 8}
!84 = !{!85, !104, i64 304}
!85 = !{!"_ZTSN6casadi11FmuInternalE", !86, i64 0, !90, i64 24, !19, i64 32, !92, i64 64, !92, i64 88, !95, i64 112, !92, i64 160, !19, i64 184, !68, i64 216, !19, i64 224, !19, i64 256, !104, i64 288, !89, i64 296, !104, i64 304, !104, i64 305, !104, i64 306, !105, i64 312, !106, i64 320, !106, i64 344, !106, i64 368, !106, i64 392, !104, i64 416, !109, i64 424, !109, i64 448, !109, i64 472, !109, i64 496, !109, i64 520, !109, i64 544, !92, i64 568, !92, i64 592, !112, i64 616, !112, i64 640, !109, i64 664, !117, i64 688, !117, i64 712, !120, i64 736, !120, i64 744, !104, i64 752, !104, i64 753, !104, i64 754, !104, i64 755, !104, i64 756, !20, i64 760, !104, i64 768}
!86 = !{!"_ZTSN6casadi20SharedObjectInternalE", !87, i64 0, !89, i64 16}
!87 = !{!"_ZTSN6casadi21GenericSharedInternalINS_12SharedObjectENS_20SharedObjectInternalEEE", !88, i64 8}
!88 = !{!"p1 _ZTSN6casadi14GenericWeakRefINS_12SharedObjectENS_20SharedObjectInternalEEE", !11, i64 0}
!89 = !{!"long long", !6, i64 0}
!90 = !{!"_ZTSN6casadi8ResourceE", !91, i64 0}
!91 = !{!"_ZTSN6casadi12SharedObjectE", !9, i64 0}
!92 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !93, i64 0}
!93 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !94, i64 0}
!94 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !38, i64 0}
!95 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorImSaImEESt4lessIS5_ESaISt4pairIKS5_S8_EEE", !96, i64 0}
!96 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorImSaImEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE", !97, i64 0}
!97 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorImSaImEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE13_Rb_tree_implISF_Lb1EEE", !98, i64 0, !100, i64 8}
!98 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !99, i64 0}
!99 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!100 = !{!"_ZTSSt15_Rb_tree_header", !101, i64 0, !20, i64 32}
!101 = !{!"_ZTSSt18_Rb_tree_node_base", !102, i64 0, !103, i64 8, !103, i64 16, !103, i64 24}
!102 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!103 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !11, i64 0}
!104 = !{!"bool", !6, i64 0}
!105 = !{!"_ZTSN6casadi8ImporterE", !91, i64 0}
!106 = !{!"_ZTSSt6vectorImSaImEE", !107, i64 0}
!107 = !{!"_ZTSSt12_Vector_baseImSaImEE", !108, i64 0}
!108 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !48, i64 0}
!109 = !{!"_ZTSSt6vectorIdSaIdEE", !110, i64 0}
!110 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !111, i64 0}
!111 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !64, i64 0}
!112 = !{!"_ZTSSt6vectorIjSaIjEE", !113, i64 0}
!113 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !114, i64 0}
!114 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !115, i64 0}
!115 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !116, i64 0, !116, i64 8, !116, i64 16}
!116 = !{!"p1 int", !11, i64 0}
!117 = !{!"_ZTSSt6vectorIS_ImSaImEESaIS1_EE", !118, i64 0}
!118 = !{!"_ZTSSt12_Vector_baseISt6vectorImSaImEESaIS2_EE", !119, i64 0}
!119 = !{!"_ZTSNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE12_Vector_implE", !60, i64 0}
!120 = !{!"_ZTSN6casadi8SparsityE", !91, i64 0}
!121 = !{i8 0, i8 2}
!122 = !{}
!123 = !{!85, !104, i64 305}
!124 = !{!85, !104, i64 306}
!125 = !{!49, !49, i64 0}
!126 = !{!127, !128, i64 16}
!127 = !{!"_ZTSNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataE", !128, i64 0, !128, i64 8, !128, i64 16}
!128 = !{!"p1 long long", !11, i64 0}
!129 = !{!127, !128, i64 0}
!130 = !{!127, !128, i64 8}
!131 = !{!132, !49, i64 0}
!132 = !{!"_ZTSSt18_Bit_iterator_base", !49, i64 0, !5, i64 8}
!133 = !{!132, !5, i64 8}
!134 = !{!135, !11, i64 208}
!135 = !{!"_ZTSN6casadi9FmuMemoryE", !136, i64 0, !142, i64 64, !143, i64 72, !143, i64 80, !128, i64 88, !65, i64 96, !65, i64 104, !65, i64 112, !65, i64 120, !65, i64 128, !145, i64 136, !11, i64 208, !146, i64 216, !109, i64 240, !109, i64 264, !109, i64 288, !109, i64 312, !151, i64 336, !151, i64 376, !106, i64 416, !106, i64 440, !106, i64 464, !151, i64 488, !151, i64 528, !112, i64 568, !112, i64 592, !109, i64 616, !109, i64 640, !109, i64 664, !109, i64 688, !109, i64 712, !109, i64 736}
!136 = !{!"_ZTSN6casadi14FunctionMemoryE", !137, i64 0, !104, i64 56}
!137 = !{!"_ZTSN6casadi19ProtoFunctionMemoryE", !138, i64 0, !141, i64 48}
!138 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi6FStatsESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !139, i64 0}
!139 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi6FStatsEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !140, i64 0}
!140 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi6FStatsEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !98, i64 0, !100, i64 8}
!141 = !{!"p1 _ZTSN6casadi6FStatsE", !11, i64 0}
!142 = !{!"p1 _ZTSN6casadi11FmuFunctionE", !11, i64 0}
!143 = !{!"p2 double", !144, i64 0}
!144 = !{!"any p2 pointer", !11, i64 0}
!145 = !{!"_ZTSN6casadi15casadi_jac_dataIdEE", !89, i64 0, !89, i64 8, !128, i64 16, !65, i64 24, !128, i64 32, !65, i64 40, !65, i64 48, !128, i64 56, !128, i64 64}
!146 = !{!"_ZTSSt6vectorIPN6casadi9FmuMemoryESaIS2_EE", !147, i64 0}
!147 = !{!"_ZTSSt12_Vector_baseIPN6casadi9FmuMemoryESaIS2_EE", !148, i64 0}
!148 = !{!"_ZTSNSt12_Vector_baseIPN6casadi9FmuMemoryESaIS2_EE12_Vector_implE", !149, i64 0}
!149 = !{!"_ZTSNSt12_Vector_baseIPN6casadi9FmuMemoryESaIS2_EE17_Vector_impl_dataE", !150, i64 0, !150, i64 8, !150, i64 16}
!150 = !{!"p2 _ZTSN6casadi9FmuMemoryE", !144, i64 0}
!151 = !{!"_ZTSSt6vectorIbSaIbEE", !152, i64 0}
!152 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !153, i64 0}
!153 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !154, i64 0}
!154 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !155, i64 0, !155, i64 16, !49, i64 32}
!155 = !{!"_ZTSSt13_Bit_iterator", !132, i64 0}
!156 = !{!116, !116, i64 0}
!157 = !{!65, !65, i64 0}
!158 = !{!89, !89, i64 0}
!159 = distinct !{!159, !41}
!160 = distinct !{!160, !41}
end_hunk_3
