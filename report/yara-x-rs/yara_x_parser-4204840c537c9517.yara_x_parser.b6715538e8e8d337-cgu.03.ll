Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_parser-4204840c537c9517.yara_x_parser.b6715538e8e8d337-cgu.03?download=true
inline.NumInlined: 170
inline.NumDeleted: 29
begin_hunk_0_@_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast10ascii_tree18pattern_ascii_tree:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser.exit72 unwind label %bb.o

bb.o:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser.exit72: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15
  %i.bp = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 145) 48, i64 noundef 8) #15 ; 7 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.q, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit73, !prof !6

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser.exit72
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #16
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %.body75, %bb.s
  %.pn55 = phi { ptr, i32 } [ %eh.lpad-body76, %.body75 ], [ %i.br, %bb.s ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #14
          to label %common.resume unwind label %bb.m

bb.s:                                             ; preds = %bb.q
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit73: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser.exit72
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !70
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !69, !nonnull !5, !noundef !5 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !69, !noundef !5
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %i.bv
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCsdJkkaF0JZ31_10ascii_tree4TreeEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterNtNtCsfF8zpZz1lvn_13yara_x_parser3ast8HexTokenENCNvNtB3m_10ascii_tree21hex_tokens_ascii_tree0EE9from_iterB3o_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.bt, ptr noundef nonnull %i.bw)
          to label %.noexc74 unwind label %bb.y

.noexc74:                                         ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !70
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.u unwind label %bb.t, !noalias !70

bb.t:                                             ; preds = %bb.v, %.noexc74
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #14
          to label %.body75 unwind label %bb.x, !noalias !70

bb.u:                                             ; preds = %.noexc74
  %i.by = load i64, ptr %i.a, align 8, !range !7, !noalias !70, !noundef !5
  %i.bz = trunc nuw i64 %i.by to i1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !range !8, !noalias !70, !noundef !5 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.bz, label %bb.v, label %bb.z, !prof !6

bb.v:                                             ; preds = %bb.u
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !70
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.cb, i64 %i.cd) #16
          to label %bb.w unwind label %bb.t, !noalias !70

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.t
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13, !noalias !70
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
  %i.cg = load ptr, ptr %i.cc, align 8, !noalias !70, !nonnull !5, !noundef !5 ; 2 uses
  %i.ch = icmp samesign ugt i64 %i.cb, 2
  call void @llvm.assume(i1 %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cg, ptr noundef nonnull align 1 dereferenceable(3) @93, i64 3, i1 false), !noalias !70
  %.sroa.6.0..sroa.088.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa.088.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !70
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
  %i.et = alloca [24 x i8], align 8               ; 5 uses
  %i.eu = alloca [16 x i8], align 8               ; 5 uses
  %i.ev = alloca [24 x i8], align 8               ; 4 uses
  %i.ew = alloca [24 x i8], align 8               ; 5 uses
  %i.ex = alloca [24 x i8], align 8               ; 7 uses
  %i.ey = alloca [24 x i8], align 8               ; 7 uses
  %i.ez = alloca [48 x i8], align 8               ; 8 uses
  %i.fa = alloca [16 x i8], align 8               ; 5 uses
  %i.fb = alloca [24 x i8], align 8               ; 4 uses
  %i.fc = alloca [24 x i8], align 8               ; 5 uses
  %i.fd = alloca [32 x i8], align 8               ; 8 uses
  %i.fe = alloca [16 x i8], align 8               ; 5 uses
  %i.ff = alloca [24 x i8], align 8               ; 4 uses
  %i.fg = alloca [24 x i8], align 8               ; 5 uses
  %i.fh = alloca [16 x i8], align 8               ; 5 uses
  %i.fi = alloca [24 x i8], align 8               ; 2 uses
  %i.fj = alloca [16 x i8], align 8               ; 5 uses
  %i.fk = alloca [24 x i8], align 8               ; 2 uses
  %i.fl = alloca [16 x i8], align 8               ; 5 uses
  %i.fm = alloca [24 x i8], align 8               ; 2 uses
  %i.fn = alloca [16 x i8], align 8               ; 5 uses
  %i.fo = alloca [24 x i8], align 8               ; 2 uses
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
  %i.fp = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 24)
          to label %bb.az unwind label %.thread203 ; 5 uses

bb.d:                                             ; preds = %bb.a
  %i.fq = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 24)
          to label %bb.bj unwind label %.thread203 ; 5 uses

bb.e:                                             ; preds = %bb.a
  %i.fr = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 24)
          to label %bb.bo unwind label %.thread203 ; 5 uses

bb.f:                                             ; preds = %bb.a
  %i.fs = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 24)
          to label %bb.bt unwind label %.thread203 ; 5 uses

bb.g:                                             ; preds = %bb.a
  %i.ft = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 24)
          to label %bb.by unwind label %.thread203 ; 5 uses

bb.h:                                             ; preds = %bb.a
  %i.fu = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 24)
          to label %bb.cf unwind label %.thread203 ; 5 uses

bb.i:                                             ; preds = %bb.a
  %i.fv = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 24)
          to label %bb.cm unwind label %.thread203 ; 5 uses

bb.j:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.fw = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.fx = load i8, ptr %i.fw, align 8, !range !13, !noundef !5
  %i.fy = trunc nuw i8 %i.fx to i1
  %i.fz = getelementptr inbounds nuw i8, ptr %.8.val, i64 41
  %i.ga = load i8, ptr %i.fz, align 1, !range !13, !noundef !5
  %i.gb = trunc nuw i8 %i.ga to i1                ; 2 uses
  br i1 %i.fy, label %bb.cu, label %bb.ct

bb.k:                                             ; preds = %bb.a
  %i.gc = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 24)
          to label %bb.dh unwind label %.thread203 ; 5 uses

bb.l:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.gd = load i64, ptr %.8.val, align 8, !range !12, !noundef !5
  switch i64 %i.gd, label %bb.dp [
    i64 2, label %bb.do
    i64 0, label %bb.dq
  ]

bb.m:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.ge = load i32, ptr %.8.val, align 8, !range !117, !noundef !5
  %.not752 = icmp eq i32 %i.ge, -1
  br i1 %.not752, label %bb.fe, label %bb.ff

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq)
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.gh = load i64, ptr %1, align 8, !range !10, !noundef !5
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gj = load i64, ptr %i.gi, align 8, !noundef !5 ; 2 uses
  %i.gk = icmp ult i64 %i.gj, 192153584101141163
  tail call void @llvm.assume(i1 %i.gk)
  %i.gl = getelementptr inbounds nuw [48 x i8], ptr %i.gg, i64 %i.gj
  store ptr %i.gg, ptr %i.eq, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store i64 %i.gh, ptr %i.gm, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 5 uses
  store ptr %i.gg, ptr %i.gn, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.eq, i64 24 ; 3 uses
  store ptr %i.gl, ptr %i.go, align 8
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
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.gr = load i64, ptr %1, align 8, !range !10, !noundef !5
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !noundef !5 ; 2 uses
  %i.gu = icmp ult i64 %i.gt, 192153584101141163
  tail call void @llvm.assume(i1 %i.gu)
  %i.gv = getelementptr inbounds nuw [48 x i8], ptr %i.gq, i64 %i.gt
  store ptr %i.gq, ptr %i.el, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store i64 %i.gr, ptr %i.gw, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 5 uses
  store ptr %i.gq, ptr %i.gx, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.el, i64 24 ; 3 uses
  store ptr %i.gv, ptr %i.gy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek)
  store i64 0, ptr %i.ek, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.gz, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 3 uses
  store i64 0, ptr %i.ha, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.hb = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.hc = load i32, ptr %i.hb, align 8, !range !117, !noundef !5
  %.not721 = icmp eq i32 %i.hc, -1
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
          to label %bb.iz unwind label %.thread203

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ay, i64 noundef 5, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.jc unwind label %.thread203

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.az, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.jf unwind label %.thread203

bb.w:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ba, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ji unwind label %.thread203

bb.x:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bb, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.jl unwind label %.thread203

bb.y:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bc, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.jo unwind label %.thread203

bb.z:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bd, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.jr unwind label %.thread203

bb.aa:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bg, i64 noundef 11, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ju unwind label %.thread203

bb.ab:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.be, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.jx unwind label %.thread203

bb.ac:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bf, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ka unwind label %.thread203

bb.ad:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bh, i64 noundef 11, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.kd unwind label %.thread203

bb.ae:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bi, i64 noundef 10, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.kg unwind label %.thread203

bb.af:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bj, i64 noundef 11, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.kj unwind label %.thread203

bb.ag:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bk, i64 noundef 2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.km unwind label %.thread203

bb.ah:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bl, i64 noundef 2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.kp unwind label %.thread203

bb.ai:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bm, i64 noundef 2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ks unwind label %.thread203

bb.aj:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bo, i64 noundef 2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.kv unwind label %.thread203

bb.ak:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bn, i64 noundef 2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ky unwind label %.thread203

bb.al:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bp, i64 noundef 2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.lb unwind label %.thread203

bb.am:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bq, i64 noundef 8, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.le unwind label %.thread203

bb.an:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.br, i64 noundef 9, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.lh unwind label %.thread203

bb.ao:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bs, i64 noundef 10, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.lk unwind label %.thread203

bb.ap:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bt, i64 noundef 11, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ln unwind label %.thread203

bb.aq:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bu, i64 noundef 8, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.lq unwind label %.thread203

bb.ar:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bv, i64 noundef 9, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.lt unwind label %.thread203

bb.as:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bw, i64 noundef 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.lw unwind label %.thread203

bb.at:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bx, i64 noundef 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.lz unwind label %.thread203

bb.au:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.hf = load i64, ptr %1, align 8, !range !10, !noundef !5
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hh = load i64, ptr %i.hg, align 8, !noundef !5 ; 2 uses
  %i.hi = icmp ult i64 %i.hh, 192153584101141163
  tail call void @llvm.assume(i1 %i.hi)
  %i.hj = getelementptr inbounds nuw [48 x i8], ptr %i.he, i64 %i.hh
  store ptr %i.he, ptr %i.ea, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store i64 %i.hf, ptr %i.hk, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 7 uses
  store ptr %i.he, ptr %i.hl, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ea, i64 24 ; 4 uses
  store ptr %i.hj, ptr %i.hm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.hn = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %.val819 = load i32, ptr %i.hn, align 8, !range !118, !noundef !5
  invoke fastcc void @_RINvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast10ascii_tree21quantifier_ascii_treeQINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEEB6_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.dz, i32 %.val819, ptr noalias nofree noundef align 8 dereferenceable(32) %i.ea)
          to label %bb.me unwind label %bb.md

bb.av:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.hq = load i64, ptr %1, align 8, !range !10, !noundef !5
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hs = load i64, ptr %i.hr, align 8, !noundef !5 ; 2 uses
  %i.ht = icmp ult i64 %i.hs, 192153584101141163
  tail call void @llvm.assume(i1 %i.ht)
  %i.hu = getelementptr inbounds nuw [48 x i8], ptr %i.hp, i64 %i.hs
  store ptr %i.hp, ptr %i.dl, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store i64 %i.hq, ptr %i.hv, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 3 uses
  store ptr %i.hp, ptr %i.hw, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.dl, i64 24 ; 2 uses
  store ptr %i.hu, ptr %i.hx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, i64 noundef 45, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ox unwind label %bb.ow

bb.aw:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc)
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.ia = load i64, ptr %1, align 8, !range !10, !noundef !5
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ic = load i64, ptr %i.ib, align 8, !noundef !5 ; 2 uses
  %i.id = icmp ult i64 %i.ic, 192153584101141163
  tail call void @llvm.assume(i1 %i.id)
  %i.ie = getelementptr inbounds nuw [48 x i8], ptr %i.hz, i64 %i.ic
  store ptr %i.hz, ptr %i.dc, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store i64 %i.ia, ptr %i.if, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 11 uses
  store ptr %i.hz, ptr %i.ig, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.dc, i64 24 ; 6 uses
  store ptr %i.ie, ptr %i.ih, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15
  %i.ii = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 145) 96, i64 noundef 8) #15 ; 8 uses
  %i.ij = icmp eq ptr %i.ii, null
  br i1 %i.ij, label %bb.ax, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !6

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #16
          to label %.noexc unwind label %bb.qh

.noexc:                                           ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.im = load i64, ptr %1, align 8, !range !10, !noundef !5
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.io = load i64, ptr %i.in, align 8, !noundef !5 ; 2 uses
  %i.ip = icmp ult i64 %i.io, 192153584101141163
  tail call void @llvm.assume(i1 %i.ip)
  %i.iq = getelementptr inbounds nuw [48 x i8], ptr %i.il, i64 %i.io
  store ptr %i.il, ptr %i.cf, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i64 %i.im, ptr %i.ir, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 3 uses
  store ptr %i.il, ptr %i.is, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.cf, i64 24 ; 2 uses
  store ptr %i.iq, ptr %i.it, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 45, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.tp unwind label %bb.to

.thread203:                                       ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.k, %bb.cv, %bb.cw, %bb.db, %bb.dc, %bb.do, %bb.fe, %bb.fv, %.invoke, %bb.dq, %bb.ff, %bb.fw, %bb.o, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.az:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.at, i64 noundef 4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bb unwind label %bb.ba

bb.ba:                                            ; preds = %bb.bc, %bb.az
  %i.iu = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fp, i64 noundef 24, i64 noundef 8) #15
  br label %.thread

bb.bb:                                            ; preds = %bb.az
  %i.iv = load i64, ptr %i.at, align 8, !range !7, !noundef !5
  %i.iw = trunc nuw i64 %i.iv to i1
  %i.ix = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.iy = load i64, ptr %i.ix, align 8, !range !8, !noundef !5 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  br i1 %i.iw, label %bb.bc, label %bb.bd, !prof !6

bb.bc:                                            ; preds = %bb.bb
  %i.ja = load i64, ptr %i.iz, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.iy, i64 %i.ja) #16
          to label %bb.bh unwind label %bb.ba

bb.bd:                                            ; preds = %bb.bb
  %i.jb = load ptr, ptr %i.iz, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.jc = icmp samesign ugt i64 %i.iy, 3
  tail call void @llvm.assume(i1 %i.jc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  store i32 1702195828, ptr %i.jb, align 1
  store i64 %i.iy, ptr %i.fp, align 8
  %.sroa.4363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store ptr %i.jb, ptr %.sroa.4363.0..sroa_idx, align 8
  %.sroa.5364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store i64 4, ptr %.sroa.5364.0..sroa_idx, align 8
  br label %bb.be

bb.be:                                            ; preds = %bb.gc, %bb.fl, %bb.fc, %bb.dm, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit851, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit849, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit847, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit, %bb.cr, %bb.ck, %bb.cd, %bb.bx, %bb.bs, %bb.bn, %bb.bd
  %.sink = phi ptr [ %i.qr, %bb.gc ], [ %i.pp, %bb.fl ], [ %i.mr, %bb.fc ], [ %i.gc, %bb.dm ], [ %i.ma, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit851 ], [ %i.lz, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit849 ], [ %i.lu, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit847 ], [ %i.lt, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfF8zpZz1lvn_13yara_x_parser.exit ], [ %i.fv, %bb.cr ], [ %i.fu, %bb.ck ], [ %i.ft, %bb.cd ], [ %i.fs, %bb.bx ], [ %i.fr, %bb.bs ], [ %i.fq, %bb.bn ], [ %i.fp, %bb.bd ]
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.jd, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink, ptr %.sroa.465.0..sroa_idx, align 8
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.566.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser.exit unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.je = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

common.resume:                                    ; preds = %.thread, %bb.dz, %bb.gl, %bb.ip, %bb.mc, %bb.ov, %bb.qg, %bb.tn, %bb.bf
  %common.resume.op = phi { ptr, i32 } [ %i.je, %bb.bf ], [ %.pn776196, %.thread ], [ %.pn652, %bb.tn ], [ %.pn768.pn.pn, %bb.dz ], [ %.pn746, %bb.gl ], [ %.pn684.pn, %bb.qg ], [ %.pn701, %bb.ov ], [ %.pn717.pn.pn, %bb.mc ], [ %.pn733218, %bb.ip ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser.exit: ; preds = %bb.be
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.dy

bb.bh:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit920.thread, %bb.uf, %bb.ty, %bb.tq, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit915.thread, %bb.tg, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit914.thread, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit910.thread, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit900.thread, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit899.thread, %bb.qv, %bb.ql, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit894.thread, %bb.qa, %bb.pq, %bb.pg, %bb.oy, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit891.thread, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit890.thread, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit887.thread, %bb.mk, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit882.thread, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit872.thread, %bb.ht, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit869.thread, %bb.hg, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit868.thread, %bb.gw, %bb.go, %bb.gj, %bb.ga, %bb.fs, %bb.fj, %bb.fa, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit857.thread, %bb.er, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit.thread, %bb.eh, %bb.dw, %bb.dk, %bb.cp, %bb.ci, %bb.cb, %bb.bw, %bb.br, %bb.bm, %bb.bc
  unreachable

bb.bi:                                            ; preds = %bb.tn, %.body911, %bb.qg, %bb.ov, %bb.mc, %bb.ip, %.body, %bb.gl, %bb.dz, %.thread, %bb.uh, %bb.uc, %bb.ua, %bb.ts, %bb.ti, %bb.td, %bb.su, %bb.sq, %bb.si, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECsfF8zpZz1lvn_13yara_x_parser.exit903, %bb.rr, %bb.ri, %.thread250, %bb.qx, %bb.qs, %bb.qn, %bb.qc, %bb.px, %bb.ps, %bb.pn, %bb.pi, %bb.pa, %bb.ou, %bb.oi, %bb.nz, %bb.nn, %bb.ne, %bb.mv, %bb.mq, %bb.mm, %.thread215, %bb.io, %bb.ig, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECsfF8zpZz1lvn_13yara_x_parser.exit, %bb.hv, %bb.hi, %bb.hd, %bb.gy, %bb.gq, %bb.gf, %bb.fn, %bb.et, %bb.eo, %bb.ej, %bb.eb, %bb.dr
  %i.jg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.bj:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.as, i64 noundef 5, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bl unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bm, %bb.bj
  %i.jh = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fq, i64 noundef 24, i64 noundef 8) #15
  br label %.thread

bb.bl:                                            ; preds = %bb.bj
  %i.ji = load i64, ptr %i.as, align 8, !range !7, !noundef !5
  %i.jj = trunc nuw i64 %i.ji to i1
  %i.jk = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.jl = load i64, ptr %i.jk, align 8, !range !8, !noundef !5 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  br i1 %i.jj, label %bb.bm, label %bb.bn, !prof !6

bb.bm:                                            ; preds = %bb.bl
  %i.jn = load i64, ptr %i.jm, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.jl, i64 %i.jn) #16
          to label %bb.bh unwind label %bb.bk

bb.bn:                                            ; preds = %bb.bl
  %i.jo = load ptr, ptr %i.jm, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.jp = icmp samesign ugt i64 %i.jl, 4
  tail call void @llvm.assume(i1 %i.jp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.jo, ptr noundef nonnull align 1 dereferenceable(5) @21, i64 5, i1 false)
  store i64 %i.jl, ptr %i.fq, align 8
  %.sroa.4369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store ptr %i.jo, ptr %.sroa.4369.0..sroa_idx, align 8
  %.sroa.5370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store i64 5, ptr %.sroa.5370.0..sroa_idx, align 8
  br label %bb.be

bb.bo:                                            ; preds = %bb.e
end_hunk_0
begin_hunk_1_@_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast10ascii_tree19build_tree_for_expr:bb.a
  %i.akg = load ptr, ptr %i.hm, align 8, !alias.scope !131, !nonnull !5, !noundef !5
  %i.akh = load ptr, ptr %i.hl, align 8, !alias.scope !131, !nonnull !5, !noundef !5 ; 4 uses
  %i.aki = icmp eq ptr %i.akh, %i.akg
  br i1 %i.aki, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit891.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit891

bb.ol:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit891.thread
  %i.akj = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ake, i64 noundef 48, i64 noundef 8) #15
  br label %bb.oi

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit891: ; preds = %bb.ok
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akh, i64 48
  store ptr %i.akk, ptr %i.hl, align 8, !alias.scope !131
  %.sroa.0118.0.copyload119 = load i64, ptr %i.akh, align 8, !noalias !131 ; 2 uses
  %.not712 = icmp eq i64 %.sroa.0118.0.copyload119, -2
  br i1 %.not712, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit891.thread, label %bb.om, !prof !9

bb.om:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit891
  %.sroa.6120.0..sroa_idx121 = getelementptr inbounds nuw i8, ptr %i.akh, i64 8
  %.sroa.4123.0..sroa.0117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ake, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4123.0..sroa.0117.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6120.0..sroa_idx121, i64 40, i1 false)
  store i64 %.sroa.0118.0.copyload119, ptr %i.ake, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 24, i1 false)
  %i.akl = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  store i64 1, ptr %i.akl, align 8
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  store ptr %i.ake, ptr %.sroa.4107.0..sroa_idx, align 8
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
  %i.akm = load i64, ptr %i.r, align 8, !range !7, !noundef !5
  %i.akn = trunc nuw i64 %i.akm to i1
  %i.ako = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.akp = load i64, ptr %i.ako, align 8, !range !8, !noundef !5 ; 3 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  br i1 %i.akn, label %bb.op, label %bb.oq, !prof !6

bb.op:                                            ; preds = %bb.oo
  %i.akr = load i64, ptr %i.akq, align 8
  br label %.invoke309

bb.oq:                                            ; preds = %bb.oo
  %i.aks = load ptr, ptr %i.akq, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.akt = icmp samesign ugt i64 %i.akp, 42
  call void @llvm.assume(i1 %i.akt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(43) %i.aks, ptr noundef nonnull align 1 dereferenceable(43) @74, i64 43, i1 false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser.exit889

bb.or:                                            ; preds = %bb.nh
  %i.aku = load i64, ptr %i.q, align 8, !range !7, !noundef !5
  %i.akv = trunc nuw i64 %i.aku to i1
  %i.akw = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.akx = load i64, ptr %i.akw, align 8, !range !8, !noundef !5 ; 3 uses
  %i.aky = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  br i1 %i.akv, label %bb.os, label %bb.ot, !prof !6

bb.os:                                            ; preds = %bb.or
  %i.akz = load i64, ptr %i.aky, align 8
  br label %.invoke309

.invoke309:                                       ; preds = %bb.mt, %bb.nc, %bb.nl, %bb.nu, %bb.nx, %bb.og, %bb.op, %bb.os
  %i.ala = phi i64 [ %i.akx, %bb.os ], [ %i.akp, %bb.op ], [ %i.ajz, %bb.og ], [ %i.ajj, %bb.nx ], [ %i.aja, %bb.nu ], [ %i.aik, %bb.nl ], [ %i.ahv, %bb.nc ], [ %i.ahj, %bb.mt ]
  %i.alb = phi i64 [ %i.akz, %bb.os ], [ %i.akr, %bb.op ], [ %i.akb, %bb.og ], [ %i.ajl, %bb.nx ], [ %i.ajc, %bb.nu ], [ %i.aim, %bb.nl ], [ %i.ahx, %bb.nc ], [ %i.ahl, %bb.mt ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ala, i64 %i.alb) #16
          to label %.cont310 unwind label %bb.mr

.cont310:                                         ; preds = %.invoke309
  unreachable

bb.ot:                                            ; preds = %bb.or
  %i.alc = load ptr, ptr %i.aky, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ald = icmp samesign ugt i64 %i.akx, 22
  call void @llvm.assume(i1 %i.ald)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.alc, ptr noundef nonnull align 1 dereferenceable(23) @75, i64 23, i1 false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser.exit889

bb.ou:                                            ; preds = %bb.mh, %bb.mf
  %.pn717.pn.ph = phi { ptr, i32 } [ %i.ago, %bb.mf ], [ %.pn717, %bb.mh ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdJkkaF0JZ31_10ascii_tree4TreeECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(48) %i.dz) #14
          to label %bb.mc unwind label %bb.bi

bb.ov:                                            ; preds = %bb.pa, %bb.ow
  %.pn701 = phi { ptr, i32 } [ %i.ale, %bb.ow ], [ %.pn698.pn, %bb.pa ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dl)
          to label %common.resume unwind label %bb.bi

bb.ow:                                            ; preds = %bb.oy, %bb.av
  %i.ale = landingpad { ptr, i32 }
          cleanup
  br label %bb.ov

bb.ox:                                            ; preds = %bb.av
  %i.alf = load i64, ptr %i.p, align 8, !range !7, !noundef !5
  %i.alg = trunc nuw i64 %i.alf to i1
  %i.alh = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ali = load i64, ptr %i.alh, align 8, !range !8, !noundef !5 ; 3 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  br i1 %i.alg, label %bb.oy, label %bb.oz, !prof !6

bb.oy:                                            ; preds = %bb.ox
  %i.alk = load i64, ptr %i.alj, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ali, i64 %i.alk) #16
          to label %bb.bh unwind label %bb.ow

bb.oz:                                            ; preds = %bb.ox
  %i.all = load ptr, ptr %i.alj, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.alm = icmp samesign ugt i64 %i.ali, 44
  tail call void @llvm.assume(i1 %i.alm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %i.all, ptr noundef nonnull align 1 dereferenceable(45) @76, i64 45, i1 false)
  store i64 %i.ali, ptr %i.dk, align 8
  %.sroa.4571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.all, ptr %.sroa.4571.0..sroa_idx, align 8
  %.sroa.6572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store i64 45, ptr %.sroa.6572.0..sroa_idx, align 8
  %i.aln = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 144)
          to label %bb.pc unwind label %bb.pb     ; 8 uses

bb.pa:                                            ; preds = %bb.pd, %bb.pb
  %.pn698.pn = phi { ptr, i32 } [ %.pn698, %bb.pd ], [ %i.alo, %bb.pb ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dk) #14
          to label %bb.ov unwind label %bb.bi

bb.pb:                                            ; preds = %bb.oz
  %i.alo = landingpad { ptr, i32 }
          cleanup
  br label %bb.pa

bb.pc:                                            ; preds = %bb.oz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, i64 noundef 12, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.pf unwind label %bb.pe

bb.pd:                                            ; preds = %bb.pn, %bb.pi, %bb.pe
  %.pn698 = phi { ptr, i32 } [ %i.alp, %bb.pe ], [ %.pn696, %bb.pn ], [ %.pn687, %bb.pi ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aln, i64 noundef 144, i64 noundef 8) #15
  br label %bb.pa

bb.pe:                                            ; preds = %bb.pg, %bb.pc
  %i.alp = landingpad { ptr, i32 }
          cleanup
  br label %bb.pd

bb.pf:                                            ; preds = %bb.pc
  %i.alq = load i64, ptr %i.o, align 8, !range !7, !noundef !5
  %i.alr = trunc nuw i64 %i.alq to i1
  %i.als = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.alt = load i64, ptr %i.als, align 8, !range !8, !noundef !5 ; 3 uses
  %i.alu = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  br i1 %i.alr, label %bb.pg, label %bb.ph, !prof !6

bb.pg:                                            ; preds = %bb.pf
  %i.alv = load i64, ptr %i.alu, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.alt, i64 %i.alv) #16
          to label %bb.bh unwind label %bb.pe

bb.ph:                                            ; preds = %bb.pf
  %i.alw = load ptr, ptr %i.alu, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.alx = icmp samesign ugt i64 %i.alt, 11
  tail call void @llvm.assume(i1 %i.alx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.alw, ptr noundef nonnull align 1 dereferenceable(12) @67, i64 12, i1 false)
  store i64 %i.alt, ptr %i.di, align 8
  %.sroa.4574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr %i.alw, ptr %.sroa.4574.0..sroa_idx, align 8
  %.sroa.6575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store i64 12, ptr %.sroa.6575.0..sroa_idx, align 8
  %i.aly = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 48)
          to label %bb.pk unwind label %bb.pj     ; 3 uses

bb.pi:                                            ; preds = %bb.pl, %bb.pj
  %.pn687 = phi { ptr, i32 } [ %i.amb, %bb.pl ], [ %i.alz, %bb.pj ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.di) #14
          to label %bb.pd unwind label %bb.bi

bb.pj:                                            ; preds = %bb.ph
  %i.alz = landingpad { ptr, i32 }
          cleanup
  br label %bb.pi

bb.pk:                                            ; preds = %bb.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.ama = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %.val818 = load i32, ptr %i.ama, align 8, !range !118, !noundef !5
  invoke fastcc void @_RINvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast10ascii_tree21quantifier_ascii_treeQINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEEB6_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.dh, i32 %.val818, ptr noalias nofree noundef align 8 dereferenceable(32) %i.dl)
          to label %bb.pm unwind label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  %i.amb = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aly, i64 noundef 48, i64 noundef 8) #15
  br label %bb.pi

bb.pm:                                            ; preds = %bb.pk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aly, ptr noundef nonnull align 8 dereferenceable(48) %i.dh, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, ptr noundef nonnull align 8 dereferenceable(24) %i.di, i64 24, i1 false)
  %i.amc = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  store i64 1, ptr %i.amc, align 8
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  store ptr %i.aly, ptr %.sroa.4113.0..sroa_idx, align 8
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  store i64 1, ptr %.sroa.5114.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, i64 noundef 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.pp unwind label %bb.po

bb.pn:                                            ; preds = %bb.px, %bb.ps, %bb.po
  %.pn696 = phi { ptr, i32 } [ %i.amd, %bb.po ], [ %.pn694, %bb.px ], [ %.pn689, %bb.ps ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdJkkaF0JZ31_10ascii_tree4TreeECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(48) %i.dj) #14
          to label %bb.pd unwind label %bb.bi

bb.po:                                            ; preds = %bb.pq, %bb.pm
  %i.amd = landingpad { ptr, i32 }
          cleanup
  br label %bb.pn

bb.pp:                                            ; preds = %bb.pm
  %i.ame = load i64, ptr %i.n, align 8, !range !7, !noundef !5
  %i.amf = trunc nuw i64 %i.ame to i1
  %i.amg = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.amh = load i64, ptr %i.amg, align 8, !range !8, !noundef !5 ; 3 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  br i1 %i.amf, label %bb.pq, label %bb.pr, !prof !6

bb.pq:                                            ; preds = %bb.pp
  %i.amj = load i64, ptr %i.ami, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.amh, i64 %i.amj) #16
          to label %bb.bh unwind label %bb.po

bb.pr:                                            ; preds = %bb.pp
  %i.amk = load ptr, ptr %i.ami, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aml = icmp samesign ugt i64 %i.amh, 6
  tail call void @llvm.assume(i1 %i.aml)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.amk, ptr noundef nonnull align 1 dereferenceable(7) @77, i64 7, i1 false)
  store i64 %i.amh, ptr %i.df, align 8
  %.sroa.4577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr %i.amk, ptr %.sroa.4577.0..sroa_idx, align 8
  %.sroa.6578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store i64 7, ptr %.sroa.6578.0..sroa_idx, align 8
  %i.amm = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 48)
          to label %bb.pu unwind label %bb.pt     ; 3 uses

bb.ps:                                            ; preds = %bb.pv, %bb.pt
  %.pn689 = phi { ptr, i32 } [ %i.amo, %bb.pv ], [ %i.amn, %bb.pt ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.df) #14
          to label %bb.pn unwind label %bb.bi

bb.pt:                                            ; preds = %bb.pr
  %i.amn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ps

bb.pu:                                            ; preds = %bb.pr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de)
  invoke fastcc void @_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast10ascii_tree22pattern_set_ascii_tree(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.de, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.8.val)
          to label %bb.pw unwind label %bb.pv

bb.pv:                                            ; preds = %bb.pu
  %i.amo = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.amm, i64 noundef 48, i64 noundef 8) #15
  br label %bb.ps

bb.pw:                                            ; preds = %bb.pu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.amm, ptr noundef nonnull align 8 dereferenceable(48) %i.de, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 24, i1 false)
  %i.amp = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store i64 1, ptr %i.amp, align 8
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  store ptr %i.amm, ptr %.sroa.4116.0..sroa_idx, align 8
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  store i64 1, ptr %.sroa.5117.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef 11, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.pz unwind label %bb.py

bb.px:                                            ; preds = %bb.qc, %bb.py
  %.pn694 = phi { ptr, i32 } [ %i.amq, %bb.py ], [ %.pn692, %bb.qc ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdJkkaF0JZ31_10ascii_tree4TreeECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(48) %i.dg) #14
          to label %bb.pn unwind label %bb.bi

bb.py:                                            ; preds = %bb.qa, %bb.pw
  %i.amq = landingpad { ptr, i32 }
          cleanup
  br label %bb.px

bb.pz:                                            ; preds = %bb.pw
  %i.amr = load i64, ptr %i.m, align 8, !range !7, !noundef !5
  %i.ams = trunc nuw i64 %i.amr to i1
  %i.amt = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.amu = load i64, ptr %i.amt, align 8, !range !8, !noundef !5 ; 3 uses
  %i.amv = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.ams, label %bb.qa, label %bb.qb, !prof !6

bb.qa:                                            ; preds = %bb.pz
  %i.amw = load i64, ptr %i.amv, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.amu, i64 %i.amw) #16
          to label %bb.bh unwind label %bb.py

bb.qb:                                            ; preds = %bb.pz
  %i.amx = load ptr, ptr %i.amv, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.amy = icmp samesign ugt i64 %i.amu, 10
  tail call void @llvm.assume(i1 %i.amy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.amx, ptr noundef nonnull align 1 dereferenceable(11) @78, i64 11, i1 false)
  store i64 %i.amu, ptr %i.dd, align 8
  %.sroa.4580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %i.amx, ptr %.sroa.4580.0..sroa_idx, align 8
  %.sroa.6581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store i64 11, ptr %.sroa.6581.0..sroa_idx, align 8
  %i.amz = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 48)
          to label %bb.qe unwind label %bb.qd     ; 4 uses

bb.qc:                                            ; preds = %bb.qf, %bb.qd
  %.pn692 = phi { ptr, i32 } [ %i.ane, %bb.qf ], [ %i.ana, %bb.qd ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dd) #14
          to label %bb.px unwind label %bb.bi

bb.qd:                                            ; preds = %bb.qb
  %i.ana = landingpad { ptr, i32 }
          cleanup
  br label %bb.qc

bb.qe:                                            ; preds = %bb.qb
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.anb = load ptr, ptr %i.hx, align 8, !alias.scope !132, !nonnull !5, !noundef !5
  %i.anc = load ptr, ptr %i.hw, align 8, !alias.scope !132, !nonnull !5, !noundef !5 ; 4 uses
  %i.and = icmp eq ptr %i.anc, %i.anb
  br i1 %i.and, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit894.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit894

bb.qf:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit894.thread
  %i.ane = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.amz, i64 noundef 48, i64 noundef 8) #15
  br label %bb.qc

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit894: ; preds = %bb.qe
  %i.anf = getelementptr inbounds nuw i8, ptr %i.anc, i64 48
  store ptr %i.anf, ptr %i.hw, align 8, !alias.scope !132
  %.sroa.0129.0.copyload130 = load i64, ptr %i.anc, align 8, !noalias !132 ; 2 uses
  %.not691 = icmp eq i64 %.sroa.0129.0.copyload130, -2
  br i1 %.not691, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit894.thread, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser.exit896, !prof !9

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser.exit896: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit894
  %.sroa.6131.0..sroa_idx132 = getelementptr inbounds nuw i8, ptr %i.anc, i64 8
  %.sroa.4134.0..sroa.0128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amz, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4134.0..sroa.0128.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6131.0..sroa_idx132, i64 40, i1 false)
  store i64 %.sroa.0129.0.copyload130, ptr %i.amz, align 8
  %i.ang = getelementptr inbounds nuw i8, ptr %i.aln, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ang, ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aln, ptr noundef nonnull align 8 dereferenceable(48) %i.dj, i64 48, i1 false)
  %i.anh = getelementptr inbounds nuw i8, ptr %i.aln, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.anh, ptr noundef nonnull align 8 dereferenceable(48) %i.dg, i64 48, i1 false)
  %.sroa.4122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aln, i64 120
  store i64 1, ptr %.sroa.4122.0..sroa_idx, align 8
  %.sroa.5123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aln, i64 128
  store ptr %i.amz, ptr %.sroa.5123.0..sroa_idx, align 8
  %.sroa.6124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aln, i64 136
  store i64 1, ptr %.sroa.6124.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 24, i1 false)
  %i.ani = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 3, ptr %i.ani, align 8
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.aln, ptr %.sroa.4110.0..sroa_idx, align 8
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
  %.pn684.pn = phi { ptr, i32 } [ %.pn684, %bb.qi ], [ %.pn680, %.thread250 ], [ %i.anj, %bb.qh ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dc)
          to label %common.resume unwind label %bb.bi

bb.qh:                                            ; preds = %bb.ax
  %i.anj = landingpad { ptr, i32 }
          cleanup
  br label %bb.qg

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef 12, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.qk unwind label %bb.qj

bb.qi:                                            ; preds = %bb.qs, %bb.qn, %bb.qj
  %.pn684 = phi { ptr, i32 } [ %i.ank, %bb.qj ], [ %.pn682, %bb.qs ], [ %.pn654, %bb.qn ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ii, i64 noundef 96, i64 noundef 8) #15
  br label %bb.qg

bb.qj:                                            ; preds = %bb.ql, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.ank = landingpad { ptr, i32 }
          cleanup
  br label %bb.qi

bb.qk:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.anl = load i64, ptr %i.l, align 8, !range !7, !noundef !5
  %i.anm = trunc nuw i64 %i.anl to i1
  %i.ann = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ano = load i64, ptr %i.ann, align 8, !range !8, !noundef !5 ; 3 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  br i1 %i.anm, label %bb.ql, label %bb.qm, !prof !6

bb.ql:                                            ; preds = %bb.qk
  %i.anq = load i64, ptr %i.anp, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ano, i64 %i.anq) #16
          to label %bb.bh unwind label %bb.qj

bb.qm:                                            ; preds = %bb.qk
  %i.anr = load ptr, ptr %i.anp, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ans = icmp samesign ugt i64 %i.ano, 11
  tail call void @llvm.assume(i1 %i.ans)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.anr, ptr noundef nonnull align 1 dereferenceable(12) @67, i64 12, i1 false)
  store i64 %i.ano, ptr %i.cz, align 8
  %.sroa.4583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.anr, ptr %.sroa.4583.0..sroa_idx, align 8
  %.sroa.6584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i64 12, ptr %.sroa.6584.0..sroa_idx, align 8
  %i.ant = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 48)
          to label %bb.qp unwind label %bb.qo     ; 3 uses

bb.qn:                                            ; preds = %bb.qq, %bb.qo
  %.pn654 = phi { ptr, i32 } [ %i.anw, %bb.qq ], [ %i.anu, %bb.qo ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cz) #14
          to label %bb.qi unwind label %bb.bi

bb.qo:                                            ; preds = %bb.qm
  %i.anu = landingpad { ptr, i32 }
          cleanup
  br label %bb.qn

bb.qp:                                            ; preds = %bb.qm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.anv = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %.val817 = load i32, ptr %i.anv, align 8, !range !118, !noundef !5
  invoke fastcc void @_RINvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast10ascii_tree21quantifier_ascii_treeQINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEEB6_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.cy, i32 %.val817, ptr noalias nofree noundef align 8 dereferenceable(32) %i.dc)
          to label %bb.qr unwind label %bb.qq

bb.qq:                                            ; preds = %bb.qp
  %i.anw = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ant, i64 noundef 48, i64 noundef 8) #15
  br label %bb.qn

bb.qr:                                            ; preds = %bb.qp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ant, ptr noundef nonnull align 8 dereferenceable(48) %i.cy, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i64 24, i1 false)
  %i.anx = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  store i64 1, ptr %i.anx, align 8
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  store ptr %i.ant, ptr %.sroa.4126.0..sroa_idx, align 8
  %.sroa.5127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  store i64 1, ptr %.sroa.5127.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef 6, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.qu unwind label %bb.qt

bb.qs:                                            ; preds = %bb.qx, %bb.qt
  %.pn682 = phi { ptr, i32 } [ %i.any, %bb.qt ], [ %.pn656, %bb.qx ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdJkkaF0JZ31_10ascii_tree4TreeECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(48) %i.da) #14
          to label %bb.qi unwind label %bb.bi

bb.qt:                                            ; preds = %bb.qv, %bb.qr
  %i.any = landingpad { ptr, i32 }
          cleanup
  br label %bb.qs

bb.qu:                                            ; preds = %bb.qr
  %i.anz = load i64, ptr %i.k, align 8, !range !7, !noundef !5
  %i.aoa = trunc nuw i64 %i.anz to i1
  %i.aob = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.aoc = load i64, ptr %i.aob, align 8, !range !8, !noundef !5 ; 3 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br i1 %i.aoa, label %bb.qv, label %bb.qw, !prof !6

bb.qv:                                            ; preds = %bb.qu
  %i.aoe = load i64, ptr %i.aod, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.aoc, i64 %i.aoe) #16
          to label %bb.bh unwind label %bb.qt

bb.qw:                                            ; preds = %bb.qu
  %i.aof = load ptr, ptr %i.aod, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aog = icmp samesign ugt i64 %i.aoc, 5
  tail call void @llvm.assume(i1 %i.aog)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.aof, ptr noundef nonnull align 1 dereferenceable(6) @80, i64 6, i1 false)
  store i64 %i.aoc, ptr %i.cx, align 8
  %.sroa.4586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.aof, ptr %.sroa.4586.0..sroa_idx, align 8
  %.sroa.6587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i64 6, ptr %.sroa.6587.0..sroa_idx, align 8
  %i.aoh = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 48)
          to label %bb.qz unwind label %bb.qy     ; 4 uses

bb.qx:                                            ; preds = %bb.ra, %bb.qy
  %.pn656 = phi { ptr, i32 } [ %i.aoo, %bb.ra ], [ %i.aoi, %bb.qy ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cx) #14
          to label %bb.qs unwind label %bb.bi

bb.qy:                                            ; preds = %bb.qw
  %i.aoi = landingpad { ptr, i32 }
          cleanup
  br label %bb.qx

bb.qz:                                            ; preds = %bb.qw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  %i.aoj = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.aok = load ptr, ptr %i.aoj, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.aom = load i64, ptr %i.aol, align 8, !noundef !5
  %i.aon = getelementptr inbounds nuw [24 x i8], ptr %i.aok, i64 %i.aom
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterNtNtCsfF8zpZz1lvn_13yara_x_parser3ast5IdentENCNvNtB3a_10ascii_tree19build_tree_for_exprs0_0EE9from_iterB3c_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cw, ptr noundef nonnull %i.aok, ptr noundef nonnull %i.aon)
          to label %bb.rb unwind label %bb.ra

bb.ra:                                            ; preds = %bb.qz
  %i.aoo = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aoh, i64 noundef 48, i64 noundef 8) #15
  br label %bb.qx

bb.rb:                                            ; preds = %bb.qz
  %.sroa.4136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aoh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4136.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  store i64 -1, ptr %i.aoh, align 8
  %i.aop = getelementptr inbounds nuw i8, ptr %i.ii, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aop, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ii, ptr noundef nonnull align 8 dereferenceable(48) %i.da, i64 48, i1 false)
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ii, i64 72
  store i64 1, ptr %.sroa.4132.0..sroa_idx, align 8
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ii, i64 80
  store ptr %i.aoh, ptr %.sroa.5133.0..sroa_idx, align 8
  %.sroa.6134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ii, i64 88
  store i64 1, ptr %.sroa.6134.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  store i64 2, ptr %i.db, align 8
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  store ptr %i.ii, ptr %i.aoq, align 8
  %i.aor = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 3 uses
  store i64 2, ptr %i.aor, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  %i.aos = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.aot = load i32, ptr %i.aos, align 8, !range !133, !noundef !5 ; 2 uses
  %i.aou = icmp samesign ugt i32 %i.aot, 49
  %i.aov = zext nneg i32 %i.aot to i64
  %i.aow = add nsw i64 %i.aov, -49
  %i.aox = select i1 %i.aou, i64 %i.aow, i64 0
  switch i64 %i.aox, label %bb.b [
    i64 0, label %bb.rc
    i64 1, label %bb.rd
    i64 2, label %bb.re
  ]

bb.rc:                                            ; preds = %bb.rb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.rf unwind label %bb.sc

bb.rd:                                            ; preds = %bb.rb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  %i.aoy = getelementptr inbounds nuw i8, ptr %.8.val, i64 88
  %i.aoz = load i64, ptr %i.aoy, align 8, !noundef !5 ; 2 uses
  %i.apa = icmp ult i64 %i.aoz, 576460752303423488
  tail call void @llvm.assume(i1 %i.apa)
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB22_3ops5range5RangejENCNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast10ascii_tree19build_tree_for_exprs_0EE9from_iterB3i_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cq, i64 noundef 0, i64 noundef %i.aoz)
          to label %bb.sb unwind label %bb.sc

bb.re:                                            ; preds = %bb.rb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef 6, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.sr unwind label %bb.sc

.thread250:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECsfF8zpZz1lvn_13yara_x_parser.exit903, %bb.sc, %bb.td, %bb.su, %bb.sq, %bb.rr, %bb.ri
  %.pn680 = phi { ptr, i32 } [ %.pn665.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECsfF8zpZz1lvn_13yara_x_parser.exit903 ], [ %.pn678, %bb.td ], [ %.pn673, %bb.rr ], [ %.pn670, %bb.ri ], [ %i.arx, %bb.sq ], [ %i.aqv, %bb.sc ], [ %.pn659, %bb.su ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.db) #14
          to label %bb.qg unwind label %bb.bi

bb.rf:                                            ; preds = %bb.rc
  %i.apb = load i64, ptr %i.i, align 8, !range !7, !noundef !5
  %i.apc = trunc nuw i64 %i.apb to i1
  %i.apd = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ape = load i64, ptr %i.apd, align 8, !range !8, !noundef !5 ; 3 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br i1 %i.apc, label %bb.rg, label %bb.rh, !prof !6

bb.rg:                                            ; preds = %bb.rf
  %i.apg = load i64, ptr %i.apf, align 8
  br label %.invoke311

.invoke311:                                       ; preds = %bb.tb, %bb.ss, %bb.ry, %bb.rp, %bb.rg
  %i.aph = phi i64 [ %i.ape, %bb.rg ], [ %i.apw, %bb.rp ], [ %i.aqm, %bb.ry ], [ %i.asb, %bb.ss ], [ %i.asr, %bb.tb ]
  %i.api = phi i64 [ %i.apg, %bb.rg ], [ %i.apy, %bb.rp ], [ %i.aqo, %bb.ry ], [ %i.asd, %bb.ss ], [ %i.ast, %bb.tb ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.aph, i64 %i.api) #16
          to label %.cont312 unwind label %bb.sc

.cont312:                                         ; preds = %.invoke311
  unreachable

bb.rh:                                            ; preds = %bb.rf
  %i.apj = load ptr, ptr %i.apf, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.apk = icmp samesign ugt i64 %i.ape, 6
  tail call void @llvm.assume(i1 %i.apk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.apj, ptr noundef nonnull align 1 dereferenceable(7) @30, i64 7, i1 false)
  store i64 %i.ape, ptr %i.ct, align 8
  %.sroa.4592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %i.apj, ptr %.sroa.4592.0..sroa_idx, align 8
  %.sroa.6593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store i64 7, ptr %.sroa.6593.0..sroa_idx, align 8
  %i.apl = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 48)
          to label %bb.rk unwind label %bb.rj     ; 4 uses

bb.ri:                                            ; preds = %bb.rl, %bb.rj
  %.pn670 = phi { ptr, i32 } [ %i.apq, %bb.rl ], [ %i.apm, %bb.rj ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ct) #14
          to label %.thread250 unwind label %bb.bi

bb.rj:                                            ; preds = %bb.rh
  %i.apm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ri

bb.rk:                                            ; preds = %bb.rh
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
end_hunk_1
begin_hunk_2_@_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast10ascii_tree19build_tree_for_expr:bb.a
_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit914.thread: ; preds = %bb.sw, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit914
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #16
          to label %bb.bh unwind label %bb.sx

bb.sz:                                            ; preds = %bb.sy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef 51, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ta unwind label %bb.sc

bb.ta:                                            ; preds = %bb.sz
  %i.aso = load i64, ptr %i.e, align 8, !range !7, !noundef !5
  %i.asp = trunc nuw i64 %i.aso to i1
  %i.asq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.asr = load i64, ptr %i.asq, align 8, !range !8, !noundef !5 ; 3 uses
  %i.ass = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.asp, label %bb.tb, label %bb.tc, !prof !6

bb.tb:                                            ; preds = %bb.ta
  %i.ast = load i64, ptr %i.ass, align 8
  br label %.invoke311

bb.tc:                                            ; preds = %bb.ta
  %i.asu = load ptr, ptr %i.ass, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.asv = icmp samesign ugt i64 %i.asr, 50
  call void @llvm.assume(i1 %i.asv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.asu, ptr noundef nonnull align 1 dereferenceable(51) @87, i64 51, i1 false)
  store i64 %i.asr, ptr %i.cv, align 8
  %.sroa.4607.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %i.asu, ptr %.sroa.4607.0..sroa_idx, align 8
  %.sroa.6608.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i64 51, ptr %.sroa.6608.0..sroa_idx, align 8
  br label %bb.sa

bb.td:                                            ; preds = %bb.ti, %bb.te
  %.pn678 = phi { ptr, i32 } [ %i.asw, %bb.te ], [ %.pn676, %bb.ti ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cv) #14
          to label %.thread250 unwind label %bb.bi

bb.te:                                            ; preds = %bb.tm, %bb.tg, %bb.sa
  %i.asw = landingpad { ptr, i32 }
          cleanup
  br label %bb.td

bb.tf:                                            ; preds = %bb.sa
  %i.asx = load i64, ptr %i.d, align 8, !range !7, !noundef !5
  %i.asy = trunc nuw i64 %i.asx to i1
  %i.asz = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ata = load i64, ptr %i.asz, align 8, !range !8, !noundef !5 ; 3 uses
  %i.atb = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.asy, label %bb.tg, label %bb.th, !prof !6

bb.tg:                                            ; preds = %bb.tf
  %i.atc = load i64, ptr %i.atb, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ata, i64 %i.atc) #16
          to label %bb.bh unwind label %bb.te

bb.th:                                            ; preds = %bb.tf
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
          to label %bb.tk unwind label %bb.tj     ; 4 uses

bb.ti:                                            ; preds = %bb.tl, %bb.tj
  %.pn676 = phi { ptr, i32 } [ %i.atk, %bb.tl ], [ %i.atg, %bb.tj ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cg) #14
          to label %bb.td unwind label %bb.bi

bb.tj:                                            ; preds = %bb.th
  %i.atg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ti

bb.tk:                                            ; preds = %bb.th
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.ath = load ptr, ptr %i.ih, align 8, !alias.scope !142, !nonnull !5, !noundef !5
  %i.ati = load ptr, ptr %i.ig, align 8, !alias.scope !142, !nonnull !5, !noundef !5 ; 4 uses
  %i.atj = icmp eq ptr %i.ati, %i.ath
  br i1 %i.atj, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit915.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit915

bb.tl:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit915.thread
  %i.atk = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.atf, i64 noundef 48, i64 noundef 8) #15
  br label %bb.ti

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit915: ; preds = %bb.tk
  %i.atl = getelementptr inbounds nuw i8, ptr %i.ati, i64 48
  store ptr %i.atl, ptr %i.ig, align 8, !alias.scope !142
  %.sroa.0177.0.copyload178 = load i64, ptr %i.ati, align 8, !noalias !142 ; 2 uses
  %.not675 = icmp eq i64 %.sroa.0177.0.copyload178, -2
  br i1 %.not675, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit915.thread, label %bb.tm, !prof !9

bb.tm:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit915
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
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser.exit917 unwind label %bb.te

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit915.thread: ; preds = %bb.tk, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit915
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #16
          to label %bb.bh unwind label %bb.tl

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser.exit917: ; preds = %bb.tm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i64 24, i1 false)
  %i.atn = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.atn, ptr noundef nonnull align 8 dereferenceable(24) %i.db, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  br label %bb.dy

bb.tn:                                            ; preds = %bb.ts, %bb.to
  %.pn652 = phi { ptr, i32 } [ %i.ato, %bb.to ], [ %.pn649.pn, %bb.ts ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cf)
          to label %common.resume unwind label %bb.bi

bb.to:                                            ; preds = %bb.tq, %bb.ay
  %i.ato = landingpad { ptr, i32 }
          cleanup
  br label %bb.tn

bb.tp:                                            ; preds = %bb.ay
  %i.atp = load i64, ptr %i.c, align 8, !range !7, !noundef !5
  %i.atq = trunc nuw i64 %i.atp to i1
  %i.atr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ats = load i64, ptr %i.atr, align 8, !range !8, !noundef !5 ; 3 uses
  %i.att = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.atq, label %bb.tq, label %bb.tr, !prof !6

bb.tq:                                            ; preds = %bb.tp
  %i.atu = load i64, ptr %i.att, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ats, i64 %i.atu) #16
          to label %bb.bh unwind label %bb.to

bb.tr:                                            ; preds = %bb.tp
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
          to label %bb.tu unwind label %bb.tt     ; 7 uses

bb.ts:                                            ; preds = %bb.tv, %bb.tt
  %.pn649.pn = phi { ptr, i32 } [ %.pn649, %bb.tv ], [ %i.aty, %bb.tt ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ce) #14
          to label %bb.tn unwind label %bb.bi

bb.tt:                                            ; preds = %bb.tr
  %i.aty = landingpad { ptr, i32 }
          cleanup
  br label %bb.ts

bb.tu:                                            ; preds = %bb.tr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 13, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.tx unwind label %bb.tw

bb.tv:                                            ; preds = %bb.uc, %bb.ua, %bb.tw
  %.pn649 = phi { ptr, i32 } [ %i.atz, %bb.tw ], [ %.pn647, %bb.uc ], [ %i.auk, %bb.ua ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.atx, i64 noundef 96, i64 noundef 8) #15
  br label %bb.ts

bb.tw:                                            ; preds = %bb.ty, %bb.tu
  %i.atz = landingpad { ptr, i32 }
          cleanup
  br label %bb.tv

bb.tx:                                            ; preds = %bb.tu
  %i.aua = load i64, ptr %i.b, align 8, !range !7, !noundef !5
  %i.aub = trunc nuw i64 %i.aua to i1
  %2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %3 = load i64, ptr %2, align 8, !range !8, !noundef !5 ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.aub, label %bb.ty, label %bb.tz, !prof !6

bb.ty:                                            ; preds = %bb.tx
  %i.auc = load i64, ptr %4, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %3, i64 %i.auc) #16
          to label %bb.bh unwind label %bb.tw

bb.tz:                                            ; preds = %bb.tx
  %i.aud = load ptr, ptr %4, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aue = icmp samesign ugt i64 %3, 12
  tail call void @llvm.assume(i1 %i.aue)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.aud, ptr noundef nonnull align 1 dereferenceable(13) @90, i64 13, i1 false)
  store i64 %3, ptr %i.cc, align 8
  %.sroa.4616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %i.aud, ptr %.sroa.4616.0..sroa_idx, align 8
  %.sroa.6617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i64 13, ptr %.sroa.6617.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.auf = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.aug = load ptr, ptr %i.auf, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.aui = load i64, ptr %i.auh, align 8, !noundef !5
  %i.auj = getelementptr inbounds nuw [48 x i8], ptr %i.aug, i64 %i.aui
  store ptr null, ptr %i.ca, align 8
  %.sroa.5627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  store ptr null, ptr %.sroa.5627.0..sroa_idx, align 8
  %.sroa.7629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  store ptr %i.aug, ptr %.sroa.7629.0..sroa_idx, align 8
  %.sroa.7629.sroa.4.0..sroa.7629.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  store ptr %i.auj, ptr %.sroa.7629.sroa.4.0..sroa.7629.0..sroa_idx.sroa_idx, align 8
  %.sroa.7629.sroa.5.0..sroa.7629.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 80
  store ptr %i.cf, ptr %.sroa.7629.sroa.5.0..sroa.7629.0..sroa_idx.sroa_idx, align 8
  invoke void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtCsdJkkaF0JZ31_10ascii_tree4TreeEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtNtNtB2c_5slice4iter4IterNtNtCsfF8zpZz1lvn_13yara_x_parser3ast15WithDeclarationEBR_NCNvNtB3s_10ascii_tree19build_tree_for_exprs1_0EE9from_iterB3u_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.ca)
          to label %bb.ub unwind label %bb.ua

bb.ua:                                            ; preds = %bb.tz
  %i.auk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cc) #14
          to label %bb.tv unwind label %bb.bi

bb.ub:                                            ; preds = %bb.tz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false)
  %i.aul = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aul, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 20, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ue unwind label %bb.ud

bb.uc:                                            ; preds = %bb.uh, %bb.ud
  %.pn647 = phi { ptr, i32 } [ %i.aum, %bb.ud ], [ %.pn, %bb.uh ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdJkkaF0JZ31_10ascii_tree4TreeECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(48) %i.cd) #14
          to label %bb.tv unwind label %bb.bi

bb.ud:                                            ; preds = %bb.uf, %bb.ub
  %i.aum = landingpad { ptr, i32 }
          cleanup
  br label %bb.uc

bb.ue:                                            ; preds = %bb.ub
  %i.aun = load i64, ptr %i.a, align 8, !range !7, !noundef !5
  %i.auo = trunc nuw i64 %i.aun to i1
  %i.aup = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.auq = load i64, ptr %i.aup, align 8, !range !8, !noundef !5 ; 3 uses
  %i.aur = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.auo, label %bb.uf, label %bb.ug, !prof !6

bb.uf:                                            ; preds = %bb.ue
  %i.aus = load i64, ptr %i.aur, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.auq, i64 %i.aus) #16
          to label %bb.bh unwind label %bb.ud

bb.ug:                                            ; preds = %bb.ue
  %i.aut = load ptr, ptr %i.aur, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.auu = icmp samesign ugt i64 %i.auq, 19
  call void @llvm.assume(i1 %i.auu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.aut, ptr noundef nonnull align 1 dereferenceable(20) @91, i64 20, i1 false)
  store i64 %i.auq, ptr %i.bz, align 8
  %.sroa.4637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.aut, ptr %.sroa.4637.0..sroa_idx, align 8
  %.sroa.6638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store i64 20, ptr %.sroa.6638.0..sroa_idx, align 8
  %i.auv = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 48)
          to label %bb.uj unwind label %bb.ui     ; 4 uses

bb.uh:                                            ; preds = %bb.uk, %bb.ui
  %.pn = phi { ptr, i32 } [ %i.ava, %bb.uk ], [ %i.auw, %bb.ui ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bz) #14
          to label %bb.uc unwind label %bb.bi

bb.ui:                                            ; preds = %bb.ug
  %i.auw = landingpad { ptr, i32 }
          cleanup
  br label %bb.uh

bb.uj:                                            ; preds = %bb.ug
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.aux = load ptr, ptr %i.it, align 8, !alias.scope !143, !nonnull !5, !noundef !5
  %i.auy = load ptr, ptr %i.is, align 8, !alias.scope !143, !nonnull !5, !noundef !5 ; 4 uses
  %i.auz = icmp eq ptr %i.auy, %i.aux
  br i1 %i.auz, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit920.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit920

bb.uk:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit920.thread
  %i.ava = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.auv, i64 noundef 48, i64 noundef 8) #15
  br label %bb.uh

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit920: ; preds = %bb.uj
  %i.avb = getelementptr inbounds nuw i8, ptr %i.auy, i64 48
  store ptr %i.avb, ptr %i.is, align 8, !alias.scope !143
  %.sroa.0186.0.copyload187 = load i64, ptr %i.auy, align 8, !noalias !143 ; 2 uses
  %.not = icmp eq i64 %.sroa.0186.0.copyload187, -2
  br i1 %.not, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit920.thread, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser.exit922, !prof !9

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeEECsfF8zpZz1lvn_13yara_x_parser.exit922: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit920
  %.sroa.6188.0..sroa_idx189 = getelementptr inbounds nuw i8, ptr %i.auy, i64 8
  %.sroa.4191.0..sroa.0185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.auv, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4191.0..sroa.0185.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6188.0..sroa_idx189, i64 40, i1 false)
  store i64 %.sroa.0186.0.copyload187, ptr %i.auv, align 8
  %i.avc = getelementptr inbounds nuw i8, ptr %i.atx, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.avc, ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.atx, ptr noundef nonnull align 8 dereferenceable(48) %i.cd, i64 48, i1 false)
  %.sroa.4164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atx, i64 72
  store i64 1, ptr %.sroa.4164.0..sroa_idx, align 8
  %.sroa.5165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atx, i64 80
  store ptr %i.auv, ptr %.sroa.5165.0..sroa_idx, align 8
  %.sroa.6166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atx, i64 88
  store i64 1, ptr %.sroa.6166.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false)
  %i.avd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 2, ptr %i.avd, align 8
  %.sroa.4158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.atx, ptr %.sroa.4158.0..sroa_idx, align 8
  %.sroa.5159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2, ptr %.sroa.5159.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  br label %bb.dy

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit920.thread: ; preds = %bb.uj, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfF8zpZz1lvn_13yara_x_parser.exit920
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #16
          to label %bb.bh unwind label %bb.uk

.thread:                                          ; preds = %bb.fy, %bb.gf, %bb.fh, %bb.fn, %bb.ey, %bb.dr, %bb.di, %bb.cy, %bb.da, %bb.de, %bb.dg, %bb.cn, %bb.cg, %bb.bz, %bb.bu, %bb.bp, %bb.bk, %bb.ba, %.thread203
  %.pn776196 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread203 ], [ %i.qx, %bb.fy ], [ %.pn750, %bb.gf ], [ %i.pv, %bb.fh ], [ %.pn754, %bb.fn ], [ %i.pg, %bb.ey ], [ %.pn758, %bb.dr ], [ %i.mi, %bb.di ], [ %i.lw, %bb.cy ], [ %i.ly, %bb.da ], [ %i.mc, %bb.de ], [ %i.me, %bb.dg ], [ %i.lk, %bb.cn ], [ %i.ky, %bb.cg ], [ %i.km, %bb.bz ], [ %i.jz, %bb.bu ], [ %i.jq, %bb.bp ], [ %i.jh, %bb.bk ], [ %i.iu, %bb.ba ]
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

end_hunk_2
