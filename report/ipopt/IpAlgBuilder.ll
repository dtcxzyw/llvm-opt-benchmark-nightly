Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpAlgBuilder?download=true
inline.NumInlined: 1898
inline.NumDeleted: 349
begin_hunk_0_@_ZN5Ipopt16AlgorithmBuilder15RegisterOptionsENS_8SmartPtrINS_17RegisteredOptionsEEE:_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i
  %88 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %89 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %90 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %91 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %92 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %93 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %94 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %95 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %96 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %97 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %98 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %99 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %100 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %101 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %102 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %103 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %104 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %105 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %106 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %107 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %108 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %109 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %110 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %111 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %112 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %113 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %114 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %115 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %116 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %117 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %118 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %119 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %120 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %121 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %122 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %123 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %124 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %125 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.bs = tail call i32 @IpoptGetAvailableLinearSolvers(i32 noundef 0) ; 12 uses
  %i.bt = tail call i32 @IpoptGetAvailableLinearSolvers(i32 noundef 1) ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 21 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 43 uses
  %i.bw = invoke noalias noundef nonnull dereferenceable(320) ptr @_Znwm(i64 noundef 320) #19
          to label %.noexc unwind label %bb.k     ; 4 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i
  %i.bx = load ptr, ptr %1, align 8, !tbaa !78    ; 5 uses
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !79 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bx, %i.by
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cm, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.bw, %.noexc ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.cl, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.bx, %.noexc ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.bz, ptr %.012.i.i.i.i, align 8, !tbaa !39, !alias.scope !110, !noalias !111
  %i.ca = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !42, !alias.scope !111, !noalias !110 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %bb.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.a:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !43, !alias.scope !111, !noalias !110 ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 16
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = add nuw nsw i64 %i.ce, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bz, ptr noundef nonnull align 8 dereferenceable(1) %i.cb, i64 %i.cg, i1 false), !alias.scope !112
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.ca, ptr %.012.i.i.i.i, align 8, !tbaa !42, !alias.scope !110, !noalias !111
  %i.ch = load i64, ptr %i.cb, align 8, !tbaa !45, !alias.scope !111, !noalias !110
  store i64 %i.ch, ptr %i.bz, align 8, !tbaa !45, !alias.scope !110, !noalias !111
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !43, !alias.scope !111, !noalias !110
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.a
  %i.ci = phi i64 [ %i.ce, %bb.a ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.ci, ptr %i.ck, align 8, !tbaa !43, !alias.scope !110, !noalias !111
  store ptr %i.cb, ptr %.0911.i.i.i.i, align 8, !tbaa !42, !alias.scope !111, !noalias !110
  store i64 0, ptr %i.cj, align 8, !tbaa !43, !alias.scope !111, !noalias !110
  store i8 0, ptr %i.cb, align 8, !tbaa !45, !alias.scope !111, !noalias !110
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %.not.i.i.i.i = icmp eq ptr %i.cl, %i.by
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !11

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i, %.noexc
  %.not.i8.i = icmp eq ptr %i.bx, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %i.cn = load ptr, ptr %i.bu, align 8, !tbaa !81
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.bx to i64
  %i.cq = sub i64 %i.co, %i.cp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cq) #20
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.b, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.bw, ptr %1, align 8, !tbaa !78
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !79
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 320
  store ptr %i.cr, ptr %i.bu, align 8, !tbaa !81
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 29 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !81
  %i.cu = load ptr, ptr %2, align 8, !tbaa !78
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = icmp ult i64 %i.cx, 320
  br i1 %i.cy, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i372, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit388

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i372: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !79
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cw
  %i.dd = invoke noalias noundef nonnull dereferenceable(320) ptr @_Znwm(i64 noundef 320) #19
          to label %.noexc387 unwind label %bb.k  ; 4 uses

.noexc387:                                        ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i372
  %i.de = load ptr, ptr %2, align 8, !tbaa !78    ; 5 uses
  %i.df = load ptr, ptr %i.cz, align 8, !tbaa !79 ; 2 uses
  %.not10.i.i.i.i373 = icmp eq ptr %i.de, %i.df
  br i1 %.not10.i.i.i.i373, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i384, label %.lr.ph.i.i.i.i374

.lr.ph.i.i.i.i374:                                ; preds = %.noexc387, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i380
  %.012.i.i.i.i375 = phi ptr [ %i.dt, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i380 ], [ %i.dd, %.noexc387 ] ; 5 uses
  %.0911.i.i.i.i376 = phi ptr [ %i.ds, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i380 ], [ %i.de, %.noexc387 ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.dg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i375, i64 16 ; 3 uses
  store ptr %i.dg, ptr %.012.i.i.i.i375, align 8, !tbaa !39, !alias.scope !113, !noalias !114
  %i.dh = load ptr, ptr %.0911.i.i.i.i376, align 8, !tbaa !42, !alias.scope !114, !noalias !113 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i376, i64 16 ; 5 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i377

bb.c:                                             ; preds = %.lr.ph.i.i.i.i374
  %i.dk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i376, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !43, !alias.scope !114, !noalias !113 ; 3 uses
  %i.dm = icmp ult i64 %i.dl, 16
  tail call void @llvm.assume(i1 %i.dm)
  %i.dn = add nuw nsw i64 %i.dl, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dg, ptr noundef nonnull align 8 dereferenceable(1) %i.di, i64 %i.dn, i1 false), !alias.scope !115
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i380

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i377: ; preds = %.lr.ph.i.i.i.i374
  store ptr %i.dh, ptr %.012.i.i.i.i375, align 8, !tbaa !42, !alias.scope !113, !noalias !114
  %i.do = load i64, ptr %i.di, align 8, !tbaa !45, !alias.scope !114, !noalias !113
  store i64 %i.do, ptr %i.dg, align 8, !tbaa !45, !alias.scope !113, !noalias !114
  %.phi.trans.insert.i.i.i.i.i378 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i376, i64 8
  %.pre.i.i.i.i.i379 = load i64, ptr %.phi.trans.insert.i.i.i.i.i378, align 8, !tbaa !43, !alias.scope !114, !noalias !113
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i380

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i380: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i377, %bb.c
  %i.dp = phi i64 [ %i.dl, %bb.c ], [ %.pre.i.i.i.i.i379, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i377 ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i376, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i375, i64 8
  store i64 %i.dp, ptr %i.dr, align 8, !tbaa !43, !alias.scope !113, !noalias !114
  store ptr %i.di, ptr %.0911.i.i.i.i376, align 8, !tbaa !42, !alias.scope !114, !noalias !113
  store i64 0, ptr %i.dq, align 8, !tbaa !43, !alias.scope !114, !noalias !113
  store i8 0, ptr %i.di, align 8, !tbaa !45, !alias.scope !114, !noalias !113
  %i.ds = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i376, i64 32 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i375, i64 32
  %.not.i.i.i.i381 = icmp eq ptr %i.ds, %i.df
  br i1 %.not.i.i.i.i381, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i384, label %.lr.ph.i.i.i.i374, !llvm.loop !11

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i384: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i380, %.noexc387
  %.not.i8.i385 = icmp eq ptr %i.de, null
  br i1 %.not.i8.i385, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i386, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i384
  %i.du = load ptr, ptr %i.cs, align 8, !tbaa !81
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.de to i64
  %i.dx = sub i64 %i.dv, %i.dw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.dx) #20
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i386

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i386: ; preds = %bb.d, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i384
  store ptr %i.dd, ptr %2, align 8, !tbaa !78
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dc
  store ptr %i.dy, ptr %i.cz, align 8, !tbaa !79
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dd, i64 320
  store ptr %i.dz, ptr %i.cs, align 8, !tbaa !81
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit388

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit388: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i386, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i
  %126 = and i32 %i.bs, 1
  %.not = icmp eq i32 %126, 0                     ; 2 uses
  br i1 %.not, label %bb.t, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit388
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  store ptr %i.ea, ptr %3, align 8, !tbaa !39
  store i32 926048621, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 4, ptr %i.eb, align 8, !tbaa !43
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i8 0, ptr %i.ec, align 4, !tbaa !45
  %i.ed = load ptr, ptr %i.bv, align 8, !tbaa !79 ; 7 uses
  %i.ee = load ptr, ptr %i.bu, align 8, !tbaa !81
  %.not.i.i = icmp eq ptr %i.ed, %i.ee
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 3 uses
  store ptr %i.ef, ptr %i.ed, align 8, !tbaa !39
  %i.eg = load ptr, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.ea
  br i1 %i.eh, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ef, ptr noundef nonnull align 8 dereferenceable(5) %i.ea, i64 5, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  store ptr %i.eg, ptr %i.ed, align 8, !tbaa !42
  %i.ei = load i64, ptr %i.ea, align 8, !tbaa !45
  store i64 %i.ei, ptr %i.ef, align 8, !tbaa !45
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i64 4, ptr %i.ej, align 8, !tbaa !43
  store ptr %i.ea, ptr %3, align 8, !tbaa !42
  store i64 0, ptr %i.eb, align 8, !tbaa !43
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  store ptr %i.ek, ptr %i.bv, align 8, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.ed, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.l

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.g
  %.pre = load ptr, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.el = icmp eq ptr %.pre, %i.ea
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.em = load i64, ptr %i.ea, align 8, !tbaa !45
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.en) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %127 = and i32 %i.bt, 1
  %.not160 = icmp eq i32 %127, 0
  br i1 %.not160, label %.noexc.i410, label %.noexc.i392

.noexc.i392:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  store ptr %i.eo, ptr %4, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br) #18
  store i64 28, ptr %i.br, align 8, !tbaa !44
  %i.ep = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.br, i64 noundef 0)
          to label %.noexc393 unwind label %bb.m  ; 2 uses

.noexc393:                                        ; preds = %.noexc.i392
  store ptr %i.ep, ptr %4, align 8, !tbaa !42
  %i.eq = load i64, ptr %i.br, align 8, !tbaa !44 ; 3 uses
  store i64 %i.eq, ptr %i.eo, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.ep, ptr noundef nonnull align 1 dereferenceable(28) @.str.1, i64 28, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !43
  %i.es = load ptr, ptr %4, align 8, !tbaa !42
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.eq
  store i8 0, ptr %i.et, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br) #18
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !79 ; 7 uses
  %i.ew = load ptr, ptr %i.cs, align 8, !tbaa !81
  %.not.i.i395 = icmp eq ptr %i.ev, %i.ew
  br i1 %.not.i.i395, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.noexc393
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 3 uses
  store ptr %i.ex, ptr %i.ev, align 8, !tbaa !39
  %i.ey = load ptr, ptr %4, align 8, !tbaa !42    ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.eo
  br i1 %i.ez, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i396

bb.i:                                             ; preds = %bb.h
  %i.fa = load i64, ptr %i.er, align 8, !tbaa !43 ; 3 uses
  %i.fb = icmp ult i64 %i.fa, 16
  call void @llvm.assume(i1 %i.fb)
  %i.fc = add nuw nsw i64 %i.fa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ex, ptr noundef nonnull align 8 dereferenceable(1) %i.eo, i64 %i.fc, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit399.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i396: ; preds = %bb.h
  store ptr %i.ey, ptr %i.ev, align 8, !tbaa !42
  %i.fd = load i64, ptr %i.eo, align 8, !tbaa !45
  store i64 %i.fd, ptr %i.ex, align 8, !tbaa !45
  %.pre2008.a = load i64, ptr %i.er, align 8, !tbaa !43
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit399.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit399.thread: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i396
  %i.fe = phi i64 [ %.pre2008.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i396 ], [ %i.fa, %bb.i ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !43
  store ptr %i.eo, ptr %4, align 8, !tbaa !42
  store i64 0, ptr %i.er, align 8, !tbaa !43
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  store ptr %i.fg, ptr %i.eu, align 8, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402

bb.j:                                             ; preds = %.noexc393
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.ev, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit399 unwind label %bb.n

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit399: ; preds = %bb.j
  %.pre2009 = load ptr, ptr %4, align 8, !tbaa !42 ; 2 uses
  %i.fh = icmp eq ptr %.pre2009, %i.eo
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit399
  %i.fi = load i64, ptr %i.eo, align 8, !tbaa !45
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %.pre2009, i64 noundef %i.fj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit399, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit399.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.t

bb.k:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i372, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.kt

bb.l:                                             ; preds = %bb.g
  %i.fl = landingpad { ptr, i32 }
          cleanup
  %i.fm = load ptr, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.ea
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403: ; preds = %bb.l
  %i.fo = load i64, ptr %i.ea, align 8, !tbaa !45
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.kt

bb.m:                                             ; preds = %.noexc.i392
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408

bb.n:                                             ; preds = %bb.j
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fs = load ptr, ptr %4, align 8, !tbaa !42    ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.eo
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406: ; preds = %bb.n
  %i.fu = load i64, ptr %i.eo, align 8, !tbaa !45
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406, %bb.m
  %.pn163 = phi { ptr, i32 } [ %i.fq, %bb.m ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406 ], [ %i.fr, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.kt

.noexc.i410:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.fw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  store ptr %i.fw, ptr %5, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq) #18
  store i64 53, ptr %i.bq, align 8, !tbaa !44
  %i.fx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.bq, i64 noundef 0)
          to label %.noexc411 unwind label %bb.r  ; 3 uses

.noexc411:                                        ; preds = %.noexc.i410
  store ptr %i.fx, ptr %5, align 8, !tbaa !42
  %i.fy = load i64, ptr %i.bq, align 8, !tbaa !44 ; 3 uses
  store i64 %i.fy, ptr %i.fw, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(53) %i.fx, ptr noundef nonnull align 1 dereferenceable(53) @.str.2, i64 53, i1 false)
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !43
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fy
  store i8 0, ptr %i.ga, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq) #18
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !79 ; 7 uses
  %i.gd = load ptr, ptr %i.cs, align 8, !tbaa !81
  %.not.i.i413 = icmp eq ptr %i.gc, %i.gd
  br i1 %.not.i.i413, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.noexc411
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 16 ; 3 uses
  store ptr %i.ge, ptr %i.gc, align 8, !tbaa !39
  %i.gf = load ptr, ptr %5, align 8, !tbaa !42    ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.fw
  br i1 %i.gg, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i414

bb.p:                                             ; preds = %bb.o
  %i.gh = load i64, ptr %i.fz, align 8, !tbaa !43 ; 3 uses
  %i.gi = icmp ult i64 %i.gh, 16
  call void @llvm.assume(i1 %i.gi)
  %i.gj = add nuw nsw i64 %i.gh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ge, ptr noundef nonnull align 8 dereferenceable(1) %i.fw, i64 %i.gj, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit417.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i414: ; preds = %bb.o
  store ptr %i.gf, ptr %i.gc, align 8, !tbaa !42
  %i.gk = load i64, ptr %i.fw, align 8, !tbaa !45
  store i64 %i.gk, ptr %i.ge, align 8, !tbaa !45
  %.pre2010 = load i64, ptr %i.fz, align 8, !tbaa !43
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit417.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit417.thread: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i414
  %i.gl = phi i64 [ %.pre2010, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i414 ], [ %i.gh, %bb.p ]
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store i64 %i.gl, ptr %i.gm, align 8, !tbaa !43
  store ptr %i.fw, ptr %5, align 8, !tbaa !42
  store i64 0, ptr %i.fz, align 8, !tbaa !43
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  store ptr %i.gn, ptr %i.gb, align 8, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420

bb.q:                                             ; preds = %.noexc411
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.gc, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit417 unwind label %bb.s

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit417: ; preds = %bb.q
  %.pre2011.a = load ptr, ptr %5, align 8, !tbaa !42 ; 2 uses
  %i.go = icmp eq ptr %.pre2011.a, %i.fw
  br i1 %i.go, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit417
  %i.gp = load i64, ptr %i.fw, align 8, !tbaa !45
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %.pre2011.a, i64 noundef %i.gq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit417, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit417.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.t

bb.r:                                             ; preds = %.noexc.i410
end_hunk_0
begin_hunk_1_@_ZN5Ipopt16AlgorithmBuilder15RegisterOptionsENS_8SmartPtrINS_17RegisteredOptionsEEE:_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i
  store ptr %i.aby, ptr %i.abm, align 8, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762

bb.dy:                                            ; preds = %.noexc753
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.abn, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit759 unwind label %bb.eb

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit759: ; preds = %bb.dy
  %.pre2048.a = load ptr, ptr %28, align 8, !tbaa !42 ; 2 uses
  %i.abz = icmp eq ptr %.pre2048.a, %i.abg
  br i1 %i.abz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit759
  %i.aca = load i64, ptr %i.abg, align 8, !tbaa !45
  %i.acb = add i64 %i.aca, 1
  call void @_ZdlPvm(ptr noundef %.pre2048.a, i64 noundef %i.acb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit759, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit759.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  %.pre2049 = load ptr, ptr %i.bv, align 8, !tbaa !79
  %.pre2051 = load ptr, ptr %i.bu, align 8, !tbaa !81
  br label %._crit_edge.i.i769

bb.dz:                                            ; preds = %bb.dv
  %i.acc = landingpad { ptr, i32 }
          cleanup
  %i.acd = load ptr, ptr %27, align 8, !tbaa !42  ; 2 uses
  %i.ace = icmp eq ptr %i.acd, %i.aau
  br i1 %i.ace, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit765, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i763

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i763: ; preds = %bb.dz
  %i.acf = load i64, ptr %i.aau, align 8, !tbaa !45
  %i.acg = add i64 %i.acf, 1
  call void @_ZdlPvm(ptr noundef %i.acd, i64 noundef %i.acg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit765

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit765: ; preds = %bb.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i763
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  br label %bb.kt

bb.ea:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit750
  %i.ach = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit768

bb.eb:                                            ; preds = %bb.dy
  %i.aci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.acj = load ptr, ptr %28, align 8, !tbaa !42  ; 2 uses
  %i.ack = icmp eq ptr %i.acj, %i.abg
  br i1 %i.ack, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit768, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i766

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i766: ; preds = %bb.eb
  %i.acl = load i64, ptr %i.abg, align 8, !tbaa !45
  %i.acm = add i64 %i.acl, 1
  call void @_ZdlPvm(ptr noundef %i.acj, i64 noundef %i.acm) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit768

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit768: ; preds = %bb.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i766, %bb.ea
  %.pn223 = phi { ptr, i32 } [ %i.ach, %bb.ea ], [ %i.aci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i766 ], [ %i.aci, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  br label %bb.kt

._crit_edge.i.i769:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762, %bb.ds
  %i.acn = phi ptr [ %.pre2051, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762 ], [ %.pre2052.a, %bb.ds ]
  %i.aco = phi ptr [ %.pre2049, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762 ], [ %.pre2050.a, %bb.ds ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #18
  %i.acp = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 10 uses
  store ptr %i.acp, ptr %29, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.acp, ptr noundef nonnull align 1 dereferenceable(6) @.str.26, i64 6, i1 false)
  %i.acq = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store i64 6, ptr %i.acq, align 8, !tbaa !43
  %i.acr = getelementptr inbounds nuw i8, ptr %29, i64 22
  store i8 0, ptr %i.acr, align 2, !tbaa !45
  %.not.i.i773 = icmp eq ptr %i.aco, %i.acn
  br i1 %.not.i.i773, label %bb.ee, label %bb.ec

bb.ec:                                            ; preds = %._crit_edge.i.i769
  %i.acs = getelementptr inbounds nuw i8, ptr %i.aco, i64 16 ; 3 uses
  store ptr %i.acs, ptr %i.aco, align 8, !tbaa !39
  %i.act = load ptr, ptr %29, align 8, !tbaa !42  ; 2 uses
  %i.acu = icmp eq ptr %i.act, %i.acp
  br i1 %i.acu, label %bb.ed, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i774

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.acs, ptr noundef nonnull align 8 dereferenceable(7) %i.acp, i64 7, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit777.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i774: ; preds = %bb.ec
  store ptr %i.act, ptr %i.aco, align 8, !tbaa !42
  %i.acv = load i64, ptr %i.acp, align 8, !tbaa !45
  store i64 %i.acv, ptr %i.acs, align 8, !tbaa !45
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit777.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit777.thread: ; preds = %bb.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i774
  %i.acw = getelementptr inbounds nuw i8, ptr %i.aco, i64 8
  store i64 6, ptr %i.acw, align 8, !tbaa !43
  store ptr %i.acp, ptr %29, align 8, !tbaa !42
  store i64 0, ptr %i.acq, align 8, !tbaa !43
  %i.acx = getelementptr inbounds nuw i8, ptr %i.aco, i64 32
  store ptr %i.acx, ptr %i.bv, align 8, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780

bb.ee:                                            ; preds = %._crit_edge.i.i769
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.aco, ptr noundef nonnull align 8 dereferenceable(32) %29)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit777 unwind label %bb.ei

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit777: ; preds = %bb.ee
  %.pre2053.a = load ptr, ptr %29, align 8, !tbaa !42 ; 2 uses
  %i.acy = icmp eq ptr %.pre2053.a, %i.acp
  br i1 %i.acy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit777
  %i.acz = load i64, ptr %i.acp, align 8, !tbaa !45
  %i.ada = add i64 %i.acz, 1
  call void @_ZdlPvm(ptr noundef %.pre2053.a, i64 noundef %i.ada) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit777, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit777.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #18
  %i.adb = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 10 uses
  store ptr %i.adb, ptr %30, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb) #18
  store i64 37, ptr %i.bb, align 8, !tbaa !44
  %i.adc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i64 noundef 0)
          to label %.noexc783 unwind label %bb.ej ; 3 uses

.noexc783:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780
  store ptr %i.adc, ptr %30, align 8, !tbaa !42
  %i.add = load i64, ptr %i.bb, align 8, !tbaa !44 ; 3 uses
  store i64 %i.add, ptr %i.adb, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.adc, ptr noundef nonnull align 1 dereferenceable(37) @.str.27, i64 37, i1 false)
  %i.ade = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 4 uses
  store i64 %i.add, ptr %i.ade, align 8, !tbaa !43
  %i.adf = getelementptr inbounds nuw i8, ptr %i.adc, i64 %i.add
  store i8 0, ptr %i.adf, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb) #18
  %i.adg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 24 uses
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !79 ; 7 uses
  %i.adi = load ptr, ptr %i.cs, align 8, !tbaa !81
  %.not.i.i785 = icmp eq ptr %i.adh, %i.adi
  br i1 %.not.i.i785, label %bb.eh, label %bb.ef

bb.ef:                                            ; preds = %.noexc783
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adh, i64 16 ; 3 uses
  store ptr %i.adj, ptr %i.adh, align 8, !tbaa !39
  %i.adk = load ptr, ptr %30, align 8, !tbaa !42  ; 2 uses
  %i.adl = icmp eq ptr %i.adk, %i.adb
  br i1 %i.adl, label %bb.eg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i786

bb.eg:                                            ; preds = %bb.ef
  %i.adm = load i64, ptr %i.ade, align 8, !tbaa !43 ; 3 uses
  %i.adn = icmp ult i64 %i.adm, 16
  call void @llvm.assume(i1 %i.adn)
  %i.ado = add nuw nsw i64 %i.adm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.adj, ptr noundef nonnull align 8 dereferenceable(1) %i.adb, i64 %i.ado, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit789.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i786: ; preds = %bb.ef
  store ptr %i.adk, ptr %i.adh, align 8, !tbaa !42
  %i.adp = load i64, ptr %i.adb, align 8, !tbaa !45
  store i64 %i.adp, ptr %i.adj, align 8, !tbaa !45
  %.pre2054.a = load i64, ptr %i.ade, align 8, !tbaa !43
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit789.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit789.thread: ; preds = %bb.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i786
  %i.adq = phi i64 [ %.pre2054.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i786 ], [ %i.adm, %bb.eg ]
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adh, i64 8
  store i64 %i.adq, ptr %i.adr, align 8, !tbaa !43
  store ptr %i.adb, ptr %30, align 8, !tbaa !42
  store i64 0, ptr %i.ade, align 8, !tbaa !43
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adh, i64 32
  store ptr %i.ads, ptr %i.adg, align 8, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit792

bb.eh:                                            ; preds = %.noexc783
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.adh, ptr noundef nonnull align 8 dereferenceable(32) %30)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit789 unwind label %bb.ek

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit789: ; preds = %bb.eh
  %.pre2055.a = load ptr, ptr %30, align 8, !tbaa !42 ; 2 uses
  %i.adt = icmp eq ptr %.pre2055.a, %i.adb
  br i1 %i.adt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit792, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i790

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i790: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit789
  %i.adu = load i64, ptr %i.adb, align 8, !tbaa !45
  %i.adv = add i64 %i.adu, 1
  call void @_ZdlPvm(ptr noundef %.pre2055.a, i64 noundef %i.adv) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit792

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit792: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit789, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit789.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i790
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #18
  %i.adw = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 6 uses
  store ptr %i.adw, ptr %31, align 8, !tbaa !39
  %i.adx = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 3 uses
  store i64 0, ptr %i.adx, align 8, !tbaa !43
  store i8 0, ptr %i.adw, align 8, !tbaa !45
  %128 = and i32 %i.bt, 1
  %.not229 = icmp eq i32 %128, 0
  br i1 %.not229, label %bb.em, label %.invoke

bb.ei:                                            ; preds = %bb.ee
  %i.ady = landingpad { ptr, i32 }
          cleanup
  %i.adz = load ptr, ptr %29, align 8, !tbaa !42  ; 2 uses
  %i.aea = icmp eq ptr %i.adz, %i.acp
  br i1 %i.aea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit796, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i794

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i794: ; preds = %bb.ei
  %i.aeb = load i64, ptr %i.acp, align 8, !tbaa !45
  %i.aec = add i64 %i.aeb, 1
  call void @_ZdlPvm(ptr noundef %i.adz, i64 noundef %i.aec) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit796

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit796: ; preds = %bb.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i794
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  br label %bb.kt

bb.ej:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780
  %i.aed = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit799

bb.ek:                                            ; preds = %bb.eh
  %i.aee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aef = load ptr, ptr %30, align 8, !tbaa !42  ; 2 uses
  %i.aeg = icmp eq ptr %i.aef, %i.adb
  br i1 %i.aeg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit799, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i797

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i797: ; preds = %bb.ek
  %i.aeh = load i64, ptr %i.adb, align 8, !tbaa !45
  %i.aei = add i64 %i.aeh, 1
  call void @_ZdlPvm(ptr noundef %i.aef, i64 noundef %i.aei) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit799

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit799: ; preds = %bb.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i797, %bb.ej
  %.pn227 = phi { ptr, i32 } [ %i.aed, %bb.ej ], [ %i.aee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i797 ], [ %i.aee, %bb.ek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  br label %bb.kt

bb.el:                                            ; preds = %.invoke2837.a, %.invoke
  %i.aej = landingpad { ptr, i32 }
          cleanup
  br label %bb.ks

bb.em:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit792
  %i.aek = and i32 %i.bt, 2
  %.not230 = icmp eq i32 %i.aek, 0
  br i1 %.not230, label %bb.en, label %.invoke

bb.en:                                            ; preds = %bb.em
  %i.ael = and i32 %i.bt, 16
  %.not231 = icmp eq i32 %i.ael, 0
  br i1 %.not231, label %bb.eo, label %.invoke

bb.eo:                                            ; preds = %bb.en
  %i.aem = and i32 %i.bt, 8
  %.not232 = icmp eq i32 %i.aem, 0
  br i1 %.not232, label %bb.ep, label %.invoke

bb.ep:                                            ; preds = %bb.eo
  %i.aen = and i32 %i.bt, 64
  %.not233 = icmp eq i32 %i.aen, 0
  br i1 %.not233, label %bb.eq, label %.invoke

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit792, %bb.ep, %bb.eo, %bb.en, %bb.em
  %i.aeo = phi ptr [ @.str.9, %bb.eo ], [ @.str.12, %bb.en ], [ @.str.3, %bb.em ], [ @.str.15, %bb.ep ], [ @.str, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit792 ]
  %i.aep = phi i64 [ 4, %bb.eo ], [ 4, %bb.en ], [ 4, %bb.em ], [ 7, %bb.ep ], [ 4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit792 ]
  %i.aeq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %31, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %i.aeo, i64 noundef %i.aep)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.el ; 0 uses

bb.eq:                                            ; preds = %bb.ep
  %i.aer = and i32 %i.bt, 512
  %.not234 = icmp eq i32 %i.aer, 0
  br i1 %.not234, label %bb.er, label %.invoke2837.a

bb.er:                                            ; preds = %bb.eq
  %i.aes = and i32 %i.bt, 1024
  %.not235 = icmp eq i32 %i.aes, 0
  br i1 %.not235, label %bb.es, label %.invoke2837.a

bb.es:                                            ; preds = %bb.er
  %i.aet = and i32 %i.bt, 128
  %.not236 = icmp eq i32 %i.aet, 0
  br i1 %.not236, label %bb.et, label %.invoke2837.a

bb.et:                                            ; preds = %bb.es
  %i.aeu = and i32 %i.bt, 256
  %.not237 = icmp eq i32 %i.aeu, 0
  br i1 %.not237, label %bb.eu, label %.invoke2837.a

bb.eu:                                            ; preds = %bb.et
  %i.aev = and i32 %i.bt, 4
  %.not238 = icmp eq i32 %i.aev, 0
  %.str.26..str = select i1 %.not, ptr @.str.26, ptr @.str
  %spec.select = select i1 %.not238, ptr %.str.26..str, ptr @.str.6
  br label %.invoke2837.a

.invoke2837.a:                                    ; preds = %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq
  %i.aew = phi ptr [ %spec.select, %bb.eu ], [ @.str.22, %bb.eq ], [ @.str.20, %bb.et ], [ @.str.18, %bb.es ], [ @.str.24, %bb.er ]
  %i.aex = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull %i.aew)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.el ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %.invoke2837.a, %.invoke
  %i.aey = load ptr, ptr %0, align 8, !tbaa !118  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #18
  %i.aez = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 6 uses
  store ptr %i.aez, ptr %32, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.aez, ptr noundef nonnull align 1 dereferenceable(13) @.str.28, i64 13, i1 false)
  %i.afa = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 13, ptr %i.afa, align 8, !tbaa !43
  %i.afb = getelementptr inbounds nuw i8, ptr %32, i64 29
  store i8 0, ptr %i.afb, align 1, !tbaa !45
  %i.afc = load ptr, ptr %i.aey, align 8, !tbaa !32
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 16
  %i.afe = load ptr, ptr %i.afd, align 8
  invoke void %i.afe(ptr noundef nonnull align 8 dereferenceable(128) %i.aey, ptr noundef nonnull align 8 dereferenceable(32) %32, i32 noundef 0)
          to label %bb.ev unwind label %bb.fj

bb.ev:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.aff = load ptr, ptr %32, align 8, !tbaa !42  ; 2 uses
  %i.afg = icmp eq ptr %i.aff, %i.aez
  br i1 %i.afg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit814, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i812

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i812: ; preds = %bb.ev
  %i.afh = load i64, ptr %i.aez, align 8, !tbaa !45
  %i.afi = add i64 %i.afh, 1
  call void @_ZdlPvm(ptr noundef %i.aff, i64 noundef %i.afi) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit814

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit814: ; preds = %bb.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i812
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  %i.afj = load ptr, ptr %0, align 8, !tbaa !118  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #18
  %i.afk = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 6 uses
  store ptr %i.afk, ptr %33, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.afk, ptr noundef nonnull align 1 dereferenceable(13) @.str.29, i64 13, i1 false)
  %i.afl = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 13, ptr %i.afl, align 8, !tbaa !43
  %i.afm = getelementptr inbounds nuw i8, ptr %33, i64 29
  store i8 0, ptr %i.afm, align 1, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #18
  %i.afn = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 6 uses
  store ptr %i.afn, ptr %34, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba) #18
  store i64 41, ptr %i.ba, align 8, !tbaa !44
  %i.afo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i64 noundef 0)
          to label %.noexc821 unwind label %bb.fk ; 3 uses

.noexc821:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit814
  store ptr %i.afo, ptr %34, align 8, !tbaa !42
  %i.afp = load i64, ptr %i.ba, align 8, !tbaa !44 ; 3 uses
  store i64 %i.afp, ptr %i.afn, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.afo, ptr noundef nonnull align 1 dereferenceable(41) @.str.30, i64 41, i1 false)
  %i.afq = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 %i.afp, ptr %i.afq, align 8, !tbaa !43
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afo, i64 %i.afp
  store i8 0, ptr %i.afr, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #18
  %i.afs = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 6 uses
  store ptr %i.afs, ptr %35, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az) #18
  store i64 140, ptr %i.az, align 8, !tbaa !44
  %i.aft = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(8) %i.az, i64 noundef 0)
          to label %.noexc825 unwind label %bb.fl ; 3 uses

.noexc825:                                        ; preds = %.noexc821
  store ptr %i.aft, ptr %35, align 8, !tbaa !42
  %i.afu = load i64, ptr %i.az, align 8, !tbaa !44 ; 3 uses
  store i64 %i.afu, ptr %i.afs, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(140) %i.aft, ptr noundef nonnull align 1 dereferenceable(140) @.str.31, i64 140, i1 false)
  %i.afv = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 %i.afu, ptr %i.afv, align 8, !tbaa !43
  %i.afw = getelementptr inbounds nuw i8, ptr %i.aft, i64 %i.afu
  store i8 0, ptr %i.afw, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az) #18
  %i.afx = load ptr, ptr %i.afj, align 8, !tbaa !32
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 104
  %i.afz = load ptr, ptr %i.afy, align 8
  invoke void %i.afz(ptr noundef nonnull align 8 dereferenceable(128) %i.afj, ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %35, i1 noundef zeroext false)
          to label %bb.ew unwind label %bb.fm

bb.ew:                                            ; preds = %.noexc825
  %i.aga = load ptr, ptr %35, align 8, !tbaa !42  ; 2 uses
  %i.agb = icmp eq ptr %i.aga, %i.afs
  br i1 %i.agb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit829, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i827

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i827: ; preds = %bb.ew
  %i.agc = load i64, ptr %i.afs, align 8, !tbaa !45
  %i.agd = add i64 %i.agc, 1
  call void @_ZdlPvm(ptr noundef %i.aga, i64 noundef %i.agd) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit829

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit829: ; preds = %bb.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i827
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  %i.age = load ptr, ptr %34, align 8, !tbaa !42  ; 2 uses
  %i.agf = icmp eq ptr %i.age, %i.afn
  br i1 %i.agf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit832, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i830

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i830: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit829
  %i.agg = load i64, ptr %i.afn, align 8, !tbaa !45
  %i.agh = add i64 %i.agg, 1
  call void @_ZdlPvm(ptr noundef %i.age, i64 noundef %i.agh) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit832

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit832: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit829, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i830
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  %i.agi = load ptr, ptr %33, align 8, !tbaa !42  ; 2 uses
  %i.agj = icmp eq ptr %i.agi, %i.afk
  br i1 %i.agj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i833

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i833: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit832
  %i.agk = load i64, ptr %i.afk, align 8, !tbaa !45
  %i.agl = add i64 %i.agk, 1
  call void @_ZdlPvm(ptr noundef %i.agi, i64 noundef %i.agl) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit832, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i833
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  %i.agm = load ptr, ptr %1, align 8, !tbaa !78   ; 3 uses
  %i.agn = load ptr, ptr %i.bv, align 8, !tbaa !79 ; 2 uses
  %.not.i.i836 = icmp eq ptr %i.agn, %i.agm
  br i1 %.not.i.i836, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i837

.lr.ph.i.i.i.i837:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.agt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.agm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835 ] ; 3 uses
  %i.ago = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !42 ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.agq = icmp eq ptr %i.ago, %i.agp
  br i1 %i.agq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i837
  %i.agr = load i64, ptr %i.agp, align 8, !tbaa !45
  %i.ags = add i64 %i.agr, 1
  call void @_ZdlPvm(ptr noundef %i.ago, i64 noundef %i.ags) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i837, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.agt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i838 = icmp eq ptr %i.agt, %i.agn
  br i1 %.not.i.i.i.i838, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i837, !llvm.loop !12

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.agm, ptr %i.bv, align 8, !tbaa !79
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.agu = load ptr, ptr %2, align 8, !tbaa !78   ; 3 uses
  %i.agv = load ptr, ptr %i.adg, align 8, !tbaa !79 ; 2 uses
  %.not.i.i839 = icmp eq ptr %i.agv, %i.agu
  br i1 %.not.i.i839, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit847, label %.lr.ph.i.i.i.i840

.lr.ph.i.i.i.i840:                                ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i843
  %.05.i.i.i.i841 = phi ptr [ %i.ahb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i843 ], [ %i.agu, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit ] ; 3 uses
  %i.agw = load ptr, ptr %.05.i.i.i.i841, align 8, !tbaa !42 ; 2 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i841, i64 16 ; 2 uses
  %i.agy = icmp eq ptr %i.agw, %i.agx
  br i1 %i.agy, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i843, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i842

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i842: ; preds = %.lr.ph.i.i.i.i840
  %i.agz = load i64, ptr %i.agx, align 8, !tbaa !45
  %i.aha = add i64 %i.agz, 1
  call void @_ZdlPvm(ptr noundef %i.agw, i64 noundef %i.aha) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i843

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i843: ; preds = %.lr.ph.i.i.i.i840, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i842
  %i.ahb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i841, i64 32 ; 2 uses
  %.not.i.i.i.i844 = icmp eq ptr %i.ahb, %i.agv
  br i1 %.not.i.i.i.i844, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i845, label %.lr.ph.i.i.i.i840, !llvm.loop !12

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i845: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i843
  store ptr %i.agu, ptr %i.adg, align 8, !tbaa !79
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit847

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit847: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i845
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #18
  %i.ahc = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 6 uses
  store ptr %i.ahc, ptr %36, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay) #18
  store i64 194, ptr %i.ay, align 8, !tbaa !44
  %i.ahd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i64 noundef 0)
          to label %.noexc850 unwind label %bb.fn ; 3 uses

.noexc850:                                        ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit847
  store ptr %i.ahd, ptr %36, align 8, !tbaa !42
  %i.ahe = load i64, ptr %i.ay, align 8, !tbaa !44 ; 3 uses
  store i64 %i.ahe, ptr %i.ahc, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(194) %i.ahd, ptr noundef nonnull align 1 dereferenceable(194) @.str.32, i64 194, i1 false)
  %i.ahf = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  store i64 %i.ahe, ptr %i.ahf, align 8, !tbaa !43
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahd, i64 %i.ahe
  store i8 0, ptr %i.ahg, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #18
end_hunk_1
