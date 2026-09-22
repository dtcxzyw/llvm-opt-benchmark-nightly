Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_arrow_stats-82d00fd98ff02bc8.lance_arrow_stats.b954386bd0024ae1-cgu.0?download=true
inline.NumInlined: 392
inline.NumDeleted: 293
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsfUv75jb5FCv_17lance_arrow_stats:bb.a
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArceE9drop_slowCs8SUNSmrkv52_12arrow_schema(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !148, !nonnull !6, !noundef !6
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !148
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.i:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !151, !nonnull !6, !noundef !6
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !151
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.k:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !154, !nonnull !6, !noundef !6
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !154
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.l, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.m:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !157, !nonnull !6, !noundef !6
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !157
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.n, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.n:                                             ; preds = %bb.m
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.w)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.o:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !160, !nonnull !6, !noundef !6
  %i.ac = atomicrmw sub ptr %i.ab, i64 1 release, align 8, !noalias !160
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.p:                                             ; preds = %bb.o
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aa)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.q:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !164, !nonnull !6, !noundef !6
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !164
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.r, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSIBx_NtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ae)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.s:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !168, !nonnull !6, !noundef !6
  %i.ak = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !168
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.t, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.t:                                             ; preds = %bb.s
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSTaIBx_NtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ai)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.u:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !169, !nonnull !6, !noundef !6 ; 3 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef align 8 dereferenceable(24) %i.an)
          to label %bb.x unwind label %.body, !noalias !169, !inline_history !170

.body:                                            ; preds = %bb.u
  %i.ao = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef 24, i64 noundef 8) #18, !noalias !169, !inline_history !170
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ap) #17
          to label %common.resume unwind label %bb.z

bb.v:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !173, !nonnull !6, !noundef !6
  %i.as = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !173
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.w, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.w:                                             ; preds = %bb.v
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.x:                                             ; preds = %bb.u
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef 24, i64 noundef 8) #18, !noalias !169, !inline_history !170
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !174, !nonnull !6, !noundef !6 ; 3 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef align 8 dereferenceable(24) %i.av)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEECsfUv75jb5FCv_17lance_arrow_stats.exit10 unwind label %bb.y, !noalias !174, !inline_history !170

common.resume:                                    ; preds = %.body, %bb.ab, %bb.aa, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.aw, %bb.y ], [ %i.ao, %.body ], [ %i.ay, %bb.ab ], [ %i.ay, %bb.aa ]
  resume { ptr, i32 } %common.resume.op

bb.y:                                             ; preds = %bb.x
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.av, i64 noundef 24, i64 noundef 8) #18, !noalias !174, !inline_history !170
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEECsfUv75jb5FCv_17lance_arrow_stats.exit10: ; preds = %bb.x
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.av, i64 noundef 24, i64 noundef 8) #18, !noalias !174, !inline_history !170
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.z:                                             ; preds = %bb.ab, %.body
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.aa:                                            ; preds = %bb.c
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !177, !nonnull !6, !noundef !6
  %i.bb = atomicrmw sub ptr %i.ba, i64 1 release, align 8, !noalias !177
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.ab, label %common.resume

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.az)
          to label %common.resume unwind label %bb.z

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %bb.b, %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !180, !nonnull !6, !noundef !6
  %i.bf = atomicrmw sub ptr %i.be, i64 1 release, align 8, !noalias !180
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.ac, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.ac:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsfUv75jb5FCv_17lance_arrow_stats.exit
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bd)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types16Time32SecondTypeECsfUv75jb5FCv_17lance_arrow_stats(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !8, !invariant.load !6
  %i.d = add nsw i64 %i.c, -1
  %i.e = and i64 %i.d, -16
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr i8, ptr %.8.val, i64 32
  %.val.i = load ptr, ptr %i.h, align 8
  %i.i = tail call { ptr, ptr } %.val.i(ptr noundef nonnull %i.g), !inline_history !181 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 3 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !6, !nonnull !6
  call void %i.m(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.j), !inline_history !181
  %i.n = load i128, ptr %i.a, align 16, !noundef !6
  %i.o = icmp ne i128 %i.n, -167721410346568615793789983387322545841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not1 = icmp eq ptr %i.j, null
  %.not = or i1 %.not1, %i.o
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  ret ptr %i.j

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types18DurationSecondTypeECsfUv75jb5FCv_17lance_arrow_stats(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !8, !invariant.load !6
  %i.d = add nsw i64 %i.c, -1
  %i.e = and i64 %i.d, -16
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr i8, ptr %.8.val, i64 32
  %.val.i = load ptr, ptr %i.h, align 8
  %i.i = tail call { ptr, ptr } %.val.i(ptr noundef nonnull %i.g), !inline_history !182 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 3 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !6, !nonnull !6
  call void %i.m(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.j), !inline_history !182
  %i.n = load i128, ptr %i.a, align 16, !noundef !6
  %i.o = icmp ne i128 %i.n, 21325862818289535616668292364605710907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not1 = icmp eq ptr %i.j, null
  %.not = or i1 %.not1, %i.o
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  ret ptr %i.j

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types19TimestampSecondTypeECsfUv75jb5FCv_17lance_arrow_stats(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !8, !invariant.load !6
  %i.d = add nsw i64 %i.c, -1
  %i.e = and i64 %i.d, -16
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr i8, ptr %.8.val, i64 32
  %.val.i = load ptr, ptr %i.h, align 8
  %i.i = tail call { ptr, ptr } %.val.i(ptr noundef nonnull %i.g), !inline_history !183 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 3 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !6, !nonnull !6
  call void %i.m(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.j), !inline_history !183
  %i.n = load i128, ptr %i.a, align 16, !noundef !6
  %i.o = icmp ne i128 %i.n, 115754184826212673767787198192103481641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not1 = icmp eq ptr %i.j, null
  %.not = or i1 %.not1, %i.o
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  ret ptr %i.j

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types20Time64NanosecondTypeECsfUv75jb5FCv_17lance_arrow_stats(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !8, !invariant.load !6
  %i.d = add nsw i64 %i.c, -1
  %i.e = and i64 %i.d, -16
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr i8, ptr %.8.val, i64 32
  %.val.i = load ptr, ptr %i.h, align 8
  %i.i = tail call { ptr, ptr } %.val.i(ptr noundef nonnull %i.g), !inline_history !184 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 3 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !6, !nonnull !6
  call void %i.m(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.j), !inline_history !184
  %i.n = load i128, ptr %i.a, align 16, !noundef !6
  %i.o = icmp ne i128 %i.n, -166715981354507167029399911239356845453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not1 = icmp eq ptr %i.j, null
  %.not = or i1 %.not1, %i.o
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  ret ptr %i.j

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types21Time32MillisecondTypeECsfUv75jb5FCv_17lance_arrow_stats(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !8, !invariant.load !6
  %i.d = add nsw i64 %i.c, -1
  %i.e = and i64 %i.d, -16
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr i8, ptr %.8.val, i64 32
  %.val.i = load ptr, ptr %i.h, align 8
  %i.i = tail call { ptr, ptr } %.val.i(ptr noundef nonnull %i.g), !inline_history !185 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 3 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !6, !nonnull !6
  call void %i.m(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.j), !inline_history !185
  %i.n = load i128, ptr %i.a, align 16, !noundef !6
  %i.o = icmp ne i128 %i.n, 106886705347596581231865711943615134348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not1 = icmp eq ptr %i.j, null
  %.not = or i1 %.not1, %i.o
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  ret ptr %i.j

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types21Time64MicrosecondTypeECsfUv75jb5FCv_17lance_arrow_stats(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !8, !invariant.load !6
  %i.d = add nsw i64 %i.c, -1
  %i.e = and i64 %i.d, -16
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr i8, ptr %.8.val, i64 32
  %.val.i = load ptr, ptr %i.h, align 8
  %i.i = tail call { ptr, ptr } %.val.i(ptr noundef nonnull %i.g), !inline_history !186 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 3 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !6, !nonnull !6
  call void %i.m(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.j), !inline_history !186
  %i.n = load i128, ptr %i.a, align 16, !noundef !6
  %i.o = icmp ne i128 %i.n, -152906452755468640924886884125543690460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not1 = icmp eq ptr %i.j, null
  %.not = or i1 %.not1, %i.o
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  ret ptr %i.j

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types22DurationNanosecondTypeECsfUv75jb5FCv_17lance_arrow_stats(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !8, !invariant.load !6
  %i.d = add nsw i64 %i.c, -1
  %i.e = and i64 %i.d, -16
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr i8, ptr %.8.val, i64 32
  %.val.i = load ptr, ptr %i.h, align 8
  %i.i = tail call { ptr, ptr } %.val.i(ptr noundef nonnull %i.g), !inline_history !187 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 3 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !6, !nonnull !6
  call void %i.m(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.j), !inline_history !187
  %i.n = load i128, ptr %i.a, align 16, !noundef !6
  %i.o = icmp ne i128 %i.n, 157540847136837514599877681812179372173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not1 = icmp eq ptr %i.j, null
  %.not = or i1 %.not1, %i.o
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  ret ptr %i.j

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types23DurationMicrosecondTypeECsfUv75jb5FCv_17lance_arrow_stats(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !8, !invariant.load !6
  %i.d = add nsw i64 %i.c, -1
  %i.e = and i64 %i.d, -16
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr i8, ptr %.8.val, i64 32
  %.val.i = load ptr, ptr %i.h, align 8
  %i.i = tail call { ptr, ptr } %.val.i(ptr noundef nonnull %i.g), !inline_history !188 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 3 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !6, !nonnull !6
  call void %i.m(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.j), !inline_history !188
  %i.n = load i128, ptr %i.a, align 16, !noundef !6
  %i.o = icmp ne i128 %i.n, -103632303529430358822601764268720966613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not1 = icmp eq ptr %i.j, null
  %.not = or i1 %.not1, %i.o
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  ret ptr %i.j

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types23DurationMillisecondTypeECsfUv75jb5FCv_17lance_arrow_stats(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !8, !invariant.load !6
  %i.d = add nsw i64 %i.c, -1
  %i.e = and i64 %i.d, -16
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr i8, ptr %.8.val, i64 32
  %.val.i = load ptr, ptr %i.h, align 8
  %i.i = tail call { ptr, ptr } %.val.i(ptr noundef nonnull %i.g), !inline_history !189 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 3 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !6, !nonnull !6
  call void %i.m(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.j), !inline_history !189
  %i.n = load i128, ptr %i.a, align 16, !noundef !6
  %i.o = icmp ne i128 %i.n, -13578841198641548720780256215265667852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not1 = icmp eq ptr %i.j, null
  %.not = or i1 %.not1, %i.o
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  ret ptr %i.j

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types23TimestampNanosecondTypeECsfUv75jb5FCv_17lance_arrow_stats(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !8, !invariant.load !6
  %i.d = add nsw i64 %i.c, -1
  %i.e = and i64 %i.d, -16
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr i8, ptr %.8.val, i64 32
  %.val.i = load ptr, ptr %i.h, align 8
  %i.i = tail call { ptr, ptr } %.val.i(ptr noundef nonnull %i.g), !inline_history !190 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 3 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !6, !nonnull !6
  call void %i.m(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.j), !inline_history !190
  %i.n = load i128, ptr %i.a, align 16, !noundef !6
  %i.o = icmp ne i128 %i.n, -151467941885263384786301490661118788607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not1 = icmp eq ptr %i.j, null
  %.not = or i1 %.not1, %i.o
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  ret ptr %i.j

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types24TimestampMicrosecondTypeECsfUv75jb5FCv_17lance_arrow_stats(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !8, !invariant.load !6
  %i.d = add nsw i64 %i.c, -1
  %i.e = and i64 %i.d, -16
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr i8, ptr %.8.val, i64 32
  %.val.i = load ptr, ptr %i.h, align 8
  %i.i = tail call { ptr, ptr } %.val.i(ptr noundef nonnull %i.g), !inline_history !191 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 3 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !6, !nonnull !6
  call void %i.m(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.j), !inline_history !191
  %i.n = load i128, ptr %i.a, align 16, !noundef !6
  %i.o = icmp ne i128 %i.n, 114171066297224936224064253775223572443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not1 = icmp eq ptr %i.j, null
  %.not = or i1 %.not1, %i.o
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  ret ptr %i.j

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types24TimestampMillisecondTypeECsfUv75jb5FCv_17lance_arrow_stats(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !8, !invariant.load !6
  %i.d = add nsw i64 %i.c, -1
  %i.e = and i64 %i.d, -16
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr i8, ptr %.8.val, i64 32
  %.val.i = load ptr, ptr %i.h, align 8
  %i.i = tail call { ptr, ptr } %.val.i(ptr noundef nonnull %i.g), !inline_history !192 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 3 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !6, !nonnull !6
  call void %i.m(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.j), !inline_history !192
  %i.n = load i128, ptr %i.a, align 16, !noundef !6
  %i.o = icmp ne i128 %i.n, 95596979119340338695567144368586080815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not1 = icmp eq ptr %i.j, null
  %.not = or i1 %.not1, %i.o
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  ret ptr %i.j

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvCsfUv75jb5FCv_17lance_arrow_stats12find_min_max(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [64 x i8], align 8                ; 10 uses
  %i.h = alloca [8 x i8], align 8                 ; 3 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [64 x i8], align 8                ; 10 uses
  %i.k = alloca [8 x i8], align 8                 ; 3 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [64 x i8], align 8                ; 10 uses
  %i.n = alloca [8 x i8], align 8                 ; 3 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [64 x i8], align 8                ; 10 uses
  %i.q = alloca [8 x i8], align 8                 ; 3 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [32 x i8], align 8                ; 6 uses
  %i.t = alloca [8 x i8], align 8                 ; 3 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [32 x i8], align 8                ; 6 uses
  %i.w = alloca [8 x i8], align 8                 ; 3 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [8 x i8], align 8                 ; 3 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [32 x i8], align 8               ; 6 uses
  %i.ac = alloca [8 x i8], align 8                ; 3 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [32 x i8], align 8               ; 6 uses
  %i.af = alloca [8 x i8], align 8                ; 3 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [32 x i8], align 8               ; 6 uses
  %i.ai = alloca [8 x i8], align 8                ; 3 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [32 x i8], align 8               ; 6 uses
  %i.al = alloca [8 x i8], align 8                ; 3 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [32 x i8], align 8               ; 6 uses
  %i.ao = alloca [8 x i8], align 8                ; 3 uses
  %i.ap = alloca [8 x i8], align 8                ; 4 uses
  %i.aq = alloca [32 x i8], align 8               ; 6 uses
  %i.ar = alloca [8 x i8], align 8                ; 3 uses
  %i.as = alloca [8 x i8], align 8                ; 4 uses
  %i.at = alloca [32 x i8], align 8               ; 6 uses
  %i.au = alloca [8 x i8], align 8                ; 3 uses
  %i.av = alloca [8 x i8], align 8                ; 4 uses
  %i.aw = alloca [32 x i8], align 8               ; 6 uses
  %i.ax = alloca [8 x i8], align 8                ; 3 uses
  %i.ay = alloca [8 x i8], align 8                ; 4 uses
  %i.az = alloca [32 x i8], align 8               ; 6 uses
  %i.ba = alloca [8 x i8], align 8                ; 3 uses
  %i.bb = alloca [8 x i8], align 8                ; 4 uses
  %i.bc = alloca [32 x i8], align 8               ; 6 uses
  %i.bd = alloca [8 x i8], align 8                ; 3 uses
  %i.be = alloca [8 x i8], align 8                ; 4 uses
  %i.bf = alloca [32 x i8], align 8               ; 6 uses
  %i.bg = alloca [8 x i8], align 8                ; 3 uses
  %i.bh = alloca [8 x i8], align 8                ; 4 uses
  %i.bi = alloca [32 x i8], align 8               ; 6 uses
  %i.bj = alloca [8 x i8], align 8                ; 3 uses
  %i.bk = alloca [8 x i8], align 8                ; 10 uses
  %i.bl = alloca [32 x i8], align 8               ; 6 uses
  %i.bm = alloca [8 x i8], align 8                ; 3 uses
  %i.bn = alloca [8 x i8], align 8                ; 10 uses
  %i.bo = alloca [32 x i8], align 8               ; 6 uses
  %i.bp = alloca [8 x i8], align 8                ; 3 uses
  %i.bq = alloca [8 x i8], align 8                ; 10 uses
  %i.br = alloca [32 x i8], align 8               ; 6 uses
  %i.bs = alloca [8 x i8], align 8                ; 3 uses
  %i.bt = alloca [8 x i8], align 8                ; 4 uses
  %i.bu = alloca [32 x i8], align 8               ; 6 uses
  %i.bv = alloca [8 x i8], align 8                ; 3 uses
  %i.bw = alloca [8 x i8], align 8                ; 4 uses
  %i.bx = alloca [32 x i8], align 8               ; 6 uses
  %i.by = alloca [8 x i8], align 8                ; 3 uses
  %i.bz = alloca [8 x i8], align 8                ; 4 uses
  %i.ca = alloca [32 x i8], align 8               ; 6 uses
  %i.cb = alloca [8 x i8], align 8                ; 3 uses
  %i.cc = alloca [8 x i8], align 8                ; 4 uses
  %i.cd = alloca [32 x i8], align 8               ; 6 uses
  %i.ce = alloca [8 x i8], align 8                ; 3 uses
  %i.cf = alloca [8 x i8], align 8                ; 4 uses
  %i.cg = alloca [32 x i8], align 8               ; 6 uses
  %i.ch = alloca [8 x i8], align 8                ; 3 uses
  %i.ci = alloca [8 x i8], align 8                ; 4 uses
  %i.cj = alloca [32 x i8], align 8               ; 6 uses
  %i.ck = alloca [8 x i8], align 8                ; 3 uses
  %i.cl = alloca [8 x i8], align 8                ; 4 uses
  %i.cm = alloca [32 x i8], align 8               ; 6 uses
  %i.cn = alloca [8 x i8], align 8                ; 3 uses
  %i.co = alloca [8 x i8], align 8                ; 4 uses
  %i.cp = alloca [16 x i8], align 16              ; 4 uses
  %i.cq = alloca [16 x i8], align 16              ; 4 uses
  %i.cr = alloca [16 x i8], align 16              ; 4 uses
  %i.cs = alloca [16 x i8], align 16              ; 4 uses
  %i.ct = alloca [16 x i8], align 16              ; 4 uses
  %i.cu = alloca [16 x i8], align 16              ; 4 uses
  %i.cv = alloca [16 x i8], align 16              ; 4 uses
  %i.cw = alloca [16 x i8], align 16              ; 4 uses
  %i.cx = alloca [16 x i8], align 16              ; 4 uses
  %i.cy = alloca [16 x i8], align 16              ; 4 uses
  %i.cz = alloca [16 x i8], align 16              ; 4 uses
  %i.da = alloca [16 x i8], align 16              ; 4 uses
  %i.db = alloca [16 x i8], align 16              ; 4 uses
  %i.dc = alloca [16 x i8], align 16              ; 4 uses
  %i.dd = alloca [16 x i8], align 16              ; 4 uses
  %i.de = alloca [16 x i8], align 16              ; 4 uses
  %i.df = alloca [16 x i8], align 16              ; 4 uses
  %i.dg = alloca [16 x i8], align 16              ; 4 uses
  %i.dh = alloca [16 x i8], align 16              ; 4 uses
  %.sroa.951 = alloca [7 x i8], align 1           ; 2 uses
  %i.di = alloca [56 x i8], align 8               ; 6 uses
  %.sroa.927 = alloca [7 x i8], align 1           ; 2 uses
  %i.dj = alloca [56 x i8], align 8               ; 5 uses
  %.sroa.061 = alloca [104 x i8], align 8         ; 5 uses
  %.sroa.054 = alloca [48 x i8], align 8          ; 6 uses
  %.sroa.758 = alloca [7 x i8], align 1           ; 5 uses
  %.sroa.045 = alloca [48 x i8], align 8          ; 7 uses
  %.sroa.039 = alloca [48 x i8], align 8          ; 7 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 49
  %.sroa.021 = alloca [48 x i8], align 8          ; 5 uses
  %.sroa.017 = alloca [48 x i8], align 8          ; 5 uses
  %i.dl = alloca [56 x i8], align 8               ; 13 uses
  %.sroa.5 = alloca i64, align 8                  ; 7 uses
  %.sroa.14 = alloca i64, align 8                 ; 7 uses
  %.sroa.20 = alloca i64, align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.dm = tail call noundef nonnull align 8 ptr @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9data_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !noalias !380 ; 5 uses
  %i.dn = load i8, ptr %i.dm, align 8, !range !7, !noalias !380, !noundef !6
  switch i8 %i.dn, label %bb.ip [
    i8 1, label %bb.b
    i8 2, label %bb.d
    i8 3, label %bb.f
    i8 4, label %bb.h
    i8 5, label %bb.j
    i8 6, label %bb.l
    i8 7, label %bb.n
    i8 8, label %bb.p
    i8 9, label %bb.r
    i8 10, label %bb.t
    i8 11, label %bb.v
    i8 12, label %bb.x
    i8 13, label %bb.z
    i8 14, label %bb.aa
    i8 15, label %bb.ac
    i8 16, label %bb.ae
    i8 17, label %bb.af
    i8 18, label %bb.ag
    i8 20, label %bb.ah
    i8 22, label %bb.aj
    i8 24, label %bb.al
    i8 25, label %bb.an
    i8 37, label %bb.ap
    i8 38, label %bb.ar
  ]

bb.b:                                             ; preds = %bb.a
  %i.do = tail call noundef align 8 ptr @_RNvXs1_NtCs4ytUTZt2Gw9_11arrow_array4castINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB7_5array5ArrayEL_ENtB5_7AsArray14as_boolean_opt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !noalias !380 ; 7 uses
  %.not.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i, label %bb.c, label %_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray10as_booleanCsfUv75jb5FCv_17lance_arrow_stats.exit.i, !prof !9

end_hunk_0
begin_hunk_1_@_RNvMCsfUv75jb5FCv_17lance_arrow_statsNtB2_21StatisticsAccumulator6update
define void @_RNvMCsfUv75jb5FCv_17lance_arrow_statsNtB2_21StatisticsAccumulator6update(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(184) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 12 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 12 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 12 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %i.i = alloca [56 x i8], align 8                ; 4 uses
  %i.j = alloca [112 x i8], align 8               ; 8 uses
  %.sroa.09 = alloca [48 x i8], align 8           ; 7 uses
  %.sroa.8 = alloca [63 x i8], align 1            ; 6 uses
  %i.k = alloca [56 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = tail call noundef nonnull align 8 ptr @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9data_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.p = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
  br i1 %i.p, label %bb.b, label %.split

bb.b:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_8is_empty(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.q, label %bb.d, label %bb.c

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.r = tail call noundef nonnull align 8 ptr @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9data_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  store ptr %i.r, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.o, ptr %i.l, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs3_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, ptr %.sroa.417.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.m, ptr %i.s, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtB6_5Debug3fmtCsfUv75jb5FCv_17lance_arrow_stats, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull @9, ptr noundef nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 -9223372036854775794, ptr %0, align 8
  br label %_RINvMCsfUv75jb5FCv_17lance_arrow_statsNtB3_21StatisticsAccumulator12update_itemsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1l_6filter6FilterINtNtNtB1p_3ops5range5RangejENCNvB2_6update0ENCB2W_s_0EEB3_.exit

bb.c:                                             ; preds = %bb.b
  %i.t = tail call noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_22get_buffer_memory_size(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !noundef !6
  %i.w = add i64 %i.v, %i.t
  store i64 %i.w, ptr %i.u, align 8
  %i.x = tail call noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_10null_count(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !noundef !6
  %i.aa = add i64 %i.z, %i.x
  store i64 %i.aa, ptr %i.y, align 8
  %i.ab = tail call noundef nonnull align 8 ptr @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9data_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  %i.ac = load i8, ptr %i.ab, align 8, !range !7, !noundef !6
  switch i8 %i.ac, label %bb.e [
    i8 27, label %bb.f
    i8 29, label %bb.x
    i8 30, label %bb.al
  ]

bb.d:                                             ; preds = %bb.b
  store i64 -1, ptr %0, align 8
  br label %_RINvMCsfUv75jb5FCv_17lance_arrow_statsNtB3_21StatisticsAccumulator12update_itemsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1l_6filter6FilterINtNtNtB1p_3ops5range5RangejENCNvB2_6update0ENCB2W_s_0EEB3_.exit

bb.e:                                             ; preds = %bb.c
  %i.ad = load i64, ptr %1, align 8, !range !14, !noundef !6
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %bb.bd, label %bb.be

bb.f:                                             ; preds = %bb.c
  %.val32 = load ptr, ptr %2, align 8, !nonnull !6, !noundef !6
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val33 = load ptr, ptr %i.af, align 8, !nonnull !6, !align !10, !noundef !6 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val33, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !8, !invariant.load !6
  %i.ai = add nsw i64 %i.ah, -1
  %i.aj = and i64 %i.ai, -16
  %i.ak = getelementptr inbounds nuw i8, ptr %.val32, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = getelementptr i8, ptr %.val33, i64 32
  %.val.i.i = load ptr, ptr %i.am, align 8
  %i.an = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %i.al), !inline_history !0 ; 2 uses
  %i.ao = extractvalue { ptr, ptr } %i.an, 0      ; 10 uses
  %i.ap = extractvalue { ptr, ptr } %i.an, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !invariant.load !6, !nonnull !6
  call void %i.ar(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.h, ptr noundef %i.ao), !inline_history !0
  %i.as = load i128, ptr %i.h, align 16, !noundef !6
  %i.at = icmp ne i128 %i.as, -161552374697213817395454635259496115404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not1.i = icmp eq ptr %i.ao, null
  %.not.i = or i1 %.not1.i, %i.at
  br i1 %.not.i, label %bb.g, label %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listlECsfUv75jb5FCv_17lance_arrow_stats.exit, !prof !9

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #20
  unreachable

_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listlECsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 56 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !noundef !6
  %i.aw = lshr i64 %i.av, 2
  %i.ax = add nsw i64 %i.aw, -1                   ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !958)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i280282 = icmp eq i64 %i.ax, 0
  br i1 %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i280282, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6update0ENCB1M_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i, label %.lr.ph281

.lr.ph281:                                        ; preds = %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listlECsfUv75jb5FCv_17lance_arrow_stats.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i
  %umax.i.i.i.i.i284 = phi i64 [ %umax.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i ], [ %i.ax, %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listlECsfUv75jb5FCv_17lance_arrow_stats.exit ]
  %.sroa.5.0.i283 = phi i64 [ %i.bh, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i ], [ 0, %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listlECsfUv75jb5FCv_17lance_arrow_stats.exit ]
  %i.bf = load ptr, ptr %i.ay, align 8, !alias.scope !959, !noalias !960, !noundef !6
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br label %bb.h

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkjQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1j_21StatisticsAccumulator6update0E0B1j_.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtBT_21StatisticsAccumulator6update0INtB7_5FnMutTRjEE8call_mutBT_.exit.i.i.i.i.i.i
  %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i = icmp eq i64 %i.bh, %umax.i.i.i.i.i284
  br i1 %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6update0ENCB1M_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph281, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkjQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1j_21StatisticsAccumulator6update0E0B1j_.exit.i.i.i.i.i
  %i.bg = phi i64 [ %.sroa.5.0.i283, %.lr.ph281 ], [ %i.bh, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkjQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1j_21StatisticsAccumulator6update0E0B1j_.exit.i.i.i.i.i ] ; 6 uses
  %i.bh = add i64 %i.bg, 1                        ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !961)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = load i64, ptr %i.az, align 8, !alias.scope !961, !noalias !960, !noundef !6
  %i.bj = icmp ult i64 %i.bg, %i.bi
  br i1 %i.bj, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtBT_21StatisticsAccumulator6update0INtB7_5FnMutTRjEE8call_mutBT_.exit.i.i.i.i.i.i, label %bb.j, !prof !12

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #20, !noalias !962
  unreachable

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtBT_21StatisticsAccumulator6update0INtB7_5FnMutTRjEE8call_mutBT_.exit.i.i.i.i.i.i: ; preds = %bb.i
  %i.bk = load ptr, ptr %i.ba, align 8, !alias.scope !961, !noalias !960, !noundef !6
  %i.bl = load i64, ptr %i.bb, align 8, !alias.scope !961, !noalias !960, !noundef !6
  %i.bm = add i64 %i.bl, %i.bg                    ; 2 uses
  %i.bn = lshr i64 %i.bm, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !962, !noundef !6
  %i.bq = trunc i64 %i.bm to i8
  %i.br = and i8 %i.bq, 7
  %i.bs = xor i8 %i.bp, -1
  %i.bt = lshr i8 %i.bs, %i.br
  %.fr3.i.i.i.i.i.i = freeze i8 %i.bt
  %i.bu = trunc i8 %.fr3.i.i.i.i.i.i to i1
  br i1 %i.bu, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkjQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1j_21StatisticsAccumulator6update0E0B1j_.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtBT_21StatisticsAccumulator6update0INtB7_5FnMutTRjEE8call_mutBT_.exit.i.i.i.i.i.i, %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !963)
  %i.bv = load ptr, ptr %i.bc, align 8, !alias.scope !963, !noalias !964, !noundef !6 ; 2 uses
  %i.bw = load i64, ptr %i.au, align 8, !alias.scope !963, !noalias !964, !noundef !6
  %i.bx = lshr i64 %i.bw, 2                       ; 4 uses
  %i.by = icmp ult i64 %i.bh, %i.bx
  br i1 %i.by, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bz = icmp ult i64 %i.bg, %i.bx
  br i1 %i.bz, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6update0ENCB1M_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.i, label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.bh, i64 noundef %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #20, !noalias !965
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.bg, i64 noundef %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #20, !noalias !965
  unreachable

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6update0ENCB1M_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.i: ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bh
  %i.cb = load i32, ptr %i.ca, align 4, !noalias !965, !noundef !6
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bg
  %i.ce = load i32, ptr %i.cd, align 4, !noalias !965, !noundef !6
  %i.cf = sext i32 %i.ce to i64                   ; 2 uses
  %i.cg = sub nsw i64 %i.cc, %i.cf
  %i.ch = call { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_5slice(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bd, i64 noundef %i.cf, i64 noundef %i.cg), !noalias !964 ; 2 uses
  %i.ci = extractvalue { ptr, ptr } %i.ch, 0      ; 2 uses
  %.not.i36 = icmp eq ptr %i.ci, null
  br i1 %.not.i36, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6update0ENCB1M_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i, label %bb.o

common.resume:                                    ; preds = %bb.bi, %bb.av, %bb.aw, %bb.ad, %bb.ae, %bb.p, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.gm, %bb.av ], [ %i.ck, %bb.p ], [ %i.dx, %bb.ad ], [ %i.ck, %bb.q ], [ %i.dx, %bb.ae ], [ %i.gm, %bb.aw ], [ %i.hf, %bb.bi ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6update0ENCB1M_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.i
  %i.cj = extractvalue { ptr, ptr } %i.ch, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !966
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cj) ]
  store ptr %i.ci, ptr %i.g, align 8, !noalias !966
  store ptr %i.cj, ptr %i.be, align 8, !noalias !966
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !966
  invoke fastcc void @_RNvMCsfUv75jb5FCv_17lance_arrow_statsNtB2_21StatisticsAccumulator11update_item(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(184) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %bb.r unwind label %bb.p, !noalias !967

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6update0ENCB1M_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6update0ENCB1M_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkjQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1j_21StatisticsAccumulator6update0E0B1j_.exit.i.i.i.i.i, %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listlECsfUv75jb5FCv_17lance_arrow_stats.exit
  store i64 -1, ptr %0, align 8, !alias.scope !958, !noalias !968
  br label %_RINvMCsfUv75jb5FCv_17lance_arrow_statsNtB3_21StatisticsAccumulator12update_itemsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1l_6filter6FilterINtNtNtB1p_3ops5range5RangejENCNvB2_6update0ENCB2W_s_0EEB3_.exit

bb.p:                                             ; preds = %bb.o
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !969)
  call void @llvm.experimental.noalias.scope.decl(metadata !970)
  %i.cl = load ptr, ptr %i.g, align 8, !alias.scope !971, !noalias !966, !nonnull !6, !noundef !6
  %i.cm = atomicrmw sub ptr %i.cl, i64 1 release, align 8, !noalias !972
  %i.cn = icmp eq i64 %i.cm, 1
  br i1 %i.cn, label %bb.q, label %common.resume

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %common.resume unwind label %bb.w, !noalias !967

bb.r:                                             ; preds = %bb.o
  %i.co = load i64, ptr %i.f, align 8, !range !15, !noalias !966, !noundef !6
  %.not4.i = icmp eq i64 %i.co, -1
  br i1 %.not4.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !966
  call void @llvm.experimental.noalias.scope.decl(metadata !973)
  call void @llvm.experimental.noalias.scope.decl(metadata !974)
  %i.cp = load ptr, ptr %i.g, align 8, !alias.scope !975, !noalias !966, !nonnull !6, !noundef !6
  %i.cq = atomicrmw sub ptr %i.cp, i64 1 release, align 8, !noalias !976
  %i.cr = icmp eq i64 %i.cq, 1
  br i1 %i.cr, label %bb.t, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit6.i

bb.t:                                             ; preds = %bb.s
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g), !noalias !967
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit6.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit6.i: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !966
  br label %_RINvMCsfUv75jb5FCv_17lance_arrow_statsNtB3_21StatisticsAccumulator12update_itemsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1l_6filter6FilterINtNtNtB1p_3ops5range5RangejENCNvB2_6update0ENCB2W_s_0EEB3_.exit

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !966
  call void @llvm.experimental.noalias.scope.decl(metadata !977)
  call void @llvm.experimental.noalias.scope.decl(metadata !978)
  %i.cs = load ptr, ptr %i.g, align 8, !alias.scope !979, !noalias !966, !nonnull !6, !noundef !6
  %i.ct = atomicrmw sub ptr %i.cs, i64 1 release, align 8, !noalias !980
  %i.cu = icmp eq i64 %i.ct, 1
  br i1 %i.cu, label %bb.v, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i

bb.v:                                             ; preds = %bb.u
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g), !noalias !967
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i: ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !966
  %umax.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.bh)
  %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i280.not = icmp ult i64 %i.bh, %i.ax
  br i1 %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i280.not, label %.lr.ph281, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6update0ENCB1M_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i

bb.w:                                             ; preds = %bb.q
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19, !noalias !967
  unreachable

bb.x:                                             ; preds = %bb.c
  %i.cw = tail call noundef align 8 ptr @_RNvXs1_NtCs4ytUTZt2Gw9_11arrow_array4castINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB7_5array5ArrayEL_ENtB5_7AsArray22as_fixed_size_list_opt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) ; 7 uses
  %.not.i37 = icmp eq ptr %i.cw, null
  br i1 %.not.i37, label %bb.y, label %_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray18as_fixed_size_listCsfUv75jb5FCv_17lance_arrow_stats.exit, !prof !9

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #20
  unreachable

_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray18as_fixed_size_listCsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %bb.x
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 88
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !6 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !981)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 72
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i47275277 = icmp eq i64 %i.cy, 0
  br i1 %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i47275277, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates2_0ENCB1M_s3_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i, label %.lr.ph276

.lr.ph276:                                        ; preds = %_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray18as_fixed_size_listCsfUv75jb5FCv_17lance_arrow_stats.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i54
  %umax.i.i.i.i.i46279 = phi i64 [ %umax.i.i.i.i.i46, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i54 ], [ %i.cy, %_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray18as_fixed_size_listCsfUv75jb5FCv_17lance_arrow_stats.exit ]
  %.sroa.5.0.i45278 = phi i64 [ %i.dg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i54 ], [ 0, %_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray18as_fixed_size_listCsfUv75jb5FCv_17lance_arrow_stats.exit ]
  %i.de = load ptr, ptr %i.cz, align 8, !alias.scope !982, !noalias !983, !noundef !6
  %.not.i.i.i.i.i.i.i.i.i.i48 = icmp eq ptr %i.de, null
  br label %bb.z

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkjQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1j_21StatisticsAccumulator6updates2_0E0B1j_.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtBT_21StatisticsAccumulator6updates2_0INtB7_5FnMutTRjEE8call_mutBT_.exit.i.i.i.i.i.i
  %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i47 = icmp eq i64 %i.dg, %umax.i.i.i.i.i46279
  br i1 %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i47, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates2_0ENCB1M_s3_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph276, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkjQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1j_21StatisticsAccumulator6updates2_0E0B1j_.exit.i.i.i.i.i
  %i.df = phi i64 [ %.sroa.5.0.i45278, %.lr.ph276 ], [ %i.dg, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkjQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1j_21StatisticsAccumulator6updates2_0E0B1j_.exit.i.i.i.i.i ] ; 4 uses
  %i.dg = add i64 %i.df, 1                        ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !984)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i48, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates2_0ENCB1M_s3_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dh = load i64, ptr %i.da, align 8, !alias.scope !984, !noalias !983, !noundef !6
  %i.di = icmp ult i64 %i.df, %i.dh
  br i1 %i.di, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtBT_21StatisticsAccumulator6updates2_0INtB7_5FnMutTRjEE8call_mutBT_.exit.i.i.i.i.i.i, label %bb.ab, !prof !12

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #20, !noalias !985
  unreachable

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtBT_21StatisticsAccumulator6updates2_0INtB7_5FnMutTRjEE8call_mutBT_.exit.i.i.i.i.i.i: ; preds = %bb.aa
  %i.dj = load ptr, ptr %i.db, align 8, !alias.scope !984, !noalias !983, !noundef !6
  %i.dk = load i64, ptr %i.dc, align 8, !alias.scope !984, !noalias !983, !noundef !6
  %i.dl = add i64 %i.dk, %i.df                    ; 2 uses
  %i.dm = lshr i64 %i.dl, 3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !noalias !985, !noundef !6
  %i.dp = trunc i64 %i.dl to i8
  %i.dq = and i8 %i.dp, 7
  %i.dr = xor i8 %i.do, -1
  %i.ds = lshr i8 %i.dr, %i.dq
  %.fr3.i.i.i.i.i.i49 = freeze i8 %i.ds
  %i.dt = trunc i8 %.fr3.i.i.i.i.i.i49 to i1
  br i1 %i.dt, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkjQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1j_21StatisticsAccumulator6updates2_0E0B1j_.exit.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates2_0ENCB1M_s3_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates2_0ENCB1M_s3_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.i: ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtBT_21StatisticsAccumulator6updates2_0INtB7_5FnMutTRjEE8call_mutBT_.exit.i.i.i.i.i.i, %bb.z
  %i.du = call { ptr, ptr } @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB2_18FixedSizeListArray5value(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.cw, i64 noundef %i.df), !noalias !986 ; 2 uses
  %i.dv = extractvalue { ptr, ptr } %i.du, 0      ; 2 uses
  %.not.i50 = icmp eq ptr %i.dv, null
  br i1 %.not.i50, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates2_0ENCB1M_s3_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i, label %bb.ac

bb.ac:                                            ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates2_0ENCB1M_s3_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.i
  %i.dw = extractvalue { ptr, ptr } %i.du, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !987
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dw) ]
  store ptr %i.dv, ptr %i.e, align 8, !noalias !987
  store ptr %i.dw, ptr %i.dd, align 8, !noalias !987
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !987
  invoke fastcc void @_RNvMCsfUv75jb5FCv_17lance_arrow_statsNtB2_21StatisticsAccumulator11update_item(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(184) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %bb.af unwind label %bb.ad, !noalias !988

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates2_0ENCB1M_s3_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates2_0ENCB1M_s3_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i54, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkjQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1j_21StatisticsAccumulator6updates2_0E0B1j_.exit.i.i.i.i.i, %_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray18as_fixed_size_listCsfUv75jb5FCv_17lance_arrow_stats.exit
  store i64 -1, ptr %0, align 8, !alias.scope !981, !noalias !989
  br label %_RINvMCsfUv75jb5FCv_17lance_arrow_statsNtB3_21StatisticsAccumulator12update_itemsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1l_6filter6FilterINtNtNtB1p_3ops5range5RangejENCNvB2_6update0ENCB2W_s_0EEB3_.exit

bb.ad:                                            ; preds = %bb.ac
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !990)
  call void @llvm.experimental.noalias.scope.decl(metadata !991)
  %i.dy = load ptr, ptr %i.e, align 8, !alias.scope !992, !noalias !987, !nonnull !6, !noundef !6
  %i.dz = atomicrmw sub ptr %i.dy, i64 1 release, align 8, !noalias !993
  %i.ea = icmp eq i64 %i.dz, 1
  br i1 %i.ea, label %bb.ae, label %common.resume

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %common.resume unwind label %bb.ak, !noalias !988

bb.af:                                            ; preds = %bb.ac
  %i.eb = load i64, ptr %i.d, align 8, !range !15, !noalias !987, !noundef !6
  %.not4.i52 = icmp eq i64 %i.eb, -1
  br i1 %.not4.i52, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !987
  call void @llvm.experimental.noalias.scope.decl(metadata !994)
  call void @llvm.experimental.noalias.scope.decl(metadata !995)
  %i.ec = load ptr, ptr %i.e, align 8, !alias.scope !996, !noalias !987, !nonnull !6, !noundef !6
  %i.ed = atomicrmw sub ptr %i.ec, i64 1 release, align 8, !noalias !997
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.ah, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit6.i53

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e), !noalias !988
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit6.i53

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit6.i53: ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !987
  br label %_RINvMCsfUv75jb5FCv_17lance_arrow_statsNtB3_21StatisticsAccumulator12update_itemsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1l_6filter6FilterINtNtNtB1p_3ops5range5RangejENCNvB2_6update0ENCB2W_s_0EEB3_.exit

bb.ai:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !987
  call void @llvm.experimental.noalias.scope.decl(metadata !998)
  call void @llvm.experimental.noalias.scope.decl(metadata !999)
  %i.ef = load ptr, ptr %i.e, align 8, !alias.scope !1000, !noalias !987, !nonnull !6, !noundef !6
  %i.eg = atomicrmw sub ptr %i.ef, i64 1 release, align 8, !noalias !1001
  %i.eh = icmp eq i64 %i.eg, 1
  br i1 %i.eh, label %bb.aj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i54

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e), !noalias !988
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i54

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i54: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !987
  %umax.i.i.i.i.i46 = call i64 @llvm.umax.i64(i64 %i.cy, i64 %i.dg)
  %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i47275.not = icmp ult i64 %i.dg, %i.cy
  br i1 %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i47275.not, label %.lr.ph276, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates2_0ENCB1M_s3_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i

bb.ak:                                            ; preds = %bb.ae
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19, !noalias !988
  unreachable

bb.al:                                            ; preds = %bb.c
  %.val34 = load ptr, ptr %2, align 8, !nonnull !6, !noundef !6
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val35 = load ptr, ptr %i.ej, align 8, !nonnull !6, !align !10, !noundef !6 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.val35, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !range !8, !invariant.load !6
  %i.em = add nsw i64 %i.el, -1
  %i.en = and i64 %i.em, -16
  %i.eo = getelementptr inbounds nuw i8, ptr %.val34, i64 %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = getelementptr i8, ptr %.val35, i64 32
  %.val.i.i55 = load ptr, ptr %i.eq, align 8
  %i.er = tail call { ptr, ptr } %.val.i.i55(ptr noundef nonnull %i.ep), !inline_history !1 ; 2 uses
  %i.es = extractvalue { ptr, ptr } %i.er, 0      ; 10 uses
  %i.et = extractvalue { ptr, ptr } %i.er, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8, !invariant.load !6, !nonnull !6
  call void %i.ev(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef %i.es), !inline_history !1
  %i.ew = load i128, ptr %i.c, align 16, !noundef !6
  %i.ex = icmp ne i128 %i.ew, 90189382463122623267183234748201210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not1.i56 = icmp eq ptr %i.es, null
  %.not.i57 = or i1 %.not1.i56, %i.ex
  br i1 %.not.i57, label %bb.am, label %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listxECsfUv75jb5FCv_17lance_arrow_stats.exit, !prof !9

bb.am:                                            ; preds = %bb.al
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #20
  unreachable

_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listxECsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %bb.al
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 56 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !noundef !6
  %i.fa = lshr i64 %i.ez, 3
  %i.fb = add nsw i64 %i.fa, -1                   ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.es, i64 64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.es, i64 96
  %i.fe = getelementptr inbounds nuw i8, ptr %i.es, i64 72
  %i.ff = getelementptr inbounds nuw i8, ptr %i.es, i64 88
  %i.fg = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  %i.fh = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i67271272 = icmp eq i64 %i.fb, 0
  br i1 %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i67271272, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates0_0ENCB1M_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listxECsfUv75jb5FCv_17lance_arrow_stats.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i74
  %umax.i.i.i.i.i66274 = phi i64 [ %umax.i.i.i.i.i66, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i74 ], [ %i.fb, %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listxECsfUv75jb5FCv_17lance_arrow_stats.exit ]
  %.sroa.5.0.i65273 = phi i64 [ %i.fl, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i74 ], [ 0, %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listxECsfUv75jb5FCv_17lance_arrow_stats.exit ]
  %i.fj = load ptr, ptr %i.fc, align 8, !alias.scope !1003, !noalias !1004, !noundef !6
  %.not.i.i.i.i.i.i.i.i.i.i68 = icmp eq ptr %i.fj, null
  br label %bb.an

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkjQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1j_21StatisticsAccumulator6updates0_0E0B1j_.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtBT_21StatisticsAccumulator6updates0_0INtB7_5FnMutTRjEE8call_mutBT_.exit.i.i.i.i.i.i
  %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i67 = icmp eq i64 %i.fl, %umax.i.i.i.i.i66274
  br i1 %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i67, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates0_0ENCB1M_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkjQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1j_21StatisticsAccumulator6updates0_0E0B1j_.exit.i.i.i.i.i
  %i.fk = phi i64 [ %.sroa.5.0.i65273, %.lr.ph ], [ %i.fl, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkjQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1j_21StatisticsAccumulator6updates0_0E0B1j_.exit.i.i.i.i.i ] ; 6 uses
  %i.fl = add i64 %i.fk, 1                        ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i68, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fm = load i64, ptr %i.fd, align 8, !alias.scope !1005, !noalias !1004, !noundef !6
  %i.fn = icmp ult i64 %i.fk, %i.fm
  br i1 %i.fn, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtBT_21StatisticsAccumulator6updates0_0INtB7_5FnMutTRjEE8call_mutBT_.exit.i.i.i.i.i.i, label %bb.ap, !prof !12

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #20, !noalias !1006
  unreachable

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtBT_21StatisticsAccumulator6updates0_0INtB7_5FnMutTRjEE8call_mutBT_.exit.i.i.i.i.i.i: ; preds = %bb.ao
  %i.fo = load ptr, ptr %i.fe, align 8, !alias.scope !1005, !noalias !1004, !noundef !6
  %i.fp = load i64, ptr %i.ff, align 8, !alias.scope !1005, !noalias !1004, !noundef !6
  %i.fq = add i64 %i.fp, %i.fk                    ; 2 uses
  %i.fr = lshr i64 %i.fq, 3
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !noalias !1006, !noundef !6
  %i.fu = trunc i64 %i.fq to i8
  %i.fv = and i8 %i.fu, 7
  %i.fw = xor i8 %i.ft, -1
  %i.fx = lshr i8 %i.fw, %i.fv
  %.fr3.i.i.i.i.i.i69 = freeze i8 %i.fx
  %i.fy = trunc i8 %.fr3.i.i.i.i.i.i69 to i1
  br i1 %i.fy, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkjQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1j_21StatisticsAccumulator6updates0_0E0B1j_.exit.i.i.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtBT_21StatisticsAccumulator6updates0_0INtB7_5FnMutTRjEE8call_mutBT_.exit.i.i.i.i.i.i, %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.es) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  %i.fz = load ptr, ptr %i.fg, align 8, !alias.scope !1007, !noalias !1008, !noundef !6 ; 2 uses
  %i.ga = load i64, ptr %i.ey, align 8, !alias.scope !1007, !noalias !1008, !noundef !6
  %i.gb = lshr i64 %i.ga, 3                       ; 4 uses
  %i.gc = icmp ult i64 %i.fl, %i.gb
  br i1 %i.gc, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.gd = icmp ult i64 %i.fk, %i.gb
  br i1 %i.gd, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates0_0ENCB1M_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.i, label %bb.at

bb.as:                                            ; preds = %bb.aq
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.fl, i64 noundef %i.gb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #20, !noalias !1009
  unreachable

bb.at:                                            ; preds = %bb.ar
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.fk, i64 noundef %i.gb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #20, !noalias !1009
  unreachable

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates0_0ENCB1M_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.i: ; preds = %bb.ar
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.fl
  %i.gf = load i64, ptr %i.ge, align 8, !noalias !1009, !noundef !6
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.fk
  %i.gh = load i64, ptr %i.gg, align 8, !noalias !1009, !noundef !6 ; 2 uses
  %i.gi = sub i64 %i.gf, %i.gh
  %i.gj = call { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_5slice(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fh, i64 noundef %i.gh, i64 noundef %i.gi), !noalias !1008 ; 2 uses
  %i.gk = extractvalue { ptr, ptr } %i.gj, 0      ; 2 uses
  %.not.i70 = icmp eq ptr %i.gk, null
  br i1 %.not.i70, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates0_0ENCB1M_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i, label %bb.au

bb.au:                                            ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates0_0ENCB1M_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.i
  %i.gl = extractvalue { ptr, ptr } %i.gj, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1010
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gl) ]
  store ptr %i.gk, ptr %i.b, align 8, !noalias !1010
  store ptr %i.gl, ptr %i.fi, align 8, !noalias !1010
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1010
  invoke fastcc void @_RNvMCsfUv75jb5FCv_17lance_arrow_statsNtB2_21StatisticsAccumulator11update_item(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(184) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %bb.ax unwind label %bb.av, !noalias !1011

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates0_0ENCB1M_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates0_0ENCB1M_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i74, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkjQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1j_21StatisticsAccumulator6updates0_0E0B1j_.exit.i.i.i.i.i, %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listxECsfUv75jb5FCv_17lance_arrow_stats.exit
  store i64 -1, ptr %0, align 8, !alias.scope !1002, !noalias !1012
  br label %_RINvMCsfUv75jb5FCv_17lance_arrow_statsNtB3_21StatisticsAccumulator12update_itemsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1l_6filter6FilterINtNtNtB1p_3ops5range5RangejENCNvB2_6update0ENCB2W_s_0EEB3_.exit

bb.av:                                            ; preds = %bb.au
  %i.gm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1013)
  call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  %i.gn = load ptr, ptr %i.b, align 8, !alias.scope !1015, !noalias !1010, !nonnull !6, !noundef !6
  %i.go = atomicrmw sub ptr %i.gn, i64 1 release, align 8, !noalias !1016
  %i.gp = icmp eq i64 %i.go, 1
  br i1 %i.gp, label %bb.aw, label %common.resume

bb.aw:                                            ; preds = %bb.av
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %common.resume unwind label %bb.bc, !noalias !1011

bb.ax:                                            ; preds = %bb.au
  %i.gq = load i64, ptr %i.a, align 8, !range !15, !noalias !1010, !noundef !6
  %.not4.i72 = icmp eq i64 %i.gq, -1
  br i1 %.not4.i72, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !1012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1010
  call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  %i.gr = load ptr, ptr %i.b, align 8, !alias.scope !1019, !noalias !1010, !nonnull !6, !noundef !6
  %i.gs = atomicrmw sub ptr %i.gr, i64 1 release, align 8, !noalias !1020
  %i.gt = icmp eq i64 %i.gs, 1
  br i1 %i.gt, label %bb.az, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit6.i73

bb.az:                                            ; preds = %bb.ay
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !noalias !1011
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit6.i73

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit6.i73: ; preds = %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1010
  br label %_RINvMCsfUv75jb5FCv_17lance_arrow_statsNtB3_21StatisticsAccumulator12update_itemsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1l_6filter6FilterINtNtNtB1p_3ops5range5RangejENCNvB2_6update0ENCB2W_s_0EEB3_.exit

bb.ba:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1010
  call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  %i.gu = load ptr, ptr %i.b, align 8, !alias.scope !1023, !noalias !1010, !nonnull !6, !noundef !6
  %i.gv = atomicrmw sub ptr %i.gu, i64 1 release, align 8, !noalias !1024
  %i.gw = icmp eq i64 %i.gv, 1
  br i1 %i.gw, label %bb.bb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i74

bb.bb:                                            ; preds = %bb.ba
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !noalias !1011
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i74

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i74: ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1010
  %umax.i.i.i.i.i66 = call i64 @llvm.umax.i64(i64 %i.fb, i64 %i.fl)
  %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i67271.not = icmp ult i64 %i.fl, %i.fb
  br i1 %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i67271.not, label %.lr.ph, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates0_0ENCB1M_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i

bb.bc:                                            ; preds = %bb.aw
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19, !noalias !1011
  unreachable

bb.bd:                                            ; preds = %bb.e
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.gz = tail call fastcc noundef i64 @_RNvNtCsfUv75jb5FCv_17lance_arrow_stats3nan10count_nans(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  %i.ha = load i64, ptr %i.gy, align 8, !noundef !6
  %i.hb = add i64 %i.ha, %i.gz
  store i64 %i.hb, ptr %i.gy, align 8
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.09)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call fastcc void @_RNvCsfUv75jb5FCv_17lance_arrow_stats12find_min_max(ptr noalias noundef align 8 captures(none) dereferenceable(112) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  %i.hc = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.hd = load i8, ptr %i.hc, align 8, !range !16, !noundef !6 ; 2 uses
  %i.he = icmp eq i8 %i.hd, -1
  br i1 %i.he, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.09)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %_RINvMCsfUv75jb5FCv_17lance_arrow_statsNtB3_21StatisticsAccumulator12update_itemsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1l_6filter6FilterINtNtNtB1p_3ops5range5RangejENCNvB2_6update0ENCB2W_s_0EEB3_.exit

bb.bg:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.09, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.8, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.526.0..sroa_idx, i64 63, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.09, i64 48, i1 false)
  %.sroa.7.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i8 %i.hd, ptr %.sroa.7.0..sroa_idx10, align 8
  %.sroa.8.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.i, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.0..sroa_idx12, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8, i64 7, i1 false)
  %.sroa.8.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 1 dereferenceable(56) %.sroa.8.56..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.09)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  invoke fastcc void @_RNvMCsfUv75jb5FCv_17lance_arrow_statsNtB2_21StatisticsAccumulator10update_min(ptr noalias noundef align 8 dereferenceable(184) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %i.i)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  call fastcc void @_RNvMCsfUv75jb5FCv_17lance_arrow_statsNtB2_21StatisticsAccumulator10update_max(ptr noalias noundef align 8 dereferenceable(184) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %i.k)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvMCsfUv75jb5FCv_17lance_arrow_statsNtB3_21StatisticsAccumulator12update_itemsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1l_6filter6FilterINtNtNtB1p_3ops5range5RangejENCNvB2_6update0ENCB2W_s_0EEB3_.exit

_RINvMCsfUv75jb5FCv_17lance_arrow_statsNtB3_21StatisticsAccumulator12update_itemsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1l_6filter6FilterINtNtNtB1p_3ops5range5RangejENCNvB2_6update0ENCB2W_s_0EEB3_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit6.i73, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates0_0ENCB1M_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit6.i53, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates2_0ENCB1M_s3_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit6.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6update0ENCB1M_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i, %bb.bh, %.split, %bb.bf, %bb.d
  ret void

bb.bi:                                            ; preds = %bb.bg
  %i.hf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef align 8 dereferenceable(56) %i.k) #17
          to label %common.resume unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RNvNtCsfUv75jb5FCv_17lance_arrow_stats3nan10count_nans(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 20 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [8 x i8], align 8                 ; 20 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 3 uses
  %i.i = alloca [8 x i8], align 8                 ; 20 uses
  %i.j = alloca [16 x i8], align 16               ; 4 uses
  %i.k = alloca [16 x i8], align 16               ; 4 uses
  %i.l = alloca [16 x i8], align 16               ; 4 uses
  %i.m = tail call noundef nonnull align 8 ptr @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9data_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
  %i.n = load i8, ptr %i.m, align 8, !range !7, !noundef !6
  switch i8 %i.n, label %.loopexit [
    i8 10, label %bb.b
    i8 11, label %bb.d
    i8 12, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val17 = load ptr, ptr %i.o, align 8, !nonnull !6, !align !10, !noundef !6 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val17, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !8, !invariant.load !6
  %i.r = add nsw i64 %i.q, -1
  %i.s = and i64 %i.r, -16
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = getelementptr i8, ptr %.val17, i64 32
  %.val.i.i = load ptr, ptr %i.v, align 8
  %i.w = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %i.u), !inline_history !1025 ; 2 uses
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 8 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !invariant.load !6, !nonnull !6
  call void %i.aa(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.l, ptr noundef %i.x), !inline_history !1025
  %i.ab = load i128, ptr %i.l, align 16, !noundef !6
  %i.ac = icmp ne i128 %i.ab, -59204905256835634698325885580467808231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not1.i = icmp eq ptr %i.x, null
  %.not.i = or i1 %.not1.i, %i.ac
  br i1 %.not.i, label %bb.c, label %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float16TypeECsfUv75jb5FCv_17lance_arrow_stats.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable

_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float16TypeECsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !6
  %i.af = lshr i64 %i.ae, 1                       ; 13 uses
  %.not75 = icmp eq i64 %i.af, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph68
end_hunk_1
begin_hunk_2_@_RNvXs5_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq:bb.a

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.d = phi i8 [ %i.fs, %tailrecurse ], [ %i.a, %bb.a ]
  %.tr3477 = phi ptr [ %i.fr, %tailrecurse ], [ %1, %bb.a ] ; 33 uses
  %.tr76 = phi ptr [ %i.fp, %tailrecurse ], [ %0, %bb.a ] ; 33 uses
  switch i8 %i.d, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit [
    i8 13, label %bb.b
    i8 16, label %bb.c
    i8 17, label %bb.d
    i8 18, label %bb.e
    i8 19, label %bb.f
    i8 21, label %bb.g
    i8 27, label %bb.h
    i8 28, label %bb.i
    i8 29, label %bb.j
    i8 30, label %bb.k
    i8 31, label %bb.l
    i8 32, label %bb.m
    i8 33, label %bb.p
    i8 34, label %bb.t
    i8 35, label %bb.u
    i8 36, label %bb.v
    i8 37, label %bb.w
    i8 38, label %bb.x
    i8 39, label %bb.y
    i8 40, label %bb.z
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !11, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !11, !noundef !6
  %i.i = icmp eq i8 %i.f, %i.h
  br i1 %i.i, label %bb.aa, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.k = load i8, ptr %i.j, align 1, !range !11, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.m = load i8, ptr %i.l, align 1, !range !11, !noundef !6
  %i.n = icmp eq i8 %i.k, %i.m
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.p = load i8, ptr %i.o, align 1, !range !11, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.r = load i8, ptr %i.q, align 1, !range !11, !noundef !6
  %i.s = icmp eq i8 %i.p, %i.r
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.u = load i8, ptr %i.t, align 1, !range !11, !noundef !6
  %i.v = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.w = load i8, ptr %i.v, align 1, !range !11, !noundef !6
  %i.x = icmp eq i8 %i.u, %i.w
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.z = load i8, ptr %i.y, align 1, !range !5, !noundef !6
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !range !5, !noundef !6
  %i.ac = icmp eq i8 %i.z, %i.ab
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr76, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !6
  %i.af = getelementptr inbounds nuw i8, ptr %.tr3477, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noundef !6
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.am = icmp eq ptr %i.aj, %i.al
  br i1 %i.am, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ad

bb.i:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ae

bb.j:                                             ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %.tr76, i64 4
  %i.at = load i32, ptr %i.as, align 4, !noundef !6
  %i.au = getelementptr inbounds nuw i8, ptr %.tr3477, i64 4
  %i.av = load i32, ptr %i.au, align 4, !noundef !6
  %i.aw = icmp eq i32 %i.at, %i.av
  br i1 %i.aw, label %bb.af, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.bb = icmp eq ptr %i.ay, %i.ba
  br i1 %i.bb, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ah

bb.l:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.bg = icmp eq ptr %i.bd, %i.bf
  br i1 %i.bg, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ai

bb.m:                                             ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %.val = load ptr, ptr %i.bh, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.tr76, i64 16
  %.val21 = load i64, ptr %i.bj, align 8, !noundef !6 ; 3 uses
  %.val22 = load ptr, ptr %i.bi, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.tr3477, i64 16
  %.val23 = load i64, ptr %i.bk, align 8, !noundef !6
  %i.bl = icmp eq ptr %.val, %.val22
  %i.bm = icmp eq i64 %.val21, %.val23            ; 2 uses
  %i.bn = and i1 %i.bl, %i.bm
  br i1 %i.bn, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %.val22, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  br i1 %i.bm, label %bb.o, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  %i.bq = icmp eq i64 %.val21, 0
  br i1 %i.bq, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.o, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.i.i.i.i
  %.sroa.01.07.i.i.i.i = phi i64 [ %i.bx, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.i.i.i.i ], [ 0, %bb.o ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.sroa.01.07.i.i.i.i
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.sroa.01.07.i.i.i.i
  %.val.i.i.i.i = load ptr, ptr %i.br, align 8, !alias.scope !1124, !noalias !1125, !nonnull !6, !noundef !6 ; 2 uses
  %.val5.i.i.i.i = load ptr, ptr %i.bs, align 8, !alias.scope !1125, !noalias !1124, !nonnull !6, !noundef !6 ; 2 uses
  %i.bt = icmp eq ptr %.val.i.i.i.i, %.val5.i.i.i.i
  br i1 %i.bt, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.i.i.i.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsfUv75jb5FCv_17lance_arrow_stats.exit.i.i.i.i

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsfUv75jb5FCv_17lance_arrow_stats.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i, i64 16
  %i.bw = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bv), !noalias !1126
  br i1 %i.bw, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.i.i.i.i, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.i.i.i.i: ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsfUv75jb5FCv_17lance_arrow_stats.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.bx = add nuw nsw i64 %.sroa.01.07.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bx, %.val21
  br i1 %exitcond.not.i.i.i.i, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i.i.i

bb.p:                                             ; preds = %.lr.ph
  %i.by = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %.val24 = load ptr, ptr %i.by, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.tr76, i64 16
  %.val25 = load i64, ptr %i.ca, align 8, !noundef !6 ; 3 uses
  %.val26 = load ptr, ptr %i.bz, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.tr3477, i64 16
  %.val27 = load i64, ptr %i.cb, align 8, !noundef !6
  %i.cc = icmp eq ptr %.val24, %.val26
  %i.cd = icmp eq i64 %.val25, %.val27            ; 2 uses
  %i.ce = and i1 %i.cc, %i.cd
  br i1 %i.ce, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %.val24, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %.val26, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  br i1 %i.cd, label %bb.r, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.q
  %i.ch = icmp eq i64 %.val25, 0
  br i1 %i.ch, label %.loopexit, label %.lr.ph.i.i.i.i29

.lr.ph.i.i.i.i29:                                 ; preds = %bb.r, %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCsfUv75jb5FCv_17lance_arrow_stats.exit.thread9.i.i.i.i
  %.sroa.01.011.i.i.i.i = phi i64 [ %i.cq, %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCsfUv75jb5FCv_17lance_arrow_stats.exit.thread9.i.i.i.i ], [ 0, %bb.r ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %.sroa.01.011.i.i.i.i ; 2 uses
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %.sroa.01.011.i.i.i.i ; 2 uses
  %.val.i.i.i.i30 = load i8, ptr %i.ci, align 1, !alias.scope !1127, !noalias !1128, !noundef !6
  %i.ck = getelementptr i8, ptr %i.ci, i64 8
  %.val5.i.i.i.i31 = load ptr, ptr %i.ck, align 8, !alias.scope !1127, !noalias !1128 ; 3 uses
  %.val6.i.i.i.i = load i8, ptr %i.cj, align 1, !alias.scope !1128, !noalias !1127, !noundef !6
  %i.cl = getelementptr i8, ptr %i.cj, i64 8
  %.val7.i.i.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !1128, !noalias !1127 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i30, %.val6.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.s, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %.lr.ph.i.i.i.i29
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i.i.i31) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i.i.i) ]
  %i.cm = icmp eq ptr %.val5.i.i.i.i31, %.val7.i.i.i.i
  br i1 %i.cm, label %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCsfUv75jb5FCv_17lance_arrow_stats.exit.thread9.i.i.i.i, label %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCsfUv75jb5FCv_17lance_arrow_stats.exit.i.i.i.i

_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCsfUv75jb5FCv_17lance_arrow_stats.exit.i.i.i.i: ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i31, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %.val7.i.i.i.i, i64 16
  %i.cp = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.cn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.co), !noalias !1129
  br i1 %i.cp, label %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCsfUv75jb5FCv_17lance_arrow_stats.exit.thread9.i.i.i.i, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCsfUv75jb5FCv_17lance_arrow_stats.exit.thread9.i.i.i.i: ; preds = %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCsfUv75jb5FCv_17lance_arrow_stats.exit.i.i.i.i, %bb.s
  %i.cq = add nuw nsw i64 %.sroa.01.011.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i32 = icmp eq i64 %i.cq, %.val25
  br i1 %exitcond.not.i.i.i.i32, label %.loopexit, label %.lr.ph.i.i.i.i29

bb.t:                                             ; preds = %.lr.ph
  %i.cr = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !6, !noundef !6
  %i.ct = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !6, !noundef !6
  %i.cv = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cu)
  br i1 %i.cv, label %tailrecurse, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %.lr.ph
  %i.cw = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !noundef !6
  %i.cy = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !noundef !6
  %i.da = icmp eq i8 %i.cx, %i.cz
  br i1 %i.da, label %bb.aj, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %.lr.ph
  %i.db = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !noundef !6
  %i.dd = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.de = load i8, ptr %i.dd, align 1, !noundef !6
  %i.df = icmp eq i8 %i.dc, %i.de
  br i1 %i.df, label %bb.ak, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %.lr.ph
  %i.dg = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !noundef !6
  %i.di = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !noundef !6
  %i.dk = icmp eq i8 %i.dh, %i.dj
  br i1 %i.dk, label %bb.al, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %.lr.ph
  %i.dl = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.dm = load i8, ptr %i.dl, align 1, !noundef !6
  %i.dn = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !noundef !6
  %i.dp = icmp eq i8 %i.dm, %i.do
  br i1 %i.dp, label %bb.am, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %.lr.ph
  %i.dq = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !range !17, !noundef !6
  %i.ds = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !range !17, !noundef !6
  %i.du = icmp eq i8 %i.dr, %i.dt
  br i1 %i.du, label %bb.an, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %.lr.ph
  %i.dv = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.dz = icmp eq ptr %i.dw, %i.dy
  br i1 %i.dz, label %bb.aq, label %bb.ap

bb.aa:                                            ; preds = %bb.b
  %i.ea = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !noundef !6 ; 3 uses
  %.not = icmp eq ptr %i.eb, null                 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !noundef !6 ; 3 uses
  %i.ee = icmp eq ptr %i.ed, null                 ; 2 uses
  %brmerge186 = or i1 %.not, %i.ee
  %.mux = and i1 %.not, %i.ee
  br i1 %brmerge186, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ef = getelementptr inbounds nuw i8, ptr %.tr76, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %.tr3477, i64 16
  %i.eh = load i64, ptr %i.ef, align 8, !noundef !6 ; 2 uses
  %i.ei = load i64, ptr %i.eg, align 8, !noundef !6
  %i.ej = icmp eq ptr %i.eb, %i.ed                ; 2 uses
  %i.ek = icmp eq i64 %i.eh, %i.ei                ; 2 uses
  %i.el = and i1 %i.ej, %i.ek
  %.not20 = xor i1 %i.ek, true
  %brmerge = or i1 %i.ej, %.not20
  br i1 %brmerge, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.en, ptr nonnull %i.em, i64 %i.eh)
  %i.eo = icmp eq i32 %bcmp, 0
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %bb.h
  %i.ep = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.er = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.eq)
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ae:                                            ; preds = %bb.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.eu = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.es, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.et)
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %bb.j
  %i.ev = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ez = icmp eq ptr %i.ew, %i.ey
  br i1 %i.ez, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fc = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fb)
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ah:                                            ; preds = %bb.k
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.ff = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fe)
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.l
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.fi = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fh)
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

.loopexit:                                        ; preds = %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCsfUv75jb5FCv_17lance_arrow_stats.exit.thread9.i.i.i.i, %bb.p, %bb.r
  %i.fj = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.fk = load i8, ptr %i.fj, align 1, !range !17, !noundef !6
  %i.fl = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.fm = load i8, ptr %i.fl, align 1, !range !17, !noundef !6
  %i.fn = icmp eq i8 %i.fk, %i.fm
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

tailrecurse:                                      ; preds = %bb.t
  %i.fo = getelementptr inbounds nuw i8, ptr %.tr76, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.tr3477, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.fs = load i8, ptr %i.fp, align 8, !range !7, !noundef !6 ; 2 uses
  %i.ft = load i8, ptr %i.fr, align 8, !range !7, !noundef !6
  %i.fu = icmp eq i8 %i.fs, %i.ft
  br i1 %i.fu, label %.lr.ph, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.u
  %i.fv = getelementptr inbounds nuw i8, ptr %.tr76, i64 2
  %i.fw = load i8, ptr %i.fv, align 2, !noundef !6
  %i.fx = getelementptr inbounds nuw i8, ptr %.tr3477, i64 2
  %i.fy = load i8, ptr %i.fx, align 2, !noundef !6
  %i.fz = icmp eq i8 %i.fw, %i.fy
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ak:                                            ; preds = %bb.v
  %i.ga = getelementptr inbounds nuw i8, ptr %.tr76, i64 2
  %i.gb = load i8, ptr %i.ga, align 2, !noundef !6
  %i.gc = getelementptr inbounds nuw i8, ptr %.tr3477, i64 2
  %i.gd = load i8, ptr %i.gc, align 2, !noundef !6
  %i.ge = icmp eq i8 %i.gb, %i.gd
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.al:                                            ; preds = %bb.w
  %i.gf = getelementptr inbounds nuw i8, ptr %.tr76, i64 2
  %i.gg = load i8, ptr %i.gf, align 2, !noundef !6
  %i.gh = getelementptr inbounds nuw i8, ptr %.tr3477, i64 2
  %i.gi = load i8, ptr %i.gh, align 2, !noundef !6
  %i.gj = icmp eq i8 %i.gg, %i.gi
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.am:                                            ; preds = %bb.x
  %i.gk = getelementptr inbounds nuw i8, ptr %.tr76, i64 2
  %i.gl = load i8, ptr %i.gk, align 2, !noundef !6
  %i.gm = getelementptr inbounds nuw i8, ptr %.tr3477, i64 2
  %i.gn = load i8, ptr %i.gm, align 2, !noundef !6
  %i.go = icmp eq i8 %i.gl, %i.gn
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.an:                                            ; preds = %bb.y
  %i.gp = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.gt = icmp eq ptr %i.gq, %i.gs
  br i1 %i.gt, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gw = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gv)
end_hunk_2
