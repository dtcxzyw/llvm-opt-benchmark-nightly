Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3ParseImp?download=true
inline.NumInlined: 4375
inline.NumDeleted: 834
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN10V3ParseImp15createTimescaleEP8FileLinebdbd:bb.a
  %i.fs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.fp, i64 noundef %i.fr)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit105 unwind label %bb.bz ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit105: ; preds = %bb.bx
  %i.ft = load ptr, ptr %18, align 8, !tbaa !45   ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit105
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !46
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.cb

bb.by:                                            ; preds = %bb.bw
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

bb.bz:                                            ; preds = %bb.bx
  %i.fz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ga = load ptr, ptr %18, align 8, !tbaa !45   ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %bb.bz
  %i.gd = load i64, ptr %i.gb, align 8, !tbaa !46
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.ge) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109, %bb.by
  %.pn41 = phi { ptr, i32 } [ %i.fy, %bb.by ], [ %i.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109 ], [ %i.fz, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %bb.ca

bb.ca:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %bb.br
  %.pn41.pn = phi { ptr, i32 } [ %.pn41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111 ], [ %i.fa, %bb.br ], [ %.pn38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %.pn36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.cm

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %bb.bl
  %i.gf = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5) ; 0 uses
  %i.gg = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.gh = icmp eq i8 %i.gg, 0
  br i1 %i.gh, label %bb.cc, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit113, !prof !196

bb.cc:                                            ; preds = %bb.cb
  %i.gi = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #23
  %.not.i.i112 = icmp eq i32 %i.gi, 0
  br i1 %.not.i.i112, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit113, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.ce unwind label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.gj = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #23 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #23
  br label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit113

bb.cf:                                            ; preds = %bb.cd
  %i.gk = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #23
  br label %common.resume

_ZN7V3Error10v3errorStrB5cxx11Ev.exit113:         ; preds = %bb.cb, %bb.cc, %bb.ce
  %i.gl = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.82, ptr nonnull @.str.85, i32 481, ptr null) ; 2 uses
  %i.gm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gl, ptr noundef nonnull @.str.16, i64 noundef 27) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  %i.gn = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.gn, ptr %19, align 8, !tbaa !167
  %i.go = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 0, ptr %i.go, align 8, !tbaa !154
  store i8 0, ptr %i.gn, align 8, !tbaa !46
  invoke void @_ZN8FileLine10v3errorEndERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKNS0_12basic_stringIcS3_S4_EE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.gl, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.cg unwind label %bb.ch

bb.cg:                                            ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit113
  %i.gp = load ptr, ptr %19, align 8, !tbaa !45   ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.gn
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %bb.cg
  %i.gr = load i64, ptr %i.gn, align 8, !tbaa !46
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gs) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %bb.ci

bb.ch:                                            ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit113
  %i.gt = landingpad { ptr, i32 }
          cleanup
  %i.gu = load ptr, ptr %19, align 8, !tbaa !45   ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.gn
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %bb.ch
  %i.gw = load i64, ptr %i.gn, align 8, !tbaa !46
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gx) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %bb.cm

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, %_ZN10VTimescaleC2EdRb.exit80, %bb.ar
  %i.gy = load ptr, ptr @v3Global, align 8, !tbaa !155
  call void @_ZN10AstNetlist18timeprecisionMergeEP8FileLineRK10VTimescale(ptr noundef nonnull align 8 dereferenceable(408) %i.gy, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %13)
  %i.gz = load i8, ptr %6, align 1, !tbaa !217
  %i.ha = icmp eq i8 %i.gz, 18
  br i1 %i.ha, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.hb = call i8 @_ZNK9V3Options15timeComputeUnitERK10VTimescale(ptr noundef nonnull align 8 dereferenceable(1728) getelementptr inbounds nuw (i8, ptr @v3Global, i64 192), ptr noundef nonnull align 1 dereferenceable(1) %6)
  store i8 %i.hb, ptr %6, align 1, !tbaa !218
  %i.hc = call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #25 ; 6 uses
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.hc, i16 51, ptr noundef %1)
          to label %_ZN9AstPragmaC2EP8FileLineRK10VTimescale.exit unwind label %bb.ck

_ZN9AstPragmaC2EP8FileLineRK10VTimescale.exit:    ; preds = %bb.cj
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV9AstPragma, i64 16), ptr %i.hc, align 8, !tbaa !192
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 152
  store i8 8, ptr %i.hd, align 8, !tbaa !400
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 153
  %i.hf = load i8, ptr %6, align 1, !tbaa !218
  store i8 %i.hf, ptr %i.he, align 1, !tbaa !218
  br label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.hc, i64 noundef 160) #22
  br label %bb.cm

bb.cl:                                            ; preds = %_ZN9AstPragmaC2EP8FileLineRK10VTimescale.exit, %bb.ci
  %.0 = phi ptr [ null, %bb.ci ], [ %i.hc, %_ZN9AstPragmaC2EP8FileLineRK10VTimescale.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret ptr %.0

bb.cm:                                            ; preds = %bb.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %bb.ck
  %.pn47 = phi { ptr, i32 } [ %i.hg, %bb.ck ], [ %i.gt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ], [ %.pn41.pn, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.cn

bb.cn:                                            ; preds = %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %bb.cm
  %.pn47.pn = phi { ptr, i32 } [ %.pn47, %bb.cm ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %.pn30.pn, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %common.resume
}

declare void @_ZN10AstNetlist18timeprecisionMergeEP8FileLineRK10VTimescale(ptr noundef nonnull align 8 dereferenceable(408), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10V3ParseImp23lexVerilatorCmtLintSaveEPK8FileLine(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef %1) #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !220  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !401
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -48
  %.not.i = icmp eq ptr %i.b, %i.e
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load <2 x i16>, ptr %1, align 8, !tbaa !212
  store <2 x i16> %i.f, ptr %i.b, align 8, !tbaa !212
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 1                          ; 2 uses
  %i.k = load i32, ptr %i.g, align 4
  %i.l = and i32 %i.k, -2
  %i.m = or disjoint i32 %i.l, %i.j
  store i32 %i.m, ptr %i.g, align 4
  %i.n = load i32, ptr %i.h, align 4
  %i.o = and i32 %i.n, -2
  %i.p = or disjoint i32 %i.o, %i.j
  store i32 %i.p, ptr %i.g, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load <2 x i32>, ptr %i.r, align 8, !tbaa !204
  store <2 x i32> %i.s, ptr %i.q, align 8, !tbaa !204
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8
  %i.w = and i64 %i.v, 16777215
  %i.x = load i64, ptr %i.t, align 8
  %i.y = and i64 %i.x, -16777216
  %i.z = or disjoint i64 %i.y, %i.w               ; 2 uses
  store i64 %i.z, ptr %i.t, align 8
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 16777215
  %5 = zext nneg i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 32
  %i.aa = and i64 %i.z, -72057589742960641
  %i.ab = or disjoint i64 %6, %i.aa
  store i64 %i.ab, ptr %i.t, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !213
  store i16 %i.ae, ptr %i.ac, align 8, !tbaa !213
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ah = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !47
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !214 ; 2 uses
  store <2 x ptr> %i.ah, ptr %i.af, align 8, !tbaa !47
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %_ZN8FileLineC2ERKS_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = atomicrmw add ptr %i.aj, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN8FileLineC2ERKS_.exit.i

_ZN8FileLineC2ERKS_.exit.i:                       ; preds = %bb.c, %bb.b
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !220
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store ptr %i.am, ptr %i.a, align 8, !tbaa !220
  br label %_ZNSt5dequeI8FileLineSaIS0_EE9push_backERKS0_.exit

bb.d:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @_ZNSt5dequeI8FileLineSaIS0_EE16_M_push_back_auxIJRKS0_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.an, ptr noundef nonnull align 8 dereferenceable(48) %1)
  br label %_ZNSt5dequeI8FileLineSaIS0_EE9push_backERKS0_.exit

_ZNSt5dequeI8FileLineSaIS0_EE9push_backERKS0_.exit: ; preds = %_ZN8FileLineC2ERKS_.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10V3ParseImp26lexVerilatorCmtLintRestoreEP8FileLine(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(552) %0, ptr noundef %1) #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !221  ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !221
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5) ; 0 uses
  %i.g = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit, !prof !196

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #23
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #23 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #23
  br label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #23
  br label %common.resume

_ZN7V3Error10v3errorStrB5cxx11Ev.exit:            ; preds = %bb.b, %bb.c, %bb.e
  %i.l = tail call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.82, ptr nonnull @.str.85, i32 481, ptr null) ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.17, i64 noundef 48) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.n, ptr %2, align 8, !tbaa !167
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !154
  store i8 0, ptr %i.n, align 8, !tbaa !46
  invoke void @_ZN8FileLine10v3errorEndERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKNS0_12basic_stringIcS3_S4_EE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit
  %i.p = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.n
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.r = load i64, ptr %i.n, align 8, !tbaa !46
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.l

bb.h:                                             ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.n
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.h
  %i.w = load i64, ptr %i.n, align 8, !tbaa !46
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %common.resume

bb.i:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !222, !noalias !404 ; 2 uses
  %i.aa = icmp eq ptr %i.c, %i.z
  br i1 %i.aa, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.c, i64 -48 ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !223
  store i16 %i.ac, ptr %1, align 8, !tbaa !223
  br label %_ZNSt5dequeI8FileLineSaIS0_EE8pop_backEv.exit

bb.k:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !224, !noalias !404
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !83
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 432
  %i.ai = load i16, ptr %i.ah, align 8, !tbaa !223
  store i16 %i.ai, ptr %1, align 8, !tbaa !223
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef 480) #22
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !89
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -8 ; 2 uses
  store ptr %i.ak, ptr %i.ad, align 8, !tbaa !224
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !83 ; 3 uses
  store ptr %i.al, ptr %i.y, align 8, !tbaa !222
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 480
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %i.am, ptr %i.an, align 8, !tbaa !225
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 432
  br label %_ZNSt5dequeI8FileLineSaIS0_EE8pop_backEv.exit

_ZNSt5dequeI8FileLineSaIS0_EE8pop_backEv.exit:    ; preds = %bb.j, %bb.k
  %.sink2.i = phi ptr [ %i.ao, %bb.k ], [ %i.ab, %bb.j ] ; 2 uses
  store ptr %.sink2.i, ptr %i.a, align 8, !tbaa !220
  tail call void @_ZN8FileLineD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.sink2.i) #23
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt5dequeI8FileLineSaIS0_EE8pop_backEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10V3ParseImp19lexVerilatorCmtLintEP8FileLinePKcb(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = load i8, ptr %2, align 1, !tbaa !46      ; 2 uses
  %.not85 = icmp eq i8 %i.b, 0
  br i1 %.not85, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.c = phi i8 [ %i.g, %bb.b ], [ %i.b, %bb.a ]  ; 2 uses
  %.03186 = phi ptr [ %i.f, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %i.d = sext i8 %i.c to i32
  %i.e = tail call i32 @isspace(i32 noundef %i.d) #27
  %.not40 = icmp eq i32 %i.e, 0
  br i1 %.not40, label %bb.b, label %.lr.ph91

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.03186, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !46    ; 2 uses
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !405

.lr.ph91:                                         ; preds = %.lr.ph, %bb.c
  %i.h = phi i8 [ %i.l, %bb.c ], [ %i.c, %.lr.ph ] ; 2 uses
  %.13290 = phi ptr [ %i.k, %bb.c ], [ %.03186, %.lr.ph ] ; 2 uses
  %i.i = sext i8 %i.h to i32
  %i.j = tail call i32 @isspace(i32 noundef %i.i) #27
  %.not42 = icmp eq i32 %i.j, 0
  br i1 %.not42, label %.lr.ph97, label %bb.c

bb.c:                                             ; preds = %.lr.ph91
  %i.k = getelementptr inbounds nuw i8, ptr %.13290, i64 1 ; 3 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !46    ; 2 uses
  %.not41 = icmp eq i8 %i.l, 0
  br i1 %.not41, label %._crit_edge, label %.lr.ph91, !llvm.loop !406

.lr.ph97:                                         ; preds = %.lr.ph91, %bb.d
end_hunk_0
begin_hunk_1_@_ZNK6VNType5asciiEv:bb.a
  %i.b = zext i16 %i.a to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !195
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI8FileLineSaIS0_EE19_M_destroy_data_auxESt15_Deque_iteratorIS0_RS0_PS0_ES6_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !224  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.021 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !224  ; 2 uses
  %i.e = icmp ult ptr %.021, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !224
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.f = phi ptr [ %i.b, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
  %.lcssa = phi ptr [ %i.d, %bb.a ], [ %i.i, %._crit_edge.loopexit ]
  %.not = icmp eq ptr %i.f, %.lcssa
  %i.g = load ptr, ptr %1, align 8, !tbaa !221    ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.022 = phi ptr [ %.0, %.lr.ph ], [ %.021, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %.022, align 8, !tbaa !83  ; 10 uses
  tail call void @_ZN8FileLineD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.h) #23
  %.05.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  tail call void @_ZN8FileLineD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.05.i.i.ptr.1) #23
  %.05.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  tail call void @_ZN8FileLineD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.05.i.i.ptr.2) #23
  %.05.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  tail call void @_ZN8FileLineD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.05.i.i.ptr.3) #23
  %.05.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  tail call void @_ZN8FileLineD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.05.i.i.ptr.4) #23
  %.05.i.i.ptr.5 = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  tail call void @_ZN8FileLineD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.05.i.i.ptr.5) #23
  %.05.i.i.ptr.6 = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  tail call void @_ZN8FileLineD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.05.i.i.ptr.6) #23
  %.05.i.i.ptr.7 = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  tail call void @_ZN8FileLineD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.05.i.i.ptr.7) #23
  %.05.i.i.ptr.8 = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  tail call void @_ZN8FileLineD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.05.i.i.ptr.8) #23
  %.05.i.i.ptr.9 = getelementptr inbounds nuw i8, ptr %i.h, i64 432
  tail call void @_ZN8FileLineD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.05.i.i.ptr.9) #23
  %.0 = getelementptr inbounds nuw i8, ptr %.022, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !224  ; 2 uses
  %i.j = icmp ult ptr %.0, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !743

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !225  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.g, %i.l
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP8FileLineEvT_S2_.exit9, label %.lr.ph.i.i6

.lr.ph.i.i6:                                      ; preds = %bb.b, %.lr.ph.i.i6
  %.05.i.i7 = phi ptr [ %i.m, %.lr.ph.i.i6 ], [ %i.g, %bb.b ] ; 2 uses
  tail call void @_ZN8FileLineD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.05.i.i7) #23
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i7, i64 48 ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.m, %i.l
  br i1 %.not.i.i8, label %_ZSt8_DestroyIP8FileLineEvT_S2_.exit9, label %.lr.ph.i.i6, !llvm.loop !744

_ZSt8_DestroyIP8FileLineEvT_S2_.exit9:            ; preds = %.lr.ph.i.i6, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !222  ; 2 uses
  %i.p = load ptr, ptr %2, align 8, !tbaa !221    ; 2 uses
  %.not4.i.i10 = icmp eq ptr %i.o, %i.p
  br i1 %.not4.i.i10, label %_ZSt8_DestroyIP8FileLineEvT_S2_.exit14, label %.lr.ph.i.i11

.lr.ph.i.i11:                                     ; preds = %_ZSt8_DestroyIP8FileLineEvT_S2_.exit9, %.lr.ph.i.i11
  %.05.i.i12 = phi ptr [ %i.q, %.lr.ph.i.i11 ], [ %i.o, %_ZSt8_DestroyIP8FileLineEvT_S2_.exit9 ] ; 2 uses
  tail call void @_ZN8FileLineD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.05.i.i12) #23
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i12, i64 48 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.q, %i.p
  br i1 %.not.i.i13, label %_ZSt8_DestroyIP8FileLineEvT_S2_.exit14, label %.lr.ph.i.i11, !llvm.loop !744

bb.c:                                             ; preds = %._crit_edge
  %i.r = load ptr, ptr %2, align 8, !tbaa !221    ; 2 uses
  %.not4.i.i15 = icmp eq ptr %i.g, %i.r
  br i1 %.not4.i.i15, label %_ZSt8_DestroyIP8FileLineEvT_S2_.exit14, label %.lr.ph.i.i16

.lr.ph.i.i16:                                     ; preds = %bb.c, %.lr.ph.i.i16
  %.05.i.i17 = phi ptr [ %i.s, %.lr.ph.i.i16 ], [ %i.g, %bb.c ] ; 2 uses
  tail call void @_ZN8FileLineD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.05.i.i17) #23
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i17, i64 48 ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i18, label %_ZSt8_DestroyIP8FileLineEvT_S2_.exit14, label %.lr.ph.i.i16, !llvm.loop !744

_ZSt8_DestroyIP8FileLineEvT_S2_.exit14:           ; preds = %.lr.ph.i.i11, %.lr.ph.i.i16, %bb.c, %_ZSt8_DestroyIP8FileLineEvT_S2_.exit9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode15unsafePrivateAsI8AstClassS_EEPT_PT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZeqRK6VNTypeNS_2enE(ptr noundef nonnull align 2 dereferenceable(2) %0, i16 noundef zeroext %1) #0 comdat {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !311
  %i.b = icmp eq i16 %i.a, %1
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode15unsafePrivateAsI11AstCaseItemS_EEPT_PT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI8FileLineSaIS0_EE16_M_push_back_auxIJRKS0_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !224  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !224
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = mul nsw i64 %i.l, 10
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !221
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !222
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 48
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !225
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !221
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 48
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 192153584101141162
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.296) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !90
  %i.ag = load ptr, ptr %0, align 8, !tbaa !87
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeI8FileLineSaIS0_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeI8FileLineSaIS0_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeI8FileLineSaIS0_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeI8FileLineSaIS0_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(480) ptr @_Znwm(i64 noundef 480) #25
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !89
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !83
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !220 ; 6 uses
  %i.aq = load <2 x i16>, ptr %1, align 8, !tbaa !212
  store <2 x i16> %i.aq, ptr %i.ap, align 8, !tbaa !212
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4
  %i.au = and i32 %i.at, 1                        ; 2 uses
  %i.av = load i32, ptr %i.ar, align 4
  %i.aw = and i32 %i.av, -2
  %i.ax = or disjoint i32 %i.aw, %i.au
  store i32 %i.ax, ptr %i.ar, align 4
  %i.ay = load i32, ptr %i.as, align 4
  %i.az = and i32 %i.ay, -2
  %i.ba = or disjoint i32 %i.az, %i.au
  store i32 %i.ba, ptr %i.ar, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load <2 x i32>, ptr %i.bc, align 8, !tbaa !204
  store <2 x i32> %i.bd, ptr %i.bb, align 8, !tbaa !204
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = and i64 %i.bg, 16777215
  %i.bi = load i64, ptr %i.be, align 8
  %i.bj = and i64 %i.bi, -16777216
  %i.bk = or disjoint i64 %i.bj, %i.bh            ; 2 uses
  store i64 %i.bk, ptr %i.be, align 8
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 16777215
  %5 = zext nneg i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 32
  %i.bl = and i64 %i.bk, -72057589742960641
  %i.bm = or disjoint i64 %6, %i.bl
  store i64 %i.bm, ptr %i.be, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bp = load i16, ptr %i.bo, align 8, !tbaa !213
  store i16 %i.bp, ptr %i.bn, align 8, !tbaa !213
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bs = load <2 x ptr>, ptr %i.br, align 8, !tbaa !47
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !214 ; 2 uses
  store <2 x ptr> %i.bs, ptr %i.bq, align 8, !tbaa !47
  %.not.i = icmp eq ptr %i.bt, null
  br i1 %.not.i, label %_ZNSt16allocator_traitsISaI8FileLineEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt5dequeI8FileLineSaIS0_EE22_M_reserve_map_at_backEm.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = atomicrmw add ptr %i.bu, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZNSt16allocator_traitsISaI8FileLineEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit

_ZNSt16allocator_traitsISaI8FileLineEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit: ; preds = %_ZNSt5dequeI8FileLineSaIS0_EE22_M_reserve_map_at_backEm.exit, %bb.e
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !89
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  store ptr %i.bx, ptr %i.c, align 8, !tbaa !224
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !83 ; 3 uses
  store ptr %i.by, ptr %i.o, align 8, !tbaa !222
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 480
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !225
  store ptr %i.by, ptr %i.a, align 8, !tbaa !220
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI8FileLineSaIS0_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88   ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !90   ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !87
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !194

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPP8FileLineS2_ET0_T_S4_S3_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPP8FileLineS2_ET0_T_S4_S3_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !83
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !83
  br label %_ZSt4copyIPP8FileLineS2_ET0_T_S4_S3_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !194

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPP8FileLineS2_ET0_T_S4_S3_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPP8FileLineS2_ET0_T_S4_S3_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !83
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !83
  br label %_ZSt4copyIPP8FileLineS2_ET0_T_S4_S3_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseI8FileLineSaIS0_EE15_M_allocate_mapEm.exit, !prof !165

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt11_Deque_baseI8FileLineSaIS0_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #25 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !88  ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.m, label %bb.n, !prof !194

bb.m:                                             ; preds = %_ZNSt11_Deque_baseI8FileLineSaIS0_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.aw, i64 %i.bb, i1 false)
  br label %_ZSt4copyIPP8FileLineS2_ET0_T_S4_S3_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseI8FileLineSaIS0_EE15_M_allocate_mapEm.exit
  %i.bd = icmp eq i64 %i.bb, 8
  br i1 %i.bd, label %bb.o, label %_ZSt4copyIPP8FileLineS2_ET0_T_S4_S3_.exit24

bb.o:                                             ; preds = %bb.n
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !83
  store ptr %i.be, ptr %i.av, align 8, !tbaa !83
  br label %_ZSt4copyIPP8FileLineS2_ET0_T_S4_S3_.exit24

_ZSt4copyIPP8FileLineS2_ET0_T_S4_S3_.exit24:      ; preds = %bb.m, %bb.n, %bb.o
  %i.bf = load ptr, ptr %0, align 8, !tbaa !87
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !90
  %i.bh = shl i64 %i.bg, 3
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bh) #22
  store ptr %i.aq, ptr %0, align 8, !tbaa !87
  store i64 %i.am, ptr %i.k, align 8, !tbaa !90
  br label %_ZSt4copyIPP8FileLineS2_ET0_T_S4_S3_.exit

_ZSt4copyIPP8FileLineS2_ET0_T_S4_S3_.exit:        ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPP8FileLineS2_ET0_T_S4_S3_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPP8FileLineS2_ET0_T_S4_S3_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !224
  %i.bi = load ptr, ptr %.0, align 8, !tbaa !83   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !222
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 480
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !225
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !224
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !83 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !222
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 480
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !225
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #10

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_push_front_auxIJRKS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !203  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !203  ; 2 uses
end_hunk_1
