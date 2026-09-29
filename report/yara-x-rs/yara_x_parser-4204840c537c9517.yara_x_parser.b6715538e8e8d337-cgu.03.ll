Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_parser-4204840c537c9517.yara_x_parser.b6715538e8e8d337-cgu.03?download=true
inline.NumInlined: 170
inline.NumDeleted: 29
begin_hunk_0_@_RINvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast10ascii_tree21quantifier_ascii_treeQINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEEB6_:bb.a
  %i.ai = load i64, ptr %i.c, align 8, !range !7, !noundef !5
  %i.aj = trunc nuw i64 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !8, !noundef !5 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.aj, label %bb.t, label %bb.u, !prof !6

bb.t:                                             ; preds = %bb.s
  %i.an = load i64, ptr %i.am, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.al, i64 %i.an) #16
          to label %bb.o unwind label %bb.r

bb.u:                                             ; preds = %bb.s
  %i.ao = load ptr, ptr %i.am, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ap = icmp samesign ugt i64 %i.al, 2
  tail call void @llvm.assume(i1 %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ao, ptr noundef nonnull align 1 dereferenceable(3) @0, i64 3, i1 false)
  store i64 %i.al, ptr %i.h, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.ao, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 3, ptr %.sroa.517.0..sroa_idx, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.aq, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.n

bb.v:                                             ; preds = %bb.x, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit41
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.w:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit41
  %i.as = load i64, ptr %i.b, align 8, !range !7, !noundef !5
  %i.at = trunc nuw i64 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.av = load i64, ptr %i.au, align 8, !range !8, !noundef !5 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.at, label %bb.x, label %bb.y, !prof !6

bb.x:                                             ; preds = %bb.w
  %i.ax = load i64, ptr %i.aw, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.av, i64 %i.ax) #16
          to label %bb.o unwind label %bb.v

bb.y:                                             ; preds = %bb.w
  %i.ay = load ptr, ptr %i.aw, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.az = icmp samesign ugt i64 %i.av, 2
  tail call void @llvm.assume(i1 %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ay, ptr noundef nonnull align 1 dereferenceable(3) @1, i64 3, i1 false)
  store i64 %i.av, ptr %i.j, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ay, ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 3, ptr %.sroa.523.0..sroa_idx, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.ba, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.53.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.n

bb.z:                                             ; preds = %bb.h
  %i.bb = load i64, ptr %i.p, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.bb) #16
  unreachable

bb.aa:                                            ; preds = %bb.h
  %i.bc = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bd = icmp samesign ugt i64 %i.o, 9
  tail call void @llvm.assume(i1 %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.bc, ptr noundef nonnull align 1 dereferenceable(10) @2, i64 10, i1 false)
  store i64 %i.o, ptr %i.e, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.bc, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 10, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15
  %i.be = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 145) 48, i64 noundef 8) #15 ; 5 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.ab, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit42, !prof !6

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #16
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ae, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.ae ], [ %i.bg, %bb.ad ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #14
          to label %bb.q unwind label %bb.p

bb.ad:                                            ; preds = %bb.ab
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit42: ; preds = %bb.aa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !26, !noalias !27, !nonnull !5, !noundef !5
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !26, !noalias !27, !nonnull !5, !noundef !5 ; 4 uses
  %i.bl = icmp eq ptr %i.bk, %i.bi
  br i1 %i.bl, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtB5_8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit43.thread, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtB5_8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit43

bb.ae:                                            ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtB5_8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit43.thread
  %i.bm = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef 48, i64 noundef 8) #15
  br label %bb.ac

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtB5_8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit43: ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit42
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store ptr %i.bn, ptr %i.bj, align 8, !alias.scope !26, !noalias !27
  %.sroa.012.0.copyload13 = load i64, ptr %i.bk, align 8, !noalias !26 ; 2 uses
  %.not31 = icmp eq i64 %.sroa.012.0.copyload13, -2
  br i1 %.not31, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtB5_8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit43.thread, label %bb.af, !prof !9

bb.af:                                            ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtB5_8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit43
  %.sroa.614.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.4.0..sroa.011.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa.011.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.614.0..sroa_idx15, i64 40, i1 false)
  store i64 %.sroa.012.0.copyload13, ptr %i.be, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %i.bo, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.be, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 1, ptr %.sroa.59.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.n

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtB5_8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit43.thread: ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit42, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtB5_8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit43
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #16
          to label %bb.o unwind label %bb.ae

bb.ag:                                            ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtB5_8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit
  %.sroa.6.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %.sroa.07.0.copyload8, ptr %0, align 8
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx9, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx10, i64 40, i1 false)
  br label %bb.n

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtB5_8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit.thread: ; preds = %bb.i, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtB5_8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #17
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsdJkkaF0JZ31_10ascii_tree4TreeE8push_mutCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !10, !noundef !5
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsdJkkaF0JZ31_10ascii_tree4TreeE8grow_oneCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdJkkaF0JZ31_10ascii_tree4TreeECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(48) %1) #14
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef range(i64 24, 145) %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15
  %i.a = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 145) %0, i64 noundef 8) #15 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %0) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast10ascii_tree15rule_ascii_tree(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 12 uses
  %i.h = alloca [24 x i8], align 8                ; 12 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 3 uses
  %i.q = alloca [24 x i8], align 8                ; 12 uses
  %i.r = alloca [48 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [48 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [48 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [48 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i64 0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 7 uses
  store i64 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.ae, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef 4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.d unwind label %.thread83

bb.c:                                             ; preds = %bb.l, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = load i64, ptr %i.af, align 8, !range !4, !noundef !5
  %.not27 = icmp eq i64 %i.ag, -1
  br i1 %.not27, label %bb.o, label %bb.n

.thread83:                                        ; preds = %.invoke, %bb.n, %bb.o, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread70

bb.d:                                             ; preds = %bb.b
  %i.ah = load i64, ptr %i.l, align 8, !range !7, !noundef !5
  %i.ai = trunc nuw i64 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !8, !noundef !5 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  br i1 %i.ai, label %bb.e, label %bb.f, !prof !6

bb.e:                                             ; preds = %bb.d
  %i.am = load i64, ptr %i.al, align 8
  br label %.invoke

.invoke:                                          ; preds = %bb.z, %bb.q, %bb.e
  %i.an = phi i64 [ %i.ak, %bb.e ], [ %i.bk, %bb.q ], [ %i.ch, %bb.z ]
  %i.ao = phi i64 [ %i.am, %bb.e ], [ %i.bm, %bb.q ], [ %i.cj, %bb.z ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.an, i64 %i.ao) #16
          to label %.cont unwind label %.thread83

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr %i.al, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aq = icmp samesign ugt i64 %i.ak, 3
  tail call void @llvm.assume(i1 %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i32 1635018093, ptr %i.ap, align 1
  store i64 %i.ak, ptr %i.y, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.ap, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 4, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = load i64, ptr %i.at, align 8, !noundef !5
  %i.av = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %i.au
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCsdJkkaF0JZ31_10ascii_tree4TreeEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4MetaENCNvNtB3m_10ascii_tree15rule_ascii_tree0EE9from_iterB3o_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noundef nonnull %i.as, ptr noundef nonnull %i.av)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #14
          to label %.thread70 unwind label %bb.m

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.ay = load i64, ptr %i.ac, align 8, !alias.scope !51, !noalias !52, !noundef !5 ; 3 uses
  %i.az = load i64, ptr %i.aa, align 8, !range !10, !alias.scope !51, !noalias !52, !noundef !5
  %i.ba = icmp eq i64 %i.ay, %i.az
  br i1 %i.ba, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsdJkkaF0JZ31_10ascii_tree4TreeE8grow_oneCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.l unwind label %bb.j, !noalias !52

bb.j:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdJkkaF0JZ31_10ascii_tree4TreeECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.z) #14
          to label %.thread70 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.bd = load ptr, ptr %i.ab, align 8, !alias.scope !51, !noalias !52, !nonnull !5, !noundef !5
  %i.be = getelementptr inbounds nuw [48 x i8], ptr %i.bd, i64 %i.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.be, ptr noundef nonnull align 8 dereferenceable(48) %i.z, i64 48, i1 false)
  %i.bf = add i64 %i.ay, 1
  store i64 %i.bf, ptr %i.ac, align 8, !alias.scope !51, !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.c

bb.m:                                             ; preds = %.thread70, %bb.bv, %.body56, %bb.ac, %bb.s, %bb.g
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.n:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.p unwind label %.thread83

bb.o:                                             ; preds = %bb.x, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef 9, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.y unwind label %.thread83

bb.p:                                             ; preds = %bb.n
  %i.bh = load i64, ptr %i.k, align 8, !range !7, !noundef !5
  %i.bi = trunc nuw i64 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !range !8, !noundef !5 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br i1 %i.bi, label %bb.q, label %bb.r, !prof !6

bb.q:                                             ; preds = %bb.p
  %i.bm = load i64, ptr %i.bl, align 8
  br label %.invoke

bb.r:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.bl, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bo = icmp samesign ugt i64 %i.bk, 6
  call void @llvm.assume(i1 %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.bn, ptr noundef nonnull align 1 dereferenceable(7) @9, i64 7, i1 false)
  store i64 %i.bk, ptr %i.v, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.bn, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 7, ptr %.sroa.66.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
end_hunk_0
begin_hunk_1_@_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast10ascii_tree18pattern_ascii_tree:bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.cb, i64 %i.cd) #16
          to label %bb.w unwind label %bb.t, !noalias !73

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.t
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13, !noalias !73
  unreachable

bb.y:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit73
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body75

.body75:                                          ; preds = %bb.t, %bb.y
  %eh.lpad-body76 = phi { ptr, i32 } [ %i.cf, %bb.y ], [ %i.bx, %bb.t ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bp, i64 noundef 48, i64 noundef 8) #15
  br label %bb.r

bb.z:                                             ; preds = %bb.u
  %i.cg = load ptr, ptr %i.cc, align 8, !noalias !73, !nonnull !5, !noundef !5 ; 2 uses
  %i.ch = icmp samesign ugt i64 %i.cb, 2
  call void @llvm.assume(i1 %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cg, ptr noundef nonnull align 1 dereferenceable(3) @93, i64 3, i1 false), !noalias !73
  %.sroa.6.0..sroa.088.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa.088.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !73
  store i64 %i.cb, ptr %i.bp, align 8
  %.sroa.4.0..sroa.088.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.cg, ptr %.sroa.4.0..sroa.088.0..sroa_idx, align 8
  %.sroa.5.0..sroa.088.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i64 3, ptr %.sroa.5.0..sroa.088.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %i.ci, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bp, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 1, ptr %.sroa.53.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.l

bb.aa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfF8zpZz1lvn_13yara_x_parser.exit.i80, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit68
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

bb.ab:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit68
  %i.ck = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.cl = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.cl, ptr %i.c, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsfF8zpZz1lvn_13yara_x_parser, ptr %.sroa.434.0..sroa_idx, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ck, ptr %i.cm, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsfF8zpZz1lvn_13yara_x_parser, ptr %.sroa.438.0..sroa_idx, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.g, ptr %i.cn, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsfF8zpZz1lvn_13yara_x_parser, ptr %.sroa.442.0..sroa_idx, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.f, ptr %i.co, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsfF8zpZz1lvn_13yara_x_parser, ptr %.sroa.446.0..sroa_idx, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.e, ptr %i.cp, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.450.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @20, ptr noundef nonnull %i.c)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit78 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #14
          to label %common.resume.sink.split unwind label %bb.m

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit78: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfF8zpZz1lvn_13yara_x_parser.exit.i80 unwind label %bb.ad

bb.ad:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit78
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume.sink.split unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfF8zpZz1lvn_13yara_x_parser.exit.i80: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit78
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser.exit84 unwind label %bb.aa

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser.exit84: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfF8zpZz1lvn_13yara_x_parser.exit.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.ct, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.al, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.56.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast10ascii_tree19build_tree_for_expr(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, i32 %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 6 uses
  %i.aq = alloca [24 x i8], align 8               ; 6 uses
  %i.ar = alloca [24 x i8], align 8               ; 6 uses
  %i.as = alloca [24 x i8], align 8               ; 6 uses
  %i.at = alloca [24 x i8], align 8               ; 6 uses
  %i.au = alloca [24 x i8], align 8               ; 6 uses
  %i.av = alloca [24 x i8], align 8               ; 6 uses
  %i.aw = alloca [24 x i8], align 8               ; 6 uses
  %i.ax = alloca [24 x i8], align 8               ; 6 uses
  %i.ay = alloca [24 x i8], align 8               ; 6 uses
  %i.az = alloca [24 x i8], align 8               ; 6 uses
  %i.ba = alloca [24 x i8], align 8               ; 6 uses
  %i.bb = alloca [24 x i8], align 8               ; 6 uses
  %i.bc = alloca [24 x i8], align 8               ; 6 uses
  %i.bd = alloca [24 x i8], align 8               ; 6 uses
  %i.be = alloca [24 x i8], align 8               ; 6 uses
  %i.bf = alloca [24 x i8], align 8               ; 6 uses
  %i.bg = alloca [24 x i8], align 8               ; 6 uses
  %i.bh = alloca [24 x i8], align 8               ; 6 uses
  %i.bi = alloca [24 x i8], align 8               ; 6 uses
  %i.bj = alloca [24 x i8], align 8               ; 6 uses
  %i.bk = alloca [24 x i8], align 8               ; 6 uses
  %i.bl = alloca [24 x i8], align 8               ; 6 uses
  %i.bm = alloca [24 x i8], align 8               ; 6 uses
  %i.bn = alloca [24 x i8], align 8               ; 6 uses
  %i.bo = alloca [24 x i8], align 8               ; 6 uses
  %i.bp = alloca [24 x i8], align 8               ; 6 uses
  %i.bq = alloca [24 x i8], align 8               ; 6 uses
  %i.br = alloca [24 x i8], align 8               ; 6 uses
  %i.bs = alloca [24 x i8], align 8               ; 6 uses
  %i.bt = alloca [24 x i8], align 8               ; 6 uses
  %i.bu = alloca [24 x i8], align 8               ; 6 uses
  %i.bv = alloca [24 x i8], align 8               ; 6 uses
  %i.bw = alloca [24 x i8], align 8               ; 6 uses
  %i.bx = alloca [24 x i8], align 8               ; 6 uses
  %i.by = alloca [24 x i8], align 8               ; 6 uses
  %i.bz = alloca [24 x i8], align 8               ; 7 uses
  %i.ca = alloca [88 x i8], align 8               ; 8 uses
  %i.cb = alloca [24 x i8], align 8               ; 4 uses
  %i.cc = alloca [24 x i8], align 8               ; 7 uses
  %i.cd = alloca [48 x i8], align 8               ; 6 uses
  %i.ce = alloca [24 x i8], align 8               ; 7 uses
  %i.cf = alloca [32 x i8], align 8               ; 9 uses
  %i.cg = alloca [24 x i8], align 8               ; 7 uses
  %i.ch = alloca [48 x i8], align 8               ; 7 uses
  %i.ci = alloca [24 x i8], align 8               ; 7 uses
  %i.cj = alloca [48 x i8], align 8               ; 7 uses
  %i.ck = alloca [16 x i8], align 8               ; 5 uses
  %i.cl = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.4166 = alloca [40 x i8], align 8         ; 4 uses
  %i.cm = alloca [24 x i8], align 8               ; 6 uses
  %i.cn = alloca [48 x i8], align 8               ; 8 uses
  %i.co = alloca [32 x i8], align 8               ; 8 uses
  %i.cp = alloca [24 x i8], align 8               ; 6 uses
  %i.cq = alloca [24 x i8], align 8               ; 7 uses
  %i.cr = alloca [24 x i8], align 8               ; 7 uses
  %i.cs = alloca [48 x i8], align 8               ; 7 uses
  %.sroa.4146 = alloca [40 x i8], align 8         ; 4 uses
  %i.ct = alloca [24 x i8], align 8               ; 7 uses
  %i.cu = alloca [48 x i8], align 8               ; 7 uses
  %i.cv = alloca [24 x i8], align 8               ; 11 uses
  %i.cw = alloca [24 x i8], align 8               ; 4 uses
  %i.cx = alloca [24 x i8], align 8               ; 7 uses
  %i.cy = alloca [48 x i8], align 8               ; 4 uses
  %i.cz = alloca [24 x i8], align 8               ; 7 uses
  %i.da = alloca [48 x i8], align 8               ; 8 uses
  %i.db = alloca [24 x i8], align 8               ; 13 uses
  %i.dc = alloca [32 x i8], align 8               ; 9 uses
  %i.dd = alloca [24 x i8], align 8               ; 7 uses
  %i.de = alloca [48 x i8], align 8               ; 4 uses
  %i.df = alloca [24 x i8], align 8               ; 7 uses
  %i.dg = alloca [48 x i8], align 8               ; 8 uses
  %i.dh = alloca [48 x i8], align 8               ; 4 uses
  %i.di = alloca [24 x i8], align 8               ; 7 uses
  %i.dj = alloca [48 x i8], align 8               ; 8 uses
  %i.dk = alloca [24 x i8], align 8               ; 7 uses
  %i.dl = alloca [32 x i8], align 8               ; 9 uses
  %i.dm = alloca [24 x i8], align 8               ; 7 uses
  %i.dn = alloca [48 x i8], align 8               ; 7 uses
  %i.do = alloca [24 x i8], align 8               ; 7 uses
  %i.dp = alloca [48 x i8], align 8               ; 7 uses
  %i.dq = alloca [24 x i8], align 8               ; 7 uses
  %i.dr = alloca [48 x i8], align 8               ; 7 uses
  %i.ds = alloca [24 x i8], align 8               ; 4 uses
  %i.dt = alloca [24 x i8], align 8               ; 7 uses
  %i.du = alloca [48 x i8], align 8               ; 4 uses
  %i.dv = alloca [24 x i8], align 8               ; 7 uses
  %i.dw = alloca [48 x i8], align 8               ; 7 uses
  %i.dx = alloca [24 x i8], align 8               ; 7 uses
  %i.dy = alloca [24 x i8], align 8               ; 11 uses
  %i.dz = alloca [48 x i8], align 8               ; 5 uses
  %i.ea = alloca [32 x i8], align 8               ; 10 uses
  %i.eb = alloca [32 x i8], align 8               ; 7 uses
  %i.ec = alloca [24 x i8], align 8               ; 2 uses
  %.sroa.497 = alloca [40 x i8], align 8          ; 4 uses
  %i.ed = alloca [24 x i8], align 8               ; 6 uses
  %i.ee = alloca [48 x i8], align 8               ; 8 uses
  %i.ef = alloca [32 x i8], align 8               ; 8 uses
  %i.eg = alloca [24 x i8], align 8               ; 6 uses
  %i.eh = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.485 = alloca [40 x i8], align 8          ; 4 uses
  %i.ei = alloca [24 x i8], align 8               ; 7 uses
  %i.ej = alloca [48 x i8], align 8               ; 7 uses
  %i.ek = alloca [24 x i8], align 8               ; 10 uses
  %i.el = alloca [32 x i8], align 8               ; 8 uses
  %i.em = alloca [24 x i8], align 8               ; 7 uses
  %i.en = alloca [24 x i8], align 8               ; 7 uses
  %i.eo = alloca [48 x i8], align 8               ; 8 uses
  %i.ep = alloca [24 x i8], align 8               ; 7 uses
  %i.eq = alloca [32 x i8], align 8               ; 8 uses
  %i.er = alloca [16 x i8], align 8               ; 5 uses
  %i.es = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.6480 = alloca [24 x i8], align 8         ; 5 uses
  %i.et = alloca [16 x i8], align 8               ; 5 uses
  %i.eu = alloca [24 x i8], align 8               ; 4 uses
  %i.ev = alloca [24 x i8], align 8               ; 5 uses
  %i.ew = alloca [24 x i8], align 8               ; 7 uses
  %i.ex = alloca [24 x i8], align 8               ; 7 uses
  %i.ey = alloca [48 x i8], align 8               ; 8 uses
  %i.ez = alloca [16 x i8], align 8               ; 5 uses
  %i.fa = alloca [24 x i8], align 8               ; 4 uses
  %i.fb = alloca [24 x i8], align 8               ; 5 uses
  %i.fc = alloca [32 x i8], align 8               ; 8 uses
  %i.fd = alloca [16 x i8], align 8               ; 5 uses
  %i.fe = alloca [24 x i8], align 8               ; 4 uses
  %i.ff = alloca [24 x i8], align 8               ; 5 uses
  %i.fg = alloca [16 x i8], align 8               ; 5 uses
  %i.fh = alloca [24 x i8], align 8               ; 2 uses
  %i.fi = alloca [16 x i8], align 8               ; 5 uses
  %i.fj = alloca [24 x i8], align 8               ; 2 uses
  %i.fk = alloca [16 x i8], align 8               ; 5 uses
  %i.fl = alloca [24 x i8], align 8               ; 2 uses
  %i.fm = alloca [16 x i8], align 8               ; 5 uses
  %i.fn = alloca [24 x i8], align 8               ; 2 uses
  switch i32 %.0.val, label %default.unreachable [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
    i32 7, label %bb.j
    i32 8, label %bb.k
    i32 9, label %bb.l
    i32 10, label %bb.m
    i32 11, label %bb.fu
    i32 12, label %bb.fu
    i32 13, label %bb.n
    i32 14, label %bb.o
    i32 15, label %bb.p
    i32 16, label %bb.q
    i32 17, label %bb.r
    i32 18, label %bb.s
    i32 19, label %bb.t
    i32 20, label %bb.u
    i32 21, label %bb.v
    i32 22, label %bb.w
    i32 23, label %bb.x
    i32 24, label %bb.y
    i32 25, label %bb.z
    i32 26, label %bb.aa
    i32 27, label %bb.ab
    i32 28, label %bb.ac
    i32 29, label %bb.ad
    i32 30, label %bb.ae
    i32 31, label %bb.af
    i32 32, label %bb.ag
    i32 33, label %bb.ah
    i32 34, label %bb.ai
    i32 35, label %bb.aj
    i32 36, label %bb.ak
    i32 37, label %bb.al
    i32 38, label %bb.am
    i32 39, label %bb.an
    i32 40, label %bb.ao
    i32 41, label %bb.ap
    i32 42, label %bb.aq
    i32 43, label %bb.ar
    i32 44, label %bb.as
    i32 45, label %bb.at
    i32 46, label %bb.au
    i32 47, label %bb.av
    i32 48, label %bb.aw
    i32 49, label %bb.ay
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.rb
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.fo = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 24)
          to label %bb.az unwind label %.thread203 ; 5 uses

bb.d:                                             ; preds = %bb.a
  %i.fp = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 24)
          to label %bb.bj unwind label %.thread203 ; 5 uses

bb.e:                                             ; preds = %bb.a
  %i.fq = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 24)
          to label %bb.bo unwind label %.thread203 ; 5 uses

bb.f:                                             ; preds = %bb.a
  %i.fr = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 24)
          to label %bb.bt unwind label %.thread203 ; 5 uses

bb.g:                                             ; preds = %bb.a
  %i.fs = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 24)
          to label %bb.by unwind label %.thread203 ; 5 uses

bb.h:                                             ; preds = %bb.a
  %i.ft = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 24)
          to label %bb.cf unwind label %.thread203 ; 5 uses

bb.i:                                             ; preds = %bb.a
  %i.fu = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 24)
          to label %bb.cm unwind label %.thread203 ; 5 uses

bb.j:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.fv = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.fw = load i8, ptr %i.fv, align 8, !range !13, !noundef !5
  %i.fx = trunc nuw i8 %i.fw to i1
  %i.fy = getelementptr inbounds nuw i8, ptr %.8.val, i64 41
  %i.fz = load i8, ptr %i.fy, align 1, !range !13, !noundef !5
  %i.ga = trunc nuw i8 %i.fz to i1                ; 2 uses
  br i1 %i.fx, label %bb.cu, label %bb.ct

bb.k:                                             ; preds = %bb.a
  %i.gb = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 24)
          to label %bb.dh unwind label %.thread203 ; 5 uses

bb.l:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.gc = load i64, ptr %.8.val, align 8, !range !12, !noundef !5
  switch i64 %i.gc, label %bb.dp [
    i64 2, label %bb.do
    i64 0, label %bb.dq
  ]

bb.m:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.gd = load i32, ptr %.8.val, align 8, !range !137, !noundef !5
  %.not752 = icmp eq i32 %i.gd, -1
  br i1 %.not752, label %bb.fe, label %bb.ff

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq)
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.gg = load i64, ptr %1, align 8, !range !10, !noundef !5
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gi = load i64, ptr %i.gh, align 8, !noundef !5 ; 2 uses
  %i.gj = icmp ult i64 %i.gi, 192153584101141163
  tail call void @llvm.assume(i1 %i.gj)
  %i.gk = getelementptr inbounds nuw [48 x i8], ptr %i.gf, i64 %i.gi
  store ptr %i.gf, ptr %i.eq, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store i64 %i.gg, ptr %i.gl, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 5 uses
  store ptr %i.gf, ptr %i.gm, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.eq, i64 24 ; 3 uses
  store ptr %i.gk, ptr %i.gn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ep)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, i64 noundef 15, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.gn unwind label %bb.gm

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.by, i64 noundef 12, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.hm unwind label %.thread203

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el)
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.gq = load i64, ptr %1, align 8, !range !10, !noundef !5
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gs = load i64, ptr %i.gr, align 8, !noundef !5 ; 2 uses
  %i.gt = icmp ult i64 %i.gs, 192153584101141163
  tail call void @llvm.assume(i1 %i.gt)
  %i.gu = getelementptr inbounds nuw [48 x i8], ptr %i.gp, i64 %i.gs
  store ptr %i.gp, ptr %i.el, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store i64 %i.gq, ptr %i.gv, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 5 uses
  store ptr %i.gp, ptr %i.gw, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.el, i64 24 ; 3 uses
  store ptr %i.gu, ptr %i.gx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek)
  store i64 0, ptr %i.ek, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.gy, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 3 uses
  store i64 0, ptr %i.gz, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.ha = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.hb = load i32, ptr %i.ha, align 8, !range !137, !noundef !5
  %.not721 = icmp eq i32 %i.hb, -1
  br i1 %.not721, label %bb.hp, label %bb.hq

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.au, i64 noundef 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.iq unwind label %.thread203

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.av, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.it unwind label %.thread203

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aw, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.iw unwind label %.thread203

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ax, i64 noundef 2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
end_hunk_1
begin_hunk_2_@_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast10ascii_tree19build_tree_for_expr:bb.a
bb.cw:                                            ; preds = %bb.ct
  %i.lt = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 24)
          to label %bb.cz unwind label %.thread203 ; 3 uses

bb.cx:                                            ; preds = %bb.cv
  %i.lu = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg)
  store ptr %i.lu, ptr %i.fg, align 8
  %.sroa.4428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsfF8zpZz1lvn_13yara_x_parser, ptr %.sroa.4428.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.fh, ptr noundef nonnull @23, ptr noundef nonnull %i.fg)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.lv = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ls, i64 noundef 24, i64 noundef 8) #15
  br label %.thread

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit: ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ls, ptr noundef nonnull align 8 dereferenceable(24) %i.fh, i64 24, i1 false)
  br label %bb.be

bb.cz:                                            ; preds = %bb.cw
  %i.lw = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fi)
  store ptr %i.lw, ptr %i.fi, align 8
  %.sroa.4422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsfF8zpZz1lvn_13yara_x_parser, ptr %.sroa.4422.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.fj, ptr noundef nonnull @24, ptr noundef nonnull %i.fi)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit847 unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.lx = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lt, i64 noundef 24, i64 noundef 8) #15
  br label %.thread

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit847: ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fi)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lt, ptr noundef nonnull align 8 dereferenceable(24) %i.fj, i64 24, i1 false)
  br label %bb.be

bb.db:                                            ; preds = %bb.cu
  %i.ly = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 24)
          to label %bb.dd unwind label %.thread203 ; 3 uses

bb.dc:                                            ; preds = %bb.cu
  %i.lz = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 24)
          to label %bb.df unwind label %.thread203 ; 3 uses

bb.dd:                                            ; preds = %bb.db
  %i.ma = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fk)
  store ptr %i.ma, ptr %i.fk, align 8
  %.sroa.4416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsfF8zpZz1lvn_13yara_x_parser, ptr %.sroa.4416.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.fl, ptr noundef nonnull @25, ptr noundef nonnull %i.fk)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit849 unwind label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.mb = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ly, i64 noundef 24, i64 noundef 8) #15
  br label %.thread

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit849: ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ly, ptr noundef nonnull align 8 dereferenceable(24) %i.fl, i64 24, i1 false)
  br label %bb.be

bb.df:                                            ; preds = %bb.dc
  %i.mc = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fm)
  store ptr %i.mc, ptr %i.fm, align 8
  %.sroa.4410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsfF8zpZz1lvn_13yara_x_parser, ptr %.sroa.4410.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.fn, ptr noundef nonnull @26, ptr noundef nonnull %i.fm)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit851 unwind label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.md = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lz, i64 noundef 24, i64 noundef 8) #15
  br label %.thread

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit851: ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lz, ptr noundef nonnull align 8 dereferenceable(24) %i.fn, i64 24, i1 false)
  br label %bb.be

bb.dh:                                            ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.me = load ptr, ptr %.8.val, align 8, !nonnull !5, !noundef !5
  %i.mf = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.mg = load i64, ptr %i.mf, align 8, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.am, i64 noundef %i.mg, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.dj unwind label %bb.di

bb.di:                                            ; preds = %bb.dk, %bb.dh
  %i.mh = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gb, i64 noundef 24, i64 noundef 8) #15
  br label %.thread

bb.dj:                                            ; preds = %bb.dh
  %i.mi = load i64, ptr %i.am, align 8, !range !7, !noundef !5
  %i.mj = trunc nuw i64 %i.mi to i1
  %i.mk = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ml = load i64, ptr %i.mk, align 8, !range !8, !noundef !5 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  br i1 %i.mj, label %bb.dk, label %bb.dl, !prof !6

bb.dk:                                            ; preds = %bb.dj
  %i.mn = load i64, ptr %i.mm, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ml, i64 %i.mn) #16
          to label %bb.bh unwind label %bb.di

bb.dl:                                            ; preds = %bb.dj
  %i.mo = load ptr, ptr %i.mm, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.mp = icmp ule i64 %i.mg, %i.ml
  tail call void @llvm.assume(i1 %i.mp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %.not772 = icmp eq i64 %i.mg, 0
  br i1 %.not772, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dn, %bb.dl
  store i64 %i.ml, ptr %i.gb, align 8
  %.sroa.4405.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store ptr %i.mo, ptr %.sroa.4405.0..sroa_idx, align 8
  %.sroa.5406.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store i64 %i.mg, ptr %.sroa.5406.0..sroa_idx, align 8
  br label %bb.be

bb.dn:                                            ; preds = %bb.dl
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mo, ptr nonnull align 1 %i.me, i64 %i.mg, i1 false)
  br label %bb.dm

bb.do:                                            ; preds = %bb.l
  %i.mq = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 24)
          to label %bb.ex unwind label %.thread203 ; 5 uses

bb.dp:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fc)
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ms = load ptr, ptr %i.mr, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.mt = load i64, ptr %1, align 8, !range !10, !noundef !5
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mv = load i64, ptr %i.mu, align 8, !noundef !5 ; 2 uses
  %i.mw = icmp ult i64 %i.mv, 192153584101141163
  tail call void @llvm.assume(i1 %i.mw)
  %i.mx = getelementptr inbounds nuw [48 x i8], ptr %i.ms, i64 %i.mv
  store ptr %i.ms, ptr %i.fc, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store i64 %i.mt, ptr %i.my, align 8
  %i.mz = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 5 uses
  store ptr %i.ms, ptr %i.mz, align 8
  %i.na = getelementptr inbounds nuw i8, ptr %i.fc, i64 24 ; 3 uses
  store ptr %i.mx, ptr %i.na, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fa)
  %i.nb = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ez)
  store ptr %i.nb, ptr %i.ez, align 8
  %.sroa.4450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsfF8zpZz1lvn_13yara_x_parser, ptr %.sroa.4450.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.fa, ptr noundef nonnull @29, ptr noundef nonnull %i.ez)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit853 unwind label %bb.ea

bb.dq:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ff)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fe)
  %i.nc = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fd)
  store ptr %i.nc, ptr %i.fd, align 8
  %.sroa.4434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsfF8zpZz1lvn_13yara_x_parser, ptr %.sroa.4434.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.fe, ptr noundef nonnull @27, ptr noundef nonnull %i.fd)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit855 unwind label %.thread203

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit855: ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ff, ptr noundef nonnull align 8 dereferenceable(24) %i.fe, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe)
  %i.nd = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 48)
          to label %bb.dt unwind label %bb.ds     ; 6 uses

bb.dr:                                            ; preds = %bb.du, %bb.ds
  %.pn758 = phi { ptr, i32 } [ %i.nf, %bb.du ], [ %i.ne, %bb.ds ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ff) #14
          to label %.thread unwind label %bb.bi

bb.ds:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit855
  %i.ne = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.dt:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, i64 noundef 6, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.dv unwind label %bb.du

bb.du:                                            ; preds = %bb.dw, %bb.dt
  %i.nf = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nd, i64 noundef 48, i64 noundef 8) #15
  br label %bb.dr

bb.dv:                                            ; preds = %bb.dt
  %i.ng = load i64, ptr %i.al, align 8, !range !7, !noundef !5
  %i.nh = trunc nuw i64 %i.ng to i1
  %i.ni = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.nj = load i64, ptr %i.ni, align 8, !range !8, !noundef !5 ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  br i1 %i.nh, label %bb.dw, label %bb.dx, !prof !6

bb.dw:                                            ; preds = %bb.dv
  %i.nl = load i64, ptr %i.nk, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.nj, i64 %i.nl) #16
          to label %bb.bh unwind label %bb.du

bb.dx:                                            ; preds = %bb.dv
  %i.nm = load ptr, ptr %i.nk, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.nn = icmp samesign ugt i64 %i.nj, 5
  call void @llvm.assume(i1 %i.nn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.nm, ptr noundef nonnull align 1 dereferenceable(6) @28, i64 6, i1 false)
  %.sroa.6446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nd, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6446.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 %i.nj, ptr %i.nd, align 8
  %.sroa.4444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  store ptr %i.nm, ptr %.sroa.4444.0..sroa_idx, align 8
  %.sroa.5445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  store i64 6, ptr %.sroa.5445.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i64 24, i1 false)
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %i.no, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.nd, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 1, ptr %.sroa.536.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff)
  br label %bb.dy

bb.dy:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser.exit881, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser.exit917, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser.exit922, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser.exit896, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser.exit889, %bb.mb, %bb.ly, %bb.lv, %bb.ls, %bb.lp, %bb.lm, %bb.lj, %bb.lg, %bb.ld, %bb.la, %bb.kx, %bb.ku, %bb.kr, %bb.ko, %bb.kl, %bb.ki, %bb.kf, %bb.kc, %bb.jz, %bb.jw, %bb.jt, %bb.jq, %bb.jn, %bb.jk, %bb.jh, %bb.je, %bb.jb, %bb.iy, %bb.iv, %bb.is, %bb.ho, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser.exit871, %bb.gk, %bb.ft, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser.exit859, %bb.dx, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser.exit
  ret void

bb.dz:                                            ; preds = %bb.eb, %bb.ea
  %.pn768.pn.pn = phi { ptr, i32 } [ %.pn768.pn, %bb.eb ], [ %i.np, %bb.ea ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fc)
          to label %common.resume unwind label %bb.bi

bb.ea:                                            ; preds = %bb.dp
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit853: ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fb, ptr noundef nonnull align 8 dereferenceable(24) %i.fa, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fa)
  %i.nq = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 96)
          to label %bb.ed unwind label %bb.ec     ; 7 uses

bb.eb:                                            ; preds = %bb.ee, %bb.ec
  %.pn768.pn = phi { ptr, i32 } [ %.pn768, %bb.ee ], [ %i.nr, %bb.ec ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fb) #14
          to label %bb.dz unwind label %bb.bi

bb.ec:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit853
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.ed:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit853
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ey)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ex)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, i64 noundef 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.eg unwind label %bb.ef

bb.ee:                                            ; preds = %bb.eo, %bb.ej, %bb.ef
  %.pn768 = phi { ptr, i32 } [ %i.ns, %bb.ef ], [ %.pn766, %bb.eo ], [ %.pn761, %bb.ej ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nq, i64 noundef 96, i64 noundef 8) #15
  br label %bb.eb

bb.ef:                                            ; preds = %bb.eh, %bb.ed
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.eg:                                            ; preds = %bb.ed
  %i.nt = load i64, ptr %i.ak, align 8, !range !7, !noundef !5
  %i.nu = trunc nuw i64 %i.nt to i1
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.nw = load i64, ptr %i.nv, align 8, !range !8, !noundef !5 ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  br i1 %i.nu, label %bb.eh, label %bb.ei, !prof !6

bb.eh:                                            ; preds = %bb.eg
  %i.ny = load i64, ptr %i.nx, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.nw, i64 %i.ny) #16
          to label %bb.bh unwind label %bb.ef

bb.ei:                                            ; preds = %bb.eg
  %i.nz = load ptr, ptr %i.nx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.oa = icmp samesign ugt i64 %i.nw, 6
  call void @llvm.assume(i1 %i.oa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.nz, ptr noundef nonnull align 1 dereferenceable(7) @30, i64 7, i1 false)
  store i64 %i.nw, ptr %i.ex, align 8
  %.sroa.4454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store ptr %i.nz, ptr %.sroa.4454.0..sroa_idx, align 8
  %.sroa.6455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store i64 7, ptr %.sroa.6455.0..sroa_idx, align 8
  %i.ob = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 48)
          to label %bb.el unwind label %bb.ek     ; 4 uses

bb.ej:                                            ; preds = %bb.em, %bb.ek
  %.pn761 = phi { ptr, i32 } [ %i.og, %bb.em ], [ %i.oc, %bb.ek ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ex) #14
          to label %bb.ee unwind label %bb.bi

bb.ek:                                            ; preds = %bb.ei
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

bb.el:                                            ; preds = %bb.ei
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.od = load ptr, ptr %i.na, align 8, !alias.scope !139, !noalias !140, !nonnull !5, !noundef !5
  %i.oe = load ptr, ptr %i.mz, align 8, !alias.scope !139, !noalias !140, !nonnull !5, !noundef !5 ; 4 uses
  %i.of = icmp eq ptr %i.oe, %i.od
  br i1 %i.of, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit

bb.em:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit.thread
  %i.og = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ob, i64 noundef 48, i64 noundef 8) #15
  br label %bb.ej

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit: ; preds = %bb.el
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 48
  store ptr %i.oh, ptr %i.mz, align 8, !alias.scope !139, !noalias !140
  %.sroa.036.0.copyload37 = load i64, ptr %i.oe, align 8, !noalias !139 ; 2 uses
  %.not760 = icmp eq i64 %.sroa.036.0.copyload37, -2
  br i1 %.not760, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit.thread, label %bb.en, !prof !9

bb.en:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit
  %.sroa.6.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %.sroa.4.0..sroa.035.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa.035.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx39, i64 40, i1 false)
  store i64 %.sroa.036.0.copyload37, ptr %i.ob, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ey, ptr noundef nonnull align 8 dereferenceable(24) %i.ex, i64 24, i1 false)
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  store i64 1, ptr %i.oi, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  store ptr %i.ob, ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  store i64 1, ptr %.sroa.542.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ew)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, i64 noundef 5, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.eq unwind label %bb.ep

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit.thread: ; preds = %bb.el, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #16
          to label %bb.bh unwind label %bb.em

bb.eo:                                            ; preds = %bb.et, %bb.ep
  %.pn766 = phi { ptr, i32 } [ %i.oj, %bb.ep ], [ %.pn764, %bb.et ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdJkkaF0JZ31_10ascii_tree4TreeECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ey) #14
          to label %bb.ee unwind label %bb.bi

bb.ep:                                            ; preds = %bb.er, %bb.en
  %i.oj = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.eq:                                            ; preds = %bb.en
  %i.ok = load i64, ptr %i.aj, align 8, !range !7, !noundef !5
  %i.ol = trunc nuw i64 %i.ok to i1
  %i.om = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.on = load i64, ptr %i.om, align 8, !range !8, !noundef !5 ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  br i1 %i.ol, label %bb.er, label %bb.es, !prof !6

bb.er:                                            ; preds = %bb.eq
  %i.op = load i64, ptr %i.oo, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.on, i64 %i.op) #16
          to label %bb.bh unwind label %bb.ep

bb.es:                                            ; preds = %bb.eq
  %i.oq = load ptr, ptr %i.oo, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.or = icmp samesign ugt i64 %i.on, 4
  call void @llvm.assume(i1 %i.or)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.oq, ptr noundef nonnull align 1 dereferenceable(5) @32, i64 5, i1 false)
  store i64 %i.on, ptr %i.ew, align 8
  %.sroa.4457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store ptr %i.oq, ptr %.sroa.4457.0..sroa_idx, align 8
  %.sroa.6458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store i64 5, ptr %.sroa.6458.0..sroa_idx, align 8
  %i.os = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 48)
          to label %bb.ev unwind label %bb.eu     ; 4 uses

bb.et:                                            ; preds = %bb.ew, %bb.eu
  %.pn764 = phi { ptr, i32 } [ %i.ox, %bb.ew ], [ %i.ot, %bb.eu ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ew) #14
          to label %bb.eo unwind label %bb.bi

bb.eu:                                            ; preds = %bb.es
  %i.ot = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

bb.ev:                                            ; preds = %bb.es
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.ou = load ptr, ptr %i.na, align 8, !alias.scope !141, !noalias !142, !nonnull !5, !noundef !5
  %i.ov = load ptr, ptr %i.mz, align 8, !alias.scope !141, !noalias !142, !nonnull !5, !noundef !5 ; 4 uses
  %i.ow = icmp eq ptr %i.ov, %i.ou
  br i1 %i.ow, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit857.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit857

bb.ew:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit857.thread
  %i.ox = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.os, i64 noundef 48, i64 noundef 8) #15
  br label %bb.et

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit857: ; preds = %bb.ev
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 48
  store ptr %i.oy, ptr %i.mz, align 8, !alias.scope !141, !noalias !142
  %.sroa.042.0.copyload43 = load i64, ptr %i.ov, align 8, !noalias !141 ; 2 uses
  %.not763 = icmp eq i64 %.sroa.042.0.copyload43, -2
  br i1 %.not763, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit857.thread, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser.exit859, !prof !9

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser.exit859: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit857
  %.sroa.644.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %.sroa.448.0..sroa.041.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.448.0..sroa.041.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.644.0..sroa_idx45, i64 40, i1 false)
  store i64 %.sroa.042.0.copyload43, ptr %i.os, align 8
  %i.oz = getelementptr inbounds nuw i8, ptr %i.nq, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oz, ptr noundef nonnull align 8 dereferenceable(24) %i.ew, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nq, ptr noundef nonnull align 8 dereferenceable(48) %i.ey, i64 48, i1 false)
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nq, i64 72
  store i64 1, ptr %.sroa.447.0..sroa_idx, align 8
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nq, i64 80
  store ptr %i.os, ptr %.sroa.548.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nq, i64 88
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.fb, i64 24, i1 false)
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 2, ptr %i.pa, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.nq, ptr %.sroa.438.0..sroa_idx, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2, ptr %.sroa.539.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb)
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc)
  br label %bb.dy

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit857.thread: ; preds = %bb.ev, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit857
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #16
          to label %bb.bh unwind label %bb.ew

bb.ex:                                            ; preds = %bb.do
  %i.pb = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.pc = load ptr, ptr %i.pb, align 8, !nonnull !5, !noundef !5
  %i.pd = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.pe = load i64, ptr %i.pd, align 8, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, i64 noundef %i.pe, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ez unwind label %bb.ey

bb.ey:                                            ; preds = %bb.fa, %bb.ex
  %i.pf = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mq, i64 noundef 24, i64 noundef 8) #15
  br label %.thread

bb.ez:                                            ; preds = %bb.ex
  %i.pg = load i64, ptr %i.ai, align 8, !range !7, !noundef !5
  %i.ph = trunc nuw i64 %i.pg to i1
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.pj = load i64, ptr %i.pi, align 8, !range !8, !noundef !5 ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  br i1 %i.ph, label %bb.fa, label %bb.fb, !prof !6

bb.fa:                                            ; preds = %bb.ez
  %i.pl = load i64, ptr %i.pk, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.pj, i64 %i.pl) #16
          to label %bb.bh unwind label %bb.ey

bb.fb:                                            ; preds = %bb.ez
  %i.pm = load ptr, ptr %i.pk, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.pn = icmp ule i64 %i.pe, %i.pj
  tail call void @llvm.assume(i1 %i.pn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %.not757 = icmp eq i64 %i.pe, 0
  br i1 %.not757, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fd, %bb.fb
  store i64 %i.pj, ptr %i.mq, align 8
  %.sroa.4463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  store ptr %i.pm, ptr %.sroa.4463.0..sroa_idx, align 8
  %.sroa.5464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  store i64 %i.pe, ptr %.sroa.5464.0..sroa_idx, align 8
  br label %bb.be

bb.fd:                                            ; preds = %bb.fb
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pm, ptr nonnull align 1 %i.pc, i64 %i.pe, i1 false)
  br label %bb.fc

bb.fe:                                            ; preds = %bb.m
  %i.po = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 24)
          to label %bb.fg unwind label %.thread203 ; 5 uses

bb.ff:                                            ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu)
  %i.pp = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et)
  store ptr %i.pp, ptr %i.et, align 8
  %.sroa.4468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsfF8zpZz1lvn_13yara_x_parser, ptr %.sroa.4468.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.eu, ptr noundef nonnull @34, ptr noundef nonnull %i.et)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit861 unwind label %.thread203

bb.fg:                                            ; preds = %bb.fe
  %i.pq = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.pr = load ptr, ptr %i.pq, align 8, !nonnull !5, !noundef !5
  %i.ps = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.pt = load i64, ptr %i.ps, align 8, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, i64 noundef %i.pt, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.fi unwind label %bb.fh

bb.fh:                                            ; preds = %bb.fj, %bb.fg
  %i.pu = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.po, i64 noundef 24, i64 noundef 8) #15
  br label %.thread

bb.fi:                                            ; preds = %bb.fg
  %i.pv = load i64, ptr %i.ag, align 8, !range !7, !noundef !5
  %i.pw = trunc nuw i64 %i.pv to i1
  %i.px = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.py = load i64, ptr %i.px, align 8, !range !8, !noundef !5 ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  br i1 %i.pw, label %bb.fj, label %bb.fk, !prof !6

bb.fj:                                            ; preds = %bb.fi
  %i.qa = load i64, ptr %i.pz, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.py, i64 %i.qa) #16
          to label %bb.bh unwind label %bb.fh

bb.fk:                                            ; preds = %bb.fi
  %i.qb = load ptr, ptr %i.pz, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.qc = icmp ule i64 %i.pt, %i.py
  tail call void @llvm.assume(i1 %i.qc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %.not753 = icmp eq i64 %i.pt, 0
  br i1 %.not753, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fm, %bb.fk
  store i64 %i.py, ptr %i.po, align 8
  %.sroa.4485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.po, i64 8
  store ptr %i.qb, ptr %.sroa.4485.0..sroa_idx, align 8
  %.sroa.5486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.po, i64 16
  store i64 %i.pt, ptr %.sroa.5486.0..sroa_idx, align 8
  br label %bb.be

bb.fm:                                            ; preds = %bb.fk
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qb, ptr nonnull align 1 %i.pr, i64 %i.pt, i1 false)
  br label %bb.fl

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit861: ; preds = %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.et)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ev, ptr noundef nonnull align 8 dereferenceable(24) %i.eu, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eu)
  %i.qd = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 48)
          to label %bb.fp unwind label %bb.fo     ; 6 uses

bb.fn:                                            ; preds = %bb.fq, %bb.fo
  %.pn754 = phi { ptr, i32 } [ %i.qf, %bb.fq ], [ %i.qe, %bb.fo ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ev) #14
          to label %.thread unwind label %bb.bi

bb.fo:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit861
  %i.qe = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.fp:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, i64 noundef 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.fr unwind label %bb.fq

bb.fq:                                            ; preds = %bb.fs, %bb.fp
  %i.qf = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qd, i64 noundef 48, i64 noundef 8) #15
  br label %bb.fn

bb.fr:                                            ; preds = %bb.fp
  %i.qg = load i64, ptr %i.ah, align 8, !range !7, !noundef !5
  %i.qh = trunc nuw i64 %i.qg to i1
  %i.qi = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.qj = load i64, ptr %i.qi, align 8, !range !8, !noundef !5 ; 3 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  br i1 %i.qh, label %bb.fs, label %bb.ft, !prof !6

bb.fs:                                            ; preds = %bb.fr
  %i.ql = load i64, ptr %i.qk, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.qj, i64 %i.ql) #16
          to label %bb.bh unwind label %bb.fq

bb.ft:                                            ; preds = %bb.fr
  %i.qm = load ptr, ptr %i.qk, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.qn = icmp samesign ugt i64 %i.qj, 6
  call void @llvm.assume(i1 %i.qn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.qm, ptr noundef nonnull align 1 dereferenceable(7) @35, i64 7, i1 false)
  %.sroa.6480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qd, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6480.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 %i.qj, ptr %i.qd, align 8
  %.sroa.4478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  store ptr %i.qm, ptr %.sroa.4478.0..sroa_idx, align 8
  %.sroa.5479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  store i64 7, ptr %.sroa.5479.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ev, i64 24, i1 false)
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %i.qo, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.qd, ptr %.sroa.453.0..sroa_idx, align 8
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 1, ptr %.sroa.554.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev)
  br label %bb.dy

bb.fu:                                            ; preds = %bb.a, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.qp = load i32, ptr %.8.val, align 8, !range !137, !noundef !5
  %.not748 = icmp eq i32 %i.qp, -1
  br i1 %.not748, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.qq = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 24)
          to label %bb.fx unwind label %.thread203 ; 5 uses

bb.fw:                                            ; preds = %bb.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6480)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es)
  %i.qr = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er)
  store ptr %i.qr, ptr %i.er, align 8
  %.sroa.4490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsfF8zpZz1lvn_13yara_x_parser, ptr %.sroa.4490.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.es, ptr noundef nonnull @36, ptr noundef nonnull %i.er)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit863 unwind label %.thread203

bb.fx:                                            ; preds = %bb.fv
  %i.qs = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.qt = load ptr, ptr %i.qs, align 8, !nonnull !5, !noundef !5
  %i.qu = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.qv = load i64, ptr %i.qu, align 8, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, i64 noundef %i.qv, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.fz unwind label %bb.fy

bb.fy:                                            ; preds = %bb.ga, %bb.fx
  %i.qw = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qq, i64 noundef 24, i64 noundef 8) #15
  br label %.thread

bb.fz:                                            ; preds = %bb.fx
  %i.qx = load i64, ptr %i.ae, align 8, !range !7, !noundef !5
  %i.qy = trunc nuw i64 %i.qx to i1
  %i.qz = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ra = load i64, ptr %i.qz, align 8, !range !8, !noundef !5 ; 3 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.qy, label %bb.ga, label %bb.gb, !prof !6

bb.ga:                                            ; preds = %bb.fz
  %i.rc = load i64, ptr %i.rb, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ra, i64 %i.rc) #16
          to label %bb.bh unwind label %bb.fy

bb.gb:                                            ; preds = %bb.fz
  %i.rd = load ptr, ptr %i.rb, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.re = icmp ule i64 %i.qv, %i.ra
  tail call void @llvm.assume(i1 %i.re)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %.not749 = icmp eq i64 %i.qv, 0
  br i1 %.not749, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gd, %bb.gb
  store i64 %i.ra, ptr %i.qq, align 8
  %.sroa.4507.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  store ptr %i.rd, ptr %.sroa.4507.0..sroa_idx, align 8
  %.sroa.5508.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  store i64 %i.qv, ptr %.sroa.5508.0..sroa_idx, align 8
  br label %bb.be

bb.gd:                                            ; preds = %bb.gb
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rd, ptr nonnull align 1 %i.qt, i64 %i.qv, i1 false)
  br label %bb.gc

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit863: ; preds = %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6480, ptr noundef nonnull align 8 dereferenceable(24) %i.es, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15
  %i.rf = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 145) 48, i64 noundef 8) #15 ; 7 uses
  %i.rg = icmp eq ptr %i.rf, null
  br i1 %i.rg, label %bb.ge, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit865, !prof !6

bb.ge:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit863
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #16
          to label %.noexc864 unwind label %bb.gg

.noexc864:                                        ; preds = %bb.ge
  unreachable

bb.gf:                                            ; preds = %bb.gh, %bb.gg
  %.pn750 = phi { ptr, i32 } [ %i.ri, %bb.gh ], [ %i.rh, %bb.gg ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %.sroa.6480) #14
          to label %.thread unwind label %bb.bi

bb.gg:                                            ; preds = %bb.ge
  %i.rh = landingpad { ptr, i32 }
          cleanup
  br label %bb.gf

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit865: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit863
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, i64 noundef 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.gi unwind label %bb.gh

bb.gh:                                            ; preds = %bb.gj, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit865
  %i.ri = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.rf, i64 noundef 48, i64 noundef 8) #15
  br label %bb.gf

bb.gi:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit865
  %i.rj = load i64, ptr %i.af, align 8, !range !7, !noundef !5
  %i.rk = trunc nuw i64 %i.rj to i1
  %i.rl = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.rm = load i64, ptr %i.rl, align 8, !range !8, !noundef !5 ; 3 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  br i1 %i.rk, label %bb.gj, label %bb.gk, !prof !6

bb.gj:                                            ; preds = %bb.gi
  %i.ro = load i64, ptr %i.rn, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.rm, i64 %i.ro) #16
          to label %bb.bh unwind label %bb.gh

bb.gk:                                            ; preds = %bb.gi
  %i.rp = load ptr, ptr %i.rn, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.rq = icmp samesign ugt i64 %i.rm, 6
  call void @llvm.assume(i1 %i.rq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.rp, ptr noundef nonnull align 1 dereferenceable(7) @37, i64 7, i1 false)
  %.sroa.6502.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rf, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6502.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 %i.rm, ptr %i.rf, align 8
  %.sroa.4500.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  store ptr %i.rp, ptr %.sroa.4500.0..sroa_idx, align 8
  %.sroa.5501.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  store i64 7, ptr %.sroa.5501.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6480, i64 24, i1 false)
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %i.rr, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.rf, ptr %.sroa.462.0..sroa_idx, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 1, ptr %.sroa.563.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6480)
  br label %bb.dy

bb.gl:                                            ; preds = %bb.gq, %bb.gm
  %.pn746 = phi { ptr, i32 } [ %i.rs, %bb.gm ], [ %.pn743.pn, %bb.gq ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.eq)
          to label %common.resume unwind label %bb.bi

bb.gm:                                            ; preds = %bb.go, %bb.n
  %i.rs = landingpad { ptr, i32 }
          cleanup
  br label %bb.gl

bb.gn:                                            ; preds = %bb.n
  %i.rt = load i64, ptr %i.ad, align 8, !range !7, !noundef !5
  %i.ru = trunc nuw i64 %i.rt to i1
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.rw = load i64, ptr %i.rv, align 8, !range !8, !noundef !5 ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  br i1 %i.ru, label %bb.go, label %bb.gp, !prof !6

bb.go:                                            ; preds = %bb.gn
  %i.ry = load i64, ptr %i.rx, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.rw, i64 %i.ry) #16
          to label %bb.bh unwind label %bb.gm

bb.gp:                                            ; preds = %bb.gn
  %i.rz = load ptr, ptr %i.rx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.sa = icmp samesign ugt i64 %i.rw, 14
  tail call void @llvm.assume(i1 %i.sa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.rz, ptr noundef nonnull align 1 dereferenceable(15) @38, i64 15, i1 false)
  store i64 %i.rw, ptr %i.ep, align 8
  %.sroa.4510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store ptr %i.rz, ptr %.sroa.4510.0..sroa_idx, align 8
  %.sroa.6511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store i64 15, ptr %.sroa.6511.0..sroa_idx, align 8
  %i.sb = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 96)
          to label %bb.gs unwind label %bb.gr     ; 7 uses

bb.gq:                                            ; preds = %bb.gt, %bb.gr
  %.pn743.pn = phi { ptr, i32 } [ %.pn743, %bb.gt ], [ %i.sc, %bb.gr ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ep) #14
          to label %bb.gl unwind label %bb.bi

bb.gr:                                            ; preds = %bb.gp
  %i.sc = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

bb.gs:                                            ; preds = %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, i64 noundef 6, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.gv unwind label %bb.gu

bb.gt:                                            ; preds = %bb.hd, %bb.gy, %bb.gu
  %.pn743 = phi { ptr, i32 } [ %i.sd, %bb.gu ], [ %.pn741, %bb.hd ], [ %.pn736, %bb.gy ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.sb, i64 noundef 96, i64 noundef 8) #15
  br label %bb.gq

bb.gu:                                            ; preds = %bb.gw, %bb.gs
  %i.sd = landingpad { ptr, i32 }
          cleanup
  br label %bb.gt

bb.gv:                                            ; preds = %bb.gs
  %i.se = load i64, ptr %i.ac, align 8, !range !7, !noundef !5
  %i.sf = trunc nuw i64 %i.se to i1
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.sh = load i64, ptr %i.sg, align 8, !range !8, !noundef !5 ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  br i1 %i.sf, label %bb.gw, label %bb.gx, !prof !6

bb.gw:                                            ; preds = %bb.gv
  %i.sj = load i64, ptr %i.si, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.sh, i64 %i.sj) #16
          to label %bb.bh unwind label %bb.gu

bb.gx:                                            ; preds = %bb.gv
  %i.sk = load ptr, ptr %i.si, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.sl = icmp samesign ugt i64 %i.sh, 5
  tail call void @llvm.assume(i1 %i.sl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.sk, ptr noundef nonnull align 1 dereferenceable(6) @28, i64 6, i1 false)
  store i64 %i.sh, ptr %i.en, align 8
  %.sroa.4513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store ptr %i.sk, ptr %.sroa.4513.0..sroa_idx, align 8
  %.sroa.6514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store i64 6, ptr %.sroa.6514.0..sroa_idx, align 8
  %i.sm = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 48)
          to label %bb.ha unwind label %bb.gz     ; 4 uses

bb.gy:                                            ; preds = %bb.hb, %bb.gz
  %.pn736 = phi { ptr, i32 } [ %i.sr, %bb.hb ], [ %i.sn, %bb.gz ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.en) #14
          to label %bb.gt unwind label %bb.bi

bb.gz:                                            ; preds = %bb.gx
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %bb.gy

bb.ha:                                            ; preds = %bb.gx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.so = load ptr, ptr %i.gn, align 8, !alias.scope !143, !noalias !144, !nonnull !5, !noundef !5
  %i.sp = load ptr, ptr %i.gm, align 8, !alias.scope !143, !noalias !144, !nonnull !5, !noundef !5 ; 4 uses
  %i.sq = icmp eq ptr %i.sp, %i.so
  br i1 %i.sq, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit868.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit868

bb.hb:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit868.thread
  %i.sr = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.sm, i64 noundef 48, i64 noundef 8) #15
  br label %bb.gy

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit868: ; preds = %bb.ha
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sp, i64 48
  store ptr %i.ss, ptr %i.gm, align 8, !alias.scope !143, !noalias !144
  %.sroa.066.0.copyload67 = load i64, ptr %i.sp, align 8, !noalias !143 ; 2 uses
  %.not735 = icmp eq i64 %.sroa.066.0.copyload67, -2
  br i1 %.not735, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit868.thread, label %bb.hc, !prof !9

bb.hc:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit868
  %.sroa.668.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  %.sroa.471.0..sroa.065.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.471.0..sroa.065.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.668.0..sroa_idx69, i64 40, i1 false)
  store i64 %.sroa.066.0.copyload67, ptr %i.sm, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eo, ptr noundef nonnull align 8 dereferenceable(24) %i.en, i64 24, i1 false)
  %i.st = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  store i64 1, ptr %i.st, align 8
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  store ptr %i.sm, ptr %.sroa.471.0..sroa_idx, align 8
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  store i64 1, ptr %.sroa.572.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, i64 noundef 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.hf unwind label %bb.he

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit868.thread: ; preds = %bb.ha, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit868
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #16
          to label %bb.bh unwind label %bb.hb

bb.hd:                                            ; preds = %bb.hi, %bb.he
  %.pn741 = phi { ptr, i32 } [ %i.su, %bb.he ], [ %.pn739, %bb.hi ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdJkkaF0JZ31_10ascii_tree4TreeECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(48) %i.eo) #14
          to label %bb.gt unwind label %bb.bi

bb.he:                                            ; preds = %bb.hg, %bb.hc
  %i.su = landingpad { ptr, i32 }
          cleanup
  br label %bb.hd

bb.hf:                                            ; preds = %bb.hc
  %i.sv = load i64, ptr %i.ab, align 8, !range !7, !noundef !5
  %i.sw = trunc nuw i64 %i.sv to i1
  %i.sx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.sy = load i64, ptr %i.sx, align 8, !range !8, !noundef !5 ; 3 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  br i1 %i.sw, label %bb.hg, label %bb.hh, !prof !6

bb.hg:                                            ; preds = %bb.hf
  %i.ta = load i64, ptr %i.sz, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.sy, i64 %i.ta) #16
          to label %bb.bh unwind label %bb.he

bb.hh:                                            ; preds = %bb.hf
  %i.tb = load ptr, ptr %i.sz, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.tc = icmp samesign ugt i64 %i.sy, 6
  tail call void @llvm.assume(i1 %i.tc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.tb, ptr noundef nonnull align 1 dereferenceable(7) @37, i64 7, i1 false)
  store i64 %i.sy, ptr %i.em, align 8
  %.sroa.4516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store ptr %i.tb, ptr %.sroa.4516.0..sroa_idx, align 8
  %.sroa.6517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store i64 7, ptr %.sroa.6517.0..sroa_idx, align 8
  %i.td = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 48)
          to label %bb.hk unwind label %bb.hj     ; 4 uses

bb.hi:                                            ; preds = %bb.hl, %bb.hj
  %.pn739 = phi { ptr, i32 } [ %i.ti, %bb.hl ], [ %i.te, %bb.hj ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.em) #14
          to label %bb.hd unwind label %bb.bi

bb.hj:                                            ; preds = %bb.hh
  %i.te = landingpad { ptr, i32 }
          cleanup
  br label %bb.hi

bb.hk:                                            ; preds = %bb.hh
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.tf = load ptr, ptr %i.gn, align 8, !alias.scope !145, !noalias !146, !nonnull !5, !noundef !5
  %i.tg = load ptr, ptr %i.gm, align 8, !alias.scope !145, !noalias !146, !nonnull !5, !noundef !5 ; 4 uses
  %i.th = icmp eq ptr %i.tg, %i.tf
  br i1 %i.th, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit869.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit869

bb.hl:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit869.thread
  %i.ti = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.td, i64 noundef 48, i64 noundef 8) #15
  br label %bb.hi

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit869: ; preds = %bb.hk
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tg, i64 48
  store ptr %i.tj, ptr %i.gm, align 8, !alias.scope !145, !noalias !146
  %.sroa.073.0.copyload74 = load i64, ptr %i.tg, align 8, !noalias !145 ; 2 uses
  %.not738 = icmp eq i64 %.sroa.073.0.copyload74, -2
  br i1 %.not738, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit869.thread, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser.exit871, !prof !9

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser.exit871: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit869
  %.sroa.675.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %.sroa.478.0..sroa.072.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.478.0..sroa.072.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.675.0..sroa_idx76, i64 40, i1 false)
  store i64 %.sroa.073.0.copyload74, ptr %i.td, align 8
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sb, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tk, ptr noundef nonnull align 8 dereferenceable(24) %i.em, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.sb, ptr noundef nonnull align 8 dereferenceable(48) %i.eo, i64 48, i1 false)
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sb, i64 72
  store i64 1, ptr %.sroa.477.0..sroa_idx, align 8
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sb, i64 80
  store ptr %i.td, ptr %.sroa.578.0..sroa_idx, align 8
  %.sroa.679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sb, i64 88
  store i64 1, ptr %.sroa.679.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ep, i64 24, i1 false)
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 2, ptr %i.tl, align 8
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.sb, ptr %.sroa.468.0..sroa_idx, align 8
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2, ptr %.sroa.569.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep)
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.eq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq)
  br label %bb.dy

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit869.thread: ; preds = %bb.hk, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit869
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #16
          to label %bb.bh unwind label %bb.hl

bb.hm:                                            ; preds = %bb.o
  %i.tm = load i64, ptr %i.by, align 8, !range !7, !noundef !5
  %i.tn = trunc nuw i64 %i.tm to i1
  %i.to = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.tp = load i64, ptr %i.to, align 8, !range !8, !noundef !5 ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  br i1 %i.tn, label %bb.hn, label %bb.ho, !prof !6

bb.hn:                                            ; preds = %bb.hm
  %i.tr = load i64, ptr %i.tq, align 8
  br label %.invoke

.invoke:                                          ; preds = %bb.ma, %bb.lx, %bb.lu, %bb.lr, %bb.lo, %bb.ll, %bb.li, %bb.lf, %bb.lc, %bb.kz, %bb.kw, %bb.kt, %bb.kq, %bb.kn, %bb.kk, %bb.kh, %bb.ke, %bb.kb, %bb.jy, %bb.jv, %bb.js, %bb.jp, %bb.jm, %bb.jj, %bb.jg, %bb.jd, %bb.ja, %bb.ix, %bb.iu, %bb.ir, %bb.hn
  %i.ts = phi i64 [ %i.tp, %bb.hn ], [ %i.we, %bb.ir ], [ %i.wn, %bb.iu ], [ %i.ww, %bb.ix ], [ %i.xf, %bb.ja ], [ %i.xo, %bb.jd ], [ %i.xx, %bb.jg ], [ %i.yg, %bb.jj ], [ %i.yp, %bb.jm ], [ %i.yy, %bb.jp ], [ %i.zh, %bb.js ], [ %i.zq, %bb.jv ], [ %i.zz, %bb.jy ], [ %i.aai, %bb.kb ], [ %i.aar, %bb.ke ], [ %i.aba, %bb.kh ], [ %i.abj, %bb.kk ], [ %i.abs, %bb.kn ], [ %i.acb, %bb.kq ], [ %i.ack, %bb.kt ], [ %i.act, %bb.kw ], [ %i.adc, %bb.kz ], [ %i.adl, %bb.lc ], [ %i.adu, %bb.lf ], [ %i.aed, %bb.li ], [ %i.aem, %bb.ll ], [ %i.aev, %bb.lo ], [ %i.afe, %bb.lr ], [ %i.afn, %bb.lu ], [ %i.afw, %bb.lx ], [ %i.agf, %bb.ma ]
  %i.tt = phi i64 [ %i.tr, %bb.hn ], [ %i.wg, %bb.ir ], [ %i.wp, %bb.iu ], [ %i.wy, %bb.ix ], [ %i.xh, %bb.ja ], [ %i.xq, %bb.jd ], [ %i.xz, %bb.jg ], [ %i.yi, %bb.jj ], [ %i.yr, %bb.jm ], [ %i.za, %bb.jp ], [ %i.zj, %bb.js ], [ %i.zs, %bb.jv ], [ %i.aab, %bb.jy ], [ %i.aak, %bb.kb ], [ %i.aat, %bb.ke ], [ %i.abc, %bb.kh ], [ %i.abl, %bb.kk ], [ %i.abu, %bb.kn ], [ %i.acd, %bb.kq ], [ %i.acm, %bb.kt ], [ %i.acv, %bb.kw ], [ %i.ade, %bb.kz ], [ %i.adn, %bb.lc ], [ %i.adw, %bb.lf ], [ %i.aef, %bb.li ], [ %i.aeo, %bb.ll ], [ %i.aex, %bb.lo ], [ %i.afg, %bb.lr ], [ %i.afp, %bb.lu ], [ %i.afy, %bb.lx ], [ %i.agh, %bb.ma ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ts, i64 %i.tt) #16
          to label %.cont unwind label %.thread203

.cont:                                            ; preds = %.invoke
  unreachable

bb.ho:                                            ; preds = %bb.hm
  %i.tu = load ptr, ptr %i.tq, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.tv = icmp samesign ugt i64 %i.tp, 11
  tail call void @llvm.assume(i1 %i.tv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.tu, ptr noundef nonnull align 1 dereferenceable(12) @41, i64 12, i1 false)
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tw, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 %i.tp, ptr %0, align 8
  %.sroa.4177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.tu, ptr %.sroa.4177.0..sroa_idx, align 8
  %.sroa.5178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 12, ptr %.sroa.5178.0..sroa_idx, align 8
  br label %bb.dy

bb.hp:                                            ; preds = %bb.ia, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh)
  %i.tx = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.ty = load i64, ptr %i.tx, align 8, !noundef !5 ; 2 uses
  %i.tz = icmp ult i64 %i.ty, 576460752303423488
  call void @llvm.assume(i1 %i.tz)
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB22_3ops5range5RangejENCNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast10ascii_tree19build_tree_for_expr0EE9from_iterB3i_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.eh, i64 noundef 0, i64 noundef %i.ty)
          to label %bb.ib unwind label %bb.hr

bb.hq:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, i64 noundef 8, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.hs unwind label %bb.hr

.thread222:                                       ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit879
  %i.ua = landingpad { ptr, i32 }
          cleanup
  br label %bb.ip

bb.hr:                                            ; preds = %bb.hz, %bb.ht, %bb.hq, %bb.hp
  %i.ub = landingpad { ptr, i32 }
          cleanup
  br label %.thread215

bb.hs:                                            ; preds = %bb.hq
  %i.uc = load i64, ptr %i.aa, align 8, !range !7, !noundef !5
  %i.ud = trunc nuw i64 %i.uc to i1
  %i.ue = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.uf = load i64, ptr %i.ue, align 8, !range !8, !noundef !5 ; 3 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  br i1 %i.ud, label %bb.ht, label %bb.hu, !prof !6

bb.ht:                                            ; preds = %bb.hs
  %i.uh = load i64, ptr %i.ug, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.uf, i64 %i.uh) #16
          to label %bb.bh unwind label %bb.hr

bb.hu:                                            ; preds = %bb.hs
  %i.ui = load ptr, ptr %i.ug, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.uj = icmp samesign ugt i64 %i.uf, 7
  tail call void @llvm.assume(i1 %i.uj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store i64 4500331214877650748, ptr %i.ui, align 1
  store i64 %i.uf, ptr %i.ei, align 8
  %.sroa.4519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %i.ui, ptr %.sroa.4519.0..sroa_idx, align 8
  %.sroa.6520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i64 8, ptr %.sroa.6520.0..sroa_idx, align 8
  %i.uk = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 48)
          to label %bb.hx unwind label %bb.hw     ; 4 uses

bb.hv:                                            ; preds = %bb.hy, %bb.hw
  %.pn723 = phi { ptr, i32 } [ %i.up, %bb.hy ], [ %i.ul, %bb.hw ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ei) #14
          to label %.thread215 unwind label %bb.bi

bb.hw:                                            ; preds = %bb.hu
  %i.ul = landingpad { ptr, i32 }
          cleanup
  br label %bb.hv

bb.hx:                                            ; preds = %bb.hu
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.um = load ptr, ptr %i.gx, align 8, !alias.scope !147, !noalias !148, !nonnull !5, !noundef !5
  %i.un = load ptr, ptr %i.gw, align 8, !alias.scope !147, !noalias !148, !nonnull !5, !noundef !5 ; 4 uses
  %i.uo = icmp eq ptr %i.un, %i.um
  br i1 %i.uo, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit872.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit872

bb.hy:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit872.thread
  %i.up = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.uk, i64 noundef 48, i64 noundef 8) #15
  br label %bb.hv

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit872: ; preds = %bb.hx
  %i.uq = getelementptr inbounds nuw i8, ptr %i.un, i64 48
  store ptr %i.uq, ptr %i.gw, align 8, !alias.scope !147, !noalias !148
  %.sroa.080.0.copyload81 = load i64, ptr %i.un, align 8, !noalias !147 ; 2 uses
  %.not722 = icmp eq i64 %.sroa.080.0.copyload81, -2
  br i1 %.not722, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit872.thread, label %bb.hz, !prof !9

bb.hz:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit872
  %.sroa.682.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.485, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.682.0..sroa_idx83, i64 40, i1 false)
  store i64 %.sroa.080.0.copyload81, ptr %i.uk, align 8
  %.sroa.485.0..sroa.079.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uk, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.485.0..sroa.079.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.485, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.485)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, ptr noundef nonnull align 8 dereferenceable(24) %i.ei, i64 24, i1 false)
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  store i64 1, ptr %i.ur, align 8
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  store ptr %i.uk, ptr %.sroa.481.0..sroa_idx, align 8
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  store i64 1, ptr %.sroa.582.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  invoke fastcc void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsdJkkaF0JZ31_10ascii_tree4TreeE8push_mutCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ek, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.ej)
          to label %bb.ia unwind label %bb.hr

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit872.thread: ; preds = %bb.hx, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit872
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #16
          to label %bb.bh unwind label %bb.hy

bb.ia:                                            ; preds = %bb.hz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej)
  br label %bb.hp

bb.ib:                                            ; preds = %bb.hp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  %i.us = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ut = load ptr, ptr %i.us, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.uv = load i64, ptr %i.uu, align 8, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  invoke void @_RINvNtCsexYYUdYSQU6_5alloc3str17join_generic_copyehNtNtB4_6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ut, i64 noundef %i.uv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 2)
          to label %bb.ic unwind label %bb.io

bb.ic:                                            ; preds = %bb.ib
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.uw = load i64, ptr %i.eh, align 8, !range !10, !noundef !5
  %i.ux = icmp ult i64 %i.uv, 384307168202282326
  call void @llvm.assume(i1 %i.ux)
  %.idx271 = mul nuw nsw i64 %i.uv, 24
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ut, i64 %.idx271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  store ptr %i.ut, ptr %i.ef, align 8
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 3 uses
  store ptr %i.ut, ptr %.sroa.484.0..sroa_idx, align 8
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store i64 %i.uw, ptr %.sroa.585.0..sroa_idx, align 8
  %.sroa.686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 24 ; 2 uses
  store ptr %i.uy, ptr %.sroa.686.0..sroa_idx, align 8
  %i.uz = icmp eq i64 %i.uv, 0
end_hunk_2
begin_hunk_3_@_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast10ascii_tree19build_tree_for_expr:bb.a
  %i.ahb = load i64, ptr %.8.val, align 8, !range !7, !noundef !5
  %i.ahc = trunc nuw i64 %i.ahb to i1
  br i1 %i.ahc, label %bb.mo, label %bb.mp

bb.mo:                                            ; preds = %bb.mn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, i64 noundef 25, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.nb unwind label %bb.mr

bb.mp:                                            ; preds = %bb.mn
  %i.ahd = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, i64 noundef 20, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ms unwind label %bb.mr

bb.mq:                                            ; preds = %bb.oi, %bb.nz, %bb.nn, %bb.ne, %bb.mv, %bb.mr
  %.pn715 = phi { ptr, i32 } [ %i.ahe, %bb.mr ], [ %.pn713, %bb.oi ], [ %.pn710, %bb.nz ], [ %.pn707, %bb.nn ], [ %i.aic, %bb.ne ], [ %.pn703, %bb.mv ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dy) #14
          to label %bb.mc unwind label %bb.bi

bb.mr:                                            ; preds = %bb.na, %bb.nr, %bb.od, %bb.om, %.invoke309, %bb.on, %bb.oe, %bb.ns, %bb.nj, %bb.ni, %bb.nh, %bb.mp, %bb.mo
  %i.ahe = landingpad { ptr, i32 }
          cleanup
  br label %bb.mq

bb.ms:                                            ; preds = %bb.mp
  %i.ahf = load i64, ptr %i.w, align 8, !range !7, !noundef !5
  %i.ahg = trunc nuw i64 %i.ahf to i1
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ahi = load i64, ptr %i.ahh, align 8, !range !8, !noundef !5 ; 3 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  br i1 %i.ahg, label %bb.mt, label %bb.mu, !prof !6

bb.mt:                                            ; preds = %bb.ms
  %i.ahk = load i64, ptr %i.ahj, align 8
  br label %.invoke309

bb.mu:                                            ; preds = %bb.ms
  %i.ahl = load ptr, ptr %i.ahj, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ahm = icmp samesign ugt i64 %i.ahi, 19
  tail call void @llvm.assume(i1 %i.ahm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.ahl, ptr noundef nonnull align 1 dereferenceable(20) @68, i64 20, i1 false)
  store i64 %i.ahi, ptr %i.dv, align 8
  %.sroa.4538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store ptr %i.ahl, ptr %.sroa.4538.0..sroa_idx, align 8
  %.sroa.6539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store i64 20, ptr %.sroa.6539.0..sroa_idx, align 8
  %i.ahn = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 48)
          to label %bb.mx unwind label %bb.mw     ; 3 uses

bb.mv:                                            ; preds = %bb.my, %bb.mw
  %.pn703 = phi { ptr, i32 } [ %i.ahp, %bb.my ], [ %i.aho, %bb.mw ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dv) #14
          to label %bb.mq unwind label %bb.bi

bb.mw:                                            ; preds = %bb.mu
  %i.aho = landingpad { ptr, i32 }
          cleanup
  br label %bb.mv

bb.mx:                                            ; preds = %bb.mu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  invoke fastcc void @_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast10ascii_tree22pattern_set_ascii_tree(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.du, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ahd)
          to label %bb.mz unwind label %bb.my

bb.my:                                            ; preds = %bb.mx
  %i.ahp = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ahn, i64 noundef 48, i64 noundef 8) #15
  br label %bb.mv

bb.mz:                                            ; preds = %bb.mx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ahn, ptr noundef nonnull align 8 dereferenceable(48) %i.du, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %i.dv, i64 24, i1 false)
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  store i64 1, ptr %i.ahq, align 8
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  store ptr %i.ahn, ptr %.sroa.498.0..sroa_idx, align 8
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  store i64 1, ptr %.sroa.599.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  br label %bb.na

bb.na:                                            ; preds = %bb.nf, %bb.mz
  invoke fastcc void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsdJkkaF0JZ31_10ascii_tree4TreeE8push_mutCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dy, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.dw)
          to label %bb.ng unwind label %bb.mr

bb.nb:                                            ; preds = %bb.mo
  %i.ahr = load i64, ptr %i.x, align 8, !range !7, !noundef !5
  %i.ahs = trunc nuw i64 %i.ahr to i1
  %i.aht = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ahu = load i64, ptr %i.aht, align 8, !range !8, !noundef !5 ; 3 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  br i1 %i.ahs, label %bb.nc, label %bb.nd, !prof !6

bb.nc:                                            ; preds = %bb.nb
  %i.ahw = load i64, ptr %i.ahv, align 8
  br label %.invoke309

bb.nd:                                            ; preds = %bb.nb
  %i.ahx = load ptr, ptr %i.ahv, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ahy = icmp samesign ugt i64 %i.ahu, 24
  tail call void @llvm.assume(i1 %i.ahy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.ahx, ptr noundef nonnull align 1 dereferenceable(25) @69, i64 25, i1 false)
  store i64 %i.ahu, ptr %i.dt, align 8
  %.sroa.4535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.ahx, ptr %.sroa.4535.0..sroa_idx, align 8
  %.sroa.6536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i64 25, ptr %.sroa.6536.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  %i.ahz = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.aia = load i64, ptr %i.ahz, align 8, !noundef !5 ; 2 uses
  %i.aib = icmp ult i64 %i.aia, 576460752303423488
  tail call void @llvm.assume(i1 %i.aib)
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCsdJkkaF0JZ31_10ascii_tree4TreeEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeQINtNtB6_9into_iter8IntoIterB13_EEE9from_iterCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ds, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ea, i64 noundef %i.aia)
          to label %bb.nf unwind label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.aic = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dt) #14
          to label %bb.mq unwind label %bb.bi

bb.nf:                                            ; preds = %bb.nd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %i.dt, i64 24, i1 false)
  %i.aid = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aid, ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.na

bb.ng:                                            ; preds = %bb.na
  %i.aie = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.aif = load i64, ptr %i.aie, align 8, !range !12, !noundef !5
  switch i64 %i.aif, label %bb.ni [
    i64 2, label %bb.nh
    i64 0, label %bb.nj
  ]

bb.nh:                                            ; preds = %bb.ng
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, i64 noundef 23, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.or unwind label %bb.mr

bb.ni:                                            ; preds = %bb.ng
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.nw unwind label %bb.mr

bb.nj:                                            ; preds = %bb.ng
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef 6, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.nk unwind label %bb.mr

bb.nk:                                            ; preds = %bb.nj
  %i.aig = load i64, ptr %i.u, align 8, !range !7, !noundef !5
  %i.aih = trunc nuw i64 %i.aig to i1
  %i.aii = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aij = load i64, ptr %i.aii, align 8, !range !8, !noundef !5 ; 3 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  br i1 %i.aih, label %bb.nl, label %bb.nm, !prof !6

bb.nl:                                            ; preds = %bb.nk
  %i.ail = load i64, ptr %i.aik, align 8
  br label %.invoke309

bb.nm:                                            ; preds = %bb.nk
  %i.aim = load ptr, ptr %i.aik, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ain = icmp samesign ugt i64 %i.aij, 5
  call void @llvm.assume(i1 %i.ain)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.aim, ptr noundef nonnull align 1 dereferenceable(6) @28, i64 6, i1 false)
  store i64 %i.aij, ptr %i.dq, align 8
  %.sroa.4544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store ptr %i.aim, ptr %.sroa.4544.0..sroa_idx, align 8
  %.sroa.6545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store i64 6, ptr %.sroa.6545.0..sroa_idx, align 8
  %i.aio = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 48)
          to label %bb.np unwind label %bb.no     ; 4 uses

bb.nn:                                            ; preds = %bb.nq, %bb.no
  %.pn707 = phi { ptr, i32 } [ %i.ait, %bb.nq ], [ %i.aip, %bb.no ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dq) #14
          to label %bb.mq unwind label %bb.bi

bb.no:                                            ; preds = %bb.nm
  %i.aip = landingpad { ptr, i32 }
          cleanup
  br label %bb.nn

bb.np:                                            ; preds = %bb.nm
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.aiq = load ptr, ptr %i.hl, align 8, !alias.scope !156, !noalias !157, !nonnull !5, !noundef !5
  %i.air = load ptr, ptr %i.hk, align 8, !alias.scope !156, !noalias !157, !nonnull !5, !noundef !5 ; 4 uses
  %i.ais = icmp eq ptr %i.air, %i.aiq
  br i1 %i.ais, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit887.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit887

bb.nq:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit887.thread
  %i.ait = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aio, i64 noundef 48, i64 noundef 8) #15
  br label %bb.nn

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit887: ; preds = %bb.np
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.air, i64 48
  store ptr %i.aiu, ptr %i.hk, align 8, !alias.scope !156, !noalias !157
  %.sroa.0104.0.copyload105 = load i64, ptr %i.air, align 8, !noalias !156 ; 2 uses
  %.not706 = icmp eq i64 %.sroa.0104.0.copyload105, -2
  br i1 %.not706, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit887.thread, label %bb.nr, !prof !9

bb.nr:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit887
  %.sroa.6106.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.air, i64 8
  %.sroa.4109.0..sroa.0103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aio, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4109.0..sroa.0103.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6106.0..sroa_idx107, i64 40, i1 false)
  store i64 %.sroa.0104.0.copyload105, ptr %i.aio, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i64 24, i1 false)
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  store i64 1, ptr %i.aiv, align 8
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  store ptr %i.aio, ptr %.sroa.4101.0..sroa_idx, align 8
  %.sroa.5102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  store i64 1, ptr %.sroa.5102.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  invoke fastcc void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsdJkkaF0JZ31_10ascii_tree4TreeE8push_mutCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dy, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.dr)
          to label %bb.ns unwind label %bb.mr

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit887.thread: ; preds = %bb.np, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit887
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #16
          to label %bb.bh unwind label %bb.nq

bb.ns:                                            ; preds = %bb.nr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, i64 noundef 33, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.nt unwind label %bb.mr

bb.nt:                                            ; preds = %bb.ns
  %i.aiw = load i64, ptr %i.t, align 8, !range !7, !noundef !5
  %i.aix = trunc nuw i64 %i.aiw to i1
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.aiz = load i64, ptr %i.aiy, align 8, !range !8, !noundef !5 ; 3 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  br i1 %i.aix, label %bb.nu, label %bb.nv, !prof !6

bb.nu:                                            ; preds = %bb.nt
  %i.ajb = load i64, ptr %i.aja, align 8
  br label %.invoke309

bb.nv:                                            ; preds = %bb.nt
  %i.ajc = load ptr, ptr %i.aja, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ajd = icmp samesign ugt i64 %i.aiz, 32
  call void @llvm.assume(i1 %i.ajd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.ajc, ptr noundef nonnull align 1 dereferenceable(33) @71, i64 33, i1 false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser.exit889

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser.exit889: ; preds = %bb.ot, %bb.oq, %bb.nv
  %.sroa.5557.0 = phi i64 [ 43, %bb.oq ], [ 33, %bb.nv ], [ 23, %bb.ot ]
  %.sroa.4552.0 = phi ptr [ %i.akr, %bb.oq ], [ %i.ajc, %bb.nv ], [ %i.alb, %bb.ot ]
  %.sroa.0549.0 = phi i64 [ %i.ako, %bb.oq ], [ %i.aiz, %bb.nv ], [ %i.akw, %bb.ot ]
  %i.aje = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aje, ptr noundef nonnull align 8 dereferenceable(24) %i.dy, i64 24, i1 false)
  store i64 %.sroa.0549.0, ptr %0, align 8
  %.sroa.4552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4552.0, ptr %.sroa.4552.0..sroa_idx, align 8
  %.sroa.5557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5557.0, ptr %.sroa.5557.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ea)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  br label %bb.dy

bb.nw:                                            ; preds = %bb.ni
  %i.ajf = load i64, ptr %i.v, align 8, !range !7, !noundef !5
  %i.ajg = trunc nuw i64 %i.ajf to i1
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aji = load i64, ptr %i.ajh, align 8, !range !8, !noundef !5 ; 3 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  br i1 %i.ajg, label %bb.nx, label %bb.ny, !prof !6

bb.nx:                                            ; preds = %bb.nw
  %i.ajk = load i64, ptr %i.ajj, align 8
  br label %.invoke309

bb.ny:                                            ; preds = %bb.nw
  %i.ajl = load ptr, ptr %i.ajj, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ajm = icmp samesign ugt i64 %i.aji, 6
  call void @llvm.assume(i1 %i.ajm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ajl, ptr noundef nonnull align 1 dereferenceable(7) @30, i64 7, i1 false)
  store i64 %i.aji, ptr %i.do, align 8
  %.sroa.4541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr %i.ajl, ptr %.sroa.4541.0..sroa_idx, align 8
  %.sroa.6542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store i64 7, ptr %.sroa.6542.0..sroa_idx, align 8
  %i.ajn = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 48)
          to label %bb.ob unwind label %bb.oa     ; 4 uses

bb.nz:                                            ; preds = %bb.oc, %bb.oa
  %.pn710 = phi { ptr, i32 } [ %i.ajs, %bb.oc ], [ %i.ajo, %bb.oa ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.do) #14
          to label %bb.mq unwind label %bb.bi

bb.oa:                                            ; preds = %bb.ny
  %i.ajo = landingpad { ptr, i32 }
          cleanup
  br label %bb.nz

bb.ob:                                            ; preds = %bb.ny
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.ajp = load ptr, ptr %i.hl, align 8, !alias.scope !158, !noalias !159, !nonnull !5, !noundef !5
  %i.ajq = load ptr, ptr %i.hk, align 8, !alias.scope !158, !noalias !159, !nonnull !5, !noundef !5 ; 4 uses
  %i.ajr = icmp eq ptr %i.ajq, %i.ajp
  br i1 %i.ajr, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit890.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit890

bb.oc:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit890.thread
  %i.ajs = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ajn, i64 noundef 48, i64 noundef 8) #15
  br label %bb.nz

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit890: ; preds = %bb.ob
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajq, i64 48
  store ptr %i.ajt, ptr %i.hk, align 8, !alias.scope !158, !noalias !159
  %.sroa.0111.0.copyload112 = load i64, ptr %i.ajq, align 8, !noalias !158 ; 2 uses
  %.not709 = icmp eq i64 %.sroa.0111.0.copyload112, -2
  br i1 %.not709, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit890.thread, label %bb.od, !prof !9

bb.od:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit890
  %.sroa.6113.0..sroa_idx114 = getelementptr inbounds nuw i8, ptr %i.ajq, i64 8
  %.sroa.4116.0..sroa.0110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4116.0..sroa.0110.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6113.0..sroa_idx114, i64 40, i1 false)
  store i64 %.sroa.0111.0.copyload112, ptr %i.ajn, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %i.do, i64 24, i1 false)
  %i.aju = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  store i64 1, ptr %i.aju, align 8
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  store ptr %i.ajn, ptr %.sroa.4104.0..sroa_idx, align 8
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  store i64 1, ptr %.sroa.5105.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  invoke fastcc void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsdJkkaF0JZ31_10ascii_tree4TreeE8push_mutCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dy, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.dp)
          to label %bb.oe unwind label %bb.mr

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit890.thread: ; preds = %bb.ob, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit890
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #16
          to label %bb.bh unwind label %bb.oc

bb.oe:                                            ; preds = %bb.od
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, i64 noundef 5, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.of unwind label %bb.mr

bb.of:                                            ; preds = %bb.oe
  %i.ajv = load i64, ptr %i.s, align 8, !range !7, !noundef !5
  %i.ajw = trunc nuw i64 %i.ajv to i1
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ajy = load i64, ptr %i.ajx, align 8, !range !8, !noundef !5 ; 3 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  br i1 %i.ajw, label %bb.og, label %bb.oh, !prof !6

bb.og:                                            ; preds = %bb.of
  %i.aka = load i64, ptr %i.ajz, align 8
  br label %.invoke309

bb.oh:                                            ; preds = %bb.of
  %i.akb = load ptr, ptr %i.ajz, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.akc = icmp samesign ugt i64 %i.ajy, 4
  call void @llvm.assume(i1 %i.akc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.akb, ptr noundef nonnull align 1 dereferenceable(5) @32, i64 5, i1 false)
  store i64 %i.ajy, ptr %i.dm, align 8
  %.sroa.4563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %i.akb, ptr %.sroa.4563.0..sroa_idx, align 8
  %.sroa.6564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i64 5, ptr %.sroa.6564.0..sroa_idx, align 8
  %i.akd = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 48)
          to label %bb.ok unwind label %bb.oj     ; 4 uses

bb.oi:                                            ; preds = %bb.ol, %bb.oj
  %.pn713 = phi { ptr, i32 } [ %i.aki, %bb.ol ], [ %i.ake, %bb.oj ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dm) #14
          to label %bb.mq unwind label %bb.bi

bb.oj:                                            ; preds = %bb.oh
  %i.ake = landingpad { ptr, i32 }
          cleanup
  br label %bb.oi

bb.ok:                                            ; preds = %bb.oh
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.akf = load ptr, ptr %i.hl, align 8, !alias.scope !160, !noalias !161, !nonnull !5, !noundef !5
  %i.akg = load ptr, ptr %i.hk, align 8, !alias.scope !160, !noalias !161, !nonnull !5, !noundef !5 ; 4 uses
  %i.akh = icmp eq ptr %i.akg, %i.akf
  br i1 %i.akh, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit891.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit891

bb.ol:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit891.thread
  %i.aki = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.akd, i64 noundef 48, i64 noundef 8) #15
  br label %bb.oi

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit891: ; preds = %bb.ok
  %i.akj = getelementptr inbounds nuw i8, ptr %i.akg, i64 48
  store ptr %i.akj, ptr %i.hk, align 8, !alias.scope !160, !noalias !161
  %.sroa.0118.0.copyload119 = load i64, ptr %i.akg, align 8, !noalias !160 ; 2 uses
  %.not712 = icmp eq i64 %.sroa.0118.0.copyload119, -2
  br i1 %.not712, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit891.thread, label %bb.om, !prof !9

bb.om:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit891
  %.sroa.6120.0..sroa_idx121 = getelementptr inbounds nuw i8, ptr %i.akg, i64 8
  %.sroa.4123.0..sroa.0117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akd, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4123.0..sroa.0117.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6120.0..sroa_idx121, i64 40, i1 false)
  store i64 %.sroa.0118.0.copyload119, ptr %i.akd, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 24, i1 false)
  %i.akk = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  store i64 1, ptr %i.akk, align 8
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  store ptr %i.akd, ptr %.sroa.4107.0..sroa_idx, align 8
  %.sroa.5108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  store i64 1, ptr %.sroa.5108.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  invoke fastcc void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsdJkkaF0JZ31_10ascii_tree4TreeE8push_mutCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dy, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.dn)
          to label %bb.on unwind label %bb.mr

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit891.thread: ; preds = %bb.ok, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit891
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #16
          to label %bb.bh unwind label %bb.ol

bb.on:                                            ; preds = %bb.om
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, i64 noundef 43, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.oo unwind label %bb.mr

bb.oo:                                            ; preds = %bb.on
  %i.akl = load i64, ptr %i.r, align 8, !range !7, !noundef !5
  %i.akm = trunc nuw i64 %i.akl to i1
  %i.akn = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ako = load i64, ptr %i.akn, align 8, !range !8, !noundef !5 ; 3 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  br i1 %i.akm, label %bb.op, label %bb.oq, !prof !6

bb.op:                                            ; preds = %bb.oo
  %i.akq = load i64, ptr %i.akp, align 8
  br label %.invoke309

bb.oq:                                            ; preds = %bb.oo
  %i.akr = load ptr, ptr %i.akp, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aks = icmp samesign ugt i64 %i.ako, 42
  call void @llvm.assume(i1 %i.aks)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(43) %i.akr, ptr noundef nonnull align 1 dereferenceable(43) @74, i64 43, i1 false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser.exit889

bb.or:                                            ; preds = %bb.nh
  %i.akt = load i64, ptr %i.q, align 8, !range !7, !noundef !5
  %i.aku = trunc nuw i64 %i.akt to i1
  %i.akv = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.akw = load i64, ptr %i.akv, align 8, !range !8, !noundef !5 ; 3 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  br i1 %i.aku, label %bb.os, label %bb.ot, !prof !6

bb.os:                                            ; preds = %bb.or
  %i.aky = load i64, ptr %i.akx, align 8
  br label %.invoke309

.invoke309:                                       ; preds = %bb.mt, %bb.nc, %bb.nl, %bb.nu, %bb.nx, %bb.og, %bb.op, %bb.os
  %i.akz = phi i64 [ %i.akw, %bb.os ], [ %i.ako, %bb.op ], [ %i.ajy, %bb.og ], [ %i.aji, %bb.nx ], [ %i.aiz, %bb.nu ], [ %i.aij, %bb.nl ], [ %i.ahu, %bb.nc ], [ %i.ahi, %bb.mt ]
  %i.ala = phi i64 [ %i.aky, %bb.os ], [ %i.akq, %bb.op ], [ %i.aka, %bb.og ], [ %i.ajk, %bb.nx ], [ %i.ajb, %bb.nu ], [ %i.ail, %bb.nl ], [ %i.ahw, %bb.nc ], [ %i.ahk, %bb.mt ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.akz, i64 %i.ala) #16
          to label %.cont310 unwind label %bb.mr

.cont310:                                         ; preds = %.invoke309
  unreachable

bb.ot:                                            ; preds = %bb.or
  %i.alb = load ptr, ptr %i.akx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.alc = icmp samesign ugt i64 %i.akw, 22
  call void @llvm.assume(i1 %i.alc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.alb, ptr noundef nonnull align 1 dereferenceable(23) @75, i64 23, i1 false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser.exit889

bb.ou:                                            ; preds = %bb.mh, %bb.mf
  %.pn717.pn.ph = phi { ptr, i32 } [ %i.agn, %bb.mf ], [ %.pn717, %bb.mh ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdJkkaF0JZ31_10ascii_tree4TreeECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(48) %i.dz) #14
          to label %bb.mc unwind label %bb.bi

bb.ov:                                            ; preds = %bb.pa, %bb.ow
  %.pn701 = phi { ptr, i32 } [ %i.ald, %bb.ow ], [ %.pn698.pn, %bb.pa ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dl)
          to label %common.resume unwind label %bb.bi

bb.ow:                                            ; preds = %bb.oy, %bb.av
  %i.ald = landingpad { ptr, i32 }
          cleanup
  br label %bb.ov

bb.ox:                                            ; preds = %bb.av
  %i.ale = load i64, ptr %i.p, align 8, !range !7, !noundef !5
  %i.alf = trunc nuw i64 %i.ale to i1
  %i.alg = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.alh = load i64, ptr %i.alg, align 8, !range !8, !noundef !5 ; 3 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  br i1 %i.alf, label %bb.oy, label %bb.oz, !prof !6

bb.oy:                                            ; preds = %bb.ox
  %i.alj = load i64, ptr %i.ali, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.alh, i64 %i.alj) #16
          to label %bb.bh unwind label %bb.ow

bb.oz:                                            ; preds = %bb.ox
  %i.alk = load ptr, ptr %i.ali, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.all = icmp samesign ugt i64 %i.alh, 44
  tail call void @llvm.assume(i1 %i.all)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %i.alk, ptr noundef nonnull align 1 dereferenceable(45) @76, i64 45, i1 false)
  store i64 %i.alh, ptr %i.dk, align 8
  %.sroa.4571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.alk, ptr %.sroa.4571.0..sroa_idx, align 8
  %.sroa.6572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store i64 45, ptr %.sroa.6572.0..sroa_idx, align 8
  %i.alm = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 144)
          to label %bb.pc unwind label %bb.pb     ; 8 uses

bb.pa:                                            ; preds = %bb.pd, %bb.pb
  %.pn698.pn = phi { ptr, i32 } [ %.pn698, %bb.pd ], [ %i.aln, %bb.pb ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dk) #14
          to label %bb.ov unwind label %bb.bi

bb.pb:                                            ; preds = %bb.oz
  %i.aln = landingpad { ptr, i32 }
          cleanup
  br label %bb.pa

bb.pc:                                            ; preds = %bb.oz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, i64 noundef 12, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.pf unwind label %bb.pe

bb.pd:                                            ; preds = %bb.pn, %bb.pi, %bb.pe
  %.pn698 = phi { ptr, i32 } [ %i.alo, %bb.pe ], [ %.pn696, %bb.pn ], [ %.pn687, %bb.pi ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.alm, i64 noundef 144, i64 noundef 8) #15
  br label %bb.pa

bb.pe:                                            ; preds = %bb.pg, %bb.pc
  %i.alo = landingpad { ptr, i32 }
          cleanup
  br label %bb.pd

bb.pf:                                            ; preds = %bb.pc
  %i.alp = load i64, ptr %i.o, align 8, !range !7, !noundef !5
  %i.alq = trunc nuw i64 %i.alp to i1
  %i.alr = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.als = load i64, ptr %i.alr, align 8, !range !8, !noundef !5 ; 3 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  br i1 %i.alq, label %bb.pg, label %bb.ph, !prof !6

bb.pg:                                            ; preds = %bb.pf
  %i.alu = load i64, ptr %i.alt, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.als, i64 %i.alu) #16
          to label %bb.bh unwind label %bb.pe

bb.ph:                                            ; preds = %bb.pf
  %i.alv = load ptr, ptr %i.alt, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.alw = icmp samesign ugt i64 %i.als, 11
  tail call void @llvm.assume(i1 %i.alw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.alv, ptr noundef nonnull align 1 dereferenceable(12) @67, i64 12, i1 false)
  store i64 %i.als, ptr %i.di, align 8
  %.sroa.4574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr %i.alv, ptr %.sroa.4574.0..sroa_idx, align 8
  %.sroa.6575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store i64 12, ptr %.sroa.6575.0..sroa_idx, align 8
  %i.alx = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 48)
          to label %bb.pk unwind label %bb.pj     ; 3 uses

bb.pi:                                            ; preds = %bb.pl, %bb.pj
  %.pn687 = phi { ptr, i32 } [ %i.ama, %bb.pl ], [ %i.aly, %bb.pj ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.di) #14
          to label %bb.pd unwind label %bb.bi

bb.pj:                                            ; preds = %bb.ph
  %i.aly = landingpad { ptr, i32 }
          cleanup
  br label %bb.pi

bb.pk:                                            ; preds = %bb.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.alz = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %.val818 = load i32, ptr %i.alz, align 8, !range !138, !noundef !5
  invoke fastcc void @_RINvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast10ascii_tree21quantifier_ascii_treeQINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEEB6_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.dh, i32 %.val818, ptr noalias nofree noundef align 8 dereferenceable(32) %i.dl)
          to label %bb.pm unwind label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  %i.ama = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.alx, i64 noundef 48, i64 noundef 8) #15
  br label %bb.pi

bb.pm:                                            ; preds = %bb.pk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.alx, ptr noundef nonnull align 8 dereferenceable(48) %i.dh, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, ptr noundef nonnull align 8 dereferenceable(24) %i.di, i64 24, i1 false)
  %i.amb = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  store i64 1, ptr %i.amb, align 8
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  store ptr %i.alx, ptr %.sroa.4113.0..sroa_idx, align 8
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  store i64 1, ptr %.sroa.5114.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, i64 noundef 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.pp unwind label %bb.po

bb.pn:                                            ; preds = %bb.px, %bb.ps, %bb.po
  %.pn696 = phi { ptr, i32 } [ %i.amc, %bb.po ], [ %.pn694, %bb.px ], [ %.pn689, %bb.ps ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdJkkaF0JZ31_10ascii_tree4TreeECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(48) %i.dj) #14
          to label %bb.pd unwind label %bb.bi

bb.po:                                            ; preds = %bb.pq, %bb.pm
  %i.amc = landingpad { ptr, i32 }
          cleanup
  br label %bb.pn

bb.pp:                                            ; preds = %bb.pm
  %i.amd = load i64, ptr %i.n, align 8, !range !7, !noundef !5
  %i.ame = trunc nuw i64 %i.amd to i1
  %i.amf = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.amg = load i64, ptr %i.amf, align 8, !range !8, !noundef !5 ; 3 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  br i1 %i.ame, label %bb.pq, label %bb.pr, !prof !6

bb.pq:                                            ; preds = %bb.pp
  %i.ami = load i64, ptr %i.amh, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.amg, i64 %i.ami) #16
          to label %bb.bh unwind label %bb.po

bb.pr:                                            ; preds = %bb.pp
  %i.amj = load ptr, ptr %i.amh, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.amk = icmp samesign ugt i64 %i.amg, 6
  tail call void @llvm.assume(i1 %i.amk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.amj, ptr noundef nonnull align 1 dereferenceable(7) @77, i64 7, i1 false)
  store i64 %i.amg, ptr %i.df, align 8
  %.sroa.4577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr %i.amj, ptr %.sroa.4577.0..sroa_idx, align 8
  %.sroa.6578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store i64 7, ptr %.sroa.6578.0..sroa_idx, align 8
  %i.aml = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 48)
          to label %bb.pu unwind label %bb.pt     ; 3 uses

bb.ps:                                            ; preds = %bb.pv, %bb.pt
  %.pn689 = phi { ptr, i32 } [ %i.amn, %bb.pv ], [ %i.amm, %bb.pt ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.df) #14
          to label %bb.pn unwind label %bb.bi

bb.pt:                                            ; preds = %bb.pr
  %i.amm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ps

bb.pu:                                            ; preds = %bb.pr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de)
  invoke fastcc void @_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast10ascii_tree22pattern_set_ascii_tree(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.de, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.8.val)
          to label %bb.pw unwind label %bb.pv

bb.pv:                                            ; preds = %bb.pu
  %i.amn = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aml, i64 noundef 48, i64 noundef 8) #15
  br label %bb.ps

bb.pw:                                            ; preds = %bb.pu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aml, ptr noundef nonnull align 8 dereferenceable(48) %i.de, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 24, i1 false)
  %i.amo = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store i64 1, ptr %i.amo, align 8
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  store ptr %i.aml, ptr %.sroa.4116.0..sroa_idx, align 8
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  store i64 1, ptr %.sroa.5117.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef 11, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.pz unwind label %bb.py

bb.px:                                            ; preds = %bb.qc, %bb.py
  %.pn694 = phi { ptr, i32 } [ %i.amp, %bb.py ], [ %.pn692, %bb.qc ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdJkkaF0JZ31_10ascii_tree4TreeECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(48) %i.dg) #14
          to label %bb.pn unwind label %bb.bi

bb.py:                                            ; preds = %bb.qa, %bb.pw
  %i.amp = landingpad { ptr, i32 }
          cleanup
  br label %bb.px

bb.pz:                                            ; preds = %bb.pw
  %i.amq = load i64, ptr %i.m, align 8, !range !7, !noundef !5
  %i.amr = trunc nuw i64 %i.amq to i1
  %i.ams = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.amt = load i64, ptr %i.ams, align 8, !range !8, !noundef !5 ; 3 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.amr, label %bb.qa, label %bb.qb, !prof !6

bb.qa:                                            ; preds = %bb.pz
  %i.amv = load i64, ptr %i.amu, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.amt, i64 %i.amv) #16
          to label %bb.bh unwind label %bb.py

bb.qb:                                            ; preds = %bb.pz
  %i.amw = load ptr, ptr %i.amu, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.amx = icmp samesign ugt i64 %i.amt, 10
  tail call void @llvm.assume(i1 %i.amx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.amw, ptr noundef nonnull align 1 dereferenceable(11) @78, i64 11, i1 false)
  store i64 %i.amt, ptr %i.dd, align 8
  %.sroa.4580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %i.amw, ptr %.sroa.4580.0..sroa_idx, align 8
  %.sroa.6581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store i64 11, ptr %.sroa.6581.0..sroa_idx, align 8
  %i.amy = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 48)
          to label %bb.qe unwind label %bb.qd     ; 4 uses

bb.qc:                                            ; preds = %bb.qf, %bb.qd
  %.pn692 = phi { ptr, i32 } [ %i.and, %bb.qf ], [ %i.amz, %bb.qd ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dd) #14
          to label %bb.px unwind label %bb.bi

bb.qd:                                            ; preds = %bb.qb
  %i.amz = landingpad { ptr, i32 }
          cleanup
  br label %bb.qc

bb.qe:                                            ; preds = %bb.qb
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.ana = load ptr, ptr %i.hw, align 8, !alias.scope !162, !noalias !163, !nonnull !5, !noundef !5
  %i.anb = load ptr, ptr %i.hv, align 8, !alias.scope !162, !noalias !163, !nonnull !5, !noundef !5 ; 4 uses
  %i.anc = icmp eq ptr %i.anb, %i.ana
  br i1 %i.anc, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit894.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit894

bb.qf:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit894.thread
  %i.and = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.amy, i64 noundef 48, i64 noundef 8) #15
  br label %bb.qc

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit894: ; preds = %bb.qe
  %i.ane = getelementptr inbounds nuw i8, ptr %i.anb, i64 48
  store ptr %i.ane, ptr %i.hv, align 8, !alias.scope !162, !noalias !163
  %.sroa.0129.0.copyload130 = load i64, ptr %i.anb, align 8, !noalias !162 ; 2 uses
  %.not691 = icmp eq i64 %.sroa.0129.0.copyload130, -2
  br i1 %.not691, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit894.thread, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser.exit896, !prof !9

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser.exit896: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit894
  %.sroa.6131.0..sroa_idx132 = getelementptr inbounds nuw i8, ptr %i.anb, i64 8
  %.sroa.4134.0..sroa.0128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amy, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4134.0..sroa.0128.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6131.0..sroa_idx132, i64 40, i1 false)
  store i64 %.sroa.0129.0.copyload130, ptr %i.amy, align 8
  %i.anf = getelementptr inbounds nuw i8, ptr %i.alm, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.anf, ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.alm, ptr noundef nonnull align 8 dereferenceable(48) %i.dj, i64 48, i1 false)
  %i.ang = getelementptr inbounds nuw i8, ptr %i.alm, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ang, ptr noundef nonnull align 8 dereferenceable(48) %i.dg, i64 48, i1 false)
  %.sroa.4122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alm, i64 120
  store i64 1, ptr %.sroa.4122.0..sroa_idx, align 8
  %.sroa.5123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alm, i64 128
  store ptr %i.amy, ptr %.sroa.5123.0..sroa_idx, align 8
  %.sroa.6124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alm, i64 136
  store i64 1, ptr %.sroa.6124.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 24, i1 false)
  %i.anh = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 3, ptr %i.anh, align 8
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.alm, ptr %.sroa.4110.0..sroa_idx, align 8
  %.sroa.5111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 3, ptr %.sroa.5111.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %bb.dy

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit894.thread: ; preds = %bb.qe, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit894
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #16
          to label %bb.bh unwind label %bb.qf

bb.qg:                                            ; preds = %bb.qi, %.thread250, %bb.qh
  %.pn684.pn = phi { ptr, i32 } [ %.pn684, %bb.qi ], [ %.pn680, %.thread250 ], [ %i.ani, %bb.qh ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dc)
          to label %common.resume unwind label %bb.bi

bb.qh:                                            ; preds = %bb.ax
  %i.ani = landingpad { ptr, i32 }
          cleanup
  br label %bb.qg

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef 12, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.qk unwind label %bb.qj

bb.qi:                                            ; preds = %bb.qs, %bb.qn, %bb.qj
  %.pn684 = phi { ptr, i32 } [ %i.anj, %bb.qj ], [ %.pn682, %bb.qs ], [ %.pn654, %bb.qn ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ih, i64 noundef 96, i64 noundef 8) #15
  br label %bb.qg

bb.qj:                                            ; preds = %bb.ql, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.anj = landingpad { ptr, i32 }
          cleanup
  br label %bb.qi

bb.qk:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.ank = load i64, ptr %i.l, align 8, !range !7, !noundef !5
  %i.anl = trunc nuw i64 %i.ank to i1
  %i.anm = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ann = load i64, ptr %i.anm, align 8, !range !8, !noundef !5 ; 3 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  br i1 %i.anl, label %bb.ql, label %bb.qm, !prof !6

bb.ql:                                            ; preds = %bb.qk
  %i.anp = load i64, ptr %i.ano, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ann, i64 %i.anp) #16
          to label %bb.bh unwind label %bb.qj

bb.qm:                                            ; preds = %bb.qk
  %i.anq = load ptr, ptr %i.ano, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.anr = icmp samesign ugt i64 %i.ann, 11
  tail call void @llvm.assume(i1 %i.anr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.anq, ptr noundef nonnull align 1 dereferenceable(12) @67, i64 12, i1 false)
  store i64 %i.ann, ptr %i.cz, align 8
  %.sroa.4583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.anq, ptr %.sroa.4583.0..sroa_idx, align 8
  %.sroa.6584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i64 12, ptr %.sroa.6584.0..sroa_idx, align 8
  %i.ans = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 48)
          to label %bb.qp unwind label %bb.qo     ; 3 uses

bb.qn:                                            ; preds = %bb.qq, %bb.qo
  %.pn654 = phi { ptr, i32 } [ %i.anv, %bb.qq ], [ %i.ant, %bb.qo ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cz) #14
          to label %bb.qi unwind label %bb.bi

bb.qo:                                            ; preds = %bb.qm
  %i.ant = landingpad { ptr, i32 }
          cleanup
  br label %bb.qn

bb.qp:                                            ; preds = %bb.qm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.anu = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %.val817 = load i32, ptr %i.anu, align 8, !range !138, !noundef !5
  invoke fastcc void @_RINvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast10ascii_tree21quantifier_ascii_treeQINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEEB6_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.cy, i32 %.val817, ptr noalias nofree noundef align 8 dereferenceable(32) %i.dc)
          to label %bb.qr unwind label %bb.qq

bb.qq:                                            ; preds = %bb.qp
  %i.anv = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ans, i64 noundef 48, i64 noundef 8) #15
  br label %bb.qn

bb.qr:                                            ; preds = %bb.qp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ans, ptr noundef nonnull align 8 dereferenceable(48) %i.cy, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i64 24, i1 false)
  %i.anw = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  store i64 1, ptr %i.anw, align 8
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  store ptr %i.ans, ptr %.sroa.4126.0..sroa_idx, align 8
  %.sroa.5127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  store i64 1, ptr %.sroa.5127.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef 6, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.qu unwind label %bb.qt

bb.qs:                                            ; preds = %bb.qx, %bb.qt
  %.pn682 = phi { ptr, i32 } [ %i.anx, %bb.qt ], [ %.pn656, %bb.qx ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdJkkaF0JZ31_10ascii_tree4TreeECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(48) %i.da) #14
          to label %bb.qi unwind label %bb.bi

bb.qt:                                            ; preds = %bb.qv, %bb.qr
  %i.anx = landingpad { ptr, i32 }
          cleanup
  br label %bb.qs

bb.qu:                                            ; preds = %bb.qr
  %i.any = load i64, ptr %i.k, align 8, !range !7, !noundef !5
  %i.anz = trunc nuw i64 %i.any to i1
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.aob = load i64, ptr %i.aoa, align 8, !range !8, !noundef !5 ; 3 uses
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br i1 %i.anz, label %bb.qv, label %bb.qw, !prof !6

bb.qv:                                            ; preds = %bb.qu
  %i.aod = load i64, ptr %i.aoc, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.aob, i64 %i.aod) #16
          to label %bb.bh unwind label %bb.qt

bb.qw:                                            ; preds = %bb.qu
  %i.aoe = load ptr, ptr %i.aoc, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aof = icmp samesign ugt i64 %i.aob, 5
  tail call void @llvm.assume(i1 %i.aof)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.aoe, ptr noundef nonnull align 1 dereferenceable(6) @80, i64 6, i1 false)
  store i64 %i.aob, ptr %i.cx, align 8
  %.sroa.4586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.aoe, ptr %.sroa.4586.0..sroa_idx, align 8
  %.sroa.6587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i64 6, ptr %.sroa.6587.0..sroa_idx, align 8
  %i.aog = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 48)
          to label %bb.qz unwind label %bb.qy     ; 4 uses

bb.qx:                                            ; preds = %bb.ra, %bb.qy
  %.pn656 = phi { ptr, i32 } [ %i.aon, %bb.ra ], [ %i.aoh, %bb.qy ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cx) #14
          to label %bb.qs unwind label %bb.bi

bb.qy:                                            ; preds = %bb.qw
  %i.aoh = landingpad { ptr, i32 }
          cleanup
  br label %bb.qx

bb.qz:                                            ; preds = %bb.qw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  %i.aoi = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.aoj = load ptr, ptr %i.aoi, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.aol = load i64, ptr %i.aok, align 8, !noundef !5
  %i.aom = getelementptr inbounds nuw [24 x i8], ptr %i.aoj, i64 %i.aol
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterNtNtCsfF8zpZz1lvn_13yara_x_parser3ast5IdentENCNvNtB3a_10ascii_tree19build_tree_for_exprs0_0EE9from_iterB3c_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cw, ptr noundef nonnull %i.aoj, ptr noundef nonnull %i.aom)
          to label %bb.rb unwind label %bb.ra

bb.ra:                                            ; preds = %bb.qz
  %i.aon = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aog, i64 noundef 48, i64 noundef 8) #15
  br label %bb.qx

bb.rb:                                            ; preds = %bb.qz
  %.sroa.4136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aog, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4136.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  store i64 -1, ptr %i.aog, align 8
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.ih, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aoo, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ih, ptr noundef nonnull align 8 dereferenceable(48) %i.da, i64 48, i1 false)
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ih, i64 72
  store i64 1, ptr %.sroa.4132.0..sroa_idx, align 8
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ih, i64 80
  store ptr %i.aog, ptr %.sroa.5133.0..sroa_idx, align 8
  %.sroa.6134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ih, i64 88
  store i64 1, ptr %.sroa.6134.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  store i64 2, ptr %i.db, align 8
  %i.aop = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  store ptr %i.ih, ptr %i.aop, align 8
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 3 uses
  store i64 2, ptr %i.aoq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  %i.aor = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.aos = load i32, ptr %i.aor, align 8, !range !164, !noundef !5 ; 2 uses
  %i.aot = icmp samesign ugt i32 %i.aos, 49
  %i.aou = zext nneg i32 %i.aos to i64
  %i.aov = add nsw i64 %i.aou, -49
  %i.aow = select i1 %i.aot, i64 %i.aov, i64 0
  switch i64 %i.aow, label %bb.b [
    i64 0, label %bb.rc
    i64 1, label %bb.rd
    i64 2, label %bb.re
  ]

bb.rc:                                            ; preds = %bb.rb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.rg unwind label %bb.rf

bb.rd:                                            ; preds = %bb.rb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  %i.aox = getelementptr inbounds nuw i8, ptr %.8.val, i64 88
  %i.aoy = load i64, ptr %i.aox, align 8, !noundef !5 ; 2 uses
  %i.aoz = icmp ult i64 %i.aoy, 576460752303423488
  tail call void @llvm.assume(i1 %i.aoz)
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB22_3ops5range5RangejENCNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast10ascii_tree19build_tree_for_exprs_0EE9from_iterB3i_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cq, i64 noundef 0, i64 noundef %i.aoy)
          to label %bb.sc unwind label %bb.rf

bb.re:                                            ; preds = %bb.rb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef 6, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ss unwind label %bb.rf

.thread250:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECsfF8zpZz1lvn_13yara_x_parser.exit903, %bb.sd, %bb.te, %bb.sv, %bb.sr, %bb.rs, %bb.rj, %bb.rf
  %.pn680 = phi { ptr, i32 } [ %i.apa, %bb.rf ], [ %.pn678, %bb.te ], [ %.pn673, %bb.rs ], [ %.pn670, %bb.rj ], [ %i.arv, %bb.sr ], [ %i.aqt, %bb.sd ], [ %.pn659, %bb.sv ], [ %.pn665.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECsfF8zpZz1lvn_13yara_x_parser.exit903 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.db) #14
          to label %bb.qg unwind label %bb.bi

bb.rf:                                            ; preds = %bb.rn, %bb.rw, %bb.sz, %.invoke311, %bb.ta, %bb.rx, %bb.ro, %bb.re, %bb.rd, %bb.rc
  %i.apa = landingpad { ptr, i32 }
          cleanup
  br label %.thread250

bb.rg:                                            ; preds = %bb.rc
  %i.apb = load i64, ptr %i.i, align 8, !range !7, !noundef !5
  %i.apc = trunc nuw i64 %i.apb to i1
  %i.apd = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ape = load i64, ptr %i.apd, align 8, !range !8, !noundef !5 ; 3 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br i1 %i.apc, label %bb.rh, label %bb.ri, !prof !6

bb.rh:                                            ; preds = %bb.rg
  %i.apg = load i64, ptr %i.apf, align 8
  br label %.invoke311

bb.ri:                                            ; preds = %bb.rg
  %i.aph = load ptr, ptr %i.apf, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.api = icmp samesign ugt i64 %i.ape, 6
  tail call void @llvm.assume(i1 %i.api)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.aph, ptr noundef nonnull align 1 dereferenceable(7) @30, i64 7, i1 false)
  store i64 %i.ape, ptr %i.ct, align 8
  %.sroa.4592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %i.aph, ptr %.sroa.4592.0..sroa_idx, align 8
  %.sroa.6593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store i64 7, ptr %.sroa.6593.0..sroa_idx, align 8
  %i.apj = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 48)
          to label %bb.rl unwind label %bb.rk     ; 4 uses

bb.rj:                                            ; preds = %bb.rm, %bb.rk
  %.pn670 = phi { ptr, i32 } [ %i.apo, %bb.rm ], [ %i.apk, %bb.rk ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ct) #14
          to label %.thread250 unwind label %bb.bi

bb.rk:                                            ; preds = %bb.ri
  %i.apk = landingpad { ptr, i32 }
          cleanup
  br label %bb.rj

bb.rl:                                            ; preds = %bb.ri
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.apl = load ptr, ptr %i.ig, align 8, !alias.scope !165, !noalias !166, !nonnull !5, !noundef !5
  %i.apm = load ptr, ptr %i.if, align 8, !alias.scope !165, !noalias !166, !nonnull !5, !noundef !5 ; 4 uses
  %i.apn = icmp eq ptr %i.apm, %i.apl
  br i1 %i.apn, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit899.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit899

bb.rm:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit899.thread
  %i.apo = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.apj, i64 noundef 48, i64 noundef 8) #15
  br label %bb.rj

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit899: ; preds = %bb.rl
  %i.app = getelementptr inbounds nuw i8, ptr %i.apm, i64 48
  store ptr %i.app, ptr %i.if, align 8, !alias.scope !165, !noalias !166
  %.sroa.0141.0.copyload142 = load i64, ptr %i.apm, align 8, !noalias !165 ; 2 uses
  %.not669 = icmp eq i64 %.sroa.0141.0.copyload142, -2
  br i1 %.not669, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit899.thread, label %bb.rn, !prof !9

bb.rn:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit899
  %.sroa.6143.0..sroa_idx144 = getelementptr inbounds nuw i8, ptr %i.apm, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4146, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6143.0..sroa_idx144, i64 40, i1 false)
  store i64 %.sroa.0141.0.copyload142, ptr %i.apj, align 8
  %.sroa.4146.0..sroa.0140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4146.0..sroa.0140.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4146, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4146)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i64 24, i1 false)
  %i.apq = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  store i64 1, ptr %i.apq, align 8
  %.sroa.4139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  store ptr %i.apj, ptr %.sroa.4139.0..sroa_idx, align 8
  %.sroa.5140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  store i64 1, ptr %.sroa.5140.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  invoke fastcc void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsdJkkaF0JZ31_10ascii_tree4TreeE8push_mutCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.db, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.cu)
          to label %bb.ro unwind label %bb.rf

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit899.thread: ; preds = %bb.rl, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit899
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #16
          to label %bb.bh unwind label %bb.rm

bb.ro:                                            ; preds = %bb.rn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef 5, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.rp unwind label %bb.rf

bb.rp:                                            ; preds = %bb.ro
  %i.apr = load i64, ptr %i.h, align 8, !range !7, !noundef !5
  %i.aps = trunc nuw i64 %i.apr to i1
  %i.apt = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.apu = load i64, ptr %i.apt, align 8, !range !8, !noundef !5 ; 3 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.aps, label %bb.rq, label %bb.rr, !prof !6

bb.rq:                                            ; preds = %bb.rp
  %i.apw = load i64, ptr %i.apv, align 8
  br label %.invoke311

bb.rr:                                            ; preds = %bb.rp
  %i.apx = load ptr, ptr %i.apv, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.apy = icmp samesign ugt i64 %i.apu, 4
  call void @llvm.assume(i1 %i.apy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.apx, ptr noundef nonnull align 1 dereferenceable(5) @32, i64 5, i1 false)
  store i64 %i.apu, ptr %i.cr, align 8
  %.sroa.4595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr %i.apx, ptr %.sroa.4595.0..sroa_idx, align 8
  %.sroa.6596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store i64 5, ptr %.sroa.6596.0..sroa_idx, align 8
  %i.apz = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 48)
          to label %bb.ru unwind label %bb.rt     ; 4 uses

bb.rs:                                            ; preds = %bb.rv, %bb.rt
  %.pn673 = phi { ptr, i32 } [ %i.aqe, %bb.rv ], [ %i.aqa, %bb.rt ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cr) #14
          to label %.thread250 unwind label %bb.bi

bb.rt:                                            ; preds = %bb.rr
  %i.aqa = landingpad { ptr, i32 }
          cleanup
  br label %bb.rs

bb.ru:                                            ; preds = %bb.rr
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.aqb = load ptr, ptr %i.ig, align 8, !alias.scope !167, !noalias !168, !nonnull !5, !noundef !5
  %i.aqc = load ptr, ptr %i.if, align 8, !alias.scope !167, !noalias !168, !nonnull !5, !noundef !5 ; 4 uses
  %i.aqd = icmp eq ptr %i.aqc, %i.aqb
  br i1 %i.aqd, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit900.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit900

bb.rv:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit900.thread
  %i.aqe = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.apz, i64 noundef 48, i64 noundef 8) #15
  br label %bb.rs

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit900: ; preds = %bb.ru
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqc, i64 48
  store ptr %i.aqf, ptr %i.if, align 8, !alias.scope !167, !noalias !168
  %.sroa.0148.0.copyload149 = load i64, ptr %i.aqc, align 8, !noalias !167 ; 2 uses
  %.not672 = icmp eq i64 %.sroa.0148.0.copyload149, -2
  br i1 %.not672, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit900.thread, label %bb.rw, !prof !9

bb.rw:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit900
  %.sroa.6150.0..sroa_idx151 = getelementptr inbounds nuw i8, ptr %i.aqc, i64 8
  %.sroa.4153.0..sroa.0147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4153.0..sroa.0147.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6150.0..sroa_idx151, i64 40, i1 false)
  store i64 %.sroa.0148.0.copyload149, ptr %i.apz, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 24, i1 false)
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  store i64 1, ptr %i.aqg, align 8
  %.sroa.4142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  store ptr %i.apz, ptr %.sroa.4142.0..sroa_idx, align 8
  %.sroa.5143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  store i64 1, ptr %.sroa.5143.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  invoke fastcc void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsdJkkaF0JZ31_10ascii_tree4TreeE8push_mutCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.db, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.cs)
          to label %bb.rx unwind label %bb.rf

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit900.thread: ; preds = %bb.ru, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit900
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #16
          to label %bb.bh unwind label %bb.rv

bb.rx:                                            ; preds = %bb.rw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef 61, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ry unwind label %bb.rf

bb.ry:                                            ; preds = %bb.rx
  %i.aqh = load i64, ptr %i.g, align 8, !range !7, !noundef !5
  %i.aqi = trunc nuw i64 %i.aqh to i1
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aqk = load i64, ptr %i.aqj, align 8, !range !8, !noundef !5 ; 3 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.aqi, label %bb.rz, label %bb.sa, !prof !6

bb.rz:                                            ; preds = %bb.ry
  %i.aqm = load i64, ptr %i.aql, align 8
  br label %.invoke311

bb.sa:                                            ; preds = %bb.ry
  %i.aqn = load ptr, ptr %i.aql, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aqo = icmp samesign ugt i64 %i.aqk, 60
  call void @llvm.assume(i1 %i.aqo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(61) %i.aqn, ptr noundef nonnull align 1 dereferenceable(61) @83, i64 61, i1 false)
  store i64 %i.aqk, ptr %i.cv, align 8
  %.sroa.4598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %i.aqn, ptr %.sroa.4598.0..sroa_idx, align 8
  %.sroa.6599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i64 61, ptr %.sroa.6599.0..sroa_idx, align 8
  br label %bb.sb

bb.sb:                                            ; preds = %bb.td, %bb.si, %bb.sa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 11, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.tg unwind label %bb.tf

bb.sc:                                            ; preds = %bb.rd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.aqq = load ptr, ptr %i.aqp, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.aqs = load i64, ptr %i.aqr, align 8, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RINvNtCsexYYUdYSQU6_5alloc3str17join_generic_copyehNtNtB4_6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.aqq, i64 noundef %i.aqs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 2)
          to label %bb.se unwind label %bb.sr

bb.sd:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit909
  %i.aqt = landingpad { ptr, i32 }
          cleanup
  br label %.thread250

bb.se:                                            ; preds = %bb.sc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.aqu = load i64, ptr %i.cq, align 8, !range !10, !noundef !5
  %i.aqv = icmp ult i64 %i.aqs, 384307168202282326
  tail call void @llvm.assume(i1 %i.aqv)
  %.idx = mul nuw nsw i64 %i.aqs, 24
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqq, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  store ptr %i.aqq, ptr %i.co, align 8
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 3 uses
  store ptr %i.aqq, ptr %.sroa.4145.0..sroa_idx, align 8
  %.sroa.5146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i64 %i.aqu, ptr %.sroa.5146.0..sroa_idx, align 8
  %.sroa.6147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 24 ; 2 uses
  store ptr %i.aqw, ptr %.sroa.6147.0..sroa_idx, align 8
  %i.aqx = icmp eq i64 %i.aqs, 0
  br i1 %i.aqx, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit901.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit901.lr.ph

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit901.lr.ph: ; preds = %bb.se
  %.sroa.4159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %.sroa.4149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %.sroa.5150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  br label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit901

.body911:                                         ; preds = %bb.so, %bb.sj
  %.pn665 = phi { ptr, i32 } [ %.pn663, %bb.sj ], [ %i.arn, %bb.so ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.co)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECsfF8zpZz1lvn_13yara_x_parser.exit903 unwind label %bb.bi

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit901: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit901.lr.ph, %bb.sq
  %i.aqz = phi ptr [ %i.aqq, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit901.lr.ph ], [ %i.art, %bb.sq ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqz, i64 24
  store ptr %i.ara, ptr %.sroa.4145.0..sroa_idx, align 8, !alias.scope !169, !noalias !170
  %.sroa.0154.0.copyload155 = load i64, ptr %i.aqz, align 8, !noalias !169 ; 2 uses
  %.not661 = icmp eq i64 %.sroa.0154.0.copyload155, -1
  br i1 %.not661, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit901.thread, label %bb.sf

bb.sf:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit901
  %.sroa.7156.0..sroa_idx157 = getelementptr inbounds nuw i8, ptr %i.aqz, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4159.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7156.0..sroa_idx157, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  store i64 %.sroa.0154.0.copyload155, ptr %i.cm, align 8
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15
  %i.arb = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 145) 48, i64 noundef 8) #15 ; 5 uses
  %i.arc = icmp eq ptr %i.arb, null
  br i1 %i.arc, label %bb.sg, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit905, !prof !6

bb.sg:                                            ; preds = %bb.sf
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #16
          to label %.noexc904 unwind label %bb.sk

.noexc904:                                        ; preds = %bb.sg
  unreachable

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit901.thread: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit901, %bb.sq, %bb.se
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.co)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECsfF8zpZz1lvn_13yara_x_parser.exit907 unwind label %bb.sh

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECsfF8zpZz1lvn_13yara_x_parser.exit903: ; preds = %.body911, %bb.sh
  %.pn665.pn = phi { ptr, i32 } [ %i.ard, %bb.sh ], [ %.pn665, %.body911 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cp) #14
          to label %.thread250 unwind label %bb.bi

bb.sh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECsfF8zpZz1lvn_13yara_x_parser.exit907, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit901.thread
  %i.ard = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECsfF8zpZz1lvn_13yara_x_parser.exit903

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECsfF8zpZz1lvn_13yara_x_parser.exit907: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit901.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  store ptr %i.cp, ptr %i.ck, align 8
  %.sroa.4603.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.4603.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cl, ptr noundef nonnull @84, ptr noundef nonnull %i.ck)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit909 unwind label %bb.sh

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit909: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECsfF8zpZz1lvn_13yara_x_parser.exit907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cp)
          to label %bb.si unwind label %bb.sd

bb.si:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  br label %bb.sb

bb.sj:                                            ; preds = %bb.sl, %bb.sk
  %.pn663 = phi { ptr, i32 } [ %i.ari, %bb.sl ], [ %i.are, %bb.sk ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cm) #14
          to label %.body911 unwind label %bb.bi

bb.sk:                                            ; preds = %bb.sg
  %i.are = landingpad { ptr, i32 }
          cleanup
  br label %bb.sj

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit905: ; preds = %bb.sf
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4166)
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.arf = load ptr, ptr %i.ig, align 8, !alias.scope !171, !noalias !172, !nonnull !5, !noundef !5
  %i.arg = load ptr, ptr %i.if, align 8, !alias.scope !171, !noalias !172, !nonnull !5, !noundef !5 ; 4 uses
  %i.arh = icmp eq ptr %i.arg, %i.arf
  br i1 %i.arh, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit910.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit910

bb.sl:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit910.thread
  %i.ari = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.arb, i64 noundef 48, i64 noundef 8) #15
  br label %bb.sj

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit910: ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit905
  %i.arj = getelementptr inbounds nuw i8, ptr %i.arg, i64 48
  store ptr %i.arj, ptr %i.if, align 8, !alias.scope !171, !noalias !172
  %.sroa.0161.0.copyload162 = load i64, ptr %i.arg, align 8, !noalias !171 ; 2 uses
  %.not662 = icmp eq i64 %.sroa.0161.0.copyload162, -2
  br i1 %.not662, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit910.thread, label %bb.sm, !prof !9

bb.sm:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit910
  %.sroa.6163.0..sroa_idx164 = getelementptr inbounds nuw i8, ptr %i.arg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4166, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6163.0..sroa_idx164, i64 40, i1 false)
  store i64 %.sroa.0161.0.copyload162, ptr %i.arb, align 8
  %.sroa.4166.0..sroa.0160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.arb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4166.0..sroa.0160.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4166, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4166)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i64 24, i1 false)
  store i64 1, ptr %i.aqy, align 8
  store ptr %i.arb, ptr %.sroa.4149.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.5150.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  %i.ark = load i64, ptr %i.aoq, align 8, !alias.scope !173, !noalias !174, !noundef !5 ; 3 uses
  %i.arl = load i64, ptr %i.db, align 8, !range !10, !alias.scope !173, !noalias !174, !noundef !5
  %i.arm = icmp eq i64 %i.ark, %i.arl
  br i1 %i.arm, label %bb.sn, label %bb.sq

bb.sn:                                            ; preds = %bb.sm
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsdJkkaF0JZ31_10ascii_tree4TreeE8grow_oneCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.db)
          to label %bb.sq unwind label %bb.so, !noalias !174

bb.so:                                            ; preds = %bb.sn
  %i.arn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdJkkaF0JZ31_10ascii_tree4TreeECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cn) #14
          to label %.body911 unwind label %bb.sp

bb.sp:                                            ; preds = %bb.so
  %i.aro = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit910.thread: ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit905, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit910
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #16
          to label %bb.bh unwind label %bb.sl

bb.sq:                                            ; preds = %bb.sn, %bb.sm
  %i.arp = load ptr, ptr %i.aop, align 8, !alias.scope !173, !noalias !174, !nonnull !5, !noundef !5
  %i.arq = getelementptr inbounds nuw [48 x i8], ptr %i.arp, i64 %i.ark
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.arq, ptr noundef nonnull align 8 dereferenceable(48) %i.cn, i64 48, i1 false)
  %i.arr = add i64 %i.ark, 1
  store i64 %i.arr, ptr %i.aoq, align 8, !alias.scope !173, !noalias !174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  %i.ars = load ptr, ptr %.sroa.6147.0..sroa_idx, align 8, !alias.scope !175, !noalias !170, !nonnull !5, !noundef !5
  %i.art = load ptr, ptr %.sroa.4145.0..sroa_idx, align 8, !alias.scope !175, !noalias !170, !nonnull !5, !noundef !5 ; 2 uses
  %i.aru = icmp eq ptr %i.art, %i.ars
  br i1 %i.aru, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit901.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit901

bb.sr:                                            ; preds = %bb.sc
  %i.arv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cq) #14
          to label %.thread250 unwind label %bb.bi

bb.ss:                                            ; preds = %bb.re
  %i.arw = load i64, ptr %i.j, align 8, !range !7, !noundef !5
  %i.arx = trunc nuw i64 %i.arw to i1
  %i.ary = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.arz = load i64, ptr %i.ary, align 8, !range !8, !noundef !5 ; 3 uses
  %i.asa = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.arx, label %bb.st, label %bb.su, !prof !6

bb.st:                                            ; preds = %bb.ss
  %i.asb = load i64, ptr %i.asa, align 8
  br label %.invoke311

bb.su:                                            ; preds = %bb.ss
  %i.asc = load ptr, ptr %i.asa, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.asd = icmp samesign ugt i64 %i.arz, 5
  tail call void @llvm.assume(i1 %i.asd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.asc, ptr noundef nonnull align 1 dereferenceable(6) @28, i64 6, i1 false)
  store i64 %i.arz, ptr %i.ci, align 8
  %.sroa.4589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.asc, ptr %.sroa.4589.0..sroa_idx, align 8
  %.sroa.6590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i64 6, ptr %.sroa.6590.0..sroa_idx, align 8
  %i.ase = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 48)
          to label %bb.sx unwind label %bb.sw     ; 4 uses

bb.sv:                                            ; preds = %bb.sy, %bb.sw
  %.pn659 = phi { ptr, i32 } [ %i.asj, %bb.sy ], [ %i.asf, %bb.sw ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ci) #14
          to label %.thread250 unwind label %bb.bi

bb.sw:                                            ; preds = %bb.su
  %i.asf = landingpad { ptr, i32 }
          cleanup
  br label %bb.sv

bb.sx:                                            ; preds = %bb.su
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.asg = load ptr, ptr %i.ig, align 8, !alias.scope !176, !noalias !177, !nonnull !5, !noundef !5
  %i.ash = load ptr, ptr %i.if, align 8, !alias.scope !176, !noalias !177, !nonnull !5, !noundef !5 ; 4 uses
  %i.asi = icmp eq ptr %i.ash, %i.asg
  br i1 %i.asi, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit914.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit914

bb.sy:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit914.thread
  %i.asj = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ase, i64 noundef 48, i64 noundef 8) #15
  br label %bb.sv

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit914: ; preds = %bb.sx
  %i.ask = getelementptr inbounds nuw i8, ptr %i.ash, i64 48
  store ptr %i.ask, ptr %i.if, align 8, !alias.scope !176, !noalias !177
  %.sroa.0170.0.copyload171 = load i64, ptr %i.ash, align 8, !noalias !176 ; 2 uses
  %.not658 = icmp eq i64 %.sroa.0170.0.copyload171, -2
  br i1 %.not658, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit914.thread, label %bb.sz, !prof !9

bb.sz:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit914
  %.sroa.6172.0..sroa_idx173 = getelementptr inbounds nuw i8, ptr %i.ash, i64 8
  %.sroa.4175.0..sroa.0169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ase, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4175.0..sroa.0169.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6172.0..sroa_idx173, i64 40, i1 false)
  store i64 %.sroa.0170.0.copyload171, ptr %i.ase, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 24, i1 false)
  %i.asl = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store i64 1, ptr %i.asl, align 8
  %.sroa.4152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  store ptr %i.ase, ptr %.sroa.4152.0..sroa_idx, align 8
  %.sroa.5153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  store i64 1, ptr %.sroa.5153.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  invoke fastcc void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsdJkkaF0JZ31_10ascii_tree4TreeE8push_mutCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.db, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.cj)
          to label %bb.ta unwind label %bb.rf

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit914.thread: ; preds = %bb.sx, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit914
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #16
          to label %bb.bh unwind label %bb.sy

bb.ta:                                            ; preds = %bb.sz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef 51, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.tb unwind label %bb.rf

bb.tb:                                            ; preds = %bb.ta
  %i.asm = load i64, ptr %i.e, align 8, !range !7, !noundef !5
  %i.asn = trunc nuw i64 %i.asm to i1
  %i.aso = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.asp = load i64, ptr %i.aso, align 8, !range !8, !noundef !5 ; 3 uses
  %i.asq = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.asn, label %bb.tc, label %bb.td, !prof !6

bb.tc:                                            ; preds = %bb.tb
  %i.asr = load i64, ptr %i.asq, align 8
  br label %.invoke311

.invoke311:                                       ; preds = %bb.rh, %bb.rq, %bb.rz, %bb.st, %bb.tc
  %i.ass = phi i64 [ %i.asp, %bb.tc ], [ %i.arz, %bb.st ], [ %i.aqk, %bb.rz ], [ %i.apu, %bb.rq ], [ %i.ape, %bb.rh ]
  %i.ast = phi i64 [ %i.asr, %bb.tc ], [ %i.asb, %bb.st ], [ %i.aqm, %bb.rz ], [ %i.apw, %bb.rq ], [ %i.apg, %bb.rh ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ass, i64 %i.ast) #16
          to label %.cont312 unwind label %bb.rf

.cont312:                                         ; preds = %.invoke311
  unreachable

bb.td:                                            ; preds = %bb.tb
  %i.asu = load ptr, ptr %i.asq, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.asv = icmp samesign ugt i64 %i.asp, 50
  call void @llvm.assume(i1 %i.asv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.asu, ptr noundef nonnull align 1 dereferenceable(51) @87, i64 51, i1 false)
  store i64 %i.asp, ptr %i.cv, align 8
  %.sroa.4607.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %i.asu, ptr %.sroa.4607.0..sroa_idx, align 8
  %.sroa.6608.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i64 51, ptr %.sroa.6608.0..sroa_idx, align 8
  br label %bb.sb

bb.te:                                            ; preds = %bb.tj, %bb.tf
  %.pn678 = phi { ptr, i32 } [ %i.asw, %bb.tf ], [ %.pn676, %bb.tj ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cv) #14
          to label %.thread250 unwind label %bb.bi

bb.tf:                                            ; preds = %bb.tn, %bb.th, %bb.sb
  %i.asw = landingpad { ptr, i32 }
          cleanup
  br label %bb.te

bb.tg:                                            ; preds = %bb.sb
  %i.asx = load i64, ptr %i.d, align 8, !range !7, !noundef !5
  %i.asy = trunc nuw i64 %i.asx to i1
  %i.asz = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ata = load i64, ptr %i.asz, align 8, !range !8, !noundef !5 ; 3 uses
  %i.atb = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.asy, label %bb.th, label %bb.ti, !prof !6

bb.th:                                            ; preds = %bb.tg
  %i.atc = load i64, ptr %i.atb, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ata, i64 %i.atc) #16
          to label %bb.bh unwind label %bb.tf

bb.ti:                                            ; preds = %bb.tg
  %i.atd = load ptr, ptr %i.atb, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ate = icmp samesign ugt i64 %i.ata, 10
  call void @llvm.assume(i1 %i.ate)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.atd, ptr noundef nonnull align 1 dereferenceable(11) @78, i64 11, i1 false)
  store i64 %i.ata, ptr %i.cg, align 8
  %.sroa.4610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.atd, ptr %.sroa.4610.0..sroa_idx, align 8
  %.sroa.6611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i64 11, ptr %.sroa.6611.0..sroa_idx, align 8
  %i.atf = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 48)
          to label %bb.tl unwind label %bb.tk     ; 4 uses

bb.tj:                                            ; preds = %bb.tm, %bb.tk
  %.pn676 = phi { ptr, i32 } [ %i.atk, %bb.tm ], [ %i.atg, %bb.tk ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cg) #14
          to label %bb.te unwind label %bb.bi

bb.tk:                                            ; preds = %bb.ti
  %i.atg = landingpad { ptr, i32 }
          cleanup
  br label %bb.tj

bb.tl:                                            ; preds = %bb.ti
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.ath = load ptr, ptr %i.ig, align 8, !alias.scope !178, !noalias !179, !nonnull !5, !noundef !5
  %i.ati = load ptr, ptr %i.if, align 8, !alias.scope !178, !noalias !179, !nonnull !5, !noundef !5 ; 4 uses
  %i.atj = icmp eq ptr %i.ati, %i.ath
  br i1 %i.atj, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit915.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit915

bb.tm:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit915.thread
  %i.atk = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.atf, i64 noundef 48, i64 noundef 8) #15
  br label %bb.tj

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit915: ; preds = %bb.tl
  %i.atl = getelementptr inbounds nuw i8, ptr %i.ati, i64 48
  store ptr %i.atl, ptr %i.if, align 8, !alias.scope !178, !noalias !179
  %.sroa.0177.0.copyload178 = load i64, ptr %i.ati, align 8, !noalias !178 ; 2 uses
  %.not675 = icmp eq i64 %.sroa.0177.0.copyload178, -2
  br i1 %.not675, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit915.thread, label %bb.tn, !prof !9

bb.tn:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit915
  %.sroa.6179.0..sroa_idx180 = getelementptr inbounds nuw i8, ptr %i.ati, i64 8
  %.sroa.4182.0..sroa.0176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4182.0..sroa.0176.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6179.0..sroa_idx180, i64 40, i1 false)
  store i64 %.sroa.0177.0.copyload178, ptr %i.atf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 24, i1 false)
  %i.atm = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store i64 1, ptr %i.atm, align 8
  %.sroa.4155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  store ptr %i.atf, ptr %.sroa.4155.0..sroa_idx, align 8
  %.sroa.5156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  store i64 1, ptr %.sroa.5156.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  invoke fastcc void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsdJkkaF0JZ31_10ascii_tree4TreeE8push_mutCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.db, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.ch)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser.exit917 unwind label %bb.tf

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit915.thread: ; preds = %bb.tl, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit915
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #16
          to label %bb.bh unwind label %bb.tm

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser.exit917: ; preds = %bb.tn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i64 24, i1 false)
  %i.atn = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.atn, ptr noundef nonnull align 8 dereferenceable(24) %i.db, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  br label %bb.dy

bb.to:                                            ; preds = %bb.tt, %bb.tp
  %.pn652 = phi { ptr, i32 } [ %i.ato, %bb.tp ], [ %.pn649.pn, %bb.tt ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cf)
          to label %common.resume unwind label %bb.bi

bb.tp:                                            ; preds = %bb.tr, %bb.ay
  %i.ato = landingpad { ptr, i32 }
          cleanup
  br label %bb.to

bb.tq:                                            ; preds = %bb.ay
  %i.atp = load i64, ptr %i.c, align 8, !range !7, !noundef !5
  %i.atq = trunc nuw i64 %i.atp to i1
  %i.atr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ats = load i64, ptr %i.atr, align 8, !range !8, !noundef !5 ; 3 uses
  %i.att = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.atq, label %bb.tr, label %bb.ts, !prof !6

bb.tr:                                            ; preds = %bb.tq
  %i.atu = load i64, ptr %i.att, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ats, i64 %i.atu) #16
          to label %bb.bh unwind label %bb.tp

bb.ts:                                            ; preds = %bb.tq
  %i.atv = load ptr, ptr %i.att, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.atw = icmp samesign ugt i64 %i.ats, 44
  tail call void @llvm.assume(i1 %i.atw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %i.atv, ptr noundef nonnull align 1 dereferenceable(45) @89, i64 45, i1 false)
  store i64 %i.ats, ptr %i.ce, align 8
  %.sroa.4613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.atv, ptr %.sroa.4613.0..sroa_idx, align 8
  %.sroa.6614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store i64 45, ptr %.sroa.6614.0..sroa_idx, align 8
  %i.atx = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 96)
          to label %bb.tv unwind label %bb.tu     ; 7 uses

bb.tt:                                            ; preds = %bb.tw, %bb.tu
  %.pn649.pn = phi { ptr, i32 } [ %.pn649, %bb.tw ], [ %i.aty, %bb.tu ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ce) #14
          to label %bb.to unwind label %bb.bi

bb.tu:                                            ; preds = %bb.ts
  %i.aty = landingpad { ptr, i32 }
          cleanup
  br label %bb.tt

bb.tv:                                            ; preds = %bb.ts
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 13, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ty unwind label %bb.tx

bb.tw:                                            ; preds = %bb.ud, %bb.ub, %bb.tx
  %.pn649 = phi { ptr, i32 } [ %i.atz, %bb.tx ], [ %.pn647, %bb.ud ], [ %i.aun, %bb.ub ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.atx, i64 noundef 96, i64 noundef 8) #15
  br label %bb.tt

bb.tx:                                            ; preds = %bb.tz, %bb.tv
  %i.atz = landingpad { ptr, i32 }
          cleanup
  br label %bb.tw

bb.ty:                                            ; preds = %bb.tv
  %i.aua = load i64, ptr %i.b, align 8, !range !7, !noundef !5
  %i.aub = trunc nuw i64 %i.aua to i1
  %i.auc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aud = load i64, ptr %i.auc, align 8, !range !8, !noundef !5 ; 3 uses
  %i.aue = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.aub, label %bb.tz, label %bb.ua, !prof !6

bb.tz:                                            ; preds = %bb.ty
  %i.auf = load i64, ptr %i.aue, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.aud, i64 %i.auf) #16
          to label %bb.bh unwind label %bb.tx

bb.ua:                                            ; preds = %bb.ty
  %i.aug = load ptr, ptr %i.aue, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.auh = icmp samesign ugt i64 %i.aud, 12
  tail call void @llvm.assume(i1 %i.auh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.aug, ptr noundef nonnull align 1 dereferenceable(13) @90, i64 13, i1 false)
  store i64 %i.aud, ptr %i.cc, align 8
  %.sroa.4616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %i.aug, ptr %.sroa.4616.0..sroa_idx, align 8
  %.sroa.6617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i64 13, ptr %.sroa.6617.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.aui = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.auj = load ptr, ptr %i.aui, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.auk = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.aul = load i64, ptr %i.auk, align 8, !noundef !5
  %i.aum = getelementptr inbounds nuw [48 x i8], ptr %i.auj, i64 %i.aul
  store ptr null, ptr %i.ca, align 8
  %.sroa.5627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  store ptr null, ptr %.sroa.5627.0..sroa_idx, align 8
  %.sroa.7629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  store ptr %i.auj, ptr %.sroa.7629.0..sroa_idx, align 8
  %.sroa.7629.sroa.4.0..sroa.7629.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  store ptr %i.aum, ptr %.sroa.7629.sroa.4.0..sroa.7629.0..sroa_idx.sroa_idx, align 8
  %.sroa.7629.sroa.5.0..sroa.7629.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 80
  store ptr %i.cf, ptr %.sroa.7629.sroa.5.0..sroa.7629.0..sroa_idx.sroa_idx, align 8
  invoke void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtCsdJkkaF0JZ31_10ascii_tree4TreeEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtNtNtB2c_5slice4iter4IterNtNtCsfF8zpZz1lvn_13yara_x_parser3ast15WithDeclarationEBR_NCNvNtB3s_10ascii_tree19build_tree_for_exprs1_0EE9from_iterB3u_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.ca)
          to label %bb.uc unwind label %bb.ub

bb.ub:                                            ; preds = %bb.ua
  %i.aun = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cc) #14
          to label %bb.tw unwind label %bb.bi

bb.uc:                                            ; preds = %bb.ua
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false)
  %i.auo = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.auo, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 20, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.uf unwind label %bb.ue

bb.ud:                                            ; preds = %bb.ui, %bb.ue
  %.pn647 = phi { ptr, i32 } [ %i.aup, %bb.ue ], [ %.pn, %bb.ui ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdJkkaF0JZ31_10ascii_tree4TreeECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(48) %i.cd) #14
          to label %bb.tw unwind label %bb.bi

bb.ue:                                            ; preds = %bb.ug, %bb.uc
  %i.aup = landingpad { ptr, i32 }
          cleanup
  br label %bb.ud

bb.uf:                                            ; preds = %bb.uc
  %i.auq = load i64, ptr %i.a, align 8, !range !7, !noundef !5
  %i.aur = trunc nuw i64 %i.auq to i1
  %i.aus = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aut = load i64, ptr %i.aus, align 8, !range !8, !noundef !5 ; 3 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.aur, label %bb.ug, label %bb.uh, !prof !6

bb.ug:                                            ; preds = %bb.uf
  %i.auv = load i64, ptr %i.auu, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.aut, i64 %i.auv) #16
          to label %bb.bh unwind label %bb.ue

bb.uh:                                            ; preds = %bb.uf
  %i.auw = load ptr, ptr %i.auu, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aux = icmp samesign ugt i64 %i.aut, 19
  call void @llvm.assume(i1 %i.aux)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.auw, ptr noundef nonnull align 1 dereferenceable(20) @91, i64 20, i1 false)
  store i64 %i.aut, ptr %i.bz, align 8
  %.sroa.4637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.auw, ptr %.sroa.4637.0..sroa_idx, align 8
  %.sroa.6638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store i64 20, ptr %.sroa.6638.0..sroa_idx, align 8
  %i.auy = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 48)
          to label %bb.uk unwind label %bb.uj     ; 4 uses

bb.ui:                                            ; preds = %bb.ul, %bb.uj
  %.pn = phi { ptr, i32 } [ %i.avd, %bb.ul ], [ %i.auz, %bb.uj ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bz) #14
          to label %bb.ud unwind label %bb.bi

bb.uj:                                            ; preds = %bb.uh
  %i.auz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ui

bb.uk:                                            ; preds = %bb.uh
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.ava = load ptr, ptr %i.is, align 8, !alias.scope !180, !noalias !181, !nonnull !5, !noundef !5
  %i.avb = load ptr, ptr %i.ir, align 8, !alias.scope !180, !noalias !181, !nonnull !5, !noundef !5 ; 4 uses
  %i.avc = icmp eq ptr %i.avb, %i.ava
  br i1 %i.avc, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit920.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit920

bb.ul:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit920.thread
  %i.avd = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.auy, i64 noundef 48, i64 noundef 8) #15
  br label %bb.ui

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit920: ; preds = %bb.uk
  %i.ave = getelementptr inbounds nuw i8, ptr %i.avb, i64 48
  store ptr %i.ave, ptr %i.ir, align 8, !alias.scope !180, !noalias !181
  %.sroa.0186.0.copyload187 = load i64, ptr %i.avb, align 8, !noalias !180 ; 2 uses
  %.not = icmp eq i64 %.sroa.0186.0.copyload187, -2
  br i1 %.not, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit920.thread, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser.exit922, !prof !9

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser.exit922: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit920
  %.sroa.6188.0..sroa_idx189 = getelementptr inbounds nuw i8, ptr %i.avb, i64 8
  %.sroa.4191.0..sroa.0185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.auy, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4191.0..sroa.0185.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6188.0..sroa_idx189, i64 40, i1 false)
  store i64 %.sroa.0186.0.copyload187, ptr %i.auy, align 8
  %i.avf = getelementptr inbounds nuw i8, ptr %i.atx, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.avf, ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.atx, ptr noundef nonnull align 8 dereferenceable(48) %i.cd, i64 48, i1 false)
  %.sroa.4164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atx, i64 72
  store i64 1, ptr %.sroa.4164.0..sroa_idx, align 8
  %.sroa.5165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atx, i64 80
  store ptr %i.auy, ptr %.sroa.5165.0..sroa_idx, align 8
  %.sroa.6166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atx, i64 88
  store i64 1, ptr %.sroa.6166.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false)
  %i.avg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 2, ptr %i.avg, align 8
  %.sroa.4158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.atx, ptr %.sroa.4158.0..sroa_idx, align 8
  %.sroa.5159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2, ptr %.sroa.5159.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  br label %bb.dy

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit920.thread: ; preds = %bb.uk, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit920
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #16
          to label %bb.bh unwind label %bb.ul

.thread:                                          ; preds = %bb.fy, %bb.gf, %bb.fh, %bb.fn, %bb.ey, %bb.dr, %bb.di, %bb.cy, %bb.da, %bb.de, %bb.dg, %bb.cn, %bb.cg, %bb.bz, %bb.bu, %bb.bp, %bb.bk, %bb.ba, %.thread203
  %.pn776196 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread203 ], [ %i.qw, %bb.fy ], [ %.pn750, %bb.gf ], [ %i.pu, %bb.fh ], [ %.pn754, %bb.fn ], [ %i.pf, %bb.ey ], [ %.pn758, %bb.dr ], [ %i.mh, %bb.di ], [ %i.lv, %bb.cy ], [ %i.lx, %bb.da ], [ %i.mb, %bb.de ], [ %i.md, %bb.dg ], [ %i.lj, %bb.cn ], [ %i.kx, %bb.cg ], [ %i.kl, %bb.bz ], [ %i.jy, %bb.bu ], [ %i.jp, %bb.bp ], [ %i.jg, %bb.bk ], [ %i.it, %bb.ba ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #14
          to label %common.resume unwind label %bb.bi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast10ascii_tree21hex_tokens_ascii_tree(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !5
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.f
  call void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCsdJkkaF0JZ31_10ascii_tree4TreeEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterNtNtCsfF8zpZz1lvn_13yara_x_parser3ast8HexTokenENCNvNtB3m_10ascii_tree21hex_tokens_ascii_tree0EE9from_iterB3o_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #14
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.a, align 8, !range !7, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !8, !noundef !5 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr %i.m, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #16
          to label %bb.f unwind label %bb.b

bb.e:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.p = icmp samesign ugt i64 %i.l, 2
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.o, ptr noundef nonnull align 1 dereferenceable(3) @93, i64 3, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 %i.l, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast10ascii_tree22pattern_set_ascii_tree(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i64, ptr %1, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !5
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterNtNtCsfF8zpZz1lvn_13yara_x_parser3ast14PatternSetItemENCNvNtB3a_10ascii_tree22pattern_set_ascii_tree0EE9from_iterB3c_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %i.d, ptr noundef nonnull %i.g)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15
  %i.i = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 145) 24, i64 noundef 8) #15 ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #16
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.k = load i64, ptr %i.a, align 8, !range !7, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !8, !noundef !5 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.g, !prof !6

bb.f:                                             ; preds = %bb.e
  %i.p = load i64, ptr %i.o, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #16
          to label %bb.i unwind label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.r = icmp samesign ugt i64 %i.n, 3
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 1835362420, ptr %i.q, align 1
  store i64 %i.n, ptr %i.i, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.q, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 4, ptr %.sroa.55.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.s, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  store i64 -1, ptr %0, align 8
  ret void

bb.i:                                             ; preds = %bb.f
  unreachable

bb.j:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 24, i64 noundef 8) #15
  resume { ptr, i32 } %i.t
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
end_hunk_3
