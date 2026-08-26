Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/filtered_re2_test?download=true
inline.NumInlined: 831
inline.NumDeleted: 228
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3re225FilteredRE2TestMatchTestsEv:bb.a
  br i1 %.not.i.i.i.i222, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i223, label %bb.co

bb.co:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !23
  %i.pi = ptrtoint ptr %i.ph to i64
  %i.pj = ptrtoint ptr %i.pf to i64
  %i.pk = sub i64 %i.pi, %i.pj
  call void @_ZdlPvm(ptr noundef nonnull %i.pf, i64 noundef %i.pk) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i223

_ZNSt6vectorIiSaIiEED2Ev.exit.i223:               ; preds = %bb.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221
  %i.pl = load ptr, ptr %i.c, align 8, !tbaa !19  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.pl, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i223
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !23
  %i.po = ptrtoint ptr %i.pn to i64
  %i.pp = ptrtoint ptr %i.pl to i64
  %i.pq = sub i64 %i.po, %i.pp
  call void @_ZdlPvm(ptr noundef nonnull %i.pl, i64 noundef %i.pq) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i

_ZNSt6vectorIiSaIiEED2Ev.exit2.i:                 ; preds = %bb.cp, %_ZNSt6vectorIiSaIiEED2Ev.exit.i223
  %i.pr = load ptr, ptr %1, align 8, !tbaa !27    ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !24 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.pr, %i.pt
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i228, label %.lr.ph.i.i.i.i224

.lr.ph.i.i.i.i224:                                ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i227
  %.05.i.i.i.i225 = phi ptr [ %i.pz, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i227 ], [ %i.pr, %_ZNSt6vectorIiSaIiEED2Ev.exit2.i ] ; 3 uses
  %i.pu = load ptr, ptr %.05.i.i.i.i225, align 8, !tbaa !33 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i225, i64 16 ; 2 uses
  %i.pw = icmp eq ptr %i.pu, %i.pv
  br i1 %i.pw, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i226: ; preds = %.lr.ph.i.i.i.i224
  %i.px = load i64, ptr %i.pv, align 8, !tbaa !36
  %i.py = add i64 %i.px, 1
  call void @_ZdlPvm(ptr noundef %i.pu, i64 noundef %i.py) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i227

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i227: ; preds = %.lr.ph.i.i.i.i224, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i226
  %i.pz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i225, i64 32 ; 2 uses
  %.not.i.i.i3.i = icmp eq ptr %i.pz, %i.pt
  br i1 %.not.i.i.i3.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i224, !llvm.loop !37

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i227
  %.pr.i.i = load ptr, ptr %1, align 8, !tbaa !27
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i228

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i228: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.qa = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.pr, %_ZNSt6vectorIiSaIiEED2Ev.exit2.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.qa, null
  br i1 %.not.i.i1.i.i, label %_ZN3re214FilterTestVarsD2Ev.exit, label %bb.cq

bb.cq:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i228
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !39
  %i.qd = ptrtoint ptr %i.qc to i64
  %i.qe = ptrtoint ptr %i.qa to i64
  %i.qf = sub i64 %i.qd, %i.qe
  call void @_ZdlPvm(ptr noundef nonnull %i.qa, i64 noundef %i.qf) #24
  br label %_ZN3re214FilterTestVarsD2Ev.exit

_ZN3re214FilterTestVarsD2Ev.exit:                 ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i228, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void

bb.cr:                                            ; preds = %bb.ci, %bb.cf, %bb.cd, %bb.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, %bb.au, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, %bb.an, %bb.z, %bb.w
  %.pn49.pn = phi { ptr, i32 } [ %.pn49, %bb.cd ], [ %i.ob, %bb.ci ], [ %i.ny, %bb.cf ], [ %.pn47, %bb.bu ], [ %i.gw, %bb.an ], [ %i.mk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ], [ %i.mf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199 ], [ %i.ma, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196 ], [ %i.lv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193 ], [ %i.hp, %bb.au ], [ %i.hm, %bb.ar ], [ %i.hh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127 ], [ %i.hc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124 ], [ %i.gx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121 ], [ %i.ei, %bb.z ], [ %i.ef, %bb.w ]
  %i.qg = load ptr, ptr %8, align 8, !tbaa !19    ; 3 uses
  %.not.i.i.i230 = icmp eq ptr %i.qg, null
  br i1 %.not.i.i.i230, label %_ZNSt6vectorIiSaIiEED2Ev.exit231, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.qh = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !23
  %i.qj = ptrtoint ptr %i.qi to i64
  %i.qk = ptrtoint ptr %i.qg to i64
  %i.ql = sub i64 %i.qj, %i.qk
  call void @_ZdlPvm(ptr noundef nonnull %i.qg, i64 noundef %i.ql) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit231

_ZNSt6vectorIiSaIiEED2Ev.exit231:                 ; preds = %bb.cr, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.ct

bb.ct:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit231, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %.pn49.pn.pn = phi { ptr, i32 } [ %.pn49.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit231 ], [ %i.ee, %bb.v ], [ %i.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.qm = load ptr, ptr %5, align 8, !tbaa !19    ; 3 uses
  %.not.i.i.i232 = icmp eq ptr %i.qm, null
  br i1 %.not.i.i.i232, label %_ZNSt6vectorIiSaIiEED2Ev.exit233, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.qn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !23
  %i.qp = ptrtoint ptr %i.qo to i64
  %i.qq = ptrtoint ptr %i.qm to i64
  %i.qr = sub i64 %i.qp, %i.qq
  call void @_ZdlPvm(ptr noundef nonnull %i.qm, i64 noundef %i.qr) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit233

_ZNSt6vectorIiSaIiEED2Ev.exit233:                 ; preds = %bb.ct, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.qs = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.qt = icmp eq ptr %i.qs, %i.dd
  br i1 %i.qt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit233
  %i.qu = load i64, ptr %i.dd, align 8, !tbaa !36
  %i.qv = add i64 %i.qu, 1
  call void @_ZdlPvm(ptr noundef %i.qs, i64 noundef %i.qv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit233, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.cv

bb.cv:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, %bb.n, %bb.k
  %.pn49.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.be, %bb.k ], [ %i.bh, %bb.n ], [ %.pn49.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN3re214FilterTestVarsD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %common.resume
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3re240FilteredRE2TestEmptyStringInStringSetBugEv() #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %0 = alloca %"class.re2::StringPiece", align 8  ; 5 uses
  %1 = alloca %"struct.re2::FilterTestVars", align 8 ; 27 uses
  %2 = alloca %class.LogMessageFatal, align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %1, i8 0, i64 72, i1 false)
  store i32 1, ptr %i.c, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i8 0, ptr %i.d, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 77
  store i8 0, ptr %i.e, align 1, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 78
  store i8 1, ptr %i.f, align 2, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 8388608, ptr %i.g, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 0, ptr %i.h, align 8
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.i, align 4, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  invoke void @_ZN3re211FilteredRE2C1Ei(ptr noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef 0)
          to label %_ZN3re211StringPieceC2EPKc.exit.i.preheader unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !19   ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i3.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit4.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !23
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit4.i

common.resume:                                    ; preds = %.loopexit, %_ZNSt6vectorIiSaIiEED2Ev.exit4.i
  %common.resume.op = phi { ptr, i32 } [ %i.k, %_ZNSt6vectorIiSaIiEED2Ev.exit4.i ], [ %.pn, %.loopexit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIiSaIiEED2Ev.exit4.i:                 ; preds = %bb.d, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(136) %1) #23
  br label %common.resume

_ZN3re211StringPieceC2EPKc.exit.i.preheader:      ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  store ptr @.str.83, ptr %0, align 8, !tbaa !28
  store i64 19, ptr %i.y, align 8, !tbaa !31
  %i.z = invoke noundef i32 @_ZN3re211FilteredRE23AddERKNS_11StringPieceERKNS_3RE27OptionsEPi(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.a)
          to label %._crit_edge.i unwind label %.loopexit.split ; 0 uses

._crit_edge.i:                                    ; preds = %_ZN3re211StringPieceC2EPKc.exit.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  invoke void @_ZN3re211FilteredRE27CompileEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull %1)
          to label %_ZN3re220AddRegexpsAndCompileEPPKcmPNS_14FilterTestVarsE.exit unwind label %.loopexit.split-lp

_ZN3re220AddRegexpsAndCompileEPPKcmPNS_14FilterTestVarsE.exit: ; preds = %._crit_edge.i
  %i.aa = invoke noundef zeroext i1 @_ZN3re218CheckExpectedAtomsEPPKcmS1_PNS_14FilterTestVarsE(ptr noundef nonnull @__const._ZN3re240FilteredRE2TestEmptyStringInStringSetBugEv.atoms, i64 noundef 4, ptr noundef nonnull @.str.87, ptr noundef nonnull %1)
          to label %bb.e unwind label %.loopexit.split-lp

bb.e:                                             ; preds = %_ZN3re220AddRegexpsAndCompileEPPKcmPNS_14FilterTestVarsE.exit
  br i1 %i.aa, label %bb.j, label %bb.f

.loopexit.split:                                  ; preds = %_ZN3re211StringPieceC2EPKc.exit.i.preheader
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %_ZN3re220AddRegexpsAndCompileEPPKcmPNS_14FilterTestVarsE.exit, %._crit_edge.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %2, ptr noundef nonnull @.str.1, i32 noundef 292)
          to label %_ZN15LogMessageFatalC2EPKci.exit unwind label %bb.h

_ZN15LogMessageFatalC2EPKci.exit:                 ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.88)
          to label %bb.g unwind label %bb.i       ; 0 uses

bb.g:                                             ; preds = %_ZN15LogMessageFatalC2EPKci.exit
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %2) #25
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.loopexit

bb.i:                                             ; preds = %_ZN15LogMessageFatalC2EPKci.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %2) #25
  unreachable

bb.j:                                             ; preds = %bb.e
  call void @_ZN3re211FilteredRE2D1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.j) #23
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !19 ; 3 uses
  %.not.i.i.i.i4 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i4, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i5, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !23
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i5

_ZNSt6vectorIiSaIiEED2Ev.exit.i5:                 ; preds = %bb.k, %bb.j
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !19  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i5
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !23
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i

_ZNSt6vectorIiSaIiEED2Ev.exit2.i:                 ; preds = %bb.l, %_ZNSt6vectorIiSaIiEED2Ev.exit.i5
  %i.as = load ptr, ptr %1, align 8, !tbaa !27    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !24 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.as, %i.au
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ba, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.as, %_ZNSt6vectorIiSaIiEED2Ev.exit2.i ] ; 3 uses
  %i.av = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !33 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !36
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i3.i6 = icmp eq ptr %i.ba, %i.au
  br i1 %.not.i.i.i3.i6, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !37

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %1, align 8, !tbaa !27
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.bb = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.as, %_ZNSt6vectorIiSaIiEED2Ev.exit2.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i1.i.i, label %_ZN3re214FilterTestVarsD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !39
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bg) #24
  br label %_ZN3re214FilterTestVarsD2Ev.exit

_ZN3re214FilterTestVarsD2Ev.exit:                 ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void

.loopexit:                                        ; preds = %.loopexit.split-lp, %.loopexit.split, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.split ]
  call void @_ZN3re214FilterTestVarsD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3re228FilteredRE2TestMoveSemanticsEv() #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.re2::FilterTestVars", align 8 ; 30 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %1 = alloca %"class.re2::StringPiece", align 8  ; 6 uses
  %2 = alloca %class.LogMessageFatal, align 8     ; 6 uses
  %3 = alloca %class.LogMessageFatal, align 8     ; 6 uses
  %4 = alloca %class.LogMessageFatal, align 8     ; 6 uses
  %5 = alloca %"class.re2::StringPiece", align 8  ; 6 uses
  %6 = alloca %"class.std::vector.0", align 8     ; 12 uses
  %7 = alloca %class.LogMessageFatal, align 8     ; 6 uses
  %8 = alloca %class.LogMessageFatal, align 8     ; 6 uses
  %9 = alloca %"class.re2::StringPiece", align 8  ; 6 uses
  %10 = alloca %"class.std::vector.0", align 8    ; 12 uses
  %11 = alloca %class.LogMessageFatal, align 8    ; 6 uses
  %12 = alloca %"struct.re2::FilterTestVars", align 8 ; 26 uses
  %13 = alloca %"class.re2::StringPiece", align 8 ; 6 uses
  %14 = alloca %"class.std::vector.0", align 8    ; 12 uses
  %15 = alloca %class.LogMessageFatal, align 8    ; 6 uses
  %16 = alloca %class.LogMessageFatal, align 8    ; 6 uses
  %17 = alloca %"class.re2::StringPiece", align 8 ; 6 uses
  %18 = alloca %"class.std::vector.0", align 8    ; 12 uses
  %19 = alloca %class.LogMessageFatal, align 8    ; 6 uses
  %20 = alloca %"class.re2::StringPiece", align 8 ; 6 uses
  %21 = alloca %class.LogMessageFatal, align 8    ; 6 uses
  %22 = alloca %class.LogMessageFatal, align 8    ; 6 uses
  %23 = alloca %class.LogMessageFatal, align 8    ; 6 uses
  %24 = alloca %"class.re2::StringPiece", align 8 ; 6 uses
  %25 = alloca %"class.std::vector.0", align 8    ; 12 uses
  %26 = alloca %class.LogMessageFatal, align 8    ; 6 uses
  %27 = alloca %"class.re2::StringPiece", align 8 ; 6 uses
  %28 = alloca %"class.std::vector.0", align 8    ; 12 uses
  %29 = alloca %class.LogMessageFatal, align 8    ; 6 uses
  %30 = alloca %class.LogMessageFatal, align 8    ; 6 uses
  %31 = alloca %"class.re2::StringPiece", align 8 ; 6 uses
  %32 = alloca %"class.std::vector.0", align 8    ; 12 uses
  %33 = alloca %class.LogMessageFatal, align 8    ; 6 uses
  %34 = alloca %class.LogMessageFatal, align 8    ; 6 uses
  %35 = alloca %"class.re2::StringPiece", align 8 ; 6 uses
  %36 = alloca %"class.std::vector.0", align 8    ; 12 uses
  %37 = alloca %class.LogMessageFatal, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 72, i1 false)
  store i32 1, ptr %i.c, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 0, ptr %i.d, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 77
  store i8 0, ptr %i.e, align 1, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 78
  store i8 1, ptr %i.f, align 2, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 8388608, ptr %i.g, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.h, align 8
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.i, align 4, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 14 uses
  invoke void @_ZN3re211FilteredRE2C1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %_ZN3re214FilterTestVarsC2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.c
end_hunk_0
