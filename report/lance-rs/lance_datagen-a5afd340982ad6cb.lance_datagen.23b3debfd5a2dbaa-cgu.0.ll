Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_datagen-a5afd340982ad6cb.lance_datagen.23b3debfd5a2dbaa-cgu.0?download=true
inline.NumInlined: 5943
inline.NumDeleted: 2255
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RNvXsC_NtCs342JT7D9NXi_13lance_datagen9generatorNtB5_29VariableRandomBinaryGeneratorNtB5_14ArrayGenerator8generate:bb.a
  %i.dk = icmp eq i64 %i.dj, 1
  br i1 %i.dk, label %bb.af, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit56

bb.af:                                            ; preds = %bb.ae
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit56

bb.ag:                                            ; preds = %bb.ad
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.534.0..sroa_idx, i64 80, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.433.0..sroa_idx, i64 39, i1 false)
  store i64 1, ptr %i.e, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i8 %i.df, ptr %i.dm, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !10589
  %i.dn = call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !10589 ; 3 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.ah, label %bb.ak, !prof !11

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #37
          to label %.noexc57 unwind label %bb.ai

.noexc57:                                         ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ah
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtBI_5types17GenericBinaryTypelEEECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.dm)
          to label %.body48 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.ak:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.dn, ptr noundef nonnull align 8 dereferenceable(136) %i.e, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dn, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @28, ptr %i.ds, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !10590)
  call void @llvm.experimental.noalias.scope.decl(metadata !10591)
  %i.dt = load ptr, ptr %i.l, align 8, !alias.scope !10592, !nonnull !10, !noundef !10
  %i.du = atomicrmw sub ptr %i.dt, i64 1 release, align 8, !noalias !10592
  %i.dv = icmp eq i64 %i.du, 1
  br i1 %i.dv, label %bb.al, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit56

bb.al:                                            ; preds = %bb.ak
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit56

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit56: ; preds = %bb.al, %bb.ak, %bb.b, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.am:                                            ; preds = %bb.an, %bb.e
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs342JT7D9NXi_13lance_datagen.exit: ; preds = %bb.aa, %.thread
  %.pn66 = phi { ptr, i32 } [ %i.cu, %.thread ], [ %i.db, %bb.aa ] ; 2 uses
  %i.dx = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !noalias !10593
  %i.dy = icmp eq i64 %i.dx, 1
  br i1 %i.dy, label %bb.an, label %.body48

bb.an:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs342JT7D9NXi_13lance_datagen.exit
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body48 unwind label %bb.am

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit: ; preds = %.body48, %bb.e
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsC_NtCs342JT7D9NXi_13lance_datagen9generatorNtB5_29VariableRandomBinaryGeneratorNtB5_14ArrayGenerator9data_type(ptr noalias noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(40) %0) unnamed_addr #8 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsD_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_20CycleBinaryGeneratorINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtB7_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @798, i64 noundef 20)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @383, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @799)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @801, i64 noundef 7, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @800)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @515, i64 noundef 9, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @512)
  %i.h = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) @802, i64 noundef 5, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @767)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) @635, i64 noundef 3, ptr noundef nonnull %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @803)
  %i.k = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i64, i64 } @_RNvXsF_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_20CycleBinaryGeneratorINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEENtB5_14ArrayGenerator18element_size_bytesB7_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !25, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = insertvalue { i64, i64 } poison, i64 %i.a, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %i.c, 1
  ret { i64, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXsF_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_20CycleBinaryGeneratorINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEENtB5_14ArrayGenerator8generateB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %1, i64 noundef %2, ptr noalias nofree readnone align 8 captures(none) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [48 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 13 uses
  %i.d = alloca [56 x i8], align 8                ; 11 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [136 x i8], align 8               ; 6 uses
  %i.h = alloca [120 x i8], align 8               ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !10, !noundef !10 ; 16 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noundef !10 ; 9 uses
  %.idx = shl i64 %i.q, 3                         ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !noundef !10 ; 11 uses
  %i.u = icmp eq i64 %2, 0                        ; 3 uses
  br i1 %i.u, label %_RINvXs7_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipINtNtB8_5cycle5CycleINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterjEEEEENtB6_8SpecTake9spec_foldjNCINvXsK_NtNtBa_6traits5accumjNtB31_3Sum3sumBO_E0ECs342JT7D9NXi_13lance_datagen.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i.preheader, label %bb.f

._crit_edge.i.i.i.preheader:                      ; preds = %bb.b, %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterjEEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit.i.i.i
  %.ph225 = phi ptr [ %i.bv, %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterjEEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit.i.i.i ], [ %i.o, %bb.b ]
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.preheader, %bb.c
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %._crit_edge.i.i.i.preheader ] ; 2 uses
  %.promoted59.i.i.i.i = phi i64 [ %i.y, %bb.c ], [ %2, %._crit_edge.i.i.i.preheader ] ; 3 uses
  %i.v = phi ptr [ %i.x, %bb.c ], [ %.ph225, %._crit_edge.i.i.i.preheader ] ; 3 uses
  %.sroa.01.0.i.i.i.i.i.i = phi i64 [ %i.z, %bb.c ], [ 0, %._crit_edge.i.i.i.preheader ] ; 4 uses
  %i.w = icmp eq ptr %i.v, %i.r
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.val10.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !noalias !10699, !noundef !10
  %i.y = add i64 %.promoted59.i.i.i.i, -1         ; 2 uses
  %i.z = add i64 %.val10.i.i.i.i.i.i, %.sroa.01.0.i.i.i.i.i.i ; 2 uses
  %i.aa = icmp eq i64 %i.y, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.aa, label %_RINvXs7_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipINtNtB8_5cycle5CycleINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterjEEEEENtB6_8SpecTake9spec_foldjNCINvXsK_NtNtBa_6traits5accumjNtB31_3Sum3sumBO_E0ECs342JT7D9NXi_13lance_datagen.exit, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.ab = icmp eq i64 %i.q, 0
  br i1 %i.ab, label %_RINvXs7_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipINtNtB8_5cycle5CycleINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterjEEEEENtB6_8SpecTake9spec_foldjNCINvXsK_NtNtBa_6traits5accumjNtB31_3Sum3sumBO_E0ECs342JT7D9NXi_13lance_datagen.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.d
  %i.ac = xor i64 %indvar, -1
  %i.ad = add i64 %2, %i.ac
  %i.ae = add i64 %.idx, -8
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 %i.af) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ag, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader215, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %i.ai = and i64 %i.ah, 3                        ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  %i.ak = select i1 %i.aj, i64 4, i64 %i.ai
  %n.vec = sub nsw i64 %i.ah, %i.ak               ; 3 uses
  %4 = shl i64 %n.vec, 3
  %5 = getelementptr i8, ptr %i.o, i64 %4
  %6 = sub i64 %.promoted59.i.i.i.i, %n.vec
  %i.al = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.sroa.01.0.i.i.i.i.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.al, %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi190 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %i.am = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.am ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !noalias !10700
  %wide.load191 = load <2 x i64>, ptr %i.an, align 8, !noalias !10700
  %i.ao = add <2 x i64> %wide.load, %vec.phi      ; 2 uses
  %i.ap = add <2 x i64> %wide.load191, %vec.phi190 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !10616

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ap, %i.ao
  %i.ar = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.lr.ph.i.i.i.i.preheader215

.lr.ph.i.i.i.i.preheader215:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.ph216.a = phi i64 [ %.sroa.01.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.ph216 = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %5, %middle.block ]
  %.ph217 = phi i64 [ %.promoted59.i.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %6, %middle.block ] ; 2 uses
  br label %.lr.ph.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.r
  %indvar.next233 = add i64 %indvar232, 1
  br i1 %i.at, label %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.preheader, label %.lr.ph.i.i.i.i, !llvm.loop !10617

_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.preheader: ; preds = %bb.e
  %i.au = add i64 %.ph217, -2
  %xtraiter = and i64 %i.bd, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.outer.prol.loopexit, label %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.peel.prol

_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.peel.prol: ; preds = %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.preheader
  %i.av = icmp samesign eq i64 %.idx, 0
  br i1 %i.av, label %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.prol, label %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.outer.prol.loopexit.unr-lcssa

_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.prol: ; preds = %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.peel.prol, %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.prol
  br label %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.prol, !llvm.loop !10618

_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.outer.prol.loopexit.unr-lcssa: ; preds = %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.peel.prol
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val10.i.i31.i.i.i.i.prol = load i64, ptr %i.o, align 8, !noalias !10701, !noundef !10
  %i.ax = add i64 %8, -2
  %i.ay = add i64 %.val10.i.i31.i.i.i.i.prol, %i.be ; 2 uses
  br label %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.outer.prol.loopexit

_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.outer.prol.loopexit: ; preds = %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.outer.prol.loopexit.unr-lcssa, %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.preheader
  %.lcssa214.unr = phi i64 [ poison, %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.preheader ], [ %i.ay, %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.outer.prol.loopexit.unr-lcssa ]
  %.ph.unr = phi i64 [ %i.bd, %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.preheader ], [ %i.ax, %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.outer.prol.loopexit.unr-lcssa ]
  %.ph212.unr = phi ptr [ %i.o, %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.preheader ], [ %i.aw, %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.outer.prol.loopexit.unr-lcssa ]
  %.sroa.01.0.i.i30.i.i.i.i.ph.unr = phi i64 [ %i.be, %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.preheader ], [ %i.ay, %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.outer.prol.loopexit.unr-lcssa ]
  %i.az = icmp eq i64 %i.au, %indvar232
  br i1 %i.az, label %_RINvXs7_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipINtNtB8_5cycle5CycleINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterjEEEEENtB6_8SpecTake9spec_foldjNCINvXsK_NtNtBa_6traits5accumjNtB31_3Sum3sumBO_E0ECs342JT7D9NXi_13lance_datagen.exit, label %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.preheader.new

_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.preheader.new: ; preds = %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.outer.prol.loopexit
  %i.ba = icmp samesign eq i64 %.idx, 0
  %i.bb = icmp samesign eq i64 %.idx, 0
  br label %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.outer

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader215, %bb.e
  %indvar232 = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader215 ], [ %indvar.next233, %bb.e ] ; 2 uses
  %i.bc = phi i64 [ %.ph216.a, %.lr.ph.i.i.i.i.preheader215 ], [ %i.be, %bb.e ]
  %7 = phi ptr [ %.ph216, %.lr.ph.i.i.i.i.preheader215 ], [ %i.as, %bb.e ] ; 2 uses
  %8 = phi i64 [ %.ph217, %.lr.ph.i.i.i.i.preheader215 ], [ %i.bd, %bb.e ] ; 2 uses
  %.val11.i.i.i.i.i.i = load i64, ptr %7, align 8, !noalias !10700, !noundef !10
  %i.bd = add i64 %8, -1                          ; 4 uses
  %i.be = add i64 %.val11.i.i.i.i.i.i, %i.bc      ; 4 uses
  %i.bf = icmp eq i64 %i.bd, 0
  br i1 %i.bf, label %_RINvXs7_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipINtNtB8_5cycle5CycleINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterjEEEEENtB6_8SpecTake9spec_foldjNCINvXsK_NtNtBa_6traits5accumjNtB31_3Sum3sumBO_E0ECs342JT7D9NXi_13lance_datagen.exit, label %bb.e

_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i: ; preds = %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.outer, %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i
  br i1 %i.ba, label %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i, label %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.outer.1, !llvm.loop !10618

_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.outer.1: ; preds = %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i, %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.outer
  %.lcssa213 = phi ptr [ %.ph212, %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.outer ], [ %i.o, %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.lcssa213, i64 8 ; 2 uses
  %.val10.i.i31.i.i.i.i = load i64, ptr %.lcssa213, align 8, !noalias !10701, !noundef !10
  %i.bh = add i64 %.val10.i.i31.i.i.i.i, %.sroa.01.0.i.i30.i.i.i.i.ph
  %i.bi = icmp eq ptr %i.bg, %i.r
  br i1 %i.bi, label %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.1, label %.loopexit.1

_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.1: ; preds = %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.outer.1, %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.1
  br i1 %i.bb, label %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.1, label %.loopexit.1, !llvm.loop !10618

.loopexit.1:                                      ; preds = %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.1, %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.outer.1
  %.lcssa213.1 = phi ptr [ %i.bg, %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.outer.1 ], [ %i.o, %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.1 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.lcssa213.1, i64 8
  %.val10.i.i31.i.i.i.i.1 = load i64, ptr %.lcssa213.1, align 8, !noalias !10701, !noundef !10
  %i.bk = add i64 %.ph, -2                        ; 2 uses
  %i.bl = add i64 %.val10.i.i31.i.i.i.i.1, %i.bh  ; 2 uses
  %i.bm = icmp eq i64 %i.bk, 0
  br i1 %i.bm, label %_RINvXs7_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipINtNtB8_5cycle5CycleINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterjEEEEENtB6_8SpecTake9spec_foldjNCINvXsK_NtNtBa_6traits5accumjNtB31_3Sum3sumBO_E0ECs342JT7D9NXi_13lance_datagen.exit, label %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.outer

_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.outer: ; preds = %.loopexit.1, %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.preheader.new
  %.ph = phi i64 [ %.ph.unr, %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.preheader.new ], [ %i.bk, %.loopexit.1 ]
  %.ph212 = phi ptr [ %.ph212.unr, %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.preheader.new ], [ %i.bj, %.loopexit.1 ] ; 2 uses
  %.sroa.01.0.i.i30.i.i.i.i.ph = phi i64 [ %.sroa.01.0.i.i30.i.i.i.i.ph.unr, %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.preheader.new ], [ %i.bl, %.loopexit.1 ]
  %i.bn = icmp eq ptr %.ph212, %i.r
  br i1 %i.bn, label %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i, label %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.outer.1

bb.f:                                             ; preds = %bb.b
  %i.bo = add i64 %i.t, -1                        ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.bo, i64 %i.q) ; 2 uses
  %i.bp = sub nuw i64 %i.bo, %.sroa.0.0.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterjEEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i.i.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.f
  %i.bq = icmp eq i64 %i.q, 0
  br i1 %i.bq, label %_RINvXs7_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipINtNtB8_5cycle5CycleINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterjEEEEENtB6_8SpecTake9spec_foldjNCINvXsK_NtNtBa_6traits5accumjNtB31_3Sum3sumBO_E0ECs342JT7D9NXi_13lance_datagen.exit, label %.preheader.split.i.i.i.i.i

.preheader.split.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i, %.preheader.split.i.i.i.i.i
  %.sroa.03.0.i.i.i.i.i = phi i64 [ %i.br, %.preheader.split.i.i.i.i.i ], [ %i.bp, %.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i12.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.03.0.i.i.i.i.i, i64 %i.q) ; 2 uses
  %i.br = sub nuw i64 %.sroa.03.0.i.i.i.i.i, %.sroa.0.0.i.i.i12.i.i.i.i.i ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not10.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterjEEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i.i.i.i, label %.preheader.split.i.i.i.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterjEEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i.i.i.i: ; preds = %.preheader.split.i.i.i.i.i, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i.i.pn = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i, %bb.f ], [ %.sroa.0.0.i.i.i12.i.i.i.i.i, %.preheader.split.i.i.i.i.i ]
  %.idx93 = shl nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i.i.pn, 3 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx93
  %i.bt = icmp samesign eq i64 %.idx93, %.idx
  br i1 %i.bt, label %bb.g, label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterjEEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit.i.i.i

bb.g:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterjEEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i.i.i.i
  %i.bu = icmp eq i64 %i.q, 0
  br i1 %i.bu, label %_RINvXs7_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipINtNtB8_5cycle5CycleINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterjEEEEENtB6_8SpecTake9spec_foldjNCINvXsK_NtNtBa_6traits5accumjNtB31_3Sum3sumBO_E0ECs342JT7D9NXi_13lance_datagen.exit, label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterjEEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit.i.i.i

_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterjEEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit.i.i.i: ; preds = %bb.g, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterjEEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i.i.i.i
  %.val.sink9.i.i.i.i.i = phi ptr [ %i.bs, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterjEEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i.i.i.i ], [ %i.o, %bb.g ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.sink9.i.i.i.i.i, i64 8
  br label %._crit_edge.i.i.i.preheader

_RINvXs7_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipINtNtB8_5cycle5CycleINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterjEEEEENtB6_8SpecTake9spec_foldjNCINvXsK_NtNtBa_6traits5accumjNtB31_3Sum3sumBO_E0ECs342JT7D9NXi_13lance_datagen.exit: ; preds = %bb.c, %.lr.ph.i.i.i.i, %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.outer.prol.loopexit, %.loopexit.1, %bb.a, %bb.d, %.preheader.i.i.i.i.i, %bb.g
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.a ], [ %i.bl, %.loopexit.1 ], [ %.sroa.01.0.i.i.i.i.i.i, %bb.d ], [ 0, %.preheader.i.i.i.i.i ], [ 0, %bb.g ], [ %i.be, %.lr.ph.i.i.i.i ], [ %.lcssa214.unr, %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator8try_foldjQNCINvNvXs_NtB7_4takeINtB2o_4TakepEB1v_8try_fold5checkjjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jjNCINvXsK_NtB1z_5accumjNtB4r_3Sum3sumIB2z_INtNtB7_4skip4SkipINtNtB7_5cycle5CycleBP_EEEE0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEECs342JT7D9NXi_13lance_datagen.exit34.i.i.i.i.outer.prol.loopexit ], [ %i.z, %bb.c ] ; 4 uses
  %.not = icmp ugt i64 %i.t, %i.q
  br i1 %.not, label %bb.h, label %bb.i, !prof !10702

bb.h:                                             ; preds = %_RINvXs7_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipINtNtB8_5cycle5CycleINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterjEEEEENtB6_8SpecTake9spec_foldjNCINvXsK_NtNtBa_6traits5accumjNtB31_3Sum3sumBO_E0ECs342JT7D9NXi_13lance_datagen.exit
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.t, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @806) #37
  unreachable

bb.i:                                             ; preds = %_RINvXs7_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipINtNtB8_5cycle5CycleINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterjEEEEENtB6_8SpecTake9spec_foldjNCINvXsK_NtNtBa_6traits5accumjNtB31_3Sum3sumBO_E0ECs342JT7D9NXi_13lance_datagen.exit
  %i.bw = icmp eq i64 %i.t, 0
  br i1 %i.bw, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs342JT7D9NXi_13lance_datagen.exit.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.i
  %min.iters.check194 = icmp ult i64 %i.t, 4
  br i1 %min.iters.check194, label %.preheader.preheader208, label %vector.ph195

vector.ph195:                                     ; preds = %.preheader.preheader
  %n.vec196 = and i64 %i.t, -4                    ; 3 uses
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph195
  %index198 = phi i64 [ 0, %vector.ph195 ], [ %index.next203, %vector.body197 ] ; 2 uses
  %vec.phi199 = phi <2 x i64> [ zeroinitializer, %vector.ph195 ], [ %i.bz, %vector.body197 ]
  %vec.phi200 = phi <2 x i64> [ zeroinitializer, %vector.ph195 ], [ %i.ca, %vector.body197 ]
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index198 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %wide.load201 = load <2 x i64>, ptr %i.bx, align 8
  %wide.load202 = load <2 x i64>, ptr %i.by, align 8
  %i.bz = add <2 x i64> %wide.load201, %vec.phi199 ; 2 uses
  %i.ca = add <2 x i64> %wide.load202, %vec.phi200 ; 2 uses
  %index.next203 = add nuw i64 %index198, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next203, %n.vec196
  br i1 %i.cb, label %middle.block204, label %vector.body197, !llvm.loop !10624

middle.block204:                                  ; preds = %vector.body197
  %bin.rdx205 = add <2 x i64> %i.ca, %i.bz
  %i.cc = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx205) ; 2 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec196
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs342JT7D9NXi_13lance_datagen.exit, label %.preheader.preheader208

.preheader.preheader208:                          ; preds = %.preheader.preheader, %middle.block204
  %.sroa.04.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec196, %middle.block204 ]
  %.sroa.02.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %i.cc, %middle.block204 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader208, %.preheader
  %.sroa.04.0.i = phi i64 [ %i.cf, %.preheader ], [ %.sroa.04.0.i.ph, %.preheader.preheader208 ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.ce, %.preheader ], [ %.sroa.02.0.i.ph, %.preheader.preheader208 ]
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.04.0.i
  %.val.i18 = load i64, ptr %i.cd, align 8, !noundef !10
  %i.ce = add i64 %.val.i18, %.sroa.02.0.i        ; 2 uses
  %i.cf = add nuw i64 %.sroa.04.0.i, 1            ; 2 uses
  %i.cg = icmp eq i64 %i.cf, %i.t
  br i1 %i.cg, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs342JT7D9NXi_13lance_datagen.exit, label %.preheader, !llvm.loop !10625

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs342JT7D9NXi_13lance_datagen.exit: ; preds = %.preheader, %middle.block204
  %.lcssa = phi i64 [ %i.cc, %middle.block204 ], [ %i.ce, %.preheader ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !10, !noundef !10 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ck = load i64, ptr %i.cj, align 8, !noundef !10 ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ck ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10703
  %i.cm = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %i.cm, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtB1z_6copied6CopiedINtNtB1z_4skip4SkipINtNtB1z_5cycle5CycleINtNtNtB1D_5slice4iter4IterhEEEEEE9from_iterCs342JT7D9NXi_13lance_datagen.exit, label %bb.j

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs342JT7D9NXi_13lance_datagen.exit.thread: ; preds = %bb.i
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cq = load i64, ptr %i.cp, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10704
  %i.cr = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %i.cr, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtB1z_6copied6CopiedINtNtB1z_4skip4SkipINtNtB1z_5cycle5CycleINtNtNtB1D_5slice4iter4IterhEEEEEE9from_iterCs342JT7D9NXi_13lance_datagen.exit, label %.thread

.thread:                                          ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs342JT7D9NXi_13lance_datagen.exit.thread
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cq
  %i.ct = add i64 %.sroa.0.0.i.i, -1
  br label %bb.k

bb.j:                                             ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs342JT7D9NXi_13lance_datagen.exit
  %i.cu = add i64 %.sroa.0.0.i.i, -1              ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %.lcssa, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4skipINtB4_4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.i.i.i, !prof !10705

bb.k:                                             ; preds = %.thread, %bb.j
  %i.cv = phi i64 [ %i.ct, %.thread ], [ %i.cu, %bb.j ]
  %i.cw = phi ptr [ %i.co, %.thread ], [ %i.ci, %bb.j ] ; 3 uses
  %i.cx = phi ptr [ %i.cs, %.thread ], [ %i.cl, %bb.j ] ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtB1z_6copied6CopiedINtNtB1z_4skip4SkipINtNtB1z_5cycle5CycleINtNtNtB1D_5slice4iter4IterhEEEEEE9from_iterCs342JT7D9NXi_13lance_datagen.exit, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4skipINtB4_4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.thread.i.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4skipINtB4_4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.i.i.i: ; preds = %bb.j
  %.sroa.0.0.i.i.i.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 1, 0) %.lcssa, i64 %i.ck) ; 2 uses
  %i.cz = sub nuw i64 %.lcssa, %.sroa.0.0.i.i.i.i37 ; 2 uses
  %.not.i.i38 = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i38, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4skipINtB4_4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.i.i.i
  %i.da = icmp samesign eq i64 %i.ck, 0
  br i1 %i.da, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtB1z_6copied6CopiedINtNtB1z_4skip4SkipINtNtB1z_5cycle5CycleINtNtNtB1D_5slice4iter4IterhEEEEEE9from_iterCs342JT7D9NXi_13lance_datagen.exit, label %.preheader.split.i.i

.preheader.split.i.i:                             ; preds = %.preheader.i.i, %.preheader.split.i.i
  %.sroa.03.0.i.i = phi i64 [ %i.db, %.preheader.split.i.i ], [ %i.cz, %.preheader.i.i ] ; 2 uses
  %.sroa.0.0.i.i12.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 1, 0) %.sroa.03.0.i.i, i64 %i.ck) ; 2 uses
  %i.db = sub nuw i64 %.sroa.03.0.i.i, %.sroa.0.0.i.i12.i.i ; 2 uses
  %.not10.i.i = icmp eq i64 %i.db, 0
  br i1 %.not10.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i, label %.preheader.split.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i: ; preds = %.preheader.split.i.i, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4skipINtB4_4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.i.i.i
  %.sroa.0.0.i.i.i.i37.pn = phi i64 [ %.sroa.0.0.i.i.i.i37, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4skipINtB4_4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.i.i.i ], [ %.sroa.0.0.i.i12.i.i, %.preheader.split.i.i ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sroa.0.0.i.i.i.i37.pn
  %i.dd = icmp samesign eq i64 %.sroa.0.0.i.i.i.i37.pn, %i.ck
  br i1 %i.dd, label %bb.l, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4skipINtB4_4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.thread.i.i.i

bb.l:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i
  %i.de = icmp samesign eq i64 %i.ck, 0
  br i1 %i.de, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtB1z_6copied6CopiedINtNtB1z_4skip4SkipINtNtB1z_5cycle5CycleINtNtNtB1D_5slice4iter4IterhEEEEEE9from_iterCs342JT7D9NXi_13lance_datagen.exit, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4skipINtB4_4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.thread.i.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4skipINtB4_4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.thread.i.i.i: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i, %bb.l, %bb.k
  %i.df = phi i64 [ %i.cv, %bb.k ], [ %i.cu, %bb.l ], [ %i.cu, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i ] ; 3 uses
  %i.dg = phi ptr [ %i.cw, %bb.k ], [ %i.ci, %bb.l ], [ %i.ci, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i ] ; 6 uses
  %i.dh = phi ptr [ %i.cx, %bb.k ], [ %i.cl, %bb.l ], [ %i.cl, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i ] ; 6 uses
  %.sroa.0.0.i5.i.i.i = phi ptr [ %i.cw, %bb.k ], [ %i.ci, %bb.l ], [ %i.dc, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i ] ; 2 uses
  %i.di = load i8, ptr %.sroa.0.0.i5.i.i.i, align 1, !noalias !10706, !noundef !10
  %i.dj = icmp eq i64 %i.df, 0                    ; 2 uses
  br i1 %i.dj, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtB6_4skip4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterhEEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs342JT7D9NXi_13lance_datagen.exit.thread.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtB6_4skip4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterhEEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs342JT7D9NXi_13lance_datagen.exit.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtB6_4skip4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterhEEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs342JT7D9NXi_13lance_datagen.exit.i: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4skipINtB4_4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.thread.i.i.i
  %i.dk = icmp ne ptr %i.dh, %i.dg
  %spec.select6.i.i.i.i = sext i1 %i.dk to i64
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.df, i64 %spec.select6.i.i.i.i)
end_hunk_0
