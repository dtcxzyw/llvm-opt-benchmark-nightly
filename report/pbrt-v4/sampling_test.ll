Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/sampling_test?download=true
inline.NumInlined: 5175
inline.NumDeleted: 1203
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN26Sobol_IntervalToIndex_Test8TestBodyEv:bb.a
  br i1 %i.fb, label %bb.ai, label %bb.ba

bb.ai:                                            ; preds = %.noexc.i.i
  %i.fc = load ptr, ptr %7, align 8, !tbaa !39    ; 3 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.ba, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fe = load ptr, ptr %i.fc, align 8, !tbaa !41
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(128) %i.fc) #30, !inline_history !0
  br label %bb.ba

bb.ak:                                            ; preds = %bb.ah
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #31
  unreachable

bb.al:                                            ; preds = %bb.z
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit112

bb.am:                                            ; preds = %bb.aa
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.an:                                            ; preds = %_ZN7testing7MessagelsIA13_cEERS0_RKT_.exit94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i89, %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit81, %_ZN7testing7MessagelsImEERS0_RKT_.exit, %_ZN7testing7MessagelsIA13_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIiEERS0_RKT_.exit77, %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIiEERS0_RKT_.exit, %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZN7testing7MessagelsIA14_cEERS0_RKT_.exit
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i102
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

bb.ap:                                            ; preds = %bb.ae
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %bb.af
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #30
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn = phi { ptr, i32 } [ %i.fo, %bb.aq ], [ %i.fn, %bb.ap ] ; 2 uses
  %i.fp = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.h
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %bb.ar
  %i.fr = load i64, ptr %i.h, align 8, !tbaa !42
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107, %bb.ao
  %.pn.pn = phi { ptr, i32 } [ %i.fm, %bb.ao ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107 ], [ %.pn, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i98, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, %bb.am
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fk, %bb.am ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ], [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i ], [ %i.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i85 ], [ %i.fl, %bb.an ], [ %i.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i98 ] ; 4 uses
  %i.ft = load ptr, ptr %7, align 8, !tbaa !39
  %.not.i.i.i110 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i110, label %_ZN7testing7MessageD2Ev.exit112, label %bb.as

bb.as:                                            ; preds = %.body
  %i.fu = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i111 unwind label %bb.av

.noexc.i.i111:                                    ; preds = %bb.as
  br i1 %i.fu, label %bb.at, label %_ZN7testing7MessageD2Ev.exit112

bb.at:                                            ; preds = %.noexc.i.i111
  %i.fv = load ptr, ptr %7, align 8, !tbaa !39    ; 3 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %_ZN7testing7MessageD2Ev.exit112, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fx = load ptr, ptr %i.fv, align 8, !tbaa !41
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(128) %i.fv) #30, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit112

bb.av:                                            ; preds = %bb.as
  %i.ga = landingpad { ptr, i32 }
          catch ptr null
  %i.gb = extractvalue { ptr, i32 } %i.ga, 0
  call void @__clang_call_terminate(ptr %i.gb) #31
  unreachable

_ZN7testing7MessageD2Ev.exit112:                  ; preds = %bb.au, %bb.at, %.noexc.i.i111, %.body, %bb.al
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fj, %bb.al ], [ %.pn.pn.pn.pn, %.body ], [ %.pn.pn.pn.pn, %.noexc.i.i111 ], [ %.pn.pn.pn.pn, %bb.at ], [ %.pn.pn.pn.pn, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.gc = load ptr, ptr %i.a, align 8, !tbaa !31
  %.not.i.i.i113 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i113, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZN7testing7MessageD2Ev.exit112
  %i.gd = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i114 unwind label %bb.az

.noexc.i.i114:                                    ; preds = %bb.aw
  br i1 %i.gd, label %bb.ax, label %_ZN7testing15AssertionResultD2Ev.exit

bb.ax:                                            ; preds = %.noexc.i.i114
  %i.ge = load ptr, ptr %i.a, align 8, !tbaa !31  ; 4 uses
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gg = load ptr, ptr %i.ge, align 8, !tbaa !36 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 2 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ay
  %i.gj = load i64, ptr %i.gh, align 8, !tbaa !42
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef 32) #32
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.az:                                            ; preds = %bb.aw
  %i.gl = landingpad { ptr, i32 }
          catch ptr null
  %i.gm = extractvalue { ptr, i32 } %i.gl, 0
  call void @__clang_call_terminate(ptr %i.gm) #31
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit112, %.noexc.i.i114, %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.cm

bb.ba:                                            ; preds = %bb.aj, %bb.ai, %.noexc.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !31
  %.not.i.i.i115 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i115, label %_ZN7testing15AssertionResultD2Ev.exit120, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gn = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i116 unwind label %bb.be

.noexc.i.i116:                                    ; preds = %bb.bb
  br i1 %i.gn, label %bb.bc, label %_ZN7testing15AssertionResultD2Ev.exit120

bb.bc:                                            ; preds = %.noexc.i.i116
  %i.go = load ptr, ptr %i.a, align 8, !tbaa !31  ; 4 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %_ZN7testing15AssertionResultD2Ev.exit120, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gq = load ptr, ptr %i.go, align 8, !tbaa !36 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 16 ; 2 uses
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117: ; preds = %bb.bd
  %i.gt = load i64, ptr %i.gr, align 8, !tbaa !42
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i118: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef 32) #32
  br label %_ZN7testing15AssertionResultD2Ev.exit120

bb.be:                                            ; preds = %bb.bb
  %i.gv = landingpad { ptr, i32 }
          catch ptr null
  %i.gw = extractvalue { ptr, i32 } %i.gv, 0
  call void @__clang_call_terminate(ptr %i.gw) #31
  unreachable

_ZN7testing15AssertionResultD2Ev.exit120:         ; preds = %bb.y, %bb.ba, %.noexc.i.i116, %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit120, %_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit72
  %.137 = phi i8 [ 1, %_ZN7testing15AssertionResultD2Ev.exit120 ], [ %.036285, %_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit72 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.gx = fptosi float %i.bw to i32
  %i.gy = fptosi float %i.bx to i32
  %i.gz = zext i32 %i.gx to i64
  %i.ha = icmp eq i64 %indvars.iv289, %i.gz
  %i.hb = zext nneg i32 %i.gy to i64
  %i.hc = icmp eq i64 %indvars.iv293, %i.hb       ; 2 uses
  %i.hd = fcmp oeq float %i.bx, %i.ae
  %i.he = select i1 %i.hc, i1 true, i1 %i.hd
  %or.cond351 = select i1 %i.ha, i1 %i.he, i1 false
  br i1 %or.cond351, label %_ZN7testing15AssertionResultD2Ev.exit178, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hf = fcmp oeq float %i.bw, %i.ak
  %i.hg = select i1 %i.hf, i1 %i.hc, i1 false     ; 2 uses
  %i.hh = zext i1 %i.hg to i8
  store i8 %i.hh, ptr %10, align 8, !tbaa !28
  store ptr null, ptr %i.i, align 8, !tbaa !31
  br i1 %i.hg, label %_ZN7testing15AssertionResultD2Ev.exit178, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.bi unwind label %bb.bs

bb.bi:                                            ; preds = %bb.bh
  %i.hi = load ptr, ptr %11, align 8, !tbaa !39
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hj, ptr noundef nonnull @.str.61, i64 noundef 6)
          to label %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit125 unwind label %bb.bt ; 0 uses

_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit125:     ; preds = %bb.bi
  %i.hl = load ptr, ptr %11, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZN4pbrt8internal9ToString2IiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_S8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, i32 noundef %i.af, i32 noundef %i.ab)
          to label %.noexc134 unwind label %bb.bu

.noexc134:                                        ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit125
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = load ptr, ptr %2, align 8, !tbaa !36
  %i.ho = load i64, ptr %i.j, align 8, !tbaa !60
  %i.hp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hm, ptr noundef %i.hn, i64 noundef %i.ho)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i131 unwind label %bb.bj ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i131: ; preds = %.noexc134
  %i.hq = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.k
  br i1 %i.hr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i132: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i131
  %i.hs = load i64, ptr %i.k, align 8, !tbaa !42
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.ht) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i133

bb.bj:                                            ; preds = %.noexc134
  %i.hu = landingpad { ptr, i32 }
          cleanup
  %i.hv = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.k
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i128: ; preds = %bb.bj
  %i.hx = load i64, ptr %i.k, align 8, !tbaa !42
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i129: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %.body135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i133: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i131, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.hz = load ptr, ptr %11, align 8, !tbaa !39
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ia, ptr noundef nonnull @.str.62, i64 noundef 9)
          to label %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit unwind label %bb.bu ; 0 uses

_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit:       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i133
  %i.ic = load ptr, ptr %11, align 8, !tbaa !39
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ie = trunc nuw nsw i64 %indvars.iv to i32
  %i.if = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.id, i32 noundef %i.ie)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit140 unwind label %bb.bu ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit140:        ; preds = %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit
  %i.ig = load ptr, ptr %11, align 8, !tbaa !39
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.ii = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ih, ptr noundef nonnull @.str.56, i64 noundef 6)
          to label %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit142 unwind label %bb.bu ; 0 uses

_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit142:     ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit140
  %i.ij = load ptr, ptr %11, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  invoke void @_ZN4pbrt8internal9ToString2IfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_S8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, float noundef %i.bw, float noundef %i.bx)
          to label %.noexc151 unwind label %bb.bu

.noexc151:                                        ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit142
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.il = load ptr, ptr %1, align 8, !tbaa !36
  %i.im = load i64, ptr %i.l, align 8, !tbaa !60
  %i.in = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ik, ptr noundef %i.il, i64 noundef %i.im)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i148 unwind label %bb.bk ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i148: ; preds = %.noexc151
  %i.io = load ptr, ptr %1, align 8, !tbaa !36    ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.m
  br i1 %i.ip, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i149: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i148
  %i.iq = load i64, ptr %i.m, align 8, !tbaa !42
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.ir) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i150

bb.bk:                                            ; preds = %.noexc151
  %i.is = landingpad { ptr, i32 }
          cleanup
  %i.it = load ptr, ptr %1, align 8, !tbaa !36    ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.m
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i145: ; preds = %bb.bk
  %i.iv = load i64, ptr %i.m, align 8, !tbaa !42
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.iw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i146: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.body135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i150: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i148, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59)
          to label %bb.bl unwind label %bb.bv

bb.bl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i150
  %i.ix = load ptr, ptr %13, align 8, !tbaa !36
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 183, ptr noundef %i.ix)
          to label %bb.bm unwind label %bb.bw

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.bn unwind label %bb.bx

bb.bn:                                            ; preds = %bb.bm
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #30
  %i.iy = load ptr, ptr %13, align 8, !tbaa !36   ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.n
  br i1 %i.iz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %bb.bn
  %i.ja = load i64, ptr %i.n, align 8, !tbaa !42
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  %i.jc = load ptr, ptr %11, align 8, !tbaa !39
  %.not.i.i.i158 = icmp eq ptr %i.jc, null
  br i1 %.not.i.i.i158, label %bb.ch, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  %i.jd = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i159 unwind label %bb.br

.noexc.i.i159:                                    ; preds = %bb.bo
  br i1 %i.jd, label %bb.bp, label %bb.ch

bb.bp:                                            ; preds = %.noexc.i.i159
  %i.je = load ptr, ptr %11, align 8, !tbaa !39   ; 3 uses
  %i.jf = icmp eq ptr %i.je, null
  br i1 %i.jf, label %bb.ch, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jg = load ptr, ptr %i.je, align 8, !tbaa !41
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(128) %i.je) #30, !inline_history !0
  br label %bb.ch

bb.br:                                            ; preds = %bb.bo
  %i.jj = landingpad { ptr, i32 }
          catch ptr null
  %i.jk = extractvalue { ptr, i32 } %i.jj, 0
  call void @__clang_call_terminate(ptr %i.jk) #31
  unreachable

bb.bs:                                            ; preds = %bb.bh
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit166

bb.bt:                                            ; preds = %bb.bi
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %.body135

bb.bu:                                            ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit142, %_ZN7testing7MessagelsIiEERS0_RKT_.exit140, %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i133, %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit125
  %i.jn = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN33Sobol_IntervalToIndexRandoms_Test8TestBodyEv:bb.a
  %i.j = lshr i64 %i.g, 45
  %i.k = lshr i64 %i.g, 27
  %i.l = xor i64 %i.j, %i.k
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = lshr i64 %i.g, 59
  %i.o = trunc nuw nsw i64 %i.n to i32
  %i.p = call noundef i32 @llvm.fshr.i32(i32 %i.m, i32 %i.m, i32 %i.o) ; 2 uses
  %.not.i = icmp slt i32 %i.p, 0
  br i1 %.not.i, label %bb.c, label %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit

_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit: ; preds = %bb.c, %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit
  %i.q = phi i64 [ %i.s, %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit ], [ %i.i, %bb.c ] ; 4 uses
  %i.r = mul i64 %i.q, 6364136223846793005
  %i.s = add i64 %i.r, -2720673578348880933       ; 2 uses
  %i.t = lshr i64 %i.q, 45
  %i.u = lshr i64 %i.q, 27
  %i.v = xor i64 %i.t, %i.u
  %i.w = trunc i64 %i.v to i32                    ; 2 uses
  %i.x = lshr i64 %i.q, 59
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = call noundef i32 @llvm.fshr.i32(i32 %i.w, i32 %i.w, i32 %i.y) ; 2 uses
  %.not.i33 = icmp slt i32 %i.z, 0
  br i1 %.not.i33, label %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit, label %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit34

_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit34: ; preds = %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit, %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit34
  %i.aa = phi i64 [ %i.ac, %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit34 ], [ %i.s, %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit ] ; 4 uses
  %i.ab = mul i64 %i.aa, 6364136223846793005
  %i.ac = add i64 %i.ab, -2720673578348880933     ; 2 uses
  %i.ad = lshr i64 %i.aa, 45
  %i.ae = lshr i64 %i.aa, 27
  %i.af = xor i64 %i.ad, %i.ae
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  %i.ah = lshr i64 %i.aa, 59
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = call noundef i32 @llvm.fshr.i32(i32 %i.ag, i32 %i.ag, i32 %i.ai) ; 2 uses
  %.not.i36 = icmp slt i32 %i.aj, 0
  br i1 %.not.i36, label %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit34, label %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit37

_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit37: ; preds = %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit34, %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit37
  %i.ak = phi i64 [ %i.am, %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit37 ], [ %i.ac, %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit34 ] ; 4 uses
  %i.al = mul i64 %i.ak, 6364136223846793005
  %i.am = add i64 %i.al, -2720673578348880933     ; 2 uses
  %i.an = lshr i64 %i.ak, 45
  %i.ao = lshr i64 %i.ak, 27
  %i.ap = xor i64 %i.an, %i.ao
  %i.aq = trunc i64 %i.ap to i32                  ; 2 uses
  %i.ar = lshr i64 %i.ak, 59
  %i.as = trunc nuw nsw i64 %i.ar to i32
  %i.at = call noundef i32 @llvm.fshr.i32(i32 %i.aq, i32 %i.aq, i32 %i.as) ; 2 uses
  %.not.i39 = icmp slt i32 %i.at, 0
  br i1 %.not.i39, label %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit37, label %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit40

_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit40: ; preds = %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit37
  %i.au = and i32 %i.p, 15                        ; 5 uses
  %i.av = shl nuw nsw i32 1, %i.au                ; 2 uses
  %i.aw = add nsw i32 %i.av, -1                   ; 2 uses
  %i.ax = and i32 %i.z, %i.aw                     ; 4 uses
  %i.ay = and i32 %i.aj, %i.aw                    ; 4 uses
  %i.az = and i32 %i.at, 8191                     ; 3 uses
  %i.ba = zext nneg i32 %i.az to i64              ; 3 uses
  %.sroa.2101.0.insert.ext = zext nneg i32 %i.ay to i64
  %.sroa.0100.0.insert.ext = zext nneg i32 %i.ax to i64
  %i.bb = icmp eq i32 %i.au, 0
  br i1 %i.bb, label %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit40
  %i.bc = shl nuw nsw i32 %i.au, 1
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.ba, %i.bd            ; 2 uses
  %.not34.i = icmp eq i32 %i.az, 0
  %.pre = zext nneg i32 %i.au to i64              ; 2 uses
  br i1 %.not34.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.bf = getelementptr [416 x i8], ptr @_ZN4pbrt16VdCSobolMatricesE, i64 %.pre
  %i.bg = getelementptr i8, ptr %i.bf, i64 -416
  br label %bb.e

._crit_edge.i:                                    ; preds = %bb.g, %bb.d
  %.025.lcssa.i = phi i64 [ 0, %bb.d ], [ %.1.i, %bb.g ] ; 2 uses
  %i.bh = shl nuw nsw i64 %.sroa.0100.0.insert.ext, %.pre
  %i.bi = or i64 %i.bh, %.sroa.2101.0.insert.ext  ; 2 uses
  %.not3138.i = icmp eq i64 %.025.lcssa.i, %i.bi
  br i1 %.not3138.i, label %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit, label %.lr.ph43.i

.lr.ph43.i:                                       ; preds = %._crit_edge.i
  %i.bj = xor i64 %.025.lcssa.i, %i.bi
  %i.bk = zext nneg i32 %i.au to i64
  %i.bl = getelementptr [416 x i8], ptr @_ZN4pbrt19VdCSobolMatricesInvE, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 -416
  br label %bb.h

bb.e:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %.02536.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %bb.g ] ; 2 uses
  %.02835.i = phi i64 [ %i.ba, %.lr.ph.i ], [ %i.br, %bb.g ] ; 2 uses
  %i.bn = and i64 %.02835.i, 1
  %.not33.i = icmp eq i64 %i.bn, 0
  br i1 %.not33.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.i
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !61
  %i.bq = xor i64 %i.bp, %.02536.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i = phi i64 [ %i.bq, %bb.f ], [ %.02536.i, %bb.e ] ; 2 uses
  %i.br = lshr i64 %.02835.i, 1                   ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %.not.i41 = icmp eq i64 %i.br, 0
  br i1 %.not.i41, label %._crit_edge.i, label %bb.e, !llvm.loop !139

bb.h:                                             ; preds = %bb.j, %.lr.ph43.i
  %indvars.iv46.i = phi i64 [ 0, %.lr.ph43.i ], [ %indvars.iv.next47.i, %bb.j ] ; 2 uses
  %.02340.i = phi i64 [ %i.bj, %.lr.ph43.i ], [ %i.bw, %bb.j ] ; 2 uses
  %.02639.i = phi i64 [ %i.be, %.lr.ph43.i ], [ %.127.i, %bb.j ] ; 2 uses
  %i.bs = and i64 %.02340.i, 1
  %.not32.i = icmp eq i64 %i.bs, 0
  br i1 %.not32.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv46.i
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !61
  %i.bv = xor i64 %i.bu, %.02639.i
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.127.i = phi i64 [ %i.bv, %bb.i ], [ %.02639.i, %bb.h ] ; 2 uses
  %i.bw = lshr i64 %.02340.i, 1                   ; 2 uses
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1
  %.not31.i = icmp eq i64 %i.bw, 0
  br i1 %.not31.i, label %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit, label %bb.h, !llvm.loop !6

_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit: ; preds = %bb.j, %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit40, %._crit_edge.i
  %.029.i = phi i64 [ %i.ba, %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit40 ], [ %i.be, %._crit_edge.i ], [ %.127.i, %bb.j ] ; 3 uses
  %.not12.i = icmp eq i64 %.029.i, 0
  br i1 %.not12.i, label %_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit62, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit, %bb.l
  %indvars.iv.i43 = phi i64 [ %indvars.iv.next.i45, %bb.l ], [ 0, %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit ] ; 2 uses
  %.0914.i = phi i32 [ %.1.i44, %bb.l ], [ 0, %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit ] ; 2 uses
  %.01013.i = phi i64 [ %i.cb, %bb.l ], [ %.029.i, %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit ] ; 2 uses
  %i.bx = and i64 %.01013.i, 1
  %.not11.i = icmp eq i64 %i.bx, 0
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i42
  %i.by = getelementptr inbounds nuw [4 x i8], ptr @_ZN4pbrt15SobolMatrices32E, i64 %indvars.iv.i43
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !20
  %i.ca = xor i32 %i.bz, %.0914.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i42
  %.1.i44 = phi i32 [ %i.ca, %bb.k ], [ %.0914.i, %.lr.ph.i42 ] ; 2 uses
  %i.cb = ashr i64 %.01013.i, 1                   ; 2 uses
  %indvars.iv.next.i45 = add nuw nsw i64 %indvars.iv.i43, 1
  %.not.i46 = icmp eq i64 %i.cb, 0
  br i1 %.not.i46, label %.lr.ph.i50, label %.lr.ph.i42, !llvm.loop !5

._crit_edge.loopexit.i58:                         ; preds = %bb.n
  %i.cc = uitofp i32 %.1.i44 to float
  %i.cd = fmul nnan float %i.cc, f0x2F800000      ; 2 uses
  %i.ce = fcmp ogt float %i.cd, f0x3F7FFFFF
  %.sroa.speculated.i = select i1 %i.ce, float f0x3F7FFFFF, float %i.cd
  %i.cf = uitofp i32 %.1.i55 to float
  %i.cg = fmul nnan float %i.cf, f0x2F800000
  br label %_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit62

.lr.ph.i50:                                       ; preds = %bb.l, %bb.n
  %indvars.iv.i51 = phi i64 [ %indvars.iv.next.i56, %bb.n ], [ 52, %bb.l ] ; 2 uses
  %.0914.i52 = phi i32 [ %.1.i55, %bb.n ], [ 0, %bb.l ] ; 2 uses
  %.01013.i53 = phi i64 [ %i.cl, %bb.n ], [ %.029.i, %bb.l ] ; 2 uses
  %i.ch = and i64 %.01013.i53, 1
  %.not11.i54 = icmp eq i64 %i.ch, 0
  br i1 %.not11.i54, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i50
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr @_ZN4pbrt15SobolMatrices32E, i64 %indvars.iv.i51
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !20
  %i.ck = xor i32 %i.cj, %.0914.i52
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i50
  %.1.i55 = phi i32 [ %i.ck, %bb.m ], [ %.0914.i52, %.lr.ph.i50 ] ; 2 uses
  %i.cl = ashr i64 %.01013.i53, 1                 ; 2 uses
  %indvars.iv.next.i56 = add nuw nsw i64 %indvars.iv.i51, 1
  %.not.i57 = icmp eq i64 %i.cl, 0
  br i1 %.not.i57, label %._crit_edge.loopexit.i58, label %.lr.ph.i50, !llvm.loop !5

_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit62: ; preds = %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit, %._crit_edge.loopexit.i58
  %.sroa.speculated.i111 = phi float [ 0.000000e+00, %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit ], [ %.sroa.speculated.i, %._crit_edge.loopexit.i58 ]
  %.09.lcssa.i60 = phi float [ 0.000000e+00, %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit ], [ %i.cg, %._crit_edge.loopexit.i58 ] ; 2 uses
  %i.cm = fcmp ogt float %.09.lcssa.i60, f0x3F7FFFFF
  %.sroa.speculated.i61 = select i1 %i.cm, float f0x3F7FFFFF, float %.09.lcssa.i60
  %i.cn = uitofp nneg i32 %i.av to float          ; 2 uses
  %i.co = fmul nnan float %.sroa.speculated.i111, %i.cn
  %i.cp = fptosi float %i.co to i32               ; 2 uses
  %i.cq = sitofp i32 %i.cp to float               ; 2 uses
  %i.cr = fmul nnan float %.sroa.speculated.i61, %i.cn
  %i.cs = fptosi float %i.cr to i32
  %7 = uitofp nneg i32 %i.cs to float             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %8 = fptosi float %7 to i32
  %i.ct = icmp eq i32 %i.ax, %i.cp                ; 2 uses
  %i.cu = icmp eq i32 %i.ay, %8                   ; 2 uses
  %i.cv = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %i.cv, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit62
  br i1 %i.ct, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cw = add nuw nsw i32 %i.ay, 1
  %i.cx = uitofp nneg i32 %i.cw to float
  %i.cy = fcmp oeq float %7, %i.cx
  br i1 %i.cy, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.cz = add nuw nsw i32 %i.ax, 1
  %i.da = uitofp nneg i32 %i.cz to float
  %i.db = fcmp oeq float %i.cq, %i.da
  %i.dc = select i1 %i.db, i1 %i.cu, i1 false     ; 2 uses
  %i.dd = zext i1 %i.dc to i8
  store i8 %i.dd, ptr %3, align 8, !tbaa !28
  store ptr null, ptr %i.a, align 8, !tbaa !31
  br i1 %i.dc, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.s unwind label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.de = load ptr, ptr %4, align 8, !tbaa !39
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef nonnull @.str.61, i64 noundef 6)
          to label %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit unwind label %bb.ad ; 0 uses

_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit:        ; preds = %bb.s
  %i.dh = load ptr, ptr %4, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZN4pbrt8internal9ToString2IiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_S8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, i32 noundef %i.ax, i32 noundef %i.ay)
          to label %.noexc unwind label %bb.ae

.noexc:                                           ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %2, align 8, !tbaa !36
  %i.dk = load i64, ptr %i.b, align 8, !tbaa !60
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef %i.dj, i64 noundef %i.dk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i unwind label %bb.t ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i: ; preds = %.noexc
  %i.dm = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.c
  br i1 %i.dn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  %i.do = load i64, ptr %i.c, align 8, !tbaa !42
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.t:                                             ; preds = %.noexc
  %i.dq = landingpad { ptr, i32 }
          cleanup
  %i.dr = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.c
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i: ; preds = %bb.t
  %i.dt = load i64, ptr %i.c, align 8, !tbaa !42
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.dv = load ptr, ptr %4, align 8, !tbaa !39
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, ptr noundef nonnull @.str.62, i64 noundef 9)
          to label %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit unwind label %bb.ae ; 0 uses

_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit:       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.dy = load ptr, ptr %4, align 8, !tbaa !39
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, i32 noundef %i.az)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit unwind label %bb.ae ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit:           ; preds = %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit
  %i.eb = load ptr, ptr %4, align 8, !tbaa !39
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef nonnull @.str.56, i64 noundef 6)
          to label %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit67 unwind label %bb.ae ; 0 uses

_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit67:      ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit
  %i.ee = load ptr, ptr %4, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  invoke void @_ZN4pbrt8internal9ToString2IfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_S8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, float noundef %i.cq, float noundef %7)
          to label %.noexc76 unwind label %bb.ae

.noexc76:                                         ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit67
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %1, align 8, !tbaa !36
  %i.eh = load i64, ptr %i.d, align 8, !tbaa !60
  %i.ei = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ef, ptr noundef %i.eg, i64 noundef %i.eh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i73 unwind label %bb.u ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i73: ; preds = %.noexc76
  %i.ej = load ptr, ptr %1, align 8, !tbaa !36    ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.e
  br i1 %i.ek, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i74: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i73
  %i.el = load i64, ptr %i.e, align 8, !tbaa !42
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i75

bb.u:                                             ; preds = %.noexc76
  %i.en = landingpad { ptr, i32 }
          cleanup
  %i.eo = load ptr, ptr %1, align 8, !tbaa !36    ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.e
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i70: ; preds = %bb.u
  %i.eq = load i64, ptr %i.e, align 8, !tbaa !42
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i71: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i75: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59)
          to label %bb.v unwind label %bb.af

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i75
  %i.es = load ptr, ptr %6, align 8, !tbaa !36
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 211, ptr noundef %i.es)
          to label %bb.w unwind label %bb.ag

bb.w:                                             ; preds = %bb.v
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.x unwind label %bb.ah

bb.x:                                             ; preds = %bb.w
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #30
  %i.et = load ptr, ptr %6, align 8, !tbaa !36    ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.f
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.x
  %i.ev = load i64, ptr %i.f, align 8, !tbaa !42
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.ex = load ptr, ptr %4, align 8, !tbaa !39
  %.not.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i, label %bb.ak, label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ey = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.ab

.noexc.i.i:                                       ; preds = %bb.y
  br i1 %i.ey, label %bb.z, label %bb.ak

bb.z:                                             ; preds = %.noexc.i.i
  %i.ez = load ptr, ptr %4, align 8, !tbaa !39    ; 3 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %bb.ak, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fb = load ptr, ptr %i.ez, align 8, !tbaa !41
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(128) %i.ez) #30, !inline_history !0
  br label %bb.ak

bb.ab:                                            ; preds = %bb.y
  %i.fe = landingpad { ptr, i32 }
          catch ptr null
  %i.ff = extractvalue { ptr, i32 } %i.fe, 0
  call void @__clang_call_terminate(ptr %i.ff) #31
  unreachable

bb.ac:                                            ; preds = %bb.r
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

end_hunk_1
