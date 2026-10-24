Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/smiledetect?download=true
inline.NumInlined: 382
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@main:bb.a
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  br i1 %i.fi, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke fastcc void @_ZL4helpPPKc(ptr noundef %1)
          to label %.loopexit285 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit
  %i.fj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fk = load ptr, ptr %12, align 8, !tbaa !18   ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.am
  br i1 %i.fl, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.ak, %bb.m
  %.sink370 = phi ptr [ %i.ap, %bb.m ], [ %i.fk, %bb.ak ]
  %.pn45.ph = phi { ptr, i32 } [ %i.ao, %bb.m ], [ %i.fj, %bb.ak ]
  %i.fm = load i64, ptr %i.am, align 8, !tbaa !16
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %.sink370, i64 noundef %i.fn) #18
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ak, %bb.m
  %.pn45 = phi { ptr, i32 } [ %i.ao, %bb.m ], [ %i.fj, %bb.ak ], [ %.pn45.ph, %.body.sink.split ]
  %i.fo = load ptr, ptr %13, align 8, !tbaa !18   ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.aj
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %.body
  %i.fq = load i64, ptr %i.aj, align 8, !tbaa !16
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %.loopexit.split-lp

bb.al:                                            ; preds = %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit101
  %i.fs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ft = load ptr, ptr %15, align 8, !tbaa !18   ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.ca
  br i1 %i.fu, label %.body99, label %.body99.sink.split

.body99.sink.split:                               ; preds = %bb.al, %bb.t
  %.sink373 = phi ptr [ %i.cd, %bb.t ], [ %i.ft, %bb.al ]
  %.pn48.ph = phi { ptr, i32 } [ %i.cc, %bb.t ], [ %i.fs, %bb.al ]
  %i.fv = load i64, ptr %i.ca, align 8, !tbaa !16
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %.sink373, i64 noundef %i.fw) #18
  br label %.body99

.body99:                                          ; preds = %.body99.sink.split, %bb.al, %bb.t
  %.pn48 = phi { ptr, i32 } [ %i.cc, %bb.t ], [ %i.fs, %bb.al ], [ %.pn48.ph, %.body99.sink.split ]
  %i.fx = load ptr, ptr %16, align 8, !tbaa !18   ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.bx
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %.body99
  %i.fz = load i64, ptr %i.bx, align 8, !tbaa !16
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.ga) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %.body99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %.loopexit.split-lp

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %i.gb = landingpad { ptr, i32 }
          cleanup
  %i.gc = load ptr, ptr %17, align 8, !tbaa !18   ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.dl
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %bb.am
  %i.ge = load i64, ptr %i.dl, align 8, !tbaa !16
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  br label %.loopexit.split-lp

.body133:                                         ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130
  %i.gg = load ptr, ptr %19, align 8, !tbaa !18   ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.dt
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %.body133
  %i.gi = load i64, ptr %i.dt, align 8, !tbaa !16
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gj) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %.body133, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %.loopexit.split-lp

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %i.gk = landingpad { ptr, i32 }
          cleanup
  %i.gl = load ptr, ptr %20, align 8, !tbaa !18   ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.ez
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176: ; preds = %bb.an
  %i.gn = load i64, ptr %i.ez, align 8, !tbaa !16
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.go) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  br label %.loopexit.split-lp

bb.ao:                                            ; preds = %bb.ai
  %i.gp = fcmp olt double %i.fd, 1.000000e+00
  %spec.store.select = select i1 %i.gp, double 1.000000e+00, double %i.fd
  %i.gq = invoke noundef zeroext i1 @_ZN2cv17CascadeClassifier4loadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(32) @_Z11cascadeNameB5cxx11)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.gq, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.8, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.aq
  %i.gs = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !21
  %i.gt = getelementptr i8, ptr %i.gs, i64 -24
  %i.gu = load i64, ptr %i.gt, align 8
  %i.gv = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 240
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !37 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 56
  %i.gz = load i8, ptr %i.gy, align 8, !tbaa !43
  %.not.i1.i.i = icmp eq i8 %i.gz, 0
  br i1 %.not.i1.i.i, label %bb.ar, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i271.invoke.sink.split

bb.ar:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gx)
          to label %.noexc274.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSolsEPFRSoS_E.exit.invoke:                     ; preds = %.noexc276.invoke
  invoke fastcc void @_ZL4helpPPKc(ptr noundef %1)
          to label %.loopexit285 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.ap
  %i.ha = invoke noundef zeroext i1 @_ZN2cv17CascadeClassifier4loadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(32) @_Z17nestedCascadeNameB5cxx11)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.at:                                            ; preds = %bb.as
  br i1 %i.ha, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.9, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit182 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit182: ; preds = %bb.au
  %i.hc = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !21
  %i.hd = getelementptr i8, ptr %i.hc, i64 -24
  %i.he = load i64, ptr %i.hd, align 8
  %i.hf = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 240
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !37 ; 5 uses
  %.not.i.i.i224 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.i224, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i225

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i225: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit182
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 56
  %i.hj = load i8, ptr %i.hi, align 8, !tbaa !43
  %.not.i1.i.i226 = icmp eq i8 %i.hj, 0
  br i1 %.not.i1.i.i226, label %bb.av, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i271.invoke.sink.split

bb.av:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i225
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hh)
          to label %.noexc274.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %bb.at
  %i.hk = load i64, ptr %i.d, align 8, !tbaa !15  ; 2 uses
  %i.hl = icmp eq i64 %i.hk, 0
  br i1 %i.hl, label %.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hm = load ptr, ptr %5, align 8, !tbaa !18
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !16
  %23 = sext i8 %i.hn to i32
  %isdigittmp = add nsw i32 %23, -48              ; 2 uses
  %isdigit = icmp ult i32 %isdigittmp, 10
  %i.ho = icmp eq i64 %i.hk, 1
  %or.cond = and i1 %i.ho, %isdigit
  br i1 %or.cond, label %.thread, label %bb.bb

.thread:                                          ; preds = %bb.ax, %bb.aw
  %i.hp = phi i32 [ 0, %bb.aw ], [ %isdigittmp, %bb.ax ] ; 2 uses
  %i.hq = invoke noundef zeroext i1 @_ZN2cv12VideoCapture4openEii(ptr noundef nonnull align 8 dereferenceable(25) %2, i32 noundef %i.hp, i32 noundef 0)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ay:                                            ; preds = %.thread
  br i1 %i.hq, label %_ZNSolsEPFRSoS_E.exit190, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.10, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit186 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit186: ; preds = %bb.az
  %i.hs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.hp)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ba:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit186
  %i.ht = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hs, ptr noundef nonnull @.str.11, i64 noundef 12)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSolsEPFRSoS_E.exit208, %bb.bo, %.noexc274.invoke, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i271.invoke, %.noexc276.invoke, %_ZNSolsEPFRSoS_E.exit.invoke, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.invoke, %.invoke, %bb.by, %.noexc265, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i260, %.noexc263, %bb.bn, %.noexc254, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i249, %.noexc252, %bb.bl, %.noexc243, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i238, %.noexc241, %bb.bj, %bb.av, %bb.ar, %bb.bx, %_ZNSolsEPFRSoS_E.exit204, %bb.bh, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195, %bb.be, %bb.ba, %bb.az, %bb.au, %bb.aq, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %bb.aj, %bb.ao, %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, %_ZNSolsEPFRSoS_E.exit190, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit186, %.thread
  %lpad.loopexit.split-lp376 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.bb:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  invoke void @_ZN2cv7samples14findFileOrKeepERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext false)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.hu = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %21) #17 ; 0 uses
  %i.hv = load ptr, ptr %21, align 8, !tbaa !18   ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %bb.bc
  %i.hy = load i64, ptr %i.hw, align 8, !tbaa !16
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hz) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  %i.ia = invoke noundef zeroext i1 @_ZN2cv12VideoCapture4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(25) %2, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0)
          to label %bb.bd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193
  br i1 %i.ia, label %_ZNSolsEPFRSoS_E.exit190, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ib = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.12, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195: ; preds = %bb.be
  %i.ic = load ptr, ptr %5, align 8, !tbaa !18
  %i.id = load i64, ptr %i.d, align 8, !tbaa !15
  %i.ie = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.ic, i64 noundef %i.id)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.invoke: ; preds = %bb.ba, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195
  %i.if = phi ptr [ %i.ie, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195 ], [ %i.hs, %bb.ba ]
  %i.ig = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.if)
          to label %_ZNSolsEPFRSoS_E.exit190 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !50 ; 0 uses

bb.bf:                                            ; preds = %bb.bb
  %i.ih = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  br label %.loopexit.split-lp

_ZNSolsEPFRSoS_E.exit190:                         ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.invoke, %bb.ay, %bb.bd
  %i.ii = invoke noundef zeroext i1 @_ZNK2cv12VideoCapture8isOpenedEv(ptr noundef nonnull align 8 dereferenceable(25) %2)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %_ZNSolsEPFRSoS_E.exit190
  br i1 %i.ii, label %bb.bh, label %bb.bx

bb.bh:                                            ; preds = %bb.bg
  %i.ij = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.13, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit200 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit200: ; preds = %bb.bh
  %i.ik = load ptr, ptr @_ZSt4cout, align 8, !tbaa !21
  %i.il = getelementptr i8, ptr %i.ik, i64 -24
  %i.im = load i64, ptr %i.il, align 8
  %i.in = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 240
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !37 ; 6 uses
  %.not.i.i.i235 = icmp eq ptr %i.ip, null
  br i1 %.not.i.i.i235, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i236

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i236: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit200
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 56
  %i.ir = load i8, ptr %i.iq, align 8, !tbaa !43
  %.not.i1.i.i237 = icmp eq i8 %i.ir, 0
  br i1 %.not.i1.i.i237, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i236
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 67
  %i.it = load i8, ptr %i.is, align 1, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i238

bb.bj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i236
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ip)
          to label %.noexc241 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc241:                                        ; preds = %bb.bj
  %i.iu = load ptr, ptr %i.ip, align 8, !tbaa !21
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 48
  %i.iw = load ptr, ptr %i.iv, align 8
  %i.ix = invoke noundef signext i8 %i.iw(ptr noundef nonnull align 8 dereferenceable(570) %i.ip, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i238 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !51

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i238: ; preds = %.noexc241, %bb.bi
  %.0.i.i.i239 = phi i8 [ %i.it, %bb.bi ], [ %i.ix, %.noexc241 ]
  %i.iy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i239)
          to label %.noexc243 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc243:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i238
  %i.iz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.iy)
          to label %_ZNSolsEPFRSoS_E.exit202 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit202:                         ; preds = %.noexc243
  %i.ja = load ptr, ptr @_ZSt4cout, align 8, !tbaa !21
  %i.jb = getelementptr i8, ptr %i.ja, i64 -24
  %i.jc = load i64, ptr %i.jb, align 8
  %i.jd = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.jc
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 240
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !37 ; 6 uses
  %.not.i.i.i246 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i246, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i247

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i247: ; preds = %_ZNSolsEPFRSoS_E.exit202
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 56
  %i.jh = load i8, ptr %i.jg, align 8, !tbaa !43
  %.not.i1.i.i248 = icmp eq i8 %i.jh, 0
  br i1 %.not.i1.i.i248, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i247
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 67
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i249

bb.bl:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i247
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.jf)
          to label %.noexc252 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc252:                                        ; preds = %bb.bl
  %i.jk = load ptr, ptr %i.jf, align 8, !tbaa !21
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 48
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = invoke noundef signext i8 %i.jm(ptr noundef nonnull align 8 dereferenceable(570) %i.jf, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i249 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !51

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i249: ; preds = %.noexc252, %bb.bk
  %.0.i.i.i250 = phi i8 [ %i.jj, %bb.bk ], [ %i.jn, %.noexc252 ]
  %i.jo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i250)
          to label %.noexc254 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc254:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i249
  %i.jp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jo)
          to label %_ZNSolsEPFRSoS_E.exit204 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZNSolsEPFRSoS_E.exit204:                         ; preds = %.noexc254
  %i.jq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jp, ptr noundef nonnull @.str.14, i64 noundef 78)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit206 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit206: ; preds = %_ZNSolsEPFRSoS_E.exit204
  %i.jr = load ptr, ptr %i.jp, align 8, !tbaa !21
  %i.js = getelementptr i8, ptr %i.jr, i64 -24
  %i.jt = load i64, ptr %i.js, align 8
  %i.ju = getelementptr inbounds i8, ptr %i.jp, i64 %i.jt
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 240
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !37 ; 6 uses
  %.not.i.i.i257 = icmp eq ptr %i.jw, null
  br i1 %.not.i.i.i257, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i258

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i258: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit206
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 56
  %i.jy = load i8, ptr %i.jx, align 8, !tbaa !43
  %.not.i1.i.i259 = icmp eq i8 %i.jy, 0
  br i1 %.not.i1.i.i259, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i258
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 67
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i260

bb.bn:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i258
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.jw)
          to label %.noexc263 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc263:                                        ; preds = %bb.bn
  %i.kb = load ptr, ptr %i.jw, align 8, !tbaa !21
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 48
  %i.kd = load ptr, ptr %i.kc, align 8
  %i.ke = invoke noundef signext i8 %i.kd(ptr noundef nonnull align 8 dereferenceable(570) %i.jw, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i260 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !51

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i260: ; preds = %.noexc263, %bb.bm
end_hunk_0
