inline.NumInlined: 4920
inline.NumDeleted: 1039
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN22cmCTestCoverageHandler21HandleTracePyCoverageEP31cmCTestCoverageHandlerContainer:bb.a
bb.bz:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit233
  %i.pb = load ptr, ptr %20, align 8, !tbaa !57   ; 2 uses
  %i.pc = icmp eq ptr %i.pb, %i.ft
  br i1 %i.pc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234: ; preds = %bb.bz
  %i.pd = load i64, ptr %i.ft, align 8, !tbaa !33
  %i.pe = add i64 %i.pd, 1
  call void @_ZdlPvm(ptr noundef %i.pb, i64 noundef %i.pe) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234
  store ptr %i.fb, ptr %19, align 8, !tbaa !9
  %i.pf = load i64, ptr %i.fd, align 8
  %i.pg = getelementptr inbounds i8, ptr %19, i64 %i.pf
  store ptr %i.fc, ptr %i.pg, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.fz, align 8, !tbaa !9
  %i.ph = load ptr, ptr %i.fy, align 8, !tbaa !57 ; 2 uses
  %i.pi = icmp eq ptr %i.ph, %i.ga
  br i1 %i.pi, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i237: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236
  %i.pj = load i64, ptr %i.ga, align 8, !tbaa !33
  %i.pk = add i64 %i.pj, 1
  call void @_ZdlPvm(ptr noundef %i.ph, i64 noundef %i.pk) #23
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit239

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit239: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i237
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.fz, align 8, !tbaa !9
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gb) #22
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.gc) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.do

bb.ca:                                            ; preds = %bb.ax
  %i.pl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294

bb.cb:                                            ; preds = %bb.ay
  %i.pm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

.loopexit388:                                     ; preds = %bb.az, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175, %bb.bc, %.noexc335, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i332, %.noexc337
  %lpad.loopexit390 = landingpad { ptr, i32 }
          cleanup
  br label %.body187

.loopexit.split-lp389:                            ; preds = %bb.ba
  %lpad.loopexit.split-lp391 = landingpad { ptr, i32 }
          cleanup
  br label %.body187

bb.cc:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit189
  %i.pn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.po = load ptr, ptr %15, align 8, !tbaa !57   ; 2 uses
  %i.pp = icmp eq ptr %i.po, %i.eu
  br i1 %i.pp, label %.body187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240: ; preds = %bb.cc
  %i.pq = load i64, ptr %i.eu, align 8, !tbaa !33
  %i.pr = add i64 %i.pq, 1
  call void @_ZdlPvm(ptr noundef %i.po, i64 noundef %i.pr) #23
  br label %.body187

.body187:                                         ; preds = %bb.cc, %bb.be, %.loopexit388, %.loopexit.split-lp389, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i184
  %.pn76 = phi { ptr, i32 } [ %lpad.loopexit.split-lp391, %.loopexit.split-lp389 ], [ %i.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240 ], [ %i.ky, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i184 ], [ %i.ky, %bb.be ], [ %lpad.loopexit390, %.loopexit388 ], [ %i.pn, %bb.cc ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %14) #22
  br label %bb.cd

bb.cd:                                            ; preds = %.body187, %bb.cb
  %.pn76.pn = phi { ptr, i32 } [ %.pn76, %.body187 ], [ %i.pm, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.ds

bb.ce:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit195
  %i.ps = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.cf:                                            ; preds = %bb.bh
  %i.pt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

.loopexit393:                                     ; preds = %bb.bi, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197, %bb.bl, %.noexc346, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i343, %.noexc348
  %lpad.loopexit395 = landingpad { ptr, i32 }
          cleanup
  br label %.body209

.loopexit.split-lp394:                            ; preds = %bb.bj
  %lpad.loopexit.split-lp396 = landingpad { ptr, i32 }
          cleanup
  br label %.body209

bb.cg:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit211
  %i.pu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pv = load ptr, ptr %17, align 8, !tbaa !57   ; 2 uses
  %i.pw = icmp eq ptr %i.pv, %i.fj
  br i1 %i.pw, label %.body209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243: ; preds = %bb.cg
  %i.px = load i64, ptr %i.fj, align 8, !tbaa !33
  %i.py = add i64 %i.px, 1
  call void @_ZdlPvm(ptr noundef %i.pv, i64 noundef %i.py) #23
  br label %.body209

.body209:                                         ; preds = %bb.cg, %bb.bn, %.loopexit393, %.loopexit.split-lp394, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i206
  %.pn79 = phi { ptr, i32 } [ %lpad.loopexit.split-lp396, %.loopexit.split-lp394 ], [ %i.pu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243 ], [ %i.mu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i206 ], [ %i.mu, %bb.bn ], [ %lpad.loopexit395, %.loopexit393 ], [ %i.pu, %bb.cg ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %16) #22
  br label %bb.ch

bb.ch:                                            ; preds = %.body209, %bb.cf
  %.pn79.pn = phi { ptr, i32 } [ %.pn79, %.body209 ], [ %i.pt, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.ds

bb.ci:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit217
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.cj:                                            ; preds = %bb.br
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

.loopexit398:                                     ; preds = %bb.bs, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219, %bb.bv, %.noexc357, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i354, %.noexc359
  %lpad.loopexit400 = landingpad { ptr, i32 }
          cleanup
  br label %.body231

.loopexit.split-lp399:                            ; preds = %bb.bt
  %lpad.loopexit.split-lp401 = landingpad { ptr, i32 }
          cleanup
  br label %.body231

bb.ck:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit233
  %i.qb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qc = load ptr, ptr %20, align 8, !tbaa !57   ; 2 uses
  %i.qd = icmp eq ptr %i.qc, %i.ft
  br i1 %i.qd, label %.body231, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %bb.ck
  %i.qe = load i64, ptr %i.ft, align 8, !tbaa !33
  %i.qf = add i64 %i.qe, 1
  call void @_ZdlPvm(ptr noundef %i.qc, i64 noundef %i.qf) #23
  br label %.body231

.body231:                                         ; preds = %bb.ck, %bb.bx, %.loopexit398, %.loopexit.split-lp399, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i228
  %.pn88 = phi { ptr, i32 } [ %lpad.loopexit.split-lp401, %.loopexit.split-lp399 ], [ %i.qb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246 ], [ %i.ow, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i228 ], [ %i.ow, %bb.bx ], [ %lpad.loopexit400, %.loopexit398 ], [ %i.qb, %bb.ck ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19) #22
  br label %bb.cl

bb.cl:                                            ; preds = %.body231, %bb.cj
  %.pn88.pn = phi { ptr, i32 } [ %.pn88, %.body231 ], [ %i.qa, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.dq

bb.cm:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  store ptr %i.gd, ptr %21, align 8, !tbaa !28
  store i64 0, ptr %i.ge, align 8, !tbaa !31
  store i8 0, ptr %i.gd, align 8, !tbaa !33
  %i.qg = getelementptr inbounds nuw i8, ptr %i.lp, i64 8 ; 3 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.lp, i64 16 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.cm
  %.039 = phi i64 [ -1, %bb.cm ], [ %i.qj, %.backedge.backedge ]
  %i.qi = invoke noundef zeroext i1 @_ZN5cmsys11SystemTools17GetLineFromStreamERSiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPbm(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef null, i64 noundef -1)
          to label %bb.cn unwind label %bb.cp

bb.cn:                                            ; preds = %.backedge
  br i1 %i.qi, label %bb.co, label %bb.dm

bb.co:                                            ; preds = %bb.cn
  %i.qj = add nsw i64 %.039, 1                    ; 4 uses
  %i.qk = load i64, ptr %i.ge, align 8, !tbaa !31
  %i.ql = icmp ult i64 %i.qk, 12
  br i1 %i.ql, label %.backedge.backedge, label %.preheader382

.preheader382:                                    ; preds = %bb.co
  %i.qm = load ptr, ptr %21, align 8, !tbaa !57   ; 4 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 5
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !33
  switch i8 %i.qo, label %bb.cr [
    i8 32, label %.preheader
    i8 58, label %bb.cq
  ]

bb.cp:                                            ; preds = %.backedge
  %i.qp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.cq:                                            ; preds = %.preheader382, %bb.cr, %bb.cs
  %.038588.lcssa597 = phi i64 [ 4, %.preheader382 ], [ 5, %bb.cr ], [ 6, %bb.cs ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  store ptr %i.gf, ptr %22, align 8, !tbaa !28, !alias.scope !921
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gf, ptr noundef nonnull align 1 dereferenceable(1) %i.qm, i64 %.038588.lcssa597, i1 false)
  store i64 %.038588.lcssa597, ptr %i.gg, align 8, !tbaa !31, !alias.scope !921
  %i.qq = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.038588.lcssa597
  store i8 0, ptr %i.qq, align 1, !tbaa !33
  %i.qr = call i64 @__isoc23_strtol(ptr noundef nonnull %i.gf, ptr noundef null, i32 noundef 10) #22, !inline_history !505
  %i.qs = trunc i64 %i.qr to i32
  %i.qt = load ptr, ptr %22, align 8, !tbaa !57   ; 2 uses
  %i.qu = icmp eq ptr %i.qt, %i.gf
  br i1 %i.qu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250: ; preds = %bb.cq
  %i.qv = load i64, ptr %i.gf, align 8, !tbaa !33
  %i.qw = add i64 %i.qv, 1
  call void @_ZdlPvm(ptr noundef %i.qt, i64 noundef %i.qw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %.preheader

bb.cr:                                            ; preds = %.preheader382
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qm, i64 6
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !33
  switch i8 %i.qy, label %bb.cs [
    i8 32, label %.preheader
    i8 58, label %bb.cq
  ]

bb.cs:                                            ; preds = %bb.cr
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qm, i64 7
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !33
  switch i8 %i.ra, label %bb.ct [
    i8 32, label %.preheader
    i8 58, label %bb.cq
  ]

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %23)
          to label %bb.cu unwind label %bb.dc

bb.cu:                                            ; preds = %bb.ct
  %i.rb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull @.str.210, i64 noundef 49)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254 unwind label %.loopexit383 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254: ; preds = %bb.cu
  %i.rc = load ptr, ptr %23, align 8, !tbaa !9
  %i.rd = getelementptr i8, ptr %i.rc, i64 -24
  %i.re = load i64, ptr %i.rd, align 8
  %i.rf = getelementptr inbounds i8, ptr %23, i64 %i.re
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 240
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !59 ; 6 uses
  %.not.i.i.i362 = icmp eq ptr %i.rh, null
  br i1 %.not.i.i.i362, label %bb.cv, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i363

bb.cv:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254
  invoke void @_ZSt16__throw_bad_castv() #24
          to label %.noexc367 unwind label %.loopexit.split-lp384

.noexc367:                                        ; preds = %bb.cv
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i363: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 56
  %i.rj = load i8, ptr %i.ri, align 8, !tbaa !74
  %.not.i1.i.i364 = icmp eq i8 %i.rj, 0
  br i1 %.not.i1.i.i364, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i363
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rh, i64 67
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !33
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i365

bb.cx:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i363
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.rh)
          to label %.noexc368 unwind label %.loopexit383

.noexc368:                                        ; preds = %bb.cx
  %i.rm = load ptr, ptr %i.rh, align 8, !tbaa !9
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 48
  %i.ro = load ptr, ptr %i.rn, align 8
  %i.rp = invoke noundef signext i8 %i.ro(ptr noundef nonnull align 8 dereferenceable(570) %i.rh, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i365 unwind label %.loopexit383, !inline_history !80

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i365: ; preds = %.noexc368, %bb.cw
  %.0.i.i.i366 = phi i8 [ %i.rl, %bb.cw ], [ %i.rp, %.noexc368 ]
  %i.rq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %23, i8 noundef signext %.0.i.i.i366)
          to label %.noexc370 unwind label %.loopexit383

.noexc370:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i365
  %i.rr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.rq)
          to label %_ZNSolsEPFRSoS_E.exit256 unwind label %.loopexit383 ; 0 uses

_ZNSolsEPFRSoS_E.exit256:                         ; preds = %.noexc370
  %i.rs = load ptr, ptr %i.dd, align 8, !tbaa !22
  call void @llvm.experimental.noalias.scope.decl(metadata !924)
  call void @llvm.experimental.noalias.scope.decl(metadata !927)
  store ptr %i.gh, ptr %24, align 8, !tbaa !28, !alias.scope !930
  store i64 0, ptr %i.gi, align 8, !tbaa !31, !alias.scope !930
  store i8 0, ptr %i.gh, align 8, !tbaa !33, !alias.scope !930
  %i.rt = load ptr, ptr %i.gj, align 8, !tbaa !88, !noalias !930 ; 3 uses
  %.not.i.not.i.i257 = icmp eq ptr %i.rt, null
  %i.ru = load ptr, ptr %i.gk, align 8, !noalias !930 ; 2 uses
  %i.rv = icmp ugt ptr %i.rt, %i.ru
  %.08.i.i.i258 = select i1 %i.rv, ptr %i.rt, ptr %i.ru ; 2 uses
  %.not5.i.i259 = icmp eq ptr %.08.i.i.i258, null
  %.not.i.i260 = select i1 %.not.i.not.i.i257, i1 true, i1 %.not5.i.i259
  br i1 %.not.i.i260, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %_ZNSolsEPFRSoS_E.exit256
  %i.rw = load ptr, ptr %i.gl, align 8, !tbaa !90, !noalias !930 ; 2 uses
  %i.rx = ptrtoint ptr %.08.i.i.i258 to i64
  %i.ry = ptrtoint ptr %i.rw to i64
  %i.rz = sub i64 %i.rx, %i.ry
  %i.sa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %24, i64 noundef 0, i64 noundef 0, ptr noundef %i.rw, i64 noundef %i.rz)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit266 unwind label %bb.cz ; 0 uses

bb.cz:                                            ; preds = %bb.da, %bb.cy
  %i.sb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sc = load ptr, ptr %24, align 8, !tbaa !57, !alias.scope !930 ; 2 uses
  %i.sd = icmp eq ptr %i.sc, %i.gh
  br i1 %i.sd, label %.body264, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i261: ; preds = %bb.cz
  %i.se = load i64, ptr %i.gh, align 8, !tbaa !33, !alias.scope !930
  %i.sf = add i64 %i.se, 1
  call void @_ZdlPvm(ptr noundef %i.sc, i64 noundef %i.sf) #23
  br label %.body264

bb.da:                                            ; preds = %_ZNSolsEPFRSoS_E.exit256
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %i.gm)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit266 unwind label %bb.cz

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit266: ; preds = %bb.da, %bb.cy
  invoke void @_ZN7cmCTest3LogENS_7LogTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(8) %i.rs, i32 noundef 7, ptr noundef nonnull align 8 %24, i1 noundef zeroext false)
          to label %bb.db unwind label %bb.dd

bb.db:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit266
  %i.sg = load ptr, ptr %24, align 8, !tbaa !57   ; 2 uses
  %i.sh = icmp eq ptr %i.sg, %i.gh
  br i1 %i.sh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267: ; preds = %bb.db
  %i.si = load i64, ptr %i.gh, align 8, !tbaa !33
  %i.sj = add i64 %i.si, 1
  call void @_ZdlPvm(ptr noundef %i.sg, i64 noundef %i.sj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267
  store ptr %i.fb, ptr %23, align 8, !tbaa !9
  %i.sk = load i64, ptr %i.fd, align 8
  %i.sl = getelementptr inbounds i8, ptr %23, i64 %i.sk
  store ptr %i.fc, ptr %i.sl, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.gn, align 8, !tbaa !9
  %i.sm = load ptr, ptr %i.gm, align 8, !tbaa !57 ; 2 uses
  %i.sn = icmp eq ptr %i.sm, %i.go
  br i1 %i.sn, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i270: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269
  %i.so = load i64, ptr %i.go, align 8, !tbaa !33
  %i.sp = add i64 %i.so, 1
  call void @_ZdlPvm(ptr noundef %i.sm, i64 noundef %i.sp) #23
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit272

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit272: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i270
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.gn, align 8, !tbaa !9
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gp) #22
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.gq) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %.preheader

bb.dc:                                            ; preds = %bb.ct
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

.loopexit383:                                     ; preds = %bb.cu, %bb.cx, %.noexc368, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i365, %.noexc370
  %lpad.loopexit385 = landingpad { ptr, i32 }
          cleanup
  br label %.body264

.loopexit.split-lp384:                            ; preds = %bb.cv
  %lpad.loopexit.split-lp386 = landingpad { ptr, i32 }
          cleanup
  br label %.body264

bb.dd:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit266
  %i.sr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ss = load ptr, ptr %24, align 8, !tbaa !57   ; 2 uses
  %i.st = icmp eq ptr %i.ss, %i.gh
  br i1 %i.st, label %.body264, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273: ; preds = %bb.dd
  %i.su = load i64, ptr %i.gh, align 8, !tbaa !33
  %i.sv = add i64 %i.su, 1
  call void @_ZdlPvm(ptr noundef %i.ss, i64 noundef %i.sv) #23
  br label %.body264

.body264:                                         ; preds = %bb.dd, %bb.cz, %.loopexit383, %.loopexit.split-lp384, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i261
  %.pn82 = phi { ptr, i32 } [ %lpad.loopexit.split-lp386, %.loopexit.split-lp384 ], [ %i.sr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273 ], [ %i.sb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i261 ], [ %i.sb, %bb.cz ], [ %lpad.loopexit385, %.loopexit383 ], [ %i.sr, %bb.dd ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %23) #22
  br label %bb.de

bb.de:                                            ; preds = %.body264, %bb.dc
  %.pn82.pn = phi { ptr, i32 } [ %.pn82, %.body264 ], [ %i.sq, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.dn

.preheader:                                       ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit272, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252, %bb.cs, %bb.cr, %.preheader382
  %.037378 = phi i32 [ %i.qs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252 ], [ 0, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit272 ], [ 0, %bb.cs ], [ 0, %bb.cr ], [ 0, %.preheader382 ] ; 2 uses
  %i.sw = load ptr, ptr %i.qg, align 8, !tbaa !219 ; 2 uses
  %i.sx = load ptr, ptr %i.lp, align 8, !tbaa !167 ; 3 uses
  %i.sy = ptrtoint ptr %i.sw to i64
  %i.sz = ptrtoint ptr %i.sx to i64
  %i.ta = sub i64 %i.sy, %i.sz                    ; 2 uses
  %i.tb = ashr exact i64 %i.ta, 2                 ; 2 uses
  %.not589 = icmp ugt i64 %i.tb, %i.qj
  br i1 %.not589, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.pre602 = load ptr, ptr %i.qh, align 8, !tbaa !165
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.tc = phi ptr [ %i.tt, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.sx, %.lr.ph.preheader ] ; 4 uses
  %i.td = phi ptr [ %i.tv, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %.pre602, %.lr.ph.preheader ] ; 2 uses
  %i.te = phi i64 [ %i.tz, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.tb, %.lr.ph.preheader ] ; 3 uses
  %i.tf = phi i64 [ %i.ty, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.ta, %.lr.ph.preheader ] ; 5 uses
  %i.tg = phi ptr [ %i.tu, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.sw, %.lr.ph.preheader ] ; 3 uses
  %.not.i.i276 = icmp eq ptr %i.tg, %i.td
  br i1 %.not.i.i276, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %.lr.ph
  store i32 -1, ptr %i.tg, align 4, !tbaa !218
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 4 ; 2 uses
  store ptr %i.th, ptr %i.qg, align 8, !tbaa !219
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.dg:                                            ; preds = %.lr.ph
  %i.ti = icmp eq i64 %i.tf, 9223372036854775804
  br i1 %i.ti, label %bb.dh, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.282) #24
          to label %.noexc278 unwind label %.loopexit.split-lp

.noexc278:                                        ; preds = %bb.dh
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.dg
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.te, i64 1)
  %i.tj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.te ; 2 uses
  %i.tk = icmp ult i64 %i.tj, %i.te
  %i.tl = call i64 @llvm.umin.i64(i64 %i.tj, i64 2305843009213693951)
  %i.tm = select i1 %i.tk, i64 2305843009213693951, i64 %i.tl ; 3 uses
  %.not.i.i.i.i277 = icmp ne i64 %i.tm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i277)
  %i.tn = shl nuw nsw i64 %i.tm, 2
  %i.to = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tn) #27
          to label %.noexc279 unwind label %.loopexit ; 5 uses

.noexc279:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.tp = getelementptr inbounds i8, ptr %i.to, i64 %i.tf ; 2 uses
  store i32 -1, ptr %i.tp, align 4, !tbaa !218
  %i.tq = icmp sgt i64 %i.tf, 0
  br i1 %i.tq, label %bb.di, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.di:                                            ; preds = %.noexc279
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.to, ptr align 4 %i.tc, i64 %i.tf, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.di, %.noexc279
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tp, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.tc, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.dj

bb.dj:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.tc, i64 noundef %i.tf) #23
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.dj, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.to, ptr %i.lp, align 8, !tbaa !167
  store ptr %i.tr, ptr %i.qg, align 8, !tbaa !219
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %i.tm ; 2 uses
  store ptr %i.ts, ptr %i.qh, align 8, !tbaa !165
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.df
  %i.tt = phi ptr [ %i.to, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.tc, %bb.df ] ; 3 uses
  %i.tu = phi ptr [ %i.tr, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.th, %bb.df ] ; 2 uses
  %i.tv = phi ptr [ %i.ts, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.td, %bb.df ]
  %i.tw = ptrtoint ptr %i.tu to i64
  %i.tx = ptrtoint ptr %i.tt to i64
  %i.ty = sub i64 %i.tw, %i.tx                    ; 2 uses
  %i.tz = ashr exact i64 %i.ty, 2                 ; 2 uses
  %.not = icmp ugt i64 %i.tz, %i.qj
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !931

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

.loopexit.split-lp:                               ; preds = %bb.dh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %.preheader
  %.lcssa = phi ptr [ %i.sx, %.preheader ], [ %i.tt, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ]
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %.lcssa, i64 %i.qj ; 3 uses
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !218 ; 2 uses
  %i.uc = icmp slt i32 %i.ub, 0
  %i.ud = icmp sgt i32 %.037378, -1
  %or.cond = select i1 %i.uc, i1 %i.ud, i1 false
  br i1 %or.cond, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %._crit_edge
  store i32 0, ptr %i.ua, align 4, !tbaa !218
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %._crit_edge
  %i.ue = phi i32 [ 0, %bb.dk ], [ %i.ub, %._crit_edge ]
  %i.uf = add nsw i32 %i.ue, %.037378
  store i32 %i.uf, ptr %i.ua, align 4, !tbaa !218
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.dl, %bb.co
  br label %.backedge, !llvm.loop !932

bb.dm:                                            ; preds = %bb.cn
  %i.ug = load ptr, ptr %21, align 8, !tbaa !57   ; 2 uses
  %i.uh = icmp eq ptr %i.ug, %i.gd
  br i1 %i.uh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280: ; preds = %bb.dm
  %i.ui = load i64, ptr %i.gd, align 8, !tbaa !33
  %i.uj = add i64 %i.ui, 1
  call void @_ZdlPvm(ptr noundef %i.ug, i64 noundef %i.uj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282: ; preds = %bb.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.do

bb.dn:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.de, %bb.cp
  %.pn85.pn = phi { ptr, i32 } [ %i.qp, %bb.cp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %.pn82.pn, %bb.de ], [ %lpad.loopexit, %.loopexit ]
  %i.uk = load ptr, ptr %21, align 8, !tbaa !57   ; 2 uses
  %i.ul = icmp eq ptr %i.uk, %i.gd
  br i1 %i.ul, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283: ; preds = %bb.dn
  %i.um = load i64, ptr %i.gd, align 8, !tbaa !33
  %i.un = add i64 %i.um, 1
  call void @_ZdlPvm(ptr noundef %i.uk, i64 noundef %i.un) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285: ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.dq

bb.do:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit239
  %i.uo = add nsw i32 %.072592, 1
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.up = load ptr, ptr %13, align 8, !tbaa !57   ; 2 uses
  %i.uq = icmp eq ptr %i.up, %i.gr
  br i1 %i.uq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286: ; preds = %bb.do
  %i.ur = load i64, ptr %i.gr, align 8, !tbaa !33
  %i.us = add i64 %i.ur, 1
  call void @_ZdlPvm(ptr noundef %i.up, i64 noundef %i.us) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288: ; preds = %bb.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.dp

bb.dp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit170
  %.173 = phi i32 [ %.072592, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit170 ], [ %i.uo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288 ] ; 3 uses
  %i.ut = load ptr, ptr %10, align 8, !tbaa !57   ; 2 uses
  %i.uu = icmp eq ptr %i.ut, %i.hc
  br i1 %i.uu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289: ; preds = %bb.dp
  %i.uv = load i64, ptr %i.hc, align 8, !tbaa !33
  %i.uw = add i64 %i.uv, 1
  call void @_ZdlPvm(ptr noundef %i.ut, i64 noundef %i.uw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291: ; preds = %bb.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.ux = getelementptr inbounds nuw i8, ptr %.sroa.0374.0591, i64 32 ; 2 uses
  %.not380 = icmp eq ptr %i.ux, %i.ak
  br i1 %.not380, label %._crit_edge595, label %bb.ai

bb.dq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, %bb.cl
  %.pn88.pn.pn = phi { ptr, i32 } [ %.pn88.pn, %bb.cl ], [ %.pn85.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285 ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %18) #22
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.ci
  %.pn88.pn.pn.pn = phi { ptr, i32 } [ %.pn88.pn.pn, %bb.dq ], [ %i.pz, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.ds

bb.ds:                                            ; preds = %bb.ce, %bb.ch, %bb.dr, %bb.cd
  %.pn88.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn76.pn, %bb.cd ], [ %.pn88.pn.pn.pn, %bb.dr ], [ %.pn79.pn, %bb.ch ], [ %i.ps, %bb.ce ] ; 2 uses
  %i.uy = load ptr, ptr %13, align 8, !tbaa !57   ; 2 uses
  %i.uz = icmp eq ptr %i.uy, %i.gr
  br i1 %i.uz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292: ; preds = %bb.ds
  %i.va = load i64, ptr %i.gr, align 8, !tbaa !33
  %i.vb = add i64 %i.va, 1
  call void @_ZdlPvm(ptr noundef %i.uy, i64 noundef %i.vb) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294: ; preds = %bb.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292, %bb.ca
  %.pn88.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pl, %bb.ca ], [ %.pn88.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292 ], [ %.pn88.pn.pn.pn.pn.pn, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.dt

bb.dt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, %bb.aw
  %.pn96.pn.pn = phi { ptr, i32 } [ %.pn96.pn, %bb.aw ], [ %.pn88.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294 ] ; 2 uses
  %i.vc = load ptr, ptr %10, align 8, !tbaa !57   ; 2 uses
  %i.vd = icmp eq ptr %i.vc, %i.hc
  br i1 %i.vd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295: ; preds = %bb.dt
  %i.ve = load i64, ptr %i.hc, align 8, !tbaa !33
  %i.vf = add i64 %i.ve, 1
  call void @_ZdlPvm(ptr noundef %i.vc, i64 noundef %i.vf) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297: ; preds = %bb.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295, %bb.at
  %.pn96.pn.pn.pn = phi { ptr, i32 } [ %i.jo, %bb.at ], [ %.pn96.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295 ], [ %.pn96.pn.pn, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.du

bb.du:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, %bb.ah
  %.pn96.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn96.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297 ], [ %i.hs, %bb.ah ] ; 2 uses
  %i.vg = load ptr, ptr %9, align 8, !tbaa !57    ; 2 uses
  %i.vh = icmp eq ptr %i.vg, %i.ed
  br i1 %i.vh, label %.body138, label %.body138.sink.split

.body138.sink.split:                              ; preds = %bb.du, %bb.ae
  %.sink = phi ptr [ %i.ep, %bb.ae ], [ %i.vg, %bb.du ]
  %.pn96.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.eo, %bb.ae ], [ %.pn96.pn.pn.pn.pn, %bb.du ]
  %i.vi = load i64, ptr %i.ed, align 8, !tbaa !33
  %i.vj = add i64 %i.vi, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.vj) #23
  br label %.body138

.body138:                                         ; preds = %.body138.sink.split, %bb.du, %bb.ae
  %.pn96.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.eo, %bb.ae ], [ %.pn96.pn.pn.pn.pn, %bb.du ], [ %.pn96.pn.pn.pn.pn.pn.ph, %.body138.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.vk = load ptr, ptr %7, align 8, !tbaa !57    ; 2 uses
  %i.vl = icmp eq ptr %i.vk, %i.dk
  br i1 %i.vl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301: ; preds = %.body138
  %i.vm = load i64, ptr %i.dk, align 8, !tbaa !33
  %i.vn = add i64 %i.vm, 1
  call void @_ZdlPvm(ptr noundef %i.vk, i64 noundef %i.vn) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303: ; preds = %.body138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %.pn96.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %.pn96.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301 ], [ %.pn96.pn.pn.pn.pn.pn, %.body138 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.dw

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i145: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %.pre603 = load ptr, ptr %4, align 8, !tbaa !324 ; 4 uses
  %.pre604 = load ptr, ptr %i.ah, align 8, !tbaa !322 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre603, %.pre604
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i145, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.vt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.pre603, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i145 ] ; 3 uses
  %i.vo = load ptr, ptr %.05.i.i.i, align 8, !tbaa !57 ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.vq = icmp eq ptr %i.vo, %i.vp
  br i1 %i.vq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.vr = load i64, ptr %i.vp, align 8, !tbaa !33
  %i.vs = add i64 %i.vr, 1
  call void @_ZdlPvm(ptr noundef %i.vo, i64 noundef %i.vs) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.vt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i304 = icmp eq ptr %i.vt, %.pre604
  br i1 %.not.i.i.i304, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !325

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %.thread716, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i145
  %.0721 = phi i32 [ 0, %.thread716 ], [ %.173, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i145 ], [ %.173, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ]
  %.pr.i720 = phi ptr [ %i.ag, %.thread716 ], [ %.pre603, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i145 ], [ %.pre603, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %.pr.i720, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.dv

bb.dv:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.vu = load ptr, ptr %i.aj, align 8, !tbaa !323
  %i.vv = ptrtoint ptr %i.vu to i64
  %i.vw = ptrtoint ptr %.pr.i720 to i64
  %i.vx = sub i64 %i.vv, %i.vw
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i720, i64 noundef %i.vx) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.vy = load ptr, ptr %3, align 8, !tbaa !57    ; 2 uses
  %i.vz = icmp eq ptr %i.vy, %i.g
  br i1 %i.vz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.wa = load i64, ptr %i.g, align 8, !tbaa !33
  %i.wb = add i64 %i.wa, 1
  call void @_ZdlPvm(ptr noundef %i.vy, i64 noundef %i.wb) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @_ZN5cmsys4GlobD1Ev(ptr noundef nonnull align 8 dead_on_return(82) dereferenceable(82) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i32 %.0721

bb.dw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, %bb.x
  %.pn104.pn.pn = phi { ptr, i32 } [ %.pn104.pn, %bb.x ], [ %.pn96.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #22
  br label %.body113

.body113:                                         ; preds = %bb.t, %bb.h, %bb.g, %bb.dw
  %.pn104.pn.pn.pn = phi { ptr, i32 } [ %.pn104.pn.pn, %bb.dw ], [ %i.cv, %bb.t ], [ %i.al, %bb.h ], [ %i.al, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.dx

bb.dx:                                            ; preds = %.body113, %bb.s
  %.pn104.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn104.pn.pn.pn, %.body113 ], [ %i.cu, %bb.s ] ; 2 uses
  %i.wc = load ptr, ptr %3, align 8, !tbaa !57    ; 2 uses
  %i.wd = icmp eq ptr %i.wc, %i.g
  br i1 %i.wd, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.dx, %bb.c
end_hunk_0
