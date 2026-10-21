Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 122
loop-unroll.NumUnrolled: 156
begin_hunk_0_@_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4dict20normalize_dict_nulls:bb.a
  %i.iv = alloca [24 x i8], align 8               ; 5 uses
  %i.iw = alloca [8 x i8], align 8                ; 4 uses
  %i.ix = alloca [24 x i8], align 8               ; 9 uses
  %i.iy = alloca [16 x i8], align 16              ; 12 uses
  %i.iz = alloca [24 x i8], align 8               ; 4 uses
  %i.ja = alloca [24 x i8], align 8               ; 6 uses
  %i.jb = alloca [24 x i8], align 8               ; 5 uses
  %i.jc = alloca [32 x i8], align 8               ; 6 uses
  %i.jd = alloca [24 x i8], align 8               ; 4 uses
  %i.je = alloca [8 x i8], align 8                ; 4 uses
  %i.jf = alloca [24 x i8], align 8               ; 4 uses
  %i.jg = alloca [24 x i8], align 8               ; 8 uses
  %i.jh = alloca [8 x i8], align 8                ; 4 uses
  %i.ji = alloca [136 x i8], align 8              ; 11 uses
  %i.jj = alloca [24 x i8], align 8               ; 7 uses
  %i.jk = alloca [48 x i8], align 8               ; 6 uses
  %i.jl = alloca [24 x i8], align 8               ; 6 uses
  %i.jm = alloca [56 x i8], align 8               ; 11 uses
  %i.jn = alloca [24 x i8], align 8               ; 6 uses
  %i.jo = alloca [24 x i8], align 8               ; 4 uses
  %i.jp = alloca [184 x i8], align 8              ; 17 uses
  %i.jq = alloca [184 x i8], align 8              ; 4 uses
  %i.jr = alloca [184 x i8], align 8              ; 4 uses
  %i.js = alloca [48 x i8], align 8               ; 6 uses
  %i.jt = alloca [48 x i8], align 8               ; 9 uses
  %i.ju = alloca [16 x i8], align 16              ; 4 uses
  %i.jv = alloca [32 x i8], align 8               ; 5 uses
  %i.jw = alloca [160 x i8], align 8              ; 11 uses
  %i.jx = alloca [56 x i8], align 8               ; 4 uses
  %i.jy = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.6342.i = alloca [24 x i8], align 8       ; 6 uses
  %i.jz = alloca [96 x i8], align 8               ; 15 uses
  %i.ka = alloca [32 x i8], align 8               ; 8 uses
  %i.kb = alloca [24 x i8], align 8               ; 4 uses
  %i.kc = alloca [96 x i8], align 8               ; 8 uses
  %i.kd = alloca [96 x i8], align 8               ; 9 uses
  %i.ke = alloca [72 x i8], align 8               ; 13 uses
  %i.kf = alloca [104 x i8], align 8              ; 25 uses
  %i.kg = alloca [32 x i8], align 8               ; 7 uses
  %i.kh = alloca [24 x i8], align 8               ; 11 uses
  %i.ki = alloca [16 x i8], align 16              ; 11 uses
  %i.kj = alloca [16 x i8], align 8               ; 5 uses
  %i.kk = alloca [8 x i8], align 8                ; 4 uses
  %i.kl = alloca [24 x i8], align 8               ; 2 uses
  %i.km = alloca [16 x i8], align 8               ; 5 uses
  %i.kn = alloca [24 x i8], align 8               ; 4 uses
  %i.ko = alloca [8 x i8], align 8                ; 5 uses
  %i.kp = alloca [16 x i8], align 8               ; 16 uses
  store ptr %1, ptr %i.kp, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8 ; 9 uses
  store ptr %2, ptr %i.kq, align 8
  %i.kr = invoke noundef nonnull align 8 ptr @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9data_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.kp)
          to label %bb.b unwind label %.body      ; 2 uses

.body:                                            ; preds = %bb.a, %bb.d, %bb.e, %bb.aui
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread1025

bb.b:                                             ; preds = %bb.a
  %i.ks = load i8, ptr %i.kr, align 8, !range !146, !noundef !75
  %i.kt = icmp eq i8 %i.ks, 34
  br i1 %i.kt, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ko)
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 8 ; 2 uses
  store ptr %i.ku, ptr %i.ko, align 8
  %i.kv = load ptr, ptr %i.ku, align 8, !nonnull !75, !noundef !75
  %i.kw = load i8, ptr %i.kv, align 8, !range !146, !noundef !75
  switch i8 %i.kw, label %bb.e [
    i8 2, label %bb.f
    i8 3, label %bb.ge
    i8 4, label %bb.na
    i8 5, label %bb.tw
    i8 6, label %bb.aas
    i8 7, label %bb.aem
    i8 8, label %bb.akx
    i8 9, label %bb.apo
  ]

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kk)
  %i.kx = invoke noundef nonnull align 8 ptr @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9data_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.kp)
          to label %bb.aui unwind label %.body

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.km)
  store ptr %i.ko, ptr %i.km, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeENtB6_7Display3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.411.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.kn, ptr noundef nonnull @2530, ptr noundef nonnull %i.km)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit unwind label %.body

bb.f:                                             ; preds = %bb.c
  %i.ky = load ptr, ptr %i.kp, align 8, !nonnull !75, !noundef !75 ; 2 uses
  %i.kz = load ptr, ptr %i.kq, align 8, !nonnull !75, !align !95, !noundef !75 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !55451)
  call void @llvm.experimental.noalias.scope.decl(metadata !55452)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ki)
  store ptr %i.ky, ptr %i.ki, align 16, !noalias !55453
  %i.la = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  store ptr %i.kz, ptr %i.la, align 8, !noalias !55453
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %i.lc = load i64, ptr %i.lb, align 8, !range !93, !invariant.load !75, !alias.scope !55452
  %i.ld = add nsw i64 %i.lc, -1
  %i.le = and i64 %i.ld, -16
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.le
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kz, i64 32
  %.val.i = load ptr, ptr %i.lh, align 8, !alias.scope !55452
  %i.li = invoke { ptr, ptr } %.val.i(ptr noundef nonnull %i.lg)
          to label %.noexc.i unwind label %bb.h, !noalias !55451, !inline_history !53873 ; 2 uses

.noexc.i:                                         ; preds = %bb.f
  %i.lj = extractvalue { ptr, ptr } %i.li, 0      ; 11 uses
  %i.lk = extractvalue { ptr, ptr } %i.li, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ju), !noalias !55453
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 24
  %i.lm = load ptr, ptr %i.ll, align 8, !invariant.load !75, !noalias !55451, !nonnull !75
  invoke void %i.lm(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ju, ptr noundef %i.lj)
          to label %bb.i unwind label %bb.h, !noalias !55451, !inline_history !53873

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionaEEECsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.v, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit291.i, %bb.h
  %.pn189.pn.i = phi { ptr, i32 } [ %i.lq, %bb.h ], [ %.pn189.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit291.i ], [ %.pn189.i, %bb.v ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !55454)
  call void @llvm.experimental.noalias.scope.decl(metadata !55455)
  %i.ln = load ptr, ptr %i.ki, align 16, !alias.scope !55456, !noalias !55453, !nonnull !75, !noundef !75
  %i.lo = atomicrmw add ptr %i.ln, i64 -1 release, align 8, !noalias !55457
  %i.lp = icmp eq i64 %i.lo, 1
  br i1 %i.lp, label %bb.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit1012

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionaEEECsjjpCCFGI3ul_14lance_encoding.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ki)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit1012 unwind label %bb.er, !noalias !55451

bb.h:                                             ; preds = %.invoke.i, %bb.p, %bb.j, %.noexc.i, %bb.f
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionaEEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.i:                                             ; preds = %.noexc.i
  %i.lr = load i128, ptr %i.ju, align 16, !noalias !55453, !noundef !75
  %i.ls = icmp ne i128 %i.lr, 104509359763621453605828916743091013907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ju), !noalias !55453
  %.not392.i = icmp eq ptr %i.lj, null
  %.not.i = or i1 %.not392.i, %i.ls
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lj, i64 120 ; 5 uses
  %i.lu = invoke noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_10null_count(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.lt)
          to label %bb.n unwind label %bb.h, !noalias !55451

bb.k:                                             ; preds = %bb.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !55458
  %i.lv = call noundef dereferenceable_or_null(29) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 29, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !55458 ; 3 uses
  %i.lw = icmp eq ptr %i.lv, null
  br i1 %i.lw, label %.invoke.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.lv, ptr noundef nonnull align 1 dereferenceable(29) @1136, i64 29, i1 false), !noalias !55459
  store i8 11, ptr %0, align 8, !alias.scope !55451
  %.sroa.5129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1138, ptr %.sroa.5129.0..sroa_idx.i, align 8, !alias.scope !55451
  %.sroa.6130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 29, ptr %.sroa.6130.0..sroa_idx.i, align 8, !alias.scope !55451
  %.sroa.6130.sroa.4.0..sroa.6130.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.lv, ptr %.sroa.6130.sroa.4.0..sroa.6130.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !55451
  %.sroa.6130.sroa.5.0..sroa.6130.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 29, ptr %.sroa.6130.sroa.5.0..sroa.6130.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !55451
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionaEEECsjjpCCFGI3ul_14lance_encoding.exit263.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionaEEECsjjpCCFGI3ul_14lance_encoding.exit263.i: ; preds = %bb.eq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit.i, %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !55460)
  call void @llvm.experimental.noalias.scope.decl(metadata !55461)
  %i.lx = load ptr, ptr %i.ki, align 16, !alias.scope !55462, !noalias !55453, !nonnull !75, !noundef !75
  %i.ly = atomicrmw add ptr %i.lx, i64 -1 release, align 8, !noalias !55463
  %i.lz = icmp eq i64 %i.ly, 1
  br i1 %i.lz, label %bb.m, label %_RINvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4dict25normalize_dict_nulls_implNtNtCs4ytUTZt2Gw9_11arrow_array5types8Int8TypeEBa_.exit

bb.m:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionaEEECsjjpCCFGI3ul_14lance_encoding.exit263.i
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ki)
  br label %_RINvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4dict25normalize_dict_nulls_implNtNtCs4ytUTZt2Gw9_11arrow_array5types8Int8TypeEBa_.exit

bb.n:                                             ; preds = %bb.j
  %i.ma = icmp eq i64 %i.lu, 0
  br i1 %i.ma, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mc = load <2 x ptr>, ptr %i.ki, align 16, !noalias !55453
  store <2 x ptr> %i.mc, ptr %i.mb, align 8, !alias.scope !55451
  store i8 -1, ptr %0, align 8, !alias.scope !55451
  br label %_RINvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4dict25normalize_dict_nulls_implNtNtCs4ytUTZt2Gw9_11arrow_array5types8Int8TypeEBa_.exit

bb.p:                                             ; preds = %bb.n
  %i.md = invoke noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.lt)
          to label %bb.q unwind label %bb.h, !noalias !55451 ; 8 uses

bb.q:                                             ; preds = %bb.p
  %i.me = shl i64 %i.md, 1                        ; 5 uses
  %i.mf = or i64 %i.me, %i.md
  %or.cond.i.not.i.i = icmp sgt i64 %i.mf, -1
  br i1 %or.cond.i.not.i.i, label %bb.r, label %.invoke.i, !prof !202

bb.r:                                             ; preds = %bb.q
  %i.mg = icmp eq i64 %i.me, 0
  br i1 %i.mg, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !55464
  %i.mh = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.me, i64 noundef range(i64 1, 17) 1) #63, !noalias !55464 ; 2 uses
  %i.mi = icmp eq ptr %i.mh, null
  br i1 %i.mi, label %.invoke.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.mj = ptrtoint ptr %i.mh to i64
  br label %bb.u

.invoke.i:                                        ; preds = %bb.s, %bb.q, %bb.k
  %i.mk = phi i64 [ 1, %bb.k ], [ 1, %bb.s ], [ 0, %bb.q ]
  %i.ml = phi i64 [ 29, %bb.k ], [ %i.me, %bb.s ], [ %i.me, %bb.q ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.mk, i64 %i.ml) #66
          to label %.cont.i unwind label %bb.h, !noalias !55451

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.u:                                             ; preds = %bb.t, %bb.r
  %.sroa.4.0.i.i = phi i64 [ %i.md, %bb.t ], [ 0, %bb.r ] ; 6 uses
  %.sroa.10.0.i.i = phi i64 [ %i.mj, %bb.t ], [ 1, %bb.r ]
  %i.mm = inttoptr i64 %.sroa.10.0.i.i to ptr     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kh), !noalias !55453
  %i.mn = invoke noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.lt)
          to label %bb.w unwind label %.body250.i, !noalias !55451 ; 4 uses

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit291.i: ; preds = %bb.gd, %.body250.thread363.i, %bb.eo, %bb.ef, %.body250.i, %bb.ab
  %.pn189.i = phi { ptr, i32 } [ %i.wi, %bb.eo ], [ %.pn187360.i, %bb.gd ], [ %.pn185.i, %bb.ab ], [ %lpad.thr_comm.split-lp.i, %.body250.i ], [ %.pn187360.i, %.body250.thread363.i ], [ %i.vy, %bb.ef ] ; 2 uses
  %i.mo = icmp eq i64 %.sroa.4.0.i.i, 0
  br i1 %i.mo, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionaEEECsjjpCCFGI3ul_14lance_encoding.exit.i, label %bb.v

bb.v:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit291.i
  %i.mp = shl nuw i64 %.sroa.4.0.i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mm) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mm, i64 noundef %i.mp, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !55451
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionaEEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.w:                                             ; preds = %bb.u
  %i.mq = shl i64 %i.mn, 3                        ; 4 uses
  %i.mr = icmp ugt i64 %i.mn, 2305843009213693951
  %.not.i.i = icmp ugt i64 %i.mq, 9223372036854775800
  %or.cond.i.i = or i1 %i.mr, %.not.i.i
  br i1 %or.cond.i.i, label %bb.aa, label %bb.x, !prof !80

bb.x:                                             ; preds = %bb.w
  %i.ms = icmp eq i64 %i.mq, 0
  br i1 %i.ms, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !55465
  %i.mt = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.mq, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !55465 ; 2 uses
  %i.mu = icmp eq ptr %i.mt, null
  br i1 %i.mu, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.mv = ptrtoint ptr %i.mt to i64
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i

bb.aa:                                            ; preds = %bb.y, %bb.w
  %.sroa.4316.0.ph.i = phi i64 [ 8, %bb.y ], [ 0, %bb.w ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4316.0.ph.i, i64 %i.mq) #66
          to label %bb.fh unwind label %.body250.i, !noalias !55451

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.z, %bb.x
  %.sroa.10318.0.i = phi i64 [ %i.mv, %bb.z ], [ 8, %bb.x ]
  %.sroa.4316.0.i = phi i64 [ %i.mn, %bb.z ], [ 0, %bb.x ] ; 2 uses
  %i.mw = inttoptr i64 %.sroa.10318.0.i to ptr
  %i.mx = icmp samesign ule i64 %i.mn, %.sroa.4316.0.i
  call void @llvm.assume(i1 %i.mx)
  store i64 %.sroa.4316.0.i, ptr %i.kh, align 8, !noalias !55453
  %i.my = getelementptr inbounds nuw i8, ptr %i.kh, i64 8 ; 4 uses
  store ptr %i.mw, ptr %i.my, align 8, !noalias !55453
  %i.mz = getelementptr inbounds nuw i8, ptr %i.kh, i64 16 ; 3 uses
  store i64 0, ptr %i.mz, align 8, !noalias !55453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kg), !noalias !55453
  %i.na = invoke noundef align 8 ptr @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_5nulls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.lt)
          to label %bb.ac unwind label %.body250.thread367.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !55451 ; 2 uses

bb.ab:                                            ; preds = %.body236.i
  br i1 %.sroa.0116.2.i, label %.body250.thread363.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit291.i

.body250.thread367.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gc, %.invoke497.i, %.invoke499.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECsjjpCCFGI3ul_14lance_encoding.exit4.i273.i, %bb.ad, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i
  %lpad.loopexit.split-lp1978 = landingpad { ptr, i32 }
          cleanup
  br label %.body250.thread363.i

.body250.i:                                       ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECsjjpCCFGI3ul_14lance_encoding.exit4.i257.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECsjjpCCFGI3ul_14lance_encoding.exit4.i.i, %bb.aa, %bb.u
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit291.i

bb.ac:                                            ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i
  %.not180.i = icmp eq ptr %i.na, null
  br i1 %.not180.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer4iter(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.kg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.na)
          to label %bb.ai unwind label %.body250.thread367.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !55451

bb.ae:                                            ; preds = %bb.ac
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !55466
  %i.nb = call noundef dereferenceable_or_null(29) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 29, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !55466 ; 3 uses
  %i.nc = icmp eq ptr %i.nb, null
  br i1 %i.nc, label %.invoke499.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.nb, ptr noundef nonnull align 1 dereferenceable(29) @1136, i64 29, i1 false), !noalias !55467
  store i8 11, ptr %0, align 8, !alias.scope !55451
  %.sroa.5141.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1138, ptr %.sroa.5141.0..sroa_idx.i, align 8, !alias.scope !55451
  %.sroa.6142.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 29, ptr %.sroa.6142.0..sroa_idx.i, align 8, !alias.scope !55451
  %.sroa.6142.sroa.4.0..sroa.6142.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.nb, ptr %.sroa.6142.sroa.4.0..sroa.6142.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !55451
  %.sroa.6142.sroa.5.0..sroa.6142.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 29, ptr %.sroa.6142.sroa.5.0..sroa.6142.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !55451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kg), !noalias !55453
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ga, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types8Int8TypeEECsjjpCCFGI3ul_14lance_encoding.exit278.i, %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !55468)
  %.val.i.i = load i64, ptr %i.kh, align 8, !alias.scope !55468, !noalias !55453 ; 2 uses
  %i.nd = icmp eq i64 %.val.i.i, 0
  br i1 %i.nd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.val1.i.i = load ptr, ptr %i.my, align 8, !alias.scope !55468, !noalias !55453, !nonnull !75, !noundef !75
  %i.ne = shl nuw i64 %.val.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.ne, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !55469
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.ai:                                            ; preds = %bb.ad
  %.sroa.022.sroa.0.0.copyload.i = load ptr, ptr %i.kg, align 8, !noalias !55453 ; 2 uses
  %.sroa.022.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %.sroa.022.sroa.3.0.copyload.i = load i64, ptr %.sroa.022.sroa.3.0..sroa_idx.i, align 8, !noalias !55453 ; 2 uses
  %.sroa.022.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  %.sroa.022.sroa.4.0.copyload.i = load i64, ptr %.sroa.022.sroa.4.0..sroa_idx.i, align 8, !noalias !55453 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kg), !noalias !55453
  %i.nf = icmp eq i64 %.sroa.022.sroa.3.0.copyload.i, %.sroa.022.sroa.4.0.copyload.i
  br i1 %i.nf, label %.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.022.sroa.0.0.copyload.i) ]
  br label %bb.aj

bb.aj:                                            ; preds = %bb.fw, %.lr.ph.i
  %.sroa.020.0411.i = phi i64 [ 0, %.lr.ph.i ], [ %.sroa.020.1.i, %bb.fw ] ; 3 uses
  %.sroa.5300.0410.i = phi i64 [ %.sroa.022.sroa.3.0.copyload.i, %.lr.ph.i ], [ %i.nl, %bb.fw ] ; 3 uses
  %.sroa.8302.0409.i = phi i64 [ 0, %.lr.ph.i ], [ %i.nm, %bb.fw ] ; 8 uses
  %i.ng = lshr i64 %.sroa.5300.0410.i, 3
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.022.sroa.0.0.copyload.i, i64 %i.ng
  %i.ni = load i8, ptr %i.nh, align 1, !noalias !55470, !noundef !75
  %i.nj = trunc i64 %.sroa.5300.0410.i to i8
  %i.nk = and i8 %i.nj, 7
  %i.nl = add i64 %.sroa.5300.0410.i, 1           ; 2 uses
  %i.nm = add nuw i64 %.sroa.8302.0409.i, 1
  %i.nn = shl nuw i8 1, %i.nk
  %i.no = and i8 %i.nn, %i.ni
  %cond.i = icmp eq i8 %i.no, 0
  br i1 %cond.i, label %bb.fu, label %bb.fx

.thread.i:                                        ; preds = %bb.fw, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kf), !noalias !55453
  %i.np = getelementptr inbounds nuw i8, ptr %i.lj, i64 64 ; 2 uses
  %i.nq = load i64, ptr %i.np, align 8, !noalias !55451, !noundef !75 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !55471)
  %.not.i.i.i = icmp slt i64 %i.nq, 0
  br i1 %.not.i.i.i, label %.invoke499.i, label %bb.ak, !prof !80

bb.ak:                                            ; preds = %.thread.i
  %i.nr = icmp eq i64 %i.nq, 0
  br i1 %i.nr, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !55472
  %i.ns = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.nq, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !55472 ; 2 uses
  %i.nt = icmp eq ptr %i.ns, null
  br i1 %i.nt, label %.invoke499.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.nu = ptrtoint ptr %i.ns to i64
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak
  %.sroa.10.0.i209.i = phi i64 [ %i.nu, %bb.am ], [ 1, %bb.ak ]
  %i.nv = inttoptr i64 %.sroa.10.0.i209.i to ptr
  store i64 %i.nq, ptr %i.kf, align 8, !alias.scope !55471, !noalias !55453
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.kf, i64 8 ; 7 uses
  store ptr %i.nv, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !55471, !noalias !55453
  %.sroa.5.0..sroa_idx.i210.i = getelementptr inbounds nuw i8, ptr %i.kf, i64 16 ; 6 uses
  %.sroa.42.0..sroa_idx.i211.i = getelementptr inbounds nuw i8, ptr %i.kf, i64 64 ; 3 uses
  store i64 0, ptr %.sroa.42.0..sroa_idx.i211.i, align 8, !alias.scope !55471, !noalias !55453
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.kf, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i210.i, i8 0, i64 16, i1 false), !alias.scope !55471, !noalias !55453
  store i64 %i.nq, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !55471, !noalias !55453
  %i.nw = getelementptr inbounds nuw i8, ptr %i.kf, i64 80 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nw, i8 2, i64 24, i1 false), !alias.scope !55471, !noalias !55453
  %i.nx = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !55473)
  %.val.i.i.i = load i64, ptr %i.np, align 8, !alias.scope !55473, !noalias !55451, !noundef !75 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !55474)
  %i.ny = getelementptr inbounds nuw i8, ptr %i.lj, i64 72
  %i.nz = load ptr, ptr %i.ny, align 8, !alias.scope !55475, !noalias !55476, !noundef !75 ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.nz, null
  br i1 %.not.i.i.i.i.i, label %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i, label %bb.ao

end_hunk_0
begin_hunk_1_@_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4dict20normalize_dict_nulls:bb.a
  %i.bsc = add i64 %.sroa.020.0418.i, 1
  %i.bsd = getelementptr inbounds nuw [16 x i8], ptr %i.bfn, i64 %.sroa.8310.0416.i
  store i64 0, ptr %i.bsd, align 8, !noalias !55823
  br label %bb.aak

bb.aak:                                           ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i313, %bb.aaj
  %.sroa.020.1.i314 = phi i64 [ %.sroa.020.0418.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i313 ], [ %i.bsc, %bb.aaj ]
  %i.bse = icmp eq i64 %i.bgm, %.sroa.022.sroa.4.0.copyload.i304
  br i1 %i.bse, label %.thread.i315, label %bb.va

bb.aal:                                           ; preds = %bb.va
  %i.bsf = sub i64 %.sroa.8310.0416.i, %.sroa.020.0418.i ; 2 uses
  %i.bsg = icmp sgt i64 %i.bsf, -1
  br i1 %i.bsg, label %bb.aam, label %bb.aan

bb.aam:                                           ; preds = %bb.aal
  %i.bsh = icmp ult i64 %.sroa.8310.0416.i, %i.bfe
  br i1 %i.bsh, label %bb.aap, label %.invoke502.i

bb.aan:                                           ; preds = %bb.aal
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !55942
  %i.bsi = call noundef dereferenceable_or_null(29) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 29, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !55942 ; 3 uses
  %i.bsj = icmp eq ptr %i.bsi, null
  br i1 %i.bsj, label %.invoke504.i, label %bb.aao

.invoke504.i:                                     ; preds = %bb.aan, %bb.vc, %.thread.i315, %bb.uv
  %i.bsk = phi i64 [ 0, %.thread.i315 ], [ 1, %bb.uv ], [ 8, %bb.vc ], [ 1, %bb.aan ]
  %i.bsl = phi i64 [ %i.bgt, %.thread.i315 ], [ 29, %bb.uv ], [ %i.bgt, %bb.vc ], [ 29, %bb.aan ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.bsk, i64 %i.bsl) #66
          to label %.cont505.i unwind label %.body258.thread374.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !55823

.cont505.i:                                       ; preds = %.invoke504.i
  unreachable

bb.aao:                                           ; preds = %bb.aan
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.bsi, ptr noundef nonnull align 1 dereferenceable(29) @1136, i64 29, i1 false), !noalias !55943
  store i8 11, ptr %0, align 8, !alias.scope !55823
  %.sroa.5158.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 ptrtoint (ptr @1138 to i64), ptr %.sroa.5158.0..sroa_idx.i, align 8, !alias.scope !55823
  %.sroa.6159.0..sroa_idx.i307 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 29, ptr %.sroa.6159.0..sroa_idx.i307, align 8, !alias.scope !55823
  %.sroa.6159.sroa.4.0..sroa.6159.0..sroa_idx.sroa_idx.i308 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bsi, ptr %.sroa.6159.sroa.4.0..sroa.6159.0..sroa_idx.sroa_idx.i308, align 8, !alias.scope !55823
  %.sroa.6159.sroa.5.0..sroa.6159.0..sroa_idx.sroa_idx.i309 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 29, ptr %.sroa.6159.sroa.5.0..sroa.6159.0..sroa_idx.sroa_idx.i309, align 8, !alias.scope !55823
  br label %bb.ux

bb.aap:                                           ; preds = %bb.aam
  %i.bsm = getelementptr inbounds nuw [16 x i8], ptr %i.bfn, i64 %.sroa.8310.0416.i ; 2 uses
  store i64 1, ptr %i.bsm, align 8, !noalias !55823
  %i.bsn = getelementptr inbounds nuw i8, ptr %i.bsm, i64 8
  store i64 %i.bsf, ptr %i.bsn, align 8, !noalias !55823
  %i.bso = load i64, ptr %i.bga, align 8, !alias.scope !55944, !noalias !55825, !noundef !75 ; 3 uses
  %i.bsp = load i64, ptr %i.fb, align 8, !range !76, !alias.scope !55944, !noalias !55825, !noundef !75
  %i.bsq = icmp eq i64 %i.bso, %i.bsp
  br i1 %i.bsq, label %bb.aaq, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i313

bb.aaq:                                           ; preds = %bb.aap
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs5GHimaBI8WD_10num_bigint(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fb)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i313 unwind label %.body258.thread374.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !55823

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i313: ; preds = %bb.aaq, %bb.aap
  %i.bsr = load ptr, ptr %i.bfz, align 8, !alias.scope !55944, !noalias !55825, !nonnull !75, !noundef !75
  %i.bss = getelementptr inbounds nuw [8 x i8], ptr %i.bsr, i64 %i.bso
  store i64 %.sroa.8310.0416.i, ptr %i.bss, align 8, !noalias !55823
  %i.bst = add i64 %i.bso, 1
  store i64 %i.bst, ptr %i.bga, align 8, !alias.scope !55944, !noalias !55825
  br label %bb.aak

.invoke502.i:                                     ; preds = %bb.aam, %bb.aai
  %i.bsu = phi ptr [ @417, %bb.aai ], [ @418, %bb.aam ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8310.0416.i, i64 noundef %i.bfe, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bsu) #66
          to label %.cont503.i unwind label %.body258.thread374.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !55823

.cont503.i:                                       ; preds = %.invoke502.i
  unreachable

.body258.thread370.i:                             ; preds = %.body258.thread374.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.zr, %bb.us
  %.pn195367.i = phi { ptr, i32 } [ %i.bqi, %bb.zr ], [ %.pn193.i343, %bb.us ], [ %lpad.loopexit.split-lp2055, %.body258.thread374.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !55945)
  %.val.i297.i = load i64, ptr %i.fb, align 8, !alias.scope !55945, !noalias !55825 ; 2 uses
  %i.bsv = icmp eq i64 %.val.i297.i, 0
  br i1 %i.bsv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit299.i, label %bb.aar

bb.aar:                                           ; preds = %.body258.thread370.i
  %.val1.i298.i = load ptr, ptr %i.bfz, align 8, !alias.scope !55945, !noalias !55825, !nonnull !75, !noundef !75
  %i.bsw = shl nuw i64 %.val.i297.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i298.i, i64 noundef %i.bsw, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !55946
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit299.i

_RINvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4dict25normalize_dict_nulls_implNtNtCs4ytUTZt2Gw9_11arrow_array5types9Int64TypeEBa_.exit: ; preds = %bb.ud, %bb.yw, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionxEEECsjjpCCFGI3ul_14lance_encoding.exit271.i, %bb.uf, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionxEEECsjjpCCFGI3ul_14lance_encoding.exit260.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc)
  br label %bb.aub

bb.aas:                                           ; preds = %bb.c
  %i.bsx = load ptr, ptr %i.kp, align 8, !nonnull !75, !noundef !75 ; 2 uses
  %i.bsy = load ptr, ptr %i.kq, align 8, !nonnull !75, !align !95, !noundef !75 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !55947)
  call void @llvm.experimental.noalias.scope.decl(metadata !55948)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  store ptr %i.bsx, ptr %i.dj, align 16, !noalias !55949
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %i.bsy, ptr %i.bsz, align 8, !noalias !55949
  %i.bta = getelementptr inbounds nuw i8, ptr %i.bsy, i64 16
  %i.btb = load i64, ptr %i.bta, align 8, !range !93, !invariant.load !75, !alias.scope !55948
  %i.btc = add nsw i64 %i.btb, -1
  %i.btd = and i64 %i.btc, -16
  %i.bte = getelementptr inbounds nuw i8, ptr %i.bsx, i64 %i.btd
  %i.btf = getelementptr inbounds nuw i8, ptr %i.bte, i64 16
  %i.btg = getelementptr inbounds nuw i8, ptr %i.bsy, i64 32
  %.val.i478 = load ptr, ptr %i.btg, align 8, !alias.scope !55948
  %i.bth = invoke { ptr, ptr } %.val.i478(ptr noundef nonnull %i.btf)
          to label %.noexc.i481 unwind label %bb.aau, !noalias !55947, !inline_history !54803 ; 2 uses

.noexc.i481:                                      ; preds = %bb.aas
  %i.bti = extractvalue { ptr, ptr } %i.bth, 0    ; 11 uses
  %i.btj = extractvalue { ptr, ptr } %i.bth, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !55949
  %i.btk = getelementptr inbounds nuw i8, ptr %i.btj, i64 24
  %i.btl = load ptr, ptr %i.btk, align 8, !invariant.load !75, !noalias !55947, !nonnull !75
  invoke void %i.btl(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.cu, ptr noundef %i.bti)
          to label %bb.aav unwind label %bb.aau, !noalias !55947, !inline_history !54803

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionhEEECsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.abi, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit247.i, %bb.aau
  %.pn189.pn.i479 = phi { ptr, i32 } [ %i.btp, %bb.aau ], [ %.pn189.i489, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit247.i ], [ %.pn189.i489, %bb.abi ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !55950)
  call void @llvm.experimental.noalias.scope.decl(metadata !55951)
  %i.btm = load ptr, ptr %i.dj, align 16, !alias.scope !55952, !noalias !55949, !nonnull !75, !noundef !75
  %i.btn = atomicrmw add ptr %i.btm, i64 -1 release, align 8, !noalias !55953
  %i.bto = icmp eq i64 %i.btn, 1
  br i1 %i.bto, label %bb.aat, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit1012

bb.aat:                                           ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionhEEECsjjpCCFGI3ul_14lance_encoding.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dj)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit1012 unwind label %bb.adt, !noalias !55947

bb.aau:                                           ; preds = %.invoke.i484, %bb.abc, %bb.aaw, %.noexc.i481, %bb.aas
  %i.btp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionhEEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.aav:                                           ; preds = %.noexc.i481
  %i.btq = load i128, ptr %i.cu, align 16, !noalias !55949, !noundef !75
  %i.btr = icmp ne i128 %i.btq, -77753503053215345541772572743115514411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !55949
  %.not316.i = icmp eq ptr %i.bti, null
  %.not.i482 = or i1 %.not316.i, %i.btr
  br i1 %.not.i482, label %bb.aax, label %bb.aaw

bb.aaw:                                           ; preds = %bb.aav
  %i.bts = getelementptr inbounds nuw i8, ptr %i.bti, i64 120 ; 5 uses
  %i.btt = invoke noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_10null_count(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bts)
          to label %bb.aba unwind label %bb.aau, !noalias !55947

bb.aax:                                           ; preds = %bb.aav
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !55954
  %i.btu = call noundef dereferenceable_or_null(29) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 29, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !55954 ; 3 uses
  %i.btv = icmp eq ptr %i.btu, null
  br i1 %i.btv, label %.invoke.i484, label %bb.aay

bb.aay:                                           ; preds = %bb.aax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.btu, ptr noundef nonnull align 1 dereferenceable(29) @1136, i64 29, i1 false), !noalias !55955
  store i8 11, ptr %0, align 8, !alias.scope !55947
  %.sroa.5129.0..sroa_idx.i563 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1138, ptr %.sroa.5129.0..sroa_idx.i563, align 8, !alias.scope !55947
  %.sroa.6130.0..sroa_idx.i564 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 29, ptr %.sroa.6130.0..sroa_idx.i564, align 8, !alias.scope !55947
  %.sroa.6130.sroa.4.0..sroa.6130.0..sroa_idx.sroa_idx.i565 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.btu, ptr %.sroa.6130.sroa.4.0..sroa.6130.0..sroa_idx.sroa_idx.i565, align 8, !alias.scope !55947
  %.sroa.6130.sroa.5.0..sroa.6130.0..sroa_idx.sroa_idx.i566 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 29, ptr %.sroa.6130.sroa.5.0..sroa.6130.0..sroa_idx.sroa_idx.i566, align 8, !alias.scope !55947
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionhEEECsjjpCCFGI3ul_14lance_encoding.exit240.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionhEEECsjjpCCFGI3ul_14lance_encoding.exit240.i: ; preds = %bb.ads, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit.i508, %bb.aay
  call void @llvm.experimental.noalias.scope.decl(metadata !55956)
  call void @llvm.experimental.noalias.scope.decl(metadata !55957)
  %i.btw = load ptr, ptr %i.dj, align 16, !alias.scope !55958, !noalias !55949, !nonnull !75, !noundef !75
  %i.btx = atomicrmw add ptr %i.btw, i64 -1 release, align 8, !noalias !55959
  %i.bty = icmp eq i64 %i.btx, 1
  br i1 %i.bty, label %bb.aaz, label %_RINvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4dict25normalize_dict_nulls_implNtNtCs4ytUTZt2Gw9_11arrow_array5types9UInt8TypeEBa_.exit

bb.aaz:                                           ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionhEEECsjjpCCFGI3ul_14lance_encoding.exit240.i
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dj)
  br label %_RINvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4dict25normalize_dict_nulls_implNtNtCs4ytUTZt2Gw9_11arrow_array5types9UInt8TypeEBa_.exit

bb.aba:                                           ; preds = %bb.aaw
  %i.btz = icmp eq i64 %i.btt, 0
  br i1 %i.btz, label %bb.abb, label %bb.abc

bb.abb:                                           ; preds = %bb.aba
  %i.bua = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bub = load <2 x ptr>, ptr %i.dj, align 16, !noalias !55949
  store <2 x ptr> %i.bub, ptr %i.bua, align 8, !alias.scope !55947
  store i8 -1, ptr %0, align 8, !alias.scope !55947
  br label %_RINvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4dict25normalize_dict_nulls_implNtNtCs4ytUTZt2Gw9_11arrow_array5types9UInt8TypeEBa_.exit

bb.abc:                                           ; preds = %bb.aba
  %i.buc = invoke noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bts)
          to label %bb.abd unwind label %bb.aau, !noalias !55947 ; 8 uses

bb.abd:                                           ; preds = %bb.abc
  %i.bud = shl i64 %i.buc, 1                      ; 5 uses
  %i.bue = or i64 %i.bud, %i.buc
  %or.cond.i.not.i.i483 = icmp sgt i64 %i.bue, -1
  br i1 %or.cond.i.not.i.i483, label %bb.abe, label %.invoke.i484, !prof !202

bb.abe:                                           ; preds = %bb.abd
  %i.buf = icmp eq i64 %i.bud, 0
  br i1 %i.buf, label %bb.abh, label %bb.abf

bb.abf:                                           ; preds = %bb.abe
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !55960
  %i.bug = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.bud, i64 noundef range(i64 1, 17) 1) #63, !noalias !55960 ; 2 uses
  %i.buh = icmp eq ptr %i.bug, null
  br i1 %i.buh, label %.invoke.i484, label %bb.abg

bb.abg:                                           ; preds = %bb.abf
  %i.bui = ptrtoint ptr %i.bug to i64
  br label %bb.abh

.invoke.i484:                                     ; preds = %bb.abf, %bb.abd, %bb.aax
  %i.buj = phi i64 [ 1, %bb.aax ], [ 1, %bb.abf ], [ 0, %bb.abd ]
  %i.buk = phi i64 [ 29, %bb.aax ], [ %i.bud, %bb.abf ], [ %i.bud, %bb.abd ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.buj, i64 %i.buk) #66
          to label %.cont.i485 unwind label %bb.aau, !noalias !55947

.cont.i485:                                       ; preds = %.invoke.i484
  unreachable

bb.abh:                                           ; preds = %bb.abg, %bb.abe
  %.sroa.4.0.i.i486 = phi i64 [ %i.buc, %bb.abg ], [ 0, %bb.abe ] ; 6 uses
  %.sroa.10.0.i.i487 = phi i64 [ %i.bui, %bb.abg ], [ 1, %bb.abe ]
  %i.bul = inttoptr i64 %.sroa.10.0.i.i487 to ptr ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !noalias !55949
  %i.bum = invoke noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bts)
          to label %bb.abj unwind label %.body227.i, !noalias !55947 ; 4 uses

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit247.i: ; preds = %bb.ael, %.body227.thread297.loopexit.split-lp.i, %bb.adq, %bb.adh, %.body227.i, %bb.abo
  %.pn189.i489 = phi { ptr, i32 } [ %i.byv, %bb.adq ], [ %.pn187293.i, %bb.ael ], [ %.pn185.i538, %bb.abo ], [ %lpad.thr_comm.split-lp.i488, %.body227.i ], [ %.pn187293.i, %.body227.thread297.loopexit.split-lp.i ], [ %i.byk, %bb.adh ] ; 2 uses
  %i.bun = icmp eq i64 %.sroa.4.0.i.i486, 0
  br i1 %i.bun, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionhEEECsjjpCCFGI3ul_14lance_encoding.exit.i, label %bb.abi

bb.abi:                                           ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit247.i
  %i.buo = shl nuw i64 %.sroa.4.0.i.i486, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bul) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bul, i64 noundef %i.buo, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !55947
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionhEEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.abj:                                           ; preds = %bb.abh
  %i.bup = shl i64 %i.bum, 3                      ; 4 uses
  %i.buq = icmp ugt i64 %i.bum, 2305843009213693951
  %.not.i.i490 = icmp ugt i64 %i.bup, 9223372036854775800
  %or.cond.i.i491 = or i1 %i.buq, %.not.i.i490
  br i1 %or.cond.i.i491, label %bb.abn, label %bb.abk, !prof !80

bb.abk:                                           ; preds = %bb.abj
  %i.bur = icmp eq i64 %i.bup, 0
  br i1 %i.bur, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i492, label %bb.abl

bb.abl:                                           ; preds = %bb.abk
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !55961
  %i.bus = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.bup, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !55961 ; 2 uses
  %i.but = icmp eq ptr %i.bus, null
  br i1 %i.but, label %bb.abn, label %bb.abm

bb.abm:                                           ; preds = %bb.abl
  %i.buu = ptrtoint ptr %i.bus to i64
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i492

bb.abn:                                           ; preds = %bb.abl, %bb.abj
  %.sroa.4272.0.ph.i = phi i64 [ 8, %bb.abl ], [ 0, %bb.abj ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4272.0.ph.i, i64 %i.bup) #66
          to label %bb.adz unwind label %.body227.i, !noalias !55947

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i492: ; preds = %bb.abm, %bb.abk
  %.sroa.10274.0.i = phi i64 [ %i.buu, %bb.abm ], [ 8, %bb.abk ]
  %.sroa.4272.0.i = phi i64 [ %i.bum, %bb.abm ], [ 0, %bb.abk ] ; 2 uses
  %i.buv = inttoptr i64 %.sroa.10274.0.i to ptr
  %i.buw = icmp samesign ule i64 %i.bum, %.sroa.4272.0.i
  call void @llvm.assume(i1 %i.buw)
  store i64 %.sroa.4272.0.i, ptr %i.di, align 8, !noalias !55949
  %i.bux = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 4 uses
  store ptr %i.buv, ptr %i.bux, align 8, !noalias !55949
  %i.buy = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 3 uses
  store i64 0, ptr %i.buy, align 8, !noalias !55949
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !noalias !55949
  %i.buz = invoke noundef align 8 ptr @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_5nulls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bts)
          to label %bb.abp unwind label %.body227.thread297.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !55947 ; 2 uses

bb.abo:                                           ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtBG_5array15primitive_array14PrimitiveArrayNtNtBG_5types9UInt8TypeEEECsjjpCCFGI3ul_14lance_encoding.exit.i
  br i1 %.sroa.0116.2.i537, label %.body227.thread297.loopexit.split-lp.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit247.i

.body227.thread297.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aek, %.invoke361.i, %.invoke363.i, %bb.abq, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i492
  %lpad.loopexit.split-lp2065 = landingpad { ptr, i32 }
          cleanup
  br label %.body227.thread297.loopexit.split-lp.i

.body227.i:                                       ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECsjjpCCFGI3ul_14lance_encoding.exit3.i234.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECsjjpCCFGI3ul_14lance_encoding.exit3.i.i558, %bb.abn, %bb.abh
  %lpad.thr_comm.split-lp.i488 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit247.i

bb.abp:                                           ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i492
  %.not180.i494 = icmp eq ptr %i.buz, null
  br i1 %.not180.i494, label %bb.abr, label %bb.abq

bb.abq:                                           ; preds = %bb.abp
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer4iter(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.dh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.buz)
          to label %bb.abv unwind label %.body227.thread297.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !55947

bb.abr:                                           ; preds = %bb.abp
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !55962
  %i.bva = call noundef dereferenceable_or_null(29) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 29, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !55962 ; 3 uses
  %i.bvb = icmp eq ptr %i.bva, null
  br i1 %i.bvb, label %.invoke363.i, label %bb.abs

bb.abs:                                           ; preds = %bb.abr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.bva, ptr noundef nonnull align 1 dereferenceable(29) @1136, i64 29, i1 false), !noalias !55963
  store i8 11, ptr %0, align 8, !alias.scope !55947
  %.sroa.5141.0..sroa_idx.i559 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1138, ptr %.sroa.5141.0..sroa_idx.i559, align 8, !alias.scope !55947
  %.sroa.6142.0..sroa_idx.i560 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 29, ptr %.sroa.6142.0..sroa_idx.i560, align 8, !alias.scope !55947
  %.sroa.6142.sroa.4.0..sroa.6142.0..sroa_idx.sroa_idx.i561 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bva, ptr %.sroa.6142.sroa.4.0..sroa.6142.0..sroa_idx.sroa_idx.i561, align 8, !alias.scope !55947
  %.sroa.6142.sroa.5.0..sroa.6142.0..sroa_idx.sroa_idx.i562 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 29, ptr %.sroa.6142.sroa.5.0..sroa.6142.0..sroa_idx.sroa_idx.i562, align 8, !alias.scope !55947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !55949
  br label %bb.abt

bb.abt:                                           ; preds = %bb.aei, %bb.abs
  call void @llvm.experimental.noalias.scope.decl(metadata !55964)
  %.val.i.i506 = load i64, ptr %i.di, align 8, !alias.scope !55964, !noalias !55949 ; 2 uses
  %i.bvc = icmp eq i64 %.val.i.i506, 0
  br i1 %i.bvc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit.i508, label %bb.abu

bb.abu:                                           ; preds = %bb.abt
  %.val1.i.i507 = load ptr, ptr %i.bux, align 8, !alias.scope !55964, !noalias !55949, !nonnull !75, !noundef !75
  %i.bvd = shl nuw i64 %.val.i.i506, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i507, i64 noundef %i.bvd, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !55965
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit.i508

bb.abv:                                           ; preds = %bb.abq
  %.sroa.022.sroa.0.0.copyload.i495 = load ptr, ptr %i.dh, align 8, !noalias !55949 ; 2 uses
  %.sroa.022.sroa.3.0..sroa_idx.i496 = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %.sroa.022.sroa.3.0.copyload.i497 = load i64, ptr %.sroa.022.sroa.3.0..sroa_idx.i496, align 8, !noalias !55949 ; 2 uses
  %.sroa.022.sroa.4.0..sroa_idx.i498 = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %.sroa.022.sroa.4.0.copyload.i499 = load i64, ptr %.sroa.022.sroa.4.0..sroa_idx.i498, align 8, !noalias !55949 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !55949
  %i.bve = icmp eq i64 %.sroa.022.sroa.3.0.copyload.i497, %.sroa.022.sroa.4.0.copyload.i499
  br i1 %i.bve, label %.thread.i511, label %.lr.ph.i500

.lr.ph.i500:                                      ; preds = %bb.abv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.022.sroa.0.0.copyload.i495) ]
  br label %bb.abw

bb.abw:                                           ; preds = %bb.aee, %.lr.ph.i500
  %.sroa.020.0326.i = phi i64 [ 0, %.lr.ph.i500 ], [ %.sroa.020.1.i510, %bb.aee ] ; 3 uses
  %.sroa.5256.0325.i = phi i64 [ %.sroa.022.sroa.3.0.copyload.i497, %.lr.ph.i500 ], [ %i.bvk, %bb.aee ] ; 3 uses
  %.sroa.8258.0324.i = phi i64 [ 0, %.lr.ph.i500 ], [ %i.bvl, %bb.aee ] ; 8 uses
  %i.bvf = lshr i64 %.sroa.5256.0325.i, 3
  %i.bvg = getelementptr inbounds nuw i8, ptr %.sroa.022.sroa.0.0.copyload.i495, i64 %i.bvf
  %i.bvh = load i8, ptr %i.bvg, align 1, !noalias !55966, !noundef !75
  %i.bvi = trunc i64 %.sroa.5256.0325.i to i8
  %i.bvj = and i8 %i.bvi, 7
  %i.bvk = add i64 %.sroa.5256.0325.i, 1          ; 2 uses
  %i.bvl = add nuw i64 %.sroa.8258.0324.i, 1
  %i.bvm = shl nuw i8 1, %i.bvj
  %i.bvn = and i8 %i.bvm, %i.bvh
  %cond.i501 = icmp eq i8 %i.bvn, 0
  br i1 %cond.i501, label %bb.aec, label %bb.aef

.thread.i511:                                     ; preds = %bb.aee, %bb.abv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !noalias !55949
  %i.bvo = getelementptr inbounds nuw i8, ptr %i.bti, i64 64 ; 2 uses
  %i.bvp = load i64, ptr %i.bvo, align 8, !noalias !55947, !noundef !75 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !55967)
  %.not.i.i.i512 = icmp slt i64 %i.bvp, 0
  br i1 %.not.i.i.i512, label %.invoke363.i, label %bb.abx, !prof !80

bb.abx:                                           ; preds = %.thread.i511
  %i.bvq = icmp eq i64 %i.bvp, 0
  br i1 %i.bvq, label %bb.aca, label %bb.aby

bb.aby:                                           ; preds = %bb.abx
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !55968
  %i.bvr = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.bvp, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !55968 ; 2 uses
  %i.bvs = icmp eq ptr %i.bvr, null
  br i1 %i.bvs, label %.invoke363.i, label %bb.abz

bb.abz:                                           ; preds = %bb.aby
  %i.bvt = ptrtoint ptr %i.bvr to i64
  br label %bb.aca

bb.aca:                                           ; preds = %bb.abz, %bb.abx
  %.sroa.10.0.i209.i513 = phi i64 [ %i.bvt, %bb.abz ], [ 1, %bb.abx ]
  %i.bvu = inttoptr i64 %.sroa.10.0.i209.i513 to ptr
  store i64 %i.bvp, ptr %i.dg, align 8, !alias.scope !55967, !noalias !55949
  %.sroa.4.0..sroa_idx.i.i514 = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 3 uses
  store ptr %i.bvu, ptr %.sroa.4.0..sroa_idx.i.i514, align 8, !alias.scope !55967, !noalias !55949
  %.sroa.5.0..sroa_idx.i210.i515 = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %.sroa.42.0..sroa_idx.i211.i516 = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  store i64 0, ptr %.sroa.42.0..sroa_idx.i211.i516, align 8, !alias.scope !55967, !noalias !55949
  %.sroa.53.0..sroa_idx.i.i517 = getelementptr inbounds nuw i8, ptr %i.dg, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i210.i515, i8 0, i64 16, i1 false), !alias.scope !55967, !noalias !55949
  store i64 %i.bvp, ptr %.sroa.53.0..sroa_idx.i.i517, align 8, !alias.scope !55967, !noalias !55949
  %i.bvv = getelementptr inbounds nuw i8, ptr %i.dg, i64 80 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bvv, i8 6, i64 24, i1 false), !alias.scope !55967, !noalias !55949
  %i.bvw = getelementptr inbounds nuw i8, ptr %i.bti, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !55969)
  %i.bvx = load i64, ptr %i.bvo, align 8, !alias.scope !55970, !noalias !55947, !noundef !75 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !55971)
  %i.bvy = getelementptr inbounds nuw i8, ptr %i.bti, i64 72
  %i.bvz = load ptr, ptr %i.bvy, align 8, !alias.scope !55972, !noalias !55973, !noundef !75 ; 5 uses
  %.not.i.i.i.i.i518 = icmp eq ptr %i.bvz, null
  br i1 %.not.i.i.i.i.i518, label %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15primitive_array14PrimitiveArrayNtNtB4_5types9UInt8TypeEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i, label %bb.acb

end_hunk_1
