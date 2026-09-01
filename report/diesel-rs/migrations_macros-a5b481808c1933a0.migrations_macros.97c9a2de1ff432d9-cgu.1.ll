Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/migrations_macros-a5b481808c1933a0.migrations_macros.97c9a2de1ff432d9-cgu.1?download=true
inline.NumInlined: 163
inline.NumDeleted: 100
begin_hunk_0_@_RNvNtCsd1XE8irAZDx_17migrations_macros10migrations35migration_directory_from_given_path:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !201
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.an, align 8, !alias.scope !198, !noalias !229
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @3, ptr %i.ao, align 8, !alias.scope !198, !noalias !229
  store i64 -1, ptr %0, align 8, !alias.scope !198, !noalias !229
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsd1XE8irAZDx_17migrations_macros(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.x unwind label %bb.v, !noalias !204

bb.v:                                             ; preds = %bb.u
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i12.i = load i64, ptr %i.h, align 8, !range !5, !alias.scope !230, !noalias !201, !noundef !4 ; 2 uses
  %i.aq = icmp eq i64 %.val2.i.i.i.i12.i, 0
  br i1 %i.aq, label %.body, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val3.i.i.i.i13.i = load ptr, ptr %i.z, align 8, !alias.scope !241, !noalias !201, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i13.i, i64 noundef %.val2.i.i.i.i12.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !242
  br label %.body

bb.x:                                             ; preds = %bb.u
  %.val.i.i.i.i15.i = load i64, ptr %i.h, align 8, !range !5, !alias.scope !230, !noalias !201, !noundef !4 ; 2 uses
  %i.ar = icmp eq i64 %.val.i.i.i.i15.i, 0
  br i1 %i.ar, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsd1XE8irAZDx_17migrations_macros.exit17.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.val1.i.i.i.i16.i = load ptr, ptr %i.z, align 8, !alias.scope !241, !noalias !201, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i16.i, i64 noundef %.val.i.i.i.i15.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !245
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsd1XE8irAZDx_17migrations_macros.exit17.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsd1XE8irAZDx_17migrations_macros.exit17.i: ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !201
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %bb.ao

bb.z:                                             ; preds = %.body.i, %.body9.i, %bb.i
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23, !noalias !198
  unreachable

.noexc7:                                          ; preds = %bb.g, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsd1XE8irAZDx_17migrations_macros.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !201
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !noalias !201, !nonnull !4, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noalias !201, !noundef !4
  invoke void @_RINvNtCsgczF5crJ4sT_3std2fs12canonicalizeRNtNtB4_4path4PathECsd1XE8irAZDx_17migrations_macros(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef %i.aw)
          to label %bb.ab unwind label %bb.aa, !noalias !198

bb.aa:                                            ; preds = %.noexc7
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ae, %bb.aa
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ax, %bb.aa ], [ %i.be, %bb.ae ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsd1XE8irAZDx_17migrations_macros(ptr noalias noundef align 8 dereferenceable(24) %i.i) #25
          to label %.body unwind label %bb.z, !noalias !198

bb.ab:                                            ; preds = %.noexc7
  %i.ay = load i64, ptr %i.f, align 8, !range !3, !noalias !201, !noundef !4
  %i.az = icmp eq i64 %i.ay, -1
  br i1 %i.az, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !201, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !201
  store ptr %i.bb, ptr %i.c, align 8, !noalias !201
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !198
  %i.bc = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 8, i64 noundef 8) #22, !noalias !198 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.ad, label %bb.am, !prof !197

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #24
          to label %.noexc18.i unwind label %bb.ae, !noalias !198

.noexc18.i:                                       ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECsd1XE8irAZDx_17migrations_macros(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #25
          to label %.body.i unwind label %bb.af, !noalias !198

bb.af:                                            ; preds = %bb.ae
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23, !noalias !198
  unreachable

bb.ag:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !229
  br label %bb.ah

bb.ah:                                            ; preds = %bb.am, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !201
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsd1XE8irAZDx_17migrations_macros(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ak unwind label %bb.ai, !noalias !198

bb.ai:                                            ; preds = %bb.ah
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i20.i = load i64, ptr %i.i, align 8, !range !5, !alias.scope !248, !noalias !201, !noundef !4 ; 2 uses
  %i.bh = icmp eq i64 %.val2.i.i.i.i20.i, 0
  br i1 %i.bh, label %.body, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.val3.i.i.i.i21.i = load ptr, ptr %i.at, align 8, !alias.scope !259, !noalias !201, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i21.i, i64 noundef %.val2.i.i.i.i20.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !260
  br label %.body

bb.ak:                                            ; preds = %bb.ah
  %.val.i.i.i.i23.i = load i64, ptr %i.i, align 8, !range !5, !alias.scope !248, !noalias !201, !noundef !4 ; 2 uses
  %i.bi = icmp eq i64 %.val.i.i.i.i23.i, 0
  br i1 %i.bi, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.val1.i.i.i.i24.i = load ptr, ptr %i.at, align 8, !alias.scope !259, !noalias !201, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i24.i, i64 noundef %.val.i.i.i.i23.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !263
  br label %bb.ao

bb.am:                                            ; preds = %bb.ac
  store ptr %i.bb, ptr %i.bc, align 8, !noalias !198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !201
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %i.bj, align 8, !alias.scope !198, !noalias !229
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @5, ptr %i.bk, align 8, !alias.scope !198, !noalias !229
  store i64 -1, ptr %0, align 8, !alias.scope !198, !noalias !229
  br label %bb.ah

bb.an:                                            ; preds = %bb.h, %bb.g
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.l, %bb.m, %.body9.i, %bb.v, %bb.w, %.body.i, %bb.ai, %bb.aj, %bb.an
  %eh.lpad-body = phi { ptr, i32 } [ %i.bl, %bb.an ], [ %i.ad, %bb.i ], [ %i.af, %bb.l ], [ %i.ap, %bb.v ], [ %i.af, %bb.m ], [ %i.ap, %bb.w ], [ %eh.lpad-body.i, %.body.i ], [ %i.al, %.body9.i ], [ %i.bg, %bb.aj ], [ %i.bg, %bb.ai ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsd1XE8irAZDx_17migrations_macros(ptr noalias noundef align 8 dereferenceable(24) %i.l) #25
          to label %common.resume unwind label %bb.at

bb.ao:                                            ; preds = %bb.al, %bb.ak, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsd1XE8irAZDx_17migrations_macros.exit17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !201
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsd1XE8irAZDx_17migrations_macros(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.ar unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.l, align 8, !range !5, !alias.scope !266, !noundef !4 ; 2 uses
  %i.bn = icmp eq i64 %.val2.i.i, 0
  br i1 %i.bn, label %common.resume, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.val3.i.i = load ptr, ptr %i.v, align 8, !alias.scope !273, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !274
  br label %common.resume

bb.ar:                                            ; preds = %bb.ao
  %.val.i.i = load i64, ptr %i.l, align 8, !range !5, !alias.scope !266, !noundef !4 ; 2 uses
  %i.bo = icmp eq i64 %.val.i.i, 0
  br i1 %i.bo, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsd1XE8irAZDx_17migrations_macros.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.val1.i.i = load ptr, ptr %i.v, align 8, !alias.scope !273, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !277
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsd1XE8irAZDx_17migrations_macros.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsd1XE8irAZDx_17migrations_macros.exit: ; preds = %bb.as, %bb.ar, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtCsgczF5crJ4sT_3std3env8VarErrorE3newCsd1XE8irAZDx_17migrations_macros.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.at:                                            ; preds = %.body
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapNtNtCsgczF5crJ4sT_3std2fs7ReadDirNCNvCsa9b9a3U8I3h_20migrations_internals22migrations_directories0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB1v_2io5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextCsd1XE8irAZDx_17migrations_macros(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 14 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [176 x i8], align 8               ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 14 uses
  %i.h = alloca [24 x i8], align 8                ; 15 uses
  %i.i = alloca [176 x i8], align 8               ; 8 uses
  %i.j = alloca [40 x i8], align 8                ; 17 uses
  %.sroa.14.i.sroa.4.i.i.i.i = alloca [24 x i8], align 8 ; 6 uses
  %.sroa.8.i.i.i = alloca [24 x i8], align 8      ; 2 uses
  %i.k = alloca [48 x i8], align 8                ; 10 uses
  %.sroa.4.i.i.i = alloca ptr, align 8            ; 6 uses
  %.sroa.7.i.i.i = alloca ptr, align 8            ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !alias.scope !280, !noalias !283, !nonnull !4, !align !90, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !288
  call void @_RNvXsz_NtCsgczF5crJ4sT_3std2fsNtB5_7ReadDirNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l), !noalias !291
  %i.n = load i64, ptr %i.k, align 8, !range !155, !noalias !294, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %.lr.ph.i.i.i, label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapNtNtCsgczF5crJ4sT_3std2fs7ReadDirNCNvCsa9b9a3U8I3h_20migrations_internals22migrations_directories0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtNtB1w_2io5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4h_12try_for_each4callNtB1u_8DirEntryINtNtNtB7_3ops12control_flow11ControlFlowB5t_ENcNtB5I_5Break0E0B5I_ECsd1XE8irAZDx_17migrations_macros.exit.thread

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.56.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.5.0..sroa_idx3.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 6 uses
  %.sroa.6.0..sroa_idx5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 6 uses
  %.sroa.6.sroa.2.0..sroa.6.0..sroa_idx70.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %.sroa.6.sroa.289.0..sroa.6.0..sroa_idx82.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.bw, %.lr.ph.i.i.i
  %.sroa.05.0.copyload.i.i.i = load ptr, ptr %i.p, align 8, !noalias !294 ; 2 uses
  %.sroa.56.0.copyload.i.i.i = load ptr, ptr %.sroa.56.0..sroa_idx.i.i.i, align 8, !noalias !294 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !296)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.sroa.4.i.i.i.i)
  %i.ab = icmp eq ptr %.sroa.05.0.copyload.i.i.i, null
  br i1 %i.ab, label %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCsgczF5crJ4sT_3std2fs8DirEntryNtNtNtBM_2io5error5ErrorE8and_thenINtNtB5_6option6OptionBI_ENCNCNvCsa9b9a3U8I3h_20migrations_internals22migrations_directories00ECsd1XE8irAZDx_17migrations_macros.exit.thread.i.i.i.i.i, label %bb.c

_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCsgczF5crJ4sT_3std2fs8DirEntryNtNtNtBM_2io5error5ErrorE8and_thenINtNtB5_6option6OptionBI_ENCNCNvCsa9b9a3U8I3h_20migrations_internals22migrations_directories00ECsd1XE8irAZDx_17migrations_macros.exit.thread.i.i.i.i.i: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.56.0.copyload.i.i.i) ]
  br label %bb.bs

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !299
  store ptr %.sroa.05.0.copyload.i.i.i, ptr %i.j, align 8, !noalias !307
  store ptr %.sroa.56.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx3.i.i.i.i.i, align 8, !noalias !307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx5.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !294
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !299
  invoke void @_RNvMsA_NtCsgczF5crJ4sT_3std2fsNtB5_8DirEntry8metadata(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j)
          to label %bb.e unwind label %bb.d, !noalias !311

.body33.i.i.i.i.i.i.i:                            ; preds = %bb.bo, %bb.bn, %bb.bh, %bb.bg, %bb.bc, %bb.bb, %.body36.i.i.i.i.i.i.i, %bb.aa, %bb.z, %.body.i.i.i.i.i.i.i, %bb.d
  %.pn11.i.i.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body37.i.i.i.i.i.i.i, %.body36.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ], [ %i.cj, %bb.bg ], [ %i.ax, %bb.z ], [ %i.cf, %bb.bb ], [ %i.ac, %bb.d ], [ %i.ax, %bb.aa ], [ %i.cf, %bb.bc ], [ %i.cj, %bb.bh ], [ %i.ct, %bb.bo ], [ %i.ct, %bb.bn ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std2fs8DirEntryECsd1XE8irAZDx_17migrations_macros(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j) #25
          to label %common.resume.i.i.i.i unwind label %bb.bm, !noalias !311

bb.d:                                             ; preds = %bb.ag, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECsd1XE8irAZDx_17migrations_macros.exit.i.i.i.i.i.i.i, %bb.h, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body33.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.ad = load i64, ptr %i.i, align 8, !range !316, !alias.scope !317, !noalias !319, !noundef !4
  %i.ae = icmp eq i64 %i.ad, -1
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !317, !noalias !319, !nonnull !4, !noundef !4
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsd1XE8irAZDx_17migrations_macros.exit47.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %.sroa.6.sroa.2.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.sroa.6.sroa.2.0..sroa.6.0..sroa_idx70.sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !320, !noalias !321
  %i.ah = and i32 %.sroa.6.sroa.2.0.copyload.i.i.i.i.i.i.i, 61440
  %i.ai = icmp eq i32 %i.ah, 32768
  br i1 %i.ai, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECsd1XE8irAZDx_17migrations_macros.exit64.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMsA_NtCsgczF5crJ4sT_3std2fsNtB5_8DirEntry9file_name(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j)
          to label %bb.j unwind label %bb.d, !noalias !311

.body.i.i.i.i.i.i.i:                              ; preds = %bb.w, %bb.v, %bb.q, %bb.p, %bb.k, %bb.i
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.al, %bb.k ], [ %i.ar, %bb.p ], [ %i.aj, %bb.i ], [ %i.ar, %bb.q ], [ %i.au, %bb.w ], [ %i.au, %bb.v ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECsd1XE8irAZDx_17migrations_macros(ptr noalias noundef align 8 dereferenceable(24) %i.g) #25
          to label %.body33.i.i.i.i.i.i.i unwind label %bb.bm, !noalias !311

bb.i:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %.val13.i.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !noalias !321, !nonnull !4, !noundef !4
  %.val14.i.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !noalias !321, !noundef !4
  invoke void @_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val13.i.i.i.i.i.i.i, i64 noundef %.val14.i.i.i.i.i.i.i)
          to label %_RNvMsl_NtNtCsgczF5crJ4sT_3std3ffi6os_strNtB5_5OsStr15to_string_lossy.exit.i.i.i.i.i.i.i unwind label %bb.i, !noalias !311

_RNvMsl_NtNtCsgczF5crJ4sT_3std3ffi6os_strNtB5_5OsStr15to_string_lossy.exit.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.ak = invoke { ptr, i64 } @_RNvXs2_NtCs40k4W9msRzi_5alloc6borrowINtB5_3CoweENtNtNtCscI6d9CVNmLh_4core3ops5deref5Deref5derefCsd1XE8irAZDx_17migrations_macros(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.l unwind label %bb.k, !noalias !311 ; 2 uses

bb.k:                                             ; preds = %bb.l, %_RNvMsl_NtNtCsgczF5crJ4sT_3std3ffi6os_strNtB5_5OsStr15to_string_lossy.exit.i.i.i.i.i.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsd1XE8irAZDx_17migrations_macros(ptr noalias noundef align 8 dereferenceable(24) %i.h) #25
          to label %.body.i.i.i.i.i.i.i unwind label %bb.bm, !noalias !311

bb.l:                                             ; preds = %_RNvMsl_NtNtCsgczF5crJ4sT_3std3ffi6os_strNtB5_5OsStr15to_string_lossy.exit.i.i.i.i.i.i.i
  %i.am = extractvalue { ptr, i64 } %i.ak, 0
  %i.an = extractvalue { ptr, i64 } %i.ak, 1
  %i.ao = invoke noundef zeroext i1 @_RINvMNtCscI6d9CVNmLh_4core3stre11starts_withcECsd1XE8irAZDx_17migrations_macros(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef %i.an, i32 noundef 46)
          to label %bb.m unwind label %bb.k, !noalias !311

bb.m:                                             ; preds = %bb.l
  %i.ap = load i64, ptr %i.h, align 8, !range !3, !noalias !321, !noundef !4
  %i.aq = icmp eq i64 %i.ap, -1                   ; 2 uses
  br i1 %i.ao, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.aq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsd1XE8irAZDx_17migrations_macros.exit.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsd1XE8irAZDx_17migrations_macros(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.r unwind label %bb.p, !noalias !311

bb.p:                                             ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !range !5, !alias.scope !322, !noalias !321, !noundef !4 ; 2 uses
  %i.as = icmp eq i64 %.val2.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.as, label %.body.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val3.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !331, !noalias !321, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !332
  br label %.body.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.o
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !range !5, !alias.scope !322, !noalias !321, !noundef !4 ; 2 uses
  %i.at = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.at, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsd1XE8irAZDx_17migrations_macros.exit.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val1.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !331, !noalias !321, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !335
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsd1XE8irAZDx_17migrations_macros.exit.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.m
  br i1 %i.aq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsd1XE8irAZDx_17migrations_macros.exit27.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsd1XE8irAZDx_17migrations_macros(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.x unwind label %bb.v, !noalias !311

bb.v:                                             ; preds = %bb.u
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i20.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !range !5, !alias.scope !338, !noalias !321, !noundef !4 ; 2 uses
  %i.av = icmp eq i64 %.val2.i.i.i20.i.i.i.i.i.i.i, 0
  br i1 %i.av, label %.body.i.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val3.i.i.i21.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !347, !noalias !321, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i21.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i20.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !348
  br label %.body.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.u
  %.val.i.i.i23.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !range !5, !alias.scope !338, !noalias !321, !noundef !4 ; 2 uses
  %i.aw = icmp eq i64 %.val.i.i.i23.i.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsd1XE8irAZDx_17migrations_macros.exit27.i.i.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.val1.i.i.i24.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !347, !noalias !321, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i24.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i23.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !351
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsd1XE8irAZDx_17migrations_macros.exit27.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsd1XE8irAZDx_17migrations_macros.exit.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.n
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsd1XE8irAZDx_17migrations_macros(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.ab unwind label %bb.z, !noalias !311

bb.z:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsd1XE8irAZDx_17migrations_macros.exit.i.i.i.i.i.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i28.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !range !5, !alias.scope !354, !noalias !321, !noundef !4 ; 2 uses
  %i.ay = icmp eq i64 %.val2.i.i.i28.i.i.i.i.i.i.i, 0
  br i1 %i.ay, label %.body33.i.i.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val3.i.i.i29.i.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !363, !noalias !321, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i29.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i28.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !364
end_hunk_0
begin_hunk_1_@_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapNtNtCsgczF5crJ4sT_3std2fs7ReadDirNCNvCsa9b9a3U8I3h_20migrations_internals22migrations_directories0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB1v_2io5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextCsd1XE8irAZDx_17migrations_macros:bb.a
  %i.ca = load ptr, ptr %i.c, align 8, !alias.scope !439, !noalias !321, !nonnull !4, !noundef !4
  %i.cb = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !noalias !440
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCsgczF5crJ4sT_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.ba unwind label %bb.aj, !noalias !311

bb.ay:                                            ; preds = %bb.av, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i5.i4.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsgczF5crJ4sT_3std3sys2fs4unix12InnerReadDirEECsd1XE8irAZDx_17migrations_macros.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cd = add i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !321
  br label %bb.an

bb.az:                                            ; preds = %bb.ap
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23, !noalias !311
  unreachable

bb.ba:                                            ; preds = %bb.ax, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !321
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsd1XE8irAZDx_17migrations_macros(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.bd unwind label %bb.bb, !noalias !311

bb.bb:                                            ; preds = %bb.ba
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !range !5, !alias.scope !441, !noalias !321, !noundef !4 ; 2 uses
  %i.cg = icmp eq i64 %.val2.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cg, label %.body33.i.i.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.val3.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !452, !noalias !321, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !453
  br label %.body33.i.i.i.i.i.i.i

bb.bd:                                            ; preds = %bb.ba
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !range !5, !alias.scope !441, !noalias !321, !noundef !4 ; 2 uses
  %i.ch = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ch, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsd1XE8irAZDx_17migrations_macros.exit.i.i.i.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !452, !noalias !321, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !456
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsd1XE8irAZDx_17migrations_macros.exit.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsd1XE8irAZDx_17migrations_macros.exit.i.i.i.i.i.i.i: ; preds = %bb.be, %bb.bd
  %i.ci = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ci, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECsd1XE8irAZDx_17migrations_macros.exit64.i.i.i.i.i.i.i, label %bb.br

bb.bf:                                            ; preds = %bb.al
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsd1XE8irAZDx_17migrations_macros(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.bi unwind label %bb.bg, !noalias !311

bb.bg:                                            ; preds = %bb.bf
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i40.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !range !5, !alias.scope !459, !noalias !321, !noundef !4 ; 2 uses
  %i.ck = icmp eq i64 %.val2.i.i.i.i40.i.i.i.i.i.i.i, 0
  br i1 %i.ck, label %.body33.i.i.i.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.val3.i.i.i.i41.i.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !470, !noalias !321, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i41.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i40.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !471
  br label %.body33.i.i.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bf
  %.val.i.i.i.i43.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !range !5, !alias.scope !459, !noalias !321, !noundef !4 ; 2 uses
  %i.cl = icmp eq i64 %.val.i.i.i.i43.i.i.i.i.i.i.i, 0
  br i1 %i.cl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsd1XE8irAZDx_17migrations_macros.exit47.i.i.i.i.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %.val1.i.i.i.i44.i.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !470, !noalias !321, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i44.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i43.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !474
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsd1XE8irAZDx_17migrations_macros.exit47.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsd1XE8irAZDx_17migrations_macros.exit47.i.i.i.i.i.i.i: ; preds = %bb.bj, %bb.bi, %bb.ae, %bb.f
  %.sroa.7.0.i.i.i.i.i = phi ptr [ %i.ag, %bb.f ], [ %i.bd, %bb.ae ], [ %.val18.i.i.i.i.i.i.i, %bb.bi ], [ %.val18.i.i.i.i.i.i.i, %bb.bj ]
  call void @llvm.experimental.noalias.scope.decl(metadata !477)
  call void @llvm.experimental.noalias.scope.decl(metadata !480)
  call void @llvm.experimental.noalias.scope.decl(metadata !483)
  call void @llvm.experimental.noalias.scope.decl(metadata !486)
  %i.cm = load ptr, ptr %i.j, align 8, !alias.scope !489, !noalias !390, !nonnull !4, !noundef !4
  %i.cn = atomicrmw sub ptr %i.cm, i64 1 release, align 8, !noalias !490
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.bk, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsgczF5crJ4sT_3std3sys2fs4unix12InnerReadDirEECsd1XE8irAZDx_17migrations_macros.exit.i.i48.i.i.i.i.i.i.i

bb.bk:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsd1XE8irAZDx_17migrations_macros.exit47.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCsgczF5crJ4sT_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsgczF5crJ4sT_3std3sys2fs4unix12InnerReadDirEECsd1XE8irAZDx_17migrations_macros.exit.i.i48.i.i.i.i.i.i.i unwind label %bb.bl, !noalias !311

bb.bl:                                            ; preds = %bb.bk
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i52.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx3.i.i.i.i.i, align 8, !alias.scope !491, !noalias !390, !nonnull !4, !noundef !4 ; 2 uses
  %.val3.i.i53.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx5.i.i.i.i.i, align 8, !alias.scope !491, !noalias !390 ; 2 uses
  store i8 0, ptr %.val2.i.i52.i.i.i.i.i.i.i, align 1, !noalias !311
  %i.cq = icmp eq i64 %.val3.i.i53.i.i.i.i.i.i.i, 0
  br i1 %i.cq, label %common.resume.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i5.i.i.i54.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i5.i.i.i54.i.i.i.i.i.i.i: ; preds = %bb.bl
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i52.i.i.i.i.i.i.i, i64 noundef %.val3.i.i53.i.i.i.i.i.i.i, i64 noundef 1) #22, !noalias !311
  br label %common.resume.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsgczF5crJ4sT_3std3sys2fs4unix12InnerReadDirEECsd1XE8irAZDx_17migrations_macros.exit.i.i48.i.i.i.i.i.i.i: ; preds = %bb.bk, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsd1XE8irAZDx_17migrations_macros.exit47.i.i.i.i.i.i.i
  %.val.i.i49.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx3.i.i.i.i.i, align 8, !alias.scope !491, !noalias !390, !nonnull !4, !noundef !4 ; 2 uses
  %.val1.i.i50.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx5.i.i.i.i.i, align 8, !alias.scope !491, !noalias !390 ; 2 uses
  store i8 0, ptr %.val.i.i49.i.i.i.i.i.i.i, align 1, !noalias !311
  %i.cr = icmp eq i64 %.val1.i.i50.i.i.i.i.i.i.i, 0
  br i1 %i.cr, label %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCsgczF5crJ4sT_3std2fs8DirEntryNtNtNtBM_2io5error5ErrorE8and_thenINtNtB5_6option6OptionBI_ENCNCNvCsa9b9a3U8I3h_20migrations_internals22migrations_directories00ECsd1XE8irAZDx_17migrations_macros.exit.i.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i5.i4.i.i51.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i5.i4.i.i51.i.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsgczF5crJ4sT_3std3sys2fs4unix12InnerReadDirEECsd1XE8irAZDx_17migrations_macros.exit.i.i48.i.i.i.i.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i49.i.i.i.i.i.i.i, i64 noundef %.val1.i.i50.i.i.i.i.i.i.i, i64 noundef 1) #22, !noalias !311
  br label %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCsgczF5crJ4sT_3std2fs8DirEntryNtNtNtBM_2io5error5ErrorE8and_thenINtNtB5_6option6OptionBI_ENCNCNvCsa9b9a3U8I3h_20migrations_internals22migrations_directories00ECsd1XE8irAZDx_17migrations_macros.exit.i.i.i.i.i

bb.bm:                                            ; preds = %.body36.i.i.i.i.i.i.i, %bb.k, %.body.i.i.i.i.i.i.i, %.body33.i.i.i.i.i.i.i
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23, !noalias !311
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsd1XE8irAZDx_17migrations_macros.exit27.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x, %bb.t
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsd1XE8irAZDx_17migrations_macros(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.bp unwind label %bb.bn, !noalias !311

bb.bn:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsd1XE8irAZDx_17migrations_macros.exit27.i.i.i.i.i.i.i
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i57.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !range !5, !alias.scope !492, !noalias !321, !noundef !4 ; 2 uses
  %i.cu = icmp eq i64 %.val2.i.i.i57.i.i.i.i.i.i.i, 0
  br i1 %i.cu, label %.body33.i.i.i.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.val3.i.i.i58.i.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !501, !noalias !321, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i58.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i57.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !502
  br label %.body33.i.i.i.i.i.i.i

bb.bp:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsd1XE8irAZDx_17migrations_macros.exit27.i.i.i.i.i.i.i
  %.val.i.i.i60.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !range !5, !alias.scope !492, !noalias !321, !noundef !4 ; 2 uses
  %i.cv = icmp eq i64 %.val.i.i.i60.i.i.i.i.i.i.i, 0
  br i1 %i.cv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECsd1XE8irAZDx_17migrations_macros.exit64.i.i.i.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %.val1.i.i.i61.i.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !501, !noalias !321, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i61.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i60.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !505
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECsd1XE8irAZDx_17migrations_macros.exit64.i.i.i.i.i.i.i

_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCsgczF5crJ4sT_3std2fs8DirEntryNtNtNtBM_2io5error5ErrorE8and_thenINtNtB5_6option6OptionBI_ENCNCNvCsa9b9a3U8I3h_20migrations_internals22migrations_directories00ECsd1XE8irAZDx_17migrations_macros.exit.i.i.i.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i5.i4.i.i51.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsgczF5crJ4sT_3std3sys2fs4unix12InnerReadDirEECsd1XE8irAZDx_17migrations_macros.exit.i.i48.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !299
  br label %bb.bs

.thread.i.i.i.i.i:                                ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i5.i4.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsgczF5crJ4sT_3std3sys2fs4unix12InnerReadDirEECsd1XE8irAZDx_17migrations_macros.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !299
  br label %bb.bw

bb.br:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsd1XE8irAZDx_17migrations_macros.exit.i.i.i.i.i.i.i, %bb.af
  %.sroa.05.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !308, !noalias !390 ; 2 uses
  %.sroa.14.i.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx3.i.i.i.i.i, align 8, !noalias !508
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14.i.sroa.4.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx5.i.i.i.i.i, i64 24, i1 false), !noalias !508
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !299
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.05.0.copyload.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %bb.bw, label %bb.bu

bb.bs:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCsgczF5crJ4sT_3std2fs8DirEntryNtNtNtBM_2io5error5ErrorE8and_thenINtNtB5_6option6OptionBI_ENCNCNvCsa9b9a3U8I3h_20migrations_internals22migrations_directories00ECsd1XE8irAZDx_17migrations_macros.exit.i.i.i.i.i, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCsgczF5crJ4sT_3std2fs8DirEntryNtNtNtBM_2io5error5ErrorE8and_thenINtNtB5_6option6OptionBI_ENCNCNvCsa9b9a3U8I3h_20migrations_internals22migrations_directories00ECsd1XE8irAZDx_17migrations_macros.exit.thread.i.i.i.i.i
  %.sroa.7.0.ph.ph.i.i.i.i = phi ptr [ %.sroa.56.0.copyload.i.i.i, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCsgczF5crJ4sT_3std2fs8DirEntryNtNtNtBM_2io5error5ErrorE8and_thenINtNtB5_6option6OptionBI_ENCNCNvCsa9b9a3U8I3h_20migrations_internals22migrations_directories00ECsd1XE8irAZDx_17migrations_macros.exit.thread.i.i.i.i.i ], [ %.sroa.7.0.i.i.i.i.i, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCsgczF5crJ4sT_3std2fs8DirEntryNtNtNtBM_2io5error5ErrorE8and_thenINtNtB5_6option6OptionBI_ENCNCNvCsa9b9a3U8I3h_20migrations_internals22migrations_directories00ECsd1XE8irAZDx_17migrations_macros.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.sroa.4.i.i.i.i)
  %i.cw = load ptr, ptr %i.m, align 8, !alias.scope !509, !noalias !512, !noundef !4
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorEEECsd1XE8irAZDx_17migrations_macros.exit.i.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECsd1XE8irAZDx_17migrations_macros(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.m)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorEEECsd1XE8irAZDx_17migrations_macros.exit.i.i.i.i.i unwind label %bb.bv, !noalias !516

bb.bu:                                            ; preds = %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14.i.sroa.4.i.i.i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.sroa.4.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !517)
  store ptr %.sroa.05.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.4.i.i.i, align 8, !alias.scope !518, !noalias !519
  br label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapNtNtCsgczF5crJ4sT_3std2fs7ReadDirNCNvCsa9b9a3U8I3h_20migrations_internals22migrations_directories0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtNtB1w_2io5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4h_12try_for_each4callNtB1u_8DirEntryINtNtNtB7_3ops12control_flow11ControlFlowB5t_ENcNtB5I_5Break0E0B5I_ECsd1XE8irAZDx_17migrations_macros.exit

bb.bv:                                            ; preds = %bb.bt
  %i.cy = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.7.0.ph.ph.i.i.i.i, ptr %i.m, align 8, !alias.scope !285, !noalias !512
  br label %common.resume.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorEEECsd1XE8irAZDx_17migrations_macros.exit.i.i.i.i.i: ; preds = %bb.bt, %bb.bs
  store ptr %.sroa.7.0.ph.ph.i.i.i.i, ptr %i.m, align 8, !alias.scope !285, !noalias !512
  br label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapNtNtCsgczF5crJ4sT_3std2fs7ReadDirNCNvCsa9b9a3U8I3h_20migrations_internals22migrations_directories0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtNtB1w_2io5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4h_12try_for_each4callNtB1u_8DirEntryINtNtNtB7_3ops12control_flow11ControlFlowB5t_ENcNtB5I_5Break0E0B5I_ECsd1XE8irAZDx_17migrations_macros.exit

bb.bw:                                            ; preds = %bb.br, %.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.sroa.4.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @_RNvXsz_NtCsgczF5crJ4sT_3std2fsNtB5_7ReadDirNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l), !noalias !291
  %i.cz = load i64, ptr %i.k, align 8, !range !155, !noalias !294, !noundef !4
  %i.da = trunc nuw i64 %i.cz to i1
  br i1 %i.da, label %bb.b, label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapNtNtCsgczF5crJ4sT_3std2fs7ReadDirNCNvCsa9b9a3U8I3h_20migrations_internals22migrations_directories0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtNtB1w_2io5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4h_12try_for_each4callNtB1u_8DirEntryINtNtNtB7_3ops12control_flow11ControlFlowB5t_ENcNtB5I_5Break0E0B5I_ECsd1XE8irAZDx_17migrations_macros.exit.thread

_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapNtNtCsgczF5crJ4sT_3std2fs7ReadDirNCNvCsa9b9a3U8I3h_20migrations_internals22migrations_directories0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtNtB1w_2io5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4h_12try_for_each4callNtB1u_8DirEntryINtNtNtB7_3ops12control_flow11ControlFlowB5t_ENcNtB5I_5Break0E0B5I_ECsd1XE8irAZDx_17migrations_macros.exit.thread: ; preds = %bb.bw, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !288
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCsgczF5crJ4sT_3std2fs8DirEntryEECsd1XE8irAZDx_17migrations_macros.exit

_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapNtNtCsgczF5crJ4sT_3std2fs7ReadDirNCNvCsa9b9a3U8I3h_20migrations_internals22migrations_directories0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtNtB1w_2io5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4h_12try_for_each4callNtB1u_8DirEntryINtNtNtB7_3ops12control_flow11ControlFlowB5t_ENcNtB5I_5Break0E0B5I_ECsd1XE8irAZDx_17migrations_macros.exit: ; preds = %bb.bu, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorEEECsd1XE8irAZDx_17migrations_macros.exit.i.i.i.i.i
  %.sink.i.sroa.phi.i.i.i = phi ptr [ %.sroa.7.i.i.i, %bb.bu ], [ %.sroa.4.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorEEECsd1XE8irAZDx_17migrations_macros.exit.i.i.i.i.i ]
  %.sroa.14.i.sroa.0.0.copyload.sink.i.i.i.i = phi ptr [ %.sroa.14.i.sroa.0.0.copyload.i.i.i.i, %bb.bu ], [ null, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorEEECsd1XE8irAZDx_17migrations_macros.exit.i.i.i.i.i ]
  store ptr %.sroa.14.i.sroa.0.0.copyload.sink.i.i.i.i, ptr %.sink.i.sroa.phi.i.i.i, align 8, !alias.scope !518, !noalias !519
  %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8.copyload.i.i.i = load ptr, ptr %.sroa.4.i.i.i, align 8, !alias.scope !520, !noalias !294 ; 2 uses
  %.sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.8.copyload.i.i.i = load ptr, ptr %.sroa.7.i.i.i, align 8, !alias.scope !520, !noalias !294
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !288
  %.not = icmp eq ptr %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8.copyload.i.i.i, null
  br i1 %.not, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCsgczF5crJ4sT_3std2fs8DirEntryEECsd1XE8irAZDx_17migrations_macros.exit, label %bb.bx

bb.bx:                                            ; preds = %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapNtNtCsgczF5crJ4sT_3std2fs7ReadDirNCNvCsa9b9a3U8I3h_20migrations_internals22migrations_directories0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtNtB1w_2io5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4h_12try_for_each4callNtB1u_8DirEntryINtNtNtB7_3ops12control_flow11ControlFlowB5t_ENcNtB5I_5Break0E0B5I_ECsd1XE8irAZDx_17migrations_macros.exit
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.551.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i.i, i64 24, i1 false)
  store ptr %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8.copyload.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.8.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCsgczF5crJ4sT_3std2fs8DirEntryEECsd1XE8irAZDx_17migrations_macros.exit
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCsgczF5crJ4sT_3std2fs8DirEntryEECsd1XE8irAZDx_17migrations_macros.exit: ; preds = %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapNtNtCsgczF5crJ4sT_3std2fs7ReadDirNCNvCsa9b9a3U8I3h_20migrations_internals22migrations_directories0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtNtB1w_2io5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4h_12try_for_each4callNtB1u_8DirEntryINtNtNtB7_3ops12control_flow11ControlFlowB5t_ENcNtB5I_5Break0E0B5I_ECsd1XE8irAZDx_17migrations_macros.exit.thread, %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapNtNtCsgczF5crJ4sT_3std2fs7ReadDirNCNvCsa9b9a3U8I3h_20migrations_internals22migrations_directories0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtNtB1w_2io5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4h_12try_for_each4callNtB1u_8DirEntryINtNtNtB7_3ops12control_flow11ControlFlowB5t_ENcNtB5I_5Break0E0B5I_ECsd1XE8irAZDx_17migrations_macros.exit
  store ptr null, ptr %0, align 8
  br label %bb.by
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapNtNtCsgczF5crJ4sT_3std2fs7ReadDirNCNvCsa9b9a3U8I3h_20migrations_internals22migrations_directories0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB1v_2io5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsd1XE8irAZDx_17migrations_macros(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !align !90, !noundef !4
  %i.b = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.d, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtCs50gxqRnCXtk_10proc_macro9TokenTreeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsd1XE8irAZDx_17migrations_macros(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsd1XE8irAZDx_17migrations_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 20
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #22
  br label %_RNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsd1XE8irAZDx_17migrations_macros.exit

_RNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsd1XE8irAZDx_17migrations_macros.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtCsf5uYjtxkodL_11proc_macro211TokenStreamENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsd1XE8irAZDx_17migrations_macros(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsd1XE8irAZDx_17migrations_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsd1XE8irAZDx_17migrations_macros.exit

_RNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsd1XE8irAZDx_17migrations_macros.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCsgczF5crJ4sT_3std2fs8DirEntryENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsd1XE8irAZDx_17migrations_macros(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsd1XE8irAZDx_17migrations_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 40
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsd1XE8irAZDx_17migrations_macros.exit

_RNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsd1XE8irAZDx_17migrations_macros.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsd1XE8irAZDx_17migrations_macros(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsd1XE8irAZDx_17migrations_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsd1XE8irAZDx_17migrations_macros.exit

_RNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsd1XE8irAZDx_17migrations_macros.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs8_NtNtCs50gxqRnCXtk_10proc_macro6bridge3rpcReINtB5_6EncodeuE6encodeCsd1XE8irAZDx_17migrations_macros(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !524, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !524, !noundef !4 ; 2 uses
  %i.i = sub i64 %i.f, %i.h
  %i.j = icmp ult i64 %i.i, 8
  br i1 %i.j, label %bb.b, label %_RINvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECsd1XE8irAZDx_17migrations_macros.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !524
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %2, align 8, !alias.scope !524
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false), !alias.scope !524
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !524
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !524
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !524
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !noalias !524, !nonnull !4, !noundef !4
  call void %i.l(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, i64 noundef 8) #22, !noalias !524, !inline_history !527
  call void @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %2) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !524
  %.pre.i = load i64, ptr %i.g, align 8, !alias.scope !524
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !528, !noalias !531
  br label %_RINvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECsd1XE8irAZDx_17migrations_macros.exit

_RINvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECsd1XE8irAZDx_17migrations_macros.exit: ; preds = %bb.a, %bb.b
  %i.m = phi i64 [ %i.f, %bb.a ], [ %.pre, %bb.b ]
  %i.n = phi i64 [ %i.h, %bb.a ], [ %.pre.i, %bb.b ] ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !524, !noundef !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i64 %1, ptr %i.p, align 1, !noalias !524
  %i.q = add i64 %i.n, 8                          ; 3 uses
  store i64 %i.q, ptr %i.g, align 8, !alias.scope !524
  call void @llvm.experimental.noalias.scope.decl(metadata !528)
  %i.r = sub i64 %i.m, %i.q
  %i.s = icmp ugt i64 %1, %i.r
  br i1 %i.s, label %bb.c, label %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer17extend_from_slice.exit

bb.c:                                             ; preds = %_RINvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECsd1XE8irAZDx_17migrations_macros.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !noalias !531
  store ptr inttoptr (i64 1 to ptr), ptr %2, align 8, !alias.scope !528, !noalias !531
  %.sroa.6.0..sroa_idx.i1 = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false), !alias.scope !528, !noalias !531
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.6.0..sroa_idx.i1, align 8, !alias.scope !528, !noalias !531
  %.sroa.7.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.7.0..sroa_idx.i2, align 8, !alias.scope !528, !noalias !531
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !533
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !noalias !533, !nonnull !4, !noundef !4
  call void %i.u(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, i64 noundef range(i64 0, -9223372036854775808) %1) #22, !noalias !533, !inline_history !534
  call void @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %2) #22, !noalias !531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !533
  %.pre.i3 = load i64, ptr %i.g, align 8, !alias.scope !528, !noalias !531
  %.pre4 = load ptr, ptr %2, align 8, !alias.scope !528, !noalias !531
  br label %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer17extend_from_slice.exit

_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer17extend_from_slice.exit: ; preds = %_RINvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECsd1XE8irAZDx_17migrations_macros.exit, %bb.c
  %i.v = phi ptr [ %i.o, %_RINvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECsd1XE8irAZDx_17migrations_macros.exit ], [ %.pre4, %bb.c ]
  %i.w = phi i64 [ %i.q, %_RINvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECsd1XE8irAZDx_17migrations_macros.exit ], [ %.pre.i3, %bb.c ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr nonnull readonly align 1 %0, i64 range(i64 0, -9223372036854775808) %1, i1 false), !noalias !528
  %i.y = add i64 %i.w, %1
  store i64 %i.y, ptr %i.g, align 8, !alias.scope !528, !noalias !531
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsh_NtNtCs50gxqRnCXtk_10proc_macro6bridge3rpcNtB5_12PanicMessageINtB5_6EncodeuE6encodeCsd1XE8irAZDx_17migrations_macros(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(40) %1, ptr noalias noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !74, !noundef !4 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775807
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp eq i64 %i.a, -9223372036854775806   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %.sroa.6.0 = select i1 %i.c, i64 undef, i64 %i.g
  %.sroa.0.0 = select i1 %i.c, ptr null, ptr %i.e
  invoke void @_RNvXNvNtCs50gxqRnCXtk_10proc_macro6bridges3_1__INtNtCscI6d9CVNmLh_4core6option6OptionReEINtNtB4_3rpc6EncodeuE6encodeCsd1XE8irAZDx_17migrations_macros(ptr noalias noundef readonly captures(address, read_provenance) %.sroa.0.0, i64 %.sroa.6.0, ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noalias noundef nonnull %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_1
