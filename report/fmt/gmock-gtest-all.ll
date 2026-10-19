Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/gmock-gtest-all?download=true
inline.NumInlined: 10506
inline.NumDeleted: 2792
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase22DescribeNegationToImplEPSo:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i48: ; preds = %bb.m
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !69
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i49: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  br label %.body55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i53: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull @.str.407, i64 noundef 56)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i53
  %i.cp = load ptr, ptr %7, align 8, !tbaa !75    ; 3 uses
  %.not.i.i60 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i60, label %_ZN7testing7MessageD2Ev.exit62, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !77
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(128) %i.cp) #56, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit62

_ZN7testing7MessageD2Ev.exit62:                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #56
  br label %bb.q

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i53, %bb.l
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body55

.body55:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i49, %bb.n
  %eh.lpad-body56 = phi { ptr, i32 } [ %i.ct, %bb.n ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i49 ]
  %i.cu = load ptr, ptr %7, align 8, !tbaa !75    ; 3 uses
  %.not.i.i63 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i63, label %_ZN7testing7MessageD2Ev.exit65, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64: ; preds = %.body55
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !77
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(128) %i.cu) #56, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit65

_ZN7testing7MessageD2Ev.exit65:                   ; preds = %.body55, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #56
  br label %bb.u

bb.o:                                             ; preds = %bb.a
  %i.cy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.408, i64 noundef 62) ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  %i.cz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.409, i64 noundef 61) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %_ZN7testing7MessageD2Ev.exit62, %bb.a
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !567
  %i.dd = load ptr, ptr %i.da, align 8, !tbaa !564
  %.not66 = icmp eq ptr %i.dc, %i.dd
  br i1 %.not66, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q, %bb.t
  %.068 = phi i64 [ %i.du, %bb.t ], [ 0, %bb.q ]  ; 3 uses
  %.01767 = phi ptr [ %.str.82..str.94, %bb.t ], [ @.str.32, %bb.q ] ; 2 uses
  %i.de = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.01767) #56
  %i.df = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.01767, i64 noundef %i.de) ; 0 uses
  %i.dg = load i32, ptr %0, align 8, !tbaa !562
  %i.dh = icmp eq i32 %i.dg, 3
  br i1 %i.dh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph
  %i.di = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.401, i64 noundef 12) ; 0 uses
  %i.dj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.068)
  %i.dk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef nonnull @.str.122, i64 noundef 1) ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph
  %i.dl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.402, i64 noundef 14) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dm = load ptr, ptr %i.da, align 8, !tbaa !564
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.068
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !566 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !77
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull %1)
  %i.ds = load i32, ptr %0, align 8, !tbaa !562
  %i.dt = icmp eq i32 %i.ds, 3
  %.str.82..str.94 = select i1 %i.dt, ptr @.str.82, ptr @.str.94
  %i.du = add i64 %.068, 1                        ; 2 uses
  %i.dv = load ptr, ptr %i.db, align 8, !tbaa !567
  %i.dw = load ptr, ptr %i.da, align 8, !tbaa !564
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = ashr exact i64 %i.dz, 3
  %.not = icmp eq i64 %i.du, %i.ea
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !2197

.loopexit:                                        ; preds = %bb.t, %bb.q, %_ZN7testing7MessageD2Ev.exit41, %bb.c
  ret void

bb.u:                                             ; preds = %_ZN7testing7MessageD2Ev.exit65, %_ZN7testing7MessageD2Ev.exit47
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit47 ], [ %eh.lpad-body56, %_ZN7testing7MessageD2Ev.exit65 ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase17VerifyMatchMatrixERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKNS0_11MatchMatrixEPNS_19MatchResultListenerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !547    ; 5 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %.noexc, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.477) #58
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit, label %.noexc40

.noexc40:                                         ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %i.c = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.a) #59 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.a
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.c, i8 0, i64 %i.a, i1 false)
  %i.e = ptrtoint ptr %i.d to i64
  br label %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit

_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit:            ; preds = %.noexc40, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.15107.0 = phi i64 [ %i.e, %.noexc40 ], [ 0, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ] ; 4 uses
  %.sroa.0101.0 = phi ptr [ %i.c, %.noexc40 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ] ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !548  ; 5 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i41

bb.b:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.477) #58
          to label %.noexc45 unwind label %bb.d

.noexc45:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i41: ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit
  %.not.i.i.i.i42 = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i.i42, label %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit47, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i41
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #59
          to label %.noexc46 unwind label %bb.d   ; 3 uses

.noexc46:                                         ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.i, i8 0, i64 %i.g, i1 false)
  %i.k = ptrtoint ptr %i.j to i64
  br label %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit47

_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit47:          ; preds = %.noexc46, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i41
  %.sroa.093.0 = phi ptr [ %i.i, %.noexc46 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i41 ] ; 16 uses
  %.sroa.15.0 = phi i64 [ %i.k, %.noexc46 ], [ 0, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i41 ] ; 4 uses
  %i.l = load i64, ptr %2, align 8, !tbaa !547    ; 4 uses
  %.not158 = icmp eq i64 %i.l, 0
  br i1 %.not158, label %._crit_edge146.split, label %.preheader141.lr.ph

.preheader141.lr.ph:                              ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit47
  %i.m = load i64, ptr %i.f, align 8, !tbaa !548  ; 15 uses
  %.not159 = icmp eq i64 %i.m, 0
  br i1 %.not159, label %._crit_edge146.split, label %.preheader141.lr.ph.split

.preheader141.lr.ph.split:                        ; preds = %.preheader141.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !549  ; 4 uses
  %scevgep = getelementptr i8, ptr %.sroa.0101.0, i64 %i.l ; 2 uses
  %scevgep186 = getelementptr i8, ptr %.sroa.093.0, i64 %i.m ; 2 uses
  %i.p = mul i64 %i.m, %i.l
  %scevgep187 = getelementptr i8, ptr %i.o, i64 %i.p ; 2 uses
  %min.iters.check = icmp ult i64 %i.m, 4
  %bound0 = icmp ult ptr %.sroa.0101.0, %scevgep186
  %bound1 = icmp ult ptr %.sroa.093.0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0188 = icmp ult ptr %.sroa.0101.0, %scevgep187
  %bound1189 = icmp ult ptr %i.o, %scevgep
  %found.conflict190 = and i1 %bound0188, %bound1189
  %stride.check = icmp slt i64 %i.m, 0
  %i.q = or i1 %found.conflict190, %stride.check
  %conflict.rdx = or i1 %found.conflict, %i.q
  %bound0191 = icmp ult ptr %.sroa.093.0, %scevgep187
  %bound1192 = icmp ult ptr %i.o, %scevgep186
  %found.conflict193 = and i1 %bound0191, %bound1192
  %conflict.rdx195 = or i1 %found.conflict193, %conflict.rdx
  %min.iters.check196 = icmp ult i64 %i.m, 32
  %i.r = and i64 %i.m, 28
  %n.vec = and i64 %i.m, 9223372036854775776      ; 4 uses
  %cmp.n = icmp eq i64 %i.m, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.r, 0
  %n.vec201 = and i64 %i.m, 9223372036854775804   ; 3 uses
  %cmp.n207 = icmp eq i64 %i.m, %n.vec201
  %xtraiter = and i64 %i.m, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %.preheader141.lr.ph.split, %._crit_edge
  %.026145 = phi i64 [ 0, %.preheader141.lr.ph.split ], [ %i.bk, %._crit_edge ] ; 3 uses
  %i.s = mul i64 %i.m, %.026145
  %i.t = getelementptr i8, ptr %i.o, i64 %i.s     ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0101.0, i64 %.026145 ; 6 uses
  %.promoted = load i8, ptr %i.u, align 1, !tbaa !69 ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx195
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check196, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.v = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <16 x i8> [ %i.v, %vector.ph ], [ %i.ac, %vector.body ]
  %vec.phi197 = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.ad, %vector.body ]
  %i.w = getelementptr i8, ptr %i.t, i64 %index   ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %wide.load = load <16 x i8>, ptr %i.w, align 1, !tbaa !69, !alias.scope !2211
  %wide.load198.a = load <16 x i8>, ptr %i.x, align 1, !tbaa !69, !alias.scope !2211
  %i.y = icmp eq <16 x i8> %wide.load, splat (i8 1)
  %i.z = icmp eq <16 x i8> %wide.load198.a, splat (i8 1)
  %i.aa = zext <16 x i1> %i.y to <16 x i8>        ; 2 uses
  %i.ab = zext <16 x i1> %i.z to <16 x i8>        ; 2 uses
  %i.ac = or <16 x i8> %vec.phi, %i.aa            ; 2 uses
  %i.ad = or <16 x i8> %vec.phi197, %i.ab         ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.093.0, i64 %index ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %wide.load199.a = load <16 x i8>, ptr %i.ae, align 1, !tbaa !69, !alias.scope !2212, !noalias !2211
  %wide.load200 = load <16 x i8>, ptr %i.af, align 1, !tbaa !69, !alias.scope !2212, !noalias !2211
  %i.ag = or <16 x i8> %wide.load199.a, %i.aa
  %i.ah = or <16 x i8> %wide.load200, %i.ab
  store <16 x i8> %i.ag, ptr %i.ae, align 1, !tbaa !69, !alias.scope !2212, !noalias !2211
  store <16 x i8> %i.ah, ptr %i.af, align 1, !tbaa !69, !alias.scope !2212, !noalias !2211
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !2204

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i8> %i.ad, %i.ac
  %i.aj = tail call i8 @llvm.vector.reduce.or.v16i8(<16 x i8> %bin.rdx) ; 3 uses
  store i8 %i.aj, ptr %i.u, align 1, !tbaa !69, !alias.scope !2213, !noalias !2214
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !2215

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.aj, %vec.epilog.iter.check ], [ %.promoted, %vector.main.loop.iter.check ]
  %i.ak = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index202 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next206, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi203 = phi <4 x i8> [ %i.ak, %vec.epilog.ph ], [ %i.ao, %vec.epilog.vector.body ]
  %i.al = getelementptr i8, ptr %i.t, i64 %index202
  %wide.load204.a = load <4 x i8>, ptr %i.al, align 1, !tbaa !69, !alias.scope !2211
  %i.am = icmp eq <4 x i8> %wide.load204.a, splat (i8 1)
  %i.an = zext <4 x i1> %i.am to <4 x i8>         ; 2 uses
  %i.ao = or <4 x i8> %vec.phi203, %i.an          ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.093.0, i64 %index202 ; 2 uses
  %wide.load205 = load <4 x i8>, ptr %i.ap, align 1, !tbaa !69, !alias.scope !2212, !noalias !2211
  %i.aq = or <4 x i8> %wide.load205, %i.an
  store <4 x i8> %i.aq, ptr %i.ap, align 1, !tbaa !69, !alias.scope !2212, !noalias !2211
  %index.next206 = add nuw i64 %index202, 4       ; 2 uses
  %i.ar = icmp eq i64 %index.next206, %n.vec201
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2206

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.as = tail call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %i.ao) ; 2 uses
  store i8 %i.as, ptr %i.u, align 1, !tbaa !69, !alias.scope !2213, !noalias !2214
  br i1 %cmp.n207, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i8 [ %.promoted, %iter.check ], [ %i.as, %vec.epilog.middle.block ], [ %i.aj, %vec.epilog.iter.check ] ; 2 uses
  %.025144.ph = phi i64 [ 0, %iter.check ], [ %n.vec201, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 5 uses
  %.neg = or disjoint i64 %.025144.ph, 1
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.at = getelementptr i8, ptr %i.t, i64 %.025144.ph
  %i.au = load i8, ptr %i.at, align 1, !tbaa !69
  %i.av = icmp eq i8 %i.au, 1
  %i.aw = zext i1 %i.av to i8                     ; 2 uses
  %i.ax = or i8 %.ph, %i.aw                       ; 2 uses
  store i8 %i.ax, ptr %i.u, align 1, !tbaa !69
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.093.0, i64 %.025144.ph ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !69
  %i.ba = or i8 %i.az, %i.aw
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !69
  %i.bb = or disjoint i64 %.025144.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.unr = phi i8 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ax, %vec.epilog.scalar.ph.prol ]
  %.025144.unr = phi i64 [ %.025144.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bb, %vec.epilog.scalar.ph.prol ]
  %i.bc = icmp eq i64 %i.m, %.neg
  br i1 %i.bc, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge146.split:                             ; preds = %._crit_edge, %.preheader141.lr.ph, %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit47
  %i.bd = load i32, ptr %0, align 8, !tbaa !562   ; 3 uses
  %i.be = and i32 %i.bd, 1
  %.not = icmp eq i32 %i.be, 0
  br i1 %.not, label %.loopexit140, label %.preheader

.preheader:                                       ; preds = %._crit_edge146.split
  %i.bf = ptrtoint ptr %.sroa.093.0 to i64        ; 2 uses
  %i.bg = sub i64 %.sroa.15.0, %i.bf              ; 2 uses
  %.not160 = icmp eq i64 %.sroa.15.0, %i.bf
  br i1 %.not160, label %.loopexit140, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit80

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.bk = add nuw i64 %.026145, 1                 ; 2 uses
  %exitcond162.not = icmp eq i64 %i.bk, %i.l
  br i1 %exitcond162.not, label %._crit_edge146.split, label %iter.check, !llvm.loop !2207

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.bl = phi i8 [ %i.bz, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.025144 = phi i64 [ %i.cd, %vec.epilog.scalar.ph ], [ %.025144.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.bm = getelementptr i8, ptr %i.t, i64 %.025144
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !69
  %i.bo = icmp eq i8 %i.bn, 1
  %i.bp = zext i1 %i.bo to i8                     ; 2 uses
  %i.bq = or i8 %i.bl, %i.bp                      ; 2 uses
  store i8 %i.bq, ptr %i.u, align 1, !tbaa !69
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.093.0, i64 %.025144 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !69
  %i.bt = or i8 %i.bs, %i.bp
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !69
  %i.bu = add nuw i64 %.025144, 1                 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.t, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !69
  %i.bx = icmp eq i8 %i.bw, 1
  %i.by = zext i1 %i.bx to i8                     ; 2 uses
  %i.bz = or i8 %i.bq, %i.by                      ; 2 uses
  store i8 %i.bz, ptr %i.u, align 1, !tbaa !69
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.093.0, i64 %i.bu ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !69
  %i.cc = or i8 %i.cb, %i.by
  store i8 %i.cc, ptr %i.ca, align 1, !tbaa !69
  %i.cd = add nuw i64 %.025144, 2                 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cd, %i.m
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !2208

bb.e:                                             ; preds = %.lr.ph, %bb.m
  %.0150 = phi i8 [ 1, %.lr.ph ], [ %.1, %bb.m ]
  %storemerge148 = phi i64 [ 0, %.lr.ph ], [ %i.dc, %bb.m ] ; 4 uses
  %.0113147 = phi ptr [ @.str.410, %.lr.ph ], [ %.1114, %bb.m ] ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.093.0, i64 %storemerge148
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !69
  %.not36 = icmp eq i8 %i.cf, 0
  br i1 %.not36, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.cg = load ptr, ptr %i.bh, align 8, !tbaa !467 ; 4 uses
  %.not138 = icmp eq ptr %i.cg, null
  br i1 %.not138, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq ptr %.0113147, null
  br i1 %.not.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !77
  %i.ci = getelementptr i8, ptr %i.ch, i64 -24
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds i8, ptr %i.cg, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !330
  %i.cn = or i32 %i.cm, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ck, i32 noundef %i.cn)
          to label %_ZN7testing19MatchResultListenerlsIPKcEERS0_RKT_.exit unwind label %.thread

bb.i:                                             ; preds = %bb.g
end_hunk_0
