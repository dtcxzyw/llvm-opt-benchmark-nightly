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
  %i.g = load i64, ptr %i.f, align 8, !tbaa !160  ; 18 uses
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
          to label %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit45.thread unwind label %bb.d ; 12 uses

_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit45.thread:   ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.i, i8 0, i64 %i.g, i1 false)
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  br i1 %.not.i.i.i.i, label %.preheader, label %.preheader130.lr.ph.split

.preheader130.lr.ph.split:                        ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit45.thread
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !162  ; 4 uses
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

iter.check:                                       ; preds = %.preheader130.lr.ph.split, %._crit_edge
  %.026137 = phi i64 [ 0, %.preheader130.lr.ph.split ], [ %i.bc, %._crit_edge ] ; 3 uses
  %i.o = mul i64 %.026137, %i.g
  %i.p = getelementptr i8, ptr %i.m, i64 %i.o     ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.099.0, i64 %.026137 ; 6 uses
  %.promoted = load i8, ptr %i.q, align 1, !tbaa !14 ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx195
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check196, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.r = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %.promoted, i64 0
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
  %bc.merge.rdx = phi i8 [ %i.af, %vec.epilog.iter.check ], [ %.promoted, %vector.main.loop.iter.check ]
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
  %.ph = phi i8 [ %.promoted, %iter.check ], [ %i.ao, %vec.epilog.middle.block ], [ %i.af, %vec.epilog.iter.check ] ; 2 uses
  %.025136.ph = phi i64 [ 0, %iter.check ], [ %n.vec202, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 5 uses
  %.neg = or disjoint i64 %.025136.ph, 1
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ap = getelementptr i8, ptr %i.p, i64 %.025136.ph
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !14
  %i.ar = icmp eq i8 %i.aq, 1
  %i.as = zext i1 %i.ar to i8                     ; 2 uses
  %i.at = or i8 %.ph, %i.as                       ; 2 uses
  store i8 %i.at, ptr %i.q, align 1, !tbaa !14
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 %.025136.ph ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !14
  %i.aw = or i8 %i.av, %i.as
  store i8 %i.aw, ptr %i.au, align 1, !tbaa !14
  %i.ax = or disjoint i64 %.025136.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.unr = phi i8 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.at, %vec.epilog.scalar.ph.prol ]
  %.025136.unr = phi i64 [ %.025136.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ax, %vec.epilog.scalar.ph.prol ]
  %4 = icmp eq i64 %i.g, %.neg
  br i1 %4, label %._crit_edge, label %vec.epilog.scalar.ph

.preheader:                                       ; preds = %._crit_edge, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i39, %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit45.thread
  %.sroa.091.0172 = phi ptr [ %i.i, %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit45.thread ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i39 ], [ %i.i, %._crit_edge ] ; 6 uses
  %.sroa.15.0170 = phi i64 [ %i.k, %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit45.thread ], [ 0, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i39 ], [ %i.k, %._crit_edge ] ; 2 uses
  %i.ay = ptrtoint ptr %.sroa.091.0172 to i64     ; 2 uses
  %i.az = sub i64 %.sroa.15.0170, %i.ay           ; 3 uses
  %.not154 = icmp eq i64 %.sroa.15.0170, %i.ay
  br i1 %.not154, label %._crit_edge141, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit78

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.bc = add nuw i64 %.026137, 1                 ; 2 uses
  %exitcond156.not = icmp eq i64 %i.bc, %i.a
  br i1 %exitcond156.not, label %.preheader, label %iter.check, !llvm.loop !233

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.bd = phi i8 [ %i.br, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.025136 = phi i64 [ %i.bv, %vec.epilog.scalar.ph ], [ %.025136.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.be = getelementptr i8, ptr %i.p, i64 %.025136
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !14
  %i.bg = icmp eq i8 %i.bf, 1
  %i.bh = zext i1 %i.bg to i8                     ; 2 uses
  %i.bi = or i8 %i.bd, %i.bh                      ; 2 uses
  store i8 %i.bi, ptr %i.q, align 1, !tbaa !14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 %.025136 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !14
  %i.bl = or i8 %i.bk, %i.bh
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !14
  %i.bm = add nuw i64 %.025136, 1                 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.p, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !14
  %i.bp = icmp eq i8 %i.bo, 1
  %i.bq = zext i1 %i.bp to i8                     ; 2 uses
  %i.br = or i8 %i.bi, %i.bq                      ; 2 uses
  store i8 %i.br, ptr %i.q, align 1, !tbaa !14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bm ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !14
  %i.bu = or i8 %i.bt, %i.bq
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !14
  %i.bv = add nuw i64 %.025136, 2                 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bv, %i.g
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !234

._crit_edge141:                                   ; preds = %bb.m, %.preheader
  %.0.lcssa = phi i8 [ 1, %.preheader ], [ %.1, %bb.m ] ; 3 uses
  %i.bw = ptrtoint ptr %.sroa.099.0 to i64        ; 2 uses
  %i.bx = sub i64 %.sroa.15105.0, %i.bw           ; 2 uses
  %.not155 = icmp eq i64 %.sroa.15105.0, %i.bw
  br i1 %.not155, label %._crit_edge149, label %.lr.ph148

.lr.ph148:                                        ; preds = %._crit_edge141
  %i.by = trunc nuw i8 %.0.lcssa to i1
  %spec.store.select = select i1 %i.by, ptr @.str.2, ptr @.str.33
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  br label %bb.p

bb.e:                                             ; preds = %.lr.ph, %bb.m
  %.0140 = phi i8 [ 1, %.lr.ph ], [ %.1, %bb.m ]
  %storemerge139 = phi i64 [ 0, %.lr.ph ], [ %i.cy, %bb.m ] ; 4 uses
  %.0111138 = phi ptr [ @.str.29, %.lr.ph ], [ %.1112, %bb.m ] ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.091.0172, i64 %storemerge139
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !14
  %.not34 = icmp eq i8 %i.cb, 0
  br i1 %.not34, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.cc = load ptr, ptr %i.ba, align 8, !tbaa !176 ; 4 uses
  %.not129 = icmp eq ptr %i.cc, null
  br i1 %.not129, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq ptr %.0111138, null
  br i1 %.not.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !28
  %i.ce = getelementptr i8, ptr %i.cd, i64 -24
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds i8, ptr %i.cc, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !235
  %i.cj = or i32 %i.ci, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cg, i32 noundef %i.cj)
          to label %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit unwind label %.thread

bb.i:                                             ; preds = %bb.g
  %i.ck = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0111138) #29
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull %.0111138, i64 noundef %i.ck)
          to label %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit unwind label %.thread ; 0 uses

_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit: ; preds = %bb.h, %bb.i
  %i.cm = load ptr, ptr %i.ba, align 8, !tbaa !176 ; 2 uses
  %.not.i48 = icmp eq ptr %i.cm, null
  br i1 %.not.i48, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull @.str.30, i64 noundef 9)
          to label %_ZN7testing19MatchResultListenerlsIA10_cEERS0_RKT_.exit unwind label %.thread ; 0 uses

_ZN7testing19MatchResultListenerlsIA10_cEERS0_RKT_.exit: ; preds = %bb.j
  %.pr = load ptr, ptr %i.ba, align 8, !tbaa !176 ; 2 uses
  %.not.i50 = icmp eq ptr %.pr, null
  br i1 %.not.i50, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN7testing19MatchResultListenerlsIA10_cEERS0_RKT_.exit
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.pr, i64 noundef %storemerge139)
          to label %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit unwind label %.thread ; 0 uses

_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit: ; preds = %bb.k
  %.pr114 = load ptr, ptr %i.ba, align 8, !tbaa !176 ; 2 uses
  %.not.i52 = icmp eq ptr %.pr114, null
  br i1 %.not.i52, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr114, ptr noundef nonnull @.str.31, i64 noundef 2)
          to label %._ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit_crit_edge unwind label %.thread ; 0 uses

._ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit_crit_edge: ; preds = %bb.l
  %.pre = load ptr, ptr %i.ba, align 8, !tbaa !176
  br label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit

_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit: ; preds = %._ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit_crit_edge, %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit, %_ZN7testing19MatchResultListenerlsIA10_cEERS0_RKT_.exit, %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit
  %i.cq = phi ptr [ %.pre, %._ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit_crit_edge ], [ null, %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit ], [ null, %_ZN7testing19MatchResultListenerlsIA10_cEERS0_RKT_.exit ], [ null, %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit ]
  %i.cr = load ptr, ptr %0, align 8, !tbaa !208
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %storemerge139
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !210 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !28
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  invoke void %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef %i.cq)
          to label %bb.m unwind label %.thread

.thread:                                          ; preds = %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.m:                                             ; preds = %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit, %bb.f, %bb.e
  %.1112 = phi ptr [ %.0111138, %bb.e ], [ %.0111138, %bb.f ], [ @.str.17, %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit ]
  %.1 = phi i8 [ %.0140, %bb.e ], [ 0, %bb.f ], [ 0, %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit ] ; 2 uses
  %i.cy = add nuw i64 %storemerge139, 1           ; 2 uses
  %exitcond157.not = icmp eq i64 %i.cy, %i.az
  br i1 %exitcond157.not, label %._crit_edge141, label %bb.e, !llvm.loop !242

._crit_edge149:                                   ; preds = %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %._crit_edge141
  %.2.lcssa = phi i8 [ %.0.lcssa, %._crit_edge141 ], [ %.3, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit ]
  %.not.i.i.i = icmp eq ptr %.sroa.091.0172, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge149
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.091.0172, i64 noundef %i.az) #30
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %._crit_edge149, %bb.n
  %.not.i.i.i54 = icmp eq ptr %.sroa.099.0, null
  br i1 %.not.i.i.i54, label %_ZNSt6vectorIcSaIcEED2Ev.exit55, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0, i64 noundef %i.bx) #30
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit55

_ZNSt6vectorIcSaIcEED2Ev.exit55:                  ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit, %bb.o
  %i.cz = trunc nuw i8 %.2.lcssa to i1
  ret i1 %i.cz

bb.p:                                             ; preds = %.lr.ph148, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %.2146 = phi i8 [ %.0.lcssa, %.lr.ph148 ], [ %.3, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit ]
  %storemerge33145 = phi i64 [ 0, %.lr.ph148 ], [ %i.ef, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit ] ; 4 uses
  %.0107144 = phi ptr [ %spec.store.select, %.lr.ph148 ], [ %.1108, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit ] ; 5 uses
  %.0109143 = phi ptr [ @.str.32, %.lr.ph148 ], [ %.1110, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit ] ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.099.0, i64 %storemerge33145
  %i.db = load i8, ptr %i.da, align 1, !tbaa !14
  %.not = icmp eq i8 %i.db, 0
  br i1 %.not, label %bb.q, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit

bb.q:                                             ; preds = %bb.p
  %i.dc = load ptr, ptr %i.bz, align 8, !tbaa !176 ; 4 uses
  %.not128 = icmp eq ptr %i.dc, null
  br i1 %.not128, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not.i.i57 = icmp eq ptr %.0107144, null
  br i1 %.not.i.i57, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !28
  %i.de = getelementptr i8, ptr %i.dd, i64 -24
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = getelementptr inbounds i8, ptr %i.dc, i64 %i.df ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !235
  %i.dj = or i32 %i.di, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.dg, i32 noundef %i.dj)
          to label %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit60 unwind label %bb.ab

bb.t:                                             ; preds = %bb.r
  %i.dk = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0107144) #29
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull %.0107144, i64 noundef %i.dk)
          to label %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit60 unwind label %bb.ab ; 0 uses

_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit60: ; preds = %bb.s, %bb.t
  %i.dm = load ptr, ptr %i.bz, align 8, !tbaa !176 ; 4 uses
  %.not.i61 = icmp eq ptr %i.dm, null
  br i1 %.not.i61, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, label %bb.u

bb.u:                                             ; preds = %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit60
  %.not.i.i62 = icmp eq ptr %.0109143, null
  br i1 %.not.i.i62, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !28
  %i.do = getelementptr i8, ptr %i.dn, i64 -24
  %i.dp = load i64, ptr %i.do, align 8
  %i.dq = getelementptr inbounds i8, ptr %i.dm, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !235
  %i.dt = or i32 %i.ds, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.dq, i32 noundef %i.dt)
end_hunk_0
