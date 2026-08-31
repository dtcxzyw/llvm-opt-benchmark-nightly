Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/build_script_build.build_script_build.97c11adda379fc6d-cgu.0?download=true
inline.NumInlined: 74
inline.NumDeleted: 59
begin_hunk_0_@_RNvCsd1MEfrgau3F_18build_script_build4main:bb.a

bb.ct:                                            ; preds = %bb.cs
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsG258MDvU3F_3std4path7PathBufEECsd1MEfrgau3F_18build_script_build.exit.i: ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsG258MDvU3F_3std4path7PathBufENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsd1MEfrgau3F_18build_script_build.exit.i.i
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs8LLEjJtHDix_2cc5BuildEBD_(ptr nonnull align 8 %i.s)
          to label %bb.ba unwind label %bb.az

bb.cu:                                            ; preds = %bb.ba
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsG258MDvU3F_3std3env8VarErrorEECs4CTAXW4af7w_15find_msvc_tools(ptr nonnull align 8 %i.aj)
  br label %_RNvCsd1MEfrgau3F_18build_script_build24build_and_link_libfuzzer.exit

bb.cv:                                            ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtCsG258MDvU3F_3std4path7PathBufENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsd1MEfrgau3F_18build_script_build.exit.i
  %i.fr = getelementptr i8, ptr %.sroa.054.060.i, i64 8 ; 2 uses
  %.val26.i = load ptr, ptr %i.fr, align 8
  %i.fs = getelementptr i8, ptr %.sroa.054.060.i, i64 16 ; 2 uses
  %.val27.i = load i64, ptr %i.fs, align 8
  store ptr %.val26.i, ptr %i.q, align 8
  store i64 %.val27.i, ptr %i.fa, align 8
  invoke void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayNtNtCsG258MDvU3F_3std4path7DisplayECsbQ7gmkLiu8B_9jobserver(ptr nonnull sret([16 x i8]) align 8 %i.o, ptr nonnull align 8 %i.q)
          to label %bb.cw unwind label %.loopexit.i

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  %i.ft = invoke { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj1c_Kj1_ECsbQ7gmkLiu8B_9jobserver(ptr nonnull @10, ptr nonnull align 8 %i.p)
          to label %bb.cx unwind label %.loopexit.i ; 2 uses

bb.cx:                                            ; preds = %bb.cw
  %i.fu = extractvalue { ptr, ptr } %i.ft, 0
  %i.fv = extractvalue { ptr, ptr } %i.ft, 1
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr %i.fu, ptr %i.fv)
          to label %bb.cy unwind label %.loopexit.i

bb.cy:                                            ; preds = %bb.cx
  %.val24.i = load ptr, ptr %i.fr, align 8
  %.val25.i = load i64, ptr %i.fs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr %.val24.i, i64 %.val25.i)
          to label %bb.cz unwind label %.loopexit.i

bb.cz:                                            ; preds = %bb.cy
  %i.fw = load i64, ptr %i.c, align 8
  %i.fx = trunc nuw i64 %i.fw to i1
  %i.fy = load ptr, ptr %i.fb, align 8            ; 2 uses
  %i.fz = load i64, ptr %i.fc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.i2159.i = icmp eq ptr %i.fy, null
  %.not.i21.i = select i1 %i.fx, i1 true, i1 %.not.i2159.i
  br i1 %.not.i21.i, label %bb.da, label %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsd1MEfrgau3F_18build_script_build.exit.i

bb.da:                                            ; preds = %bb.cz
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr nonnull align 8 @24) #16
          to label %.noexc22.i unwind label %.loopexit.split-lp.i

.noexc22.i:                                       ; preds = %bb.da
  unreachable

_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsd1MEfrgau3F_18build_script_build.exit.i: ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.fy, ptr %i.b, align 8
  store i64 %i.fz, ptr %i.fd, align 8
  %i.ga = invoke { ptr, i64 } @_RNvXNtCskKLDkoKarTP_4core7convertReINtB2_5AsRefNtNtCsG258MDvU3F_3std4path4PathE6as_refCs4CTAXW4af7w_15find_msvc_tools(ptr nonnull align 8 %i.b) #15
          to label %.noexc50.i unwind label %.loopexit.i ; 2 uses

.noexc50.i:                                       ; preds = %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsd1MEfrgau3F_18build_script_build.exit.i
  %i.gb = extractvalue { ptr, i64 } %i.ga, 0
  %i.gc = extractvalue { ptr, i64 } %i.ga, 1
  %i.gd = invoke { ptr, i64 } @_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsG258MDvU3F_3std4path4PathINtB5_4IntoINtNtCsexYYUdYSQU6_5alloc4sync3ArcBz_EE4intoCs8LLEjJtHDix_2cc(ptr %i.gb, i64 %i.gc, ptr nonnull align 8 @1) #15
          to label %.noexc51.i unwind label %.loopexit.i ; 2 uses

.noexc51.i:                                       ; preds = %.noexc50.i
  %i.ge = extractvalue { ptr, i64 } %i.gd, 0      ; 2 uses
  %i.gf = extractvalue { ptr, i64 } %i.gd, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ge, ptr %i.a, align 8
  store i64 %i.gf, ptr %i.ff, align 8
  %i.gg = load i64, ptr %i.fg, align 8            ; 3 uses
  %i.gh = load i64, ptr %i.fe, align 8
  %i.gi = icmp eq i64 %i.gg, %i.gh
  br i1 %i.gi, label %bb.db, label %_RINvMs3_Cs8LLEjJtHDix_2ccNtB6_5Build4fileReECsd1MEfrgau3F_18build_script_build.exit.i

bb.db:                                            ; preds = %.noexc51.i
  invoke fastcc void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtCsG258MDvU3F_3std4path4PathEE8grow_oneCsd1MEfrgau3F_18build_script_build(ptr nonnull align 8 %i.fe)
          to label %_RINvMs3_Cs8LLEjJtHDix_2ccNtB6_5Build4fileReECsd1MEfrgau3F_18build_script_build.exit.i unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsG258MDvU3F_3std4path4PathEECs8LLEjJtHDix_2cc(ptr nonnull align 8 %i.a) #13
          to label %.body52.i unwind label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvMs3_Cs8LLEjJtHDix_2ccNtB6_5Build4fileReECsd1MEfrgau3F_18build_script_build.exit.i: ; preds = %bb.db, %.noexc51.i
  %i.gl = load ptr, ptr %i.fh, align 8
  %i.gm = getelementptr inbounds nuw [16 x i8], ptr %i.gl, i64 %i.gg ; 2 uses
  store ptr %i.ge, ptr %i.gm, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store i64 %i.gf, ptr %i.gn, align 8
  %i.go = add i64 %i.gg, 1
  store i64 %i.go, ptr %i.fg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.gp = icmp eq ptr %i.fi, %i.ey
  br i1 %i.gp, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtCsG258MDvU3F_3std4path7PathBufENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsd1MEfrgau3F_18build_script_build.exit.thread.i, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtCsG258MDvU3F_3std4path7PathBufENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsd1MEfrgau3F_18build_script_build.exit.i

bb.de:                                            ; preds = %bb.df, %bb.ay
  resume { ptr, i32 } %.pn16.pn.i

bb.df:                                            ; preds = %bb.ay
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsG258MDvU3F_3std3env8VarErrorEECs4CTAXW4af7w_15find_msvc_tools(ptr nonnull align 8 %i.aj) #13
          to label %bb.de unwind label %bb.al

_RNvCsd1MEfrgau3F_18build_script_build24build_and_link_libfuzzer.exit: ; preds = %bb.ba, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtCsG258MDvU3F_3std4path4PathEE8grow_oneCsd1MEfrgau3F_18build_script_build(ptr nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = tail call { i64, i64 } @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs9B9e4vRv5d_5gimli(ptr nonnull align 8 %0, i64 %i.a, i64 1, i64 8, i64 16) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 %i.c, i64 %i.d) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3map3MapNtNtCsG258MDvU3F_3std2fs7ReadDirNCNvCsd1MEfrgau3F_18build_script_build24build_and_link_libfuzzer0ENCB1Q_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr nonnull align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !27
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.34.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.3.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %.sroa.4.0..sroa_idx4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtCsG258MDvU3F_3std2fs8DirEntryNtNtNtBa_2io5error5ErrorENtNtB1p_4path7PathBufuINtNtNtBa_3ops12control_flow11ControlFlowB2h_ENCNvCsd1MEfrgau3F_18build_script_build24build_and_link_libfuzzer0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2h_QNCB3p_s_0E0E0B3r_.exit.i.i.i, %bb.a
  call void @_RNvXsz_NtCsG258MDvU3F_3std2fsNtB5_7ReadDirNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr nonnull sret([48 x i8]) align 8 %i.i, ptr nonnull align 8 %1), !noalias !30
  %i.o = load i64, ptr %i.i, align 8, !noalias !30
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %i.k, align 8, !noalias !30 ; 2 uses
  %.sroa.23.0.copyload.i.i.i = load ptr, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !noalias !30 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !37
  %i.q = icmp eq ptr %.sroa.02.0.copyload.i.i.i, null
  br i1 %i.q, label %bb.d, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsG258MDvU3F_3std2fs8DirEntryNtNtNtB4_2io5error5ErrorE6expectCsd1MEfrgau3F_18build_script_build.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  store ptr %.sroa.23.0.copyload.i.i.i, ptr %i.b, align 8, !noalias !40
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr nonnull @5, i64 17, ptr nonnull %i.b, ptr nonnull align 8 @25, ptr nonnull align 8 @7) #17
          to label %bb.f unwind label %bb.e, !noalias !40

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4CTAXW4af7w_15find_msvc_tools(ptr nonnull align 8 %i.b) #13
          to label %common.resume.i.i.i.i unwind label %bb.g, !noalias !40

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !noalias !40
  unreachable

common.resume.i.i.i.i:                            ; preds = %bb.o, %bb.k, %bb.h, %bb.e
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.x, %bb.k ], [ %i.r, %bb.e ], [ %i.ae, %bb.o ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsG258MDvU3F_3std2fs8DirEntryNtNtNtB4_2io5error5ErrorE6expectCsd1MEfrgau3F_18build_script_build.exit.i.i.i.i.i: ; preds = %bb.c
  store ptr %.sroa.02.0.copyload.i.i.i, ptr %i.c, align 8, !noalias !37
  store ptr %.sroa.23.0.copyload.i.i.i, ptr %.sroa.3.0..sroa_idx2.i.i.i.i.i, align 8, !noalias !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx4.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.34.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !37
  invoke void @_RNvMsA_NtCsG258MDvU3F_3std2fsNtB5_8DirEntry4path(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull align 8 %i.c)
          to label %bb.i unwind label %bb.h, !noalias !36

bb.h:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsG258MDvU3F_3std2fs8DirEntryNtNtNtB4_2io5error5ErrorE6expectCsd1MEfrgau3F_18build_script_build.exit.i.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std2fs8DirEntryECsd1MEfrgau3F_18build_script_build(ptr align 8 %i.c) #13
          to label %common.resume.i.i.i.i unwind label %bb.m, !noalias !36

bb.i:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsG258MDvU3F_3std2fs8DirEntryNtNtNtB4_2io5error5ErrorE6expectCsd1MEfrgau3F_18build_script_build.exit.i.i.i.i.i
  %i.u = load ptr, ptr %i.c, align 8, !noalias !37
  %i.v = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !36
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.j, label %_RNCNvCsd1MEfrgau3F_18build_script_build24build_and_link_libfuzzer0B3_.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr nonnull align 8 %i.c) #12
          to label %_RNCNvCsd1MEfrgau3F_18build_script_build24build_and_link_libfuzzer0B3_.exit.i.i.i.i unwind label %bb.k, !noalias !36

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECs4CTAXW4af7w_15find_msvc_tools(ptr nonnull align 8 %.sroa.3.0..sroa_idx2.i.i.i.i.i) #13
          to label %common.resume.i.i.i.i unwind label %bb.l, !noalias !36

bb.l:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !noalias !36
  unreachable

bb.m:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !noalias !36
  unreachable

_RNCNvCsd1MEfrgau3F_18build_script_build24build_and_link_libfuzzer0B3_.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECs4CTAXW4af7w_15find_msvc_tools(ptr nonnull align 8 %.sroa.3.0..sroa_idx2.i.i.i.i.i), !noalias !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !36
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %.val.i.i.i.i.i = load ptr, ptr %i.l, align 8, !noalias !46
  %.val1.i.i.i.i.i = load i64, ptr %i.m, align 8, !noalias !46
  %i.aa = invoke { ptr, i64 } @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path9extension(ptr %.val.i.i.i.i.i, i64 %.val1.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i unwind label %bb.o, !noalias !46 ; 2 uses

.noexc.i.i.i.i.i:                                 ; preds = %_RNCNvCsd1MEfrgau3F_18build_script_build24build_and_link_libfuzzer0B3_.exit.i.i.i.i
  %i.ab = extractvalue { ptr, i64 } %i.aa, 0      ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvCsd1MEfrgau3F_18build_script_build24build_and_link_libfuzzers_0INtB7_5FnMutTRNtNtCsG258MDvU3F_3std4path7PathBufEE8call_mutBS_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc.i.i.i.i.i
  %i.ac = extractvalue { ptr, i64 } %i.aa, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !46
  store ptr %i.ab, ptr %i.a, align 8, !noalias !46
  store i64 %i.ac, ptr %i.n, align 8, !noalias !46
  %i.ad = invoke zeroext i1 @_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCsG258MDvU3F_3std3ffi6os_str5OsStrINtB7_9PartialEqReE2eqCs8LLEjJtHDix_2cc(ptr nonnull align 8 %i.a, ptr nonnull align 8 @4) #15
          to label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvCsd1MEfrgau3F_18build_script_build24build_and_link_libfuzzers_0INtB7_5FnMutTRNtNtCsG258MDvU3F_3std4path7PathBufEE8call_mutBS_.exit.i.i.i.i.i unwind label %bb.o, !noalias !46

bb.o:                                             ; preds = %bb.n, %_RNCNvCsd1MEfrgau3F_18build_script_build24build_and_link_libfuzzer0B3_.exit.i.i.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs4CTAXW4af7w_15find_msvc_tools(ptr nonnull align 8 %i.e) #13
          to label %common.resume.i.i.i.i unwind label %bb.q, !noalias !46

_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvCsd1MEfrgau3F_18build_script_build24build_and_link_libfuzzers_0INtB7_5FnMutTRNtNtCsG258MDvU3F_3std4path7PathBufEE8call_mutBS_.exit.i.i.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !46
  br i1 %i.ad, label %bb.p, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvCsd1MEfrgau3F_18build_script_build24build_and_link_libfuzzers_0INtB7_5FnMutTRNtNtCsG258MDvU3F_3std4path7PathBufEE8call_mutBS_.exit.thread.i.i.i.i.i

_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvCsd1MEfrgau3F_18build_script_build24build_and_link_libfuzzers_0INtB7_5FnMutTRNtNtCsG258MDvU3F_3std4path7PathBufEE8call_mutBS_.exit.thread.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvCsd1MEfrgau3F_18build_script_build24build_and_link_libfuzzers_0INtB7_5FnMutTRNtNtCsG258MDvU3F_3std4path7PathBufEE8call_mutBS_.exit.i.i.i.i.i, %.noexc.i.i.i.i.i
  store i64 -1, ptr %i.g, align 8, !alias.scope !47, !noalias !30
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs4CTAXW4af7w_15find_msvc_tools(ptr nonnull align 8 %i.e), !noalias !46
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtCsG258MDvU3F_3std2fs8DirEntryNtNtNtBa_2io5error5ErrorENtNtB1p_4path7PathBufuINtNtNtBa_3ops12control_flow11ControlFlowB2h_ENCNvCsd1MEfrgau3F_18build_script_build24build_and_link_libfuzzer0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2h_QNCB3p_s_0E0E0B3r_.exit.i.i.i

bb.p:                                             ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvCsd1MEfrgau3F_18build_script_build24build_and_link_libfuzzers_0INtB7_5FnMutTRNtNtCsG258MDvU3F_3std4path7PathBufEE8call_mutBS_.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !30
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtCsG258MDvU3F_3std2fs8DirEntryNtNtNtBa_2io5error5ErrorENtNtB1p_4path7PathBufuINtNtNtBa_3ops12control_flow11ControlFlowB2h_ENCNvCsd1MEfrgau3F_18build_script_build24build_and_link_libfuzzer0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2h_QNCB3p_s_0E0E0B3r_.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !noalias !46
  unreachable

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtCsG258MDvU3F_3std2fs8DirEntryNtNtNtBa_2io5error5ErrorENtNtB1p_4path7PathBufuINtNtNtBa_3ops12control_flow11ControlFlowB2h_ENCNvCsd1MEfrgau3F_18build_script_build24build_and_link_libfuzzer0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2h_QNCB3p_s_0E0E0B3r_.exit.i.i.i: ; preds = %bb.p, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvCsd1MEfrgau3F_18build_script_build24build_and_link_libfuzzers_0INtB7_5FnMutTRNtNtCsG258MDvU3F_3std4path7PathBufEE8call_mutBS_.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !30
  call void @_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowNtNtCsG258MDvU3F_3std4path7PathBufENtNtB4_9try_trait3Try6branchCs4CTAXW4af7w_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.h, ptr nonnull align 8 %i.g) #15, !noalias !30
  %i.ag = load i64, ptr %i.h, align 8, !noalias !30
  %.not.i.i.i = icmp eq i64 %i.ag, -1
  br i1 %.not.i.i.i, label %bb.b, label %bb.s

bb.r:                                             ; preds = %bb.b
  call void @_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowNtNtCsG258MDvU3F_3std4path7PathBufENtNtB4_9try_trait3Try11from_outputCs4CTAXW4af7w_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.j) #15, !noalias !24
  br label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapNtNtCsG258MDvU3F_3std2fs7ReadDirNCNvCsd1MEfrgau3F_18build_script_build24build_and_link_libfuzzer0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2x_4find5checkNtNtB11_4path7PathBufQNCB1v_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB3B_EEB1x_.exit.i

bb.s:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtCsG258MDvU3F_3std2fs8DirEntryNtNtNtBa_2io5error5ErrorENtNtB1p_4path7PathBufuINtNtNtBa_3ops12control_flow11ControlFlowB2h_ENCNvCsd1MEfrgau3F_18build_script_build24build_and_link_libfuzzer0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2h_QNCB3p_s_0E0E0B3r_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !30
  call void @_RNvXs_NtNtCskKLDkoKarTP_4core3ops12control_flowINtB4_11ControlFlowNtNtCsG258MDvU3F_3std4path7PathBufEINtNtB6_9try_trait12FromResidualIBK_B12_zEE13from_residualCs4CTAXW4af7w_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.j, ptr nonnull align 8 %i.f) #15, !noalias !24
  br label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapNtNtCsG258MDvU3F_3std2fs7ReadDirNCNvCsd1MEfrgau3F_18build_script_build24build_and_link_libfuzzer0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2x_4find5checkNtNtB11_4path7PathBufQNCB1v_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB3B_EEB1x_.exit.i

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapNtNtCsG258MDvU3F_3std2fs7ReadDirNCNvCsd1MEfrgau3F_18build_script_build24build_and_link_libfuzzer0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2x_4find5checkNtNtB11_4path7PathBufQNCB1v_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB3B_EEB1x_.exit.i: ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !27
  %i.ah = load i64, ptr %i.j, align 8, !noalias !24
  %.not.i = icmp eq i64 %i.ah, -1
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapNtNtCsG258MDvU3F_3std2fs7ReadDirNCNvCsd1MEfrgau3F_18build_script_build24build_and_link_libfuzzer0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2x_4find5checkNtNtB11_4path7PathBufQNCB1v_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB3B_EEB1x_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  br label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtCsG258MDvU3F_3std2fs7ReadDirNCNvCsd1MEfrgau3F_18build_script_build24build_and_link_libfuzzer0ENtNtNtBa_6traits8iterator8Iterator4findQNCB1p_s_0EB1r_.exit

bb.u:                                             ; preds = %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapNtNtCsG258MDvU3F_3std2fs7ReadDirNCNvCsd1MEfrgau3F_18build_script_build24build_and_link_libfuzzer0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2x_4find5checkNtNtB11_4path7PathBufQNCB1v_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB3B_EEB1x_.exit.i
  store i64 -1, ptr %0, align 8, !alias.scope !24
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCsG258MDvU3F_3std4path7PathBufEECs4CTAXW4af7w_15find_msvc_tools(ptr nonnull align 8 %i.j), !noalias !24
  br label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtCsG258MDvU3F_3std2fs7ReadDirNCNvCsd1MEfrgau3F_18build_script_build24build_and_link_libfuzzer0ENtNtNtBa_6traits8iterator8Iterator4findQNCB1p_s_0EB1r_.exit

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtCsG258MDvU3F_3std2fs7ReadDirNCNvCsd1MEfrgau3F_18build_script_build24build_and_link_libfuzzer0ENtNtNtBa_6traits8iterator8Iterator4findQNCB1p_s_0EB1r_.exit: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXNtCskKLDkoKarTP_4core7convertReINtB2_5AsRefNtNtCsG258MDvU3F_3std4path4PathE6as_refCs4CTAXW4af7w_15find_msvc_tools(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsG258MDvU3F_3std4path4PathINtB5_4IntoINtNtCsexYYUdYSQU6_5alloc4sync3ArcBz_EE4intoCs8LLEjJtHDix_2cc(ptr, i64, ptr align 8) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs4CTAXW4af7w_15find_msvc_tools(ptr align 8) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsG258MDvU3F_3std3sys2fs8read_dir(ptr sret([16 x i8]) align 8, ptr, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i64 @_RNvNtCsG258MDvU3F_3std2rt19lang_start_internal(ptr, ptr align 8, i64, ptr, i8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECs4CTAXW4af7w_15find_msvc_tools(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCsG258MDvU3F_3std4path7PathBufEECs4CTAXW4af7w_15find_msvc_tools(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsz_NtCsG258MDvU3F_3std2fsNtB5_7ReadDirNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr sret([48 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowNtNtCsG258MDvU3F_3std4path7PathBufENtNtB4_9try_trait3Try6branchCs4CTAXW4af7w_15find_msvc_tools(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs_NtNtCskKLDkoKarTP_4core3ops12control_flowINtB4_11ControlFlowNtNtCsG258MDvU3F_3std4path7PathBufEINtNtB6_9try_trait12FromResidualIBK_B12_zEE13from_residualCs4CTAXW4af7w_15find_msvc_tools(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowNtNtCsG258MDvU3F_3std4path7PathBufENtNtB4_9try_trait3Try11from_outputCs4CTAXW4af7w_15find_msvc_tools(ptr sret([24 x i8]) align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCsG258MDvU3F_3std3ffi6os_str5OsStrINtB7_9PartialEqReE2eqCs8LLEjJtHDix_2cc(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsA_NtCsG258MDvU3F_3std2fsNtB5_8DirEntry4path(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path9extension(ptr, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr, ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsG258MDvU3F_3std3env3varReECs4CTAXW4af7w_15find_msvc_tools(ptr sret([32 x i8]) align 8, ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayNtNtCsexYYUdYSQU6_5alloc6string6StringECsbQ7gmkLiu8B_9jobserver(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj1c_Kj1_ECsbQ7gmkLiu8B_9jobserver(ptr, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path6parent(ptr, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path9file_stem(ptr, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXs2_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CoweENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCs8LLEjJtHDix_2cc(ptr align 8) unnamed_addr #0

end_hunk_0
