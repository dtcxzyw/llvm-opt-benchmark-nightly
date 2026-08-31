Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/cs2cs?download=true
inline.NumInlined: 505
inline.NumDeleted: 252
begin_hunk_0_@main:bb.a
bb.o:                                             ; preds = %bb.n
  call void @exit(i32 noundef 1) #28
  unreachable

.loopexit813:                                     ; preds = %bb.dc, %bb.dx
  %lpad.loopexit815 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp814

.loopexit.split-lp814.loopexit:                   ; preds = %.invoke, %bb.fm, %bb.fk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i616, %bb.fh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.fd, %bb.cu, %bb.cp, %bb.p, %bb.et
  %lpad.loopexit818 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp814

.loopexit.split-lp814.loopexit.split-lp:          ; preds = %.invoke1421, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit625, %bb.fw, %bb.fs, %bb.fq, %bb.dv, %bb.cs, %bb.cn, %bb.cd, %bb.bo, %bb.s, %bb.n
  %lpad.loopexit.split-lp819 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp814

bb.p:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %.03071151, i64 16 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !17 ; 2 uses
  %i.bn = load i64, ptr %i.ao, align 8, !tbaa !13
  %i.bo = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bm) #27
  %i.bp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %i.bn, ptr noundef nonnull %i.bm, i64 noundef %i.bo)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %.loopexit.split-lp814.loopexit ; 0 uses

bb.q:                                             ; preds = %bb.l
  %i.bq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bg, ptr noundef nonnull dereferenceable(7) @.str.5) #29
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.r, label %bb.bm

bb.r:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %.03071151, i64 16 ; 2 uses
  %i.bt = add nsw i32 %.03021152, -2              ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void (i32, ptr, ...) @_Z5emessiPKcz(i32 noundef 1, ptr noundef nonnull @.str.6)
          to label %bb.t unwind label %.loopexit.split-lp814.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  call void @exit(i32 noundef 1) #28
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !17 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store ptr %i.av, ptr %9, align 8, !tbaa !9
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.77) #32
          to label %.noexc unwind label %.loopexit.split-lp827

.noexc:                                           ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bx = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bv) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %i.bx, ptr %i.b, align 8, !tbaa !24
  %i.by = icmp ugt i64 %i.bx, 15
  br i1 %i.by, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.w
  %i.bz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc537 unwind label %.loopexit826 ; 2 uses

.noexc537:                                        ; preds = %.noexc.i
  store ptr %i.bz, ptr %9, align 8, !tbaa !25
  %i.ca = load i64, ptr %i.b, align 8, !tbaa !24
  store i64 %i.ca, ptr %i.av, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc537, %bb.w
  %i.cb = phi ptr [ %i.bz, %.noexc537 ], [ %i.av, %bb.w ] ; 2 uses
  switch i64 %i.bx, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %bb.z
  ]

bb.x:                                             ; preds = %._crit_edge.i.i
  %i.cc = load i8, ptr %i.bv, align 1, !tbaa !16
  store i8 %i.cc, ptr %i.cb, align 1, !tbaa !16
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cb, ptr nonnull align 1 %i.bv, i64 %i.bx, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %._crit_edge.i.i
  %i.cd = load i64, ptr %i.b, align 8, !tbaa !24  ; 2 uses
  store i64 %i.cd, ptr %i.aw, align 8, !tbaa !13
  %i.ce = load ptr, ptr %9, align 8, !tbaa !25
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cd
  store i8 0, ptr %i.cf, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  invoke void @_ZN5osgeo4proj8internal5splitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9, i8 noundef signext 44)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.cg = load ptr, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.av
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aa
  %i.ci = load i64, ptr %i.av, align 8, !tbaa !16
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.ck = load ptr, ptr %i.ax, align 8, !tbaa !26
  %i.cl = load ptr, ptr %8, align 8, !tbaa !29    ; 2 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %.not506 = icmp eq i64 %i.co, 128
  br i1 %.not506, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.7, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ab
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.bv)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.cq)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.ae, !inline_history !30 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %bb.ac
  call void @exit(i32 noundef 1) #28
  unreachable

.loopexit826:                                     ; preds = %.noexc.i
  %lpad.loopexit828 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542

.loopexit.split-lp827:                            ; preds = %bb.v
  %lpad.loopexit.split-lp829 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542

bb.ad:                                            ; preds = %bb.z
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = load ptr, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.av
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540: ; preds = %bb.ad
  %i.cv = load i64, ptr %i.av, align 8, !tbaa !16
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542: ; preds = %bb.ad, %.loopexit826, %.loopexit.split-lp827, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540
  %.pn504 = phi { ptr, i32 } [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540 ], [ %lpad.loopexit.split-lp829, %.loopexit.split-lp827 ], [ %lpad.loopexit828, %.loopexit826 ], [ %i.cs, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit581

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cy = invoke noundef double @_ZN5osgeo4proj8internal13c_locale_stodERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.cl)
          to label %bb.ag unwind label %bb.an     ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %i.cz = load ptr, ptr %8, align 8, !tbaa !29
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = invoke noundef double @_ZN5osgeo4proj8internal13c_locale_stodERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.da)
          to label %bb.ah unwind label %bb.an     ; 3 uses

bb.ah:                                            ; preds = %bb.ag
  %i.dc = load ptr, ptr %8, align 8, !tbaa !29
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.de = invoke noundef double @_ZN5osgeo4proj8internal13c_locale_stodERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.dd)
          to label %bb.ai unwind label %bb.an     ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  %i.df = load ptr, ptr %8, align 8, !tbaa !29
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 96
  %i.dh = invoke noundef double @_ZN5osgeo4proj8internal13c_locale_stodERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.dg)
          to label %bb.aj unwind label %bb.an     ; 3 uses

bb.aj:                                            ; preds = %bb.ai
  %i.di = fcmp uge double %i.db, -1.000000e+02
  %i.dj = call double @llvm.fabs.f64(double %i.cy)
  %i.dk = fcmp ugt double %i.dj, 9.000000e+01     ; 2 uses
  %or.cond524 = or i1 %i.di, %i.dk
  %i.dl = call double @llvm.fabs.f64(double %i.de)
  %i.dm = fcmp ugt double %i.dl, 9.000000e+01     ; 2 uses
  %or.cond526 = or i1 %i.dm, %or.cond524
  br i1 %or.cond526, label %_ZNSolsEPFRSoS_E.exit547, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.8, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit544 unwind label %.loopexit831 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit544: ; preds = %bb.ak
  %i.do = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, double noundef %i.db)
          to label %_ZNSolsEd.exit unwind label %.loopexit831 ; 3 uses

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit544
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !31
  %i.dq = getelementptr i8, ptr %i.dp, i64 -24
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = getelementptr inbounds i8, ptr %i.do, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 240
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !33 ; 6 uses
  %.not.i.i.i737 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i737, label %.invoke1477, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

.invoke1477:                                      ; preds = %_ZNSolsEd.exit, %_ZNSolsEd.exit551
  invoke void @_ZSt16__throw_bad_castv() #32
          to label %.cont1478 unwind label %.loopexit.split-lp832

.cont1478:                                        ; preds = %.invoke1477
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZNSolsEd.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 56
  %i.dw = load i8, ptr %i.dv, align 8, !tbaa !49
  %.not.i1.i.i = icmp eq i8 %i.dw, 0
  br i1 %.not.i1.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 67
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.am:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.du)
          to label %.noexc739 unwind label %.loopexit831

.noexc739:                                        ; preds = %bb.am
  %i.dz = load ptr, ptr %i.du, align 8, !tbaa !31
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = invoke noundef signext i8 %i.eb(ptr noundef nonnull align 8 dereferenceable(570) %i.du, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit831, !inline_history !55

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc739, %bb.al
  %.0.i.i.i = phi i8 [ %i.dy, %bb.al ], [ %i.ec, %.noexc739 ]
  %i.ed = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.do, i8 noundef signext %.0.i.i.i)
          to label %.noexc741 unwind label %.loopexit831

.noexc741:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ee = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ed)
          to label %_ZNSolsEPFRSoS_E.exit547 unwind label %.loopexit831 ; 0 uses

bb.an:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %i.ef = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

.loopexit831:                                     ; preds = %bb.ak, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit544, %bb.ao, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit549, %bb.am, %.noexc739, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc741, %bb.aq, %.noexc749, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i746, %.noexc751
  %lpad.loopexit833 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

.loopexit.split-lp832:                            ; preds = %.invoke1477
  %lpad.loopexit.split-lp834 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

_ZNSolsEPFRSoS_E.exit547:                         ; preds = %.noexc741, %bb.aj
  %i.eg = fcmp ule double %i.dh, 1.000000e+02
  %or.cond528 = or i1 %i.eg, %i.dk
  %or.cond530 = or i1 %i.dm, %or.cond528
  br i1 %or.cond530, label %_ZNSolsEPFRSoS_E.exit553, label %bb.ao

bb.ao:                                            ; preds = %_ZNSolsEPFRSoS_E.exit547
  %i.eh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.9, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit549 unwind label %.loopexit831 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit549: ; preds = %bb.ao
  %i.ei = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, double noundef %i.dh)
          to label %_ZNSolsEd.exit551 unwind label %.loopexit831 ; 3 uses

_ZNSolsEd.exit551:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit549
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !31
  %i.ek = getelementptr i8, ptr %i.ej, i64 -24
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = getelementptr inbounds i8, ptr %i.ei, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 240
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !33 ; 6 uses
  %.not.i.i.i743 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i743, label %.invoke1477, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i744

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i744: ; preds = %_ZNSolsEd.exit551
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 56
  %i.eq = load i8, ptr %i.ep, align 8, !tbaa !49
  %.not.i1.i.i745 = icmp eq i8 %i.eq, 0
  br i1 %.not.i1.i.i745, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i744
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 67
  %i.es = load i8, ptr %i.er, align 1, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i746

bb.aq:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i744
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.eo)
          to label %.noexc749 unwind label %.loopexit831

.noexc749:                                        ; preds = %bb.aq
  %i.et = load ptr, ptr %i.eo, align 8, !tbaa !31
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = invoke noundef signext i8 %i.ev(ptr noundef nonnull align 8 dereferenceable(570) %i.eo, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i746 unwind label %.loopexit831, !inline_history !55

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i746: ; preds = %.noexc749, %bb.ap
  %.0.i.i.i747 = phi i8 [ %i.es, %bb.ap ], [ %i.ew, %.noexc749 ]
  %i.ex = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, i8 noundef signext %.0.i.i.i747)
          to label %.noexc751 unwind label %.loopexit831

.noexc751:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i746
  %i.ey = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ex)
          to label %_ZNSolsEPFRSoS_E.exit553 unwind label %.loopexit831 ; 0 uses

_ZNSolsEPFRSoS_E.exit553:                         ; preds = %.noexc751, %_ZNSolsEPFRSoS_E.exit547
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  store i8 0, ptr %11, align 8, !tbaa !56
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !9
  store i64 0, ptr %i.ba, align 8, !tbaa !13
  store i8 0, ptr %i.az, align 8, !tbaa !16
  invoke void @_ZN5osgeo4proj8metadata6Extent14createFromBBOXEddddRKNS0_4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn") align 8 %10, double noundef %i.cy, double noundef %i.db, double noundef %i.de, double noundef %i.dh, ptr noundef nonnull align 8 dereferenceable(40) %11)
          to label %bb.ar unwind label %bb.bf

bb.ar:                                            ; preds = %_ZNSolsEPFRSoS_E.exit553
  %i.ez = load <2 x ptr>, ptr %10, align 16, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %i.fa = load ptr, ptr %i.bc, align 8, !tbaa !59 ; 8 uses
  store <2 x ptr> %i.ez, ptr %4, align 16, !tbaa !58
  %.not.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5osgeo4proj8metadata6ExtentEEaSEOS4_.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 4 uses
  %i.fc = load atomic i64, ptr %i.fb acquire, align 8 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 4294967297
  %i.fe = trunc i64 %i.fc to i32                  ; 2 uses
  br i1 %i.fd, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.fb, align 8, !tbaa !62
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  store i32 0, ptr %i.ff, align 4, !tbaa !64
  %i.fg = load ptr, ptr %i.fa, align 8, !tbaa !31
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #27, !inline_history !65
  %i.fj = load ptr, ptr %i.fa, align 8, !tbaa !31
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #27, !inline_history !65
  br label %_ZNSt10shared_ptrIN5osgeo4proj8metadata6ExtentEEaSEOS4_.exitthread-pre-split

bb.au:                                            ; preds = %bb.as
  %i.fm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i.i = icmp eq i8 %i.fm, 0
  br i1 %.not.i.i.i.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fn = add nsw i32 %i.fe, -1
  store i32 %i.fn, ptr %i.fb, align 8, !tbaa !66
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.aw:                                            ; preds = %bb.au
  %i.fo = atomicrmw volatile add ptr %i.fb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i.i.i = phi i32 [ %i.fe, %bb.av ], [ %i.fo, %bb.aw ]
  %i.fp = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.fp, label %bb.ax, label %_ZNSt10shared_ptrIN5osgeo4proj8metadata6ExtentEEaSEOS4_.exitthread-pre-split, !prof !67

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #27
  br label %_ZNSt10shared_ptrIN5osgeo4proj8metadata6ExtentEEaSEOS4_.exitthread-pre-split

_ZNSt10shared_ptrIN5osgeo4proj8metadata6ExtentEEaSEOS4_.exitthread-pre-split: ; preds = %bb.ax, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.at
  %.pr1365 = load ptr, ptr %i.bb, align 8, !tbaa !59
  br label %_ZNSt10shared_ptrIN5osgeo4proj8metadata6ExtentEEaSEOS4_.exit

_ZNSt10shared_ptrIN5osgeo4proj8metadata6ExtentEEaSEOS4_.exit: ; preds = %_ZNSt10shared_ptrIN5osgeo4proj8metadata6ExtentEEaSEOS4_.exitthread-pre-split, %bb.ar
  %i.fq = phi ptr [ %.pr1365, %_ZNSt10shared_ptrIN5osgeo4proj8metadata6ExtentEEaSEOS4_.exitthread-pre-split ], [ null, %bb.ar ] ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt10shared_ptrIN5osgeo4proj8metadata6ExtentEEaSEOS4_.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 4 uses
  %i.fs = load atomic i64, ptr %i.fr acquire, align 8 ; 2 uses
  %i.ft = icmp eq i64 %i.fs, 4294967297
  %i.fu = trunc i64 %i.fs to i32                  ; 2 uses
  br i1 %i.ft, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.fr, align 8, !tbaa !62
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  store i32 0, ptr %i.fv, align 4, !tbaa !64
  %i.fw = load ptr, ptr %i.fq, align 8, !tbaa !31
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #27, !inline_history !68
  %i.fz = load ptr, ptr %i.fq, align 8, !tbaa !31
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8
  call void %i.gb(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #27, !inline_history !68
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit

bb.ba:                                            ; preds = %bb.ay
  %i.gc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i554 = icmp eq i8 %i.gc, 0
  br i1 %.not.i.i.i.i554, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gd = add nsw i32 %i.fu, -1
  store i32 %i.gd, ptr %i.fr, align 8, !tbaa !66
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.ge = atomicrmw volatile add ptr %i.fr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i.i = phi i32 [ %i.fu, %bb.bb ], [ %i.ge, %bb.bc ]
  %i.gf = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.gf, label %bb.bd, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit, !prof !67

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #27
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5osgeo4proj8metadata6ExtentEEaSEOS4_.exit, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.bd
  %i.gg = load ptr, ptr %i.ay, align 8, !tbaa !25 ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.az
  br i1 %i.gh, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit
  %i.gi = load i64, ptr %i.az, align 8, !tbaa !16
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gj) #33
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.gk = load ptr, ptr %8, align 8, !tbaa !29    ; 3 uses
  %i.gl = load ptr, ptr %i.ax, align 8, !tbaa !26 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gk, %i.gl
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gr, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.gk, %_ZNSt6vectorIdSaIdEED2Ev.exit ] ; 3 uses
  %i.gm = load ptr, ptr %.05.i.i.i, align 8, !tbaa !25 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.gp = load i64, ptr %i.gn, align 8, !tbaa !16
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gq) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i557 = icmp eq ptr %i.gr, %i.gl
  br i1 %.not.i.i.i557, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !69

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !29
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.gs = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.gk, %_ZNSt6vectorIdSaIdEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gs, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.gt = load ptr, ptr %i.bd, align 8, !tbaa !70
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = ptrtoint ptr %i.gs to i64
  %i.gw = sub i64 %i.gu, %i.gv
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef %i.gw) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.bf:                                            ; preds = %_ZNSolsEPFRSoS_E.exit553
  %i.gx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %i.gy = load ptr, ptr %i.ay, align 8, !tbaa !25 ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.az
  br i1 %i.gz, label %_ZN5osgeo4proj4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit560, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i558

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i558: ; preds = %bb.bf
  %i.ha = load i64, ptr %i.az, align 8, !tbaa !16
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hb) #33
  br label %_ZN5osgeo4proj4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit560

_ZN5osgeo4proj4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit560: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i558
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %.body

.body:                                            ; preds = %_ZN5osgeo4proj4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit560, %.loopexit.split-lp832, %.loopexit831, %bb.an
  %.pn509.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp834, %.loopexit.split-lp832 ], [ %i.ef, %bb.an ], [ %i.gx, %_ZN5osgeo4proj4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit560 ], [ %lpad.loopexit833, %.loopexit831 ] ; 3 uses
  %.3327 = extractvalue { ptr, i32 } %.pn509.pn, 1
  %i.hc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #27
  %i.hd = icmp eq i32 %.3327, %i.hc
  br i1 %i.hd, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %.body
  %.3332 = extractvalue { ptr, i32 } %.pn509.pn, 0
  %i.he = call ptr @__cxa_begin_catch(ptr %.3332) #27 ; 2 uses
  %i.hf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.10, i64 noundef 33)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit565 unwind label %bb.bj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit565: ; preds = %bb.bg
  %i.hg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.bv)
          to label %bb.bh unwind label %bb.bj     ; 2 uses

bb.bh:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit565
  %i.hh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, ptr noundef nonnull @.str.11, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit567 unwind label %bb.bj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit567: ; preds = %bb.bh
  %i.hi = load ptr, ptr %i.he, align 8, !tbaa !31
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = call noundef ptr %i.hk(ptr noundef nonnull align 8 dereferenceable(8) %i.he) #27
  %i.hm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, ptr noundef %i.hl)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit567
  %i.hn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.hm)
          to label %_ZNSolsEPFRSoS_E.exit569 unwind label %bb.bj, !inline_history !30 ; 0 uses

_ZNSolsEPFRSoS_E.exit569:                         ; preds = %bb.bi
  call void @exit(i32 noundef 1) #28
  unreachable

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit567, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit565
  %i.ho = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bk unwind label %bb.qo

bb.bk:                                            ; preds = %bb.bj, %.body, %bb.ae
  %.merged522.a = phi { ptr, i32 } [ %i.cx, %bb.ae ], [ %.pn509.pn, %.body ], [ %i.ho, %bb.bj ] ; 2 uses
  %i.hp = load ptr, ptr %8, align 8, !tbaa !29    ; 3 uses
  %i.hq = load ptr, ptr %i.ax, align 8, !tbaa !26 ; 2 uses
  %.not4.i.i.i570 = icmp eq ptr %i.hp, %i.hq
  br i1 %.not4.i.i.i570, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i578, label %.lr.ph.i.i.i571

.lr.ph.i.i.i571:                                  ; preds = %bb.bk, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i574
  %.05.i.i.i572 = phi ptr [ %i.hw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i574 ], [ %i.hp, %bb.bk ] ; 3 uses
  %i.hr = load ptr, ptr %.05.i.i.i572, align 8, !tbaa !25 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.05.i.i.i572, i64 16 ; 2 uses
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i574, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i573

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i573: ; preds = %.lr.ph.i.i.i571
  %i.hu = load i64, ptr %i.hs, align 8, !tbaa !16
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hv) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i574

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i574: ; preds = %.lr.ph.i.i.i571, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i573
  %i.hw = getelementptr inbounds nuw i8, ptr %.05.i.i.i572, i64 32 ; 2 uses
  %.not.i.i.i575 = icmp eq ptr %i.hw, %i.hq
  br i1 %.not.i.i.i575, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i576, label %.lr.ph.i.i.i571, !llvm.loop !69

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i576: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i574
  %.pr.i577 = load ptr, ptr %8, align 8, !tbaa !29
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i578

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i578: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i576, %bb.bk
  %i.hx = phi ptr [ %.pr.i577, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i576 ], [ %i.hp, %bb.bk ] ; 3 uses
  %.not.i.i1.i579 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i1.i579, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit581, label %bb.bl

bb.bl:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i578
  %i.hy = load ptr, ptr %i.bd, align 8, !tbaa !70
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = ptrtoint ptr %i.hx to i64
  %i.ib = sub i64 %i.hz, %i.ia
  call void @_ZdlPvm(ptr noundef nonnull %i.hx, i64 noundef %i.ib) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit581

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit581: ; preds = %bb.bl, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i578, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542
  %.merged521.a = phi { ptr, i32 } [ %.pn504, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542 ], [ %.merged522.a, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i578 ], [ %.merged522.a, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %.loopexit.split-lp814

bb.bm:                                            ; preds = %bb.q
  %i.ic = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bg, ptr noundef nonnull dereferenceable(11) @.str.12) #29
  %i.id = icmp eq i32 %i.ic, 0
  br i1 %i.id, label %bb.bn, label %bb.cb

bb.bn:                                            ; preds = %bb.bm
  %i.ie = getelementptr inbounds nuw i8, ptr %.03071151, i64 16 ; 2 uses
  %i.if = add nsw i32 %.03021152, -2              ; 2 uses
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  invoke void (i32, ptr, ...) @_Z5emessiPKcz(i32 noundef 1, ptr noundef nonnull @.str.13)
          to label %bb.bp unwind label %.loopexit.split-lp814.loopexit.split-lp

bb.bp:                                            ; preds = %bb.bo
  call void @exit(i32 noundef 1) #28
  unreachable

bb.bq:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.ih = load ptr, ptr %i.ie, align 8, !tbaa !17 ; 4 uses
  store ptr %i.at, ptr %12, align 8, !tbaa !9
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.77) #32
          to label %.noexc584 unwind label %.loopexit.split-lp822

.noexc584:                                        ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.ij = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ih) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.ij, ptr %i.a, align 8, !tbaa !24
  %i.ik = icmp ugt i64 %i.ij, 15
  br i1 %i.ik, label %.noexc.i583, label %._crit_edge.i.i582

.noexc.i583:                                      ; preds = %bb.bs
  %i.il = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc585 unwind label %.loopexit821 ; 2 uses

.noexc585:                                        ; preds = %.noexc.i583
  store ptr %i.il, ptr %12, align 8, !tbaa !25
  %i.im = load i64, ptr %i.a, align 8, !tbaa !24
  store i64 %i.im, ptr %i.at, align 8, !tbaa !16
  br label %._crit_edge.i.i582

._crit_edge.i.i582:                               ; preds = %.noexc585, %bb.bs
  %i.in = phi ptr [ %i.il, %.noexc585 ], [ %i.at, %bb.bs ] ; 2 uses
  switch i64 %i.ij, label %bb.bu [
    i64 1, label %bb.bt
    i64 0, label %bb.bv
  ]

bb.bt:                                            ; preds = %._crit_edge.i.i582
  %i.io = load i8, ptr %i.ih, align 1, !tbaa !16
  store i8 %i.io, ptr %i.in, align 1, !tbaa !16
  br label %bb.bv

bb.bu:                                            ; preds = %._crit_edge.i.i582
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.in, ptr nonnull align 1 %i.ih, i64 %i.ij, i1 false)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %._crit_edge.i.i582
  %i.ip = load i64, ptr %i.a, align 8, !tbaa !24  ; 2 uses
  store i64 %i.ip, ptr %i.au, align 8, !tbaa !13
  %i.iq = load ptr, ptr %12, align 8, !tbaa !25
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.ip
  store i8 0, ptr %i.ir, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.is = invoke noundef double @_ZN5osgeo4proj8internal13c_locale_stodERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.it = load ptr, ptr %12, align 8, !tbaa !25   ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.at
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit589, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i587

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i587: ; preds = %bb.bw
  %i.iv = load i64, ptr %i.at, align 8, !tbaa !16
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.iw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit589

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit589: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i587
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

.loopexit821:                                     ; preds = %.noexc.i583
  %lpad.loopexit823 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit592

.loopexit.split-lp822:                            ; preds = %bb.br
  %lpad.loopexit.split-lp824 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit592

bb.bx:                                            ; preds = %bb.bv
  %i.ix = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.iy = load ptr, ptr %12, align 8, !tbaa !25   ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.at
  br i1 %i.iz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit592, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i590

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i590: ; preds = %bb.bx
end_hunk_0
begin_hunk_1_@proj_get_name

declare ptr @proj_coordinate_metadata_create(ptr noundef, ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !17
  store ptr %i.e, ptr %i.b, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !146
  br label %_ZNSt6vectorIPKcSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !122    ; 4 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.80) #32
  unreachable

_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #35 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !17
  store ptr %i.t, ptr %i.s, align 8, !tbaa !17
  %i.u = icmp sgt i64 %i.j, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !130
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.y) #33
  br label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !122
  store ptr %i.v, ptr %i.a, align 8, !tbaa !146
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.z, ptr %i.c, align 8, !tbaa !130
  br label %_ZNSt6vectorIPKcSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

_ZNSt6vectorIPKcSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  ret void
}

declare void @_ZN5osgeo4proj8internal8toStringB5cxx11Edi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, double noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7 align 2

declare ptr @proj_create_crs_to_crs_from_pj(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @proj_area_destroy(ptr noundef) local_unnamed_addr #2

declare ptr @proj_errno_string(i32 noundef) local_unnamed_addr #2

declare i32 @proj_context_errno(ptr noundef) local_unnamed_addr #2

declare noundef double @_Z6dmstorPKcPPc(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) #19

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZL7processP8_IO_FILE(ptr nofree noundef captures(none) %0) unnamed_addr #18 {
bb.a:
  %i.a = alloca [1003 x i8], align 16             ; 6 uses
  %i.b = alloca ptr, align 8                      ; 18 uses
  %i.c = alloca [40 x i8], align 16               ; 10 uses
  %1 = alloca %union.PJ_COORD, align 8            ; 6 uses
  %2 = alloca %union.PJ_COORD, align 16           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @emess_dat, i64 16), align 8, !tbaa !128
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr getelementptr inbounds nuw (i8, ptr @emess_dat, i64 16), align 8, !tbaa !128
  %i.f = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1000, ptr noundef %0) ; 3 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !17
  %.not5661 = icmp eq ptr %i.f, null
  br i1 %.not5661, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.al
  %i.g = phi ptr [ %i.f, %.lr.ph ], [ %i.ee, %bb.al ] ; 8 uses
  %i.h = phi i1 [ true, %.lr.ph ], [ false, %bb.al ]
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %i.g, align 1, !tbaa !16
  %i.j = icmp eq i8 %i.i, -17
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !16
  %i.m = icmp eq i8 %i.l, -69
  br i1 %i.m, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !16
  %i.p = icmp eq i8 %i.o, -65
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 3 ; 2 uses
  store ptr %i.q, ptr %i.b, align 8, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = phi ptr [ %i.q, %bb.f ], [ %i.g, %bb.e ], [ %i.g, %bb.d ], [ %i.g, %bb.c ], [ %i.g, %bb.b ] ; 5 uses
  %i.s = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.r, i32 noundef 10) #29
  %.not57 = icmp eq ptr %i.s, null
  br i1 %.not57, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %i.r)
  %endptr = getelementptr inbounds i8, ptr %i.r, i64 %strlen
  store i16 10, ptr %endptr, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %i.t = call i32 @fgetc(ptr noundef %0)
  switch i32 %i.t, label %bb.i [
    i32 -1, label %.loopexit.loopexit
    i32 10, label %.loopexit.loopexit
  ]

.loopexit.loopexit:                               ; preds = %bb.i, %bb.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.g
  %i.u = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.r, %bb.g ] ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !16
  %i.w = sext i8 %i.v to i32
  %i.x = load i32, ptr @_ZL3tag, align 4, !tbaa !66
  %i.y = icmp eq i32 %i.x, %i.w
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  %i.z = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.aa = call i32 @fputs(ptr noundef nonnull %i.a, ptr noundef %i.z) ; 0 uses
  br label %bb.al, !llvm.loop !147

bb.k:                                             ; preds = %.loopexit
  %.b52 = load i1, ptr @_ZL9reversein, align 4    ; 2 uses
  %i.ab = load ptr, ptr @_ZL8informat, align 8, !tbaa !58
  %i.ac = call noundef double %i.ab(ptr noundef nonnull %i.u, ptr noundef nonnull %i.b) ; 2 uses
  %i.ad = load ptr, ptr @_ZL8informat, align 8, !tbaa !58
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.af = call noundef double %i.ad(ptr noundef %i.ae, ptr noundef nonnull %i.b) ; 2 uses
  %. = select i1 %.b52, double %i.af, double %i.ac
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.ah = call double @strtod(ptr noundef %i.ag, ptr noundef nonnull %i.b) #27 ; 2 uses
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !17  ; 7 uses
  %i.aj = call double @strtod(ptr noundef %i.ai, ptr noundef nonnull %i.b) #27
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.al = icmp eq ptr %i.ak, %i.ai
  %3 = bitcast double %i.aj to i64
  %4 = select i1 %i.al, i64 9218868437227405312, i64 %3
  store ptr %i.ai, ptr %i.b, align 8, !tbaa !17
  %.72 = select i1 %.b52, double %i.ac, double %i.af ; 2 uses
  %i.am = fcmp oeq double %.72, +inf
  %.sroa.022.1 = select i1 %i.am, double +inf, double %. ; 2 uses
  %i.an = load i8, ptr %i.ai, align 1, !tbaa !16
  %i.ao = icmp eq i8 %i.an, 0
  %i.ap = icmp ugt ptr %i.ai, %i.a
  %or.cond = and i1 %i.ap, %i.ao
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds i8, ptr %i.ai, i64 -1 ; 2 uses
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ar = phi ptr [ %i.aq, %bb.l ], [ %i.ai, %bb.k ] ; 2 uses
  %.b = load i1, ptr @_ZL6echoin, align 4
  br i1 %.b, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !16
  store i8 0, ptr %i.ar, align 1, !tbaa !16
  %i.at = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.au = call i32 @fputs(ptr noundef nonnull %i.r, ptr noundef %i.at) ; 0 uses
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !17
  store i8 %i.as, ptr %i.av, align 1, !tbaa !16
  %i.aw = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.ax = call noundef i32 @putc(i32 noundef 9, ptr noundef %i.aw), !inline_history !77 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ay = fcmp une double %.sroa.022.1, +inf
  br i1 %i.ay, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.az = load i8, ptr @_ZL12srcIsLongLat, align 1, !tbaa !121, !range !119, !noundef !120
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = insertelement <2 x double> poison, double %.sroa.022.1, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %.72, i64 1 ; 3 uses
  br i1 %i.ba, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bd = load double, ptr @_ZL12srcToRadians, align 8, !tbaa !126 ; 2 uses
  %i.be = fadd double %i.bd, f0xBF91DF46A2529D39
  %i.bf = call double @llvm.fabs.f64(double %i.be)
  %i.bg = fcmp olt double %i.bf, 1.000000e-10
  br i1 %i.bg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bh = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bi = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bj = fdiv <2 x double> %i.bc, %i.bi
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %i.bk = phi <2 x double> [ %i.bj, %bb.r ], [ %i.bc, %bb.q ], [ %i.bc, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.bl = load ptr, ptr @_ZL14transformation, align 8, !tbaa !124
  store <2 x double> %i.bk, ptr %2, align 16
  store double %i.ah, ptr %.sroa.8.0..sroa_idx, align 16
  store i64 %4, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !16
  call void @proj_trans(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %1, ptr noundef %i.bl, i32 noundef 1, ptr noundef nonnull byval(%union.PJ_COORD) align 8 %2)
  %.sroa.0.0.copyload5 = load double, ptr %1, align 8 ; 4 uses
  %.sroa.6.0.copyload7 = load double, ptr %.sroa.6.0..sroa_idx6, align 8 ; 3 uses
  %.sroa.8.0.copyload9 = load double, ptr %.sroa.8.0..sroa_idx8, align 8 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %i.bm = fcmp oeq double %.sroa.0.0.copyload5, +inf
  br i1 %i.bm, label %.thread, label %bb.t

.thread:                                          ; preds = %bb.o, %bb.s
  %.04671 = phi double [ %.sroa.8.0.copyload9, %bb.s ], [ %i.ah, %bb.o ]
  %i.bn = load ptr, ptr @_ZL5oterr, align 8, !tbaa !17
  %i.bo = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.bp = call i32 @fputs(ptr noundef %i.bn, ptr noundef %i.bo) ; 0 uses
  br label %bb.ae

bb.t:                                             ; preds = %bb.s
  %i.bq = load i8, ptr @_ZL13destIsLongLat, align 1, !tbaa !121, !range !119, !noundef !120
  %i.br = trunc nuw i8 %i.bq to i1                ; 3 uses
  %i.bs = load ptr, ptr @_ZL5oform, align 8       ; 3 uses
  %i.bt = icmp eq ptr %i.bs, null
  %or.cond4.not = select i1 %i.br, i1 %i.bt, i1 false
  %i.bu = load double, ptr @_ZL13destToRadians, align 8 ; 3 uses
  br i1 %or.cond4.not, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.t
  %i.bv = fmul double %.sroa.0.0.copyload5, %i.bu ; 4 uses
  %i.bw = fmul double %.sroa.6.0.copyload7, %i.bu ; 4 uses
  %i.bx = load i8, ptr @_ZL13destIsLatLong, align 1, !tbaa !121, !range !119, !noundef !120
  %i.by = trunc nuw i8 %i.bx to i1
  %.b55 = load i1, ptr @_ZL10reverseout, align 4  ; 2 uses
  br i1 %i.by, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  br i1 %.b55, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bz = call noundef ptr @_Z6rtodmsPcmdii(ptr noundef nonnull %i.c, i64 noundef 40, double noundef %i.bw, i32 noundef 69, i32 noundef 87)
  %i.ca = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.cb = call i32 @fputs(ptr noundef %i.bz, ptr noundef %i.ca) ; 0 uses
  %i.cc = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.cd = call noundef i32 @putc(i32 noundef 9, ptr noundef %i.cc), !inline_history !77 ; 0 uses
  %i.ce = call noundef ptr @_Z6rtodmsPcmdii(ptr noundef nonnull %i.c, i64 noundef 40, double noundef %i.bv, i32 noundef 78, i32 noundef 83)
  %i.cf = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.cg = call i32 @fputs(ptr noundef %i.ce, ptr noundef %i.cf) ; 0 uses
  br label %bb.ae

bb.x:                                             ; preds = %bb.v
  %i.ch = call noundef ptr @_Z6rtodmsPcmdii(ptr noundef nonnull %i.c, i64 noundef 40, double noundef %i.bv, i32 noundef 78, i32 noundef 83)
  %i.ci = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.cj = call i32 @fputs(ptr noundef %i.ch, ptr noundef %i.ci) ; 0 uses
  %i.ck = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.cl = call noundef i32 @putc(i32 noundef 9, ptr noundef %i.ck), !inline_history !77 ; 0 uses
  %i.cm = call noundef ptr @_Z6rtodmsPcmdii(ptr noundef nonnull %i.c, i64 noundef 40, double noundef %i.bw, i32 noundef 69, i32 noundef 87)
  %i.cn = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.co = call i32 @fputs(ptr noundef %i.cm, ptr noundef %i.cn) ; 0 uses
  br label %bb.ae

bb.y:                                             ; preds = %bb.u
  br i1 %.b55, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cp = call noundef ptr @_Z6rtodmsPcmdii(ptr noundef nonnull %i.c, i64 noundef 40, double noundef %i.bw, i32 noundef 78, i32 noundef 83)
  %i.cq = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.cr = call i32 @fputs(ptr noundef %i.cp, ptr noundef %i.cq) ; 0 uses
  %i.cs = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.ct = call noundef i32 @putc(i32 noundef 9, ptr noundef %i.cs), !inline_history !77 ; 0 uses
  %i.cu = call noundef ptr @_Z6rtodmsPcmdii(ptr noundef nonnull %i.c, i64 noundef 40, double noundef %i.bv, i32 noundef 69, i32 noundef 87)
  %i.cv = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.cw = call i32 @fputs(ptr noundef %i.cu, ptr noundef %i.cv) ; 0 uses
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.cx = call noundef ptr @_Z6rtodmsPcmdii(ptr noundef nonnull %i.c, i64 noundef 40, double noundef %i.bv, i32 noundef 69, i32 noundef 87)
  %i.cy = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.cz = call i32 @fputs(ptr noundef %i.cx, ptr noundef %i.cy) ; 0 uses
  %i.da = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.db = call noundef i32 @putc(i32 noundef 9, ptr noundef %i.da), !inline_history !77 ; 0 uses
  %i.dc = call noundef ptr @_Z6rtodmsPcmdii(ptr noundef nonnull %i.c, i64 noundef 40, double noundef %i.bw, i32 noundef 78, i32 noundef 83)
  %i.dd = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.de = call i32 @fputs(ptr noundef %i.dc, ptr noundef %i.dd) ; 0 uses
  br label %bb.ae

bb.ab:                                            ; preds = %bb.t
  %i.df = fmul double %i.bu, f0x404CA5DC1A63C1F8  ; 2 uses
  %i.dg = fmul double %.sroa.6.0.copyload7, %i.df
  %i.dh = fmul double %.sroa.0.0.copyload5, %i.df
  %.sroa.022.4 = select i1 %i.br, double %i.dh, double %.sroa.0.0.copyload5 ; 2 uses
  %.sroa.21.3 = select i1 %i.br, double %i.dg, double %.sroa.6.0.copyload7 ; 2 uses
  %.b53 = load i1, ptr @_ZL10reverseout, align 4
  %i.di = load ptr, ptr @stdout, align 8, !tbaa !20 ; 2 uses
  br i1 %.b53, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @_Z26limited_fprintf_for_numberP8_IO_FILEPKcd(ptr noundef %i.di, ptr noundef %i.bs, double noundef %.sroa.21.3)
  %i.dj = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.dk = call noundef i32 @putc(i32 noundef 9, ptr noundef %i.dj), !inline_history !77 ; 0 uses
  %i.dl = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.dm = load ptr, ptr @_ZL5oform, align 8, !tbaa !17
  call void @_Z26limited_fprintf_for_numberP8_IO_FILEPKcd(ptr noundef %i.dl, ptr noundef %i.dm, double noundef %.sroa.022.4)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  call void @_Z26limited_fprintf_for_numberP8_IO_FILEPKcd(ptr noundef %i.di, ptr noundef %i.bs, double noundef %.sroa.022.4)
  %i.dn = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.do = call noundef i32 @putc(i32 noundef 9, ptr noundef %i.dn), !inline_history !77 ; 0 uses
  %i.dp = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.dq = load ptr, ptr @_ZL5oform, align 8, !tbaa !17
  call void @_Z26limited_fprintf_for_numberP8_IO_FILEPKcd(ptr noundef %i.dp, ptr noundef %i.dq, double noundef %.sroa.21.3)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.z, %bb.aa, %bb.w, %bb.x, %bb.ad, %bb.ac, %.thread
  %.04670 = phi double [ %.sroa.8.0.copyload9, %bb.z ], [ %.sroa.8.0.copyload9, %bb.aa ], [ %.sroa.8.0.copyload9, %bb.w ], [ %.sroa.8.0.copyload9, %bb.x ], [ %.sroa.8.0.copyload9, %bb.ad ], [ %.sroa.8.0.copyload9, %bb.ac ], [ %.04671, %.thread ] ; 2 uses
  %i.dr = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.ds = call noundef i32 @putc(i32 noundef 32, ptr noundef %i.dr), !inline_history !77 ; 0 uses
  %i.dt = load ptr, ptr @_ZL5oform, align 8, !tbaa !17 ; 2 uses
  %.not = icmp eq ptr %i.dt, null
  br i1 %.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.du = load ptr, ptr @stdout, align 8, !tbaa !20
  call void @_Z26limited_fprintf_for_numberP8_IO_FILEPKcd(ptr noundef %i.du, ptr noundef nonnull %i.dt, double noundef %.04670)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.dv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, double noundef %.04670) ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.dw = load ptr, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %.not59 = icmp eq ptr %i.dw, null
  br i1 %.not59, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, ptr noundef nonnull %i.dw) ; 0 uses
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.dy = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.dz = call noundef i32 @putc(i32 noundef 10, ptr noundef %i.dy), !inline_history !77 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ea = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.eb = call i32 @fflush(ptr noundef %i.ea)     ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.j, %bb.ak
  %i.ec = load i32, ptr getelementptr inbounds nuw (i8, ptr @emess_dat, i64 16), align 8, !tbaa !128
  %i.ed = add nsw i32 %i.ec, 1
  store i32 %i.ed, ptr getelementptr inbounds nuw (i8, ptr @emess_dat, i64 16), align 8, !tbaa !128
  %i.ee = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1000, ptr noundef %0) ; 3 uses
  store ptr %i.ee, ptr %i.b, align 8, !tbaa !17
  %.not56 = icmp eq ptr %i.ee, null
  br i1 %.not56, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.al, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #6

declare void @proj_cleanup() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #27, !inline_history !148
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !66   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !66
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

end_hunk_1
