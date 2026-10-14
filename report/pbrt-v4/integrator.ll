Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/integrator?download=true
inline.NumInlined: 4025
inline.NumDeleted: 1526
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN4pbrt6detail21stringPrintfRecursiveIRA26_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_:bb.a
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.l
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = load ptr, ptr %5, align 8, !tbaa !123   ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.ae
  br i1 %i.cd, label %.body26, label %.body26.sink.split

.body26.sink.split:                               ; preds = %bb.o, %bb.k
  %.sink = phi ptr [ %i.an, %bb.k ], [ %i.cc, %bb.o ]
  %.pn19.ph = phi { ptr, i32 } [ %i.am, %bb.k ], [ %i.cb, %bb.o ]
  %i.ce = load i64, ptr %i.ae, align 8, !tbaa !122
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cf) #32
  br label %.body26

.body26:                                          ; preds = %.body26.sink.split, %bb.o, %bb.k
  %.pn19 = phi { ptr, i32 } [ %i.am, %bb.k ], [ %i.cb, %bb.o ], [ %.pn19.ph, %.body26.sink.split ] ; 2 uses
  %i.cg = load ptr, ptr %6, align 8, !tbaa !123   ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.j
  br i1 %i.ch, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body26, %bb.h
  %.sink86 = phi ptr [ %i.x, %bb.h ], [ %i.cg, %.body26 ]
  %.pn19.pn.ph = phi { ptr, i32 } [ %i.w, %bb.h ], [ %.pn19, %.body26 ]
  %i.ci = load i64, ptr %i.j, align 8, !tbaa !122
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %.sink86, i64 noundef %i.cj) #32
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body26, %bb.h
  %.pn19.pn = phi { ptr, i32 } [ %i.w, %bb.h ], [ %.pn19, %.body26 ], [ %.pn19.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.p

bb.p:                                             ; preds = %.body, %bb.n
  %.pn19.pn.pn = phi { ptr, i32 } [ %.pn19.pn, %.body ], [ %i.ca, %bb.n ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #29
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn19.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn, %bb.p ], [ %i.bz, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.z

bb.r:                                             ; preds = %bb.d
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !83
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %.invoke, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.cn = load ptr, ptr %3, align 8, !tbaa !123   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  %i.co = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef %i.cn, ptr noundef nonnull align 1 dereferenceable(26) %2) #29, !noalias !1181
  %i.cp = add nsw i32 %i.co, 1
  %i.cq = sext i32 %i.cp to i64                   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.cr, ptr %7, align 8, !tbaa !121, !alias.scope !1181
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.cs, align 8, !tbaa !83, !alias.scope !1181
  store i8 0, ptr %i.cr, align 8, !tbaa !122, !alias.scope !1181
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cq, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41 unwind label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41: ; preds = %bb.s
  %i.ct = load ptr, ptr %7, align 8, !tbaa !123, !alias.scope !1181
  %i.cu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ct, i64 noundef %i.cq, ptr noundef %i.cn, ptr noundef nonnull align 1 dereferenceable(26) %2) #29 ; 0 uses
  %i.cv = load i64, ptr %i.cs, align 8, !tbaa !83, !alias.scope !1181
  %i.cw = add i64 %i.cv, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cw, i64 noundef 1)
          to label %_ZN4pbrt6detail9formatOneIRA26_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit unwind label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #30
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %7, align 8, !tbaa !123, !alias.scope !1181 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cr
  br i1 %i.db, label %.body42, label %.body42.sink.split

_ZN4pbrt6detail9formatOneIRA26_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41
  %i.dc = load i64, ptr %i.cs, align 8, !tbaa !83 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !83
  %i.df = sub i64 4611686018427387903, %i.de
  %i.dg = icmp ult i64 %i.df, %i.dc
  br i1 %i.dg, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44

bb.v:                                             ; preds = %_ZN4pbrt6detail9formatOneIRA26_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.74) #33
          to label %.noexc45 unwind label %bb.w

.noexc45:                                         ; preds = %bb.v
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44: ; preds = %_ZN4pbrt6detail9formatOneIRA26_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit
  %i.dh = load ptr, ptr %7, align 8, !tbaa !123
  %i.di = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.dh, i64 noundef %i.dc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47 unwind label %bb.w ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44
  %i.dj = load ptr, ptr %7, align 8, !tbaa !123   ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.cr
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47
  %i.dl = load i64, ptr %i.cr, align 8, !tbaa !122
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.x

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44, %bb.v
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = load ptr, ptr %7, align 8, !tbaa !123   ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.cr
  br i1 %i.dp, label %.body42, label %.body42.sink.split

.body42.sink.split:                               ; preds = %bb.w, %bb.u
  %.sink89 = phi ptr [ %i.da, %bb.u ], [ %i.do, %bb.w ]
  %.pn.ph = phi { ptr, i32 } [ %i.cz, %bb.u ], [ %i.dn, %bb.w ]
  %i.dq = load i64, ptr %i.cr, align 8, !tbaa !122
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %.sink89, i64 noundef %i.dr) #32
  br label %.body42

.body42:                                          ; preds = %.body42.sink.split, %bb.w, %bb.u
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.u ], [ %i.dn, %bb.w ], [ %.pn.ph, %.body42.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.z

.invoke:                                          ; preds = %bb.a, %bb.r, %bb.c
  %i.ds = phi i32 [ 257, %bb.c ], [ 266, %bb.r ], [ 229, %bb.a ]
  %i.dt = phi ptr [ @.str.60, %bb.c ], [ @.str.61, %bb.r ], [ @.str.59, %bb.a ]
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.58, i32 noundef %i.ds, ptr noundef nonnull %i.dt) #33
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.x:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !313
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull %0, ptr noundef %i.du)
          to label %bb.y unwind label %bb.b

bb.y:                                             ; preds = %bb.x
  %i.dv = load ptr, ptr %3, align 8, !tbaa !123   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.y
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !122
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void

bb.z:                                             ; preds = %.body42, %bb.q, %bb.b
  %.pn24 = phi { ptr, i32 } [ %i.e, %bb.b ], [ %.pn19.pn.pn.pn, %bb.q ], [ %.pn, %.body42 ]
  %i.ea = load ptr, ptr %3, align 8, !tbaa !123   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.z
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !122
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn24
}

declare noundef float @_ZNK4pbrt22ExhaustiveLightSampler3PMFERKNS_18LightSampleContextENS_5LightE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 4 dereferenceable(48), ptr nofree noundef align 8 dead_on_return dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZNK4pbrt15BVHLightSampler3PMFERKNS_18LightSampleContextENS_5LightE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 4 dereferenceable(48) %1, ptr nofree noundef align 8 dead_on_return dereferenceable(8) %2) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !99     ; 4 uses
  %i.b = and i64 %i.a, 144115188075855871
  %i.c = mul i64 %i.b, -4132994306676758123       ; 2 uses
  %i.d = lshr i64 %i.c, 47
  %i.e = xor i64 %i.d, %i.c
  %i.f = mul i64 %i.e, -4132994306676758123
  %i.g = xor i64 %i.f, 3829533694005038248
  %i.h = mul i64 %i.g, -4132994306676758123       ; 2 uses
  %i.i = lshr i64 %i.h, 47
  %i.j = xor i64 %i.i, %i.h
  %i.k = mul i64 %i.j, -4132994306676758123       ; 2 uses
  %i.l = lshr i64 %i.k, 47
  %i.m = xor i64 %i.l, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1187
  %i.p = add i64 %i.o, -1                         ; 3 uses
  %i.q = and i64 %i.m, %i.p                       ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1188 ; 4 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i8, ptr %i.u, align 8, !tbaa !1190, !range !118, !noundef !119
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %.lr.ph.i.preheader.i, label %_ZNK4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEE6HasKeyERKS1_.exit

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.x = load i64, ptr %i.t, align 8, !tbaa !99
  %.not.i2.i = icmp eq i64 %i.a, %i.x
  br i1 %.not.i2.i, label %_ZNK4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEEixERKS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.i
  %.01220.i3.i = phi i32 [ %i.y, %.lr.ph.i.i ], [ 0, %.lr.ph.i.preheader.i ]
  %i.y = add nuw nsw i32 %.01220.i3.i, 1          ; 4 uses
  %i.z = lshr i32 %i.y, 1
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = add i64 %i.q, %i.aa
  %i.ac = mul nuw nsw i32 %i.y, %i.y
  %i.ad = lshr i32 %i.ac, 1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = add i64 %i.ab, %i.ae
  %i.ag = and i64 %i.af, %i.p
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !1190, !range !118, !noundef !119
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %.lr.ph.i.i, label %._ZNK4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEE10FindOffsetERKS1_.exit.loopexit_crit_edge.i, !llvm.loop !1182

.lr.ph.i.i:                                       ; preds = %.lr.ph.i
  %i.al = load i64, ptr %i.ah, align 8, !tbaa !99
  %.not.i.i = icmp eq i64 %i.a, %i.al
  br i1 %.not.i.i, label %.lr.ph.i49, label %.lr.ph.i, !llvm.loop !1182

._ZNK4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEE10FindOffsetERKS1_.exit.loopexit_crit_edge.i: ; preds = %.lr.ph.i
  br label %_ZNK4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEE6HasKeyERKS1_.exit, !llvm.loop !1182

_ZNK4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEE6HasKeyERKS1_.exit: ; preds = %._ZNK4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEE10FindOffsetERKS1_.exit.loopexit_crit_edge.i, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.an = load i64, ptr %i.am, align 8, !tbaa !103
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1194
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = zext i1 %i.aq to i64
  %i.as = add i64 %i.an, %i.ar
  %i.at = uitofp i64 %i.as to float
  %i.au = fdiv float 1.000000e+00, %i.at
  br label %.thread53

.lr.ph.i49:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i51
  %.01220.i4.i = phi i32 [ %i.av, %.lr.ph.i.i51 ], [ 0, %.lr.ph.i.i ]
  %i.av = add nuw nsw i32 %.01220.i4.i, 1         ; 4 uses
  %i.aw = lshr i32 %i.av, 1
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = add i64 %i.q, %i.ax
  %i.az = mul nuw nsw i32 %i.av, %i.av
  %i.ba = lshr i32 %i.az, 1
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = add i64 %i.ay, %i.bb
  %i.bd = and i64 %i.bc, %i.p                     ; 2 uses
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !1190, !range !118, !noundef !119
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %.lr.ph.i.i51, label %._ZNK4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEE10FindOffsetERKS1_.exit.loopexit_crit_edge.i50, !llvm.loop !1182

.lr.ph.i.i51:                                     ; preds = %.lr.ph.i49
  %i.bi = load i64, ptr %i.be, align 8, !tbaa !99
  %.not.i.i52 = icmp eq i64 %i.a, %i.bi
  br i1 %.not.i.i52, label %_ZNK4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEEixERKS1_.exit, label %.lr.ph.i49, !llvm.loop !1182

._ZNK4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEE10FindOffsetERKS1_.exit.loopexit_crit_edge.i50: ; preds = %.lr.ph.i49
  tail call void @_ZN4pbrt8LogFatalIJRA26_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.92, i32 noundef 706, ptr noundef nonnull @.str.70, ptr noundef nonnull align 1 dereferenceable(26) @.str.93) #33
  unreachable

_ZNK4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEEixERKS1_.exit: ; preds = %.lr.ph.i.i51, %.lr.ph.i.preheader.i
  %.118.i.ph.i = phi i64 [ %i.q, %.lr.ph.i.preheader.i ], [ %i.bd, %.lr.ph.i.i51 ]
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.sroa.5.0.copyload.i = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 4
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.sroa.6.0.copyload.i = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %i.bj = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %i.bk = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %1, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bm = fadd <2 x float> %i.bj, %i.bl
  %i.bn = fmul <2 x float> %i.bm, splat (float 5.000000e-01) ; 2 uses
  %i.bo = fadd float %.sroa.0.sroa.5.0.copyload.i, %.sroa.0.sroa.6.0.copyload.i
  %i.bp = fmul float %i.bo, 5.000000e-01          ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.025.0.copyload = load <2 x float>, ptr %i.bq, align 4 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !103 ; 2 uses
  %i.bt = uitofp i64 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !1194
  %i.bw = icmp ne i64 %i.bv, 0
  %i.bx = zext i1 %i.bw to i64
  %i.by = add i64 %i.bs, %i.bx
  %i.bz = uitofp i64 %i.by to float
  %i.ca = fdiv float %i.bt, %i.bz
  %i.cb = fsub float 1.000000e+00, %i.ca          ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1195 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8            ; 2 uses
  %.not59 = icmp sgt i32 %i.cf, -1
  br i1 %.not59, label %.lr.ph, label %.thread53

.lr.ph:                                           ; preds = %_ZNK4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEEixERKS1_.exit
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %.118.i.ph.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !130
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.ck = phi i32 [ %i.cf, %.lr.ph ], [ %i.df, %bb.d ]
  %i.cl = phi ptr [ %i.ce, %.lr.ph ], [ %i.de, %bb.d ]
  %i.cm = phi ptr [ %i.cd, %.lr.ph ], [ %i.dc, %bb.d ] ; 2 uses
  %.03962 = phi i32 [ %i.ci, %.lr.ph ], [ %i.db, %bb.d ] ; 2 uses
  %.04161 = phi float [ %i.cb, %.lr.ph ], [ %i.cx, %bb.d ]
  %.04360 = phi i32 [ 0, %.lr.ph ], [ %i.da, %bb.d ]
  %i.cn = add nuw nsw i32 %.04360, 1              ; 2 uses
  %i.co = zext nneg i32 %i.cn to i64              ; 2 uses
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %i.co
  %i.cq = zext nneg i32 %i.ck to i64
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %i.cq
  %i.cs = tail call noundef float @_ZNK4pbrt18CompactLightBounds10ImportanceENS_6Point3IfEENS_7Normal3IfEERKNS_7Bounds3IfEE(ptr noundef nonnull align 4 dereferenceable(24) %i.cp, <2 x float> %i.bn, float %i.bp, <2 x float> %.sroa.025.0.copyload, float %.sroa.5.0.copyload, ptr noundef nonnull align 4 dereferenceable(24) %i.cj) ; 2 uses
  %i.ct = tail call noundef float @_ZNK4pbrt18CompactLightBounds10ImportanceENS_6Point3IfEENS_7Normal3IfEERKNS_7Bounds3IfEE(ptr noundef nonnull align 4 dereferenceable(24) %i.cr, <2 x float> %i.bn, float %i.bp, <2 x float> %.sroa.025.0.copyload, float %.sroa.5.0.copyload, ptr noundef nonnull align 4 dereferenceable(24) %i.cj) ; 2 uses
  %i.cu = and i32 %.03962, 1
  %.sroa.idx.not = icmp eq i32 %i.cu, 0           ; 2 uses
  %.sroa.speculated = select i1 %.sroa.idx.not, float %i.cs, float %i.ct
  %i.cv = fadd float %i.cs, %i.ct
  %i.cw = fdiv float %.sroa.speculated, %i.cv
  %i.cx = fmul float %.04161, %i.cw               ; 2 uses
  br i1 %.sroa.idx.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cy = load i32, ptr %i.cl, align 8
  %i.cz = and i32 %i.cy, 2147483647               ; 2 uses
  %.pre = zext nneg i32 %i.cz to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi = phi i64 [ %.pre, %bb.c ], [ %i.co, %bb.b ]
  %i.da = phi i32 [ %i.cz, %bb.c ], [ %i.cn, %bb.b ]
  %i.db = lshr i32 %.03962, 1
  %i.dc = load ptr, ptr %i.cc, align 8, !tbaa !1195 ; 2 uses
  %i.dd = getelementptr inbounds nuw [32 x i8], ptr %i.dc, i64 %.pre-phi
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24 ; 2 uses
  %i.df = load i32, ptr %i.de, align 8            ; 2 uses
  %.not = icmp sgt i32 %i.df, -1
  br i1 %.not, label %bb.b, label %.thread53, !llvm.loop !1183

.thread53:                                        ; preds = %bb.d, %_ZNK4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEEixERKS1_.exit, %_ZNK4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEE6HasKeyERKS1_.exit
  %.2 = phi float [ %i.au, %_ZNK4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEE6HasKeyERKS1_.exit ], [ %i.cb, %_ZNK4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEEixERKS1_.exit ], [ %i.cx, %bb.d ]
  ret float %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZNK4pbrt18CompactLightBounds10ImportanceENS_6Point3IfEENS_7Normal3IfEERKNS_7Bounds3IfEE(ptr noundef nonnull align 4 dereferenceable(24) %0, <2 x float> %1, float %2, <2 x float> %3, float %4, ptr noundef nonnull align 4 dereferenceable(24) %5) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load <4 x float>, ptr %5, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.d = load float, ptr %i.c, align 4, !tbaa !1198, !noalias !1199
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load <4 x i16>, ptr %i.a, align 4, !tbaa !1200, !noalias !1199
  %i.j = shufflevector <4 x i16> %i.i, <4 x i16> poison, <2 x i32> <i32 0, i32 3>
  %i.k = uitofp <2 x i16> %i.j to <2 x float>
  %i.l = fdiv <2 x float> %i.k, splat (float 6.553500e+04) ; 2 uses
  %i.m = fsub nnan <2 x float> splat (float 1.000000e+00), %i.l
  %i.n = shufflevector <4 x float> %i.b, <4 x float> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x float> %i.n, %i.m
  %i.p = insertelement <2 x float> poison, float %i.d, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fmul <2 x float> %i.l, %i.q
  %i.s = fadd <2 x float> %i.r, %i.o              ; 4 uses
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.u = fcmp olt <2 x float> %i.s, %i.t
  %i.v = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.w = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = select <2 x i1> %i.u, <2 x float> %i.v, <2 x float> %i.w ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i32, ptr %i.y, align 4              ; 2 uses
  %i.aa = insertelement <2 x i32> poison, i32 %i.z, i64 0
  %i.ab = shufflevector <2 x i32> %i.aa, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ac = lshr <2 x i32> %i.ab, <i32 0, i32 15>
  %i.ad = and <2 x i32> %i.ac, splat (i32 32767)
  %i.ae = uitofp nneg <2 x i32> %i.ad to <2 x float>
  %i.af = fdiv nnan <2 x float> %i.ae, splat (float 3.276700e+04) ; 2 uses
  %i.ag = extractelement <2 x float> %i.af, i64 0
  %i.ah = fmul nnan float %i.ag, 2.000000e+00
  %i.ai = fadd float %i.ah, -1.000000e+00         ; 4 uses
  %i.aj = extractelement <2 x float> %i.af, i64 1
  %i.ak = fmul nnan float %i.aj, 2.000000e+00
  %i.al = fadd float %i.ak, -1.000000e+00
  %i.am = extractelement <2 x float> %i.x, i64 0  ; 3 uses
  %i.an = extractelement <2 x float> %i.x, i64 1  ; 2 uses
  %i.ao = fadd float %i.am, %i.an
  %i.ap = fmul float %i.ao, 5.000000e-01          ; 5 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %1, i64 0 ; 2 uses
  %i.aq = fsub float %.sroa.0.0.vec.extract.i, %i.ap ; 3 uses
  %i.ar = load <2 x i16>, ptr %i.e, align 2, !tbaa !1200, !noalias !1199
  %i.as = uitofp <2 x i16> %i.ar to <2 x float>
  %i.at = fdiv <2 x float> %i.as, splat (float 6.553500e+04) ; 2 uses
  %i.au = load <2 x float>, ptr %i.f, align 4, !tbaa !437, !noalias !1199 ; 2 uses
  %i.av = load <2 x float>, ptr %i.g, align 4, !tbaa !437, !noalias !1199 ; 2 uses
  %i.aw = fsub nnan <2 x float> splat (float 1.000000e+00), %i.at
  %i.ax = fmul <2 x float> %i.au, %i.aw
  %i.ay = fmul <2 x float> %i.at, %i.av
  %i.az = fadd <2 x float> %i.ay, %i.ax           ; 4 uses
  %i.ba = load <2 x i16>, ptr %i.h, align 4, !tbaa !1200, !noalias !1199
  %i.bb = uitofp <2 x i16> %i.ba to <2 x float>
  %i.bc = fdiv <2 x float> %i.bb, splat (float 6.553500e+04) ; 2 uses
  %i.bd = fsub nnan <2 x float> splat (float 1.000000e+00), %i.bc
  %i.be = fmul <2 x float> %i.au, %i.bd
  %i.bf = fmul <2 x float> %i.av, %i.bc
  %i.bg = fadd <2 x float> %i.bf, %i.be           ; 4 uses
  %i.bh = fcmp olt <2 x float> %i.bg, %i.az
  %i.bi = select <2 x i1> %i.bh, <2 x float> %i.bg, <2 x float> %i.az ; 4 uses
  %i.bj = fcmp olt <2 x float> %i.az, %i.bg
  %i.bk = select <2 x i1> %i.bj, <2 x float> %i.bg, <2 x float> %i.az ; 6 uses
  %i.bl = fadd <2 x float> %i.bk, %i.bi
  %i.bm = fmul <2 x float> %i.bl, splat (float 5.000000e-01) ; 7 uses
  %i.bn = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bo = insertelement <2 x float> %i.bn, float %2, i64 1
  %i.bp = fsub <2 x float> %i.bo, %i.bm           ; 3 uses
  %i.bq = fmul float %i.aq, %i.aq
  %i.br = fmul <2 x float> %i.bp, %i.bp           ; 2 uses
  %i.bs = extractelement <2 x float> %i.br, i64 0
  %i.bt = fadd float %i.bq, %i.bs
  %i.bu = extractelement <2 x float> %i.br, i64 1
  %i.bv = fadd float %i.bu, %i.bt                 ; 4 uses
  %foldExtExtBinop = fsub <2 x float> %i.bk, %i.bi ; 2 uses
  %foldExtExtBinop178 = fmul <2 x float> %foldExtExtBinop, %foldExtExtBinop
  %i.bw = shufflevector <2 x float> %i.bk, <2 x float> %i.x, <2 x i32> <i32 1, i32 2>
  %i.bx = shufflevector <2 x float> %i.bi, <2 x float> %i.x, <2 x i32> <i32 1, i32 3>
  %i.by = fsub <2 x float> %i.bw, %i.bx           ; 2 uses
  %i.bz = fmul <2 x float> %i.by, %i.by           ; 2 uses
  %shift = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop180 = fadd <2 x float> %shift, %foldExtExtBinop178
  %foldExtExtBinop182 = fadd <2 x float> %i.bz, %foldExtExtBinop180
  %i.ca = extractelement <2 x float> %foldExtExtBinop182, i64 0
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.ca)
  %i.cb = fmul float %sqrt.i, 5.000000e-01        ; 2 uses
  %i.cc = fcmp olt float %i.bv, %i.cb
  %.sroa.speculated149 = select i1 %i.cc, float %i.cb, float %i.bv
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.bv) ; 2 uses
  %i.cd = fdiv float %i.aq, %sqrt.i.i             ; 2 uses
  %i.ce = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = fdiv <2 x float> %i.bp, %i.cf           ; 3 uses
  %i.ch = load <2 x i16>, ptr %0, align 4, !tbaa !1200
  %i.ci = uitofp <2 x i16> %i.ch to <2 x float>
  %i.cj = fdiv nnan <2 x float> %i.ci, splat (float 6.553500e+04)
  %i.ck = fmul nnan <2 x float> %i.cj, splat (float 2.000000e+00)
  %i.cl = fadd <2 x float> %i.ck, splat (float -1.000000e+00) ; 3 uses
  %i.cm = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cl) ; 3 uses
  %shift184 = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop185 = fadd <2 x float> %i.cm, %shift184
  %i.cn = extractelement <2 x float> %foldExtExtBinop185, i64 0
  %i.co = fsub float 1.000000e+00, %i.cn          ; 4 uses
  %i.cp = fcmp olt float %i.co, 0.000000e+00
  br i1 %i.cp, label %bb.b, label %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit

bb.b:                                             ; preds = %bb.a
  %i.cq = fsub nnan <2 x float> splat (float 1.000000e+00), %i.cm
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cs = tail call <2 x float> @llvm.copysign.v2f32(<2 x float> splat (float 1.000000e+00), <2 x float> %i.cl)
  %i.ct = fmul nnan <2 x float> %i.cs, %i.cr
  br label %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit

_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi <2 x float> [ %i.ct, %bb.b ], [ %i.cl, %bb.a ] ; 4 uses
  %.sroa.01.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.0.0.i, i64 0
  %i.cu = fmul <2 x float> %.sroa.0.0.i, %.sroa.0.0.i ; 2 uses
  %shift187 = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop188 = fadd <2 x float> %i.cu, %shift187
  %i.cv = extractelement <2 x float> %foldExtExtBinop188, i64 0
  %i.cw = fmul float %i.co, %i.co
  %i.cx = fadd float %i.cw, %i.cv
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.cx) ; 2 uses
  %i.cy = fdiv float %.sroa.01.0.vec.extract.i.i.i.i, %sqrt.i.i.i
  %i.cz = fmul float %i.cd, %i.cy
  %i.da = shufflevector <2 x float> %.sroa.0.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.db = insertelement <2 x float> %i.da, float %i.co, i64 1
  %i.dc = insertelement <2 x float> poison, float %sqrt.i.i.i, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.de = fdiv <2 x float> %i.db, %i.dd
  %i.df = fmul <2 x float> %i.cg, %i.de           ; 2 uses
  %i.dg = extractelement <2 x float> %i.df, i64 0
  %i.dh = fadd float %i.cz, %i.dg
  %i.di = extractelement <2 x float> %i.df, i64 1
  %i.dj = fadd float %i.di, %i.dh                 ; 2 uses
  %i.dk = and i32 %i.z, 1073741824
  %.not = icmp eq i32 %i.dk, 0
  %i.dl = tail call float @llvm.fabs.f32(float %i.dj)
  %spec.select = select i1 %.not, float %i.dj, float %i.dl ; 5 uses
  %i.dm = fmul float %spec.select, %spec.select
  %i.dn = fsub float 1.000000e+00, %i.dm          ; 2 uses
  %i.do = fcmp ogt float %i.dn, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.do, float %i.dn, float 0.000000e+00
  %sqrt.i124 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i) ; 2 uses
  %i.dp = fcmp ult float %i.ap, %i.an
  %i.dq = fcmp ugt float %i.ap, %i.am
  %or.cond.i.i.i = select i1 %i.dp, i1 true, i1 %i.dq
  br i1 %or.cond.i.i.i, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit
  %i.dr = shufflevector <2 x float> %i.bm, <2 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ds = shufflevector <2 x float> %i.bk, <2 x float> %i.bm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dt = fcmp ugt <4 x float> %i.dr, %i.ds
  %i.du = freeze <4 x i1> %i.dt
  %i.dv = bitcast <4 x i1> %i.du to i4
  %.not206 = icmp eq i4 %i.dv, 0
  br i1 %.not206, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread

_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i: ; preds = %bb.c
  %i.dw = fsub float %i.ap, %i.am                 ; 2 uses
  %foldExtExtBinop190 = fsub <2 x float> %i.bm, %i.bk ; 2 uses
  %foldExtExtBinop192 = fsub <2 x float> %i.bm, %i.bk ; 2 uses
  %i.dx = fmul float %i.dw, %i.dw
  %foldExtExtBinop194 = fmul <2 x float> %foldExtExtBinop190, %foldExtExtBinop190
  %i.dy = extractelement <2 x float> %foldExtExtBinop194, i64 0
  %i.dz = fadd float %i.dx, %i.dy
  %foldExtExtBinop196 = fmul <2 x float> %foldExtExtBinop192, %foldExtExtBinop192
  %i.ea = extractelement <2 x float> %foldExtExtBinop196, i64 1
  %i.eb = fadd float %i.ea, %i.dz
  %sqrt.i.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.eb) ; 2 uses
  %i.ec = fmul float %sqrt.i.i.i.i, %sqrt.i.i.i.i ; 2 uses
  %i.ed = fcmp olt float %i.bv, %i.ec
  br i1 %i.ed, label %_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread

_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread: ; preds = %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit, %bb.c, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i
  %i.ee = phi float [ %i.ec, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit ]
  %i.ef = fsub float %i.ap, %.sroa.0.0.vec.extract.i ; 3 uses
  %shift198 = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop199 = fsub <2 x float> %i.bm, %shift198 ; 3 uses
  %i.eg = extractelement <2 x float> %foldExtExtBinop199, i64 0
  %i.eh = extractelement <2 x float> %i.bm, i64 1
  %i.ei = fsub float %i.eh, %2                    ; 3 uses
  %i.ej = fmul float %i.ef, %i.ef
  %foldExtExtBinop201 = fmul <2 x float> %foldExtExtBinop199, %foldExtExtBinop199
end_hunk_0
