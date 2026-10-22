Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/image?download=true
inline.NumInlined: 6802
inline.NumDeleted: 1350
loop-unroll.NumCompletelyUnrolled: 53
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 116
begin_hunk_0_@_ZN4pbrt6detail21stringPrintfRecursiveIRA22_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_:bb.a
bb.p:                                             ; preds = %.body, %bb.n
  %.pn19.pn.pn = phi { ptr, i32 } [ %.pn19.pn, %.body ], [ %i.ca, %bb.n ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #31
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn19.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn, %bb.p ], [ %i.bz, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.z

bb.r:                                             ; preds = %bb.d
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !46
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %.invoke, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.cn = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1785)
  %i.co = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef %i.cn, ptr noundef nonnull align 1 dereferenceable(22) %2) #31, !noalias !1785
  %i.cp = add nsw i32 %i.co, 1
  %i.cq = sext i32 %i.cp to i64                   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.cr, ptr %7, align 8, !tbaa !43, !alias.scope !1785
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.cs, align 8, !tbaa !46, !alias.scope !1785
  store i8 0, ptr %i.cr, align 8, !tbaa !37, !alias.scope !1785
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cq, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41 unwind label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41: ; preds = %bb.s
  %i.ct = load ptr, ptr %7, align 8, !tbaa !48, !alias.scope !1785
  %i.cu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ct, i64 noundef %i.cq, ptr noundef %i.cn, ptr noundef nonnull align 1 dereferenceable(22) %2) #31 ; 0 uses
  %i.cv = load i64, ptr %i.cs, align 8, !tbaa !46, !alias.scope !1785
  %i.cw = add i64 %i.cv, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cw, i64 noundef 1)
          to label %_ZN4pbrt6detail9formatOneIRA22_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit unwind label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #36
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %7, align 8, !tbaa !48, !alias.scope !1785 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cr
  br i1 %i.db, label %.body42, label %.body42.sink.split

_ZN4pbrt6detail9formatOneIRA22_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41
  %i.dc = load i64, ptr %i.cs, align 8, !tbaa !46 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !46
  %i.df = sub i64 4611686018427387903, %i.de
  %i.dg = icmp ult i64 %i.df, %i.dc
  br i1 %i.dg, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44

bb.v:                                             ; preds = %_ZN4pbrt6detail9formatOneIRA22_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #33
          to label %.noexc45 unwind label %bb.w

.noexc45:                                         ; preds = %bb.v
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44: ; preds = %_ZN4pbrt6detail9formatOneIRA22_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit
  %i.dh = load ptr, ptr %7, align 8, !tbaa !48
  %i.di = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.dh, i64 noundef %i.dc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47 unwind label %bb.w ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44
  %i.dj = load ptr, ptr %7, align 8, !tbaa !48    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.cr
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47
  %i.dl = load i64, ptr %i.cr, align 8, !tbaa !37
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.x

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44, %bb.v
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = load ptr, ptr %7, align 8, !tbaa !48    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.cr
  br i1 %i.dp, label %.body42, label %.body42.sink.split

.body42.sink.split:                               ; preds = %bb.w, %bb.u
  %.sink89 = phi ptr [ %i.da, %bb.u ], [ %i.do, %bb.w ]
  %.pn.ph = phi { ptr, i32 } [ %i.cz, %bb.u ], [ %i.dn, %bb.w ]
  %i.dq = load i64, ptr %i.cr, align 8, !tbaa !37
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %.sink89, i64 noundef %i.dr) #34
  br label %.body42

.body42:                                          ; preds = %.body42.sink.split, %bb.w, %bb.u
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.u ], [ %i.dn, %bb.w ], [ %.pn.ph, %.body42.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.z

.invoke:                                          ; preds = %bb.a, %bb.r, %bb.c
  %i.ds = phi i32 [ 257, %bb.c ], [ 266, %bb.r ], [ 229, %bb.a ]
  %i.dt = phi ptr [ @.str.99, %bb.c ], [ @.str.100, %bb.r ], [ @.str.98, %bb.a ]
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.97, i32 noundef %i.ds, ptr noundef nonnull %i.dt) #33
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.x:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !197
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull %0, ptr noundef %i.du)
          to label %bb.y unwind label %bb.b

bb.y:                                             ; preds = %bb.x
  %i.dv = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.y
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !37
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void

bb.z:                                             ; preds = %.body42, %bb.q, %bb.b
  %.pn24 = phi { ptr, i32 } [ %i.e, %bb.b ], [ %.pn19.pn.pn.pn, %bb.q ], [ %.pn, %.body42 ]
  %i.ea = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.z
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !37
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %.pn24
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvlEZN4pbrt5Image15GeneratePyramidES2_NS1_10WrapMode2DEN4pstd3pmr21polymorphic_allocatorISt4byteEEE3$_0E9_M_invokeERKSt9_Any_dataOl"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #4 align 2 {
bb.a:
  %2 = alloca %"class.pbrt::Bounds2", align 8     ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !111   ; 7 uses
  %.val2 = load i64, ptr %1, align 8, !tbaa !47
  %i.a = load ptr, ptr %.val, align 8, !tbaa !1791, !nonnull !53, !align !214 ; 5 uses
  %i.b = trunc i64 %.val2 to i32                  ; 2 uses
  %i.c = shl i32 %i.b, 1                          ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !75
  %i.f = trunc i64 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !74   ; 4 uses
  %i.i = mul nsw i32 %i.h, %i.c
  %i.j = mul nsw i32 %i.i, %i.f                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1792, !nonnull !53, !align !244
  %i.m = load i32, ptr %i.l, align 4, !tbaa !38   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1793
  %i.q = load i32, ptr %i.p, align 4, !tbaa !38   ; 9 uses
  %i.r = icmp sgt i32 %i.q, 0
  %or.cond.i.i.i = select i1 %i.n, i1 %i.r, i1 false
  br i1 %or.cond.i.i.i, label %.preheader.lr.ph.split.i.i.i, label %"._ZZN4pbrt5Image15GeneratePyramidES0_NS_10WrapMode2DEN4pstd3pmr21polymorphic_allocatorISt4byteEEENK3$_0clEl.exit_crit_edge.i.i"

"._ZZN4pbrt5Image15GeneratePyramidES0_NS_10WrapMode2DEN4pstd3pmr21polymorphic_allocatorISt4byteEEENK3$_0clEl.exit_crit_edge.i.i": ; preds = %bb.a
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !84
  br label %"_ZSt10__invoke_rIvRZN4pbrt5Image15GeneratePyramidES1_NS0_10WrapMode2DEN4pstd3pmr21polymorphic_allocatorISt4byteEEE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit"

.preheader.lr.ph.split.i.i.i:                     ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1794, !nonnull !53, !align !214 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !74
  %i.w = mul nsw i32 %i.v, %i.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !75
  %i.z = trunc i64 %i.y to i32
  %i.aa = mul nsw i32 %i.w, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !53, !align !244 ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !84 ; 10 uses
  %i.ai = load i32, ptr %i.af, align 4, !tbaa !38
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !84 ; 6 uses
  %i.ak = ptrtoaddr ptr %i.aj to i64
  %i.al = sext i32 %i.ai to i64                   ; 2 uses
  %i.am = sext i32 %i.aa to i64
  %invariant.gep.i.i.i = getelementptr [4 x i8], ptr %i.ah, i64 %i.al ; 5 uses
  %i.an = shl nsw i64 %i.al, 2
  %i.ao = ptrtoaddr ptr %i.ah to i64              ; 3 uses
  %4 = load i32, ptr %i.ae, align 4, !tbaa !38
  %5 = load <2 x i32>, ptr %i.ae, align 4, !tbaa !38
  %6 = load i32, ptr %3, align 4, !tbaa !38
  %7 = sext i32 %4 to i64
  %8 = sext i32 %6 to i64
  %invariant.gep64.i.i.i = getelementptr [4 x i8], ptr %i.ah, i64 %7 ; 5 uses
  %invariant.gep66.i.i.i = getelementptr [4 x i8], ptr %i.ah, i64 %8 ; 5 uses
  %i.ap = insertelement <2 x i64> poison, i64 %i.ao, i64 0
  %i.aq = add i64 %i.an, %i.ao
  %i.ar = zext nneg i32 %i.q to i64               ; 5 uses
  %i.as = insertelement <4 x i64> poison, i64 %i.aq, i64 2
  %i.at = insertelement <4 x i64> %i.as, i64 %i.ao, i64 3
  %9 = shufflevector <2 x i32> %5, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %10 = sext <4 x i32> %9 to <4 x i64>
  %11 = shl nsw <4 x i64> %10, <i64 2, i64 2, i64 poison, i64 poison>
  %i.au = shufflevector <2 x i64> %i.ap, <2 x i64> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.av = add <4 x i64> %11, %i.au
  %i.aw = shufflevector <4 x i64> %i.av, <4 x i64> %i.at, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ax = insertelement <4 x i64> poison, i64 %i.ak, i64 0
  %i.ay = shufflevector <4 x i64> %i.ax, <4 x i64> poison, <4 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %i.q, 4
  %min.iters.check10 = icmp ult i32 %i.q, 16
  %i.az = and i64 %i.ar, 12
  %n.vec = and i64 %i.ar, 2147483632              ; 6 uses
  %i.ba = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.ar
  %min.epilog.iters.check = icmp eq i64 %i.az, 0
  %n.vec20 = and i64 %i.ar, 2147483644            ; 5 uses
  %i.bb = trunc nuw nsw i64 %n.vec20 to i32
  %cmp.n27 = icmp eq i64 %n.vec20, %i.ar
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i.i.i, %.preheader.lr.ph.split.i.i.i
  %.052.i.i.i = phi i32 [ %i.j, %.preheader.lr.ph.split.i.i.i ], [ %i.dn, %._crit_edge.i.i.i ]
  %.02351.i.i.i = phi i64 [ %i.am, %.preheader.lr.ph.split.i.i.i ], [ %indvars.iv.next56.i.i.i.lcssa, %._crit_edge.i.i.i ] ; 7 uses
  %.02550.i.i.i = phi i32 [ 0, %.preheader.lr.ph.split.i.i.i ], [ %i.dm, %._crit_edge.i.i.i ]
  %i.bc = sext i32 %.052.i.i.i to i64             ; 7 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bd = insertelement <2 x i64> poison, i64 %i.bc, i64 0
  %i.be = insertelement <2 x i64> %i.bd, i64 %.02351.i.i.i, i64 1
  %i.bf = shl <2 x i64> %i.be, splat (i64 2)      ; 2 uses
  %i.bg = shufflevector <2 x i64> %i.bf, <2 x i64> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bh = add <4 x i64> %i.bg, %i.ay
  %i.bi = shufflevector <2 x i64> %i.bf, <2 x i64> poison, <4 x i32> zeroinitializer
  %i.bj = add <4 x i64> %i.bi, %i.aw
  %i.bk = sub <4 x i64> %i.bj, %i.bh
  %i.bl = icmp ugt <4 x i64> %i.bk, splat (i64 -64)
  %i.bm = bitcast <4 x i1> %i.bl to i4
  %.not = icmp eq i4 %i.bm, 0
  br i1 %.not, label %vector.main.loop.iter.check, label %vec.epilog.scalar.ph.preheader

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bn = add i64 %.02351.i.i.i, %n.vec           ; 2 uses
  %i.bo = add nsw i64 %n.vec, %i.bc               ; 2 uses
  %i.bp = getelementptr [4 x i8], ptr %i.aj, i64 %.02351.i.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bq = add i64 %index, %i.bc                   ; 4 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %wide.load = load <8 x float>, ptr %i.br, align 4, !tbaa !79
  %wide.load11 = load <8 x float>, ptr %i.bs, align 4, !tbaa !79
  %i.bt = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %i.bq ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 32
  %wide.load12 = load <8 x float>, ptr %i.bt, align 4, !tbaa !79
  %wide.load13 = load <8 x float>, ptr %i.bu, align 4, !tbaa !79
  %i.bv = fadd <8 x float> %wide.load, %wide.load12
  %i.bw = fadd <8 x float> %wide.load11, %wide.load13
  %i.bx = getelementptr [4 x i8], ptr %invariant.gep64.i.i.i, i64 %i.bq ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 32
  %wide.load14 = load <8 x float>, ptr %i.bx, align 4, !tbaa !79
  %wide.load15 = load <8 x float>, ptr %i.by, align 4, !tbaa !79
  %i.bz = fadd <8 x float> %i.bv, %wide.load14
  %i.ca = fadd <8 x float> %i.bw, %wide.load15
  %i.cb = getelementptr [4 x i8], ptr %invariant.gep66.i.i.i, i64 %i.bq ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 32
  %wide.load16 = load <8 x float>, ptr %i.cb, align 4, !tbaa !79
  %wide.load17 = load <8 x float>, ptr %i.cc, align 4, !tbaa !79
  %i.cd = fadd <8 x float> %i.bz, %wide.load16
  %i.ce = fadd <8 x float> %i.ca, %wide.load17
  %i.cf = fmul <8 x float> %i.cd, splat (float 2.500000e-01)
  %i.cg = fmul <8 x float> %i.ce, splat (float 2.500000e-01)
  %i.ch = getelementptr [4 x i8], ptr %i.bp, i64 %index ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  store <8 x float> %i.cf, ptr %i.ch, align 4, !tbaa !79
  store <8 x float> %i.cg, ptr %i.ci, align 4, !tbaa !79
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !1786

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !167

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ck = add i64 %.02351.i.i.i, %n.vec20         ; 2 uses
  %i.cl = add nsw i64 %n.vec20, %i.bc             ; 2 uses
  %i.cm = getelementptr [4 x i8], ptr %i.aj, i64 %.02351.i.i.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 3 uses
  %i.cn = add i64 %index21, %i.bc                 ; 4 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.cn
  %wide.load22 = load <4 x float>, ptr %i.co, align 4, !tbaa !79
  %i.cp = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %i.cn
  %wide.load23 = load <4 x float>, ptr %i.cp, align 4, !tbaa !79
  %i.cq = fadd <4 x float> %wide.load22, %wide.load23
  %i.cr = getelementptr [4 x i8], ptr %invariant.gep64.i.i.i, i64 %i.cn
  %wide.load24 = load <4 x float>, ptr %i.cr, align 4, !tbaa !79
  %i.cs = fadd <4 x float> %i.cq, %wide.load24
  %i.ct = getelementptr [4 x i8], ptr %invariant.gep66.i.i.i, i64 %i.cn
  %wide.load25 = load <4 x float>, ptr %i.ct, align 4, !tbaa !79
  %i.cu = fadd <4 x float> %i.cs, %wide.load25
  %i.cv = fmul <4 x float> %i.cu, splat (float 2.500000e-01)
  %i.cw = getelementptr [4 x i8], ptr %i.cm, i64 %index21
  store <4 x float> %i.cv, ptr %i.cw, align 4, !tbaa !79
  %index.next26 = add nuw i64 %index21, 4         ; 2 uses
  %i.cx = icmp eq i64 %index.next26, %n.vec20
  br i1 %i.cx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1787

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n27, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv55.i.i.i.ph = phi i64 [ %.02351.i.i.i, %iter.check ], [ %.02351.i.i.i, %vector.memcheck ], [ %i.bn, %vec.epilog.iter.check ], [ %i.ck, %vec.epilog.middle.block ] ; 3 uses
  %indvars.iv.i.i.i.ph = phi i64 [ %i.bc, %iter.check ], [ %i.bc, %vector.memcheck ], [ %i.bo, %vec.epilog.iter.check ], [ %i.cl, %vec.epilog.middle.block ] ; 6 uses
  %.02645.i.i.i.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.ba, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ] ; 4 uses
  %i.cy = sub i32 %i.q, %.02645.i.i.i.ph
  %.neg = add i32 %.02645.i.i.i.ph, 1
  %xtraiter = and i32 %i.cy, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i.i.i.ph
  %i.da = load float, ptr %i.cz, align 4, !tbaa !79
  %gep.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i.ph
  %i.db = load float, ptr %gep.i.i.i.prol, align 4, !tbaa !79
  %i.dc = fadd float %i.da, %i.db
  %gep65.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep64.i.i.i, i64 %indvars.iv.i.i.i.ph
  %i.dd = load float, ptr %gep65.i.i.i.prol, align 4, !tbaa !79
  %i.de = fadd float %i.dc, %i.dd
  %gep67.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep66.i.i.i, i64 %indvars.iv.i.i.i.ph
  %i.df = load float, ptr %gep67.i.i.i.prol, align 4, !tbaa !79
  %i.dg = fadd float %i.de, %i.df
  %i.dh = fmul float %i.dg, 2.500000e-01
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv55.i.i.i.ph
  store float %i.dh, ptr %i.di, align 4, !tbaa !79
  %i.dj = add nuw nsw i32 %.02645.i.i.i.ph, 1
  %indvars.iv.next.i.i.i.prol = add nsw i64 %indvars.iv.i.i.i.ph, 1 ; 2 uses
  %indvars.iv.next56.i.i.i.prol = add nsw i64 %indvars.iv55.i.i.i.ph, 1 ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.next.i.i.i.lcssa32.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.next56.i.i.i.lcssa31.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next56.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv55.i.i.i.unr = phi i64 [ %indvars.iv55.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next56.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %.02645.i.i.i.unr = phi i32 [ %.02645.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dj, %vec.epilog.scalar.ph.prol ]
  %i.dk = icmp eq i32 %i.q, %.neg
  br i1 %i.dk, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph

._crit_edge.i.i.i:                                ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.i.i.i.lcssa = phi i64 [ %i.cl, %vec.epilog.middle.block ], [ %i.bo, %middle.block ], [ %indvars.iv.next.i.i.i.lcssa32.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %indvars.iv.next.i.i.i.1, %vec.epilog.scalar.ph ]
  %indvars.iv.next56.i.i.i.lcssa = phi i64 [ %i.ck, %vec.epilog.middle.block ], [ %i.bn, %middle.block ], [ %indvars.iv.next56.i.i.i.lcssa31.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %indvars.iv.next56.i.i.i.1, %vec.epilog.scalar.ph ]
  %i.dl = trunc nsw i64 %indvars.iv.next.i.i.i.lcssa to i32
  %i.dm = add nuw nsw i32 %.02550.i.i.i, 1        ; 2 uses
  %i.dn = add nsw i32 %i.q, %i.dl
  %exitcond60.not.i.i.i = icmp eq i32 %i.dm, %i.m
  br i1 %exitcond60.not.i.i.i, label %"_ZSt10__invoke_rIvRZN4pbrt5Image15GeneratePyramidES1_NS0_10WrapMode2DEN4pstd3pmr21polymorphic_allocatorISt4byteEEE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit", label %iter.check, !llvm.loop !1788

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv55.i.i.i = phi i64 [ %indvars.iv.next56.i.i.i.1, %vec.epilog.scalar.ph ], [ %indvars.iv55.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %.02645.i.i.i = phi i32 [ %i.ej, %vec.epilog.scalar.ph ], [ %.02645.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i.i.i
  %i.dp = load float, ptr %i.do, align 4, !tbaa !79
  %gep.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i
  %i.dq = load float, ptr %gep.i.i.i, align 4, !tbaa !79
  %i.dr = fadd float %i.dp, %i.dq
  %gep65.i.i.i = getelementptr [4 x i8], ptr %invariant.gep64.i.i.i, i64 %indvars.iv.i.i.i
  %i.ds = load float, ptr %gep65.i.i.i, align 4, !tbaa !79
  %i.dt = fadd float %i.dr, %i.ds
  %gep67.i.i.i = getelementptr [4 x i8], ptr %invariant.gep66.i.i.i, i64 %indvars.iv.i.i.i
  %i.du = load float, ptr %gep67.i.i.i, align 4, !tbaa !79
  %i.dv = fadd float %i.dt, %i.du
  %i.dw = fmul float %i.dv, 2.500000e-01
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv55.i.i.i
  store float %i.dw, ptr %i.dx, align 4, !tbaa !79
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 4 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next.i.i.i
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !79
  %gep.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ea = load float, ptr %gep.i.i.i.1, align 4, !tbaa !79
  %i.eb = fadd float %i.dz, %i.ea
  %gep65.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep64.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ec = load float, ptr %gep65.i.i.i.1, align 4, !tbaa !79
  %i.ed = fadd float %i.eb, %i.ec
  %gep67.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep66.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ee = load float, ptr %gep67.i.i.i.1, align 4, !tbaa !79
  %i.ef = fadd float %i.ed, %i.ee
  %i.eg = fmul float %i.ef, 2.500000e-01
  %i.eh = getelementptr [4 x i8], ptr %i.aj, i64 %indvars.iv55.i.i.i
  %i.ei = getelementptr i8, ptr %i.eh, i64 4
  store float %i.eg, ptr %i.ei, align 4, !tbaa !79
  %i.ej = add nuw nsw i32 %.02645.i.i.i, 2        ; 2 uses
end_hunk_0
