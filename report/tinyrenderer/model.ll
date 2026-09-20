Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinyrenderer/original/model?download=true
inline.NumInlined: 459
inline.NumDeleted: 223
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5ModelC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %spec.select.i.1.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %spec.select.i.2.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
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
  %i.bt = phi i64 [ %i.ak, %.lr.ph ], [ %i.lk, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ]
  %i.bu = getelementptr inbounds i8, ptr %2, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 240
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !37 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

.invoke:                                          ; preds = %bb.i, %bb.bx
  invoke void @_ZSt16__throw_bad_castv() #20
          to label %.cont unwind label %.loopexit.split-lp321

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !43
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
  %i.cb = load ptr, ptr %i.bw, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = invoke noundef signext i8 %i.cd(ptr noundef nonnull align 8 dereferenceable(570) %i.bw, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit320, !inline_history !60

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc80, %bb.j
  %.0.i.i.i = phi i8 [ %i.ca, %bb.j ], [ %i.ce, %.noexc80 ]
  %i.cf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %.0.i.i.i)
          to label %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit320 ; 0 uses

_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.cg = load ptr, ptr %3, align 8, !tbaa !16    ; 4 uses
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
  br i1 %i.cm, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !44

.noexc11.i:                                       ; preds = %bb.o
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc85 unwind label %.loopexit.split-lp326

.noexc85:                                         ; preds = %.noexc11.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.o
  %i.cn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #21
          to label %.noexc86 unwind label %.loopexit325 ; 2 uses

.noexc86:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.cn, ptr %5, align 8, !tbaa !16
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
  %i.cr = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
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
  %i.cx = load ptr, ptr %3, align 8, !tbaa !16
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
  store double 1.000000e+00, ptr %i.ar, align 8, !tbaa !78
  %i.cz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZNSirsERd.exit unwind label %bb.ab ; 0 uses

bb.v:                                             ; preds = %_ZNSirsERd.exit.2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ed, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !47
  %i.da = load ptr, ptr %i.as, align 8, !tbaa !50
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  store ptr %i.db, ptr %i.as, align 8, !tbaa !50
  br label %_ZNSt6vectorI3vecILi4EESaIS1_EE9push_backERKS1_.exit

bb.w:                                             ; preds = %_ZNSirsERd.exit.2
  %i.dc = load ptr, ptr %0, align 8, !tbaa !51    ; 5 uses
  %i.dd = ptrtoint ptr %i.ed to i64
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
  %12 = add nsw i64 %.sroa.speculated.i.i.i, %i.dh ; 2 uses
  %i.di = icmp ult i64 %12, %i.dh
  %i.dj = call i64 @llvm.umin.i64(i64 %12, i64 288230376151711743)
  %i.dk = select i1 %i.di, i64 288230376151711743, i64 %i.dj ; 3 uses
  %.not.i.i.i89 = icmp ne i64 %i.dk, 0
  call void @llvm.assume(i1 %.not.i.i.i89)
  %i.dl = shl nuw nsw i64 %i.dk, 5
  %i.dm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #21
          to label %.noexc91 unwind label %.loopexit330 ; 5 uses

.noexc91:                                         ; preds = %_ZNKSt6vectorI3vecILi4EESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.df
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dn, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !47
  %.not10.i.i.i.i.i = icmp eq ptr %i.dc, %i.ed
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc91, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i ], [ %i.dm, %.noexc91 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i ], [ %i.dc, %.noexc91 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !47, !alias.scope !79
  %i.do = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.do, %i.ed
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !64

_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc91
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dm, %.noexc91 ], [ %i.dp, %.lr.ph.i.i.i.i.i ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32
  %.not.i23.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI3vecILi4EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.dr = load ptr, ptr %i.at, align 8, !tbaa !80
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = sub i64 %i.ds, %i.de
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dt) #22
  br label %_ZNSt6vectorI3vecILi4EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI3vecILi4EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.dm, ptr %0, align 8, !tbaa !51
  store ptr %i.dq, ptr %i.as, align 8, !tbaa !50
  %i.du = getelementptr inbounds nuw [32 x i8], ptr %i.dm, i64 %i.dk
  store ptr %i.du, ptr %i.at, align 8, !tbaa !80
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
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dw = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.ap
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %bb.z
  %i.dy = load i64, ptr %i.ap, align 8, !tbaa !29
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %bb.z, %.loopexit325, %.loopexit.split-lp326, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  %.pn53 = phi { ptr, i32 } [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ], [ %lpad.loopexit.split-lp328, %.loopexit.split-lp326 ], [ %lpad.loopexit327, %.loopexit325 ], [ %i.dv, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.bv

bb.aa:                                            ; preds = %bb.an, %bb.am, %bb.ae, %bb.ad, %bb.t
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

_ZNSirsERd.exit:                                  ; preds = %bb.u
  %i.eb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.br)
          to label %_ZNSirsERd.exit.1 unwind label %bb.ab ; 0 uses

_ZNSirsERd.exit.1:                                ; preds = %_ZNSirsERd.exit
  %i.ec = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.bs)
          to label %_ZNSirsERd.exit.2 unwind label %bb.ab ; 0 uses

_ZNSirsERd.exit.2:                                ; preds = %_ZNSirsERd.exit.1
  %i.ed = load ptr, ptr %i.as, align 8, !tbaa !50 ; 5 uses
  %i.ee = load ptr, ptr %i.at, align 8, !tbaa !80
  %.not.i88 = icmp eq ptr %i.ed, %i.ee
  br i1 %.not.i88, label %bb.w, label %bb.v

bb.ab:                                            ; preds = %_ZNSirsERd.exit.1, %_ZNSirsERd.exit, %bb.u
  %i.ef = landingpad { ptr, i32 }
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
  %.pn56 = phi { ptr, i32 } [ %i.ef, %bb.ab ], [ %lpad.loopexit332, %.loopexit330 ], [ %lpad.loopexit.split-lp333, %.loopexit.split-lp331 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.bu

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i99:   ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  %spec.select.i.i97 = call noundef i64 @llvm.umin.i64(i64 %i.cv, i64 3) ; 2 uses
  %i.eg = load ptr, ptr %3, align 8, !tbaa !16    ; 3 uses
  %bcmp314 = call i32 @bcmp(ptr %i.eg, ptr nonnull @.str.1, i64 %spec.select.i.i97)
  %.not.i100 = icmp eq i32 %bcmp314, 0
  %.not58 = icmp ugt i64 %i.cv, 2                 ; 2 uses
  %or.cond317 = and i1 %.not58, %.not.i100
  br i1 %or.cond317, label %bb.ad, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i117

bb.ad:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i99
  %i.eh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.ae unwind label %bb.aa

bb.ae:                                            ; preds = %bb.ad
  %i.ei = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.af unwind label %bb.aa     ; 0 uses

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.ej = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZNSirsERd.exit112 unwind label %bb.ag ; 0 uses

_ZNSirsERd.exit112:                               ; preds = %bb.af
  %i.ek = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %spec.select.i.2.i.i.i)
          to label %_ZNSirsERd.exit112.1 unwind label %bb.ag ; 0 uses

_ZNSirsERd.exit112.1:                             ; preds = %_ZNSirsERd.exit112
  %i.el = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %spec.select.i.1.i.i.i)
          to label %_ZNSirsERd.exit112.2 unwind label %bb.ag ; 0 uses

_ZNSirsERd.exit112.2:                             ; preds = %_ZNSirsERd.exit112.1
  %i.em = load <2 x double>, ptr %spec.select.i.1.i.i.i, align 16, !tbaa !46, !noalias !81 ; 3 uses
  %i.en = extractelement <2 x double> %i.em, i64 1 ; 2 uses
  %i.eo = call double @llvm.fmuladd.f64(double %i.en, double %i.en, double 0.000000e+00)
  %i.ep = extractelement <2 x double> %i.em, i64 0 ; 2 uses
  %i.eq = call double @llvm.fmuladd.f64(double %i.ep, double %i.ep, double %i.eo)
  %i.er = load <2 x double>, ptr %7, align 16, !tbaa !46, !noalias !81 ; 3 uses
  %i.es = extractelement <2 x double> %i.er, i64 1 ; 2 uses
  %i.et = call double @llvm.fmuladd.f64(double %i.es, double %i.es, double %i.eq)
  %i.eu = extractelement <2 x double> %i.er, i64 0 ; 2 uses
  %i.ev = call noundef double @llvm.fmuladd.f64(double %i.eu, double %i.eu, double %i.et)
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.ev)
  %i.ew = insertelement <2 x double> poison, double %sqrt.i.i, i64 0
  %i.ex = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ey = fdiv <2 x double> %i.em, %i.ex          ; 2 uses
  %i.ez = fdiv <2 x double> %i.er, %i.ex          ; 2 uses
  %i.fa = load ptr, ptr %i.au, align 8, !tbaa !50 ; 7 uses
  %i.fb = load ptr, ptr %i.av, align 8, !tbaa !80
  %.not.i.i = icmp eq ptr %i.fa, %i.fb
  br i1 %.not.i.i, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %_ZNSirsERd.exit112.1, %_ZNSirsERd.exit112, %bb.af
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ah:                                            ; preds = %_ZNSirsERd.exit112.2
  store <2 x double> %i.ez, ptr %i.fa, align 8, !tbaa !46
  %.sroa.10.0..sroa_idx289 = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store <2 x double> %i.ey, ptr %.sroa.10.0..sroa_idx289, align 8, !tbaa !46
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  store ptr %i.fd, ptr %i.au, align 8, !tbaa !50
  br label %_ZNSt6vectorI3vecILi4EESaIS1_EE9push_backEOS1_.exit

bb.ai:                                            ; preds = %_ZNSirsERd.exit112.2
  %i.fe = load ptr, ptr %i.e, align 8, !tbaa !51  ; 5 uses
  %i.ff = ptrtoint ptr %i.fa to i64
  %i.fg = ptrtoint ptr %i.fe to i64               ; 2 uses
  %i.fh = sub i64 %i.ff, %i.fg                    ; 3 uses
  %i.fi = icmp eq i64 %i.fh, 9223372036854775776
  br i1 %i.fi, label %bb.aj, label %_ZNKSt6vectorI3vecILi4EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc113.a unwind label %.loopexit.split-lp336

.noexc113.a:                                      ; preds = %bb.aj
  unreachable

_ZNKSt6vectorI3vecILi4EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ai
  %i.fj = ashr exact i64 %i.fh, 5                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fj, i64 1)
  %13 = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fj ; 2 uses
  %i.fk = icmp ult i64 %13, %i.fj
  %i.fl = call i64 @llvm.umin.i64(i64 %13, i64 288230376151711743)
  %i.fm = select i1 %i.fk, i64 288230376151711743, i64 %i.fl ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.fm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.fn = shl nuw nsw i64 %i.fm, 5
  %i.fo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fn) #21
          to label %.noexc114 unwind label %.loopexit335 ; 5 uses

.noexc114:                                        ; preds = %_ZNKSt6vectorI3vecILi4EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fh ; 2 uses
  store <2 x double> %i.ez, ptr %i.fp, align 8, !tbaa !46
  %.sroa.10.0..sroa_idx291 = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store <2 x double> %i.ey, ptr %.sroa.10.0..sroa_idx291, align 8, !tbaa !46
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.fe, %i.fa
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc114, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.fr, %.lr.ph.i.i.i.i.i.i ], [ %i.fo, %.noexc114 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i.i ], [ %i.fe, %.noexc114 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !47, !alias.scope !82
  %i.fq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fq, %i.fa
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !64

_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc114
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.fo, %.noexc114 ], [ %i.fr, %.lr.ph.i.i.i.i.i.i ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 32
  %.not.i23.i.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorI3vecILi4EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.ft = load ptr, ptr %i.av, align 8, !tbaa !80
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = sub i64 %i.fu, %i.fg
  call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef %i.fv) #22
  br label %_ZNSt6vectorI3vecILi4EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorI3vecILi4EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.ak, %_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.fo, ptr %i.e, align 8, !tbaa !51
  store ptr %i.fs, ptr %i.au, align 8, !tbaa !50
  %i.fw = getelementptr inbounds nuw [32 x i8], ptr %i.fo, i64 %i.fm
  store ptr %i.fw, ptr %i.av, align 8, !tbaa !80
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
  %.pn60 = phi { ptr, i32 } [ %i.fc, %bb.ag ], [ %lpad.loopexit337, %.loopexit335 ], [ %lpad.loopexit.split-lp338, %.loopexit.split-lp336 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.bu

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i117:  ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i99
  %bcmp315 = call i32 @bcmp(ptr %i.eg, ptr nonnull @.str.2, i64 %spec.select.i.i97)
  %.not.i118 = icmp eq i32 %bcmp315, 0
  %or.cond318 = and i1 %.not58, %.not.i118
  br i1 %or.cond318, label %bb.am, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i143

bb.am:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i117
  %i.fx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.an unwind label %bb.aa

bb.an:                                            ; preds = %bb.am
  %i.fy = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.ao unwind label %bb.aa     ; 0 uses

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.fz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZNSirsERd.exit140 unwind label %bb.at ; 0 uses

bb.ap:                                            ; preds = %_ZNSirsERd.exit140.1
  store double %i.gv, ptr %i.gy, align 8, !tbaa !46
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store double %i.gx, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !46
  %i.ga = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  store ptr %i.ga, ptr %i.bd, align 8, !tbaa !83
  br label %_ZNSt6vectorI3vecILi2EESaIS1_EE9push_backEOS1_.exit

bb.aq:                                            ; preds = %_ZNSirsERd.exit140.1
  %i.gb = load ptr, ptr %i.f, align 8, !tbaa !55  ; 5 uses
  %i.gc = ptrtoint ptr %i.gy to i64
  %i.gd = ptrtoint ptr %i.gb to i64               ; 2 uses
  %i.ge = sub i64 %i.gc, %i.gd                    ; 3 uses
  %i.gf = icmp eq i64 %i.ge, 9223372036854775792
  br i1 %i.gf, label %bb.ar, label %_ZNKSt6vectorI3vecILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc135 unwind label %.loopexit.split-lp344

.noexc135:                                        ; preds = %bb.ar
  unreachable

_ZNKSt6vectorI3vecILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aq
  %i.gg = ashr exact i64 %i.ge, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i126 = call i64 @llvm.umax.i64(i64 %i.gg, i64 1)
  %14 = add nsw i64 %.sroa.speculated.i.i.i.i126, %i.gg ; 2 uses
  %i.gh = icmp ult i64 %14, %i.gg
  %i.gi = call i64 @llvm.umin.i64(i64 %14, i64 576460752303423487)
  %i.gj = select i1 %i.gh, i64 576460752303423487, i64 %i.gi ; 3 uses
  %.not.i.i.i.i127 = icmp ne i64 %i.gj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i127)
  %i.gk = shl nuw nsw i64 %i.gj, 4
  %i.gl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gk) #21
          to label %.noexc136 unwind label %.loopexit343 ; 5 uses

.noexc136:                                        ; preds = %_ZNKSt6vectorI3vecILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.ge ; 2 uses
  store double %i.gv, ptr %i.gm, align 8, !tbaa !46
  %.sroa.6.0..sroa_idx276 = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store double %i.gx, ptr %.sroa.6.0..sroa_idx276, align 8, !tbaa !46
  %.not10.i.i.i.i.i.i128 = icmp eq ptr %i.gb, %i.gy
  br i1 %.not10.i.i.i.i.i.i128, label %_ZNSt6vectorI3vecILi2EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i129

.lr.ph.i.i.i.i.i.i129:                            ; preds = %.noexc136, %.lr.ph.i.i.i.i.i.i129
  %.012.i.i.i.i.i.i130 = phi ptr [ %i.go, %.lr.ph.i.i.i.i.i.i129 ], [ %i.gl, %.noexc136 ] ; 2 uses
  %.0911.i.i.i.i.i.i131 = phi ptr [ %i.gn, %.lr.ph.i.i.i.i.i.i129 ], [ %i.gb, %.noexc136 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i130, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i131, i64 16, i1 false), !tbaa.struct !84, !alias.scope !85
  %i.gn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i131, i64 16 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i130, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i132 = icmp eq ptr %i.gn, %i.gy
  br i1 %.not.i.i.i.i.i.i132, label %_ZNSt6vectorI3vecILi2EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i129, !llvm.loop !73

_ZNSt6vectorI3vecILi2EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i129, %.noexc136
  %.0.lcssa.i.i.i.i.i.i133 = phi ptr [ %i.gl, %.noexc136 ], [ %i.go, %.lr.ph.i.i.i.i.i.i129 ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i133, i64 16
  %.not.i23.i.i.i134 = icmp eq ptr %i.gb, null
  br i1 %.not.i23.i.i.i134, label %_ZNSt6vectorI3vecILi2EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorI3vecILi2EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.gq = load ptr, ptr %i.be, align 8, !tbaa !86
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = sub i64 %i.gr, %i.gd
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.gs) #22
  br label %_ZNSt6vectorI3vecILi2EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorI3vecILi2EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.as, %_ZNSt6vectorI3vecILi2EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.gl, ptr %i.f, align 8, !tbaa !55
  store ptr %i.gp, ptr %i.bd, align 8, !tbaa !83
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %i.gl, i64 %i.gj
  store ptr %i.gt, ptr %i.be, align 8, !tbaa !86
  br label %_ZNSt6vectorI3vecILi2EESaIS1_EE9push_backEOS1_.exit

_ZNSirsERd.exit140:                               ; preds = %bb.ao
  %i.gu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.bc)
          to label %_ZNSirsERd.exit140.1 unwind label %bb.at ; 0 uses

_ZNSirsERd.exit140.1:                             ; preds = %_ZNSirsERd.exit140
  %i.gv = load double, ptr %8, align 8, !tbaa !88 ; 2 uses
  %i.gw = load double, ptr %i.bc, align 8, !tbaa !89
  %i.gx = fsub double 1.000000e+00, %i.gw         ; 2 uses
  %i.gy = load ptr, ptr %i.bd, align 8, !tbaa !83 ; 7 uses
  %i.gz = load ptr, ptr %i.be, align 8, !tbaa !86
  %.not.i.i125 = icmp eq ptr %i.gy, %i.gz
  br i1 %.not.i.i125, label %bb.aq, label %bb.ap

bb.at:                                            ; preds = %_ZNSirsERd.exit140, %bb.ao
  %i.ha = landingpad { ptr, i32 }
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
  %.pn64 = phi { ptr, i32 } [ %i.ha, %bb.at ], [ %lpad.loopexit345, %.loopexit343 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp344 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.bu

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i143:  ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i117
  %bcmp316 = call i32 @bcmp(ptr %i.eg, ptr nonnull @.str.3, i64 %spec.select.i.i)
  %.not.i144 = icmp eq i32 %bcmp316, 0
  %.not66 = icmp ne i64 %i.cv, 1
  %or.cond319 = and i1 %.not66, %.not.i144
  br i1 %or.cond319, label %bb.av, label %.critedge75

bb.av:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.hb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit ; 0 uses

.preheader:                                       ; preds = %bb.av, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit176
  %.0 = phi i32 [ %i.ki, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit176 ], [ 0, %bb.av ] ; 2 uses
  %i.hc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.aw unwind label %.loopexit

bb.aw:                                            ; preds = %.preheader
  %i.hd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.hc, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.ax unwind label %.loopexit

bb.ax:                                            ; preds = %bb.aw
  %i.he = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %i.hd, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.ay unwind label %.loopexit

bb.ay:                                            ; preds = %bb.ax
  %i.hf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.he, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.az unwind label %.loopexit

bb.az:                                            ; preds = %bb.ay
  %i.hg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %i.hf, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.ba unwind label %.loopexit ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !18
  %i.hi = getelementptr i8, ptr %i.hh, i64 -24
  %i.hj = load i64, ptr %i.hi, align 8
  %i.hk = getelementptr inbounds i8, ptr %i.hg, i64 %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 32
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !76
  %i.hn = and i32 %i.hm, 5
  %.not.i151 = icmp eq i32 %i.hn, 0
  br i1 %.not.i151, label %bb.bb, label %bb.bo

bb.bb:                                            ; preds = %bb.ba
  %i.ho = load i32, ptr %i.b, align 4, !tbaa !56
  %i.hp = add nsw i32 %i.ho, -1                   ; 2 uses
  store i32 %i.hp, ptr %i.b, align 4, !tbaa !56
  %i.hq = load ptr, ptr %i.aw, align 8, !tbaa !58 ; 4 uses
  %i.hr = load ptr, ptr %i.ax, align 8, !tbaa !90
  %.not.i152 = icmp eq ptr %i.hq, %i.hr
  br i1 %.not.i152, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store i32 %i.hp, ptr %i.hq, align 4, !tbaa !56
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  store ptr %i.hs, ptr %i.aw, align 8, !tbaa !58
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.bd:                                            ; preds = %bb.bb
  %i.ht = load ptr, ptr %i.g, align 8, !tbaa !59  ; 4 uses
  %i.hu = ptrtoint ptr %i.hq to i64
  %i.hv = ptrtoint ptr %i.ht to i64               ; 2 uses
  %i.hw = sub i64 %i.hu, %i.hv                    ; 5 uses
  %i.hx = icmp eq i64 %i.hw, 9223372036854775804
  br i1 %i.hx, label %.invoke482, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bd
  %i.hy = ashr exact i64 %i.hw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i153 = call i64 @llvm.umax.i64(i64 %i.hy, i64 1)
  %15 = add nsw i64 %.sroa.speculated.i.i.i153, %i.hy ; 2 uses
  %i.hz = icmp ult i64 %15, %i.hy
  %i.ia = call i64 @llvm.umin.i64(i64 %15, i64 2305843009213693951)
  %i.ib = select i1 %i.hz, i64 2305843009213693951, i64 %i.ia ; 3 uses
  %.not.i.i.i154 = icmp ne i64 %i.ib, 0
  call void @llvm.assume(i1 %.not.i.i.i154)
  %i.ic = shl nuw nsw i64 %i.ib, 2
  %i.id = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ic) #21
          to label %.noexc156 unwind label %.loopexit ; 4 uses

.noexc156:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ie = getelementptr inbounds i8, ptr %i.id, i64 %i.hw ; 2 uses
  %i.if = load i32, ptr %i.b, align 4, !tbaa !56
  store i32 %i.if, ptr %i.ie, align 4, !tbaa !56
  %i.ig = icmp sgt i64 %i.hw, 0
  br i1 %i.ig, label %bb.be, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.be:                                            ; preds = %.noexc156
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.id, ptr align 4 %i.ht, i64 %i.hw, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.be, %.noexc156
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ht, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.ii = load ptr, ptr %i.ax, align 8, !tbaa !90
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = sub i64 %i.ij, %i.hv
  call void @_ZdlPvm(ptr noundef nonnull %i.ht, i64 noundef %i.ik) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.bf, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.id, ptr %i.g, align 8, !tbaa !59
  store ptr %i.ih, ptr %i.aw, align 8, !tbaa !58
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.ib
  store ptr %i.il, ptr %i.ax, align 8, !tbaa !90
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.bc
  %i.im = load i32, ptr %i.c, align 4, !tbaa !56
  %i.in = add nsw i32 %i.im, -1                   ; 2 uses
  store i32 %i.in, ptr %i.c, align 4, !tbaa !56
  %i.io = load ptr, ptr %i.ay, align 8, !tbaa !58 ; 4 uses
  %i.ip = load ptr, ptr %i.az, align 8, !tbaa !90
  %.not.i157 = icmp eq ptr %i.io, %i.ip
  br i1 %.not.i157, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store i32 %i.in, ptr %i.io, align 4, !tbaa !56
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  store ptr %i.iq, ptr %i.ay, align 8, !tbaa !58
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit166

bb.bh:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ir = load ptr, ptr %i.i, align 8, !tbaa !59  ; 4 uses
  %i.is = ptrtoint ptr %i.io to i64
  %i.it = ptrtoint ptr %i.ir to i64               ; 2 uses
  %i.iu = sub i64 %i.is, %i.it                    ; 5 uses
  %i.iv = icmp eq i64 %i.iu, 9223372036854775804
  br i1 %i.iv, label %.invoke482, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i158

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i158: ; preds = %bb.bh
  %i.iw = ashr exact i64 %i.iu, 2                 ; 3 uses
  %.sroa.speculated.i.i.i159 = call i64 @llvm.umax.i64(i64 %i.iw, i64 1)
  %16 = add nsw i64 %.sroa.speculated.i.i.i159, %i.iw ; 2 uses
  %i.ix = icmp ult i64 %16, %i.iw
  %i.iy = call i64 @llvm.umin.i64(i64 %16, i64 2305843009213693951)
  %i.iz = select i1 %i.ix, i64 2305843009213693951, i64 %i.iy ; 3 uses
  %.not.i.i.i160 = icmp ne i64 %i.iz, 0
  call void @llvm.assume(i1 %.not.i.i.i160)
  %i.ja = shl nuw nsw i64 %i.iz, 2
  %i.jb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ja) #21
          to label %.noexc165 unwind label %.loopexit ; 4 uses

.noexc165:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i158
  %i.jc = getelementptr inbounds i8, ptr %i.jb, i64 %i.iu ; 2 uses
  %i.jd = load i32, ptr %i.c, align 4, !tbaa !56
  store i32 %i.jd, ptr %i.jc, align 4, !tbaa !56
  %i.je = icmp sgt i64 %i.iu, 0
  br i1 %i.je, label %bb.bi, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i161

bb.bi:                                            ; preds = %.noexc165
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jb, ptr align 4 %i.ir, i64 %i.iu, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i161

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i161: ; preds = %bb.bi, %.noexc165
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  %.not.i17.i.i162 = icmp eq ptr %i.ir, null
  br i1 %.not.i17.i.i162, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i163, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i161
  %i.jg = load ptr, ptr %i.az, align 8, !tbaa !90
  %i.jh = ptrtoint ptr %i.jg to i64
  %i.ji = sub i64 %i.jh, %i.it
  call void @_ZdlPvm(ptr noundef nonnull %i.ir, i64 noundef %i.ji) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i163

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i163: ; preds = %bb.bj, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i161
  store ptr %i.jb, ptr %i.i, align 8, !tbaa !59
  store ptr %i.jf, ptr %i.ay, align 8, !tbaa !58
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.iz
  store ptr %i.jj, ptr %i.az, align 8, !tbaa !90
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit166

_ZNSt6vectorIiSaIiEE9push_backERKi.exit166:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i163, %bb.bg
  %i.jk = load i32, ptr %i.d, align 4, !tbaa !56
  %i.jl = add nsw i32 %i.jk, -1                   ; 2 uses
  store i32 %i.jl, ptr %i.d, align 4, !tbaa !56
  %i.jm = load ptr, ptr %i.ba, align 8, !tbaa !58 ; 4 uses
  %i.jn = load ptr, ptr %i.bb, align 8, !tbaa !90
  %.not.i167 = icmp eq ptr %i.jm, %i.jn
  br i1 %.not.i167, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit166
  store i32 %i.jl, ptr %i.jm, align 4, !tbaa !56
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  store ptr %i.jo, ptr %i.ba, align 8, !tbaa !58
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit176

bb.bl:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit166
  %i.jp = load ptr, ptr %i.h, align 8, !tbaa !59  ; 4 uses
  %i.jq = ptrtoint ptr %i.jm to i64
  %i.jr = ptrtoint ptr %i.jp to i64               ; 2 uses
  %i.js = sub i64 %i.jq, %i.jr                    ; 5 uses
  %i.jt = icmp eq i64 %i.js, 9223372036854775804
  br i1 %i.jt, label %.invoke482, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i168

.invoke482:                                       ; preds = %bb.bl, %bb.bh, %bb.bd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.cont483 unwind label %.loopexit.split-lp.loopexit.split-lp

.cont483:                                         ; preds = %.invoke482
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i168: ; preds = %bb.bl
  %i.ju = ashr exact i64 %i.js, 2                 ; 3 uses
  %.sroa.speculated.i.i.i169 = call i64 @llvm.umax.i64(i64 %i.ju, i64 1)
  %17 = add nsw i64 %.sroa.speculated.i.i.i169, %i.ju ; 2 uses
  %i.jv = icmp ult i64 %17, %i.ju
  %i.jw = call i64 @llvm.umin.i64(i64 %17, i64 2305843009213693951)
  %i.jx = select i1 %i.jv, i64 2305843009213693951, i64 %i.jw ; 3 uses
  %.not.i.i.i170 = icmp ne i64 %i.jx, 0
  call void @llvm.assume(i1 %.not.i.i.i170)
  %i.jy = shl nuw nsw i64 %i.jx, 2
  %i.jz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jy) #21
          to label %.noexc175 unwind label %.loopexit ; 4 uses

.noexc175:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i168
  %i.ka = getelementptr inbounds i8, ptr %i.jz, i64 %i.js ; 2 uses
  %i.kb = load i32, ptr %i.d, align 4, !tbaa !56
  store i32 %i.kb, ptr %i.ka, align 4, !tbaa !56
  %i.kc = icmp sgt i64 %i.js, 0
  br i1 %i.kc, label %bb.bm, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i171

bb.bm:                                            ; preds = %.noexc175
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jz, ptr align 4 %i.jp, i64 %i.js, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i171

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i171: ; preds = %bb.bm, %.noexc175
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 4
  %.not.i17.i.i172 = icmp eq ptr %i.jp, null
  br i1 %.not.i17.i.i172, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i173, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i171
  %i.ke = load ptr, ptr %i.bb, align 8, !tbaa !90
  %i.kf = ptrtoint ptr %i.ke to i64
  %i.kg = sub i64 %i.kf, %i.jr
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.kg) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i173

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i173: ; preds = %bb.bn, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i171
  store ptr %i.jz, ptr %i.h, align 8, !tbaa !59
  store ptr %i.kd, ptr %i.ba, align 8, !tbaa !58
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.jx
  store ptr %i.kh, ptr %i.bb, align 8, !tbaa !90
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit176

_ZNSt6vectorIiSaIiEE9push_backERKi.exit176:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i173, %bb.bk
  %i.ki = add nuw nsw i32 %.0, 1
  br label %.preheader, !llvm.loop !74

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
  %i.kj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.4, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.bp
  %i.kk = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !18
  %i.kl = getelementptr i8, ptr %i.kk, i64 -24
  %i.km = load i64, ptr %i.kl, align 8
  %i.kn = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.km
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 240
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !37 ; 6 uses
  %.not.i.i.i250 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i.i250, label %bb.bq, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i251

bb.bq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt16__throw_bad_castv() #20
          to label %.noexc255 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc255:                                        ; preds = %bb.bq
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i251: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 56
  %i.kr = load i8, ptr %i.kq, align 8, !tbaa !43
  %.not.i1.i.i252 = icmp eq i8 %i.kr, 0
  br i1 %.not.i1.i.i252, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i251
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 67
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !29
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i253

bb.bs:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i251
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.kp)
          to label %.noexc256 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc256:                                        ; preds = %bb.bs
  %i.ku = load ptr, ptr %i.kp, align 8, !tbaa !18
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 48
  %i.kw = load ptr, ptr %i.kv, align 8
  %i.kx = invoke noundef signext i8 %i.kw(ptr noundef nonnull align 8 dereferenceable(570) %i.kp, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i253 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !0

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i253: ; preds = %.noexc256, %bb.br
  %.0.i.i.i254 = phi i8 [ %i.kt, %bb.br ], [ %i.kx, %.noexc256 ]
  %i.ky = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i254)
          to label %.noexc258 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc258:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i253
  %i.kz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ky)
          to label %bb.bt unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.critedge:                                        ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %.critedge75

.critedge75:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i143, %.critedge, %_ZNSt6vectorI3vecILi4EESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorI3vecILi2EESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorI3vecILi4EESaIS1_EE9push_backERKS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  store ptr %i.bf, ptr %4, align 8, !tbaa !18
  %i.la = load i64, ptr %i.bh, align 8
  %i.lb = getelementptr inbounds i8, ptr %4, i64 %i.la
  store ptr %i.bg, ptr %i.lb, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bi, align 8, !tbaa !18
  %i.lc = load ptr, ptr %i.bj, align 8, !tbaa !16 ; 2 uses
  %i.ld = icmp eq ptr %i.lc, %i.bk
  br i1 %i.ld, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.critedge75
  %i.le = load i64, ptr %i.bk, align 8, !tbaa !29
  %i.lf = add i64 %i.le, 1
  call void @_ZdlPvm(ptr noundef %i.lc, i64 noundef %i.lf) #22
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %.critedge75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bi, align 8, !tbaa !18
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bl) #19
  store ptr %i.bm, ptr %4, align 8, !tbaa !18
  %i.lg = load i64, ptr %i.bo, align 8
  %i.lh = getelementptr inbounds i8, ptr %4, i64 %i.lg
  store ptr %i.bn, ptr %i.lh, align 8, !tbaa !18
  store i64 0, ptr %i.bp, align 8, !tbaa !92
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bq) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.li = load ptr, ptr %2, align 8, !tbaa !18
  %i.lj = getelementptr i8, ptr %i.li, i64 -24
  %i.lk = load i64, ptr %i.lj, align 8            ; 2 uses
  %i.ll = getelementptr inbounds i8, ptr %2, i64 %i.lk
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !76
  %i.lo = and i32 %i.ln, 2
  %.not313 = icmp eq i32 %i.lo, 0
  br i1 %.not313, label %bb.i, label %._crit_edge

bb.bt:                                            ; preds = %.noexc258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  store ptr %i.bf, ptr %4, align 8, !tbaa !18
  %i.lp = load i64, ptr %i.bh, align 8
  %i.lq = getelementptr inbounds i8, ptr %4, i64 %i.lp
  store ptr %i.bg, ptr %i.lq, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bi, align 8, !tbaa !18
  %i.lr = load ptr, ptr %i.bj, align 8, !tbaa !16 ; 2 uses
  %i.ls = icmp eq ptr %i.lr, %i.bk
  br i1 %i.ls, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i179: ; preds = %bb.bt
  %i.lt = load i64, ptr %i.bk, align 8, !tbaa !29
  %i.lu = add i64 %i.lt, 1
  call void @_ZdlPvm(ptr noundef %i.lr, i64 noundef %i.lu) #22
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit181

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit181: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i179
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bi, align 8, !tbaa !18
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bl) #19
  store ptr %i.bm, ptr %4, align 8, !tbaa !18
  %i.lv = load i64, ptr %i.bo, align 8
  %i.lw = getelementptr inbounds i8, ptr %4, i64 %i.lv
  store ptr %i.bn, ptr %i.lw, align 8, !tbaa !18
  store i64 0, ptr %i.bp, align 8, !tbaa !92
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bq) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220, !llvm.loop !75

bb.bu:                                            ; preds = %.loopexit.split-lp, %bb.au, %bb.al, %bb.ac, %bb.aa
  %.pn68 = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.ea, %bb.aa ], [ %.pn64, %bb.au ], [ %.pn60, %bb.al ], [ %.pn56, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %4) #19
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %.pn68.pn = phi { ptr, i32 } [ %.pn68, %bb.bu ], [ %.pn53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
end_hunk_0
