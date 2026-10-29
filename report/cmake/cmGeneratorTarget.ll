Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmGeneratorTarget?download=true
inline.NumInlined: 14549
inline.NumDeleted: 4331
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK17cmGeneratorTarget18HaveFortranSourcesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK17cmGeneratorTarget18HaveFortranSourcesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIP2BTIP12cmSourceFileESt6vectorISI_SaISI_EEEEEEbT_.exit36.i.i.i.i.i": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i32.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i33.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %i.cf, label %.loopexit35.loopexit.split.loop.exit, label %bb.f

bb.f:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK17cmGeneratorTarget18HaveFortranSourcesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIP2BTIP12cmSourceFileESt6vectorISI_SaISI_EEEEEEbT_.exit36.i.i.i.i.i"
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.060.079.i.i.i.i.i, i64 96 ; 3 uses
  %i.cl = add nsw i64 %.080.i.i.i.i.i, -1
  %i.cm = icmp sgt i64 %.080.i.i.i.i.i, 1
  br i1 %i.cm, label %bb.b, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !3489

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.f
  %.pre.i.i.i.i.i = ptrtoint ptr %i.ck to i64
  %.pre85.i.i.i.i.i = sub i64 %i.d, %.pre.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.a
  %.pre-phi86.i.i.i.i.i = phi i64 [ %.pre85.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.f, %bb.a ]
  %.sroa.060.0.lcssa.i.i.i.i.i = phi ptr [ %i.ck, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.cn = sdiv exact i64 %.pre-phi86.i.i.i.i.i, 24
  switch i64 %i.cn, label %.thread [
    i64 3, label %bb.g
    i64 2, label %bb.i
    i64 1, label %bb.k
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %.val.i37.i.i.i.i.i = load ptr, ptr %.sroa.060.0.lcssa.i.i.i.i.i, align 8, !tbaa !503
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZNK12cmSourceFile11GetLanguageB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(376) %.val.i37.i.i.i.i.i)
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc20:                                         ; preds = %bb.g
  %i.co = load ptr, ptr %4, align 8, !tbaa !74    ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !75 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 7
  br i1 %i.cr, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i41.i.i.i.i.i, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i38.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i41.i.i.i.i.i: ; preds = %.noexc20
  %i.cs = load i32, ptr %i.co, align 1
  %i.ct = xor i32 %i.cs, 1953656646
  %i.cu = getelementptr i8, ptr %i.co, i64 3
  %i.cv = load i32, ptr %i.cu, align 1
  %i.cw = xor i32 %i.cv, 1851880052
  %i.cx = or i32 %i.ct, %i.cw
  %i.cy = icmp ne i32 %i.cx, 0
  %i.cz = zext i1 %i.cy to i32
  %i.da = icmp eq i32 %i.cz, 0
  br label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i38.i.i.i.i.i

_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i38.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i41.i.i.i.i.i, %.noexc20
  %i.db = phi i1 [ false, %.noexc20 ], [ %i.da, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i41.i.i.i.i.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.co, %i.dc
  br i1 %i.dd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i40.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i40.i.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i38.i.i.i.i.i
  %i.de = icmp ult i64 %i.cq, 16
  call void @llvm.assume(i1 %i.de)
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK17cmGeneratorTarget18HaveFortranSourcesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIP2BTIP12cmSourceFileESt6vectorISI_SaISI_EEEEEEbT_.exit43.i.i.i.i.i"

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39.i.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i38.i.i.i.i.i
  %i.df = load i64, ptr %i.dc, align 8, !tbaa !77
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.dg) #29
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK17cmGeneratorTarget18HaveFortranSourcesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIP2BTIP12cmSourceFileESt6vectorISI_SaISI_EEEEEEbT_.exit43.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK17cmGeneratorTarget18HaveFortranSourcesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIP2BTIP12cmSourceFileESt6vectorISI_SaISI_EEEEEEbT_.exit43.i.i.i.i.i": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i40.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %i.db, label %.loopexit35, label %bb.h

bb.h:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK17cmGeneratorTarget18HaveFortranSourcesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIP2BTIP12cmSourceFileESt6vectorISI_SaISI_EEEEEEbT_.exit43.i.i.i.i.i"
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.060.0.lcssa.i.i.i.i.i, i64 24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i.i
  %.sroa.060.1.i.i.i.i.i = phi ptr [ %i.dh, %bb.h ], [ %.sroa.060.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %.val.i44.i.i.i.i.i = load ptr, ptr %.sroa.060.1.i.i.i.i.i, align 8, !tbaa !503
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZNK12cmSourceFile11GetLanguageB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(376) %.val.i44.i.i.i.i.i)
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc21:                                         ; preds = %bb.i
  %i.di = load ptr, ptr %3, align 8, !tbaa !74    ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !75 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 7
  br i1 %i.dl, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i48.i.i.i.i.i, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i45.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i48.i.i.i.i.i: ; preds = %.noexc21
  %i.dm = load i32, ptr %i.di, align 1
  %i.dn = xor i32 %i.dm, 1953656646
  %i.do = getelementptr i8, ptr %i.di, i64 3
  %i.dp = load i32, ptr %i.do, align 1
  %i.dq = xor i32 %i.dp, 1851880052
  %i.dr = or i32 %i.dn, %i.dq
  %i.ds = icmp ne i32 %i.dr, 0
  %i.dt = zext i1 %i.ds to i32
  %i.du = icmp eq i32 %i.dt, 0
  br label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i45.i.i.i.i.i

_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i45.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i48.i.i.i.i.i, %.noexc21
  %i.dv = phi i1 [ false, %.noexc21 ], [ %i.du, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i48.i.i.i.i.i ]
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.di, %i.dw
  br i1 %i.dx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i47.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i46.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i47.i.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i45.i.i.i.i.i
  %i.dy = icmp ult i64 %i.dk, 16
  call void @llvm.assume(i1 %i.dy)
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK17cmGeneratorTarget18HaveFortranSourcesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIP2BTIP12cmSourceFileESt6vectorISI_SaISI_EEEEEEbT_.exit50.i.i.i.i.i"

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i46.i.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i45.i.i.i.i.i
  %i.dz = load i64, ptr %i.dw, align 8, !tbaa !77
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.ea) #29
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK17cmGeneratorTarget18HaveFortranSourcesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIP2BTIP12cmSourceFileESt6vectorISI_SaISI_EEEEEEbT_.exit50.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK17cmGeneratorTarget18HaveFortranSourcesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIP2BTIP12cmSourceFileESt6vectorISI_SaISI_EEEEEEbT_.exit50.i.i.i.i.i": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i46.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i47.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %i.dv, label %.loopexit35, label %bb.j

bb.j:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK17cmGeneratorTarget18HaveFortranSourcesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIP2BTIP12cmSourceFileESt6vectorISI_SaISI_EEEEEEbT_.exit50.i.i.i.i.i"
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.060.1.i.i.i.i.i, i64 24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i
  %.sroa.060.2.i.i.i.i.i = phi ptr [ %i.eb, %bb.j ], [ %.sroa.060.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.val.i51.i.i.i.i.i = load ptr, ptr %.sroa.060.2.i.i.i.i.i, align 8, !tbaa !503
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZNK12cmSourceFile11GetLanguageB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(376) %.val.i51.i.i.i.i.i)
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc22:                                         ; preds = %bb.k
  %i.ec = load ptr, ptr %2, align 8, !tbaa !74    ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !75 ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 7
  br i1 %i.ef, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.i.i, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i52.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.i.i: ; preds = %.noexc22
  %i.eg = load i32, ptr %i.ec, align 1
  %i.eh = xor i32 %i.eg, 1953656646
  %i.ei = getelementptr i8, ptr %i.ec, i64 3
  %i.ej = load i32, ptr %i.ei, align 1
  %i.ek = xor i32 %i.ej, 1851880052
  %i.el = or i32 %i.eh, %i.ek
  %i.em = icmp ne i32 %i.el, 0
  %i.en = zext i1 %i.em to i32
  %i.eo = icmp eq i32 %i.en, 0
  %i.ep = select i1 %i.eo, ptr %.sroa.060.2.i.i.i.i.i, ptr %i.c
  br label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i52.i.i.i.i.i

_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i52.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.i.i, %.noexc22
  %spec.select.i.i.i.i.i = phi ptr [ %i.c, %.noexc22 ], [ %i.ep, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.i.i ]
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ec, %i.eq
  br i1 %i.er, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i54.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i53.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i54.i.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i52.i.i.i.i.i
  %i.es = icmp ult i64 %i.ee, 16
  call void @llvm.assume(i1 %i.es)
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK17cmGeneratorTarget18HaveFortranSourcesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIP2BTIP12cmSourceFileESt6vectorISI_SaISI_EEEEEEbT_.exit57.i.i.i.i.i"

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i53.i.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i52.i.i.i.i.i
  %i.et = load i64, ptr %i.eq, align 8, !tbaa !77
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eu) #29
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK17cmGeneratorTarget18HaveFortranSourcesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIP2BTIP12cmSourceFileESt6vectorISI_SaISI_EEEEEEbT_.exit57.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK17cmGeneratorTarget18HaveFortranSourcesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIP2BTIP12cmSourceFileESt6vectorISI_SaISI_EEEEEEbT_.exit57.i.i.i.i.i": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i53.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i54.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %.loopexit35

.loopexit35.loopexit.split.loop.exit:             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK17cmGeneratorTarget18HaveFortranSourcesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIP2BTIP12cmSourceFileESt6vectorISI_SaISI_EEEEEEbT_.exit36.i.i.i.i.i"
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.060.079.i.i.i.i.i, i64 72
  br label %.loopexit35

.loopexit35.loopexit.split.loop.exit77:           ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK17cmGeneratorTarget18HaveFortranSourcesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIP2BTIP12cmSourceFileESt6vectorISI_SaISI_EEEEEEbT_.exit29.i.i.i.i.i"
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.060.079.i.i.i.i.i, i64 48
  br label %.loopexit35

.loopexit35.loopexit.split.loop.exit79:           ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK17cmGeneratorTarget18HaveFortranSourcesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIP2BTIP12cmSourceFileESt6vectorISI_SaISI_EEEEEEbT_.exit22.i.i.i.i.i"
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.060.079.i.i.i.i.i, i64 24
  br label %.loopexit35

.loopexit35:                                      ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK17cmGeneratorTarget18HaveFortranSourcesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIP2BTIP12cmSourceFileESt6vectorISI_SaISI_EEEEEEbT_.exit.i.i.i.i.i", %.loopexit35.loopexit.split.loop.exit, %.loopexit35.loopexit.split.loop.exit77, %.loopexit35.loopexit.split.loop.exit79, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK17cmGeneratorTarget18HaveFortranSourcesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIP2BTIP12cmSourceFileESt6vectorISI_SaISI_EEEEEEbT_.exit57.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK17cmGeneratorTarget18HaveFortranSourcesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIP2BTIP12cmSourceFileESt6vectorISI_SaISI_EEEEEEbT_.exit50.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK17cmGeneratorTarget18HaveFortranSourcesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIP2BTIP12cmSourceFileESt6vectorISI_SaISI_EEEEEEbT_.exit43.i.i.i.i.i"
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.060.1.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK17cmGeneratorTarget18HaveFortranSourcesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIP2BTIP12cmSourceFileESt6vectorISI_SaISI_EEEEEEbT_.exit50.i.i.i.i.i" ], [ %spec.select.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK17cmGeneratorTarget18HaveFortranSourcesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIP2BTIP12cmSourceFileESt6vectorISI_SaISI_EEEEEEbT_.exit57.i.i.i.i.i" ], [ %.sroa.060.0.lcssa.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK17cmGeneratorTarget18HaveFortranSourcesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIP2BTIP12cmSourceFileESt6vectorISI_SaISI_EEEEEEbT_.exit43.i.i.i.i.i" ], [ %i.ex, %.loopexit35.loopexit.split.loop.exit79 ], [ %i.ew, %.loopexit35.loopexit.split.loop.exit77 ], [ %i.ev, %.loopexit35.loopexit.split.loop.exit ], [ %.sroa.060.079.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK17cmGeneratorTarget18HaveFortranSourcesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIP2BTIP12cmSourceFileESt6vectorISI_SaISI_EEEEEEbT_.exit.i.i.i.i.i" ]
  %.not = icmp eq ptr %i.c, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i
  br i1 %.not, label %.thread, label %bb.r

.thread:                                          ; preds = %._crit_edge.i.i.i.i.i, %.loopexit35
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZNK17cmGeneratorTarget24GetSourceObjectLibrariesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::set.888") align 8 %10, ptr noundef nonnull align 8 dereferenceable(3187) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %.thread
  %i.ey = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !264 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %.not3445 = icmp eq ptr %i.ez, %i.fa
  br i1 %.not3445, label %.noexc25._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %bb.m
  %.sroa.030.046 = phi ptr [ %i.fe, %bb.m ], [ %i.ez, %bb.l ] ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.030.046, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !342
  %i.fd = invoke noundef zeroext i1 @_ZNK17cmGeneratorTarget18HaveFortranSourcesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3187) %i.fc, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc25 unwind label %bb.p, !inline_history !3490

.noexc25:                                         ; preds = %.lr.ph
  br i1 %i.fd, label %.noexc25._crit_edge.loopexit, label %bb.m

bb.m:                                             ; preds = %.noexc25
  %i.fe = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.030.046) #33, !inline_history !3490 ; 2 uses
  %.not34 = icmp eq ptr %i.fe, %i.fa
  br i1 %.not34, label %.noexc25._crit_edge.loopexit, label %.lr.ph, !llvm.loop !3491

.noexc25._crit_edge.loopexit:                     ; preds = %.noexc25, %bb.m
  %.sroa.030.0.lcssa.ph = phi ptr [ %i.fa, %bb.m ], [ %.sroa.030.046, %.noexc25 ]
  %11 = icmp ne ptr %i.fa, %.sroa.030.0.lcssa.ph
  br label %.noexc25._crit_edge

.noexc25._crit_edge:                              ; preds = %.noexc25._crit_edge.loopexit, %bb.l
  %.sroa.030.0.lcssa = phi i1 [ false, %bb.l ], [ %11, %.noexc25._crit_edge.loopexit ]
  %i.ff = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !263
  invoke void @_ZNSt8_Rb_treeIPK17cmGeneratorTargetS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef %i.fg)
          to label %_ZNSt3setIPK17cmGeneratorTargetSt4lessIS2_ESaIS2_EED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %.noexc25._crit_edge
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #32
  unreachable

_ZNSt3setIPK17cmGeneratorTargetSt4lessIS2_ESaIS2_EED2Ev.exit: ; preds = %.noexc25._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.r

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.k, %bb.i, %bb.g
  %lpad.loopexit.split-lp90 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.o:                                             ; preds = %.thread
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3setIPK17cmGeneratorTargetSt4lessIS2_ESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #28
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.fk, %bb.p ], [ %i.fj, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %.loopexit.split-lp

bb.r:                                             ; preds = %_ZNSt3setIPK17cmGeneratorTargetSt4lessIS2_ESaIS2_EED2Ev.exit, %.loopexit35
  %.014 = phi i1 [ true, %.loopexit35 ], [ %.sroa.030.0.lcssa, %_ZNSt3setIPK17cmGeneratorTargetSt4lessIS2_ESaIS2_EED2Ev.exit ]
  %i.fl = load ptr, ptr %9, align 8, !tbaa !505   ; 3 uses
  %i.fm = load ptr, ptr %i.b, align 8, !tbaa !506 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fl, %i.fm
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIP2BTIP12cmSourceFileES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.r, %_ZSt8_DestroyI2BTIP12cmSourceFileEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ge, %_ZSt8_DestroyI2BTIP12cmSourceFileEEvPT_.exit.i.i.i ], [ %i.fl, %bb.r ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !324 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI2BTIP12cmSourceFileEEvPT_.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 4 uses
  %i.fq = load atomic i64, ptr %i.fp acquire, align 8 ; 2 uses
  %i.fr = icmp eq i64 %i.fq, 4294967297
  %i.fs = trunc i64 %i.fq to i32                  ; 2 uses
  br i1 %i.fr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.fp, align 8, !tbaa !328
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  store i32 0, ptr %i.ft, align 4, !tbaa !329
  %i.fu = load ptr, ptr %i.fo, align 8, !tbaa !64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #28, !inline_history !34
  %i.fx = load ptr, ptr %i.fo, align 8, !tbaa !64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #28, !inline_history !34
  br label %_ZSt8_DestroyI2BTIP12cmSourceFileEEvPT_.exit.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.ga = load i8, ptr @__libc_single_threaded, align 1, !tbaa !77
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ga, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gb = add nsw i32 %i.fs, -1
  store i32 %i.gb, ptr %i.fp, align 8, !tbaa !326
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.gc = atomicrmw volatile add ptr %i.fp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.fs, %bb.v ], [ %i.gc, %bb.w ]
  %i.gd = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.gd, label %bb.x, label %_ZSt8_DestroyI2BTIP12cmSourceFileEEvPT_.exit.i.i.i, !prof !323

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #28
  br label %_ZSt8_DestroyI2BTIP12cmSourceFileEEvPT_.exit.i.i.i

_ZSt8_DestroyI2BTIP12cmSourceFileEEvPT_.exit.i.i.i: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.t, %.lr.ph.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ge, %i.fm
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIP2BTIP12cmSourceFileES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !35

_ZSt8_DestroyIP2BTIP12cmSourceFileES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyI2BTIP12cmSourceFileEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !505
  br label %_ZSt8_DestroyIP2BTIP12cmSourceFileES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIP2BTIP12cmSourceFileES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIP2BTIP12cmSourceFileES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.r
  %i.gf = phi ptr [ %.pr.i, %_ZSt8_DestroyIP2BTIP12cmSourceFileES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.fl, %bb.r ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gf, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorI2BTIP12cmSourceFileESaIS3_EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZSt8_DestroyIP2BTIP12cmSourceFileES3_EvT_S5_RSaIT0_E.exit.i
  %i.gg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !507
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = ptrtoint ptr %i.gf to i64
  %i.gk = sub i64 %i.gi, %i.gj
  call void @_ZdlPvm(ptr noundef nonnull %i.gf, i64 noundef %i.gk) #29
  br label %_ZNSt6vectorI2BTIP12cmSourceFileESaIS3_EED2Ev.exit

_ZNSt6vectorI2BTIP12cmSourceFileESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIP2BTIP12cmSourceFileES3_EvT_S5_RSaIT0_E.exit.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  ret i1 %.014

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.q ], [ %lpad.loopexit.split-lp90, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorI2BTIP12cmSourceFileESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZNK17cmGeneratorTarget14GetSourceFilesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::vector.1319") align 8, ptr noundef nonnull align 8 dereferenceable(3187), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI2BTIP12cmSourceFileESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !505    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !506  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP2BTIP12cmSourceFileES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyI2BTIP12cmSourceFileEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyI2BTIP12cmSourceFileEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !324  ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyI2BTIP12cmSourceFileEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !328
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !329
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #28, !inline_history !3492
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #28, !inline_history !3492
  br label %_ZSt8_DestroyI2BTIP12cmSourceFileEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !77
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !326
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyI2BTIP12cmSourceFileEEvPT_.exit.i.i, !prof !323

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #28
  br label %_ZSt8_DestroyI2BTIP12cmSourceFileEEvPT_.exit.i.i

_ZSt8_DestroyI2BTIP12cmSourceFileEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIP2BTIP12cmSourceFileES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !35

_ZSt8_DestroyIP2BTIP12cmSourceFileES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyI2BTIP12cmSourceFileEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !505
  br label %_ZSt8_DestroyIP2BTIP12cmSourceFileES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIP2BTIP12cmSourceFileES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIP2BTIP12cmSourceFileES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIP2BTIP12cmSourceFileES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseI2BTIP12cmSourceFileESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIP2BTIP12cmSourceFileES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !507
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #29
  br label %_ZNSt12_Vector_baseI2BTIP12cmSourceFileESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseI2BTIP12cmSourceFileESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIP2BTIP12cmSourceFileES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK17cmGeneratorTarget18HaveFortranSourcesEv(ptr noundef nonnull align 8 dereferenceable(3187) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::vector", align 8       ; 8 uses
  %9 = alloca %"class.std::vector.240", align 8   ; 10 uses
  %10 = alloca %"class.std::set.888", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK17cmGeneratorTarget19GetAllConfigSourcesEv(ptr noundef nonnull align 8 dereferenceable(3187) %0) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !302  ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !301  ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
end_hunk_0
