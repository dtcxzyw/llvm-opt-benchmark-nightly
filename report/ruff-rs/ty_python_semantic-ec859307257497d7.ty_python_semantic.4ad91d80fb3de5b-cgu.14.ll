Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.14?download=true
inline.NumInlined: 8769
inline.NumDeleted: 4183
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_20BoundTypeVarInstance11to_instance:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !13650
  br label %_RNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_15TypeVarInstance11to_instance.exit.thread

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13652)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13653
  store i64 0, ptr %i.h, align 8, !noalias !13653
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.aj, align 8, !noalias !13653
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store i64 0, ptr %i.ak, align 8, !noalias !13653
  %i.al = invoke noundef nonnull align 8 ptr %i.y(ptr noundef nonnull %3)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i, !noalias !13654, !inline_history !63 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.d
  %i.am = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar18TypeVarConstraintsEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars8_1__NtB9_18TypeVarConstraints10ingredient5CACHE, ptr noundef nonnull align 8 %i.al)
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !noalias !13654

.noexc6.i.i:                                      ; preds = %.noexc.i.i
  %i.an = invoke noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar18TypeVarConstraintsE6fieldsB12_(ptr noundef nonnull align 8 %i.am, ptr noundef nonnull align 8 %i.al, i32 noundef range(i32 1, 0) %.sroa.412.0.copyload.i, i32 noundef %.sroa.513.0.copyload.i)
          to label %_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars8_1__NtB8_18TypeVarConstraints8elementsDNtNtBc_2db2DbEL_EBc_.exit.i.i unwind label %.loopexit.split-lp.i.i, !noalias !13654 ; 2 uses

_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars8_1__NtB8_18TypeVarConstraints8elementsDNtNtBc_2db2DbEL_EBc_.exit.i.i: ; preds = %.noexc6.i.i
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !13654, !nonnull !22, !noundef !22 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !13654, !noundef !22 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.aq, 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx.i.i
  %i.as = icmp eq i64 %i.aq, 0
  br i1 %i.as, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars8_1__NtB8_18TypeVarConstraints8elementsDNtNtBc_2db2DbEL_EBc_.exit.i.i
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  br label %bb.e

bb.e:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.0.027.i.i = phi i1 [ true, %.lr.ph.i.i ], [ %i.bg, %bb.l ]
  %.sroa.02.026.i.i = phi ptr [ %i.ao, %.lr.ph.i.i ], [ %i.at, %bb.l ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.02.026.i.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13653
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.02.026.i.i, i64 16, i1 false), !noalias !13655
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type11to_instance(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.g, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.f, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, ptr noundef nonnull align 4 %5)
          to label %bb.f unwind label %.loopexit.i.i, !noalias !13655

._crit_edge.loopexit.i.i:                         ; preds = %bb.l
  %i.au = xor i1 %i.bg, true
  %i.av = zext i1 %i.au to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars8_1__NtB8_18TypeVarConstraints8elementsDNtNtBc_2db2DbEL_EBc_.exit.i.i
  %.sroa.0.0.lcssa.i.i = phi i32 [ 0, %_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars8_1__NtB8_18TypeVarConstraints8elementsDNtNtBc_2db2DbEL_EBc_.exit.i.i ], [ %i.av, %._crit_edge.loopexit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13653
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !13653
  %i.aw = call { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE16into_boxed_sliceBH_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !13655 ; 2 uses
  %i.ax = extractvalue { ptr, i64 } %i.aw, 0      ; 2 uses
  %i.ay = extractvalue { ptr, i64 } %i.aw, 1      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13653
  call void @llvm.experimental.noalias.scope.decl(metadata !13656)
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !invariant.load !22, !alias.scope !13657, !noalias !13658, !nonnull !22
  %i.bb = invoke { ptr, ptr } %i.ba(ptr noundef nonnull %3)
          to label %bb.m unwind label %bb.n, !noalias !13659 ; 2 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13653
  %i.bc = load i32, ptr %i.g, align 4, !range !37, !noalias !13653, !noundef !22 ; 2 uses
  %.not.i.i = icmp eq i32 %i.bc, 2
  br i1 %.not.i.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13653
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.aa unwind label %bb.h, !noalias !13655

bb.h:                                             ; preds = %bb.g
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume.i unwind label %bb.i, !noalias !13655

bb.i:                                             ; preds = %bb.h
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52, !noalias !13655
  unreachable

common.resume.i:                                  ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ag, %bb.af, %bb.ae, %bb.p, %bb.o, %bb.n, %bb.h
  %common.resume.op.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i, %bb.n ], [ %i.bd, %bb.h ], [ %lpad.thr_comm.i.i.i, %bb.o ], [ %lpad.phi.i.i, %bb.p ], [ %lpad.thr_comm.i, %bb.aj ], [ %lpad.thr_comm.i.i, %bb.ag ], [ %lpad.thr_comm.i.i, %bb.ae ], [ %lpad.thr_comm.i.i, %bb.af ], [ %lpad.thr_comm.i, %bb.ak ], [ %lpad.thr_comm.i, %bb.ai ]
  resume { ptr, i32 } %common.resume.op.i

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.416.0..sroa_idx.i.i, i64 16, i1 false), !noalias !13653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13653
  %i.bf = icmp eq i32 %i.bc, 0
  %i.bg = and i1 %.sroa.0.027.i.i, %i.bf          ; 2 uses
  %i.bh = load i64, ptr %i.ak, align 8, !alias.scope !13660, !noalias !13661, !noundef !22 ; 3 uses
  %i.bi = load i64, ptr %i.h, align 8, !range !50, !alias.scope !13660, !noalias !13661, !noundef !22
  %i.bj = icmp eq i64 %i.bh, %i.bi
  br i1 %i.bj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.l unwind label %.loopexit.i.i, !noalias !13655

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bk = load ptr, ptr %i.aj, align 8, !alias.scope !13660, !noalias !13661, !nonnull !22, !noundef !22
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bl, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.e, i64 16, i1 false), !noalias !13655
  %i.bm = add i64 %i.bh, 1
  store i64 %i.bm, ptr %i.ak, align 8, !alias.scope !13660, !noalias !13661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bn = icmp eq ptr %i.at, %i.ar
  br i1 %i.bn, label %._crit_edge.loopexit.i.i, label %bb.e

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.bo = extractvalue { ptr, ptr } %i.bb, 0      ; 2 uses
  %i.bp = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar18TypeVarConstraintsEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars8_1__NtB9_18TypeVarConstraints10ingredient5CACHE, ptr noundef nonnull align 8 %i.bo)
          to label %bb.z unwind label %bb.n, !noalias !13659

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = icmp eq i64 %i.ay, 0
  br i1 %i.bq, label %common.resume.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = shl nuw nsw i64 %i.ay, 4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.ax, i64 noundef range(i64 1, -9223372036854775808) %i.br, i64 noundef 4) #49, !noalias !13662
  br label %common.resume.i

.loopexit.i.i:                                    ; preds = %bb.k, %bb.e
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp.i.i:                           ; preds = %.noexc6.i.i, %.noexc.i.i, %bb.d
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.h) #51
          to label %common.resume.i unwind label %bb.q, !noalias !13655

bb.q:                                             ; preds = %bb.p
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52, !noalias !13655
  unreachable

bb.r:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !13650
  store i32 %i.ag, ptr %i.o, align 4, !noalias !13650
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %.sroa.412.0.copyload.i, ptr %.sroa.3.0..sroa_idx2.i, align 4, !noalias !13650
  %.sroa.4.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store <2 x i32> %i.ah, ptr %.sroa.4.0..sroa_idx4.i, align 4, !noalias !13650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !13650
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type11to_instance(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.n, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.o, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, ptr noundef nonnull align 4 %5), !noalias !13651
  %i.bt = load i32, ptr %i.n, align 4, !range !37, !noalias !13650, !noundef !22
  %.not18.i = icmp eq i32 %i.bt, 2
  br i1 %.not18.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.m, ptr noundef nonnull align 4 dereferenceable(20) %i.n, i64 20, i1 false), !noalias !13650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !13650
  call void @_RINvMsj_NtCsoTR8nlGN3X_18ty_python_semantic5typesINtB6_18InstanceProjectionNtB6_4TypeE3mapNtNtB6_7typevar25TypeVarBoundOrConstraintsNcNtB1q_10UpperBound0EB8_(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.q, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.m), !noalias !13651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !13650
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !13650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !13650
  br label %_RNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_15TypeVarInstance11to_instance.exit.thread

bb.u:                                             ; preds = %bb.z, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !13650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !13650
  %i.bu = call noundef nonnull align 8 ptr %i.y(ptr noundef nonnull %3), !noalias !13663, !inline_history !13599 ; 2 uses
  %i.bv = call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarInstanceEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar1__NtB9_15TypeVarInstance10ingredient5CACHE, ptr noundef nonnull align 8 %i.bu), !noalias !13663
  %i.bw = call noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarInstanceE6fieldsB12_(ptr noundef nonnull align 8 %i.bv, ptr noundef nonnull align 8 %i.bu, i32 noundef range(i32 1, 0) %i.ac, i32 noundef %i.ae), !noalias !13663 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load i32, ptr %i.bx, align 4, !range !24, !noalias !13663, !noundef !22
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 20
  %i.ca = load i32, ptr %i.bz, align 4, !noalias !13663, !noundef !22
  %i.cb = call noundef nonnull align 8 ptr %i.y(ptr noundef nonnull %3), !noalias !13664, !inline_history !13602 ; 2 uses
  %i.cc = call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarIdentityEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars0_1__NtB9_15TypeVarIdentity10ingredient5CACHE, ptr noundef nonnull align 8 %i.cb), !noalias !13664
  %i.cd = call noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarIdentityE6fieldsB12_(ptr noundef nonnull align 8 %i.cc, ptr noundef nonnull align 8 %i.cb, i32 noundef range(i32 1, 0) %i.by, i32 noundef %i.ca), !noalias !13664 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 15
  %i.cf = load i8, ptr %i.ce, align 1, !range !29, !alias.scope !13665, !noalias !13651, !noundef !22 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !13665, !noalias !13651, !noundef !22
  %i.ci = and i64 %i.ch, 72057594037927935
  %i.cj = icmp ult i8 %i.cf, -48
  %i.ck = zext i8 %i.cf to i64
  %i.cl = add nsw i64 %i.ck, -192
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.cl, i64 16)
  %.sroa.0.0.i.i = select i1 %i.cj, i64 %spec.store.select.i.i, i64 %i.ci ; 8 uses
  %i.cm = icmp ugt i8 %i.cf, -49
  %i.cn = load ptr, ptr %i.cd, align 8, !alias.scope !13665, !noalias !13651
  %.sroa.01.0.i.i = select i1 %i.cm, ptr %i.cn, ptr %i.cd ; 4 uses
  %i.co = add nuw nsw i64 %.sroa.0.0.i.i, 9       ; 3 uses
  %i.cp = icmp samesign ult i64 %.sroa.0.0.i.i, 8
  br i1 %i.cp, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cq = icmp samesign ugt i64 %.sroa.0.0.i.i, 72057594037927926
  br i1 %i.cq, label %_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesReECsoTR8nlGN3X_18ty_python_semantic.exit.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cr = call noundef ptr @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer18allocate_exact_ptr(i64 noundef range(i64 17, 0) %i.co), !noalias !13666 ; 4 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesReECsoTR8nlGN3X_18ty_python_semantic.exit.thread.i, label %_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesReECsoTR8nlGN3X_18ty_python_semantic.exit.thread79.i

_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesReECsoTR8nlGN3X_18ty_python_semantic.exit.thread79.i: ; preds = %bb.w
  %6 = add nuw nsw i64 %.sroa.0.0.i.i, -3458764513820540919 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13667
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %6, ptr %i.ct, align 8, !noalias !13667
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cr, ptr nonnull readonly align 1 %.sroa.01.0.i.i, i64 %.sroa.0.0.i.i, i1 false), !noalias !13668
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sroa.0.0.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.cu, ptr noundef nonnull readonly align 1 dereferenceable(9) @238, i64 9, i1 false), !noalias !13668
  store ptr null, ptr %i.c, align 8, !noalias !13667
  call void @_RNvXs_NtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB4_16ExactBufferGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c), !noalias !13666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13667
  br label %bb.ab

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13669
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.b, i8 0, i64 15, i1 false), !noalias !13669
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 15 ; 2 uses
  store i8 -64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 1, !noalias !13669
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr nonnull readonly align 1 %.sroa.01.0.i.i, i64 %.sroa.0.0.i.i, i1 false), !alias.scope !13670, !noalias !13671
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.0.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.cv, ptr noundef nonnull readonly align 1 dereferenceable(9) @238, i64 9, i1 false), !alias.scope !13670, !noalias !13672
  %.not.i21.i = icmp eq i64 %i.co, 16
  br i1 %.not.i21.i, label %_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesReECsoTR8nlGN3X_18ty_python_semantic.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = trunc nuw nsw i64 %i.co to i8
  %i.cx = or disjoint i8 %i.cw, -64
  store i8 %i.cx, ptr %.sroa.4.0..sroa_idx.i.i.i, align 1, !noalias !13669
  br label %_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesReECsoTR8nlGN3X_18ty_python_semantic.exit.i

_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesReECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.y, %bb.x
  %.sroa.032.0.copyload33.i = load ptr, ptr %i.b, align 8, !noalias !13673
  %.sroa.634.0..sroa_idx35.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.634.0.copyload36.i = load i64, ptr %.sroa.634.0..sroa_idx35.i, align 8, !noalias !13673 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13669
  %i.cy = icmp ugt i64 %.sroa.634.0.copyload36.i, -72057594037927937
  br i1 %i.cy, label %_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesReECsoTR8nlGN3X_18ty_python_semantic.exit.thread.i, label %bb.ab, !prof !101

bb.z:                                             ; preds = %bb.m
  %i.cz = extractvalue { ptr, ptr } %i.bb, 1
  %i.da = call { i32, i32 } @_RINvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB6_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar18TypeVarConstraintsE9intern_idINtNvBZ_s8_1__9StructKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB11_4TypeEENCINvMs9_B2m_BX_3newDNtNtB13_2db2DbEL_B2H_E0EB13_(ptr noundef nonnull align 8 %i.bp, ptr noundef nonnull align 8 %i.bo, ptr noundef nonnull align 8 %i.cz, ptr noalias noundef nonnull align 4 %i.ax, i64 noundef %i.ay), !noalias !13655 ; 2 uses
  %i.db = extractvalue { i32, i32 } %i.da, 0
  %i.dc = extractvalue { i32, i32 } %i.da, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13653
  store i32 %.sroa.0.0.lcssa.i.i, ptr %i.l, align 4, !noalias !13650
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %i.db, ptr %.sroa.531.0..sroa_idx.i, align 4, !noalias !13650
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %i.dc, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !13650
  call void @_RINvMsj_NtCsoTR8nlGN3X_18ty_python_semantic5typesINtB6_18InstanceProjectionNtNtB6_7typevar18TypeVarConstraintsE3mapNtB1d_25TypeVarBoundOrConstraintsNcNtB1P_11Constraints0EB8_(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.q, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.l), !noalias !13651
  br label %bb.u

bb.aa:                                            ; preds = %bb.g
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h), !noalias !13655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13653
  br label %_RNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_15TypeVarInstance11to_instance.exit.thread

_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesReECsoTR8nlGN3X_18ty_python_semantic.exit.thread.i: ; preds = %_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesReECsoTR8nlGN3X_18ty_python_semantic.exit.i, %bb.w, %bb.v
  call void @_RINvNvXsQ_Csj8vhLppEnlJ_8char_strINtNtCs4NRVxsYgnAr_4core6result6ResultppENtB8_13UnwrapWithMsg15unwrap_with_msg17do_panic_with_msgNtNtNtB8_6errors13reserve_error12ReserveErrorEB8_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #50, !noalias !13651
  unreachable

bb.ab:                                            ; preds = %_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesReECsoTR8nlGN3X_18ty_python_semantic.exit.i, %_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesReECsoTR8nlGN3X_18ty_python_semantic.exit.thread79.i
  %.sroa.634.183.i = phi i64 [ %6, %_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesReECsoTR8nlGN3X_18ty_python_semantic.exit.thread79.i ], [ %.sroa.634.0.copyload36.i, %_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesReECsoTR8nlGN3X_18ty_python_semantic.exit.i ]
  %.sroa.032.182.i = phi ptr [ %i.cr, %_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesReECsoTR8nlGN3X_18ty_python_semantic.exit.thread79.i ], [ %.sroa.032.0.copyload33.i, %_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesReECsoTR8nlGN3X_18ty_python_semantic.exit.i ]
  store ptr %.sroa.032.182.i, ptr %i.j, align 8, !noalias !13650
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sroa.634.183.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !13650
  %i.dd = invoke noundef nonnull align 8 ptr %i.y(ptr noundef nonnull %3)
          to label %.noexc.i unwind label %bb.ai, !noalias !13651, !inline_history !13674 ; 2 uses

.noexc.i:                                         ; preds = %bb.ab
  %i.de = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarInstanceEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar1__NtB9_15TypeVarInstance10ingredient5CACHE, ptr noundef nonnull align 8 %i.dd)
          to label %.noexc22.i unwind label %bb.ai, !noalias !13651

.noexc22.i:                                       ; preds = %.noexc.i
  %i.df = invoke noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarInstanceE6fieldsB12_(ptr noundef nonnull align 8 %i.de, ptr noundef nonnull align 8 %i.dd, i32 noundef range(i32 1, 0) %i.ac, i32 noundef %i.ae)
          to label %.noexc23.i unwind label %bb.ai, !noalias !13651 ; 2 uses

.noexc23.i:                                       ; preds = %.noexc22.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load i32, ptr %i.dg, align 4, !range !24, !noalias !13675, !noundef !22
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 20
  %i.dj = load i32, ptr %i.di, align 4, !noalias !13675, !noundef !22
  %i.dk = invoke noundef nonnull align 8 ptr %i.y(ptr noundef nonnull %3)
          to label %.noexc24.i unwind label %bb.ai, !noalias !13651, !inline_history !13674 ; 2 uses

.noexc24.i:                                       ; preds = %.noexc23.i
  %i.dl = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarIdentityEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars0_1__NtB9_15TypeVarIdentity10ingredient5CACHE, ptr noundef nonnull align 8 %i.dk)
          to label %.noexc25.i unwind label %bb.ai, !noalias !13651

.noexc25.i:                                       ; preds = %.noexc24.i
  %i.dm = invoke noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarIdentityE6fieldsB12_(ptr noundef nonnull align 8 %i.dl, ptr noundef nonnull align 8 %i.dk, i32 noundef range(i32 1, 0) %i.dh, i32 noundef %i.dj)
          to label %bb.ac unwind label %bb.ai, !noalias !13651

bb.ac:                                            ; preds = %.noexc25.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load i8, ptr %i.dn, align 8, !range !49, !noalias !13676, !noundef !22
  call void @llvm.experimental.noalias.scope.decl(metadata !13677)
  call void @llvm.experimental.noalias.scope.decl(metadata !13678)
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8, !invariant.load !22, !alias.scope !13679, !noalias !13680, !nonnull !22
  %i.dr = invoke { ptr, ptr } %i.dq(ptr noundef nonnull %3)
          to label %bb.ad unwind label %bb.ae, !noalias !13681 ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %i.ds = extractvalue { ptr, ptr } %i.dr, 0      ; 2 uses
  %i.dt = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarIdentityEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars0_1__NtB9_15TypeVarIdentity10ingredient5CACHE, ptr noundef nonnull align 8 %i.ds)
          to label %_RNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_15TypeVarInstance11to_instance.exit unwind label %bb.ae, !noalias !13681

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13682)
  call void @llvm.experimental.noalias.scope.decl(metadata !13683)
  call void @llvm.experimental.noalias.scope.decl(metadata !13684)
  call void @llvm.experimental.noalias.scope.decl(metadata !13685)
  %i.du = getelementptr inbounds nuw i8, ptr %i.j, i64 15
  %i.dv = load i8, ptr %i.du, align 1, !range !29, !alias.scope !13686, !noalias !13687, !noundef !22
  %i.dw = and i8 %i.dv, -2
  %switch.i.i.i.i.i.i = icmp eq i8 %i.dw, -48
  br i1 %switch.i.i.i.i.i.i, label %bb.af, label %common.resume.i

bb.af:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !13688)
  %.pn.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !13689, !noalias !13687, !nonnull !22, !noundef !22
  %.sroa.0.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i, i64 -8
  %i.dx = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 1 release, align 8, !noalias !13690
  %i.dy = icmp eq i64 %i.dx, 1
  br i1 %i.dy, label %bb.ag, label %common.resume.i, !prof !23

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %common.resume.i unwind label %bb.ah, !noalias !13691

bb.ah:                                            ; preds = %bb.ag
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52, !noalias !13691
  unreachable

bb.ai:                                            ; preds = %.noexc25.i, %.noexc24.i, %.noexc23.i, %.noexc22.i, %.noexc.i, %bb.ab
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13692)
  call void @llvm.experimental.noalias.scope.decl(metadata !13693)
  call void @llvm.experimental.noalias.scope.decl(metadata !13694)
  call void @llvm.experimental.noalias.scope.decl(metadata !13695)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.j, i64 15
  %i.eb = load i8, ptr %i.ea, align 1, !range !29, !alias.scope !13696, !noalias !13650, !noundef !22
  %i.ec = and i8 %i.eb, -2
  %switch.i.i.i.i.i = icmp eq i8 %i.ec, -48
  br i1 %switch.i.i.i.i.i, label %bb.aj, label %common.resume.i

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !13697)
  %.pn.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !13698, !noalias !13650, !nonnull !22, !noundef !22
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i, i64 -8
  %i.ed = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i, i64 1 release, align 8, !noalias !13699
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.ak, label %common.resume.i, !prof !23

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %common.resume.i unwind label %bb.al, !noalias !13651

bb.al:                                            ; preds = %bb.ak
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52, !noalias !13651
  unreachable

_RNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_15TypeVarInstance11to_instance.exit.thread: ; preds = %bb.c, %bb.t, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.an

_RNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_15TypeVarInstance11to_instance.exit: ; preds = %bb.ad
  %i.eg = extractvalue { ptr, ptr } %i.dr, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13700
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !noalias !13687
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 0, ptr %i.eh, align 8, !noalias !13700
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %i.do, ptr %i.ei, align 8, !noalias !13700
  %i.ej = call { i32, i32 } @_RINvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB6_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarIdentityE9intern_idINtNvBZ_s0_1__9StructKeyNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENtBZ_11TypeVarKindENCINvMs9_B2j_BX_3newDNtNtB13_2db2DbEL_B2E_B3n_B4W_E0EB13_(ptr noundef nonnull align 8 %i.dt, ptr noundef nonnull align 8 %i.ds, ptr noundef nonnull align 8 %i.eg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !13651 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13700
  %i.ek = extractvalue { i32, i32 } %i.ej, 0
  %i.el = extractvalue { i32, i32 } %i.ej, 1
  store i32 %i.ek, ptr %i.k, align 4, !noalias !13650
  %i.em = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %i.el, ptr %i.em, align 4, !noalias !13650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !13650
  store ptr %3, ptr %i.i, align 8, !noalias !13650
  %i.en = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %4, ptr %i.en, align 8, !noalias !13650
  %i.eo = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.k, ptr %i.eo, align 8, !noalias !13650
end_hunk_0
