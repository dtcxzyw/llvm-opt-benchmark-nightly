Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker.elfshaker.5892cc60208a05dd-cgu.07?download=true
inline.NumInlined: 429
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtCs7BtpbLEd5q3_9elfshaker10list_files7get_app:bb.a

bb.t:                                             ; preds = %bb.r
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !376
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 368 ; 5 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder6os_str5OsStrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %bb.w unwind label %bb.v, !noalias !380

bb.v:                                             ; preds = %bb.u
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder6os_str5OsStrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %.body.i.i unwind label %bb.x, !noalias !380

bb.w:                                             ; preds = %bb.u
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder6os_str5OsStrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %bb.aa unwind label %bb.y, !noalias !380

bb.x:                                             ; preds = %bb.v
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !noalias !380
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.y, %bb.v
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bt, %bb.y ], [ %i.br, %bb.v ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !381
  br label %bb.s

bb.z:                                             ; preds = %bb.s
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !noalias !380
  unreachable

bb.aa:                                            ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.i, ptr noundef nonnull align 8 dereferenceable(640) %i.e, i64 640, i1 false), !alias.scope !382, !noalias !383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !373
  call void @llvm.experimental.noalias.scope.decl(metadata !384)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !385
  invoke void @_RNvXs2_NtNtCskfBPnJUU6aB_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCs3oUPovFnLWP_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 226)
          to label %_RNvXsh_NtNtCskfBPnJUU6aB_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCs7BtpbLEd5q3_9elfshaker.exit.i13 unwind label %bb.ac, !noalias !386

bb.ab:                                            ; preds = %.body.i15, %bb.ac
  %.pn.i12 = phi { ptr, i32 } [ %eh.lpad-body.i16, %.body.i15 ], [ %i.bv, %bb.ac ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder3arg3ArgECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(640) %i.i) #25
          to label %bb.ao unwind label %bb.aj, !noalias !387

bb.ac:                                            ; preds = %bb.aa
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_RNvXsh_NtNtCskfBPnJUU6aB_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCs7BtpbLEd5q3_9elfshaker.exit.i13: ; preds = %bb.aa
  %i.bw = load i64, ptr %i.b, align 8, !range !9, !noalias !385, !noundef !5 ; 3 uses
  %i.bx = icmp eq i64 %i.bw, -1
  br i1 %i.bx, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_RNvXsh_NtNtCskfBPnJUU6aB_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCs7BtpbLEd5q3_9elfshaker.exit.i13
  %.sroa.4.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i14, i64 16, i1 false), !noalias !385
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_RNvXsh_NtNtCskfBPnJUU6aB_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCs7BtpbLEd5q3_9elfshaker.exit.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !385
  %i.by = getelementptr inbounds nuw i8, ptr %i.i, i64 488 ; 6 uses
  %i.bz = load i64, ptr %i.by, align 8, !range !9, !alias.scope !388, !noundef !5
  %i.ca = icmp eq i64 %i.bz, -1
  br i1 %i.ca, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i.i18 unwind label %bb.ag, !noalias !387

bb.ag:                                            ; preds = %bb.af
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %.body.i15 unwind label %bb.ah, !noalias !387

bb.ah:                                            ; preds = %bb.ag
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !noalias !387
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i.i18: ; preds = %bb.af
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %bb.ak unwind label %bb.ai, !noalias !387

bb.ai:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i.i18
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i15

.body.i15:                                        ; preds = %bb.ai, %bb.ag
  %eh.lpad-body.i16 = phi { ptr, i32 } [ %i.cd, %bb.ai ], [ %i.cb, %bb.ag ]
  store i64 %i.bw, ptr %i.by, align 8, !alias.scope !384
  %.sroa.6.0..sroa_idx3.i17 = getelementptr inbounds nuw i8, ptr %i.i, i64 496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx3.i17, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i11, i64 16, i1 false), !noalias !389
  br label %bb.ab

bb.aj:                                            ; preds = %bb.ab
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !noalias !387
  unreachable

bb.ak:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i.i18, %bb.ae
  store i64 %i.bw, ptr %i.by, align 8, !alias.scope !384
  %.sroa.6.0..sroa_idx4.i19 = getelementptr inbounds nuw i8, ptr %i.i, i64 496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx4.i19, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i11, i64 16, i1 false), !noalias !389
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !390
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.a, ptr noundef nonnull align 8 dereferenceable(640) %i.i, i64 640, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !391)
  call void @llvm.experimental.noalias.scope.decl(metadata !392)
  invoke void @_RNvMNtNtCskfBPnJUU6aB_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.a)
          to label %bb.an unwind label %bb.al, !noalias !393

bb.al:                                            ; preds = %bb.ak
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(712) %i.n) #25
          to label %.body unwind label %bb.am, !noalias !393

bb.am:                                            ; preds = %bb.al
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !noalias !393
  unreachable

bb.an:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(712) %i.n, i64 712, i1 false), !alias.scope !394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

.body:                                            ; preds = %bb.al, %bb.n, %bb.aq, %bb.ao
  %.pn = phi { ptr, i32 } [ %eh.lpad-body10.ph, %bb.ao ], [ %i.bk, %bb.n ], [ %eh.lpad-body.ph, %bb.aq ], [ %i.cf, %bb.al ]
  resume { ptr, i32 } %.pn

bb.ao:                                            ; preds = %bb.q, %bb.s, %bb.ab
  %eh.lpad-body10.ph = phi { ptr, i32 } [ %i.bm, %bb.q ], [ %.pn.i.i, %bb.s ], [ %.pn.i12, %bb.ab ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(712) %i.n) #25
          to label %.body unwind label %bb.ap

bb.ap:                                            ; preds = %bb.aq, %bb.ao
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.aq:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.au, %bb.b ], [ %.pn.i, %bb.d ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(712) %i.m) #25
          to label %.body unwind label %bb.ap
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvNtCs7BtpbLEd5q3_9elfshaker7extract3run(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %i.d = alloca [56 x i8], align 8                ; 4 uses
  %i.e = alloca [56 x i8], align 8                ; 6 uses
  %i.f = alloca [56 x i8], align 8                ; 6 uses
  %i.g = alloca [56 x i8], align 8                ; 5 uses
  %i.h = alloca [56 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [48 x i8], align 8                ; 5 uses
  %i.q = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.650 = alloca [12 x i8], align 8          ; 6 uses
  %i.r = alloca [12 x i8], align 4                ; 7 uses
  %i.s = alloca [40 x i8], align 8                ; 8 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [48 x i8], align 8                ; 6 uses
  %i.v = alloca [64 x i8], align 8                ; 5 uses
  %.sroa.640 = alloca [56 x i8], align 8          ; 7 uses
  %i.w = alloca [64 x i8], align 8                ; 10 uses
  %i.x = alloca [56 x i8], align 8                ; 5 uses
  %.sroa.624 = alloca [48 x i8], align 8          ; 6 uses
  %i.y = alloca [56 x i8], align 8                ; 6 uses
  %i.z = alloca [40 x i8], align 8                ; 8 uses
  %i.aa = alloca [56 x i8], align 8               ; 12 uses
  %i.ab = alloca [48 x i8], align 8               ; 15 uses
  %i.ac = alloca [80 x i8], align 8               ; 7 uses
  %.sroa.617 = alloca [56 x i8], align 8          ; 7 uses
  %i.ad = alloca [80 x i8], align 8               ; 15 uses
  %i.ae = alloca [40 x i8], align 8               ; 8 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [8 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RINvMs0_NtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 8)
  %i.ah = call noundef align 8 ptr @_RINvMNtNtCskfBPnJUU6aB_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionRNtNtCs1xwejQucwHj_5alloc6string6StringEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 8, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.k) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.not114 = icmp eq ptr %i.ah, null
  br i1 %.not114, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !5, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RINvMs0_NtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 8)
  %i.am = call noundef align 8 ptr @_RINvMNtNtCskfBPnJUU6aB_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionRNtNtCs1xwejQucwHj_5alloc6string6StringEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 8, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.j) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not115 = icmp eq ptr %i.am, null
  br i1 %.not115, label %bb.e, label %bb.d, !prof !8

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.an = tail call noundef zeroext i1 @_RNvMNtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 5) ; 2 uses
  %i.ao = tail call noundef zeroext i1 @_RNvMNtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 6)
  %i.ap = tail call noundef zeroext i1 @_RNvMNtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RINvMs0_NtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 7)
  %i.aq = call noundef align 8 ptr @_RINvMNtNtCskfBPnJUU6aB_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionRNtNtCs1xwejQucwHj_5alloc6string6StringEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.i) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.not116 = icmp eq ptr %i.aq, null
  br i1 %.not116, label %bb.t, label %bb.f, !prof !8

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.au = load i64, ptr %i.at, align 8, !noundef !5 ; 2 uses
  switch i64 %i.au, label %thread-pre-split.i [
    i64 0, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.av = load i8, ptr %i.as, align 1, !alias.scope !417, !noundef !5 ; 2 uses
  switch i8 %i.av, label %bb.h [
    i8 43, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i8 45, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  ]

thread-pre-split.i:                               ; preds = %bb.f
  %.pr.i = load i8, ptr %i.as, align 1, !alias.scope !417
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split.i, %bb.g
  %i.aw = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.av, %bb.g ]
  %cond.i = icmp eq i8 %i.aw, 43                  ; 2 uses
  %i.ax = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.au, %i.ax        ; 10 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.0.0.idx.i ; 9 uses
  %i.ay = icmp samesign ult i64 %.sroa.15.0.i, 9
  br i1 %i.ay, label %.preheader.i, label %.preheader60.i.preheader

.preheader.i:                                     ; preds = %bb.h
  %.not5668.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5668.i, label %.loopexit.i, label %.lr.ph.i

.preheader60.i:                                   ; preds = %bb.k
  %.not55.i = icmp eq i64 %i.bc, 0
  br i1 %.not55.i, label %.loopexit.i, label %.preheader60.i.preheader

.loopexit.i:                                      ; preds = %.preheader60.i, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %.preheader.i
  %.sroa.045.1.i = phi i32 [ %i.do, %bb.s ], [ 0, %.preheader.i ], [ %i.bq, %bb.l ], [ %i.by, %bb.m ], [ %i.cf, %bb.n ], [ %i.cm, %bb.o ], [ %i.ct, %bb.p ], [ %i.da, %bb.q ], [ %i.dh, %bb.r ], [ %i.bm, %.preheader60.i ]
  %i.az = zext i32 %.sroa.045.1.i to i64
  %i.ba = shl nuw i64 %i.az, 32
  br label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit

.preheader60.i.preheader:                         ; preds = %bb.h, %.preheader60.i
  %.sroa.0.1.i209 = phi ptr [ %i.bb, %.preheader60.i ], [ %.sroa.0.0.i, %bb.h ] ; 2 uses
  %.sroa.15.1.i208 = phi i64 [ %i.bc, %.preheader60.i ], [ %.sroa.15.0.i, %bb.h ]
  %.sroa.045.0.i207 = phi i32 [ %i.bm, %.preheader60.i ], [ 0, %bb.h ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i209, i64 1
  %i.bc = add nsw i64 %.sroa.15.1.i208, -1        ; 2 uses
  %i.bd = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.i207, i32 10) ; 2 uses
  %i.be = extractvalue { i32, i1 } %i.bd, 0       ; 2 uses
  %i.bf = extractvalue { i32, i1 } %i.bd, 1
  %i.bg = load i8, ptr %.sroa.0.1.i209, align 1, !alias.scope !417, !noundef !5 ; 2 uses
  br i1 %i.bf, label %bb.j, label %bb.i, !prof !8

bb.i:                                             ; preds = %.preheader60.i.preheader
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add nsw i32 %i.bh, -48                  ; 2 uses
  %i.bj = icmp ult i32 %i.bi, 10
  br i1 %i.bj, label %bb.k, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.j:                                             ; preds = %.preheader60.i.preheader
  %i.bk = add i8 %i.bg, -48
  %i.bl = icmp ult i8 %i.bk, 10
  %spec.select.i = select i1 %i.bl, i64 513, i64 257
  br label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit

bb.k:                                             ; preds = %bb.i
  %i.bm = add i32 %i.bi, %i.be                    ; 3 uses
  %i.bn = icmp ult i32 %i.bm, %i.be
  br i1 %i.bn, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %.preheader60.i, !prof !8

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.bo = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !417, !noundef !5
  %i.bp = zext i8 %i.bo to i32
  %i.bq = add nsw i32 %i.bp, -48                  ; 3 uses
  %i.br = icmp ult i32 %i.bq, 10
  br i1 %i.br, label %bb.l, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.l:                                             ; preds = %.lr.ph.i
  %.not56.i = icmp eq i64 %.sroa.15.0.i, 1
  br i1 %.not56.i, label %.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !alias.scope !417, !noundef !5
  %i.bu = zext i8 %i.bt to i32
  %i.bv = add nsw i32 %i.bu, -48                  ; 2 uses
  %i.bw = icmp ult i32 %i.bv, 10
  br i1 %i.bw, label %bb.m, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.m:                                             ; preds = %.lr.ph.i.1
  %i.bx = mul nuw nsw i32 %i.bq, 10
  %i.by = add nuw nsw i32 %i.bv, %i.bx            ; 2 uses
  %.not56.i.1 = icmp eq i64 %.sroa.15.0.i, 2
  br i1 %.not56.i.1, label %.loopexit.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !417, !noundef !5
  %i.cb = zext i8 %i.ca to i32
  %i.cc = add nsw i32 %i.cb, -48                  ; 2 uses
  %i.cd = icmp ult i32 %i.cc, 10
  br i1 %i.cd, label %bb.n, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.n:                                             ; preds = %.lr.ph.i.2
  %i.ce = mul nuw nsw i32 %i.by, 10
  %i.cf = add nuw nsw i32 %i.cc, %i.ce            ; 2 uses
  %.not56.i.2 = icmp eq i64 %.sroa.15.0.i, 3
  br i1 %.not56.i.2, label %.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 3
  %i.ch = load i8, ptr %i.cg, align 1, !alias.scope !417, !noundef !5
  %i.ci = zext i8 %i.ch to i32
  %i.cj = add nsw i32 %i.ci, -48                  ; 2 uses
  %i.ck = icmp ult i32 %i.cj, 10
  br i1 %i.ck, label %bb.o, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.o:                                             ; preds = %.lr.ph.i.3
  %i.cl = mul nuw nsw i32 %i.cf, 10
  %i.cm = add nuw nsw i32 %i.cj, %i.cl            ; 2 uses
  %.not56.i.3 = icmp eq i64 %.sroa.15.0.i, 4
  br i1 %.not56.i.3, label %.loopexit.i, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 4
  %i.co = load i8, ptr %i.cn, align 1, !alias.scope !417, !noundef !5
  %i.cp = zext i8 %i.co to i32
  %i.cq = add nsw i32 %i.cp, -48                  ; 2 uses
  %i.cr = icmp ult i32 %i.cq, 10
  br i1 %i.cr, label %bb.p, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.p:                                             ; preds = %.lr.ph.i.4
  %i.cs = mul i32 %i.cm, 10
  %i.ct = add i32 %i.cq, %i.cs                    ; 2 uses
  %.not56.i.4 = icmp eq i64 %.sroa.15.0.i, 5
  br i1 %.not56.i.4, label %.loopexit.i, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %bb.p
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 5
  %i.cv = load i8, ptr %i.cu, align 1, !alias.scope !417, !noundef !5
  %i.cw = zext i8 %i.cv to i32
  %i.cx = add nsw i32 %i.cw, -48                  ; 2 uses
  %i.cy = icmp ult i32 %i.cx, 10
  br i1 %i.cy, label %bb.q, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.q:                                             ; preds = %.lr.ph.i.5
  %i.cz = mul i32 %i.ct, 10
  %i.da = add i32 %i.cx, %i.cz                    ; 2 uses
  %.not56.i.5 = icmp eq i64 %.sroa.15.0.i, 6
  br i1 %.not56.i.5, label %.loopexit.i, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %bb.q
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 6
  %i.dc = load i8, ptr %i.db, align 1, !alias.scope !417, !noundef !5
  %i.dd = zext i8 %i.dc to i32
  %i.de = add nsw i32 %i.dd, -48                  ; 2 uses
  %i.df = icmp ult i32 %i.de, 10
  br i1 %i.df, label %bb.r, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.r:                                             ; preds = %.lr.ph.i.6
  %i.dg = mul i32 %i.da, 10
  %i.dh = add i32 %i.de, %i.dg                    ; 2 uses
  %.not56.i.6 = icmp eq i64 %.sroa.15.0.i, 7
  br i1 %.not56.i.6, label %.loopexit.i, label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %bb.r
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 7
  %i.dj = load i8, ptr %i.di, align 1, !alias.scope !417, !noundef !5
  %i.dk = zext i8 %i.dj to i32
  %i.dl = add nsw i32 %i.dk, -48                  ; 2 uses
  %i.dm = icmp ult i32 %i.dl, 10
  br i1 %i.dm, label %bb.s, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.s:                                             ; preds = %.lr.ph.i.7
  %i.dn = mul i32 %i.dh, 10
  %i.do = add i32 %i.dl, %i.dn
  br label %.loopexit.i

_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit: ; preds = %.loopexit.i, %bb.j
  %.sroa.8.0.insert.insert.i = phi i64 [ %spec.select.i, %bb.j ], [ %i.ba, %.loopexit.i ] ; 3 uses
  %i.dp = trunc i64 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.dp, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %bb.v

bb.t:                                             ; preds = %bb.d
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #29
  unreachable

_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread: ; preds = %bb.k, %bb.i, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %.lr.ph.i.7, %bb.f, %bb.g, %bb.g, %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit
  %.sroa.8.0.insert.insert.i156 = phi i64 [ %.sroa.8.0.insert.insert.i, %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit ], [ 257, %bb.g ], [ 257, %.lr.ph.i ], [ 257, %bb.g ], [ 1, %bb.f ], [ 257, %.lr.ph.i.7 ], [ 257, %.lr.ph.i.6 ], [ 257, %.lr.ph.i.5 ], [ 257, %.lr.ph.i.4 ], [ 257, %.lr.ph.i.3 ], [ 257, %.lr.ph.i.2 ], [ 257, %.lr.ph.i.1 ], [ 257, %bb.i ], [ 513, %bb.k ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.dq = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 57) 1, i64 noundef range(i64 1, 9) 1) #28 ; 3 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.u, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit, !prof !8

bb.u:                                             ; preds = %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #27
  unreachable

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  %.sroa.4105.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i156, 8
  %.sroa.4105.0.extract.trunc = trunc i64 %.sroa.4105.0.extract.shift to i8
  store i8 %.sroa.4105.0.extract.trunc, ptr %i.dq, align 1
  br label %bb.cq

bb.v:                                             ; preds = %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit
  %.sroa.6107.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i, 32 ; 2 uses
  %i.ds = icmp eq i64 %.sroa.6107.0.extract.shift, 0
  br i1 %i.ds, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.dt = tail call noundef i64 @_RNvNtCs2iUYy9yOIgw_8num_cpus5linux21get_num_physical_cpus() ; 2 uses
  store i64 %i.dt, ptr %i.ag, align 8
  %i.du = load atomic i64, ptr @_RNvCse7cAXHj51Pq_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.dv = icmp ult i64 %i.du, 6
  tail call void @llvm.assume(i1 %i.dv)
  %i.dw = icmp samesign ugt i64 %i.du, 2
  br i1 %i.dw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.ag, ptr %i.af, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.464.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr @39, ptr %i.ae, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 18, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr @39, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i64 18, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store ptr @38, ptr %i.ea, align 8
  call void @_RINvNtCse7cAXHj51Pq_3log13___private_api3loguNtB2_12GlobalLoggerECs7BtpbLEd5q3_9elfshaker(ptr noundef nonnull @37, ptr noundef nonnull %i.af, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %.pre = load i64, ptr %i.ag, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.eb = phi i64 [ %i.dt, %bb.w ], [ %.pre, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.ec = and i64 %i.eb, 4294967295
  br label %bb.z

bb.z:                                             ; preds = %bb.v, %bb.y
  %.sroa.013.0.in = phi i64 [ %i.ec, %bb.y ], [ %.sroa.6107.0.extract.shift, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.617)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @_RNvNtCs7BtpbLEd5q3_9elfshaker5utils18open_repo_from_cwd(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef %i.al)
  %i.ed = load i64, ptr %i.ac, align 8, !range !9, !noundef !5 ; 2 uses
  %i.ee = icmp eq i64 %i.ed, -1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.617, ptr noundef nonnull align 8 dereferenceable(56) %i.ef, i64 56, i1 false)
  br i1 %i.ee, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.617, i64 56, i1 false)
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !418
  %i.eg = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 57) 56, i64 noundef range(i64 1, 9) 8) #28, !noalias !418 ; 3 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %bb.ab, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit141, !prof !8

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #27
          to label %.noexc unwind label %bb.ac

.noexc:                                           ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h) #25
          to label %common.resume unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

common.resume:                                    ; preds = %.body132, %bb.ac
  %common.resume.op = phi { ptr, i32 } [ %i.ei, %bb.ac ], [ %.pn127, %.body132 ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit141: ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.eg, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.617, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.617)
  br label %bb.cw

bb.ae:                                            ; preds = %bb.z
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.567.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.617, i64 56, i1 false)
  store i64 %i.ed, ptr %i.ad, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.617)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !nonnull !5, !noundef !5
  %i.em = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !noundef !5
  invoke void @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository13find_snapshot(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.aa, ptr noundef nonnull align 8 %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.el, i64 noundef %i.en)
          to label %bb.ag unwind label %bb.af

.body132:                                         ; preds = %bb.bh, %bb.cx, %.body, %bb.af
  %.pn127 = phi { ptr, i32 } [ %i.eo, %bb.af ], [ %eh.lpad-body133.ph, %bb.cx ], [ %.pn125, %.body ], [ %i.fs, %bb.bh ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo10repository10RepositoryECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(80) %i.ad) #25
          to label %common.resume unwind label %bb.ca

bb.af:                                            ; preds = %bb.be, %bb.bd, %bb.cs, %bb.co, %bb.ae
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %.body132

bb.ag:                                            ; preds = %bb.ae
  %i.ep = load i64, ptr %i.aa, align 8, !range !16, !noundef !5 ; 4 uses
  %.not117 = icmp eq i64 %i.ep, -2
  br i1 %.not117, label %bb.bj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %1 = icmp ne i64 %i.ep, -9223372036854775807
  call void @llvm.assume(i1 %1)
  %i.eq = icmp eq i64 %i.ep, -9223372036854775805
  br i1 %i.eq, label %bb.ai, label %bb.bf

bb.ai:                                            ; preds = %bb.ah
  %i.er = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !range !17, !noundef !5 ; 2 uses
  %i.et = icmp ne i64 %i.es, -9223372036854775804
  call void @llvm.assume(i1 %i.et)
  %i.eu = icmp eq i64 %i.es, -9223372036854775805
  br i1 %i.eu, label %bb.ak, label %bb.bf

bb.aj:                                            ; preds = %bb.as, %bb.am, %bb.al
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.ak:                                            ; preds = %bb.ai
  %i.ew = load atomic i64, ptr @_RNvCse7cAXHj51Pq_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ex = icmp ult i64 %i.ew, 6
  call void @llvm.assume(i1 %i.ex)
  %i.ey = icmp samesign ugt i64 %i.ew, 2
  br i1 %i.ey, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr @39, ptr %i.z, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 18, ptr %i.ez, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr @39, ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 18, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr @41, ptr %i.fc, align 8
  invoke void @_RINvNtCse7cAXHj51Pq_3log13___private_api3loguNtB2_12GlobalLoggerECs7BtpbLEd5q3_9elfshaker(ptr noundef nonnull @40, ptr noundef nonnull inttoptr (i64 103 to ptr), i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.z)
          to label %bb.an unwind label %bb.aj

bb.am:                                            ; preds = %bb.ak, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  invoke void @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository14update_remotes(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.y, ptr noundef nonnull align 8 %i.ad)
          to label %bb.ao unwind label %bb.aj

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.am

bb.ao:                                            ; preds = %bb.am
  %i.fd = load i64, ptr %i.y, align 8, !range !16, !noundef !5
  %.not119 = icmp eq i64 %i.fd, -2
  br i1 %.not119, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %i.y, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %2 = invoke fastcc noundef ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 56)
          to label %bb.bb unwind label %bb.aq, !noalias !419 ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g) #25
          to label %bb.cx unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.as:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.624)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.fg = load ptr, ptr %i.ek, align 8, !nonnull !5, !noundef !5
  %i.fh = load i64, ptr %i.em, align 8, !noundef !5
  invoke void @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository13find_snapshot(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.x, ptr noundef nonnull align 8 %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fg, i64 noundef %i.fh)
          to label %bb.at unwind label %bb.aj

bb.at:                                            ; preds = %bb.as
  %i.fi = load i64, ptr %i.x, align 8, !range !16, !noundef !5 ; 2 uses
  %.not120 = icmp eq i64 %i.fi, -2
  %i.fj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.624, ptr noundef nonnull align 8 dereferenceable(48) %i.fj, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br i1 %.not120, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.427.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.624, i64 48, i1 false)
  store i64 %i.fi, ptr %i.f, align 8
  %i.fk = invoke fastcc noundef ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 56)
          to label %bb.ba unwind label %bb.av, !noalias !420 ; 2 uses

bb.av:                                            ; preds = %bb.au
  %i.fl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f) #25
          to label %bb.cx unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ax:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.624, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.624)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdNtNtB11_5error5ErrorEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(56) %i.aa)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.bj, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.640)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke void @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository9read_head(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.v, ptr noundef nonnull align 8 %i.ad)
          to label %bb.bk unwind label %bb.az

.body:                                            ; preds = %bb.bt, %bb.ci, %bb.cc, %bb.bn, %bb.az
  %.pn125 = phi { ptr, i32 } [ %i.hl, %bb.ci ], [ %i.fz, %bb.bn ], [ %i.he, %bb.cc ], [ %i.fn, %bb.az ], [ %i.gu, %bb.bt ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ab) #25
          to label %.body132 unwind label %bb.ca

bb.az:                                            ; preds = %bb.bw, %bb.cb, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.ce, %.thread161, %_RNvXso_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB5_10SnapshotIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread, %bb.ax, %bb.ay
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ba:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fk, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.624)
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bc

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdNtNtB11_5error5ErrorEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.bd, %bb.be, %bb.cv
  %.sroa.0.1 = phi ptr [ %i.fq, %bb.cv ], [ %.sroa.0.0, %bb.be ], [ %.sroa.0.0, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.cu

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %.sroa.0.0 = phi ptr [ %2, %bb.bb ], [ %i.fk, %bb.ba ] ; 2 uses
  %i.fo = load i64, ptr %i.aa, align 8, !range !16, !alias.scope !421, !noundef !5
  %i.fp = icmp eq i64 %i.fo, -2
  br i1 %i.fp, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.er)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdNtNtB11_5error5ErrorEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.af

bb.be:                                            ; preds = %bb.bc
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.aa)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdNtNtB11_5error5ErrorEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.af

bb.bf:                                            ; preds = %bb.ai, %bb.ah
  %.sroa.630.0..sroa_idx157 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.437.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.630.0..sroa_idx157, i64 48, i1 false)
  store i64 %i.ep, ptr %i.e, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !422
  %i.fq = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 57) 56, i64 noundef range(i64 1, 9) 8) #28, !noalias !422 ; 3 uses
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %bb.bg, label %bb.cv, !prof !8

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #27
          to label %.noexc145 unwind label %bb.bh

.noexc145:                                        ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %bb.bg
  %i.fs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e) #25
          to label %.body132 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.bj:                                            ; preds = %bb.ag
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.630.0..sroa_idx, i64 48, i1 false)
  br label %bb.ay

bb.bk:                                            ; preds = %bb.ay
  %i.fu = load i64, ptr %i.v, align 8, !range !13, !noundef !5 ; 3 uses
  %i.fv = icmp eq i64 %i.fu, -2
  %i.fw = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.640, ptr noundef nonnull align 8 dereferenceable(56) %i.fw, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br i1 %i.fv, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.640, i64 56, i1 false)
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !423
  %i.fx = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 57) 56, i64 noundef range(i64 1, 9) 8) #28, !noalias !423 ; 3 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %bb.bm, label %bb.ct, !prof !8

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #27
          to label %.noexc147 unwind label %bb.bn

.noexc147:                                        ; preds = %bb.bm
  unreachable

bb.bn:                                            ; preds = %bb.bm
  %i.fz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.d) #25
          to label %.body unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.bp:                                            ; preds = %bb.bk
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.443.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.640, i64 56, i1 false)
  store i64 %i.fu, ptr %i.w, align 8
  %.not121 = icmp eq i64 %i.fu, -1
  br i1 %.not121, label %.thread161, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.experimental.noalias.scope.decl(metadata !424)
  call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.gc = load i64, ptr %i.gb, align 8, !alias.scope !424, !noundef !5 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ge = load i64, ptr %i.gd, align 8, !alias.scope !425, !noundef !5
  %i.gf = icmp eq i64 %i.gc, %i.ge
  br i1 %i.gf, label %bb.br, label %_RNvXso_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB5_10SnapshotIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread

bb.br:                                            ; preds = %bb.bq
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !alias.scope !425, !nonnull !5, !noundef !5
  %i.gi = load ptr, ptr %.sroa.443.0..sroa_idx, align 8, !alias.scope !424, !nonnull !5, !noundef !5
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.gi, ptr nonnull %i.gh, i64 %i.gc), !noalias !426
  %i.gj = icmp eq i32 %bcmp.i, 0
  br i1 %i.gj, label %bb.bs, label %_RNvXso_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB5_10SnapshotIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread

bb.bs:                                            ; preds = %bb.br
  %i.gk = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.gl = load i64, ptr %i.gk, align 8, !alias.scope !424, !noundef !5 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !425, !noundef !5
  %i.go = icmp eq i64 %i.gl, %i.gn
  br i1 %i.go, label %_RNvXso_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB5_10SnapshotIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit, label %_RNvXso_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB5_10SnapshotIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread

_RNvXso_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB5_10SnapshotIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.bs
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.gq = load ptr, ptr %i.gp, align 8, !alias.scope !425, !nonnull !5, !noundef !5
  %i.gr = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.gs = load ptr, ptr %i.gr, align 8, !alias.scope !424, !nonnull !5, !noundef !5
  %bcmp2.i = call i32 @bcmp(ptr nonnull %i.gs, ptr nonnull %i.gq, i64 %i.gl), !noalias !426
  %i.gt = icmp ne i32 %bcmp2.i, 0
  %brmerge = or i1 %i.an, %i.gt
  br i1 %brmerge, label %_RNvXso_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB5_10SnapshotIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread, label %bb.bu

bb.bt:                                            ; preds = %bb.bv
  %i.gu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.u) #25
          to label %.body unwind label %bb.ca

bb.bu:                                            ; preds = %_RNvXso_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB5_10SnapshotIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 48, i1 false)
  %i.gv = load atomic i64, ptr @_RNvCse7cAXHj51Pq_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.gw = icmp ult i64 %i.gv, 6
  call void @llvm.assume(i1 %i.gw)
  %i.gx = icmp samesign ugt i64 %i.gv, 1
  br i1 %i.gx, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.u, ptr %i.t, align 8
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs5_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB5_10SnapshotIdNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.481.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr @39, ptr %i.s, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 18, ptr %i.gy, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr @39, ptr %i.gz, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 18, ptr %i.ha, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr @43, ptr %i.hb, align 8
  invoke void @_RINvNtCse7cAXHj51Pq_3log13___private_api3loguNtB2_12GlobalLoggerECs7BtpbLEd5q3_9elfshaker(ptr noundef nonnull @42, ptr noundef nonnull %i.t, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.s)
          to label %bb.bx unwind label %bb.bt

bb.bw:                                            ; preds = %bb.bu, %bb.bx
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.u)
          to label %bb.by unwind label %bb.az

bb.bx:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.bw

bb.by:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.ct, %bb.by
  %.sroa.0.2 = phi ptr [ %i.fx, %bb.ct ], [ null, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.640)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.cs

bb.ca:                                            ; preds = %bb.cx, %bb.bt, %.body, %.body132
  %i.hc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RNvXso_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB5_10SnapshotIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.bs, %bb.bq, %bb.br, %_RNvXso_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB5_10SnapshotIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.w)
          to label %.thread161 unwind label %bb.az

.thread161:                                       ; preds = %bb.bp, %_RNvXso_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB5_10SnapshotIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.640)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  invoke void @_RINvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB6_10Repository21set_progress_reporterNCNvNtCs7BtpbLEd5q3_9elfshaker7extract3run0EB1z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.ad)
          to label %bb.cb unwind label %bb.az

bb.cb:                                            ; preds = %.thread161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.650)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !427
  invoke void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ab)
          to label %.noexc150 unwind label %bb.az

.noexc150:                                        ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !427
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  invoke void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hd)
          to label %bb.ce unwind label %bb.cc, !noalias !428

bb.cc:                                            ; preds = %.noexc150
  %i.he = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #25
          to label %.body unwind label %bb.cd, !noalias !428

bb.cd:                                            ; preds = %bb.cc
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !noalias !428
  unreachable

bb.ce:                                            ; preds = %.noexc150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !429
  %i.hg = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hg, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !427
  %.sroa.6112.0.insert.shift = select i1 %i.ap, i64 281474976710656, i64 0
  %.sroa.5111.0.insert.shift = select i1 %i.an, i64 1099511627776, i64 0
  %.sroa.4110.0.insert.shift = select i1 %i.ao, i64 4294967296, i64 0
  %.sroa.5111.0.insert.insert = or disjoint i64 %.sroa.4110.0.insert.shift, %.sroa.5111.0.insert.shift
  %.sroa.4110.0.insert.insert = or disjoint i64 %.sroa.5111.0.insert.insert, %.sroa.6112.0.insert.shift
  %.sroa.0109.0.insert.insert = or disjoint i64 %.sroa.4110.0.insert.insert, %.sroa.013.0.in
  invoke void @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository16extract_snapshot(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.ad, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.p, i64 %.sroa.0109.0.insert.insert)
          to label %bb.cf unwind label %bb.az

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.hh = load i64, ptr %i.q, align 8, !range !16, !noundef !5 ; 2 uses
  %.not124 = icmp eq i64 %i.hh, -2
  %i.hi = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.650, ptr noundef nonnull align 8 dereferenceable(12) %i.hi, i64 12, i1 false)
  br i1 %.not124, label %bb.ck, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.556.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.587.0..sroa_idx, i64 36, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.455.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.650, i64 12, i1 false)
  store i64 %i.hh, ptr %i.c, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !430
  %i.hj = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 57) 56, i64 noundef range(i64 1, 9) 8) #28, !noalias !430 ; 3 uses
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %bb.ch, label %bb.cr, !prof !8

bb.ch:                                            ; preds = %bb.cg
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #27
          to label %.noexc153 unwind label %bb.ci

.noexc153:                                        ; preds = %bb.ch
  unreachable

bb.ci:                                            ; preds = %bb.ch
  %i.hl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c) #25
          to label %.body unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ck:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.r, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.650, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.650)
  %i.hn = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.hn, ptr %i.o, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.491.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio7__eprint(ptr noundef nonnull @44, ptr noundef nonnull %i.o)
          to label %bb.cl unwind label %bb.az

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.ho, ptr %i.n, align 8
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.495.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio7__eprint(ptr noundef nonnull @45, ptr noundef nonnull %i.n)
          to label %bb.cm unwind label %bb.az

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.r, ptr %i.m, align 8
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.499.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio7__eprint(ptr noundef nonnull @46, ptr noundef nonnull %i.m)
          to label %bb.cn unwind label %bb.az

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.ab, ptr %i.l, align 8
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs5_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB5_10SnapshotIdNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.4103.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio7__eprint(ptr noundef nonnull @47, ptr noundef nonnull %i.l)
          to label %bb.co unwind label %bb.az

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ab)
          to label %bb.cp unwind label %bb.af

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo10repository10RepositoryECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(80) %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.cq

bb.cq:                                            ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit, %bb.cw, %bb.cp
  %.sroa.10.3 = phi ptr [ @49, %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit ], [ @9, %bb.cw ], [ undef, %bb.cp ]
  %.sroa.0.3 = phi ptr [ %i.dq, %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit ], [ %.sroa.0.6, %bb.cw ], [ null, %bb.cp ]
  %i.hp = insertvalue { ptr, ptr } poison, ptr %.sroa.0.3, 0
  %i.hq = insertvalue { ptr, ptr } %i.hp, ptr %.sroa.10.3, 1
  ret { ptr, ptr } %i.hq

bb.cr:                                            ; preds = %bb.cg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.hj, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.650)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.bz
  %.sroa.0.4 = phi ptr [ %.sroa.0.2, %bb.bz ], [ %i.hj, %bb.cr ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ab)
          to label %bb.cu unwind label %bb.af

bb.ct:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.640, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.bz

bb.cu:                                            ; preds = %bb.cs, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdNtNtB11_5error5ErrorEECs7BtpbLEd5q3_9elfshaker.exit
  %.sroa.0.5 = phi ptr [ %.sroa.0.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdNtNtB11_5error5ErrorEECs7BtpbLEd5q3_9elfshaker.exit ], [ %.sroa.0.4, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo10repository10RepositoryECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(80) %i.ad)
  br label %bb.cw

bb.cv:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fq, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdNtNtB11_5error5ErrorEECs7BtpbLEd5q3_9elfshaker.exit

bb.cw:                                            ; preds = %bb.cu, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit141
  %.sroa.0.6 = phi ptr [ %i.eg, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit141 ], [ %.sroa.0.5, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.cq

bb.cx:                                            ; preds = %bb.aj, %bb.aq, %bb.av
  %eh.lpad-body133.ph = phi { ptr, i32 } [ %i.fe, %bb.aq ], [ %i.ev, %bb.aj ], [ %i.fl, %bb.av ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdNtNtB11_5error5ErrorEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(56) %i.aa) #25
          to label %.body132 unwind label %bb.ca
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCs7BtpbLEd5q3_9elfshaker7extract7get_app(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [640 x i8], align 8               ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [640 x i8], align 8               ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i59 = alloca [16 x i8], align 8        ; 5 uses
  %i.f = alloca [640 x i8], align 8               ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i43 = alloca [16 x i8], align 8        ; 5 uses
  %i.h = alloca [640 x i8], align 8               ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i27 = alloca [16 x i8], align 8        ; 5 uses
  %i.j = alloca [640 x i8], align 8               ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i11 = alloca [16 x i8], align 8        ; 5 uses
  %i.l = alloca [640 x i8], align 8               ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i = alloca [16 x i8], align 8          ; 5 uses
  %i.n = alloca [640 x i8], align 8               ; 6 uses
  %i.o = alloca [640 x i8], align 8               ; 11 uses
  %i.p = alloca [640 x i8], align 8               ; 6 uses
  %i.q = alloca [640 x i8], align 8               ; 9 uses
  %i.r = alloca [640 x i8], align 8               ; 6 uses
  %i.s = alloca [640 x i8], align 8               ; 9 uses
  %i.t = alloca [640 x i8], align 8               ; 6 uses
  %i.u = alloca [640 x i8], align 8               ; 9 uses
  %i.v = alloca [640 x i8], align 8               ; 5 uses
  %i.w = alloca [640 x i8], align 8               ; 8 uses
  %i.x = alloca [712 x i8], align 8               ; 54 uses
  %i.y = alloca [712 x i8], align 8               ; 7 uses
  %i.z = alloca [712 x i8], align 8               ; 7 uses
  %i.aa = alloca [712 x i8], align 8              ; 7 uses
  %i.ab = alloca [712 x i8], align 8              ; 7 uses
  %i.ac = alloca [712 x i8], align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 560
  store ptr @50, ptr %i.ad, align 8, !alias.scope !529
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 568
  store i64 7, ptr %i.ae, align 8, !alias.scope !529
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 576
  store ptr null, ptr %i.af, align 8, !alias.scope !529
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 696
  store i32 -1, ptr %i.ag, align 8, !alias.scope !529
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 272
  store i64 -1, ptr %i.ah, align 8, !alias.scope !529
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 296
  store i64 -1, ptr %i.ai, align 8, !alias.scope !529
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 592
  store ptr null, ptr %i.aj, align 8, !alias.scope !529
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 608
  store ptr null, ptr %i.ak, align 8, !alias.scope !529
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 624
  store ptr null, ptr %i.al, align 8, !alias.scope !529
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 320
  store i64 -1, ptr %i.am, align 8, !alias.scope !529
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 344
  store i64 -1, ptr %i.an, align 8, !alias.scope !529
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 368
  store i64 -1, ptr %i.ao, align 8, !alias.scope !529
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 392
  store i64 -1, ptr %i.ap, align 8, !alias.scope !529
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 416
  store i64 -1, ptr %i.aq, align 8, !alias.scope !529
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 440
  store i64 -1, ptr %i.ar, align 8, !alias.scope !529
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store i64 0, ptr %i.as, align 8, !alias.scope !529
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !529
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !529
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.424.0..sroa_idx.i, align 8, !alias.scope !529
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.525.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !529
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.427.0..sroa_idx.i, align 8, !alias.scope !529
  %.sroa.528.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  store i64 0, ptr %.sroa.528.0..sroa_idx.i, align 8, !alias.scope !529
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 464
  store i64 -1, ptr %i.at, align 8, !alias.scope !529
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 488
  store i64 -1, ptr %i.au, align 8, !alias.scope !529
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 512
  store i64 -1, ptr %i.av, align 8, !alias.scope !529
  store i64 0, ptr %i.x, align 8, !alias.scope !529
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 536
  store i64 -1, ptr %i.aw, align 8, !alias.scope !529
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 700
  store i32 0, ptr %i.ax, align 4, !alias.scope !529
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 704
  store i32 0, ptr %i.ay, align 8, !alias.scope !529
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  store i64 0, ptr %i.az, align 8, !alias.scope !529
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.441.0..sroa_idx.i, align 8, !alias.scope !529
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 144
  %.sroa.643.sroa.4.0..sroa.643.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.542.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !529
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.643.sroa.4.0..sroa.643.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !529
  %.sroa.643.sroa.5.0..sroa.643.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 168
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.643.sroa.5.0..sroa.643.0..sroa_idx.sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !529
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.430.0..sroa_idx.i, align 8, !alias.scope !529
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 192
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.531.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !529
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.433.0..sroa_idx.i, align 8, !alias.scope !529
  %.sroa.534.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 216
  store i64 0, ptr %.sroa.534.0..sroa_idx.i, align 8, !alias.scope !529
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 640
  store ptr null, ptr %i.ba, align 8, !alias.scope !529
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 1, ptr %i.bb, align 8, !alias.scope !529
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 0, ptr %i.bc, align 8, !alias.scope !529
  %i.bd = getelementptr inbounds nuw i8, ptr %i.x, i64 656
  store ptr null, ptr %i.bd, align 8, !alias.scope !529
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 672
  store ptr null, ptr %i.be, align 8, !alias.scope !529
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i64 -1, ptr %i.bf, align 8, !alias.scope !529
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 708
  store i8 0, ptr %i.bg, align 4, !alias.scope !529
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 688
  store ptr null, ptr %i.bh, align 8, !alias.scope !529
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 224
  store i64 0, ptr %i.bi, align 8, !alias.scope !529
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.455.0..sroa_idx.i, align 8, !alias.scope !529
  %.sroa.556.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 240
  %.sroa.657.sroa.4.0..sroa.657.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.556.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !529
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.657.sroa.4.0..sroa.657.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !529
  %.sroa.657.sroa.5.0..sroa.657.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 264
  store i64 0, ptr %.sroa.657.sroa.5.0..sroa.657.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !529
  call void @_RINvMs0_NtNtCskfBPnJUU6aB_12clap_builder7builder7commandNtB6_7Command5aboutReECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.y, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 34)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RINvMNtNtCskfBPnJUU6aB_12clap_builder7builder3argNtB3_3Arg3newReECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([640 x i8]) align 8 captures(address) dereferenceable(640) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 8)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.c:                                             ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %i.v, i64 632 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !noundef !5
  %i.bm = or i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bk, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !530)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store i64 1, ptr %i.bn, align 8, !alias.scope !531
  %i.bo = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store i64 1, ptr %i.bo, align 8, !alias.scope !531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.w, ptr noundef nonnull align 8 dereferenceable(640) %i.v, i64 640, i1 false), !alias.scope !532
  call void @llvm.experimental.noalias.scope.decl(metadata !533)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !534
  invoke void @_RNvXs2_NtNtCskfBPnJUU6aB_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCs3oUPovFnLWP_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 35)
          to label %_RNvXsh_NtNtCskfBPnJUU6aB_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.e, !noalias !535

bb.d:                                             ; preds = %.body.i, %bb.e
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.bp, %bb.e ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder3arg3ArgECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(640) %i.w) #25
          to label %bb.cm unwind label %bb.l, !noalias !536

bb.e:                                             ; preds = %bb.c
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

_RNvXsh_NtNtCskfBPnJUU6aB_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.c
  %i.bq = load i64, ptr %i.m, align 8, !range !9, !noalias !534, !noundef !5 ; 3 uses
  %i.br = icmp eq i64 %i.bq, -1
  br i1 %i.br, label %bb.g, label %bb.f

end_hunk_0
