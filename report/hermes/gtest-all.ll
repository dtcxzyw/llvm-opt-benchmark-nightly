Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/gtest-all?download=true
inline.NumInlined: 6243
inline.NumDeleted: 1690
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN7testing8internal24XmlUnitTestResultPrinter16PrintXmlTestCaseEPSoRKNS_8TestCaseE:._crit_edge.i.i
  br label %.body107

bb.ap:                                            ; preds = %bb.v
  %i.ic = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.id = load ptr, ptr %14, align 8, !tbaa !45   ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.if = icmp eq ptr %i.id, %i.ie
  br i1 %i.if, label %.body107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %bb.ap
  %i.ig = load i64, ptr %i.ie, align 8, !tbaa !46
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ih) #54
  br label %.body107

.body107:                                         ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188, %bb.ao, %_ZN7testing7MessageD2Ev.exit3.i103
  %.pn46 = phi { ptr, i32 } [ %eh.lpad-body.i101, %_ZN7testing7MessageD2Ev.exit3.i103 ], [ %i.ib, %bb.ao ], [ %i.ic, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188 ], [ %i.ic, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #53
  %i.ii = load ptr, ptr %13, align 8, !tbaa !45   ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.bu
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %.body107
  %i.ik = load i64, ptr %i.bu, align 8, !tbaa !46
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.il) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %.body107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #53
  br label %bb.az

bb.aq:                                            ; preds = %_ZNK7testing8TestCase30reportable_disabled_test_countEv.exit
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %.body134

bb.ar:                                            ; preds = %bb.ad
  %i.in = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.io = load ptr, ptr %16, align 8, !tbaa !45   ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.iq = icmp eq ptr %i.io, %i.ip
  br i1 %i.iq, label %.body134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194: ; preds = %bb.ar
  %i.ir = load i64, ptr %i.ip, align 8, !tbaa !46
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.is) #54
  br label %.body134

.body134:                                         ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194, %bb.aq, %_ZN7testing7MessageD2Ev.exit3.i130
  %.pn49 = phi { ptr, i32 } [ %eh.lpad-body.i128, %_ZN7testing7MessageD2Ev.exit3.i130 ], [ %i.im, %bb.aq ], [ %i.in, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194 ], [ %i.in, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #53
  %i.it = load ptr, ptr %15, align 8, !tbaa !45   ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.ds
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197: ; preds = %.body134
  %i.iv = load i64, ptr %i.ds, align 8, !tbaa !46
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.iw) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199: ; preds = %.body134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #53
  br label %bb.az

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142
  %i.ix = landingpad { ptr, i32 }
          cleanup
  %i.iy = load ptr, ptr %18, align 8, !tbaa !45   ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.fk
  br i1 %i.iz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200: ; preds = %bb.as
  %i.ja = load i64, ptr %i.fk, align 8, !tbaa !46
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jb) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #53
  %i.jc = load ptr, ptr %17, align 8, !tbaa !45   ; 2 uses
  %i.jd = icmp eq ptr %i.jc, %i.fh
  br i1 %i.jd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202
  %i.je = load i64, ptr %i.fh, align 8, !tbaa !46
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jf) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #53
  br label %bb.az

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

bb.au:                                            ; preds = %bb.ag
  %i.jh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ji = load ptr, ptr %20, align 8, !tbaa !45   ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.jk = icmp eq ptr %i.ji, %i.jj
  br i1 %i.jk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206: ; preds = %bb.au
  %i.jl = load i64, ptr %i.jj, align 8, !tbaa !46
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jm) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206, %bb.at
  %.pn55 = phi { ptr, i32 } [ %i.jg, %bb.at ], [ %i.jh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206 ], [ %i.jh, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #53
  %i.jn = load ptr, ptr %19, align 8, !tbaa !45   ; 2 uses
  %i.jo = icmp eq ptr %i.jn, %i.fv
  br i1 %i.jo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
  %i.jp = load i64, ptr %i.fv, align 8, !tbaa !46
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jq) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #53
  br label %bb.az

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214

bb.aw:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit168, %bb.ai
  %i.js = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jt = load ptr, ptr %21, align 8, !tbaa !45   ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.jv = icmp eq ptr %i.jt, %i.ju
  br i1 %i.jv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212: ; preds = %bb.aw
  %i.jw = load i64, ptr %i.ju, align 8, !tbaa !46
  %i.jx = add i64 %i.jw, 1
  call void @_ZdlPvm(ptr noundef %i.jt, i64 noundef %i.jx) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212, %bb.av
  %.pn58 = phi { ptr, i32 } [ %i.jr, %bb.av ], [ %i.js, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212 ], [ %i.js, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #53
  br label %bb.az

bb.ax:                                            ; preds = %.lr.ph, %_ZNK7testing8TestCase11GetTestInfoEi.exit.thread
  %i.jy = phi ptr [ %i.gv, %.lr.ph ], [ %i.kr, %_ZNK7testing8TestCase11GetTestInfoEi.exit.thread ] ; 3 uses
  %i.jz = phi ptr [ %i.gu, %.lr.ph ], [ %i.ks, %_ZNK7testing8TestCase11GetTestInfoEi.exit.thread ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK7testing8TestCase11GetTestInfoEi.exit.thread ] ; 3 uses
  %i.ka = load ptr, ptr %i.hd, align 8, !tbaa !333
  %i.kb = load ptr, ptr %i.hc, align 8, !tbaa !330 ; 2 uses
  %i.kc = ptrtoint ptr %i.ka to i64
  %i.kd = ptrtoint ptr %i.kb to i64
  %i.ke = sub i64 %i.kc, %i.kd
  %sext = shl i64 %i.ke, 30
  %i.kf = ashr i64 %sext, 32
  %.not.i.i215 = icmp slt i64 %indvars.iv, %i.kf
  br i1 %.not.i.i215, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %_ZNK7testing8TestCase11GetTestInfoEi.exit.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %bb.ax
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %indvars.iv
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !39 ; 2 uses
  %i.ki = icmp sgt i32 %i.kh, -1
  call void @llvm.assume(i1 %i.ki)
  %i.kj = zext nneg i32 %i.kh to i64
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.kj
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !194 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 130
  %i.kn = load i8, ptr %i.km, align 2, !tbaa !201, !range !96, !noundef !97
  %i.ko = trunc nuw i8 %i.kn to i1
  br i1 %i.ko, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i217, label %_ZNK7testing8TestCase11GetTestInfoEi.exit.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i217: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %i.kp = load ptr, ptr %i.l, align 8, !tbaa !45
  invoke void @_ZN7testing8internal24XmlUnitTestResultPrinter17OutputXmlTestInfoEPSoPKcRKNS_8TestInfoE(ptr noundef nonnull %0, ptr noundef %i.kp, ptr noundef nonnull align 8 dereferenceable(264) %i.kl)
          to label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i217._crit_edge unwind label %bb.ay

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i217._crit_edge: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i217
  %.pre = load ptr, ptr %i.am, align 8, !tbaa !203
  %.pre241 = load ptr, ptr %i.ak, align 8, !tbaa !204
  br label %_ZNK7testing8TestCase11GetTestInfoEi.exit.thread

bb.ay:                                            ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i217
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

_ZNK7testing8TestCase11GetTestInfoEi.exit.thread: ; preds = %bb.ax, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i217._crit_edge, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %i.kr = phi ptr [ %.pre241, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i217._crit_edge ], [ %i.jy, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i ], [ %i.jy, %bb.ax ] ; 2 uses
  %i.ks = phi ptr [ %.pre, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i217._crit_edge ], [ %i.jz, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i ], [ %i.jz, %bb.ax ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kt = ptrtoint ptr %i.ks to i64
  %i.ku = ptrtoint ptr %i.kr to i64
  %i.kv = sub i64 %i.kt, %i.ku
  %sext312 = shl i64 %i.kv, 29
  %i.kw = ashr i64 %sext312, 32
  %i.kx = icmp slt i64 %indvars.iv.next, %i.kw
  br i1 %i.kx, label %bb.ax, label %._crit_edge, !llvm.loop !985

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175: ; preds = %._crit_edge
  %i.ky = load ptr, ptr %8, align 8, !tbaa !45
  %i.kz = load i64, ptr %i.c, align 8, !tbaa !49
  %i.la = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ky, i64 noundef %i.kz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit220 unwind label %bb.aj

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit220: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175
  %i.lb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.la, ptr noundef nonnull @.str.203, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222 unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit220
  %i.lc = load ptr, ptr %8, align 8, !tbaa !45    ; 2 uses
  %i.ld = icmp eq ptr %i.lc, %i.b
  br i1 %i.ld, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222
  %i.le = load i64, ptr %i.b, align 8, !tbaa !46
  %i.lf = add i64 %i.le, 1
  call void @_ZdlPvm(ptr noundef %i.lc, i64 noundef %i.lf) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #53
  ret void

bb.az:                                            ; preds = %bb.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, %bb.aj
  %.pn60 = phi { ptr, i32 } [ %i.kq, %bb.ay ], [ %i.hf, %bb.aj ], [ %.pn58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214 ], [ %.pn55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211 ], [ %i.ix, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205 ], [ %.pn49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199 ], [ %.pn46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193 ], [ %.pn43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181 ]
  %i.lg = load ptr, ptr %8, align 8, !tbaa !45    ; 2 uses
  %i.lh = icmp eq ptr %i.lg, %i.b
  br i1 %i.lh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226: ; preds = %bb.az
  %i.li = load i64, ptr %i.b, align 8, !tbaa !46
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lg, i64 noundef %i.lj) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #53
  resume { ptr, i32 } %.pn60
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK7testing8UnitTest21reportable_test_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !199  ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !200  ; 3 uses
  %.not15.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not15.i.i, label %_ZNK7testing8internal12UnitTestImpl21reportable_test_countEv.exit, label %.lr.ph.split.us.i.preheader.i

.lr.ph.split.us.i.preheader.i:                    ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %_ZNK7testing8TestCase21reportable_test_countEv.exit.i, %.lr.ph.split.us.i.preheader.i
  %.014.us.i.i = phi i64 [ %i.w, %_ZNK7testing8TestCase21reportable_test_countEv.exit.i ], [ 0, %.lr.ph.split.us.i.preheader.i ] ; 2 uses
  %.01213.us.i.i = phi i32 [ %i.v, %_ZNK7testing8TestCase21reportable_test_countEv.exit.i ], [ 0, %.lr.ph.split.us.i.preheader.i ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.014.us.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !184  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !193  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !193  ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not7.i.i.i, label %_ZNK7testing8TestCase21reportable_test_countEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.split.us.i.i, %.lr.ph.i.i.i
  %.09.i.i.i = phi i32 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ 0, %.lr.ph.split.us.i.i ]
  %.sroa.04.08.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.n, %.lr.ph.split.us.i.i ] ; 2 uses
  %i.q = load ptr, ptr %.sroa.04.08.i.i.i, align 8, !tbaa !194
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 130
  %i.s = load i8, ptr %i.r, align 2, !tbaa !201, !range !96, !noundef !97
  %i.t = zext nneg i8 %i.s to i32
  %spec.select.i.i.i = add nuw nsw i32 %.09.i.i.i, %i.t ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.p
  br i1 %.not.i.i.i, label %_ZNK7testing8TestCase21reportable_test_countEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZNK7testing8TestCase21reportable_test_countEv.exit.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.split.us.i.i
  %.0.lcssa.i.i.i = phi i32 [ 0, %.lr.ph.split.us.i.i ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %i.v = add nsw i32 %.0.lcssa.i.i.i, %.01213.us.i.i ; 2 uses
  %i.w = add nuw i64 %.014.us.i.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.w, %i.j
  br i1 %exitcond.not.i, label %_ZNK7testing8internal12UnitTestImpl21reportable_test_countEv.exit, label %.lr.ph.split.us.i.i, !llvm.loop !8

_ZNK7testing8internal12UnitTestImpl21reportable_test_countEv.exit: ; preds = %_ZNK7testing8TestCase21reportable_test_countEv.exit.i, %bb.a
  %.012.lcssa.i.i = phi i32 [ 0, %bb.a ], [ %i.v, %_ZNK7testing8TestCase21reportable_test_countEv.exit.i ]
  ret i32 %.012.lcssa.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK7testing8UnitTest15start_timestampEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.d = load i64, ptr %i.c, align 8, !tbaa !350
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(120) ptr @_ZNK7testing8UnitTest18ad_hoc_test_resultEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal17StreamingListener9UrlEncodeB5cxx11EPKc(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !49
  store i8 0, ptr %i.a, align 8, !tbaa !46
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #55
  %i.d = add i64 %i.c, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d)
          to label %.preheader unwind label %bb.c

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.o
  %.014 = phi ptr [ %i.be, %bb.o ], [ %1, %.preheader ] ; 2 uses
  %.0 = load i8, ptr %.014, align 1, !tbaa !46    ; 3 uses
  switch i8 %.0, label %bb.l [
    i8 0, label %bb.p
    i8 37, label %bb.d
    i8 61, label %bb.d
    i8 38, label %bb.d
    i8 10, label %bb.d
  ]

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  invoke void @_ZN7testing8internal6String10FormatByteB5cxx11Eh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i8 noundef zeroext %.0)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.223, i64 noundef 1)
          to label %.noexc unwind label %bb.j     ; 6 uses

.noexc:                                           ; preds = %bb.e
  store ptr %i.e, ptr %2, align 8, !tbaa !47, !alias.scope !995
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 5 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !49   ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.p, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.j, ptr %2, align 8, !tbaa !45, !alias.scope !995
  %i.q = load i64, ptr %i.k, align 8, !tbaa !46
  store i64 %i.q, ptr %i.e, align 8, !tbaa !46, !alias.scope !995
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !49
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %i.r = phi i64 [ %i.n, %bb.f ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.r, ptr %i.f, align 8, !tbaa !49, !alias.scope !995
end_hunk_0
begin_hunk_1_@_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #53
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 1, ptr %i.r, align 8, !tbaa !55
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %7, align 8, !tbaa !57
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %i.q, ptr %i.t, align 8, !tbaa !59
  %i.u = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull @.str.80, i64 noundef 1)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #53
  br label %.body

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit:        ; preds = %bb.f
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #53
  br label %bb.l

bb.h:                                             ; preds = %bb.s, %bb.o
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.k, %bb.q, %bb.r, %bb.h, %bb.m, %bb.g, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.o, %bb.e ], [ %i.v, %bb.g ], [ %i.af, %bb.k ], [ %i.am, %bb.m ], [ %i.aw, %bb.q ], [ %i.w, %bb.h ], [ %i.bd, %bb.r ]
  %i.x = load ptr, ptr %10, align 8, !tbaa !52    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !57
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(128) %i.x) #53, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %.body, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #53
  resume { ptr, i32 } %eh.lpad-body

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #53
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 1, ptr %i.ab, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %6, align 8, !tbaa !57
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.b, ptr %i.ad, align 8, !tbaa !59
  %i.ae = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull @.str.427, i64 noundef 21)
          to label %_ZN7testing7MessagelsIA22_cEERS0_RKT_.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #53
  br label %.body

_ZN7testing7MessagelsIA22_cEERS0_RKT_.exit:       ; preds = %bb.j
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #53
  br label %bb.l

bb.l:                                             ; preds = %_ZN7testing7MessagelsIA22_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit
  %i.ag = load ptr, ptr %10, align 8, !tbaa !52
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 1, ptr %i.ai, align 8, !tbaa !55
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %5, align 8, !tbaa !57
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !59
  %i.al = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull @.str.428, i64 noundef 11)
          to label %bb.n unwind label %bb.m       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  br label %.body

bb.n:                                             ; preds = %bb.l
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  %i.an = icmp eq ptr %2, null
  %i.ao = load ptr, ptr %10, align 8, !tbaa !52
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  br i1 %i.an, label %bb.o, label %_ZN4llvh9StringRefC2EPKc.exit.i.i.i13

bb.o:                                             ; preds = %bb.n
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @.str.83, i64 noundef 6)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit19 unwind label %bb.h ; 0 uses

_ZN4llvh9StringRefC2EPKc.exit.i.i.i13:            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 1, ptr %i.ar, align 8, !tbaa !55
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %4, align 8, !tbaa !57
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.ap, ptr %i.at, align 8, !tbaa !59
  %i.au = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #55 ; 2 uses
  %.not.i.i14 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i14, label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i15, label %bb.p

bb.p:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i.i.i13
  %i.av = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull %2, i64 noundef %i.au)
          to label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i15 unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  br label %.body

_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i15: ; preds = %bb.p, %_ZN4llvh9StringRefC2EPKc.exit.i.i.i13
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  br label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit19

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit19:       ; preds = %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i15, %bb.o
  %i.ax = load ptr, ptr %10, align 8, !tbaa !52
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %i.az, align 8, !tbaa !55
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %3, align 8, !tbaa !57
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !59
  %i.bc = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull @.str.38, i64 noundef 1)
          to label %bb.s unwind label %bb.r       ; 0 uses

bb.r:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit19
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  br label %.body

bb.s:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit19
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  %i.be = load ptr, ptr %10, align 8, !tbaa !52, !noalias !1952
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %i.be)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit unwind label %bb.h

_ZNK7testing7Message9GetStringB5cxx11Ev.exit:     ; preds = %bb.s
  %i.bf = load ptr, ptr %10, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i25, label %_ZN7testing7MessageD2Ev.exit26, label %bb.t

bb.t:                                             ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !57
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(128) %i.bf) #53, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit26

_ZN7testing7MessageD2Ev.exit26:                   ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #53
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !87   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !88     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorIN7testing8internal9TraceInfoESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.397) #56
  unreachable

_ZNKSt6vectorIN7testing8internal9TraceInfoESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = sdiv exact i64 %i.g, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 192153584101141162)
  %i.m = select i1 %i.k, i64 192153584101141162, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = mul nuw nsw i64 %i.m, 48                 ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #57 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 12, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !47
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !45   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !49   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #53
  store i64 %i.x, ptr %i.a, align 8, !tbaa !48
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNKSt6vectorIN7testing8internal9TraceInfoESaIS2_EE12_M_check_lenEmPKc.exit
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.z, ptr %i.s, align 8, !tbaa !45
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !46
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNKSt6vectorIN7testing8internal9TraceInfoESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ab = phi ptr [ %i.z, %.noexc ], [ %i.u, %_ZNKSt6vectorIN7testing8internal9TraceInfoESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.x, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !46
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !46
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !48  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !49
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #53
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aw, %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.av, %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1960)
  call void @llvm.experimental.noalias.scope.decl(metadata !1961)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i, i64 12, i1 false), !alias.scope !1962
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 3 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !47, !alias.scope !1960, !noalias !1961
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !45, !alias.scope !1961, !noalias !1960 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !49, !alias.scope !1961, !noalias !1960 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false), !alias.scope !1962
  br label %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !45, !alias.scope !1960, !noalias !1961
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !46, !alias.scope !1961, !noalias !1960
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !46, !alias.scope !1960, !noalias !1961
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !49, !alias.scope !1961, !noalias !1960
  br label %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.f
  %i.as = phi i64 [ %i.ao, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  store i64 %i.as, ptr %i.au, align 8, !tbaa !49, !alias.scope !1960, !noalias !1961
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !45, !alias.scope !1961, !noalias !1960
  store i64 0, ptr %i.at, align 8, !tbaa !49, !alias.scope !1961, !noalias !1960
  store i8 0, ptr %i.al, align 8, !tbaa !46, !alias.scope !1961, !noalias !1960
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !1956

_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.aw, %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bn, %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.ax, %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bm, %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1963)
  call void @llvm.experimental.noalias.scope.decl(metadata !1964)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i28, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i29, i64 12, i1 false), !alias.scope !1965
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 3 uses
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !47, !alias.scope !1963, !noalias !1964
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !45, !alias.scope !1964, !noalias !1963 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 5 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !49, !alias.scope !1964, !noalias !1963 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i64 %i.bh, i1 false), !alias.scope !1965
  br label %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !45, !alias.scope !1963, !noalias !1964
  %i.bi = load i64, ptr %i.bc, align 8, !tbaa !46, !alias.scope !1964, !noalias !1963
  store i64 %i.bi, ptr %i.ba, align 8, !tbaa !46, !alias.scope !1963, !noalias !1964
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 24
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !49, !alias.scope !1964, !noalias !1963
  br label %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.g
  %i.bj = phi i64 [ %i.bf, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 24
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !49, !alias.scope !1963, !noalias !1964
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !45, !alias.scope !1964, !noalias !1963
  store i64 0, ptr %i.bk, align 8, !tbaa !49, !alias.scope !1964, !noalias !1963
  store i8 0, ptr %i.bc, align 8, !tbaa !46, !alias.scope !1964, !noalias !1963
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 48 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 48 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bm, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !1956

_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36: ; preds = %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.ax, %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bn, %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN7testing8internal9TraceInfoESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !354
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.br) #54
  br label %_ZNSt12_Vector_baseIN7testing8internal9TraceInfoESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN7testing8internal9TraceInfoESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, %bb.h
  store ptr %i.q, ptr %0, align 8, !tbaa !88
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !87
  %i.bs = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bs, ptr %i.bo, align 8, !tbaa !354
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i.i
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  %i.bw = call ptr @__cxa_begin_catch(ptr %i.bv) #53 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #54
  invoke void @__cxa_rethrow() #56
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bt

bb.l:                                             ; preds = %bb.i
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #59
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: nounwind
declare i32 @pthread_key_create(ptr noundef, ptr noundef) local_unnamed_addr #20
end_hunk_1
