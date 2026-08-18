inline.NumInlined: 1907
inline.NumDeleted: 759
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase22DescribeNegationToImplEPSo:bb.a
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body29

.body29:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i23, %bb.r
  %eh.lpad-body30 = phi { ptr, i32 } [ %i.bp, %bb.r ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i23 ]
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
  %i.g = load i64, ptr %i.f, align 8, !tbaa !160  ; 17 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i39

bb.b:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #34
          to label %.noexc43 unwind label %bb.d

.noexc43:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i39: ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit
  %.not.i.i.i.i40 = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i.i40, label %.preheader, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i39
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #31
          to label %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit45.thread unwind label %bb.d ; 11 uses

_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit45.thread:   ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.i, i64 %i.g     ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.i, i8 0, i64 %i.g, i1 false)
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  br i1 %.not.i.i.i.i, label %.preheader, label %.preheader130.lr.ph.split

.preheader130.lr.ph.split:                        ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit45.thread
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !162  ; 4 uses
  %scevgep = getelementptr i8, ptr %.sroa.099.0, i64 %i.a ; 2 uses
  %i.n = mul i64 %i.g, %i.a
  %scevgep188 = getelementptr i8, ptr %i.m, i64 %i.n ; 2 uses
  %min.iters.check = icmp ult i64 %i.g, 4
  %bound0 = icmp ult ptr %.sroa.099.0, %i.j
  %bound1 = icmp ult ptr %i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0189 = icmp ult ptr %.sroa.099.0, %scevgep188
  %bound1190 = icmp ult ptr %i.m, %scevgep
  %found.conflict191 = and i1 %bound0189, %bound1190
  %conflict.rdx = or i1 %found.conflict, %found.conflict191
  %bound0192 = icmp ult ptr %i.i, %scevgep188
  %bound1193 = icmp ult ptr %i.m, %i.j
  %found.conflict194 = and i1 %bound0192, %bound1193
  %conflict.rdx195 = or i1 %conflict.rdx, %found.conflict194
  %min.iters.check196 = icmp ult i64 %i.g, 32
  %i.o = and i64 %i.g, 28
  %n.vec = and i64 %i.g, 9223372036854775776      ; 4 uses
  %cmp.n = icmp eq i64 %i.g, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  %n.vec201 = and i64 %i.g, 9223372036854775804   ; 3 uses
  %cmp.n207 = icmp eq i64 %i.g, %n.vec201
  %xtraiter = and i64 %i.g, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %.preheader130.lr.ph.split, %._crit_edge
  %.026137 = phi i64 [ 0, %.preheader130.lr.ph.split ], [ %i.be, %._crit_edge ] ; 3 uses
  %i.p = mul i64 %.026137, %i.g
  %i.q = getelementptr i8, ptr %i.m, i64 %i.p     ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.099.0, i64 %.026137 ; 6 uses
  %.promoted = load i8, ptr %i.r, align 1, !tbaa !14 ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx195
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check196, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.s = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <16 x i8> [ %i.s, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi197 = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.t = getelementptr i8, ptr %i.q, i64 %index   ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 16
  %wide.load = load <16 x i8>, ptr %i.t, align 1, !tbaa !14, !alias.scope !220
  %wide.load198 = load <16 x i8>, ptr %i.u, align 1, !tbaa !14, !alias.scope !220
  %i.v = icmp eq <16 x i8> %wide.load, splat (i8 1)
  %i.w = icmp eq <16 x i8> %wide.load198, splat (i8 1)
  %i.x = zext <16 x i1> %i.v to <16 x i8>         ; 2 uses
  %i.y = zext <16 x i1> %i.w to <16 x i8>         ; 2 uses
  %i.z = or <16 x i8> %vec.phi, %i.x              ; 2 uses
  %i.aa = or <16 x i8> %vec.phi197, %i.y          ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 %index ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %wide.load199 = load <16 x i8>, ptr %i.ab, align 1, !tbaa !14, !alias.scope !223, !noalias !220
  %wide.load200 = load <16 x i8>, ptr %i.ac, align 1, !tbaa !14, !alias.scope !223, !noalias !220
  %i.ad = or <16 x i8> %wide.load199, %i.x
  %i.ae = or <16 x i8> %wide.load200, %i.y
  store <16 x i8> %i.ad, ptr %i.ab, align 1, !tbaa !14, !alias.scope !223, !noalias !220
  store <16 x i8> %i.ae, ptr %i.ac, align 1, !tbaa !14, !alias.scope !223, !noalias !220
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !225

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i8> %i.aa, %i.z
  %i.ag = tail call i8 @llvm.vector.reduce.or.v16i8(<16 x i8> %bin.rdx) ; 3 uses
  store i8 %i.ag, ptr %i.r, align 1, !tbaa !14, !alias.scope !228, !noalias !230
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !231

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.ag, %vec.epilog.iter.check ], [ %.promoted, %vector.main.loop.iter.check ]
  %i.ah = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index202 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next206, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi203 = phi <4 x i8> [ %i.ah, %vec.epilog.ph ], [ %i.al, %vec.epilog.vector.body ]
  %i.ai = getelementptr i8, ptr %i.q, i64 %index202
  %wide.load204 = load <4 x i8>, ptr %i.ai, align 1, !tbaa !14, !alias.scope !220
  %i.aj = icmp eq <4 x i8> %wide.load204, splat (i8 1)
  %i.ak = zext <4 x i1> %i.aj to <4 x i8>         ; 2 uses
  %i.al = or <4 x i8> %vec.phi203, %i.ak          ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 %index202 ; 2 uses
  %wide.load205 = load <4 x i8>, ptr %i.am, align 1, !tbaa !14, !alias.scope !223, !noalias !220
  %i.an = or <4 x i8> %wide.load205, %i.ak
  store <4 x i8> %i.an, ptr %i.am, align 1, !tbaa !14, !alias.scope !223, !noalias !220
  %index.next206 = add nuw i64 %index202, 4       ; 2 uses
  %i.ao = icmp eq i64 %index.next206, %n.vec201
  br i1 %i.ao, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !232

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ap = tail call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %i.al) ; 2 uses
  store i8 %i.ap, ptr %i.r, align 1, !tbaa !14, !alias.scope !228, !noalias !230
  br i1 %cmp.n207, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i8 [ %.promoted, %iter.check ], [ %i.ap, %vec.epilog.middle.block ], [ %i.ag, %vec.epilog.iter.check ] ; 2 uses
  %.025136.ph = phi i64 [ 0, %iter.check ], [ %n.vec201, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 5 uses
  %.neg = or disjoint i64 %.025136.ph, 1
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.aq = getelementptr i8, ptr %i.q, i64 %.025136.ph
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !14
  %i.as = icmp eq i8 %i.ar, 1
  %i.at = zext i1 %i.as to i8                     ; 2 uses
  %i.au = or i8 %.ph, %i.at                       ; 2 uses
  store i8 %i.au, ptr %i.r, align 1, !tbaa !14
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 %.025136.ph ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !14
  %i.ax = or i8 %i.aw, %i.at
  store i8 %i.ax, ptr %i.av, align 1, !tbaa !14
  %i.ay = or disjoint i64 %.025136.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.unr = phi i8 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.au, %vec.epilog.scalar.ph.prol ]
  %.025136.unr = phi i64 [ %.025136.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ay, %vec.epilog.scalar.ph.prol ]
  %i.az = icmp eq i64 %i.g, %.neg
  br i1 %i.az, label %._crit_edge, label %vec.epilog.scalar.ph

.preheader:                                       ; preds = %._crit_edge, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i39, %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit45.thread
  %.sroa.15.0174 = phi i64 [ %i.k, %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit45.thread ], [ 0, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i39 ], [ %i.k, %._crit_edge ] ; 2 uses
  %.sroa.091.0171 = phi ptr [ %i.i, %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit45.thread ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i39 ], [ %i.i, %._crit_edge ] ; 6 uses
  %i.ba = ptrtoint ptr %.sroa.091.0171 to i64     ; 2 uses
  %i.bb = sub i64 %.sroa.15.0174, %i.ba           ; 3 uses
  %.not154 = icmp eq i64 %.sroa.15.0174, %i.ba
  br i1 %.not154, label %._crit_edge141, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit78

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.be = add nuw i64 %.026137, 1                 ; 2 uses
  %exitcond156.not = icmp eq i64 %i.be, %i.a
  br i1 %exitcond156.not, label %.preheader, label %iter.check, !llvm.loop !233

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.bf = phi i8 [ %i.bt, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.025136 = phi i64 [ %i.bx, %vec.epilog.scalar.ph ], [ %.025136.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.bg = getelementptr i8, ptr %i.q, i64 %.025136
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !14
  %i.bi = icmp eq i8 %i.bh, 1
  %i.bj = zext i1 %i.bi to i8                     ; 2 uses
  %i.bk = or i8 %i.bf, %i.bj                      ; 2 uses
  store i8 %i.bk, ptr %i.r, align 1, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 %.025136 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !14
  %i.bn = or i8 %i.bm, %i.bj
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !14
  %i.bo = add nuw i64 %.025136, 1                 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.q, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !14
  %i.br = icmp eq i8 %i.bq, 1
  %i.bs = zext i1 %i.br to i8                     ; 2 uses
  %i.bt = or i8 %i.bk, %i.bs                      ; 2 uses
  store i8 %i.bt, ptr %i.r, align 1, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bo ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !14
  %i.bw = or i8 %i.bv, %i.bs
  store i8 %i.bw, ptr %i.bu, align 1, !tbaa !14
  %i.bx = add nuw i64 %.025136, 2                 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bx, %i.g
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !234

._crit_edge141:                                   ; preds = %bb.m, %.preheader
  %.0.lcssa = phi i8 [ 1, %.preheader ], [ %.1, %bb.m ] ; 3 uses
  %i.by = ptrtoint ptr %.sroa.099.0 to i64        ; 2 uses
  %i.bz = sub i64 %.sroa.15105.0, %i.by           ; 2 uses
  %.not155 = icmp eq i64 %.sroa.15105.0, %i.by
  br i1 %.not155, label %._crit_edge149, label %.lr.ph148

.lr.ph148:                                        ; preds = %._crit_edge141
  %i.ca = trunc nuw i8 %.0.lcssa to i1
  %spec.store.select = select i1 %i.ca, ptr @.str.2, ptr @.str.33
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  br label %bb.p

bb.e:                                             ; preds = %.lr.ph, %bb.m
  %.0140 = phi i8 [ 1, %.lr.ph ], [ %.1, %bb.m ]
  %storemerge139 = phi i64 [ 0, %.lr.ph ], [ %i.da, %bb.m ] ; 4 uses
  %.0111138 = phi ptr [ @.str.29, %.lr.ph ], [ %.1112, %bb.m ] ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.091.0171, i64 %storemerge139
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !14
  %.not34 = icmp eq i8 %i.cd, 0
  br i1 %.not34, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.ce = load ptr, ptr %i.bc, align 8, !tbaa !176 ; 4 uses
  %.not129 = icmp eq ptr %i.ce, null
  br i1 %.not129, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq ptr %.0111138, null
  br i1 %.not.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !28
  %i.cg = getelementptr i8, ptr %i.cf, i64 -24
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !235
  %i.cl = or i32 %i.ck, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ci, i32 noundef %i.cl)
          to label %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit unwind label %.thread

bb.i:                                             ; preds = %bb.g
  %i.cm = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0111138) #29
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull %.0111138, i64 noundef %i.cm)
          to label %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit unwind label %.thread ; 0 uses

_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit: ; preds = %bb.h, %bb.i
  %i.co = load ptr, ptr %i.bc, align 8, !tbaa !176 ; 2 uses
  %.not.i48 = icmp eq ptr %i.co, null
  br i1 %.not.i48, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull @.str.30, i64 noundef 9)
          to label %_ZN7testing19MatchResultListenerlsIA10_cEERS0_RKT_.exit unwind label %.thread ; 0 uses

_ZN7testing19MatchResultListenerlsIA10_cEERS0_RKT_.exit: ; preds = %bb.j
  %.pr = load ptr, ptr %i.bc, align 8, !tbaa !176 ; 2 uses
  %.not.i50 = icmp eq ptr %.pr, null
  br i1 %.not.i50, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN7testing19MatchResultListenerlsIA10_cEERS0_RKT_.exit
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.pr, i64 noundef %storemerge139)
          to label %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit unwind label %.thread ; 0 uses

_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit: ; preds = %bb.k
  %.pr114 = load ptr, ptr %i.bc, align 8, !tbaa !176 ; 2 uses
  %.not.i52 = icmp eq ptr %.pr114, null
  br i1 %.not.i52, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr114, ptr noundef nonnull @.str.31, i64 noundef 2)
          to label %._ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit_crit_edge unwind label %.thread ; 0 uses

._ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit_crit_edge: ; preds = %bb.l
  %.pre = load ptr, ptr %i.bc, align 8, !tbaa !176
  br label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit

_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit: ; preds = %._ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit_crit_edge, %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit, %_ZN7testing19MatchResultListenerlsIA10_cEERS0_RKT_.exit, %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit
  %i.cs = phi ptr [ %.pre, %._ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit_crit_edge ], [ null, %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit ], [ null, %_ZN7testing19MatchResultListenerlsIA10_cEERS0_RKT_.exit ], [ null, %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit ]
  %i.ct = load ptr, ptr %0, align 8, !tbaa !208
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %storemerge139
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !210 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !28
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8
  invoke void %i.cy(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef %i.cs)
          to label %bb.m unwind label %.thread

.thread:                                          ; preds = %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.m:                                             ; preds = %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit, %bb.f, %bb.e
  %.1112 = phi ptr [ %.0111138, %bb.e ], [ %.0111138, %bb.f ], [ @.str.17, %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit ]
  %.1 = phi i8 [ %.0140, %bb.e ], [ 0, %bb.f ], [ 0, %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit ] ; 2 uses
  %i.da = add nuw i64 %storemerge139, 1           ; 2 uses
  %exitcond157.not = icmp eq i64 %i.da, %i.bb
  br i1 %exitcond157.not, label %._crit_edge141, label %bb.e, !llvm.loop !242

._crit_edge149:                                   ; preds = %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %._crit_edge141
  %.2.lcssa = phi i8 [ %.0.lcssa, %._crit_edge141 ], [ %.3, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit ]
  %.not.i.i.i = icmp eq ptr %.sroa.091.0171, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge149
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.091.0171, i64 noundef %i.bb) #30
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %._crit_edge149, %bb.n
  %.not.i.i.i54 = icmp eq ptr %.sroa.099.0, null
  br i1 %.not.i.i.i54, label %_ZNSt6vectorIcSaIcEED2Ev.exit55, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0, i64 noundef %i.bz) #30
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit55

_ZNSt6vectorIcSaIcEED2Ev.exit55:                  ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit, %bb.o
  %i.db = trunc nuw i8 %.2.lcssa to i1
  ret i1 %i.db

bb.p:                                             ; preds = %.lr.ph148, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %.2146 = phi i8 [ %.0.lcssa, %.lr.ph148 ], [ %.3, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit ]
  %storemerge33145 = phi i64 [ 0, %.lr.ph148 ], [ %i.eh, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit ] ; 4 uses
  %.0107144 = phi ptr [ %spec.store.select, %.lr.ph148 ], [ %.1108, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit ] ; 5 uses
  %.0109143 = phi ptr [ @.str.32, %.lr.ph148 ], [ %.1110, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit ] ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.099.0, i64 %storemerge33145
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !14
  %.not = icmp eq i8 %i.dd, 0
  br i1 %.not, label %bb.q, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit

bb.q:                                             ; preds = %bb.p
  %i.de = load ptr, ptr %i.cb, align 8, !tbaa !176 ; 4 uses
  %.not128 = icmp eq ptr %i.de, null
  br i1 %.not128, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not.i.i57 = icmp eq ptr %.0107144, null
  br i1 %.not.i.i57, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !28
  %i.dg = getelementptr i8, ptr %i.df, i64 -24
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = getelementptr inbounds i8, ptr %i.de, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !235
  %i.dl = or i32 %i.dk, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.di, i32 noundef %i.dl)
          to label %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit60 unwind label %bb.ab

bb.t:                                             ; preds = %bb.r
  %i.dm = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0107144) #29
  %i.dn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull %.0107144, i64 noundef %i.dm)
          to label %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit60 unwind label %bb.ab ; 0 uses

_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit60: ; preds = %bb.s, %bb.t
  %i.do = load ptr, ptr %i.cb, align 8, !tbaa !176 ; 4 uses
  %.not.i61 = icmp eq ptr %i.do, null
  br i1 %.not.i61, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, label %bb.u

bb.u:                                             ; preds = %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit60
  %.not.i.i62 = icmp eq ptr %.0109143, null
  br i1 %.not.i.i62, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !28
  %i.dq = getelementptr i8, ptr %i.dp, i64 -24
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = getelementptr inbounds i8, ptr %i.do, i64 %i.dr ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !235
  %i.dv = or i32 %i.du, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ds, i32 noundef %i.dv)
          to label %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit65 unwind label %bb.ab

bb.w:                                             ; preds = %bb.u
  %i.dw = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0109143) #29
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull %.0109143, i64 noundef %i.dw)
          to label %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit65 unwind label %bb.ab ; 0 uses

_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit65: ; preds = %bb.v, %bb.w
  %.pr116 = load ptr, ptr %i.cb, align 8, !tbaa !176 ; 2 uses
  %.not.i66 = icmp eq ptr %.pr116, null
  br i1 %.not.i66, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, label %bb.x

bb.x:                                             ; preds = %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit65
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr116, ptr noundef nonnull @.str.34, i64 noundef 9)
          to label %_ZN7testing19MatchResultListenerlsIA10_cEERS0_RKT_.exit68 unwind label %bb.ab ; 0 uses

_ZN7testing19MatchResultListenerlsIA10_cEERS0_RKT_.exit68: ; preds = %bb.x
  %.pr118 = load ptr, ptr %i.cb, align 8, !tbaa !176 ; 2 uses
  %.not.i69 = icmp eq ptr %.pr118, null
  br i1 %.not.i69, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, label %bb.y

bb.y:                                             ; preds = %_ZN7testing19MatchResultListenerlsIA10_cEERS0_RKT_.exit68
  %i.dz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.pr118, i64 noundef %storemerge33145)
          to label %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit71 unwind label %bb.ab ; 0 uses

_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit71: ; preds = %bb.y
  %.pr120.pr = load ptr, ptr %i.cb, align 8, !tbaa !176 ; 2 uses
  %.not.i72 = icmp eq ptr %.pr120.pr, null
  br i1 %.not.i72, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, label %bb.z

bb.z:                                             ; preds = %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit71
  %i.ea = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr120.pr, ptr noundef nonnull @.str.31, i64 noundef 2)
          to label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit74 unwind label %bb.ab ; 0 uses

_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit74: ; preds = %bb.z
  %.pr122 = load ptr, ptr %i.cb, align 8, !tbaa !176 ; 2 uses
  %.not.i75 = icmp eq ptr %.pr122, null
  br i1 %.not.i75, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit74
  %i.eb = load ptr, ptr %1, align 8, !tbaa !123
  %i.ec = getelementptr inbounds nuw [32 x i8], ptr %i.eb, i64 %storemerge33145 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !7
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !13
  %i.eg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr122, ptr noundef %i.ed, i64 noundef %i.ef)
          to label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.ab ; 0 uses

_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit65, %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit60, %_ZN7testing19MatchResultListenerlsIA10_cEERS0_RKT_.exit68, %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit71, %bb.aa, %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit74, %bb.q, %bb.p
  %.1110 = phi ptr [ %.0109143, %bb.p ], [ %.0109143, %bb.q ], [ @.str.17, %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit74 ], [ @.str.17, %bb.aa ], [ @.str.17, %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit71 ], [ @.str.17, %_ZN7testing19MatchResultListenerlsIA10_cEERS0_RKT_.exit68 ], [ @.str.17, %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit60 ], [ @.str.17, %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit65 ]
  %.1108 = phi ptr [ %.0107144, %bb.p ], [ %.0107144, %bb.q ], [ @.str.2, %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit74 ], [ @.str.2, %bb.aa ], [ @.str.2, %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit71 ], [ @.str.2, %_ZN7testing19MatchResultListenerlsIA10_cEERS0_RKT_.exit68 ], [ @.str.2, %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit60 ], [ @.str.2, %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit65 ]
  %.3 = phi i8 [ %.2146, %bb.p ], [ 0, %bb.q ], [ 0, %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit74 ], [ 0, %bb.aa ], [ 0, %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit71 ], [ 0, %_ZN7testing19MatchResultListenerlsIA10_cEERS0_RKT_.exit68 ], [ 0, %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit60 ], [ 0, %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit65 ] ; 2 uses
  %i.eh = add nuw i64 %storemerge33145, 1         ; 2 uses
  %exitcond158.not = icmp eq i64 %i.eh, %i.bz
  br i1 %exitcond158.not, label %._crit_edge149, label %bb.p, !llvm.loop !243

bb.ab:                                            ; preds = %bb.s, %bb.t, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i77 = icmp eq ptr %.sroa.091.0171, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorIcSaIcEED2Ev.exit78.thread, label %bb.ac

bb.ac:                                            ; preds = %.thread, %bb.ab
  %.pn182 = phi { ptr, i32 } [ %i.cz, %.thread ], [ %i.ei, %bb.ab ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.091.0171, i64 noundef %i.bb) #30
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit78

_ZNSt6vectorIcSaIcEED2Ev.exit78:                  ; preds = %bb.ac, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.d ], [ %.pn182, %bb.ac ] ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %.sroa.099.0, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIcSaIcEED2Ev.exit80, label %_ZNSt6vectorIcSaIcEED2Ev.exit78.thread

_ZNSt6vectorIcSaIcEED2Ev.exit78.thread:           ; preds = %bb.ab, %_ZNSt6vectorIcSaIcEED2Ev.exit78
  %.pn.pn185 = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIcSaIcEED2Ev.exit78 ], [ %i.ei, %bb.ab ]
  %i.ej = ptrtoint ptr %.sroa.099.0 to i64
  %i.ek = sub i64 %.sroa.15105.0, %i.ej
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0, i64 noundef %i.ek) #30
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

end_hunk_0
