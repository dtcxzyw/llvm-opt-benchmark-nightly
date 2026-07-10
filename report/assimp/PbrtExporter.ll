inline.NumInlined: 1466
inline.NumDeleted: 366
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp12PbrtExporter9WriteMeshEP6aiMesh:._crit_edge.i.i
  store i8 %i.lf, ptr %i.kz, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i220

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kz, ptr align 1 %i.lb, i64 %i.ld, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i220

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i220: ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.lg = load i64, ptr %i.ky, align 8            ; 2 uses
  store i64 %i.lg, ptr %i.bc, align 8
  %i.lh = load ptr, ptr %4, align 8
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.lg
  store i8 0, ptr %i.li, align 1
  %.pre.i221 = load ptr, ptr %12, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit224

.thread.i223:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i222
  store ptr %i.lb, ptr %4, align 8
  %i.lj = load <2 x i64>, ptr %i.ky, align 8
  store <2 x i64> %i.lj, ptr %i.bc, align 8
  br label %bb.as

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i218: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i217
  %i.lk = load i64, ptr %i.bb, align 8
  store ptr %i.lb, ptr %4, align 8
  %i.ll = load <2 x i64>, ptr %i.ky, align 8
  store <2 x i64> %i.ll, ptr %i.bc, align 8
  %.not.i219 = icmp eq ptr %i.kz, null
  br i1 %.not.i219, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i218
  store ptr %i.kz, ptr %12, align 8
  store i64 %i.lk, ptr %i.kn, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit224

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i218, %.thread.i223
  store ptr %i.kn, ptr %12, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit224

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit224: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i220, %bb.ar, %bb.as
  %i.lm = phi ptr [ %.pre.i221, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i220 ], [ %i.kz, %bb.ar ], [ %i.kn, %bb.as ]
  store i64 0, ptr %i.ky, align 8
  store i8 0, ptr %i.lm, align 1
  %i.ln = load ptr, ptr %12, align 8              ; 2 uses
  %i.lo = icmp eq ptr %i.ln, %i.kn
  br i1 %i.lo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit224
  %i.lp = load i64, ptr %i.kn, align 8
  %i.lq = add i64 %i.lp, 1
  call void @_ZdlPvm(ptr noundef %i.ln, i64 noundef %i.lq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit224, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225
  %i.lr = load ptr, ptr %13, align 8              ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.lt = icmp eq ptr %i.lr, %i.ls
  br i1 %i.lt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227
  %i.lu = load i64, ptr %i.ls, align 8
  %i.lv = add i64 %i.lu, 1
  call void @_ZdlPvm(ptr noundef %i.lr, i64 noundef %i.lv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228
  %i.lw = load ptr, ptr %15, align 8              ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ly = icmp eq ptr %i.lw, %i.lx
  br i1 %i.ly, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230
  %i.lz = load i64, ptr %i.lx, align 8
  %i.ma = add i64 %i.lz, 1
  call void @_ZdlPvm(ptr noundef %i.lw, i64 noundef %i.ma) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %i.mb = load ptr, ptr %14, align 8              ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.ih
  br i1 %i.mc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233
  %i.md = load i64, ptr %i.ih, align 8
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.me) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.ay

bb.at:                                            ; preds = %bb.af
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.au:                                            ; preds = %.noexc.i188
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245

bb.av:                                            ; preds = %.noexc189
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i194, %bb.aj, %.critedge.i200
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i209, %bb.al
  %i.mj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mk = load ptr, ptr %13, align 8              ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.mm = icmp eq ptr %i.mk, %i.ml
  br i1 %i.mm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237: ; preds = %bb.ax
  %i.mn = load i64, ptr %i.ml, align 8
  %i.mo = add i64 %i.mn, 1
  call void @_ZdlPvm(ptr noundef %i.mk, i64 noundef %i.mo) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237, %bb.aw
  %.pn = phi { ptr, i32 } [ %i.mi, %bb.aw ], [ %i.mj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237 ], [ %i.mj, %bb.ax ] ; 2 uses
  %i.mp = load ptr, ptr %15, align 8              ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.mr = icmp eq ptr %i.mp, %i.mq
  br i1 %i.mr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239
  %i.ms = load i64, ptr %i.mq, align 8
  %i.mt = add i64 %i.ms, 1
  call void @_ZdlPvm(ptr noundef %i.mp, i64 noundef %i.mt) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240, %bb.av
  %.pn.pn = phi { ptr, i32 } [ %i.mh, %bb.av ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %i.mu = load ptr, ptr %14, align 8              ; 2 uses
  %i.mv = icmp eq ptr %i.mu, %i.ih
  br i1 %i.mv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242
  %i.mw = load i64, ptr %i.ih, align 8
  %i.mx = add i64 %i.mw, 1
  call void @_ZdlPvm(ptr noundef %i.mu, i64 noundef %i.mx) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243, %bb.au
  %.pn.pn.pn = phi { ptr, i32 } [ %i.mg, %bb.au ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.az

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, %_ZNK10aiMaterial3GetEPKcjjRf.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.ba

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, %bb.at
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245 ], [ %i.mf, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %_ZN6aiFaceD2Ev.exit258

bb.ba:                                            ; preds = %bb.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182
  %i.my = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.142, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ba
  %i.mz = load ptr, ptr %4, align 8
  %i.na = load i64, ptr %i.bc, align 8
  %i.nb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.mz, i64 noundef %i.na)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.z

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.nc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nb, ptr noundef nonnull @.str.143, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit249.preheader unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit249.preheader: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ne = load i32, ptr %i.nd, align 8
  %.not = icmp eq i32 %i.ne, 0
  br i1 %.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit249._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit249.preheader
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 208
  br label %bb.bb

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit249._crit_edge: ; preds = %_ZN6aiFaceD2Ev.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit249.preheader
  %i.ng = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.35, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit251 unwind label %bb.z ; 0 uses

bb.bb:                                            ; preds = %.lr.ph, %_ZN6aiFaceD2Ev.exit
  %indvars.iv375 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next376, %_ZN6aiFaceD2Ev.exit ] ; 3 uses
  %i.nh = load ptr, ptr %i.nf, align 8
  %i.ni = getelementptr inbounds nuw [16 x i8], ptr %i.nh, i64 %indvars.iv375 ; 2 uses
  %i.nj = load i32, ptr %i.ni, align 8            ; 3 uses
  %.not.i.i = icmp eq i32 %i.nj, 0
  br i1 %.not.i.i, label %_ZN6aiFaceC2ERKS_.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.nk = zext i32 %i.nj to i64
  %i.nl = shl nuw nsw i64 %i.nk, 2                ; 2 uses
  %i.nm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.nl) #29
          to label %_ZN6aiFaceC2ERKS_.exit unwind label %bb.be ; 8 uses

_ZN6aiFaceC2ERKS_.exit:                           ; preds = %bb.bc
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.no = load ptr, ptr %i.nn, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.nm, ptr align 4 %i.no, i64 %i.nl, i1 false)
  %.not112 = icmp eq i32 %i.nj, 3
  br i1 %.not112, label %.preheader, label %_ZN6aiFaceC2ERKS_.exit.thread

_ZN6aiFaceC2ERKS_.exit.thread:                    ; preds = %_ZN6aiFaceC2ERKS_.exit, %bb.bb
  %.sroa.6391.0 = phi ptr [ null, %bb.bb ], [ %i.nm, %_ZN6aiFaceC2ERKS_.exit ] ; 2 uses
  %i.np = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyExportErrorC2IJRA17_KcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.np, ptr noundef nonnull align 1 dereferenceable(17) @.str.144)
          to label %bb.bd unwind label %bb.bf

bb.bd:                                            ; preds = %_ZN6aiFaceC2ERKS_.exit.thread
  invoke void @__cxa_throw(ptr nonnull %i.np, ptr nonnull @_ZTI17DeadlyExportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.ce unwind label %.loopexit.split-lp

bb.be:                                            ; preds = %bb.bc
  %i.nq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6aiFaceD2Ev.exit258

bb.bf:                                            ; preds = %_ZN6aiFaceC2ERKS_.exit.thread
  %i.nr = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.np) #24
  br label %bb.bi

.loopexit:                                        ; preds = %bb.bh
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp:                               ; preds = %bb.bd
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.preheader:                                       ; preds = %_ZN6aiFaceC2ERKS_.exit
  %i.ns = load i32, ptr %i.nm, align 4
  %i.nt = zext i32 %i.ns to i64
  %i.nu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %i.nt)
          to label %_ZNSolsEj.exit unwind label %bb.bg

_ZNSolsEj.exit:                                   ; preds = %.preheader
  %i.nv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nu, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit255 unwind label %bb.bg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit255: ; preds = %_ZNSolsEj.exit
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nm, i64 4
  %i.nx = load i32, ptr %i.nw, align 4
  %i.ny = zext i32 %i.nx to i64
  %i.nz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %i.ny)
          to label %_ZNSolsEj.exit.1 unwind label %bb.bg

_ZNSolsEj.exit.1:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit255
  %i.oa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nz, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit255.1 unwind label %bb.bg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit255.1: ; preds = %_ZNSolsEj.exit.1
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %i.oc = load i32, ptr %i.ob, align 4
  %i.od = zext i32 %i.oc to i64
  %i.oe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %i.od)
          to label %_ZNSolsEj.exit.2 unwind label %bb.bg

_ZNSolsEj.exit.2:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit255.1
  %i.of = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oe, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit255.2 unwind label %bb.bg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit255.2: ; preds = %_ZNSolsEj.exit.2
  %16 = trunc nuw i64 %indvars.iv375 to i32
  %i.og = urem i32 %16, 7
  %i.oh = icmp eq i32 %i.og, 6
  br i1 %i.oh, label %bb.bh, label %_ZN6aiFaceD2Ev.exit

bb.bg:                                            ; preds = %_ZNSolsEj.exit.2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit255.1, %_ZNSolsEj.exit.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit255, %_ZNSolsEj.exit, %.preheader
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.bh:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit255.2
  %i.oj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.145, i64 noundef 5)
          to label %_ZN6aiFaceD2Ev.exit unwind label %.loopexit ; 0 uses

_ZN6aiFaceD2Ev.exit:                              ; preds = %bb.bh, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit255.2
  call void @_ZdaPv(ptr noundef nonnull %i.nm) #26
  %indvars.iv.next376 = add nuw nsw i64 %indvars.iv375, 1 ; 2 uses
  %i.ok = load i32, ptr %i.nd, align 8
  %17 = zext i32 %i.ok to i64
  %i.ol = icmp samesign ult i64 %indvars.iv.next376, %17
  br i1 %i.ol, label %bb.bb, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit249._crit_edge, !llvm.loop !141

bb.bi:                                            ; preds = %.loopexit.split-lp, %bb.bf
  %.pn113 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.nr, %bb.bf ] ; 2 uses
  %i.om = icmp eq ptr %.sroa.6391.0, null
  br i1 %i.om, label %_ZN6aiFaceD2Ev.exit258, label %.thread

.thread:                                          ; preds = %bb.bg, %.loopexit, %bb.bi
  %.pn113485 = phi { ptr, i32 } [ %.pn113, %bb.bi ], [ %i.oi, %bb.bg ], [ %lpad.loopexit, %.loopexit ]
  %.sroa.6391.1484 = phi ptr [ %.sroa.6391.0, %bb.bi ], [ %i.nm, %bb.bg ], [ %i.nm, %.loopexit ]
  call void @_ZdaPv(ptr noundef nonnull %.sroa.6391.1484) #26
  br label %_ZN6aiFaceD2Ev.exit258

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit251: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit249._crit_edge
  %i.on = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.146, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit260.preheader unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit260.preheader: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit251
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 8 uses
  %i.op = load i32, ptr %i.oo, align 4
  %.not369 = icmp eq i32 %i.op, 0
  br i1 %.not369, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit260._crit_edge, label %.lr.ph361

.lr.ph361:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit260.preheader
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.bj

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit260._crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit275, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit260.preheader
  %i.or = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.35, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit262 unwind label %bb.z ; 0 uses

bb.bj:                                            ; preds = %.lr.ph361, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit275
  %indvars.iv375.a = phi i64 [ 0, %.lr.ph361 ], [ %indvars.iv.next376.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit275 ] ; 3 uses
  %i.os = load ptr, ptr %i.oq, align 8
  %i.ot = getelementptr inbounds nuw [12 x i8], ptr %i.os, i64 %indvars.iv375.a ; 3 uses
  %.sroa.028.0.copyload = load float, ptr %i.ot, align 4
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ot, i64 4
  %.sroa.529.0.copyload = load float, ptr %.sroa.529.0..sroa_idx, align 4
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %.sroa.630.0.copyload = load float, ptr %.sroa.630.0..sroa_idx, align 4
  %i.ou = fpext float %.sroa.028.0.copyload to double
  %i.ov = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, double noundef %i.ou)
          to label %_ZNSolsEf.exit unwind label %bb.bl ; 2 uses

_ZNSolsEf.exit:                                   ; preds = %bb.bj
  %i.ow = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ov, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265 unwind label %bb.bl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265: ; preds = %_ZNSolsEf.exit
  %i.ox = fpext float %.sroa.529.0.copyload to double
  %i.oy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ov, double noundef %i.ox)
          to label %_ZNSolsEf.exit267 unwind label %bb.bl ; 2 uses

_ZNSolsEf.exit267:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265
  %i.oz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oy, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit269 unwind label %bb.bl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit269: ; preds = %_ZNSolsEf.exit267
  %i.pa = fpext float %.sroa.630.0.copyload to double
  %i.pb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.oy, double noundef %i.pa)
          to label %_ZNSolsEf.exit271 unwind label %bb.bl

_ZNSolsEf.exit271:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit269
  %i.pc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pb, ptr noundef nonnull @.str.147, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit273 unwind label %bb.bl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit273: ; preds = %_ZNSolsEf.exit271
  %i.pd = and i64 %indvars.iv375.a, 3
  %i.pe = icmp eq i64 %i.pd, 3
  br i1 %i.pe, label %bb.bk, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit275

bb.bk:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit273
  %i.pf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.145, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit275 unwind label %bb.bl ; 0 uses

bb.bl:                                            ; preds = %bb.bk, %_ZNSolsEf.exit271, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit269, %_ZNSolsEf.exit267, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265, %_ZNSolsEf.exit, %bb.bj
  %i.pg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6aiFaceD2Ev.exit258

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit275: ; preds = %bb.bk, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit273
  %indvars.iv.next376.a = add nuw nsw i64 %indvars.iv375.a, 1 ; 2 uses
  %i.ph = load i32, ptr %i.oo, align 4
  %i.pi = zext i32 %i.ph to i64
  %i.pj = icmp samesign ult i64 %indvars.iv.next376.a, %i.pi
  br i1 %i.pj, label %bb.bj, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit260._crit_edge, !llvm.loop !142

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit262: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit260._crit_edge
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.pl = load ptr, ptr %i.pk, align 8
  %.not108 = icmp eq ptr %i.pl, null
  br i1 %.not108, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit279, label %bb.bm

bb.bm:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit262
  %i.pm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.148, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit277.preheader unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit277.preheader: ; preds = %bb.bm
  %i.pn = load i32, ptr %i.oo, align 4
  %.not370 = icmp eq i32 %i.pn, 0
  br i1 %.not370, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit277._crit_edge, label %.lr.ph363

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit277._crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit293, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit277.preheader
  %i.po = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.35, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit279 unwind label %bb.z ; 0 uses

.lr.ph363:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit277.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit293
  %indvars.iv378 = phi i64 [ %indvars.iv.next379, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit293 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit277.preheader ] ; 3 uses
  %i.pp = load ptr, ptr %i.pk, align 8
  %i.pq = getelementptr inbounds nuw [12 x i8], ptr %i.pp, i64 %indvars.iv378 ; 3 uses
  %.sroa.021.0.copyload = load float, ptr %i.pq, align 4
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pq, i64 4
  %.sroa.522.0.copyload = load float, ptr %.sroa.522.0..sroa_idx, align 4
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  %.sroa.623.0.copyload = load float, ptr %.sroa.623.0..sroa_idx, align 4
  %i.pr = fpext float %.sroa.021.0.copyload to double
  %i.ps = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, double noundef %i.pr)
          to label %_ZNSolsEf.exit281 unwind label %bb.bo ; 2 uses

_ZNSolsEf.exit281:                                ; preds = %.lr.ph363
  %i.pt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ps, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit283 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit283: ; preds = %_ZNSolsEf.exit281
  %i.pu = fpext float %.sroa.522.0.copyload to double
  %i.pv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ps, double noundef %i.pu)
          to label %_ZNSolsEf.exit285 unwind label %bb.bo ; 2 uses

_ZNSolsEf.exit285:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit283
  %i.pw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pv, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit287 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit287: ; preds = %_ZNSolsEf.exit285
  %i.px = fpext float %.sroa.623.0.copyload to double
  %i.py = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.pv, double noundef %i.px)
          to label %_ZNSolsEf.exit289 unwind label %bb.bo

_ZNSolsEf.exit289:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit287
  %i.pz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.py, ptr noundef nonnull @.str.147, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit291 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit291: ; preds = %_ZNSolsEf.exit289
  %i.qa = and i64 %indvars.iv378, 3
  %i.qb = icmp eq i64 %i.qa, 3
  br i1 %i.qb, label %bb.bn, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit293

bb.bn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit291
  %i.qc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.145, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit293 unwind label %bb.bo ; 0 uses

bb.bo:                                            ; preds = %bb.bn, %_ZNSolsEf.exit289, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit287, %_ZNSolsEf.exit285, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit283, %_ZNSolsEf.exit281, %.lr.ph363
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6aiFaceD2Ev.exit258

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit293: ; preds = %bb.bn, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit291
  %indvars.iv.next379 = add nuw nsw i64 %indvars.iv378, 1 ; 2 uses
  %i.qe = load i32, ptr %i.oo, align 4
  %i.qf = zext i32 %i.qe to i64
  %i.qg = icmp samesign ult i64 %indvars.iv.next379, %i.qf
  br i1 %i.qg, label %.lr.ph363, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit277._crit_edge, !llvm.loop !143

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit279: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit277._crit_edge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit262
  %i.qh = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.qi = load ptr, ptr %i.qh, align 8
  %.not109 = icmp eq ptr %i.qi, null
  br i1 %.not109, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit297, label %bb.bp

bb.bp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit279
  %i.qj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.149, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit295.preheader unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit295.preheader: ; preds = %bb.bp
  %i.qk = load i32, ptr %i.oo, align 4
  %.not371 = icmp eq i32 %i.qk, 0
  br i1 %.not371, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit295._crit_edge, label %.lr.ph365

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit295._crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit311, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit295.preheader
  %i.ql = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.35, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit297 unwind label %bb.z ; 0 uses

.lr.ph365:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit295.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit311
  %indvars.iv381 = phi i64 [ %indvars.iv.next382, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit311 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit295.preheader ] ; 3 uses
  %i.qm = load ptr, ptr %i.qh, align 8
  %i.qn = getelementptr inbounds nuw [12 x i8], ptr %i.qm, i64 %indvars.iv381 ; 3 uses
  %.sroa.0.0.copyload = load float, ptr %i.qn, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qn, i64 4
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4
  %i.qo = fpext float %.sroa.0.0.copyload to double
  %i.qp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, double noundef %i.qo)
          to label %_ZNSolsEf.exit299 unwind label %bb.br ; 2 uses

_ZNSolsEf.exit299:                                ; preds = %.lr.ph365
  %i.qq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qp, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit301 unwind label %bb.br ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit301: ; preds = %_ZNSolsEf.exit299
  %i.qr = fpext float %.sroa.5.0.copyload to double
end_hunk_0
