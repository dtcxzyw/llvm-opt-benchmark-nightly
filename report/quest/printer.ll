Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/printer?download=true
inline.NumInlined: 3013
inline.NumDeleted: 673
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_Z26printMatrixInFourQuadrantsSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EES5_S5_S5_S_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EESD_SD_SD_SB_SB_SB_:bb.a
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.da ; 0 uses

bb.cn:                                            ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %i.oj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #29
  br label %bb.ht

bb.co:                                            ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i70, %.noexc.i.i73
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cp:                                            ; preds = %bb.m
  %i.ol = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #29
  br label %.body

bb.cq:                                            ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i89, %.noexc.i.i92
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %.body95

bb.cr:                                            ; preds = %bb.t
  %i.on = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #29
  br label %.body95

bb.cs:                                            ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i111, %.noexc.i.i114
  %i.oo = landingpad { ptr, i32 }
          cleanup
  br label %.body117

bb.ct:                                            ; preds = %bb.aa
  %i.op = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #29
  br label %.body117

bb.cu:                                            ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i134
  %i.oq = landingpad { ptr, i32 }
          cleanup
  br label %.body137

bb.cv:                                            ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i140, %.noexc.i.i143
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %.body146

bb.cw:                                            ; preds = %bb.al
  %i.os = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #29
  br label %.body146

.body146:                                         ; preds = %bb.cv, %bb.ak, %bb.aj, %bb.cw
  %.pn = phi { ptr, i32 } [ %i.os, %bb.cw ], [ %i.or, %bb.cv ], [ %i.ea, %bb.ak ], [ %i.ea, %bb.aj ]
  call void @_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #29
  br label %.body137

bb.cx:                                            ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i180, %.noexc.i.i183
  %i.ot = landingpad { ptr, i32 }
          cleanup
  br label %.body186

bb.cy:                                            ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i190, %.noexc.i.i193
  %i.ou = landingpad { ptr, i32 }
          cleanup
  br label %.body196

bb.cz:                                            ; preds = %bb.ay
  %i.ov = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %24) #29
  br label %.body196

.body196:                                         ; preds = %bb.cy, %bb.ax, %bb.aw, %bb.cz
  %.pn36 = phi { ptr, i32 } [ %i.ov, %bb.cz ], [ %i.ou, %bb.cy ], [ %i.gm, %bb.ax ], [ %i.gm, %bb.aw ]
  call void @_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %23) #29
  br label %.body186

bb.da:                                            ; preds = %.noexc.i.i460.invoke, %.noexc692, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc690, %bb.cm, %bb.ck, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i457, %.noexc.i428, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i307, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %bb.bm
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %.body256

bb.db:                                            ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i259
  %i.ox = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit305

bb.dc:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i263, %.noexc.i.i266
  %i.oy = landingpad { ptr, i32 }
          cleanup
  br label %.body269

bb.dd:                                            ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i273, %.noexc.i.i274
  %i.oz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit303

bb.de:                                            ; preds = %bb.ce
  %i.pa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i302 = icmp eq ptr %i.na, null
  br i1 %.not.i.i.i302, label %_ZNSt6vectorImSaImEED2Ev.exit303, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.pb = ptrtoint ptr %i.my to i64
  %i.pc = ptrtoint ptr %i.na to i64
  %i.pd = sub i64 %i.pb, %i.pc
  call void @_ZdlPvm(ptr noundef nonnull %i.na, i64 noundef %i.pd) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit303

_ZNSt6vectorImSaImEED2Ev.exit303:                 ; preds = %bb.df, %bb.de, %bb.dd
  %.pn38 = phi { ptr, i32 } [ %i.oz, %bb.dd ], [ %i.pa, %bb.de ], [ %i.pa, %bb.df ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %27) #29
  br label %.body269

.body269:                                         ; preds = %bb.dc, %bb.by, %bb.bx, %_ZNSt6vectorImSaImEED2Ev.exit303
  %.pn38.pn = phi { ptr, i32 } [ %.pn38, %_ZNSt6vectorImSaImEED2Ev.exit303 ], [ %i.oy, %bb.dc ], [ %i.mg, %bb.by ], [ %i.mg, %bb.bx ] ; 2 uses
  %.not.i.i.i304 = icmp eq ptr %i.ls, null
  br i1 %.not.i.i.i304, label %_ZNSt6vectorImSaImEED2Ev.exit305, label %bb.dg

bb.dg:                                            ; preds = %.body269
  %i.pe = ptrtoint ptr %i.lq to i64
  %i.pf = ptrtoint ptr %i.ls to i64
  %i.pg = sub i64 %i.pe, %i.pf
  call void @_ZdlPvm(ptr noundef nonnull %i.ls, i64 noundef %i.pg) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit305

_ZNSt6vectorImSaImEED2Ev.exit305:                 ; preds = %bb.dg, %.body269, %bb.db
  %.pn38.pn.pn = phi { ptr, i32 } [ %i.ox, %bb.db ], [ %.pn38.pn, %.body269 ], [ %.pn38.pn, %bb.dg ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %25) #29
  br label %.body256

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc692, %_Z32expandMaxWidthsAccordingToLabelsRSt6vectorImSaImEERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE.exit249
  %i.ph = load ptr, ptr %i.cv, align 8, !tbaa !75 ; 3 uses
  %i.pi = load ptr, ptr %11, align 8, !tbaa !74   ; 3 uses
  %i.pj = ptrtoint ptr %i.ph to i64
  %i.pk = ptrtoint ptr %i.pi to i64
  %i.pl = sub i64 %i.pj, %i.pk                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false)
  %.not.i.i.i.i306 = icmp eq ptr %i.ph, %i.pi
  br i1 %.not.i.i.i.i306, label %.noexc312, label %bb.dh

bb.dh:                                            ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.pm = sdiv exact i64 %i.pl, 24
  %i.pn = icmp ugt i64 %i.pm, 384307168202282325
  br i1 %i.pn, label %.noexc.i.i460.invoke, label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i307, !prof !62

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i307: ; preds = %bb.dh
  %i.po = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pl) #33
          to label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i307..noexc312_crit_edge unwind label %bb.da

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i307..noexc312_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i307
  %.pre730 = load ptr, ptr %11, align 8, !tbaa !80
  %.pre731 = load ptr, ptr %i.cv, align 8, !tbaa !80
  br label %.noexc312

.noexc312:                                        ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i307..noexc312_crit_edge, %_ZNSolsEPFRSoS_E.exit
  %i.pp = phi ptr [ %i.ph, %_ZNSolsEPFRSoS_E.exit ], [ %.pre731, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i307..noexc312_crit_edge ]
  %i.pq = phi ptr [ %i.pi, %_ZNSolsEPFRSoS_E.exit ], [ %.pre730, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i307..noexc312_crit_edge ]
  %.pr.i411 = phi ptr [ null, %_ZNSolsEPFRSoS_E.exit ], [ %i.po, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i307..noexc312_crit_edge ] ; 10 uses
  store ptr %.pr.i411, ptr %29, align 8, !tbaa !74
  %i.pr = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store ptr %.pr.i411, ptr %i.pr, align 8, !tbaa !75
  %i.ps = getelementptr inbounds nuw i8, ptr %.pr.i411, i64 %i.pl
  %i.pt = getelementptr inbounds nuw i8, ptr %29, i64 16
  store ptr %i.ps, ptr %i.pt, align 8, !tbaa !76
  %i.pu = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EES2_ISA_SaISA_EEEEPSA_ET0_T_SI_SH_(ptr %i.pq, ptr %i.pp, ptr noundef %.pr.i411)
          to label %bb.dk unwind label %bb.di     ; 3 uses

bb.di:                                            ; preds = %.noexc312
  %i.pv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i308 = icmp eq ptr %.pr.i411, null
  br i1 %.not.i.i.i308, label %.body256, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i411, i64 noundef %i.pl) #32
  br label %.body256

bb.dk:                                            ; preds = %.noexc312
  store ptr %i.pu, ptr %i.pr, align 8, !tbaa !75
  %i.pw = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !85 ; 2 uses
  %i.py = load ptr, ptr %19, align 8, !tbaa !83   ; 7 uses
  %i.pz = ptrtoint ptr %i.px to i64
  %i.qa = ptrtoint ptr %i.py to i64
  %i.qb = sub i64 %i.pz, %i.qa                    ; 14 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 0, i64 24, i1 false)
  %.not.i.i.i.i316 = icmp eq ptr %i.px, %i.py     ; 2 uses
  br i1 %.not.i.i.i.i316, label %.thread706, label %bb.dl

.thread706:                                       ; preds = %bb.dk
  %i.qc = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.qd = getelementptr inbounds i8, ptr null, i64 %i.qb ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  store ptr %i.qd, ptr %i.qe, align 8, !tbaa !84
  br label %bb.dp

bb.dl:                                            ; preds = %bb.dk
  %i.qf = icmp ugt i64 %i.qb, 9223372036854775800
  br i1 %i.qf, label %.noexc.i.i318, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i317, !prof !62

.noexc.i.i318:                                    ; preds = %bb.dl
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc319 unwind label %bb.er

.noexc319:                                        ; preds = %.noexc.i.i318
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i317: ; preds = %bb.dl
  %i.qg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qb) #33
          to label %.noexc320 unwind label %bb.er ; 8 uses

.noexc320:                                        ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i317
  store ptr %i.qg, ptr %30, align 8, !tbaa !83
  %i.qh = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 4 uses
  store ptr %i.qg, ptr %i.qh, align 8, !tbaa !85
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qg, i64 %i.qb ; 4 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 4 uses
  store ptr %i.qi, ptr %i.qj, align 8, !tbaa !84
  %i.qk = icmp samesign ugt i64 %i.qb, 8
  br i1 %i.qk, label %bb.dm, label %bb.dn, !prof !768

bb.dm:                                            ; preds = %.noexc320
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.qg, ptr align 8 %i.py, i64 %i.qb, i1 false)
  br label %bb.dp

bb.dn:                                            ; preds = %.noexc320
  %i.ql = icmp eq i64 %i.qb, 8
  br i1 %i.ql, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.qm = load i64, ptr %i.py, align 8, !tbaa !32
  store i64 %i.qm, ptr %i.qg, align 8, !tbaa !32
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn, %bb.dm, %.thread706
  %46 = phi ptr [ %i.qj, %bb.dm ], [ %i.qj, %bb.dn ], [ %i.qj, %bb.do ], [ %i.qe, %.thread706 ]
  %i.qn = phi ptr [ %i.qi, %bb.dm ], [ %i.qi, %bb.dn ], [ %i.qi, %bb.do ], [ %i.qd, %.thread706 ] ; 2 uses
  %i.qo = phi ptr [ %i.qh, %bb.dm ], [ %i.qh, %bb.dn ], [ %i.qh, %bb.do ], [ %i.qc, %.thread706 ]
  %i.qp = phi ptr [ %i.qg, %bb.dm ], [ %i.qg, %bb.dn ], [ %i.qg, %bb.do ], [ null, %.thread706 ] ; 6 uses
  store ptr %i.qn, ptr %i.qo, align 8, !tbaa !85
  %i.qq = load ptr, ptr %i.fh, align 8, !tbaa !75 ; 3 uses
  %i.qr = load ptr, ptr %13, align 8, !tbaa !74   ; 3 uses
  %i.qs = ptrtoint ptr %i.qq to i64
  %i.qt = ptrtoint ptr %i.qr to i64
  %i.qu = sub i64 %i.qs, %i.qt                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 0, i64 24, i1 false)
  %.not.i.i.i.i322 = icmp eq ptr %i.qq, %i.qr
  br i1 %.not.i.i.i.i322, label %.noexc328, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.qv = sdiv exact i64 %i.qu, 24
  %i.qw = icmp ugt i64 %i.qv, 384307168202282325
  br i1 %i.qw, label %.noexc.i.i326, label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i323, !prof !62

.noexc.i.i326:                                    ; preds = %bb.dq
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc327 unwind label %bb.es

.noexc327:                                        ; preds = %.noexc.i.i326
  unreachable

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i323: ; preds = %bb.dq
  %i.qx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qu) #33
          to label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i323..noexc328_crit_edge unwind label %bb.es

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i323..noexc328_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i323
  %.pre732 = load ptr, ptr %13, align 8, !tbaa !80
  %.pre733 = load ptr, ptr %i.fh, align 8, !tbaa !80
  br label %.noexc328

.noexc328:                                        ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i323..noexc328_crit_edge, %bb.dp
  %i.qy = phi ptr [ %i.qq, %bb.dp ], [ %.pre733, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i323..noexc328_crit_edge ]
  %i.qz = phi ptr [ %i.qr, %bb.dp ], [ %.pre732, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i323..noexc328_crit_edge ]
  %.pr.i387 = phi ptr [ null, %bb.dp ], [ %i.qx, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i323..noexc328_crit_edge ] ; 10 uses
  store ptr %.pr.i387, ptr %31, align 8, !tbaa !74
  %i.ra = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  store ptr %.pr.i387, ptr %i.ra, align 8, !tbaa !75
  %i.rb = getelementptr inbounds nuw i8, ptr %.pr.i387, i64 %i.qu
  %i.rc = getelementptr inbounds nuw i8, ptr %31, i64 16
  store ptr %i.rb, ptr %i.rc, align 8, !tbaa !76
  %i.rd = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EES2_ISA_SaISA_EEEEPSA_ET0_T_SI_SH_(ptr %i.qz, ptr %i.qy, ptr noundef %.pr.i387)
          to label %bb.dt unwind label %bb.dr     ; 3 uses

bb.dr:                                            ; preds = %.noexc328
  %i.re = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i324 = icmp eq ptr %.pr.i387, null
  br i1 %.not.i.i.i324, label %.body329, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i387, i64 noundef %i.qu) #32
  br label %.body329

bb.dt:                                            ; preds = %.noexc328
  store ptr %i.rd, ptr %i.ra, align 8, !tbaa !75
  %i.rf = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !85 ; 2 uses
  %i.rh = load ptr, ptr %22, align 8, !tbaa !83   ; 6 uses
  %i.ri = ptrtoint ptr %i.rg to i64
  %i.rj = ptrtoint ptr %i.rh to i64
  %i.rk = sub i64 %i.ri, %i.rj                    ; 14 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %32, i8 0, i64 24, i1 false)
  %.not.i.i.i.i332 = icmp eq ptr %i.rg, %i.rh     ; 2 uses
  br i1 %.not.i.i.i.i332, label %.thread707, label %bb.du

.thread707:                                       ; preds = %bb.dt
  %i.rl = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.rm = getelementptr inbounds i8, ptr null, i64 %i.rk ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %32, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 0, i64 16, i1 false)
  store ptr %i.rm, ptr %i.rn, align 8, !tbaa !84
  br label %bb.dy

bb.du:                                            ; preds = %bb.dt
  %i.ro = icmp ugt i64 %i.rk, 9223372036854775800
  br i1 %i.ro, label %.noexc.i.i334, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i333, !prof !62

.noexc.i.i334:                                    ; preds = %bb.du
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc335 unwind label %bb.et

.noexc335:                                        ; preds = %.noexc.i.i334
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i333: ; preds = %bb.du
  %i.rp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rk) #33
          to label %.noexc336 unwind label %bb.et ; 8 uses

.noexc336:                                        ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i333
  store ptr %i.rp, ptr %32, align 8, !tbaa !83
  %i.rq = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
  store ptr %i.rp, ptr %i.rq, align 8, !tbaa !85
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rp, i64 %i.rk ; 4 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %32, i64 16
  store ptr %i.rr, ptr %i.rs, align 8, !tbaa !84
  %i.rt = icmp samesign ugt i64 %i.rk, 8
  br i1 %i.rt, label %bb.dv, label %bb.dw, !prof !768

bb.dv:                                            ; preds = %.noexc336
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.rp, ptr align 8 %i.rh, i64 %i.rk, i1 false)
  br label %bb.dy

bb.dw:                                            ; preds = %.noexc336
  %i.ru = icmp eq i64 %i.rk, 8
  br i1 %i.ru, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.rv = load i64, ptr %i.rh, align 8, !tbaa !32
  store i64 %i.rv, ptr %i.rp, align 8, !tbaa !32
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw, %bb.dv, %.thread707
  %i.rw = phi ptr [ %i.rr, %bb.dv ], [ %i.rr, %bb.dw ], [ %i.rr, %bb.dx ], [ %i.rm, %.thread707 ] ; 3 uses
  %i.rx = phi ptr [ %i.rq, %bb.dv ], [ %i.rq, %bb.dw ], [ %i.rq, %bb.dx ], [ %i.rl, %.thread707 ]
  %i.ry = phi ptr [ %i.rp, %bb.dv ], [ %i.rp, %bb.dw ], [ %i.rp, %bb.dx ], [ null, %.thread707 ] ; 6 uses
  store ptr %i.rw, ptr %i.rx, align 8, !tbaa !85
  %i.rz = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !59 ; 3 uses
  %i.sb = load ptr, ptr %6, align 8, !tbaa !57    ; 3 uses
  %i.sc = ptrtoint ptr %i.sa to i64
  %i.sd = ptrtoint ptr %i.sb to i64
  %i.se = sub i64 %i.sc, %i.sd                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %33, i8 0, i64 24, i1 false)
  %.not.i.i.i.i338 = icmp eq ptr %i.sa, %i.sb
  br i1 %.not.i.i.i.i338, label %.noexc344, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.sf = icmp ugt i64 %i.se, 9223372036854775776
  br i1 %i.sf, label %.noexc.i.i342, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i339, !prof !62

.noexc.i.i342:                                    ; preds = %bb.dz
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc343 unwind label %bb.eu

.noexc343:                                        ; preds = %.noexc.i.i342
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i339: ; preds = %bb.dz
  %i.sg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.se) #33
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i339..noexc344_crit_edge unwind label %bb.eu

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i339..noexc344_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i339
  %.pre734 = load ptr, ptr %6, align 8, !tbaa !79
  %.pre735 = load ptr, ptr %i.rz, align 8, !tbaa !79
  br label %.noexc344

.noexc344:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i339..noexc344_crit_edge, %bb.dy
  %i.sh = phi ptr [ %i.sa, %bb.dy ], [ %.pre735, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i339..noexc344_crit_edge ]
  %i.si = phi ptr [ %i.sb, %bb.dy ], [ %.pre734, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i339..noexc344_crit_edge ]
  %.pr.i363 = phi ptr [ null, %bb.dy ], [ %i.sg, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i339..noexc344_crit_edge ] ; 10 uses
  store ptr %.pr.i363, ptr %33, align 8, !tbaa !57
  %i.sj = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  store ptr %.pr.i363, ptr %i.sj, align 8, !tbaa !59
  %i.sk = getelementptr inbounds nuw i8, ptr %.pr.i363, i64 %i.se
  %i.sl = getelementptr inbounds nuw i8, ptr %33, i64 16
  store ptr %i.sk, ptr %i.sl, align 8, !tbaa !58
  %i.sm = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.si, ptr %i.sh, ptr noundef %.pr.i363)
          to label %bb.ec unwind label %bb.ea     ; 3 uses

bb.ea:                                            ; preds = %.noexc344
  %i.sn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i340 = icmp eq ptr %.pr.i363, null
  br i1 %.not.i.i.i340, label %.body345, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i363, i64 noundef %i.se) #32
  br label %.body345

bb.ec:                                            ; preds = %.noexc344
  store ptr %i.sm, ptr %i.sj, align 8, !tbaa !59
  %i.so = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 7 uses
  store ptr %i.so, ptr %34, align 8, !tbaa !30
  %i.sp = load ptr, ptr %8, align 8, !tbaa !34    ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.sr = load i64, ptr %i.sq, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #29
  store i64 %i.sr, ptr %i.f, align 8, !tbaa !32
  %i.ss = icmp ugt i64 %i.sr, 15
  br i1 %i.ss, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.ec
  %i.st = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc348 unwind label %bb.ev ; 2 uses

.noexc348:                                        ; preds = %.noexc.i
  store ptr %i.st, ptr %34, align 8, !tbaa !34
  %i.su = load i64, ptr %i.f, align 8, !tbaa !32
  store i64 %i.su, ptr %i.so, align 8, !tbaa !35
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc348, %bb.ec
  %i.sv = phi ptr [ %i.st, %.noexc348 ], [ %i.so, %bb.ec ] ; 2 uses
  switch i64 %i.sr, label %bb.ee [
    i64 1, label %bb.ed
    i64 0, label %bb.ef
  ]
end_hunk_0
begin_hunk_1_@_Z26printMatrixInFourQuadrantsSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EES5_S5_S5_S_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EESD_SD_SD_SB_SB_SB_:bb.a
  call void @_ZdlPvm(ptr noundef %i.ui, i64 noundef %i.um) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i378

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i378: ; preds = %.lr.ph.i.i.i.i.i.i.i375, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i377
  %i.un = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i376, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i379 = icmp eq ptr %i.un, %i.uh
  br i1 %.not.i.i.i.i.i.i.i379, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i380, label %.lr.ph.i.i.i.i.i.i.i375, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i380: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i378
  %.pr.i.i.i.i.i381 = load ptr, ptr %.05.i.i.i373, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i382

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i382: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i380, %.lr.ph.i.i.i372
  %i.uo = phi ptr [ %.pr.i.i.i.i.i381, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i380 ], [ %i.uf, %.lr.ph.i.i.i372 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i383 = icmp eq ptr %i.uo, null
  br i1 %.not.i.i1.i.i.i.i.i383, label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i384, label %bb.em

bb.em:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i382
  %i.up = getelementptr inbounds nuw i8, ptr %.05.i.i.i373, i64 16
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !58
  %i.ur = ptrtoint ptr %i.uq to i64
  %i.us = ptrtoint ptr %i.uo to i64
  %i.ut = sub i64 %i.ur, %i.us
  call void @_ZdlPvm(ptr noundef nonnull %i.uo, i64 noundef %i.ut) #32
  br label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i384

_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i384: ; preds = %bb.em, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i382
  %i.uu = getelementptr inbounds nuw i8, ptr %.05.i.i.i373, i64 24 ; 2 uses
  %.not.i.i.i385 = icmp eq ptr %i.uu, %i.rd
  br i1 %.not.i.i.i385, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i388, label %.lr.ph.i.i.i372, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i388: ; preds = %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i384, %_ZNSt6vectorImSaImEED2Ev.exit370
  %.not.i.i1.i389 = icmp eq ptr %.pr.i387, null
  br i1 %.not.i.i1.i389, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit392, label %bb.en

bb.en:                                            ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i388
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i387, i64 noundef %i.qu) #32
  br label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit392

_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit392: ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i388, %bb.en
  %.not.i.i.i393 = icmp eq ptr %i.qp, null
  br i1 %.not.i.i.i393, label %_ZNSt6vectorImSaImEED2Ev.exit394, label %bb.eo

bb.eo:                                            ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit392
  %i.uv = ptrtoint ptr %i.qn to i64
  %i.uw = ptrtoint ptr %i.qp to i64
  %i.ux = sub i64 %i.uv, %i.uw
  call void @_ZdlPvm(ptr noundef nonnull %i.qp, i64 noundef %i.ux) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit394

_ZNSt6vectorImSaImEED2Ev.exit394:                 ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit392, %bb.eo
  %.not4.i.i.i395 = icmp eq ptr %.pr.i411, %i.pu
  br i1 %.not4.i.i.i395, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i412, label %.lr.ph.i.i.i396

.lr.ph.i.i.i396:                                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit394, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i408
  %.05.i.i.i397 = phi ptr [ %i.vn, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i408 ], [ %.pr.i411, %_ZNSt6vectorImSaImEED2Ev.exit394 ] ; 5 uses
  %i.uy = load ptr, ptr %.05.i.i.i397, align 8, !tbaa !57 ; 3 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %.05.i.i.i397, i64 8
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !59 ; 2 uses
  %.not4.i.i.i.i.i.i.i398 = icmp eq ptr %i.uy, %i.va
  br i1 %.not4.i.i.i.i.i.i.i398, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i406, label %.lr.ph.i.i.i.i.i.i.i399

.lr.ph.i.i.i.i.i.i.i399:                          ; preds = %.lr.ph.i.i.i396, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i402
  %.05.i.i.i.i.i.i.i400 = phi ptr [ %i.vg, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i402 ], [ %i.uy, %.lr.ph.i.i.i396 ] ; 3 uses
  %i.vb = load ptr, ptr %.05.i.i.i.i.i.i.i400, align 8, !tbaa !34 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i400, i64 16 ; 2 uses
  %i.vd = icmp eq ptr %i.vb, %i.vc
  br i1 %i.vd, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i402, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i401

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i401: ; preds = %.lr.ph.i.i.i.i.i.i.i399
  %i.ve = load i64, ptr %i.vc, align 8, !tbaa !35
  %i.vf = add i64 %i.ve, 1
  call void @_ZdlPvm(ptr noundef %i.vb, i64 noundef %i.vf) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i402

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i402: ; preds = %.lr.ph.i.i.i.i.i.i.i399, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i401
  %i.vg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i400, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i403 = icmp eq ptr %i.vg, %i.va
  br i1 %.not.i.i.i.i.i.i.i403, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i404, label %.lr.ph.i.i.i.i.i.i.i399, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i404: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i402
  %.pr.i.i.i.i.i405 = load ptr, ptr %.05.i.i.i397, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i406

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i406: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i404, %.lr.ph.i.i.i396
  %i.vh = phi ptr [ %.pr.i.i.i.i.i405, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i404 ], [ %i.uy, %.lr.ph.i.i.i396 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i407 = icmp eq ptr %i.vh, null
  br i1 %.not.i.i1.i.i.i.i.i407, label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i408, label %bb.ep

bb.ep:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i406
  %i.vi = getelementptr inbounds nuw i8, ptr %.05.i.i.i397, i64 16
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !58
  %i.vk = ptrtoint ptr %i.vj to i64
  %i.vl = ptrtoint ptr %i.vh to i64
  %i.vm = sub i64 %i.vk, %i.vl
  call void @_ZdlPvm(ptr noundef nonnull %i.vh, i64 noundef %i.vm) #32
  br label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i408

_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i408: ; preds = %bb.ep, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i406
  %i.vn = getelementptr inbounds nuw i8, ptr %.05.i.i.i397, i64 24 ; 2 uses
  %.not.i.i.i409 = icmp eq ptr %i.vn, %i.pu
  br i1 %.not.i.i.i409, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i412, label %.lr.ph.i.i.i396, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i412: ; preds = %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i408, %_ZNSt6vectorImSaImEED2Ev.exit394
  %.not.i.i1.i413 = icmp eq ptr %.pr.i411, null
  br i1 %.not.i.i1.i413, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit416, label %bb.eq

bb.eq:                                            ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i412
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i411, i64 noundef %i.pl) #32
  br label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit416

_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit416: ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i412, %bb.eq
  %i.vo = load ptr, ptr %15, align 8, !tbaa !80
  %i.vp = load ptr, ptr %i.dl, align 8, !tbaa !80
  %i.vq = icmp eq ptr %i.vo, %i.vp
  br i1 %i.vq, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit572, label %bb.fa

bb.er:                                            ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i317, %.noexc.i.i318
  %i.vr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit426

bb.es:                                            ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i323, %.noexc.i.i326
  %i.vs = landingpad { ptr, i32 }
          cleanup
  br label %.body329

bb.et:                                            ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i333, %.noexc.i.i334
  %i.vt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit424

bb.eu:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i339, %.noexc.i.i342
  %i.vu = landingpad { ptr, i32 }
          cleanup
  br label %.body345

bb.ev:                                            ; preds = %.noexc.i
  %i.vv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422

bb.ew:                                            ; preds = %.noexc.i350
  %i.vw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419

bb.ex:                                            ; preds = %bb.ei
  %i.vx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vy = load ptr, ptr %35, align 8, !tbaa !34   ; 2 uses
  %i.vz = icmp eq ptr %i.vy, %i.tb
  br i1 %i.vz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i417

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i417: ; preds = %bb.ex
  %i.wa = load i64, ptr %i.tb, align 8, !tbaa !35
  %i.wb = add i64 %i.wa, 1
  call void @_ZdlPvm(ptr noundef %i.vy, i64 noundef %i.wb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419: ; preds = %bb.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i417, %bb.ew
  %.pn42 = phi { ptr, i32 } [ %i.vw, %bb.ew ], [ %i.vx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i417 ], [ %i.vx, %bb.ex ] ; 2 uses
  %i.wc = load ptr, ptr %34, align 8, !tbaa !34   ; 2 uses
  %i.wd = icmp eq ptr %i.wc, %i.so
  br i1 %i.wd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419
  %i.we = load i64, ptr %i.so, align 8, !tbaa !35
  %i.wf = add i64 %i.we, 1
  call void @_ZdlPvm(ptr noundef %i.wc, i64 noundef %i.wf) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420, %bb.ev
  %.pn42.pn = phi { ptr, i32 } [ %i.vv, %bb.ev ], [ %.pn42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420 ], [ %.pn42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %33) #29
  br label %.body345

.body345:                                         ; preds = %bb.eu, %bb.eb, %bb.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422
  %.pn42.pn.pn = phi { ptr, i32 } [ %.pn42.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422 ], [ %i.vu, %bb.eu ], [ %i.sn, %bb.eb ], [ %i.sn, %bb.ea ] ; 2 uses
  %.not.i.i.i423 = icmp eq ptr %i.ry, null
  br i1 %.not.i.i.i423, label %_ZNSt6vectorImSaImEED2Ev.exit424, label %bb.ey

bb.ey:                                            ; preds = %.body345
  %i.wg = ptrtoint ptr %i.rw to i64
  %i.wh = ptrtoint ptr %i.ry to i64
  %i.wi = sub i64 %i.wg, %i.wh
  call void @_ZdlPvm(ptr noundef nonnull %i.ry, i64 noundef %i.wi) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit424

_ZNSt6vectorImSaImEED2Ev.exit424:                 ; preds = %bb.ey, %.body345, %bb.et
  %.pn42.pn.pn.pn = phi { ptr, i32 } [ %i.vt, %bb.et ], [ %.pn42.pn.pn, %.body345 ], [ %.pn42.pn.pn, %bb.ey ]
  call void @_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %31) #29
  br label %.body329

.body329:                                         ; preds = %bb.es, %bb.ds, %bb.dr, %_ZNSt6vectorImSaImEED2Ev.exit424
  %.pn42.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn42.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit424 ], [ %i.vs, %bb.es ], [ %i.re, %bb.ds ], [ %i.re, %bb.dr ] ; 2 uses
  %.not.i.i.i425 = icmp eq ptr %i.qp, null
  br i1 %.not.i.i.i425, label %_ZNSt6vectorImSaImEED2Ev.exit426, label %bb.ez

bb.ez:                                            ; preds = %.body329
  %47 = load ptr, ptr %46, align 8, !tbaa !84
  %i.wj = ptrtoint ptr %47 to i64
  %i.wk = ptrtoint ptr %i.qp to i64
  %i.wl = sub i64 %i.wj, %i.wk
  call void @_ZdlPvm(ptr noundef nonnull %i.qp, i64 noundef %i.wl) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit426

_ZNSt6vectorImSaImEED2Ev.exit426:                 ; preds = %bb.ez, %.body329, %bb.er
  %.pn42.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.vr, %bb.er ], [ %.pn42.pn.pn.pn.pn, %.body329 ], [ %.pn42.pn.pn.pn.pn, %bb.ez ]
  call void @_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %29) #29
  br label %.body256

bb.fa:                                            ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit416
  %i.wm = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 7 uses
  store ptr %i.wm, ptr %36, align 8, !tbaa !30
  %i.wn = load ptr, ptr %8, align 8, !tbaa !34    ; 2 uses
  %i.wo = load i64, ptr %i.sq, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  store i64 %i.wo, ptr %i.d, align 8, !tbaa !32
  %i.wp = icmp ugt i64 %i.wo, 15
  br i1 %i.wp, label %.noexc.i428, label %._crit_edge.i.i427

.noexc.i428:                                      ; preds = %bb.fa
  %i.wq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc429 unwind label %bb.da ; 2 uses

.noexc429:                                        ; preds = %.noexc.i428
  store ptr %i.wq, ptr %36, align 8, !tbaa !34
  %i.wr = load i64, ptr %i.d, align 8, !tbaa !32
  store i64 %i.wr, ptr %i.wm, align 8, !tbaa !35
  br label %._crit_edge.i.i427

._crit_edge.i.i427:                               ; preds = %.noexc429, %bb.fa
  %i.ws = phi ptr [ %i.wq, %.noexc429 ], [ %i.wm, %bb.fa ] ; 2 uses
  switch i64 %i.wo, label %bb.fc [
    i64 1, label %bb.fb
    i64 0, label %bb.fd
  ]

bb.fb:                                            ; preds = %._crit_edge.i.i427
  %i.wt = load i8, ptr %i.wn, align 1, !tbaa !35
  store i8 %i.wt, ptr %i.ws, align 1, !tbaa !35
  br label %bb.fd

bb.fc:                                            ; preds = %._crit_edge.i.i427
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ws, ptr align 1 %i.wn, i64 %i.wo, i1 false)
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb, %._crit_edge.i.i427
  %i.wu = load i64, ptr %i.d, align 8, !tbaa !32  ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  store i64 %i.wu, ptr %i.wv, align 8, !tbaa !36
  %i.ww = load ptr, ptr %36, align 8, !tbaa !34
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 %i.wu
  store i8 0, ptr %i.wx, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  %i.wy = load ptr, ptr %i.h, align 8, !tbaa !106 ; 2 uses
  %i.wz = load ptr, ptr %0, align 8, !tbaa !78    ; 2 uses
  %i.xa = ptrtoint ptr %i.wy to i64
  %i.xb = ptrtoint ptr %i.wz to i64
  %i.xc = sub i64 %i.xa, %i.xb
  %i.xd = sdiv exact i64 %i.xc, 24
  %i.xe = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 7 uses
  store ptr %i.xe, ptr %37, align 8, !tbaa !30
  %i.xf = load ptr, ptr %9, align 8, !tbaa !34    ; 2 uses
  %i.xg = load i64, ptr %i.td, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i64 %i.xg, ptr %i.c, align 8, !tbaa !32
  %i.xh = icmp ugt i64 %i.xg, 15
  br i1 %i.xh, label %.noexc.i432, label %._crit_edge.i.i431

.noexc.i432:                                      ; preds = %bb.fd
  %i.xi = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc433 unwind label %bb.hf ; 2 uses

.noexc433:                                        ; preds = %.noexc.i432
  store ptr %i.xi, ptr %37, align 8, !tbaa !34
  %i.xj = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.xj, ptr %i.xe, align 8, !tbaa !35
  br label %._crit_edge.i.i431

._crit_edge.i.i431:                               ; preds = %.noexc433, %bb.fd
  %i.xk = phi ptr [ %i.xi, %.noexc433 ], [ %i.xe, %bb.fd ] ; 2 uses
  switch i64 %i.xg, label %bb.ff [
    i64 1, label %bb.fe
    i64 0, label %bb.fg
  ]

bb.fe:                                            ; preds = %._crit_edge.i.i431
  %i.xl = load i8, ptr %i.xf, align 1, !tbaa !35
  store i8 %i.xl, ptr %i.xk, align 1, !tbaa !35
  br label %bb.fg

bb.ff:                                            ; preds = %._crit_edge.i.i431
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xk, ptr align 1 %i.xf, i64 %i.xg, i1 false)
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe, %._crit_edge.i.i431
  %i.xm = load i64, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  store i64 %i.xm, ptr %i.xn, align 8, !tbaa !36
  %i.xo = load ptr, ptr %37, align 8, !tbaa !34
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 %i.xm
  store i8 0, ptr %i.xp, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.xq = load ptr, ptr %36, align 8, !tbaa !34
  %i.xr = load i64, ptr %i.wv, align 8, !tbaa !36
  %i.xs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.xq, i64 noundef %i.xr)
          to label %.noexc438 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc438:                                        ; preds = %bb.fg
  %.not.i435 = icmp eq ptr %i.wy, %i.wz
  br i1 %.not.i435, label %_Z17printPerRowIndentNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS4_.exit, label %.lr.ph.i436

.lr.ph.i436:                                      ; preds = %.noexc438, %.noexc439
  %.03.i = phi i64 [ %i.xw, %.noexc439 ], [ 0, %.noexc438 ]
  %i.xt = load ptr, ptr %37, align 8, !tbaa !34
  %i.xu = load i64, ptr %i.xn, align 8, !tbaa !36
  %i.xv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.xt, i64 noundef %i.xu)
          to label %.noexc439 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc439:                                        ; preds = %.lr.ph.i436
  %i.xw = add nuw i64 %.03.i, 1                   ; 2 uses
  %exitcond.not.i437 = icmp eq i64 %i.xw, %i.xd
  br i1 %exitcond.not.i437, label %_Z17printPerRowIndentNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS4_.exit, label %.lr.ph.i436, !llvm.loop !5

_Z17printPerRowIndentNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS4_.exit: ; preds = %.noexc439, %.noexc438
  %i.xx = load ptr, ptr %37, align 8, !tbaa !34   ; 2 uses
  %i.xy = icmp eq ptr %i.xx, %i.xe
  br i1 %i.xy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440: ; preds = %_Z17printPerRowIndentNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS4_.exit
  %i.xz = load i64, ptr %i.xe, align 8, !tbaa !35
  %i.ya = add i64 %i.xz, 1
  call void @_ZdlPvm(ptr noundef %i.xx, i64 noundef %i.ya) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442: ; preds = %_Z17printPerRowIndentNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440
  %i.yb = load ptr, ptr %36, align 8, !tbaa !34   ; 2 uses
  %i.yc = icmp eq ptr %i.yb, %i.wm
  br i1 %i.yc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442
  %i.yd = load i64, ptr %i.wm, align 8, !tbaa !35
  %i.ye = add i64 %i.yd, 1
  call void @_ZdlPvm(ptr noundef %i.yb, i64 noundef %i.ye) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #29
  %i.yf = load i64, ptr %i.py, align 8, !tbaa !32
  %i.yg = lshr i64 %i.yf, 1
  %i.yh = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 5 uses
  store ptr %i.yh, ptr %38, align 8, !tbaa !30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %38, i64 noundef %i.yg, i8 noundef signext 32)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit unwind label %bb.hg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445
  %i.yi = load ptr, ptr %38, align 8, !tbaa !34
  %i.yj = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.yk = load i64, ptr %i.yj, align 8, !tbaa !36
  %i.yl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.yi, i64 noundef %i.yk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit448 unwind label %bb.hh

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit448: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.ym = load ptr, ptr %10, align 8, !tbaa !34
  %i.yn = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.yo = load i64, ptr %i.yn, align 8, !tbaa !36
  %i.yp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.yl, ptr noundef %i.ym, i64 noundef %i.yo)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit450 unwind label %bb.hh ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit450: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit448
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !38
  %i.yr = getelementptr i8, ptr %i.yq, i64 -24
  %i.ys = load i64, ptr %i.yr, align 8
  %i.yt = getelementptr inbounds i8, ptr %i.yp, i64 %i.ys
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 240
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !98 ; 6 uses
  %.not.i.i.i694 = icmp eq ptr %i.yv, null
  br i1 %.not.i.i.i694, label %bb.fh, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i695

bb.fh:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit450
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc699 unwind label %bb.hh

.noexc699:                                        ; preds = %bb.fh
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i695: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit450
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 56
  %i.yx = load i8, ptr %i.yw, align 8, !tbaa !104
  %.not.i1.i.i696 = icmp eq i8 %i.yx, 0
  br i1 %.not.i1.i.i696, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i695
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yv, i64 67
  %i.yz = load i8, ptr %i.yy, align 1, !tbaa !35
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i697

bb.fj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i695
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.yv)
          to label %.noexc700 unwind label %bb.hh

.noexc700:                                        ; preds = %bb.fj
  %i.za = load ptr, ptr %i.yv, align 8, !tbaa !38
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 48
  %i.zc = load ptr, ptr %i.zb, align 8
  %i.zd = invoke noundef signext i8 %i.zc(ptr noundef nonnull align 8 dereferenceable(570) %i.yv, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i697 unwind label %bb.hh, !inline_history !7

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i697: ; preds = %.noexc700, %bb.fi
  %.0.i.i.i698 = phi i8 [ %i.yz, %bb.fi ], [ %i.zd, %.noexc700 ]
  %i.ze = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.yp, i8 noundef signext %.0.i.i.i698)
          to label %.noexc702 unwind label %bb.hh

.noexc702:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i697
  %i.zf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ze)
          to label %_ZNSolsEPFRSoS_E.exit452 unwind label %bb.hh ; 0 uses

_ZNSolsEPFRSoS_E.exit452:                         ; preds = %.noexc702
  %i.zg = load ptr, ptr %38, align 8, !tbaa !34   ; 2 uses
  %i.zh = icmp eq ptr %i.zg, %i.yh
  br i1 %i.zh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453: ; preds = %_ZNSolsEPFRSoS_E.exit452
  %i.zi = load i64, ptr %i.yh, align 8, !tbaa !35
  %i.zj = add i64 %i.zi, 1
  call void @_ZdlPvm(ptr noundef %i.zg, i64 noundef %i.zj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455: ; preds = %_ZNSolsEPFRSoS_E.exit452, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #29
  %i.zk = load ptr, ptr %i.dl, align 8, !tbaa !75 ; 3 uses
  %i.zl = load ptr, ptr %15, align 8, !tbaa !74   ; 3 uses
  %i.zm = ptrtoint ptr %i.zk to i64
  %i.zn = ptrtoint ptr %i.zl to i64
  %i.zo = sub i64 %i.zm, %i.zn                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %39, i8 0, i64 24, i1 false)
  %.not.i.i.i.i456 = icmp eq ptr %i.zk, %i.zl
  br i1 %.not.i.i.i.i456, label %.noexc462, label %bb.fk

bb.fk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455
  %i.zp = sdiv exact i64 %i.zo, 24
  %i.zq = icmp ugt i64 %i.zp, 384307168202282325
  br i1 %i.zq, label %.noexc.i.i460.invoke, label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i457, !prof !62

.noexc.i.i460.invoke:                             ; preds = %bb.bn, %bb.fk, %bb.dh
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc.i.i460.cont unwind label %bb.da

.noexc.i.i460.cont:                               ; preds = %.noexc.i.i460.invoke
  unreachable

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i457: ; preds = %bb.fk
  %i.zr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zo) #33
          to label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i457..noexc462_crit_edge unwind label %bb.da

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i457..noexc462_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i457
  %.pre736 = load ptr, ptr %15, align 8, !tbaa !80
  %.pre737 = load ptr, ptr %i.dl, align 8, !tbaa !80
  br label %.noexc462

.noexc462:                                        ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i457..noexc462_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455
  %i.zs = phi ptr [ %i.zk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455 ], [ %.pre737, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i457..noexc462_crit_edge ]
  %i.zt = phi ptr [ %i.zl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455 ], [ %.pre736, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i457..noexc462_crit_edge ]
  %.pr.i567 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455 ], [ %i.zr, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i457..noexc462_crit_edge ] ; 10 uses
  store ptr %.pr.i567, ptr %39, align 8, !tbaa !74
  %i.zu = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  store ptr %.pr.i567, ptr %i.zu, align 8, !tbaa !75
  %i.zv = getelementptr inbounds nuw i8, ptr %.pr.i567, i64 %i.zo
  %i.zw = getelementptr inbounds nuw i8, ptr %39, i64 16
  store ptr %i.zv, ptr %i.zw, align 8, !tbaa !76
  %i.zx = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EES2_ISA_SaISA_EEEEPSA_ET0_T_SI_SH_(ptr %i.zt, ptr %i.zs, ptr noundef %.pr.i567)
          to label %bb.fn unwind label %bb.fl     ; 3 uses

bb.fl:                                            ; preds = %.noexc462
  %i.zy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i458 = icmp eq ptr %.pr.i567, null
  br i1 %.not.i.i.i458, label %.body256, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i567, i64 noundef %i.zo) #32
  br label %.body256

bb.fn:                                            ; preds = %.noexc462
  store ptr %i.zx, ptr %i.zu, align 8, !tbaa !75
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i316, label %.thread708, label %bb.fo

.thread708:                                       ; preds = %bb.fn
  %i.zz = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.aaa = getelementptr inbounds i8, ptr null, i64 %i.qb ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %40, i8 0, i64 16, i1 false)
  store ptr %i.aaa, ptr %i.aab, align 8, !tbaa !84
  br label %bb.fs

bb.fo:                                            ; preds = %bb.fn
  %i.aac = icmp ugt i64 %i.qb, 9223372036854775800
  br i1 %i.aac, label %.noexc.i.i468, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i467, !prof !62

.noexc.i.i468:                                    ; preds = %bb.fo
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc469 unwind label %bb.hi

.noexc469:                                        ; preds = %.noexc.i.i468
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i467: ; preds = %bb.fo
  %i.aad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qb) #33
          to label %.noexc470 unwind label %bb.hi ; 8 uses

.noexc470:                                        ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i467
  store ptr %i.aad, ptr %40, align 8, !tbaa !83
  %i.aae = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 4 uses
  store ptr %i.aad, ptr %i.aae, align 8, !tbaa !85
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aad, i64 %i.qb ; 4 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 4 uses
  store ptr %i.aaf, ptr %i.aag, align 8, !tbaa !84
  %i.aah = icmp samesign ugt i64 %i.qb, 8
  br i1 %i.aah, label %bb.fp, label %bb.fq, !prof !768

bb.fp:                                            ; preds = %.noexc470
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aad, ptr nonnull align 8 %i.py, i64 %i.qb, i1 false)
  br label %bb.fs

bb.fq:                                            ; preds = %.noexc470
  %i.aai = icmp eq i64 %i.qb, 8
  br i1 %i.aai, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.aaj = load i64, ptr %i.py, align 8, !tbaa !32
  store i64 %i.aaj, ptr %i.aad, align 8, !tbaa !32
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq, %bb.fp, %.thread708
  %48 = phi ptr [ %i.aag, %bb.fp ], [ %i.aag, %bb.fq ], [ %i.aag, %bb.fr ], [ %i.aab, %.thread708 ]
  %i.aak = phi ptr [ %i.aaf, %bb.fp ], [ %i.aaf, %bb.fq ], [ %i.aaf, %bb.fr ], [ %i.aaa, %.thread708 ] ; 2 uses
  %i.aal = phi ptr [ %i.aae, %bb.fp ], [ %i.aae, %bb.fq ], [ %i.aae, %bb.fr ], [ %i.zz, %.thread708 ]
  %i.aam = phi ptr [ %i.aad, %bb.fp ], [ %i.aad, %bb.fq ], [ %i.aad, %bb.fr ], [ null, %.thread708 ] ; 6 uses
  store ptr %i.aak, ptr %i.aal, align 8, !tbaa !85
  %i.aan = load ptr, ptr %i.fx, align 8, !tbaa !75 ; 3 uses
  %i.aao = load ptr, ptr %17, align 8, !tbaa !74  ; 3 uses
  %i.aap = ptrtoint ptr %i.aan to i64
  %i.aaq = ptrtoint ptr %i.aao to i64
  %i.aar = sub i64 %i.aap, %i.aaq                 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  %.not.i.i.i.i472 = icmp eq ptr %i.aan, %i.aao
  br i1 %.not.i.i.i.i472, label %.noexc478, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.aas = sdiv exact i64 %i.aar, 24
  %i.aat = icmp ugt i64 %i.aas, 384307168202282325
  br i1 %i.aat, label %.noexc.i.i476, label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i473, !prof !62

.noexc.i.i476:                                    ; preds = %bb.ft
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc477 unwind label %bb.hj

.noexc477:                                        ; preds = %.noexc.i.i476
  unreachable

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i473: ; preds = %bb.ft
  %i.aau = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aar) #33
          to label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i473..noexc478_crit_edge unwind label %bb.hj

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i473..noexc478_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i473
  %.pre738 = load ptr, ptr %17, align 8, !tbaa !80
  %.pre739 = load ptr, ptr %i.fx, align 8, !tbaa !80
  br label %.noexc478

.noexc478:                                        ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i473..noexc478_crit_edge, %bb.fs
  %i.aav = phi ptr [ %i.aan, %bb.fs ], [ %.pre739, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i473..noexc478_crit_edge ]
  %i.aaw = phi ptr [ %i.aao, %bb.fs ], [ %.pre738, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i473..noexc478_crit_edge ]
  %.pr.i543 = phi ptr [ null, %bb.fs ], [ %i.aau, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i473..noexc478_crit_edge ] ; 10 uses
  store ptr %.pr.i543, ptr %41, align 8, !tbaa !74
  %i.aax = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  store ptr %.pr.i543, ptr %i.aax, align 8, !tbaa !75
  %i.aay = getelementptr inbounds nuw i8, ptr %.pr.i543, i64 %i.aar
  %i.aaz = getelementptr inbounds nuw i8, ptr %41, i64 16
  store ptr %i.aay, ptr %i.aaz, align 8, !tbaa !76
  %i.aba = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EES2_ISA_SaISA_EEEEPSA_ET0_T_SI_SH_(ptr %i.aaw, ptr %i.aav, ptr noundef %.pr.i543)
          to label %bb.fw unwind label %bb.fu     ; 3 uses

bb.fu:                                            ; preds = %.noexc478
  %i.abb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i474 = icmp eq ptr %.pr.i543, null
  br i1 %.not.i.i.i474, label %.body479, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i543, i64 noundef %i.aar) #32
  br label %.body479

bb.fw:                                            ; preds = %.noexc478
  store ptr %i.aba, ptr %i.aax, align 8, !tbaa !75
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i332, label %.thread709, label %bb.fx

.thread709:                                       ; preds = %bb.fw
  %i.abc = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.abd = getelementptr inbounds i8, ptr null, i64 %i.rk ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %42, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %42, i8 0, i64 16, i1 false)
  store ptr %i.abd, ptr %i.abe, align 8, !tbaa !84
  br label %bb.gb

bb.fx:                                            ; preds = %bb.fw
  %i.abf = icmp ugt i64 %i.rk, 9223372036854775800
  br i1 %i.abf, label %.noexc.i.i484, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i483, !prof !62

.noexc.i.i484:                                    ; preds = %bb.fx
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc485 unwind label %bb.hk

.noexc485:                                        ; preds = %.noexc.i.i484
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i483: ; preds = %bb.fx
  %i.abg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rk) #33
          to label %.noexc486 unwind label %bb.hk ; 8 uses

.noexc486:                                        ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i483
  store ptr %i.abg, ptr %42, align 8, !tbaa !83
  %i.abh = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 4 uses
  store ptr %i.abg, ptr %i.abh, align 8, !tbaa !85
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abg, i64 %i.rk ; 4 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %42, i64 16
  store ptr %i.abi, ptr %i.abj, align 8, !tbaa !84
  %i.abk = icmp samesign ugt i64 %i.rk, 8
  br i1 %i.abk, label %bb.fy, label %bb.fz, !prof !768

bb.fy:                                            ; preds = %.noexc486
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.abg, ptr align 8 %i.rh, i64 %i.rk, i1 false)
  br label %bb.gb

bb.fz:                                            ; preds = %.noexc486
  %i.abl = icmp eq i64 %i.rk, 8
  br i1 %i.abl, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.abm = load i64, ptr %i.rh, align 8, !tbaa !32
  store i64 %i.abm, ptr %i.abg, align 8, !tbaa !32
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz, %bb.fy, %.thread709
  %i.abn = phi ptr [ %i.abi, %bb.fy ], [ %i.abi, %bb.fz ], [ %i.abi, %bb.ga ], [ %i.abd, %.thread709 ] ; 3 uses
  %i.abo = phi ptr [ %i.abh, %bb.fy ], [ %i.abh, %bb.fz ], [ %i.abh, %bb.ga ], [ %i.abc, %.thread709 ]
  %i.abp = phi ptr [ %i.abg, %bb.fy ], [ %i.abg, %bb.fz ], [ %i.abg, %bb.ga ], [ null, %.thread709 ] ; 6 uses
  store ptr %i.abn, ptr %i.abo, align 8, !tbaa !85
  %i.abq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !59 ; 3 uses
  %i.abs = load ptr, ptr %7, align 8, !tbaa !57   ; 3 uses
  %i.abt = ptrtoint ptr %i.abr to i64
  %i.abu = ptrtoint ptr %i.abs to i64
  %i.abv = sub i64 %i.abt, %i.abu                 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, i8 0, i64 24, i1 false)
  %.not.i.i.i.i488 = icmp eq ptr %i.abr, %i.abs
  br i1 %.not.i.i.i.i488, label %.noexc494, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.abw = icmp ugt i64 %i.abv, 9223372036854775776
  br i1 %i.abw, label %.noexc.i.i492, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i489, !prof !62

.noexc.i.i492:                                    ; preds = %bb.gc
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc493 unwind label %bb.hl

.noexc493:                                        ; preds = %.noexc.i.i492
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i489: ; preds = %bb.gc
  %i.abx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abv) #33
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i489..noexc494_crit_edge unwind label %bb.hl

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i489..noexc494_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i489
  %.pre740 = load ptr, ptr %7, align 8, !tbaa !79
  %.pre741 = load ptr, ptr %i.abq, align 8, !tbaa !79
  br label %.noexc494

.noexc494:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i489..noexc494_crit_edge, %bb.gb
  %i.aby = phi ptr [ %i.abr, %bb.gb ], [ %.pre741, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i489..noexc494_crit_edge ]
  %i.abz = phi ptr [ %i.abs, %bb.gb ], [ %.pre740, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i489..noexc494_crit_edge ]
  %.pr.i519 = phi ptr [ null, %bb.gb ], [ %i.abx, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i489..noexc494_crit_edge ] ; 10 uses
  store ptr %.pr.i519, ptr %43, align 8, !tbaa !57
  %i.aca = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  store ptr %.pr.i519, ptr %i.aca, align 8, !tbaa !59
  %i.acb = getelementptr inbounds nuw i8, ptr %.pr.i519, i64 %i.abv
  %i.acc = getelementptr inbounds nuw i8, ptr %43, i64 16
  store ptr %i.acb, ptr %i.acc, align 8, !tbaa !58
  %i.acd = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.abz, ptr %i.aby, ptr noundef %.pr.i519)
          to label %bb.gf unwind label %bb.gd     ; 3 uses

bb.gd:                                            ; preds = %.noexc494
  %i.ace = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i490 = icmp eq ptr %.pr.i519, null
  br i1 %.not.i.i.i490, label %.body495, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i519, i64 noundef %i.abv) #32
  br label %.body495

bb.gf:                                            ; preds = %.noexc494
  store ptr %i.acd, ptr %i.aca, align 8, !tbaa !59
  %i.acf = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 7 uses
  store ptr %i.acf, ptr %44, align 8, !tbaa !30
  %i.acg = load ptr, ptr %8, align 8, !tbaa !34   ; 2 uses
  %i.ach = load i64, ptr %i.sq, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.ach, ptr %i.b, align 8, !tbaa !32
  %i.aci = icmp ugt i64 %i.ach, 15
  br i1 %i.aci, label %.noexc.i499, label %._crit_edge.i.i498

.noexc.i499:                                      ; preds = %bb.gf
  %i.acj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc500 unwind label %bb.hm ; 2 uses

.noexc500:                                        ; preds = %.noexc.i499
  store ptr %i.acj, ptr %44, align 8, !tbaa !34
  %i.ack = load i64, ptr %i.b, align 8, !tbaa !32
  store i64 %i.ack, ptr %i.acf, align 8, !tbaa !35
  br label %._crit_edge.i.i498

._crit_edge.i.i498:                               ; preds = %.noexc500, %bb.gf
  %i.acl = phi ptr [ %i.acj, %.noexc500 ], [ %i.acf, %bb.gf ] ; 2 uses
  switch i64 %i.ach, label %bb.gh [
    i64 1, label %bb.gg
    i64 0, label %bb.gi
  ]

bb.gg:                                            ; preds = %._crit_edge.i.i498
  %i.acm = load i8, ptr %i.acg, align 1, !tbaa !35
  store i8 %i.acm, ptr %i.acl, align 1, !tbaa !35
  br label %bb.gi

bb.gh:                                            ; preds = %._crit_edge.i.i498
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.acl, ptr align 1 %i.acg, i64 %i.ach, i1 false)
end_hunk_1
begin_hunk_2_@_Z26printMatrixInFourQuadrantsSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EES5_S5_S5_S_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EESD_SD_SD_SB_SB_SB_:bb.a
  %i.aiv = load ptr, ptr %.05.i.i.i.i.i.i.i648, align 8, !tbaa !34 ; 2 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i648, i64 16 ; 2 uses
  %i.aix = icmp eq ptr %i.aiv, %i.aiw
  br i1 %i.aix, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i650, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i649

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i649: ; preds = %.lr.ph.i.i.i.i.i.i.i647
  %i.aiy = load i64, ptr %i.aiw, align 8, !tbaa !35
  %i.aiz = add i64 %i.aiy, 1
  call void @_ZdlPvm(ptr noundef %i.aiv, i64 noundef %i.aiz) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i650

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i650: ; preds = %.lr.ph.i.i.i.i.i.i.i647, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i649
  %i.aja = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i648, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i651 = icmp eq ptr %i.aja, %i.aiu
  br i1 %.not.i.i.i.i.i.i.i651, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i652, label %.lr.ph.i.i.i.i.i.i.i647, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i652: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i650
  %.pr.i.i.i.i.i653 = load ptr, ptr %.05.i.i.i645, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i654

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i654: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i652, %.lr.ph.i.i.i644
  %i.ajb = phi ptr [ %.pr.i.i.i.i.i653, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i652 ], [ %i.ais, %.lr.ph.i.i.i644 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i655 = icmp eq ptr %i.ajb, null
  br i1 %.not.i.i1.i.i.i.i.i655, label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i656, label %bb.hc

bb.hc:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i654
  %i.ajc = getelementptr inbounds nuw i8, ptr %.05.i.i.i645, i64 16
  %i.ajd = load ptr, ptr %i.ajc, align 8, !tbaa !58
  %i.aje = ptrtoint ptr %i.ajd to i64
  %i.ajf = ptrtoint ptr %i.ajb to i64
  %i.ajg = sub i64 %i.aje, %i.ajf
  call void @_ZdlPvm(ptr noundef nonnull %i.ajb, i64 noundef %i.ajg) #32
  br label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i656

_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i656: ; preds = %bb.hc, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i654
  %i.ajh = getelementptr inbounds nuw i8, ptr %.05.i.i.i645, i64 24 ; 2 uses
  %.not.i.i.i657 = icmp eq ptr %i.ajh, %i.air
  br i1 %.not.i.i.i657, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i658, label %.lr.ph.i.i.i644, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i658: ; preds = %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i656
  %.pr.i659 = load ptr, ptr %11, align 8, !tbaa !74
  br label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i660

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i660: ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i658, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit642
  %i.aji = phi ptr [ %.pr.i659, %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i658 ], [ %i.aiq, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit642 ] ; 3 uses
  %.not.i.i1.i661 = icmp eq ptr %i.aji, null
  br i1 %.not.i.i1.i661, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit664, label %bb.hd

bb.hd:                                            ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i660
  %i.ajj = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ajk = load ptr, ptr %i.ajj, align 8, !tbaa !76
  %i.ajl = ptrtoint ptr %i.ajk to i64
  %i.ajm = ptrtoint ptr %i.aji to i64
  %i.ajn = sub i64 %i.ajl, %i.ajm
  call void @_ZdlPvm(ptr noundef nonnull %i.aji, i64 noundef %i.ajn) #32
  br label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit664

_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit664: ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i660, %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.he

bb.he:                                            ; preds = %bb.a, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit664
  ret void

bb.hf:                                            ; preds = %.noexc.i432
  %i.ajo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit667

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i436, %bb.fg
  %lpad.loopexit.split-lp992 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajp = load ptr, ptr %37, align 8, !tbaa !34  ; 2 uses
  %i.ajq = icmp eq ptr %i.ajp, %i.xe
  br i1 %i.ajq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit667, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i665

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i665: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ajr = load i64, ptr %i.xe, align 8, !tbaa !35
  %i.ajs = add i64 %i.ajr, 1
  call void @_ZdlPvm(ptr noundef %i.ajp, i64 noundef %i.ajs) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit667

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit667: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i665, %bb.hf
  %.pn49 = phi { ptr, i32 } [ %i.ajo, %bb.hf ], [ %lpad.loopexit.split-lp992, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i665 ], [ %lpad.loopexit.split-lp992, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ajt = load ptr, ptr %36, align 8, !tbaa !34  ; 2 uses
  %i.aju = icmp eq ptr %i.ajt, %i.wm
  br i1 %i.aju, label %.body256, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i668

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i668: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit667
  %i.ajv = load i64, ptr %i.wm, align 8, !tbaa !35
  %i.ajw = add i64 %i.ajv, 1
  call void @_ZdlPvm(ptr noundef %i.ajt, i64 noundef %i.ajw) #32
  br label %.body256

bb.hg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445
  %i.ajx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit673

bb.hh:                                            ; preds = %.noexc702, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i697, %.noexc700, %bb.fj, %bb.fh, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit448, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.ajy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajz = load ptr, ptr %38, align 8, !tbaa !34  ; 2 uses
  %i.aka = icmp eq ptr %i.ajz, %i.yh
  br i1 %i.aka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit673, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i671

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i671: ; preds = %bb.hh
  %i.akb = load i64, ptr %i.yh, align 8, !tbaa !35
  %i.akc = add i64 %i.akb, 1
  call void @_ZdlPvm(ptr noundef %i.ajz, i64 noundef %i.akc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit673

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit673: ; preds = %bb.hh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i671, %bb.hg
  %.pn51 = phi { ptr, i32 } [ %i.ajx, %bb.hg ], [ %i.ajy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i671 ], [ %i.ajy, %bb.hh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #29
  br label %.body256

bb.hi:                                            ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i467, %.noexc.i.i468
  %i.akd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit683

bb.hj:                                            ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i473, %.noexc.i.i476
  %i.ake = landingpad { ptr, i32 }
          cleanup
  br label %.body479

bb.hk:                                            ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i483, %.noexc.i.i484
  %i.akf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit681

bb.hl:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i489, %.noexc.i.i492
  %i.akg = landingpad { ptr, i32 }
          cleanup
  br label %.body495

bb.hm:                                            ; preds = %.noexc.i499
  %i.akh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit679

bb.hn:                                            ; preds = %.noexc.i503
  %i.aki = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit676

bb.ho:                                            ; preds = %bb.gl
  %i.akj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.akk = load ptr, ptr %45, align 8, !tbaa !34  ; 2 uses
  %i.akl = icmp eq ptr %i.akk, %i.acr
  br i1 %i.akl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit676, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i674

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i674: ; preds = %bb.ho
  %i.akm = load i64, ptr %i.acr, align 8, !tbaa !35
  %i.akn = add i64 %i.akm, 1
  call void @_ZdlPvm(ptr noundef %i.akk, i64 noundef %i.akn) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit676

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit676: ; preds = %bb.ho, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i674, %bb.hn
  %.pn53 = phi { ptr, i32 } [ %i.aki, %bb.hn ], [ %i.akj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i674 ], [ %i.akj, %bb.ho ] ; 2 uses
  %i.ako = load ptr, ptr %44, align 8, !tbaa !34  ; 2 uses
  %i.akp = icmp eq ptr %i.ako, %i.acf
  br i1 %i.akp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit679, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i677

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i677: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit676
  %i.akq = load i64, ptr %i.acf, align 8, !tbaa !35
  %i.akr = add i64 %i.akq, 1
  call void @_ZdlPvm(ptr noundef %i.ako, i64 noundef %i.akr) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit679

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit679: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit676, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i677, %bb.hm
  %.pn53.pn = phi { ptr, i32 } [ %i.akh, %bb.hm ], [ %.pn53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i677 ], [ %.pn53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit676 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %43) #29
  br label %.body495

.body495:                                         ; preds = %bb.hl, %bb.ge, %bb.gd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit679
  %.pn53.pn.pn = phi { ptr, i32 } [ %.pn53.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit679 ], [ %i.akg, %bb.hl ], [ %i.ace, %bb.ge ], [ %i.ace, %bb.gd ] ; 2 uses
  %.not.i.i.i680 = icmp eq ptr %i.abp, null
  br i1 %.not.i.i.i680, label %_ZNSt6vectorImSaImEED2Ev.exit681, label %bb.hp

bb.hp:                                            ; preds = %.body495
  %i.aks = ptrtoint ptr %i.abn to i64
  %i.akt = ptrtoint ptr %i.abp to i64
  %i.aku = sub i64 %i.aks, %i.akt
  call void @_ZdlPvm(ptr noundef nonnull %i.abp, i64 noundef %i.aku) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit681

_ZNSt6vectorImSaImEED2Ev.exit681:                 ; preds = %bb.hp, %.body495, %bb.hk
  %.pn53.pn.pn.pn = phi { ptr, i32 } [ %i.akf, %bb.hk ], [ %.pn53.pn.pn, %.body495 ], [ %.pn53.pn.pn, %bb.hp ]
  call void @_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %41) #29
  br label %.body479

.body479:                                         ; preds = %bb.hj, %bb.fv, %bb.fu, %_ZNSt6vectorImSaImEED2Ev.exit681
  %.pn53.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn53.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit681 ], [ %i.ake, %bb.hj ], [ %i.abb, %bb.fv ], [ %i.abb, %bb.fu ] ; 2 uses
  %.not.i.i.i682 = icmp eq ptr %i.aam, null
  br i1 %.not.i.i.i682, label %_ZNSt6vectorImSaImEED2Ev.exit683, label %bb.hq

bb.hq:                                            ; preds = %.body479
  %49 = load ptr, ptr %48, align 8, !tbaa !84
  %i.akv = ptrtoint ptr %49 to i64
  %i.akw = ptrtoint ptr %i.aam to i64
  %i.akx = sub i64 %i.akv, %i.akw
  call void @_ZdlPvm(ptr noundef nonnull %i.aam, i64 noundef %i.akx) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit683

_ZNSt6vectorImSaImEED2Ev.exit683:                 ; preds = %bb.hq, %.body479, %bb.hi
  %.pn53.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.akd, %bb.hi ], [ %.pn53.pn.pn.pn.pn, %.body479 ], [ %.pn53.pn.pn.pn.pn, %bb.hq ]
  call void @_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %39) #29
  br label %.body256

.body256:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit667, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i668, %bb.fl, %bb.fm, %bb.di, %bb.dj, %bb.bp, %bb.bo, %bb.da, %_ZNSt6vectorImSaImEED2Ev.exit683, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit673, %_ZNSt6vectorImSaImEED2Ev.exit426, %_ZNSt6vectorImSaImEED2Ev.exit305
  %.pn53.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn53.pn.pn.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit683 ], [ %.pn38.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit305 ], [ %.pn51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit673 ], [ %i.zy, %bb.fl ], [ %.pn42.pn.pn.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit426 ], [ %i.ky, %bb.bo ], [ %i.ky, %bb.bp ], [ %i.pv, %bb.di ], [ %i.ow, %bb.da ], [ %i.pv, %bb.dj ], [ %i.zy, %bb.fm ], [ %.pn49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i668 ], [ %.pn49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit667 ] ; 2 uses
  %i.aky = load ptr, ptr %22, align 8, !tbaa !83  ; 3 uses
  %.not.i.i.i684 = icmp eq ptr %i.aky, null
  br i1 %.not.i.i.i684, label %.body186, label %bb.hr

bb.hr:                                            ; preds = %.body256
  %i.akz = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.ala = load ptr, ptr %i.akz, align 8, !tbaa !84
  %i.alb = ptrtoint ptr %i.ala to i64
  %i.alc = ptrtoint ptr %i.aky to i64
  %i.ald = sub i64 %i.alb, %i.alc
  call void @_ZdlPvm(ptr noundef nonnull %i.aky, i64 noundef %i.ald) #32
  br label %.body186

.body186:                                         ; preds = %bb.hr, %.body256, %bb.cx, %bb.at, %bb.as, %.body196
  %.pn53.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fw, %bb.as ], [ %.pn36, %.body196 ], [ %i.ot, %bb.cx ], [ %i.fw, %bb.at ], [ %.pn53.pn.pn.pn.pn.pn.pn, %.body256 ], [ %.pn53.pn.pn.pn.pn.pn.pn, %bb.hr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  %i.ale = load ptr, ptr %19, align 8, !tbaa !83  ; 3 uses
  %.not.i.i.i686 = icmp eq ptr %i.ale, null
  br i1 %.not.i.i.i686, label %.body137, label %bb.hs

bb.hs:                                            ; preds = %.body186
  %i.alf = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.alg = load ptr, ptr %i.alf, align 8, !tbaa !84
  %i.alh = ptrtoint ptr %i.alg to i64
  %i.ali = ptrtoint ptr %i.ale to i64
  %i.alj = sub i64 %i.alh, %i.ali
  call void @_ZdlPvm(ptr noundef nonnull %i.ale, i64 noundef %i.alj) #32
  br label %.body137

.body137:                                         ; preds = %bb.hs, %.body186, %bb.cu, %bb.ag, %bb.af, %.body146
  %.pn53.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dk, %bb.af ], [ %.pn, %.body146 ], [ %i.oq, %bb.cu ], [ %i.dk, %bb.ag ], [ %.pn53.pn.pn.pn.pn.pn.pn.pn, %.body186 ], [ %.pn53.pn.pn.pn.pn.pn.pn.pn, %bb.hs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  call void @_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #29
  br label %.body117

.body117:                                         ; preds = %bb.cs, %bb.z, %bb.y, %.body137, %bb.ct
  %.pn53.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn53.pn.pn.pn.pn.pn.pn.pn.pn, %.body137 ], [ %i.op, %bb.ct ], [ %i.oo, %bb.cs ], [ %i.cn, %bb.z ], [ %i.cn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #29
  br label %.body95

.body95:                                          ; preds = %bb.cq, %bb.s, %bb.r, %.body117, %bb.cr
  %.pn53.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn53.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body117 ], [ %i.on, %bb.cr ], [ %i.om, %bb.cq ], [ %i.bq, %bb.s ], [ %i.bq, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #29
  br label %.body

.body:                                            ; preds = %bb.co, %bb.l, %bb.k, %.body95, %bb.cp
  %.pn53.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn53.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body95 ], [ %i.ol, %bb.cp ], [ %i.ok, %bb.co ], [ %i.at, %bb.l ], [ %i.at, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #29
  br label %bb.ht

bb.ht:                                            ; preds = %.body, %bb.cn
  %.pn53.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn53.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %i.oj, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !78     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !106  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !108
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !78
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !107
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #32
  br label %_ZNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not16 = icmp eq ptr %0, %1
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.018 = phi ptr [ %i.r, %.loopexit ], [ %2, %bb.a ] ; 6 uses
  %.sroa.09.017 = phi ptr [ %i.q, %.loopexit ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.09.017, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %i.c = load ptr, ptr %.sroa.09.017, align 8, !tbaa !71 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i.i, !prof !62

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #33
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i.i, %.lr.ph
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.h, %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.i, ptr %.018, align 8, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %.018, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !70
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.018, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !108
  %i.m = load ptr, ptr %.sroa.09.017, align 8, !tbaa !109 ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc8, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %.noexc8 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %.noexc8 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !110
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !769

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc8
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.i, %.noexc8 ], [ %i.p, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !70
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.017, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.018, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.q, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !770

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %lpad.loopexit.split-lp36 = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %lpad.loopexit.split-lp36, 0
  %i.t = tail call ptr @__cxa_begin_catch(ptr %i.s) #29 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EEEvT_S6_(ptr noundef %2, ptr noundef nonnull %.018)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp
  invoke void @__cxa_rethrow() #31
          to label %bb.g unwind label %bb.d

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.r, %.loopexit ]
end_hunk_2
