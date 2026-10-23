Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.08?download=true
inline.NumInlined: 8661
inline.NumDeleted: 4050
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class30cycle_normalized_optional_type:bb.a

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class31single_descriptor_setter_domain(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(16) %4, ptr noalias noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(16) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 4                ; 4 uses
  %i.f = alloca [8 x i8], align 4                 ; 5 uses
  %i.g = alloca [16 x i8], align 4                ; 8 uses
  %i.h = alloca [16 x i8], align 4                ; 4 uses
  %i.i = alloca [16 x i8], align 4                ; 4 uses
  %i.j = alloca [16 x i8], align 4                ; 4 uses
  %i.k = alloca [16 x i8], align 4                ; 5 uses
  %i.l = alloca [12 x i8], align 4                ; 6 uses
  %i.m = alloca [28 x i8], align 4                ; 4 uses
  %i.n = alloca [16 x i8], align 4                ; 4 uses
  %i.o = alloca [16 x i8], align 4                ; 4 uses
  %i.p = alloca [16 x i8], align 4                ; 6 uses
  %i.q = alloca [16 x i8], align 4                ; 4 uses
  %i.r = alloca [16 x i8], align 4                ; 4 uses
  %i.s = alloca [16 x i8], align 4                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [16 x i8], align 4                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [16 x i8], align 4                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [16 x i8], align 4                ; 4 uses
  %i.z = alloca [16 x i8], align 4                ; 15 uses
  %i.aa = alloca [24 x i8], align 8               ; 13 uses
  %i.ab = alloca [24 x i8], align 8               ; 13 uses
  %i.ac = alloca [32 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 11 uses
  %i.ae = alloca [36 x i8], align 4               ; 7 uses
  %i.af = alloca [16 x i8], align 4               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false)
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type25member_lookup_with_policy(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.ae, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.s, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) @618, i64 noundef 7, i8 noundef 33)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.ag = load i32, ptr %i.ae, align 4, !range !24, !noundef !12
  %i.ah = icmp eq i32 %i.ag, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 29
  %i.aj = load i8, ptr %i.ai, align 1, !range !27
  %i.ak = trunc nuw i8 %i.aj to i1
  %or.cond = select i1 %i.ah, i1 true, i1 %i.ak
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  store i32 37, ptr %0, align 4
  br label %bb.bm

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.af, ptr noundef nonnull align 4 dereferenceable(16) %i.al, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callableNtB4_4Type22try_upcast_to_callable(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ac, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.af, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3)
  %i.am = load i64, ptr %i.ac, align 8, !range !40, !noundef !12
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  store i32 39, ptr %0, align 4
  br label %bb.bg

.body35:                                          ; preds = %bb.bd, %bb.h, %.thread43
  %.pn11 = phi { ptr, i32 } [ %i.ba, %bb.h ], [ %.pn42, %.thread43 ], [ %i.fv, %bb.bd ]
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable13CallableTypesEBH_.exit unwind label %bb.bk

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !15719, !noundef !12 ; 2 uses
  %i.ar = icmp ugt i64 %i.aq, 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !15719
  %.sink9.i.i = select i1 %i.ar, i64 %i.at, i64 %i.aq ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, i64 noundef %.sink9.i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 16)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.au = load i64, ptr %i.t, align 8, !range !40, !noundef !12
  %i.av = trunc nuw i64 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !range !76, !noundef !12 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  br i1 %i.av, label %bb.g, label %bb.i, !prof !17

bb.g:                                             ; preds = %bb.f
  %i.az = load i64, ptr %i.ay, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ax, i64 %i.az) #42
          to label %bb.bn unwind label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.be, %._crit_edge61
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body35

bb.i:                                             ; preds = %bb.f
  %i.bb = load ptr, ptr %i.ay, align 8, !nonnull !12, !noundef !12
  %i.bc = icmp samesign ule i64 %.sink9.i.i, %i.ax
  call void @llvm.assume(i1 %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i64 %i.ax, ptr %i.ab, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr %i.bb, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  store i64 0, ptr %i.be, align 8
  %i.bf = load i64, ptr %i.ap, align 8, !alias.scope !15720, !noundef !12 ; 2 uses
  %i.bg = icmp ugt i64 %i.bf, 1                   ; 2 uses
  %i.bh = load ptr, ptr %i.ad, align 8, !alias.scope !15720, !nonnull !12
  %i.bi = load i64, ptr %i.as, align 8, !alias.scope !15720
  %.sink10.i.i15 = select i1 %i.bg, ptr %i.bh, ptr %i.ad ; 2 uses
  %.sink9.i.i16 = select i1 %i.bg, i64 %i.bi, i64 %i.bf ; 2 uses
  %.idx = shl nuw nsw i64 %.sink9.i.i16, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %.sink10.i.i15, i64 %.idx
  %i.bk = icmp eq i64 %.sink9.i.i16, 0
  br i1 %i.bk, label %._crit_edge61, label %.lr.ph60

.lr.ph60:                                         ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !invariant.load !12, !alias.scope !15721, !nonnull !12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph60, %bb.bj
  %.sroa.0.058 = phi ptr [ %.sink10.i.i15, %.lr.ph60 ], [ %i.bz, %bb.bj ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.058, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i64 0, ptr %i.aa, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bl, align 8
  store i64 0, ptr %i.bm, align 8
  %i.ca = load i32, ptr %.sroa.0.058, align 4, !range !15, !noundef !12
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.058, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !noundef !12
  %i.cd = invoke noundef nonnull align 8 ptr %i.bo(ptr noundef nonnull %1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !75 ; 2 uses

.noexc:                                           ; preds = %bb.j
  %i.ce = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable1__NtB9_12CallableType10ingredient5CACHE, ptr noundef nonnull align 8 %i.cd)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %.noexc
  %i.cf = invoke noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeE6fieldsB12_(ptr noundef nonnull align 8 %i.ce, ptr noundef nonnull align 8 %i.cd, i32 noundef range(i32 1, 0) %i.ca, i32 noundef %i.cc)
          to label %_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable1__NtB8_12CallableType10signaturesDNtNtBc_2db2DbEL_EBc_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge61:                                    ; preds = %bb.bj, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  invoke void @_RINvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB6_16IntersectionType21bounded_from_elementsINtNtCscdodAO9FK5_5alloc3vec3VecNtB8_4TypeEB2i_EBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.w, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.v)
          to label %bb.bl unwind label %bb.h

_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable1__NtB8_12CallableType10signaturesDNtNtBc_2db2DbEL_EBc_.exit: ; preds = %.noexc17
  %i.cg = invoke { ptr, ptr } @_RNvXs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesRNtB5_17CallableSignatureNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.cf)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.k:                                             ; preds = %_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable1__NtB8_12CallableType10signaturesDNtNtBc_2db2DbEL_EBc_.exit
  %i.ch = extractvalue { ptr, ptr } %i.cg, 0      ; 3 uses
  %i.ci = extractvalue { ptr, ptr } %i.cg, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ch) ]
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.av
  %.sroa.02.057 = phi ptr [ %i.ck, %bb.av ], [ %i.ch, %bb.k ] ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.02.057, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !15722)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.02.057, i64 40 ; 2 uses
  %.val13.i = load ptr, ptr %i.cl, align 8, !alias.scope !15722, !nonnull !12, !noundef !12 ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.val13.i, i64 16 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !15723, !nonnull !12, !noundef !12 ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.val13.i, i64 24 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !noalias !15723, !noundef !12 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 2
  br i1 %i.cq, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.lr.ph
  %i.cr = getelementptr inbounds nuw i8, ptr %.val13.i, i64 32
  %i.cs = load i32, ptr %i.cr, align 8, !range !23, !noalias !15724, !noundef !12
  switch i32 %i.cs, label %bb.n [
    i32 1, label %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class34descriptor_setter_signature_domain0B7_.exit.i
    i32 4, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.ct = getelementptr inbounds nuw i8, ptr %.val13.i, i64 36
  %i.cu = load i32, ptr %i.ct, align 4, !noalias !15724, !noundef !12
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class34descriptor_setter_signature_domain0B7_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.not.not.not.i.not.i.i = icmp eq i64 %i.cp, 0
  br i1 %.not.not.not.i.not.i.i, label %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class34descriptor_setter_signature_domain0B7_.exit.i, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.n
  %.val.i.i.i = load i64, ptr %i.cn, align 8, !range !74, !noalias !15725, !noundef !12
  %6 = icmp eq i64 %.val.i.i.i, 2
  %spec.select = select i1 %6, i32 39, i32 37
  br label %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class34descriptor_setter_signature_domain0B7_.exit.i

_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class34descriptor_setter_signature_domain0B7_.exit.i: ; preds = %.lr.ph90, %bb.n, %bb.m, %bb.l
  %storemerge.i.i = phi i32 [ 39, %bb.m ], [ 39, %bb.l ], [ 37, %bb.n ], [ %spec.select, %.lr.ph90 ]
  store i32 %storemerge.i.i, ptr %i.z, align 4
  br label %bb.at

bb.o:                                             ; preds = %.lr.ph
  %.idx.i = mul i64 %i.cp, 72                     ; 3 uses
  %i.cw = getelementptr i8, ptr %i.cn, i64 %.idx.i ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cw) ]
  %i.cx = icmp eq i64 %.idx.i, 144
  br i1 %i.cx, label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters14get_positional.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cn, i64 144
  %i.cz = getelementptr inbounds nuw i8, ptr %.val13.i, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %.val13.i, i64 36
  br label %bb.p

bb.p:                                             ; preds = %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class34descriptor_setter_signature_domains_0B7_.exit.backedge.i.i, %.lr.ph.i.i
  %i.db = phi ptr [ %i.cy, %.lr.ph.i.i ], [ %i.dc, %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class34descriptor_setter_signature_domains_0B7_.exit.backedge.i.i ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 72 ; 2 uses
  %.val3.i.i = load i64, ptr %i.db, align 8, !range !74, !noalias !15726, !noundef !12 ; 2 uses
  switch i64 %.val3.i.i, label %default.unreachable [
    i64 0, label %bb.q
    i64 1, label %bb.q
    i64 2, label %bb.r
    i64 3, label %bb.q
    i64 4, label %bb.r
  ]

default.unreachable:                              ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p, %bb.p, %bb.p
  %i.dd = getelementptr i8, ptr %i.db, i64 24
  %.val4.i.i = load i32, ptr %i.dd, align 8, !noalias !15726
  %.not.i.i.i = icmp eq i32 %.val4.i.i, -1
  br i1 %.not.i.i.i, label %bb.r, label %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class34descriptor_setter_signature_domains_0B7_.exit.backedge.i.i

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.p
  %i.de = load i32, ptr %i.cz, align 8, !range !23, !noalias !15726, !noundef !12
  switch i32 %i.de, label %bb.t [
    i32 0, label %.split.i.i
    i32 1, label %.split.i.i
    i32 4, label %bb.s
  ]

.split.i.i:                                       ; preds = %bb.s, %bb.r, %bb.r
  switch i64 %.val3.i.i, label %bb.t [
    i64 4, label %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class34descriptor_setter_signature_domains_0B7_.exit.backedge.i.i
    i64 2, label %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class34descriptor_setter_signature_domains_0B7_.exit.backedge.i.i
  ]

_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class34descriptor_setter_signature_domains_0B7_.exit.backedge.i.i: ; preds = %.split.i.i, %.split.i.i, %bb.q
  %i.df = icmp eq ptr %i.dc, %i.cw
  br i1 %i.df, label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters14get_positional.exit.i, label %bb.p

bb.s:                                             ; preds = %bb.r
  %i.dg = load i32, ptr %i.da, align 4, !noalias !15726, !noundef !12
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %.split.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s, %.split.i.i, %bb.r
  store i32 37, ptr %i.z, align 4
  br label %bb.at

_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters14get_positional.exit.i: ; preds = %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class34descriptor_setter_signature_domains_0B7_.exit.backedge.i.i, %bb.o
  %i.di = load i64, ptr %i.cn, align 8, !range !74, !noalias !15723, !noundef !12
  %switch.i.i = icmp samesign ugt i64 %i.di, 1
  br i1 %switch.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters14get_positional.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !15723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !15723
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.dj, i64 16, i1 false), !alias.scope !15727, !noalias !15723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !15723
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false)
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type18bind_self_typevars(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.p, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.o, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.i)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc19:                                         ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !15723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !15723
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.02.057, i64 48
  %.val19.i = load i32, ptr %i.dk, align 8, !alias.scope !15722, !noundef !12 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.02.057, i64 52
  %.val20.i = load i32, ptr %i.dl, align 4, !alias.scope !15722 ; 3 uses
  %.not.i.i = icmp eq i32 %.val19.i, 0            ; 2 uses
  br i1 %.not.i.i, label %_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class26contains_signature_typevar.exit.thread.i, label %_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class26contains_signature_typevar.exit.i

_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class26contains_signature_typevar.exit.i: ; preds = %.noexc19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !15728
  store i32 %.val19.i, ptr %i.f, align 4, !noalias !15729
  store i32 %.val20.i, ptr %i.bp, align 4, !noalias !15729
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15729
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.p, i64 16, i1 false), !noalias !15723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15729
  store ptr %i.f, ptr %i.d, align 8, !noalias !15729
  store ptr %1, ptr %i.bq, align 8, !noalias !15729
  store ptr %2, ptr %i.br, align 8, !noalias !15729
  %i.dm = invoke noundef zeroext i1 @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7visitor13any_over_typeNCNCNvNtB4_14protocol_class26contains_signature_typevar00EB6_(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.e, i1 noundef zeroext true, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc20:                                         ; preds = %_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class26contains_signature_typevar.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15728
  br i1 %i.dm, label %bb.z, label %_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class26contains_signature_typevar.exit.thread.i

bb.v:                                             ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters14get_positional.exit.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.val13.i, i64 32
  %i.do = load i32, ptr %i.dn, align 8, !range !23, !noalias !15730, !noundef !12
  switch i32 %i.do, label %bb.x [
    i32 1, label %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class34descriptor_setter_signature_domain0B7_.exit25.i
    i32 4, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.dp = getelementptr inbounds nuw i8, ptr %.val13.i, i64 36
  %i.dq = load i32, ptr %i.dp, align 4, !noalias !15730, !noundef !12
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class34descriptor_setter_signature_domain0B7_.exit25.i, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.not.not.not.i.not.i22.i82 = icmp eq i64 %.idx.i, 0
  br i1 %.not.not.not.i.not.i22.i82, label %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class34descriptor_setter_signature_domain0B7_.exit25.i, label %.lr.ph84

bb.y:                                             ; preds = %.lr.ph84
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dt, i64 72 ; 2 uses
  %.not.not.not.i.not.i22.i = icmp eq ptr %i.ds, %i.cw
  br i1 %.not.not.not.i.not.i22.i, label %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class34descriptor_setter_signature_domain0B7_.exit25.i, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.x, %bb.y
  %i.dt = phi ptr [ %i.ds, %bb.y ], [ %i.cn, %bb.x ] ; 2 uses
  %.val.i.i23.i = load i64, ptr %i.dt, align 8, !range !74, !noalias !15731, !noundef !12
  %i.du = icmp eq i64 %.val.i.i23.i, 2
  br i1 %i.du, label %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class34descriptor_setter_signature_domain0B7_.exit25.i, label %bb.y

_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class34descriptor_setter_signature_domain0B7_.exit25.i: ; preds = %bb.y, %.lr.ph84, %bb.x, %bb.w, %bb.v
  %storemerge.i24.i = phi i32 [ 39, %bb.w ], [ 39, %bb.v ], [ 37, %bb.x ], [ 39, %.lr.ph84 ], [ 37, %bb.y ]
  store i32 %storemerge.i24.i, ptr %i.z, align 4
  br label %bb.at

_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class26contains_signature_typevar.exit.thread.i: ; preds = %.noexc19, %.noexc20
  %i.dv = invoke noundef zeroext i1 @_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_4Type16is_assignable_to(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.q, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.p)
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc21:                                         ; preds = %_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class26contains_signature_typevar.exit.thread.i
  br i1 %i.dv, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %.noexc20
  store i32 39, ptr %i.z, align 4
  br label %bb.ad

bb.aa:                                            ; preds = %.noexc21
  store i32 37, ptr %i.z, align 4
  br label %bb.ad

bb.ab:                                            ; preds = %.noexc21
  %i.dw = load i64, ptr %i.co, align 8, !noalias !15732, !noundef !12
  %i.dx = icmp ugt i64 %i.dw, 1
  br i1 %i.dx, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.dy = load ptr, ptr %i.cm, align 8, !noalias !15732, !nonnull !12, !noundef !12 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 72
  %i.ea = load i64, ptr %i.dz, align 8, !range !74, !noalias !15732, !noundef !12
  %switch.i27.i = icmp samesign ult i64 %i.ea, 2
  br i1 %switch.i27.i, label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters14get_positional.exit29.i, label %bb.ae

bb.ad:                                            ; preds = %bb.am, %bb.aj, %_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class26contains_signature_typevar.exit32.thread.i, %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class34descriptor_setter_signature_domain0B7_.exit, %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !15723
  br label %bb.at

_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters14get_positional.exit29.i: ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !15723
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.eb, i64 16, i1 false), !alias.scope !15733, !noalias !15732
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !15723
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false)
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type18bind_self_typevars(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.n, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.h)
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc22:                                         ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters14get_positional.exit29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !15723
  br i1 %.not.i.i, label %_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class26contains_signature_typevar.exit32.thread.i, label %_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class26contains_signature_typevar.exit32.i

_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class26contains_signature_typevar.exit32.i: ; preds = %.noexc22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15734
  store i32 %.val19.i, ptr %i.c, align 4, !noalias !15735
  store i32 %.val20.i, ptr %i.bs, align 4, !noalias !15735
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15735
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.g, i64 16, i1 false), !noalias !15723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15735
  store ptr %i.c, ptr %i.a, align 8, !noalias !15735
  store ptr %1, ptr %i.bt, align 8, !noalias !15735
  store ptr %2, ptr %i.bu, align 8, !noalias !15735
  %i.ec = invoke noundef zeroext i1 @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7visitor13any_over_typeNCNCNvNtB4_14protocol_class26contains_signature_typevar00EB6_(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.b, i1 noundef zeroext true, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

end_hunk_0
