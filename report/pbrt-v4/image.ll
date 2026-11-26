Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/image?download=true
inline.NumInlined: 6802
inline.NumDeleted: 1350
loop-unroll.NumCompletelyUnrolled: 53
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 116
begin_hunk_0_@_ZN4pbrt6detail21stringPrintfRecursiveIRA22_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1786)
  %i.co = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef %i.cn, ptr noundef nonnull align 1 dereferenceable(22) %2) #31, !noalias !1786
  %i.cp = add nsw i32 %i.co, 1
  %i.cq = sext i32 %i.cp to i64                   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.cr, ptr %7, align 8, !tbaa !43, !alias.scope !1786
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.cs, align 8, !tbaa !46, !alias.scope !1786
  store i8 0, ptr %i.cr, align 8, !tbaa !38, !alias.scope !1786
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cq, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41 unwind label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41: ; preds = %bb.s
  %i.ct = load ptr, ptr %7, align 8, !tbaa !48, !alias.scope !1786
  %i.cu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ct, i64 noundef %i.cq, ptr noundef %i.cn, ptr noundef nonnull align 1 dereferenceable(22) %2) #31 ; 0 uses
  %i.cv = load i64, ptr %i.cs, align 8, !tbaa !46, !alias.scope !1786
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
  %i.da = load ptr, ptr %7, align 8, !tbaa !48, !alias.scope !1786 ; 2 uses
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
  %i.a = load ptr, ptr %.val, align 8, !tbaa !1792, !nonnull !53, !align !214 ; 5 uses
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
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1793, !nonnull !53, !align !244
  %i.m = load i32, ptr %i.l, align 4, !tbaa !35   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1794
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
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1795, !nonnull !53, !align !214 ; 3 uses
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
  %i.ak = load i32, ptr %i.ag, align 4, !tbaa !35
  %i.al = load i32, ptr %i.af, align 4, !tbaa !35
  %i.am = load i32, ptr %i.ae, align 4, !tbaa !35
  %i.an = load ptr, ptr %i.ab, align 8, !tbaa !84 ; 6 uses
  %i.ao = ptrtoaddr ptr %i.an to i64              ; 2 uses
  %i.ap = sext i32 %i.am to i64                   ; 2 uses
  %i.aq = sext i32 %i.al to i64                   ; 2 uses
  %i.ar = sext i32 %i.ak to i64                   ; 2 uses
  %i.as = sext i32 %i.aa to i64
  %invariant.gep.i.i.i = getelementptr [4 x i8], ptr %i.ai, i64 %i.ar ; 5 uses
  %invariant.gep64.i.i.i = getelementptr [4 x i8], ptr %i.ai, i64 %i.aq ; 5 uses
  %invariant.gep66.i.i.i = getelementptr [4 x i8], ptr %i.ai, i64 %i.ap ; 5 uses
  %i.at = shl nsw i64 %i.ap, 2
  %i.au = add i64 %i.at, %i.aj
  %i.av = shl nsw i64 %i.aq, 2
  %i.aw = add i64 %i.av, %i.aj
  %i.ax = shl nsw i64 %i.ar, 2
  %i.ay = add i64 %i.ax, %i.aj
  %3 = sub i64 %i.ao, %i.aj
  %i.az = zext nneg i32 %i.q to i64               ; 5 uses
  %min.iters.check = icmp ult i32 %i.q, 4
  %invariant.op = add i64 %3, -1
  %min.iters.check15 = icmp ult i32 %i.q, 16
  %i.ba = and i64 %i.az, 12
  %n.vec = and i64 %i.az, 2147483632              ; 6 uses
  %i.bb = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.az
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  %n.vec23 = and i64 %i.az, 2147483644            ; 5 uses
  %i.bc = trunc nuw nsw i64 %n.vec23 to i32
  %cmp.n30 = icmp eq i64 %n.vec23, %i.az
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i.i.i, %.preheader.lr.ph.split.i.i.i
  %.052.i.i.i = phi i32 [ %i.j, %.preheader.lr.ph.split.i.i.i ], [ %i.dl, %._crit_edge.i.i.i ]
  %.02351.i.i.i = phi i64 [ %i.as, %.preheader.lr.ph.split.i.i.i ], [ %indvars.iv.next56.i.i.i.lcssa, %._crit_edge.i.i.i ] ; 7 uses
  %.02550.i.i.i = phi i32 [ 0, %.preheader.lr.ph.split.i.i.i ], [ %i.dk, %._crit_edge.i.i.i ]
  %i.bd = sext i32 %.052.i.i.i to i64             ; 7 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.be = shl i64 %.02351.i.i.i, 2                ; 2 uses
  %i.bf = shl nsw i64 %i.bd, 2                    ; 4 uses
  %4 = sub i64 %i.be, %i.bf
  %i.bg = add i64 %4, %invariant.op
  %diff.check = icmp ult i64 %i.bg, 63
  %5 = add i64 %i.ay, %i.bf
  %i.bh = add i64 %i.be, %i.ao                    ; 3 uses
  %i.bi = sub i64 %5, %i.bh
  %diff.check10 = icmp ugt i64 %i.bi, -64
  %conflict.rdx = or i1 %diff.check, %diff.check10
  %i.bj = add i64 %i.aw, %i.bf
  %i.bk = sub i64 %i.bj, %i.bh
  %diff.check11 = icmp ugt i64 %i.bk, -64
  %conflict.rdx12 = or i1 %conflict.rdx, %diff.check11
  %6 = add i64 %i.au, %i.bf
  %7 = sub i64 %6, %i.bh
  %diff.check13 = icmp ugt i64 %7, -64
  %conflict.rdx14 = or i1 %conflict.rdx12, %diff.check13
  br i1 %conflict.rdx14, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bl = add i64 %.02351.i.i.i, %n.vec           ; 2 uses
  %i.bm = add nsw i64 %n.vec, %i.bd               ; 2 uses
  %i.bn = getelementptr [4 x i8], ptr %i.an, i64 %.02351.i.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bo = add i64 %index, %i.bd                   ; 4 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %wide.load = load <8 x float>, ptr %i.bp, align 4, !tbaa !79
  %wide.load16 = load <8 x float>, ptr %i.bq, align 4, !tbaa !79
  %i.br = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %i.bo ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 32
  %wide.load17 = load <8 x float>, ptr %i.br, align 4, !tbaa !79
  %wide.load18 = load <8 x float>, ptr %i.bs, align 4, !tbaa !79
  %i.bt = fadd <8 x float> %wide.load, %wide.load17
  %i.bu = fadd <8 x float> %wide.load16, %wide.load18
  %i.bv = getelementptr [4 x i8], ptr %invariant.gep64.i.i.i, i64 %i.bo ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 32
  %wide.load19 = load <8 x float>, ptr %i.bv, align 4, !tbaa !79
  %wide.load20 = load <8 x float>, ptr %i.bw, align 4, !tbaa !79
  %i.bx = fadd <8 x float> %i.bt, %wide.load19
  %i.by = fadd <8 x float> %i.bu, %wide.load20
  %i.bz = getelementptr [4 x i8], ptr %invariant.gep66.i.i.i, i64 %i.bo ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 32
  %wide.load21 = load <8 x float>, ptr %i.bz, align 4, !tbaa !79
  %wide.load22 = load <8 x float>, ptr %i.ca, align 4, !tbaa !79
  %i.cb = fadd <8 x float> %i.bx, %wide.load21
  %i.cc = fadd <8 x float> %i.by, %wide.load22
  %i.cd = fmul <8 x float> %i.cb, splat (float 2.500000e-01)
  %i.ce = fmul <8 x float> %i.cc, splat (float 2.500000e-01)
  %i.cf = getelementptr [4 x i8], ptr %i.bn, i64 %index ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  store <8 x float> %i.cd, ptr %i.cf, align 4, !tbaa !79
  store <8 x float> %i.ce, ptr %i.cg, align 4, !tbaa !79
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !1787

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !167

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ci = add i64 %.02351.i.i.i, %n.vec23         ; 2 uses
  %i.cj = add nsw i64 %n.vec23, %i.bd             ; 2 uses
  %i.ck = getelementptr [4 x i8], ptr %i.an, i64 %.02351.i.i.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 3 uses
  %i.cl = add i64 %index24, %i.bd                 ; 4 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.cl
  %wide.load25 = load <4 x float>, ptr %i.cm, align 4, !tbaa !79
  %i.cn = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %i.cl
  %wide.load26 = load <4 x float>, ptr %i.cn, align 4, !tbaa !79
  %i.co = fadd <4 x float> %wide.load25, %wide.load26
  %i.cp = getelementptr [4 x i8], ptr %invariant.gep64.i.i.i, i64 %i.cl
  %wide.load27 = load <4 x float>, ptr %i.cp, align 4, !tbaa !79
  %i.cq = fadd <4 x float> %i.co, %wide.load27
  %i.cr = getelementptr [4 x i8], ptr %invariant.gep66.i.i.i, i64 %i.cl
  %wide.load28 = load <4 x float>, ptr %i.cr, align 4, !tbaa !79
  %i.cs = fadd <4 x float> %i.cq, %wide.load28
  %i.ct = fmul <4 x float> %i.cs, splat (float 2.500000e-01)
  %i.cu = getelementptr [4 x i8], ptr %i.ck, i64 %index24
  store <4 x float> %i.ct, ptr %i.cu, align 4, !tbaa !79
  %index.next29 = add nuw i64 %index24, 4         ; 2 uses
  %i.cv = icmp eq i64 %index.next29, %n.vec23
  br i1 %i.cv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1788

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n30, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv55.i.i.i.ph = phi i64 [ %.02351.i.i.i, %iter.check ], [ %.02351.i.i.i, %vector.memcheck ], [ %i.bl, %vec.epilog.iter.check ], [ %i.ci, %vec.epilog.middle.block ] ; 3 uses
  %indvars.iv.i.i.i.ph = phi i64 [ %i.bd, %iter.check ], [ %i.bd, %vector.memcheck ], [ %i.bm, %vec.epilog.iter.check ], [ %i.cj, %vec.epilog.middle.block ] ; 6 uses
  %.02645.i.i.i.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ] ; 4 uses
  %i.cw = sub i32 %i.q, %.02645.i.i.i.ph
  %.neg = add i32 %.02645.i.i.i.ph, 1
  %xtraiter = and i32 %i.cw, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i.i.i.ph
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !79
  %gep.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i.ph
  %i.cz = load float, ptr %gep.i.i.i.prol, align 4, !tbaa !79
  %i.da = fadd float %i.cy, %i.cz
  %gep65.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep64.i.i.i, i64 %indvars.iv.i.i.i.ph
  %i.db = load float, ptr %gep65.i.i.i.prol, align 4, !tbaa !79
  %i.dc = fadd float %i.da, %i.db
  %gep67.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep66.i.i.i, i64 %indvars.iv.i.i.i.ph
  %i.dd = load float, ptr %gep67.i.i.i.prol, align 4, !tbaa !79
  %i.de = fadd float %i.dc, %i.dd
  %i.df = fmul float %i.de, 2.500000e-01
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv55.i.i.i.ph
  store float %i.df, ptr %i.dg, align 4, !tbaa !79
  %i.dh = add nuw nsw i32 %.02645.i.i.i.ph, 1
  %indvars.iv.next.i.i.i.prol = add nsw i64 %indvars.iv.i.i.i.ph, 1 ; 2 uses
  %indvars.iv.next56.i.i.i.prol = add nsw i64 %indvars.iv55.i.i.i.ph, 1 ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.next.i.i.i.lcssa34.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.next56.i.i.i.lcssa33.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next56.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv55.i.i.i.unr = phi i64 [ %indvars.iv55.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next56.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %.02645.i.i.i.unr = phi i32 [ %.02645.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dh, %vec.epilog.scalar.ph.prol ]
  %i.di = icmp eq i32 %i.q, %.neg
  br i1 %i.di, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph

._crit_edge.i.i.i:                                ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.i.i.i.lcssa = phi i64 [ %i.cj, %vec.epilog.middle.block ], [ %i.bm, %middle.block ], [ %indvars.iv.next.i.i.i.lcssa34.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %indvars.iv.next.i.i.i.1, %vec.epilog.scalar.ph ]
  %indvars.iv.next56.i.i.i.lcssa = phi i64 [ %i.ci, %vec.epilog.middle.block ], [ %i.bl, %middle.block ], [ %indvars.iv.next56.i.i.i.lcssa33.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %indvars.iv.next56.i.i.i.1, %vec.epilog.scalar.ph ]
  %i.dj = trunc nsw i64 %indvars.iv.next.i.i.i.lcssa to i32
  %i.dk = add nuw nsw i32 %.02550.i.i.i, 1        ; 2 uses
  %i.dl = add nsw i32 %i.q, %i.dj
  %exitcond60.not.i.i.i = icmp eq i32 %i.dk, %i.m
  br i1 %exitcond60.not.i.i.i, label %"_ZSt10__invoke_rIvRZN4pbrt5Image15GeneratePyramidES1_NS0_10WrapMode2DEN4pstd3pmr21polymorphic_allocatorISt4byteEEE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit", label %iter.check, !llvm.loop !1789

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv55.i.i.i = phi i64 [ %indvars.iv.next56.i.i.i.1, %vec.epilog.scalar.ph ], [ %indvars.iv55.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %.02645.i.i.i = phi i32 [ %i.eh, %vec.epilog.scalar.ph ], [ %.02645.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i.i.i
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !79
  %gep.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i
  %i.do = load float, ptr %gep.i.i.i, align 4, !tbaa !79
  %i.dp = fadd float %i.dn, %i.do
  %gep65.i.i.i = getelementptr [4 x i8], ptr %invariant.gep64.i.i.i, i64 %indvars.iv.i.i.i
  %i.dq = load float, ptr %gep65.i.i.i, align 4, !tbaa !79
  %i.dr = fadd float %i.dp, %i.dq
  %gep67.i.i.i = getelementptr [4 x i8], ptr %invariant.gep66.i.i.i, i64 %indvars.iv.i.i.i
  %i.ds = load float, ptr %gep67.i.i.i, align 4, !tbaa !79
  %i.dt = fadd float %i.dr, %i.ds
  %i.du = fmul float %i.dt, 2.500000e-01
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv55.i.i.i
  store float %i.du, ptr %i.dv, align 4, !tbaa !79
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 4 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next.i.i.i
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !79
  %gep.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.dy = load float, ptr %gep.i.i.i.1, align 4, !tbaa !79
  %i.dz = fadd float %i.dx, %i.dy
  %gep65.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep64.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ea = load float, ptr %gep65.i.i.i.1, align 4, !tbaa !79
  %i.eb = fadd float %i.dz, %i.ea
  %gep67.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep66.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ec = load float, ptr %gep67.i.i.i.1, align 4, !tbaa !79
  %i.ed = fadd float %i.eb, %i.ec
  %i.ee = fmul float %i.ed, 2.500000e-01
  %i.ef = getelementptr [4 x i8], ptr %i.an, i64 %indvars.iv55.i.i.i
  %i.eg = getelementptr i8, ptr %i.ef, i64 4
  store float %i.ee, ptr %i.eg, align 4, !tbaa !79
  %i.eh = add nuw nsw i32 %.02645.i.i.i, 2        ; 2 uses
  %indvars.iv.next.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %indvars.iv.next56.i.i.i.1 = add nsw i64 %indvars.iv55.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i32 %i.eh, %i.q
  br i1 %exitcond.not.i.i.i.1, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !1790

"_ZSt10__invoke_rIvRZN4pbrt5Image15GeneratePyramidES1_NS0_10WrapMode2DEN4pstd3pmr21polymorphic_allocatorISt4byteEEE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit": ; preds = %._crit_edge.i.i.i, %"._ZZN4pbrt5Image15GeneratePyramidES0_NS_10WrapMode2DEN4pstd3pmr21polymorphic_allocatorISt4byteEEENK3$_0clEl.exit_crit_edge.i.i"
  %i.ei = phi ptr [ %.pre.i.i, %"._ZZN4pbrt5Image15GeneratePyramidES0_NS_10WrapMode2DEN4pstd3pmr21polymorphic_allocatorISt4byteEEENK3$_0clEl.exit_crit_edge.i.i" ], [ %i.ai, %._crit_edge.i.i.i ]
  %i.ej = zext i32 %i.j to i64
  %i.ek = add nsw i32 %i.c, 2
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.em = load i32, ptr %i.el, align 8, !tbaa !35
  %.sroa.speculated.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.em, i32 %i.ek) ; 3 uses
  %i.en = sub nsw i32 %.sroa.speculated.i.i.i, %i.c
  %i.eo = mul i32 %i.q, %i.h
  %i.ep = mul i32 %i.eo, %i.en
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !1796, !nonnull !53, !align !214
  %i.et = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !1797, !nonnull !53, !align !244
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !35
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !144
  %i.ez = getelementptr inbounds nuw [152 x i8], ptr %i.ey, i64 %i.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %.sroa.speculated4.i.i.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.h, i32 0)
  %.sroa.speculated.i.i.i.i.i = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated.i.i.i, i32 %i.c)
  %.sroa.2.0.insert.ext.i.i.i.i.i = zext i32 %.sroa.speculated.i.i.i.i.i to i64
  %.sroa.2.0.insert.shift.i.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i.i, 32
  %.sroa.09.0.insert.ext.i.i.i.i.i = zext i32 %.sroa.speculated4.i.i.i.i.i to i64
  %.sroa.09.0.insert.insert.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i, %.sroa.09.0.insert.ext.i.i.i.i.i
  store i64 %.sroa.09.0.insert.insert.i.i.i.i.i, ptr %2, align 8
end_hunk_0
