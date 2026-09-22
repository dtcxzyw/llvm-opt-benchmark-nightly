Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3ParseGrammar?download=true
inline.NumInlined: 7220
inline.NumDeleted: 1267
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN14V3ParseGrammar14createVariableEP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP12AstNodeRangeP7AstNode:bb.a
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ev, i8 0, i64 9, i1 false)
  invoke void @_ZN13AstBasicDType4initE14VBasicDTypeKwd8VSigningiiP8AstRange(ptr noundef nonnull align 8 dereferenceable(184) %i.es, i8 14, i8 2, i32 noundef 0, i32 noundef -1, ptr noundef null)
          to label %"_ZZN14V3ParseGrammar14createVariableEP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP12AstNodeRangeP7AstNodeENK3$_0clEv.exit" unwind label %bb.bk

bb.bk:                                            ; preds = %.noexc22.i, %bb.bj
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef 184) #30
  br label %common.resume

bb.bl:                                            ; preds = %bb.ba
  %i.ex = call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #34 ; 8 uses
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(184) %i.ex, i16 74, ptr noundef %1)
          to label %.noexc26.i unwind label %bb.bm

.noexc26.i:                                       ; preds = %bb.bl
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ey, i8 0, i64 10, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 456) (i8, ptr @_ZTV13AstBasicDType, i64 16), ptr %i.ex, align 8, !tbaa !71
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 164
  store i8 0, ptr %i.ez, align 4, !tbaa !297
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.fa, i8 0, i64 9, i1 false)
  invoke void @_ZN13AstBasicDType4initE14VBasicDTypeKwd8VSigningiiP8AstRange(ptr noundef nonnull align 8 dereferenceable(184) %i.ex, i8 27, i8 2, i32 noundef 0, i32 noundef -1, ptr noundef null)
          to label %"_ZZN14V3ParseGrammar14createVariableEP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP12AstNodeRangeP7AstNodeENK3$_0clEv.exit" unwind label %bb.bm

bb.bm:                                            ; preds = %.noexc26.i, %bb.bl
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef 184) #30
  br label %common.resume

"_ZZN14V3ParseGrammar14createVariableEP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP12AstNodeRangeP7AstNodeENK3$_0clEv.exit": ; preds = %.noexc.i, %_ZN14V3ParseGrammar10singletonpEv.exit16.i, %.noexc22.i, %.noexc26.i
  %.0.i = phi ptr [ %i.es, %.noexc22.i ], [ %i.ds, %_ZN14V3ParseGrammar10singletonpEv.exit16.i ], [ %i.db, %.noexc.i ], [ %i.ex, %.noexc26.i ] ; 3 uses
  %i.fc = load atomic i8, ptr @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton acquire, align 8
  %i.fd = icmp eq i8 %i.fc, 0
  br i1 %i.fd, label %bb.bn, label %_ZN14V3ParseGrammar10singletonpEv.exit111, !prof !69

bb.bn:                                            ; preds = %"_ZZN14V3ParseGrammar14createVariableEP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP12AstNodeRangeP7AstNodeENK3$_0clEv.exit"
  %i.fe = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  %.not.i110 = icmp eq i32 %i.fe, 0
  br i1 %.not.i110, label %_ZN14V3ParseGrammar10singletonpEv.exit111, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZN14V3ParseGrammarC2Ev(ptr noundef nonnull align 8 dereferenceable(224) @_ZZN14V3ParseGrammar10singletonpEvE9singleton)
          to label %bb.bp unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ff = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ParseGrammarD2Ev, ptr nonnull @_ZZN14V3ParseGrammar10singletonpEvE9singleton, ptr nonnull @__dso_handle) #29 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  br label %_ZN14V3ParseGrammar10singletonpEv.exit111

bb.bq:                                            ; preds = %bb.bo
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  br label %common.resume

_ZN14V3ParseGrammar10singletonpEv.exit111:        ; preds = %"_ZZN14V3ParseGrammar14createVariableEP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP12AstNodeRangeP7AstNodeENK3$_0clEv.exit", %bb.bn, %bb.bp
  %i.fh = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN14V3ParseGrammar10singletonpEvE9singleton, i64 112), align 8, !tbaa !141 ; 3 uses
  %i.fi = icmp eq i8 %i.fh, 0
  br i1 %i.fi, label %bb.br, label %bb.bx

bb.br:                                            ; preds = %_ZN14V3ParseGrammar10singletonpEv.exit111
  %i.fj = load atomic i8, ptr @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton acquire, align 8
  %i.fk = icmp eq i8 %i.fj, 0
  br i1 %i.fk, label %bb.bs, label %_ZN14V3ParseGrammar10singletonpEv.exit113, !prof !69

bb.bs:                                            ; preds = %bb.br
  %i.fl = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  %.not.i112 = icmp eq i32 %i.fl, 0
  br i1 %.not.i112, label %_ZN14V3ParseGrammar10singletonpEv.exit113, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZN14V3ParseGrammarC2Ev(ptr noundef nonnull align 8 dereferenceable(224) @_ZZN14V3ParseGrammar10singletonpEvE9singleton)
          to label %bb.bu unwind label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.fm = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ParseGrammarD2Ev, ptr nonnull @_ZZN14V3ParseGrammar10singletonpEvE9singleton, ptr nonnull @__dso_handle) #29 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  br label %_ZN14V3ParseGrammar10singletonpEv.exit113

bb.bv:                                            ; preds = %bb.bt
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  br label %common.resume

_ZN14V3ParseGrammar10singletonpEv.exit113:        ; preds = %bb.br, %bb.bs, %bb.bu
  %i.fo = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN14V3ParseGrammar10singletonpEvE9singleton, i64 113), align 1, !tbaa !149
  %.not203 = icmp eq i8 %i.fo, 0
  br i1 %.not203, label %bb.bw, label %.thread

bb.bw:                                            ; preds = %_ZN14V3ParseGrammar10singletonpEv.exit113
  %i.fp = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.189, i32 noundef 234) ; 0 uses
  %i.fq = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.fr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.fq, ptr noundef nonnull @.str.198)
  %i.fs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.fr, ptr noundef nonnull @.str.2149)
  call void @_ZN8FileLine15v3errorEndFatalERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.fs) #31
  unreachable

bb.bx:                                            ; preds = %_ZN14V3ParseGrammar10singletonpEv.exit111
  %i.ft = icmp eq i8 %i.fh, 4
  %i.fu = icmp ne ptr %3, null
  %or.cond = and i1 %i.fu, %i.ft
  br i1 %or.cond, label %bb.by, label %.thread

bb.by:                                            ; preds = %bb.bx
  %i.fv = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5) ; 0 uses
  %i.fw = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.fx = icmp eq i8 %i.fw, 0
  br i1 %i.fx, label %bb.bz, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit, !prof !69

bb.bz:                                            ; preds = %bb.by
  %i.fy = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #29
  %.not.i.i114 = icmp eq i32 %i.fy, 0
  br i1 %.not.i.i114, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.cb unwind label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.fz = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #29 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #29
  br label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit

bb.cc:                                            ; preds = %bb.ca
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #29
  br label %common.resume

_ZN7V3Error10v3errorStrB5cxx11Ev.exit:            ; preds = %bb.by, %bb.bz, %bb.cb
  %i.gb = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.200, ptr nonnull @.str.201, i32 481, ptr null) ; 2 uses
  %i.gc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gb, ptr noundef nonnull @.str.199, i64 noundef 28) ; 0 uses
  %i.gd = load ptr, ptr %2, align 8, !tbaa !84
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !82
  %i.gg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gb, ptr noundef %i.gd, i64 noundef %i.gf)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.gh = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.gh, ptr %11, align 8, !tbaa !81
  %i.gi = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.gi, align 8, !tbaa !82
  store i8 0, ptr %i.gh, align 8, !tbaa !83
  invoke void @_ZN8FileLine10v3errorEndERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKNS0_12basic_stringIcS3_S4_EE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.gg, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.cd unwind label %bb.ce

bb.cd:                                            ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit
  %i.gj = load ptr, ptr %11, align 8, !tbaa !84   ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.gh
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %bb.cd
  %i.gl = load i64, ptr %i.gh, align 8, !tbaa !83
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %.thread

bb.ce:                                            ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit
  %i.gn = landingpad { ptr, i32 }
          cleanup
  %i.go = load ptr, ptr %11, align 8, !tbaa !84   ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.gh
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %bb.ce
  %i.gq = load i64, ptr %i.gh, align 8, !tbaa !83
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %common.resume

.thread:                                          ; preds = %_ZN14V3ParseGrammar10singletonpEv.exit113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %bb.bx
  %.sroa.0179.0198 = phi i8 [ %i.fh, %bb.bx ], [ 4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ], [ 15, %_ZN14V3ParseGrammar10singletonpEv.exit113 ]
  %i.gs = call noundef ptr @_ZN14V3ParseGrammar11createArrayEP12AstNodeDTypeP12AstNodeRangeb(ptr nonnull align 8 poison, ptr noundef %.0.i, ptr noundef %3, i1 noundef zeroext false)
  %i.gt = call noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #34 ; 21 uses
  invoke void @_ZN6AstVarC2EP8FileLine8VVarTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE15VFlagChildDTypeP12AstNodeDType(ptr noundef nonnull align 8 dereferenceable(280) %i.gt, ptr noundef %1, i8 %.sroa.0179.0198, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.gs)
          to label %bb.cf unwind label %bb.cj

bb.cf:                                            ; preds = %.thread
  %.not.i.i122 = icmp eq ptr %4, null
  br i1 %.not.i.i122, label %_ZN6AstVar9addAttrspEP7AstNode.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @_ZN7AstNode7addOp4pEPS_(ptr noundef nonnull align 8 dereferenceable(280) %i.gt, ptr noundef nonnull %4)
  br label %_ZN6AstVar9addAttrspEP7AstNode.exit

_ZN6AstVar9addAttrspEP7AstNode.exit:              ; preds = %bb.cf, %bb.cg
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 118
  %i.gv = load i8, ptr %i.gu, align 2, !tbaa !145, !range !116, !noundef !117
  %14 = zext nneg i8 %i.gv to i64
  %15 = getelementptr inbounds nuw i8, ptr %i.gt, i64 260 ; 9 uses
  %i.gw = load i64, ptr %15, align 4
  %i.gx = and i64 %i.gw, -4
  %i.gy = or disjoint i64 %i.gx, %14
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 117
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !144, !range !116, !noundef !117
  %i.hb = shl nuw nsw i8 %i.ha, 1
  %i.hc = zext nneg i8 %i.hb to i64
  %i.hd = or disjoint i64 %i.gy, %i.hc
  store i64 %i.hd, ptr %15, align 4
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 114
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gt, i64 251
  %i.hg = load i8, ptr %i.he, align 2, !tbaa !114
  store i8 %i.hg, ptr %i.hf, align 1, !tbaa !114
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !301 ; 2 uses
  %.not69 = icmp eq ptr %i.hi, null
  br i1 %.not69, label %_ZN6AstVar6delaypEP8AstDelay.exit, label %bb.ch

bb.ch:                                            ; preds = %_ZN6AstVar9addAttrspEP7AstNode.exit
  %i.hj = call noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(160) %i.hi, i1 noundef zeroext false, i1 noundef zeroext false) ; 2 uses
  %.not.i.i123 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i123, label %_ZN6AstVar6delaypEP8AstDelay.exit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(280) %i.gt, ptr noundef nonnull %i.hj)
  br label %_ZN6AstVar6delaypEP8AstDelay.exit

bb.cj:                                            ; preds = %.thread
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef 280) #30
  br label %common.resume

_ZN6AstVar6delaypEP8AstDelay.exit:                ; preds = %bb.ci, %bb.ch, %_ZN6AstVar9addAttrspEP7AstNode.exit
  %i.hl = load atomic i8, ptr @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton acquire, align 8
  %i.hm = icmp eq i8 %i.hl, 0
  br i1 %i.hm, label %bb.ck, label %_ZN14V3ParseGrammar10singletonpEv.exit125, !prof !69

bb.ck:                                            ; preds = %_ZN6AstVar6delaypEP8AstDelay.exit
  %i.hn = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  %.not.i124 = icmp eq i32 %i.hn, 0
  br i1 %.not.i124, label %_ZN14V3ParseGrammar10singletonpEv.exit125, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZN14V3ParseGrammarC2Ev(ptr noundef nonnull align 8 dereferenceable(224) @_ZZN14V3ParseGrammar10singletonpEvE9singleton)
          to label %bb.cm unwind label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.ho = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ParseGrammarD2Ev, ptr nonnull @_ZZN14V3ParseGrammar10singletonpEvE9singleton, ptr nonnull @__dso_handle) #29 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  br label %_ZN14V3ParseGrammar10singletonpEv.exit125

bb.cn:                                            ; preds = %bb.cl
  %i.hp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  br label %common.resume

_ZN14V3ParseGrammar10singletonpEv.exit125:        ; preds = %_ZN6AstVar6delaypEP8AstDelay.exit, %bb.ck, %bb.cm
  %i.hq = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN14V3ParseGrammar10singletonpEvE9singleton, i64 112), align 8, !tbaa !233
  %.not70 = icmp eq i8 %i.hq, 0
  br i1 %.not70, label %bb.ct, label %bb.co

bb.co:                                            ; preds = %_ZN14V3ParseGrammar10singletonpEv.exit125
  %i.hr = load atomic i8, ptr @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton acquire, align 8
  %i.hs = icmp eq i8 %i.hr, 0
  br i1 %i.hs, label %bb.cp, label %_ZN14V3ParseGrammar10singletonpEv.exit127, !prof !69

bb.cp:                                            ; preds = %bb.co
  %i.ht = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  %.not.i126 = icmp eq i32 %i.ht, 0
  br i1 %.not.i126, label %_ZN14V3ParseGrammar10singletonpEv.exit127, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZN14V3ParseGrammarC2Ev(ptr noundef nonnull align 8 dereferenceable(224) @_ZZN14V3ParseGrammar10singletonpEvE9singleton)
          to label %bb.cr unwind label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.hu = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ParseGrammarD2Ev, ptr nonnull @_ZZN14V3ParseGrammar10singletonpEvE9singleton, ptr nonnull @__dso_handle) #29 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  br label %_ZN14V3ParseGrammar10singletonpEv.exit127

bb.cs:                                            ; preds = %bb.cq
  %i.hv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  br label %common.resume

_ZN14V3ParseGrammar10singletonpEv.exit127:        ; preds = %bb.co, %bb.cp, %bb.cr
  %.sroa.0.0.copyload = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN14V3ParseGrammar10singletonpEvE9singleton, i64 112), align 8, !tbaa !141
  call void @_ZN6AstVar11combineTypeE8VVarType(ptr noundef nonnull align 8 dereferenceable(280) %i.gt, i8 %.sroa.0.0.copyload)
  br label %bb.ct

bb.ct:                                            ; preds = %_ZN14V3ParseGrammar10singletonpEv.exit127, %_ZN14V3ParseGrammar10singletonpEv.exit125
  %i.hw = load atomic i8, ptr @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton acquire, align 8
  %i.hx = icmp eq i8 %i.hw, 0
  br i1 %i.hx, label %bb.cu, label %_ZN14V3ParseGrammar10singletonpEv.exit129, !prof !69

bb.cu:                                            ; preds = %bb.ct
  %i.hy = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  %.not.i128 = icmp eq i32 %i.hy, 0
  br i1 %.not.i128, label %_ZN14V3ParseGrammar10singletonpEv.exit129, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZN14V3ParseGrammarC2Ev(ptr noundef nonnull align 8 dereferenceable(224) @_ZZN14V3ParseGrammar10singletonpEvE9singleton)
          to label %bb.cw unwind label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.hz = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ParseGrammarD2Ev, ptr nonnull @_ZZN14V3ParseGrammar10singletonpEvE9singleton, ptr nonnull @__dso_handle) #29 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  br label %_ZN14V3ParseGrammar10singletonpEv.exit129

bb.cx:                                            ; preds = %bb.cv
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  br label %common.resume

_ZN14V3ParseGrammar10singletonpEv.exit129:        ; preds = %bb.ct, %bb.cu, %bb.cw
  %i.ib = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN14V3ParseGrammar10singletonpEvE9singleton, i64 113), align 1, !tbaa !149
  %.not71 = icmp eq i8 %i.ib, 0
  br i1 %.not71, label %_ZN6AstVar9directionERK10VDirection.exit, label %bb.cy

bb.cy:                                            ; preds = %_ZN14V3ParseGrammar10singletonpEv.exit129
  %i.ic = load atomic i8, ptr @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton acquire, align 8
  %i.id = icmp eq i8 %i.ic, 0
  br i1 %i.id, label %bb.cz, label %_ZN14V3ParseGrammar10singletonpEv.exit131, !prof !69

bb.cz:                                            ; preds = %bb.cy
  %i.ie = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  %.not.i130 = icmp eq i32 %i.ie, 0
  br i1 %.not.i130, label %_ZN14V3ParseGrammar10singletonpEv.exit131, label %bb.da

bb.da:                                            ; preds = %bb.cz
  invoke void @_ZN14V3ParseGrammarC2Ev(ptr noundef nonnull align 8 dereferenceable(224) @_ZZN14V3ParseGrammar10singletonpEvE9singleton)
          to label %bb.db unwind label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.if = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ParseGrammarD2Ev, ptr nonnull @_ZZN14V3ParseGrammar10singletonpEvE9singleton, ptr nonnull @__dso_handle) #29 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  br label %_ZN14V3ParseGrammar10singletonpEv.exit131

bb.dc:                                            ; preds = %bb.da
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  br label %common.resume

_ZN14V3ParseGrammar10singletonpEv.exit131:        ; preds = %bb.cy, %bb.cz, %bb.db
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gt, i64 250
  %i.ii = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN14V3ParseGrammar10singletonpEvE9singleton, i64 113), align 1, !tbaa !142
  store i8 %i.ii, ptr %i.ih, align 2, !tbaa !142
  %i.ij = load atomic i8, ptr @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton acquire, align 8
  %i.ik = icmp eq i8 %i.ij, 0
  br i1 %i.ik, label %bb.dd, label %_ZN14V3ParseGrammar10singletonpEv.exit133, !prof !69

bb.dd:                                            ; preds = %_ZN14V3ParseGrammar10singletonpEv.exit131
  %i.il = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  %.not.i132 = icmp eq i32 %i.il, 0
  br i1 %.not.i132, label %_ZN14V3ParseGrammar10singletonpEv.exit133, label %bb.de

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZN14V3ParseGrammarC2Ev(ptr noundef nonnull align 8 dereferenceable(224) @_ZZN14V3ParseGrammar10singletonpEvE9singleton)
          to label %bb.df unwind label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.im = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ParseGrammarD2Ev, ptr nonnull @_ZZN14V3ParseGrammar10singletonpEvE9singleton, ptr nonnull @__dso_handle) #29 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  br label %_ZN14V3ParseGrammar10singletonpEv.exit133

bb.dg:                                            ; preds = %bb.de
  %i.in = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  br label %common.resume

_ZN14V3ParseGrammar10singletonpEv.exit133:        ; preds = %_ZN14V3ParseGrammar10singletonpEv.exit131, %bb.dd, %bb.df
  %i.io = getelementptr inbounds nuw i8, ptr %i.gt, i64 249
  %i.ip = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN14V3ParseGrammar10singletonpEvE9singleton, i64 113), align 1, !tbaa !142 ; 2 uses
  store i8 %i.ip, ptr %i.io, align 1, !tbaa !142
  %i.iq = icmp eq i8 %i.ip, 3
  br i1 %i.iq, label %bb.dh, label %_ZN6AstVar9directionERK10VDirection.exit

bb.dh:                                            ; preds = %_ZN14V3ParseGrammar10singletonpEv.exit133
  %i.ir = load i64, ptr %15, align 4
  %i.is = or i64 %i.ir, 4
  store i64 %i.is, ptr %15, align 4
  br label %_ZN6AstVar9directionERK10VDirection.exit

_ZN6AstVar9directionERK10VDirection.exit:         ; preds = %bb.dh, %_ZN14V3ParseGrammar10singletonpEv.exit133, %_ZN14V3ParseGrammar10singletonpEv.exit129
  %i.it = load atomic i8, ptr @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton acquire, align 8
  %i.iu = icmp eq i8 %i.it, 0
  br i1 %i.iu, label %bb.di, label %_ZN14V3ParseGrammar10singletonpEv.exit135, !prof !69

bb.di:                                            ; preds = %_ZN6AstVar9directionERK10VDirection.exit
  %i.iv = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  %.not.i134 = icmp eq i32 %i.iv, 0
  br i1 %.not.i134, label %_ZN14V3ParseGrammar10singletonpEv.exit135, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  invoke void @_ZN14V3ParseGrammarC2Ev(ptr noundef nonnull align 8 dereferenceable(224) @_ZZN14V3ParseGrammar10singletonpEvE9singleton)
          to label %bb.dk unwind label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.iw = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ParseGrammarD2Ev, ptr nonnull @_ZZN14V3ParseGrammar10singletonpEvE9singleton, ptr nonnull @__dso_handle) #29 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  br label %_ZN14V3ParseGrammar10singletonpEv.exit135

bb.dl:                                            ; preds = %bb.dj
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  br label %common.resume

_ZN14V3ParseGrammar10singletonpEv.exit135:        ; preds = %_ZN6AstVar9directionERK10VDirection.exit, %bb.di, %bb.dk
  %i.iy = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN14V3ParseGrammar10singletonpEvE9singleton, i64 112), align 8, !tbaa !233
  %i.iz = icmp eq i8 %i.iy, 6
  br i1 %i.iz, label %bb.dm, label %bb.dt

bb.dm:                                            ; preds = %_ZN14V3ParseGrammar10singletonpEv.exit135
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !562)
  %i.ja = getelementptr inbounds nuw i8, ptr %i.gt, i64 152
  %i.jb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.jb, ptr %12, align 8, !tbaa !81, !alias.scope !562
  %i.jc = load ptr, ptr %i.ja, align 8, !tbaa !84, !noalias !562 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.gt, i64 160
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !82, !noalias !562 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29, !noalias !562
  store i64 %i.je, ptr %i.c, align 8, !tbaa !85, !noalias !562
  %i.jf = icmp ugt i64 %i.je, 15
  br i1 %i.jf, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.dm
  %i.jg = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.jg, ptr %12, align 8, !tbaa !84, !alias.scope !562
  %i.jh = load i64, ptr %i.c, align 8, !tbaa !85, !noalias !562
  store i64 %i.jh, ptr %i.jb, align 8, !tbaa !83, !alias.scope !562
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.dm
  %i.ji = phi ptr [ %i.jg, %.noexc.i.i ], [ %i.jb, %bb.dm ] ; 2 uses
  switch i64 %i.je, label %bb.do [
    i64 1, label %bb.dn
    i64 0, label %_ZNK6AstVar4nameB5cxx11Ev.exit
  ]

bb.dn:                                            ; preds = %._crit_edge.i.i.i
  %i.jj = load i8, ptr %i.jc, align 1, !tbaa !83
  store i8 %i.jj, ptr %i.ji, align 1, !tbaa !83
  br label %_ZNK6AstVar4nameB5cxx11Ev.exit

bb.do:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ji, ptr align 1 %i.jc, i64 %i.je, i1 false)
  br label %_ZNK6AstVar4nameB5cxx11Ev.exit

_ZNK6AstVar4nameB5cxx11Ev.exit:                   ; preds = %._crit_edge.i.i.i, %bb.dn, %bb.do
  %i.jk = load i64, ptr %i.c, align 8, !tbaa !85, !noalias !562 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.jk, ptr %i.jl, align 8, !tbaa !82, !alias.scope !562
  %i.jm = load ptr, ptr %12, align 8, !tbaa !84, !alias.scope !562
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jk
  store i8 0, ptr %i.jn, align 1, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29, !noalias !562
  %i.jo = invoke noundef ptr @_ZN14V3ParseGrammar16createSupplyExprEP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr nonnull align 8 poison, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 0)
          to label %bb.dp unwind label %bb.dr     ; 2 uses

bb.dp:                                            ; preds = %_ZNK6AstVar4nameB5cxx11Ev.exit
  %i.jp = load ptr, ptr %12, align 8, !tbaa !84   ; 2 uses
  %i.jq = icmp eq ptr %i.jp, %i.jb
  br i1 %i.jq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %bb.dp
  %i.jr = load i64, ptr %i.jb, align 8, !tbaa !83
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jp, i64 noundef %i.js) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %bb.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %i.jt = call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #34 ; 8 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jo, i64 88
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !100
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.jt, i16 391, ptr noundef %i.jv)
          to label %.noexc139 unwind label %bb.ds

.noexc139:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV16AstNodeProcedure, i64 16), ptr %i.jt, align 8, !tbaa !71
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 152 ; 2 uses
  %i.jx = load i8, ptr %i.jw, align 8
  %i.jy = and i8 %i.jx, -4
  store i8 %i.jy, ptr %i.jw, align 8
  invoke void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.jt, ptr noundef nonnull %i.jo)
          to label %bb.dq unwind label %bb.ds

bb.dq:                                            ; preds = %.noexc139
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV9AstAlways, i64 16), ptr %i.jt, align 8, !tbaa !71
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jt, i64 153
  store i8 4, ptr %i.jz, align 1, !tbaa !304
  %i.ka = call noundef ptr @_ZN7AstNode7addNextIS_S_EEPT_S2_PT0_(ptr noundef nonnull %i.gt, ptr noundef nonnull %i.jt) ; 0 uses
  br label %bb.dt

bb.dr:                                            ; preds = %_ZNK6AstVar4nameB5cxx11Ev.exit
  %i.kb = landingpad { ptr, i32 }
          cleanup
  %i.kc = load ptr, ptr %12, align 8, !tbaa !84   ; 2 uses
  %i.kd = icmp eq ptr %i.kc, %i.jb
  br i1 %i.kd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %bb.dr
  %i.ke = load i64, ptr %i.jb, align 8, !tbaa !83
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kf) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %bb.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %common.resume

bb.ds:                                            ; preds = %.noexc139, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.kg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.jt, i64 noundef 160) #30
  br label %common.resume

bb.dt:                                            ; preds = %bb.dq, %_ZN14V3ParseGrammar10singletonpEv.exit135
  %i.kh = load atomic i8, ptr @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton acquire, align 8
  %i.ki = icmp eq i8 %i.kh, 0
  br i1 %i.ki, label %bb.du, label %_ZN14V3ParseGrammar10singletonpEv.exit145, !prof !69

bb.du:                                            ; preds = %bb.dt
  %i.kj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  %.not.i144 = icmp eq i32 %i.kj, 0
  br i1 %.not.i144, label %_ZN14V3ParseGrammar10singletonpEv.exit145, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  invoke void @_ZN14V3ParseGrammarC2Ev(ptr noundef nonnull align 8 dereferenceable(224) @_ZZN14V3ParseGrammar10singletonpEvE9singleton)
          to label %bb.dw unwind label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.kk = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ParseGrammarD2Ev, ptr nonnull @_ZZN14V3ParseGrammar10singletonpEvE9singleton, ptr nonnull @__dso_handle) #29 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  br label %_ZN14V3ParseGrammar10singletonpEv.exit145

bb.dx:                                            ; preds = %bb.dv
  %i.kl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  br label %common.resume

_ZN14V3ParseGrammar10singletonpEv.exit145:        ; preds = %bb.dt, %bb.du, %bb.dw
  %i.km = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN14V3ParseGrammar10singletonpEvE9singleton, i64 112), align 8, !tbaa !233
  %i.kn = icmp eq i8 %i.km, 7
  br i1 %i.kn, label %bb.dy, label %bb.ef

bb.dy:                                            ; preds = %_ZN14V3ParseGrammar10singletonpEv.exit145
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !563)
  %i.ko = getelementptr inbounds nuw i8, ptr %i.gt, i64 152
  %i.kp = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.kp, ptr %13, align 8, !tbaa !81, !alias.scope !563
  %i.kq = load ptr, ptr %i.ko, align 8, !tbaa !84, !noalias !563 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.gt, i64 160
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !82, !noalias !563 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29, !noalias !563
  store i64 %i.ks, ptr %i.b, align 8, !tbaa !85, !noalias !563
  %i.kt = icmp ugt i64 %i.ks, 15
  br i1 %i.kt, label %.noexc.i.i147, label %._crit_edge.i.i.i146

.noexc.i.i147:                                    ; preds = %bb.dy
  %i.ku = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.ku, ptr %13, align 8, !tbaa !84, !alias.scope !563
  %i.kv = load i64, ptr %i.b, align 8, !tbaa !85, !noalias !563
  store i64 %i.kv, ptr %i.kp, align 8, !tbaa !83, !alias.scope !563
  br label %._crit_edge.i.i.i146

._crit_edge.i.i.i146:                             ; preds = %.noexc.i.i147, %bb.dy
  %i.kw = phi ptr [ %i.ku, %.noexc.i.i147 ], [ %i.kp, %bb.dy ] ; 2 uses
  switch i64 %i.ks, label %bb.ea [
    i64 1, label %bb.dz
    i64 0, label %_ZNK6AstVar4nameB5cxx11Ev.exit148
  ]

bb.dz:                                            ; preds = %._crit_edge.i.i.i146
  %i.kx = load i8, ptr %i.kq, align 1, !tbaa !83
  store i8 %i.kx, ptr %i.kw, align 1, !tbaa !83
  br label %_ZNK6AstVar4nameB5cxx11Ev.exit148

bb.ea:                                            ; preds = %._crit_edge.i.i.i146
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kw, ptr align 1 %i.kq, i64 %i.ks, i1 false)
  br label %_ZNK6AstVar4nameB5cxx11Ev.exit148

_ZNK6AstVar4nameB5cxx11Ev.exit148:                ; preds = %._crit_edge.i.i.i146, %bb.dz, %bb.ea
  %i.ky = load i64, ptr %i.b, align 8, !tbaa !85, !noalias !563 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.ky, ptr %i.kz, align 8, !tbaa !82, !alias.scope !563
  %i.la = load ptr, ptr %13, align 8, !tbaa !84, !alias.scope !563
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.ky
  store i8 0, ptr %i.lb, align 1, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29, !noalias !563
  %i.lc = invoke noundef ptr @_ZN14V3ParseGrammar16createSupplyExprEP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr nonnull align 8 poison, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 1)
          to label %bb.eb unwind label %bb.ed     ; 2 uses

bb.eb:                                            ; preds = %_ZNK6AstVar4nameB5cxx11Ev.exit148
  %i.ld = load ptr, ptr %13, align 8, !tbaa !84   ; 2 uses
  %i.le = icmp eq ptr %i.ld, %i.kp
  br i1 %i.le, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %bb.eb
  %i.lf = load i64, ptr %i.kp, align 8, !tbaa !83
  %i.lg = add i64 %i.lf, 1
  call void @_ZdlPvm(ptr noundef %i.ld, i64 noundef %i.lg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %bb.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %i.lh = call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #34 ; 8 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lc, i64 88
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !100
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.lh, i16 391, ptr noundef %i.lj)
          to label %.noexc152 unwind label %bb.ee

.noexc152:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV16AstNodeProcedure, i64 16), ptr %i.lh, align 8, !tbaa !71
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 152 ; 2 uses
  %i.ll = load i8, ptr %i.lk, align 8
  %i.lm = and i8 %i.ll, -4
  store i8 %i.lm, ptr %i.lk, align 8
  invoke void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.lh, ptr noundef nonnull %i.lc)
          to label %bb.ec unwind label %bb.ee

bb.ec:                                            ; preds = %.noexc152
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV9AstAlways, i64 16), ptr %i.lh, align 8, !tbaa !71
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lh, i64 153
  store i8 4, ptr %i.ln, align 1, !tbaa !304
  %i.lo = call noundef ptr @_ZN7AstNode7addNextIS_S_EEPT_S2_PT0_(ptr noundef nonnull %i.gt, ptr noundef nonnull %i.lh) ; 0 uses
  br label %bb.ef

bb.ed:                                            ; preds = %_ZNK6AstVar4nameB5cxx11Ev.exit148
  %i.lp = landingpad { ptr, i32 }
          cleanup
  %i.lq = load ptr, ptr %13, align 8, !tbaa !84   ; 2 uses
  %i.lr = icmp eq ptr %i.lq, %i.kp
  br i1 %i.lr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %bb.ed
  %i.ls = load i64, ptr %i.kp, align 8, !tbaa !83
  %i.lt = add i64 %i.ls, 1
  call void @_ZdlPvm(ptr noundef %i.lq, i64 noundef %i.lt) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %bb.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %common.resume

bb.ee:                                            ; preds = %.noexc152, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  %i.lu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.lh, i64 noundef 160) #30
  br label %common.resume

bb.ef:                                            ; preds = %bb.ec, %_ZN14V3ParseGrammar10singletonpEv.exit145
  %.not.i158 = icmp eq ptr %.0.i, null
  br i1 %.not.i158, label %_ZN7AstNode2isI17AstParseTypeDType12AstNodeDTypeEEbPKT0_.exit.thread, label %_ZN7AstNode2isI17AstParseTypeDType12AstNodeDTypeEEbPKT0_.exit

_ZN7AstNode2isI17AstParseTypeDType12AstNodeDTypeEEbPKT0_.exit: ; preds = %bb.ef
  %i.lv = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.lv, align 8, !tbaa !209
  %i.lw = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 89
  br i1 %i.lw, label %bb.eg, label %_ZN7AstNode2isI17AstParseTypeDType12AstNodeDTypeEEbPKT0_.exit.thread

bb.eg:                                            ; preds = %_ZN7AstNode2isI17AstParseTypeDType12AstNodeDTypeEEbPKT0_.exit
  %i.lx = call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #34 ; 8 uses
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(192) %i.lx, i16 64, ptr noundef %1)
          to label %.noexc161 unwind label %bb.ek

.noexc161:                                        ; preds = %bb.eg
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV13AstTypedefFwd, i64 16), ptr %i.lx, align 8, !tbaa !71
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 152 ; 4 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 168 ; 3 uses
  store ptr %i.lz, ptr %i.ly, align 8, !tbaa !81
  %i.ma = load ptr, ptr %2, align 8, !tbaa !84    ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !82 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.mc, ptr %i.a, align 8, !tbaa !85
  %i.md = icmp ugt i64 %i.mc, 15
  br i1 %i.md, label %.noexc.i.i160, label %._crit_edge.i.i.i159

.noexc.i.i160:                                    ; preds = %.noexc161
  %i.me = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ly, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc162 unwind label %bb.ek ; 2 uses

.noexc162:                                        ; preds = %.noexc.i.i160
  store ptr %i.me, ptr %i.ly, align 8, !tbaa !84
  %i.mf = load i64, ptr %i.a, align 8, !tbaa !85
  store i64 %i.mf, ptr %i.lz, align 8, !tbaa !83
  br label %._crit_edge.i.i.i159

._crit_edge.i.i.i159:                             ; preds = %.noexc162, %.noexc161
  %i.mg = phi ptr [ %i.me, %.noexc162 ], [ %i.lz, %.noexc161 ] ; 2 uses
  switch i64 %i.mc, label %bb.ei [
    i64 1, label %bb.eh
    i64 0, label %bb.ej
  ]

bb.eh:                                            ; preds = %._crit_edge.i.i.i159
  %i.mh = load i8, ptr %i.ma, align 1, !tbaa !83
  store i8 %i.mh, ptr %i.mg, align 1, !tbaa !83
  br label %bb.ej

bb.ei:                                            ; preds = %._crit_edge.i.i.i159
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mg, ptr align 1 %i.ma, i64 %i.mc, i1 false)
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh, %._crit_edge.i.i.i159
  %i.mi = load i64, ptr %i.a, align 8, !tbaa !85  ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lx, i64 160
  store i64 %i.mi, ptr %i.mj, align 8, !tbaa !82
  %i.mk = load ptr, ptr %i.ly, align 8, !tbaa !84
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.mi
  store i8 0, ptr %i.ml, align 1, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lx, i64 184
  store i8 0, ptr %i.mm, align 8, !tbaa !152
  %i.mn = call noundef ptr @_ZN7AstNode7addNextIS_S_EEPT_S2_PT0_(ptr noundef nonnull %i.gt, ptr noundef nonnull %i.lx) ; 0 uses
  br label %_ZN7AstNode2isI17AstParseTypeDType12AstNodeDTypeEEbPKT0_.exit.thread

bb.ek:                                            ; preds = %.noexc.i.i160, %bb.eg
  %i.mo = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.lx, i64 noundef 192) #30
  br label %common.resume

_ZN7AstNode2isI17AstParseTypeDType12AstNodeDTypeEEbPKT0_.exit.thread: ; preds = %bb.ef, %bb.ej, %_ZN7AstNode2isI17AstParseTypeDType12AstNodeDTypeEEbPKT0_.exit
  %i.mp = getelementptr inbounds nuw i8, ptr %i.gt, i64 248 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.mp, align 8, !tbaa !141 ; 4 uses
  %i.mq = icmp eq i8 %.sroa.0.0.copyload.i.i, 4
  br i1 %i.mq, label %.thread243, label %bb.el

.thread243:                                       ; preds = %_ZN7AstNode2isI17AstParseTypeDType12AstNodeDTypeEEbPKT0_.exit.thread
  %i.mr = load i64, ptr %15, align 4
  %i.ms = and i64 %i.mr, -140737488355329
  store i64 %i.ms, ptr %15, align 4
  br label %_ZNK8VVarType15isVPIAccessibleEv.exit

bb.el:                                            ; preds = %_ZN7AstNode2isI17AstParseTypeDType12AstNodeDTypeEEbPKT0_.exit.thread
  %i.mt = add i8 %.sroa.0.0.copyload.i.i, -3
  %spec.select.i.i = icmp ult i8 %i.mt, -2
  %i.mu = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 1036), align 4, !range !116
  %i.mv = trunc nuw i8 %i.mu to i1
  %or.cond202 = select i1 %spec.select.i.i, i1 true, i1 %i.mv
  br i1 %or.cond202, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.mw = load i64, ptr %15, align 4
  %i.mx = and i64 %i.mw, -140737488355329
  br label %bb.eo

bb.en:                                            ; preds = %bb.el
  %i.my = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 1031), align 1, !tbaa !279, !range !116, !noundef !117
  %i.mz = trunc nuw i8 %i.my to i1
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 119
  %i.nb = load i8, ptr %i.na, align 1, !range !116
  %i.nc = trunc nuw i8 %i.nb to i1
  %or.cond.i = select i1 %i.mz, i1 %i.nc, i1 false
  br i1 %or.cond.i, label %_ZNK14V3ParseGrammar12allTracingOnEPK8FileLine.exit, label %_ZNK14V3ParseGrammar12allTracingOnEPK8FileLine.exit.thread

_ZNK14V3ParseGrammar12allTracingOnEPK8FileLine.exit: ; preds = %bb.en
  %i.nd = getelementptr inbounds nuw i8, ptr %i.gt, i64 88
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !100
  %i.nf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK8FileLine5msgEnEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ne) ; 2 uses
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !85
  %i.nh = and i64 %i.ng, 8192
  %.not.i.i.i164 = icmp ne i64 %i.nh, 0
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nf, i64 24
  %i.nj = load i64, ptr %i.ni, align 8
  %i.nk = and i64 %i.nj, 8192
  %i.nl = icmp ne i64 %i.nk, 0
  %i.nm = select i1 %.not.i.i.i164, i1 %i.nl, i1 false
  %cond.fr = freeze i1 %i.nm
  %spec.select = select i1 %cond.fr, i64 140737488355328, i64 0
  %.sroa.0.0.copyload.i.pre.pre = load i8, ptr %i.mp, align 8, !tbaa !141
  br label %_ZNK14V3ParseGrammar12allTracingOnEPK8FileLine.exit.thread

_ZNK14V3ParseGrammar12allTracingOnEPK8FileLine.exit.thread: ; preds = %bb.en, %_ZNK14V3ParseGrammar12allTracingOnEPK8FileLine.exit
  %.sroa.0.0.copyload.i.pre = phi i8 [ %.sroa.0.0.copyload.i.pre.pre, %_ZNK14V3ParseGrammar12allTracingOnEPK8FileLine.exit ], [ %.sroa.0.0.copyload.i.i, %bb.en ]
  %i.nn = phi i64 [ %spec.select, %_ZNK14V3ParseGrammar12allTracingOnEPK8FileLine.exit ], [ 0, %bb.en ]
  %i.no = load i64, ptr %15, align 4
  %i.np = and i64 %i.no, -140737488355329
  %i.nq = or disjoint i64 %i.np, %i.nn
  br label %bb.eo

bb.eo:                                            ; preds = %bb.em, %_ZNK14V3ParseGrammar12allTracingOnEPK8FileLine.exit.thread
  %.sink = phi i64 [ %i.mx, %bb.em ], [ %i.nq, %_ZNK14V3ParseGrammar12allTracingOnEPK8FileLine.exit.thread ]
  %.sroa.0.0.copyload.i = phi i8 [ %.sroa.0.0.copyload.i.i, %bb.em ], [ %.sroa.0.0.copyload.i.pre, %_ZNK14V3ParseGrammar12allTracingOnEPK8FileLine.exit.thread ]
  store i64 %.sink, ptr %15, align 4
  switch i8 %.sroa.0.0.copyload.i, label %_ZNK8VVarType15isVPIAccessibleEv.exit [
    i8 5, label %bb.ep
    i8 1, label %bb.ep
    i8 2, label %bb.ep
    i8 3, label %bb.ep
    i8 15, label %bb.ep
    i8 8, label %bb.ep
    i8 13, label %bb.ep
    i8 14, label %bb.ep
  ]

bb.ep:                                            ; preds = %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo
  %i.nr = load atomic i8, ptr @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton acquire, align 8
  %i.ns = icmp eq i8 %i.nr, 0
  br i1 %i.ns, label %bb.eq, label %_ZN14V3ParseGrammar10singletonpEv.exit166, !prof !69

bb.eq:                                            ; preds = %bb.ep
  %i.nt = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  %.not.i165 = icmp eq i32 %i.nt, 0
  br i1 %.not.i165, label %_ZN14V3ParseGrammar10singletonpEv.exit166, label %bb.er

bb.er:                                            ; preds = %bb.eq
  invoke void @_ZN14V3ParseGrammarC2Ev(ptr noundef nonnull align 8 dereferenceable(224) @_ZZN14V3ParseGrammar10singletonpEvE9singleton)
          to label %bb.es unwind label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.nu = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ParseGrammarD2Ev, ptr nonnull @_ZZN14V3ParseGrammar10singletonpEvE9singleton, ptr nonnull @__dso_handle) #29 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  br label %_ZN14V3ParseGrammar10singletonpEv.exit166

bb.et:                                            ; preds = %bb.er
  %i.nv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  br label %common.resume

_ZN14V3ParseGrammar10singletonpEv.exit166:        ; preds = %bb.ep, %bb.eq, %bb.es
  %i.nw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN14V3ParseGrammar10singletonpEvE9singleton, i64 16), align 8, !tbaa !305 ; 2 uses
  %.not.i167 = icmp eq ptr %i.nw, null
  br i1 %.not.i167, label %_ZNK8VVarType15isVPIAccessibleEv.exit, label %_ZNK14V3ParseGrammar18cloneScopedSigAttrEv.exit

_ZNK14V3ParseGrammar18cloneScopedSigAttrEv.exit:  ; preds = %_ZN14V3ParseGrammar10singletonpEv.exit166
  %i.nx = call noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(152) %i.nw, i1 noundef zeroext true, i1 noundef zeroext false) ; 2 uses
  %.not.i.i168 = icmp eq ptr %i.nx, null
  br i1 %.not.i.i168, label %_ZNK8VVarType15isVPIAccessibleEv.exit, label %bb.eu

bb.eu:                                            ; preds = %_ZNK14V3ParseGrammar18cloneScopedSigAttrEv.exit
  call void @_ZN7AstNode7addOp4pEPS_(ptr noundef nonnull align 8 dereferenceable(280) %i.gt, ptr noundef nonnull %i.nx)
  br label %_ZNK8VVarType15isVPIAccessibleEv.exit

_ZNK8VVarType15isVPIAccessibleEv.exit:            ; preds = %.thread243, %_ZN14V3ParseGrammar10singletonpEv.exit166, %bb.eu, %_ZNK14V3ParseGrammar18cloneScopedSigAttrEv.exit, %bb.eo
  %i.ny = load atomic i8, ptr @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton acquire, align 8
  %i.nz = icmp eq i8 %i.ny, 0
  br i1 %i.nz, label %bb.ev, label %_ZN14V3ParseGrammar10singletonpEv.exit171, !prof !69

bb.ev:                                            ; preds = %_ZNK8VVarType15isVPIAccessibleEv.exit
  %i.oa = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  %.not.i170 = icmp eq i32 %i.oa, 0
  br i1 %.not.i170, label %_ZN14V3ParseGrammar10singletonpEv.exit171, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  invoke void @_ZN14V3ParseGrammarC2Ev(ptr noundef nonnull align 8 dereferenceable(224) @_ZZN14V3ParseGrammar10singletonpEvE9singleton)
          to label %bb.ex unwind label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.ob = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ParseGrammarD2Ev, ptr nonnull @_ZZN14V3ParseGrammar10singletonpEvE9singleton, ptr nonnull @__dso_handle) #29 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  br label %_ZN14V3ParseGrammar10singletonpEv.exit171

bb.ey:                                            ; preds = %bb.ew
  %i.oc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  br label %common.resume

_ZN14V3ParseGrammar10singletonpEv.exit171:        ; preds = %_ZNK8VVarType15isVPIAccessibleEv.exit, %bb.ev, %bb.ex
  store ptr %i.gt, ptr @_ZZN14V3ParseGrammar10singletonpEvE9singleton, align 8, !tbaa !564
  %i.od = load ptr, ptr @_ZN10V3ParseImp8s_parsepE, align 8, !tbaa !15
  %i.oe = load atomic i8, ptr @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton acquire, align 8
  %i.of = icmp eq i8 %i.oe, 0
  br i1 %i.of, label %bb.ez, label %_ZN14V3ParseGrammar10singletonpEv.exit173, !prof !69

bb.ez:                                            ; preds = %_ZN14V3ParseGrammar10singletonpEv.exit171
  %i.og = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  %.not.i172 = icmp eq i32 %i.og, 0
  br i1 %.not.i172, label %_ZN14V3ParseGrammar10singletonpEv.exit173, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  invoke void @_ZN14V3ParseGrammarC2Ev(ptr noundef nonnull align 8 dereferenceable(224) @_ZZN14V3ParseGrammar10singletonpEvE9singleton)
          to label %bb.fb unwind label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.oh = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ParseGrammarD2Ev, ptr nonnull @_ZZN14V3ParseGrammar10singletonpEvE9singleton, ptr nonnull @__dso_handle) #29 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  br label %_ZN14V3ParseGrammar10singletonpEv.exit173

bb.fc:                                            ; preds = %bb.fa
  %i.oi = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14V3ParseGrammar10singletonpEvE9singleton) #29
  br label %common.resume

_ZN14V3ParseGrammar10singletonpEv.exit173:        ; preds = %_ZN14V3ParseGrammar10singletonpEv.exit171, %bb.ez, %bb.fb
  %i.oj = load ptr, ptr @_ZZN14V3ParseGrammar10singletonpEvE9singleton, align 8, !tbaa !564
  %i.ok = getelementptr inbounds nuw i8, ptr %i.od, i64 536
  store ptr %i.oj, ptr %i.ok, align 8, !tbaa !208
  br label %bb.fd

bb.fd:                                            ; preds = %bb.ah, %bb.ai, %_ZN14V3ParseGrammar10singletonpEv.exit173
  %.0 = phi ptr [ %i.gt, %_ZN14V3ParseGrammar10singletonpEv.exit173 ], [ null, %bb.ai ], [ null, %bb.ah ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN14V3ParseGrammar18createGenericIfaceEP7AstNodeP12AstNodeRangeS1_P8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  store i8 1, ptr %i.b, align 8, !tbaa !141
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 113 ; 2 uses
  store i8 0, ptr %i.c, align 1, !tbaa !142
  %i.d = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #34 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !100
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(168) %i.d, i16 89, ptr noundef %i.f)
          to label %bb.b unwind label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.g, i8 0, i64 10, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 456) (i8, ptr @_ZTV17AstParseTypeDType, i64 16), ptr %i.d, align 8, !tbaa !71
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 162
  store i8 6, ptr %i.h, align 2, !tbaa !152
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !292  ; 4 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN14V3ParseGrammar8setDTypeEP12AstNodeDType.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !293
  %.not2.i = icmp eq ptr %i.l, null
  br i1 %.not2.i, label %bb.e, label %bb.d, !prof !287

bb.d:                                             ; preds = %bb.c
  %i.m = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.222, i32 noundef 153) ; 0 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.223)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.j, ptr noundef nonnull align 8 dereferenceable(112) %i.o) #31
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN7AstNode10deleteTreeEv(ptr noundef nonnull align 8 dereferenceable(152) %i.j)
  br label %_ZN14V3ParseGrammar8setDTypeEP12AstNodeDType.exit

_ZN14V3ParseGrammar8setDTypeEP12AstNodeDType.exit: ; preds = %bb.b, %bb.e
  store ptr %i.d, ptr %i.i, align 8, !tbaa !292
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 117 ; 2 uses
  store i8 1, ptr %i.p, align 1, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.q = load ptr, ptr %1, align 8, !tbaa !71
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(152) %1)
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.224, i64 noundef 14)
          to label %.noexc unwind label %bb.y     ; 6 uses

.noexc:                                           ; preds = %_ZN14V3ParseGrammar8setDTypeEP12AstNodeDType.exit
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.u, ptr %6, align 8, !tbaa !81, !alias.scope !567
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !84   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %.noexc
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !82   ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.v, ptr %6, align 8, !tbaa !84, !alias.scope !567
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !83
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !83, !alias.scope !567
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !82
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %i.ad = phi i64 [ %i.z, %bb.f ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
end_hunk_0
