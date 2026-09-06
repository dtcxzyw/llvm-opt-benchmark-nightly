Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/function_internal?download=true
inline.NumInlined: 11181
inline.NumDeleted: 2147
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK6casadi16FunctionInternal12call_forwardERKSt6vectorINS_2MXESaIS2_EES6_RKS1_IS4_SaIS4_EERS8_bb:bb.a
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %79) #38
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ge
  %.pn315.pn = phi { ptr, i32 } [ %.pn315, %bb.ic ], [ %i.xd, %bb.ge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #38
  call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %77) #38
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.gd
  %.pn315.pn.pn = phi { ptr, i32 } [ %.pn315.pn, %bb.id ], [ %.pn293, %bb.gd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #38
  br label %bb.if

bb.if:                                            ; preds = %bb.fk, %bb.fp, %bb.ie
  %.pn321.pn = phi { ptr, i32 } [ %.pn315.pn.pn, %bb.ie ], [ %i.wg, %bb.fk ], [ %.pn319, %bb.fp ]
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %74) #38
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %bb.fj
  %.pn321.pn.pn = phi { ptr, i32 } [ %.pn321.pn, %bb.if ], [ %i.vw, %bb.fj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #38
  br label %bb.ih

bb.ih:                                            ; preds = %.loopexit878, %.loopexit.split-lp879, %bb.ig, %bb.fi, %bb.fh
  %.pn321.pn.pn.pn = phi { ptr, i32 } [ %.pn321.pn.pn, %bb.ig ], [ %i.vv, %bb.fi ], [ %i.vu, %bb.fh ], [ %lpad.loopexit880, %.loopexit878 ], [ %lpad.loopexit.split-lp881, %.loopexit.split-lp879 ]
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %73) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #38
  br label %bb.ij

.loopexit877:                                     ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit640, %.loopexit884, %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EED2Ev.exit, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %bb.ii

bb.ii:                                            ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE6resizeEm.exit, %.loopexit877
  ret void

bb.ij:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i563, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565, %bb.ex, %bb.ih, %bb.ef, %bb.bo
  %.pn346.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn346.pn.pn.pn.pn.pn.pn, %bb.ef ], [ %.pn321.pn.pn.pn, %bb.ih ], [ %.pn285.pn.pn.pn.pn.pn.pn797, %bb.ex ], [ %.pn285.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565 ], [ %i.hq, %bb.bo ], [ %.pn285.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i563 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %bb.ik

bb.ik:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441, %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393, %bb.q, %bb.ij
  %.pn365.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn365.pn.pn.pn.pn.pn.pn749, %bb.q ], [ %.pn365.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393 ], [ %.pn355.pn.pn.pn.pn.pn.pn.pn.pn761, %bb.al ], [ %.pn355.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420 ], [ %.pn346.pn.pn.pn.pn.pn.pn.pn, %bb.ij ], [ %.pn.pn.pn.pn.pn.pn.pn773, %bb.bc ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441 ], [ %.pn365.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391 ], [ %.pn355.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418 ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439 ]
  resume { ptr, i32 } %.pn365.pn.pn.pn.pn.pn.pn.pn

bb.il:                                            ; preds = %bb.hh, %bb.ga, %bb.eq, %bb.dn, %bb.av, %bb.ac, %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK6casadi16FunctionInternal12matching_argINS_2MXEEEbRKSt6vectorIT_SaIS4_EERx(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZNK6casadi16FunctionInternal9check_argINS_2MXEEEvRKSt6vectorIT_SaIS4_EERx(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !203
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNK6casadi16FunctionInternal8size2_inEx.exit26._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.01660 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %bb.k ] ; 19 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !288
  %i.h = load ptr, ptr %1, align 8, !tbaa !287    ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %.not.i.i = icmp ult i64 %.01660, %i.l
  br i1 %.not.i.i, label %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.784, i64 noundef %.01660, i64 noundef %i.l) #37
  unreachable

_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit:     ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.01660
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.o = tail call noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !147
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !146  ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3                   ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %.01660, %i.u
  br i1 %.not.i.i.i.i, label %_ZNK6casadi16FunctionInternal8size1_inEx.exit, label %bb.d

bb.d:                                             ; preds = %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.784, i64 noundef %.01660, i64 noundef %i.u) #37
  unreachable

_ZNK6casadi16FunctionInternal8size1_inEx.exit:    ; preds = %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.01660
  %i.w = tail call noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %.not = icmp eq i64 %i.o, %i.w
  br i1 %.not, label %bb.e, label %_ZNK6casadi16FunctionInternal8size2_inEx.exit26._crit_edge

bb.e:                                             ; preds = %_ZNK6casadi16FunctionInternal8size1_inEx.exit
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !288
  %i.y = load ptr, ptr %1, align 8, !tbaa !287    ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3                 ; 2 uses
  %.not.i.i20 = icmp ult i64 %.01660, %i.ac
  br i1 %.not.i.i20, label %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit21, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.784, i64 noundef %.01660, i64 noundef %i.ac) #37
  unreachable

_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit21:   ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.01660
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  %i.af = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !147
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !146 ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3                 ; 2 uses
  %.not.i.i.i.i22 = icmp ult i64 %.01660, %i.al
  br i1 %.not.i.i.i.i22, label %_ZNK6casadi16FunctionInternal8size2_inEx.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit21
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.784, i64 noundef %.01660, i64 noundef %i.al) #37
  unreachable

_ZNK6casadi16FunctionInternal8size2_inEx.exit:    ; preds = %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit21
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.01660
  %i.an = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.am)
  %.not18 = icmp eq i64 %i.af, %i.an
  br i1 %.not18, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZNK6casadi16FunctionInternal8size2_inEx.exit
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !288
  %i.ap = load ptr, ptr %1, align 8, !tbaa !287   ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 3                 ; 2 uses
  %.not.i.i23 = icmp ult i64 %.01660, %i.at
  br i1 %.not.i.i23, label %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit24, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.784, i64 noundef %.01660, i64 noundef %i.at) #37
  unreachable

_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit24:   ; preds = %bb.h
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.01660
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.au)
  %i.aw = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.av)
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !147
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !146 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3                 ; 2 uses
  %.not.i.i.i.i25 = icmp ult i64 %.01660, %i.bc
  br i1 %.not.i.i.i.i25, label %_ZNK6casadi16FunctionInternal8size2_inEx.exit26, label %bb.j

bb.j:                                             ; preds = %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit24
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.784, i64 noundef %.01660, i64 noundef %i.bc) #37
  unreachable

_ZNK6casadi16FunctionInternal8size2_inEx.exit26:  ; preds = %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit24
  %i.bd = load i64, ptr %2, align 8, !tbaa !129
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.01660
  %i.bf = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
  %i.bg = mul nsw i64 %i.bf, %i.bd
  %.not19 = icmp eq i64 %i.aw, %i.bg
  br i1 %.not19, label %bb.k, label %_ZNK6casadi16FunctionInternal8size2_inEx.exit26._crit_edge

bb.k:                                             ; preds = %_ZNK6casadi16FunctionInternal8size2_inEx.exit, %_ZNK6casadi16FunctionInternal8size2_inEx.exit26
  %i.bh = add nuw nsw i64 %.01660, 1              ; 2 uses
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !203
  %.not63 = icmp ult i64 %i.bh, %i.bi
  br i1 %.not63, label %bb.b, label %_ZNK6casadi16FunctionInternal8size2_inEx.exit26._crit_edge, !llvm.loop !1944

_ZNK6casadi16FunctionInternal8size2_inEx.exit26._crit_edge: ; preds = %bb.k, %_ZNK6casadi16FunctionInternal8size1_inEx.exit, %_ZNK6casadi16FunctionInternal8size2_inEx.exit26, %bb.a
  %.lcssa47 = phi i1 [ true, %bb.a ], [ false, %_ZNK6casadi16FunctionInternal8size2_inEx.exit26 ], [ false, %_ZNK6casadi16FunctionInternal8size1_inEx.exit ], [ true, %bb.k ]
  ret i1 %.lcssa47
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi16FunctionInternal13replace_fseedINS_2MXEEESt6vectorIS3_IT_SaIS4_EESaIS6_EERKS8_x(ptr dead_on_unwind noalias writable sret(%"class.std::vector.171") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1312) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.130", align 16  ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !307  ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !308    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %5 = sdiv exact i64 %i.f, 24
  %i.g = icmp ugt i64 %5, 384307168202282325
  br i1 %i.g, label %.noexc, label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.789) #37
  unreachable

_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph

.thread:                                          ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #41 ; 4 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !308
  %i.i = getelementptr i8, ptr %i.h, i64 %i.f     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.h, i8 0, i64 %i.f, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.k, align 8, !tbaa !310
  store ptr %i.i, ptr %i.j, align 8, !tbaa !307
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %6 = sdiv exact i64 %i.f, 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit
  %.014 = phi i64 [ 0, %.lr.ph ], [ %i.aj, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.n = load ptr, ptr %2, align 8, !tbaa !308
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.014
  invoke void @_ZNK6casadi16FunctionInternal11replace_argINS_2MXEEESt6vectorIT_SaIS4_EERKS6_x(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.130") align 8 %4, ptr noundef nonnull align 8 dereferenceable(1312) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %3)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.014 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !287  ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !288  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !289
  %i.v = load <2 x ptr>, ptr %4, align 16, !tbaa !303
  store <2 x ptr> %i.v, ptr %i.p, align 8, !tbaa !303
  %i.w = load ptr, ptr %i.m, align 16, !tbaa !289
  store ptr %i.w, ptr %i.t, align 8, !tbaa !289
  %.not4.i.i.i.i.i = icmp eq ptr %i.q, %i.s
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %i.q, %bb.c ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i) #38
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %i.s
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !12

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.not.i.i1.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = ptrtoint ptr %i.q to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.aa) #39
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit

_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit:    ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.d
  %i.ab = load ptr, ptr %4, align 16, !tbaa !287  ; 3 uses
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !288 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %i.ab, %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #38
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, %i.ac
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !12

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %4, align 16, !tbaa !287
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit
  %i.ae = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ab, %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i
  %i.af = load ptr, ptr %i.m, align 16, !tbaa !289
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ai) #39
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit

_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %i.aj = add nuw nsw i64 %.014, 1                ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %6
  br i1 %i.ak, label %bb.b, label %._crit_edge, !llvm.loop !1945

bb.f:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #38
  resume { ptr, i32 } %i.al

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit, %.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !308    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !307  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.n, %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !287 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !288  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 2 uses
  tail call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i) #38
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, %i.f
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !12

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %.05.i.i, align 8, !tbaa !287
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i, %.lr.ph.i.i
  %i.h = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !289
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #39
  br label %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !17

_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !308
  br label %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.o = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.o, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !310
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #39
  br label %_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6casadi2MXESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !288  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !287    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN6casadi2MXEE8allocateEmPKv.exit.i.i.i, !prof !206

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

_ZNSt15__new_allocatorIN6casadi2MXEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #41
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN6casadi2MXEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN6casadi2MXEE8allocateEmPKv.exit.i.i.i ] ; 7 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !287
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !288
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !289
  %i.m = load ptr, ptr %1, align 8, !tbaa !303    ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !303  ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6casadi2MXESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN6casadi2MXEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.q, %_ZSt10_ConstructIN6casadi2MXEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 5 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN6casadi2MXEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.08.013.i.i.i.i, align 8, !tbaa !277
  store ptr %i.o, ptr %.014.i.i.i.i, align 8, !tbaa !277
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %.014.i.i.i.i)
          to label %_ZSt10_ConstructIN6casadi2MXEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN6casadi2MXEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6casadi2MXESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !19

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  %i.t = tail call ptr @__cxa_begin_catch(ptr %i.s) #38 ; 0 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.i, %.014.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %bb.d ] ; 2 uses
  tail call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i) #38
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, %.014.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !12

_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i.i.i.i:  ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  invoke void @__cxa_rethrow() #37
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i.i.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #40
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6casadi2MXESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN6casadi2MXEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.q, %_ZSt10_ConstructIN6casadi2MXEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !288
  ret void

.body:                                            ; preds = %bb.e
  %i.y = load ptr, ptr %0, align 8, !tbaa !287    ; 3 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !289
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #39
  br label %_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6casadi2MXESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.a, label %bb.b, label %_ZNSt6vectorIN6casadi2MXESaIS1_EE17_S_check_init_lenEmRKS2_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.789) #37
  unreachable
end_hunk_0
begin_hunk_1_@_ZNK6casadi16FunctionInternal12call_reverseERKSt6vectorINS_2MXESaIS2_EES6_RKS1_IS4_SaIS4_EERS8_bb:bb.a
  br i1 %.not4.i.i.i778, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i784, label %.lr.ph.i.i.i779

.lr.ph.i.i.i779:                                  ; preds = %bb.iu, %.lr.ph.i.i.i779
  %.05.i.i.i780 = phi ptr [ %i.ahq, %.lr.ph.i.i.i779 ], [ %i.aho, %bb.iu ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i780) #38
  %i.ahq = getelementptr inbounds nuw i8, ptr %.05.i.i.i780, i64 8 ; 2 uses
  %.not.i.i.i781 = icmp eq ptr %i.ahq, %i.ahp
  br i1 %.not.i.i.i781, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i782, label %.lr.ph.i.i.i779, !llvm.loop !12

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i782: ; preds = %.lr.ph.i.i.i779
  %.pr.i783 = load ptr, ptr %77, align 8, !tbaa !287
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i784

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i784: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i782, %bb.iu
  %i.ahr = phi ptr [ %.pr.i783, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i782 ], [ %i.aho, %bb.iu ] ; 3 uses
  %.not.i.i1.i785 = icmp eq ptr %i.ahr, null
  br i1 %.not.i.i1.i785, label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit787, label %bb.iv

bb.iv:                                            ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i784
  %i.ahs = load ptr, ptr %i.uz, align 8, !tbaa !289
  %i.aht = ptrtoint ptr %i.ahs to i64
  %i.ahu = ptrtoint ptr %i.ahr to i64
  %i.ahv = sub i64 %i.aht, %i.ahu
  call void @_ZdlPvm(ptr noundef nonnull %i.ahr, i64 noundef %i.ahv) #39
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit787

_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit787:    ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i784, %bb.iv
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #38
  br label %bb.ix

.loopexit947:                                     ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit678, %.preheader946, %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EED2Ev.exit, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %bb.iw

bb.iw:                                            ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE6resizeEm.exit, %.loopexit947
  ret void

bb.ix:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603, %bb.fi, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit787, %bb.er, %bb.bo
  %.pn373.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn373.pn.pn.pn.pn.pn.pn, %bb.er ], [ %.pn343.pn.pn.pn, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit787 ], [ %.pn307.pn.pn.pn.pn.pn.pn861, %bb.fi ], [ %.pn307.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603 ], [ %i.hq, %bb.bo ], [ %.pn307.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %bb.iy

bb.iy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468, %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420, %bb.q, %bb.ix
  %.pn392.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn392.pn.pn.pn.pn.pn.pn813, %bb.q ], [ %.pn392.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420 ], [ %.pn382.pn.pn.pn.pn.pn.pn.pn.pn825, %bb.al ], [ %.pn382.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447 ], [ %.pn373.pn.pn.pn.pn.pn.pn.pn, %bb.ix ], [ %.pn.pn.pn.pn.pn.pn.pn837, %bb.bc ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468 ], [ %.pn392.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418 ], [ %.pn382.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445 ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466 ]
  resume { ptr, i32 } %.pn392.pn.pn.pn.pn.pn.pn.pn

bb.iz:                                            ; preds = %bb.hs, %bb.gl, %bb.fb, %bb.dq, %bb.av, %bb.ac, %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK6casadi16FunctionInternal12matching_resINS_2MXEEEbRKSt6vectorIT_SaIS4_EERx(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZNK6casadi16FunctionInternal9check_resINS_2MXEEEvRKSt6vectorIT_SaIS4_EERx(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !204
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNK6casadi16FunctionInternal9size2_outEx.exit26._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.01660 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %bb.k ] ; 19 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !288
  %i.h = load ptr, ptr %1, align 8, !tbaa !287    ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %.not.i.i = icmp ult i64 %.01660, %i.l
  br i1 %.not.i.i, label %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.784, i64 noundef %.01660, i64 noundef %i.l) #37
  unreachable

_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit:     ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.01660
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.o = tail call noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !147
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !146  ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3                   ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %.01660, %i.u
  br i1 %.not.i.i.i.i, label %_ZNK6casadi16FunctionInternal9size1_outEx.exit, label %bb.d

bb.d:                                             ; preds = %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.784, i64 noundef %.01660, i64 noundef %i.u) #37
  unreachable

_ZNK6casadi16FunctionInternal9size1_outEx.exit:   ; preds = %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.01660
  %i.w = tail call noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %.not = icmp eq i64 %i.o, %i.w
  br i1 %.not, label %bb.e, label %_ZNK6casadi16FunctionInternal9size2_outEx.exit26._crit_edge

bb.e:                                             ; preds = %_ZNK6casadi16FunctionInternal9size1_outEx.exit
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !288
  %i.y = load ptr, ptr %1, align 8, !tbaa !287    ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3                 ; 2 uses
  %.not.i.i20 = icmp ult i64 %.01660, %i.ac
  br i1 %.not.i.i20, label %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit21, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.784, i64 noundef %.01660, i64 noundef %i.ac) #37
  unreachable

_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit21:   ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.01660
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  %i.af = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !147
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !146 ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3                 ; 2 uses
  %.not.i.i.i.i22 = icmp ult i64 %.01660, %i.al
  br i1 %.not.i.i.i.i22, label %_ZNK6casadi16FunctionInternal9size2_outEx.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit21
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.784, i64 noundef %.01660, i64 noundef %i.al) #37
  unreachable

_ZNK6casadi16FunctionInternal9size2_outEx.exit:   ; preds = %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit21
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.01660
  %i.an = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.am)
  %.not18 = icmp eq i64 %i.af, %i.an
  br i1 %.not18, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZNK6casadi16FunctionInternal9size2_outEx.exit
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !288
  %i.ap = load ptr, ptr %1, align 8, !tbaa !287   ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 3                 ; 2 uses
  %.not.i.i23 = icmp ult i64 %.01660, %i.at
  br i1 %.not.i.i23, label %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit24, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.784, i64 noundef %.01660, i64 noundef %i.at) #37
  unreachable

_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit24:   ; preds = %bb.h
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.01660
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.au)
  %i.aw = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.av)
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !147
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !146 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3                 ; 2 uses
  %.not.i.i.i.i25 = icmp ult i64 %.01660, %i.bc
  br i1 %.not.i.i.i.i25, label %_ZNK6casadi16FunctionInternal9size2_outEx.exit26, label %bb.j

bb.j:                                             ; preds = %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit24
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.784, i64 noundef %.01660, i64 noundef %i.bc) #37
  unreachable

_ZNK6casadi16FunctionInternal9size2_outEx.exit26: ; preds = %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit24
  %i.bd = load i64, ptr %2, align 8, !tbaa !129
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.01660
  %i.bf = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
  %i.bg = mul nsw i64 %i.bf, %i.bd
  %.not19 = icmp eq i64 %i.aw, %i.bg
  br i1 %.not19, label %bb.k, label %_ZNK6casadi16FunctionInternal9size2_outEx.exit26._crit_edge

bb.k:                                             ; preds = %_ZNK6casadi16FunctionInternal9size2_outEx.exit, %_ZNK6casadi16FunctionInternal9size2_outEx.exit26
  %i.bh = add nuw nsw i64 %.01660, 1              ; 2 uses
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !204
  %.not63 = icmp ult i64 %i.bh, %i.bi
  br i1 %.not63, label %bb.b, label %_ZNK6casadi16FunctionInternal9size2_outEx.exit26._crit_edge, !llvm.loop !1988

_ZNK6casadi16FunctionInternal9size2_outEx.exit26._crit_edge: ; preds = %bb.k, %_ZNK6casadi16FunctionInternal9size1_outEx.exit, %_ZNK6casadi16FunctionInternal9size2_outEx.exit26, %bb.a
  %.lcssa47 = phi i1 [ true, %bb.a ], [ false, %_ZNK6casadi16FunctionInternal9size2_outEx.exit26 ], [ false, %_ZNK6casadi16FunctionInternal9size1_outEx.exit ], [ true, %bb.k ]
  ret i1 %.lcssa47
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi16FunctionInternal13replace_aseedINS_2MXEEESt6vectorIS3_IT_SaIS4_EESaIS6_EERKS8_x(ptr dead_on_unwind noalias writable sret(%"class.std::vector.171") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1312) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.130", align 16  ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !307  ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !308    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %5 = sdiv exact i64 %i.f, 24
  %i.g = icmp ugt i64 %5, 384307168202282325
  br i1 %i.g, label %.noexc, label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.789) #37
  unreachable

_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph

.thread:                                          ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #41 ; 4 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !308
  %i.i = getelementptr i8, ptr %i.h, i64 %i.f     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.h, i8 0, i64 %i.f, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.k, align 8, !tbaa !310
  store ptr %i.i, ptr %i.j, align 8, !tbaa !307
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %6 = sdiv exact i64 %i.f, 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit
  %.014 = phi i64 [ 0, %.lr.ph ], [ %i.aj, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.n = load ptr, ptr %2, align 8, !tbaa !308
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.014
  invoke void @_ZNK6casadi16FunctionInternal11replace_resINS_2MXEEESt6vectorIT_SaIS4_EERKS6_x(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.130") align 8 %4, ptr noundef nonnull align 8 dereferenceable(1312) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %3)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.014 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !287  ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !288  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !289
  %i.v = load <2 x ptr>, ptr %4, align 16, !tbaa !303
  store <2 x ptr> %i.v, ptr %i.p, align 8, !tbaa !303
  %i.w = load ptr, ptr %i.m, align 16, !tbaa !289
  store ptr %i.w, ptr %i.t, align 8, !tbaa !289
  %.not4.i.i.i.i.i = icmp eq ptr %i.q, %i.s
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %i.q, %bb.c ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i) #38
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %i.s
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !12

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.not.i.i1.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = ptrtoint ptr %i.q to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.aa) #39
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit

_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit:    ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.d
  %i.ab = load ptr, ptr %4, align 16, !tbaa !287  ; 3 uses
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !288 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %i.ab, %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #38
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, %i.ac
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !12

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %4, align 16, !tbaa !287
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit
  %i.ae = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ab, %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i
  %i.af = load ptr, ptr %i.m, align 16, !tbaa !289
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ai) #39
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit

_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %i.aj = add nuw nsw i64 %.014, 1                ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %6
  br i1 %i.ak, label %bb.b, label %._crit_edge, !llvm.loop !1989

bb.f:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #38
  resume { ptr, i32 } %i.al

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit, %.thread
  ret void
}

declare void @_ZNK6casadi2MX1TEv(ptr dead_on_unwind writable sret(%"class.casadi::MX") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi16FunctionInternal12call_forwardERKSt6vectorINS_6MatrixINS_6SXElemEEESaIS4_EES8_RKS1_IS6_SaIS6_EERSA_bb(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4, i1 noundef zeroext %5, i1 noundef zeroext %6) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %16 = alloca %"class.std::vector", align 8      ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::vector", align 8      ; 5 uses
  %or.cond = and i1 %5, %6
  br i1 %or.cond, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @__cxa_allocate_exception(i64 40) #38 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.601, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.8)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.302, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull @.str.579, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false), !alias.scope !1994
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #37
          to label %bb.ai unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.thread: ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.k:                                             ; preds = %bb.d
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

bb.l:                                             ; preds = %bb.e
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

bb.m:                                             ; preds = %bb.f
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

bb.n:                                             ; preds = %bb.g
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

bb.o:                                             ; preds = %bb.h
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.p:                                             ; preds = %bb.j, %bb.i
  %.09 = phi i1 [ false, %bb.j ], [ true, %bb.i ] ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %7, align 8, !tbaa !43     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.l = load i64, ptr %i.j, align 8, !tbaa !44
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o
  %.pn47 = phi { ptr, i32 } [ %i.g, %bb.o ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %bb.p ] ; 2 uses
  %.110 = phi i1 [ true, %bb.o ], [ %.09, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.09, %bb.p ] ; 2 uses
  %i.n = load ptr, ptr %12, align 8, !tbaa !43    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = load i64, ptr %i.o, align 8, !tbaa !44
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %bb.n
  %.pn47.pn = phi { ptr, i32 } [ %i.f, %bb.n ], [ %.pn47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %.pn47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.211 = phi i1 [ true, %bb.n ], [ %.110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %.110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  %i.s = load ptr, ptr %13, align 8, !tbaa !43    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.v = load i64, ptr %i.t, align 8, !tbaa !44
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59, %bb.m
  %.pn47.pn.pn = phi { ptr, i32 } [ %i.e, %bb.m ], [ %.pn47.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %.pn47.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ] ; 2 uses
  %.312 = phi i1 [ true, %bb.m ], [ %.211, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %.211, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ] ; 2 uses
  %i.x = load ptr, ptr %14, align 8, !tbaa !43    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !44
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62, %bb.l
  %.pn47.pn.pn.pn = phi { ptr, i32 } [ %i.d, %bb.l ], [ %.pn47.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62 ], [ %.pn47.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ] ; 2 uses
  %.413 = phi i1 [ true, %bb.l ], [ %.312, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62 ], [ %.312, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  %i.ac = load ptr, ptr %8, align 8, !tbaa !43    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !44
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, %bb.k
  %.pn47.pn.pn.pn.pn = phi { ptr, i32 } [ %i.c, %bb.k ], [ %.pn47.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %.pn47.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ] ; 4 uses
  %.514 = phi i1 [ true, %bb.k ], [ %.413, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %.413, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ] ; 2 uses
  %i.ah = load ptr, ptr %9, align 8, !tbaa !43    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6casadi17SparsityInterfaceINS_6MatrixIdEEE6repmatERKS2_xx:bb.a

_ZN6casadi6MatrixIdED2Ev.exit45:                  ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  br label %bb.ai

bb.ac:                                            ; preds = %bb.s
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.t
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #38
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn21 = phi { ptr, i32 } [ %i.bx, %bb.ad ], [ %i.bw, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  br label %bb.al

bb.af:                                            ; preds = %.noexc41, %bb.x, %_ZNK6casadi13GenericMatrixINS_6MatrixIdEEE5size1Ev.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.y
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6MatrixIdED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #38
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn23 = phi { ptr, i32 } [ %i.bz, %bb.ag ], [ %i.by, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  call void @_ZN6casadi6MatrixIdED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #38
  br label %bb.al

bb.ai:                                            ; preds = %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EED2Ev.exit40, %_ZN6casadi6MatrixIdED2Ev.exit45
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !237 ; 3 uses
  %.not.i.i.i.i46 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i46, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i47, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !238
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cg) #39
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i47

_ZNSt6vectorIdSaIdEED2Ev.exit.i47:                ; preds = %bb.aj, %bb.ai
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ch)
          to label %_ZN6casadi6MatrixIdED2Ev.exit48 unwind label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i47
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #40
  unreachable

_ZN6casadi6MatrixIdED2Ev.exit48:                  ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.an

bb.al:                                            ; preds = %bb.ah, %bb.ae, %bb.r
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %bb.ah ], [ %.pn21, %bb.ae ], [ %.pn19, %bb.r ]
  call void @_ZN6casadi6MatrixIdED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #38
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.o
  %.pn23.pn.pn = phi { ptr, i32 } [ %.pn23.pn, %bb.al ], [ %.pn, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  resume { ptr, i32 } %.pn23.pn.pn

bb.an:                                            ; preds = %_ZN6casadi6MatrixIdED2Ev.exit48, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EEC2EmRKS2_RKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 230584300921369395
  br i1 %i.a, label %bb.b, label %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.789) #37
  unreachable

_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN6casadi6MatrixIdEESaIS2_EEC2EmRKS3_.exit.thread, label %_ZNSt12_Vector_baseIN6casadi6MatrixIdEESaIS2_EEC2EmRKS3_.exit

_ZNSt12_Vector_baseIN6casadi6MatrixIdEESaIS2_EEC2EmRKS3_.exit.thread: ; preds = %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseIN6casadi6MatrixIdEESaIS2_EEC2EmRKS3_.exit: ; preds = %_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit
  %i.c = mul nuw nsw i64 %1, 40
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #41 ; 5 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !324
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !323
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !325
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN6casadi6MatrixIdEESaIS2_EEC2EmRKS3_.exit, %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.015.i.i.i.i.i = phi ptr [ %i.i, %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN6casadi6MatrixIdEESaIS2_EEC2EmRKS3_.exit ] ; 3 uses
  %.01114.i.i.i.i.i = phi i64 [ %i.h, %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %1, %_ZNSt12_Vector_baseIN6casadi6MatrixIdEESaIS2_EEC2EmRKS3_.exit ]
  invoke void @_ZN6casadi6MatrixIdEC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %.015.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.h = add nsw i64 %.01114.i.i.i.i.i, -1        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2449

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  %i.l = tail call ptr @__cxa_begin_catch(ptr %i.k) #38 ; 0 uses
  invoke void @_ZSt8_DestroyIPN6casadi6MatrixIdEEEvT_S4_(ptr noundef nonnull %i.d, ptr noundef nonnull %.015.i.i.i.i.i)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_rethrow() #37
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #40
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

.loopexit:                                        ; preds = %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseIN6casadi6MatrixIdEESaIS2_EEC2EmRKS3_.exit.thread
  %i.p = phi ptr [ %i.b, %_ZNSt12_Vector_baseIN6casadi6MatrixIdEESaIS2_EEC2EmRKS3_.exit.thread ], [ %i.e, %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN6casadi6MatrixIdEESaIS2_EEC2EmRKS3_.exit.thread ], [ %i.i, %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.p, align 8, !tbaa !323
  ret void

.body:                                            ; preds = %bb.e
  %i.q = load ptr, ptr %0, align 8, !tbaa !324    ; 3 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN6casadi6MatrixIdEESaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !325
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #39
  br label %_ZNSt12_Vector_baseIN6casadi6MatrixIdEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN6casadi6MatrixIdEESaIS2_EED2Ev.exit: ; preds = %.body, %bb.h
  resume { ptr, i32 } %i.m
}

declare void @_ZN6casadi6MatrixIdEC1Exx(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef, i64 noundef) unnamed_addr #4

declare void @_ZN6casadi6MatrixIdE7vertcatERKSt6vectorIS1_SaIS1_EE(ptr dead_on_unwind writable sret(%"class.casadi::Matrix.198") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZN6casadi6MatrixIdE7horzcatERKSt6vectorIS1_SaIS1_EE(ptr dead_on_unwind writable sret(%"class.casadi::Matrix.198") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK6casadi8Sparsity10is_stackedERKS0_x(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6casadi6MatrixIdEESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !323  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !324    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %2, 230584300921369395
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN6casadi6MatrixIdEEE8allocateEmPKv.exit.i.i.i, !prof !206

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

_ZNSt15__new_allocatorIN6casadi6MatrixIdEEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #41
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN6casadi6MatrixIdEEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN6casadi6MatrixIdEEE8allocateEmPKv.exit.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !324
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !323
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !325
  %i.m = load ptr, ptr %1, align 8, !tbaa !2451   ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !2451 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6casadi6MatrixIdEESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN6casadi6MatrixIdEC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6casadi6MatrixIdEESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2450

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #38 ; 0 uses
  invoke void @_ZSt8_DestroyIPN6casadi6MatrixIdEEEvT_S4_(ptr noundef %i.i, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_rethrow() #37
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #40
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6casadi6MatrixIdEESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructIN6casadi6MatrixIdEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !323
  ret void

.body:                                            ; preds = %bb.f
  %i.w = load ptr, ptr %0, align 8, !tbaa !324    ; 3 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN6casadi6MatrixIdEESaIS2_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !325
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #39
  br label %_ZNSt12_Vector_baseIN6casadi6MatrixIdEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN6casadi6MatrixIdEESaIS2_EED2Ev.exit: ; preds = %bb.i, %.body
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi17SparsityInterfaceINS_8SparsityEE6repmatERKS1_xx(ptr dead_on_unwind noalias writable sret(%"class.casadi::Sparsity") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.casadi::Sparsity", align 8  ; 9 uses
  %5 = alloca %"class.std::vector.15", align 8    ; 10 uses
  %6 = alloca %"class.std::allocator.17", align 1 ; 4 uses
  %7 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
  %8 = alloca %"class.std::vector.15", align 8    ; 10 uses
  %9 = alloca %"class.std::allocator.17", align 1 ; 4 uses
  %10 = alloca %"class.casadi::Sparsity", align 8 ; 7 uses
  %i.a = icmp eq i64 %2, 1
  %i.b = icmp eq i64 %3, 1
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !277
  store ptr %i.c, ptr %0, align 8, !tbaa !277
  tail call void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %bb.ai

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  invoke void @_ZNSt6vectorIN6casadi8SparsityESaIS1_EEC2EmRKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6casadi8Sparsity7vertcatERKSt6vectorIS0_SaIS0_EE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZN6casadi7vertcatERKSt6vectorINS_8SparsityESaIS1_EE.exit unwind label %bb.l

_ZN6casadi7vertcatERKSt6vectorINS_8SparsityESaIS1_EE.exit: ; preds = %bb.d
  %i.d = load ptr, ptr %5, align 8, !tbaa !146    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !147  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6casadi8SparsityES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6casadi7vertcatERKSt6vectorINS_8SparsityESaIS1_EE.exit, %_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i.i.i ], [ %i.d, %_ZN6casadi7vertcatERKSt6vectorINS_8SparsityESaIS1_EE.exit ] ; 2 uses
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %.05.i.i.i)
          to label %_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #40
  unreachable

_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.f
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6casadi8SparsityES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6casadi8SparsityES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !146
  br label %_ZSt8_DestroyIPN6casadi8SparsityES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6casadi8SparsityES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6casadi8SparsityES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZN6casadi7vertcatERKSt6vectorINS_8SparsityESaIS1_EE.exit
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6casadi8SparsityES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.d, %_ZN6casadi7vertcatERKSt6vectorINS_8SparsityESaIS1_EE.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6casadi8SparsityESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6casadi8SparsityES1_EvT_S3_RSaIT0_E.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !148
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #39
  br label %_ZNSt6vectorIN6casadi8SparsityESaIS1_EED2Ev.exit

_ZNSt6vectorIN6casadi8SparsityESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6casadi8SparsityES1_EvT_S3_RSaIT0_E.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  %i.p = icmp eq i64 %2, 0
  br i1 %i.p, label %bb.g, label %bb.q

bb.g:                                             ; preds = %_ZNSt6vectorIN6casadi8SparsityESaIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  %i.q = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6casadi8SparsityC1Exx(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 0, i64 noundef %i.q)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZN6casadi8SparsityaSEOS0_.exit unwind label %bb.o ; 0 uses

_ZN6casadi8SparsityaSEOS0_.exit:                  ; preds = %bb.i
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZN6casadi8SparsityaSEOS0_.exit
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #40
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit: ; preds = %_ZN6casadi8SparsityaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  br label %bb.q

bb.k:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
end_hunk_2
