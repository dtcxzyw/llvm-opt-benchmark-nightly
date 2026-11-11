Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/string_test?download=true
inline.NumInlined: 7799
inline.NumDeleted: 1796
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_ZN5boost9container4test27test_assign_with_expand_bwdINS0_12basic_stringIcSt11char_traitsIcENS1_25expand_bwd_test_allocatorIcEEvEEEEbv:bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = invoke noundef signext i8 %i.cd(ptr noundef nonnull align 8 dereferenceable(570) %i.bw, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !1

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc99, %bb.h
  %.0.i.i.i = phi i8 [ %i.ca, %bb.h ], [ %i.ce, %.noexc99 ]
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
          to label %.noexc101 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc101:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cf)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit.split-lp.loopexit.split-lp ; 5 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc101
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull @.str.420, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull @_ZTSN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvEE, i64 noundef 94)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !26
  %i.ck = getelementptr i8, ptr %i.cj, i64 -24
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds i8, ptr %i.cg, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 240
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !44 ; 6 uses
  %.not.i.i.i103 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i103, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i104

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i104: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  %i.cq = load i8, ptr %i.cp, align 8, !tbaa !50
  %.not.i1.i.i105 = icmp eq i8 %i.cq, 0
  br i1 %.not.i1.i.i105, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i104
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 67
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !51
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i106

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i104
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.co)
          to label %.noexc109 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc109:                                        ; preds = %bb.k
  %i.ct = load ptr, ptr %i.co, align 8, !tbaa !26
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = invoke noundef signext i8 %i.cv(ptr noundef nonnull align 8 dereferenceable(570) %i.co, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i106 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !1

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i106: ; preds = %.noexc109, %bb.j
  %.0.i.i.i107 = phi i8 [ %i.cs, %bb.j ], [ %i.cw, %.noexc109 ]
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, i8 noundef signext %.0.i.i.i107)
          to label %.noexc111 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc111:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i106
  %i.cy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cx)
          to label %_ZNSolsEPFRSoS_E.exit56 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSolsEPFRSoS_E.exit56:                          ; preds = %.noexc111
  %i.cz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef nonnull @.str.421, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58: ; preds = %_ZNSolsEPFRSoS_E.exit56
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, i64 noundef %indvars.iv194)
          to label %_ZNSolsEj.exit unwind label %.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !26
  %i.dc = getelementptr i8, ptr %i.db, i64 -24
  %i.dd = load i64, ptr %i.dc, align 8
  %i.de = getelementptr inbounds i8, ptr %i.da, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 240
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !44 ; 6 uses
  %.not.i.i.i114 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i114, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i115

.invoke:                                          ; preds = %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt16__throw_bad_castv() #26
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i115: ; preds = %_ZNSolsEj.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 56
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !50
  %.not.i1.i.i116 = icmp eq i8 %i.di, 0
  br i1 %.not.i1.i.i116, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i115
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 67
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !51
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i117

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i115
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dg)
          to label %.noexc120 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc120:                                        ; preds = %bb.m
  %i.dl = load ptr, ptr %i.dg, align 8, !tbaa !26
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = invoke noundef signext i8 %i.dn(ptr noundef nonnull align 8 dereferenceable(570) %i.dg, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i117 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !1

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i117: ; preds = %.noexc120, %bb.l
  %.0.i.i.i118 = phi i8 [ %i.dk, %bb.l ], [ %i.do, %.noexc120 ]
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.da, i8 noundef signext %.0.i.i.i118)
          to label %.noexc122 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc122:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i117
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %_ZNSt6vectorIcSaIcEED2Ev.exit unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp:             ; preds = %._crit_edge, %bb.c, %bb.d, %_ZN5boost9container4test16CheckEqualVectorINS0_12basic_stringIcSt11char_traitsIcENS1_25expand_bwd_test_allocatorIcEEvEESt6vectorIcSaIcEEEEbRKT_RKT0_.exit, %_ZNSolsEPFRSoS_E.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52, %_ZNSolsEPFRSoS_E.exit56, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58, %bb.i, %.noexc99, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc101, %bb.k, %.noexc109, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i106, %.noexc111, %bb.m, %.noexc120, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i117, %.noexc122, %.invoke
  %lpad.loopexit.split-lp250 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #29
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit74

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.noexc122
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #29
  %i.dr = load ptr, ptr %0, align 8, !tbaa !184   ; 3 uses
  %.not.i.i.i63 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i63, label %_ZN5boost7movelib10unique_ptrIA_cNS0_14default_deleteIS2_EEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit
  %i.ds = load ptr, ptr %i.b, align 8, !tbaa !186
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dr to i64
  %i.dv = sub i64 %i.dt, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dv) #29
  br label %_ZN5boost7movelib10unique_ptrIA_cNS0_14default_deleteIS2_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrIA_cNS0_14default_deleteIS2_EEED2Ev.exit: ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #27
  call void @_ZdaPv(ptr noundef nonnull %i.i) #29
  br label %.critedge43

.critedge:                                        ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #29
  %i.dw = load ptr, ptr %0, align 8, !tbaa !184   ; 3 uses
  %.not.i.i.i68 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i68, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.critedge
  %i.dx = load ptr, ptr %i.b, align 8, !tbaa !186
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dw to i64
  %i.ea = sub i64 %i.dy, %i.dz
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.ea) #29
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #27
  call void @_ZdaPv(ptr noundef nonnull %i.i) #29
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %exitcond197 = icmp eq i64 %indvars.iv.next195, 3
  br i1 %exitcond197, label %.critedge43, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i, !llvm.loop !751

_ZNSt6vectorIcSaIcEED2Ev.exit74:                  ; preds = %.loopexit.split-lp.loopexit.split-lp, %.thread
  %.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp250, %.loopexit.split-lp.loopexit.split-lp ], [ %i.ai, %.thread ]
  %i.eb = load ptr, ptr %0, align 8, !tbaa !184   ; 3 uses
  %.not.i.i.i75 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i75, label %_ZN5boost7movelib10unique_ptrIA_cNS0_14default_deleteIS2_EEED2Ev.exit79, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit74
  %i.ec = load ptr, ptr %i.b, align 8, !tbaa !186
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.eb to i64
  %i.ef = sub i64 %i.ed, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.ef) #29
  br label %_ZN5boost7movelib10unique_ptrIA_cNS0_14default_deleteIS2_EEED2Ev.exit79

_ZN5boost7movelib10unique_ptrIA_cNS0_14default_deleteIS2_EEED2Ev.exit79: ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit74, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #27
  call void @_ZdaPv(ptr noundef nonnull %i.i) #29
  resume { ptr, i32 } %.pn.pn.pn

.critedge43:                                      ; preds = %bb.p, %_ZN5boost7movelib10unique_ptrIA_cNS0_14default_deleteIS2_EEED2Ev.exit
  %i.eg = phi i1 [ false, %_ZN5boost7movelib10unique_ptrIA_cNS0_14default_deleteIS2_EEED2Ev.exit ], [ true, %bb.p ]
  ret i1 %i.eg
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE6insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEESB_PKcT_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS0_3dtl17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSJ_5bool_ILb0EEESR_E4typeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr %2, ptr %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 17 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51    ; 3 uses
  %i.c = trunc i8 %i.b to i1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 19 uses
  %.not179 = icmp eq ptr %2, %3
  br i1 %.not179, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %3 to i64                   ; 12 uses
  %i.i = ptrtoint ptr %2 to i64                   ; 9 uses
  %i.j = sub i64 %i.h, %i.i                       ; 39 uses
  %i.k = lshr i8 %i.b, 1
  %i.l = zext nneg i8 %i.k to i64
  %i.m = load i64, ptr %i.a, align 8              ; 4 uses
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = select i1 %i.c, i64 %i.l, i64 %i.n       ; 17 uses
  %i.p = trunc i64 %i.m to i8
  %i.q = trunc i64 %i.m to i1                     ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = add i64 %i.s, -1
  %i.u = select i1 %i.q, i64 22, i64 %i.t         ; 3 uses
  %i.v = sub i64 %i.u, %i.o
  %i.w = select i1 %i.q, ptr %i.d, ptr %i.f       ; 20 uses
  %.not180 = icmp ult i64 %i.v, %i.j
  br i1 %.not180, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.x = lshr i64 %i.m, 1
  %i.y = and i64 %i.x, 127
  %i.z = select i1 %i.q, i64 %i.y, i64 %i.n
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !189 ; 2 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 9223372036854775807)
  %i.ac = xor i64 %i.u, -1
  %i.ad = add i64 %spec.select.i, %i.ac
  %.neg.i = sub i64 %i.j, %i.u
  %i.ae = add i64 %.neg.i, %i.z
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %_ZNK5boost9container3dtl17basic_string_baseINS0_4test25expand_bwd_test_allocatorIcEEvE12next_storageEmm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.423) #26
  unreachable

_ZNK5boost9container3dtl17basic_string_baseINS0_4test25expand_bwd_test_allocatorIcEEvE12next_storageEmm.exit: ; preds = %bb.c
  %i.ag = add i64 %i.o, %i.j                      ; 3 uses
  %i.ah = add i64 %i.ag, 1                        ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !191
  switch i8 %i.aj, label %bb.g [
    i8 0, label %bb.e
    i8 1, label %_ZN5boost9container3dtl17basic_string_baseINS0_4test25expand_bwd_test_allocatorIcEEvE18allocation_commandEjmRmRPc.exit
  ]

bb.e:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseINS0_4test25expand_bwd_test_allocatorIcEEvE12next_storageEmm.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !190 ; 2 uses
  %i.am = add i64 %i.al, %i.ah
  %i.an = icmp ugt i64 %i.am, %i.ab
  br i1 %i.an, label %bb.f, label %_ZN5boost9container3dtl17basic_string_baseINS0_4test25expand_bwd_test_allocatorIcEEvE18allocation_commandEjmRmRPc.exit.thread

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5boost9container15throw_bad_allocEv() #26
  unreachable

bb.g:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseINS0_4test25expand_bwd_test_allocatorIcEEvE12next_storageEmm.exit
  tail call void @_ZN5boost9container15throw_bad_allocEv() #26
  unreachable

_ZN5boost9container3dtl17basic_string_baseINS0_4test25expand_bwd_test_allocatorIcEEvE18allocation_commandEjmRmRPc.exit: ; preds = %_ZNK5boost9container3dtl17basic_string_baseINS0_4test25expand_bwd_test_allocatorIcEEvE12next_storageEmm.exit
  store i8 2, ptr %i.ai, align 8, !tbaa !191
  %i.ao = load ptr, ptr %0, align 8, !tbaa !188   ; 8 uses
  %i.ap = ptrtoaddr ptr %i.ao to i64
  %i.aq = icmp eq ptr %i.w, %i.ao
  br i1 %i.aq, label %bb.h, label %bb.p

_ZN5boost9container3dtl17basic_string_baseINS0_4test25expand_bwd_test_allocatorIcEEvE18allocation_commandEjmRmRPc.exit.thread: ; preds = %bb.e
  store i8 1, ptr %i.ai, align 8, !tbaa !191
  %i.ar = load ptr, ptr %0, align 8, !tbaa !188
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.al ; 2 uses
  %i.at = icmp eq ptr %i.w, %i.as
  br i1 %i.at, label %bb.h, label %.thread

bb.h:                                             ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_4test25expand_bwd_test_allocatorIcEEvE18allocation_commandEjmRmRPc.exit.thread, %_ZN5boost9container3dtl17basic_string_baseINS0_4test25expand_bwd_test_allocatorIcEEvE18allocation_commandEjmRmRPc.exit
  store i64 %i.ah, ptr %i.r, align 8, !tbaa !788
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %i.au = ptrtoint ptr %i.w to i64                ; 7 uses
  %.neg = sub i64 %i.au, %i.g
  %i.av = add i64 %.neg, %i.o                     ; 4 uses
  %.not113 = icmp ult i64 %i.av, %i.j
  br i1 %.not113, label %bb.k, label %iter.check345

iter.check345:                                    ; preds = %bb.i
  %i.aw = getelementptr i8, ptr %i.w, i64 %i.o    ; 6 uses
  %i.ax = sub i64 %i.o, %i.j
  %i.ay = getelementptr i8, ptr %i.w, i64 %i.ax   ; 5 uses
  %min.iters.check331 = icmp ult i64 %i.j, 8
  br i1 %min.iters.check331, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check332

vector.main.loop.iter.check332:                   ; preds = %iter.check345
  %min.iters.check333 = icmp ult i64 %i.j, 32
  br i1 %min.iters.check333, label %vec.epilog.ph349, label %vector.ph334

vector.ph334:                                     ; preds = %vector.main.loop.iter.check332
  %i.az = and i64 %i.j, 24
  %n.vec335 = and i64 %i.j, -32                   ; 5 uses
  %i.ba = getelementptr i8, ptr %i.aw, i64 %n.vec335
  %i.bb = getelementptr i8, ptr %i.ay, i64 %n.vec335
  br label %vector.body336

vector.body336:                                   ; preds = %vector.ph334, %vector.body336
  %index337 = phi i64 [ 0, %vector.ph334 ], [ %index.next342, %vector.body336 ] ; 3 uses
  %next.gep338 = getelementptr i8, ptr %i.aw, i64 %index337 ; 2 uses
  %next.gep339 = getelementptr i8, ptr %i.ay, i64 %index337 ; 2 uses
  %i.bc = getelementptr i8, ptr %next.gep338, i64 1
  %i.bd = getelementptr i8, ptr %next.gep339, i64 1
  %i.be = getelementptr i8, ptr %next.gep339, i64 17
  %wide.load340 = load <16 x i8>, ptr %i.bd, align 1, !tbaa !51
  %wide.load341 = load <16 x i8>, ptr %i.be, align 1, !tbaa !51
  %i.bf = getelementptr i8, ptr %next.gep338, i64 17
  store <16 x i8> %wide.load340, ptr %i.bc, align 1, !tbaa !51
  store <16 x i8> %wide.load341, ptr %i.bf, align 1, !tbaa !51
  %index.next342 = add nuw i64 %index337, 32      ; 2 uses
  %i.bg = icmp eq i64 %index.next342, %n.vec335
  br i1 %i.bg, label %middle.block343, label %vector.body336, !llvm.loop !753

middle.block343:                                  ; preds = %vector.body336
  %cmp.n344 = icmp eq i64 %i.j, %n.vec335
  br i1 %cmp.n344, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit, label %vec.epilog.iter.check346

vec.epilog.iter.check346:                         ; preds = %middle.block343
  %min.epilog.iters.check348 = icmp eq i64 %i.az, 0
  br i1 %min.epilog.iters.check348, label %.lr.ph.i.preheader, label %vec.epilog.ph349, !prof !78

vec.epilog.ph349:                                 ; preds = %vector.main.loop.iter.check332, %vec.epilog.iter.check346
  %vec.epilog.resume.val350 = phi i64 [ %n.vec335, %vec.epilog.iter.check346 ], [ 0, %vector.main.loop.iter.check332 ]
  %n.vec351 = and i64 %i.j, -8                    ; 4 uses
  %i.bh = getelementptr i8, ptr %i.aw, i64 %n.vec351
  %i.bi = getelementptr i8, ptr %i.ay, i64 %n.vec351
  br label %vec.epilog.vector.body352

vec.epilog.vector.body352:                        ; preds = %vec.epilog.vector.body352, %vec.epilog.ph349
  %index353 = phi i64 [ %vec.epilog.resume.val350, %vec.epilog.ph349 ], [ %index.next357, %vec.epilog.vector.body352 ] ; 3 uses
  %next.gep354 = getelementptr i8, ptr %i.aw, i64 %index353
  %next.gep355 = getelementptr i8, ptr %i.ay, i64 %index353
  %i.bj = getelementptr i8, ptr %next.gep354, i64 1
  %i.bk = getelementptr i8, ptr %next.gep355, i64 1
  %wide.load356 = load <8 x i8>, ptr %i.bk, align 1, !tbaa !51
  store <8 x i8> %wide.load356, ptr %i.bj, align 1, !tbaa !51
  %index.next357 = add nuw i64 %index353, 8       ; 2 uses
  %i.bl = icmp eq i64 %index.next357, %n.vec351
  br i1 %i.bl, label %vec.epilog.middle.block358, label %vec.epilog.vector.body352, !llvm.loop !754

vec.epilog.middle.block358:                       ; preds = %vec.epilog.vector.body352
  %cmp.n359 = icmp eq i64 %i.j, %n.vec351
  br i1 %cmp.n359, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check345, %vec.epilog.iter.check346, %vec.epilog.middle.block358
  %.0711.i.pn.ph = phi ptr [ %i.aw, %iter.check345 ], [ %i.ba, %vec.epilog.iter.check346 ], [ %i.bh, %vec.epilog.middle.block358 ]
  %.0810.i.pn.ph = phi ptr [ %i.ay, %iter.check345 ], [ %i.bb, %vec.epilog.iter.check346 ], [ %i.bi, %vec.epilog.middle.block358 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0711.i.pn = phi ptr [ %.0711.i, %.lr.ph.i ], [ %.0711.i.pn.ph, %.lr.ph.i.preheader ]
  %.0810.i.pn = phi ptr [ %.0810.i, %.lr.ph.i ], [ %.0810.i.pn.ph, %.lr.ph.i.preheader ]
  %.0711.i = getelementptr i8, ptr %.0711.i.pn, i64 1 ; 2 uses
  %.0810.i = getelementptr i8, ptr %.0810.i.pn, i64 1 ; 3 uses
  %i.bm = load i8, ptr %.0810.i, align 1, !tbaa !51
  store i8 %i.bm, ptr %.0711.i, align 1, !tbaa !51
  %.not.i = icmp eq ptr %.0810.i, %i.aw
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit, label %.lr.ph.i, !llvm.loop !755

_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit: ; preds = %.lr.ph.i, %vec.epilog.middle.block358, %middle.block343
  %i.bn = sub nuw i64 %i.av, %i.j
  %i.bo = add i64 %i.bn, 1                        ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %iter.check380, label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit
  %i.bq = getelementptr inbounds i8, ptr %1, i64 %i.j
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr align 1 %1, i64 %i.bo, i1 false)
  br label %iter.check380

iter.check380:                                    ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit, %bb.j
  %min.iters.check364 = icmp ult i64 %i.j, 8
  %i.br = sub i64 %i.i, %i.g
  %diff.check366 = icmp ugt i64 %i.br, -32
  %or.cond = or i1 %min.iters.check364, %diff.check366
  br i1 %or.cond, label %.lr.ph.i114.preheader, label %vector.main.loop.iter.check367

vector.main.loop.iter.check367:                   ; preds = %iter.check380
  %min.iters.check368 = icmp ult i64 %i.j, 32
  br i1 %min.iters.check368, label %vec.epilog.ph384, label %vector.ph369

vector.ph369:                                     ; preds = %vector.main.loop.iter.check367
  %i.bs = and i64 %i.j, 24
  %n.vec370 = and i64 %i.j, -32                   ; 5 uses
  %i.bt = getelementptr i8, ptr %1, i64 %n.vec370
  %i.bu = getelementptr i8, ptr %2, i64 %n.vec370
  br label %vector.body371

vector.body371:                                   ; preds = %vector.ph369, %vector.body371
  %index372 = phi i64 [ 0, %vector.ph369 ], [ %index.next377, %vector.body371 ] ; 3 uses
  %next.gep373 = getelementptr i8, ptr %1, i64 %index372 ; 2 uses
  %next.gep374 = getelementptr i8, ptr %2, i64 %index372 ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep374, i64 16
  %wide.load375 = load <16 x i8>, ptr %next.gep374, align 1, !tbaa !51
  %wide.load376 = load <16 x i8>, ptr %i.bv, align 1, !tbaa !51
  %i.bw = getelementptr i8, ptr %next.gep373, i64 16
  store <16 x i8> %wide.load375, ptr %next.gep373, align 1, !tbaa !51
  store <16 x i8> %wide.load376, ptr %i.bw, align 1, !tbaa !51
  %index.next377 = add nuw i64 %index372, 32      ; 2 uses
  %i.bx = icmp eq i64 %index.next377, %n.vec370
  br i1 %i.bx, label %middle.block378, label %vector.body371, !llvm.loop !756

middle.block378:                                  ; preds = %vector.body371
  %cmp.n379 = icmp eq i64 %i.j, %n.vec370
  br i1 %cmp.n379, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE9priv_copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEESB_EEvT_SG_T0_.exit, label %vec.epilog.iter.check381

vec.epilog.iter.check381:                         ; preds = %middle.block378
  %min.epilog.iters.check383 = icmp eq i64 %i.bs, 0
end_hunk_0
begin_hunk_1_@_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE6insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEESB_PKcT_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS0_3dtl17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSJ_5bool_ILb0EEESR_E4typeE:bb.a
  %min.epilog.iters.check453 = icmp eq i64 %i.fw, 0
  br i1 %min.epilog.iters.check453, label %.lr.ph.i121.preheader, label %vec.epilog.ph454, !prof !78

vec.epilog.ph454:                                 ; preds = %vector.main.loop.iter.check437, %vec.epilog.iter.check451
  %vec.epilog.resume.val455 = phi i64 [ %n.vec440, %vec.epilog.iter.check451 ], [ 0, %vector.main.loop.iter.check437 ]
  %n.vec456 = and i64 %i.fq, -8                   ; 4 uses
  %i.gc = getelementptr i8, ptr %i.fn, i64 %n.vec456
  %i.gd = getelementptr i8, ptr %1, i64 %n.vec456
  br label %vec.epilog.vector.body457

vec.epilog.vector.body457:                        ; preds = %vec.epilog.vector.body457, %vec.epilog.ph454
  %index458 = phi i64 [ %vec.epilog.resume.val455, %vec.epilog.ph454 ], [ %index.next462, %vec.epilog.vector.body457 ] ; 3 uses
  %next.gep459 = getelementptr i8, ptr %i.fn, i64 %index458
  %next.gep460 = getelementptr i8, ptr %1, i64 %index458
  %wide.load461 = load <8 x i8>, ptr %next.gep460, align 1, !tbaa !51
  store <8 x i8> %wide.load461, ptr %next.gep459, align 1, !tbaa !51
  %index.next462 = add nuw i64 %index458, 8       ; 2 uses
  %i.ge = icmp eq i64 %index.next462, %n.vec456
  br i1 %i.ge, label %vec.epilog.middle.block463, label %vec.epilog.vector.body457, !llvm.loop !765

vec.epilog.middle.block463:                       ; preds = %vec.epilog.vector.body457
  %cmp.n464 = icmp eq i64 %i.fq, %n.vec456
  br i1 %cmp.n464, label %iter.check485, label %.lr.ph.i121.preheader

.lr.ph.i121.preheader:                            ; preds = %iter.check450, %vector.memcheck435, %vec.epilog.iter.check451, %vec.epilog.middle.block463
  %.0711.i122.ph = phi ptr [ %i.fn, %iter.check450 ], [ %i.fn, %vector.memcheck435 ], [ %i.fx, %vec.epilog.iter.check451 ], [ %i.gc, %vec.epilog.middle.block463 ] ; 2 uses
  %.0810.i123.ph = phi ptr [ %1, %iter.check450 ], [ %1, %vector.memcheck435 ], [ %i.fy, %vec.epilog.iter.check451 ], [ %i.gd, %vec.epilog.middle.block463 ] ; 3 uses
  %i.gf = add i64 %i.o, %i.au                     ; 2 uses
  %i.gg = add i64 %i.gf, 1
  %.0810.i123.ph527 = ptrtoaddr ptr %.0810.i123.ph to i64 ; 2 uses
  %i.gh = sub i64 %i.gg, %.0810.i123.ph527
  %i.gi = sub i64 %i.gf, %.0810.i123.ph527
  %xtraiter528 = and i64 %i.gh, 7                 ; 2 uses
  %lcmp.mod529.not = icmp eq i64 %xtraiter528, 0
  br i1 %lcmp.mod529.not, label %.lr.ph.i121.prol.loopexit, label %.lr.ph.i121.prol

.lr.ph.i121.prol:                                 ; preds = %.lr.ph.i121.preheader, %.lr.ph.i121.prol
  %.0711.i122.prol = phi ptr [ %i.gk, %.lr.ph.i121.prol ], [ %.0711.i122.ph, %.lr.ph.i121.preheader ] ; 2 uses
  %.0810.i123.prol = phi ptr [ %i.gl, %.lr.ph.i121.prol ], [ %.0810.i123.ph, %.lr.ph.i121.preheader ] ; 2 uses
  %prol.iter530 = phi i64 [ %prol.iter530.next, %.lr.ph.i121.prol ], [ 0, %.lr.ph.i121.preheader ]
  %i.gj = load i8, ptr %.0810.i123.prol, align 1, !tbaa !51
  store i8 %i.gj, ptr %.0711.i122.prol, align 1, !tbaa !51
  %i.gk = getelementptr inbounds nuw i8, ptr %.0711.i122.prol, i64 1 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.0810.i123.prol, i64 1 ; 2 uses
  %prol.iter530.next = add i64 %prol.iter530, 1   ; 2 uses
  %prol.iter530.cmp.not = icmp eq i64 %prol.iter530.next, %xtraiter528
  br i1 %prol.iter530.cmp.not, label %.lr.ph.i121.prol.loopexit, label %.lr.ph.i121.prol, !llvm.loop !766

.lr.ph.i121.prol.loopexit:                        ; preds = %.lr.ph.i121.prol, %.lr.ph.i121.preheader
  %.0711.i122.unr = phi ptr [ %.0711.i122.ph, %.lr.ph.i121.preheader ], [ %i.gk, %.lr.ph.i121.prol ]
  %.0810.i123.unr = phi ptr [ %.0810.i123.ph, %.lr.ph.i121.preheader ], [ %i.gl, %.lr.ph.i121.prol ]
  %i.gm = icmp ult i64 %i.gi, 7
  br i1 %i.gm, label %iter.check485, label %.lr.ph.i121

.lr.ph.i121:                                      ; preds = %.lr.ph.i121.prol.loopexit, %.lr.ph.i121
  %.0711.i122 = phi ptr [ %i.hj, %.lr.ph.i121 ], [ %.0711.i122.unr, %.lr.ph.i121.prol.loopexit ] ; 9 uses
  %.0810.i123 = phi ptr [ %i.hk, %.lr.ph.i121 ], [ %.0810.i123.unr, %.lr.ph.i121.prol.loopexit ] ; 9 uses
  %i.gn = load i8, ptr %.0810.i123, align 1, !tbaa !51
  store i8 %i.gn, ptr %.0711.i122, align 1, !tbaa !51
  %i.go = getelementptr inbounds nuw i8, ptr %.0711.i122, i64 1
  %i.gp = getelementptr inbounds nuw i8, ptr %.0810.i123, i64 1
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !51
  store i8 %i.gq, ptr %i.go, align 1, !tbaa !51
  %i.gr = getelementptr inbounds nuw i8, ptr %.0711.i122, i64 2
  %i.gs = getelementptr inbounds nuw i8, ptr %.0810.i123, i64 2
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !51
  store i8 %i.gt, ptr %i.gr, align 1, !tbaa !51
  %i.gu = getelementptr inbounds nuw i8, ptr %.0711.i122, i64 3
  %i.gv = getelementptr inbounds nuw i8, ptr %.0810.i123, i64 3
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !51
  store i8 %i.gw, ptr %i.gu, align 1, !tbaa !51
  %i.gx = getelementptr inbounds nuw i8, ptr %.0711.i122, i64 4
  %i.gy = getelementptr inbounds nuw i8, ptr %.0810.i123, i64 4
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !51
  store i8 %i.gz, ptr %i.gx, align 1, !tbaa !51
  %i.ha = getelementptr inbounds nuw i8, ptr %.0711.i122, i64 5
  %i.hb = getelementptr inbounds nuw i8, ptr %.0810.i123, i64 5
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !51
  store i8 %i.hc, ptr %i.ha, align 1, !tbaa !51
  %i.hd = getelementptr inbounds nuw i8, ptr %.0711.i122, i64 6
  %i.he = getelementptr inbounds nuw i8, ptr %.0810.i123, i64 6
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !51
  store i8 %i.hf, ptr %i.hd, align 1, !tbaa !51
  %i.hg = getelementptr inbounds nuw i8, ptr %.0711.i122, i64 7
  %i.hh = getelementptr inbounds nuw i8, ptr %.0810.i123, i64 7 ; 2 uses
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !51
  store i8 %i.hi, ptr %i.hg, align 1, !tbaa !51
  %i.hj = getelementptr inbounds nuw i8, ptr %.0711.i122, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %.0810.i123, i64 8
  %.not.i124.7 = icmp eq ptr %i.hh, %i.dh
  br i1 %.not.i124.7, label %iter.check485, label %.lr.ph.i121, !llvm.loop !767

iter.check485:                                    ; preds = %.lr.ph.i121.prol.loopexit, %.lr.ph.i121, %middle.block448, %vec.epilog.middle.block463, %_ZN5boost9container3dtl17basic_string_baseINS0_4test25expand_bwd_test_allocatorIcEEvE9priv_sizeEm.exit
  %i.hl = add i64 %i.o, %i.au
  %i.hm = add i64 %i.hl, 1
  %i.hn = sub i64 %i.hm, %i.g                     ; 7 uses
  %min.iters.check469 = icmp ult i64 %i.hn, 8
  %i.ho = sub i64 %i.i, %i.g
  %diff.check471 = icmp ugt i64 %i.ho, -32
  %or.cond503 = or i1 %min.iters.check469, %diff.check471
  br i1 %or.cond503, label %.lr.ph.i128.preheader, label %vector.main.loop.iter.check472

vector.main.loop.iter.check472:                   ; preds = %iter.check485
  %min.iters.check473 = icmp ult i64 %i.hn, 32
  br i1 %min.iters.check473, label %vec.epilog.ph489, label %vector.ph474

vector.ph474:                                     ; preds = %vector.main.loop.iter.check472
  %i.hp = and i64 %i.hn, 24
  %n.vec475 = and i64 %i.hn, -32                  ; 5 uses
  %i.hq = getelementptr i8, ptr %1, i64 %n.vec475
  %i.hr = getelementptr i8, ptr %2, i64 %n.vec475
  br label %vector.body476

vector.body476:                                   ; preds = %vector.ph474, %vector.body476
  %index477 = phi i64 [ 0, %vector.ph474 ], [ %index.next482, %vector.body476 ] ; 3 uses
  %next.gep478 = getelementptr i8, ptr %1, i64 %index477 ; 2 uses
  %next.gep479 = getelementptr i8, ptr %2, i64 %index477 ; 2 uses
  %i.hs = getelementptr i8, ptr %next.gep479, i64 16
  %wide.load480 = load <16 x i8>, ptr %next.gep479, align 1, !tbaa !51
  %wide.load481 = load <16 x i8>, ptr %i.hs, align 1, !tbaa !51
  %i.ht = getelementptr i8, ptr %next.gep478, i64 16
  store <16 x i8> %wide.load480, ptr %next.gep478, align 1, !tbaa !51
  store <16 x i8> %wide.load481, ptr %i.ht, align 1, !tbaa !51
  %index.next482 = add nuw i64 %index477, 32      ; 2 uses
  %i.hu = icmp eq i64 %index.next482, %n.vec475
  br i1 %i.hu, label %middle.block483, label %vector.body476, !llvm.loop !768

middle.block483:                                  ; preds = %vector.body476
  %cmp.n484 = icmp eq i64 %i.hn, %n.vec475
  br i1 %cmp.n484, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE9priv_copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEESB_EEvT_SG_T0_.exit, label %vec.epilog.iter.check486

vec.epilog.iter.check486:                         ; preds = %middle.block483
  %min.epilog.iters.check488 = icmp eq i64 %i.hp, 0
  br i1 %min.epilog.iters.check488, label %.lr.ph.i128.preheader, label %vec.epilog.ph489, !prof !78

vec.epilog.ph489:                                 ; preds = %vector.main.loop.iter.check472, %vec.epilog.iter.check486
  %vec.epilog.resume.val490 = phi i64 [ %n.vec475, %vec.epilog.iter.check486 ], [ 0, %vector.main.loop.iter.check472 ]
  %n.vec491 = and i64 %i.hn, -8                   ; 4 uses
  %i.hv = getelementptr i8, ptr %1, i64 %n.vec491
  %i.hw = getelementptr i8, ptr %2, i64 %n.vec491
  br label %vec.epilog.vector.body492

vec.epilog.vector.body492:                        ; preds = %vec.epilog.vector.body492, %vec.epilog.ph489
  %index493 = phi i64 [ %vec.epilog.resume.val490, %vec.epilog.ph489 ], [ %index.next497, %vec.epilog.vector.body492 ] ; 3 uses
  %next.gep494 = getelementptr i8, ptr %1, i64 %index493
  %next.gep495 = getelementptr i8, ptr %2, i64 %index493
  %wide.load496 = load <8 x i8>, ptr %next.gep495, align 1, !tbaa !51
  store <8 x i8> %wide.load496, ptr %next.gep494, align 1, !tbaa !51
  %index.next497 = add nuw i64 %index493, 8       ; 2 uses
  %i.hx = icmp eq i64 %index.next497, %n.vec491
  br i1 %i.hx, label %vec.epilog.middle.block498, label %vec.epilog.vector.body492, !llvm.loop !769

vec.epilog.middle.block498:                       ; preds = %vec.epilog.vector.body492
  %cmp.n499 = icmp eq i64 %i.hn, %n.vec491
  br i1 %cmp.n499, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE9priv_copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEESB_EEvT_SG_T0_.exit, label %.lr.ph.i128.preheader

.lr.ph.i128.preheader:                            ; preds = %iter.check485, %vec.epilog.iter.check486, %vec.epilog.middle.block498
  %.07.i129.ph = phi ptr [ %1, %iter.check485 ], [ %i.hq, %vec.epilog.iter.check486 ], [ %i.hv, %vec.epilog.middle.block498 ]
  %.sroa.02.06.i130.ph = phi ptr [ %2, %iter.check485 ], [ %i.hr, %vec.epilog.iter.check486 ], [ %i.hw, %vec.epilog.middle.block498 ]
  br label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %.lr.ph.i128.preheader, %.lr.ph.i128
  %.07.i129 = phi ptr [ %i.ia, %.lr.ph.i128 ], [ %.07.i129.ph, %.lr.ph.i128.preheader ] ; 2 uses
  %.sroa.02.06.i130 = phi ptr [ %i.hz, %.lr.ph.i128 ], [ %.sroa.02.06.i130.ph, %.lr.ph.i128.preheader ] ; 3 uses
  %i.hy = load i8, ptr %.sroa.02.06.i130, align 1, !tbaa !51
  store i8 %i.hy, ptr %.07.i129, align 1, !tbaa !51
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i130, i64 1
  %i.ia = getelementptr inbounds nuw i8, ptr %.07.i129, i64 1
  %.not.i131 = icmp eq ptr %.sroa.02.06.i130, %i.df
  br i1 %.not.i131, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE9priv_copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEESB_EEvT_SG_T0_.exit, label %.lr.ph.i128, !llvm.loop !770

_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE9priv_copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEESB_EEvT_SG_T0_.exit: ; preds = %.lr.ph.i114.prol.loopexit, %.lr.ph.i114, %.lr.ph.i128, %middle.block378, %vec.epilog.middle.block393, %middle.block483, %vec.epilog.middle.block498
  %.0107 = add i64 %i.o, %i.j                     ; 3 uses
  %i.ib = load i8, ptr %i.a, align 8, !tbaa !51
  %i.ic = trunc i8 %i.ib to i1
  br i1 %i.ic, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE9priv_copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEESB_EEvT_SG_T0_.exit
  %i.id = trunc i64 %.0107 to i8
  %i.ie = shl i8 %i.id, 1
  %i.if = or disjoint i8 %i.ie, 1
  store i8 %i.if, ptr %i.a, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test25expand_bwd_test_allocatorIcEEvE9priv_sizeEm.exit133

bb.o:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE9priv_copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEESB_EEvT_SG_T0_.exit
  %i.ig = load i64, ptr %i.a, align 8
  %i.ih = shl i64 %.0107, 1
  %i.ii = and i64 %i.ig, 1
  %i.ij = or disjoint i64 %i.ii, %i.ih
  store i64 %i.ij, ptr %i.a, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test25expand_bwd_test_allocatorIcEEvE9priv_sizeEm.exit133

_ZN5boost9container3dtl17basic_string_baseINS0_4test25expand_bwd_test_allocatorIcEEvE9priv_sizeEm.exit133: ; preds = %bb.n, %bb.o
  %i.ik = getelementptr inbounds i8, ptr %i.w, i64 %.0107
  store i8 0, ptr %i.ik, align 1, !tbaa !51
  %.pre187 = load i8, ptr %i.a, align 8, !tbaa !51
  %.pre188 = load ptr, ptr %i.e, align 8
  br label %bb.t

bb.p:                                             ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_4test25expand_bwd_test_allocatorIcEEvE18allocation_commandEjmRmRPc.exit
  %i.il = icmp eq ptr %i.w, null
  %i.im = select i1 %i.q, i1 true, i1 %i.il
  br i1 %i.im, label %.thread, label %bb.q

.thread:                                          ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_4test25expand_bwd_test_allocatorIcEEvE18allocation_commandEjmRmRPc.exit.thread, %bb.p
  %.0.i.i.i206209 = phi ptr [ %i.ao, %bb.p ], [ %i.as, %_ZN5boost9container3dtl17basic_string_baseINS0_4test25expand_bwd_test_allocatorIcEEvE18allocation_commandEjmRmRPc.exit.thread ] ; 11 uses
  %.0.i.i.i206209227 = ptrtoaddr ptr %.0.i.i.i206209 to i64 ; 3 uses
  %i.in = ptrtoaddr ptr %i.w to i64               ; 5 uses
  %.not9.i134 = icmp eq ptr %i.w, %1
  br i1 %.not9.i134, label %iter.check279, label %iter.check244

iter.check244:                                    ; preds = %.thread
  %i.io = sub i64 %i.g, %i.in                     ; 7 uses
  %min.iters.check228 = icmp ult i64 %i.io, 8
  %i.ip = sub i64 %i.in, %.0.i.i.i206209227
  %diff.check230 = icmp ugt i64 %i.ip, -32
  %or.cond504 = or i1 %min.iters.check228, %diff.check230
  br i1 %or.cond504, label %.lr.ph.i135.preheader, label %vector.main.loop.iter.check231

vector.main.loop.iter.check231:                   ; preds = %iter.check244
  %min.iters.check232 = icmp ult i64 %i.io, 32
  br i1 %min.iters.check232, label %vec.epilog.ph248, label %vector.ph233

vector.ph233:                                     ; preds = %vector.main.loop.iter.check231
  %i.iq = and i64 %i.io, 24
  %n.vec234 = and i64 %i.io, -32                  ; 5 uses
  %i.ir = getelementptr i8, ptr %.0.i.i.i206209, i64 %n.vec234
  %i.is = getelementptr i8, ptr %i.w, i64 %n.vec234
  br label %vector.body235

vector.body235:                                   ; preds = %vector.ph233, %vector.body235
  %index236 = phi i64 [ 0, %vector.ph233 ], [ %index.next241, %vector.body235 ] ; 3 uses
  %next.gep237 = getelementptr i8, ptr %.0.i.i.i206209, i64 %index236 ; 2 uses
  %next.gep238 = getelementptr i8, ptr %i.w, i64 %index236 ; 2 uses
  %i.it = getelementptr i8, ptr %next.gep238, i64 16
  %wide.load239 = load <16 x i8>, ptr %next.gep238, align 1, !tbaa !51
  %wide.load240 = load <16 x i8>, ptr %i.it, align 1, !tbaa !51
  %i.iu = getelementptr i8, ptr %next.gep237, i64 16
  store <16 x i8> %wide.load239, ptr %next.gep237, align 1, !tbaa !51
  store <16 x i8> %wide.load240, ptr %i.iu, align 1, !tbaa !51
  %index.next241 = add nuw i64 %index236, 32      ; 2 uses
  %i.iv = icmp eq i64 %index.next241, %n.vec234
  br i1 %i.iv, label %middle.block242, label %vector.body235, !llvm.loop !771

middle.block242:                                  ; preds = %vector.body235
  %cmp.n243 = icmp eq i64 %i.io, %n.vec234
  br i1 %cmp.n243, label %._crit_edge.loopexit.i139, label %vec.epilog.iter.check245

vec.epilog.iter.check245:                         ; preds = %middle.block242
  %min.epilog.iters.check247 = icmp eq i64 %i.iq, 0
  br i1 %min.epilog.iters.check247, label %.lr.ph.i135.preheader, label %vec.epilog.ph248, !prof !78

vec.epilog.ph248:                                 ; preds = %vector.main.loop.iter.check231, %vec.epilog.iter.check245
  %vec.epilog.resume.val249 = phi i64 [ %n.vec234, %vec.epilog.iter.check245 ], [ 0, %vector.main.loop.iter.check231 ]
  %n.vec250 = and i64 %i.io, -8                   ; 4 uses
  %i.iw = getelementptr i8, ptr %.0.i.i.i206209, i64 %n.vec250
  %i.ix = getelementptr i8, ptr %i.w, i64 %n.vec250
  br label %vec.epilog.vector.body251

vec.epilog.vector.body251:                        ; preds = %vec.epilog.vector.body251, %vec.epilog.ph248
  %index252 = phi i64 [ %vec.epilog.resume.val249, %vec.epilog.ph248 ], [ %index.next256, %vec.epilog.vector.body251 ] ; 3 uses
  %next.gep253 = getelementptr i8, ptr %.0.i.i.i206209, i64 %index252
  %next.gep254 = getelementptr i8, ptr %i.w, i64 %index252
  %wide.load255 = load <8 x i8>, ptr %next.gep254, align 1, !tbaa !51
  store <8 x i8> %wide.load255, ptr %next.gep253, align 1, !tbaa !51
  %index.next256 = add nuw i64 %index252, 8       ; 2 uses
  %i.iy = icmp eq i64 %index.next256, %n.vec250
  br i1 %i.iy, label %vec.epilog.middle.block257, label %vec.epilog.vector.body251, !llvm.loop !772

vec.epilog.middle.block257:                       ; preds = %vec.epilog.vector.body251
  %cmp.n258 = icmp eq i64 %i.io, %n.vec250
  br i1 %cmp.n258, label %._crit_edge.loopexit.i139, label %.lr.ph.i135.preheader

.lr.ph.i135.preheader:                            ; preds = %iter.check244, %vec.epilog.iter.check245, %vec.epilog.middle.block257
  %.0711.i136.ph = phi ptr [ %.0.i.i.i206209, %iter.check244 ], [ %i.ir, %vec.epilog.iter.check245 ], [ %i.iw, %vec.epilog.middle.block257 ] ; 2 uses
  %.0810.i137.ph = phi ptr [ %i.w, %iter.check244 ], [ %i.is, %vec.epilog.iter.check245 ], [ %i.ix, %vec.epilog.middle.block257 ] ; 3 uses
  %.0810.i137.ph507 = ptrtoaddr ptr %.0810.i137.ph to i64 ; 2 uses
  %i.iz = sub i64 %i.g, %.0810.i137.ph507
  %xtraiter508 = and i64 %i.iz, 7                 ; 2 uses
  %lcmp.mod509.not = icmp eq i64 %xtraiter508, 0
  br i1 %lcmp.mod509.not, label %.lr.ph.i135.prol.loopexit, label %.lr.ph.i135.prol

.lr.ph.i135.prol:                                 ; preds = %.lr.ph.i135.preheader, %.lr.ph.i135.prol
  %.0711.i136.prol = phi ptr [ %i.jb, %.lr.ph.i135.prol ], [ %.0711.i136.ph, %.lr.ph.i135.preheader ] ; 2 uses
  %.0810.i137.prol = phi ptr [ %i.jc, %.lr.ph.i135.prol ], [ %.0810.i137.ph, %.lr.ph.i135.preheader ] ; 2 uses
  %prol.iter510 = phi i64 [ %prol.iter510.next, %.lr.ph.i135.prol ], [ 0, %.lr.ph.i135.preheader ]
  %i.ja = load i8, ptr %.0810.i137.prol, align 1, !tbaa !51
  store i8 %i.ja, ptr %.0711.i136.prol, align 1, !tbaa !51
  %i.jb = getelementptr inbounds nuw i8, ptr %.0711.i136.prol, i64 1 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.0810.i137.prol, i64 1 ; 2 uses
  %prol.iter510.next = add i64 %prol.iter510, 1   ; 2 uses
  %prol.iter510.cmp.not = icmp eq i64 %prol.iter510.next, %xtraiter508
  br i1 %prol.iter510.cmp.not, label %.lr.ph.i135.prol.loopexit, label %.lr.ph.i135.prol, !llvm.loop !773

.lr.ph.i135.prol.loopexit:                        ; preds = %.lr.ph.i135.prol, %.lr.ph.i135.preheader
  %.0711.i136.unr = phi ptr [ %.0711.i136.ph, %.lr.ph.i135.preheader ], [ %i.jb, %.lr.ph.i135.prol ]
  %.0810.i137.unr = phi ptr [ %.0810.i137.ph, %.lr.ph.i135.preheader ], [ %i.jc, %.lr.ph.i135.prol ]
  %i.jd = sub i64 %.0810.i137.ph507, %i.g
  %i.je = icmp ugt i64 %i.jd, -8
  br i1 %i.je, label %._crit_edge.loopexit.i139, label %.lr.ph.i135

.lr.ph.i135:                                      ; preds = %.lr.ph.i135.prol.loopexit, %.lr.ph.i135
  %.0711.i136 = phi ptr [ %i.kb, %.lr.ph.i135 ], [ %.0711.i136.unr, %.lr.ph.i135.prol.loopexit ] ; 9 uses
  %.0810.i137 = phi ptr [ %i.kc, %.lr.ph.i135 ], [ %.0810.i137.unr, %.lr.ph.i135.prol.loopexit ] ; 9 uses
  %i.jf = load i8, ptr %.0810.i137, align 1, !tbaa !51
  store i8 %i.jf, ptr %.0711.i136, align 1, !tbaa !51
  %i.jg = getelementptr inbounds nuw i8, ptr %.0711.i136, i64 1
  %i.jh = getelementptr inbounds nuw i8, ptr %.0810.i137, i64 1
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !51
  store i8 %i.ji, ptr %i.jg, align 1, !tbaa !51
  %i.jj = getelementptr inbounds nuw i8, ptr %.0711.i136, i64 2
  %i.jk = getelementptr inbounds nuw i8, ptr %.0810.i137, i64 2
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !51
  store i8 %i.jl, ptr %i.jj, align 1, !tbaa !51
  %i.jm = getelementptr inbounds nuw i8, ptr %.0711.i136, i64 3
  %i.jn = getelementptr inbounds nuw i8, ptr %.0810.i137, i64 3
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !51
  store i8 %i.jo, ptr %i.jm, align 1, !tbaa !51
  %i.jp = getelementptr inbounds nuw i8, ptr %.0711.i136, i64 4
  %i.jq = getelementptr inbounds nuw i8, ptr %.0810.i137, i64 4
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !51
  store i8 %i.jr, ptr %i.jp, align 1, !tbaa !51
  %i.js = getelementptr inbounds nuw i8, ptr %.0711.i136, i64 5
  %i.jt = getelementptr inbounds nuw i8, ptr %.0810.i137, i64 5
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !51
  store i8 %i.ju, ptr %i.js, align 1, !tbaa !51
  %i.jv = getelementptr inbounds nuw i8, ptr %.0711.i136, i64 6
  %i.jw = getelementptr inbounds nuw i8, ptr %.0810.i137, i64 6
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !51
  store i8 %i.jx, ptr %i.jv, align 1, !tbaa !51
  %i.jy = getelementptr inbounds nuw i8, ptr %.0711.i136, i64 7
  %i.jz = getelementptr inbounds nuw i8, ptr %.0810.i137, i64 7
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !51
  store i8 %i.ka, ptr %i.jy, align 1, !tbaa !51
  %i.kb = getelementptr inbounds nuw i8, ptr %.0711.i136, i64 8
  %i.kc = getelementptr inbounds nuw i8, ptr %.0810.i137, i64 8 ; 2 uses
  %.not.i138.7 = icmp eq ptr %i.kc, %1
  br i1 %.not.i138.7, label %._crit_edge.loopexit.i139, label %.lr.ph.i135, !llvm.loop !774

._crit_edge.loopexit.i139:                        ; preds = %.lr.ph.i135.prol.loopexit, %.lr.ph.i135, %vec.epilog.middle.block257, %middle.block242
  %i.kd = sub i64 %i.g, %i.in
  br label %iter.check279

iter.check279:                                    ; preds = %.thread, %._crit_edge.loopexit.i139
  %.0.lcssa.i140 = phi i64 [ 0, %.thread ], [ %i.kd, %._crit_edge.loopexit.i139 ] ; 4 uses
  %i.ke = getelementptr inbounds i8, ptr %.0.i.i.i206209, i64 %.0.lcssa.i140 ; 6 uses
  %min.iters.check263 = icmp ult i64 %i.j, 8
  br i1 %min.iters.check263, label %.lr.ph.i143.preheader, label %vector.memcheck264

vector.memcheck264:                               ; preds = %iter.check279
  %i.kf = add i64 %.0.lcssa.i140, %.0.i.i.i206209227
  %i.kg = sub i64 %i.i, %i.kf
  %diff.check265 = icmp ugt i64 %i.kg, -32
  br i1 %diff.check265, label %.lr.ph.i143.preheader, label %vector.main.loop.iter.check266

vector.main.loop.iter.check266:                   ; preds = %vector.memcheck264
  %min.iters.check267 = icmp ult i64 %i.j, 32
  br i1 %min.iters.check267, label %vec.epilog.ph283, label %vector.ph268

vector.ph268:                                     ; preds = %vector.main.loop.iter.check266
  %i.kh = and i64 %i.j, 24
  %n.vec269 = and i64 %i.j, -32                   ; 5 uses
  %i.ki = getelementptr i8, ptr %i.ke, i64 %n.vec269
  %i.kj = getelementptr i8, ptr %2, i64 %n.vec269
  br label %vector.body270

vector.body270:                                   ; preds = %vector.ph268, %vector.body270
  %index271 = phi i64 [ 0, %vector.ph268 ], [ %index.next276, %vector.body270 ] ; 3 uses
  %next.gep272 = getelementptr i8, ptr %i.ke, i64 %index271 ; 2 uses
  %next.gep273 = getelementptr i8, ptr %2, i64 %index271 ; 2 uses
  %i.kk = getelementptr i8, ptr %next.gep273, i64 16
  %wide.load274 = load <16 x i8>, ptr %next.gep273, align 1, !tbaa !51
  %wide.load275 = load <16 x i8>, ptr %i.kk, align 1, !tbaa !51
  %i.kl = getelementptr i8, ptr %next.gep272, i64 16
  store <16 x i8> %wide.load274, ptr %next.gep272, align 1, !tbaa !51
  store <16 x i8> %wide.load275, ptr %i.kl, align 1, !tbaa !51
  %index.next276 = add nuw i64 %index271, 32      ; 2 uses
  %i.km = icmp eq i64 %index.next276, %n.vec269
  br i1 %i.km, label %middle.block277, label %vector.body270, !llvm.loop !775

middle.block277:                                  ; preds = %vector.body270
  %cmp.n278 = icmp eq i64 %i.j, %n.vec269
  br i1 %cmp.n278, label %._crit_edge.loopexit.i147, label %vec.epilog.iter.check280

vec.epilog.iter.check280:                         ; preds = %middle.block277
  %min.epilog.iters.check282 = icmp eq i64 %i.kh, 0
  br i1 %min.epilog.iters.check282, label %.lr.ph.i143.preheader, label %vec.epilog.ph283, !prof !78

vec.epilog.ph283:                                 ; preds = %vector.main.loop.iter.check266, %vec.epilog.iter.check280
  %vec.epilog.resume.val284 = phi i64 [ %n.vec269, %vec.epilog.iter.check280 ], [ 0, %vector.main.loop.iter.check266 ]
  %n.vec285 = and i64 %i.j, -8                    ; 4 uses
  %i.kn = getelementptr i8, ptr %i.ke, i64 %n.vec285
  %i.ko = getelementptr i8, ptr %2, i64 %n.vec285
  br label %vec.epilog.vector.body286

vec.epilog.vector.body286:                        ; preds = %vec.epilog.vector.body286, %vec.epilog.ph283
  %index287 = phi i64 [ %vec.epilog.resume.val284, %vec.epilog.ph283 ], [ %index.next291, %vec.epilog.vector.body286 ] ; 3 uses
  %next.gep288 = getelementptr i8, ptr %i.ke, i64 %index287
  %next.gep289 = getelementptr i8, ptr %2, i64 %index287
  %wide.load290 = load <8 x i8>, ptr %next.gep289, align 1, !tbaa !51
  store <8 x i8> %wide.load290, ptr %next.gep288, align 1, !tbaa !51
end_hunk_1
begin_hunk_2_@_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE6insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEESB_PKcT_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS0_3dtl17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSJ_5bool_ILb0EEESR_E4typeE:bb.a
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i145, i64 2
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !51
  store i8 %i.lc, ptr %i.la, align 1, !tbaa !51
  %i.ld = getelementptr inbounds nuw i8, ptr %.039.i144, i64 3
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i145, i64 3
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !51
  store i8 %i.lf, ptr %i.ld, align 1, !tbaa !51
  %i.lg = getelementptr inbounds nuw i8, ptr %.039.i144, i64 4
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i145, i64 4
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !51
  store i8 %i.li, ptr %i.lg, align 1, !tbaa !51
  %i.lj = getelementptr inbounds nuw i8, ptr %.039.i144, i64 5
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i145, i64 5
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !51
  store i8 %i.ll, ptr %i.lj, align 1, !tbaa !51
  %i.lm = getelementptr inbounds nuw i8, ptr %.039.i144, i64 6
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i145, i64 6
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !51
  store i8 %i.lo, ptr %i.lm, align 1, !tbaa !51
  %i.lp = getelementptr inbounds nuw i8, ptr %.039.i144, i64 7
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i145, i64 7
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !51
  store i8 %i.lr, ptr %i.lp, align 1, !tbaa !51
  %i.ls = getelementptr inbounds nuw i8, ptr %.039.i144, i64 8
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i145, i64 8 ; 2 uses
  %.not.i146.7 = icmp eq ptr %i.lt, %3
  br i1 %.not.i146.7, label %._crit_edge.loopexit.i147, label %.lr.ph.i143, !llvm.loop !778

._crit_edge.loopexit.i147:                        ; preds = %.lr.ph.i143.prol.loopexit, %.lr.ph.i143, %vec.epilog.middle.block292, %middle.block277
  %i.lu = add i64 %.0.lcssa.i140, %i.j            ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o ; 3 uses
  %i.lw = ptrtoaddr ptr %i.lv to i64
  %.not9.i150 = icmp eq ptr %1, %i.lv
  br i1 %.not9.i150, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE23priv_uninitialized_copyIPKcPcEEmT_SC_T0_.exit157, label %iter.check314

iter.check314:                                    ; preds = %._crit_edge.loopexit.i147
  %i.lx = getelementptr inbounds i8, ptr %.0.i.i.i206209, i64 %i.lu ; 6 uses
  %i.ly = add i64 %i.o, %i.in
  %i.lz = sub i64 %i.ly, %i.g                     ; 7 uses
  %min.iters.check298 = icmp ult i64 %i.lz, 8
  br i1 %min.iters.check298, label %.lr.ph.i151.preheader, label %vector.memcheck299

vector.memcheck299:                               ; preds = %iter.check314
  %i.ma = add i64 %.0.lcssa.i140, %.0.i.i.i206209227
  %i.mb = add i64 %i.ma, %i.h
  %i.mc = add i64 %i.i, %i.g
  %i.md = sub i64 %i.mc, %i.mb
  %diff.check300 = icmp ugt i64 %i.md, -32
  br i1 %diff.check300, label %.lr.ph.i151.preheader, label %vector.main.loop.iter.check301

vector.main.loop.iter.check301:                   ; preds = %vector.memcheck299
  %min.iters.check302 = icmp ult i64 %i.lz, 32
  br i1 %min.iters.check302, label %vec.epilog.ph318, label %vector.ph303

vector.ph303:                                     ; preds = %vector.main.loop.iter.check301
  %i.me = and i64 %i.lz, 24
  %n.vec304 = and i64 %i.lz, -32                  ; 5 uses
  %i.mf = getelementptr i8, ptr %i.lx, i64 %n.vec304
  %i.mg = getelementptr i8, ptr %1, i64 %n.vec304
  br label %vector.body305

vector.body305:                                   ; preds = %vector.ph303, %vector.body305
  %index306 = phi i64 [ 0, %vector.ph303 ], [ %index.next311, %vector.body305 ] ; 3 uses
  %next.gep307 = getelementptr i8, ptr %i.lx, i64 %index306 ; 2 uses
  %next.gep308 = getelementptr i8, ptr %1, i64 %index306 ; 2 uses
  %i.mh = getelementptr i8, ptr %next.gep308, i64 16
  %wide.load309 = load <16 x i8>, ptr %next.gep308, align 1, !tbaa !51
  %wide.load310 = load <16 x i8>, ptr %i.mh, align 1, !tbaa !51
  %i.mi = getelementptr i8, ptr %next.gep307, i64 16
  store <16 x i8> %wide.load309, ptr %next.gep307, align 1, !tbaa !51
  store <16 x i8> %wide.load310, ptr %i.mi, align 1, !tbaa !51
  %index.next311 = add nuw i64 %index306, 32      ; 2 uses
  %i.mj = icmp eq i64 %index.next311, %n.vec304
  br i1 %i.mj, label %middle.block312, label %vector.body305, !llvm.loop !779

middle.block312:                                  ; preds = %vector.body305
  %cmp.n313 = icmp eq i64 %i.lz, %n.vec304
  br i1 %cmp.n313, label %._crit_edge.loopexit.i155, label %vec.epilog.iter.check315

vec.epilog.iter.check315:                         ; preds = %middle.block312
  %min.epilog.iters.check317 = icmp eq i64 %i.me, 0
  br i1 %min.epilog.iters.check317, label %.lr.ph.i151.preheader, label %vec.epilog.ph318, !prof !78

vec.epilog.ph318:                                 ; preds = %vector.main.loop.iter.check301, %vec.epilog.iter.check315
  %vec.epilog.resume.val319 = phi i64 [ %n.vec304, %vec.epilog.iter.check315 ], [ 0, %vector.main.loop.iter.check301 ]
  %n.vec320 = and i64 %i.lz, -8                   ; 4 uses
  %i.mk = getelementptr i8, ptr %i.lx, i64 %n.vec320
  %i.ml = getelementptr i8, ptr %1, i64 %n.vec320
  br label %vec.epilog.vector.body321

vec.epilog.vector.body321:                        ; preds = %vec.epilog.vector.body321, %vec.epilog.ph318
  %index322 = phi i64 [ %vec.epilog.resume.val319, %vec.epilog.ph318 ], [ %index.next326, %vec.epilog.vector.body321 ] ; 3 uses
  %next.gep323 = getelementptr i8, ptr %i.lx, i64 %index322
  %next.gep324 = getelementptr i8, ptr %1, i64 %index322
  %wide.load325 = load <8 x i8>, ptr %next.gep324, align 1, !tbaa !51
  store <8 x i8> %wide.load325, ptr %next.gep323, align 1, !tbaa !51
  %index.next326 = add nuw i64 %index322, 8       ; 2 uses
  %i.mm = icmp eq i64 %index.next326, %n.vec320
  br i1 %i.mm, label %vec.epilog.middle.block327, label %vec.epilog.vector.body321, !llvm.loop !780

vec.epilog.middle.block327:                       ; preds = %vec.epilog.vector.body321
  %cmp.n328 = icmp eq i64 %i.lz, %n.vec320
  br i1 %cmp.n328, label %._crit_edge.loopexit.i155, label %.lr.ph.i151.preheader

.lr.ph.i151.preheader:                            ; preds = %iter.check314, %vector.memcheck299, %vec.epilog.iter.check315, %vec.epilog.middle.block327
  %.0711.i152.ph = phi ptr [ %i.lx, %iter.check314 ], [ %i.lx, %vector.memcheck299 ], [ %i.mf, %vec.epilog.iter.check315 ], [ %i.mk, %vec.epilog.middle.block327 ] ; 2 uses
  %.0810.i153.ph = phi ptr [ %1, %iter.check314 ], [ %1, %vector.memcheck299 ], [ %i.mg, %vec.epilog.iter.check315 ], [ %i.ml, %vec.epilog.middle.block327 ] ; 3 uses
  %i.mn = add i64 %i.o, %i.in                     ; 2 uses
  %.0810.i153.ph515 = ptrtoaddr ptr %.0810.i153.ph to i64 ; 2 uses
  %i.mo = sub i64 %i.mn, %.0810.i153.ph515
  %xtraiter516 = and i64 %i.mo, 7                 ; 2 uses
  %lcmp.mod517.not = icmp eq i64 %xtraiter516, 0
  br i1 %lcmp.mod517.not, label %.lr.ph.i151.prol.loopexit, label %.lr.ph.i151.prol

.lr.ph.i151.prol:                                 ; preds = %.lr.ph.i151.preheader, %.lr.ph.i151.prol
  %.0711.i152.prol = phi ptr [ %i.mq, %.lr.ph.i151.prol ], [ %.0711.i152.ph, %.lr.ph.i151.preheader ] ; 2 uses
  %.0810.i153.prol = phi ptr [ %i.mr, %.lr.ph.i151.prol ], [ %.0810.i153.ph, %.lr.ph.i151.preheader ] ; 2 uses
  %prol.iter518 = phi i64 [ %prol.iter518.next, %.lr.ph.i151.prol ], [ 0, %.lr.ph.i151.preheader ]
  %i.mp = load i8, ptr %.0810.i153.prol, align 1, !tbaa !51
  store i8 %i.mp, ptr %.0711.i152.prol, align 1, !tbaa !51
  %i.mq = getelementptr inbounds nuw i8, ptr %.0711.i152.prol, i64 1 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.0810.i153.prol, i64 1 ; 2 uses
  %prol.iter518.next = add i64 %prol.iter518, 1   ; 2 uses
  %prol.iter518.cmp.not = icmp eq i64 %prol.iter518.next, %xtraiter516
  br i1 %prol.iter518.cmp.not, label %.lr.ph.i151.prol.loopexit, label %.lr.ph.i151.prol, !llvm.loop !781

.lr.ph.i151.prol.loopexit:                        ; preds = %.lr.ph.i151.prol, %.lr.ph.i151.preheader
  %.0711.i152.unr = phi ptr [ %.0711.i152.ph, %.lr.ph.i151.preheader ], [ %i.mq, %.lr.ph.i151.prol ]
  %.0810.i153.unr = phi ptr [ %.0810.i153.ph, %.lr.ph.i151.preheader ], [ %i.mr, %.lr.ph.i151.prol ]
  %i.ms = sub i64 %.0810.i153.ph515, %i.mn
  %i.mt = icmp ugt i64 %i.ms, -8
  br i1 %i.mt, label %._crit_edge.loopexit.i155, label %.lr.ph.i151

.lr.ph.i151:                                      ; preds = %.lr.ph.i151.prol.loopexit, %.lr.ph.i151
  %.0711.i152 = phi ptr [ %i.nq, %.lr.ph.i151 ], [ %.0711.i152.unr, %.lr.ph.i151.prol.loopexit ] ; 9 uses
  %.0810.i153 = phi ptr [ %i.nr, %.lr.ph.i151 ], [ %.0810.i153.unr, %.lr.ph.i151.prol.loopexit ] ; 9 uses
  %i.mu = load i8, ptr %.0810.i153, align 1, !tbaa !51
  store i8 %i.mu, ptr %.0711.i152, align 1, !tbaa !51
  %i.mv = getelementptr inbounds nuw i8, ptr %.0711.i152, i64 1
  %i.mw = getelementptr inbounds nuw i8, ptr %.0810.i153, i64 1
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !51
  store i8 %i.mx, ptr %i.mv, align 1, !tbaa !51
  %i.my = getelementptr inbounds nuw i8, ptr %.0711.i152, i64 2
  %i.mz = getelementptr inbounds nuw i8, ptr %.0810.i153, i64 2
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !51
  store i8 %i.na, ptr %i.my, align 1, !tbaa !51
  %i.nb = getelementptr inbounds nuw i8, ptr %.0711.i152, i64 3
  %i.nc = getelementptr inbounds nuw i8, ptr %.0810.i153, i64 3
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !51
  store i8 %i.nd, ptr %i.nb, align 1, !tbaa !51
  %i.ne = getelementptr inbounds nuw i8, ptr %.0711.i152, i64 4
  %i.nf = getelementptr inbounds nuw i8, ptr %.0810.i153, i64 4
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !51
  store i8 %i.ng, ptr %i.ne, align 1, !tbaa !51
  %i.nh = getelementptr inbounds nuw i8, ptr %.0711.i152, i64 5
  %i.ni = getelementptr inbounds nuw i8, ptr %.0810.i153, i64 5
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !51
  store i8 %i.nj, ptr %i.nh, align 1, !tbaa !51
  %i.nk = getelementptr inbounds nuw i8, ptr %.0711.i152, i64 6
  %i.nl = getelementptr inbounds nuw i8, ptr %.0810.i153, i64 6
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !51
  store i8 %i.nm, ptr %i.nk, align 1, !tbaa !51
  %i.nn = getelementptr inbounds nuw i8, ptr %.0711.i152, i64 7
  %i.no = getelementptr inbounds nuw i8, ptr %.0810.i153, i64 7
  %i.np = load i8, ptr %i.no, align 1, !tbaa !51
  store i8 %i.np, ptr %i.nn, align 1, !tbaa !51
  %i.nq = getelementptr inbounds nuw i8, ptr %.0711.i152, i64 8
  %i.nr = getelementptr inbounds nuw i8, ptr %.0810.i153, i64 8 ; 2 uses
  %.not.i154.7 = icmp eq ptr %i.nr, %i.lv
  br i1 %.not.i154.7, label %._crit_edge.loopexit.i155, label %.lr.ph.i151, !llvm.loop !782

._crit_edge.loopexit.i155:                        ; preds = %.lr.ph.i151.prol.loopexit, %.lr.ph.i151, %vec.epilog.middle.block327, %middle.block312
  %i.ns = sub i64 %i.lw, %i.g
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE23priv_uninitialized_copyIPKcPcEEmT_SC_T0_.exit157

_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE23priv_uninitialized_copyIPKcPcEEmT_SC_T0_.exit157: ; preds = %._crit_edge.loopexit.i147, %._crit_edge.loopexit.i155
  %.0.lcssa.i156 = phi i64 [ 0, %._crit_edge.loopexit.i147 ], [ %i.ns, %._crit_edge.loopexit.i155 ]
  %i.nt = add i64 %.0.lcssa.i156, %i.lu           ; 2 uses
  %i.nu = getelementptr inbounds i8, ptr %.0.i.i.i206209, i64 %i.nt
  store i8 0, ptr %i.nu, align 1, !tbaa !51
  %i.nv = load i8, ptr %i.a, align 8, !tbaa !51
  %i.nw = trunc i8 %i.nv to i1
  %.pre185 = load i64, ptr %i.a, align 8
  store ptr %.0.i.i.i206209, ptr %i.e, align 8, !tbaa !789
  %i.nx = shl i64 %i.nt, 1
  %i.ny = and i64 %.pre185, 1
  %i.nz = select i1 %i.nw, i64 0, i64 %i.ny
  %i.oa = or disjoint i64 %i.nz, %i.nx            ; 2 uses
  store i64 %i.oa, ptr %i.a, align 8
  store i64 %i.ah, ptr %i.r, align 8, !tbaa !788
  %i.ob = trunc i64 %i.oa to i8
  br label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.oc = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.od = sub i64 %i.g, %i.oc                     ; 4 uses
  %i.oe = icmp eq ptr %1, %i.w
  br i1 %i.oe, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit158, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ao, ptr nonnull align 1 %i.w, i64 %i.od, i1 false)
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit158

_ZNSt11char_traitsIcE4moveEPcPKcm.exit158:        ; preds = %bb.q, %bb.r
  %i.of = getelementptr i8, ptr %i.ao, i64 %i.od  ; 7 uses
  %i.og = icmp eq i64 %i.o, %i.od
  br i1 %i.og, label %iter.check, label %bb.s

bb.s:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit158
  %i.oh = sub i64 %i.o, %i.od
  %i.oi = getelementptr i8, ptr %i.of, i64 %i.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.oi, ptr align 1 %1, i64 %i.oh, i1 false)
  br label %iter.check

iter.check:                                       ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit158, %bb.s
  %min.iters.check = icmp ult i64 %i.j, 8
  br i1 %min.iters.check, label %.lr.ph.i161.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.oj = add i64 %i.ap, %i.g
  %i.ok = add i64 %i.oc, %i.i
  %i.ol = sub i64 %i.ok, %i.oj
  %diff.check = icmp ugt i64 %i.ol, -32
  br i1 %diff.check, label %.lr.ph.i161.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check213 = icmp ult i64 %i.j, 32
  br i1 %min.iters.check213, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.om = and i64 %i.j, 24
  %n.vec = and i64 %i.j, -32                      ; 5 uses
  %i.on = getelementptr i8, ptr %i.of, i64 %n.vec
  %i.oo = getelementptr i8, ptr %2, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.of, i64 %index ; 2 uses
  %next.gep214 = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %i.op = getelementptr i8, ptr %next.gep214, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep214, align 1, !tbaa !51
  %wide.load215 = load <16 x i8>, ptr %i.op, align 1, !tbaa !51
  %i.oq = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !51
  store <16 x i8> %wide.load215, ptr %i.oq, align 1, !tbaa !51
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.or = icmp eq i64 %index.next, %n.vec
  br i1 %i.or, label %middle.block, label %vector.body, !llvm.loop !783

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEESB_EEmT_SG_T0_.exit167, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.om, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i161.preheader, label %vec.epilog.ph, !prof !78

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec216 = and i64 %i.j, -8                    ; 4 uses
  %i.os = getelementptr i8, ptr %i.of, i64 %n.vec216
  %i.ot = getelementptr i8, ptr %2, i64 %n.vec216
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index217 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next221, %vec.epilog.vector.body ] ; 3 uses
  %next.gep218 = getelementptr i8, ptr %i.of, i64 %index217
  %next.gep219 = getelementptr i8, ptr %2, i64 %index217
  %wide.load220 = load <8 x i8>, ptr %next.gep219, align 1, !tbaa !51
  store <8 x i8> %wide.load220, ptr %next.gep218, align 1, !tbaa !51
  %index.next221 = add nuw i64 %index217, 8       ; 2 uses
  %i.ou = icmp eq i64 %index.next221, %n.vec216
  br i1 %i.ou, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !784

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n222 = icmp eq i64 %i.j, %n.vec216
  br i1 %cmp.n222, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEESB_EEmT_SG_T0_.exit167, label %.lr.ph.i161.preheader

.lr.ph.i161.preheader:                            ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.039.i162.ph = phi ptr [ %i.of, %iter.check ], [ %i.of, %vector.memcheck ], [ %i.on, %vec.epilog.iter.check ], [ %i.os, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.04.08.i163.ph = phi ptr [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.oo, %vec.epilog.iter.check ], [ %i.ot, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.04.08.i163.ph506 = ptrtoaddr ptr %.sroa.04.08.i163.ph to i64 ; 2 uses
  %i.ov = sub i64 %i.h, %.sroa.04.08.i163.ph506
  %xtraiter = and i64 %i.ov, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i161.prol.loopexit, label %.lr.ph.i161.prol

.lr.ph.i161.prol:                                 ; preds = %.lr.ph.i161.preheader, %.lr.ph.i161.prol
  %.039.i162.prol = phi ptr [ %i.ox, %.lr.ph.i161.prol ], [ %.039.i162.ph, %.lr.ph.i161.preheader ] ; 2 uses
  %.sroa.04.08.i163.prol = phi ptr [ %i.oy, %.lr.ph.i161.prol ], [ %.sroa.04.08.i163.ph, %.lr.ph.i161.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i161.prol ], [ 0, %.lr.ph.i161.preheader ]
  %i.ow = load i8, ptr %.sroa.04.08.i163.prol, align 1, !tbaa !51
  store i8 %i.ow, ptr %.039.i162.prol, align 1, !tbaa !51
  %i.ox = getelementptr inbounds nuw i8, ptr %.039.i162.prol, i64 1 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i163.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i161.prol.loopexit, label %.lr.ph.i161.prol, !llvm.loop !785

.lr.ph.i161.prol.loopexit:                        ; preds = %.lr.ph.i161.prol, %.lr.ph.i161.preheader
  %.039.i162.unr = phi ptr [ %.039.i162.ph, %.lr.ph.i161.preheader ], [ %i.ox, %.lr.ph.i161.prol ]
  %.sroa.04.08.i163.unr = phi ptr [ %.sroa.04.08.i163.ph, %.lr.ph.i161.preheader ], [ %i.oy, %.lr.ph.i161.prol ]
  %i.oz = sub i64 %.sroa.04.08.i163.ph506, %i.h
  %i.pa = icmp ugt i64 %i.oz, -8
  br i1 %i.pa, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEESB_EEmT_SG_T0_.exit167, label %.lr.ph.i161

.lr.ph.i161:                                      ; preds = %.lr.ph.i161.prol.loopexit, %.lr.ph.i161
  %.039.i162 = phi ptr [ %i.px, %.lr.ph.i161 ], [ %.039.i162.unr, %.lr.ph.i161.prol.loopexit ] ; 9 uses
  %.sroa.04.08.i163 = phi ptr [ %i.py, %.lr.ph.i161 ], [ %.sroa.04.08.i163.unr, %.lr.ph.i161.prol.loopexit ] ; 9 uses
  %i.pb = load i8, ptr %.sroa.04.08.i163, align 1, !tbaa !51
  store i8 %i.pb, ptr %.039.i162, align 1, !tbaa !51
  %i.pc = getelementptr inbounds nuw i8, ptr %.039.i162, i64 1
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i163, i64 1
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !51
  store i8 %i.pe, ptr %i.pc, align 1, !tbaa !51
  %i.pf = getelementptr inbounds nuw i8, ptr %.039.i162, i64 2
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i163, i64 2
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !51
  store i8 %i.ph, ptr %i.pf, align 1, !tbaa !51
  %i.pi = getelementptr inbounds nuw i8, ptr %.039.i162, i64 3
  %i.pj = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i163, i64 3
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !51
  store i8 %i.pk, ptr %i.pi, align 1, !tbaa !51
  %i.pl = getelementptr inbounds nuw i8, ptr %.039.i162, i64 4
  %i.pm = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i163, i64 4
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !51
  store i8 %i.pn, ptr %i.pl, align 1, !tbaa !51
  %i.po = getelementptr inbounds nuw i8, ptr %.039.i162, i64 5
  %i.pp = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i163, i64 5
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !51
  store i8 %i.pq, ptr %i.po, align 1, !tbaa !51
  %i.pr = getelementptr inbounds nuw i8, ptr %.039.i162, i64 6
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i163, i64 6
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !51
  store i8 %i.pt, ptr %i.pr, align 1, !tbaa !51
  %i.pu = getelementptr inbounds nuw i8, ptr %.039.i162, i64 7
  %i.pv = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i163, i64 7
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !51
  store i8 %i.pw, ptr %i.pu, align 1, !tbaa !51
  %i.px = getelementptr inbounds nuw i8, ptr %.039.i162, i64 8
  %i.py = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i163, i64 8 ; 2 uses
  %.not.i164.7 = icmp eq ptr %i.py, %3
  br i1 %.not.i164.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEESB_EEmT_SG_T0_.exit167, label %.lr.ph.i161, !llvm.loop !786

_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEESB_EEmT_SG_T0_.exit167: ; preds = %.lr.ph.i161.prol.loopexit, %.lr.ph.i161, %vec.epilog.middle.block, %middle.block
  %i.pz = getelementptr inbounds i8, ptr %i.ao, i64 %i.ag
  store i8 0, ptr %i.pz, align 1, !tbaa !51
  %i.qa = load i8, ptr %i.a, align 8, !tbaa !51
  %i.qb = trunc i8 %i.qa to i1
  %.pre = load i64, ptr %i.a, align 8
  store ptr %i.ao, ptr %i.e, align 8, !tbaa !789
  %i.qc = shl i64 %i.ag, 1
  %i.qd = and i64 %.pre, 1
  %i.qe = select i1 %i.qb, i64 0, i64 %i.qd
  %i.qf = or disjoint i64 %i.qe, %i.qc            ; 2 uses
  store i64 %i.qf, ptr %i.a, align 8
  store i64 %i.ah, ptr %i.r, align 8, !tbaa !788
  %i.qg = trunc i64 %i.qf to i8
  br label %bb.t

bb.t:                                             ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_4test25expand_bwd_test_allocatorIcEEvE9priv_sizeEm.exit133, %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEESB_EEmT_SG_T0_.exit167, %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE23priv_uninitialized_copyIPKcPcEEmT_SC_T0_.exit157, %bb.a
  %i.qh = phi ptr [ %.pre188, %_ZN5boost9container3dtl17basic_string_baseINS0_4test25expand_bwd_test_allocatorIcEEvE9priv_sizeEm.exit133 ], [ %i.ao, %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEESB_EEmT_SG_T0_.exit167 ], [ %.0.i.i.i206209, %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE23priv_uninitialized_copyIPKcPcEEmT_SC_T0_.exit157 ], [ %i.f, %bb.a ]
  %i.qi = phi i8 [ %.pre187, %_ZN5boost9container3dtl17basic_string_baseINS0_4test25expand_bwd_test_allocatorIcEEvE9priv_sizeEm.exit133 ], [ %i.qg, %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEESB_EEmT_SG_T0_.exit167 ], [ %i.ob, %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE23priv_uninitialized_copyIPKcPcEEmT_SC_T0_.exit157 ], [ %i.b, %bb.a ]
  %i.qj = select i1 %i.c, ptr %i.d, ptr %i.f
  %i.qk = ptrtoint ptr %i.qj to i64
  %i.ql = sub i64 %i.g, %i.qk
  %i.qm = trunc i8 %i.qi to i1
  %i.qn = select i1 %i.qm, ptr %i.d, ptr %i.qh
  %i.qo = getelementptr inbounds i8, ptr %i.qn, i64 %i.ql
  ret ptr %i.qo
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #15

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef %0) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !194
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9container12length_errorE, i64 16), ptr %i.a, align 8, !tbaa !26
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost9container12length_errorE, ptr nonnull @_ZNSt9exceptionD2Ev) #26
  unreachable
}

end_hunk_2
