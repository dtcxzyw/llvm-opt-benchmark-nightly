inline.NumInlined: 1359
inline.NumDeleted: 494
begin_hunk_0_@_ZN5boost15program_options6detail7cmdline3runEv:bb.a
  %i.lr = load ptr, ptr %i.kp, align 8, !tbaa !52
  %i.ls = load i32, ptr %i.r, align 8, !tbaa !20  ; 3 uses
  %i.lt = and i32 %i.ls, 512
  %i.lu = icmp ne i32 %i.lt, 0
  %i.lv = and i32 %i.ls, 1024
  %i.lw = icmp ne i32 %i.lv, 0
  %i.lx = and i32 %i.ls, 2048
  %i.ly = icmp ne i32 %i.lx, 0
  %i.lz = invoke noundef ptr @_ZNK5boost15program_options19options_description12find_nothrowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbbb(ptr noundef nonnull align 8 dereferenceable(128) %i.lr, ptr noundef nonnull align 8 dereferenceable(32) %i.lq, i1 noundef zeroext %i.lu, i1 noundef zeroext %i.lw, i1 noundef zeroext %i.ly)
          to label %bb.bu unwind label %bb.bv     ; 3 uses

bb.bu:                                            ; preds = %bb.bt
  %.not166 = icmp eq ptr %i.lz, null
  br i1 %.not166, label %.critedge, label %bb.cc

bb.bv:                                            ; preds = %bb.bt
  %i.ma = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE ; 3 uses
  %i.mb = extractvalue { ptr, i32 } %i.ma, 1
  %i.mc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost15program_options22error_with_option_nameE) #26
  %i.md = icmp eq i32 %i.mb, %i.mc
  br i1 %i.md, label %bb.bw, label %bb.em

bb.bw:                                            ; preds = %bb.bv
  %i.me = extractvalue { ptr, i32 } %i.ma, 0
  %i.mf = call ptr @__cxa_begin_catch(ptr %i.me) #26
  %i.mg = getelementptr inbounds i8, ptr %i.ll, i64 -32
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !41
  %i.mi = load i32, ptr %i.r, align 8, !tbaa !20  ; 4 uses
  %i.mj = and i32 %i.mi, 1
  %.not.i264 = icmp eq i32 %i.mj, 0
  br i1 %.not.i264, label %bb.bx, label %_ZN5boost15program_options6detail7cmdline27get_canonical_option_prefixEv.exit

bb.bx:                                            ; preds = %bb.bw
  %i.mk = and i32 %i.mi, 4096
  %.not1.i = icmp eq i32 %i.mk, 0
  br i1 %.not1.i, label %bb.by, label %_ZN5boost15program_options6detail7cmdline27get_canonical_option_prefixEv.exit

bb.by:                                            ; preds = %bb.bx
  %i.ml = and i32 %i.mi, 6
  %or.cond.not.i = icmp eq i32 %i.ml, 6
  br i1 %or.cond.not.i, label %_ZN5boost15program_options6detail7cmdline27get_canonical_option_prefixEv.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.mm = and i32 %i.mi, 10
  %or.cond6.not.i = icmp eq i32 %i.mm, 10
  %spec.select.i = select i1 %or.cond6.not.i, i32 8, i32 0
  br label %_ZN5boost15program_options6detail7cmdline27get_canonical_option_prefixEv.exit

_ZN5boost15program_options6detail7cmdline27get_canonical_option_prefixEv.exit: ; preds = %bb.bw, %bb.bx, %bb.by, %bb.bz
  %.0.i = phi i32 [ %spec.select.i, %bb.bz ], [ 1, %bb.bw ], [ 4096, %bb.bx ], [ 4, %bb.by ]
  invoke void @_ZN5boost15program_options22error_with_option_name11add_contextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_i(ptr noundef nonnull align 8 dereferenceable(184) %i.mf, ptr noundef nonnull align 8 dereferenceable(32) %i.lq, ptr noundef nonnull align 8 dereferenceable(32) %i.mh, i32 noundef %.0.i)
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %_ZN5boost15program_options6detail7cmdline27get_canonical_option_prefixEv.exit
  invoke void @__cxa_rethrow() #27
          to label %bb.eq unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %_ZN5boost15program_options6detail7cmdline27get_canonical_option_prefixEv.exit
  %i.mn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.em unwind label %bb.ep

bb.cc:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  invoke void @_ZNK5boost15program_options18option_description8semanticEv(ptr dead_on_unwind nonnull writable sret(%"class.boost::shared_ptr") align 8 %14, ptr noundef nonnull align 8 dereferenceable(112) %i.lz)
          to label %bb.cd unwind label %bb.ct

bb.cd:                                            ; preds = %bb.cc
  %i.mo = load ptr, ptr %14, align 8, !tbaa !76   ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !50
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.mr = load ptr, ptr %i.mq, align 8
  %i.ms = invoke noundef i32 %i.mr(ptr noundef nonnull align 8 dereferenceable(8) %i.mo)
          to label %bb.ce unwind label %bb.cu

bb.ce:                                            ; preds = %bb.cd
  %i.mt = load ptr, ptr %i.kq, align 8, !tbaa !81 ; 7 uses
  %.not.i.i265 = icmp eq ptr %i.mt, null
  br i1 %.not.i.i265, label %_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mv = atomicrmw sub ptr %i.mu, i32 1 acq_rel, align 4
  %i.mw = icmp eq i32 %i.mv, 1
  br i1 %i.mw, label %bb.cg, label %_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit

bb.cg:                                            ; preds = %bb.cf
  %i.mx = load ptr, ptr %i.mt, align 8, !tbaa !50
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %i.mz = load ptr, ptr %i.my, align 8
  invoke void %i.mz(ptr noundef nonnull align 8 dereferenceable(16) %i.mt)
          to label %.noexc.i.i unwind label %bb.ci, !inline_history !82

.noexc.i.i:                                       ; preds = %bb.cg
  %i.na = getelementptr inbounds nuw i8, ptr %i.mt, i64 12
  %i.nb = atomicrmw sub ptr %i.na, i32 1 acq_rel, align 4
  %i.nc = icmp eq i32 %i.nb, 1
  br i1 %i.nc, label %bb.ch, label %_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit

bb.ch:                                            ; preds = %.noexc.i.i
  %i.nd = load ptr, ptr %i.mt, align 8, !tbaa !50
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 24
  %i.nf = load ptr, ptr %i.ne, align 8
  invoke void %i.nf(ptr noundef nonnull align 8 dereferenceable(16) %i.mt)
          to label %_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit unwind label %bb.ci, !inline_history !82

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.ng = landingpad { ptr, i32 }
          catch ptr null
  %i.nh = extractvalue { ptr, i32 } %i.ng, 0
  call void @__clang_call_terminate(ptr %i.nh) #29
  unreachable

_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit: ; preds = %bb.ce, %bb.cf, %.noexc.i.i, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  invoke void @_ZNK5boost15program_options18option_description8semanticEv(ptr dead_on_unwind nonnull writable sret(%"class.boost::shared_ptr") align 8 %15, ptr noundef nonnull align 8 dereferenceable(112) %i.lz)
          to label %bb.cj unwind label %bb.cw

bb.cj:                                            ; preds = %_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit
  %i.ni = load ptr, ptr %15, align 8, !tbaa !76   ; 2 uses
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !50
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.nl = load ptr, ptr %i.nk, align 8
  %i.nm = invoke noundef i32 %i.nl(ptr noundef nonnull align 8 dereferenceable(8) %i.ni)
          to label %bb.ck unwind label %bb.cx     ; 3 uses

bb.ck:                                            ; preds = %bb.cj
  %i.nn = load ptr, ptr %i.kr, align 8, !tbaa !81 ; 7 uses
  %.not.i.i266 = icmp eq ptr %i.nn, null
  br i1 %.not.i.i266, label %_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit268, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.np = atomicrmw sub ptr %i.no, i32 1 acq_rel, align 4
  %i.nq = icmp eq i32 %i.np, 1
  br i1 %i.nq, label %bb.cm, label %_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit268

bb.cm:                                            ; preds = %bb.cl
  %i.nr = load ptr, ptr %i.nn, align 8, !tbaa !50
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.nt = load ptr, ptr %i.ns, align 8
  invoke void %i.nt(ptr noundef nonnull align 8 dereferenceable(16) %i.nn)
          to label %.noexc.i.i267 unwind label %bb.co, !inline_history !82

.noexc.i.i267:                                    ; preds = %bb.cm
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nn, i64 12
  %i.nv = atomicrmw sub ptr %i.nu, i32 1 acq_rel, align 4
  %i.nw = icmp eq i32 %i.nv, 1
  br i1 %i.nw, label %bb.cn, label %_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit268

bb.cn:                                            ; preds = %.noexc.i.i267
  %i.nx = load ptr, ptr %i.nn, align 8, !tbaa !50
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 24
  %i.nz = load ptr, ptr %i.ny, align 8
  invoke void %i.nz(ptr noundef nonnull align 8 dereferenceable(16) %i.nn)
          to label %_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit268 unwind label %bb.co, !inline_history !82

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.oa = landingpad { ptr, i32 }
          catch ptr null
  %i.ob = extractvalue { ptr, i32 } %i.oa, 0
  call void @__clang_call_terminate(ptr %i.ob) #29
  unreachable

_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit268: ; preds = %bb.ck, %bb.cl, %.noexc.i.i267, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.oc = icmp ult i32 %i.ms, %i.nm
  br i1 %i.oc, label %bb.cp, label %.critedge

bb.cp:                                            ; preds = %_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit268
  %i.od = getelementptr inbounds i8, ptr %i.ll, i64 -56 ; 2 uses
  %i.oe = getelementptr inbounds i8, ptr %i.ll, i64 -48 ; 4 uses
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !42
  %i.og = load ptr, ptr %i.od, align 8, !tbaa !41
  %i.oh = ptrtoint ptr %i.of to i64
  %i.oi = ptrtoint ptr %i.og to i64
  %i.oj = sub i64 %i.oh, %i.oi
  %i.ok = ashr exact i64 %i.oj, 5                 ; 2 uses
  %i.ol = zext i32 %i.nm to i64
  %i.om = icmp ult i64 %i.ok, %i.ol
  br i1 %i.om, label %bb.cq, label %.critedge

bb.cq:                                            ; preds = %bb.cp
  %i.on = trunc nuw i64 %i.ok to i32
  %i.oo = sub i32 %i.nm, %i.on                    ; 2 uses
  %.not171463 = icmp eq i32 %i.oo, 0
  br i1 %.not171463, label %.critedge, label %.lr.ph468

.lr.ph468:                                        ; preds = %bb.cq
  %i.op = getelementptr inbounds i8, ptr %i.ll, i64 -40
  %i.oq = getelementptr inbounds i8, ptr %i.ll, i64 -24 ; 3 uses
  %i.or = getelementptr inbounds i8, ptr %i.ll, i64 -16
  %i.os = getelementptr inbounds i8, ptr %i.ll, i64 -32
  br label %bb.cr

bb.cr:                                            ; preds = %.lr.ph468, %bb.dm
  %.0116.in465 = phi i32 [ %.0125476, %.lr.ph468 ], [ %.0116466, %bb.dm ] ; 3 uses
  %.0117464 = phi i32 [ %i.oo, %.lr.ph468 ], [ %i.qv, %bb.dm ]
  %.0116466 = add i32 %.0116.in465, 1             ; 3 uses
  %i.ot = zext i32 %.0116466 to i64               ; 2 uses
  %i.ou = load ptr, ptr %i.km, align 8, !tbaa !66
  %i.ov = load ptr, ptr %0, align 8, !tbaa !68    ; 2 uses
  %i.ow = ptrtoint ptr %i.ou to i64
  %i.ox = ptrtoint ptr %i.ov to i64
  %i.oy = sub i64 %i.ow, %i.ox
  %i.oz = sdiv exact i64 %i.oy, 96
  %i.pa = icmp ugt i64 %i.oz, %i.ot
  br i1 %i.pa, label %bb.cs, label %.critedge

bb.cs:                                            ; preds = %bb.cr
  %i.pb = getelementptr inbounds nuw [96 x i8], ptr %i.ov, i64 %i.ot ; 4 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !16
  %17 = icmp ne i64 %i.pd, 0
  %18 = getelementptr inbounds nuw i8, ptr %i.pb, i64 32
  %19 = load i32, ptr %18, align 8
  %i.pe = icmp eq i32 %19, 2147483647
  %or.cond190 = select i1 %17, i1 true, i1 %i.pe
  br i1 %or.cond190, label %.critedge, label %bb.cz

bb.ct:                                            ; preds = %bb.cc
  %i.pf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cd
  %i.pg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #26
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.pn167 = phi { ptr, i32 } [ %i.pg, %bb.cu ], [ %i.pf, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.em

bb.cw:                                            ; preds = %_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit
  %i.ph = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cj
  %i.pi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #26
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.pn169 = phi { ptr, i32 } [ %i.pi, %bb.cx ], [ %i.ph, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.em

bb.cz:                                            ; preds = %bb.cs
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pb, i64 40
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !41 ; 3 uses
  %i.pl = load ptr, ptr %i.oe, align 8, !tbaa !42 ; 6 uses
  %i.pm = load ptr, ptr %i.op, align 8, !tbaa !45
  %.not.i269 = icmp eq ptr %i.pl, %i.pm
  br i1 %.not.i269, label %bb.df, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pl, i64 16 ; 3 uses
  store ptr %i.pn, ptr %i.pl, align 8, !tbaa !7
  %i.po = load ptr, ptr %i.pk, align 8, !tbaa !12 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %i.pq = load i64, ptr %i.pp, align 8, !tbaa !16 ; 8 uses
  %i.pr = icmp ugt i64 %i.pq, 15
  br i1 %i.pr, label %bb.db, label %._crit_edge.i.i.i.i270

bb.db:                                            ; preds = %bb.da
  %i.ps = icmp slt i64 %i.pq, 0
  br i1 %i.ps, label %.noexc.i.i.i274.invoke, label %bb.dc

.noexc.i.i.i274.invoke:                           ; preds = %bb.dh, %bb.db
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #27
          to label %.noexc.i.i.i274.cont unwind label %.loopexit.split-lp

.noexc.i.i.i274.cont:                             ; preds = %.noexc.i.i.i274.invoke
  unreachable

bb.dc:                                            ; preds = %bb.db
  %i.pt = add nuw i64 %i.pq, 1                    ; 2 uses
  %i.pu = icmp slt i64 %i.pt, 0
  br i1 %i.pu, label %.noexc6.i.i.i273.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i272, !prof !11

.noexc6.i.i.i273.invoke:                          ; preds = %bb.di, %bb.dc
  invoke void @_ZSt17__throw_bad_allocv() #27
          to label %.noexc6.i.i.i273.cont unwind label %.loopexit.split-lp

.noexc6.i.i.i273.cont:                            ; preds = %.noexc6.i.i.i273.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i272: ; preds = %bb.dc
  %i.pv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pt) #28
          to label %.noexc277 unwind label %.loopexit370 ; 2 uses

.noexc277:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i272
  store ptr %i.pv, ptr %i.pl, align 8, !tbaa !12
  store i64 %i.pq, ptr %i.pn, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i270

._crit_edge.i.i.i.i270:                           ; preds = %.noexc277, %bb.da
  %i.pw = phi ptr [ %i.pv, %.noexc277 ], [ %i.pn, %bb.da ] ; 3 uses
  switch i64 %i.pq, label %bb.de [
    i64 1, label %bb.dd
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i271
  ]

bb.dd:                                            ; preds = %._crit_edge.i.i.i.i270
  %i.px = load i8, ptr %i.po, align 1, !tbaa !15
  store i8 %i.px, ptr %i.pw, align 1, !tbaa !15
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i271

bb.de:                                            ; preds = %._crit_edge.i.i.i.i270
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pw, ptr align 1 %i.po, i64 %i.pq, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i271

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i271: ; preds = %bb.de, %bb.dd, %._crit_edge.i.i.i.i270
  %i.py = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  store i64 %i.pq, ptr %i.py, align 8, !tbaa !16
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pw, i64 %i.pq
  store i8 0, ptr %i.pz, align 1, !tbaa !15
  %i.qa = load ptr, ptr %i.oe, align 8, !tbaa !42
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 32
  store ptr %i.qb, ptr %i.oe, align 8, !tbaa !42
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit279

bb.df:                                            ; preds = %bb.cz
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.od, ptr %i.pl, ptr noundef nonnull align 8 dereferenceable(32) %i.pk)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit279 unwind label %.loopexit370

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit279: ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i271, %bb.df
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pb, i64 64
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !41 ; 3 uses
  %i.qe = load ptr, ptr %i.oq, align 8, !tbaa !42 ; 6 uses
  %i.qf = load ptr, ptr %i.or, align 8, !tbaa !45
  %.not.i280 = icmp eq ptr %i.qe, %i.qf
  br i1 %.not.i280, label %bb.dl, label %bb.dg

bb.dg:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit279
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qe, i64 16 ; 3 uses
  store ptr %i.qg, ptr %i.qe, align 8, !tbaa !7
  %i.qh = load ptr, ptr %i.qd, align 8, !tbaa !12 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !16 ; 8 uses
  %i.qk = icmp ugt i64 %i.qj, 15
  br i1 %i.qk, label %bb.dh, label %._crit_edge.i.i.i.i281

bb.dh:                                            ; preds = %bb.dg
  %i.ql = icmp slt i64 %i.qj, 0
  br i1 %i.ql, label %.noexc.i.i.i274.invoke, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.qm = add nuw i64 %i.qj, 1                    ; 2 uses
  %i.qn = icmp slt i64 %i.qm, 0
  br i1 %i.qn, label %.noexc6.i.i.i273.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i283, !prof !11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i283: ; preds = %bb.di
  %i.qo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qm) #28
          to label %.noexc288 unwind label %.loopexit370 ; 2 uses

.noexc288:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i283
  store ptr %i.qo, ptr %i.qe, align 8, !tbaa !12
  store i64 %i.qj, ptr %i.qg, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i281

._crit_edge.i.i.i.i281:                           ; preds = %.noexc288, %bb.dg
  %i.qp = phi ptr [ %i.qo, %.noexc288 ], [ %i.qg, %bb.dg ] ; 3 uses
  switch i64 %i.qj, label %bb.dk [
    i64 1, label %bb.dj
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i282
  ]

bb.dj:                                            ; preds = %._crit_edge.i.i.i.i281
  %i.qq = load i8, ptr %i.qh, align 1, !tbaa !15
  store i8 %i.qq, ptr %i.qp, align 1, !tbaa !15
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i282

bb.dk:                                            ; preds = %._crit_edge.i.i.i.i281
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qp, ptr align 1 %i.qh, i64 %i.qj, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i282

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i282: ; preds = %bb.dk, %bb.dj, %._crit_edge.i.i.i.i281
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  store i64 %i.qj, ptr %i.qr, align 8, !tbaa !16
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qp, i64 %i.qj
  store i8 0, ptr %i.qs, align 1, !tbaa !15
  %i.qt = load ptr, ptr %i.oq, align 8, !tbaa !42
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 32
  store ptr %i.qu, ptr %i.oq, align 8, !tbaa !42
  br label %bb.dm

bb.dl:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit279
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.os, ptr %i.qe, ptr noundef nonnull align 8 dereferenceable(32) %i.qd)
          to label %bb.dm unwind label %.loopexit370

bb.dm:                                            ; preds = %bb.dl, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i282
  %i.qv = add nsw i32 %.0117464, -1               ; 2 uses
  %.not171 = icmp eq i32 %i.qv, 0
  br i1 %.not171, label %.critedge, label %bb.cr, !llvm.loop !83

.loopexit370:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i272, %bb.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i283, %bb.dl
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

.loopexit.split-lp:                               ; preds = %.noexc6.i.i.i273.invoke, %.noexc.i.i.i274.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

.critedge:                                        ; preds = %bb.dm, %bb.cr, %bb.cs, %bb.cq, %bb.bu, %bb.cp, %_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit268, %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EE9push_backERKS3_.exit263
  %.3128 = phi i32 [ %.0125476, %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EE9push_backERKS3_.exit263 ], [ %.0125476, %bb.bu ], [ %.0125476, %_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit268 ], [ %.0125476, %bb.cp ], [ %.0125476, %bb.cq ], [ %.0116466, %bb.dm ], [ %.0116.in465, %bb.cr ], [ %.0116.in465, %bb.cs ]
  %i.qw = add i32 %.3128, 1                       ; 2 uses
  %i.qx = zext i32 %i.qw to i64                   ; 2 uses
  %i.qy = load ptr, ptr %i.km, align 8, !tbaa !66 ; 2 uses
  %i.qz = load ptr, ptr %0, align 8, !tbaa !68    ; 3 uses
  %i.ra = ptrtoint ptr %i.qy to i64
  %i.rb = ptrtoint ptr %i.qz to i64
  %i.rc = sub i64 %i.ra, %i.rb
  %i.rd = sdiv exact i64 %i.rc, 96
  %i.re = icmp ugt i64 %i.rd, %i.qx
  br i1 %i.re, label %bb.bp, label %._crit_edge479.loopexit, !llvm.loop !84

._crit_edge487:                                   ; preds = %bb.do
  %i.rf = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !53
  %.not159 = icmp eq ptr %i.rg, null              ; 2 uses
  %.mux = select i1 %.not159, i64 %i.ld, i64 0
  br i1 %.not159, label %.loopexit, label %.lr.ph490

.lr.ph486:                                        ; preds = %._crit_edge479, %bb.do
  %i.rh = phi i64 [ %i.rp, %bb.do ], [ 0, %._crit_edge479 ]
  %.092484 = phi i32 [ %i.ro, %bb.do ], [ 0, %._crit_edge479 ]
  %.093483 = phi i32 [ %.194, %bb.do ], [ 0, %._crit_edge479 ] ; 3 uses
  %i.ri = getelementptr inbounds nuw [96 x i8], ptr %i.kv, i64 %i.rh ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  %i.rk = load i64, ptr %i.rj, align 8, !tbaa !16
  %i.rl = icmp eq i64 %i.rk, 0
  br i1 %i.rl, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %.lr.ph486
  %i.rm = add nsw i32 %.093483, 1
  %i.rn = getelementptr inbounds nuw i8, ptr %i.ri, i64 32
  store i32 %.093483, ptr %i.rn, align 8, !tbaa !73
  br label %bb.do

bb.do:                                            ; preds = %.lr.ph486, %bb.dn
  %.194 = phi i32 [ %i.rm, %bb.dn ], [ %.093483, %.lr.ph486 ]
  %i.ro = add i32 %.092484, 1                     ; 2 uses
  %i.rp = zext i32 %i.ro to i64                   ; 2 uses
  %i.rq = icmp ugt i64 %i.ld, %i.rp
  br i1 %i.rq, label %.lr.ph486, label %._crit_edge487, !llvm.loop !85

.lr.ph490:                                        ; preds = %._crit_edge487, %bb.ea
  %i.rr = phi ptr [ %i.sf, %bb.ea ], [ %i.kv, %._crit_edge487 ] ; 2 uses
  %i.rs = phi ptr [ %i.sg, %bb.ea ], [ %i.ku, %._crit_edge487 ]
  %i.rt = phi i64 [ %i.si, %bb.ea ], [ 0, %._crit_edge487 ]
  %.089489 = phi i32 [ %i.sh, %bb.ea ], [ 0, %._crit_edge487 ]
  %.090488 = phi i32 [ %.191, %bb.ea ], [ 0, %._crit_edge487 ] ; 4 uses
  %i.ru = getelementptr inbounds nuw [96 x i8], ptr %i.rr, i64 %i.rt ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 32
  %i.rw = load i32, ptr %i.rv, align 8, !tbaa !73
  %.not161 = icmp eq i32 %i.rw, -1
  br i1 %.not161, label %bb.ea, label %bb.dp

bb.dp:                                            ; preds = %.lr.ph490
  %i.rx = load ptr, ptr %i.rf, align 8, !tbaa !53
  %i.ry = invoke noundef i32 @_ZNK5boost15program_options30positional_options_description15max_total_countEv(ptr noundef nonnull align 8 dereferenceable(56) %i.rx)
          to label %bb.dq unwind label %bb.du

bb.dq:                                            ; preds = %bb.dp
  %.not162 = icmp ult i32 %.090488, %i.ry
  br i1 %.not162, label %bb.dy, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  invoke void @_ZN5boost15program_options33too_many_positional_options_errorC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %bb.ds unwind label %bb.dv

bb.ds:                                            ; preds = %bb.dr
  invoke void @_ZN5boost15throw_exceptionINS_15program_options33too_many_positional_options_errorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %16) #27
          to label %bb.dt unwind label %bb.dw

bb.dt:                                            ; preds = %bb.ds
  unreachable

bb.du:                                            ; preds = %bb.dz, %bb.dy, %bb.dp
  %i.rz = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.dv:                                            ; preds = %bb.dr
  %i.sa = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.dw:                                            ; preds = %bb.ds
  %i.sb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #26
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.pn163 = phi { ptr, i32 } [ %i.sb, %bb.dw ], [ %i.sa, %bb.dv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.em

bb.dy:                                            ; preds = %bb.dq
  %i.sc = load ptr, ptr %i.rf, align 8, !tbaa !53
  %i.sd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5boost15program_options30positional_options_description17name_for_positionB5cxx11Ej(ptr noundef nonnull align 8 dereferenceable(56) %i.sc, i32 noundef %.090488)
          to label %bb.dz unwind label %bb.du

bb.dz:                                            ; preds = %bb.dy
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ru, ptr noundef nonnull align 8 dereferenceable(32) %i.sd)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.du

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.dz
  %i.se = add nuw i32 %.090488, 1
  %.pre543 = load ptr, ptr %i.ks, align 8, !tbaa !66
  %.pre544 = load ptr, ptr %0, align 8, !tbaa !68
  br label %bb.ea

bb.ea:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %.lr.ph490
  %i.sf = phi ptr [ %.pre544, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ %i.rr, %.lr.ph490 ] ; 4 uses
  %i.sg = phi ptr [ %.pre543, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ %i.rs, %.lr.ph490 ] ; 3 uses
  %.191 = phi i32 [ %i.se, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ %.090488, %.lr.ph490 ]
  %i.sh = add i32 %.089489, 1                     ; 2 uses
  %i.si = zext i32 %i.sh to i64                   ; 2 uses
  %i.sj = ptrtoint ptr %i.sg to i64
  %i.sk = ptrtoint ptr %i.sf to i64
  %i.sl = sub i64 %i.sj, %i.sk
  %i.sm = sdiv exact i64 %i.sl, 96                ; 2 uses
  %i.sn = icmp ugt i64 %i.sm, %i.si
  br i1 %i.sn, label %.lr.ph490, label %.loopexit.loopexit, !llvm.loop !86

.loopexit.loopexit:                               ; preds = %bb.ea
  %i.so = icmp eq ptr %i.sg, %i.sf
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge487
  %.pre-phi547 = phi i64 [ %.mux, %._crit_edge487 ], [ %i.sm, %.loopexit.loopexit ]
  %i.sp = phi ptr [ %i.kv, %._crit_edge487 ], [ %i.sf, %.loopexit.loopexit ]
  %.not500 = phi i1 [ false, %._crit_edge487 ], [ %i.so, %.loopexit.loopexit ]
  br i1 %.not500, label %._crit_edge494, label %.lr.ph493

.lr.ph493:                                        ; preds = %.loopexit
  %i.sq = load i32, ptr %i.r, align 8             ; 2 uses
  %i.sr = lshr i32 %i.sq, 11
  %i.ss = lshr i32 %i.sq, 10                      ; 2 uses
  br label %bb.eh

._crit_edge494:                                   ; preds = %bb.el, %._crit_edge479, %.loopexit
  %i.st = load ptr, ptr %13, align 8, !tbaa !68   ; 3 uses
  %i.su = load ptr, ptr %i.ky, align 8, !tbaa !66 ; 2 uses
  %.not4.i.i.i292 = icmp eq ptr %i.st, %i.su
  br i1 %.not4.i.i.i292, label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i298, label %.lr.ph.i.i.i293

.lr.ph.i.i.i293:                                  ; preds = %._crit_edge494, %.lr.ph.i.i.i293
  %.05.i.i.i294 = phi ptr [ %i.sv, %.lr.ph.i.i.i293 ], [ %i.st, %._crit_edge494 ] ; 2 uses
  call void @_ZN5boost15program_options12basic_optionIcED2Ev(ptr noundef nonnull align 8 dead_on_return(90) dereferenceable(90) %.05.i.i.i294) #26
  %i.sv = getelementptr inbounds nuw i8, ptr %.05.i.i.i294, i64 96 ; 2 uses
  %.not.i.i.i295 = icmp eq ptr %i.sv, %i.su
  br i1 %.not.i.i.i295, label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i296, label %.lr.ph.i.i.i293, !llvm.loop !72

_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i296: ; preds = %.lr.ph.i.i.i293
  %.pr.i297 = load ptr, ptr %13, align 8, !tbaa !68
  br label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i298

_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i298: ; preds = %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i296, %._crit_edge494
  %i.sw = phi ptr [ %.pr.i297, %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i296 ], [ %i.st, %._crit_edge494 ] ; 3 uses
  %.not.i.i1.i299 = icmp eq ptr %i.sw, null
  br i1 %.not.i.i1.i299, label %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit300, label %bb.eb

bb.eb:                                            ; preds = %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i298
  %i.sx = load ptr, ptr %i.kz, align 8, !tbaa !70
  %i.sy = ptrtoint ptr %i.sx to i64
  %i.sz = ptrtoint ptr %i.sw to i64
  %i.ta = sub i64 %i.sy, %i.sz
  call void @_ZdlPvm(ptr noundef nonnull %i.sw, i64 noundef %i.ta) #30
  br label %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit300

_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit300: ; preds = %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i298, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.tb = load ptr, ptr %3, align 8, !tbaa !57    ; 3 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !54 ; 2 uses
  %.not4.i.i.i301 = icmp eq ptr %i.tb, %i.td
  br i1 %.not4.i.i.i301, label %_ZSt8_DestroyIPN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEESH_EvT_SJ_RSaIT0_E.exit.i, label %.lr.ph.i.i.i302

.lr.ph.i.i.i302:                                  ; preds = %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit300, %_ZSt8_DestroyIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvPT_.exit.i.i.i
  %.05.i.i.i303 = phi ptr [ %i.tl, %_ZSt8_DestroyIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvPT_.exit.i.i.i ], [ %i.tb, %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit300 ] ; 4 uses
  %i.te = load ptr, ptr %.05.i.i.i303, align 8, !tbaa !17 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.te, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvPT_.exit.i.i.i, label %bb.ec

bb.ec:                                            ; preds = %.lr.ph.i.i.i302
  %i.tf = ptrtoint ptr %i.te to i64
  %i.tg = trunc i64 %i.tf to i1
  br i1 %i.tg, label %_ZNK5boost6detail8function13basic_vtable1ISt6vectorINS_15program_options12basic_optionIcEESaIS6_EERS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEE5clearERNS1_15function_bufferE.exit.i.i.i.i.i.i.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.th = load ptr, ptr %i.te, align 8, !tbaa !34 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.th, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK5boost6detail8function13basic_vtable1ISt6vectorINS_15program_options12basic_optionIcEESaIS6_EERS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEE5clearERNS1_15function_bufferE.exit.i.i.i.i.i.i.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.ti = getelementptr inbounds nuw i8, ptr %.05.i.i.i303, i64 8 ; 2 uses
  invoke void %i.th(ptr noundef nonnull align 8 dereferenceable(24) %i.ti, ptr noundef nonnull align 8 dereferenceable(24) %i.ti, i32 noundef 2)
          to label %_ZNK5boost6detail8function13basic_vtable1ISt6vectorINS_15program_options12basic_optionIcEESaIS6_EERS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEE5clearERNS1_15function_bufferE.exit.i.i.i.i.i.i.i unwind label %bb.ef, !inline_history !37

_ZNK5boost6detail8function13basic_vtable1ISt6vectorINS_15program_options12basic_optionIcEESaIS6_EERS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEE5clearERNS1_15function_bufferE.exit.i.i.i.i.i.i.i: ; preds = %bb.ee, %bb.ed, %bb.ec
  store ptr null, ptr %.05.i.i.i303, align 8, !tbaa !17
end_hunk_0
