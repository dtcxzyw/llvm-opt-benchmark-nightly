Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/image?download=true
inline.NumInlined: 6802
inline.NumDeleted: 1350
loop-unroll.NumCompletelyUnrolled: 53
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 116
begin_hunk_0_@_ZN4pbrt6detail21stringPrintfRecursiveIRA22_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_:bb.a
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
  store i8 0, ptr %i.cr, align 8, !tbaa !38, !alias.scope !1785
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
  %i.dl = load i64, ptr %i.cr, align 8, !tbaa !38
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
  %i.dq = load i64, ptr %i.cr, align 8, !tbaa !38
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
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !38
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
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !38
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
  %i.m = load i32, ptr %i.l, align 4, !tbaa !35   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1793
  %i.q = load i32, ptr %i.p, align 4, !tbaa !35   ; 9 uses
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
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !84 ; 10 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64              ; 4 uses
  %3 = load i32, ptr %i.ag, align 4, !tbaa !35
  %4 = load i32, ptr %i.af, align 4, !tbaa !35
  %i.ak = load i32, ptr %i.ae, align 4, !tbaa !35
  %5 = load ptr, ptr %i.ab, align 8, !tbaa !84    ; 6 uses
  %6 = ptrtoaddr ptr %5 to i64                    ; 2 uses
  %7 = sext i32 %i.ak to i64                      ; 2 uses
  %i.al = sext i32 %4 to i64                      ; 2 uses
  %8 = sext i32 %3 to i64                         ; 2 uses
  %i.am = sext i32 %i.aa to i64
  %invariant.gep64.i.i.i.a = getelementptr [4 x i8], ptr %i.ai, i64 %8 ; 5 uses
  %invariant.gep66.i.i.i.a = getelementptr [4 x i8], ptr %i.ai, i64 %i.al ; 5 uses
  %invariant.gep66.i.i.i = getelementptr [4 x i8], ptr %i.ai, i64 %7 ; 5 uses
  %9 = sub i64 %6, %i.aj
  %10 = shl nsw i64 %8, 2
  %11 = add i64 %10, %i.aj
  %12 = shl nsw i64 %i.al, 2
  %13 = add i64 %12, %i.aj
  %14 = shl nsw i64 %7, 2
  %15 = add i64 %14, %i.aj
  %16 = zext nneg i32 %i.q to i64                 ; 5 uses
  %min.iters.check = icmp ult i32 %i.q, 4
  %invariant.op = add i64 %9, -1
  %min.iters.check15 = icmp ult i32 %i.q, 16
  %i.an = and i64 %16, 12
  %n.vec = and i64 %16, 2147483632                ; 6 uses
  %i.ao = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %16
  %min.epilog.iters.check = icmp eq i64 %i.an, 0
  %n.vec23 = and i64 %16, 2147483644              ; 5 uses
  %i.ap = trunc nuw nsw i64 %n.vec23 to i32
  %cmp.n30 = icmp eq i64 %n.vec23, %16
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i.i.i, %.preheader.lr.ph.split.i.i.i
  %.052.i.i.i = phi i32 [ %i.j, %.preheader.lr.ph.split.i.i.i ], [ %i.cu, %._crit_edge.i.i.i ]
  %.02351.i.i.i = phi i64 [ %i.am, %.preheader.lr.ph.split.i.i.i ], [ %indvars.iv.next56.i.i.i.lcssa, %._crit_edge.i.i.i ] ; 7 uses
  %.02550.i.i.i = phi i32 [ 0, %.preheader.lr.ph.split.i.i.i ], [ %i.ct, %._crit_edge.i.i.i ]
  %i.aq = sext i32 %.052.i.i.i to i64             ; 7 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ar = shl i64 %.02351.i.i.i, 2                ; 2 uses
  %i.as = shl nsw i64 %i.aq, 2                    ; 4 uses
  %17 = add i64 %15, %i.as
  %18 = add i64 %i.ar, %6                         ; 3 uses
  %19 = sub i64 %17, %18
  %diff.check = icmp ugt i64 %19, -64
  %20 = add i64 %13, %i.as
  %21 = sub i64 %20, %18
  %diff.check10 = icmp ugt i64 %21, -64
  %conflict.rdx = or i1 %diff.check, %diff.check10
  %i.at = add i64 %11, %i.as
  %22 = sub i64 %i.at, %18
  %diff.check11 = icmp ugt i64 %22, -64
  %conflict.rdx12 = or i1 %conflict.rdx, %diff.check11
  %23 = sub i64 %i.ar, %i.as
  %.reass = add i64 %23, %invariant.op
  %diff.check13 = icmp ult i64 %.reass, 63
  %conflict.rdx14 = or i1 %conflict.rdx12, %diff.check13
  br i1 %conflict.rdx14, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.au = add i64 %.02351.i.i.i, %n.vec           ; 2 uses
  %i.av = add nsw i64 %n.vec, %i.aq               ; 2 uses
  %i.aw = getelementptr [4 x i8], ptr %5, i64 %.02351.i.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ax = add i64 %index, %i.aq                   ; 4 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %wide.load = load <8 x float>, ptr %i.ay, align 4, !tbaa !79
  %wide.load16 = load <8 x float>, ptr %i.az, align 4, !tbaa !79
  %i.ba = getelementptr [4 x i8], ptr %invariant.gep64.i.i.i.a, i64 %i.ax ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 32
  %wide.load17 = load <8 x float>, ptr %i.ba, align 4, !tbaa !79
  %wide.load18 = load <8 x float>, ptr %i.bb, align 4, !tbaa !79
  %i.bc = fadd <8 x float> %wide.load, %wide.load17
  %i.bd = fadd <8 x float> %wide.load16, %wide.load18
  %i.be = getelementptr [4 x i8], ptr %invariant.gep66.i.i.i.a, i64 %i.ax ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 32
  %wide.load19 = load <8 x float>, ptr %i.be, align 4, !tbaa !79
  %wide.load20 = load <8 x float>, ptr %i.bf, align 4, !tbaa !79
  %i.bg = fadd <8 x float> %i.bc, %wide.load19
  %i.bh = fadd <8 x float> %i.bd, %wide.load20
  %i.bi = getelementptr [4 x i8], ptr %invariant.gep66.i.i.i, i64 %i.ax ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 32
  %wide.load21 = load <8 x float>, ptr %i.bi, align 4, !tbaa !79
  %wide.load22 = load <8 x float>, ptr %i.bj, align 4, !tbaa !79
  %i.bk = fadd <8 x float> %i.bg, %wide.load21
  %i.bl = fadd <8 x float> %i.bh, %wide.load22
  %i.bm = fmul <8 x float> %i.bk, splat (float 2.500000e-01)
  %i.bn = fmul <8 x float> %i.bl, splat (float 2.500000e-01)
  %i.bo = getelementptr [4 x i8], ptr %i.aw, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store <8 x float> %i.bm, ptr %i.bo, align 4, !tbaa !79
  store <8 x float> %i.bn, ptr %i.bp, align 4, !tbaa !79
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !1786

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !167

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.br = add i64 %.02351.i.i.i, %n.vec23         ; 2 uses
  %i.bs = add nsw i64 %n.vec23, %i.aq             ; 2 uses
  %i.bt = getelementptr [4 x i8], ptr %5, i64 %.02351.i.i.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 3 uses
  %i.bu = add i64 %index24, %i.aq                 ; 4 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bu
  %wide.load25 = load <4 x float>, ptr %i.bv, align 4, !tbaa !79
  %i.bw = getelementptr [4 x i8], ptr %invariant.gep64.i.i.i.a, i64 %i.bu
  %wide.load26 = load <4 x float>, ptr %i.bw, align 4, !tbaa !79
  %i.bx = fadd <4 x float> %wide.load25, %wide.load26
  %i.by = getelementptr [4 x i8], ptr %invariant.gep66.i.i.i.a, i64 %i.bu
  %wide.load27 = load <4 x float>, ptr %i.by, align 4, !tbaa !79
  %i.bz = fadd <4 x float> %i.bx, %wide.load27
  %i.ca = getelementptr [4 x i8], ptr %invariant.gep66.i.i.i, i64 %i.bu
  %wide.load28 = load <4 x float>, ptr %i.ca, align 4, !tbaa !79
  %i.cb = fadd <4 x float> %i.bz, %wide.load28
  %i.cc = fmul <4 x float> %i.cb, splat (float 2.500000e-01)
  %i.cd = getelementptr [4 x i8], ptr %i.bt, i64 %index24
  store <4 x float> %i.cc, ptr %i.cd, align 4, !tbaa !79
  %index.next29 = add nuw i64 %index24, 4         ; 2 uses
  %i.ce = icmp eq i64 %index.next29, %n.vec23
  br i1 %i.ce, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1787

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n30, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv55.i.i.i.ph = phi i64 [ %.02351.i.i.i, %iter.check ], [ %.02351.i.i.i, %vector.memcheck ], [ %i.au, %vec.epilog.iter.check ], [ %i.br, %vec.epilog.middle.block ] ; 3 uses
  %indvars.iv.i.i.i.ph = phi i64 [ %i.aq, %iter.check ], [ %i.aq, %vector.memcheck ], [ %i.av, %vec.epilog.iter.check ], [ %i.bs, %vec.epilog.middle.block ] ; 6 uses
  %.02645.i.i.i.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.ao, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ] ; 4 uses
  %i.cf = sub i32 %i.q, %.02645.i.i.i.ph
  %.neg = add i32 %.02645.i.i.i.ph, 1
  %xtraiter = and i32 %i.cf, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i.i.i.ph
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !79
  %gep.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep64.i.i.i.a, i64 %indvars.iv.i.i.i.ph
  %i.ci = load float, ptr %gep.i.i.i.prol, align 4, !tbaa !79
  %i.cj = fadd float %i.ch, %i.ci
  %gep65.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep66.i.i.i.a, i64 %indvars.iv.i.i.i.ph
  %i.ck = load float, ptr %gep65.i.i.i.prol, align 4, !tbaa !79
  %i.cl = fadd float %i.cj, %i.ck
  %gep67.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep66.i.i.i, i64 %indvars.iv.i.i.i.ph
  %i.cm = load float, ptr %gep67.i.i.i.prol, align 4, !tbaa !79
  %i.cn = fadd float %i.cl, %i.cm
  %i.co = fmul float %i.cn, 2.500000e-01
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv55.i.i.i.ph
  store float %i.co, ptr %i.cp, align 4, !tbaa !79
  %i.cq = add nuw nsw i32 %.02645.i.i.i.ph, 1
  %indvars.iv.next.i.i.i.prol = add nsw i64 %indvars.iv.i.i.i.ph, 1 ; 2 uses
  %indvars.iv.next56.i.i.i.prol = add nsw i64 %indvars.iv55.i.i.i.ph, 1 ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.next.i.i.i.lcssa34.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.next56.i.i.i.lcssa33.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next56.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv55.i.i.i.unr = phi i64 [ %indvars.iv55.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next56.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %.02645.i.i.i.unr = phi i32 [ %.02645.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cq, %vec.epilog.scalar.ph.prol ]
  %i.cr = icmp eq i32 %i.q, %.neg
  br i1 %i.cr, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph

._crit_edge.i.i.i:                                ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.i.i.i.lcssa = phi i64 [ %i.bs, %vec.epilog.middle.block ], [ %i.av, %middle.block ], [ %indvars.iv.next.i.i.i.lcssa34.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %indvars.iv.next.i.i.i.1, %vec.epilog.scalar.ph ]
  %indvars.iv.next56.i.i.i.lcssa = phi i64 [ %i.br, %vec.epilog.middle.block ], [ %i.au, %middle.block ], [ %indvars.iv.next56.i.i.i.lcssa33.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %indvars.iv.next56.i.i.i.1, %vec.epilog.scalar.ph ]
  %i.cs = trunc nsw i64 %indvars.iv.next.i.i.i.lcssa to i32
  %i.ct = add nuw nsw i32 %.02550.i.i.i, 1        ; 2 uses
  %i.cu = add nsw i32 %i.q, %i.cs
  %exitcond60.not.i.i.i = icmp eq i32 %i.ct, %i.m
  br i1 %exitcond60.not.i.i.i, label %"_ZSt10__invoke_rIvRZN4pbrt5Image15GeneratePyramidES1_NS0_10WrapMode2DEN4pstd3pmr21polymorphic_allocatorISt4byteEEE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit", label %iter.check, !llvm.loop !1788

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv55.i.i.i = phi i64 [ %indvars.iv.next56.i.i.i.1, %vec.epilog.scalar.ph ], [ %indvars.iv55.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %.02645.i.i.i = phi i32 [ %i.dq, %vec.epilog.scalar.ph ], [ %.02645.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i.i.i
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !79
  %gep.i.i.i = getelementptr [4 x i8], ptr %invariant.gep64.i.i.i.a, i64 %indvars.iv.i.i.i
  %i.cx = load float, ptr %gep.i.i.i, align 4, !tbaa !79
  %i.cy = fadd float %i.cw, %i.cx
  %gep65.i.i.i = getelementptr [4 x i8], ptr %invariant.gep66.i.i.i.a, i64 %indvars.iv.i.i.i
  %i.cz = load float, ptr %gep65.i.i.i, align 4, !tbaa !79
  %i.da = fadd float %i.cy, %i.cz
  %gep67.i.i.i = getelementptr [4 x i8], ptr %invariant.gep66.i.i.i, i64 %indvars.iv.i.i.i
  %i.db = load float, ptr %gep67.i.i.i, align 4, !tbaa !79
  %i.dc = fadd float %i.da, %i.db
  %i.dd = fmul float %i.dc, 2.500000e-01
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv55.i.i.i
  store float %i.dd, ptr %i.de, align 4, !tbaa !79
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 4 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next.i.i.i
  %i.dg = load float, ptr %i.df, align 4, !tbaa !79
  %gep.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep64.i.i.i.a, i64 %indvars.iv.next.i.i.i
  %i.dh = load float, ptr %gep.i.i.i.1, align 4, !tbaa !79
  %i.di = fadd float %i.dg, %i.dh
  %gep65.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep66.i.i.i.a, i64 %indvars.iv.next.i.i.i
  %i.dj = load float, ptr %gep65.i.i.i.1, align 4, !tbaa !79
  %i.dk = fadd float %i.di, %i.dj
  %gep67.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep66.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.dl = load float, ptr %gep67.i.i.i.1, align 4, !tbaa !79
  %i.dm = fadd float %i.dk, %i.dl
  %i.dn = fmul float %i.dm, 2.500000e-01
  %i.do = getelementptr [4 x i8], ptr %5, i64 %indvars.iv55.i.i.i
  %i.dp = getelementptr i8, ptr %i.do, i64 4
  store float %i.dn, ptr %i.dp, align 4, !tbaa !79
  %i.dq = add nuw nsw i32 %.02645.i.i.i, 2        ; 2 uses
  %indvars.iv.next.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %indvars.iv.next56.i.i.i.1 = add nsw i64 %indvars.iv55.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i32 %i.dq, %i.q
  br i1 %exitcond.not.i.i.i.1, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !1789

"_ZSt10__invoke_rIvRZN4pbrt5Image15GeneratePyramidES1_NS0_10WrapMode2DEN4pstd3pmr21polymorphic_allocatorISt4byteEEE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit": ; preds = %._crit_edge.i.i.i, %"._ZZN4pbrt5Image15GeneratePyramidES0_NS_10WrapMode2DEN4pstd3pmr21polymorphic_allocatorISt4byteEEENK3$_0clEl.exit_crit_edge.i.i"
  %i.dr = phi ptr [ %.pre.i.i, %"._ZZN4pbrt5Image15GeneratePyramidES0_NS_10WrapMode2DEN4pstd3pmr21polymorphic_allocatorISt4byteEEENK3$_0clEl.exit_crit_edge.i.i" ], [ %i.ai, %._crit_edge.i.i.i ]
  %i.ds = zext i32 %i.j to i64
  %i.dt = add nsw i32 %i.c, 2
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !35
  %.sroa.speculated.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.dv, i32 %i.dt) ; 3 uses
  %i.dw = sub nsw i32 %.sroa.speculated.i.i.i, %i.c
  %i.dx = mul i32 %i.q, %i.h
  %i.dy = mul i32 %i.dx, %i.dw
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !1795, !nonnull !53, !align !214
  %i.ec = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !1796, !nonnull !53, !align !244
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !35
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !144
  %i.ei = getelementptr inbounds nuw [152 x i8], ptr %i.eh, i64 %i.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %.sroa.speculated4.i.i.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.h, i32 0)
  %.sroa.speculated.i.i.i.i.i = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated.i.i.i, i32 %i.c)
  %.sroa.2.0.insert.ext.i.i.i.i.i = zext i32 %.sroa.speculated.i.i.i.i.i to i64
  %.sroa.2.0.insert.shift.i.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i.i, 32
  %.sroa.09.0.insert.ext.i.i.i.i.i = zext i32 %.sroa.speculated4.i.i.i.i.i to i64
  %.sroa.09.0.insert.insert.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i, %.sroa.09.0.insert.ext.i.i.i.i.i
  store i64 %.sroa.09.0.insert.insert.i.i.i.i.i, ptr %2, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.speculated4.i14.i.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 0)
  %.sroa.speculated.i15.i.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.c, i32 %.sroa.speculated.i.i.i)
  %.sroa.2.0.insert.ext.i16.i.i.i.i = zext i32 %.sroa.speculated.i15.i.i.i.i to i64
  %.sroa.2.0.insert.shift.i17.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i16.i.i.i.i, 32
  %.sroa.09.0.insert.ext.i18.i.i.i.i = zext nneg i32 %.sroa.speculated4.i14.i.i.i.i to i64
  %.sroa.09.0.insert.insert.i19.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i17.i.i.i.i, %.sroa.09.0.insert.ext.i18.i.i.i.i
  store i64 %.sroa.09.0.insert.insert.i19.i.i.i.i, ptr %i.ej, align 8
  %i.ek = shl nuw i64 %i.ds, 32
  %i.el = ashr exact i64 %i.ek, 30
  %i.em = getelementptr inbounds i8, ptr %i.dr, i64 %i.el
  call void @_ZN4pbrt5Image10CopyRectInERKNS_7Bounds2IiEEN4pstd4spanIKfEE(ptr noundef nonnull align 8 dereferenceable(152) %i.ei, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr %i.em, i64 %i.dz)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvlEZN4pbrt5Image15GeneratePyramidES2_NS1_10WrapMode2DEN4pstd3pmr21polymorphic_allocatorISt4byteEEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #4 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt5Image15GeneratePyramidES2_NS1_10WrapMode2DEN4pstd3pmr21polymorphic_allocatorISt4byteEEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN4pbrt5Image15GeneratePyramidES0_NS_10WrapMode2DEN4pstd3pmr21polymorphic_allocatorISt4byteEEE3$_0", ptr %0, align 8, !tbaa !216
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt5Image15GeneratePyramidES2_NS1_10WrapMode2DEN4pstd3pmr21polymorphic_allocatorISt4byteEEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !111
  store ptr %.val, ptr %0, align 8, !tbaa !111
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt5Image15GeneratePyramidES2_NS1_10WrapMode2DEN4pstd3pmr21polymorphic_allocatorISt4byteEEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #35 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(56) %.val6, i64 56, i1 false), !tbaa.struct !1797
  store ptr %i.a, ptr %0, align 8, !tbaa !111
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt5Image15GeneratePyramidES2_NS1_10WrapMode2DEN4pstd3pmr21polymorphic_allocatorISt4byteEEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !111 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt5Image15GeneratePyramidES2_NS1_10WrapMode2DEN4pstd3pmr21polymorphic_allocatorISt4byteEEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 56) #34
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt5Image15GeneratePyramidES2_NS1_10WrapMode2DEN4pstd3pmr21polymorphic_allocatorISt4byteEEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4pbrt5Image15GeneratePyramidES2_NS1_10WrapMode2DEN4pstd3pmr21polymorphic_allocatorISt4byteEEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail21stringPrintfRecursiveIRA53_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(53) %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %i.a, ptr noundef %0)
  %i.b = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 42, i64 noundef 0) #31
  %.not = icmp eq i64 %i.b, -1
  %i.c = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 115, i64 noundef 0) #31
  %.not16 = icmp eq i64 %i.c, -1
  %i.d = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 100, i64 noundef 0) #31
  br i1 %.not, label %bb.c, label %.invoke

bb.b:                                             ; preds = %.invoke, %bb.x
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %.not17 = icmp eq i64 %i.d, -1
  br i1 %.not17, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  br i1 %.not16, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #31
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %2, i64 noundef %i.g)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.i = load ptr, ptr %3, align 8, !tbaa !48     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1806)
  call void @llvm.experimental.noalias.scope.decl(metadata !1807)
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.j, ptr %6, align 8, !tbaa !43, !alias.scope !1808
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !46, !alias.scope !1808
  store i8 0, ptr %i.j, align 8, !tbaa !38, !alias.scope !1808
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !220, !noalias !1808 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1808 ; 2 uses
  %i.p = icmp ugt ptr %i.m, %i.o
  %.08.i.i.i = select i1 %i.p, ptr %i.m, ptr %i.o ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !221, !noalias !1808 ; 2 uses
  %i.s = ptrtoint ptr %.08.i.i.i to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.r, i64 noundef %i.u)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %6, align 8, !tbaa !48, !alias.scope !1808 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.j
  br i1 %i.y, label %.body, label %.body.sink.split

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  %i.aa = load ptr, ptr %6, align 8, !tbaa !48    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1809)
  %i.ab = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef %i.i, ptr noundef %i.aa) #31, !noalias !1809
  %i.ac = add nsw i32 %i.ab, 1
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ae, ptr %5, align 8, !tbaa !43, !alias.scope !1809
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.af, align 8, !tbaa !46, !alias.scope !1809
  store i8 0, ptr %i.ae, align 8, !tbaa !38, !alias.scope !1809
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ad, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ag = load ptr, ptr %5, align 8, !tbaa !48, !alias.scope !1809
  %i.ah = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ag, i64 noundef %i.ad, ptr noundef %i.i, ptr noundef %i.aa) #31 ; 0 uses
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !46, !alias.scope !1809
  %i.aj = add i64 %i.ai, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.aj, i64 noundef 1)
          to label %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #36
  unreachable

bb.k:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %5, align 8, !tbaa !48, !alias.scope !1809 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ae
end_hunk_0
