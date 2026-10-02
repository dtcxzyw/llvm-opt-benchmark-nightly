Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/gtest-all?download=true
inline.NumInlined: 5401
inline.NumDeleted: 1176
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN7testing8internal24XmlUnitTestResultPrinter16PrintXmlTestCaseEPSoRKNS_8TestCaseE:._crit_edge.i.i
  br label %.body106

bb.ad:                                            ; preds = %bb.n
  %i.hw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hx = load ptr, ptr %8, align 8, !tbaa !41    ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.hz = icmp eq ptr %i.hx, %i.hy
  br i1 %i.hz, label %.body106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186: ; preds = %bb.ad
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !42
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ib) #54
  br label %.body106

.body106:                                         ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186, %bb.ac, %_ZN7testing7MessageD2Ev.exit3.i103, %bb.m
  %.pn46 = phi { ptr, i32 } [ %i.cy, %_ZN7testing7MessageD2Ev.exit3.i103 ], [ %i.hv, %bb.ac ], [ %i.cq, %bb.m ], [ %i.hw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186 ], [ %i.hw, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #53
  %i.ic = load ptr, ptr %7, align 8, !tbaa !41    ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.bs
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189: ; preds = %.body106
  %i.ie = load i64, ptr %i.bs, align 8, !tbaa !42
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.if) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191: ; preds = %.body106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #53
  br label %bb.an

bb.ae:                                            ; preds = %_ZNK7testing8TestCase30reportable_disabled_test_countEv.exit
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %.body132

bb.af:                                            ; preds = %bb.r
  %i.ih = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ii = load ptr, ptr %10, align 8, !tbaa !41   ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %.body132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192: ; preds = %bb.af
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !42
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.im) #54
  br label %.body132

.body132:                                         ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192, %bb.ae, %_ZN7testing7MessageD2Ev.exit3.i129, %bb.q
  %.pn49 = phi { ptr, i32 } [ %i.el, %_ZN7testing7MessageD2Ev.exit3.i129 ], [ %i.ig, %bb.ae ], [ %i.ed, %bb.q ], [ %i.ih, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192 ], [ %i.ih, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #53
  %i.in = load ptr, ptr %9, align 8, !tbaa !41    ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.do
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195: ; preds = %.body132
  %i.ip = load i64, ptr %i.do, align 8, !tbaa !42
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.iq) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197: ; preds = %.body132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #53
  br label %bb.an

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.ir = landingpad { ptr, i32 }
          cleanup
  %i.is = load ptr, ptr %12, align 8, !tbaa !41   ; 2 uses
  %i.it = icmp eq ptr %i.is, %i.fe
  br i1 %i.it, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198: ; preds = %bb.ag
  %i.iu = load i64, ptr %i.fe, align 8, !tbaa !42
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iv) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #53
  %i.iw = load ptr, ptr %11, align 8, !tbaa !41   ; 2 uses
  %i.ix = icmp eq ptr %i.iw, %i.fb
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200
  %i.iy = load i64, ptr %i.fb, align 8, !tbaa !42
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.iz) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #53
  br label %bb.an

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

bb.ai:                                            ; preds = %bb.u
  %i.jb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jc = load ptr, ptr %14, align 8, !tbaa !41   ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.je = icmp eq ptr %i.jc, %i.jd
  br i1 %i.je, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204: ; preds = %bb.ai
  %i.jf = load i64, ptr %i.jd, align 8, !tbaa !42
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jg) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204, %bb.ah
  %.pn55 = phi { ptr, i32 } [ %i.ja, %bb.ah ], [ %i.jb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204 ], [ %i.jb, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #53
  %i.jh = load ptr, ptr %13, align 8, !tbaa !41   ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.fp
  br i1 %i.ji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206
  %i.jj = load i64, ptr %i.fp, align 8, !tbaa !42
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jk) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #53
  br label %bb.an

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212

bb.ak:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit166, %bb.w
  %i.jm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jn = load ptr, ptr %15, align 8, !tbaa !41   ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.jp = icmp eq ptr %i.jn, %i.jo
  br i1 %i.jp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210: ; preds = %bb.ak
  %i.jq = load i64, ptr %i.jo, align 8, !tbaa !42
  %i.jr = add i64 %i.jq, 1
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jr) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210, %bb.aj
  %.pn58 = phi { ptr, i32 } [ %i.jl, %bb.aj ], [ %i.jm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210 ], [ %i.jm, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #53
  br label %bb.an

bb.al:                                            ; preds = %.lr.ph, %_ZNK7testing8TestCase11GetTestInfoEi.exit.thread
  %i.js = phi ptr [ %i.gp, %.lr.ph ], [ %i.kl, %_ZNK7testing8TestCase11GetTestInfoEi.exit.thread ] ; 3 uses
  %i.jt = phi ptr [ %i.go, %.lr.ph ], [ %i.km, %_ZNK7testing8TestCase11GetTestInfoEi.exit.thread ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK7testing8TestCase11GetTestInfoEi.exit.thread ] ; 3 uses
  %i.ju = load ptr, ptr %i.gx, align 8, !tbaa !283
  %i.jv = load ptr, ptr %i.gw, align 8, !tbaa !280 ; 2 uses
  %i.jw = ptrtoint ptr %i.ju to i64
  %i.jx = ptrtoint ptr %i.jv to i64
  %i.jy = sub i64 %i.jw, %i.jx
  %sext = shl i64 %i.jy, 30
  %i.jz = ashr i64 %sext, 32
  %.not.i.i213 = icmp slt i64 %indvars.iv, %i.jz
  br i1 %.not.i.i213, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %_ZNK7testing8TestCase11GetTestInfoEi.exit.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %bb.al
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %indvars.iv
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !43 ; 2 uses
  %i.kc = icmp sgt i32 %i.kb, -1
  call void @llvm.assume(i1 %i.kc)
  %i.kd = zext nneg i32 %i.kb to i64
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %i.kd
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !184 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 90
  %i.kh = load i8, ptr %i.kg, align 2, !tbaa !190, !range !92, !noundef !93
  %i.ki = trunc nuw i8 %i.kh to i1
  br i1 %i.ki, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i215, label %_ZNK7testing8TestCase11GetTestInfoEi.exit.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i215: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %i.kj = load ptr, ptr %i.l, align 8, !tbaa !41
  invoke void @_ZN7testing8internal24XmlUnitTestResultPrinter17OutputXmlTestInfoEPSoPKcRKNS_8TestInfoE(ptr noundef nonnull %0, ptr noundef %i.kj, ptr noundef nonnull align 8 dereferenceable(224) %i.kf)
          to label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i215._crit_edge unwind label %bb.am

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i215._crit_edge: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i215
  %.pre = load ptr, ptr %i.am, align 8, !tbaa !192
  %.pre239 = load ptr, ptr %i.ak, align 8, !tbaa !193
  br label %_ZNK7testing8TestCase11GetTestInfoEi.exit.thread

bb.am:                                            ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i215
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

_ZNK7testing8TestCase11GetTestInfoEi.exit.thread: ; preds = %bb.al, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i215._crit_edge, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %i.kl = phi ptr [ %.pre239, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i215._crit_edge ], [ %i.js, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i ], [ %i.js, %bb.al ] ; 2 uses
  %i.km = phi ptr [ %.pre, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i215._crit_edge ], [ %i.jt, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i ], [ %i.jt, %bb.al ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kn = ptrtoint ptr %i.km to i64
  %i.ko = ptrtoint ptr %i.kl to i64
  %i.kp = sub i64 %i.kn, %i.ko
  %sext304 = shl i64 %i.kp, 29
  %i.kq = ashr i64 %sext304, 32
  %i.kr = icmp slt i64 %indvars.iv.next, %i.kq
  br i1 %i.kr, label %bb.al, label %._crit_edge, !llvm.loop !812

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173: ; preds = %._crit_edge
  %i.ks = load ptr, ptr %2, align 8, !tbaa !41
  %i.kt = load i64, ptr %i.c, align 8, !tbaa !58
  %i.ku = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ks, i64 noundef %i.kt)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit218 unwind label %bb.x

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit218: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173
  %i.kv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ku, ptr noundef nonnull @.str.194, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit220 unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit220: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit218
  %i.kw = load ptr, ptr %2, align 8, !tbaa !41    ; 2 uses
  %i.kx = icmp eq ptr %i.kw, %i.b
  br i1 %i.kx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit220
  %i.ky = load i64, ptr %i.b, align 8, !tbaa !42
  %i.kz = add i64 %i.ky, 1
  call void @_ZdlPvm(ptr noundef %i.kw, i64 noundef %i.kz) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit220, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  ret void

bb.an:                                            ; preds = %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %bb.x
  %.pn60 = phi { ptr, i32 } [ %i.kk, %bb.am ], [ %i.gz, %bb.x ], [ %.pn58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212 ], [ %.pn55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ], [ %i.ir, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203 ], [ %.pn49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197 ], [ %.pn46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191 ], [ %.pn43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179 ]
  %i.la = load ptr, ptr %2, align 8, !tbaa !41    ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.b
  br i1 %i.lb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224: ; preds = %bb.an
  %i.lc = load i64, ptr %i.b, align 8, !tbaa !42
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.ld) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  resume { ptr, i32 } %.pn60
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK7testing8UnitTest21reportable_test_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !188  ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !189  ; 5 uses
  %.not15.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not15.i.i, label %_ZNK7testing8internal12UnitTestImpl21reportable_test_countEv.exit, label %.lr.ph.split.us.i.preheader.i

.lr.ph.split.us.i.preheader.i:                    ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 3                   ; 2 uses
  %i.k = icmp eq i64 %i.i, 8
  br i1 %i.k, label %.lr.ph.split.us.i.i.epil.preheader, label %.lr.ph.split.us.i.preheader.i.new

.lr.ph.split.us.i.preheader.i.new:                ; preds = %.lr.ph.split.us.i.preheader.i
  %unroll_iter = and i64 %i.j, -2
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %_ZNK7testing8TestCase21reportable_test_countEv.exit.i.1, %.lr.ph.split.us.i.preheader.i.new
  %.014.us.i.i = phi i64 [ 0, %.lr.ph.split.us.i.preheader.i.new ], [ %i.ak, %_ZNK7testing8TestCase21reportable_test_countEv.exit.i.1 ] ; 3 uses
  %.01213.us.i.i = phi i32 [ 0, %.lr.ph.split.us.i.preheader.i.new ], [ %i.aj, %_ZNK7testing8TestCase21reportable_test_countEv.exit.i.1 ]
  %niter = phi i64 [ 0, %.lr.ph.split.us.i.preheader.i.new ], [ %niter.next.1, %_ZNK7testing8TestCase21reportable_test_countEv.exit.i.1 ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.014.us.i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !174  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !183  ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not7.i.i.i, label %_ZNK7testing8TestCase21reportable_test_countEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.split.us.i.i, %.lr.ph.i.i.i
  %.09.i.i.i = phi i32 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ 0, %.lr.ph.split.us.i.i ]
  %.sroa.04.08.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.o, %.lr.ph.split.us.i.i ] ; 2 uses
  %i.r = load ptr, ptr %.sroa.04.08.i.i.i, align 8, !tbaa !184
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 90
  %i.t = load i8, ptr %i.s, align 2, !tbaa !190, !range !92, !noundef !93
  %i.u = zext nneg i8 %i.t to i32
  %spec.select.i.i.i = add nuw nsw i32 %.09.i.i.i, %i.u ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.q
  br i1 %.not.i.i.i, label %_ZNK7testing8TestCase21reportable_test_countEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZNK7testing8TestCase21reportable_test_countEv.exit.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.split.us.i.i
  %.0.lcssa.i.i.i = phi i32 [ 0, %.lr.ph.split.us.i.i ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %i.w = add nsw i32 %.0.lcssa.i.i.i, %.01213.us.i.i
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.014.us.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !174  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !183 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !183 ; 2 uses
  %.not7.i.i.i.1 = icmp eq ptr %i.ab, %i.ad
  br i1 %.not7.i.i.i.1, label %_ZNK7testing8TestCase21reportable_test_countEv.exit.i.1, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %_ZNK7testing8TestCase21reportable_test_countEv.exit.i, %.lr.ph.i.i.i.1
  %.09.i.i.i.1 = phi i32 [ %spec.select.i.i.i.1, %.lr.ph.i.i.i.1 ], [ 0, %_ZNK7testing8TestCase21reportable_test_countEv.exit.i ]
  %.sroa.04.08.i.i.i.1 = phi ptr [ %i.ai, %.lr.ph.i.i.i.1 ], [ %i.ab, %_ZNK7testing8TestCase21reportable_test_countEv.exit.i ] ; 2 uses
  %i.ae = load ptr, ptr %.sroa.04.08.i.i.i.1, align 8, !tbaa !184
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 90
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !190, !range !92, !noundef !93
  %i.ah = zext nneg i8 %i.ag to i32
  %spec.select.i.i.i.1 = add nuw nsw i32 %.09.i.i.i.1, %i.ah ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.1, i64 8 ; 2 uses
  %.not.i.i.i.1 = icmp eq ptr %i.ai, %i.ad
  br i1 %.not.i.i.i.1, label %_ZNK7testing8TestCase21reportable_test_countEv.exit.i.1, label %.lr.ph.i.i.i.1, !llvm.loop !4

_ZNK7testing8TestCase21reportable_test_countEv.exit.i.1: ; preds = %.lr.ph.i.i.i.1, %_ZNK7testing8TestCase21reportable_test_countEv.exit.i
  %.0.lcssa.i.i.i.1 = phi i32 [ 0, %_ZNK7testing8TestCase21reportable_test_countEv.exit.i ], [ %spec.select.i.i.i.1, %.lr.ph.i.i.i.1 ]
  %i.aj = add nsw i32 %.0.lcssa.i.i.i.1, %i.w     ; 3 uses
  %i.ak = add nuw i64 %.014.us.i.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK7testing8internal12UnitTestImpl21reportable_test_countEv.exit.loopexit.unr-lcssa, label %.lr.ph.split.us.i.i, !llvm.loop !6

_ZNK7testing8internal12UnitTestImpl21reportable_test_countEv.exit.loopexit.unr-lcssa: ; preds = %_ZNK7testing8TestCase21reportable_test_countEv.exit.i.1
  %i.al = and i64 %i.i, 8
  %lcmp.mod.not = icmp eq i64 %i.al, 0
  br i1 %lcmp.mod.not, label %_ZNK7testing8internal12UnitTestImpl21reportable_test_countEv.exit, label %.lr.ph.split.us.i.i.epil.preheader

.lr.ph.split.us.i.i.epil.preheader:               ; preds = %_ZNK7testing8internal12UnitTestImpl21reportable_test_countEv.exit.loopexit.unr-lcssa, %.lr.ph.split.us.i.preheader.i
  %.014.us.i.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.i.preheader.i ], [ %i.ak, %_ZNK7testing8internal12UnitTestImpl21reportable_test_countEv.exit.loopexit.unr-lcssa ]
  %.01213.us.i.i.epil.init = phi i32 [ 0, %.lr.ph.split.us.i.preheader.i ], [ %i.aj, %_ZNK7testing8internal12UnitTestImpl21reportable_test_countEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod6 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.014.us.i.i.epil.init
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !174 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !183 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !183 ; 2 uses
  %.not7.i.i.i.epil = icmp eq ptr %i.ap, %i.ar
  br i1 %.not7.i.i.i.epil, label %_ZNK7testing8TestCase21reportable_test_countEv.exit.i.epil, label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.split.us.i.i.epil.preheader, %.lr.ph.i.i.i.epil
  %.09.i.i.i.epil = phi i32 [ %spec.select.i.i.i.epil, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.split.us.i.i.epil.preheader ]
  %.sroa.04.08.i.i.i.epil = phi ptr [ %i.aw, %.lr.ph.i.i.i.epil ], [ %i.ap, %.lr.ph.split.us.i.i.epil.preheader ] ; 2 uses
  %i.as = load ptr, ptr %.sroa.04.08.i.i.i.epil, align 8, !tbaa !184
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 90
  %i.au = load i8, ptr %i.at, align 2, !tbaa !190, !range !92, !noundef !93
  %i.av = zext nneg i8 %i.au to i32
  %spec.select.i.i.i.epil = add nuw nsw i32 %.09.i.i.i.epil, %i.av ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.epil, i64 8 ; 2 uses
  %.not.i.i.i.epil = icmp eq ptr %i.aw, %i.ar
  br i1 %.not.i.i.i.epil, label %_ZNK7testing8TestCase21reportable_test_countEv.exit.i.epil, label %.lr.ph.i.i.i.epil, !llvm.loop !4

_ZNK7testing8TestCase21reportable_test_countEv.exit.i.epil: ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.split.us.i.i.epil.preheader
  %.0.lcssa.i.i.i.epil = phi i32 [ 0, %.lr.ph.split.us.i.i.epil.preheader ], [ %spec.select.i.i.i.epil, %.lr.ph.i.i.i.epil ]
  %i.ax = add nsw i32 %.0.lcssa.i.i.i.epil, %.01213.us.i.i.epil.init
  br label %_ZNK7testing8internal12UnitTestImpl21reportable_test_countEv.exit

_ZNK7testing8internal12UnitTestImpl21reportable_test_countEv.exit: ; preds = %_ZNK7testing8TestCase21reportable_test_countEv.exit.i.epil, %_ZNK7testing8internal12UnitTestImpl21reportable_test_countEv.exit.loopexit.unr-lcssa, %bb.a
  %.012.lcssa.i.i = phi i32 [ 0, %bb.a ], [ %i.aj, %_ZNK7testing8internal12UnitTestImpl21reportable_test_countEv.exit.loopexit.unr-lcssa ], [ %i.ax, %_ZNK7testing8TestCase21reportable_test_countEv.exit.i.epil ]
  ret i32 %.012.lcssa.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i64 @_ZNK7testing8UnitTest15start_timestampEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.d = load i64, ptr %i.c, align 8, !tbaa !300
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(120) ptr @_ZNK7testing8UnitTest18ad_hoc_test_resultEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7testing8internal17StreamingListener9UrlEncodeB5cxx11EPKc(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !68
end_hunk_0
begin_hunk_1_@_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SH_SH_T0_St26random_access_iterator_tag:bb.a
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge
    i64 1, label %._crit_edge._crit_edge56
  ]

._crit_edge._crit_edge56:                         ; preds = %._crit_edge
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre58 = load i64, ptr %.phi.trans.insert57, align 8, !tbaa !58
  br label %bb.k

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !58
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !58 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !58 ; 2 uses
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %bb.h, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit23.thread50

bb.h:                                             ; preds = %bb.g
  %i.aw = icmp eq i64 %i.as, 0
  br i1 %i.aw, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit23

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit23: ; preds = %bb.h
  %i.ax = load ptr, ptr %2, align 8, !tbaa !41
  %i.ay = load ptr, ptr %.sroa.037.0.lcssa, align 8, !tbaa !41
  %bcmp.i.i22 = tail call i32 @bcmp(ptr %i.ay, ptr %i.ax, i64 %i.as)
  %i.az = icmp eq i32 %bcmp.i.i22, 0
  br i1 %i.az, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit23.thread50

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit23.thread50: ; preds = %bb.g, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit23
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa, i64 32
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit23.thread50
  %i.bb = phi i64 [ %i.au, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit23.thread50 ], [ %.pre, %._crit_edge._crit_edge ] ; 4 uses
  %.sroa.037.1 = phi ptr [ %i.ba, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit23.thread50 ], [ %.sroa.037.0.lcssa, %._crit_edge._crit_edge ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.037.1, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !58
  %i.be = icmp eq i64 %i.bd, %i.bb
  br i1 %i.be, label %bb.j, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit25.thread51

bb.j:                                             ; preds = %bb.i
  %i.bf = icmp eq i64 %i.bb, 0
  br i1 %i.bf, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit25

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit25: ; preds = %bb.j
  %i.bg = load ptr, ptr %2, align 8, !tbaa !41
  %i.bh = load ptr, ptr %.sroa.037.1, align 8, !tbaa !41
  %bcmp.i.i24 = tail call i32 @bcmp(ptr %i.bh, ptr %i.bg, i64 %i.bb)
  %i.bi = icmp eq i32 %bcmp.i.i24, 0
  br i1 %i.bi, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit25.thread51

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit25.thread51: ; preds = %bb.i, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit25
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.037.1, i64 32
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge56, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit25.thread51
  %i.bk = phi i64 [ %i.bb, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit25.thread51 ], [ %.pre58, %._crit_edge._crit_edge56 ] ; 3 uses
  %.sroa.037.2 = phi ptr [ %i.bj, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit25.thread51 ], [ %.sroa.037.0.lcssa, %._crit_edge._crit_edge56 ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.037.2, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !58
  %i.bn = icmp eq i64 %i.bm, %i.bk
  br i1 %i.bn, label %bb.l, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27.thread52

bb.l:                                             ; preds = %bb.k
  %i.bo = icmp eq i64 %i.bk, 0
  br i1 %i.bo, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27: ; preds = %bb.l
  %i.bp = load ptr, ptr %2, align 8, !tbaa !41
  %i.bq = load ptr, ptr %.sroa.037.2, align 8, !tbaa !41
  %bcmp.i.i26 = tail call i32 @bcmp(ptr %i.bq, ptr %i.bp, i64 %i.bk)
  %i.br = icmp eq i32 %bcmp.i.i26, 0
  br i1 %i.br, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27.thread52

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27.thread52: ; preds = %bb.k, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit21, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit19, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit17, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit, %bb.l, %bb.j, %bb.h, %._crit_edge, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27.thread52, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit25, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit23
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.037.1, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit25 ], [ %1, %._crit_edge ], [ %.sroa.037.1, %bb.j ], [ %.sroa.037.0.lcssa, %bb.h ], [ %.sroa.037.2, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27 ], [ %.sroa.037.2, %bb.l ], [ %.sroa.037.0.lcssa, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit23 ], [ %1, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit27.thread52 ], [ %i.ag, %bb.f ], [ %i.z, %bb.e ], [ %i.s, %bb.d ], [ %.sroa.037.054, %bb.c ], [ %i.ag, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit21 ], [ %i.z, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit19 ], [ %i.s, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit17 ], [ %.sroa.037.054, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS8_St6vectorIS7_SaIS7_EEEEEEbT_.exit ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #47

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(392) ptr @_Znwm(i64 noundef 392) #55 ; 8 uses
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.a)
          to label %_ZN7testing7MessageC2Ev.exit unwind label %bb.b

common.resume:                                    ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.l, %_ZN7testing7MessageD2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 392) #54
  br label %common.resume

_ZN7testing7MessageC2Ev.exit:                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 17, ptr %i.h, align 8, !tbaa !57
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.invoke, label %bb.c

bb.c:                                             ; preds = %_ZN7testing7MessageC2Ev.exit
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.405, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %_ZN7testing7MessageD2Ev.exit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.c
  %i.j = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #53
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %1, i64 noundef %i.j)
          to label %.invoke unwind label %_ZN7testing7MessageD2Ev.exit ; 0 uses

_ZN7testing7MessageD2Ev.exit:                     ; preds = %.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i5.invoke, %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit10, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit8, %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(128) %i.a) #53, !inline_history !0
  br label %common.resume

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %_ZN7testing7MessageC2Ev.exit
  %i.p = phi ptr [ @.str.406, %_ZN7testing7MessageC2Ev.exit ], [ @.str.75, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ]
  %i.q = phi i64 [ 21, %_ZN7testing7MessageC2Ev.exit ], [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ]
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %i.p, i64 noundef %i.q)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit unwind label %_ZN7testing7MessageD2Ev.exit ; 0 uses

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit:        ; preds = %.invoke
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.407, i64 noundef 11)
          to label %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit unwind label %_ZN7testing7MessageD2Ev.exit ; 0 uses

_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit
  %i.t = icmp eq ptr %2, null
  br i1 %i.t, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i5.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i5

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i5: ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit
  %i.u = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #53
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i5.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i5.invoke: ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i5
  %i.v = phi ptr [ %2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i5 ], [ @.str.78, %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit ]
  %i.w = phi i64 [ %i.u, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i5 ], [ 6, %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit ]
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %i.v, i64 noundef %i.w)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit8 unwind label %_ZN7testing7MessageD2Ev.exit ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit8:        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i5.invoke
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.36, i64 noundef 1)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit10 unwind label %_ZN7testing7MessageD2Ev.exit ; 0 uses

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit10:      ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit8
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull %i.a)
          to label %_ZN7testing7MessageD2Ev.exit13 unwind label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit13:                   ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit10
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(128) %i.a) #53, !inline_history !0
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !84     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorIN7testing8internal9TraceInfoESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.377) #56
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
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #55 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 12, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !68
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !41   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !58   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #53
  store i64 %i.x, ptr %i.a, align 8, !tbaa !69
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNKSt6vectorIN7testing8internal9TraceInfoESaIS2_EE12_M_check_lenEmPKc.exit
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.z, ptr %i.s, align 8, !tbaa !41
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !69
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !42
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNKSt6vectorIN7testing8internal9TraceInfoESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ab = phi ptr [ %i.z, %.noexc ], [ %i.u, %_ZNKSt6vectorIN7testing8internal9TraceInfoESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.x, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !42
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !42
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !69  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !58
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #53
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aw, %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.av, %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1668)
  call void @llvm.experimental.noalias.scope.decl(metadata !1669)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i, i64 12, i1 false), !alias.scope !1670
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 3 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !68, !alias.scope !1668, !noalias !1669
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !41, !alias.scope !1669, !noalias !1668 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !58, !alias.scope !1669, !noalias !1668 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false), !alias.scope !1670
  br label %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !41, !alias.scope !1668, !noalias !1669
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !42, !alias.scope !1669, !noalias !1668
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !42, !alias.scope !1668, !noalias !1669
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !58, !alias.scope !1669, !noalias !1668
  br label %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.f
  %i.as = phi i64 [ %i.ao, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  store i64 %i.as, ptr %i.au, align 8, !tbaa !58, !alias.scope !1668, !noalias !1669
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !41, !alias.scope !1669, !noalias !1668
  store i64 0, ptr %i.at, align 8, !tbaa !58, !alias.scope !1669, !noalias !1668
  store i8 0, ptr %i.al, align 8, !tbaa !42, !alias.scope !1669, !noalias !1668
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !1664

_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.aw, %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bn, %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.ax, %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bm, %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1671)
  call void @llvm.experimental.noalias.scope.decl(metadata !1672)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i28, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i29, i64 12, i1 false), !alias.scope !1673
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 3 uses
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !68, !alias.scope !1671, !noalias !1672
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !41, !alias.scope !1672, !noalias !1671 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 5 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !58, !alias.scope !1672, !noalias !1671 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i64 %i.bh, i1 false), !alias.scope !1673
  br label %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !41, !alias.scope !1671, !noalias !1672
  %i.bi = load i64, ptr %i.bc, align 8, !tbaa !42, !alias.scope !1672, !noalias !1671
  store i64 %i.bi, ptr %i.ba, align 8, !tbaa !42, !alias.scope !1671, !noalias !1672
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 24
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !58, !alias.scope !1672, !noalias !1671
  br label %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.g
  %i.bj = phi i64 [ %i.bf, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 24
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !58, !alias.scope !1671, !noalias !1672
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !41, !alias.scope !1672, !noalias !1671
  store i64 0, ptr %i.bk, align 8, !tbaa !58, !alias.scope !1672, !noalias !1671
  store i8 0, ptr %i.bc, align 8, !tbaa !42, !alias.scope !1672, !noalias !1671
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 48 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 48 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bm, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !1664

_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36: ; preds = %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.ax, %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bn, %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN7testing8internal9TraceInfoESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !305
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.br) #54
  br label %_ZNSt12_Vector_baseIN7testing8internal9TraceInfoESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN7testing8internal9TraceInfoESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, %bb.h
  store ptr %i.q, ptr %0, align 8, !tbaa !84
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !83
  %i.bs = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bs, ptr %i.bo, align 8, !tbaa !305
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
  call void @__clang_call_terminate(ptr %i.by) #57
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE9CreateKeyEv() local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_1
