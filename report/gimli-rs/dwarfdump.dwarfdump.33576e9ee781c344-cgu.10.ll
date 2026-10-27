Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/dwarfdump.dwarfdump.33576e9ee781c344-cgu.10?download=true
inline.NumInlined: 426
inline.NumDeleted: 208
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMs_CsfcxKEGBgCs2_7getoptsNtB5_7Options5parseINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4skip4SkipNtNtCsG258MDvU3F_3std3env4ArgsEECs4phXRVW1pDQ_9dwarfdump:bb.a
  unreachable

bb.fg:                                            ; preds = %bb.fa
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ki, i64 noundef %i.mq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #28
          to label %bb.y unwind label %bb.fi

bb.fh:                                            ; preds = %bb.fd, %bb.fc
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.na = load ptr, ptr %i.mz, align 8, !alias.scope !143, !nonnull !7, !noundef !7
  %i.nb = getelementptr inbounds nuw [32 x i8], ptr %i.na, i64 %i.mu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.nb, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  %i.nc = add i64 %i.mu, 1
  store i64 %i.nc, ptr %i.mt, align 8, !alias.scope !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ek

bb.fi:                                            ; preds = %bb.fg
  %i.nd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #26
          to label %.body415 unwind label %bb.cb

bb.fj:                                            ; preds = %bb.fb
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.ne = load i64, ptr %i.af, align 8, !range !13, !noundef !7 ; 2 uses
  %.not.i421 = icmp eq i64 %i.ne, -2
  br i1 %.not.i421, label %bb.fk, label %bb.fm

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.nf = load ptr, ptr %.sroa.6.0..sroa_idx19, align 8, !alias.scope !149, !nonnull !7, !noundef !7
  %i.ng = load ptr, ptr %.sroa.4.0..sroa_idx18, align 8, !alias.scope !149, !nonnull !7, !noundef !7 ; 4 uses
  %i.nh = icmp eq ptr %i.ng, %i.nf
  br i1 %i.nh, label %_RNCNvMs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1f_6string6StringEE4peek0Cs4phXRVW1pDQ_9dwarfdump.exit.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 24
  store ptr %i.ni, ptr %.sroa.4.0..sroa_idx18, align 8, !alias.scope !149
  %.sroa.0.0.copyload7.i = load i64, ptr %i.ng, align 8, !noalias !150
  %.sroa.5.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx8.i, i64 16, i1 false), !noalias !151
  br label %_RNCNvMs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1f_6string6StringEE4peek0Cs4phXRVW1pDQ_9dwarfdump.exit.i

_RNCNvMs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1f_6string6StringEE4peek0Cs4phXRVW1pDQ_9dwarfdump.exit.i: ; preds = %bb.fl, %bb.fk
  %.sroa.0.0.i422 = phi i64 [ %.sroa.0.0.copyload7.i, %bb.fl ], [ -1, %bb.fk ] ; 3 uses
  store i64 %.sroa.0.0.i422, ptr %i.af, align 8, !alias.scope !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5132.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !146
  %i.nj = icmp ne i64 %.sroa.0.0.i422, -2
  call void @llvm.assume(i1 %i.nj)
  br label %bb.fm

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6map_orbNCINvMs_CsfcxKEGBgCs2_7getoptsNtB1C_7Options5parseINtNtNtNtB5_4iter8adapters4skip4SkipNtNtCsG258MDvU3F_3std3env4ArgsEEs1_0ECs4phXRVW1pDQ_9dwarfdump.exit.thread: ; preds = %bb.fm, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6map_orbNCINvMs_CsfcxKEGBgCs2_7getoptsNtB1C_7Options5parseINtNtNtNtB5_4iter8adapters4skip4SkipNtNtCsG258MDvU3F_3std3env4ArgsEEs1_0ECs4phXRVW1pDQ_9dwarfdump.exit, %bb.fb
  %i.nk = load i64, ptr %i.bj, align 8, !noundef !7 ; 2 uses
  %i.nl = icmp ult i64 %i.ki, %i.nk
  br i1 %i.nl, label %bb.fq, label %.invoke1414

bb.fm:                                            ; preds = %_RNCNvMs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1f_6string6StringEE4peek0Cs4phXRVW1pDQ_9dwarfdump.exit.i, %bb.fj
  %i.nm = phi i64 [ %.sroa.0.0.i422, %_RNCNvMs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1f_6string6StringEE4peek0Cs4phXRVW1pDQ_9dwarfdump.exit.i ], [ %i.ne, %bb.fj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %.not248 = icmp eq i64 %i.nm, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  br i1 %.not248, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6map_orbNCINvMs_CsfcxKEGBgCs2_7getoptsNtB1C_7Options5parseINtNtNtNtB5_4iter8adapters4skip4SkipNtNtCsG258MDvU3F_3std3env4ArgsEEs1_0ECs4phXRVW1pDQ_9dwarfdump.exit.thread, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %.val4.i = load i64, ptr %.sroa.gep, align 8, !alias.scope !152, !noundef !7 ; 2 uses
  %.not.i.i424 = icmp eq i64 %.val4.i, 0
  br i1 %.not.i.i424, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6map_orbNCINvMs_CsfcxKEGBgCs2_7getoptsNtB1C_7Options5parseINtNtNtNtB5_4iter8adapters4skip4SkipNtNtCsG258MDvU3F_3std3env4ArgsEEs1_0ECs4phXRVW1pDQ_9dwarfdump.exit.thread576, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6map_orbNCINvMs_CsfcxKEGBgCs2_7getoptsNtB1C_7Options5parseINtNtNtNtB5_4iter8adapters4skip4SkipNtNtCsG258MDvU3F_3std3env4ArgsEEs1_0ECs4phXRVW1pDQ_9dwarfdump.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6map_orbNCINvMs_CsfcxKEGBgCs2_7getoptsNtB1C_7Options5parseINtNtNtNtB5_4iter8adapters4skip4SkipNtNtCsG258MDvU3F_3std3env4ArgsEEs1_0ECs4phXRVW1pDQ_9dwarfdump.exit: ; preds = %bb.fn
  %.val.i425 = load ptr, ptr %.sroa.5132.0..sroa_idx, align 8, !alias.scope !152, !nonnull !7, !noundef !7
  %i.nn = load i8, ptr %.val.i425, align 1, !noalias !152, !noundef !7
  %i.no = icmp eq i8 %i.nn, 45
  %i.np = icmp ne i64 %.val4.i, 1
  %spec.select.i.i = and i1 %i.np, %i.no
  br i1 %spec.select.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6map_orbNCINvMs_CsfcxKEGBgCs2_7getoptsNtB1C_7Options5parseINtNtNtNtB5_4iter8adapters4skip4SkipNtNtCsG258MDvU3F_3std3env4ArgsEEs1_0ECs4phXRVW1pDQ_9dwarfdump.exit.thread, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6map_orbNCINvMs_CsfcxKEGBgCs2_7getoptsNtB1C_7Options5parseINtNtNtNtB5_4iter8adapters4skip4SkipNtNtCsG258MDvU3F_3std3env4ArgsEEs1_0ECs4phXRVW1pDQ_9dwarfdump.exit.thread576

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6map_orbNCINvMs_CsfcxKEGBgCs2_7getoptsNtB1C_7Options5parseINtNtNtNtB5_4iter8adapters4skip4SkipNtNtCsG258MDvU3F_3std3env4ArgsEEs1_0ECs4phXRVW1pDQ_9dwarfdump.exit.thread576: ; preds = %bb.fn, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6map_orbNCINvMs_CsfcxKEGBgCs2_7getoptsNtB1C_7Options5parseINtNtNtNtB5_4iter8adapters4skip4SkipNtNtCsG258MDvU3F_3std3env4ArgsEEs1_0ECs4phXRVW1pDQ_9dwarfdump.exit
  %i.nq = load i64, ptr %i.bj, align 8, !noundef !7 ; 2 uses
  %i.nr = icmp ult i64 %i.ki, %i.nq
  br i1 %i.nr, label %bb.fo, label %.invoke1414

bb.fo:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6map_orbNCINvMs_CsfcxKEGBgCs2_7getoptsNtB1C_7Options5parseINtNtNtNtB5_4iter8adapters4skip4SkipNtNtCsG258MDvU3F_3std3env4ArgsEEs1_0ECs4phXRVW1pDQ_9dwarfdump.exit.thread576
  %i.ns = load ptr, ptr %i.bk, align 8, !nonnull !7, !noundef !7
  %i.nt = getelementptr inbounds nuw [24 x i8], ptr %i.ns, i64 %i.ki
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4475.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5132.0..sroa_idx, i64 16, i1 false)
  store i64 -2, ptr %i.af, align 8
  store i64 %.sroa.020.0, ptr %i.k, align 8
  store i64 %i.nm, ptr %i.br, align 8
  invoke fastcc void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjNtCsfcxKEGBgCs2_7getopts6OptvalEE8push_mutCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.nt, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.k)
          to label %bb.fp unwind label %.loopexit.split-lp624.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ek

bb.fq:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6map_orbNCINvMs_CsfcxKEGBgCs2_7getoptsNtB1C_7Options5parseINtNtNtNtB5_4iter8adapters4skip4SkipNtNtCsG258MDvU3F_3std3env4ArgsEEs1_0ECs4phXRVW1pDQ_9dwarfdump.exit.thread
  %i.nu = load ptr, ptr %i.bk, align 8, !nonnull !7, !noundef !7
  %i.nv = getelementptr inbounds nuw [24 x i8], ptr %i.nu, i64 %i.ki ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %.sroa.020.0, ptr %i.l, align 8
  store i64 -1, ptr %i.bs, align 8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16 ; 2 uses
  %i.nx = load i64, ptr %i.nw, align 8, !alias.scope !153, !noundef !7 ; 3 uses
  %i.ny = load i64, ptr %i.nv, align 8, !range !10, !alias.scope !153, !noundef !7
  %i.nz = icmp eq i64 %i.nx, %i.ny
  br i1 %i.nz, label %bb.fr, label %bb.fu

bb.fr:                                            ; preds = %bb.fq
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjNtCsfcxKEGBgCs2_7getopts6OptvalEE8grow_oneCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nv)
          to label %bb.fu unwind label %bb.fs, !noalias !154

bb.fs:                                            ; preds = %bb.fr
  %i.oa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTjNtCsfcxKEGBgCs2_7getopts6OptvalEECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l) #26
          to label %.body415 unwind label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.ob = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

.invoke1414:                                      ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6map_orbNCINvMs_CsfcxKEGBgCs2_7getoptsNtB1C_7Options5parseINtNtNtNtB5_4iter8adapters4skip4SkipNtNtCsG258MDvU3F_3std3env4ArgsEEs1_0ECs4phXRVW1pDQ_9dwarfdump.exit.thread, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6map_orbNCINvMs_CsfcxKEGBgCs2_7getoptsNtB1C_7Options5parseINtNtNtNtB5_4iter8adapters4skip4SkipNtNtCsG258MDvU3F_3std3env4ArgsEEs1_0ECs4phXRVW1pDQ_9dwarfdump.exit.thread576, %bb.eq, %bb.dk
  %i.oc = phi i64 [ %i.nq, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6map_orbNCINvMs_CsfcxKEGBgCs2_7getoptsNtB1C_7Options5parseINtNtNtNtB5_4iter8adapters4skip4SkipNtNtCsG258MDvU3F_3std3env4ArgsEEs1_0ECs4phXRVW1pDQ_9dwarfdump.exit.thread576 ], [ %i.mb, %bb.eq ], [ %i.kk, %bb.dk ], [ %i.nk, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6map_orbNCINvMs_CsfcxKEGBgCs2_7getoptsNtB1C_7Options5parseINtNtNtNtB5_4iter8adapters4skip4SkipNtNtCsG258MDvU3F_3std3env4ArgsEEs1_0ECs4phXRVW1pDQ_9dwarfdump.exit.thread ]
  %i.od = phi ptr [ @16, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6map_orbNCINvMs_CsfcxKEGBgCs2_7getoptsNtB1C_7Options5parseINtNtNtNtB5_4iter8adapters4skip4SkipNtNtCsG258MDvU3F_3std3env4ArgsEEs1_0ECs4phXRVW1pDQ_9dwarfdump.exit.thread576 ], [ @14, %bb.eq ], [ @11, %bb.dk ], [ @17, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringE6map_orbNCINvMs_CsfcxKEGBgCs2_7getoptsNtB1C_7Options5parseINtNtNtNtB5_4iter8adapters4skip4SkipNtNtCsG258MDvU3F_3std3env4ArgsEEs1_0ECs4phXRVW1pDQ_9dwarfdump.exit.thread ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ki, i64 noundef %i.oc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.od) #28
          to label %.cont1415 unwind label %.loopexit.split-lp624.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont1415:                                        ; preds = %.invoke1414
  unreachable

bb.fu:                                            ; preds = %bb.fr, %bb.fq
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  %i.of = load ptr, ptr %i.oe, align 8, !alias.scope !153, !nonnull !7, !noundef !7
  %i.og = getelementptr inbounds nuw [32 x i8], ptr %i.of, i64 %i.nx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.og, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  %i.oh = add i64 %i.nx, 1
  store i64 %i.oh, ptr %i.nw, align 8, !alias.scope !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ek

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfcxKEGBgCs2_7getopts4NameECs4phXRVW1pDQ_9dwarfdump.exit414: ; preds = %bb.ek, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit.i409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.df

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs4phXRVW1pDQ_9dwarfdump.exit399: ; preds = %bb.df, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit.i394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4phXRVW1pDQ_9dwarfdump.exit.i431 unwind label %bb.fv

bb.fv:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs4phXRVW1pDQ_9dwarfdump.exit399
  %i.oi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body288.thread unwind label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.oj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4phXRVW1pDQ_9dwarfdump.exit.i431: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs4phXRVW1pDQ_9dwarfdump.exit399
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit436 unwind label %.body288.thread1180

bb.fx:                                            ; preds = %.body285
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfcxKEGBgCs2_7getopts4NameECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #26
          to label %.thread531 unwind label %bb.cb

bb.fy:                                            ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae)
          to label %bb.u unwind label %.loopexit.split-lp635

.thread531:                                       ; preds = %.body285, %bb.fx, %bb.aw, %.thread539
  %.pn263526 = phi { ptr, i32 } [ %i.ga, %bb.aw ], [ %lpad.thr_comm537, %.thread539 ], [ %.pn260.pn, %bb.fx ], [ %.pn260.pn, %.body285 ]
  %.sroa.0100.3525 = phi i8 [ 1, %bb.aw ], [ %.sroa.0100.4.ph, %.thread539 ], [ 1, %bb.fx ], [ 1, %.body285 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #26
          to label %.body288 unwind label %bb.cb

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecTjNtCsfcxKEGBgCs2_7getopts6OptvalEEENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtB1k_3OptEECs4phXRVW1pDQ_9dwarfdump.exit: ; preds = %.loopexit613
  %.sroa.0479.0.copyload = load ptr, ptr %i.e, align 8 ; 2 uses
  %.sroa.5481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5481.0.copyload = load ptr, ptr %.sroa.5481.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.6482.0.copyload = load i64, ptr %.sroa.6482.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.8483.0.copyload = load i64, ptr %.sroa.8483.0..sroa_idx, align 8 ; 2 uses
  %i.ok = icmp ult i64 %.sroa.6482.0.copyload, %.sroa.8483.0.copyload
  br i1 %i.ok, label %.lr.ph, label %.thread578

.lr.ph:                                           ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecTjNtCsfcxKEGBgCs2_7getopts6OptvalEEENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtB1k_3OptEECs4phXRVW1pDQ_9dwarfdump.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0479.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5481.0.copyload) ]
  br label %bb.fz

bb.fz:                                            ; preds = %.lr.ph, %bb.gl
  %.sroa.6482.0884 = phi i64 [ %.sroa.6482.0.copyload, %.lr.ph ], [ %i.ol, %bb.gl ] ; 3 uses
  %i.ol = add i64 %.sroa.6482.0884, 1             ; 2 uses
  %i.om = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0479.0.copyload, i64 %.sroa.6482.0884 ; 2 uses
  %i.on = getelementptr inbounds nuw [56 x i8], ptr %.sroa.5481.0.copyload, i64 %.sroa.6482.0884 ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 49
  %i.op = load i8, ptr %i.oo, align 1, !range !14, !noundef !7
  switch i8 %i.op, label %..thread583_crit_edge [
    i8 0, label %bb.gj
    i8 2, label %bb.gl
  ]

..thread583_crit_edge:                            ; preds = %bb.fz
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %.thread583

.thread578:                                       ; preds = %bb.gl, %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecTjNtCsfcxKEGBgCs2_7getopts6OptvalEEENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtB1k_3OptEECs4phXRVW1pDQ_9dwarfdump.exit
  br i1 %.sroa.029.0, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %.thread578
  %.val = load i64, ptr %i.av, align 8            ; 2 uses
  %i.oq = icmp ult i64 %.val, 384307168202282326
  call void @llvm.assume(i1 %i.oq)
  %.not.i442 = icmp ne i64 %.sroa.531.0, %.val
  %..i = zext i1 %.not.i442 to i64
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %.thread578
  %.sroa.02.0.i441 = phi i64 [ %..i, %bb.ga ], [ 0, %.thread578 ]
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.594.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.695.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  %.sroa.796.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.796.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  store i64 %.sroa.02.0.i441, ptr %0, align 8
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.531.0, ptr %.sroa.493.0..sroa_idx, align 8
  %i.or = trunc nuw i8 %.sroa.0100.2 to i1
  br i1 %i.or, label %bb.gc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1q_6string6StringEEECs4phXRVW1pDQ_9dwarfdump.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1q_6string6StringEEECs4phXRVW1pDQ_9dwarfdump.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECs4phXRVW1pDQ_9dwarfdump.exit.i, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.gi

bb.gc:                                            ; preds = %bb.gb
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECs4phXRVW1pDQ_9dwarfdump.exit.i unwind label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.os = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsexYYUdYSQU6_5alloc6string6StringEEECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.af) #26
          to label %.body463.thread unwind label %bb.gh

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECs4phXRVW1pDQ_9dwarfdump.exit.i: ; preds = %bb.gc
  %i.ot = load i64, ptr %i.af, align 8, !range !13, !alias.scope !155, !noundef !7
  %switch.i.i = icmp ugt i64 %i.ot, -3
  br i1 %switch.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1q_6string6StringEEECs4phXRVW1pDQ_9dwarfdump.exit, label %bb.ge

bb.ge:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECs4phXRVW1pDQ_9dwarfdump.exit.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i unwind label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.ou = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.af)
          to label %.body463.thread unwind label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.ov = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i: ; preds = %bb.ge
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.af)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1q_6string6StringEEECs4phXRVW1pDQ_9dwarfdump.exit

bb.gh:                                            ; preds = %bb.gd
  %i.ow = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.gi:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsfcxKEGBgCs2_7getopts3OptEECs4phXRVW1pDQ_9dwarfdump.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1q_6string6StringEEECs4phXRVW1pDQ_9dwarfdump.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  ret void

bb.gj:                                            ; preds = %bb.fz
  %i.ox = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %i.oy = load i64, ptr %i.ox, align 8, !noundef !7 ; 3 uses
  %i.oz = icmp ult i64 %i.oy, 288230376151711744
  call void @llvm.assume(i1 %i.oz)
  %i.pa = icmp eq i64 %i.oy, 0
  br i1 %i.pa, label %bb.gk, label %.thread583

bb.gk:                                            ; preds = %bb.gj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.pb = getelementptr inbounds nuw i8, ptr %i.on, i64 24
  invoke void @_RNvMs1_CsfcxKEGBgCs2_7getoptsNtB5_4Name9to_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pb)
          to label %bb.gp unwind label %.loopexit.split-lp635

bb.gl:                                            ; preds = %bb.fz, %.thread583
  %exitcond.not = icmp eq i64 %i.ol, %.sroa.8483.0.copyload
  br i1 %exitcond.not, label %.thread578, label %bb.fz

.thread583:                                       ; preds = %..thread583_crit_edge, %bb.gj
  %i.pc = phi i64 [ %.pre, %..thread583_crit_edge ], [ %i.oy, %bb.gj ] ; 2 uses
  %i.pd = icmp ult i64 %i.pc, 288230376151711744
  call void @llvm.assume(i1 %i.pd)
  %i.pe = icmp samesign ugt i64 %i.pc, 1
  br i1 %i.pe, label %bb.gm, label %bb.gl

bb.gm:                                            ; preds = %.thread583
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.pf = getelementptr inbounds nuw i8, ptr %i.on, i64 24
  invoke void @_RNvMs1_CsfcxKEGBgCs2_7getoptsNtB5_4Name9to_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pf)
          to label %bb.gn unwind label %.loopexit.split-lp635

bb.gn:                                            ; preds = %bb.gm
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.491.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.go

bb.go:                                            ; preds = %bb.gp, %bb.gn
  %.sink = phi i64 [ 2, %bb.gp ], [ 3, %bb.gn ]
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.pg, align 8
  store i64 2, ptr %0, align 8
  %i.ph = trunc nuw i8 %.sroa.0100.2 to i1
  br i1 %i.ph, label %bb.gq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1q_6string6StringEEECs4phXRVW1pDQ_9dwarfdump.exit455

bb.gp:                                            ; preds = %bb.gk
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.489.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.go

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1q_6string6StringEEECs4phXRVW1pDQ_9dwarfdump.exit455: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECs4phXRVW1pDQ_9dwarfdump.exit.i448, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i450, %bb.go
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.gw

bb.gq:                                            ; preds = %.critedge279, %bb.go
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECs4phXRVW1pDQ_9dwarfdump.exit.i448 unwind label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.pi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsexYYUdYSQU6_5alloc6string6StringEEECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.af) #26
          to label %.thread511 unwind label %bb.gv

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECs4phXRVW1pDQ_9dwarfdump.exit.i448: ; preds = %bb.gq
  %i.pj = load i64, ptr %i.af, align 8, !range !13, !alias.scope !156, !noundef !7
  %switch.i.i449 = icmp ugt i64 %i.pj, -3
  br i1 %switch.i.i449, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1q_6string6StringEEECs4phXRVW1pDQ_9dwarfdump.exit455, label %bb.gs

bb.gs:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECs4phXRVW1pDQ_9dwarfdump.exit.i448
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i450 unwind label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.pk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.af)
          to label %.thread511 unwind label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.pl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i450: ; preds = %bb.gs
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1q_6string6StringEEECs4phXRVW1pDQ_9dwarfdump.exit455 unwind label %.body288.thread593

bb.gv:                                            ; preds = %bb.gr
  %i.pm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.gw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1q_6string6StringEEECs4phXRVW1pDQ_9dwarfdump.exit455, %bb.g
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %bb.gy unwind label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.pn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.thread508 unwind label %bb.gz

bb.gy:                                            ; preds = %bb.gw
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs4phXRVW1pDQ_9dwarfdump.exit unwind label %bb.ha

bb.gz:                                            ; preds = %bb.gx
  %i.po = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

.body288.thread:                                  ; preds = %.body288.thread1180, %bb.o, %bb.fv, %bb.at, %.body288
  %.pn267592 = phi { ptr, i32 } [ %.pn267, %.body288 ], [ %i.oi, %bb.fv ], [ %i.fy, %bb.at ], [ %i.cs, %bb.o ], [ %lpad.loopexit636, %.body288.thread1180 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1q_6string6StringEEECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(56) %i.af) #26
          to label %.thread511 unwind label %bb.cb

bb.ha:                                            ; preds = %bb.gy
  %i.pp = landingpad { ptr, i32 }
          cleanup
  br label %.thread508

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs4phXRVW1pDQ_9dwarfdump.exit: ; preds = %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_TjNtCsfcxKEGBgCs2_7getopts6OptvalEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.hc unwind label %bb.hb

bb.hb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs4phXRVW1pDQ_9dwarfdump.exit
  %i.pq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecTjNtCsfcxKEGBgCs2_7getopts6OptvalEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.hg unwind label %bb.hd

bb.hc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs4phXRVW1pDQ_9dwarfdump.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecTjNtCsfcxKEGBgCs2_7getopts6OptvalEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_TjNtCsfcxKEGBgCs2_7getopts6OptvalEEEECs4phXRVW1pDQ_9dwarfdump.exit unwind label %bb.d

bb.hd:                                            ; preds = %bb.hb
  %i.pr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_TjNtCsfcxKEGBgCs2_7getopts6OptvalEEEECs4phXRVW1pDQ_9dwarfdump.exit: ; preds = %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsfcxKEGBgCs2_7getopts3OptENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsfcxKEGBgCs2_7getopts3OptEECs4phXRVW1pDQ_9dwarfdump.exit unwind label %bb.he

bb.he:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_TjNtCsfcxKEGBgCs2_7getopts6OptvalEEEECs4phXRVW1pDQ_9dwarfdump.exit
  %i.ps = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsfcxKEGBgCs2_7getopts3OptENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %.body463.thread unwind label %bb.hf

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsfcxKEGBgCs2_7getopts3OptEECs4phXRVW1pDQ_9dwarfdump.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_TjNtCsfcxKEGBgCs2_7getopts6OptvalEEEECs4phXRVW1pDQ_9dwarfdump.exit
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsfcxKEGBgCs2_7getopts3OptENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
  br label %bb.gi

bb.hf:                                            ; preds = %bb.he
  %i.pt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

.thread511:                                       ; preds = %.body288.thread593, %.body288, %.body288.thread, %bb.gt, %bb.gr
  %.pn269507 = phi { ptr, i32 } [ %i.pi, %bb.gr ], [ %lpad.thr_comm.split-lp538, %.body288.thread593 ], [ %i.pk, %bb.gt ], [ %.pn267592, %.body288.thread ], [ %.pn267, %.body288 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah) #26
          to label %.thread508 unwind label %bb.cb

.thread508:                                       ; preds = %bb.ha, %bb.gx, %.thread511
  %.pn271 = phi { ptr, i32 } [ %.pn269507, %.thread511 ], [ %i.pp, %bb.ha ], [ %i.pn, %bb.gx ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_TjNtCsfcxKEGBgCs2_7getopts6OptvalEEEECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai) #26
          to label %bb.hg unwind label %bb.cb

bb.hg:                                            ; preds = %.thread508, %bb.d, %bb.hb
  %.sroa.0111.2.ph = phi i1 [ false, %.thread508 ], [ %.sroa.0111.3, %bb.d ], [ false, %bb.hb ]
  %.pn273.ph = phi { ptr, i32 } [ %.pn271, %.thread508 ], [ %i.at, %bb.d ], [ %i.pq, %bb.hb ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsfcxKEGBgCs2_7getopts3OptEECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj) #26
          to label %bb.b unwind label %bb.cb

.body463.thread:                                  ; preds = %bb.gd, %bb.gf, %bb.hh, %bb.he, %bb.b
  %.pn275491 = phi { ptr, i32 } [ %i.ou, %bb.gf ], [ %i.ps, %bb.he ], [ %.pn273.ph, %bb.b ], [ %.pn275492, %bb.hh ], [ %i.os, %bb.gd ]
  resume { ptr, i32 } %.pn275491

bb.hh:                                            ; preds = %.body463.thread495, %bb.b
  %.pn275492 = phi { ptr, i32 } [ %i.ap, %.body463.thread495 ], [ %.pn273.ph, %bb.b ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2)
          to label %.body463.thread unwind label %bb.cb
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvNtCsC5c7nBIDK1_15crossbeam_utils6thread5scopeNCINvCs4phXRVW1pDQ_9dwarfdump15parallel_outputINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtB1E_3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3u_8relocate14RelocateReaderINtNtB3u_12endian_slice11EndianSliceNtNtB3w_9endianity13RunTimeEndianERNtBQ_13RelocationMapEjEENCINvBQ_9dump_infoB4c_B1v_E0E0uEBQ_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [64 x i8], align 8                ; 13 uses
  %i.j = alloca [8 x i8], align 8                 ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 9 uses
  %i.m = alloca [56 x i8], align 8                ; 9 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [40 x i8], align 8                ; 4 uses
  %i.s = alloca [40 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 9 uses
  %i.u = alloca [8 x i8], align 8                 ; 8 uses
  %i.v = alloca [16 x i8], align 8                ; 10 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.x = tail call noundef nonnull ptr @_RNvMs_NtNtCsC5c7nBIDK1_15crossbeam_utils4sync10wait_groupNtB4_9WaitGroup3new() ; 6 uses
  store ptr %i.x, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.y = invoke noundef nonnull ptr @_RNvXsY_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecIBx_IBH_INtNtCskKLDkoKarTP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEEEEENtNtB1X_7default7Default7defaultCs4phXRVW1pDQ_9dwarfdump()
          to label %bb.b unwind label %.thread    ; 4 uses

.thread:                                          ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.ab = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8 ; 0 uses
  %i.ac = atomicrmw add ptr %i.x, i64 1 monotonic, align 8
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.bk, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.y, ptr %i.v, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.ae, align 8
  %.sroa.013.sroa.0.0.copyload = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %.sroa.013.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.013.sroa.4.0.copyload = load ptr, ptr %.sroa.013.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.013.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.013.sroa.5.0.copyload = load ptr, ptr %.sroa.013.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.013.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.013.sroa.6.0.copyload = load ptr, ptr %.sroa.013.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %i.af = load i64, ptr %.sroa.013.sroa.0.0.copyload, align 8, !noalias !269, !noundef !7 ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i, label %.loopexit95, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.013.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.013.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.013.sroa.6.0.copyload) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.518.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.422.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %.sroa.523.sroa.3.0..sroa.523.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.523.sroa.4.0..sroa.523.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.523.sroa.5.0..sroa.523.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx3.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 5 uses
  %.sroa.9.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsC5c7nBIDK1_15crossbeam_utils6thread16ScopedJoinHandleuEECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.01.049.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.aq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsC5c7nBIDK1_15crossbeam_utils6thread16ScopedJoinHandleuEECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i.i ] ; 2 uses
  %i.aq = add nuw i64 %.sroa.01.049.i.i.i.i, 1    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !269
  %i.ar = load ptr, ptr %.sroa.013.sroa.4.0.copyload, align 8, !noalias !270, !nonnull !7, !align !16, !noundef !7
  %i.as = load ptr, ptr %.sroa.013.sroa.5.0.copyload, align 8, !noalias !270, !nonnull !7, !align !16, !noundef !7
  %i.at = load ptr, ptr %.sroa.013.sroa.6.0.copyload, align 8, !noalias !270, !nonnull !7, !align !16, !noundef !7
  call void @llvm.experimental.noalias.scope.decl(metadata !271)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !272
  store ptr %i.v, ptr %i.ag, align 8, !noalias !272
  store i64 0, ptr %i.m, align 8, !noalias !272
  store i64 -1, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !272
  store i8 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !273
  %i.au = invoke noundef nonnull ptr @_RNvXsY_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCskKLDkoKarTP_4core6option6OptionuEEENtNtB1z_7default7Default7defaultCs4phXRVW1pDQ_9dwarfdump()
          to label %bb.e unwind label %.split.thread.i.i.i.i.i.i, !noalias !274 ; 3 uses

.split.thread.i.i.i.i.i.i:                        ; preds = %bb.d
  %i.av = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %bb.ax

bb.e:                                             ; preds = %bb.d
  store ptr %i.au, ptr %i.l, align 8, !noalias !273
  %i.aw = atomicrmw add ptr %i.au, i64 1 monotonic, align 8, !noalias !274
  %i.ax = icmp slt i64 %i.aw, 0
  br i1 %i.ax, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = atomicrmw add ptr %i.y, i64 1 monotonic, align 8, !noalias !274
  %i.az = icmp slt i64 %i.ay, 0
  br i1 %i.az, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ba = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !274 ; 0 uses
  %i.bb = atomicrmw add ptr %i.x, i64 1 monotonic, align 8, !noalias !274
  %i.bc = icmp slt i64 %i.bb, 0
  br i1 %i.bc, label %bb.n, label %bb.j

bb.i:                                             ; preds = %bb.f
  call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !273
  store ptr %i.y, ptr %i.i, align 8, !noalias !273
  store ptr %i.x, ptr %i.ah, align 8, !noalias !273
  store ptr %i.ar, ptr %i.ai, align 8, !noalias !275
  store ptr %i.as, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !275
  store ptr %i.at, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !275
  store i64 %.sroa.01.049.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !275
  store i64 %i.af, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !275
  store ptr %i.au, ptr %i.aj, align 8, !noalias !273
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !276
  %i.bd = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 1401) 64, i64 noundef 8) #29, !noalias !276 ; 3 uses
  %i.be = icmp eq ptr %i.bd, null                 ; 2 uses
  br i1 %i.be, label %bb.k, label %bb.q, !prof !9

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #28
          to label %.noexc.i.i.i.i.i.i unwind label %bb.l, !noalias !274

.noexc.i.i.i.i.i.i:                               ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.bf = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs1_NtCsC5c7nBIDK1_15crossbeam_utils6threadNtBK_19ScopedThreadBuilder5spawnNCNCINvCs4phXRVW1pDQ_9dwarfdump15parallel_outputINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtB2O_3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4E_8relocate14RelocateReaderINtNtB4E_12endian_slice11EndianSliceNtNtB4G_9endianity13RunTimeEndianERNtB20_13RelocationMapEjEENCINvB20_9dump_infoB5m_B2F_E0E00uE0EB20_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.i) #26
          to label %.body37.i.i.i.i.i.i unwind label %bb.m, !noalias !274

bb.m:                                             ; preds = %bb.l
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !274
  unreachable

bb.n:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

.body37.i.i.i.i.i.i:                              ; preds = %bb.aw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECs4phXRVW1pDQ_9dwarfdump.exit51.i.i.i.i.i.i, %bb.aa, %.body.i.i.i.i.i.i, %bb.p, %bb.l
  %.pn.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bv, %.body.i.i.i.i.i.i ], [ %i.bf, %bb.l ], [ %i.bk, %bb.p ], [ %i.bv, %bb.aa ], [ %.pn.i.i.i.i.i.i, %bb.aw ], [ %.pn.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECs4phXRVW1pDQ_9dwarfdump.exit51.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !277)
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.bh = load ptr, ptr %i.l, align 8, !alias.scope !279, !noalias !273, !nonnull !7, !noundef !7
  %i.bi = atomicrmw add ptr %i.bh, i64 -1 release, align 8, !noalias !280
  %i.bj = icmp eq i64 %i.bi, 1
  br i1 %i.bj, label %bb.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionuEEEECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %.body37.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCskKLDkoKarTP_4core6option6OptionuEEE9drop_slowCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #30
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionuEEEECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i.i.i.i unwind label %bb.av, !noalias !274

bb.p:                                             ; preds = %bb.q
  %i.bk = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body37.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bd, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false), !noalias !274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !273
  invoke void @_RINvMNtNtCsG258MDvU3F_3std6thread7builderNtB3_7Builder15spawn_uncheckedINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtB1O_6marker4SendEL_EuECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.m, ptr noundef nonnull %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0)
          to label %bb.r unwind label %bb.p, !noalias !281

bb.r:                                             ; preds = %bb.q
  %i.bl = load ptr, ptr %i.h, align 8, !noalias !273, !noundef !7 ; 6 uses
  %i.bm = icmp eq ptr %i.bl, null
  %i.bn = load ptr, ptr %i.ak, align 8, !noalias !273 ; 3 uses
  br i1 %i.bm, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !273
  call void @llvm.experimental.noalias.scope.decl(metadata !282)
  call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %i.bo = load ptr, ptr %i.l, align 8, !alias.scope !284, !noalias !273, !nonnull !7, !noundef !7
  %i.bp = atomicrmw add ptr %i.bo, i64 -1 release, align 8, !noalias !285
  %i.bq = icmp eq i64 %i.bp, 1
  br i1 %i.bq, label %bb.t, label %.noexc44

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCskKLDkoKarTP_4core6option6OptionuEEE9drop_slowCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #30
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.r
  %.sroa.518.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.518.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !273
  %i.br = atomicrmw add ptr %i.bl, i64 1 monotonic, align 8, !noalias !274
  %i.bs = icmp slt i64 %i.br, 0
  br i1 %i.bs, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr %i.bl, ptr %i.g, align 8, !noalias !273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !273
  store i64 1, ptr %i.e, align 8, !noalias !273
  store i64 1, ptr %i.al, align 8, !noalias !273
  store i32 0, ptr %i.am, align 8, !noalias !273
  store i8 0, ptr %.sroa.422.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !273
  store ptr %i.bl, ptr %.sroa.523.sroa.3.0..sroa.523.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !273
  store ptr %i.bn, ptr %.sroa.523.sroa.4.0..sroa.523.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !273
  store i64 %.sroa.518.0.copyload.i.i.i.i.i.i, ptr %.sroa.523.sroa.5.0..sroa.523.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !273
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !286
  %i.bt = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 1401) 48, i64 noundef 8) #29, !noalias !286 ; 7 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.w, label %bb.ab, !prof !9

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #28
          to label %.noexc47.i.i.i.i.i.i unwind label %bb.x, !noalias !274

.noexc47.i.i.i.i.i.i:                             ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.bv = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1n_6thread11join_handle10JoinHandleuEEEEECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e) #26
          to label %.body.i.i.i.i.i.i unwind label %bb.y, !noalias !274

bb.y:                                             ; preds = %bb.x
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
