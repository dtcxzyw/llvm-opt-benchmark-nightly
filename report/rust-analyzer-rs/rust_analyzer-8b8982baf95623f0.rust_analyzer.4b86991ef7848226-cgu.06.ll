Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.06?download=true
inline.NumInlined: 5466
inline.NumDeleted: 2792
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto26map_rust_diagnostic_to_lsp:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12457
  store i64 %i.bhe, ptr %i.f, align 8, !noalias !12457
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.bhh, ptr %i.bhj, align 8, !noalias !12457
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.bhi, ptr %i.bhk, align 8, !noalias !12457
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.zh unwind label %bb.zf, !noalias !12457

bb.zf:                                            ; preds = %bb.ze
  %i.bhl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %.val2.i.i.i816 = load i64, ptr %i.f, align 8, !alias.scope !12458, !noalias !12457 ; 2 uses
  %i.bhm = icmp eq i64 %.val2.i.i.i816, 0
  br i1 %i.bhm, label %.body313, label %bb.zg

bb.zg:                                            ; preds = %bb.zf
  %.val3.i.i.i817 = load ptr, ptr %i.bhj, align 8, !alias.scope !12459, !noalias !12457, !nonnull !8, !noundef !8
  %i.bhn = mul nuw i64 %.val2.i.i.i816, 152
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i817, i64 noundef %i.bhn, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !12460
  br label %.body313

bb.zh:                                            ; preds = %bb.ze
  %.val.i.i.i819 = load i64, ptr %i.f, align 8, !alias.scope !12458, !noalias !12457 ; 2 uses
  %i.bho = icmp eq i64 %.val.i.i.i819, 0
  br i1 %i.bho, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i821, label %bb.zi

bb.zi:                                            ; preds = %bb.zh
  %.val1.i.i.i820 = load ptr, ptr %i.bhj, align 8, !alias.scope !12459, !noalias !12457, !nonnull !8, !noundef !8
  %i.bhp = mul nuw i64 %.val.i.i.i819, 152
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i820, i64 noundef %i.bhp, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !12461
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i821

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i821: ; preds = %bb.zi, %bb.zh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12457
  br label %.body311

bb.zj:                                            ; preds = %.split1766.thread, %bb.yb
  %.pn3021767 = phi { ptr, i32 } [ %i.bgk, %.split1766.thread ], [ %.pn300, %bb.yb ] ; 2 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fv)
          to label %bb.zm unwind label %bb.zk

bb.zk:                                            ; preds = %bb.zj
  %i.bhq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %.val2.i.i826 = load i64, ptr %i.fv, align 8, !alias.scope !12462 ; 2 uses
  %i.bhr = icmp eq i64 %.val2.i.i826, 0
  br i1 %i.bhr, label %.body313, label %bb.zl

bb.zl:                                            ; preds = %bb.zk
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %.val3.i.i827 = load ptr, ptr %i.bhs, align 8, !alias.scope !12463, !nonnull !8, !noundef !8
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i827, i64 noundef %.val2.i.i826, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !12464
  br label %.body313

bb.zm:                                            ; preds = %bb.zj
  %.val.i.i829 = load i64, ptr %i.fv, align 8, !alias.scope !12462 ; 2 uses
  %i.bht = icmp eq i64 %.val.i.i829, 0
  br i1 %i.bht, label %common.resume, label %common.resume.sink.split
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto8location(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %4, ptr nofree noundef nonnull readonly align 8 captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !12483 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %i.b = alloca [88 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !8
  call fastcc void @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto12resolve_path(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = invoke { ptr, i64 } @_RNvXs0_Cs9R0CJ7nmiec_5pathsNtB5_10AbsPathBufNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.f, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.i, %bb.c ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #44
          to label %common.resume unwind label %bb.n

bb.c:                                             ; preds = %bb.d, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, i64 } %i.h, 0
  %i.k = extractvalue { ptr, i64 } %i.h, 1
  invoke void @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto17url_from_abs_path(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.k)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !8, !noundef !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 3448
  %i.o = invoke noundef i8 @_RNvMNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp12capabilitiesNtB2_18ClientCapabilities19negotiated_encoding(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1152) %i.n)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs2vT3jxLudSK_3url3UrlECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(88) %i.b) #44
          to label %bb.b unwind label %bb.n

bb.g:                                             ; preds = %bb.e
  store i8 %i.o, ptr %i.a, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.r = load i64, ptr %i.q, align 8, !noundef !8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.t = load i64, ptr %i.s, align 8, !noundef !8
  %i.u = call i64 @llvm.usub.sat.i64(i64 %i.t, i64 1)
  %i.v = invoke fastcc { i32, i32 } @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto8position(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %4, i64 noundef %i.r, i64 noundef %i.u)
          to label %bb.h unwind label %bb.f       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.x = load i64, ptr %i.w, align 8, !noundef !8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.z = load i64, ptr %i.y, align 8, !noundef !8
  %i.aa = call i64 @llvm.usub.sat.i64(i64 %i.z, i64 1)
  %i.ab = invoke fastcc { i32, i32 } @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto8position(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %4, i64 noundef %i.x, i64 noundef %i.aa)
          to label %bb.i unwind label %bb.f       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.ac = extractvalue { i32, i32 } %i.v, 1
  %i.ad = extractvalue { i32, i32 } %i.v, 0
  %i.ae = extractvalue { i32, i32 } %i.ab, 0
  %i.af = extractvalue { i32, i32 } %i.ab, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.ad, ptr %i.ag, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.ac, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.ae, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.af, ptr %.sroa.6.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !12484 ; 2 uses
  %i.ai = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.ai, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !12485, !nonnull !8, !noundef !8
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !12486
  br label %common.resume

bb.l:                                             ; preds = %bb.i
  %.val.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !12484 ; 2 uses
  %i.ak = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ak, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.al, align 8, !alias.scope !12485, !nonnull !8, !noundef !8
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !12487
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit

common.resume:                                    ; preds = %bb.b, %bb.j, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %i.ah, %bb.k ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.n:                                             ; preds = %bb.f, %bb.b
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i32, i32 } @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto8position(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %1, i64 noundef %2, i64 noundef range(i64 0, -1) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !12518 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load i64, ptr %i.a, align 8, !noundef !8
  %i.c = sub i64 %2, %i.b                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noundef !8
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !8, !noundef !8
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.c ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8 ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !8 ; 11 uses
  %i.n = icmp samesign ult i64 %i.m, 64
  br i1 %i.n, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = and i64 %i.m, 9223372036854775744
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.o ; 3 uses
  %i.q = and i64 %i.m, 63                         ; 2 uses
  br label %.lr.ph.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 64 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.p
  br i1 %i.s, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.c
  %.sroa.01.028.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %bb.c ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load <2 x i64>, ptr %.sroa.01.028.i.i, align 1, !alias.scope !12519, !noalias !12520
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 16
  %.sroa.0.0.copyload.i9.i.i = load <2 x i64>, ptr %i.t, align 1, !alias.scope !12519, !noalias !12521
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 32
  %.sroa.0.0.copyload.i10.i.i = load <2 x i64>, ptr %i.u, align 1, !alias.scope !12519, !noalias !12522
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 48
  %.sroa.0.0.copyload.i11.i.i = load <2 x i64>, ptr %i.v, align 1, !alias.scope !12519, !noalias !12523
  %i.w = or <2 x i64> %.sroa.0.0.copyload.i9.i.i, %.sroa.0.0.copyload.i.i.i
  %i.x = or <2 x i64> %i.w, %.sroa.0.0.copyload.i10.i.i
  %i.y = or <2 x i64> %i.x, %.sroa.0.0.copyload.i11.i.i
  %i.z = bitcast <2 x i64> %i.y to <16 x i8>
  %i.aa = icmp slt <16 x i8> %i.z, zeroinitializer
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.d, label %.loopexit

._crit_edge.i.i:                                  ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  %i.ae = icmp samesign eq i64 %i.q, 0
  br i1 %i.ae, label %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.ad
  br i1 %i.ag, label %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i.i, %bb.e
  %i.ah = phi ptr [ %i.af, %bb.e ], [ %i.p, %._crit_edge.i.i ] ; 2 uses
  %.val.i.i.i = load i8, ptr %i.ah, align 1, !alias.scope !12519, !noalias !12524, !noundef !8
  %i.ai = icmp sgt i8 %.val.i.i.i, -1
  br i1 %i.ai, label %bb.e, label %.loopexit

bb.f:                                             ; preds = %bb.b
  %i.aj = and i64 %i.m, 56                        ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.aj ; 7 uses
  %i.al = and i64 %i.m, 7                         ; 7 uses
  %.not.i67 = icmp eq i64 %i.aj, 0
  br i1 %.not.i67, label %._crit_edge, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6u1mgJOKDyY_13rust_analyzer.exit.i

bb.g:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6u1mgJOKDyY_13rust_analyzer.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i69, i64 8
  %4 = add nsw i64 %.sroa.6.0.i68, -8             ; 2 uses
  %.not.i.a = icmp eq i64 %4, 0
  br i1 %.not.i.a, label %._crit_edge, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6u1mgJOKDyY_13rust_analyzer.exit.i

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %i.an = icmp samesign eq i64 %i.al, 0
  br i1 %i.an, label %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph71

bb.h:                                             ; preds = %.lr.ph71
  %i.ao = icmp samesign eq i64 %i.al, 1
  br i1 %i.ao, label %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph71.1

.lr.ph71.1:                                       ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %.val.i.i.1 = load i8, ptr %i.ap, align 1, !alias.scope !12525, !noalias !12526, !noundef !8
  %i.aq = icmp sgt i8 %.val.i.i.1, -1
  br i1 %i.aq, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph71.1
  %i.ar = icmp samesign eq i64 %i.al, 2
  br i1 %i.ar, label %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph71.2

.lr.ph71.2:                                       ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %.val.i.i.2 = load i8, ptr %i.as, align 1, !alias.scope !12525, !noalias !12526, !noundef !8
  %i.at = icmp sgt i8 %.val.i.i.2, -1
  br i1 %i.at, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph71.2
  %i.au = icmp samesign eq i64 %i.al, 3
  br i1 %i.au, label %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph71.3

.lr.ph71.3:                                       ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 3
  %.val.i.i.3 = load i8, ptr %i.av, align 1, !alias.scope !12525, !noalias !12526, !noundef !8
  %i.aw = icmp sgt i8 %.val.i.i.3, -1
  br i1 %i.aw, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph71.3
  %i.ax = icmp samesign eq i64 %i.al, 4
  br i1 %i.ax, label %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph71.4

.lr.ph71.4:                                       ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %.val.i.i.4 = load i8, ptr %i.ay, align 1, !alias.scope !12525, !noalias !12526, !noundef !8
  %i.az = icmp sgt i8 %.val.i.i.4, -1
  br i1 %i.az, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %.lr.ph71.4
  %i.ba = icmp samesign eq i64 %i.al, 5
  br i1 %i.ba, label %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph71.5

.lr.ph71.5:                                       ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 5
  %.val.i.i.5 = load i8, ptr %i.bb, align 1, !alias.scope !12525, !noalias !12526, !noundef !8
  %i.bc = icmp sgt i8 %.val.i.i.5, -1
  br i1 %i.bc, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.lr.ph71.5
  %i.bd = icmp samesign eq i64 %i.al, 6
  br i1 %i.bd, label %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph71.6

.lr.ph71.6:                                       ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 6
  %.val.i.i.6 = load i8, ptr %i.be, align 1, !alias.scope !12525, !noalias !12526, !noundef !8
  %i.bf = icmp sgt i8 %.val.i.i.6, -1
  br i1 %i.bf, label %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit, label %.loopexit

.lr.ph71:                                         ; preds = %._crit_edge
  %.val.i.i = load i8, ptr %i.ak, align 1, !alias.scope !12525, !noalias !12526, !noundef !8
  %i.bg = icmp sgt i8 %.val.i.i, -1
  br i1 %i.bg, label %bb.h, label %.loopexit

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.f, %bb.g
  %.sroa.0.017.i69 = phi ptr [ %i.am, %bb.g ], [ %i.k, %bb.f ] ; 2 uses
  %.sroa.6.0.i68 = phi i64 [ %4, %bb.g ], [ %i.aj, %bb.f ]
  %.sroa.012.0.copyload.i = load i64, ptr %.sroa.0.017.i69, align 1, !alias.scope !12525
  %i.bh = and i64 %.sroa.012.0.copyload.i, -9187201950435737472
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.g, label %.loopexit

_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit: ; preds = %bb.e, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %.lr.ph71.6, %._crit_edge.i.i, %._crit_edge, %.thread, %bb.z, %bb.a
  %.sroa.0.0 = phi i64 [ %3, %bb.a ], [ %i.eb, %bb.z ], [ %.sroa.05.025, %.thread ], [ %3, %._crit_edge ], [ %3, %._crit_edge.i.i ], [ %3, %bb.h ], [ %3, %.lr.ph71.6 ], [ %3, %bb.m ], [ %3, %bb.l ], [ %3, %bb.k ], [ %3, %bb.j ], [ %3, %bb.i ], [ %3, %bb.e ]
  %i.bj = trunc i64 %2 to i32
  %i.bk = tail call i32 @llvm.usub.sat.i32(i32 %i.bj, i32 1)
  %i.bl = trunc i64 %.sroa.0.0 to i32
  %i.bm = insertvalue { i32, i32 } poison, i32 %i.bk, 0
  %i.bn = insertvalue { i32, i32 } %i.bm, i32 %i.bl, 1
  ret { i32, i32 } %i.bn

.loopexit:                                        ; preds = %.lr.ph.i.i, %.lr.ph, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6u1mgJOKDyY_13rust_analyzer.exit.i, %.lr.ph71, %.lr.ph71.1, %.lr.ph71.2, %.lr.ph71.3, %.lr.ph71.4, %.lr.ph71.5, %.lr.ph71.6
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m ; 4 uses
  %i.bp = icmp eq i64 %3, 0
  br i1 %i.bp, label %_RINvXs7_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB6_4TakeNtNtNtBc_3str4iter11CharIndicesENtB6_8SpecTake9spec_foldINtNtBc_6option6OptionTjcEEINvNvNtNtNtBa_6traits8iterator8Iterator4last4someB2f_EECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.n

bb.n:                                             ; preds = %.loopexit
  %i.bq = icmp samesign eq i64 %i.m, 0
  br i1 %i.bq, label %_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtB9_6option6OptionTjcEENCINvNvXs_NtNtBU_8adapters4takeINtB2d_4TakepEBO_8try_fold5checkB1Y_B1C_INtNtNtB9_3ops9try_trait17NeverShortCircuitB1C_ENCINvMB3f_B3c_10wrap_mut_2B1C_B1Y_INvNvBO_4last4someB1Y_EE0E0INtNtB3h_12control_flow11ControlFlowB3c_B1C_EECs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i, label %.lr.ph.i.i.i

bb.o:                                             ; preds = %bb.q
  %i.br = ptrtoint ptr %i.dh to i64
  %i.bs = sub i64 %i.bv, %i.by
  %i.bt = add i64 %i.bs, %i.br
  %i.bu = icmp eq ptr %i.dh, %i.bo
  br i1 %i.bu, label %_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtB9_6option6OptionTjcEENCINvNvXs_NtNtBU_8adapters4takeINtB2d_4TakepEBO_8try_fold5checkB1Y_B1C_INtNtNtB9_3ops9try_trait17NeverShortCircuitB1C_ENCINvMB3f_B3c_10wrap_mut_2B1C_B1Y_INvNvBO_4last4someB1Y_EE0E0INtNtB3h_12control_flow11ControlFlowB3c_B1C_EECs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n, %bb.o
  %i.bv = phi i64 [ %i.bt, %bb.o ], [ 0, %bb.n ]  ; 3 uses
  %i.bw = phi ptr [ %i.dh, %bb.o ], [ %i.k, %bb.n ] ; 6 uses
  %i.bx = phi i64 [ %i.dj, %bb.o ], [ %3, %bb.n ]
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 1 ; 3 uses
  %i.ca = load i8, ptr %i.bw, align 1, !noalias !12527, !noundef !8 ; 5 uses
  %i.cb = icmp sgt i8 %i.ca, -1
  br i1 %i.cb, label %bb.p, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit12.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cc = and i8 %i.ca, 31
  %i.cd = zext nneg i8 %i.cc to i32               ; 3 uses
  %i.ce = icmp ne ptr %i.bz, %i.bo
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 2 ; 3 uses
  %i.cg = load i8, ptr %i.bz, align 1, !noalias !12527, !noundef !8
  %i.ch = shl nuw nsw i32 %i.cd, 6
  %i.ci = and i8 %i.cg, 63
  %i.cj = zext nneg i8 %i.ci to i32               ; 2 uses
  %i.ck = or disjoint i32 %i.ch, %i.cj
  %i.cl = icmp samesign ugt i8 %i.ca, -33
  br i1 %i.cl, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit14.i.i.i.i.i, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.cm = zext nneg i8 %i.ca to i32
  br label %bb.q

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit12.i.i.i.i.i
  %i.cn = icmp ne ptr %i.cf, %i.bo
  tail call void @llvm.assume(i1 %i.cn)
  %i.co = getelementptr inbounds nuw i8, ptr %i.bw, i64 3 ; 3 uses
  %i.cp = load i8, ptr %i.cf, align 1, !noalias !12527, !noundef !8
  %i.cq = shl nuw nsw i32 %i.cj, 6
  %i.cr = and i8 %i.cp, 63
  %i.cs = zext nneg i8 %i.cr to i32
  %i.ct = or disjoint i32 %i.cq, %i.cs            ; 2 uses
  %i.cu = shl nuw nsw i32 %i.cd, 12
  %i.cv = or disjoint i32 %i.ct, %i.cu
  %i.cw = icmp samesign ugt i8 %i.ca, -17
  br i1 %i.cw, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit16.i.i.i.i.i, label %bb.q

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit14.i.i.i.i.i
  %i.cx = icmp ne ptr %i.co, %i.bo
  tail call void @llvm.assume(i1 %i.cx)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.cz = load i8, ptr %i.co, align 1, !noalias !12527, !noundef !8
  %i.da = shl nuw nsw i32 %i.cd, 18
  %i.db = and i32 %i.da, 1835008
  %i.dc = shl nuw nsw i32 %i.ct, 6
  %i.dd = and i8 %i.cz, 63
  %i.de = zext nneg i8 %i.dd to i32
  %i.df = or disjoint i32 %i.dc, %i.de
  %i.dg = or disjoint i32 %i.df, %i.db
  br label %bb.q

bb.q:                                             ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit14.i.i.i.i.i, %bb.p, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit12.i.i.i.i.i
  %i.dh = phi ptr [ %i.co, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit14.i.i.i.i.i ], [ %i.cy, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit16.i.i.i.i.i ], [ %i.cf, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit12.i.i.i.i.i ], [ %i.bz, %bb.p ] ; 3 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.cv, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit14.i.i.i.i.i ], [ %i.dg, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit16.i.i.i.i.i ], [ %i.ck, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit12.i.i.i.i.i ], [ %i.cm, %bb.p ] ; 3 uses
  %i.di = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.di)
  %i.dj = add i64 %i.bx, -1                       ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %bb.r, label %bb.o

bb.r:                                             ; preds = %bb.q
  %i.dl = insertvalue { i64, i32 } poison, i64 %i.bv, 0
  %i.dm = insertvalue { i64, i32 } %i.dl, i32 %.sroa.4.0.i.ph.i.i.i.i, 1
  br label %_RINvXs7_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB6_4TakeNtNtNtBc_3str4iter11CharIndicesENtB6_8SpecTake9spec_foldINtNtBc_6option6OptionTjcEEINvNvNtNtNtBa_6traits8iterator8Iterator4last4someB2f_EECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtB9_6option6OptionTjcEENCINvNvXs_NtNtBU_8adapters4takeINtB2d_4TakepEBO_8try_fold5checkB1Y_B1C_INtNtNtB9_3ops9try_trait17NeverShortCircuitB1C_ENCINvMB3f_B3c_10wrap_mut_2B1C_B1Y_INvNvBO_4last4someB1Y_EE0E0INtNtB3h_12control_flow11ControlFlowB3c_B1C_EECs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i: ; preds = %bb.o, %bb.n
  %.sroa.7.0.lcssa.sink.i9.i.i = phi i32 [ -1, %bb.n ], [ %.sroa.4.0.i.ph.i.i.i.i, %bb.o ]
  %.sroa.0.0.lcssa.sink.i8.i.i = phi i64 [ undef, %bb.n ], [ %i.bv, %bb.o ]
  %i.dn = insertvalue { i64, i32 } poison, i64 %.sroa.0.0.lcssa.sink.i8.i.i, 0
  %i.do = insertvalue { i64, i32 } %i.dn, i32 %.sroa.7.0.lcssa.sink.i9.i.i, 1
  br label %_RINvXs7_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB6_4TakeNtNtNtBc_3str4iter11CharIndicesENtB6_8SpecTake9spec_foldINtNtBc_6option6OptionTjcEEINvNvNtNtNtBa_6traits8iterator8Iterator4last4someB2f_EECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvXs7_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB6_4TakeNtNtNtBc_3str4iter11CharIndicesENtB6_8SpecTake9spec_foldINtNtBc_6option6OptionTjcEEINvNvNtNtNtBa_6traits8iterator8Iterator4last4someB2f_EECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %.loopexit, %bb.r, %_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtB9_6option6OptionTjcEENCINvNvXs_NtNtBU_8adapters4takeINtB2d_4TakepEBO_8try_fold5checkB1Y_B1C_INtNtNtB9_3ops9try_trait17NeverShortCircuitB1C_ENCINvMB3f_B3c_10wrap_mut_2B1C_B1Y_INvNvBO_4last4someB1Y_EE0E0INtNtB3h_12control_flow11ControlFlowB3c_B1C_EECs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i
  %.merged.i.i = phi { i64, i32 } [ { i64 undef, i32 -1 }, %.loopexit ], [ %i.dm, %bb.r ], [ %i.do, %_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtB9_6option6OptionTjcEENCINvNvXs_NtNtBU_8adapters4takeINtB2d_4TakepEBO_8try_fold5checkB1Y_B1C_INtNtNtB9_3ops9try_trait17NeverShortCircuitB1C_ENCINvMB3f_B3c_10wrap_mut_2B1C_B1Y_INvNvBO_4last4someB1Y_EE0E0INtNtB3h_12control_flow11ControlFlowB3c_B1C_EECs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i ] ; 2 uses
  %i.dp = extractvalue { i64, i32 } %.merged.i.i, 0
  %i.dq = extractvalue { i64, i32 } %.merged.i.i, 1 ; 4 uses
  %.not = icmp eq i32 %i.dq, -1
  br i1 %.not, label %.thread, label %bb.s

bb.s:                                             ; preds = %_RINvXs7_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB6_4TakeNtNtNtBc_3str4iter11CharIndicesENtB6_8SpecTake9spec_foldINtNtBc_6option6OptionTjcEEINvNvNtNtNtBa_6traits8iterator8Iterator4last4someB2f_EECs6u1mgJOKDyY_13rust_analyzer.exit
  %i.dr = icmp samesign ult i32 %i.dq, 128
  br i1 %i.dr, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s, %bb.x, %bb.w
  %.sroa.012.0 = phi i64 [ 2, %bb.w ], [ %., %bb.x ], [ 1, %bb.s ]
  %i.ds = add i64 %.sroa.012.0, %i.dp             ; 6 uses
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not.i20 = icmp ult i64 %i.ds, %i.m
  br i1 %.not.i20, label %bb.v, label %.split.i

.split.i:                                         ; preds = %bb.u
  %i.du = icmp eq i64 %i.ds, %i.m
  br i1 %i.du, label %.thread, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.dv = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ds
  %i.dw = load i8, ptr %i.dv, align 1, !alias.scope !12528, !noundef !8
  %i.dx = icmp sgt i8 %i.dw, -65
  br i1 %i.dx, label %.thread, label %bb.y

bb.w:                                             ; preds = %bb.s
  %i.dy = icmp samesign ult i32 %i.dq, 2048
  br i1 %i.dy, label %bb.t, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dz = icmp samesign ult i32 %i.dq, 65536
  %. = select i1 %i.dz, i64 3, i64 4
  br label %bb.t

.thread:                                          ; preds = %_RINvXs7_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB6_4TakeNtNtNtBc_3str4iter11CharIndicesENtB6_8SpecTake9spec_foldINtNtBc_6option6OptionTjcEEINvNvNtNtNtBa_6traits8iterator8Iterator4last4someB2f_EECs6u1mgJOKDyY_13rust_analyzer.exit, %bb.v, %.split.i, %bb.t
  %.sroa.05.025 = phi i64 [ 0, %bb.t ], [ %i.ds, %bb.v ], [ %i.m, %.split.i ], [ 0, %_RINvXs7_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB6_4TakeNtNtNtBc_3str4iter11CharIndicesENtB6_8SpecTake9spec_foldINtNtBc_6option6OptionTjcEEINvNvNtNtNtBa_6traits8iterator8Iterator4last4someB2f_EECs6u1mgJOKDyY_13rust_analyzer.exit ] ; 2 uses
  %i.ea = load i8, ptr %0, align 1, !range !15, !noundef !8
  %.not19 = icmp eq i8 %i.ea, 2
  br i1 %.not19, label %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit, label %bb.z

bb.y:                                             ; preds = %bb.v, %.split.i
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.m, i64 noundef 0, i64 noundef %i.ds, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #48
  unreachable

bb.z:                                             ; preds = %.thread
  %i.eb = tail call noundef i64 @_RNvMCs9HU4uknhSfY_10line_indexNtB2_12WideEncoding7measure(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %.sroa.05.025)
  br label %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer3cli11diagnostics11all_modules(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !12544 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 13 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 10 uses
  %i.f = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs_Cs8Xq8PKFYOms_3hirNtB4_5Crate3all(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %2)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !8, !noundef !8 ; 9 uses
  %i.i = load i64, ptr %i.d, align 8, !range !37, !noundef !8 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !8 ; 2 uses
  %i.l = icmp ult i64 %i.k, 1152921504606846976
  call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.h, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.m, ptr %.sroa.6.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %2, ptr %i.o, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !12545)
  %i.p = invoke noundef i64 @_RNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5CrateENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3cli11diagnostics11all_modules0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB2d_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e)
          to label %.noexc.i unwind label %bb.b, !noalias !12545 ; 4 uses

.body.i:                                          ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.r, %bb.b ], [ %i.ac, %bb.c ] ; 2 uses
  %i.q = icmp eq i64 %i.i, 0
  br i1 %i.q, label %common.resume, label %common.resume.sink.split

bb.b:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12546
  store ptr %i.h, ptr %i.a, align 8, !noalias !12546
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.s, align 8, !noalias !12546
  %.not.i.i = icmp eq i64 %i.p, 0
end_hunk_0
