Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinyrenderer/original/model?download=true
inline.NumInlined: 459
inline.NumDeleted: 223
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5ModelC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bf = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bf, i64 -24    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 3 uses
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bm, i64 -24    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.bt = phi i64 [ %i.ak, %.lr.ph ], [ %i.lq, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ]
  %i.bu = getelementptr inbounds i8, ptr %2, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 240
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !30 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

.invoke:                                          ; preds = %bb.i, %bb.bx
  invoke void @_ZSt16__throw_bad_castv() #20
          to label %.cont unwind label %.loopexit.split-lp321

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !38
  %.not.i1.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i1.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 67
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !29
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bw)
          to label %.noexc80 unwind label %.loopexit320

.noexc80:                                         ; preds = %bb.k
  %i.cb = load ptr, ptr %i.bw, align 8, !tbaa !16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = invoke noundef signext i8 %i.cd(ptr noundef nonnull align 8 dereferenceable(570) %i.bw, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit320, !inline_history !44

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc80, %bb.j
  %.0.i.i.i = phi i8 [ %i.ca, %bb.j ], [ %i.ce, %.noexc80 ]
  %i.cf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %.0.i.i.i)
          to label %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit320 ; 0 uses

_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.cg = load ptr, ptr %3, align 8, !tbaa !10    ; 4 uses
  store ptr %i.ap, ptr %5, align 8, !tbaa !27
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #20
          to label %.noexc83 unwind label %.loopexit.split-lp326

.noexc83:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ci = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cg) #19 ; 8 uses
  %i.cj = icmp ugt i64 %i.ci, 15
  br i1 %i.cj, label %bb.n, label %._crit_edge.i.i

bb.n:                                             ; preds = %bb.m
  %i.ck = icmp slt i64 %i.ci, 0
  br i1 %i.ck, label %.noexc.i, label %bb.o

.noexc.i:                                         ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #20
          to label %.noexc84 unwind label %.loopexit.split-lp326

.noexc84:                                         ; preds = %.noexc.i
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.cl = add nuw i64 %i.ci, 1                    ; 2 uses
  %i.cm = icmp slt i64 %i.cl, 0
  br i1 %i.cm, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !45

.noexc11.i:                                       ; preds = %bb.o
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc85 unwind label %.loopexit.split-lp326

.noexc85:                                         ; preds = %.noexc11.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.o
  %i.cn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #21
          to label %.noexc86 unwind label %.loopexit325 ; 2 uses

.noexc86:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.cn, ptr %5, align 8, !tbaa !10
  store i64 %i.ci, ptr %i.ap, align 8, !tbaa !29
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc86, %bb.m
  %i.co = phi ptr [ %i.cn, %.noexc86 ], [ %i.ap, %bb.m ] ; 3 uses
  switch i64 %i.ci, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.cp = load i8, ptr %i.cg, align 1, !tbaa !29
  store i8 %i.cp, ptr %i.co, align 1, !tbaa !29
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.co, ptr nonnull align 1 %i.cg, i64 %i.ci, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i
  store i64 %i.ci, ptr %i.aq, align 8, !tbaa !28
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ci
  store i8 0, ptr %i.cq, align 1, !tbaa !29
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1EONS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 8)
          to label %bb.s unwind label %bb.z

bb.s:                                             ; preds = %bb.r
  %i.cr = load ptr, ptr %5, align 8, !tbaa !10    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.ap
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.ct = load i64, ptr %i.ap, align 8, !tbaa !29
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.cv = load i64, ptr %i.aj, align 8, !tbaa !28 ; 6 uses
  %spec.select.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cv, i64 2) ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %.critedge75, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cx = load ptr, ptr %3, align 8, !tbaa !10
  %bcmp = call i32 @bcmp(ptr %i.cx, ptr nonnull @.str, i64 %spec.select.i.i)
  %.not.i87 = icmp eq i32 %bcmp, 0
  %.not = icmp ne i64 %i.cv, 1
  %or.cond = and i1 %.not, %.not.i87
  br i1 %or.cond, label %bb.t, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i99

bb.t:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  %i.cy = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.u unwind label %bb.aa      ; 0 uses

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.ar, align 8, !tbaa !46
  %i.cz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZNSirsERd.exit unwind label %bb.ab ; 0 uses

bb.v:                                             ; preds = %_ZNSirsERd.exit.2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !49
  %i.da = load ptr, ptr %i.as, align 8, !tbaa !51
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  store ptr %i.db, ptr %i.as, align 8, !tbaa !51
  br label %_ZNSt6vectorI3vecILi4EESaIS1_EE9push_backERKS1_.exit

bb.w:                                             ; preds = %_ZNSirsERd.exit.2
  %i.dc = load ptr, ptr %0, align 8, !tbaa !54    ; 5 uses
  %i.dd = ptrtoint ptr %i.ee to i64
  %i.de = ptrtoint ptr %i.dc to i64               ; 2 uses
  %i.df = sub i64 %i.dd, %i.de                    ; 3 uses
  %i.dg = icmp eq i64 %i.df, 9223372036854775776
  br i1 %i.dg, label %bb.x, label %_ZNKSt6vectorI3vecILi4EESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc90.a unwind label %.loopexit.split-lp331

.noexc90.a:                                       ; preds = %bb.x
  unreachable

_ZNKSt6vectorI3vecILi4EESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.w
  %i.dh = ashr exact i64 %i.df, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dh, i64 1)
  %i.di = add nsw i64 %.sroa.speculated.i.i.i, %i.dh ; 2 uses
  %i.dj = icmp ult i64 %i.di, %i.dh
  %i.dk = call i64 @llvm.umin.i64(i64 %i.di, i64 288230376151711743)
  %i.dl = select i1 %i.dj, i64 288230376151711743, i64 %i.dk ; 2 uses
  %i.dm = shl nuw nsw i64 %i.dl, 5
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #21
          to label %.noexc91 unwind label %.loopexit330 ; 5 uses

.noexc91:                                         ; preds = %_ZNKSt6vectorI3vecILi4EESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.df
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.do, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !49
  %.not10.i.i.i.i.i = icmp eq ptr %i.dc, %i.ee
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc91, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i ], [ %i.dn, %.noexc91 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i ], [ %i.dc, %.noexc91 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !49, !alias.scope !55
  %i.dp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dp, %i.ee
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !59

_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc91
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dn, %.noexc91 ], [ %i.dq, %.lr.ph.i.i.i.i.i ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32
  %.not.i23.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI3vecILi4EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.ds = load ptr, ptr %i.at, align 8, !tbaa !61
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = sub i64 %i.dt, %i.de
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.du) #22
  br label %_ZNSt6vectorI3vecILi4EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI3vecILi4EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.dn, ptr %0, align 8, !tbaa !54
  store ptr %i.dr, ptr %i.as, align 8, !tbaa !51
  %i.dv = getelementptr inbounds nuw [32 x i8], ptr %i.dn, i64 %i.dl
  store ptr %i.dv, ptr %i.at, align 8, !tbaa !61
  br label %_ZNSt6vectorI3vecILi4EESaIS1_EE9push_backERKS1_.exit

.loopexit320:                                     ; preds = %bb.k, %.noexc80, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %lpad.loopexit322 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226

.loopexit.split-lp321:                            ; preds = %.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185, %._crit_edge, %bb.bw, %bb.bz, %.noexc266, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i263, %.noexc268
  %lpad.loopexit.split-lp323 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226

.loopexit325:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %lpad.loopexit327 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

.loopexit.split-lp326:                            ; preds = %bb.l, %.noexc.i, %.noexc11.i
  %lpad.loopexit.split-lp328 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

bb.z:                                             ; preds = %bb.r
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = load ptr, ptr %5, align 8, !tbaa !10    ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.ap
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %bb.z
  %i.dz = load i64, ptr %i.ap, align 8, !tbaa !29
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %bb.z, %.loopexit325, %.loopexit.split-lp326, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  %.pn53 = phi { ptr, i32 } [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ], [ %lpad.loopexit.split-lp328, %.loopexit.split-lp326 ], [ %lpad.loopexit327, %.loopexit325 ], [ %i.dw, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.bv

bb.aa:                                            ; preds = %bb.an, %bb.am, %bb.ae, %bb.ad, %bb.t
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

_ZNSirsERd.exit:                                  ; preds = %bb.u
  %i.ec = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.br)
          to label %_ZNSirsERd.exit.1 unwind label %bb.ab ; 0 uses

_ZNSirsERd.exit.1:                                ; preds = %_ZNSirsERd.exit
  %i.ed = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.bs)
          to label %_ZNSirsERd.exit.2 unwind label %bb.ab ; 0 uses

_ZNSirsERd.exit.2:                                ; preds = %_ZNSirsERd.exit.1
  %i.ee = load ptr, ptr %i.as, align 8, !tbaa !51 ; 5 uses
  %i.ef = load ptr, ptr %i.at, align 8, !tbaa !61
  %.not.i88 = icmp eq ptr %i.ee, %i.ef
  br i1 %.not.i88, label %bb.w, label %bb.v

bb.ab:                                            ; preds = %_ZNSirsERd.exit.1, %_ZNSirsERd.exit, %bb.u
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

_ZNSt6vectorI3vecILi4EESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorI3vecILi4EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.critedge75

.loopexit330:                                     ; preds = %_ZNKSt6vectorI3vecILi4EESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit332 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp331:                            ; preds = %bb.x
  %lpad.loopexit.split-lp333 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit330, %.loopexit.split-lp331, %bb.ab
  %.pn56 = phi { ptr, i32 } [ %i.eg, %bb.ab ], [ %lpad.loopexit332, %.loopexit330 ], [ %lpad.loopexit.split-lp333, %.loopexit.split-lp331 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.bu

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i99:   ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  %spec.select.i.i97 = call noundef i64 @llvm.umin.i64(i64 %i.cv, i64 3) ; 2 uses
  %i.eh = load ptr, ptr %3, align 8, !tbaa !10    ; 3 uses
  %bcmp314 = call i32 @bcmp(ptr %i.eh, ptr nonnull @.str.1, i64 %spec.select.i.i97)
  %.not.i100 = icmp eq i32 %bcmp314, 0
  %.not58 = icmp ugt i64 %i.cv, 2                 ; 2 uses
  %or.cond317 = and i1 %.not58, %.not.i100
  br i1 %or.cond317, label %bb.ad, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i117

bb.ad:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i99
  %i.ei = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.ae unwind label %bb.aa

bb.ae:                                            ; preds = %bb.ad
  %i.ej = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.af unwind label %bb.aa     ; 0 uses

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.ek = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZNSirsERd.exit112 unwind label %bb.ag ; 0 uses

_ZNSirsERd.exit112:                               ; preds = %bb.af
  %i.el = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %spec.select.i.2.i.i.i)
          to label %_ZNSirsERd.exit112.1 unwind label %bb.ag ; 0 uses

_ZNSirsERd.exit112.1:                             ; preds = %_ZNSirsERd.exit112
  %i.em = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %spec.select.i.1.i.i.i)
          to label %_ZNSirsERd.exit112.2 unwind label %bb.ag ; 0 uses

_ZNSirsERd.exit112.2:                             ; preds = %_ZNSirsERd.exit112.1
  %i.en = load <2 x double>, ptr %spec.select.i.1.i.i.i, align 16, !tbaa !50, !noalias !62 ; 3 uses
  %i.eo = extractelement <2 x double> %i.en, i64 1 ; 2 uses
  %i.ep = call double @llvm.fmuladd.f64(double %i.eo, double %i.eo, double 0.000000e+00)
  %i.eq = extractelement <2 x double> %i.en, i64 0 ; 2 uses
  %i.er = call double @llvm.fmuladd.f64(double %i.eq, double %i.eq, double %i.ep)
  %i.es = load <2 x double>, ptr %7, align 16, !tbaa !50, !noalias !62 ; 3 uses
  %i.et = extractelement <2 x double> %i.es, i64 1 ; 2 uses
  %i.eu = call double @llvm.fmuladd.f64(double %i.et, double %i.et, double %i.er)
  %i.ev = extractelement <2 x double> %i.es, i64 0 ; 2 uses
  %i.ew = call noundef double @llvm.fmuladd.f64(double %i.ev, double %i.ev, double %i.eu)
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.ew)
  %i.ex = insertelement <2 x double> poison, double %sqrt.i.i, i64 0
  %i.ey = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ez = fdiv <2 x double> %i.en, %i.ey          ; 2 uses
  %i.fa = fdiv <2 x double> %i.es, %i.ey          ; 2 uses
  %i.fb = load ptr, ptr %i.au, align 8, !tbaa !51 ; 7 uses
  %i.fc = load ptr, ptr %i.av, align 8, !tbaa !61
  %.not.i.i = icmp eq ptr %i.fb, %i.fc
  br i1 %.not.i.i, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %_ZNSirsERd.exit112.1, %_ZNSirsERd.exit112, %bb.af
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ah:                                            ; preds = %_ZNSirsERd.exit112.2
  store <2 x double> %i.fa, ptr %i.fb, align 8, !tbaa !50
  %.sroa.10.0..sroa_idx289 = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store <2 x double> %i.ez, ptr %.sroa.10.0..sroa_idx289, align 8, !tbaa !50
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  store ptr %i.fe, ptr %i.au, align 8, !tbaa !51
  br label %_ZNSt6vectorI3vecILi4EESaIS1_EE9push_backEOS1_.exit

bb.ai:                                            ; preds = %_ZNSirsERd.exit112.2
  %i.ff = load ptr, ptr %i.e, align 8, !tbaa !54  ; 5 uses
  %i.fg = ptrtoint ptr %i.fb to i64
  %i.fh = ptrtoint ptr %i.ff to i64               ; 2 uses
  %i.fi = sub i64 %i.fg, %i.fh                    ; 3 uses
  %i.fj = icmp eq i64 %i.fi, 9223372036854775776
  br i1 %i.fj, label %bb.aj, label %_ZNKSt6vectorI3vecILi4EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc113.a unwind label %.loopexit.split-lp336

.noexc113.a:                                      ; preds = %bb.aj
  unreachable

_ZNKSt6vectorI3vecILi4EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ai
  %i.fk = ashr exact i64 %i.fi, 5                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fk, i64 1)
  %i.fl = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fk ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %i.fk
  %i.fn = call i64 @llvm.umin.i64(i64 %i.fl, i64 288230376151711743)
  %i.fo = select i1 %i.fm, i64 288230376151711743, i64 %i.fn ; 2 uses
  %i.fp = shl nuw nsw i64 %i.fo, 5
  %i.fq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fp) #21
          to label %.noexc114 unwind label %.loopexit335 ; 5 uses

.noexc114:                                        ; preds = %_ZNKSt6vectorI3vecILi4EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fi ; 2 uses
  store <2 x double> %i.fa, ptr %i.fr, align 8, !tbaa !50
  %.sroa.10.0..sroa_idx291 = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store <2 x double> %i.ez, ptr %.sroa.10.0..sroa_idx291, align 8, !tbaa !50
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ff, %i.fb
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc114, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ft, %.lr.ph.i.i.i.i.i.i ], [ %i.fq, %.noexc114 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i.i ], [ %i.ff, %.noexc114 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !49, !alias.scope !65
  %i.fs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fs, %i.fb
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !59

_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc114
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.fq, %.noexc114 ], [ %i.ft, %.lr.ph.i.i.i.i.i.i ]
  %i.fu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 32
  %.not.i23.i.i.i = icmp eq ptr %i.ff, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorI3vecILi4EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.fv = load ptr, ptr %i.av, align 8, !tbaa !61
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = sub i64 %i.fw, %i.fh
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.fx) #22
  br label %_ZNSt6vectorI3vecILi4EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorI3vecILi4EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.ak, %_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.fq, ptr %i.e, align 8, !tbaa !54
  store ptr %i.fu, ptr %i.au, align 8, !tbaa !51
  %i.fy = getelementptr inbounds nuw [32 x i8], ptr %i.fq, i64 %i.fo
  store ptr %i.fy, ptr %i.av, align 8, !tbaa !61
  br label %_ZNSt6vectorI3vecILi4EESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorI3vecILi4EESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorI3vecILi4EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %.critedge75

.loopexit335:                                     ; preds = %_ZNKSt6vectorI3vecILi4EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit337 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp336:                            ; preds = %bb.aj
  %lpad.loopexit.split-lp338 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit335, %.loopexit.split-lp336, %bb.ag
  %.pn60 = phi { ptr, i32 } [ %i.fd, %bb.ag ], [ %lpad.loopexit337, %.loopexit335 ], [ %lpad.loopexit.split-lp338, %.loopexit.split-lp336 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.bu

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i117:  ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i99
  %bcmp315 = call i32 @bcmp(ptr %i.eh, ptr nonnull @.str.2, i64 %spec.select.i.i97)
  %.not.i118 = icmp eq i32 %bcmp315, 0
  %or.cond318 = and i1 %.not58, %.not.i118
  br i1 %or.cond318, label %bb.am, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i143

bb.am:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i117
  %i.fz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.an unwind label %bb.aa

bb.an:                                            ; preds = %bb.am
  %i.ga = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.fz, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.ao unwind label %bb.aa     ; 0 uses

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.gb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZNSirsERd.exit140 unwind label %bb.at ; 0 uses

bb.ap:                                            ; preds = %_ZNSirsERd.exit140.1
  store double %i.gy, ptr %i.hb, align 8, !tbaa !50
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store double %i.ha, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !50
  %i.gc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store ptr %i.gc, ptr %i.bd, align 8, !tbaa !69
  br label %_ZNSt6vectorI3vecILi2EESaIS1_EE9push_backEOS1_.exit

bb.aq:                                            ; preds = %_ZNSirsERd.exit140.1
  %i.gd = load ptr, ptr %i.f, align 8, !tbaa !72  ; 5 uses
  %i.ge = ptrtoint ptr %i.hb to i64
  %i.gf = ptrtoint ptr %i.gd to i64               ; 2 uses
  %i.gg = sub i64 %i.ge, %i.gf                    ; 3 uses
  %i.gh = icmp eq i64 %i.gg, 9223372036854775792
  br i1 %i.gh, label %bb.ar, label %_ZNKSt6vectorI3vecILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc135 unwind label %.loopexit.split-lp344

.noexc135:                                        ; preds = %bb.ar
  unreachable

_ZNKSt6vectorI3vecILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aq
  %i.gi = ashr exact i64 %i.gg, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i126 = call i64 @llvm.umax.i64(i64 %i.gi, i64 1)
  %i.gj = add nsw i64 %.sroa.speculated.i.i.i.i126, %i.gi ; 2 uses
  %i.gk = icmp ult i64 %i.gj, %i.gi
  %i.gl = call i64 @llvm.umin.i64(i64 %i.gj, i64 576460752303423487)
  %i.gm = select i1 %i.gk, i64 576460752303423487, i64 %i.gl ; 2 uses
  %i.gn = shl nuw nsw i64 %i.gm, 4
  %i.go = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gn) #21
          to label %.noexc136 unwind label %.loopexit343 ; 5 uses

.noexc136:                                        ; preds = %_ZNKSt6vectorI3vecILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gg ; 2 uses
  store double %i.gy, ptr %i.gp, align 8, !tbaa !50
  %.sroa.6.0..sroa_idx276 = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store double %i.ha, ptr %.sroa.6.0..sroa_idx276, align 8, !tbaa !50
  %.not10.i.i.i.i.i.i128 = icmp eq ptr %i.gd, %i.hb
  br i1 %.not10.i.i.i.i.i.i128, label %_ZNSt6vectorI3vecILi2EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i129

.lr.ph.i.i.i.i.i.i129:                            ; preds = %.noexc136, %.lr.ph.i.i.i.i.i.i129
  %.012.i.i.i.i.i.i130 = phi ptr [ %i.gr, %.lr.ph.i.i.i.i.i.i129 ], [ %i.go, %.noexc136 ] ; 2 uses
  %.0911.i.i.i.i.i.i131 = phi ptr [ %i.gq, %.lr.ph.i.i.i.i.i.i129 ], [ %i.gd, %.noexc136 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i130, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i131, i64 16, i1 false), !tbaa.struct !73, !alias.scope !74
  %i.gq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i131, i64 16 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i130, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i132 = icmp eq ptr %i.gq, %i.hb
  br i1 %.not.i.i.i.i.i.i132, label %_ZNSt6vectorI3vecILi2EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i129, !llvm.loop !78

_ZNSt6vectorI3vecILi2EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i129, %.noexc136
  %.0.lcssa.i.i.i.i.i.i133 = phi ptr [ %i.go, %.noexc136 ], [ %i.gr, %.lr.ph.i.i.i.i.i.i129 ]
  %i.gs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i133, i64 16
  %.not.i23.i.i.i134 = icmp eq ptr %i.gd, null
  br i1 %.not.i23.i.i.i134, label %_ZNSt6vectorI3vecILi2EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorI3vecILi2EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.gt = load ptr, ptr %i.be, align 8, !tbaa !79
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = sub i64 %i.gu, %i.gf
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gv) #22
  br label %_ZNSt6vectorI3vecILi2EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorI3vecILi2EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.as, %_ZNSt6vectorI3vecILi2EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.go, ptr %i.f, align 8, !tbaa !72
  store ptr %i.gs, ptr %i.bd, align 8, !tbaa !69
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %i.go, i64 %i.gm
  store ptr %i.gw, ptr %i.be, align 8, !tbaa !79
  br label %_ZNSt6vectorI3vecILi2EESaIS1_EE9push_backEOS1_.exit

_ZNSirsERd.exit140:                               ; preds = %bb.ao
  %i.gx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.bc)
          to label %_ZNSirsERd.exit140.1 unwind label %bb.at ; 0 uses

_ZNSirsERd.exit140.1:                             ; preds = %_ZNSirsERd.exit140
  %i.gy = load double, ptr %8, align 8, !tbaa !80 ; 2 uses
  %i.gz = load double, ptr %i.bc, align 8, !tbaa !82
  %i.ha = fsub double 1.000000e+00, %i.gz         ; 2 uses
  %i.hb = load ptr, ptr %i.bd, align 8, !tbaa !69 ; 7 uses
  %i.hc = load ptr, ptr %i.be, align 8, !tbaa !79
  %.not.i.i125 = icmp eq ptr %i.hb, %i.hc
  br i1 %.not.i.i125, label %bb.aq, label %bb.ap

bb.at:                                            ; preds = %_ZNSirsERd.exit140, %bb.ao
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

_ZNSt6vectorI3vecILi2EESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorI3vecILi2EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %.critedge75

.loopexit343:                                     ; preds = %_ZNKSt6vectorI3vecILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit345 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp344:                            ; preds = %bb.ar
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.au:                                            ; preds = %.loopexit343, %.loopexit.split-lp344, %bb.at
  %.pn64 = phi { ptr, i32 } [ %i.hd, %bb.at ], [ %lpad.loopexit345, %.loopexit343 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp344 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.bu

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i143:  ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i117
  %bcmp316 = call i32 @bcmp(ptr %i.eh, ptr nonnull @.str.3, i64 %spec.select.i.i)
  %.not.i144 = icmp eq i32 %bcmp316, 0
  %.not66 = icmp ne i64 %i.cv, 1
  %or.cond319 = and i1 %.not66, %.not.i144
  br i1 %or.cond319, label %bb.av, label %.critedge75

bb.av:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.he = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit ; 0 uses

.preheader:                                       ; preds = %bb.av, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit176
  %.0 = phi i32 [ %i.ko, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit176 ], [ 0, %bb.av ] ; 2 uses
  %i.hf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.aw unwind label %.loopexit

bb.aw:                                            ; preds = %.preheader
  %i.hg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.hf, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.ax unwind label %.loopexit

bb.ax:                                            ; preds = %bb.aw
  %i.hh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %i.hg, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.ay unwind label %.loopexit

bb.ay:                                            ; preds = %bb.ax
  %i.hi = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.az unwind label %.loopexit

bb.az:                                            ; preds = %bb.ay
  %i.hj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %i.hi, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.ba unwind label %.loopexit ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !16
  %i.hl = getelementptr i8, ptr %i.hk, i64 -24
  %i.hm = load i64, ptr %i.hl, align 8
  %i.hn = getelementptr inbounds i8, ptr %i.hj, i64 %i.hm
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !18
  %i.hq = and i32 %i.hp, 5
  %.not.i151 = icmp eq i32 %i.hq, 0
  br i1 %.not.i151, label %bb.bb, label %bb.bo

bb.bb:                                            ; preds = %bb.ba
  %i.hr = load i32, ptr %i.b, align 4, !tbaa !83
  %i.hs = add nsw i32 %i.hr, -1                   ; 2 uses
  store i32 %i.hs, ptr %i.b, align 4, !tbaa !83
  %i.ht = load ptr, ptr %i.aw, align 8, !tbaa !84 ; 4 uses
  %i.hu = load ptr, ptr %i.ax, align 8, !tbaa !86
  %.not.i152 = icmp eq ptr %i.ht, %i.hu
  br i1 %.not.i152, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !83
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  store ptr %i.hv, ptr %i.aw, align 8, !tbaa !84
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.bd:                                            ; preds = %bb.bb
  %i.hw = load ptr, ptr %i.g, align 8, !tbaa !87  ; 4 uses
  %i.hx = ptrtoint ptr %i.ht to i64
  %i.hy = ptrtoint ptr %i.hw to i64               ; 2 uses
  %i.hz = sub i64 %i.hx, %i.hy                    ; 5 uses
  %i.ia = icmp eq i64 %i.hz, 9223372036854775804
  br i1 %i.ia, label %.invoke482, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bd
  %i.ib = ashr exact i64 %i.hz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i153 = call i64 @llvm.umax.i64(i64 %i.ib, i64 1)
  %i.ic = add nsw i64 %.sroa.speculated.i.i.i153, %i.ib ; 2 uses
  %i.id = icmp ult i64 %i.ic, %i.ib
  %i.ie = call i64 @llvm.umin.i64(i64 %i.ic, i64 2305843009213693951)
  %i.if = select i1 %i.id, i64 2305843009213693951, i64 %i.ie ; 2 uses
  %i.ig = shl nuw nsw i64 %i.if, 2
  %i.ih = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ig) #21
          to label %.noexc156 unwind label %.loopexit ; 4 uses

.noexc156:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ii = getelementptr inbounds i8, ptr %i.ih, i64 %i.hz ; 2 uses
  %i.ij = load i32, ptr %i.b, align 4, !tbaa !83
  store i32 %i.ij, ptr %i.ii, align 4, !tbaa !83
  %i.ik = icmp sgt i64 %i.hz, 0
  br i1 %i.ik, label %bb.be, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.be:                                            ; preds = %.noexc156
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ih, ptr align 4 %i.hw, i64 %i.hz, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.be, %.noexc156
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  %.not.i17.i.i = icmp eq ptr %i.hw, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.im = load ptr, ptr %i.ax, align 8, !tbaa !86
  %i.in = ptrtoint ptr %i.im to i64
  %i.io = sub i64 %i.in, %i.hy
  call void @_ZdlPvm(ptr noundef nonnull %i.hw, i64 noundef %i.io) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.bf, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ih, ptr %i.g, align 8, !tbaa !87
  store ptr %i.il, ptr %i.aw, align 8, !tbaa !84
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.if
  store ptr %i.ip, ptr %i.ax, align 8, !tbaa !86
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.bc
  %i.iq = load i32, ptr %i.c, align 4, !tbaa !83
  %i.ir = add nsw i32 %i.iq, -1                   ; 2 uses
  store i32 %i.ir, ptr %i.c, align 4, !tbaa !83
  %i.is = load ptr, ptr %i.ay, align 8, !tbaa !84 ; 4 uses
  %i.it = load ptr, ptr %i.az, align 8, !tbaa !86
  %.not.i157 = icmp eq ptr %i.is, %i.it
  br i1 %.not.i157, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store i32 %i.ir, ptr %i.is, align 4, !tbaa !83
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  store ptr %i.iu, ptr %i.ay, align 8, !tbaa !84
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit166

bb.bh:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.iv = load ptr, ptr %i.i, align 8, !tbaa !87  ; 4 uses
  %i.iw = ptrtoint ptr %i.is to i64
  %i.ix = ptrtoint ptr %i.iv to i64               ; 2 uses
  %i.iy = sub i64 %i.iw, %i.ix                    ; 5 uses
  %i.iz = icmp eq i64 %i.iy, 9223372036854775804
  br i1 %i.iz, label %.invoke482, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i158

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i158: ; preds = %bb.bh
  %i.ja = ashr exact i64 %i.iy, 2                 ; 3 uses
  %.sroa.speculated.i.i.i159 = call i64 @llvm.umax.i64(i64 %i.ja, i64 1)
  %i.jb = add nsw i64 %.sroa.speculated.i.i.i159, %i.ja ; 2 uses
  %i.jc = icmp ult i64 %i.jb, %i.ja
  %i.jd = call i64 @llvm.umin.i64(i64 %i.jb, i64 2305843009213693951)
  %i.je = select i1 %i.jc, i64 2305843009213693951, i64 %i.jd ; 2 uses
  %i.jf = shl nuw nsw i64 %i.je, 2
  %i.jg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jf) #21
          to label %.noexc165 unwind label %.loopexit ; 4 uses

.noexc165:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i158
  %i.jh = getelementptr inbounds i8, ptr %i.jg, i64 %i.iy ; 2 uses
  %i.ji = load i32, ptr %i.c, align 4, !tbaa !83
  store i32 %i.ji, ptr %i.jh, align 4, !tbaa !83
  %i.jj = icmp sgt i64 %i.iy, 0
  br i1 %i.jj, label %bb.bi, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i161

bb.bi:                                            ; preds = %.noexc165
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jg, ptr align 4 %i.iv, i64 %i.iy, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i161

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i161: ; preds = %bb.bi, %.noexc165
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %.not.i17.i.i162 = icmp eq ptr %i.iv, null
  br i1 %.not.i17.i.i162, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i163, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i161
  %i.jl = load ptr, ptr %i.az, align 8, !tbaa !86
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = sub i64 %i.jm, %i.ix
  call void @_ZdlPvm(ptr noundef nonnull %i.iv, i64 noundef %i.jn) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i163

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i163: ; preds = %bb.bj, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i161
  store ptr %i.jg, ptr %i.i, align 8, !tbaa !87
  store ptr %i.jk, ptr %i.ay, align 8, !tbaa !84
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.je
  store ptr %i.jo, ptr %i.az, align 8, !tbaa !86
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit166

_ZNSt6vectorIiSaIiEE9push_backERKi.exit166:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i163, %bb.bg
  %i.jp = load i32, ptr %i.d, align 4, !tbaa !83
  %i.jq = add nsw i32 %i.jp, -1                   ; 2 uses
  store i32 %i.jq, ptr %i.d, align 4, !tbaa !83
  %i.jr = load ptr, ptr %i.ba, align 8, !tbaa !84 ; 4 uses
  %i.js = load ptr, ptr %i.bb, align 8, !tbaa !86
  %.not.i167 = icmp eq ptr %i.jr, %i.js
  br i1 %.not.i167, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit166
  store i32 %i.jq, ptr %i.jr, align 4, !tbaa !83
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 4
  store ptr %i.jt, ptr %i.ba, align 8, !tbaa !84
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit176

bb.bl:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit166
  %i.ju = load ptr, ptr %i.h, align 8, !tbaa !87  ; 4 uses
  %i.jv = ptrtoint ptr %i.jr to i64
  %i.jw = ptrtoint ptr %i.ju to i64               ; 2 uses
  %i.jx = sub i64 %i.jv, %i.jw                    ; 5 uses
  %i.jy = icmp eq i64 %i.jx, 9223372036854775804
  br i1 %i.jy, label %.invoke482, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i168

.invoke482:                                       ; preds = %bb.bl, %bb.bh, %bb.bd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.cont483 unwind label %.loopexit.split-lp.loopexit.split-lp

.cont483:                                         ; preds = %.invoke482
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i168: ; preds = %bb.bl
  %i.jz = ashr exact i64 %i.jx, 2                 ; 3 uses
  %.sroa.speculated.i.i.i169 = call i64 @llvm.umax.i64(i64 %i.jz, i64 1)
  %i.ka = add nsw i64 %.sroa.speculated.i.i.i169, %i.jz ; 2 uses
  %i.kb = icmp ult i64 %i.ka, %i.jz
  %i.kc = call i64 @llvm.umin.i64(i64 %i.ka, i64 2305843009213693951)
  %i.kd = select i1 %i.kb, i64 2305843009213693951, i64 %i.kc ; 2 uses
  %i.ke = shl nuw nsw i64 %i.kd, 2
  %i.kf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ke) #21
          to label %.noexc175 unwind label %.loopexit ; 4 uses

.noexc175:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i168
  %i.kg = getelementptr inbounds i8, ptr %i.kf, i64 %i.jx ; 2 uses
  %i.kh = load i32, ptr %i.d, align 4, !tbaa !83
  store i32 %i.kh, ptr %i.kg, align 4, !tbaa !83
  %i.ki = icmp sgt i64 %i.jx, 0
  br i1 %i.ki, label %bb.bm, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i171

bb.bm:                                            ; preds = %.noexc175
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kf, ptr align 4 %i.ju, i64 %i.jx, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i171

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i171: ; preds = %bb.bm, %.noexc175
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %.not.i17.i.i172 = icmp eq ptr %i.ju, null
  br i1 %.not.i17.i.i172, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i173, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i171
  %i.kk = load ptr, ptr %i.bb, align 8, !tbaa !86
  %i.kl = ptrtoint ptr %i.kk to i64
  %i.km = sub i64 %i.kl, %i.jw
  call void @_ZdlPvm(ptr noundef nonnull %i.ju, i64 noundef %i.km) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i173

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i173: ; preds = %bb.bn, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i171
  store ptr %i.kf, ptr %i.h, align 8, !tbaa !87
  store ptr %i.kj, ptr %i.ba, align 8, !tbaa !84
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %i.kd
  store ptr %i.kn, ptr %i.bb, align 8, !tbaa !86
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit176

_ZNSt6vectorIiSaIiEE9push_backERKi.exit176:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i173, %bb.bk
  %i.ko = add nuw nsw i32 %.0, 1
  br label %.preheader, !llvm.loop !88

.loopexit:                                        ; preds = %.preheader, %bb.aw, %bb.ax, %bb.ay, %bb.az, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i158, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i168
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.av
  %lpad.loopexit340 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke482, %.noexc258, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i253, %.noexc256, %bb.bs, %bb.bq, %bb.bp
  %lpad.loopexit.split-lp341 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit340, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp341, %.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.bu

bb.bo:                                            ; preds = %bb.ba
  %.not67 = icmp eq i32 %.0, 3
  br i1 %.not67, label %.critedge, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.4, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.bp
  %i.kq = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !16
  %i.kr = getelementptr i8, ptr %i.kq, i64 -24
  %i.ks = load i64, ptr %i.kr, align 8
  %i.kt = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.ks
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 240
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !30 ; 6 uses
  %.not.i.i.i250 = icmp eq ptr %i.kv, null
  br i1 %.not.i.i.i250, label %bb.bq, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i251

bb.bq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt16__throw_bad_castv() #20
          to label %.noexc255 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc255:                                        ; preds = %bb.bq
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i251: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 56
  %i.kx = load i8, ptr %i.kw, align 8, !tbaa !38
  %.not.i1.i.i252 = icmp eq i8 %i.kx, 0
  br i1 %.not.i1.i.i252, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i251
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 67
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !29
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i253

bb.bs:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i251
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.kv)
          to label %.noexc256 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc256:                                        ; preds = %bb.bs
  %i.la = load ptr, ptr %i.kv, align 8, !tbaa !16
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 48
  %i.lc = load ptr, ptr %i.lb, align 8
  %i.ld = invoke noundef signext i8 %i.lc(ptr noundef nonnull align 8 dereferenceable(570) %i.kv, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i253 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !89

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i253: ; preds = %.noexc256, %bb.br
  %.0.i.i.i254 = phi i8 [ %i.kz, %bb.br ], [ %i.ld, %.noexc256 ]
  %i.le = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i254)
          to label %.noexc258 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc258:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i253
  %i.lf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.le)
          to label %bb.bt unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.critedge:                                        ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %.critedge75

.critedge75:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i143, %.critedge, %_ZNSt6vectorI3vecILi4EESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorI3vecILi2EESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorI3vecILi4EESaIS1_EE9push_backERKS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  store ptr %i.bf, ptr %4, align 8, !tbaa !16
  %i.lg = load i64, ptr %i.bh, align 8
  %i.lh = getelementptr inbounds i8, ptr %4, i64 %i.lg
  store ptr %i.bg, ptr %i.lh, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bi, align 8, !tbaa !16
  %i.li = load ptr, ptr %i.bj, align 8, !tbaa !10 ; 2 uses
  %i.lj = icmp eq ptr %i.li, %i.bk
  br i1 %i.lj, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.critedge75
  %i.lk = load i64, ptr %i.bk, align 8, !tbaa !29
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.ll) #22
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %.critedge75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bi, align 8, !tbaa !16
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bl) #19
  store ptr %i.bm, ptr %4, align 8, !tbaa !16
  %i.lm = load i64, ptr %i.bo, align 8
  %i.ln = getelementptr inbounds i8, ptr %4, i64 %i.lm
  store ptr %i.bn, ptr %i.ln, align 8, !tbaa !16
  store i64 0, ptr %i.bp, align 8, !tbaa !90
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bq) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.lo = load ptr, ptr %2, align 8, !tbaa !16
  %i.lp = getelementptr i8, ptr %i.lo, i64 -24
  %i.lq = load i64, ptr %i.lp, align 8            ; 2 uses
  %i.lr = getelementptr inbounds i8, ptr %2, i64 %i.lq
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 32
  %i.lt = load i32, ptr %i.ls, align 8, !tbaa !18
  %i.lu = and i32 %i.lt, 2
  %.not313 = icmp eq i32 %i.lu, 0
  br i1 %.not313, label %bb.i, label %._crit_edge

bb.bt:                                            ; preds = %.noexc258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  store ptr %i.bf, ptr %4, align 8, !tbaa !16
  %i.lv = load i64, ptr %i.bh, align 8
  %i.lw = getelementptr inbounds i8, ptr %4, i64 %i.lv
  store ptr %i.bg, ptr %i.lw, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bi, align 8, !tbaa !16
  %i.lx = load ptr, ptr %i.bj, align 8, !tbaa !10 ; 2 uses
  %i.ly = icmp eq ptr %i.lx, %i.bk
  br i1 %i.ly, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i179: ; preds = %bb.bt
  %i.lz = load i64, ptr %i.bk, align 8, !tbaa !29
  %i.ma = add i64 %i.lz, 1
  call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef %i.ma) #22
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit181

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit181: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i179
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bi, align 8, !tbaa !16
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bl) #19
  store ptr %i.bm, ptr %4, align 8, !tbaa !16
  %i.mb = load i64, ptr %i.bo, align 8
  %i.mc = getelementptr inbounds i8, ptr %4, i64 %i.mb
  store ptr %i.bn, ptr %i.mc, align 8, !tbaa !16
  store i64 0, ptr %i.bp, align 8, !tbaa !90
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bq) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220, !llvm.loop !92

bb.bu:                                            ; preds = %.loopexit.split-lp, %bb.au, %bb.al, %bb.ac, %bb.aa
  %.pn68 = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.eb, %bb.aa ], [ %.pn64, %bb.au ], [ %.pn60, %bb.al ], [ %.pn56, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %4) #19
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %.pn68.pn = phi { ptr, i32 } [ %.pn68, %bb.bu ], [ %.pn53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
end_hunk_0
