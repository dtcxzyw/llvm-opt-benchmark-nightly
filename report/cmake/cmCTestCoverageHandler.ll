Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmCTestCoverageHandler?download=true
inline.NumInlined: 4920
inline.NumDeleted: 1039
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN22cmCTestCoverageHandler18HandleGCovCoverageEP31cmCTestCoverageHandlerContainer:._crit_edge.i.i
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1244

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1244: ; preds = %bb.rj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1242
  store ptr %i.qs, ptr %100, align 8, !tbaa !25
  %i.cjc = load i64, ptr %i.qu, align 8
  %i.cjd = getelementptr inbounds i8, ptr %100, i64 %i.cjc
  store ptr %i.qt, ptr %i.cjd, align 8, !tbaa !25
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.acc, align 8, !tbaa !25
  %i.cje = load ptr, ptr %i.acb, align 8, !tbaa !55 ; 2 uses
  %i.cjf = icmp eq ptr %i.cje, %i.acd
  br i1 %i.cjf, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit1247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1245: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1244
  %i.cjg = load i64, ptr %i.acd, align 8, !tbaa !48
  %i.cjh = add i64 %i.cjg, 1
  call void @_ZdlPvm(ptr noundef %i.cje, i64 noundef %i.cjh) #23
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit1247

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit1247: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1244, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1245
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.acc, align 8, !tbaa !25
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ace) #22
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.acf) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #22
  br label %bb.sq

bb.rk:                                            ; preds = %bb.qq
  %i.cji = landingpad { ptr, i32 }
          cleanup
  br label %bb.wm

bb.rl:                                            ; preds = %bb.qr
  %i.cjj = landingpad { ptr, i32 }
          cleanup
  br label %bb.rn

.loopexit2218:                                    ; preds = %bb.qs, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1205, %bb.qv, %.noexc1987, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1984, %.noexc1989
  %lpad.loopexit2220 = landingpad { ptr, i32 }
          cleanup
  br label %.body1217

.loopexit.split-lp2219:                           ; preds = %bb.qt
  %lpad.loopexit.split-lp2221 = landingpad { ptr, i32 }
          cleanup
  br label %.body1217

bb.rm:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit1219
  %i.cjk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cjl = load ptr, ptr %98, align 8, !tbaa !55  ; 2 uses
  %i.cjm = icmp eq ptr %i.cjl, %i.abm
  br i1 %i.cjm, label %.body1217, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1248: ; preds = %bb.rm
  %i.cjn = load i64, ptr %i.abm, align 8, !tbaa !48
  %i.cjo = add i64 %i.cjn, 1
  call void @_ZdlPvm(ptr noundef %i.cjl, i64 noundef %i.cjo) #23
  br label %.body1217

.body1217:                                        ; preds = %bb.rm, %bb.qx, %.loopexit2218, %.loopexit.split-lp2219, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1248, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1214
  %.pn324 = phi { ptr, i32 } [ %lpad.loopexit.split-lp2221, %.loopexit.split-lp2219 ], [ %i.cjk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1248 ], [ %i.cgr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1214 ], [ %i.cgr, %bb.qx ], [ %lpad.loopexit2220, %.loopexit2218 ], [ %i.cjk, %bb.rm ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %97) #22
  br label %bb.rn

bb.rn:                                            ; preds = %.body1217, %bb.rl
  %.pn324.pn = phi { ptr, i32 } [ %.pn324, %.body1217 ], [ %i.cjj, %bb.rl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #22
  br label %bb.wm

bb.ro:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit1225
  %i.cjp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ss

bb.rp:                                            ; preds = %bb.rb
  %i.cjq = landingpad { ptr, i32 }
          cleanup
  br label %bb.rr

.loopexit2223:                                    ; preds = %bb.rc, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1227, %bb.rf, %.noexc1998, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1995, %.noexc2000
  %lpad.loopexit2225 = landingpad { ptr, i32 }
          cleanup
  br label %.body1239

.loopexit.split-lp2224:                           ; preds = %bb.rd
  %lpad.loopexit.split-lp2226 = landingpad { ptr, i32 }
          cleanup
  br label %.body1239

bb.rq:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit1241
  %i.cjr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cjs = load ptr, ptr %101, align 8, !tbaa !55 ; 2 uses
  %i.cjt = icmp eq ptr %i.cjs, %i.abw
  br i1 %i.cjt, label %.body1239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1251: ; preds = %bb.rq
  %i.cju = load i64, ptr %i.abw, align 8, !tbaa !48
  %i.cjv = add i64 %i.cju, 1
  call void @_ZdlPvm(ptr noundef %i.cjs, i64 noundef %i.cjv) #23
  br label %.body1239

.body1239:                                        ; preds = %bb.rq, %bb.rh, %.loopexit2223, %.loopexit.split-lp2224, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1251, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1236
  %.pn335 = phi { ptr, i32 } [ %lpad.loopexit.split-lp2226, %.loopexit.split-lp2224 ], [ %i.cjr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1251 ], [ %i.cit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1236 ], [ %i.cit, %bb.rh ], [ %lpad.loopexit2225, %.loopexit2223 ], [ %i.cjr, %bb.rq ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %100) #22
  br label %bb.rr

bb.rr:                                            ; preds = %.body1239, %bb.rp
  %.pn335.pn = phi { ptr, i32 } [ %.pn335, %.body1239 ], [ %i.cjq, %bb.rp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #22
  br label %bb.sr

bb.rs:                                            ; preds = %bb.ra
  call void @llvm.lifetime.start.p0(ptr nonnull %102) #22
  store ptr %i.acg, ptr %102, align 8, !tbaa !45
  store i64 0, ptr %i.ach, align 8, !tbaa !47
  store i8 0, ptr %i.acg, align 8, !tbaa !48
  %i.cjw = getelementptr inbounds nuw i8, ptr %i.cfn, i64 8 ; 3 uses
  %i.cjx = getelementptr inbounds nuw i8, ptr %i.cfn, i64 16 ; 3 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.rs
  %i.cjy = invoke noundef zeroext i1 @_ZN5cmsys11SystemTools17GetLineFromStreamERSiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPbm(ptr noundef nonnull align 8 dereferenceable(16) %99, ptr noundef nonnull align 8 dereferenceable(32) %102, ptr noundef null, i64 noundef -1)
          to label %bb.rt unwind label %bb.rv

bb.rt:                                            ; preds = %.backedge
  br i1 %i.cjy, label %bb.ru, label %bb.so

bb.ru:                                            ; preds = %bb.rt
  %i.cjz = load i64, ptr %i.ach, align 8, !tbaa !47
  %i.cka = icmp ult i64 %i.cjz, 12
  br i1 %i.cka, label %.backedge.backedge, label %bb.rw

bb.rv:                                            ; preds = %.backedge
  %i.ckb = landingpad { ptr, i32 }
          cleanup
  br label %bb.sp

bb.rw:                                            ; preds = %bb.ru
  %i.ckc = load ptr, ptr %102, align 8, !tbaa !55 ; 3 uses
  %i.ckd = load i8, ptr %i.ckc, align 1, !tbaa !48
  %.not327 = icmp eq i8 %i.ckd, 32
  br i1 %.not327, label %bb.ry, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %i.cke = getelementptr inbounds nuw i8, ptr %i.ckc, i64 9
  %i.ckf = load i8, ptr %i.cke, align 1, !tbaa !48
  %.not328 = icmp eq i8 %i.ckf, 58
  br i1 %.not328, label %bb.ry, label %.backedge.backedge

bb.ry:                                            ; preds = %bb.rw, %bb.rx
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #22
  store ptr %i.aci, ptr %103, align 8, !tbaa !45, !alias.scope !583
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aci, ptr noundef nonnull align 1 dereferenceable(12) %i.ckc, i64 12, i1 false)
  store i64 12, ptr %i.acj, align 8, !tbaa !47, !alias.scope !583
  store i8 0, ptr %i.ack, align 4, !tbaa !48
  %i.ckg = call i64 @__isoc23_strtol(ptr noundef nonnull %i.aci, ptr noundef null, i32 noundef 10) #22, !inline_history !5
  %i.ckh = trunc i64 %i.ckg to i32                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !584)
  %i.cki = load i64, ptr %i.ach, align 8, !tbaa !47, !noalias !584 ; 3 uses
  %i.ckj = icmp ult i64 %i.cki, 10
  br i1 %i.ckj, label %bb.rz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.rz:                                            ; preds = %bb.ry
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.281, ptr noundef nonnull @.str.285, i64 noundef 10, i64 noundef %i.cki) #24
          to label %.noexc1257 unwind label %bb.si

.noexc1257:                                       ; preds = %bb.rz
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.ry
  store ptr %i.acl, ptr %104, align 8, !tbaa !45, !alias.scope !584
  %i.ckk = load ptr, ptr %102, align 8, !tbaa !55, !noalias !584
  %i.ckl = getelementptr inbounds nuw i8, ptr %i.ckk, i64 10 ; 2 uses
  %i.ckm = add i64 %i.cki, -10
  %spec.select.i.i.i1255 = call noundef i64 @llvm.umin.i64(i64 %i.ckm, i64 5) ; 4 uses
  switch i64 %spec.select.i.i.i1255, label %bb.sb [
    i64 1, label %bb.sa
    i64 0, label %bb.sc
  ]

bb.sa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ckn = load i8, ptr %i.ckl, align 1, !tbaa !48
  store i8 %i.ckn, ptr %i.acl, align 8, !tbaa !48
  br label %bb.sc

bb.sb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.acl, ptr nonnull align 1 %i.ckl, i64 %spec.select.i.i.i1255, i1 false)
  br label %bb.sc

bb.sc:                                            ; preds = %bb.sb, %bb.sa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  store i64 %spec.select.i.i.i1255, ptr %i.acm, align 8, !tbaa !47, !alias.scope !584
  %i.cko = getelementptr inbounds nuw i8, ptr %i.acl, i64 %spec.select.i.i.i1255
  store i8 0, ptr %i.cko, align 1, !tbaa !48
  %i.ckp = call i64 @__isoc23_strtol(ptr noundef nonnull %i.acl, ptr noundef null, i32 noundef 10) #22, !inline_history !5 ; 2 uses
  %i.ckq = trunc i64 %i.ckp to i32
  %i.ckr = icmp sgt i32 %i.ckq, 0
  br i1 %i.ckr, label %.preheader, label %bb.sn

.preheader:                                       ; preds = %bb.sc
  %sext = add i64 %i.ckp, 4294967295
  %123 = and i64 %sext, 4294967295                ; 6 uses
  %i.cks = load ptr, ptr %i.cjw, align 8, !tbaa !124 ; 2 uses
  %i.ckt = load ptr, ptr %i.cfn, align 8, !tbaa !102 ; 3 uses
  %i.cku = ptrtoint ptr %i.cks to i64
  %i.ckv = ptrtoint ptr %i.ckt to i64             ; 2 uses
  %i.ckw = sub i64 %i.cku, %i.ckv                 ; 2 uses
  %i.ckx = ashr exact i64 %i.ckw, 2               ; 2 uses
  %.not3295281 = icmp ugt i64 %i.ckx, %123
  br i1 %.not3295281, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.pre5324 = load ptr, ptr %i.cjx, align 8, !tbaa !101
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.cky = phi ptr [ %i.clq, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.ckt, %.lr.ph.preheader ] ; 4 uses
  %i.ckz = phi ptr [ %i.cls, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %.pre5324, %.lr.ph.preheader ] ; 2 uses
  %i.cla = phi i64 [ %i.clw, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.ckx, %.lr.ph.preheader ] ; 2 uses
  %i.clb = phi i64 [ %i.clv, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.ckw, %.lr.ph.preheader ] ; 4 uses
  %i.clc = phi i64 [ %i.clu, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.ckv, %.lr.ph.preheader ]
  %i.cld = phi ptr [ %i.clr, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.cks, %.lr.ph.preheader ] ; 3 uses
  %.not.i.i1259 = icmp eq ptr %i.cld, %i.ckz
  br i1 %.not.i.i1259, label %bb.se, label %bb.sd

bb.sd:                                            ; preds = %.lr.ph
  store i32 -1, ptr %i.cld, align 4, !tbaa !123
  %i.cle = getelementptr inbounds nuw i8, ptr %i.cld, i64 4 ; 2 uses
  store ptr %i.cle, ptr %i.cjw, align 8, !tbaa !124
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.se:                                            ; preds = %.lr.ph
  %i.clf = icmp eq i64 %i.clb, 9223372036854775804
  br i1 %i.clf, label %bb.sf, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.sf:                                            ; preds = %bb.se
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.282) #24
          to label %.noexc1262 unwind label %.loopexit.split-lp

.noexc1262:                                       ; preds = %bb.sf
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.se
  %.sroa.speculated.i.i.i.i1260 = call i64 @llvm.umax.i64(i64 %i.cla, i64 1)
  %i.clg = add nuw nsw i64 %.sroa.speculated.i.i.i.i1260, %i.cla ; 2 uses
  %i.clh = shl nuw nsw i64 %i.clg, 2
  %i.cli = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.clh) #27
          to label %.noexc1263 unwind label %.loopexit ; 5 uses

.noexc1263:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.clj = getelementptr inbounds i8, ptr %i.cli, i64 %i.clb ; 2 uses
  store i32 -1, ptr %i.clj, align 4, !tbaa !123
  %i.clk = icmp sgt i64 %i.clb, 0
  br i1 %i.clk, label %bb.sg, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.sg:                                            ; preds = %.noexc1263
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cli, ptr align 4 %i.cky, i64 %i.clb, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.sg, %.noexc1263
  %i.cll = getelementptr inbounds nuw i8, ptr %i.clj, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.cky, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.sh

bb.sh:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.clm = load ptr, ptr %i.cjx, align 8, !tbaa !101
  %i.cln = ptrtoint ptr %i.clm to i64
  %i.clo = sub i64 %i.cln, %i.clc
  call void @_ZdlPvm(ptr noundef nonnull %i.cky, i64 noundef %i.clo) #23
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.sh, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.cli, ptr %i.cfn, align 8, !tbaa !102
  store ptr %i.cll, ptr %i.cjw, align 8, !tbaa !124
  %i.clp = getelementptr inbounds nuw [4 x i8], ptr %i.cli, i64 %i.clg ; 2 uses
  store ptr %i.clp, ptr %i.cjx, align 8, !tbaa !101
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.sd
  %i.clq = phi ptr [ %i.cli, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.cky, %bb.sd ] ; 3 uses
  %i.clr = phi ptr [ %i.cll, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.cle, %bb.sd ] ; 2 uses
  %i.cls = phi ptr [ %i.clp, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.ckz, %bb.sd ]
  %i.clt = ptrtoint ptr %i.clr to i64
  %i.clu = ptrtoint ptr %i.clq to i64             ; 2 uses
  %i.clv = sub i64 %i.clt, %i.clu                 ; 2 uses
  %i.clw = ashr exact i64 %i.clv, 2               ; 2 uses
  %.not329 = icmp ugt i64 %i.clw, %123
  br i1 %.not329, label %._crit_edge, label %.lr.ph, !llvm.loop !456

bb.si:                                            ; preds = %bb.rz
  %i.clx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1266

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.sj

.loopexit.split-lp:                               ; preds = %bb.sf
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.sj

bb.sj:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.cly = load ptr, ptr %104, align 8, !tbaa !55 ; 2 uses
  %i.clz = icmp eq ptr %i.cly, %i.acl
  br i1 %i.clz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1266, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1264

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1264: ; preds = %bb.sj
  %i.cma = load i64, ptr %i.acl, align 8, !tbaa !48
  %i.cmb = add i64 %i.cma, 1
  call void @_ZdlPvm(ptr noundef %i.cly, i64 noundef %i.cmb) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1266

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %.preheader
  %.lcssa2310 = phi ptr [ %i.ckt, %.preheader ], [ %i.clq, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %i.cmc = getelementptr inbounds nuw [4 x i8], ptr %.lcssa2310, i64 %123
  %i.cmd = load i32, ptr %i.cmc, align 4, !tbaa !123 ; 2 uses
  %i.cme = icmp slt i32 %i.cmd, 0
  br i1 %i.cme, label %bb.sk, label %bb.sm

bb.sk:                                            ; preds = %._crit_edge
  %i.cmf = icmp sgt i32 %i.ckh, 0
  br i1 %i.cmf, label %._crit_edge5325, label %bb.sl

bb.sl:                                            ; preds = %bb.sk
  %i.cmg = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %103, i8 noundef signext 35, i64 noundef 0) #22
  %.not330 = icmp eq i64 %i.cmg, -1
  %.pre5327 = load ptr, ptr %i.cfn, align 8, !tbaa !102 ; 3 uses
  br i1 %.not330, label %._crit_edge5328, label %._crit_edge5325

._crit_edge5328:                                  ; preds = %bb.sl
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.pre5327, i64 %123
  %.pre5329 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !123
  br label %bb.sm

._crit_edge5325:                                  ; preds = %bb.sl, %bb.sk
  %i.cmh = phi ptr [ %.lcssa2310, %bb.sk ], [ %.pre5327, %bb.sl ] ; 2 uses
  %i.cmi = getelementptr inbounds nuw [4 x i8], ptr %i.cmh, i64 %123
  store i32 0, ptr %i.cmi, align 4, !tbaa !123
  br label %bb.sm

bb.sm:                                            ; preds = %._crit_edge5328, %._crit_edge5325, %._crit_edge
  %i.cmj = phi i32 [ %.pre5329, %._crit_edge5328 ], [ 0, %._crit_edge5325 ], [ %i.cmd, %._crit_edge ]
  %i.cmk = phi ptr [ %.pre5327, %._crit_edge5328 ], [ %i.cmh, %._crit_edge5325 ], [ %.lcssa2310, %._crit_edge ]
  %i.cml = getelementptr inbounds nuw [4 x i8], ptr %i.cmk, i64 %123
  %i.cmm = add nsw i32 %i.cmj, %i.ckh
  store i32 %i.cmm, ptr %i.cml, align 4, !tbaa !123
  br label %bb.sn

bb.sn:                                            ; preds = %bb.sm, %bb.sc
  %i.cmn = load ptr, ptr %104, align 8, !tbaa !55 ; 2 uses
  %i.cmo = icmp eq ptr %i.cmn, %i.acl
  br i1 %i.cmo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1267: ; preds = %bb.sn
  %i.cmp = load i64, ptr %i.acl, align 8, !tbaa !48
  %i.cmq = add i64 %i.cmp, 1
  call void @_ZdlPvm(ptr noundef %i.cmn, i64 noundef %i.cmq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1269

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1269: ; preds = %bb.sn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1267
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #22
  %i.cmr = load ptr, ptr %103, align 8, !tbaa !55 ; 2 uses
  %i.cms = icmp eq ptr %i.cmr, %i.aci
  br i1 %i.cms, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1270: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1269
  %i.cmt = load i64, ptr %i.aci, align 8, !tbaa !48
  %i.cmu = add i64 %i.cmt, 1
  call void @_ZdlPvm(ptr noundef %i.cmr, i64 noundef %i.cmu) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1272

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1272: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1270
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #22
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1272, %bb.ru, %bb.rx
  br label %.backedge, !llvm.loop !457

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1266: ; preds = %bb.sj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1264, %bb.si
  %.pn331 = phi { ptr, i32 } [ %i.clx, %bb.si ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1264 ], [ %lpad.phi, %bb.sj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #22
  %i.cmv = load ptr, ptr %103, align 8, !tbaa !55 ; 2 uses
  %i.cmw = icmp eq ptr %i.cmv, %i.aci
  br i1 %i.cmw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1275, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1273

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1273: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1266
  %i.cmx = load i64, ptr %i.aci, align 8, !tbaa !48
  %i.cmy = add i64 %i.cmx, 1
  call void @_ZdlPvm(ptr noundef %i.cmv, i64 noundef %i.cmy) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1275

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1275: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1266, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1273
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #22
  br label %bb.sp

bb.so:                                            ; preds = %bb.rt
  %i.cmz = load ptr, ptr %102, align 8, !tbaa !55 ; 2 uses
  %i.cna = icmp eq ptr %i.cmz, %i.acg
  br i1 %i.cna, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1278, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1276

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1276: ; preds = %bb.so
  %i.cnb = load i64, ptr %i.acg, align 8, !tbaa !48
  %i.cnc = add i64 %i.cnb, 1
  call void @_ZdlPvm(ptr noundef %i.cmz, i64 noundef %i.cnc) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1278

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1278: ; preds = %bb.so, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1276
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #22
  br label %bb.sq

bb.sp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1275, %bb.rv
  %.pn331.pn.pn = phi { ptr, i32 } [ %.pn331, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1275 ], [ %i.ckb, %bb.rv ]
  %i.cnd = load ptr, ptr %102, align 8, !tbaa !55 ; 2 uses
  %i.cne = icmp eq ptr %i.cnd, %i.acg
  br i1 %i.cne, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1281, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1279

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1279: ; preds = %bb.sp
  %i.cnf = load i64, ptr %i.acg, align 8, !tbaa !48
  %i.cng = add i64 %i.cnf, 1
  call void @_ZdlPvm(ptr noundef %i.cnd, i64 noundef %i.cng) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1281

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1281: ; preds = %bb.sp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1279
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #22
  br label %bb.sr

bb.sq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1278, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit1247
  store i64 0, ptr %i.oz, align 8, !tbaa !47
  %i.cnh = load ptr, ptr %34, align 8, !tbaa !55
  store i8 0, ptr %i.cnh, align 1, !tbaa !48
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %99) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #22
  %.pre5330 = load i64, ptr %i.oz, align 8
  br label %bb.st

bb.sr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1281, %bb.rr
  %.pn335.pn.pn = phi { ptr, i32 } [ %.pn335.pn, %bb.rr ], [ %.pn331.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1281 ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %99) #22
  br label %bb.ss

bb.ss:                                            ; preds = %bb.sr, %bb.ro
  %.pn335.pn.pn.pn = phi { ptr, i32 } [ %.pn335.pn.pn, %bb.sr ], [ %i.cjp, %bb.ro ]
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #22
  br label %bb.wm

bb.st:                                            ; preds = %bb.sq, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread2142
  %i.cni = phi i64 [ %.pre5330, %bb.sq ], [ %i.cfl, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread2142 ]
  %i.cnj = load i64, ptr %i.wh, align 8, !tbaa !47
  %i.cnk = icmp ne i64 %i.cnj, 0
  %i.cnl = icmp eq i64 %i.cni, 0
  %or.cond2152 = select i1 %i.cnk, i1 %i.cnl, i1 false
  br i1 %or.cond2152, label %bb.su, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit

bb.su:                                            ; preds = %bb.st
  store i64 0, ptr %i.wj, align 8, !tbaa !47
  %i.cnm = load ptr, ptr %62, align 8, !tbaa !55
  store i8 0, ptr %i.cnm, align 1, !tbaa !48
  %i.cnn = invoke fastcc noundef zeroext i1 @_ZL11IsFileInDirRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull align 8 dereferenceable(32) %i.acn)
          to label %bb.sv unwind label %.loopexit2168

bb.sv:                                            ; preds = %bb.su
  br i1 %i.cnn, label %bb.sw, label %bb.tr

bb.sw:                                            ; preds = %bb.sv
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #22
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %105)
          to label %bb.sx unwind label %bb.tn

bb.sx:                                            ; preds = %bb.sw
  %i.cno = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %105, ptr noundef nonnull @.str.144, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1283 unwind label %.loopexit2233 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1283: ; preds = %bb.sx
  %i.cnp = load ptr, ptr %61, align 8, !tbaa !55
  %i.cnq = load i64, ptr %i.wh, align 8, !tbaa !47
  %i.cnr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %105, ptr noundef %i.cnp, i64 noundef %i.cnq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1285 unwind label %.loopexit2233 ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1285: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1283
  %i.cns = load ptr, ptr %i.cnr, align 8, !tbaa !25
  %i.cnt = getelementptr i8, ptr %i.cns, i64 -24
  %i.cnu = load i64, ptr %i.cnt, align 8
  %i.cnv = getelementptr inbounds i8, ptr %i.cnr, i64 %i.cnu
  %i.cnw = getelementptr inbounds nuw i8, ptr %i.cnv, i64 240
  %i.cnx = load ptr, ptr %i.cnw, align 8, !tbaa !71 ; 6 uses
  %.not.i.i.i2003 = icmp eq ptr %i.cnx, null
  br i1 %.not.i.i.i2003, label %bb.sy, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2004

bb.sy:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1285
  invoke void @_ZSt16__throw_bad_castv() #24
          to label %.noexc2008 unwind label %.loopexit.split-lp2234

.noexc2008:                                       ; preds = %bb.sy
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2004: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1285
  %i.cny = getelementptr inbounds nuw i8, ptr %i.cnx, i64 56
  %i.cnz = load i8, ptr %i.cny, align 8, !tbaa !77
  %.not.i1.i.i2005 = icmp eq i8 %i.cnz, 0
  br i1 %.not.i1.i.i2005, label %bb.ta, label %bb.sz

bb.sz:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2004
  %i.coa = getelementptr inbounds nuw i8, ptr %i.cnx, i64 67
  %i.cob = load i8, ptr %i.coa, align 1, !tbaa !48
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2006

bb.ta:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2004
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cnx)
          to label %.noexc2009 unwind label %.loopexit2233

.noexc2009:                                       ; preds = %bb.ta
  %i.coc = load ptr, ptr %i.cnx, align 8, !tbaa !25
  %i.cod = getelementptr inbounds nuw i8, ptr %i.coc, i64 48
  %i.coe = load ptr, ptr %i.cod, align 8
  %i.cof = invoke noundef signext i8 %i.coe(ptr noundef nonnull align 8 dereferenceable(570) %i.cnx, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2006 unwind label %.loopexit2233, !inline_history !0

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2006: ; preds = %.noexc2009, %bb.sz
  %.0.i.i.i2007 = phi i8 [ %i.cob, %bb.sz ], [ %i.cof, %.noexc2009 ]
  %i.cog = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cnr, i8 noundef signext %.0.i.i.i2007)
          to label %.noexc2011 unwind label %.loopexit2233

.noexc2011:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2006
  %i.coh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cog)
          to label %_ZNSolsEPFRSoS_E.exit1287 unwind label %.loopexit2233 ; 0 uses

_ZNSolsEPFRSoS_E.exit1287:                        ; preds = %.noexc2011
  %i.coi = load ptr, ptr %i.s, align 8, !tbaa !42
  call void @llvm.experimental.noalias.scope.decl(metadata !585)
  call void @llvm.experimental.noalias.scope.decl(metadata !586)
  store ptr %i.adb, ptr %106, align 8, !tbaa !45, !alias.scope !587
  store i64 0, ptr %i.adc, align 8, !tbaa !47, !alias.scope !587
  store i8 0, ptr %i.adb, align 8, !tbaa !48, !alias.scope !587
  %i.coj = load ptr, ptr %i.add, align 8, !tbaa !79, !noalias !587 ; 3 uses
  %.not.i.not.i.i1288 = icmp eq ptr %i.coj, null
  %i.cok = load ptr, ptr %i.ade, align 8, !noalias !587 ; 2 uses
  %i.col = icmp ugt ptr %i.coj, %i.cok
  %.08.i.i.i1289 = select i1 %i.col, ptr %i.coj, ptr %i.cok ; 2 uses
  %.not5.i.i1290 = icmp eq ptr %.08.i.i.i1289, null
  %.not.i.i1291 = select i1 %.not.i.not.i.i1288, i1 true, i1 %.not5.i.i1290
  br i1 %.not.i.i1291, label %bb.td, label %bb.tb

bb.tb:                                            ; preds = %_ZNSolsEPFRSoS_E.exit1287
  %i.com = load ptr, ptr %i.adf, align 8, !tbaa !80, !noalias !587 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN22cmCTestCoverageHandler18HandleLCovCoverageEP31cmCTestCoverageHandlerContainer:._crit_edge.i.i
  %i.bxm = ptrtoint ptr %i.bxk to i64
  %i.bxn = sub i64 %i.bxl, %i.bxm
  %i.bxo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %83, i64 noundef 0, i64 noundef 0, ptr noundef %i.bxk, i64 noundef %i.bxn)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit987 unwind label %bb.np ; 0 uses

bb.np:                                            ; preds = %bb.nq, %bb.no
  %i.bxp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bxq = load ptr, ptr %83, align 8, !tbaa !55, !alias.scope !816 ; 2 uses
  %i.bxr = icmp eq ptr %i.bxq, %i.aar
  br i1 %i.bxr, label %.body985, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i982

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i982: ; preds = %bb.np
  %i.bxs = load i64, ptr %i.aar, align 8, !tbaa !48, !alias.scope !816
  %i.bxt = add i64 %i.bxs, 1
  call void @_ZdlPvm(ptr noundef %i.bxq, i64 noundef %i.bxt) #23
  br label %.body985

bb.nq:                                            ; preds = %_ZNSolsEPFRSoS_E.exit977
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %83, ptr noundef nonnull align 8 dereferenceable(32) %i.aaw)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit987 unwind label %bb.np

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit987: ; preds = %bb.nq, %bb.no
  %i.bxu = load i8, ptr %i.fc, align 1, !tbaa !81, !range !82, !noundef !83
  %i.bxv = trunc nuw i8 %i.bxu to i1
  invoke void @_ZN7cmCTest3LogENS_7LogTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(8) %i.bxg, i32 noundef 5, ptr noundef nonnull align 8 %83, i1 noundef zeroext %i.bxv)
          to label %bb.nr unwind label %bb.nv

bb.nr:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit987
  %i.bxw = load ptr, ptr %83, align 8, !tbaa !55  ; 2 uses
  %i.bxx = icmp eq ptr %i.bxw, %i.aar
  br i1 %i.bxx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i988

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i988: ; preds = %bb.nr
  %i.bxy = load i64, ptr %i.aar, align 8, !tbaa !48
  %i.bxz = add i64 %i.bxy, 1
  call void @_ZdlPvm(ptr noundef %i.bxw, i64 noundef %i.bxz) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990: ; preds = %bb.nr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i988
  store ptr %i.fj, ptr %82, align 8, !tbaa !25
  %i.bya = load i64, ptr %i.fl, align 8
  %i.byb = getelementptr inbounds i8, ptr %82, i64 %i.bya
  store ptr %i.fk, ptr %i.byb, align 8, !tbaa !25
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aax, align 8, !tbaa !25
  %i.byc = load ptr, ptr %i.aaw, align 8, !tbaa !55 ; 2 uses
  %i.byd = icmp eq ptr %i.byc, %i.aay
  br i1 %i.byd, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit993, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i991

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i991: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990
  %i.bye = load i64, ptr %i.aay, align 8, !tbaa !48
  %i.byf = add i64 %i.bye, 1
  call void @_ZdlPvm(ptr noundef %i.byc, i64 noundef %i.byf) #23
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit993

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit993: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i991
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aax, align 8, !tbaa !25
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aaz) #22
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.aba) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #22
  %i.byg = getelementptr inbounds nuw i8, ptr %i.brv, i64 8 ; 3 uses
  %i.byh = getelementptr inbounds nuw i8, ptr %i.brv, i64 16 ; 3 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit993
  %i.byi = invoke noundef zeroext i1 @_ZN5cmsys11SystemTools17GetLineFromStreamERSiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPbm(ptr noundef nonnull align 8 dereferenceable(16) %78, ptr noundef nonnull align 8 dereferenceable(32) %81, ptr noundef null, i64 noundef -1)
          to label %bb.ns unwind label %.loopexit1553

bb.ns:                                            ; preds = %.backedge
  br i1 %i.byi, label %bb.nt, label %bb.oo

bb.nt:                                            ; preds = %bb.ns
  %i.byj = load i64, ptr %i.aaq, align 8, !tbaa !47 ; 3 uses
  %i.byk = icmp ult i64 %i.byj, 12
  br i1 %i.byk, label %.backedge.backedge, label %bb.nx

.loopexit1553:                                    ; preds = %.backedge
  %lpad.loopexit1555 = landingpad { ptr, i32 }
          cleanup
  br label %bb.op

.loopexit.split-lp1554:                           ; preds = %bb.ni
  %lpad.loopexit.split-lp1556 = landingpad { ptr, i32 }
          cleanup
  br label %bb.op

bb.nu:                                            ; preds = %bb.nj
  %i.byl = landingpad { ptr, i32 }
          cleanup
  br label %bb.nw

.loopexit1598:                                    ; preds = %bb.nk, %bb.nn, %.noexc1496, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1493, %.noexc1498
  %lpad.loopexit1600 = landingpad { ptr, i32 }
          cleanup
  br label %.body985

.loopexit.split-lp1599:                           ; preds = %bb.nl
  %lpad.loopexit.split-lp1601 = landingpad { ptr, i32 }
          cleanup
  br label %.body985

bb.nv:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit987
  %i.bym = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.byn = load ptr, ptr %83, align 8, !tbaa !55  ; 2 uses
  %i.byo = icmp eq ptr %i.byn, %i.aar
  br i1 %i.byo, label %.body985, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i994

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i994: ; preds = %bb.nv
  %i.byp = load i64, ptr %i.aar, align 8, !tbaa !48
  %i.byq = add i64 %i.byp, 1
  call void @_ZdlPvm(ptr noundef %i.byn, i64 noundef %i.byq) #23
  br label %.body985

.body985:                                         ; preds = %bb.nv, %bb.np, %.loopexit1598, %.loopexit.split-lp1599, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i994, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i982
  %.pn238 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1601, %.loopexit.split-lp1599 ], [ %i.bym, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i994 ], [ %i.bxp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i982 ], [ %i.bxp, %bb.np ], [ %lpad.loopexit1600, %.loopexit1598 ], [ %i.bym, %bb.nv ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %82) #22
  br label %bb.nw

bb.nw:                                            ; preds = %.body985, %bb.nu
  %.pn238.pn = phi { ptr, i32 } [ %.pn238, %.body985 ], [ %i.byl, %bb.nu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #22
  br label %bb.op

bb.nx:                                            ; preds = %bb.nt
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !817)
  store ptr %i.abb, ptr %84, align 8, !tbaa !45, !alias.scope !817
  %i.byr = load ptr, ptr %81, align 8, !tbaa !55, !noalias !817
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.byj, i64 17) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !817
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !tbaa !50, !noalias !817
  %i.bys = icmp ugt i64 %i.byj, 15
  br i1 %i.bys, label %.noexc10.i.i999, label %._crit_edge.i.i.i998

.noexc10.i.i999:                                  ; preds = %bb.nx
  %i.byt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %84, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc1000 unwind label %bb.oh ; 2 uses

.noexc1000:                                       ; preds = %.noexc10.i.i999
  store ptr %i.byt, ptr %84, align 8, !tbaa !55, !alias.scope !817
  %i.byu = load i64, ptr %i.a, align 8, !tbaa !50, !noalias !817
  store i64 %i.byu, ptr %i.abb, align 8, !tbaa !48, !alias.scope !817
  br label %._crit_edge.i.i.i998

._crit_edge.i.i.i998:                             ; preds = %bb.nx, %.noexc1000
  %i.byv = phi ptr [ %i.byt, %.noexc1000 ], [ %i.abb, %bb.nx ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.byv, ptr align 1 %i.byr, i64 %spec.select.i.i.i, i1 false)
  %i.byw = load i64, ptr %i.a, align 8, !tbaa !50, !noalias !817 ; 2 uses
  store i64 %i.byw, ptr %i.abc, align 8, !tbaa !47, !alias.scope !817
  %i.byx = load ptr, ptr %84, align 8, !tbaa !55, !alias.scope !817
  %i.byy = getelementptr inbounds nuw i8, ptr %i.byx, i64 %i.byw
  store i8 0, ptr %i.byy, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !817
  %i.byz = load ptr, ptr %84, align 8, !tbaa !55
  %i.bza = call i64 @__isoc23_strtol(ptr noundef nonnull %i.byz, ptr noundef null, i32 noundef 10) #22, !inline_history !5
  %i.bzb = trunc i64 %i.bza to i32                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !818)
  %i.bzc = load i64, ptr %i.aaq, align 8, !tbaa !47, !noalias !818 ; 3 uses
  %i.bzd = icmp ult i64 %i.bzc, 17
  br i1 %i.bzd, label %bb.ny, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i1002

bb.ny:                                            ; preds = %._crit_edge.i.i.i998
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.281, ptr noundef nonnull @.str.285, i64 noundef 17, i64 noundef %i.bzc) #24
          to label %.noexc1006 unwind label %bb.oi

.noexc1006:                                       ; preds = %bb.ny
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i1002: ; preds = %._crit_edge.i.i.i998
  store ptr %i.abd, ptr %85, align 8, !tbaa !45, !alias.scope !818
  %i.bze = load ptr, ptr %81, align 8, !tbaa !55, !noalias !818
  %i.bzf = getelementptr inbounds nuw i8, ptr %i.bze, i64 17 ; 2 uses
  %i.bzg = add i64 %i.bzc, -17
  %spec.select.i.i.i1003 = call noundef i64 @llvm.umin.i64(i64 %i.bzg, i64 7) ; 4 uses
  switch i64 %spec.select.i.i.i1003, label %bb.oa [
    i64 1, label %bb.nz
    i64 0, label %bb.ob
  ]

bb.nz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i1002
  %i.bzh = load i8, ptr %i.bzf, align 1, !tbaa !48
  store i8 %i.bzh, ptr %i.abd, align 8, !tbaa !48
  br label %bb.ob

bb.oa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i1002
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.abd, ptr nonnull align 1 %i.bzf, i64 %spec.select.i.i.i1003, i1 false)
  br label %bb.ob

bb.ob:                                            ; preds = %bb.oa, %bb.nz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i1002
  store i64 %spec.select.i.i.i1003, ptr %i.abe, align 8, !tbaa !47, !alias.scope !818
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.abd, i64 %spec.select.i.i.i1003
  store i8 0, ptr %i.bzi, align 1, !tbaa !48
  %i.bzj = call i64 @__isoc23_strtol(ptr noundef nonnull %i.abd, ptr noundef null, i32 noundef 10) #22, !inline_history !5 ; 2 uses
  %i.bzk = trunc i64 %i.bzj to i32
  %i.bzl = icmp sgt i32 %i.bzk, 0
  br i1 %i.bzl, label %.preheader, label %bb.on

.preheader:                                       ; preds = %bb.ob
  %sext = add i64 %i.bzj, 4294967295
  %90 = and i64 %sext, 4294967295                 ; 6 uses
  %i.bzm = load ptr, ptr %i.byg, align 8, !tbaa !124 ; 2 uses
  %i.bzn = load ptr, ptr %i.brv, align 8, !tbaa !102 ; 3 uses
  %i.bzo = ptrtoint ptr %i.bzm to i64
  %i.bzp = ptrtoint ptr %i.bzn to i64             ; 2 uses
  %i.bzq = sub i64 %i.bzo, %i.bzp                 ; 2 uses
  %i.bzr = ashr exact i64 %i.bzq, 2               ; 2 uses
  %.not2414709 = icmp ugt i64 %i.bzr, %90
  br i1 %.not2414709, label %._crit_edge4711, label %.lr.ph4710.preheader

.lr.ph4710.preheader:                             ; preds = %.preheader
  %.pre = load ptr, ptr %i.byh, align 8, !tbaa !101
  br label %.lr.ph4710

.lr.ph4710:                                       ; preds = %.lr.ph4710.preheader, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.bzs = phi ptr [ %i.cak, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.bzn, %.lr.ph4710.preheader ] ; 4 uses
  %i.bzt = phi ptr [ %i.cam, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %.pre, %.lr.ph4710.preheader ] ; 2 uses
  %i.bzu = phi i64 [ %i.caq, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.bzr, %.lr.ph4710.preheader ] ; 2 uses
  %i.bzv = phi i64 [ %i.cap, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.bzq, %.lr.ph4710.preheader ] ; 4 uses
  %i.bzw = phi i64 [ %i.cao, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.bzp, %.lr.ph4710.preheader ]
  %i.bzx = phi ptr [ %i.cal, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.bzm, %.lr.ph4710.preheader ] ; 3 uses
  %.not.i.i1008 = icmp eq ptr %i.bzx, %i.bzt
  br i1 %.not.i.i1008, label %bb.od, label %bb.oc

bb.oc:                                            ; preds = %.lr.ph4710
  store i32 -1, ptr %i.bzx, align 4, !tbaa !123
  %i.bzy = getelementptr inbounds nuw i8, ptr %i.bzx, i64 4 ; 2 uses
  store ptr %i.bzy, ptr %i.byg, align 8, !tbaa !124
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.od:                                            ; preds = %.lr.ph4710
  %i.bzz = icmp eq i64 %i.bzv, 9223372036854775804
  br i1 %i.bzz, label %bb.oe, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.oe:                                            ; preds = %bb.od
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.282) #24
          to label %.noexc1009 unwind label %.loopexit.split-lp

.noexc1009:                                       ; preds = %bb.oe
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.od
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bzu, i64 1)
  %i.caa = add nuw nsw i64 %.sroa.speculated.i.i.i.i, %i.bzu ; 2 uses
  %i.cab = shl nuw nsw i64 %i.caa, 2
  %i.cac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cab) #27
          to label %.noexc1010 unwind label %.loopexit ; 5 uses

.noexc1010:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cad = getelementptr inbounds i8, ptr %i.cac, i64 %i.bzv ; 2 uses
  store i32 -1, ptr %i.cad, align 4, !tbaa !123
  %i.cae = icmp sgt i64 %i.bzv, 0
  br i1 %i.cae, label %bb.of, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.of:                                            ; preds = %.noexc1010
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cac, ptr align 4 %i.bzs, i64 %i.bzv, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.of, %.noexc1010
  %i.caf = getelementptr inbounds nuw i8, ptr %i.cad, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.bzs, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.og

bb.og:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.cag = load ptr, ptr %i.byh, align 8, !tbaa !101
  %i.cah = ptrtoint ptr %i.cag to i64
  %i.cai = sub i64 %i.cah, %i.bzw
  call void @_ZdlPvm(ptr noundef nonnull %i.bzs, i64 noundef %i.cai) #23
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.og, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.cac, ptr %i.brv, align 8, !tbaa !102
  store ptr %i.caf, ptr %i.byg, align 8, !tbaa !124
  %i.caj = getelementptr inbounds nuw [4 x i8], ptr %i.cac, i64 %i.caa ; 2 uses
  store ptr %i.caj, ptr %i.byh, align 8, !tbaa !101
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.oc
  %i.cak = phi ptr [ %i.cac, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.bzs, %bb.oc ] ; 3 uses
  %i.cal = phi ptr [ %i.caf, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.bzy, %bb.oc ] ; 2 uses
  %i.cam = phi ptr [ %i.caj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.bzt, %bb.oc ]
  %i.can = ptrtoint ptr %i.cal to i64
  %i.cao = ptrtoint ptr %i.cak to i64             ; 2 uses
  %i.cap = sub i64 %i.can, %i.cao                 ; 2 uses
  %i.caq = ashr exact i64 %i.cap, 2               ; 2 uses
  %.not241 = icmp ugt i64 %i.caq, %90
  br i1 %.not241, label %._crit_edge4711, label %.lr.ph4710, !llvm.loop !721

bb.oh:                                            ; preds = %.noexc10.i.i999
  %i.car = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1022

bb.oi:                                            ; preds = %bb.ny
  %i.cas = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1013

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.oj

.loopexit.split-lp:                               ; preds = %bb.oe
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.oj

bb.oj:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.cat = load ptr, ptr %85, align 8, !tbaa !55  ; 2 uses
  %i.cau = icmp eq ptr %i.cat, %i.abd
  br i1 %i.cau, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1013, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1011

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1011: ; preds = %bb.oj
  %i.cav = load i64, ptr %i.abd, align 8, !tbaa !48
  %i.caw = add i64 %i.cav, 1
  call void @_ZdlPvm(ptr noundef %i.cat, i64 noundef %i.caw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1013

._crit_edge4711:                                  ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %.preheader
  %.lcssa1681 = phi ptr [ %i.bzn, %.preheader ], [ %i.cak, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %i.cax = getelementptr inbounds nuw [4 x i8], ptr %.lcssa1681, i64 %90
  %i.cay = load i32, ptr %i.cax, align 4, !tbaa !123 ; 2 uses
  %i.caz = icmp slt i32 %i.cay, 0
  br i1 %i.caz, label %bb.ok, label %bb.om

bb.ok:                                            ; preds = %._crit_edge4711
  %i.cba = icmp sgt i32 %i.bzb, 0
  br i1 %i.cba, label %._crit_edge4782, label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  %i.cbb = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %84, i8 noundef signext 35, i64 noundef 0) #22
  %.not242 = icmp eq i64 %i.cbb, -1
  %.pre4784 = load ptr, ptr %i.brv, align 8, !tbaa !102 ; 3 uses
  br i1 %.not242, label %._crit_edge4785, label %._crit_edge4782

._crit_edge4785:                                  ; preds = %bb.ol
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.pre4784, i64 %90
  %.pre4786 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !123
  br label %bb.om

._crit_edge4782:                                  ; preds = %bb.ol, %bb.ok
  %i.cbc = phi ptr [ %.lcssa1681, %bb.ok ], [ %.pre4784, %bb.ol ] ; 2 uses
  %i.cbd = getelementptr inbounds nuw [4 x i8], ptr %i.cbc, i64 %90
  store i32 0, ptr %i.cbd, align 4, !tbaa !123
  br label %bb.om

bb.om:                                            ; preds = %._crit_edge4785, %._crit_edge4782, %._crit_edge4711
  %i.cbe = phi i32 [ %.pre4786, %._crit_edge4785 ], [ 0, %._crit_edge4782 ], [ %i.cay, %._crit_edge4711 ]
  %i.cbf = phi ptr [ %.pre4784, %._crit_edge4785 ], [ %i.cbc, %._crit_edge4782 ], [ %.lcssa1681, %._crit_edge4711 ]
  %i.cbg = getelementptr inbounds nuw [4 x i8], ptr %i.cbf, i64 %90
  %i.cbh = add nsw i32 %i.cbe, %i.bzb
  store i32 %i.cbh, ptr %i.cbg, align 4, !tbaa !123
  br label %bb.on

bb.on:                                            ; preds = %bb.om, %bb.ob
  %i.cbi = load ptr, ptr %85, align 8, !tbaa !55  ; 2 uses
  %i.cbj = icmp eq ptr %i.cbi, %i.abd
  br i1 %i.cbj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1014

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1014: ; preds = %bb.on
  %i.cbk = load i64, ptr %i.abd, align 8, !tbaa !48
  %i.cbl = add i64 %i.cbk, 1
  call void @_ZdlPvm(ptr noundef %i.cbi, i64 noundef %i.cbl) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016: ; preds = %bb.on, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1014
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #22
  %i.cbm = load ptr, ptr %84, align 8, !tbaa !55  ; 2 uses
  %i.cbn = icmp eq ptr %i.cbm, %i.abb
  br i1 %i.cbn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1019, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1017

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1017: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016
  %i.cbo = load i64, ptr %i.abb, align 8, !tbaa !48
  %i.cbp = add i64 %i.cbo, 1
  call void @_ZdlPvm(ptr noundef %i.cbm, i64 noundef %i.cbp) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1019

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1019: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1017
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #22
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1019, %bb.nt
  br label %.backedge, !llvm.loop !722

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1013: ; preds = %bb.oj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1011, %bb.oi
  %.pn243 = phi { ptr, i32 } [ %i.cas, %bb.oi ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1011 ], [ %lpad.phi, %bb.oj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #22
  %i.cbq = load ptr, ptr %84, align 8, !tbaa !55  ; 2 uses
  %i.cbr = icmp eq ptr %i.cbq, %i.abb
  br i1 %i.cbr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1022, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1020

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1020: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1013
  %i.cbs = load i64, ptr %i.abb, align 8, !tbaa !48
  %i.cbt = add i64 %i.cbs, 1
  call void @_ZdlPvm(ptr noundef %i.cbq, i64 noundef %i.cbt) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1022

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1022: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1013, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1020, %bb.oh
  %.pn243.pn = phi { ptr, i32 } [ %i.car, %bb.oh ], [ %.pn243, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1020 ], [ %.pn243, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1013 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #22
  br label %bb.op

bb.oo:                                            ; preds = %bb.ns
  %i.cbu = load ptr, ptr %81, align 8, !tbaa !55  ; 2 uses
  %i.cbv = icmp eq ptr %i.cbu, %i.aap
  br i1 %i.cbv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1025, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1023

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1023: ; preds = %bb.oo
  %i.cbw = load i64, ptr %i.aap, align 8, !tbaa !48
  %i.cbx = add i64 %i.cbw, 1
  call void @_ZdlPvm(ptr noundef %i.cbu, i64 noundef %i.cbx) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1025

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1025: ; preds = %bb.oo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1023
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #22
  br label %bb.oq

bb.op:                                            ; preds = %.loopexit1553, %.loopexit.split-lp1554, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1022, %bb.nw
  %.pn243.pn.pn = phi { ptr, i32 } [ %.pn243.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1022 ], [ %.pn238.pn, %bb.nw ], [ %lpad.loopexit1555, %.loopexit1553 ], [ %lpad.loopexit.split-lp1556, %.loopexit.split-lp1554 ]
  %i.cby = load ptr, ptr %81, align 8, !tbaa !55  ; 2 uses
  %i.cbz = icmp eq ptr %i.cby, %i.aap
  br i1 %i.cbz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1028, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1026

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1026: ; preds = %bb.op
  %i.cca = load i64, ptr %i.aap, align 8, !tbaa !48
  %i.ccb = add i64 %i.cca, 1
  call void @_ZdlPvm(ptr noundef %i.cby, i64 noundef %i.ccb) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1028

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1028: ; preds = %bb.op, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1026
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #22
  br label %bb.or

bb.oq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1025, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit961
  store i64 0, ptr %i.nf, align 8, !tbaa !47
  %i.ccc = load ptr, ptr %22, align 8, !tbaa !55
  store i8 0, ptr %i.ccc, align 1, !tbaa !48
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %78) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #22
  br label %bb.ot

bb.or:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1028, %bb.nh
  %.pn247.pn.pn = phi { ptr, i32 } [ %.pn247.pn, %bb.nh ], [ %.pn243.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1028 ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %78) #22
  br label %bb.os

bb.os:                                            ; preds = %bb.or, %bb.ne
  %.pn247.pn.pn.pn = phi { ptr, i32 } [ %.pn247.pn.pn, %bb.or ], [ %i.bwh, %bb.ne ]
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #22
  br label %bb.ow

bb.ot:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit917, %bb.oq, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit816
  %i.ccd = load ptr, ptr %66, align 8, !tbaa !55  ; 2 uses
  %i.cce = icmp eq ptr %i.ccd, %i.xa
  br i1 %i.cce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1031, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1029

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1029: ; preds = %bb.ot
  %i.ccf = load i64, ptr %i.xa, align 8, !tbaa !48
  %i.ccg = add i64 %i.ccf, 1
  call void @_ZdlPvm(ptr noundef %i.ccd, i64 noundef %i.ccg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1031

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1031: ; preds = %bb.ot, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1029
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #22
  store ptr %i.abf, ptr %63, align 8, !tbaa !25
  %i.cch = load i64, ptr %i.abh, align 8
  %i.cci = getelementptr inbounds i8, ptr %63, i64 %i.cch
  store ptr %i.abg, ptr %i.cci, align 8, !tbaa !25
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt13basic_filebufIcSt11char_traitsIcEE, i64 16), ptr %i.wf, align 8, !tbaa !25
  %i.ccj = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.wf)
          to label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev.exit unwind label %bb.ou ; 0 uses

bb.ou:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1031
  %i.cck = landingpad { ptr, i32 }
          catch ptr null
  %i.ccl = extractvalue { ptr, i32 } %i.cck, 0
  %i.ccm = call ptr @__cxa_begin_catch(ptr %i.ccl) #22 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev.exit unwind label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  %i.ccn = landingpad { ptr, i32 }
          catch ptr null
  %i.cco = extractvalue { ptr, i32 } %i.ccn, 0
  call void @__clang_call_terminate(ptr %i.cco) #26
  unreachable

_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1031, %bb.ou
  call void @_ZNSt12__basic_fileIcED1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.abi) #22
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.wf, align 8, !tbaa !25
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.abj) #22
  store ptr %i.wb, ptr %63, align 8, !tbaa !25
  %i.ccp = load i64, ptr %i.wd, align 8
  %i.ccq = getelementptr inbounds i8, ptr %63, i64 %i.ccp
  store ptr %i.wc, ptr %i.ccq, align 8, !tbaa !25
  store i64 0, ptr %i.we, align 8, !tbaa !140
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.vw) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #22
  br i1 %i.bgy, label %bb.ip, label %._crit_edge4717

bb.ow:                                            ; preds = %bb.na, %bb.nd, %bb.os, %.body893, %.body838, %.body842, %bb.kz, %.body788, %bb.kj
  %.pn259.pn.pn = phi { ptr, i32 } [ %.pn259.pn, %.body842 ], [ %.pn226.pn, %.body788 ], [ %.pn232.pn, %.body893 ], [ %.pn229.pn, %.body838 ], [ %i.bjf, %bb.kj ], [ %lpad.phi1577, %bb.kz ], [ %.pn247.pn.pn.pn, %bb.os ], [ %.pn235.pn, %bb.nd ], [ %i.bwa, %bb.na ]
  %i.ccr = load ptr, ptr %66, align 8, !tbaa !55  ; 2 uses
  %i.ccs = icmp eq ptr %i.ccr, %i.xa
  br i1 %i.ccs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1034, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1032

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1032: ; preds = %bb.ow
  %i.cct = load i64, ptr %i.xa, align 8, !tbaa !48
  %i.ccu = add i64 %i.cct, 1
  call void @_ZdlPvm(ptr noundef %i.ccr, i64 noundef %i.ccu) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1034

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1034: ; preds = %bb.ow, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1032
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #22
  br label %bb.ox

bb.ox:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1034, %.body760
  %.pn259.pn.pn.pn = phi { ptr, i32 } [ %.pn259.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1034 ], [ %.pn223.pn, %.body760 ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %63) #22
  br label %.body757

.body757:                                         ; preds = %bb.jf, %bb.ox
  %.pn259.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn259.pn.pn.pn, %bb.ox ], [ %.pn.pn.i, %bb.jf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #22
  br label %bb.pa

._crit_edge4717:                                  ; preds = %_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev.exit, %bb.ip
  %spec.store.select8 = phi i32 [ 1, %_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev.exit ], [ 0, %bb.ip ] ; 2 uses
  %i.ccv = load ptr, ptr %59, align 8, !tbaa !55  ; 2 uses
  %i.ccw = icmp eq ptr %i.ccv, %i.vf
  br i1 %i.ccw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1037, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1035

._crit_edge4717.jt17:                             ; preds = %_ZN2cm6appendISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EES9_TnNSt9enable_ifIXaaaaaaaasr2cm21is_sequence_containerIT_EE5valuesr2cm14is_input_rangeIT0_EE5valuentsr2cm13is_unique_ptrINSB_10value_typeEEE5valuentsr2cm13is_unique_ptrINSC_10value_typeEEE5valuesr3std14is_convertibleISE_SD_EE5valueEiE4typeELi0EEEvRSB_RKSC_.exit
  %i.ccx = load ptr, ptr %59, align 8, !tbaa !55  ; 2 uses
  %i.ccy = icmp eq ptr %i.ccx, %i.vf
  br i1 %i.ccy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1037.jt17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1035.jt17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1035: ; preds = %._crit_edge4717
  %i.ccz = load i64, ptr %i.vf, align 8, !tbaa !48
  %i.cda = add i64 %i.ccz, 1
  call void @_ZdlPvm(ptr noundef %i.ccv, i64 noundef %i.cda) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1037

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1035.jt17: ; preds = %._crit_edge4717.jt17
  %i.cdb = load i64, ptr %i.vf, align 8, !tbaa !48
  %i.cdc = add i64 %i.cdb, 1
  call void @_ZdlPvm(ptr noundef %i.ccx, i64 noundef %i.cdc) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1037.jt17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1037: ; preds = %._crit_edge4717, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1035
end_hunk_1
