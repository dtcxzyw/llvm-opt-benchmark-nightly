Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/rsbridge.rsbridge.4ec2e59a714257d1-cgu.1?download=true
inline.NumInlined: 172
inline.NumDeleted: 95
begin_hunk_0_@"_ZN59_$LT$anki..error..AnkiError$u20$as$u20$core..fmt..Debug$GT$3fmt17h23f68fece724418fE":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.al

bb.ab:                                            ; preds = %bb.a
  %i.bj = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @48, i64 noundef 9)
  br label %bb.al

bb.ac:                                            ; preds = %bb.a
  %i.bk = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @49, i64 noundef 18)
  br label %bb.al

bb.ad:                                            ; preds = %bb.a
  %i.bl = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @50, i64 noundef 19)
  br label %bb.al

bb.ae:                                            ; preds = %bb.a
  %i.bm = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @51, i64 noundef 17)
  br label %bb.al

bb.af:                                            ; preds = %bb.a
  %i.bn = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @52, i64 noundef 20)
  br label %bb.al

bb.ag:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bo, ptr %i.b, align 8
  %i.bp = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @54, i64 noundef 23, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @55, i64 noundef 5, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.al

bb.ah:                                            ; preds = %bb.a
  %i.bq = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @56, i64 noundef 37)
  br label %bb.al

bb.ai:                                            ; preds = %bb.a
  %i.br = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @57, i64 noundef 24)
  br label %bb.al

bb.aj:                                            ; preds = %bb.a
  %i.bs = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @58, i64 noundef 24)
  br label %bb.al

bb.ak:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bt, ptr %i.a, align 8
  %i.bu = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @59, i64 noundef 15, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @14, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.x, %bb.c ], [ %i.z, %bb.d ], [ %i.ab, %bb.e ], [ %i.ad, %bb.f ], [ %i.af, %bb.g ], [ %i.ah, %bb.h ], [ %i.ai, %bb.i ], [ %i.ak, %bb.j ], [ %i.am, %bb.k ], [ %i.an, %bb.l ], [ %i.ao, %bb.m ], [ %i.ap, %bb.n ], [ %i.aq, %bb.o ], [ %i.as, %bb.p ], [ %i.at, %bb.q ], [ %i.au, %bb.r ], [ %i.aw, %bb.s ], [ %i.ay, %bb.t ], [ %i.ba, %bb.u ], [ %i.bb, %bb.v ], [ %i.bc, %bb.w ], [ %i.bd, %bb.x ], [ %i.be, %bb.y ], [ %i.bg, %bb.z ], [ %i.bi, %bb.aa ], [ %i.bj, %bb.ab ], [ %i.bk, %bb.ac ], [ %i.bl, %bb.ad ], [ %i.bm, %bb.ae ], [ %i.bn, %bb.af ], [ %i.bp, %bb.ag ], [ %i.bq, %bb.ah ], [ %i.br, %bb.ai ], [ %i.bs, %bb.aj ], [ %i.bu, %bb.ak ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN8rsbridge22__pyfunction_buildhash17h0b8697367a76a00eE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 16)) %0, ptr nofree noundef readnone captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call { ptr, i64 } @_ZN4anki7version9buildhash17h5fabecf0c22f0d61E() ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 1
  %i.c = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.d = tail call noundef nonnull ptr @_ZN4pyo35types6string8PyString3new17had6ced5ccaf33afcE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef %i.b), !noalias !102
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN8rsbridge23__pyfunction_syncserver17h2f9d757b5979593fE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef readnone captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [112 x i8], align 8               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [88 x i8], align 8                ; 6 uses
  %i.g = alloca [112 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !105
  call void @_ZN4anki3log17set_global_logger17h1251d55e06e4a60aE(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.g, ptr noalias noundef readonly align 1 captures(address, read_provenance) null, i64 undef), !noalias !105
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.h = load i64, ptr %i.g, align 8, !range !111, !alias.scope !108, !noalias !105, !noundef !7
  %.not.i.i = icmp eq i64 %i.h, -9223372036854775773
  br i1 %.not.i.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5d1549a032ddcb82E.exit.i", label %bb.b, !prof !112

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.g, i64 112, i1 false), !noalias !105
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @6, i64 noundef 43, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #18
          to label %bb.d unwind label %bb.c, !noalias !113

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17hc0733a4e8529d3ebE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.d) #16
          to label %common.resume.i unwind label %bb.e, !noalias !113

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17, !noalias !113
  unreachable

common.resume.i:                                  ; preds = %.body.i, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.i, %bb.c ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5d1549a032ddcb82E.exit.i": ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !105
  call void @_ZN4anki4sync11http_server12SimpleServer3run17had343b15245bdb1aE(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.f), !noalias !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !114
  store i64 0, ptr %i.c, align 8, !noalias !114
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !114
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !114
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.k, align 8, !noalias !114
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !114
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !noalias !114
  store ptr %i.c, ptr %i.b, align 8, !noalias !114
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @0, ptr %i.l, align 8, !noalias !114
  %i.m = invoke noundef zeroext i1 @"_ZN69_$LT$snafu..report..Report$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hd6e0514586f60270E"(ptr noundef nonnull align 8 %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.g unwind label %bb.f, !noalias !114

bb.f:                                             ; preds = %bb.h, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5d1549a032ddcb82E.exit.i"
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h78c5fb316943761eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #16
          to label %.body.i unwind label %bb.i, !noalias !114

bb.g:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5d1549a032ddcb82E.exit.i"
  br i1 %i.m, label %bb.h, label %bb.j, !prof !6

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #18
          to label %.noexc.i.i unwind label %bb.f, !noalias !114

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17, !noalias !114
  unreachable

.body.i:                                          ; preds = %bb.l, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.r, %bb.l ]
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$snafu..report..Report$LT$snafu..Whatever$GT$$GT$17h5618de4924456616E"(ptr noalias noundef align 8 dereferenceable(88) %i.f) #16
          to label %common.resume.i unwind label %bb.n, !noalias !105

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !114
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !117
  %i.p = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #15, !noalias !117 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.k, label %bb.o, !prof !6

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 24) #18
          to label %.noexc.i unwind label %bb.l, !noalias !105

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr132drop_in_place$LT$pyo3..err..PyErr..new$LT$pyo3..exceptions..PyException$C$alloc..string..String$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h571585473b5d4362E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #16
          to label %.body.i unwind label %bb.m, !noalias !105

bb.m:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17, !noalias !105
  unreachable

bb.n:                                             ; preds = %.body.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17, !noalias !105
  unreachable

bb.o:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !105
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$snafu..report..Report$LT$snafu..Whatever$GT$$GT$17h5618de4924456616E"(ptr noalias noundef align 8 dereferenceable(88) %i.f), !noalias !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !105
  %.sroa.5.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.5.0..sroa_idx.a, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.76.0..sroa_idx, align 8
  %.sroa.87.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @62, ptr %.sroa.87.0..sroa_idx, align 8
  %.sroa.109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 3, ptr %.sroa.109.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN8rsbridge25__pyfunction_open_backend17h44d2276fc3e61595E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [72 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [72 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr null, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_ZN4pyo35impl_16extract_argument19FunctionDescription28extract_arguments_tuple_dict17h33b4720f2b6b342fE(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @71, ptr noundef %2, ptr noundef %3, ptr noalias noundef nonnull align 8 %i.g, i64 noundef 1)
  %i.h = load i64, ptr %i.f, align 8, !range !23, !noundef !7
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 1, ptr %0, align 8
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr null, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.l = load ptr, ptr %i.g, align 8, !nonnull !7, !noundef !7
  call void @_ZN4pyo35impl_16extract_argument16extract_argument17h5f7454381f6a3a02E(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.d, ptr noundef nonnull %i.l, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @69, i64 noundef 8)
  %i.m = load i64, ptr %i.d, align 8, !range !23, !noundef !7
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.09.0.copyload = load ptr, ptr %i.o, align 8 ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.212.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.510.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.09.0.copyload, ptr %i.p, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val = load ptr, ptr %.sroa.09.0.copyload, align 8, !nonnull !7, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !120
  %i.q = call { ptr, i64 } @"_ZN4pyo35types5bytes77_$LT$impl$u20$pyo3..instance..Borrowed$LT$pyo3..types..bytes..PyBytes$GT$$GT$8as_bytes17ha32213463fc4bf0dE"(ptr noundef nonnull %.val), !noalias !120 ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0
  %i.s = extractvalue { ptr, i64 } %i.q, 1
  call void @_ZN4anki7backend12init_backend17h03b6ef1681797bb9E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.r, i64 noundef %i.s), !noalias !120
  %i.t = load i64, ptr %i.c, align 8, !range !72, !noalias !120, !noundef !7
  %.not.i = icmp eq i64 %i.t, -9223372036854775808
  br i1 %.not.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !120
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !123
  %i.u = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #15, !noalias !123 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.g, label %bb.k, !prof !6

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 24) #18
          to label %.noexc.i unwind label %bb.h, !noalias !120

.noexc.i:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr132drop_in_place$LT$pyo3..err..PyErr..new$LT$pyo3..exceptions..PyException$C$alloc..string..String$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h571585473b5d4362E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #16
          to label %bb.j unwind label %bb.i, !noalias !120

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17, !noalias !120
  unreachable

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.w

bb.k:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !120
  %i.y = insertelement <2 x ptr> <ptr poison, ptr @62>, ptr %i.u, i64 0
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !120, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !126
  call void @"_ZN4pyo312pyclass_init27PyClassInitializer$LT$T$GT$19create_class_object17hd709c0a62c1c69efE"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noundef nonnull %i.aa), !noalias !126
  %i.ab = load i64, ptr %i.a, align 8, !range !23, !noalias !126, !noundef !7
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.8.copyload19 = load ptr, ptr %i.ad, align 8 ; 2 uses
  br i1 %i.ac, label %_ZN4pyo310conversion15IntoPyObjectExt17into_bound_py_any17h8c0563d06c78c8c4E.exit.thread, label %bb.n

_ZN4pyo310conversion15IntoPyObjectExt17into_bound_py_any17h8c0563d06c78c8c4E.exit.thread: ; preds = %bb.l
  %.sroa.1020.8..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ae = load <2 x i64>, ptr %.sroa.1020.8..sroa_idx22, align 8
  %.sroa.1020.sroa.6.0..sroa.1020.8..sroa_idx22.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.1020.sroa.6.0.copyload32 = load ptr, ptr %.sroa.1020.sroa.6.0..sroa.1020.8..sroa_idx22.sroa_idx, align 8
  %.sroa.1020.sroa.7.0..sroa.1020.8..sroa_idx22.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.af = load <2 x ptr>, ptr %.sroa.1020.sroa.7.0..sroa.1020.8..sroa_idx22.sroa_idx, align 8
  %.sroa.1020.sroa.9.0..sroa.1020.8..sroa_idx22.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.1020.sroa.9.0.copyload35 = load i64, ptr %.sroa.1020.sroa.9.0..sroa.1020.8..sroa_idx22.sroa_idx, align 8
  %.sroa.1020.sroa.10.0..sroa.1020.8..sroa_idx22.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ag = load <2 x i32>, ptr %.sroa.1020.sroa.10.0..sroa.1020.8..sroa_idx22.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !126
  br label %bb.m

bb.m:                                             ; preds = %_ZN4pyo310conversion15IntoPyObjectExt17into_bound_py_any17h8c0563d06c78c8c4E.exit.thread, %bb.k
  %.sroa.1020.sroa.9.0 = phi i64 [ undef, %bb.k ], [ %.sroa.1020.sroa.9.0.copyload35, %_ZN4pyo310conversion15IntoPyObjectExt17into_bound_py_any17h8c0563d06c78c8c4E.exit.thread ]
  %.sroa.1020.sroa.6.0 = phi ptr [ null, %bb.k ], [ %.sroa.1020.sroa.6.0.copyload32, %_ZN4pyo310conversion15IntoPyObjectExt17into_bound_py_any17h8c0563d06c78c8c4E.exit.thread ]
  %.sroa.5.0 = phi ptr [ null, %bb.k ], [ %.sroa.5.8.copyload19, %_ZN4pyo310conversion15IntoPyObjectExt17into_bound_py_any17h8c0563d06c78c8c4E.exit.thread ]
  %i.ah = phi <2 x i32> [ <i32 3, i32 undef>, %bb.k ], [ %i.ag, %_ZN4pyo310conversion15IntoPyObjectExt17into_bound_py_any17h8c0563d06c78c8c4E.exit.thread ]
  %i.ai = phi <2 x i64> [ <i64 0, i64 1>, %bb.k ], [ %i.ae, %_ZN4pyo310conversion15IntoPyObjectExt17into_bound_py_any17h8c0563d06c78c8c4E.exit.thread ]
  %i.aj = phi <2 x ptr> [ %i.y, %bb.k ], [ %i.af, %_ZN4pyo310conversion15IntoPyObjectExt17into_bound_py_any17h8c0563d06c78c8c4E.exit.thread ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %i.ak, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.ai, ptr %.sroa.539.0..sroa_idx, align 8
  %.sroa.741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.1020.sroa.6.0, ptr %.sroa.741.0..sroa_idx, align 8
  %.sroa.842.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x ptr> %i.aj, ptr %.sroa.842.0..sroa_idx, align 8
  %.sroa.1044.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.1020.sroa.9.0, ptr %.sroa.1044.0..sroa_idx, align 8
  %.sroa.1145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x i32> %i.ah, ptr %.sroa.1145.0..sroa_idx, align 8
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !126
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.8.copyload19, ptr %i.al, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %storemerge = phi i64 [ 0, %bb.n ], [ 1, %bb.m ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.p

bb.p:                                             ; preds = %bb.b, %bb.d, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN8rsbridge31__pyfunction_initialize_logging17h48c742a0c733d748E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [112 x i8], align 8               ; 6 uses
  %i.f = alloca [112 x i8], align 8               ; 6 uses
  %i.g = alloca [72 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 14 uses
  %i.i = alloca [72 x i8], align 8                ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr null, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_ZN4pyo35impl_16extract_argument19FunctionDescription28extract_arguments_tuple_dict17h33b4720f2b6b342fE(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @75, ptr noundef %2, ptr noundef %3, ptr noalias noundef nonnull align 8 %i.j, i64 noundef 1)
  %i.k = load i64, ptr %i.i, align 8, !range !23, !noundef !7
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 1, ptr %0, align 8
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) @76, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.o = load ptr, ptr %i.j, align 8, !noundef !7
  invoke void @_ZN4pyo35impl_16extract_argument29extract_argument_with_default17h200af1820a673634E(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.g, ptr noundef %i.o, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @73, i64 noundef 4, ptr noundef nonnull @_ZN4core3ops8function6FnOnce9call_once17hb9d4807b1029e7e1E)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %"_ZN8rsbridge18initialize_logging28_$u7b$$u7b$closure$u7d$$u7d$17hf58f0aa5e54431b1E.exit.i", %bb.j, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i.i, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.d ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke fastcc void @"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h22785bf4e35bc908E"(ptr noalias noundef align 8 dereferenceable(24) %i.h) #16
          to label %common.resume unwind label %bb.ab

bb.e:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.g, align 8, !range !23, !noundef !7
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.010.0.copyload = load ptr, ptr %i.s, align 8 ; 2 uses
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.511.0.copyload = load i64, ptr %.sroa.511.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.r, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.314.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.010.0.copyload, ptr %i.t, align 8
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.511.0.copyload, ptr %.sroa.213.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %i.u = load i64, ptr %i.h, align 8, !range !98, !alias.scope !129, !noundef !7
  %switch.i = icmp slt i64 %i.u, -9223372036854775806
  br i1 %switch.i, label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h22785bf4e35bc908E.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc4803d29c2697c0cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h78c5fb316943761eE.exit.i.i" unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdeac811373b54f98E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17
  unreachable

common.resume:                                    ; preds = %.body, %bb.y, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.al, %bb.y ], [ %i.v, %bb.h ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h78c5fb316943761eE.exit.i.i": ; preds = %bb.g
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdeac811373b54f98E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h22785bf4e35bc908E.exit"

"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h22785bf4e35bc908E.exit": ; preds = %bb.f, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h78c5fb316943761eE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.aa

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !132
  invoke void @_ZN4anki3log17set_global_logger17h1251d55e06e4a60aE(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.f, ptr noalias noundef readonly align 1 captures(address, read_provenance) %.sroa.010.0.copyload, i64 %.sroa.511.0.copyload)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.j
  %i.x = load i64, ptr %i.f, align 8, !range !111, !noalias !132, !noundef !7
  %.not.i = icmp eq i64 %i.x, -9223372036854775773
  br i1 %.not.i, label %bb.u, label %bb.k

bb.k:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.e, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false), !noalias !132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !136
  store i64 0, ptr %i.c, align 8, !noalias !136
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !136
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !noalias !136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !136
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.y, align 8, !noalias !136
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !noalias !136
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 2, !noalias !136
  store ptr %i.c, ptr %i.b, align 8, !noalias !136
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @0, ptr %i.z, align 8, !noalias !136
  %i.aa = invoke noundef zeroext i1 @"_ZN61_$LT$anki..error..AnkiError$u20$as$u20$core..fmt..Display$GT$3fmt17h60e6009c7d8b3515E"(ptr noundef nonnull align 8 dereferenceable(112) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.m unwind label %bb.l, !noalias !142

bb.l:                                             ; preds = %bb.n, %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h78c5fb316943761eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #16
          to label %.body.i.i unwind label %bb.o, !noalias !142

bb.m:                                             ; preds = %bb.k
  br i1 %i.aa, label %bb.n, label %bb.p, !prof !6

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #18
          to label %.noexc.i.i.i unwind label %bb.l, !noalias !142

.noexc.i.i.i:                                     ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17, !noalias !142
  unreachable

.body.i.i:                                        ; preds = %bb.r, %bb.l
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ab, %bb.l ], [ %i.af, %bb.r ]
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17hc0733a4e8529d3ebE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.e) #16
          to label %.body unwind label %bb.t, !noalias !143

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !136
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !145
  %i.ad = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #15, !noalias !145 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.q, label %"_ZN8rsbridge18initialize_logging28_$u7b$$u7b$closure$u7d$$u7d$17hf58f0aa5e54431b1E.exit.i", !prof !6

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 24) #18
          to label %.noexc.i.i unwind label %bb.r, !noalias !143

.noexc.i.i:                                       ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr132drop_in_place$LT$pyo3..err..PyErr..new$LT$pyo3..exceptions..PyException$C$alloc..string..String$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h571585473b5d4362E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #16
          to label %.body.i.i unwind label %bb.s, !noalias !143

bb.s:                                             ; preds = %bb.r
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17, !noalias !143
  unreachable

bb.t:                                             ; preds = %.body.i.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17, !noalias !143
  unreachable

"_ZN8rsbridge18initialize_logging28_$u7b$$u7b$closure$u7d$$u7d$17hf58f0aa5e54431b1E.exit.i": ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !144
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17hc0733a4e8529d3ebE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.e)
          to label %bb.v unwind label %bb.d

bb.u:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !132
  call void @Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #15
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_Py_NoneStruct, ptr %i.ai, align 8
  br label %bb.w

bb.v:                                             ; preds = %"_ZN8rsbridge18initialize_logging28_$u7b$$u7b$closure$u7d$$u7d$17hf58f0aa5e54431b1E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !132
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.5.0..sroa_idx.a, align 8
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.631.0..sroa_idx, align 8
  %.sroa.732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ad, ptr %.sroa.732.0..sroa_idx, align 8
  %.sroa.833.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @62, ptr %.sroa.833.0..sroa_idx, align 8
  %.sroa.1035.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 3, ptr %.sroa.1035.0..sroa_idx, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %storemerge = phi i64 [ 0, %bb.u ], [ 1, %bb.v ]
  store i64 %storemerge, ptr %0, align 8
  %i.ak = load i64, ptr %i.h, align 8, !range !98, !alias.scope !148, !noundef !7
  %switch.i21 = icmp slt i64 %i.ak, -9223372036854775806
  br i1 %switch.i21, label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h22785bf4e35bc908E.exit24", label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc4803d29c2697c0cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h78c5fb316943761eE.exit.i.i23" unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdeac811373b54f98E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h78c5fb316943761eE.exit.i.i23": ; preds = %bb.x
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdeac811373b54f98E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h22785bf4e35bc908E.exit24"

"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h22785bf4e35bc908E.exit24": ; preds = %bb.w, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h78c5fb316943761eE.exit.i.i23"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.b, %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h22785bf4e35bc908E.exit", %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h22785bf4e35bc908E.exit24"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.ab:                                            ; preds = %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN8rsbridge7Backend20__pymethod_command__17h5be7fdfeb0654b96E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [4 x i8], align 4                 ; 5 uses
  %i.g = alloca [4 x i8], align 4                 ; 5 uses
  %i.h = alloca [72 x i8], align 8                ; 7 uses
  %i.i = alloca [72 x i8], align 8                ; 7 uses
  %i.j = alloca [72 x i8], align 8                ; 7 uses
  %i.k = alloca [72 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 14 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [72 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_ZN4pyo35impl_16extract_argument19FunctionDescription28extract_arguments_tuple_dict17h33b4720f2b6b342fE(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @83, ptr noundef %2, ptr noundef %3, ptr noalias noundef nonnull align 8 %i.o, i64 noundef 3)
  %i.p = load i64, ptr %i.n, align 8, !range !23, !noundef !7
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 1, ptr %0, align 8
  br label %bb.ah

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr null, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr null, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.t = invoke noundef ptr @"_ZN4pyo37pyclass5guard21PyClassGuard$LT$T$GT$21try_from_class_object17h82e413f49a979d71E"(ptr noundef nonnull align 8 %1)
          to label %.noexc unwind label %bb.g     ; 4 uses

.noexc:                                           ; preds = %bb.c
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  invoke void @"_ZN4pyo36pycell101_$LT$impl$u20$core..convert..From$LT$pyo3..pycell..PyBorrowError$GT$$u20$for$u20$pyo3..err..PyErr$GT$4from17hd35a12e9311e0ac7E"(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.v)
          to label %bb.i unwind label %bb.g

bb.e:                                             ; preds = %.noexc
  %i.w = load ptr, ptr %i.l, align 8, !alias.scope !151, !noalias !158, !noundef !7
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @"_ZN85_$LT$pyo3..pyclass..guard..PyClassGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc051a92f69f8775cE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.j unwind label %.body.thread, !noalias !158

.body.thread:                                     ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  store ptr %i.t, ptr %i.l, align 8, !alias.scope !160, !noalias !158
  br label %bb.h

bb.g:                                             ; preds = %"_ZN8rsbridge7Backend7command28_$u7b$$u7b$closure$u7d$$u7d$17h3cbc1eb08801e410E.exit.i", %.noexc40, %bb.s, %bb.d, %bb.c, %bb.p, %bb.m, %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.v, %bb.y, %bb.aa, %bb.g
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.z, %bb.g ], [ %i.bk, %bb.v ], [ %i.bs, %bb.aa ], [ %i.br, %bb.y ] ; 2 uses
  %.pr = load ptr, ptr %i.l, align 8, !alias.scope !161
  %i.aa = icmp eq ptr %.pr, null
  br i1 %i.aa, label %"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$pyo3..pyclass..guard..PyClassGuard$LT$rsbridge..Backend$GT$$GT$$GT$17h0eaa2167d60fac76E.exit", label %bb.h

bb.h:                                             ; preds = %.body.thread, %.body
  %eh.lpad-body73 = phi { ptr, i32 } [ %i.y, %.body.thread ], [ %eh.lpad-body.ph, %.body ]
  invoke void @"_ZN85_$LT$pyo3..pyclass..guard..PyClassGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc051a92f69f8775cE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$pyo3..pyclass..guard..PyClassGuard$LT$rsbridge..Backend$GT$$GT$$GT$17h0eaa2167d60fac76E.exit" unwind label %bb.ak

bb.i:                                             ; preds = %bb.d
  %.sroa.025.0.copyload = load ptr, ptr %i.v, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.228.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.526.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.025.0.copyload, ptr %i.ab, align 8
  br label %bb.ai

bb.j:                                             ; preds = %bb.f, %bb.e
  store ptr %i.t, ptr %i.l, align 8, !alias.scope !160, !noalias !158
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ad = load ptr, ptr %i.o, align 8, !nonnull !7, !noundef !7
  invoke void @_ZN4pyo35impl_16extract_argument16extract_argument17h4f64eaba6c39a30aE(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.j, ptr noundef nonnull %i.ad, ptr noalias noundef nonnull align 1 %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @78, i64 noundef 7)
          to label %bb.k unwind label %bb.g

bb.k:                                             ; preds = %bb.j
  %i.ae = load i32, ptr %i.j, align 8, !range !164, !noundef !7
  %i.af = trunc nuw i32 %i.ae to i1
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull align 8 dereferenceable(64) %i.ag, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ai

bb.m:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !7, !noundef !7
  invoke void @_ZN4pyo35impl_16extract_argument16extract_argument17h4f64eaba6c39a30aE(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.i, ptr noundef nonnull %i.al, ptr noalias noundef nonnull align 1 %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @79, i64 noundef 6)
          to label %bb.n unwind label %bb.g

bb.n:                                             ; preds = %bb.m
  %i.am = load i32, ptr %i.i, align 8, !range !164, !noundef !7
  %i.an = trunc nuw i32 %i.am to i1
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ai

bb.p:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !7, !noundef !7
  invoke void @_ZN4pyo35impl_16extract_argument16extract_argument17h5f7454381f6a3a02E(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.h, ptr noundef nonnull %i.at, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @80, i64 noundef 5)
end_hunk_0
