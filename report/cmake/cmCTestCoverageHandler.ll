Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmCTestCoverageHandler?download=true
inline.NumInlined: 4920
inline.NumDeleted: 1039
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN22cmCTestCoverageHandler21HandleTracePyCoverageEP31cmCTestCoverageHandlerContainer:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !962)
  store ptr %i.ft, ptr %20, align 8, !tbaa !45, !alias.scope !963
  store i64 0, ptr %i.fu, align 8, !tbaa !47, !alias.scope !963
  store i8 0, ptr %i.ft, align 8, !tbaa !48, !alias.scope !963
  %i.oo = load ptr, ptr %i.fv, align 8, !tbaa !79, !noalias !963 ; 3 uses
  %.not.i.not.i.i224 = icmp eq ptr %i.oo, null
  %i.op = load ptr, ptr %i.fw, align 8, !noalias !963 ; 2 uses
  %i.oq = icmp ugt ptr %i.oo, %i.op
  %.08.i.i.i225 = select i1 %i.oq, ptr %i.oo, ptr %i.op ; 2 uses
  %.not5.i.i226 = icmp eq ptr %.08.i.i.i225, null
  %.not.i.i227 = select i1 %.not.i.not.i.i224, i1 true, i1 %.not5.i.i226
  br i1 %.not.i.i227, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %_ZNSolsEPFRSoS_E.exit223
  %i.or = load ptr, ptr %i.fx, align 8, !tbaa !80, !noalias !963 ; 2 uses
  %i.os = ptrtoint ptr %.08.i.i.i225 to i64
  %i.ot = ptrtoint ptr %i.or to i64
  %i.ou = sub i64 %i.os, %i.ot
  %i.ov = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef 0, i64 noundef 0, ptr noundef %i.or, i64 noundef %i.ou)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit233 unwind label %bb.bx ; 0 uses

bb.bx:                                            ; preds = %bb.by, %bb.bw
  %i.ow = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ox = load ptr, ptr %20, align 8, !tbaa !55, !alias.scope !963 ; 2 uses
  %i.oy = icmp eq ptr %i.ox, %i.ft
  br i1 %i.oy, label %.body231, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i228: ; preds = %bb.bx
  %i.oz = load i64, ptr %i.ft, align 8, !tbaa !48, !alias.scope !963
  %i.pa = add i64 %i.oz, 1
  call void @_ZdlPvm(ptr noundef %i.ox, i64 noundef %i.pa) #23
  br label %.body231

bb.by:                                            ; preds = %_ZNSolsEPFRSoS_E.exit223
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %i.fy)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit233 unwind label %bb.bx

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit233: ; preds = %bb.by, %bb.bw
  invoke void @_ZN7cmCTest3LogENS_7LogTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(8) %i.on, i32 noundef 7, ptr noundef nonnull align 8 %20, i1 noundef zeroext false)
          to label %bb.bz unwind label %bb.ck

bb.bz:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit233
  %i.pb = load ptr, ptr %20, align 8, !tbaa !55   ; 2 uses
  %i.pc = icmp eq ptr %i.pb, %i.ft
  br i1 %i.pc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234: ; preds = %bb.bz
  %i.pd = load i64, ptr %i.ft, align 8, !tbaa !48
  %i.pe = add i64 %i.pd, 1
  call void @_ZdlPvm(ptr noundef %i.pb, i64 noundef %i.pe) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234
  store ptr %i.fb, ptr %19, align 8, !tbaa !25
  %i.pf = load i64, ptr %i.fd, align 8
  %i.pg = getelementptr inbounds i8, ptr %19, i64 %i.pf
  store ptr %i.fc, ptr %i.pg, align 8, !tbaa !25
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.fz, align 8, !tbaa !25
  %i.ph = load ptr, ptr %i.fy, align 8, !tbaa !55 ; 2 uses
  %i.pi = icmp eq ptr %i.ph, %i.ga
  br i1 %i.pi, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i237: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236
  %i.pj = load i64, ptr %i.ga, align 8, !tbaa !48
  %i.pk = add i64 %i.pj, 1
  call void @_ZdlPvm(ptr noundef %i.ph, i64 noundef %i.pk) #23
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit239

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit239: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i237
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.fz, align 8, !tbaa !25
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gb) #22
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.gc) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.dl

bb.ca:                                            ; preds = %bb.ax
  %i.pl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294

bb.cb:                                            ; preds = %bb.ay
  %i.pm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

.loopexit.split-lp391.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc337, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i332, %.noexc335, %bb.bc, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175, %bb.az, %bb.ba
  %lpad.loopexit.split-lp755 = landingpad { ptr, i32 }
          cleanup
  br label %.body187

bb.cc:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit189
  %i.pn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.po = load ptr, ptr %15, align 8, !tbaa !55   ; 2 uses
  %i.pp = icmp eq ptr %i.po, %i.eu
  br i1 %i.pp, label %.body187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240: ; preds = %bb.cc
  %i.pq = load i64, ptr %i.eu, align 8, !tbaa !48
  %i.pr = add i64 %i.pq, 1
  call void @_ZdlPvm(ptr noundef %i.po, i64 noundef %i.pr) #23
  br label %.body187

.body187:                                         ; preds = %bb.cc, %bb.be, %.loopexit.split-lp391.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i184
  %.pn76 = phi { ptr, i32 } [ %lpad.loopexit.split-lp755, %.loopexit.split-lp391.loopexit.split-lp.loopexit.split-lp ], [ %i.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240 ], [ %i.ky, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i184 ], [ %i.ky, %bb.be ], [ %i.pn, %bb.cc ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %14) #22
  br label %bb.cd

bb.cd:                                            ; preds = %.body187, %bb.cb
  %.pn76.pn = phi { ptr, i32 } [ %.pn76, %.body187 ], [ %i.pm, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.dp

bb.ce:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit195
  %i.ps = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.cf:                                            ; preds = %bb.bh
  %i.pt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

.loopexit.split-lp396.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc348, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i343, %.noexc346, %bb.bl, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197, %bb.bi, %bb.bj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body209

bb.cg:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit211
  %i.pu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pv = load ptr, ptr %17, align 8, !tbaa !55   ; 2 uses
  %i.pw = icmp eq ptr %i.pv, %i.fj
  br i1 %i.pw, label %.body209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243: ; preds = %bb.cg
  %i.px = load i64, ptr %i.fj, align 8, !tbaa !48
  %i.py = add i64 %i.px, 1
  call void @_ZdlPvm(ptr noundef %i.pv, i64 noundef %i.py) #23
  br label %.body209

.body209:                                         ; preds = %bb.cg, %bb.bn, %.loopexit.split-lp396.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i206
  %.pn79 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp396.loopexit.split-lp.loopexit.split-lp ], [ %i.pu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243 ], [ %i.mu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i206 ], [ %i.mu, %bb.bn ], [ %i.pu, %bb.cg ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %16) #22
  br label %bb.ch

bb.ch:                                            ; preds = %.body209, %bb.cf
  %.pn79.pn = phi { ptr, i32 } [ %.pn79, %.body209 ], [ %i.pt, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.dp

bb.ci:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit217
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.cj:                                            ; preds = %bb.br
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

.loopexit.split-lp401.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc359, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i354, %.noexc357, %bb.bv, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219, %bb.bs, %bb.bt
  %lpad.loopexit.split-lp760 = landingpad { ptr, i32 }
          cleanup
  br label %.body231

bb.ck:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit233
  %i.qb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qc = load ptr, ptr %20, align 8, !tbaa !55   ; 2 uses
  %i.qd = icmp eq ptr %i.qc, %i.ft
  br i1 %i.qd, label %.body231, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %bb.ck
  %i.qe = load i64, ptr %i.ft, align 8, !tbaa !48
  %i.qf = add i64 %i.qe, 1
  call void @_ZdlPvm(ptr noundef %i.qc, i64 noundef %i.qf) #23
  br label %.body231

.body231:                                         ; preds = %bb.ck, %bb.bx, %.loopexit.split-lp401.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i228
  %.pn88 = phi { ptr, i32 } [ %lpad.loopexit.split-lp760, %.loopexit.split-lp401.loopexit.split-lp.loopexit.split-lp ], [ %i.qb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246 ], [ %i.ow, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i228 ], [ %i.ow, %bb.bx ], [ %i.qb, %bb.ck ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19) #22
  br label %bb.cl

bb.cl:                                            ; preds = %.body231, %bb.cj
  %.pn88.pn = phi { ptr, i32 } [ %.pn88, %.body231 ], [ %i.qa, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.dn

.split:                                           ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  store ptr %i.gd, ptr %21, align 8, !tbaa !45
  store i64 0, ptr %i.ge, align 8, !tbaa !47
  store i8 0, ptr %i.gd, align 8, !tbaa !48
  %i.qg = getelementptr inbounds nuw i8, ptr %i.lp, i64 8 ; 3 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.lp, i64 16 ; 3 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.split
  %.038 = phi i64 [ -1, %.split ], [ %i.qj, %.backedge.backedge ]
  %i.qi = invoke noundef zeroext i1 @_ZN5cmsys11SystemTools17GetLineFromStreamERSiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPbm(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef null, i64 noundef -1)
          to label %bb.cm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cm:                                            ; preds = %.backedge
  br i1 %i.qi, label %bb.cn, label %bb.dk

bb.cn:                                            ; preds = %bb.cm
  %i.qj = add nsw i64 %.038, 1                    ; 4 uses
  %i.qk = load i64, ptr %i.ge, align 8, !tbaa !47
  %i.ql = icmp ult i64 %i.qk, 12
  br i1 %i.ql, label %.backedge.backedge, label %.preheader382

.preheader382:                                    ; preds = %bb.cn
  %i.qm = load ptr, ptr %21, align 8, !tbaa !55   ; 4 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 5
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !48
  switch i8 %i.qo, label %bb.cp [
    i8 32, label %.preheader
    i8 58, label %bb.co
  ]

bb.co:                                            ; preds = %bb.cq, %bb.cp, %.preheader382
  %.037590.lcssa599 = phi i64 [ 4, %.preheader382 ], [ 5, %bb.cp ], [ 6, %bb.cq ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  store ptr %i.gf, ptr %22, align 8, !tbaa !45, !alias.scope !964
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gf, ptr noundef nonnull align 1 dereferenceable(1) %i.qm, i64 %.037590.lcssa599, i1 false)
  store i64 %.037590.lcssa599, ptr %i.gg, align 8, !tbaa !47, !alias.scope !964
  %i.qp = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.037590.lcssa599
  store i8 0, ptr %i.qp, align 1, !tbaa !48
  %i.qq = call i64 @__isoc23_strtol(ptr noundef nonnull %i.gf, ptr noundef null, i32 noundef 10) #22, !inline_history !5
  %i.qr = trunc i64 %i.qq to i32
  %i.qs = load ptr, ptr %22, align 8, !tbaa !55   ; 2 uses
  %i.qt = icmp eq ptr %i.qs, %i.gf
  br i1 %i.qt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250: ; preds = %bb.co
  %i.qu = load i64, ptr %i.gf, align 8, !tbaa !48
  %i.qv = add i64 %i.qu, 1
  call void @_ZdlPvm(ptr noundef %i.qs, i64 noundef %i.qv) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %.preheader

bb.cp:                                            ; preds = %.preheader382
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qm, i64 6
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !48
  switch i8 %i.qx, label %bb.cq [
    i8 32, label %.preheader
    i8 58, label %bb.co
  ]

bb.cq:                                            ; preds = %bb.cp
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qm, i64 7
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !48
  switch i8 %i.qz, label %bb.cr [
    i8 32, label %.preheader
    i8 58, label %bb.co
  ]

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %23)
          to label %bb.cs unwind label %bb.da

bb.cs:                                            ; preds = %bb.cr
  %i.ra = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull @.str.210, i64 noundef 49)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254 unwind label %.loopexit.split-lp387.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254: ; preds = %bb.cs
  %i.rb = load ptr, ptr %23, align 8, !tbaa !25
  %i.rc = getelementptr i8, ptr %i.rb, i64 -24
  %i.rd = load i64, ptr %i.rc, align 8
  %i.re = getelementptr inbounds i8, ptr %23, i64 %i.rd
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 240
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !71 ; 6 uses
  %.not.i.i.i362 = icmp eq ptr %i.rg, null
  br i1 %.not.i.i.i362, label %bb.ct, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i363

bb.ct:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254
  invoke void @_ZSt16__throw_bad_castv() #24
          to label %.noexc367 unwind label %.loopexit.split-lp387.loopexit.split-lp.loopexit.split-lp

.noexc367:                                        ; preds = %bb.ct
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i363: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 56
  %i.ri = load i8, ptr %i.rh, align 8, !tbaa !77
  %.not.i1.i.i364 = icmp eq i8 %i.ri, 0
  br i1 %.not.i1.i.i364, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i363
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rg, i64 67
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !48
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i365

bb.cv:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i363
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.rg)
          to label %.noexc368 unwind label %.loopexit.split-lp387.loopexit.split-lp.loopexit.split-lp

.noexc368:                                        ; preds = %bb.cv
  %i.rl = load ptr, ptr %i.rg, align 8, !tbaa !25
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 48
  %i.rn = load ptr, ptr %i.rm, align 8
  %i.ro = invoke noundef signext i8 %i.rn(ptr noundef nonnull align 8 dereferenceable(570) %i.rg, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i365 unwind label %.loopexit.split-lp387.loopexit.split-lp.loopexit.split-lp, !inline_history !0

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i365: ; preds = %.noexc368, %bb.cu
  %.0.i.i.i366 = phi i8 [ %i.rk, %bb.cu ], [ %i.ro, %.noexc368 ]
  %i.rp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %23, i8 noundef signext %.0.i.i.i366)
          to label %.noexc370 unwind label %.loopexit.split-lp387.loopexit.split-lp.loopexit.split-lp

.noexc370:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i365
  %i.rq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.rp)
          to label %_ZNSolsEPFRSoS_E.exit256 unwind label %.loopexit.split-lp387.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit256:                         ; preds = %.noexc370
  %i.rr = load ptr, ptr %i.dd, align 8, !tbaa !42
  call void @llvm.experimental.noalias.scope.decl(metadata !965)
  call void @llvm.experimental.noalias.scope.decl(metadata !966)
  store ptr %i.gh, ptr %24, align 8, !tbaa !45, !alias.scope !967
  store i64 0, ptr %i.gi, align 8, !tbaa !47, !alias.scope !967
  store i8 0, ptr %i.gh, align 8, !tbaa !48, !alias.scope !967
  %i.rs = load ptr, ptr %i.gj, align 8, !tbaa !79, !noalias !967 ; 3 uses
  %.not.i.not.i.i257 = icmp eq ptr %i.rs, null
  %i.rt = load ptr, ptr %i.gk, align 8, !noalias !967 ; 2 uses
  %i.ru = icmp ugt ptr %i.rs, %i.rt
  %.08.i.i.i258 = select i1 %i.ru, ptr %i.rs, ptr %i.rt ; 2 uses
  %.not5.i.i259 = icmp eq ptr %.08.i.i.i258, null
  %.not.i.i260 = select i1 %.not.i.not.i.i257, i1 true, i1 %.not5.i.i259
  br i1 %.not.i.i260, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %_ZNSolsEPFRSoS_E.exit256
  %i.rv = load ptr, ptr %i.gl, align 8, !tbaa !80, !noalias !967 ; 2 uses
  %i.rw = ptrtoint ptr %.08.i.i.i258 to i64
  %i.rx = ptrtoint ptr %i.rv to i64
  %i.ry = sub i64 %i.rw, %i.rx
  %i.rz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %24, i64 noundef 0, i64 noundef 0, ptr noundef %i.rv, i64 noundef %i.ry)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit266 unwind label %bb.cx ; 0 uses

bb.cx:                                            ; preds = %bb.cy, %bb.cw
  %i.sa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sb = load ptr, ptr %24, align 8, !tbaa !55, !alias.scope !967 ; 2 uses
  %i.sc = icmp eq ptr %i.sb, %i.gh
  br i1 %i.sc, label %.body264, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i261: ; preds = %bb.cx
  %i.sd = load i64, ptr %i.gh, align 8, !tbaa !48, !alias.scope !967
  %i.se = add i64 %i.sd, 1
  call void @_ZdlPvm(ptr noundef %i.sb, i64 noundef %i.se) #23
  br label %.body264

bb.cy:                                            ; preds = %_ZNSolsEPFRSoS_E.exit256
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %i.gm)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit266 unwind label %bb.cx

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit266: ; preds = %bb.cy, %bb.cw
  invoke void @_ZN7cmCTest3LogENS_7LogTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(8) %i.rr, i32 noundef 7, ptr noundef nonnull align 8 %24, i1 noundef zeroext false)
          to label %bb.cz unwind label %bb.db

bb.cz:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit266
  %i.sf = load ptr, ptr %24, align 8, !tbaa !55   ; 2 uses
  %i.sg = icmp eq ptr %i.sf, %i.gh
  br i1 %i.sg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267: ; preds = %bb.cz
  %i.sh = load i64, ptr %i.gh, align 8, !tbaa !48
  %i.si = add i64 %i.sh, 1
  call void @_ZdlPvm(ptr noundef %i.sf, i64 noundef %i.si) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269: ; preds = %bb.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267
  store ptr %i.fb, ptr %23, align 8, !tbaa !25
  %i.sj = load i64, ptr %i.fd, align 8
  %i.sk = getelementptr inbounds i8, ptr %23, i64 %i.sj
  store ptr %i.fc, ptr %i.sk, align 8, !tbaa !25
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.gn, align 8, !tbaa !25
  %i.sl = load ptr, ptr %i.gm, align 8, !tbaa !55 ; 2 uses
  %i.sm = icmp eq ptr %i.sl, %i.go
  br i1 %i.sm, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i270: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269
  %i.sn = load i64, ptr %i.go, align 8, !tbaa !48
  %i.so = add i64 %i.sn, 1
  call void @_ZdlPvm(ptr noundef %i.sl, i64 noundef %i.so) #23
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit272

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit272: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i270
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.gn, align 8, !tbaa !25
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gp) #22
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.gq) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %.preheader

bb.da:                                            ; preds = %bb.cr
  %i.sp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

.loopexit.split-lp387.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc370, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i365, %.noexc368, %bb.cv, %bb.cs, %bb.ct
  %lpad.loopexit.split-lp752 = landingpad { ptr, i32 }
          cleanup
  br label %.body264

bb.db:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit266
  %i.sq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sr = load ptr, ptr %24, align 8, !tbaa !55   ; 2 uses
  %i.ss = icmp eq ptr %i.sr, %i.gh
  br i1 %i.ss, label %.body264, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273: ; preds = %bb.db
  %i.st = load i64, ptr %i.gh, align 8, !tbaa !48
  %i.su = add i64 %i.st, 1
  call void @_ZdlPvm(ptr noundef %i.sr, i64 noundef %i.su) #23
  br label %.body264

.body264:                                         ; preds = %bb.db, %bb.cx, %.loopexit.split-lp387.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i261
  %.pn82 = phi { ptr, i32 } [ %lpad.loopexit.split-lp752, %.loopexit.split-lp387.loopexit.split-lp.loopexit.split-lp ], [ %i.sq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273 ], [ %i.sa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i261 ], [ %i.sa, %bb.cx ], [ %i.sq, %bb.db ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %23) #22
  br label %bb.dc

bb.dc:                                            ; preds = %.body264, %bb.da
  %.pn82.pn = phi { ptr, i32 } [ %.pn82, %.body264 ], [ %i.sp, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %.loopexit.split-lp

.preheader:                                       ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit272, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252, %bb.cq, %bb.cp, %.preheader382
  %.0378 = phi i32 [ %i.qr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252 ], [ 0, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit272 ], [ 0, %bb.cq ], [ 0, %bb.cp ], [ 0, %.preheader382 ] ; 2 uses
  %i.sv = load ptr, ptr %i.qg, align 8, !tbaa !124 ; 2 uses
  %i.sw = load ptr, ptr %i.lp, align 8, !tbaa !102 ; 3 uses
  %i.sx = ptrtoint ptr %i.sv to i64
  %i.sy = ptrtoint ptr %i.sw to i64               ; 2 uses
  %i.sz = sub i64 %i.sx, %i.sy                    ; 2 uses
  %i.ta = ashr exact i64 %i.sz, 2                 ; 2 uses
  %.not591 = icmp ugt i64 %i.ta, %i.qj
  br i1 %.not591, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.pre603 = load ptr, ptr %i.qh, align 8, !tbaa !101
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.tb = phi ptr [ %i.tw, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.sw, %.lr.ph.preheader ] ; 4 uses
  %i.tc = phi ptr [ %i.ty, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %.pre603, %.lr.ph.preheader ] ; 2 uses
  %i.td = phi i64 [ %i.uc, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.ta, %.lr.ph.preheader ] ; 3 uses
  %i.te = phi i64 [ %i.ub, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.sz, %.lr.ph.preheader ] ; 4 uses
  %i.tf = phi i64 [ %i.ua, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.sy, %.lr.ph.preheader ]
  %i.tg = phi ptr [ %i.tx, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.sv, %.lr.ph.preheader ] ; 3 uses
  %.not.i.i276 = icmp eq ptr %i.tg, %i.tc
  br i1 %.not.i.i276, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %.lr.ph
  store i32 -1, ptr %i.tg, align 4, !tbaa !123
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 4 ; 2 uses
  store ptr %i.th, ptr %i.qg, align 8, !tbaa !124
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.de:                                            ; preds = %.lr.ph
  %i.ti = icmp eq i64 %i.te, 9223372036854775804
  br i1 %i.ti, label %bb.df, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.df:                                            ; preds = %bb.de
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.282) #24
          to label %.noexc278 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc278:                                        ; preds = %bb.df
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.de
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.td, i64 1)
  %i.tj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.td ; 2 uses
  %i.tk = icmp ult i64 %i.tj, %i.td
  %i.tl = call i64 @llvm.umin.i64(i64 %i.tj, i64 2305843009213693951)
  %i.tm = select i1 %i.tk, i64 2305843009213693951, i64 %i.tl ; 3 uses
  %.not.i.i.i.i277 = icmp ne i64 %i.tm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i277)
  %i.tn = shl nuw nsw i64 %i.tm, 2
  %i.to = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tn) #27
          to label %.noexc279 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc279:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.tp = getelementptr inbounds i8, ptr %i.to, i64 %i.te ; 2 uses
  store i32 -1, ptr %i.tp, align 4, !tbaa !123
  %i.tq = icmp sgt i64 %i.te, 0
  br i1 %i.tq, label %bb.dg, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.dg:                                            ; preds = %.noexc279
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.to, ptr align 4 %i.tb, i64 %i.te, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.dg, %.noexc279
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tp, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.tb, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.dh

bb.dh:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.ts = load ptr, ptr %i.qh, align 8, !tbaa !101
  %i.tt = ptrtoint ptr %i.ts to i64
  %i.tu = sub i64 %i.tt, %i.tf
  call void @_ZdlPvm(ptr noundef nonnull %i.tb, i64 noundef %i.tu) #23
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.dh, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.to, ptr %i.lp, align 8, !tbaa !102
  store ptr %i.tr, ptr %i.qg, align 8, !tbaa !124
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %i.tm ; 2 uses
  store ptr %i.tv, ptr %i.qh, align 8, !tbaa !101
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.dd
  %i.tw = phi ptr [ %i.to, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.tb, %bb.dd ] ; 3 uses
  %i.tx = phi ptr [ %i.tr, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.th, %bb.dd ] ; 2 uses
  %i.ty = phi ptr [ %i.tv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.tc, %bb.dd ]
  %i.tz = ptrtoint ptr %i.tx to i64
  %i.ua = ptrtoint ptr %i.tw to i64               ; 2 uses
  %i.ub = sub i64 %i.tz, %i.ua                    ; 2 uses
  %i.uc = ashr exact i64 %i.ub, 2                 ; 2 uses
  %.not = icmp ugt i64 %i.uc, %i.qj
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !942

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i, %.backedge, %bb.df
  %lpad.loopexit.split-lp749 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %.preheader
  %.lcssa = phi ptr [ %i.sw, %.preheader ], [ %i.tw, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ]
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %.lcssa, i64 %i.qj ; 3 uses
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !123 ; 2 uses
  %i.uf = icmp slt i32 %i.ue, 0
  %i.ug = icmp sgt i32 %.0378, -1
  %or.cond = select i1 %i.uf, i1 %i.ug, i1 false
  br i1 %or.cond, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %._crit_edge
  store i32 0, ptr %i.ud, align 4, !tbaa !123
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %._crit_edge
  %i.uh = phi i32 [ 0, %bb.di ], [ %i.ue, %._crit_edge ]
  %i.ui = add nsw i32 %i.uh, %.0378
  store i32 %i.ui, ptr %i.ud, align 4, !tbaa !123
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.dj, %bb.cn
  br label %.backedge, !llvm.loop !943

bb.dk:                                            ; preds = %bb.cm
  %i.uj = load ptr, ptr %21, align 8, !tbaa !55   ; 2 uses
  %i.uk = icmp eq ptr %i.uj, %i.gd
  br i1 %i.uk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280: ; preds = %bb.dk
  %i.ul = load i64, ptr %i.gd, align 8, !tbaa !48
  %i.um = add i64 %i.ul, 1
  call void @_ZdlPvm(ptr noundef %i.uj, i64 noundef %i.um) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282: ; preds = %bb.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.dl

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dc
  %.pn85.pn = phi { ptr, i32 } [ %.pn82.pn, %bb.dc ], [ %lpad.loopexit.split-lp749, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.un = load ptr, ptr %21, align 8, !tbaa !55   ; 2 uses
  %i.uo = icmp eq ptr %i.un, %i.gd
  br i1 %i.uo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283: ; preds = %.loopexit.split-lp
  %i.up = load i64, ptr %i.gd, align 8, !tbaa !48
  %i.uq = add i64 %i.up, 1
  call void @_ZdlPvm(ptr noundef %i.un, i64 noundef %i.uq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.dn

bb.dl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit239
  %i.ur = add nsw i32 %.039594, 1
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.us = load ptr, ptr %13, align 8, !tbaa !55   ; 2 uses
  %i.ut = icmp eq ptr %i.us, %i.gr
  br i1 %i.ut, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286: ; preds = %bb.dl
  %i.uu = load i64, ptr %i.gr, align 8, !tbaa !48
  %i.uv = add i64 %i.uu, 1
  call void @_ZdlPvm(ptr noundef %i.us, i64 noundef %i.uv) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288: ; preds = %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.dm

bb.dm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit170
  %.1 = phi i32 [ %.039594, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit170 ], [ %i.ur, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288 ] ; 3 uses
  %i.uw = load ptr, ptr %10, align 8, !tbaa !55   ; 2 uses
  %i.ux = icmp eq ptr %i.uw, %i.hc
  br i1 %i.ux, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289: ; preds = %bb.dm
  %i.uy = load i64, ptr %i.hc, align 8, !tbaa !48
  %i.uz = add i64 %i.uy, 1
  call void @_ZdlPvm(ptr noundef %i.uw, i64 noundef %i.uz) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291: ; preds = %bb.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.va = getelementptr inbounds nuw i8, ptr %.sroa.0374.0593, i64 32 ; 2 uses
  %.not380 = icmp eq ptr %i.va, %i.ak
  br i1 %.not380, label %._crit_edge597, label %bb.ai

bb.dn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, %bb.cl
  %.pn88.pn.pn = phi { ptr, i32 } [ %.pn88.pn, %bb.cl ], [ %.pn85.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285 ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %18) #22
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.ci
  %.pn88.pn.pn.pn = phi { ptr, i32 } [ %.pn88.pn.pn, %bb.dn ], [ %i.pz, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.dp

bb.dp:                                            ; preds = %bb.ce, %bb.ch, %bb.do, %bb.cd
  %.pn88.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn76.pn, %bb.cd ], [ %.pn88.pn.pn.pn, %bb.do ], [ %.pn79.pn, %bb.ch ], [ %i.ps, %bb.ce ] ; 2 uses
  %i.vb = load ptr, ptr %13, align 8, !tbaa !55   ; 2 uses
  %i.vc = icmp eq ptr %i.vb, %i.gr
  br i1 %i.vc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292: ; preds = %bb.dp
  %i.vd = load i64, ptr %i.gr, align 8, !tbaa !48
  %i.ve = add i64 %i.vd, 1
  call void @_ZdlPvm(ptr noundef %i.vb, i64 noundef %i.ve) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294: ; preds = %bb.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292, %bb.ca
  %.pn88.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pl, %bb.ca ], [ %.pn88.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292 ], [ %.pn88.pn.pn.pn.pn.pn, %bb.dp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.dq

bb.dq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, %bb.aw
  %.pn96.pn.pn = phi { ptr, i32 } [ %.pn96.pn, %bb.aw ], [ %.pn88.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294 ] ; 2 uses
  %i.vf = load ptr, ptr %10, align 8, !tbaa !55   ; 2 uses
  %i.vg = icmp eq ptr %i.vf, %i.hc
  br i1 %i.vg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295: ; preds = %bb.dq
  %i.vh = load i64, ptr %i.hc, align 8, !tbaa !48
  %i.vi = add i64 %i.vh, 1
  call void @_ZdlPvm(ptr noundef %i.vf, i64 noundef %i.vi) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295, %bb.at
  %.pn96.pn.pn.pn = phi { ptr, i32 } [ %i.jo, %bb.at ], [ %.pn96.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295 ], [ %.pn96.pn.pn, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.dr

bb.dr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, %bb.ah
  %.pn96.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn96.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297 ], [ %i.hs, %bb.ah ] ; 2 uses
  %i.vj = load ptr, ptr %9, align 8, !tbaa !55    ; 2 uses
  %i.vk = icmp eq ptr %i.vj, %i.ed
  br i1 %i.vk, label %.body138, label %.body138.sink.split

.body138.sink.split:                              ; preds = %bb.dr, %bb.ae
  %.sink = phi ptr [ %i.ep, %bb.ae ], [ %i.vj, %bb.dr ]
  %.pn96.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.eo, %bb.ae ], [ %.pn96.pn.pn.pn.pn, %bb.dr ]
  %i.vl = load i64, ptr %i.ed, align 8, !tbaa !48
  %i.vm = add i64 %i.vl, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.vm) #23
  br label %.body138

.body138:                                         ; preds = %.body138.sink.split, %bb.dr, %bb.ae
  %.pn96.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.eo, %bb.ae ], [ %.pn96.pn.pn.pn.pn, %bb.dr ], [ %.pn96.pn.pn.pn.pn.pn.ph, %.body138.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.vn = load ptr, ptr %7, align 8, !tbaa !55    ; 2 uses
  %i.vo = icmp eq ptr %i.vn, %i.dk
  br i1 %i.vo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301: ; preds = %.body138
  %i.vp = load i64, ptr %i.dk, align 8, !tbaa !48
  %i.vq = add i64 %i.vp, 1
  call void @_ZdlPvm(ptr noundef %i.vn, i64 noundef %i.vq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303: ; preds = %.body138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %.pn96.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %.pn96.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301 ], [ %.pn96.pn.pn.pn.pn.pn, %.body138 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.dt

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i145: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %.pre604 = load ptr, ptr %4, align 8, !tbaa !133 ; 4 uses
  %.pre605 = load ptr, ptr %i.ah, align 8, !tbaa !131 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre604, %.pre605
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i145, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.vw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.pre604, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i145 ] ; 3 uses
  %i.vr = load ptr, ptr %.05.i.i.i, align 8, !tbaa !55 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.vt = icmp eq ptr %i.vr, %i.vs
  br i1 %i.vt, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.vu = load i64, ptr %i.vs, align 8, !tbaa !48
  %i.vv = add i64 %i.vu, 1
  call void @_ZdlPvm(ptr noundef %i.vr, i64 noundef %i.vv) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.vw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i304 = icmp eq ptr %i.vw, %.pre605
  br i1 %.not.i.i.i304, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %.thread716, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i145
  %.040721 = phi i32 [ 0, %.thread716 ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i145 ], [ %.1, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ]
  %.pr.i720 = phi ptr [ %i.ag, %.thread716 ], [ %.pre604, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i145 ], [ %.pre604, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %.pr.i720, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ds

bb.ds:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.vx = load ptr, ptr %i.aj, align 8, !tbaa !132
  %i.vy = ptrtoint ptr %i.vx to i64
  %i.vz = ptrtoint ptr %.pr.i720 to i64
  %i.wa = sub i64 %i.vy, %i.vz
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i720, i64 noundef %i.wa) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.wb = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %i.wc = icmp eq ptr %i.wb, %i.g
  br i1 %i.wc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.wd = load i64, ptr %i.g, align 8, !tbaa !48
  %i.we = add i64 %i.wd, 1
  call void @_ZdlPvm(ptr noundef %i.wb, i64 noundef %i.we) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @_ZN5cmsys4GlobD1Ev(ptr noundef nonnull align 8 dead_on_return(82) dereferenceable(82) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i32 %.040721

end_hunk_0
