inline.NumInlined: 1907
inline.NumDeleted: 759
begin_hunk_0_@_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase22DescribeNegationToImplEPSo:bb.a
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #29
  br label %bb.s

bb.s:                                             ; preds = %.body29, %bb.q
  %.pn = phi { ptr, i32 } [ %eh.lpad-body30, %.body29 ], [ %i.bo, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %.body

.body:                                            ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.s ], [ %i.bn, %bb.p ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.aa

bb.t:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !212
  %i.br = load ptr, ptr %0, align 8, !tbaa !208
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = ashr exact i64 %i.bu, 3
  call void @_ZN7testing8internal35UnorderedElementsAreMatcherImplBase8ElementsEm(ptr dead_on_unwind nonnull writable sret(%"class.testing::Message") align 8 %7, i64 noundef %i.bv)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc43 unwind label %bb.z

.noexc43:                                         ; preds = %bb.t
  %i.bw = load ptr, ptr %2, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !13
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.bw, i64 noundef %i.by)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i40 unwind label %bb.u

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i40: ; preds = %.noexc43
  %i.ca = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i40
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !14
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i42

bb.u:                                             ; preds = %.noexc43
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i37: ; preds = %bb.u
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !14
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i38: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %.body44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i42: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull @.str.28, i64 noundef 56)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i42
  %i.cm = load ptr, ptr %7, align 8, !tbaa !204
  %.not.i.i.i49 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i49, label %_ZN7testing7MessageD2Ev.exit51, label %bb.v

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48
  %i.cn = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i50 unwind label %bb.y

.noexc.i.i50:                                     ; preds = %bb.v
  br i1 %i.cn, label %bb.w, label %_ZN7testing7MessageD2Ev.exit51

bb.w:                                             ; preds = %.noexc.i.i50
  %i.co = load ptr, ptr %7, align 8, !tbaa !204   ; 3 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %_ZN7testing7MessageD2Ev.exit51, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !28
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(128) %i.co) #29, !inline_history !207
  br label %_ZN7testing7MessageD2Ev.exit51

bb.y:                                             ; preds = %bb.v
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  call void @__clang_call_terminate(ptr %i.cu) #33
  unreachable

_ZN7testing7MessageD2Ev.exit51:                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48, %.noexc.i.i50, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.cv = load ptr, ptr %i.b, align 8, !tbaa !212
  %i.cw = load ptr, ptr %0, align 8, !tbaa !208
  %.not52 = icmp eq ptr %i.cv, %i.cw
  br i1 %.not52, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN7testing7MessageD2Ev.exit51
  %i.cx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 0) ; 0 uses
  %i.cy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.15, i64 noundef 12) ; 0 uses
  %i.cz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0)
  %i.da = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef nonnull @.str.9, i64 noundef 1) ; 0 uses
  %i.db = load ptr, ptr %0, align 8, !tbaa !208
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !210 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !28
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull %1)
  %i.dg = load ptr, ptr %i.b, align 8, !tbaa !212
  %i.dh = load ptr, ptr %0, align 8, !tbaa !208
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj
  %.not.peel = icmp eq i64 %i.dk, 8
  br i1 %.not.peel, label %.loopexit, label %.lr.ph

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i42, %bb.t
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.body44

.body44:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i38, %bb.z
  %eh.lpad-body45 = phi { ptr, i32 } [ %i.dl, %bb.z ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i38 ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.aa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.054 = phi i64 [ %i.dw, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 3 uses
  %i.dm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.23, i64 noundef 6) ; 0 uses
  %i.dn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.15, i64 noundef 12) ; 0 uses
  %i.do = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.054)
  %i.dp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str.9, i64 noundef 1) ; 0 uses
  %i.dq = load ptr, ptr %0, align 8, !tbaa !208
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.054
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !210 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !28
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, ptr noundef nonnull %1)
  %i.dw = add i64 %.054, 1                        ; 2 uses
  %i.dx = load ptr, ptr %i.b, align 8, !tbaa !212
  %i.dy = load ptr, ptr %0, align 8, !tbaa !208
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = ashr exact i64 %i.eb, 3
  %.not = icmp eq i64 %i.dw, %i.ec
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !219

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %_ZN7testing7MessageD2Ev.exit51, %_ZN7testing7MessageD2Ev.exit36, %bb.b
  ret void

bb.aa:                                            ; preds = %.body44, %.body
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %eh.lpad-body45, %.body44 ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase38VerifyAllElementsAndMatchersAreMatchedERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKNS0_11MatchMatrixEPNS_19MatchResultListenerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !151    ; 8 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %.noexc, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #34
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.a, 0             ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit, label %.noexc38

.noexc38:                                         ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %i.c = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.a) #31 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.a
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.c, i8 0, i64 %i.a, i1 false)
  %i.e = ptrtoint ptr %i.d to i64
  br label %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit

_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit:            ; preds = %.noexc38, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.15105.0 = phi i64 [ %i.e, %.noexc38 ], [ 0, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ] ; 3 uses
  %.sroa.099.0 = phi ptr [ %i.c, %.noexc38 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ] ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !160  ; 18 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i39

bb.b:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #34
          to label %.noexc43 unwind label %7

.noexc43:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i39: ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit
  %.not.i.i.i.i40 = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i.i40, label %.preheader, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i39
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #31
          to label %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit45.thread unwind label %7 ; 12 uses

_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit45.thread:   ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.i, i8 0, i64 %i.g, i1 false)
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  br i1 %.not.i.i.i.i, label %.preheader, label %.preheader130.us.preheader

.preheader130.us.preheader:                       ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit45.thread
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8              ; 4 uses
  %scevgep = getelementptr i8, ptr %.sroa.099.0, i64 %i.a ; 2 uses
  %scevgep187 = getelementptr i8, ptr %i.i, i64 %i.g ; 2 uses
  %i.n = mul i64 %i.g, %i.a
  %scevgep188 = getelementptr i8, ptr %i.m, i64 %i.n ; 2 uses
  %min.iters.check = icmp ult i64 %i.g, 4
  %bound0 = icmp ult ptr %.sroa.099.0, %scevgep187
  %bound1 = icmp ult ptr %i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0189 = icmp ult ptr %.sroa.099.0, %scevgep188
  %bound1190 = icmp ult ptr %i.m, %scevgep
  %found.conflict191 = and i1 %bound0189, %bound1190
  %conflict.rdx = or i1 %found.conflict, %found.conflict191
  %bound0192 = icmp ult ptr %i.i, %scevgep188
  %bound1193 = icmp ult ptr %i.m, %scevgep187
  %found.conflict194 = and i1 %bound0192, %bound1193
  %conflict.rdx195 = or i1 %conflict.rdx, %found.conflict194
  %min.iters.check196 = icmp ult i64 %i.g, 32
  %n.mod.vf = and i64 %i.g, 28
  %n.vec = and i64 %i.g, 9223372036854775776      ; 4 uses
  %cmp.n = icmp eq i64 %i.g, %n.vec
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec202 = and i64 %i.g, 9223372036854775804   ; 3 uses
  %cmp.n208 = icmp eq i64 %i.g, %n.vec202
  %xtraiter = and i64 %i.g, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %.preheader130.us.preheader, %._crit_edge
  %.026137.us = phi i64 [ %9, %._crit_edge ], [ 0, %.preheader130.us.preheader ] ; 3 uses
  %i.o = mul i64 %.026137.us, %i.g
  %i.p = getelementptr i8, ptr %i.m, i64 %i.o     ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.099.0, i64 %.026137.us ; 6 uses
  %.promoted.us = load i8, ptr %i.q, align 1, !tbaa !14 ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx195
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check196, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.r = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %.promoted.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <16 x i8> [ %i.r, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi197 = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %i.s = getelementptr i8, ptr %i.p, i64 %index   ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %wide.load = load <16 x i8>, ptr %i.s, align 1, !tbaa !14, !alias.scope !220
  %wide.load198 = load <16 x i8>, ptr %i.t, align 1, !tbaa !14, !alias.scope !220
  %i.u = icmp eq <16 x i8> %wide.load, splat (i8 1)
  %i.v = icmp eq <16 x i8> %wide.load198, splat (i8 1)
  %i.w = zext <16 x i1> %i.u to <16 x i8>         ; 2 uses
  %i.x = zext <16 x i1> %i.v to <16 x i8>         ; 2 uses
  %i.y = or <16 x i8> %vec.phi, %i.w              ; 2 uses
  %i.z = or <16 x i8> %vec.phi197, %i.x           ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 %index ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %wide.load199 = load <16 x i8>, ptr %i.aa, align 1, !tbaa !14, !alias.scope !223, !noalias !220
  %wide.load200 = load <16 x i8>, ptr %i.ab, align 1, !tbaa !14, !alias.scope !223, !noalias !220
  %i.ac = or <16 x i8> %wide.load199, %i.w
  %i.ad = or <16 x i8> %wide.load200, %i.x
  store <16 x i8> %i.ac, ptr %i.aa, align 1, !tbaa !14, !alias.scope !223, !noalias !220
  store <16 x i8> %i.ad, ptr %i.ab, align 1, !tbaa !14, !alias.scope !223, !noalias !220
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !225

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i8> %i.z, %i.y
  %i.af = tail call i8 @llvm.vector.reduce.or.v16i8(<16 x i8> %bin.rdx) ; 3 uses
  store i8 %i.af, ptr %i.q, align 1, !tbaa !14, !alias.scope !228, !noalias !230
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !231

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.af, %vec.epilog.iter.check ], [ %.promoted.us, %vector.main.loop.iter.check ]
  %i.ag = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index203 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next207, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi204 = phi <4 x i8> [ %i.ag, %vec.epilog.ph ], [ %i.ak, %vec.epilog.vector.body ]
  %i.ah = getelementptr i8, ptr %i.p, i64 %index203
  %wide.load205 = load <4 x i8>, ptr %i.ah, align 1, !tbaa !14, !alias.scope !220
  %i.ai = icmp eq <4 x i8> %wide.load205, splat (i8 1)
  %i.aj = zext <4 x i1> %i.ai to <4 x i8>         ; 2 uses
  %i.ak = or <4 x i8> %vec.phi204, %i.aj          ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 %index203 ; 2 uses
  %wide.load206 = load <4 x i8>, ptr %i.al, align 1, !tbaa !14, !alias.scope !223, !noalias !220
  %i.am = or <4 x i8> %wide.load206, %i.aj
  store <4 x i8> %i.am, ptr %i.al, align 1, !tbaa !14, !alias.scope !223, !noalias !220
  %index.next207 = add nuw i64 %index203, 4       ; 2 uses
  %i.an = icmp eq i64 %index.next207, %n.vec202
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !232

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ao = tail call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %i.ak) ; 2 uses
  store i8 %i.ao, ptr %i.q, align 1, !tbaa !14, !alias.scope !228, !noalias !230
  br i1 %cmp.n208, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i8 [ %.promoted.us, %iter.check ], [ %i.ao, %vec.epilog.middle.block ], [ %i.af, %vec.epilog.iter.check ] ; 2 uses
  %.025136.us.ph = phi i64 [ 0, %iter.check ], [ %n.vec202, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 5 uses
  %.neg = or disjoint i64 %.025136.us.ph, 1
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ap = getelementptr i8, ptr %i.p, i64 %.025136.us.ph
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !14
  %i.ar = icmp eq i8 %i.aq, 1
  %i.as = zext i1 %i.ar to i8                     ; 2 uses
  %i.at = or i8 %.ph, %i.as                       ; 2 uses
  store i8 %i.at, ptr %i.q, align 1, !tbaa !14
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 %.025136.us.ph ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !14
  %i.aw = or i8 %i.av, %i.as
  store i8 %i.aw, ptr %i.au, align 1, !tbaa !14
  %i.ax = or disjoint i64 %.025136.us.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.unr = phi i8 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.at, %vec.epilog.scalar.ph.prol ]
  %.025136.us.unr = phi i64 [ %.025136.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ax, %vec.epilog.scalar.ph.prol ]
  %i.ay = icmp eq i64 %i.g, %.neg
  br i1 %i.ay, label %._crit_edge, label %vec.epilog.scalar.ph

.preheader:                                       ; preds = %._crit_edge, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i39, %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit45.thread
  %.sroa.091.0172 = phi ptr [ %i.i, %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit45.thread ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i39 ], [ %i.i, %._crit_edge ] ; 6 uses
  %.sroa.15.0170 = phi i64 [ %i.k, %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit45.thread ], [ 0, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i39 ], [ %i.k, %._crit_edge ] ; 2 uses
  %4 = ptrtoint ptr %.sroa.091.0172 to i64        ; 2 uses
  %5 = sub i64 %.sroa.15.0170, %4                 ; 3 uses
  %.not154 = icmp eq i64 %.sroa.15.0170, %4
  br i1 %.not154, label %._crit_edge.a, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  br label %bb.d

7:                                                ; preds = %bb.c, %bb.b
  %8 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit78

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %9 = add nuw i64 %.026137.us, 1                 ; 2 uses
  %exitcond156.not = icmp eq i64 %9, %i.a
  br i1 %exitcond156.not, label %.preheader, label %iter.check, !llvm.loop !233

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.az = phi i8 [ %i.bn, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.025136.us = phi i64 [ %i.br, %vec.epilog.scalar.ph ], [ %.025136.us.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.ba = getelementptr i8, ptr %i.p, i64 %.025136.us
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !14
  %i.bc = icmp eq i8 %i.bb, 1
  %i.bd = zext i1 %i.bc to i8                     ; 2 uses
  %i.be = or i8 %i.az, %i.bd                      ; 2 uses
  store i8 %i.be, ptr %i.q, align 1, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 %.025136.us ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !14
  %i.bh = or i8 %i.bg, %i.bd
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !14
  %i.bi = add nuw i64 %.025136.us, 1              ; 2 uses
  %i.bj = getelementptr i8, ptr %i.p, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !14
  %i.bl = icmp eq i8 %i.bk, 1
  %i.bm = zext i1 %i.bl to i8                     ; 2 uses
  %i.bn = or i8 %i.be, %i.bm                      ; 2 uses
  store i8 %i.bn, ptr %i.q, align 1, !tbaa !14
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bi ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !14
  %i.bq = or i8 %i.bp, %i.bm
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !14
  %i.br = add nuw i64 %.025136.us, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.br, %i.g
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !234

._crit_edge.a:                                    ; preds = %bb.l, %.preheader
  %.0.lcssa = phi i8 [ 1, %.preheader ], [ %.1, %bb.l ] ; 3 uses
  %i.bs = ptrtoint ptr %.sroa.099.0 to i64        ; 2 uses
  %i.bt = sub i64 %.sroa.15105.0, %i.bs           ; 2 uses
  %.not154.a = icmp eq i64 %.sroa.15105.0, %i.bs
  br i1 %.not154.a, label %._crit_edge148, label %.lr.ph147

.lr.ph147:                                        ; preds = %._crit_edge.a
  %i.bu = trunc nuw i8 %.0.lcssa to i1
  %spec.store.select = select i1 %i.bu, ptr @.str.2, ptr @.str.33
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  br label %bb.o

bb.d:                                             ; preds = %.lr.ph, %bb.l
  %.0140 = phi i8 [ 1, %.lr.ph ], [ %.1, %bb.l ]
  %storemerge139 = phi i64 [ 0, %.lr.ph ], [ %i.cu, %bb.l ] ; 4 uses
  %.0111138 = phi ptr [ @.str.29, %.lr.ph ], [ %.1112, %bb.l ] ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.091.0172, i64 %storemerge139
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !14
  %.not34 = icmp eq i8 %i.bx, 0
  br i1 %.not34, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.by = load ptr, ptr %6, align 8, !tbaa !176   ; 4 uses
  %.not129 = icmp eq ptr %i.by, null
  br i1 %.not129, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i.i = icmp eq ptr %.0111138, null
  br i1 %.not.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !28
  %i.ca = getelementptr i8, ptr %i.bz, i64 -24
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds i8, ptr %i.by, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !235
  %i.cf = or i32 %i.ce, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cc, i32 noundef %i.cf)
          to label %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit unwind label %.thread

bb.h:                                             ; preds = %bb.f
  %i.cg = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0111138) #29
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull %.0111138, i64 noundef %i.cg)
          to label %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit unwind label %.thread ; 0 uses

_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit: ; preds = %bb.g, %bb.h
  %i.ci = load ptr, ptr %6, align 8, !tbaa !176   ; 2 uses
  %.not.i48 = icmp eq ptr %i.ci, null
  br i1 %.not.i48, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull @.str.30, i64 noundef 9)
          to label %_ZN7testing19MatchResultListenerlsIA10_cEERS0_RKT_.exit unwind label %.thread ; 0 uses

_ZN7testing19MatchResultListenerlsIA10_cEERS0_RKT_.exit: ; preds = %bb.i
  %.pr = load ptr, ptr %6, align 8, !tbaa !176    ; 2 uses
  %.not.i50 = icmp eq ptr %.pr, null
  br i1 %.not.i50, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN7testing19MatchResultListenerlsIA10_cEERS0_RKT_.exit
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.pr, i64 noundef %storemerge139)
          to label %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit unwind label %.thread ; 0 uses

_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit: ; preds = %bb.j
  %.pr114 = load ptr, ptr %6, align 8, !tbaa !176 ; 2 uses
  %.not.i52 = icmp eq ptr %.pr114, null
  br i1 %.not.i52, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr114, ptr noundef nonnull @.str.31, i64 noundef 2)
          to label %._ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit_crit_edge unwind label %.thread ; 0 uses

._ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit_crit_edge: ; preds = %bb.k
  %.pre = load ptr, ptr %6, align 8, !tbaa !176
  br label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit

_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit: ; preds = %._ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit_crit_edge, %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit, %_ZN7testing19MatchResultListenerlsIA10_cEERS0_RKT_.exit, %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit
  %i.cm = phi ptr [ %.pre, %._ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit_crit_edge ], [ null, %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit ], [ null, %_ZN7testing19MatchResultListenerlsIA10_cEERS0_RKT_.exit ], [ null, %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit ]
  %i.cn = load ptr, ptr %0, align 8, !tbaa !208
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %storemerge139
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !210 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !28
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8
  invoke void %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef %i.cm)
          to label %bb.l unwind label %.thread

.thread:                                          ; preds = %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.l:                                             ; preds = %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit, %bb.e, %bb.d
  %.1112 = phi ptr [ %.0111138, %bb.d ], [ %.0111138, %bb.e ], [ @.str.17, %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit ]
  %.1 = phi i8 [ %.0140, %bb.d ], [ 0, %bb.e ], [ 0, %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit ] ; 2 uses
  %i.cu = add nuw i64 %storemerge139, 1           ; 2 uses
  %exitcond157.not = icmp eq i64 %i.cu, %5
  br i1 %exitcond157.not, label %._crit_edge.a, label %bb.d, !llvm.loop !242

._crit_edge148:                                   ; preds = %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %._crit_edge.a
  %.2.lcssa = phi i8 [ %.0.lcssa, %._crit_edge.a ], [ %.3, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit ]
  %.not.i.i.i = icmp eq ptr %.sroa.091.0172, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge148
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.091.0172, i64 noundef %5) #30
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %._crit_edge148, %bb.m
  %.not.i.i.i54 = icmp eq ptr %.sroa.099.0, null
  br i1 %.not.i.i.i54, label %_ZNSt6vectorIcSaIcEED2Ev.exit55, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0, i64 noundef %i.bt) #30
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit55

_ZNSt6vectorIcSaIcEED2Ev.exit55:                  ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit, %bb.n
  %i.cv = trunc nuw i8 %.2.lcssa to i1
  ret i1 %i.cv

bb.o:                                             ; preds = %.lr.ph147, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %.2145 = phi i8 [ %.0.lcssa, %.lr.ph147 ], [ %.3, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit ]
  %storemerge33144 = phi i64 [ 0, %.lr.ph147 ], [ %i.eb, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit ] ; 4 uses
  %.0107143 = phi ptr [ %spec.store.select, %.lr.ph147 ], [ %.1108, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit ] ; 5 uses
  %.0109142 = phi ptr [ @.str.32, %.lr.ph147 ], [ %.1110, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit ] ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.099.0, i64 %storemerge33144
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !14
  %.not = icmp eq i8 %i.cx, 0
  br i1 %.not, label %bb.p, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit

bb.p:                                             ; preds = %bb.o
  %i.cy = load ptr, ptr %i.bv, align 8, !tbaa !176 ; 4 uses
  %.not128 = icmp eq ptr %i.cy, null
  br i1 %.not128, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not.i.i57 = icmp eq ptr %.0107143, null
  br i1 %.not.i.i57, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !28
  %i.da = getelementptr i8, ptr %i.cz, i64 -24
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = getelementptr inbounds i8, ptr %i.cy, i64 %i.db ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !235
  %i.df = or i32 %i.de, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.dc, i32 noundef %i.df)
          to label %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit60 unwind label %bb.aa

bb.s:                                             ; preds = %bb.q
  %i.dg = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0107143) #29
  %i.dh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef nonnull %.0107143, i64 noundef %i.dg)
          to label %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit60 unwind label %bb.aa ; 0 uses

_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit60: ; preds = %bb.r, %bb.s
  %i.di = load ptr, ptr %i.bv, align 8, !tbaa !176 ; 4 uses
  %.not.i61 = icmp eq ptr %i.di, null
  br i1 %.not.i61, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, label %bb.t

bb.t:                                             ; preds = %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit60
  %.not.i.i62 = icmp eq ptr %.0109142, null
  br i1 %.not.i.i62, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !28
  %i.dk = getelementptr i8, ptr %i.dj, i64 -24
  %i.dl = load i64, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds i8, ptr %i.di, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !235
  %i.dp = or i32 %i.do, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.dm, i32 noundef %i.dp)
          to label %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit65 unwind label %bb.aa

bb.v:                                             ; preds = %bb.t
  %i.dq = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0109142) #29
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull %.0109142, i64 noundef %i.dq)
          to label %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit65 unwind label %bb.aa ; 0 uses

_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit65: ; preds = %bb.u, %bb.v
  %.pr116 = load ptr, ptr %i.bv, align 8, !tbaa !176 ; 2 uses
  %.not.i66 = icmp eq ptr %.pr116, null
  br i1 %.not.i66, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, label %bb.w

bb.w:                                             ; preds = %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit65
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr116, ptr noundef nonnull @.str.34, i64 noundef 9)
          to label %_ZN7testing19MatchResultListenerlsIA10_cEERS0_RKT_.exit68 unwind label %bb.aa ; 0 uses

_ZN7testing19MatchResultListenerlsIA10_cEERS0_RKT_.exit68: ; preds = %bb.w
  %.pr118 = load ptr, ptr %i.bv, align 8, !tbaa !176 ; 2 uses
  %.not.i69 = icmp eq ptr %.pr118, null
  br i1 %.not.i69, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, label %bb.x

bb.x:                                             ; preds = %_ZN7testing19MatchResultListenerlsIA10_cEERS0_RKT_.exit68
  %i.dt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.pr118, i64 noundef %storemerge33144)
          to label %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit71 unwind label %bb.aa ; 0 uses

_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit71: ; preds = %bb.x
  %.pr120.pr = load ptr, ptr %i.bv, align 8, !tbaa !176 ; 2 uses
  %.not.i72 = icmp eq ptr %.pr120.pr, null
  br i1 %.not.i72, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, label %bb.y

bb.y:                                             ; preds = %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit71
  %i.du = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr120.pr, ptr noundef nonnull @.str.31, i64 noundef 2)
          to label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit74 unwind label %bb.aa ; 0 uses

_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit74: ; preds = %bb.y
  %.pr122 = load ptr, ptr %i.bv, align 8, !tbaa !176 ; 2 uses
  %.not.i75 = icmp eq ptr %.pr122, null
  br i1 %.not.i75, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, label %bb.z

bb.z:                                             ; preds = %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit74
  %i.dv = load ptr, ptr %1, align 8, !tbaa !123
  %i.dw = getelementptr inbounds nuw [32 x i8], ptr %i.dv, i64 %storemerge33144 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !7
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !13
  %i.ea = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr122, ptr noundef %i.dx, i64 noundef %i.dz)
          to label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.aa ; 0 uses

_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit65, %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit60, %_ZN7testing19MatchResultListenerlsIA10_cEERS0_RKT_.exit68, %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit71, %bb.z, %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit74, %bb.p, %bb.o
  %.1110 = phi ptr [ %.0109142, %bb.o ], [ %.0109142, %bb.p ], [ @.str.17, %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit74 ], [ @.str.17, %bb.z ], [ @.str.17, %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit71 ], [ @.str.17, %_ZN7testing19MatchResultListenerlsIA10_cEERS0_RKT_.exit68 ], [ @.str.17, %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit60 ], [ @.str.17, %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit65 ]
  %.1108 = phi ptr [ %.0107143, %bb.o ], [ %.0107143, %bb.p ], [ @.str.2, %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit74 ], [ @.str.2, %bb.z ], [ @.str.2, %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit71 ], [ @.str.2, %_ZN7testing19MatchResultListenerlsIA10_cEERS0_RKT_.exit68 ], [ @.str.2, %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit60 ], [ @.str.2, %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit65 ]
  %.3 = phi i8 [ %.2145, %bb.o ], [ 0, %bb.p ], [ 0, %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit74 ], [ 0, %bb.z ], [ 0, %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit71 ], [ 0, %_ZN7testing19MatchResultListenerlsIA10_cEERS0_RKT_.exit68 ], [ 0, %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit60 ], [ 0, %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit65 ] ; 2 uses
  %i.eb = add nuw i64 %storemerge33144, 1         ; 2 uses
  %exitcond158.not = icmp eq i64 %i.eb, %i.bt
  br i1 %exitcond158.not, label %._crit_edge148, label %bb.o, !llvm.loop !243

bb.aa:                                            ; preds = %bb.r, %bb.s, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i77 = icmp eq ptr %.sroa.091.0172, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorIcSaIcEED2Ev.exit78.thread, label %bb.ab

bb.ab:                                            ; preds = %.thread, %bb.aa
  %.pn182 = phi { ptr, i32 } [ %i.ct, %.thread ], [ %i.ec, %bb.aa ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.091.0172, i64 noundef %5) #30
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit78

_ZNSt6vectorIcSaIcEED2Ev.exit78:                  ; preds = %bb.ab, %7
  %.pn.pn = phi { ptr, i32 } [ %8, %7 ], [ %.pn182, %bb.ab ] ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %.sroa.099.0, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIcSaIcEED2Ev.exit80, label %_ZNSt6vectorIcSaIcEED2Ev.exit78.thread

_ZNSt6vectorIcSaIcEED2Ev.exit78.thread:           ; preds = %bb.aa, %_ZNSt6vectorIcSaIcEED2Ev.exit78
  %.pn.pn185 = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIcSaIcEED2Ev.exit78 ], [ %i.ec, %bb.aa ]
  %i.ed = ptrtoint ptr %.sroa.099.0 to i64
  %i.ee = sub i64 %.sroa.15105.0, %i.ed
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0, i64 noundef %i.ee) #30
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit80

_ZNSt6vectorIcSaIcEED2Ev.exit80:                  ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit78.thread, %_ZNSt6vectorIcSaIcEED2Ev.exit78
  %.pn.pn186 = phi { ptr, i32 } [ %.pn.pn185, %_ZNSt6vectorIcSaIcEED2Ev.exit78.thread ], [ %.pn.pn, %_ZNSt6vectorIcSaIcEED2Ev.exit78 ]
  resume { ptr, i32 } %.pn.pn186
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal15LogWithLocationENS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !28
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %4, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !235
  %i.g = or i32 %i.f, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.d, i32 noundef %i.g)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.h = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %1, i64 noundef %i.h)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.35, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %2)
          to label %bb.d unwind label %bb.l       ; 2 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.31, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %bb.d
  %i.m = load ptr, ptr %3, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !13
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.m, i64 noundef %i.o)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.l ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !28
  %i.r = getelementptr i8, ptr %i.q, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 240
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !244  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZSt16__throw_bad_castv() #34
          to label %.noexc19 unwind label %bb.l

.noexc19:                                         ; preds = %bb.e
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.x = load i8, ptr %i.w, align 8, !tbaa !251
  %.not.i1.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 67
  %i.z = load i8, ptr %i.y, align 1, !tbaa !14
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.v)
          to label %.noexc20 unwind label %bb.l

.noexc20:                                         ; preds = %bb.g
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef signext i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(570) %i.v, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.l, !inline_history !257

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc20, %bb.f
  %.0.i.i.i = phi i8 [ %i.z, %bb.f ], [ %i.ad, %.noexc20 ]
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i8 noundef signext %.0.i.i.i)
          to label %.noexc22 unwind label %bb.l

.noexc22:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.l ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ag, ptr %5, align 8, !tbaa !15, !alias.scope !264
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.ah, align 8, !tbaa !13, !alias.scope !264
  store i8 0, ptr %i.ag, align 8, !tbaa !14, !alias.scope !264
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !23, !noalias !264 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.aj, null
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !264 ; 2 uses
  %i.am = icmp ugt ptr %i.aj, %i.al
  %.08.i.i.i = select i1 %i.am, ptr %i.aj, ptr %i.al ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !27, !noalias !264 ; 2 uses
  %i.ap = ptrtoint ptr %.08.i.i.i to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.ao, i64 noundef %i.ar)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %5, align 8, !tbaa !7, !alias.scope !264 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ag
  br i1 %i.av, label %.body, label %.body.sink.split

bb.j:                                             ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.aw)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.j, %bb.h
  invoke void @_ZN7testing8internal3LogENS0_11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ax = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ag
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.az = load i64, ptr %i.ag, align 8, !tbaa !14
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.bb = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bb, ptr %4, align 8, !tbaa !28
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bd = getelementptr i8, ptr %i.bb, i64 -24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %4, i64 %i.be
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !28
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bg, align 8, !tbaa !28
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !7  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !14
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #30
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bg, align 8, !tbaa !28
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bn) #29
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bo) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void

bb.l:                                             ; preds = %.noexc22, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc20, %bb.g, %bb.e, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.c, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.or.v4i8
!33 = !{!"_ZTSN7testing12_GLOBAL__N_122BetweenCardinalityImplE", !34, i64 0, !4, i64 8, !4, i64 12}
!34 = !{!"_ZTSN7testing20CardinalityInterfaceE"}
!35 = !{!33, !4, i64 12}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!38 = distinct !{!38, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!41 = distinct !{!41, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!42 = !{!40, !37}
!43 = !{!"branch_weights", i32 1, i32 1048575}
!44 = !{!45, !45, i64 0}
!45 = !{!"p1 _ZTSN7testing8internal24FailureReporterInterfaceE", !11, i64 0}
!46 = distinct !{null}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!49 = distinct !{!49, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!52 = distinct !{!52, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!53 = !{!51, !48}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!56 = distinct !{!56, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!59 = distinct !{!59, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!60 = !{!58, !55}
!61 = !{!62, !63, i64 0}
!62 = !{!"_ZTSN7testing8internal10linked_ptrIKNS_20CardinalityInterfaceEEE", !63, i64 0, !64, i64 8}
!63 = !{!"p1 _ZTSN7testing20CardinalityInterfaceE", !11, i64 0}
!64 = !{!"_ZTSN7testing8internal19linked_ptr_internalE", !65, i64 0}
!65 = !{!"p1 _ZTSN7testing8internal19linked_ptr_internalE", !11, i64 0}
!66 = !{!64, !65, i64 0}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6rbeginEv: argument 0"}
!71 = distinct !{!71, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6rbeginEv"}
!72 = !{!73, !74, i64 0}
!73 = !{!"_ZTSN7testing8internal10linked_ptrIKNS_16MatcherInterfaceIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEE", !74, i64 0, !64, i64 8}
!74 = !{!"p1 _ZTSN7testing16MatcherInterfaceIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !11, i64 0}
!75 = !{!12, !12, i64 0}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZN7testing2EqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_8internal9EqMatcherIT_EES9_: argument 0"}
!78 = distinct !{!78, !"_ZN7testing2EqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_8internal9EqMatcherIT_EES9_"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZNK7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_NS0_5AnyEqEEcvNS_7MatcherIT_EEIRKS8_EEv: argument 0"}
!81 = distinct !{!81, !"_ZNK7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_NS0_5AnyEqEEcvNS_7MatcherIT_EEIRKS8_EEv"}
!82 = !{!83, !80}
!83 = distinct !{!83, !84, !"_ZN7testing11MakeMatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_7MatcherIT_EEPKNS_16MatcherInterfaceISA_EE: argument 0"}
!84 = distinct !{!84, !"_ZN7testing11MakeMatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_7MatcherIT_EEPKNS_16MatcherInterfaceISA_EE"}
!85 = !{ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev}
!86 = distinct !{!86, !68}
!87 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, null, null}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN7testing2EqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_8internal9EqMatcherIT_EES9_: argument 0"}
!90 = distinct !{!90, !"_ZN7testing2EqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_8internal9EqMatcherIT_EES9_"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZNK7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_NS0_5AnyEqEEcvNS_7MatcherIT_EEIRKS8_EEv: argument 0"}
!93 = distinct !{!93, !"_ZNK7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_NS0_5AnyEqEEcvNS_7MatcherIT_EEIRKS8_EEv"}
!94 = !{!95, !92}
!95 = distinct !{!95, !96, !"_ZN7testing11MakeMatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_7MatcherIT_EEPKNS_16MatcherInterfaceISA_EE: argument 0"}
!96 = distinct !{!96, !"_ZN7testing11MakeMatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_7MatcherIT_EEPKNS_16MatcherInterfaceISA_EE"}
!97 = !{!98, !99, i64 0}
!98 = !{!"_ZTSN7testing8internal10linked_ptrIKNS_16MatcherInterfaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEE", !99, i64 0, !64, i64 8}
!99 = !{!"p1 _ZTSN7testing16MatcherInterfaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !11, i64 0}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZN7testing2EqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_8internal9EqMatcherIT_EES9_: argument 0"}
!102 = distinct !{!102, !"_ZN7testing2EqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_8internal9EqMatcherIT_EES9_"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZNK7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_NS0_5AnyEqEEcvNS_7MatcherIT_EEIS8_EEv: argument 0"}
!105 = distinct !{!105, !"_ZNK7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_NS0_5AnyEqEEcvNS_7MatcherIT_EEIS8_EEv"}
!106 = !{!107, !104}
!107 = distinct !{!107, !108, !"_ZN7testing11MakeMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_7MatcherIT_EEPKNS_16MatcherInterfaceIS8_EE: argument 0"}
!108 = distinct !{!108, !"_ZN7testing11MakeMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_7MatcherIT_EEPKNS_16MatcherInterfaceIS8_EE"}
!109 = !{ptr @_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev}
!110 = distinct !{ptr @_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, null, null}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZN7testing2EqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_8internal9EqMatcherIT_EES9_: argument 0"}
!113 = distinct !{!113, !"_ZN7testing2EqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_8internal9EqMatcherIT_EES9_"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZNK7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_NS0_5AnyEqEEcvNS_7MatcherIT_EEIS8_EEv: argument 0"}
!116 = distinct !{!116, !"_ZNK7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_NS0_5AnyEqEEcvNS_7MatcherIT_EEIS8_EEv"}
!117 = !{!118, !115}
!118 = distinct !{!118, !119, !"_ZN7testing11MakeMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_7MatcherIT_EEPKNS_16MatcherInterfaceIS8_EE: argument 0"}
!119 = distinct !{!119, !"_ZN7testing11MakeMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_7MatcherIT_EEPKNS_16MatcherInterfaceIS8_EE"}
!120 = !{!121, !122, i64 8}
!121 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !122, i64 0, !122, i64 8, !122, i64 16}
!122 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!123 = !{!121, !122, i64 0}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!126 = distinct !{!126, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!127 = !{!128, !125}
!128 = distinct !{!128, !129, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!129 = distinct !{!129, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!130 = distinct !{!130, !68}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!133 = distinct !{!133, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!136 = distinct !{!136, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!137 = !{!138, !135}
!138 = distinct !{!138, !139, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!139 = distinct !{!139, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!142 = distinct !{!142, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!143 = !{!144, !145, i64 0}
!144 = !{!"_ZTSN7testing8internal22MaxBipartiteMatchStateE", !145, i64 0, !146, i64 8, !146, i64 32}
!145 = !{!"p1 _ZTSN7testing8internal11MatchMatrixE", !11, i64 0}
!146 = !{!"_ZTSSt6vectorImSaImEE", !147, i64 0}
!147 = !{!"_ZTSSt12_Vector_baseImSaImEE", !148, i64 0}
!148 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !149, i64 0}
!149 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !150, i64 0, !150, i64 8, !150, i64 16}
!150 = !{!"p1 long", !11, i64 0}
!151 = !{!152, !12, i64 0}
!152 = !{!"_ZTSN7testing8internal11MatchMatrixE", !12, i64 0, !12, i64 8, !153, i64 16}
!153 = !{!"_ZTSSt6vectorIcSaIcEE", !154, i64 0}
!154 = !{!"_ZTSSt12_Vector_baseIcSaIcEE", !155, i64 0}
!155 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE12_Vector_implE", !156, i64 0}
!156 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!157 = !{!149, !150, i64 0}
!158 = !{!149, !150, i64 16}
!159 = !{!149, !150, i64 8}
!160 = !{!152, !12, i64 8}
!161 = !{!156, !10, i64 16}
!162 = !{!156, !10, i64 0}
!163 = !{!156, !10, i64 8}
!164 = distinct !{!164, !68}
!165 = !{!166, !167, i64 16}
!166 = !{!"_ZTSNSt12_Vector_baseISt4pairImmESaIS1_EE17_Vector_impl_dataE", !167, i64 0, !167, i64 8, !167, i64 16}
!167 = !{!"p1 _ZTSSt4pairImmE", !11, i64 0}
!168 = !{!166, !167, i64 8}
!169 = !{!170, !172}
!170 = distinct !{!170, !171, !"_ZSt19__relocate_object_aISt4pairImmES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!171 = distinct !{!171, !"_ZSt19__relocate_object_aISt4pairImmES1_SaIS1_EEvPT_PT0_RT1_"}
!172 = distinct !{!172, !171, !"_ZSt19__relocate_object_aISt4pairImmES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!173 = distinct !{!173, !68}
!174 = distinct !{!174, !68}
!175 = !{!166, !167, i64 0}
!176 = !{!177, !178, i64 8}
!177 = !{!"_ZTSN7testing19MatchResultListenerE", !178, i64 8}
!178 = !{!"p1 _ZTSSo", !11, i64 0}
!179 = !{}
!180 = !{!167, !167, i64 0}
!181 = !{!182, !12, i64 0}
!182 = !{!"_ZTSSt4pairImmE", !12, i64 0, !12, i64 8}
!183 = !{!182, !12, i64 8}
!184 = distinct !{!184, !68, !185}
!185 = !{!"llvm.loop.peeled.count", i32 1}
!186 = distinct !{!186, !68, !187, !185}
!187 = !{!"llvm.loop.unswitch.partial.disable"}
!188 = distinct !{!188, !68}
!189 = distinct !{!189, !68, !187}
!190 = distinct !{!190, !68, !187}
!191 = distinct !{!191, !68}
!192 = !{!193}
!193 = distinct !{!193, !194, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!194 = distinct !{!194, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!195 = !{!196}
!196 = distinct !{!196, !197, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!197 = distinct !{!197, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!198 = !{!196, !193}
!199 = distinct !{!199, !68}
!200 = distinct !{!200, !68}
!201 = !{!202, !202, i64 0}
!202 = !{!"p2 _ZTSN7testing25MatcherDescriberInterfaceE", !203, i64 0}
!203 = !{!"any p2 pointer", !11, i64 0}
!204 = !{!205, !206, i64 0}
!205 = !{!"_ZTSN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEE", !206, i64 0}
!206 = !{!"p1 _ZTSNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!207 = distinct !{ptr @_ZN7testing7MessageD2Ev, ptr @_ZN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEED2Ev, null}
!208 = !{!209, !202, i64 0}
!209 = !{!"_ZTSNSt12_Vector_baseIPKN7testing25MatcherDescriberInterfaceESaIS3_EE17_Vector_impl_dataE", !202, i64 0, !202, i64 8, !202, i64 16}
!210 = !{!211, !211, i64 0}
!211 = !{!"p1 _ZTSN7testing25MatcherDescriberInterfaceE", !11, i64 0}
!212 = !{!209, !202, i64 8}
!213 = distinct !{!213, !68, !185}
!214 = !{!215, !216, i64 32}
!215 = !{!"_ZTSN4llvh11raw_ostreamE", !10, i64 8, !10, i64 16, !10, i64 24, !216, i64 32}
!216 = !{!"_ZTSN4llvh11raw_ostream10BufferKindE", !5, i64 0}
!217 = !{!178, !178, i64 0}
!218 = distinct !{ptr @_ZN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEED2Ev, null}
!219 = distinct !{!219, !68, !185}
!220 = !{!221}
!221 = distinct !{!221, !222}
!222 = distinct !{!222, !"LVerDomain"}
!223 = !{!224}
!224 = distinct !{!224, !222}
!225 = distinct !{!225, !68, !226, !227}
!226 = !{!"llvm.loop.isvectorized", i32 1}
!227 = !{!"llvm.loop.unroll.runtime.disable"}
!228 = !{!229}
!229 = distinct !{!229, !222}
!230 = !{!224, !221}
!231 = !{!"branch_weights", i32 4, i32 28}
!232 = distinct !{!232, !68, !226, !227}
!233 = distinct !{!233, !68}
!234 = distinct !{!234, !68, !226}
!235 = !{!236, !238, i64 32}
!236 = !{!"_ZTSSt8ios_base", !12, i64 8, !12, i64 16, !237, i64 24, !238, i64 28, !238, i64 32, !239, i64 40, !240, i64 48, !5, i64 64, !4, i64 192, !241, i64 200, !25, i64 208}
!237 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!238 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!239 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!240 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !12, i64 8}
!241 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!242 = distinct !{!242, !68}
!243 = distinct !{!243, !68}
!244 = !{!245, !248, i64 240}
!245 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !236, i64 0, !178, i64 216, !5, i64 224, !246, i64 225, !247, i64 232, !248, i64 240, !249, i64 248, !250, i64 256}
!246 = !{!"bool", !5, i64 0}
!247 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !11, i64 0}
!248 = !{!"p1 _ZTSSt5ctypeIcE", !11, i64 0}
!249 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!250 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!251 = !{!252, !5, i64 56}
!252 = !{!"_ZTSSt5ctypeIcE", !253, i64 0, !254, i64 16, !246, i64 24, !255, i64 32, !255, i64 40, !256, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!253 = !{!"_ZTSNSt6locale5facetE", !4, i64 8}
!254 = !{!"p1 _ZTS15__locale_struct", !11, i64 0}
!255 = !{!"p1 int", !11, i64 0}
!256 = !{!"p1 short", !11, i64 0}
!257 = distinct !{null, null}
!258 = !{!259}
!259 = distinct !{!259, !260, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!260 = distinct !{!260, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!261 = !{!262}
!262 = distinct !{!262, !263, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!263 = distinct !{!263, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!264 = !{!262, !259}
!265 = !{!266, !10, i64 8}
!266 = !{!"_ZTSN7testing8internal15ExpectationBaseE", !10, i64 8, !4, i64 16, !8, i64 24, !246, i64 56, !267, i64 64, !268, i64 80, !4, i64 128, !246, i64 132, !278, i64 136, !246, i64 160, !246, i64 161, !246, i64 162, !282, i64 164, !246, i64 168, !283, i64 176}
!267 = !{!"_ZTSN7testing11CardinalityE", !62, i64 0}
!268 = !{!"_ZTSN7testing14ExpectationSetE", !269, i64 0}
!269 = !{!"_ZTSSt3setIN7testing11ExpectationENS1_4LessESaIS1_EE", !270, i64 0}
!270 = !{!"_ZTSSt8_Rb_treeIN7testing11ExpectationES1_St9_IdentityIS1_ENS1_4LessESaIS1_EE", !271, i64 0}
!271 = !{!"_ZTSNSt8_Rb_treeIN7testing11ExpectationES1_St9_IdentityIS1_ENS1_4LessESaIS1_EE13_Rb_tree_implIS4_Lb1EEE", !272, i64 0, !274, i64 8}
!272 = !{!"_ZTSSt20_Rb_tree_key_compareIN7testing11Expectation4LessEE", !273, i64 0}
!273 = !{!"_ZTSN7testing11Expectation4LessE"}
!274 = !{!"_ZTSSt15_Rb_tree_header", !275, i64 0, !12, i64 32}
!275 = !{!"_ZTSSt18_Rb_tree_node_base", !276, i64 0, !277, i64 8, !277, i64 16, !277, i64 24}
!276 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!277 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !11, i64 0}
!278 = !{!"_ZTSSt6vectorIPKvSaIS1_EE", !279, i64 0}
!279 = !{!"_ZTSSt12_Vector_baseIPKvSaIS1_EE", !280, i64 0}
!280 = !{!"_ZTSNSt12_Vector_baseIPKvSaIS1_EE12_Vector_implE", !281, i64 0}
!281 = !{!"_ZTSNSt12_Vector_baseIPKvSaIS1_EE17_Vector_impl_dataE", !203, i64 0, !203, i64 8, !203, i64 16}
!282 = !{!"_ZTSN7testing8internal15ExpectationBase6ClauseE", !5, i64 0}
!283 = !{!"_ZTSN7testing8internal5MutexE", !284, i64 0}
!284 = !{!"_ZTSN7testing8internal9MutexBaseE", !5, i64 0, !246, i64 40, !12, i64 48}
!285 = !{!266, !4, i64 16}
!286 = !{!266, !246, i64 56}
!287 = !{!274, !276, i64 0}
!288 = !{!274, !277, i64 8}
!289 = !{!274, !277, i64 16}
!290 = !{!274, !277, i64 24}
!291 = !{!274, !12, i64 32}
!292 = !{!266, !4, i64 128}
!293 = !{!266, !246, i64 132}
!294 = !{!266, !282, i64 164}
!295 = !{!266, !246, i64 168}
!296 = !{!281, !203, i64 0}
!297 = !{!281, !203, i64 16}
!298 = !{!284, !246, i64 40}
!299 = distinct !{null, null}
!300 = distinct !{ptr @_ZN7testing11CardinalityD2Ev, null, null}
!301 = !{i8 0, i8 2}
!302 = !{!303, !304, i64 0}
!303 = !{!"_ZTSN7testing8internal10linked_ptrINS0_15ExpectationBaseEEE", !304, i64 0, !64, i64 8}
!304 = !{!"p1 _ZTSN7testing8internal15ExpectationBaseE", !11, i64 0}
!305 = distinct !{!305, !68}
!306 = distinct !{null, null}
!307 = distinct !{!307, !68}
!308 = !{!284, !12, i64 48}
!309 = distinct !{!309, !68}
!310 = distinct !{null}
!311 = distinct !{null, null}
!312 = distinct !{null, null}
!313 = !{!281, !203, i64 8}
!314 = distinct !{null}
!315 = distinct !{null}
!316 = !{!266, !246, i64 161}
!317 = !{!318}
!318 = distinct !{!318, !319, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!319 = distinct !{!319, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!320 = !{!321}
!321 = distinct !{!321, !322, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!322 = distinct !{!322, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!323 = !{!321, !318}
!324 = distinct !{null}
!325 = !{!326, !4, i64 0}
!326 = !{!"_ZTSN7testing8internal11ThreadLocalIPNS_8SequenceEEE", !4, i64 0, !327, i64 8}
!327 = !{!"_ZTSN7testing8internal10scoped_ptrINS0_11ThreadLocalIPNS_8SequenceEE18ValueHolderFactoryEEE", !328, i64 0}
!328 = !{!"p1 _ZTSN7testing8internal11ThreadLocalIPNS_8SequenceEE18ValueHolderFactoryE", !11, i64 0}
!329 = !{ptr @DeleteThreadLocalValue}
!330 = !{!327, !328, i64 0}
!331 = distinct !{null, null}
!332 = !{!333}
!333 = distinct !{!333, !334, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!334 = distinct !{!334, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!335 = !{!336, !333}
!336 = distinct !{!336, !337, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!337 = distinct !{!337, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!338 = !{!339, !11, i64 8}
!339 = !{!"_ZTSN7testing8internal25UntypedFunctionMockerBaseE", !11, i64 8, !10, i64 16, !278, i64 24, !340, i64 48}
!340 = !{!"_ZTSSt6vectorIN7testing8internal10linked_ptrINS1_15ExpectationBaseEEESaIS4_EE", !341, i64 0}
!341 = !{!"_ZTSSt12_Vector_baseIN7testing8internal10linked_ptrINS1_15ExpectationBaseEEESaIS4_EE", !342, i64 0}
!342 = !{!"_ZTSNSt12_Vector_baseIN7testing8internal10linked_ptrINS1_15ExpectationBaseEEESaIS4_EE12_Vector_implE", !343, i64 0}
!343 = !{!"_ZTSNSt12_Vector_baseIN7testing8internal10linked_ptrINS1_15ExpectationBaseEEESaIS4_EE17_Vector_impl_dataE", !344, i64 0, !344, i64 8, !344, i64 16}
!344 = !{!"p1 _ZTSN7testing8internal10linked_ptrINS0_15ExpectationBaseEEE", !11, i64 0}
!345 = !{!339, !10, i64 16}
!346 = !{!343, !344, i64 0}
!347 = !{!343, !344, i64 8}
!348 = distinct !{null, null, null, null, null}
!349 = distinct !{!349, !68}
!350 = !{!343, !344, i64 16}
!351 = !{!11, !11, i64 0}
!352 = !{!277, !277, i64 0}
!353 = !{!354, !354, i64 0}
!354 = !{!"p1 _ZTSN7testing8internal25UntypedFunctionMockerBaseE", !11, i64 0}
!355 = distinct !{!355, !68}
!356 = distinct !{null}
!357 = !{!358}
!358 = distinct !{!358, !359, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!359 = distinct !{!359, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!360 = !{!361}
!361 = distinct !{!361, !362, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!362 = distinct !{!362, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!363 = !{!361, !358}
!364 = !{!365}
!365 = distinct !{!365, !366, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!366 = distinct !{!366, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!367 = !{!368}
!368 = distinct !{!368, !369, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!369 = distinct !{!369, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!370 = !{!368, !365}
!371 = !{!246, !246, i64 0}
!372 = !{!373}
!373 = distinct !{!373, !374, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!374 = distinct !{!374, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!375 = !{!376}
!376 = distinct !{!376, !377, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!377 = distinct !{!377, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!378 = !{!376, !373}
!379 = !{!380}
!380 = distinct !{!380, !381, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!381 = distinct !{!381, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!382 = !{!383}
!383 = distinct !{!383, !384, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!384 = distinct !{!384, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!385 = !{!383, !380}
!386 = !{!387}
!387 = distinct !{!387, !388, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!388 = distinct !{!388, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!389 = !{!390}
!390 = distinct !{!390, !391, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!391 = distinct !{!391, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!392 = !{!390, !387}
!393 = !{!394}
!394 = distinct !{!394, !395, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!395 = distinct !{!395, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!396 = !{!397}
!397 = distinct !{!397, !398, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!398 = distinct !{!398, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!399 = !{!397, !394}
!400 = !{!401}
!401 = distinct !{!401, !402, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!402 = distinct !{!402, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!403 = !{!404}
!404 = distinct !{!404, !405, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!405 = distinct !{!405, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!406 = !{!404, !401}
!407 = !{!408}
!408 = distinct !{!408, !409, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!409 = distinct !{!409, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!410 = !{!411}
!411 = distinct !{!411, !412, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!412 = distinct !{!412, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!413 = !{!411, !408}
!414 = !{!415}
!415 = distinct !{!415, !416, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!416 = distinct !{!416, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!417 = distinct !{!417, !68}
!418 = !{!419, !419, i64 0}
!419 = !{!"_ZTSN7testing8internal12CallReactionE", !5, i64 0}
!420 = !{!344, !344, i64 0}
!421 = distinct !{!421, !68}
!422 = !{!423}
!423 = distinct !{!423, !424, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!424 = distinct !{!424, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!425 = !{!426}
!426 = distinct !{!426, !427, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!427 = distinct !{!427, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!428 = !{!426, !423}
!429 = distinct !{!429, !68}
!430 = distinct !{null, null, null, null, null, null, null}
!431 = !{!432, !246, i64 88}
!432 = !{!"_ZTSSt4pairIKPKvN7testing12_GLOBAL__N_115MockObjectStateEE", !11, i64 0, !433, i64 8}
!433 = !{!"_ZTSN7testing12_GLOBAL__N_115MockObjectStateE", !10, i64 0, !4, i64 8, !8, i64 16, !8, i64 48, !246, i64 80, !434, i64 88}
!434 = !{!"_ZTSSt3setIPN7testing8internal25UntypedFunctionMockerBaseESt4lessIS3_ESaIS3_EE", !435, i64 0}
end_hunk_1
