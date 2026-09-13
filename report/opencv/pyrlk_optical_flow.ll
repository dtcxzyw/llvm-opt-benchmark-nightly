Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/pyrlk_optical_flow?download=true
inline.NumInlined: 431
inline.NumDeleted: 154
begin_hunk_0_@main:.noexc.i
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 56
  %i.ri = load i8, ptr %i.rh, align 8, !tbaa !65
  %.not.i1.i.i563 = icmp eq i8 %i.ri, 0
  br i1 %.not.i1.i.i563, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i562
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rg, i64 67
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !11
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i564

bb.ec:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i562
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.rg)
          to label %.noexc567 unwind label %bb.bb

.noexc567:                                        ; preds = %bb.ec
  %i.rl = load ptr, ptr %i.rg, align 8, !tbaa !43
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 48
  %i.rn = load ptr, ptr %i.rm, align 8
  %i.ro = invoke noundef signext i8 %i.rn(ptr noundef nonnull align 8 dereferenceable(570) %i.rg, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i564 unwind label %bb.bb, !inline_history !24

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i564: ; preds = %.noexc567, %bb.eb
  %.0.i.i.i565 = phi i8 [ %i.rk, %bb.eb ], [ %i.ro, %.noexc567 ]
  %i.rp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i565)
          to label %.noexc569 unwind label %bb.bb

.noexc569:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i564
  %i.rq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.rp)
          to label %_ZNSolsEPFRSoS_E.exit419 unwind label %bb.bb ; 0 uses

bb.ed:                                            ; preds = %._crit_edge.i.i409
  %i.rr = landingpad { ptr, i32 }
          cleanup
  %i.rs = load ptr, ptr %60, align 8, !tbaa !40   ; 2 uses
  %i.rt = icmp eq ptr %i.rs, %i.qs
  br i1 %i.rt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420: ; preds = %bb.ed
  %i.ru = load i64, ptr %i.qs, align 8, !tbaa !11
  %i.rv = add i64 %i.ru, 1
  call void @_ZdlPvm(ptr noundef %i.rs, i64 noundef %i.rv) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422: ; preds = %bb.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #13
  br label %.loopexit616

_ZNSolsEPFRSoS_E.exit419:                         ; preds = %.noexc569, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415
  %i.rw = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %61, i64 20 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %63, i64 20 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %64, i64 20 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %64, i64 8 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %65, i64 20 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %65, i64 8 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %68, i64 8 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %69, i64 4 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %69, i64 8 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.st = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 6 uses
  %i.su = getelementptr inbounds nuw i8, ptr %71, i64 8
  %i.sv = getelementptr inbounds nuw i8, ptr %72, i64 16
  %i.sw = getelementptr inbounds nuw i8, ptr %72, i64 20
  %i.sx = getelementptr inbounds nuw i8, ptr %72, i64 8
  %i.sy = getelementptr inbounds nuw i8, ptr %73, i64 16
  %i.sz = getelementptr inbounds nuw i8, ptr %73, i64 20
  %i.ta = getelementptr inbounds nuw i8, ptr %73, i64 8
  %i.tb = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 2 uses
  %i.tc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.24, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit424.peel unwind label %.loopexit616.loopexit.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit424.peel: ; preds = %_ZNSolsEPFRSoS_E.exit419
  %i.td = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 0)
          to label %bb.ee unwind label %.loopexit616.loopexit.loopexit.split-lp ; 3 uses

bb.ee:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit424.peel
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !43
  %i.tf = getelementptr i8, ptr %i.te, i64 -24
  %i.tg = load i64, ptr %i.tf, align 8
  %i.th = getelementptr inbounds i8, ptr %i.td, i64 %i.tg
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 240
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !59 ; 6 uses
  %.not.i.i.i572.peel = icmp eq ptr %i.tj, null
  br i1 %.not.i.i.i572.peel, label %.invoke770, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i573.peel

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i573.peel: ; preds = %bb.ee
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 56
  %i.tl = load i8, ptr %i.tk, align 8, !tbaa !65
  %.not.i1.i.i574.peel = icmp eq i8 %i.tl, 0
  br i1 %.not.i1.i.i574.peel, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i573.peel
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tj, i64 67
  %i.tn = load i8, ptr %i.tm, align 1, !tbaa !11
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i575.peel

bb.eg:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i573.peel
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.tj)
          to label %.noexc578.peel unwind label %.loopexit616.loopexit.loopexit.split-lp

.noexc578.peel:                                   ; preds = %bb.eg
  %i.to = load ptr, ptr %i.tj, align 8, !tbaa !43
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 48
  %i.tq = load ptr, ptr %i.tp, align 8
  %i.tr = invoke noundef signext i8 %i.tq(ptr noundef nonnull align 8 dereferenceable(570) %i.tj, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i575.peel unwind label %.loopexit616.loopexit.loopexit.split-lp, !inline_history !24

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i575.peel: ; preds = %.noexc578.peel, %bb.ef
  %.0.i.i.i576.peel = phi i8 [ %i.tn, %bb.ef ], [ %i.tr, %.noexc578.peel ]
  %i.ts = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.td, i8 noundef signext %.0.i.i.i576.peel)
          to label %.noexc580.peel unwind label %.loopexit616.loopexit.loopexit.split-lp

.noexc580.peel:                                   ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i575.peel
  %i.tt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ts)
          to label %_ZNSolsEPFRSoS_E.exit426.peel unwind label %.loopexit616.loopexit.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit426.peel:                    ; preds = %.noexc580.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #13
  store i32 0, ptr %i.rw, align 8, !tbaa !77
  store i32 0, ptr %i.rx, align 4, !tbaa !78
  store i32 17432576, ptr %61, align 8, !tbaa !14
  store ptr %18, ptr %i.ry, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #13
  store i64 0, ptr %i.sa, align 8
  store i32 -2113732571, ptr %62, align 8, !tbaa !14
  store ptr %24, ptr %i.rz, align 8, !tbaa !15
  %i.tu = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.eh unwind label %.loopexit.split-lp798

bb.eh:                                            ; preds = %_ZNSolsEPFRSoS_E.exit426.peel
  invoke void @_ZN2cv19goodFeaturesToTrackERKNS_11_InputArrayERKNS_12_OutputArrayEiddS2_ibd(ptr noundef nonnull align 8 dereferenceable(24) %61, ptr noundef nonnull align 8 dereferenceable(24) %62, i32 noundef %i.eb, double noundef 1.000000e-02, double noundef %i.ej, ptr noundef nonnull align 8 dereferenceable(24) %i.tu, i32 noundef 3, i1 noundef zeroext false, double noundef 4.000000e-02)
          to label %bb.ei unwind label %.loopexit.split-lp798

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #13
  store i32 0, ptr %i.sb, align 8, !tbaa !77
  store i32 0, ptr %i.sc, align 4, !tbaa !78
  store i32 17432576, ptr %63, align 8, !tbaa !14
  store ptr %18, ptr %i.sd, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #13
  store i32 0, ptr %i.se, align 8, !tbaa !77
  store i32 0, ptr %i.sf, align 4, !tbaa !78
  store i32 17432576, ptr %64, align 8, !tbaa !14
  store ptr %21, ptr %i.sg, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #13
  store i32 0, ptr %i.sh, align 8, !tbaa !77
  store i32 0, ptr %i.si, align 4, !tbaa !78
  %i.tv = load ptr, ptr %i.fv, align 8, !tbaa !20
  %i.tw = load ptr, ptr %24, align 8, !tbaa !18
  %i.tx = ptrtoint ptr %i.tv to i64
  %i.ty = ptrtoint ptr %i.tw to i64
  %i.tz = sub i64 %i.tx, %i.ty
  %i.ua = ashr exact i64 %i.tz, 3                 ; 2 uses
  %.not.i428.peel = icmp ugt i64 %i.ua, 2147483647
  br i1 %.not.i428.peel, label %.loopexit802, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  store i32 -2130509787, ptr %65, align 8, !tbaa !14
  store ptr %24, ptr %i.sj, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #13
  store i64 0, ptr %i.sl, align 8
  store i32 -2096955355, ptr %66, align 8, !tbaa !14
  store ptr %25, ptr %i.sk, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #13
  store i64 0, ptr %i.sn, align 8
  store i32 -2113732608, ptr %67, align 8, !tbaa !14
  store ptr %26, ptr %i.sm, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #13
  store i64 0, ptr %i.sp, align 8
  store i32 -2113732603, ptr %68, align 8, !tbaa !14
  store ptr %27, ptr %i.so, align 8, !tbaa !15
  store i32 3, ptr %69, align 8, !tbaa !80
  store i32 30, ptr %i.sq, align 4, !tbaa !81
  store double 1.000000e-02, ptr %i.sr, align 8, !tbaa !82
  invoke void @_ZN2cv20calcOpticalFlowPyrLKERKNS_11_InputArrayES2_S2_RKNS_17_InputOutputArrayERKNS_12_OutputArrayES8_NS_5Size_IiEEiNS_12TermCriteriaEid(ptr noundef nonnull align 8 dereferenceable(24) %63, ptr noundef nonnull align 8 dereferenceable(24) %64, ptr noundef nonnull align 8 dereferenceable(24) %65, ptr noundef nonnull align 8 dereferenceable(24) %66, ptr noundef nonnull align 8 dereferenceable(24) %67, ptr noundef nonnull align 8 dereferenceable(24) %68, i64 90194313237, i32 noundef 3, ptr noundef nonnull byval(%"class.cv::TermCriteria") align 8 %69, i32 noundef 0, double noundef 1.000000e-04)
          to label %.thread.peel unwind label %.loopexit.split-lp804

.thread.peel:                                     ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #13
  br label %bb.ek

bb.ek:                                            ; preds = %.thread.peel, %.thread
  %.0632 = phi i32 [ 1, %.thread.peel ], [ %i.xd, %.thread ] ; 3 uses
  %i.ub = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.24, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit424 unwind label %.loopexit616.loopexit.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit424: ; preds = %bb.ek
  %i.uc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.0632)
          to label %bb.el unwind label %.loopexit616.loopexit.loopexit ; 3 uses

bb.el:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit424
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !43
  %i.ue = getelementptr i8, ptr %i.ud, i64 -24
  %i.uf = load i64, ptr %i.ue, align 8
  %i.ug = getelementptr inbounds i8, ptr %i.uc, i64 %i.uf
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 240
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !59 ; 6 uses
  %.not.i.i.i572 = icmp eq ptr %i.ui, null
  br i1 %.not.i.i.i572, label %.invoke770, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i573

.invoke770:                                       ; preds = %bb.ee, %bb.el, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit437
  invoke void @_ZSt16__throw_bad_castv() #15
          to label %.cont771 unwind label %.loopexit.split-lp

.cont771:                                         ; preds = %.invoke770
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i573: ; preds = %bb.el
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 56
  %i.uk = load i8, ptr %i.uj, align 8, !tbaa !65
  %.not.i1.i.i574 = icmp eq i8 %i.uk, 0
  br i1 %.not.i1.i.i574, label %bb.en, label %bb.em

bb.em:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i573
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ui, i64 67
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !11
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i575

bb.en:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i573
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ui)
          to label %.noexc578 unwind label %.loopexit616.loopexit.loopexit

.noexc578:                                        ; preds = %bb.en
  %i.un = load ptr, ptr %i.ui, align 8, !tbaa !43
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 48
  %i.up = load ptr, ptr %i.uo, align 8
  %i.uq = invoke noundef signext i8 %i.up(ptr noundef nonnull align 8 dereferenceable(570) %i.ui, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i575 unwind label %.loopexit616.loopexit.loopexit, !inline_history !24

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i575: ; preds = %.noexc578, %bb.em
  %.0.i.i.i576 = phi i8 [ %i.um, %bb.em ], [ %i.uq, %.noexc578 ]
  %i.ur = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.uc, i8 noundef signext %.0.i.i.i576)
          to label %.noexc580 unwind label %.loopexit616.loopexit.loopexit

.noexc580:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i575
  %i.us = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ur)
          to label %_ZNSolsEPFRSoS_E.exit426 unwind label %.loopexit616.loopexit.loopexit ; 0 uses

_ZNSolsEPFRSoS_E.exit426:                         ; preds = %.noexc580
  %i.ut = invoke noundef i64 @_ZN2cv12getTickCountEv()
          to label %_ZL9workBeginv.exit unwind label %.loopexit616.loopexit.loopexit

_ZL9workBeginv.exit:                              ; preds = %_ZNSolsEPFRSoS_E.exit426
  store i64 %i.ut, ptr @work_begin, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #13
  store i32 0, ptr %i.rw, align 8, !tbaa !77
  store i32 0, ptr %i.rx, align 4, !tbaa !78
  store i32 17432576, ptr %61, align 8, !tbaa !14
  store ptr %18, ptr %i.ry, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #13
  store i64 0, ptr %i.sa, align 8
  store i32 -2113732571, ptr %62, align 8, !tbaa !14
  store ptr %24, ptr %i.rz, align 8, !tbaa !15
  %i.uu = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.eo unwind label %.loopexit797

.loopexit616.loopexit.loopexit:                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit424, %bb.ek, %_ZNSolsEPFRSoS_E.exit426, %bb.er, %bb.en, %.noexc578, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i575, %.noexc580
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit616

.loopexit616.loopexit.loopexit.split-lp:          ; preds = %_ZNSolsEPFRSoS_E.exit419, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit424.peel, %bb.eg, %.noexc578.peel, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i575.peel, %.noexc580.peel
  %lpad.loopexit.split-lp796 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit616

.loopexit616.loopexit.split-lp:                   ; preds = %.noexc591, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i586, %.noexc589, %bb.ez, %_ZNSolsEd.exit, %bb.ex, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit433, %.loopexit808, %bb.fa
  %lpad.loopexit.split-lp756 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit616

.loopexit.split-lp:                               ; preds = %.invoke770
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit616

bb.eo:                                            ; preds = %_ZL9workBeginv.exit
  invoke void @_ZN2cv19goodFeaturesToTrackERKNS_11_InputArrayERKNS_12_OutputArrayEiddS2_ibd(ptr noundef nonnull align 8 dereferenceable(24) %61, ptr noundef nonnull align 8 dereferenceable(24) %62, i32 noundef %i.eb, double noundef 1.000000e-02, double noundef %i.ej, ptr noundef nonnull align 8 dereferenceable(24) %i.uu, i32 noundef 3, i1 noundef zeroext false, double noundef 4.000000e-02)
          to label %bb.ep unwind label %.loopexit797

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #13
  store i32 0, ptr %i.sb, align 8, !tbaa !77
  store i32 0, ptr %i.sc, align 4, !tbaa !78
  store i32 17432576, ptr %63, align 8, !tbaa !14
  store ptr %18, ptr %i.sd, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #13
  store i32 0, ptr %i.se, align 8, !tbaa !77
  store i32 0, ptr %i.sf, align 4, !tbaa !78
  store i32 17432576, ptr %64, align 8, !tbaa !14
  store ptr %21, ptr %i.sg, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #13
  store i32 0, ptr %i.sh, align 8, !tbaa !77
  store i32 0, ptr %i.si, align 4, !tbaa !78
  %i.uv = load ptr, ptr %i.fv, align 8, !tbaa !20
  %i.uw = load ptr, ptr %24, align 8, !tbaa !18
  %i.ux = ptrtoint ptr %i.uv to i64
  %i.uy = ptrtoint ptr %i.uw to i64
  %i.uz = sub i64 %i.ux, %i.uy
  %i.va = ashr exact i64 %i.uz, 3                 ; 2 uses
  %.not.i428 = icmp ugt i64 %i.va, 2147483647
  br i1 %.not.i428, label %.loopexit802, label %bb.eq

.loopexit802:                                     ; preds = %bb.ep, %bb.ei
  %.lcssa791 = phi i64 [ %i.ua, %bb.ei ], [ %i.va, %bb.ep ]
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %.lcssa791, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #15
          to label %.noexc429 unwind label %bb.et

.noexc429:                                        ; preds = %.loopexit802
  unreachable

bb.eq:                                            ; preds = %bb.ep
  store i32 -2130509787, ptr %65, align 8, !tbaa !14
  store ptr %24, ptr %i.sj, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #13
  store i64 0, ptr %i.sl, align 8
  store i32 -2096955355, ptr %66, align 8, !tbaa !14
  store ptr %25, ptr %i.sk, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #13
  store i64 0, ptr %i.sn, align 8
  store i32 -2113732608, ptr %67, align 8, !tbaa !14
  store ptr %26, ptr %i.sm, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #13
  store i64 0, ptr %i.sp, align 8
  store i32 -2113732603, ptr %68, align 8, !tbaa !14
  store ptr %27, ptr %i.so, align 8, !tbaa !15
  store i32 3, ptr %69, align 8, !tbaa !80
  store i32 30, ptr %i.sq, align 4, !tbaa !81
  store double 1.000000e-02, ptr %i.sr, align 8, !tbaa !82
  invoke void @_ZN2cv20calcOpticalFlowPyrLKERKNS_11_InputArrayES2_S2_RKNS_17_InputOutputArrayERKNS_12_OutputArrayES8_NS_5Size_IiEEiNS_12TermCriteriaEid(ptr noundef nonnull align 8 dereferenceable(24) %63, ptr noundef nonnull align 8 dereferenceable(24) %64, ptr noundef nonnull align 8 dereferenceable(24) %65, ptr noundef nonnull align 8 dereferenceable(24) %66, ptr noundef nonnull align 8 dereferenceable(24) %67, ptr noundef nonnull align 8 dereferenceable(24) %68, i64 90194313237, i32 noundef 3, ptr noundef nonnull byval(%"class.cv::TermCriteria") align 8 %69, i32 noundef 0, double noundef 1.000000e-04)
          to label %bb.er unwind label %.loopexit803

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #13
  %i.vb = invoke noundef i64 @_ZN2cv12getTickCountEv()
          to label %bb.ew unwind label %.loopexit616.loopexit.loopexit

.loopexit797:                                     ; preds = %_ZL9workBeginv.exit, %bb.eo
  %lpad.loopexit799 = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

.loopexit.split-lp798:                            ; preds = %_ZNSolsEPFRSoS_E.exit426.peel, %bb.eh
  %lpad.loopexit.split-lp800 = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.es:                                            ; preds = %.loopexit.split-lp798, %.loopexit797
  %lpad.phi801 = phi { ptr, i32 } [ %lpad.loopexit799, %.loopexit797 ], [ %lpad.loopexit.split-lp800, %.loopexit.split-lp798 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #13
  br label %.loopexit616

bb.et:                                            ; preds = %.loopexit802
  %i.vc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

.loopexit803:                                     ; preds = %bb.eq
  %lpad.loopexit805 = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

.loopexit.split-lp804:                            ; preds = %bb.ej
  %lpad.loopexit.split-lp806 = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.eu:                                            ; preds = %.loopexit.split-lp804, %.loopexit803
  %lpad.phi807 = phi { ptr, i32 } [ %lpad.loopexit805, %.loopexit803 ], [ %lpad.loopexit.split-lp806, %.loopexit.split-lp804 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #13
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %.pn145.pn.pn.pn = phi { ptr, i32 } [ %lpad.phi807, %bb.eu ], [ %i.vc, %bb.et ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #13
  br label %.loopexit616

bb.ew:                                            ; preds = %bb.er
  %i.vd = load i64, ptr @work_begin, align 8, !tbaa !38
  %i.ve = sub i64 %i.vb, %i.vd
  %i.vf = load i64, ptr @work_end, align 8, !tbaa !38
  %i.vg = add nsw i64 %i.ve, %i.vf
  store i64 %i.vg, ptr @work_end, align 8, !tbaa !38
  %i.vh = icmp eq i32 %.0632, 10
  br i1 %i.vh, label %.loopexit808, label %.thread

.loopexit808:                                     ; preds = %bb.ew
  %i.vi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.25, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit433 unwind label %.loopexit616.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit433: ; preds = %.loopexit808
  %i.vj = load i64, ptr @work_end, align 8, !tbaa !38
  %i.vk = invoke noundef double @_ZN2cv16getTickFrequencyEv()
          to label %bb.ex unwind label %.loopexit616.loopexit.split-lp

bb.ex:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit433
  %i.vl = sitofp i64 %i.vj to double
  %i.vm = fmul nnan double %i.vl, 1.000000e+03
  %i.vn = fdiv double %i.vm, %i.vk
  %i.vo = fdiv double %i.vn, 1.000000e+01
  %i.vp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.vo)
          to label %_ZNSolsEd.exit unwind label %.loopexit616.loopexit.split-lp ; 4 uses

_ZNSolsEd.exit:                                   ; preds = %bb.ex
  %i.vq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vp, ptr noundef nonnull @.str.26, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit437 unwind label %.loopexit616.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit437: ; preds = %_ZNSolsEd.exit
  %i.vr = load ptr, ptr %i.vp, align 8, !tbaa !43
  %i.vs = getelementptr i8, ptr %i.vr, i64 -24
  %i.vt = load i64, ptr %i.vs, align 8
  %i.vu = getelementptr inbounds i8, ptr %i.vp, i64 %i.vt
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 240
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !59 ; 6 uses
  %.not.i.i.i583 = icmp eq ptr %i.vw, null
  br i1 %.not.i.i.i583, label %.invoke770, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i584

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i584: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit437
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 56
  %i.vy = load i8, ptr %i.vx, align 8, !tbaa !65
  %.not.i1.i.i585 = icmp eq i8 %i.vy, 0
  br i1 %.not.i1.i.i585, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i584
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vw, i64 67
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !11
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i586

bb.ez:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i584
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.vw)
          to label %.noexc589 unwind label %.loopexit616.loopexit.split-lp

.noexc589:                                        ; preds = %bb.ez
  %i.wb = load ptr, ptr %i.vw, align 8, !tbaa !43
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 48
  %i.wd = load ptr, ptr %i.wc, align 8
  %i.we = invoke noundef signext i8 %i.wd(ptr noundef nonnull align 8 dereferenceable(570) %i.vw, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i586 unwind label %.loopexit616.loopexit.split-lp, !inline_history !24

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i586: ; preds = %.noexc589, %bb.ey
  %.0.i.i.i587 = phi i8 [ %i.wa, %bb.ey ], [ %i.we, %.noexc589 ]
  %i.wf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.vp, i8 noundef signext %.0.i.i.i587)
          to label %.noexc591 unwind label %.loopexit616.loopexit.split-lp

.noexc591:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i586
  %i.wg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.wf)
          to label %bb.fa unwind label %.loopexit616.loopexit.split-lp ; 0 uses

bb.fa:                                            ; preds = %.noexc591
  store double 2.550000e+02, ptr %70, align 8, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ss, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZL10drawArrowsRN2cv4UMatERKSt6vectorINS_6Point_IfEESaIS4_EES8_RKS2_IhSaIhEENS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(184) %18, ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef align 8 dead_on_return %70)
          to label %._crit_edge.i.i440 unwind label %.loopexit616.loopexit.split-lp

._crit_edge.i.i440:                               ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #13
  store ptr %i.st, ptr %71, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.st, ptr noundef nonnull align 1 dereferenceable(14) @.str.17, i64 14, i1 false)
  store i64 14, ptr %i.su, align 8, !tbaa !41
  %i.wh = getelementptr inbounds nuw i8, ptr %71, i64 30
  store i8 0, ptr %i.wh, align 2, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #13
  store i32 0, ptr %i.sv, align 8, !tbaa !77
  store i32 0, ptr %i.sw, align 4, !tbaa !78
  store i32 17432576, ptr %72, align 8, !tbaa !14
  store ptr %18, ptr %i.sx, align 8, !tbaa !15
  invoke void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32) %71, ptr noundef nonnull align 8 dereferenceable(24) %72)
          to label %bb.fb unwind label %bb.fe

bb.fb:                                            ; preds = %._crit_edge.i.i440
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #13
  %i.wi = load ptr, ptr %71, align 8, !tbaa !40   ; 2 uses
  %i.wj = icmp eq ptr %i.wi, %i.st
  br i1 %i.wj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i445, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444: ; preds = %bb.fb
  %i.wk = load i64, ptr %i.st, align 8, !tbaa !11
  %i.wl = add i64 %i.wk, 1
  call void @_ZdlPvm(ptr noundef %i.wi, i64 noundef %i.wl) #14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i445

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i445: ; preds = %bb.fb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #13
  store i32 0, ptr %i.sy, align 8, !tbaa !77
  store i32 0, ptr %i.sz, align 4, !tbaa !78
  store i32 17432576, ptr %73, align 8, !tbaa !14
  store ptr %18, ptr %i.ta, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %74, i8 0, i64 24, i1 false)
  %i.wm = invoke noundef zeroext i1 @_ZN2cv7imwriteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(24) %73, ptr noundef nonnull align 8 dereferenceable(24) %74)
          to label %bb.fc unwind label %bb.ff     ; 0 uses

bb.fc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i445
  %i.wn = load ptr, ptr %74, align 8, !tbaa !84   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.wn, null
  br i1 %.not.i.i.i, label %.thread.thread, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.wo = load ptr, ptr %i.tb, align 8, !tbaa !85
  %i.wp = ptrtoint ptr %i.wo to i64
  %i.wq = ptrtoint ptr %i.wn to i64
  %i.wr = sub i64 %i.wp, %i.wq
  call void @_ZdlPvm(ptr noundef nonnull %i.wn, i64 noundef %i.wr) #14
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.fd, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #13
  br label %.loopexit

bb.fe:                                            ; preds = %._crit_edge.i.i440
  %i.ws = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #13
  %i.wt = load ptr, ptr %71, align 8, !tbaa !40   ; 2 uses
  %i.wu = icmp eq ptr %i.wt, %i.st
  br i1 %i.wu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447: ; preds = %bb.fe
  %i.wv = load i64, ptr %i.st, align 8, !tbaa !11
  %i.ww = add i64 %i.wv, 1
  call void @_ZdlPvm(ptr noundef %i.wt, i64 noundef %i.ww) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449: ; preds = %bb.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #13
  br label %.loopexit616

bb.ff:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i445
  %i.wx = landingpad { ptr, i32 }
          cleanup
  %i.wy = load ptr, ptr %74, align 8, !tbaa !84   ; 3 uses
  %.not.i.i.i450 = icmp eq ptr %i.wy, null
  br i1 %.not.i.i.i450, label %_ZNSt6vectorIiSaIiEED2Ev.exit451, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.wz = load ptr, ptr %i.tb, align 8, !tbaa !85
  %i.xa = ptrtoint ptr %i.wz to i64
  %i.xb = ptrtoint ptr %i.wy to i64
  %i.xc = sub i64 %i.xa, %i.xb
  call void @_ZdlPvm(ptr noundef nonnull %i.wy, i64 noundef %i.xc) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit451

_ZNSt6vectorIiSaIiEED2Ev.exit451:                 ; preds = %bb.ff, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #13
  br label %.loopexit616

.thread:                                          ; preds = %bb.ew
  %i.xd = add nuw nsw i32 %.0632, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.xd, 11
  br i1 %exitcond.not, label %.loopexit, label %bb.ek, !llvm.loop !34

.loopexit:                                        ; preds = %.thread, %.thread.thread, %_ZNSolsEPFRSoS_E.exit379
  %i.xe = invoke noundef i32 @_ZN2cv7waitKeyEi(i32 noundef 0)
          to label %bb.fh unwind label %bb.bb     ; 0 uses

bb.fh:                                            ; preds = %.loopexit, %_ZNSolsEPFRSoS_E.exit379
  %.1111 = phi i32 [ %.1, %_ZNSolsEPFRSoS_E.exit379 ], [ 0, %.loopexit ]
  %i.xf = load ptr, ptr %27, align 8, !tbaa !89   ; 3 uses
  %.not.i.i.i452 = icmp eq ptr %i.xf, null
  br i1 %.not.i.i.i452, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.xg = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !90
  %i.xi = ptrtoint ptr %i.xh to i64
  %i.xj = ptrtoint ptr %i.xf to i64
  %i.xk = sub i64 %i.xi, %i.xj
  call void @_ZdlPvm(ptr noundef nonnull %i.xf, i64 noundef %i.xk) #14
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.fh, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  %i.xl = load ptr, ptr %26, align 8, !tbaa !22   ; 3 uses
  %.not.i.i.i453 = icmp eq ptr %i.xl, null
  br i1 %.not.i.i.i453, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.fj

bb.fj:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.xm = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !75
  %i.xo = ptrtoint ptr %i.xn to i64
  %i.xp = ptrtoint ptr %i.xl to i64
  %i.xq = sub i64 %i.xo, %i.xp
  call void @_ZdlPvm(ptr noundef nonnull %i.xl, i64 noundef %i.xq) #14
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  %i.xr = load ptr, ptr %25, align 8, !tbaa !18   ; 3 uses
  %.not.i.i.i454 = icmp eq ptr %i.xr, null
  br i1 %.not.i.i.i454, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.fk

bb.fk:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.xs = load ptr, ptr %i.fu, align 8, !tbaa !74
  %i.xt = ptrtoint ptr %i.xs to i64
  %i.xu = ptrtoint ptr %i.xr to i64
  %i.xv = sub i64 %i.xt, %i.xu
  call void @_ZdlPvm(ptr noundef nonnull %i.xr, i64 noundef %i.xv) #14
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  %i.xw = load ptr, ptr %24, align 8, !tbaa !18   ; 3 uses
  %.not.i.i.i455 = icmp eq ptr %i.xw, null
  br i1 %.not.i.i.i455, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit456, label %bb.fl

bb.fl:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit
  %i.xx = load ptr, ptr %i.fw, align 8, !tbaa !74
  %i.xy = ptrtoint ptr %i.xx to i64
  %i.xz = ptrtoint ptr %i.xw to i64
  %i.ya = sub i64 %i.xy, %i.xz
  call void @_ZdlPvm(ptr noundef nonnull %i.xw, i64 noundef %i.ya) #14
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit456

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit456: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %21) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %18) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  %i.yb = load ptr, ptr %13, align 8, !tbaa !40   ; 2 uses
  %i.yc = icmp eq ptr %i.yb, %i.dn
  br i1 %i.yc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit456
  %i.yd = load i64, ptr %i.dn, align 8, !tbaa !11
  %i.ye = add i64 %i.yd, 1
  call void @_ZdlPvm(ptr noundef %i.yb, i64 noundef %i.ye) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit456, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  %i.yf = load ptr, ptr %11, align 8, !tbaa !40   ; 2 uses
  %i.yg = icmp eq ptr %i.yf, %i.cz
  br i1 %i.yg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459
  %i.yh = load i64, ptr %i.cz, align 8, !tbaa !11
  %i.yi = add i64 %i.yh, 1
  call void @_ZdlPvm(ptr noundef %i.yf, i64 noundef %i.yi) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  %i.yj = load ptr, ptr %8, align 8, !tbaa !40    ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.yl = icmp eq ptr %i.yj, %i.yk
  br i1 %i.yl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462
  %i.ym = load i64, ptr %i.yk, align 8, !tbaa !11
  %i.yn = add i64 %i.ym, 1
  call void @_ZdlPvm(ptr noundef %i.yj, i64 noundef %i.yn) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.yo = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.yq = icmp eq ptr %i.yo, %i.yp
  br i1 %i.yq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465
  %i.yr = load i64, ptr %i.yp, align 8, !tbaa !11
  %i.ys = add i64 %i.yr, 1
  call void @_ZdlPvm(ptr noundef %i.yo, i64 noundef %i.ys) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.ft

.loopexit616:                                     ; preds = %.loopexit616.loopexit.loopexit, %.loopexit616.loopexit.loopexit.split-lp, %.loopexit616.loopexit.split-lp, %.loopexit.split-lp, %bb.es, %bb.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449, %_ZNSt6vectorIiSaIiEED2Ev.exit451, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422, %bb.dx, %bb.bb
  %.pn202 = phi { ptr, i32 } [ %i.jh, %bb.bb ], [ %.pn198.pn.pn, %bb.dx ], [ %i.rr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422 ], [ %i.wx, %_ZNSt6vectorIiSaIiEED2Ev.exit451 ], [ %i.ws, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449 ], [ %lpad.phi801, %bb.es ], [ %.pn145.pn.pn.pn, %bb.ev ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp756, %.loopexit616.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit616.loopexit.loopexit ], [ %lpad.loopexit.split-lp796, %.loopexit616.loopexit.loopexit.split-lp ] ; 2 uses
  %i.yt = load ptr, ptr %27, align 8, !tbaa !89   ; 3 uses
  %.not.i.i.i469 = icmp eq ptr %i.yt, null
  br i1 %.not.i.i.i469, label %_ZNSt6vectorIfSaIfEED2Ev.exit470, label %bb.fm

bb.fm:                                            ; preds = %.loopexit616
  %i.yu = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !90
  %i.yw = ptrtoint ptr %i.yv to i64
  %i.yx = ptrtoint ptr %i.yt to i64
  %i.yy = sub i64 %i.yw, %i.yx
  call void @_ZdlPvm(ptr noundef nonnull %i.yt, i64 noundef %i.yy) #14
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit470

_ZNSt6vectorIfSaIfEED2Ev.exit470:                 ; preds = %.loopexit616, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  %i.yz = load ptr, ptr %26, align 8, !tbaa !22   ; 3 uses
  %.not.i.i.i471 = icmp eq ptr %i.yz, null
  br i1 %.not.i.i.i471, label %_ZNSt6vectorIhSaIhEED2Ev.exit472, label %bb.fn

bb.fn:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit470
  %i.za = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !75
  %i.zc = ptrtoint ptr %i.zb to i64
  %i.zd = ptrtoint ptr %i.yz to i64
  %i.ze = sub i64 %i.zc, %i.zd
  call void @_ZdlPvm(ptr noundef nonnull %i.yz, i64 noundef %i.ze) #14
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit472

_ZNSt6vectorIhSaIhEED2Ev.exit472:                 ; preds = %bb.fn, %_ZNSt6vectorIfSaIfEED2Ev.exit470, %bb.ba
  %i.zf = phi ptr [ %i.fn, %bb.ba ], [ %i.fu, %_ZNSt6vectorIfSaIfEED2Ev.exit470 ], [ %i.fu, %bb.fn ]
  %i.zg = phi ptr [ %i.fg, %bb.ba ], [ %i.fw, %_ZNSt6vectorIfSaIfEED2Ev.exit470 ], [ %i.fw, %bb.fn ] ; 2 uses
  %.pn202.pn = phi { ptr, i32 } [ %i.jg, %bb.ba ], [ %.pn202, %_ZNSt6vectorIfSaIfEED2Ev.exit470 ], [ %.pn202, %bb.fn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  %i.zh = load ptr, ptr %25, align 8, !tbaa !18   ; 3 uses
  %.not.i.i.i473 = icmp eq ptr %i.zh, null
  br i1 %.not.i.i.i473, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit474, label %bb.fo

bb.fo:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit472
  %i.zi = load ptr, ptr %i.zf, align 8, !tbaa !74
  %i.zj = ptrtoint ptr %i.zi to i64
  %i.zk = ptrtoint ptr %i.zh to i64
  %i.zl = sub i64 %i.zj, %i.zk
  call void @_ZdlPvm(ptr noundef nonnull %i.zh, i64 noundef %i.zl) #14
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit474

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit474: ; preds = %bb.fo, %_ZNSt6vectorIhSaIhEED2Ev.exit472, %bb.az
  %i.zm = phi ptr [ %i.fg, %bb.az ], [ %i.zg, %_ZNSt6vectorIhSaIhEED2Ev.exit472 ], [ %i.zg, %bb.fo ]
  %.pn202.pn.pn = phi { ptr, i32 } [ %i.jf, %bb.az ], [ %.pn202.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit472 ], [ %.pn202.pn, %bb.fo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  %i.zn = load ptr, ptr %24, align 8, !tbaa !18   ; 3 uses
  %.not.i.i.i475 = icmp eq ptr %i.zn, null
  br i1 %.not.i.i.i475, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit476, label %bb.fp

bb.fp:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit474
  %i.zo = load ptr, ptr %i.zm, align 8, !tbaa !74
  %i.zp = ptrtoint ptr %i.zo to i64
  %i.zq = ptrtoint ptr %i.zn to i64
  %i.zr = sub i64 %i.zp, %i.zq
  call void @_ZdlPvm(ptr noundef nonnull %i.zn, i64 noundef %i.zr) #14
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit476

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit476: ; preds = %bb.fp, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit474, %bb.ay
  %.pn202.pn.pn.pn = phi { ptr, i32 } [ %i.je, %bb.ay ], [ %.pn202.pn.pn, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit474 ], [ %.pn202.pn.pn, %bb.fp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  br label %bb.fq

bb.fq:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit476, %bb.ax
  %.pn202.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn202.pn.pn.pn, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit476 ], [ %.pn137.pn, %bb.ax ]
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %21) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.au
  %.pn202.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn202.pn.pn.pn.pn, %bb.fq ], [ %.pn134.pn, %bb.au ]
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %18) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  br label %bb.fs

bb.fs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359, %bb.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356
end_hunk_0
