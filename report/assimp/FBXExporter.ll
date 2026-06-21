inline.NumInlined: 9031
inline.NumDeleted: 2243
begin_hunk_0_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a
  %i.dsl = getelementptr inbounds nuw i8, ptr %i.drm, i64 64
  %i.dsm = load ptr, ptr %i.bmz, align 8
  store ptr %i.dsm, ptr %i.dsl, align 8
  %i.dsn = getelementptr inbounds nuw i8, ptr %i.drm, i64 72
  %i.dso = load ptr, ptr %i.bna, align 8
  store ptr %i.dso, ptr %i.dsn, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bmy, i8 0, i64 24, i1 false)
  %i.dsp = getelementptr inbounds nuw i8, ptr %i.drm, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dsp, ptr noundef nonnull align 8 dereferenceable(32) %i.bnb, i64 32, i1 false)
  %i.dsq = load ptr, ptr %i.bmw, align 8
  %i.dsr = getelementptr inbounds nuw i8, ptr %i.dsq, i64 112
  store ptr %i.dsr, ptr %i.bmw, align 8
  br label %bb.uc

bb.ua:                                            ; preds = %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i4708
  invoke void @_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bnc, ptr %i.drm, ptr noundef nonnull align 8 dereferenceable(112) %21)
          to label %bb.uc unwind label %bb.ub

bb.ub:                                            ; preds = %_ZN6Assimp3FBX4NodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2505, %bb.ua
  %i.dss = landingpad { ptr, i32 }
          cleanup
  br label %.body2513

bb.uc:                                            ; preds = %bb.ua, %_ZN6Assimp3FBX4NodeC2EOS1_.exit.i.i.i2510
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %21) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  %i.dst = load ptr, ptr %148, align 8            ; 2 uses
  %i.dsu = icmp eq ptr %i.dst, %i.bmp
  br i1 %i.dsu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2518, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2516

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2516: ; preds = %bb.uc
  %i.dsv = load i64, ptr %i.bmp, align 8
  %i.dsw = add i64 %i.dsv, 1
  call void @_ZdlPvm(ptr noundef %i.dst, i64 noundef %i.dsw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2518

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2518: ; preds = %bb.uc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2516
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #31
  %i.dsx = load i8, ptr %0, align 8, !range !27, !noundef !28
  %i.dsy = trunc nuw i8 %i.dsx to i1
  %i.dsz = load i32, ptr %i.ap, align 4
  invoke void @_ZN6Assimp3FBX4Node5BeginERNS_12StreamWriterILb0ELb0EEEbi(ptr noundef nonnull align 8 dereferenceable(112) %145, ptr noundef nonnull align 8 dereferenceable(56) %43, i1 noundef zeroext %i.dsy, i32 noundef %i.dsz)
          to label %bb.ud unwind label %.loopexit5967

bb.ud:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2518
  %i.dta = load i8, ptr %0, align 8, !range !27, !noundef !28
  %i.dtb = trunc nuw i8 %i.dta to i1
  %i.dtc = load i32, ptr %i.ap, align 4
  invoke void @_ZN6Assimp3FBX4Node14DumpPropertiesERNS_12StreamWriterILb0ELb0EEEbi(ptr noundef nonnull align 8 dereferenceable(112) %145, ptr noundef nonnull align 8 dereferenceable(56) %43, i1 noundef zeroext %i.dtb, i32 noundef %i.dtc)
          to label %bb.ue unwind label %.loopexit5967

bb.ue:                                            ; preds = %bb.ud
  %i.dtd = load i8, ptr %0, align 8, !range !27, !noundef !28
  %i.dte = trunc nuw i8 %i.dtd to i1
  %i.dtf = load i32, ptr %i.ap, align 4
  invoke void @_ZN6Assimp3FBX4Node13EndPropertiesERNS_12StreamWriterILb0ELb0EEEbi(ptr noundef nonnull align 8 dereferenceable(112) %145, ptr noundef nonnull align 8 dereferenceable(56) %43, i1 noundef zeroext %i.dte, i32 noundef %i.dtf)
          to label %bb.uf unwind label %.loopexit5967

bb.uf:                                            ; preds = %bb.ue
  %i.dtg = load i8, ptr %0, align 8, !range !27, !noundef !28
  %i.dth = trunc nuw i8 %i.dtg to i1
  %i.dti = load i32, ptr %i.ap, align 4
  invoke void @_ZN6Assimp3FBX4Node13BeginChildrenERNS_12StreamWriterILb0ELb0EEEbi(ptr noundef nonnull align 8 dereferenceable(112) %145, ptr noundef nonnull align 8 dereferenceable(56) %43, i1 noundef zeroext %i.dth, i32 noundef %i.dti)
          to label %bb.ug unwind label %.loopexit5967

bb.ug:                                            ; preds = %bb.uf
  %i.dtj = load i32, ptr %i.ap, align 4           ; 2 uses
  %i.dtk = add nsw i32 %i.dtj, 1                  ; 2 uses
  store i32 %i.dtk, ptr %i.ap, align 4
  %i.dtl = getelementptr inbounds nuw i8, ptr %i.dkm, i64 1032 ; 2 uses
  %i.dtm = load ptr, ptr %i.dtl, align 8
  %.not5830 = icmp eq ptr %i.dtm, null
  br i1 %.not5830, label %bb.yb, label %bb.uh

bb.uh:                                            ; preds = %bb.ug
  call void @llvm.lifetime.start.p0(ptr nonnull %149) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %149, i8 0, i64 24, i1 false)
  br i1 %.not14020, label %._crit_edge.i.i2519, label %.lr.ph13822

.lr.ph13822:                                      ; preds = %bb.uh
  %i.dtn = getelementptr inbounds nuw i8, ptr %i.dkm, i64 1040
  br label %bb.uj

._crit_edge.i.i2519.loopexit:                     ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit2606
  %.pre15431 = load i32, ptr %i.ap, align 4
  br label %._crit_edge.i.i2519

._crit_edge.i.i2519:                              ; preds = %._crit_edge.i.i2519.loopexit, %bb.uh
  %i.dto = phi i32 [ %i.dtk, %bb.uh ], [ %.pre15431, %._crit_edge.i.i2519.loopexit ]
  %.sroa.48.0.lcssa = phi ptr [ null, %bb.uh ], [ %.sroa.48.2, %._crit_edge.i.i2519.loopexit ] ; 4 uses
  %.sroa.215503.0.lcssa = phi ptr [ null, %bb.uh ], [ %.sroa.215503.1, %._crit_edge.i.i2519.loopexit ] ; 2 uses
  %.sroa.05492.0.lcssa = phi ptr [ null, %bb.uh ], [ %.sroa.05492.2, %._crit_edge.i.i2519.loopexit ] ; 9 uses
  %.sroa.28.0.lcssa = phi ptr [ null, %bb.uh ], [ %.sroa.28.6, %._crit_edge.i.i2519.loopexit ] ; 4 uses
  %.sroa.145532.0.lcssa = phi ptr [ null, %bb.uh ], [ %.sroa.145532.3, %._crit_edge.i.i2519.loopexit ] ; 2 uses
  %.sroa.05525.0.lcssa = phi ptr [ null, %bb.uh ], [ %.sroa.05525.6, %._crit_edge.i.i2519.loopexit ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %150) #31
  store ptr %i.bnf, ptr %150, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.bnf, ptr noundef nonnull align 1 dereferenceable(7) @.str.322, i64 7, i1 false)
  store i64 7, ptr %i.bng, align 8
  store i8 0, ptr %i.bqe, align 1
  %i.dtp = load i8, ptr %0, align 8, !range !27, !noundef !28
  %i.dtq = trunc nuw i8 %i.dtp to i1
  invoke void @_ZN6Assimp3FBX4Node17WritePropertyNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIiSaIiEERNS_12StreamWriterILb0ELb0EEEbi(ptr noundef nonnull align 8 dereferenceable(32) %150, ptr noundef nonnull align 8 dereferenceable(24) %149, ptr noundef nonnull align 8 dereferenceable(56) %43, i1 noundef zeroext %i.dtq, i32 noundef %i.dto)
          to label %bb.wk unwind label %bb.xo

bb.ui:                                            ; preds = %.noexc.i2441
  %i.dtr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2887

.loopexit5967:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2518, %bb.ud, %bb.ue, %bb.uf, %bb.yb, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i2456, %bb.st, %bb.tn, %_ZNKSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12_M_check_lenEmPKc.exit.i4633, %_ZNKSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12_M_check_lenEmPKc.exit.i4677
  %lpad.loopexit5969 = landingpad { ptr, i32 }
          cleanup
  br label %bb.abg

.loopexit.split-lp5968:                           ; preds = %.invoke24221
  %lpad.loopexit.split-lp5970 = landingpad { ptr, i32 }
          cleanup
  br label %bb.abg

.loopexit5977:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i2480
  %lpad.loopexit5979 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2528

.loopexit.split-lp5978:                           ; preds = %bb.tc
  %lpad.loopexit.split-lp5980 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2528

.loopexit5982:                                    ; preds = %bb.tf, %_ZNKSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12_M_check_lenEmPKc.exit.i4655
  %lpad.loopexit5984 = landingpad { ptr, i32 }
          cleanup
  br label %.body4675

.loopexit.split-lp5983:                           ; preds = %bb.th
  %lpad.loopexit.split-lp5985 = landingpad { ptr, i32 }
          cleanup
  br label %.body4675

.body4675:                                        ; preds = %.loopexit5982, %.loopexit.split-lp5983, %bb.tj
  %eh.lpad-body4676 = phi { ptr, i32 } [ %i.dpk, %bb.tj ], [ %lpad.loopexit5984, %.loopexit5982 ], [ %lpad.loopexit.split-lp5985, %.loopexit.split-lp5983 ] ; 2 uses
  %i.dts = load ptr, ptr %146, align 8            ; 2 uses
  %i.dtt = icmp eq ptr %i.dts, %i.bmn
  br i1 %i.dtt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2528, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2526

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2526: ; preds = %.body4675
  %i.dtu = load i64, ptr %i.bmn, align 8
  %i.dtv = add i64 %i.dtu, 1
  call void @_ZdlPvm(ptr noundef %i.dts, i64 noundef %i.dtv) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2528

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2528: ; preds = %.body4675, %.loopexit5977, %.loopexit.split-lp5978, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2526
  %.pn901 = phi { ptr, i32 } [ %eh.lpad-body4676, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2526 ], [ %lpad.loopexit.split-lp5980, %.loopexit.split-lp5978 ], [ %lpad.loopexit5979, %.loopexit5977 ], [ %eh.lpad-body4676, %.body4675 ] ; 2 uses
  %i.dtw = load ptr, ptr %147, align 8            ; 2 uses
  %i.dtx = icmp eq ptr %i.dtw, %i.bml
  br i1 %i.dtx, label %.body2477, label %.body2477.sink.split

.body2477.sink.split:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2528, %bb.tb
  %.sink24223 = phi ptr [ %i.dnq, %bb.tb ], [ %i.dtw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2528 ]
  %.pn901.pn.ph = phi { ptr, i32 } [ %lpad.phi5976, %bb.tb ], [ %.pn901, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2528 ]
  %i.dty = load i64, ptr %i.bml, align 8
  %i.dtz = add i64 %i.dty, 1
  call void @_ZdlPvm(ptr noundef %.sink24223, i64 noundef %i.dtz) #32
  br label %.body2477

.body2477:                                        ; preds = %.body2477.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2528, %bb.tb
  %.pn901.pn = phi { ptr, i32 } [ %lpad.phi5976, %bb.tb ], [ %.pn901, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2528 ], [ %.pn901.pn.ph, %.body2477.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #31
  br label %bb.abg

.body2513:                                        ; preds = %bb.ub, %bb.tu
  %eh.lpad-body4721 = phi { ptr, i32 } [ %i.dss, %bb.ub ], [ %i.dro, %bb.tu ]
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %21) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  %.pre15430 = load ptr, ptr %148, align 8        ; 2 uses
  %i.dua = icmp eq ptr %.pre15430, %i.bmp
  br i1 %i.dua, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2534, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2532

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2532: ; preds = %.body2513
  %i.dub = load i64, ptr %i.bmp, align 8
  %i.duc = add i64 %i.dub, 1
  call void @_ZdlPvm(ptr noundef %.pre15430, i64 noundef %i.duc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2534

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2534: ; preds = %.body2513, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2532
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #31
  br label %bb.abg

bb.uj:                                            ; preds = %.lr.ph13822, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit2606
  %i.dud = phi i64 [ 0, %.lr.ph13822 ], [ %i.ebs, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit2606 ]
  %.064913820 = phi i32 [ 0, %.lr.ph13822 ], [ %i.ebr, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit2606 ]
  %.sroa.05525.013819 = phi ptr [ null, %.lr.ph13822 ], [ %.sroa.05525.6, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit2606 ] ; 9 uses
  %.sroa.145532.013818 = phi ptr [ null, %.lr.ph13822 ], [ %.sroa.145532.3, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit2606 ] ; 6 uses
  %.sroa.28.013817 = phi ptr [ null, %.lr.ph13822 ], [ %.sroa.28.6, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit2606 ] ; 4 uses
  %.sroa.05492.013816 = phi ptr [ null, %.lr.ph13822 ], [ %.sroa.05492.2, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit2606 ] ; 16 uses
  %.sroa.215503.013815 = phi ptr [ null, %.lr.ph13822 ], [ %.sroa.215503.1, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit2606 ] ; 12 uses
  %.sroa.48.013814 = phi ptr [ null, %.lr.ph13822 ], [ %.sroa.48.2, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit2606 ] ; 6 uses
  %i.due = load ptr, ptr %i.dtl, align 8
  %i.duf = getelementptr inbounds nuw [4 x i8], ptr %i.djk, i64 %i.dud ; 3 uses
  %i.dug = load i32, ptr %i.duf, align 4          ; 2 uses
  %i.duh = sext i32 %i.dug to i64                 ; 2 uses
  %i.dui = getelementptr inbounds [12 x i8], ptr %i.due, i64 %i.duh ; 3 uses
  %i.duj = load ptr, ptr %i.djs, align 8
  %i.duk = getelementptr inbounds [12 x i8], ptr %i.duj, i64 %i.duh ; 3 uses
  %i.dul = load float, ptr %i.dui, align 4
  %i.dum = load float, ptr %i.duk, align 4
  %i.dun = fsub float %i.dul, %i.dum              ; 2 uses
  %i.duo = getelementptr inbounds nuw i8, ptr %i.dui, i64 4
  %i.dup = load float, ptr %i.duo, align 4
  %i.duq = getelementptr inbounds nuw i8, ptr %i.duk, i64 4
  %i.dur = load float, ptr %i.duq, align 4
  %i.dus = fsub float %i.dup, %i.dur              ; 2 uses
  %i.dut = getelementptr inbounds nuw i8, ptr %i.dui, i64 8
  %i.duu = load float, ptr %i.dut, align 4
  %i.duv = getelementptr inbounds nuw i8, ptr %i.duk, i64 8
  %i.duw = load float, ptr %i.duv, align 4
  %i.dux = fsub float %i.duu, %i.duw              ; 2 uses
  %i.duy = load ptr, ptr %i.bnd, align 8          ; 3 uses
  %i.duz = load ptr, ptr %i.bne, align 8
  %.not.i2535 = icmp eq ptr %i.duy, %i.duz
  br i1 %.not.i2535, label %bb.ul, label %bb.uk

bb.uk:                                            ; preds = %bb.uj
  store i32 %i.dug, ptr %i.duy, align 4
  %i.dva = load ptr, ptr %i.bnd, align 8
  %i.dvb = getelementptr inbounds nuw i8, ptr %i.dva, i64 4
  store ptr %i.dvb, ptr %i.bnd, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.ul:                                            ; preds = %bb.uj
  %i.dvc = load ptr, ptr %149, align 8            ; 4 uses
  %i.dvd = ptrtoint ptr %i.duy to i64
  %i.dve = ptrtoint ptr %i.dvc to i64
  %i.dvf = sub i64 %i.dvd, %i.dve                 ; 6 uses
  %i.dvg = icmp eq i64 %i.dvf, 9223372036854775804
  br i1 %i.dvg, label %bb.um, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.um:                                            ; preds = %bb.ul
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.401) #30
          to label %.noexc2539 unwind label %.loopexit.split-lp5939

.noexc2539:                                       ; preds = %bb.um
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ul
  %i.dvh = ashr exact i64 %i.dvf, 2               ; 3 uses
  %.sroa.speculated.i.i.i2536 = call i64 @llvm.umax.i64(i64 %i.dvh, i64 1)
  %i.dvi = add nsw i64 %.sroa.speculated.i.i.i2536, %i.dvh ; 2 uses
  %i.dvj = icmp ult i64 %i.dvi, %i.dvh
  %i.dvk = call i64 @llvm.umin.i64(i64 %i.dvi, i64 2305843009213693951)
  %i.dvl = select i1 %i.dvj, i64 2305843009213693951, i64 %i.dvk ; 3 uses
  %.not.i.i.i2537 = icmp ne i64 %i.dvl, 0
  call void @llvm.assume(i1 %.not.i.i.i2537)
  %i.dvm = shl nuw nsw i64 %i.dvl, 2
  %i.dvn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dvm) #34
          to label %.noexc2540 unwind label %.loopexit5938 ; 4 uses

.noexc2540:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.dvo = getelementptr inbounds i8, ptr %i.dvn, i64 %i.dvf ; 2 uses
  %257 = load i32, ptr %i.duf, align 4
  store i32 %257, ptr %i.dvo, align 4
  %i.dvp = icmp sgt i64 %i.dvf, 0
  br i1 %i.dvp, label %bb.un, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.un:                                            ; preds = %.noexc2540
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dvn, ptr align 4 %i.dvc, i64 %i.dvf, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.un, %.noexc2540
  %i.dvq = getelementptr inbounds nuw i8, ptr %i.dvo, i64 4
  %.not.i17.i.i2538 = icmp eq ptr %i.dvc, null
  br i1 %.not.i17.i.i2538, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.uo

bb.uo:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dvc, i64 noundef %i.dvf) #32
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.uo, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.dvn, ptr %149, align 8
  store ptr %i.dvq, ptr %i.bnd, align 8
  %i.dvr = getelementptr inbounds nuw [4 x i8], ptr %i.dvn, i64 %i.dvl
  store ptr %i.dvr, ptr %i.bne, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.uk
  %.not.i2542 = icmp eq ptr %.sroa.145532.013818, %.sroa.28.013817
  br i1 %.not.i2542, label %bb.uq, label %bb.up

bb.up:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store float %i.dun, ptr %.sroa.145532.013818, align 4
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.uq:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.dvs = ptrtoint ptr %.sroa.145532.013818 to i64
  %i.dvt = ptrtoint ptr %.sroa.05525.013819 to i64
  %i.dvu = sub i64 %i.dvs, %i.dvt                 ; 6 uses
  %i.dvv = icmp eq i64 %i.dvu, 9223372036854775804
  br i1 %i.dvv, label %bb.ur, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

bb.ur:                                            ; preds = %bb.uq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.401) #30
          to label %.noexc2546 unwind label %.loopexit.split-lp5939

.noexc2546:                                       ; preds = %bb.ur
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.uq
  %i.dvw = ashr exact i64 %i.dvu, 2               ; 3 uses
  %.sroa.speculated.i.i.i2543 = call i64 @llvm.umax.i64(i64 %i.dvw, i64 1)
  %i.dvx = add nsw i64 %.sroa.speculated.i.i.i2543, %i.dvw ; 2 uses
  %i.dvy = icmp ult i64 %i.dvx, %i.dvw
  %i.dvz = call i64 @llvm.umin.i64(i64 %i.dvx, i64 2305843009213693951)
  %i.dwa = select i1 %i.dvy, i64 2305843009213693951, i64 %i.dvz ; 3 uses
  %.not.i.i.i2544 = icmp ne i64 %i.dwa, 0
  call void @llvm.assume(i1 %.not.i.i.i2544)
  %i.dwb = shl nuw nsw i64 %i.dwa, 2
  %i.dwc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dwb) #34
          to label %.noexc2547 unwind label %.loopexit5938 ; 4 uses

.noexc2547:                                       ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.dwd = getelementptr inbounds i8, ptr %i.dwc, i64 %i.dvu ; 2 uses
  store float %i.dun, ptr %i.dwd, align 4
  %i.dwe = icmp sgt i64 %i.dvu, 0
  br i1 %i.dwe, label %bb.us, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.us:                                            ; preds = %.noexc2547
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dwc, ptr align 4 %.sroa.05525.013819, i64 %i.dvu, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.us, %.noexc2547
  %.not.i17.i.i2545 = icmp eq ptr %.sroa.05525.013819, null
  br i1 %.not.i17.i.i2545, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.ut

bb.ut:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.05525.013819, i64 noundef %i.dvu) #32
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.ut, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  %i.dwf = getelementptr inbounds nuw [4 x i8], ptr %i.dwc, i64 %i.dwa
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, %bb.up
  %.sroa.28.4 = phi ptr [ %i.dwf, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.sroa.28.013817, %bb.up ] ; 5 uses
  %.pn5831 = phi ptr [ %i.dwd, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.sroa.145532.013818, %bb.up ] ; 2 uses
  %.sroa.05525.4 = phi ptr [ %i.dwc, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.sroa.05525.013819, %bb.up ] ; 7 uses
  %.sroa.145532.1 = getelementptr inbounds nuw i8, ptr %.pn5831, i64 4 ; 2 uses
  %.not.i2549 = icmp eq ptr %.sroa.145532.1, %.sroa.28.4
  br i1 %.not.i2549, label %bb.uv, label %bb.uu

bb.uu:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  store float %i.dus, ptr %.sroa.145532.1, align 4
  %i.dwg = getelementptr inbounds nuw i8, ptr %.pn5831, i64 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit2558

bb.uv:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.dwh = ptrtoint ptr %.sroa.28.4 to i64
  %i.dwi = ptrtoint ptr %.sroa.05525.4 to i64
  %i.dwj = sub i64 %i.dwh, %i.dwi                 ; 6 uses
  %i.dwk = icmp eq i64 %i.dwj, 9223372036854775804
  br i1 %i.dwk, label %bb.uw, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i2550

bb.uw:                                            ; preds = %bb.uv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.401) #30
          to label %.noexc2556 unwind label %.loopexit.split-lp5939

.noexc2556:                                       ; preds = %bb.uw
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i2550: ; preds = %bb.uv
  %i.dwl = ashr exact i64 %i.dwj, 2               ; 3 uses
  %.sroa.speculated.i.i.i2551 = call i64 @llvm.umax.i64(i64 %i.dwl, i64 1)
  %i.dwm = add nsw i64 %.sroa.speculated.i.i.i2551, %i.dwl ; 2 uses
  %i.dwn = icmp ult i64 %i.dwm, %i.dwl
  %i.dwo = call i64 @llvm.umin.i64(i64 %i.dwm, i64 2305843009213693951)
  %i.dwp = select i1 %i.dwn, i64 2305843009213693951, i64 %i.dwo ; 3 uses
  %.not.i.i.i2552 = icmp ne i64 %i.dwp, 0
  call void @llvm.assume(i1 %.not.i.i.i2552)
  %i.dwq = shl nuw nsw i64 %i.dwp, 2
  %i.dwr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dwq) #34
          to label %.noexc2557 unwind label %.loopexit5938 ; 4 uses

.noexc2557:                                       ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i2550
  %i.dws = getelementptr inbounds i8, ptr %i.dwr, i64 %i.dwj ; 2 uses
  store float %i.dus, ptr %i.dws, align 4
  %i.dwt = icmp sgt i64 %i.dwj, 0
  br i1 %i.dwt, label %bb.ux, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i2553

bb.ux:                                            ; preds = %.noexc2557
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dwr, ptr align 4 %.sroa.05525.4, i64 %i.dwj, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i2553

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i2553: ; preds = %bb.ux, %.noexc2557
  %i.dwu = getelementptr inbounds nuw i8, ptr %i.dws, i64 4
  %.not.i17.i.i2554 = icmp eq ptr %.sroa.05525.4, null
  br i1 %.not.i17.i.i2554, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i2555, label %bb.uy

bb.uy:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i2553
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.05525.4, i64 noundef %i.dwj) #32
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i2555

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i2555: ; preds = %bb.uy, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i2553
  %i.dwv = getelementptr inbounds nuw [4 x i8], ptr %i.dwr, i64 %i.dwp
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit2558

_ZNSt6vectorIfSaIfEE9push_backERKf.exit2558:      ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i2555, %bb.uu
  %.sroa.28.5 = phi ptr [ %i.dwv, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i2555 ], [ %.sroa.28.4, %bb.uu ] ; 5 uses
  %.sroa.145532.2 = phi ptr [ %i.dwu, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i2555 ], [ %i.dwg, %bb.uu ] ; 3 uses
  %.sroa.05525.5 = phi ptr [ %i.dwr, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i2555 ], [ %.sroa.05525.4, %bb.uu ] ; 7 uses
  %.not.i2560 = icmp eq ptr %.sroa.145532.2, %.sroa.28.5
  br i1 %.not.i2560, label %bb.va, label %bb.uz

bb.uz:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit2558
  store float %i.dux, ptr %.sroa.145532.2, align 4
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit2569

bb.va:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit2558
  %i.dww = ptrtoint ptr %.sroa.28.5 to i64
  %i.dwx = ptrtoint ptr %.sroa.05525.5 to i64
  %i.dwy = sub i64 %i.dww, %i.dwx                 ; 6 uses
  %i.dwz = icmp eq i64 %i.dwy, 9223372036854775804
  br i1 %i.dwz, label %bb.vb, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i2561

bb.vb:                                            ; preds = %bb.va
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.401) #30
          to label %.noexc2567 unwind label %.loopexit.split-lp5939

.noexc2567:                                       ; preds = %bb.vb
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i2561: ; preds = %bb.va
  %i.dxa = ashr exact i64 %i.dwy, 2               ; 3 uses
  %.sroa.speculated.i.i.i2562 = call i64 @llvm.umax.i64(i64 %i.dxa, i64 1)
  %i.dxb = add nsw i64 %.sroa.speculated.i.i.i2562, %i.dxa ; 2 uses
  %i.dxc = icmp ult i64 %i.dxb, %i.dxa
  %i.dxd = call i64 @llvm.umin.i64(i64 %i.dxb, i64 2305843009213693951)
  %i.dxe = select i1 %i.dxc, i64 2305843009213693951, i64 %i.dxd ; 3 uses
  %.not.i.i.i2563 = icmp ne i64 %i.dxe, 0
  call void @llvm.assume(i1 %.not.i.i.i2563)
  %i.dxf = shl nuw nsw i64 %i.dxe, 2
  %i.dxg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dxf) #34
          to label %.noexc2568 unwind label %.loopexit5938 ; 4 uses

.noexc2568:                                       ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i2561
  %i.dxh = getelementptr inbounds i8, ptr %i.dxg, i64 %i.dwy ; 2 uses
  store float %i.dux, ptr %i.dxh, align 4
  %i.dxi = icmp sgt i64 %i.dwy, 0
  br i1 %i.dxi, label %bb.vc, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i2564

bb.vc:                                            ; preds = %.noexc2568
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dxg, ptr align 4 %.sroa.05525.5, i64 %i.dwy, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i2564

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i2564: ; preds = %bb.vc, %.noexc2568
  %.not.i17.i.i2565 = icmp eq ptr %.sroa.05525.5, null
  br i1 %.not.i17.i.i2565, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i2566, label %bb.vd

bb.vd:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i2564
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.05525.5, i64 noundef %i.dwy) #32
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i2566

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i2566: ; preds = %bb.vd, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i2564
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIdSaIdEE15_M_range_insertIPKdEEvN9__gnu_cxx17__normal_iteratorIPdS1_EET_S9_St20forward_iterator_tag:bb.a
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKdN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 8 uses
  %i.i = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not54 = icmp ult i64 %i.k, %i.c
  br i1 %.not54, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 9 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 0, %i.d
  %i.q = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp sgt i64 %i.c, 8                     ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f, !prof !181

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr nonnull align 8 %i.q, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.c, 8
  br i1 %i.t, label %bb.g, label %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load double, ptr %i.q, align 8
  store double %i.u, ptr %i.h, align 8
  br label %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.v = load ptr, ptr %i.g, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.c
  store ptr %i.w, ptr %i.g, align 8
  %i.x = sub i64 %i.r, %i.l                       ; 3 uses
  %i.y = ashr exact i64 %i.x, 3                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.i, !prof !181

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit
  %i.aa = sub nsw i64 0, %i.y
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %1, i64 %i.x, i1 false)
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit
  %i.ac = icmp eq i64 %i.x, 8
  br i1 %i.ac, label %bb.j, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.ae = load double, ptr %1, align 8
  store double %i.ae, ptr %i.ad, align 8
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.s, label %bb.k, label %bb.l, !prof !181

bb.k:                                             ; preds = %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIPKdN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET0_T_SA_S9_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit
  %i.af = icmp eq i64 %i.c, 8
  br i1 %i.af, label %bb.m, label %_ZSt4copyIPKdN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET0_T_SA_S9_.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = load double, ptr %2, align 8
  store double %i.ag, ptr %1, align 8
  br label %_ZSt4copyIPKdN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET0_T_SA_S9_.exit

_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ah = icmp eq i64 %i.m, 8
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.m ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.a, %i.aj                     ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 8
  br i1 %i.al, label %bb.n, label %bb.o, !prof !181

bb.n:                                             ; preds = %_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr align 8 %i.ai, i64 %i.ak, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKdPddET0_T_S4_S3_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag.exit
  %i.am = icmp eq i64 %i.ak, 8
  br i1 %i.am, label %bb.p, label %_ZSt22__uninitialized_copy_aIPKdPddET0_T_S4_S3_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.an = load double, ptr %i.ai, align 8
  store double %i.an, ptr %i.h, align 8
  br label %_ZSt22__uninitialized_copy_aIPKdPddET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKdPddET0_T_S4_S3_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.ao = sub nuw nsw i64 %i.d, %i.n
  %i.ap = load ptr, ptr %i.g, align 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao ; 3 uses
  store ptr %i.aq, ptr %i.g, align 8
  %i.ar = icmp sgt i64 %i.m, 8
  br i1 %i.ar, label %bb.q, label %bb.r, !prof !181

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKdPddET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aq, ptr align 8 %1, i64 %i.m, i1 false)
  br label %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit55

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKdPddET0_T_S4_S3_RSaIT1_E.exit
  br i1 %i.ah, label %bb.s, label %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit55

bb.s:                                             ; preds = %bb.r
  %i.as = load double, ptr %1, align 8
  store double %i.as, ptr %i.aq, align 8
  br label %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit55

_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit55: ; preds = %bb.q, %bb.r, %bb.s
  %i.at = load ptr, ptr %i.g, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.m
  store ptr %i.au, ptr %i.g, align 8
  %i.av = icmp sgt i64 %i.m, 8
  br i1 %i.av, label %bb.t, label %bb.u, !prof !181

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit55
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIPKdN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET0_T_SA_S9_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit55
  %i.aw = icmp eq i64 %i.m, 8
  br i1 %i.aw, label %bb.v, label %_ZSt4copyIPKdN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET0_T_SA_S9_.exit

bb.v:                                             ; preds = %bb.u
  %i.ax = load double, ptr %2, align 8
  store double %i.ax, ptr %1, align 8
  br label %_ZSt4copyIPKdN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET0_T_SA_S9_.exit

bb.w:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %0, align 8               ; 5 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = sub i64 %i.j, %i.az
  %i.bb = ashr exact i64 %i.ba, 3                 ; 4 uses
  %i.bc = sub nsw i64 1152921504606846975, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.d
  br i1 %i.bd, label %bb.x, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.435) #30
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.d)
  %i.be = add nsw i64 %.sroa.speculated.i, %i.bb  ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bb
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 1152921504606846975)
  %i.bh = select i1 %i.bf, i64 1152921504606846975, i64 %i.bg ; 3 uses
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.bi = shl nuw nsw i64 %i.bh, 3
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #34
  br label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bk = phi ptr [ %i.bj, %bb.y ], [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bm = sub i64 %i.bl, %i.az                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, 8
  br i1 %i.bn, label %bb.z, label %bb.aa, !prof !181

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bk, ptr align 8 %i.ay, i64 %i.bm, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit
  %i.bo = icmp eq i64 %i.bm, 8
  br i1 %i.bo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load double, ptr %i.ay, align 8
  store double %i.bp, ptr %i.bk, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm ; 3 uses
  %i.br = icmp sgt i64 %i.c, 8
  br i1 %i.br, label %bb.ad, label %bb.ae, !prof !181

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bq, ptr align 8 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bs = icmp eq i64 %i.c, 8
  br i1 %i.bs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bt = load double, ptr %2, align 8
  store double %i.bt, ptr %i.bq, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.c ; 3 uses
  %i.bv = sub i64 %i.j, %i.bl                     ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 8
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !181

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr align 8 %1, i64 %i.bv, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bx = icmp eq i64 %i.bv, 8
  br i1 %i.bx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.by = load double, ptr %1, align 8
  store double %i.by, ptr %i.bu, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %.not.i59 = icmp eq ptr %i.ay, null
  br i1 %.not.i59, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ca = sub i64 %i.i, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.ca) #32
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bk, ptr %0, align 8
  store ptr %i.bz, ptr %i.g, align 8
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.cb, ptr %i.e, align 8
  br label %_ZSt4copyIPKdN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKdN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET0_T_SA_S9_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not70 = icmp eq ptr %2, %3
  br i1 %.not70, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 8 uses
  %i.i = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 9 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 0, %i.d
  %i.q = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp sgt i64 %i.c, 4                     ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f, !prof !181

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.h, ptr nonnull align 4 %i.q, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.c, 4
  br i1 %i.t, label %bb.g, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.q, align 4
  store i32 %i.u, ptr %i.h, align 4
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.v = load ptr, ptr %i.g, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.c
  store ptr %i.w, ptr %i.g, align 8
  %i.x = sub i64 %i.r, %i.l                       ; 3 uses
  %i.y = ashr exact i64 %i.x, 2                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.i, !prof !181

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.aa = sub nsw i64 0, %i.y
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr align 4 %1, i64 %i.x, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.ac = icmp eq i64 %i.x, 4
  br i1 %i.ac, label %bb.j, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.ae = load i32, ptr %1, align 4
  store i32 %i.ae, ptr %i.ad, align 4
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.s, label %bb.k, label %bb.l, !prof !181

bb.k:                                             ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit
  %i.af = icmp eq i64 %i.c, 4
  br i1 %i.af, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = load i32, ptr %2, align 4
  store i32 %i.ag, ptr %1, align 4
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ah = icmp eq i64 %i.m, 4
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.m ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.a, %i.aj                     ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 4
  br i1 %i.al, label %bb.n, label %bb.o, !prof !181

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.h, ptr align 4 %i.ai, i64 %i.ak, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.am = icmp eq i64 %i.ak, 4
  br i1 %i.am, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.an = load i32, ptr %i.ai, align 4
  store i32 %i.an, ptr %i.h, align 4
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.ao = sub nuw nsw i64 %i.d, %i.n
  %i.ap = load ptr, ptr %i.g, align 8
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ao ; 3 uses
  store ptr %i.aq, ptr %i.g, align 8
  %i.ar = icmp sgt i64 %i.m, 4
  br i1 %i.ar, label %bb.q, label %bb.r, !prof !181

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.aq, ptr align 4 %1, i64 %i.m, i1 false)
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit51

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit
  br i1 %i.ah, label %bb.s, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit51

bb.s:                                             ; preds = %bb.r
  %i.as = load i32, ptr %1, align 4
  store i32 %i.as, ptr %i.aq, align 4
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit51

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit51: ; preds = %bb.q, %bb.r, %bb.s
  %i.at = load ptr, ptr %i.g, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.m
  store ptr %i.au, ptr %i.g, align 8
  %i.av = icmp sgt i64 %i.m, 4
  br i1 %i.av, label %bb.t, label %bb.u, !prof !181

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit51
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit51
  %i.aw = icmp eq i64 %i.m, 4
  br i1 %i.aw, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.v:                                             ; preds = %bb.u
  %i.ax = load i32, ptr %2, align 4
  store i32 %i.ax, ptr %1, align 4
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.w:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %0, align 8               ; 5 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = sub i64 %i.j, %i.az
  %i.bb = ashr exact i64 %i.ba, 2                 ; 4 uses
  %i.bc = sub nsw i64 2305843009213693951, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.d
  br i1 %i.bd, label %bb.x, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.435) #30
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.d)
  %i.be = add nsw i64 %.sroa.speculated.i, %i.bb  ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bb
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 2305843009213693951)
  %i.bh = select i1 %i.bf, i64 2305843009213693951, i64 %i.bg ; 3 uses
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.bi = shl nuw nsw i64 %i.bh, 2
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #34
  br label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bk = phi ptr [ %i.bj, %bb.y ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bm = sub i64 %i.bl, %i.az                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, 4
  br i1 %i.bn, label %bb.z, label %bb.aa, !prof !181

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bk, ptr align 4 %i.ay, i64 %i.bm, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit
  %i.bo = icmp eq i64 %i.bm, 4
  br i1 %i.bo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load i32, ptr %i.ay, align 4
  store i32 %i.bp, ptr %i.bk, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm ; 3 uses
  %i.br = icmp sgt i64 %i.c, 4
  br i1 %i.br, label %bb.ad, label %bb.ae, !prof !181

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bq, ptr align 4 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bs = icmp eq i64 %i.c, 4
  br i1 %i.bs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bt = load i32, ptr %2, align 4
  store i32 %i.bt, ptr %i.bq, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.c ; 3 uses
  %i.bv = sub i64 %i.j, %i.bl                     ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 4
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !181

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bu, ptr align 4 %1, i64 %i.bv, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bx = icmp eq i64 %i.bv, 4
  br i1 %i.bx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.by = load i32, ptr %1, align 4
  store i32 %i.by, ptr %i.bu, align 4
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %.not.i55 = icmp eq ptr %i.ay, null
  br i1 %.not.i55, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ca = sub i64 %i.i, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.ca) #32
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bk, ptr %0, align 8
  store ptr %i.bz, ptr %i.g, align 8
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.cb, ptr %i.e, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load float, ptr %i.g, align 4            ; 2 uses
  %i.i = load float, ptr %2, align 4              ; 2 uses
  %i.j = fcmp une float %i.h, %i.i
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = fcmp olt float %i.h, %i.i
  br i1 %i.k, label %_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.m = load float, ptr %i.l, align 4            ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.o = load float, ptr %i.n, align 4            ; 2 uses
  %i.p = fcmp une float %i.m, %i.o
  br i1 %i.p, label %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.r = load float, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load float, ptr %i.s, align 4
  %i.u = fcmp olt float %i.r, %i.t
  br i1 %i.u, label %_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.g

_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit:     ; preds = %bb.e
  %i.v = fcmp olt float %i.m, %i.o
  br i1 %i.v, label %_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02122.i = load ptr, ptr %i.w, align 8         ; 2 uses
  %.not23.i = icmp eq ptr %.02122.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.x = load float, ptr %2, align 4              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = load float, ptr %i.y, align 4            ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load float, ptr %i.aa, align 4
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.i
  %.02124.i = phi ptr [ %.02122.i, %.lr.ph.i ], [ %.02124.i.be, %.backedge.backedge ] ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.02124.i, i64 32
  %i.ad = load float, ptr %i.ac, align 4          ; 3 uses
  %i.ae = fcmp une float %i.x, %i.ad
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.backedge
  %i.af = fcmp olt float %i.x, %i.ad
  br i1 %i.af, label %bb.k, label %.thread

bb.i:                                             ; preds = %.backedge
  %i.ag = getelementptr inbounds nuw i8, ptr %.02124.i, i64 36
  %i.ah = load float, ptr %i.ag, align 4          ; 2 uses
  %i.ai = fcmp une float %i.z, %i.ah
  br i1 %i.ai, label %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.02124.i, i64 40
  %i.ak = load float, ptr %i.aj, align 4
  %i.al = fcmp olt float %i.ab, %i.ak
  br i1 %i.al, label %bb.k, label %.thread

_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i:   ; preds = %bb.i
  %i.am = fcmp olt float %i.z, %i.ah
  br i1 %i.am, label %bb.k, label %.thread

bb.k:                                             ; preds = %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i, %bb.j, %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %.02124.i, i64 16
  %.021.i = load ptr, ptr %i.an, align 8          ; 2 uses
  %.not.i = icmp eq ptr %.021.i, null
  br i1 %.not.i, label %._crit_edge.thread.i, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.k, %.thread
  %.02124.i.be = phi ptr [ %.021.i, %bb.k ], [ %.021.i74, %.thread ]
  br label %.backedge, !llvm.loop !751

.thread:                                          ; preds = %bb.h, %bb.j, %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.02124.i, i64 24
  %.021.i74 = load ptr, ptr %i.ao, align 8        ; 2 uses
  %.not.i75 = icmp eq ptr %.021.i74, null
  br i1 %.not.i75, label %._crit_edge.i.thread, label %.backedge.backedge

._crit_edge.thread.i:                             ; preds = %bb.k, %bb.g
  %.020.lcssa36.i = phi ptr [ %i.a, %bb.g ], [ %.02124.i, %bb.k ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = icmp eq ptr %.020.lcssa36.i, %i.aq
  br i1 %i.ar, label %_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread.i
  %i.as = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa36.i) #36 ; 2 uses
  %.phi.trans.insert98 = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %.pre99 = load float, ptr %.phi.trans.insert98, align 4
  %.pre100 = load float, ptr %2, align 4
  br label %._crit_edge.i.thread

._crit_edge.i.thread:                             ; preds = %.thread, %bb.l
  %i.at = phi float [ %.pre100, %bb.l ], [ %i.x, %.thread ] ; 2 uses
  %i.au = phi float [ %.pre99, %bb.l ], [ %i.ad, %.thread ] ; 2 uses
  %.020.lcssa35.i = phi ptr [ %.020.lcssa36.i, %bb.l ], [ %.02124.i, %.thread ] ; 3 uses
  %.sroa.06.0.i = phi ptr [ %i.as, %bb.l ], [ %.02124.i, %.thread ] ; 3 uses
  %i.av = fcmp une float %i.au, %i.at
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.thread
  %i.aw = fcmp olt float %i.au, %i.at
  br i1 %i.aw, label %_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.p

bb.n:                                             ; preds = %._crit_edge.i.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 36
  %i.ay = load float, ptr %i.ax, align 4          ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ba = load float, ptr %i.az, align 4          ; 2 uses
  %i.bb = fcmp une float %i.ay, %i.ba
  br i1 %i.bb, label %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit5.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.bd = load float, ptr %i.bc, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load float, ptr %i.be, align 4
  %i.bg = fcmp olt float %i.bd, %i.bf
  br i1 %i.bg, label %_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.p

_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit5.i:  ; preds = %bb.n
  %i.bh = fcmp olt float %i.ay, %i.ba
  br i1 %i.bh, label %_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit5.i, %bb.o, %bb.m
  br label %_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.q:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bj = load float, ptr %2, align 4             ; 15 uses
  %i.bk = load float, ptr %i.bi, align 4          ; 3 uses
  %i.bl = fcmp une float %i.bj, %i.bk
  br i1 %i.bl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = fcmp olt float %i.bj, %i.bk
  br i1 %i.bm, label %bb.u, label %bb.ak

bb.s:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bo = load float, ptr %i.bn, align 4          ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bq = load float, ptr %i.bp, align 4          ; 3 uses
end_hunk_1
