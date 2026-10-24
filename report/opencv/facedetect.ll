Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/facedetect?download=true
inline.NumInlined: 406
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@main:bb.a

bb.ai:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  invoke void @_ZN2cv7samples14findFileOrKeepERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(32) @_Z17nestedCascadeNameB5cxx11, i1 noundef zeroext false)
          to label %bb.aj unwind label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.fq = invoke noundef zeroext i1 @_ZN2cv17CascadeClassifier4loadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.ak unwind label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  %i.fr = load ptr, ptr %19, align 8, !tbaa !18   ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222: ; preds = %bb.ak
  %i.fu = load i64, ptr %i.fs, align 8, !tbaa !16
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fv) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br i1 %i.fq, label %_ZNSolsEPFRSoS_E.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224
  %i.fw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.8, i64 noundef 61)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.al
  %i.fx = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !22
  %i.fy = getelementptr i8, ptr %i.fx, i64 -24
  %i.fz = load i64, ptr %i.fy, align 8
  %i.ga = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 240
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !38 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 56
  %i.ge = load i8, ptr %i.gd, align 8, !tbaa !44
  %.not.i1.i.i = icmp eq i8 %i.ge, 0
  br i1 %.not.i1.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 67
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.an:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gc)
          to label %.noexc324 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc324:                                        ; preds = %bb.an
  %i.gh = load ptr, ptr %i.gc, align 8, !tbaa !22
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 48
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = invoke noundef signext i8 %i.gj(ptr noundef nonnull align 8 dereferenceable(570) %i.gc, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !52

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc324, %bb.am
  %.0.i.i.i = phi i8 [ %i.gg, %bb.am ], [ %i.gk, %.noexc324 ]
  %i.gl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
          to label %.noexc326 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc326:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.gm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gl)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ao:                                            ; preds = %bb.ai
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229

bb.ap:                                            ; preds = %bb.aj
  %i.go = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gp = load ptr, ptr %19, align 8, !tbaa !18   ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227: ; preds = %bb.ap
  %i.gs = load i64, ptr %i.gq, align 8, !tbaa !16
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gt) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227, %bb.ao
  %.pn89 = phi { ptr, i32 } [ %i.gn, %bb.ao ], [ %i.go, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227 ], [ %i.go, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %.loopexit.split-lp

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc326, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  invoke void @_ZN2cv7samples8findFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(32) @_Z11cascadeNameB5cxx11, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.aq unwind label %bb.av

bb.aq:                                            ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.gu = invoke noundef zeroext i1 @_ZN2cv17CascadeClassifier4loadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.ar unwind label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  %i.gv = load ptr, ptr %20, align 8, !tbaa !18   ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.gx = icmp eq ptr %i.gv, %i.gw
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230: ; preds = %bb.ar
  %i.gy = load i64, ptr %i.gw, align 8, !tbaa !16
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gz) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br i1 %i.gu, label %bb.ax, label %bb.as

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232
  %i.ha = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.9, i64 noundef 40)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234: ; preds = %bb.as
  %i.hb = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !22
  %i.hc = getelementptr i8, ptr %i.hb, i64 -24
  %i.hd = load i64, ptr %i.hc, align 8
  %i.he = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 240
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !38 ; 6 uses
  %.not.i.i.i328 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i328, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i329

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i329: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 56
  %i.hi = load i8, ptr %i.hh, align 8, !tbaa !44
  %.not.i1.i.i330 = icmp eq i8 %i.hi, 0
  br i1 %.not.i1.i.i330, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i329
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 67
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i331

bb.au:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i329
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hg)
          to label %.noexc334 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc334:                                        ; preds = %bb.au
  %i.hl = load ptr, ptr %i.hg, align 8, !tbaa !22
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 48
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = invoke noundef signext i8 %i.hn(ptr noundef nonnull align 8 dereferenceable(570) %i.hg, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i331 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !52

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i331: ; preds = %.noexc334, %bb.at
  %.0.i.i.i332 = phi i8 [ %i.hk, %bb.at ], [ %i.ho, %.noexc334 ]
  %i.hp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i332)
          to label %.noexc336 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc336:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i331
  %i.hq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hp)
          to label %_ZNSolsEPFRSoS_E.exit236 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit236:                         ; preds = %.noexc336
  invoke fastcc void @_ZL4helpPPKc(ptr noundef %1)
          to label %_ZNSolsEPFRSoS_E.exit245 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.av:                                            ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239

bb.aw:                                            ; preds = %bb.aq
  %i.hs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ht = load ptr, ptr %20, align 8, !tbaa !18   ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.hv = icmp eq ptr %i.ht, %i.hu
  br i1 %i.hv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237: ; preds = %bb.aw
  %i.hw = load i64, ptr %i.hu, align 8, !tbaa !16
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hx) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237, %bb.av
  %.pn91 = phi { ptr, i32 } [ %i.hr, %bb.av ], [ %i.hs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237 ], [ %i.hs, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %.loopexit.split-lp

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232
  %i.hy = load i64, ptr %i.f, align 8, !tbaa !15  ; 2 uses
  %i.hz = icmp eq i64 %i.hy, 0
  br i1 %i.hz, label %.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ia = load ptr, ptr %5, align 8, !tbaa !18
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !16
  %27 = sext i8 %i.ib to i32
  %isdigittmp = add nsw i32 %27, -48              ; 2 uses
  %isdigit = icmp ult i32 %isdigittmp, 10
  %i.ic = icmp eq i64 %i.hy, 1
  %or.cond = and i1 %i.ic, %isdigit
  br i1 %or.cond, label %.thread, label %bb.be

.thread:                                          ; preds = %bb.ay, %bb.ax
  %i.id = phi i32 [ 0, %bb.ax ], [ %isdigittmp, %bb.ay ] ; 2 uses
  %i.ie = invoke noundef zeroext i1 @_ZN2cv12VideoCapture4openEii(ptr noundef nonnull align 8 dereferenceable(25) %2, i32 noundef %i.id, i32 noundef 0)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %.thread
  br i1 %i.ie, label %_ZNSolsEPFRSoS_E.exit245.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.if = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.10, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit241 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit241: ; preds = %bb.ba
  %i.ig = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.id)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.bb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit241
  %i.ih = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ig, ptr noundef nonnull @.str.11, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243: ; preds = %bb.bb
  %i.ii = load ptr, ptr %i.ig, align 8, !tbaa !22
  %i.ij = getelementptr i8, ptr %i.ii, i64 -24
  %i.ik = load i64, ptr %i.ij, align 8
  %i.il = getelementptr inbounds i8, ptr %i.ig, i64 %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 240
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !38 ; 6 uses
  %.not.i.i.i339 = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i339, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i340

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i340: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 56
  %i.ip = load i8, ptr %i.io, align 8, !tbaa !44
  %.not.i1.i.i341 = icmp eq i8 %i.ip, 0
  br i1 %.not.i1.i.i341, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i340
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 67
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i342

bb.bd:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i340
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.in)
          to label %.noexc345 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc345:                                        ; preds = %bb.bd
  %i.is = load ptr, ptr %i.in, align 8, !tbaa !22
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 48
  %i.iu = load ptr, ptr %i.it, align 8
  %i.iv = invoke noundef signext i8 %i.iu(ptr noundef nonnull align 8 dereferenceable(570) %i.in, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i342 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !52

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i342: ; preds = %.noexc345, %bb.bc
  %.0.i.i.i343 = phi i8 [ %i.ir, %bb.bc ], [ %i.iv, %.noexc345 ]
  %i.iw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ig, i8 noundef signext %.0.i.i.i343)
          to label %.noexc347 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc347:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i342
  %i.ix = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.iw)
          to label %_ZNSolsEPFRSoS_E.exit245 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSolsEPFRSoS_E.exit286, %bb.bx, %.invoke, %.noexc369, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i364, %.noexc367, %bb.ci, %.noexc358, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i353, %.noexc356, %bb.bw, %.noexc347, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i342, %.noexc345, %bb.bd, %.noexc336, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i331, %.noexc334, %bb.au, %.noexc326, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc324, %bb.an, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit288, %bb.cg, %bb.bu, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit253, %bb.bm, %bb.bb, %bb.ba, %bb.as, %bb.al, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, %bb.ag, %_ZNSolsEPFRSoS_E.exit236, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, %_ZNSolsEPFRSoS_E.exit245.thread, %_ZNSolsEPFRSoS_E.exit292, %bb.ck, %bb.cl, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit241, %.thread
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.be:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  invoke void @_ZN2cv7samples14findFileOrKeepERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext false)
          to label %bb.bf unwind label %bb.bn

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN2cv6imreadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %21, ptr noundef nonnull align 8 dereferenceable(32) %22, i32 noundef 1)
          to label %bb.bg unwind label %bb.bo

bb.bg:                                            ; preds = %bb.bf
  %i.iy = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %21)
          to label %bb.bh unwind label %bb.bp     ; 0 uses

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #19
  %i.iz = load ptr, ptr %22, align 8, !tbaa !18   ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.jb = icmp eq ptr %i.iz, %i.ja
  br i1 %i.jb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %bb.bh
  %i.jc = load i64, ptr %i.ja, align 8, !tbaa !16
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jd) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  %i.je = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.bi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248
  br i1 %i.je, label %bb.bj, label %_ZNSolsEPFRSoS_E.exit245.thread

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  invoke void @_ZN2cv7samples14findFileOrKeepERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext false)
          to label %bb.bk unwind label %bb.br

bb.bk:                                            ; preds = %bb.bj
  %i.jf = invoke noundef zeroext i1 @_ZN2cv12VideoCapture4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(25) %2, ptr noundef nonnull align 8 dereferenceable(32) %23, i32 noundef 0)
          to label %bb.bl unwind label %bb.bs

bb.bl:                                            ; preds = %bb.bk
  %i.jg = load ptr, ptr %23, align 8, !tbaa !18   ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.ji = icmp eq ptr %i.jg, %i.jh
  br i1 %i.ji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249: ; preds = %bb.bl
  %i.jj = load i64, ptr %i.jh, align 8, !tbaa !16
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.jk) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br i1 %i.jf, label %_ZNSolsEPFRSoS_E.exit245.thread, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251
  %i.jl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.12, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit253 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit253: ; preds = %bb.bm
  %i.jm = load ptr, ptr %5, align 8, !tbaa !18
  %i.jn = load i64, ptr %i.f, align 8, !tbaa !15
  %i.jo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.jm, i64 noundef %i.jn)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit253
  %i.jp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.jo)
          to label %_ZNSolsEPFRSoS_E.exit245 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !53 ; 0 uses

bb.bn:                                            ; preds = %bb.be
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259

bb.bo:                                            ; preds = %bb.bf
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bg
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #19
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.pn93 = phi { ptr, i32 } [ %i.js, %bb.bp ], [ %i.jr, %bb.bo ] ; 2 uses
  %i.jt = load ptr, ptr %22, align 8, !tbaa !18   ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.jv = icmp eq ptr %i.jt, %i.ju
  br i1 %i.jv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257: ; preds = %bb.bq
  %i.jw = load i64, ptr %i.ju, align 8, !tbaa !16
  %i.jx = add i64 %i.jw, 1
  call void @_ZdlPvm(ptr noundef %i.jt, i64 noundef %i.jx) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257, %bb.bn
  %.pn93.pn = phi { ptr, i32 } [ %i.jq, %bb.bn ], [ %.pn93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257 ], [ %.pn93, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  br label %.loopexit.split-lp

bb.br:                                            ; preds = %bb.bj
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262

bb.bs:                                            ; preds = %bb.bk
  %i.jz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ka = load ptr, ptr %23, align 8, !tbaa !18   ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.kc = icmp eq ptr %i.ka, %i.kb
  br i1 %i.kc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260: ; preds = %bb.bs
  %i.kd = load i64, ptr %i.kb, align 8, !tbaa !16
  %i.ke = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.ke) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260, %bb.br
  %.pn96 = phi { ptr, i32 } [ %i.jy, %bb.br ], [ %i.jz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260 ], [ %i.jz, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %.loopexit.split-lp

_ZNSolsEPFRSoS_E.exit245.thread:                  ; preds = %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, %bb.bi
  %i.kf = invoke noundef zeroext i1 @_ZNK2cv12VideoCapture8isOpenedEv(ptr noundef nonnull align 8 dereferenceable(25) %2)
end_hunk_0
