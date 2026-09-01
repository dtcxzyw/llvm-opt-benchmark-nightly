Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Const__gen?download=true
inline.NumInlined: 16874
inline.NumDeleted: 2188
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN12ConstVisitor10warnSelectEP6AstSel:bb.a
  store <2 x i64> %i.kr, ptr %i.br, align 8, !tbaa !77
  br label %bb.bj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ks = load i64, ptr %i.bq, align 8, !tbaa !77
  store ptr %i.kg, ptr %3, align 8, !tbaa !75
  %i.kt = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ku = load <2 x i64>, ptr %i.kt, align 8, !tbaa !77
  store <2 x i64> %i.ku, ptr %i.br, align 8, !tbaa !77
  %.not.i176 = icmp eq ptr %i.ke, null
  br i1 %.not.i176, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ke, ptr %9, align 8, !tbaa !75
  store i64 %i.ks, ptr %i.kh, align 8, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.bj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.kh, ptr %9, align 8, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.bi, %bb.bj
  %i.kv = phi ptr [ %i.ke, %bb.bi ], [ %i.kh, %bb.bj ], [ %.pre.i177, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.kw = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.kw, align 8, !tbaa !76
  store i8 0, ptr %i.kv, align 1, !tbaa !77
  %i.kx = load ptr, ptr %9, align 8, !tbaa !75    ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.kz = icmp eq ptr %i.kx, %i.ky
  br i1 %i.kz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.la = load i64, ptr %i.ky, align 8, !tbaa !77
  %i.lb = add i64 %i.la, 1
  call void @_ZdlPvm(ptr noundef %i.kx, i64 noundef %i.lb) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178
  %i.lc = load ptr, ptr %12, align 8, !tbaa !75   ; 2 uses
  %i.ld = icmp eq ptr %i.lc, %i.hf
  br i1 %i.ld, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180
  %i.le = load i64, ptr %i.hf, align 8, !tbaa !77
  %i.lf = add i64 %i.le, 1
  call void @_ZdlPvm(ptr noundef %i.lc, i64 noundef %i.lf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.lg = load ptr, ptr %10, align 8, !tbaa !75   ; 2 uses
  %i.lh = icmp eq ptr %i.lg, %i.gd
  br i1 %i.lh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183
  %i.li = load i64, ptr %i.gd, align 8, !tbaa !77
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lg, i64 noundef %i.lj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184
  %i.lk = load ptr, ptr %11, align 8, !tbaa !75   ; 2 uses
  %i.ll = icmp eq ptr %i.lk, %i.es
  br i1 %i.ll, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186
  %i.lm = load i64, ptr %i.es, align 8, !tbaa !77
  %i.ln = add i64 %i.lm, 1
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef %i.ln) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.bo

bb.bk:                                            ; preds = %bb.ac
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.an
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

bb.bm:                                            ; preds = %bb.ap
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.bd, %.critedge.i
  %i.lr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ls = load ptr, ptr %12, align 8, !tbaa !75   ; 2 uses
  %i.lt = icmp eq ptr %i.ls, %i.hf
  br i1 %i.lt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %bb.bn
  %i.lu = load i64, ptr %i.hf, align 8, !tbaa !77
  %i.lv = add i64 %i.lu, 1
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190, %bb.bm
  %.pn = phi { ptr, i32 } [ %i.lq, %bb.bm ], [ %i.lr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190 ], [ %i.lr, %bb.bn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.lw = load ptr, ptr %10, align 8, !tbaa !75   ; 2 uses
  %i.lx = icmp eq ptr %i.lw, %i.gd
  br i1 %i.lx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  %i.ly = load i64, ptr %i.gd, align 8, !tbaa !77
  %i.lz = add i64 %i.ly, 1
  call void @_ZdlPvm(ptr noundef %i.lw, i64 noundef %i.lz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193, %bb.bl
  %.pn.pn = phi { ptr, i32 } [ %i.lp, %bb.bl ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ] ; 2 uses
  %i.ma = load ptr, ptr %11, align 8, !tbaa !75   ; 2 uses
  %i.mb = icmp eq ptr %i.ma, %i.es
  br i1 %i.mb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195
  %i.mc = load i64, ptr %i.es, align 8, !tbaa !77
  %i.md = add i64 %i.mc, 1
  call void @_ZdlPvm(ptr noundef %i.ma, i64 noundef %i.md) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196, %bb.bk
  %.pn.pn.pn = phi { ptr, i32 } [ %i.lo, %bb.bk ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.body

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  %i.me = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 109)
          to label %bb.bp unwind label %bb.w      ; 0 uses

bb.bp:                                            ; preds = %bb.bo
  %i.mf = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.mg = icmp eq i8 %i.mf, 0
  br i1 %i.mg, label %bb.bq, label %bb.bu, !prof !156

bb.bq:                                            ; preds = %bb.bp
  %i.mh = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #25
  %.not.i.i199 = icmp eq i32 %i.mh, 0
  br i1 %.not.i.i199, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.mi = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #25 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #25
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.mj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #25
  br label %.body

bb.bu:                                            ; preds = %bb.bs, %bb.bq, %bb.bp
  %i.mk = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.15, ptr nonnull @.str.16, i32 481, ptr null) ; 2 uses
  %i.ml = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mk, ptr noundef nonnull @.str.980, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202: ; preds = %bb.bu
  %i.mm = load ptr, ptr %3, align 8, !tbaa !75
  %i.mn = load i64, ptr %i.br, align 8, !tbaa !76
  %i.mo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mk, ptr noundef %i.mm, i64 noundef %i.mn)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit204 unwind label %bb.w ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit204: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202
  %i.mp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mo, ptr noundef nonnull @.str.981, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit206 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit206: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit204
  %i.mq = load i32, ptr %i.m, align 8, !tbaa !1098 ; 2 uses
  %i.mr = load i32, ptr %i.o, align 4, !tbaa !1099 ; 2 uses
  %..i.i207 = call noundef i32 @llvm.smin.i32(i32 %i.mq, i32 %i.mr)
  %..i1.i208 = call noundef i32 @llvm.smax.i32(i32 %i.mq, i32 %i.mr)
  %i.ms = call i32 @llvm.smin.i32(i32 %..i.i207, i32 0)
  %i.mt = sub nsw i32 %..i1.i208, %i.ms
  %i.mu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.mo, i32 noundef %i.mt)
          to label %bb.bv unwind label %bb.w      ; 2 uses

bb.bv:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit206
  %i.mv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mu, ptr noundef nonnull @.str.982, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210: ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.mw = load i32, ptr %i.m, align 8, !tbaa !1098
  %i.mx = load i32, ptr %i.o, align 4, !tbaa !1099
  %..i = call noundef i32 @llvm.smin.i32(i32 %i.mw, i32 %i.mx) ; 3 uses
  %21 = icmp sgt i32 %..i, -1
  br i1 %21, label %._crit_edge.i.i211, label %bb.bw

._crit_edge.i.i211:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210
  %i.my = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr %i.my, ptr %13, align 8, !tbaa !71
  %i.mz = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.mz, align 8, !tbaa !76
  store i8 0, ptr %i.my, align 8, !tbaa !77
  br label %bb.bz

bb.bw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.na = sub nsw i32 0, %..i
  store i32 %i.na, ptr %i.a, align 4, !tbaa !70
  invoke void @_Z8cvtToStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.bx unwind label %.split.thread

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull @.str.983, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.by unwind label %.thread298

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.984)
          to label %._crit_edge unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246.thread

._crit_edge:                                      ; preds = %bb.by
  %.pre = load ptr, ptr %13, align 8, !tbaa !75
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.pre328 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !76
  br label %bb.bz

bb.bz:                                            ; preds = %._crit_edge, %._crit_edge.i.i211
  %i.nb = phi i64 [ %.pre328, %._crit_edge ], [ 0, %._crit_edge.i.i211 ]
  %i.nc = phi ptr [ %.pre, %._crit_edge ], [ %i.my, %._crit_edge.i.i211 ]
  %.0 = icmp slt i32 %..i, 0                      ; 3 uses
  %i.nd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mu, ptr noundef %i.nc, i64 noundef %i.nb)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit215 unwind label %bb.cm

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit215: ; preds = %bb.bz
  invoke void @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.nd)
          to label %bb.ca unwind label %bb.cm

bb.ca:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit215
  %i.ne = load ptr, ptr %13, align 8, !tbaa !75   ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ng = icmp eq ptr %i.ne, %i.nf
  br i1 %i.ng, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216: ; preds = %bb.ca
  %i.nh = load i64, ptr %i.nf, align 8, !tbaa !77
  %i.ni = add i64 %i.nh, 1
  call void @_ZdlPvm(ptr noundef %i.ne, i64 noundef %i.ni) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216
  br i1 %.0, label %.critedge, label %.critedge119

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218
  %i.nj = load ptr, ptr %14, align 8, !tbaa !75   ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.nl = icmp eq ptr %i.nj, %i.nk
  br i1 %i.nl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219: ; preds = %.critedge
  %i.nm = load i64, ptr %i.nk, align 8, !tbaa !77
  %i.nn = add i64 %i.nm, 1
  call void @_ZdlPvm(ptr noundef %i.nj, i64 noundef %i.nn) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219
  %i.no = load ptr, ptr %15, align 8, !tbaa !75   ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.nq = icmp eq ptr %i.no, %i.np
  br i1 %i.nq, label %.critedge111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221
  %i.nr = load i64, ptr %i.np, align 8, !tbaa !77
  %i.ns = add i64 %i.nr, 1
  call void @_ZdlPvm(ptr noundef %i.no, i64 noundef %i.ns) #26
  br label %.critedge111

.critedge111:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %.critedge114

.critedge119:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.critedge114

.critedge114:                                     ; preds = %.critedge111, %.critedge119
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.nt = invoke noundef i32 @_ZL5debugv()
          to label %bb.cb unwind label %bb.w

bb.cb:                                            ; preds = %.critedge114
  %i.nu = icmp sgt i32 %i.nt, 0
  br i1 %i.nu, label %bb.cc, label %bb.da, !prof !103

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %16)
          to label %bb.cd unwind label %bb.co

bb.cd:                                            ; preds = %bb.cc
  %i.nv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull @.str, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit226 unwind label %bb.cp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit226: ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull @.str.1, i32 noundef 1770)
          to label %bb.ce unwind label %bb.cq

bb.ce:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit226
  %i.nw = load ptr, ptr %17, align 8, !tbaa !75
  %i.nx = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !76
  %i.nz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %i.nw, i64 noundef %i.ny)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit228 unwind label %bb.cr ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit228: ; preds = %bb.ce
  %i.oa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nz, ptr noundef nonnull @.str.985, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230 unwind label %bb.cr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit228
  %i.ob = invoke noundef i32 @_ZNK6AstSel8lsbConstEv(ptr noundef nonnull align 8 dereferenceable(184) %1)
          to label %bb.cf unwind label %bb.cr

bb.cf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230
  %i.oc = load i32, ptr %i.bj, align 8, !tbaa !747
  %i.od = add i32 %i.ob, -1
  %i.oe = add i32 %i.od, %i.oc
  %i.of = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.nz, i32 noundef %i.oe)
          to label %bb.cg unwind label %bb.cr     ; 2 uses

bb.cg:                                            ; preds = %bb.cf
  %i.og = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.of, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234 unwind label %bb.cr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234: ; preds = %bb.cg
  %i.oh = invoke noundef i32 @_ZNK6AstSel8lsbConstEv(ptr noundef nonnull align 8 dereferenceable(184) %1)
          to label %bb.ch unwind label %bb.cr

bb.ch:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234
  %i.oi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.of, i32 noundef %i.oh)
          to label %bb.ci unwind label %bb.cr     ; 0 uses

bb.ci:                                            ; preds = %bb.ch
  %i.oj = load ptr, ptr %17, align 8, !tbaa !75   ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ol = icmp eq ptr %i.oj, %i.ok
  br i1 %i.ol, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235: ; preds = %bb.ci
  %i.om = load i64, ptr %i.ok, align 8, !tbaa !77
  %i.on = add i64 %i.om, 1
  call void @_ZdlPvm(ptr noundef %i.oj, i64 noundef %i.on) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(112) %16)
          to label %bb.cj unwind label %bb.cs

bb.cj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(112) %16)
          to label %bb.ck unwind label %bb.ct

bb.ck:                                            ; preds = %bb.cj
  %i.oo = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !76 ; 2 uses
  %i.oq = load ptr, ptr %18, align 8, !tbaa !75   ; 2 uses
  %i.or = getelementptr i8, ptr %i.oq, i64 %i.op
  %i.os = getelementptr i8, ptr %i.or, i64 -1
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !77
  %.not = icmp eq i8 %i.ot, 10
  %i.ou = load ptr, ptr %19, align 8, !tbaa !75   ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ow = icmp eq ptr %i.ou, %i.ov
  br i1 %i.ow, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i239: ; preds = %bb.ck
  %i.ox = icmp ult i64 %i.op, 16
  call void @llvm.assume(i1 %i.ox)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238: ; preds = %bb.ck
  %i.oy = load i64, ptr %i.ov, align 8, !tbaa !77
  %i.oz = add i64 %i.oy, 1
  call void @_ZdlPvm(ptr noundef %i.ou, i64 noundef %i.oz) #26
  %.pre329 = load ptr, ptr %18, align 8, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i239, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238
  %i.pa = phi ptr [ %i.oq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i239 ], [ %.pre329, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  %i.pb = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.pc = icmp eq ptr %i.pa, %i.pb
  br i1 %i.pc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240
  %i.pd = load i64, ptr %i.pb, align 8, !tbaa !77
  %i.pe = add i64 %i.pd, 1
  call void @_ZdlPvm(ptr noundef %i.pa, i64 noundef %i.pe) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br i1 %.not, label %bb.cu, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243
  %i.pf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %16, i8 noundef signext 10)
          to label %bb.cu unwind label %bb.cp     ; 0 uses

.split.thread:                                    ; preds = %bb.bw
  %i.pg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %.critedge118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246.thread: ; preds = %bb.by
  %i.ph = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cm:                                            ; preds = %bb.bz, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit215
  %i.pi = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.pj = load ptr, ptr %13, align 8, !tbaa !75   ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.pl = icmp eq ptr %i.pj, %i.pk
  br i1 %i.pl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244: ; preds = %bb.cm
  %i.pm = load i64, ptr %i.pk, align 8, !tbaa !77
  %i.pn = add i64 %i.pm, 1
  call void @_ZdlPvm(ptr noundef %i.pj, i64 noundef %i.pn) #26
  br i1 %.0, label %bb.cn, label %.critedge116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246: ; preds = %bb.cm
  br i1 %.0, label %bb.cn, label %.critedge116

bb.cn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246
  %.pn93278 = phi { ptr, i32 } [ %i.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246.thread ], [ %i.pi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246 ], [ %i.pi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244 ] ; 2 uses
  %i.po = load ptr, ptr %14, align 8, !tbaa !75   ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.pq = icmp eq ptr %i.po, %i.pp
  br i1 %i.pq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247: ; preds = %bb.cn
  %i.pr = load i64, ptr %i.pp, align 8, !tbaa !77
  %i.ps = add i64 %i.pr, 1
  call void @_ZdlPvm(ptr noundef %i.po, i64 noundef %i.ps) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i248: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247
  %i.pt = load ptr, ptr %15, align 8, !tbaa !75   ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.pv = icmp eq ptr %i.pt, %i.pu
  br i1 %i.pv, label %.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250

.thread298:                                       ; preds = %bb.bx
  %i.pw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.px = load ptr, ptr %15, align 8, !tbaa !75   ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.pz = icmp eq ptr %i.px, %i.py
  br i1 %i.pz, label %.split.thread305, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250.thread: ; preds = %.thread298
  %i.qa = load i64, ptr %i.py, align 8, !tbaa !77
  %i.qb = add i64 %i.qa, 1
  call void @_ZdlPvm(ptr noundef %i.px, i64 noundef %i.qb) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %.critedge118

.split.thread305:                                 ; preds = %.thread298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %.critedge118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i248
  %i.qc = load i64, ptr %i.pu, align 8, !tbaa !77
  %i.qd = add i64 %i.qc, 1
  call void @_ZdlPvm(ptr noundef %i.pt, i64 noundef %i.qd) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %.critedge118

.split:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %.critedge118

.critedge116:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.critedge118

.critedge118:                                     ; preds = %.critedge116, %.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250.thread, %.split.thread305, %.split.thread
  %.pn93.pn.pn.pn294 = phi { ptr, i32 } [ %.pn93278, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250 ], [ %i.pw, %.split.thread305 ], [ %i.pw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250.thread ], [ %i.pi, %.critedge116 ], [ %.pn93278, %.split ], [ %i.pg, %.split.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %.body

bb.co:                                            ; preds = %bb.cc
  %i.qe = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.cp:                                            ; preds = %bb.cd, %bb.cl
  %i.qf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.cq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit226
  %i.qg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255

bb.cr:                                            ; preds = %bb.cg, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit228, %bb.ce, %bb.ch, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234, %bb.cf
  %i.qh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qi = load ptr, ptr %17, align 8, !tbaa !75   ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.qk = icmp eq ptr %i.qi, %i.qj
  br i1 %i.qk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253: ; preds = %bb.cr
  %i.ql = load i64, ptr %i.qj, align 8, !tbaa !77
  %i.qm = add i64 %i.ql, 1
  call void @_ZdlPvm(ptr noundef %i.qi, i64 noundef %i.qm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253, %bb.cq
  %.pn98 = phi { ptr, i32 } [ %i.qg, %bb.cq ], [ %i.qh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253 ], [ %i.qh, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %bb.cy

bb.cs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237
  %i.qn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258

bb.ct:                                            ; preds = %bb.cj
  %i.qo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  %i.qp = load ptr, ptr %18, align 8, !tbaa !75   ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.qr = icmp eq ptr %i.qp, %i.qq
  br i1 %i.qr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256: ; preds = %bb.ct
  %i.qs = load i64, ptr %i.qq, align 8, !tbaa !77
  %i.qt = add i64 %i.qs, 1
  call void @_ZdlPvm(ptr noundef %i.qp, i64 noundef %i.qt) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258: ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256, %bb.cs
  %.pn100 = phi { ptr, i32 } [ %i.qn, %bb.cs ], [ %i.qo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256 ], [ %i.qo, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %bb.cy

bb.cu:                                            ; preds = %bb.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(112) %16)
          to label %bb.cv unwind label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.qu = load ptr, ptr %20, align 8, !tbaa !75
  %i.qv = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.qw = load i64, ptr %i.qv, align 8, !tbaa !76
  %i.qx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.qu, i64 noundef %i.qw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit260 unwind label %bb.cx ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit260: ; preds = %bb.cv
  %i.qy = load ptr, ptr %20, align 8, !tbaa !75   ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ra = icmp eq ptr %i.qy, %i.qz
  br i1 %i.ra, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit260
  %i.rb = load i64, ptr %i.qz, align 8, !tbaa !77
  %i.rc = add i64 %i.rb, 1
  call void @_ZdlPvm(ptr noundef %i.qy, i64 noundef %i.rc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit260, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.da

bb.cw:                                            ; preds = %bb.cu
  %i.rd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266

bb.cx:                                            ; preds = %bb.cv
  %i.re = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rf = load ptr, ptr %20, align 8, !tbaa !75   ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.rh = icmp eq ptr %i.rf, %i.rg
  br i1 %i.rh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264: ; preds = %bb.cx
  %i.ri = load i64, ptr %i.rg, align 8, !tbaa !77
  %i.rj = add i64 %i.ri, 1
  call void @_ZdlPvm(ptr noundef %i.rf, i64 noundef %i.rj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266: ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264, %bb.cw
  %.pn102 = phi { ptr, i32 } [ %i.rd, %bb.cw ], [ %i.re, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264 ], [ %i.re, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %bb.cy

bb.cy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, %bb.cp
  %.pn102.pn = phi { ptr, i32 } [ %.pn102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266 ], [ %i.qf, %bb.cp ], [ %.pn100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258 ], [ %.pn98, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %16) #25
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.co
  %.pn102.pn.pn = phi { ptr, i32 } [ %.pn102.pn, %bb.cy ], [ %i.qe, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %.body

bb.da:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, %bb.cb
  %i.rk = load ptr, ptr %3, align 8, !tbaa !75    ; 2 uses
  %i.rl = icmp eq ptr %i.rk, %i.bq
  br i1 %i.rl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267: ; preds = %bb.da
  %i.rm = load i64, ptr %i.bq, align 8, !tbaa !77
  %i.rn = add i64 %i.rm, 1
  call void @_ZdlPvm(ptr noundef %i.rk, i64 noundef %i.rn) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269
end_hunk_0
