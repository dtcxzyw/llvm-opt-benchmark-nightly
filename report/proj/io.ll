Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/io?download=true
inline.NumInlined: 17817
inline.NumDeleted: 4455
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 47
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@_ZN5osgeo4proj2io16PROJStringParser20createFromPROJStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.pa = load i64, ptr %i.oz, align 1
  %i.pb = xor i64 %i.pa, 7163382526703395695
  %i.pc = or i64 %i.oy, %i.pb
  %i.pd = icmp ne i64 %i.pc, 0
  %i.pe = zext i1 %i.pd to i32
  %i.pf = icmp eq i32 %i.pe, 0
  br i1 %i.pf, label %bb.ci, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit716

bb.ci:                                            ; preds = %_ZN5osgeo4proj2ioL17isTopocentricStepERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.pg = getelementptr inbounds nuw i8, ptr %i.on, i64 112
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !582 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.on, i64 120
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !582 ; 2 uses
  %.not43.i702 = icmp eq ptr %i.ph, %i.pj
  br i1 %.not43.i702, label %._crit_edge.i706, label %.lr.ph.i703

.lr.ph.i703:                                      ; preds = %bb.ci, %bb.cj
  %.sroa.027.044.i704 = phi ptr [ %i.pl, %bb.cj ], [ %i.ph, %bb.ci ] ; 3 uses
  %i.pk = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.027.044.i704, ptr noundef nonnull @.str.285) #41
  br i1 %i.pk, label %.loopexit.sink.split.i712, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.i703
  %i.pl = getelementptr inbounds nuw i8, ptr %.sroa.027.044.i704, i64 72 ; 2 uses
  %.not.i705 = icmp eq ptr %i.pl, %i.pj
  br i1 %.not.i705, label %._crit_edge.i706, label %.lr.ph.i703

._crit_edge.i706:                                 ; preds = %bb.cj, %bb.ci
  %i.pm = getelementptr inbounds nuw i8, ptr %i.om, i64 40
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !582 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.om, i64 48
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !582 ; 2 uses
  %.not4045.i707 = icmp eq ptr %i.pn, %i.pp
  br i1 %.not4045.i707, label %_ZN5osgeo4proj2io16PROJStringParser7Private13getParamValueIPKcEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_4StepET_.exit714, label %.lr.ph48.i708

.lr.ph48.i708:                                    ; preds = %._crit_edge.i706, %bb.ck
  %.sroa.023.046.i709 = phi ptr [ %i.pr, %bb.ck ], [ %i.pn, %._crit_edge.i706 ] ; 3 uses
  %i.pq = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.023.046.i709, ptr noundef nonnull @.str.285) #41
  br i1 %i.pq, label %.loopexit.sink.split.i712, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph48.i708
  %i.pr = getelementptr inbounds nuw i8, ptr %.sroa.023.046.i709, i64 72 ; 2 uses
  %.not40.i710 = icmp eq ptr %i.pr, %i.pp
  br i1 %.not40.i710, label %_ZN5osgeo4proj2io16PROJStringParser7Private13getParamValueIPKcEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_4StepET_.exit714, label %.lr.ph48.i708

.loopexit.sink.split.i712:                        ; preds = %.lr.ph.i703, %.lr.ph48.i708
  %.sroa.023.046.lcssa.sink58.i713 = phi ptr [ %.sroa.023.046.i709, %.lr.ph48.i708 ], [ %.sroa.027.044.i704, %.lr.ph.i703 ] ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.023.046.lcssa.sink58.i713, i64 64
  store i8 1, ptr %i.ps, align 8, !tbaa !584
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.023.046.lcssa.sink58.i713, i64 32
  br label %_ZN5osgeo4proj2io16PROJStringParser7Private13getParamValueIPKcEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_4StepET_.exit714

_ZN5osgeo4proj2io16PROJStringParser7Private13getParamValueIPKcEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_4StepET_.exit714: ; preds = %bb.ck, %._crit_edge.i706, %.loopexit.sink.split.i712
  %.6.i711 = phi ptr [ @_ZL11emptyStringB5cxx11, %._crit_edge.i706 ], [ %i.pt, %.loopexit.sink.split.i712 ], [ @_ZL11emptyStringB5cxx11, %bb.ck ] ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.6.i711, i64 8
  %i.pv = load i64, ptr %i.pu, align 8, !tbaa !164
  %i.pw = icmp eq i64 %i.pv, 3
  br i1 %i.pw, label %bb.cl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit716

bb.cl:                                            ; preds = %_ZN5osgeo4proj2io16PROJStringParser7Private13getParamValueIPKcEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_4StepET_.exit714
  %i.px = load ptr, ptr %.6.i711, align 8, !tbaa !163 ; 2 uses
  %i.py = load i16, ptr %i.px, align 1
  %i.pz = xor i16 %i.py, 29283
  %i.qa = getelementptr i8, ptr %i.px, i64 2
  %i.qb = load i8, ptr %i.qa, align 1
  %i.qc = zext i8 %i.qb to i16
  %i.qd = xor i16 %i.qc, 115
  %i.qe = or i16 %i.pz, %i.qd
  %i.qf = icmp ne i16 %i.qe, 0
  %i.qg = zext i1 %i.qf to i32
  %i.qh = icmp eq i32 %i.qg, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit716

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit716: ; preds = %bb.ch, %bb.cl, %_ZN5osgeo4proj2io16PROJStringParser7Private13getParamValueIPKcEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_4StepET_.exit714, %_ZN5osgeo4proj2ioL17isTopocentricStepERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN5osgeo4proj2ioL16isGeocentricStepERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.qi = phi i1 [ false, %_ZN5osgeo4proj2ioL17isTopocentricStepERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ false, %_ZN5osgeo4proj2ioL16isGeocentricStepERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ false, %bb.ch ], [ false, %_ZN5osgeo4proj2io16PROJStringParser7Private13getParamValueIPKcEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_4StepET_.exit714 ], [ %i.qh, %bb.cl ]
  %i.qj = load ptr, ptr %1, align 8, !tbaa !559   ; 3 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 88
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qj, i64 96
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !578
  %i.qn = load ptr, ptr %i.qk, align 8, !tbaa !577 ; 4 uses
  %i.qo = ptrtoint ptr %i.qm to i64
  %i.qp = ptrtoint ptr %i.qn to i64
  %i.qq = sub i64 %i.qo, %i.qp
  %i.qr = icmp eq i64 %i.qq, 64
  br i1 %i.qr, label %bb.cm, label %_ZN5osgeo4proj2io12_GLOBAL__N_115PJContextHolderD2Ev.exit901

bb.cm:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit716
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qn, i64 32
  %i.qt = load i8, ptr %i.qs, align 8, !tbaa !586, !range !221, !noundef !222
  %i.qu = trunc nuw i8 %i.qt to i1
  br i1 %i.qu, label %bb.cn, label %_ZN5osgeo4proj2io12_GLOBAL__N_115PJContextHolderD2Ev.exit901

bb.cn:                                            ; preds = %bb.cm
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qn, i64 33
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !587, !range !221, !noundef !222
  %i.qx = trunc nuw i8 %i.qw to i1
  br i1 %i.qx, label %_ZN5osgeo4proj2io12_GLOBAL__N_115PJContextHolderD2Ev.exit901, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !576 ; 2 uses
  %.not461 = icmp eq ptr %i.qz, null
  br i1 %.not461, label %bb.cp, label %.thread1267

bb.cp:                                            ; preds = %bb.co
  %i.ra = tail call ptr @proj_context_create()    ; 3 uses
  %.not462 = icmp eq ptr %i.ra, null
  br i1 %.not462, label %bb.cq, label %..thread1267_crit_edge

..thread1267_crit_edge:                           ; preds = %bb.cp
  %.pre1656 = load ptr, ptr %1, align 8, !tbaa !559 ; 2 uses
  %.phi.trans.insert1657 = getelementptr inbounds nuw i8, ptr %.pre1656, i64 16
  %.pre1658 = load ptr, ptr %.phi.trans.insert1657, align 8, !tbaa !576
  %.phi.trans.insert1659 = getelementptr inbounds nuw i8, ptr %.pre1656, i64 88
  %.pre1660 = load ptr, ptr %.phi.trans.insert1659, align 8, !tbaa !577
  %i.rb = icmp eq ptr %i.ra, %.pre1658
  br label %.thread1267

bb.cq:                                            ; preds = %bb.cp
  %i.rc = tail call ptr @__cxa_allocate_exception(i64 40) #41 ; 3 uses
  invoke void @_ZN5osgeo4proj2io16ParsingExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.rc, ptr noundef nonnull @.str.613)
          to label %bb.cr unwind label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  tail call void @__cxa_throw(ptr nonnull %i.rc, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
  unreachable

bb.cs:                                            ; preds = %bb.cq
  %i.rd = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.rc) #41
  br label %_ZN5osgeo4proj2io12_GLOBAL__N_115PJContextHolderD2Ev.exit897

.thread1267:                                      ; preds = %..thread1267_crit_edge, %bb.co
  %i.re = phi ptr [ %.pre1660, %..thread1267_crit_edge ], [ %i.qn, %bb.co ] ; 5 uses
  %.not1343 = phi i1 [ %i.rb, %..thread1267_crit_edge ], [ true, %bb.co ] ; 4 uses
  %i.rf = phi ptr [ %i.ra, %..thread1267_crit_edge ], [ %i.qz, %bb.co ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #41
  %i.rg = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  store ptr %i.rg, ptr %20, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.rg, ptr noundef nonnull align 1 dereferenceable(5) @.str.614, i64 5, i1 false)
  %i.rh = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 5, ptr %i.rh, align 8, !tbaa !164
  %i.ri = getelementptr inbounds nuw i8, ptr %20, i64 21
  store i8 0, ptr %i.ri, align 1, !tbaa !166
  %i.rj = call noundef zeroext i1 @_ZN5osgeo4proj8internal14ci_starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.re, ptr noundef nonnull align 8 dereferenceable(32) %20) #41
  br i1 %i.rj, label %.critedge566, label %._crit_edge.i.i721

._crit_edge.i.i721:                               ; preds = %.thread1267
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #41
  %i.rk = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  store ptr %i.rk, ptr %21, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.rk, ptr noundef nonnull align 1 dereferenceable(5) @.str.615, i64 5, i1 false)
  %i.rl = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 5, ptr %i.rl, align 8, !tbaa !164
  %i.rm = getelementptr inbounds nuw i8, ptr %21, i64 21
  store i8 0, ptr %i.rm, align 1, !tbaa !166
  %i.rn = call noundef zeroext i1 @_ZN5osgeo4proj8internal14ci_starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.re, ptr noundef nonnull align 8 dereferenceable(32) %21) #41
  %i.ro = load ptr, ptr %21, align 8, !tbaa !163  ; 2 uses
  %i.rp = icmp eq ptr %i.ro, %i.rk
  br i1 %i.rp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit727, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i725

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i725: ; preds = %._crit_edge.i.i721
  %i.rq = load i64, ptr %i.rk, align 8, !tbaa !166
  %i.rr = add i64 %i.rq, 1
  call void @_ZdlPvm(ptr noundef %i.ro, i64 noundef %i.rr) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit727

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit727: ; preds = %._crit_edge.i.i721, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i725
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #41
  br label %.critedge566

.critedge566:                                     ; preds = %.thread1267, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit727
  %i.rs = phi i1 [ %i.rn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit727 ], [ true, %.thread1267 ]
  %i.rt = load ptr, ptr %20, align 8, !tbaa !163  ; 2 uses
  %i.ru = icmp eq ptr %i.rt, %i.rg
  br i1 %i.ru, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit730, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i728

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i728: ; preds = %.critedge566
  %i.rv = load i64, ptr %i.rg, align 8, !tbaa !166
  %i.rw = add i64 %i.rv, 1
  call void @_ZdlPvm(ptr noundef %i.rt, i64 noundef %i.rw) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit730

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit730: ; preds = %.critedge566, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i728
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #41
  br i1 %i.rs, label %bb.ct, label %bb.gz

bb.ct:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit730
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rf, i64 32 ; 4 uses
  %i.ry = load i32, ptr %i.rx, align 8, !tbaa !1389 ; 3 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rf, i64 36
  store i32 1, ptr %i.rz, align 4, !tbaa !1390
  %i.sa = load ptr, ptr %1, align 8, !tbaa !559
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 24
  %i.sc = load i8, ptr %i.sb, align 8, !tbaa !592, !range !221, !noundef !222
  %i.sd = trunc nuw i8 %i.sc to i1
  br i1 %i.sd, label %.thread1270, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.se = invoke i32 @proj_context_get_use_proj4_init_rules(ptr noundef nonnull %i.rf, i32 noundef 0)
          to label %bb.cv unwind label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %75 = icmp eq i32 %i.se, 1
  br i1 %75, label %.thread1270, label %bb.cx

bb.cw:                                            ; preds = %bb.cy, %bb.cu
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gy

bb.cx:                                            ; preds = %bb.cv
  %i.sf = call ptr @__cxa_allocate_exception(i64 40) #41 ; 4 uses
  invoke void @_ZN5osgeo4proj4util9ExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.sf, ptr noundef nonnull @.str.616)
          to label %bb.cy unwind label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj2io16ParsingExceptionE, i64 16), ptr %i.sf, align 8, !tbaa !156
  invoke void @__cxa_throw(ptr nonnull %i.sf, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
          to label %bb.xn unwind label %bb.cw

bb.cz:                                            ; preds = %bb.cx
  %i.sg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.sf) #41
  br label %bb.gy

.thread1270:                                      ; preds = %bb.ct, %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #41
  %i.sh = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 9 uses
  store ptr %i.sh, ptr %22, align 8, !tbaa !160
  %i.si = load ptr, ptr %i.re, align 8, !tbaa !163 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  %i.sk = load i64, ptr %i.sj, align 8, !tbaa !164 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  store i64 %i.sk, ptr %i.c, align 8, !tbaa !165
  %i.sl = icmp ugt i64 %i.sk, 15
  br i1 %i.sl, label %.noexc.i736, label %._crit_edge.i.i735

.noexc.i736:                                      ; preds = %.thread1270
  %i.sm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc737 unwind label %bb.dg ; 2 uses

.noexc737:                                        ; preds = %.noexc.i736
  store ptr %i.sm, ptr %22, align 8, !tbaa !163
  %i.sn = load i64, ptr %i.c, align 8, !tbaa !165
  store i64 %i.sn, ptr %i.sh, align 8, !tbaa !166
  br label %._crit_edge.i.i735

._crit_edge.i.i735:                               ; preds = %.noexc737, %.thread1270
  %i.so = phi ptr [ %i.sm, %.noexc737 ], [ %i.sh, %.thread1270 ] ; 2 uses
  switch i64 %i.sk, label %bb.db [
    i64 1, label %bb.da
    i64 0, label %bb.dc
  ]

bb.da:                                            ; preds = %._crit_edge.i.i735
  %i.sp = load i8, ptr %i.si, align 1, !tbaa !166
  store i8 %i.sp, ptr %i.so, align 1, !tbaa !166
  br label %bb.dc

bb.db:                                            ; preds = %._crit_edge.i.i735
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.so, ptr align 1 %i.si, i64 %i.sk, i1 false)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %._crit_edge.i.i735
  %i.sq = load i64, ptr %i.c, align 8, !tbaa !165 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.sq, ptr %i.sr, align 8, !tbaa !164
  %i.ss = load ptr, ptr %22, align 8, !tbaa !163
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 %i.sq
  store i8 0, ptr %i.st, align 1, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  %i.su = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %22, i8 noundef signext 58, i64 noundef 0) #41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %22, i64 noundef %i.su, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %bb.dh

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %bb.dc
  %i.sv = load ptr, ptr %22, align 8, !tbaa !163
  %i.sw = invoke noundef i32 @_Z12pj_find_fileP6pj_ctxPKcPcm(ptr noundef nonnull %i.rf, ptr noundef %i.sv, ptr noundef nonnull %i.d, i64 noundef 256)
          to label %bb.dd unwind label %bb.di

bb.dd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %.not465 = icmp eq i32 %i.sw, 0
  br i1 %.not465, label %bb.de, label %.critedge574

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #41
  %i.sx = load ptr, ptr %1, align 8, !tbaa !559
  invoke fastcc void @_ZN5osgeo4proj2ioL19createFromUserInputERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrINS1_15DatabaseContextEEbP6pj_ctxb(ptr dead_on_unwind noalias nonnull writable align 8 %23, ptr noundef nonnull align 8 dereferenceable(32) %i.re, ptr noundef nonnull align 8 dereferenceable(16) %i.sx, i1 noundef zeroext true, ptr noundef null, i1 noundef zeroext false)
          to label %_ZN5osgeo4proj2io19createFromUserInputERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrINS1_15DatabaseContextEEb.exit unwind label %bb.dj, !inline_history !1391

_ZN5osgeo4proj2io19createFromUserInputERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrINS1_15DatabaseContextEEb.exit: ; preds = %bb.de
  %i.sy = load ptr, ptr %23, align 16, !tbaa !293 ; 2 uses
  %i.sz = icmp eq ptr %i.sy, null
  br i1 %i.sz, label %bb.dk, label %bb.df

bb.df:                                            ; preds = %_ZN5osgeo4proj2io19createFromUserInputERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrINS1_15DatabaseContextEEb.exit
  %i.ta = call ptr @__dynamic_cast(ptr nonnull %i.sy, ptr nonnull @_ZTIN5osgeo4proj4util10BaseObjectE, ptr nonnull @_ZTIN5osgeo4proj3crs3CRSE, i64 0) #41
  br label %bb.dk

bb.dg:                                            ; preds = %.noexc.i736
  %i.tb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit821

bb.dh:                                            ; preds = %bb.dc
  %i.tc = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

bb.di:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.td = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

bb.dj:                                            ; preds = %bb.de
  %i.te = landingpad { ptr, i32 }
          cleanup
  br label %bb.gu

bb.dk:                                            ; preds = %_ZN5osgeo4proj2io19createFromUserInputERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrINS1_15DatabaseContextEEb.exit, %bb.df
  %i.tf = phi ptr [ %i.ta, %bb.df ], [ null, %_ZN5osgeo4proj2io19createFromUserInputERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrINS1_15DatabaseContextEEb.exit ] ; 8 uses
  %i.tg = load ptr, ptr %1, align 8, !tbaa !559   ; 3 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 88
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !577 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 40
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !582 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ti, i64 48
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !582 ; 2 uses
  %.not13441438 = icmp eq ptr %i.tk, %i.tm
  br i1 %.not13441438, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.dk, %.thread1279
  %.04001443 = phi i1 [ %.24021284, %.thread1279 ], [ false, %bb.dk ] ; 3 uses
  %.sroa.01250.01439 = phi ptr [ %i.up, %.thread1279 ], [ %i.tk, %bb.dk ] ; 7 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %.sroa.01250.01439, i64 8
  %i.to = load i64, ptr %i.tn, align 8, !tbaa !164 ; 3 uses
  switch i64 %i.to, label %.thread1290 [
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit741
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit747
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit749
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit741: ; preds = %.lr.ph
  %i.tp = load ptr, ptr %.sroa.01250.01439, align 8, !tbaa !163 ; 2 uses
  %i.tq = load i32, ptr %i.tp, align 1
  %i.tr = icmp ne i32 %i.tq, 1919252079
  %i.ts = zext i1 %i.tr to i32
  %i.tt = icmp eq i32 %i.ts, 0
  br i1 %i.tt, label %.thread1279, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit743

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit743: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit741
  %i.tu = load i32, ptr %i.tp, align 1
  %i.tv = icmp ne i32 %i.tu, 1701869940
  %i.tw = zext i1 %i.tv to i32
  %i.tx = icmp eq i32 %i.tw, 0
  br i1 %i.tx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit743.thread, label %.thread1290

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit743.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit743
  %i.ty = getelementptr inbounds nuw i8, ptr %.sroa.01250.01439, i64 40
  %i.tz = load i64, ptr %i.ty, align 8, !tbaa !164
  %i.ua = icmp eq i64 %i.tz, 3
  br i1 %i.ua, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit745, label %.thread1290

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit745: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit743.thread
  %i.ub = getelementptr inbounds nuw i8, ptr %.sroa.01250.01439, i64 32
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !163 ; 2 uses
  %i.ud = load i16, ptr %i.uc, align 1
  %i.ue = xor i16 %i.ud, 29283
  %i.uf = getelementptr i8, ptr %i.uc, i64 2
  %i.ug = load i8, ptr %i.uf, align 1
  %i.uh = zext i8 %i.ug to i16
  %i.ui = xor i16 %i.uh, 115
  %i.uj = or i16 %i.ue, %i.ui
  %i.uk = icmp ne i16 %i.uj, 0
  %i.ul = zext i1 %i.uk to i32
  %i.um = icmp eq i32 %i.ul, 0
  br i1 %i.um, label %.thread1279, label %.thread1290

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit747: ; preds = %.lr.ph
  %.pre1661 = load ptr, ptr %.sroa.01250.01439, align 8, !tbaa !163
  %bcmp.i746 = call i32 @bcmp(ptr %.pre1661, ptr nonnull @.str.618, i64 %i.to)
  %i.un = icmp eq i32 %bcmp.i746, 0
  br i1 %i.un, label %.thread1279, label %.thread1290

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit749: ; preds = %.lr.ph
  %.pre1662 = load ptr, ptr %.sroa.01250.01439, align 8, !tbaa !163
  %bcmp.i748 = call i32 @bcmp(ptr %.pre1662, ptr nonnull @.str.420, i64 %i.to)
  %bcmp.i748.fr = freeze i32 %bcmp.i748
  %i.uo = icmp eq i32 %bcmp.i748.fr, 0
  br i1 %i.uo, label %.thread1279, label %.thread1290

.thread1279:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit749, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit747, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit745, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit741
  %.24021284 = phi i1 [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit741 ], [ %.04001443, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit745 ], [ %.04001443, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit747 ], [ %.04001443, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit749 ] ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %.sroa.01250.01439, i64 72 ; 2 uses
  %.not1344 = icmp eq ptr %i.up, %i.tm
  br i1 %.not1344, label %._crit_edge, label %.lr.ph

.thread1290:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit747, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit743, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit745, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit743.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit749, %.lr.ph
  %i.uq = icmp eq ptr %i.tf, null
  br i1 %i.uq, label %.critedge572, label %bb.fl

._crit_edge:                                      ; preds = %.thread1279, %bb.dk
  %.0400.lcssa = phi i1 [ false, %bb.dk ], [ %.24021284, %.thread1279 ]
  %i.ur = icmp eq ptr %i.tf, null
  br i1 %i.ur, label %.critedge572, label %bb.dl

bb.dl:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #41
  invoke void @_ZN5osgeo4proj4util11PropertyMapC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.dm unwind label %bb.dt

bb.dm:                                            ; preds = %bb.dl
  %i.us = load ptr, ptr %1, align 8, !tbaa !559   ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 136
  %i.uu = getelementptr inbounds nuw i8, ptr %i.us, i64 144
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !164
  %i.uw = icmp eq i64 %i.uv, 0
  br i1 %i.uw, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.ux = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.tf) #45
  br label %bb.do

bb.do:                                            ; preds = %bb.dm, %bb.dn
  %i.uy = phi ptr [ %i.ux, %bb.dn ], [ %i.ut, %bb.dm ]
end_hunk_0
begin_hunk_1_@_ZN5osgeo4proj2io16PROJStringParser20createFromPROJStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.acm = getelementptr inbounds nuw i8, ptr %.sroa.01246.01445, i64 72 ; 2 uses
  %.not1347 = icmp eq ptr %i.acm, %i.zy
  br i1 %.not1347, label %._crit_edge1448, label %bb.fv

bb.gk:                                            ; preds = %._crit_edge1448
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  invoke void @_ZN5osgeo4proj2io19PROJStringFormatter6createENS2_10ConventionESt10shared_ptrINS1_15DatabaseContextEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.734") align 8 %37, i32 noundef 0, ptr noundef nonnull align 8 %38)
          to label %bb.gl unwind label %bb.gp

bb.gl:                                            ; preds = %bb.gk
  %i.acn = load ptr, ptr %37, align 8, !tbaa !597 ; 7 uses
  invoke void @_ZNK5osgeo4proj2io21IPROJStringExportable18exportToPROJStringB5cxx11EPNS1_19PROJStringFormatterE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %36, ptr noundef nonnull align 8 dereferenceable(8) %i.yv, ptr noundef %i.acn)
          to label %bb.gm unwind label %bb.gq

bb.gm:                                            ; preds = %bb.gl
  %i.aco = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %bb.gn unwind label %bb.gr     ; 0 uses

bb.gn:                                            ; preds = %bb.gm
  %i.acp = load ptr, ptr %36, align 8, !tbaa !163 ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.acr = icmp eq ptr %i.acp, %i.acq
  br i1 %i.acr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit799, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i797

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i797: ; preds = %bb.gn
  %i.acs = load i64, ptr %i.acq, align 8, !tbaa !166
  %i.act = add i64 %i.acs, 1
  call void @_ZdlPvm(ptr noundef %i.acp, i64 noundef %i.act) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit799

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit799: ; preds = %bb.gn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i797
  %.not.i.i800 = icmp eq ptr %i.acn, null
  br i1 %.not.i.i800, label %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS6_EEED2Ev.exit, label %_ZNKSt14default_deleteIN5osgeo4proj2io19PROJStringFormatterEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN5osgeo4proj2io19PROJStringFormatterEEclEPS3_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit799
  call void @_ZN5osgeo4proj2io19PROJStringFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.acn) #41
  call void @_ZdlPvm(ptr noundef nonnull %i.acn, i64 noundef 8) #44
  br label %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS6_EEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS6_EEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit799, %_ZNKSt14default_deleteIN5osgeo4proj2io19PROJStringFormatterEEclEPS3_.exit.i.i
  call void @_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %38) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #41
  invoke void @_ZN5osgeo4proj2io16PROJStringParser20createFromPROJStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"struct.osgeo::proj::util::BaseObjectNNPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %33)
          to label %bb.go unwind label %bb.fr

bb.go:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS6_EEED2Ev.exit
  %i.acu = load ptr, ptr %33, align 8, !tbaa !163 ; 2 uses
  %i.acv = icmp eq ptr %i.acu, %i.yw
  br i1 %i.acv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit803, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i801

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i801: ; preds = %bb.go
  %i.acw = load i64, ptr %i.yw, align 8, !tbaa !166
  %i.acx = add i64 %i.acw, 1
  call void @_ZdlPvm(ptr noundef %i.acu, i64 noundef %i.acx) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit803

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit803: ; preds = %bb.go, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i801
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #41
  br label %.critedge576

bb.gp:                                            ; preds = %bb.gk
  %i.acy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS6_EEED2Ev.exit809

bb.gq:                                            ; preds = %bb.gl
  %i.acz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit806

bb.gr:                                            ; preds = %bb.gm
  %i.ada = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adb = load ptr, ptr %36, align 8, !tbaa !163 ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.add = icmp eq ptr %i.adb, %i.adc
  br i1 %i.add, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit806, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i804

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i804: ; preds = %bb.gr
  %i.ade = load i64, ptr %i.adc, align 8, !tbaa !166
  %i.adf = add i64 %i.ade, 1
  call void @_ZdlPvm(ptr noundef %i.adb, i64 noundef %i.adf) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit806

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit806: ; preds = %bb.gr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i804, %bb.gq
  %.pn483 = phi { ptr, i32 } [ %i.acz, %bb.gq ], [ %i.ada, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i804 ], [ %i.ada, %bb.gr ] ; 2 uses
  %.not.i.i807 = icmp eq ptr %i.acn, null
  br i1 %.not.i.i807, label %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS6_EEED2Ev.exit809, label %_ZNKSt14default_deleteIN5osgeo4proj2io19PROJStringFormatterEEclEPS3_.exit.i.i808

_ZNKSt14default_deleteIN5osgeo4proj2io19PROJStringFormatterEEclEPS3_.exit.i.i808: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit806
  call void @_ZN5osgeo4proj2io19PROJStringFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.acn) #41
  call void @_ZdlPvm(ptr noundef nonnull %i.acn, i64 noundef 8) #44
  br label %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS6_EEED2Ev.exit809

_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS6_EEED2Ev.exit809: ; preds = %_ZNKSt14default_deleteIN5osgeo4proj2io19PROJStringFormatterEEclEPS3_.exit.i.i808, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit806, %bb.gp
  %.pn483.pn = phi { ptr, i32 } [ %i.acy, %bb.gp ], [ %.pn483, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit806 ], [ %.pn483, %_ZNKSt14default_deleteIN5osgeo4proj2io19PROJStringFormatterEEclEPS3_.exit.i.i808 ]
  call void @_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %38) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #41
  br label %bb.gs

bb.gs:                                            ; preds = %.loopexit1382, %.loopexit.split-lp1383, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit796, %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS6_EEED2Ev.exit809, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit769, %bb.fr
  %.pn486.pn.pn = phi { ptr, i32 } [ %.pn481, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit769 ], [ %i.zk, %bb.fr ], [ %.pn483.pn, %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS6_EEED2Ev.exit809 ], [ %.pn486, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit796 ], [ %lpad.loopexit1384, %.loopexit1382 ], [ %lpad.loopexit.split-lp1385, %.loopexit.split-lp1383 ]
  %i.adg = load ptr, ptr %33, align 8, !tbaa !163 ; 2 uses
  %i.adh = icmp eq ptr %i.adg, %i.yw
  br i1 %i.adh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i810

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i810: ; preds = %bb.gs
  %i.adi = load i64, ptr %i.yw, align 8, !tbaa !166
  %i.adj = add i64 %i.adi, 1
  call void @_ZdlPvm(ptr noundef %i.adg, i64 noundef %i.adj) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812: ; preds = %bb.gs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i810
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #41
  br label %bb.gt

bb.gt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812, %bb.fk
  %.pn486.pn.pn.pn = phi { ptr, i32 } [ %.pn486.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812 ], [ %.pn474.pn.pn.pn.pn, %bb.fk ]
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %23) #41
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.dj
  %.pn486.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn486.pn.pn.pn, %bb.gt ], [ %i.te, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #41
  br label %bb.gx

.critedge572:                                     ; preds = %._crit_edge, %.thread1290, %bb.fl
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %23) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #41
  br label %.critedge574

.critedge574:                                     ; preds = %.critedge572, %bb.dd
  %i.adk = load ptr, ptr %22, align 8, !tbaa !163 ; 2 uses
  %i.adl = icmp eq ptr %i.adk, %i.sh
  br i1 %i.adl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit815, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i813

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i813: ; preds = %.critedge574
  %i.adm = load i64, ptr %i.sh, align 8, !tbaa !166
  %i.adn = add i64 %i.adm, 1
  call void @_ZdlPvm(ptr noundef %i.adk, i64 noundef %i.adn) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit815

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit815: ; preds = %.critedge574, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i813
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  store i32 %i.ry, ptr %i.rx, align 8, !tbaa !1389
  br label %bb.gz

.critedge576:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit803, %.critedge570
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %23) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #41
  %i.ado = load ptr, ptr %22, align 8, !tbaa !163 ; 2 uses
  %i.adp = icmp eq ptr %i.ado, %i.sh
  br i1 %i.adp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit818, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i816

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i816: ; preds = %.critedge576
  %i.adq = load i64, ptr %i.sh, align 8, !tbaa !166
  %i.adr = add i64 %i.adq, 1
  call void @_ZdlPvm(ptr noundef %i.ado, i64 noundef %i.adr) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit818

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit818: ; preds = %.critedge576, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i816
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  store i32 %i.ry, ptr %i.rx, align 8, !tbaa !1389
  br i1 %.not1343, label %_ZN5osgeo4proj2io12_GLOBAL__N_115PJContextHolderD2Ev.exit, label %bb.gv

bb.gv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit818
  %i.ads = invoke ptr @proj_context_destroy(ptr noundef nonnull %i.rf)
          to label %_ZN5osgeo4proj2io12_GLOBAL__N_115PJContextHolderD2Ev.exit unwind label %bb.gw ; 0 uses

bb.gw:                                            ; preds = %bb.gv
  %i.adt = landingpad { ptr, i32 }
          catch ptr null
  %i.adu = extractvalue { ptr, i32 } %i.adt, 0
  call void @__clang_call_terminate(ptr %i.adu) #40
  unreachable

bb.gx:                                            ; preds = %bb.di, %bb.gu, %bb.dh
  %.pn486.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.tc, %bb.dh ], [ %.pn486.pn.pn.pn.pn, %bb.gu ], [ %i.td, %bb.di ] ; 2 uses
  %i.adv = load ptr, ptr %22, align 8, !tbaa !163 ; 2 uses
  %i.adw = icmp eq ptr %i.adv, %i.sh
  br i1 %i.adw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit821, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i819

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i819: ; preds = %bb.gx
  %i.adx = load i64, ptr %i.sh, align 8, !tbaa !166
  %i.ady = add i64 %i.adx, 1
  call void @_ZdlPvm(ptr noundef %i.adv, i64 noundef %i.ady) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit821

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit821: ; preds = %bb.gx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i819, %bb.dg
  %.pn486.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.tb, %bb.dg ], [ %.pn486.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i819 ], [ %.pn486.pn.pn.pn.pn.pn.pn, %bb.gx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  br label %bb.gy

bb.gy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit821, %bb.cz, %bb.cw
  %.pn486.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn486.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit821 ], [ %76, %bb.cw ], [ %i.sg, %bb.cz ]
  store i32 %i.ry, ptr %i.rx, align 8, !tbaa !1389
  br label %bb.jb

bb.gz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit815, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit730
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #41
  %i.adz = load ptr, ptr %1, align 8, !tbaa !559
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 88
  %i.aeb = load ptr, ptr %i.aea, align 8, !tbaa !577 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  %i.aec = load ptr, ptr %i.aeb, align 8, !tbaa !163, !noalias !1392
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8
  %i.aee = load i64, ptr %i.aed, align 8, !tbaa !164, !noalias !1392 ; 3 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 7 uses
  store ptr %i.aef, ptr %39, align 8, !tbaa !160, !alias.scope !1393
  %i.aeg = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 3 uses
  store i64 0, ptr %i.aeg, align 8, !tbaa !164, !alias.scope !1393
  store i8 0, ptr %i.aef, align 8, !tbaa !166, !alias.scope !1393
  %i.aeh = add i64 %i.aee, 5
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %39, i64 noundef %i.aeh)
          to label %bb.ha unwind label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.aei = load i64, ptr %i.aeg, align 8, !tbaa !164, !alias.scope !1393
  %i.aej = add i64 %i.aei, -4611686018427387899
  %i.aek = icmp ult i64 %i.aej, 5
  br i1 %i.aek, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.ha
  %i.ael = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull @.str.410, i64 noundef 5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.hb ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.aem = load i64, ptr %i.aeg, align 8, !tbaa !164, !alias.scope !1393
  %i.aen = sub i64 4611686018427387903, %i.aem
  %i.aeo = icmp ult i64 %i.aen, %i.aee
  br i1 %i.aeo, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.ha
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.689) #42
          to label %.cont.i.i unwind label %bb.hb

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.aep = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef %i.aec, i64 noundef %i.aee)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.hb ; 0 uses

bb.hb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.gz
  %i.aeq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aer = load ptr, ptr %39, align 8, !tbaa !163, !alias.scope !1393 ; 2 uses
  %i.aes = icmp eq ptr %i.aer, %i.aef
  br i1 %i.aes, label %.body822, label %.body822.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.aet = load ptr, ptr %39, align 8, !tbaa !163
  %i.aeu = invoke noundef ptr @_Z10pj_mkparamPKc(ptr noundef %i.aet)
          to label %bb.hc unwind label %bb.hf     ; 3 uses

bb.hc:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.aev = load ptr, ptr %39, align 8, !tbaa !163 ; 2 uses
  %i.aew = icmp eq ptr %i.aev, %i.aef
  br i1 %i.aew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit826, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i824

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i824: ; preds = %bb.hc
  %i.aex = load i64, ptr %i.aef, align 8, !tbaa !166
  %i.aey = add i64 %i.aex, 1
  call void @_ZdlPvm(ptr noundef %i.aev, i64 noundef %i.aey) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit826

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit826: ; preds = %bb.hc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i824
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #41
  %.not498 = icmp eq ptr %i.aeu, null
  br i1 %.not498, label %bb.hd, label %bb.hi

bb.hd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit826
  %i.aez = call ptr @__cxa_allocate_exception(i64 40) #41 ; 4 uses
  invoke void @_ZN5osgeo4proj4util9ExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.aez, ptr noundef nonnull @.str.613)
          to label %bb.he unwind label %bb.hg

bb.he:                                            ; preds = %bb.hd
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj2io16ParsingExceptionE, i64 16), ptr %i.aez, align 8, !tbaa !156
  invoke void @__cxa_throw(ptr nonnull %i.aez, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
          to label %bb.xn unwind label %bb.hh

bb.hf:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.afa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afb = load ptr, ptr %39, align 8, !tbaa !163 ; 2 uses
  %i.afc = icmp eq ptr %i.afb, %i.aef
  br i1 %i.afc, label %.body822, label %.body822.sink.split

.body822.sink.split:                              ; preds = %bb.hf, %bb.hb
  %.sink = phi ptr [ %i.aer, %bb.hb ], [ %i.afb, %bb.hf ]
  %.pn496.ph = phi { ptr, i32 } [ %i.aeq, %bb.hb ], [ %i.afa, %bb.hf ]
  %i.afd = load i64, ptr %i.aef, align 8, !tbaa !166
  %i.afe = add i64 %i.afd, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.afe) #44
  br label %.body822

.body822:                                         ; preds = %.body822.sink.split, %bb.hf, %bb.hb
  %.pn496 = phi { ptr, i32 } [ %i.aeq, %bb.hb ], [ %i.afa, %bb.hf ], [ %.pn496.ph, %.body822.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #41
  br label %bb.jb

bb.hg:                                            ; preds = %bb.hd
  %i.aff = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aez) #41
  br label %bb.jb

bb.hh:                                            ; preds = %bb.he
  %i.afg = landingpad { ptr, i32 }
          cleanup
  br label %bb.jb

bb.hi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit826
  %i.afh = getelementptr inbounds nuw i8, ptr %i.rf, i64 564 ; 4 uses
  %i.afi = load i32, ptr %i.afh, align 4, !tbaa !1386
  %i.afj = add nsw i32 %i.afi, 1
  store i32 %i.afj, ptr %i.afh, align 4, !tbaa !1386
  %i.afk = invoke noundef ptr @_Z14pj_expand_initP6pj_ctxP8ARG_list(ptr noundef nonnull %i.rf, ptr noundef nonnull %i.aeu)
          to label %bb.hj unwind label %bb.hn     ; 3 uses

bb.hj:                                            ; preds = %bb.hi
  %i.afl = load i32, ptr %i.afh, align 4, !tbaa !1386
  %i.afm = add nsw i32 %i.afl, -1
  store i32 %i.afm, ptr %i.afh, align 4, !tbaa !1386
  %.not499 = icmp eq ptr %i.afk, null
  br i1 %.not499, label %bb.hk, label %bb.hq

bb.hk:                                            ; preds = %bb.hj
  call void @free(ptr noundef nonnull %i.aeu) #41
  %i.afn = call ptr @__cxa_allocate_exception(i64 40) #41 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #41
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %40, ptr noundef nonnull @.str.621, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.hl unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835.thread

bb.hl:                                            ; preds = %bb.hk
  invoke void @_ZN5osgeo4proj4util9ExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.afn, ptr noundef nonnull align 8 dereferenceable(32) %40)
          to label %bb.hm unwind label %bb.ho

bb.hm:                                            ; preds = %bb.hl
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj2io16ParsingExceptionE, i64 16), ptr %i.afn, align 8, !tbaa !156
  invoke void @__cxa_throw(ptr nonnull %i.afn, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
          to label %bb.xn unwind label %bb.ho

bb.hn:                                            ; preds = %bb.hi
  %i.afo = landingpad { ptr, i32 }
          cleanup
  br label %bb.jb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835.thread: ; preds = %bb.hk
  %i.afp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #41
  br label %bb.hp

bb.ho:                                            ; preds = %bb.hl, %bb.hm
  %.0398 = phi i1 [ false, %bb.hm ], [ true, %bb.hl ] ; 2 uses
  %i.afq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.afr = load ptr, ptr %40, align 8, !tbaa !163 ; 2 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.aft = icmp eq ptr %i.afr, %i.afs
  br i1 %i.aft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i833

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i833: ; preds = %bb.ho
  %i.afu = load i64, ptr %i.afs, align 8, !tbaa !166
  %i.afv = add i64 %i.afu, 1
  call void @_ZdlPvm(ptr noundef %i.afr, i64 noundef %i.afv) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #41
  br i1 %.0398, label %bb.hp, label %bb.jb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835: ; preds = %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #41
  br i1 %.0398, label %bb.hp, label %bb.jb

bb.hp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i833, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835
  %.pn5001299 = phi { ptr, i32 } [ %i.afp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835.thread ], [ %i.afq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835 ], [ %i.afq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i833 ]
  call void @__cxa_free_exception(ptr %i.afn) #41
  br label %bb.jb

bb.hq:                                            ; preds = %bb.hj
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #41
  %i.afw = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 16 uses
  store ptr %i.afw, ptr %41, align 8, !tbaa !160
  %i.afx = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 14 uses
  store i64 0, ptr %i.afx, align 8, !tbaa !164
  store i8 0, ptr %i.afw, align 8, !tbaa !166
  %i.afy = load ptr, ptr %1, align 8, !tbaa !559  ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 144
  %i.aga = load i64, ptr %i.afz, align 8, !tbaa !164
  %i.agb = icmp eq i64 %i.aga, 0
  br i1 %i.agb, label %.peel.begin.thread, label %bb.hr

.peel.begin.thread:                               ; preds = %bb.hq
  %i.agc = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.agd = getelementptr inbounds nuw i8, ptr %44, i64 8
end_hunk_1
