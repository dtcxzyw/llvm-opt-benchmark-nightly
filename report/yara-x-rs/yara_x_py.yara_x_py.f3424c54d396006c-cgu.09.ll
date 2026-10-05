Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_py.yara_x_py.f3424c54d396006c-cgu.09?download=true
inline.NumInlined: 510
inline.NumDeleted: 263
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMs3_NtCsexYYUdYSQU6_5alloc3stre7replaceReECskSRqRFwaW70_9yara_x_py:bb.a
  %i.fp = icmp sgt i64 %i.fo, -1
  call void @llvm.assume(i1 %i.fp)
  %.not.i30 = icmp eq i64 %.sroa.557.0, %.sroa.04.0
  br i1 %.not.i30, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.noexc32
  %i.fq = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !68, !nonnull !5, !noundef !5
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fo
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fr, ptr nonnull readonly align 1 %i.fn, i64 %gepdiff, i1 false)
  %.pre.i31 = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !68
  br label %bb.am

bb.am:                                            ; preds = %.noexc32, %bb.al
  %i.fs = phi i64 [ %.pre.i31, %bb.al ], [ %i.fo, %.noexc32 ]
  %i.ft = add i64 %i.fs, %gepdiff
  store i64 %i.ft, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !68
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %4)
          to label %.noexc36 unwind label %.loopexit81

.noexc36:                                         ; preds = %bb.am
  %i.fu = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !69, !noundef !5 ; 3 uses
  %i.fv = icmp sgt i64 %i.fu, -1
  call void @llvm.assume(i1 %i.fv)
  br i1 %.not.i34, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.noexc36
  %i.fw = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !69, !nonnull !5, !noundef !5
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fu
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fx, ptr nonnull readonly align 1 %3, i64 %4, i1 false)
  %.pre.i35 = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !69
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.noexc36
  %i.fy = phi i64 [ %.pre.i35, %bb.an ], [ %i.fu, %.noexc36 ]
  %i.fz = add i64 %i.fy, %4
  store i64 %i.fz, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !69
  br label %bb.f

bb.ap:                                            ; preds = %bb.d
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.aq:                                            ; preds = %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCsexYYUdYSQU6_5alloc3vec3VechEINtNtNtBa_5slice4iter4IterB14_EECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !9
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCsg2CeFYmfPbl_8protobuf11message_dyn10MessageDynEL_EINtNtNtBa_5slice4iter4IterB14_EECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !9
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtNtBa_5slice4iter4IterB14_EECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !9
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7dynamic17DynamicFieldValueINtNtNtBa_5slice4iter4IterB14_EECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !9
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsbbTh99npV2h_10serde_json2de10from_traitNtNtB4_4read7StrReadNtNtB4_5value5ValueECskSRqRFwaW70_9yara_x_py(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i8 -128, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB5_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %i.c)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.h, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.s, %bb.h ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbbTh99npV2h_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #22
          to label %common.resume unwind label %bb.o

bb.c:                                             ; preds = %bb.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !range !10, !noundef !5
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !85, !noalias !86, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.i, align 8, !alias.scope !87, !noalias !88 ; 2 uses
  %i.l = icmp ult i64 %.promoted.i.i, %i.k
  br i1 %i.l, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.m = load ptr, ptr %i.d, align 8, !alias.scope !85, !noalias !86, !nonnull !5, !noundef !5
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %i.n = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.q, %bb.g ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !91, !noundef !5
  switch i8 %i.p, label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskSRqRFwaW70_9yara_x_py.exit.i [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.q = add i64 %i.n, 1                          ; 3 uses
  store i64 %i.q, ptr %i.i, align 8, !alias.scope !92, !noalias !88
  %exitcond.not.i.i = icmp eq i64 %i.q, %i.k
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.f

_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskSRqRFwaW70_9yara_x_py.exit.i: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !83
  store i64 22, ptr %i.a, align 8, !noalias !83
  %i.r = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskSRqRFwaW70_9yara_x_py.exit.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5value5ValueECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 dereferenceable(72) %i.b) #22
          to label %bb.b unwind label %bb.o

bb.i:                                             ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskSRqRFwaW70_9yara_x_py.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !83
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5value5ValueECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 dereferenceable(72) %i.b)
          to label %bb.l unwind label %bb.c

.loopexit:                                        ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbbTh99npV2h_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECskSRqRFwaW70_9yara_x_py.exit6 unwind label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.m, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.m ], [ %i.u, %bb.j ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbbTh99npV2h_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECskSRqRFwaW70_9yara_x_py.exit6: ; preds = %.loopexit, %bb.l
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.l:                                             ; preds = %bb.d, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbbTh99npV2h_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECskSRqRFwaW70_9yara_x_py.exit6 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.o:                                             ; preds = %bb.h, %bb.b
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsexYYUdYSQU6_5alloc3str17join_generic_copyehNtNtB4_6string6StringECskSRqRFwaW70_9yara_x_py(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 384307168202282326) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %.idx = mul nuw nsw i64 %2, 24                  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 7 uses
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.f = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 16
  %.val82 = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %gepdiff = add nsw i64 %.idx, -24
  %i.h = udiv exact i64 %gepdiff, 24
  %i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %i.h) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  %i.k = extractvalue { i64, i1 } %i.i, 0         ; 2 uses
  %i.l = add i64 %.val82, %i.k                    ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.k
  %or.cond = or i1 %i.j, %i.m
  br i1 %or.cond, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2V_ECskSRqRFwaW70_9yara_x_py.exit, label %.preheader220.preheader, !prof !11

.preheader220.preheader:                          ; preds = %bb.b
  %i.n = icmp eq i64 %2, 1
  br i1 %i.n, label %.preheader220._crit_edge, label %.lr.ph

.preheader220:                                    ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.c
  br i1 %i.p, label %.preheader220._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader220.preheader, %.preheader220
  %.sroa.01.0.i317 = phi i64 [ %i.s, %.preheader220 ], [ %i.l, %.preheader220.preheader ] ; 2 uses
  %i.q = phi ptr [ %i.o, %.preheader220 ], [ %i.e, %.preheader220.preheader ] ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %.val8.i = load i64, ptr %i.r, align 8, !noalias !95, !noundef !5
  %i.s = add i64 %.val8.i, %.sroa.01.0.i317       ; 3 uses
  %i.t = icmp ult i64 %i.s, %.sroa.01.0.i317
  br i1 %i.t, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2V_ECskSRqRFwaW70_9yara_x_py.exit, label %.preheader220

.preheader220._crit_edge:                         ; preds = %.preheader220, %.preheader220.preheader
  %.sroa.01.0.i.lcssa = phi i64 [ %i.l, %.preheader220.preheader ], [ %i.s, %.preheader220 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.01.0.i.lcssa, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.u = load i64, ptr %i.a, align 8, !range !6, !noundef !5
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !7, !noundef !5 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.v, label %bb.c, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskSRqRFwaW70_9yara_x_py.exit, !prof !8

bb.c:                                             ; preds = %.preheader220._crit_edge
  %i.z = load i64, ptr %i.y, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.x, i64 %i.z) #21
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskSRqRFwaW70_9yara_x_py.exit: ; preds = %.preheader220._crit_edge
  %i.aa = load ptr, ptr %i.y, align 8, !nonnull !5, !noundef !5
  %i.ab = icmp ule i64 %.sroa.01.0.i.lcssa, %i.x
  tail call void @llvm.assume(i1 %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.x, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.aa, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 %.val82
  invoke void @_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEE11spec_extendCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %.val, ptr noundef nonnull %i.ae)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2V_ECskSRqRFwaW70_9yara_x_py.exit: ; preds = %.lr.ph, %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #23
  unreachable

.loopexit196:                                     ; preds = %bb.s, %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.f, %.lr.ph341
  %lpad.loopexit199 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.g, %bb.i
  %lpad.loopexit204 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.l, %bb.j
  %lpad.loopexit208 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.m, %bb.o
  %lpad.loopexit213 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.r, %bb.p
  %lpad.loopexit217 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskSRqRFwaW70_9yara_x_py.exit
  %lpad.loopexit.split-lp218 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit196
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit196 ], [ %lpad.loopexit199, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit204, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit208, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit213, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit217, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp218, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #22
          to label %bb.x unwind label %bb.w

bb.d:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskSRqRFwaW70_9yara_x_py.exit
  %i.af = load i64, ptr %i.ad, align 8, !noundef !5 ; 3 uses
  %i.ag = icmp sgt i64 %i.af, -1
  call void @llvm.assume(i1 %i.ag)
  %i.ah = load ptr, ptr %i.ac, align 8, !nonnull !5, !noundef !5
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af ; 6 uses
  %i.aj = sub i64 %.sroa.01.0.i.lcssa, %i.af      ; 12 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYBX_NtNtBa_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py:bb.a
  %i.aj = sub nuw i64 %i.ah, %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.aj, i1 false), !noalias !148
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_end16small_probe_readNtCskSRqRFwaW70_9yara_x_py8PyReaderEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.c = call { i64, ptr } @_RNvXs_CskSRqRFwaW70_9yara_x_pyNtB4_8PyReaderNtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull %i.b, i64 noundef 32) ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0
  %i.e = extractvalue { i64, ptr } %i.c, 1        ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = trunc nuw i64 %i.d to i1
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskSRqRFwaW70_9yara_x_py.exit
  %i.i = phi i64 [ %i.f, %.lr.ph ], [ %i.at, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskSRqRFwaW70_9yara_x_py.exit ] ; 4 uses
  %i.j = phi ptr [ %i.e, %.lr.ph ], [ %i.as, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskSRqRFwaW70_9yara_x_py.exit ] ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.k = and i64 %i.i, 3
  switch i64 %i.k, label %default.unreachable [
    i64 2, label %bb.c
    i64 3, label %.split13
    i64 0, label %.split14
    i64 1, label %.split
  ], !prof !14

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.c
  %i.m = lshr i64 %i.i, 32
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.q = invoke noundef zeroext i1 %i.p(i32 noundef %i.n)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.i, !inline_history !0

.split13:                                         ; preds = %bb.b
  %i.r = lshr i64 %i.i, 32
  %i.s = icmp ult ptr %i.j, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.r to i8
  %spec.select.i.i.i = select i1 %i.s, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.t = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.t)
  %i.u = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.u, label %bb.g, label %.loopexit

.split14:                                         ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !17, !noundef !5
  %i.x = icmp eq i8 %i.w, 35
  br i1 %i.x, label %.thread16, label %.loopexit

.split:                                           ; preds = %bb.b
  %i.y = getelementptr i8, ptr %i.j, i64 31
  %i.z = load i8, ptr %i.y, align 8, !range !17, !noundef !5
  %i.aa = icmp eq i8 %i.z, 35
  br i1 %i.aa, label %bb.h, label %.loopexit

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskSRqRFwaW70_9yara_x_py.exit, %bb.a
  %.lcssa21 = phi ptr [ %i.e, %bb.a ], [ %i.as, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskSRqRFwaW70_9yara_x_py.exit ] ; 3 uses
  %.lcssa = phi i64 [ %i.f, %bb.a ], [ %i.at, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskSRqRFwaW70_9yara_x_py.exit ] ; 4 uses
  %i.ab = icmp ult ptr %.lcssa21, inttoptr (i64 33 to ptr)
  br i1 %i.ab, label %.noexc6, label %bb.d, !prof !18

bb.d:                                             ; preds = %._crit_edge
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.lcssa, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #21
  unreachable

.noexc6:                                          ; preds = %._crit_edge
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.lcssa)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !153, !noundef !5 ; 3 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  call void @llvm.assume(i1 %i.ae)
  %.not.i = icmp eq ptr %.lcssa21, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc6
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !153, !nonnull !5, !noundef !5
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull readonly align 1 %i.b, i64 %.lcssa, i1 false)
  %.pre.i = load i64, ptr %i.ac, align 8, !alias.scope !153
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.noexc6
  %i.ai = phi i64 [ %.pre.i, %bb.e ], [ %i.ad, %.noexc6 ]
  %i.aj = add i64 %i.ai, %.lcssa
  store i64 %i.aj, ptr %i.ac, align 8, !alias.scope !153
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split13, %.split14, %bb.f
  %i.ak = phi ptr [ %.lcssa21, %bb.f ], [ %i.j, %.split14 ], [ %i.j, %.split13 ], [ %i.j, %.split ], [ %i.j, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  %.sroa.0.0 = phi i64 [ 0, %bb.f ], [ 1, %.split14 ], [ 1, %.split13 ], [ 1, %.split ], [ 1, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.al = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.am = insertvalue { i64, ptr } %i.al, ptr %i.ak, 1
  ret { i64, ptr } %i.am

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.q, label %.thread16, label %.loopexit

.thread16:                                        ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskSRqRFwaW70_9yara_x_py.exit

bb.g:                                             ; preds = %.split13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.an = and i64 %i.i, 1095216660480
  %i.ao = icmp ne i64 %i.an, 1095216660480
  call void @llvm.assume(i1 %i.s)
  call void @llvm.assume(i1 %i.ao)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskSRqRFwaW70_9yara_x_py.exit

bb.h:                                             ; preds = %.split
  %i.ap = getelementptr i8, ptr %i.j, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  store ptr %i.ap, ptr %i.h, align 8, !alias.scope !154
  store i8 3, ptr %i.a, align 8, !alias.scope !154
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskSRqRFwaW70_9yara_x_py.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskSRqRFwaW70_9yara_x_py.exit: ; preds = %bb.g, %bb.h, %.thread16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aq = call { i64, ptr } @_RNvXs_CskSRqRFwaW70_9yara_x_pyNtB4_8PyReaderNtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull %i.b, i64 noundef 32) ; 2 uses
  %i.ar = extractvalue { i64, ptr } %i.aq, 0
  %i.as = extractvalue { i64, ptr } %i.aq, 1      ; 3 uses
  %i.at = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.au = trunc nuw i64 %i.ar to i1
  br i1 %i.au, label %bb.b, label %._crit_edge

bb.i:                                             ; preds = %bb.c, %.noexc
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskSRqRFwaW70_9yara_x_py(ptr nonnull %i.j) #22
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.k:                                             ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvXs9_NtCsbbTh99npV2h_10serde_json2deINtB8_9MapAccesspENtNtCsaeRQ2XwCvzm_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECskSRqRFwaW70_9yara_x_py(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !5, !align !19, !noundef !5 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !180, !noalias !181, !noundef !5 ; 4 uses
  %.promoted.i = load i64, ptr %i.h, align 8, !alias.scope !179, !noalias !182 ; 2 uses
  %i.k = icmp ult i64 %.promoted.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %.loopexit22

.lr.ph.i:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !180, !noalias !181, !nonnull !5, !noundef !5 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.n = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.q, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !185, !noundef !5 ; 3 uses
  switch i8 %i.p, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 125, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.q = add i64 %i.n, 1                          ; 3 uses
  store i64 %i.q, ptr %i.h, align 8, !alias.scope !186, !noalias !182
  %exitcond.not.i = icmp eq i64 %i.q, %i.j
  br i1 %exitcond.not.i, label %.loopexit22, label %bb.b

.loopexit22:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 3, ptr %i.f, align 8
  %i.r = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.s, align 8
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.t, align 1
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !range !15, !noundef !5
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i8 %i.p, 44
  br i1 %i.x, label %bb.h, label %bb.j, !prof !20

bb.g:                                             ; preds = %bb.e
  store i8 0, ptr %i.u, align 8
  %i.y = icmp eq i8 %i.p, 34
  br i1 %i.y, label %bb.n, label %bb.o, !prof !20

bb.h:                                             ; preds = %bb.f
  %i.z = add i64 %i.n, 1                          ; 3 uses
  store i64 %i.z, ptr %i.h, align 8, !alias.scope !187
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.aa = icmp ult i64 %i.z, %i.j
  br i1 %i.aa, label %.lr.ph.i7, label %.loopexit

.lr.ph.i7:                                        ; preds = %bb.h, %bb.i
  %i.ab = phi i64 [ %i.ae, %bb.i ], [ %i.z, %bb.h ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !189, !noundef !5
  switch i8 %i.ad, label %bb.k [
    i8 32, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
    i8 34, label %bb.l
    i8 125, label %bb.m
  ], !prof !21

bb.i:                                             ; preds = %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7
  %i.ae = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.ae, ptr %i.h, align 8, !alias.scope !190, !noalias !191
  %exitcond.not.i8 = icmp eq i64 %i.ae, %i.j
  br i1 %exitcond.not.i8, label %.loopexit, label %.lr.ph.i7

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 8, ptr %i.a, align 8
  %i.af = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  br label %bb.p

.loopexit:                                        ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 5, ptr %i.b, align 8
  %i.ah = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.ai, align 8
  br label %bb.p

bb.k:                                             ; preds = %.lr.ph.i7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 17, ptr %i.c, align 8
  %i.aj = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.ak, align 8
  br label %bb.p

bb.l:                                             ; preds = %.lr.ph.i7
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.al, align 1
  br label %bb.p

bb.m:                                             ; preds = %.lr.ph.i7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 21, ptr %i.d, align 8
  %i.am = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8
  br label %bb.p

bb.n:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ao, align 1
  br label %bb.p

bb.o:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 17, ptr %i.e, align 8
  %i.ap = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.j, %.loopexit22, %bb.d
  %.sink = phi i8 [ 1, %.loopexit ], [ 1, %bb.k ], [ 0, %bb.l ], [ 1, %bb.m ], [ 0, %bb.n ], [ 1, %bb.o ], [ 1, %bb.j ], [ 1, %.loopexit22 ], [ 0, %bb.d ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB5_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECskSRqRFwaW70_9yara_x_py(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [72 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [72 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 11 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [72 x i8], align 8                ; 6 uses
  %i.u = alloca [72 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 13 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 7 uses
  %i.ad = alloca [16 x i8], align 8               ; 7 uses
  %i.ae = alloca [80 x i8], align 8               ; 4 uses
  %i.af = alloca [80 x i8], align 8               ; 4 uses
  %i.ag = alloca [72 x i8], align 8               ; 5 uses
  %i.ah = alloca [72 x i8], align 8               ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.1396.sroa.6 = alloca [72 x i8], align 8  ; 2 uses
  %i.aj = alloca [72 x i8], align 8               ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 9 uses
  %i.al = alloca [72 x i8], align 8               ; 6 uses
  %i.am = alloca [72 x i8], align 8               ; 17 uses
  %i.an = alloca [24 x i8], align 8               ; 8 uses
  %i.ao = alloca [16 x i8], align 8               ; 9 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [72 x i8], align 8               ; 6 uses
  %i.at = alloca [24 x i8], align 8               ; 4 uses
  %i.au = alloca [72 x i8], align 8               ; 5 uses
  %i.av = alloca [80 x i8], align 8               ; 10 uses
  %i.aw = alloca [72 x i8], align 8               ; 27 uses
  %i.ax = alloca [24 x i8], align 8               ; 4 uses
  %i.ay = alloca [72 x i8], align 8               ; 9 uses
  %i.az = alloca [80 x i8], align 8               ; 13 uses
  %.sroa.8 = alloca [56 x i8], align 8            ; 7 uses
  %i.ba = alloca [24 x i8], align 8               ; 4 uses
  %i.bb = alloca [24 x i8], align 8               ; 7 uses
  %i.bc = alloca [16 x i8], align 8               ; 6 uses
  %i.bd = alloca [16 x i8], align 8               ; 6 uses
  %.sroa.51 = alloca [40 x i8], align 8           ; 6 uses
  %i.be = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 31 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !429, !noalias !430, !noundef !5 ; 10 uses
  %.promoted.i61 = load i64, ptr %i.bf, align 8, !alias.scope !428, !noalias !431 ; 2 uses
  %i.bi = icmp ult i64 %.promoted.i61, %i.bh
  br i1 %i.bi, label %.lr.ph.i, label %.loopexit269

.lr.ph.i:                                         ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !429, !noalias !430, !nonnull !5, !noundef !5 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.bl = phi i64 [ %.promoted.i61, %.lr.ph.i ], [ %i.bo, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432), !noalias !426
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433), !noalias !426
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !noalias !434, !noundef !5 ; 3 uses
  switch i8 %i.bn, label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskSRqRFwaW70_9yara_x_py.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.bo = add i64 %i.bl, 1                        ; 3 uses
  store i64 %i.bo, ptr %i.bf, align 8, !alias.scope !435, !noalias !431
  %exitcond.not.i62 = icmp eq i64 %i.bo, %i.bh
  br i1 %exitcond.not.i62, label %.loopexit269, label %bb.b

_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskSRqRFwaW70_9yara_x_py.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.51)
  switch i8 %i.bn, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ad
    i8 123, label %bb.ae
  ]

.loopexit269:                                     ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !436
  store i64 5, ptr %i.be, align 8, !noalias !436
  %i.bp = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.be), !noalias !426, !inline_history !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !436
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bp, ptr %i.bq, align 8, !alias.scope !426, !noalias !427
  store i64 -1, ptr %0, align 8, !alias.scope !426, !noalias !427
  br label %_RINvXs5_NtCsbbTh99npV2h_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECskSRqRFwaW70_9yara_x_py.exit

bb.d:                                             ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskSRqRFwaW70_9yara_x_py.exit
  %i.br = add i8 %i.bn, -48
  %or.cond8.i = icmp ult i8 %i.br, 10
  br i1 %or.cond8.i, label %bb.eg, label %bb.ef, !prof !18

bb.e:                                             ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskSRqRFwaW70_9yara_x_py.exit
  %i.bs = add i64 %i.bl, 1                        ; 4 uses
  store i64 %i.bs, ptr %i.bf, align 8, !alias.scope !437, !noalias !426
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  %umax.i53 = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 %i.bh) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439), !noalias !426
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440), !noalias !426
  %exitcond.not.i55.not = icmp ult i64 %i.bs, %i.bh
  br i1 %exitcond.not.i55.not, label %bb.f, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i59

bb.f:                                             ; preds = %bb.e
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !441, !noundef !5
  %i.bv = add i64 %i.bl, 2                        ; 3 uses
  store i64 %i.bv, ptr %i.bf, align 8, !alias.scope !442, !noalias !443
  %.not.i56 = icmp eq i8 %i.bu, 117
  br i1 %.not.i56, label %bb.g, label %bb.k, !prof !22

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444), !noalias !426
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445), !noalias !426
  %exitcond.not.i55.1 = icmp eq i64 %i.bv, %umax.i53
  br i1 %exitcond.not.i55.1, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i59, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !446, !noundef !5
  %i.by = add i64 %i.bl, 3                        ; 3 uses
  store i64 %i.by, ptr %i.bf, align 8, !alias.scope !447, !noalias !443
  %.not.i56.1 = icmp eq i8 %i.bx, 108
  br i1 %.not.i56.1, label %bb.i, label %bb.k, !prof !22

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448), !noalias !426
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449), !noalias !426
  %exitcond.not.i55.2 = icmp eq i64 %i.by, %umax.i53
  br i1 %exitcond.not.i55.2, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i59, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !noalias !450, !noundef !5
  %i.cb = add i64 %i.bl, 4
  store i64 %i.cb, ptr %i.bf, align 8, !alias.scope !451, !noalias !443
  %.not.i56.2 = icmp eq i8 %i.ca, 108
  br i1 %.not.i56.2, label %.thread, label %bb.k, !prof !22

_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i59: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !452
  store i64 5, ptr %i.o, align 8, !noalias !452
  %i.cc = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.o), !noalias !453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !452
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !452
  store i64 9, ptr %i.n, align 8, !noalias !452
  %i.cd = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.n), !noalias !453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !452
  br label %bb.af

bb.l:                                             ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskSRqRFwaW70_9yara_x_py.exit
  %i.ce = add i64 %i.bl, 1                        ; 4 uses
  store i64 %i.ce, ptr %i.bf, align 8, !alias.scope !454, !noalias !426
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %umax.i44 = tail call i64 @llvm.umax.i64(i64 %i.ce, i64 %i.bh) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456), !noalias !426
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457), !noalias !426
  %exitcond.not.i46.not = icmp ult i64 %i.ce, %i.bh
  br i1 %exitcond.not.i46.not, label %bb.m, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i50

bb.m:                                             ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !noalias !458, !noundef !5
  %i.ch = add i64 %i.bl, 2                        ; 3 uses
  store i64 %i.ch, ptr %i.bf, align 8, !alias.scope !459, !noalias !460
  %.not.i47 = icmp eq i8 %i.cg, 114
  br i1 %.not.i47, label %bb.n, label %bb.r, !prof !22

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461), !noalias !426
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462), !noalias !426
  %exitcond.not.i46.1 = icmp eq i64 %i.ch, %umax.i44
  br i1 %exitcond.not.i46.1, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i50, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !noalias !463, !noundef !5
  %i.ck = add i64 %i.bl, 3                        ; 3 uses
  store i64 %i.ck, ptr %i.bf, align 8, !alias.scope !464, !noalias !460
  %.not.i47.1 = icmp eq i8 %i.cj, 117
  br i1 %.not.i47.1, label %bb.p, label %bb.r, !prof !22

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465), !noalias !426
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466), !noalias !426
  %exitcond.not.i46.2 = icmp eq i64 %i.ck, %umax.i44
  br i1 %exitcond.not.i46.2, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i50, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !noalias !467, !noundef !5
  %i.cn = add i64 %i.bl, 4
  store i64 %i.cn, ptr %i.bf, align 8, !alias.scope !468, !noalias !460
  %.not.i47.2 = icmp eq i8 %i.cm, 101
  br i1 %.not.i47.2, label %.thread, label %bb.r, !prof !22

_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i50: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !469
  store i64 5, ptr %i.q, align 8, !noalias !469
  %i.co = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.q), !noalias !470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !469
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !469
  store i64 9, ptr %i.p, align 8, !noalias !469
  %i.cp = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.p), !noalias !470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !469
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskSRqRFwaW70_9yara_x_py.exit
  %i.cq = add i64 %i.bl, 1                        ; 4 uses
  store i64 %i.cq, ptr %i.bf, align 8, !alias.scope !471, !noalias !426
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %i.bh) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473), !noalias !426
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474), !noalias !426
  %exitcond.not.i.not = icmp ult i64 %i.cq, %i.bh
  br i1 %exitcond.not.i.not, label %bb.t, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.t:                                             ; preds = %bb.s
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !noalias !475, !noundef !5
  %i.ct = add i64 %i.bl, 2                        ; 3 uses
  store i64 %i.ct, ptr %i.bf, align 8, !alias.scope !476, !noalias !477
  %.not.i41 = icmp eq i8 %i.cs, 97
  br i1 %.not.i41, label %bb.u, label %bb.aa, !prof !22

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478), !noalias !426
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479), !noalias !426
  %exitcond.not.i.1 = icmp eq i64 %i.ct, %umax.i
  br i1 %exitcond.not.i.1, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !noalias !480, !noundef !5
  %i.cw = add i64 %i.bl, 3                        ; 3 uses
  store i64 %i.cw, ptr %i.bf, align 8, !alias.scope !481, !noalias !477
  %.not.i41.1 = icmp eq i8 %i.cv, 108
  br i1 %.not.i41.1, label %bb.w, label %bb.aa, !prof !22

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482), !noalias !426
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483), !noalias !426
  %exitcond.not.i.2 = icmp eq i64 %i.cw, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !noalias !484, !noundef !5
  %i.cz = add i64 %i.bl, 4                        ; 3 uses
  store i64 %i.cz, ptr %i.bf, align 8, !alias.scope !485, !noalias !477
  %.not.i41.2 = icmp eq i8 %i.cy, 115
  br i1 %.not.i41.2, label %bb.y, label %bb.aa, !prof !22

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486), !noalias !426
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487), !noalias !426
  %exitcond.not.i.3 = icmp eq i64 %i.cz, %umax.i
  br i1 %exitcond.not.i.3, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.da = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !noalias !488, !noundef !5
  %i.dc = add i64 %i.bl, 5
  store i64 %i.dc, ptr %i.bf, align 8, !alias.scope !489, !noalias !477
  %.not.i41.3 = icmp eq i8 %i.db, 101
  br i1 %.not.i41.3, label %.thread, label %bb.aa, !prof !22

_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !490
  store i64 5, ptr %i.s, align 8, !noalias !490
  %i.dd = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.s), !noalias !491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !490
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !490
  store i64 9, ptr %i.r, align 8, !noalias !490
  %i.de = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.r), !noalias !491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !490
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskSRqRFwaW70_9yara_x_py.exit
  %i.df = add i64 %i.bl, 1
  store i64 %i.df, ptr %i.bf, align 8, !alias.scope !492, !noalias !426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !436
  call fastcc void @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.bd, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !426, !inline_history !206
  %i.dg = load i64, ptr %i.bd, align 8, !range !493, !noalias !436, !noundef !5 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, -1
  %i.di = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  br i1 %i.dh, label %bb.ak, label %bb.al

bb.ac:                                            ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskSRqRFwaW70_9yara_x_py.exit
  %i.dj = add i64 %i.bl, 1
  store i64 %i.dj, ptr %i.bf, align 8, !alias.scope !494, !noalias !426
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.dk, align 8, !alias.scope !427, !noalias !426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !436
  call void @_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !426, !inline_history !206
  %i.dl = load i64, ptr %i.bb, align 8, !range !495, !noalias !436, !noundef !5 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 2
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !436 ; 3 uses
  br i1 %i.dm, label %bb.aq, label %bb.ar

bb.ad:                                            ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskSRqRFwaW70_9yara_x_py.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.dq = load i8, ptr %i.dp, align 8, !alias.scope !427, !noalias !426, !noundef !5
  %i.dr = add i8 %i.dq, -1                        ; 2 uses
  store i8 %i.dr, ptr %i.dp, align 8, !alias.scope !427, !noalias !426
  %i.ds = icmp eq i8 %i.dr, 0
  br i1 %i.ds, label %bb.ay, label %bb.az, !prof !8

bb.ae:                                            ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskSRqRFwaW70_9yara_x_py.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.du = load i8, ptr %i.dt, align 8, !alias.scope !427, !noalias !426, !noundef !5
  %i.dv = add i8 %i.du, -1                        ; 2 uses
  store i8 %i.dv, ptr %i.dt, align 8, !alias.scope !427, !noalias !426
  %i.dw = icmp eq i8 %i.dv, 0
  br i1 %i.dw, label %bb.cc, label %bb.cd, !prof !8

bb.af:                                            ; preds = %bb.k, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i59
  %.sroa.0.1.i58.ph = phi ptr [ %i.cc, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i59 ], [ %i.cd, %bb.k ]
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i58.ph, ptr %i.dx, align 8, !alias.scope !426, !noalias !427
  store i64 -1, ptr %0, align 8, !alias.scope !426, !noalias !427
  br label %bb.ah

bb.ag:                                            ; preds = %.thread248, %.thread245
  %.sroa.24.sroa.23.sroa.0.0.in.in = phi i64 [ %.sroa.24.sroa.23.sroa.0.4.in.in, %.thread248 ], [ %.sroa.24.sroa.23.sroa.0.3.in.in, %.thread245 ] ; 3 uses
  %.sroa.49.0 = phi i64 [ %.sroa.49.3, %.thread248 ], [ %.sroa.49.2, %.thread245 ]
  %.sroa.41.0 = phi i64 [ %.sroa.41.4, %.thread248 ], [ %.sroa.41.3, %.thread245 ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.4, %.thread248 ], [ %.sroa.0.3, %.thread245 ] ; 2 uses
  %i.dy = icmp eq i64 %.sroa.0.0, -1
  br i1 %i.dy, label %._crit_edge, label %.thread, !prof !496

._crit_edge:                                      ; preds = %bb.ag
  %i.dz = inttoptr i64 %.sroa.24.sroa.23.sroa.0.0.in.in to ptr
  br label %bb.eh

bb.ah:                                            ; preds = %bb.ei, %bb.cc, %bb.ay, %bb.aq, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51)
  br label %_RINvXs5_NtCsbbTh99npV2h_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECskSRqRFwaW70_9yara_x_py.exit

bb.ai:                                            ; preds = %bb.r, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i50
  %.sroa.0.1.i49.ph = phi ptr [ %i.co, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i50 ], [ %i.cp, %bb.r ]
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i49.ph, ptr %i.ea, align 8, !alias.scope !426, !noalias !427
  store i64 -1, ptr %0, align 8, !alias.scope !426, !noalias !427
  br label %bb.ah

bb.aj:                                            ; preds = %bb.aa, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i
  %.sroa.0.1.i.ph = phi ptr [ %i.dd, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.de, %bb.aa ]
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.eb, align 8, !alias.scope !426, !noalias !427
  store i64 -1, ptr %0, align 8, !alias.scope !426, !noalias !427
  br label %bb.ah

bb.ak:                                            ; preds = %bb.ab
  %i.ec = load ptr, ptr %i.di, align 8, !noalias !436, !nonnull !5, !align !19, !noundef !5
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ec, ptr %i.ed, align 8, !alias.scope !426, !noalias !427
  store i64 -1, ptr %0, align 8, !alias.scope !426, !noalias !427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !436
  br label %bb.ah

bb.al:                                            ; preds = %bb.ab
  %.sroa.4.0.copyload = load i64, ptr %i.di, align 8, !noalias !436 ; 5 uses
  switch i64 %i.dg, label %default.unreachable614 [
    i64 0, label %bb.am
    i64 1, label %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskSRqRFwaW70_9yara_x_py.exit38
    i64 2, label %bb.ap
  ]

default.unreachable614:                           ; preds = %bb.ej, %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.ee = bitcast i64 %.sroa.4.0.copyload to double
  %i.ef = tail call double @llvm.fabs.f64(double %i.ee)
  %i.eg = fcmp ueq double %i.ef, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !497
  br i1 %i.eg, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.sroa.5.0..sroa_idx4.i.i33 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.5.sroa.0.0.copyload8.i.i34 = load i64, ptr %.sroa.5.0..sroa_idx4.i.i33, align 8, !alias.scope !498, !noalias !499
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i35 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.5.sroa.5.0.copyload9.i.i36481 = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i35, align 8, !alias.scope !498, !noalias !499
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit.i27

bb.ao:                                            ; preds = %bb.am
  store i64 -9223372036854775808, ptr %i.t, align 8, !noalias !497
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500), !noalias !426
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5value5ValueECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t), !noalias !501
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit.i27

_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit.i27: ; preds = %bb.ao, %bb.an
  %i.eh = phi i64 [ %.sroa.5.sroa.5.0.copyload9.i.i36481, %bb.an ], [ %.sroa.4.0.copyload, %bb.ao ]
  %.sroa.5.sroa.0.0.i.i29 = phi i64 [ %.sroa.5.sroa.0.0.copyload8.i.i34, %bb.an ], [ 2, %bb.ao ] ; 2 uses
  %.sroa.0.0.i.i30 = phi i64 [ -9223372036854775808, %bb.an ], [ -9223372036854775806, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !497
  br label %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskSRqRFwaW70_9yara_x_py.exit38

bb.ap:                                            ; preds = %bb.al
  %.lobit.i.i22 = lshr i64 %.sroa.4.0.copyload, 63
  br label %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskSRqRFwaW70_9yara_x_py.exit38

_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskSRqRFwaW70_9yara_x_py.exit38: ; preds = %bb.al, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit.i27, %bb.ap
  %.sroa.24.sroa.23.sroa.0.1 = phi i64 [ %.sroa.5.sroa.0.0.i.i29, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit.i27 ], [ 0, %bb.ap ], [ 0, %bb.al ]
  %.sroa.24.sroa.0.1 = phi i64 [ %.sroa.5.sroa.0.0.i.i29, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit.i27 ], [ %.lobit.i.i22, %bb.ap ], [ 0, %bb.al ]
  %.sroa.41.1 = phi i64 [ %i.eh, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit.i27 ], [ %.sroa.4.0.copyload, %bb.ap ], [ %.sroa.4.0.copyload, %bb.al ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.i.i30, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit.i27 ], [ -9223372036854775806, %bb.ap ], [ -9223372036854775806, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !436
  br label %.thread

bb.aq:                                            ; preds = %bb.ac
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.do, ptr %i.ei, align 8, !alias.scope !426, !noalias !427
  store i64 -1, ptr %0, align 8, !alias.scope !426, !noalias !427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !436
  br label %bb.ah

bb.ar:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !436 ; 8 uses
  %i.ej = trunc nuw i64 %i.dl to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.do) ]
  br i1 %i.ej, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !502
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.4.0.copyload.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !502
  %i.ek = load i64, ptr %i.b, align 8, !range !6, !noalias !502, !noundef !5
  %i.el = trunc nuw i64 %i.ek to i1
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.en = load i64, ptr %i.em, align 8, !range !7, !noalias !502, !noundef !5 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.el, label %bb.at, label %bb.au, !prof !8

bb.at:                                            ; preds = %bb.as
  %i.ep = load i64, ptr %i.eo, align 8, !noalias !502
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.en, i64 %i.ep) #21, !noalias !502
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.eq = load ptr, ptr %i.eo, align 8, !noalias !502, !nonnull !5, !noundef !5 ; 2 uses
  %i.er = icmp ule i64 %.sroa.4.0.copyload.i, %i.en
  call void @llvm.assume(i1 %i.er), !noalias !426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !502
  %.not.i = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.i, label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit, label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit.sink.split

bb.av:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !503
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.4.0.copyload.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !503
  %i.es = load i64, ptr %i.a, align 8, !range !6, !noalias !503, !noundef !5
  %i.et = trunc nuw i64 %i.es to i1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !range !7, !noalias !503, !noundef !5 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.et, label %bb.aw, label %bb.ax, !prof !8

bb.aw:                                            ; preds = %bb.av
  %i.ex = load i64, ptr %i.ew, align 8, !noalias !503
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ev, i64 %i.ex) #21, !noalias !503
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.ey = load ptr, ptr %i.ew, align 8, !noalias !503, !nonnull !5, !noundef !5 ; 2 uses
  %i.ez = icmp ule i64 %.sroa.4.0.copyload.i, %i.ev
  call void @llvm.assume(i1 %i.ez), !noalias !426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !503
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.i.i, label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit, label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit.sink.split

_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit.sink.split: ; preds = %bb.ax, %bb.au
  %.sink = phi ptr [ %i.eq, %bb.au ], [ %i.ey, %bb.ax ] ; 2 uses
  %.sroa.24.sroa.23.sroa.0.2.in.in.ph = phi i64 [ %i.en, %bb.au ], [ %i.ev, %bb.ax ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink, ptr nonnull readonly align 1 %i.do, i64 %.sroa.4.0.copyload.i, i1 false), !noalias !426
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit

_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit: ; preds = %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit.sink.split, %bb.ax, %bb.au
  %.sroa.24.sroa.23.sroa.0.2.in.in = phi i64 [ %i.ev, %bb.ax ], [ %i.en, %bb.au ], [ %.sroa.24.sroa.23.sroa.0.2.in.in.ph, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit.sink.split ] ; 2 uses
  %.sroa.41.2.in = phi ptr [ %i.ey, %bb.ax ], [ %i.eq, %bb.au ], [ %.sink, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit.sink.split ]
  %.sroa.41.2 = ptrtoint ptr %.sroa.41.2.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !436
  br label %.thread

bb.ay:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !436
  store i64 24, ptr %i.ba, align 8, !noalias !436
  %i.fa = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ba), !noalias !426, !inline_history !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !436
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fa, ptr %i.fb, align 8, !alias.scope !426, !noalias !427
  store i64 -1, ptr %0, align 8, !alias.scope !426, !noalias !427
  br label %bb.ah

bb.az:                                            ; preds = %bb.ad
  %i.fc = add i64 %i.bl, 1                        ; 3 uses
  store i64 %i.fc, ptr %i.bf, align 8, !alias.scope !504, !noalias !426
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !505
  store i64 0, ptr %i.v, align 8, !noalias !505
  %i.fd = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.fd, align 8, !noalias !505
  %i.fe = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  store i64 0, ptr %i.fe, align 8, !noalias !505
  %i.ff = icmp ult i64 %i.fc, %i.bh
  br i1 %i.ff, label %.lr.ph.i.i.i76.lr.ph, label %.loopexit22.i.i

.lr.ph.i.i.i76.lr.ph:                             ; preds = %bb.az
  %.sroa.4146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.3.0..sroa_idx2.i20 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.3.i15.sroa.4.0..sroa.3.0..sroa_idx2.i20.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  br label %.lr.ph.i.i.i76

.lr.ph.i.i.i76:                                   ; preds = %.lr.ph.i.i.i76.lr.ph, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueE8push_mutCskSRqRFwaW70_9yara_x_py.exit.i
  %.promoted.i.i.i75297 = phi i64 [ %i.fc, %.lr.ph.i.i.i76.lr.ph ], [ %.promoted.i.i.i75, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueE8push_mutCskSRqRFwaW70_9yara_x_py.exit.i ]
  %i.fg = phi i64 [ %i.bh, %.lr.ph.i.i.i76.lr.ph ], [ %i.gk, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueE8push_mutCskSRqRFwaW70_9yara_x_py.exit.i ] ; 4 uses
  %.sroa.5121.0296 = phi i1 [ true, %.lr.ph.i.i.i76.lr.ph ], [ false, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueE8push_mutCskSRqRFwaW70_9yara_x_py.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !506), !noalias !507
  %i.fh = load ptr, ptr %i.bj, align 8, !alias.scope !508, !noalias !509, !nonnull !5, !noundef !5 ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bb, %.lr.ph.i.i.i76
  %i.fi = phi i64 [ %.promoted.i.i.i75297, %.lr.ph.i.i.i76 ], [ %i.fl, %bb.bb ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !510), !noalias !507
  call void @llvm.experimental.noalias.scope.decl(metadata !511), !noalias !507
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !noalias !512, !noundef !5 ; 2 uses
  switch i8 %i.fk, label %bb.bc [
    i8 32, label %bb.bb
    i8 10, label %bb.bb
    i8 9, label %bb.bb
    i8 13, label %bb.bb
    i8 93, label %bb.bq
  ]

bb.bb:                                            ; preds = %bb.ba, %bb.ba, %bb.ba, %bb.ba
  %i.fl = add i64 %i.fi, 1                        ; 3 uses
  store i64 %i.fl, ptr %i.bf, align 8, !alias.scope !513, !noalias !514
  %exitcond.not.i.i.i77 = icmp eq i64 %i.fl, %i.fg
  br i1 %exitcond.not.i.i.i77, label %.loopexit22.i.i, label %bb.ba

.loopexit22.i.i:                                  ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueE8push_mutCskSRqRFwaW70_9yara_x_py.exit.i, %bb.bb, %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !515
  store i64 2, ptr %i.f, align 8, !noalias !515
  %i.fm = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc79 unwind label %.loopexit.split-lp, !inline_history !298

.noexc79:                                         ; preds = %.loopexit22.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !515
  br label %bb.bj

bb.bc:                                            ; preds = %bb.ba
  br i1 %.sroa.5121.0296, label %.loopexit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fn = icmp eq i8 %i.fk, 44
  br i1 %i.fn, label %bb.be, label %bb.bg, !prof !20

bb.be:                                            ; preds = %bb.bd
  %i.fo = add i64 %i.fi, 1                        ; 3 uses
  store i64 %i.fo, ptr %i.bf, align 8, !alias.scope !516, !noalias !515
  call void @llvm.experimental.noalias.scope.decl(metadata !517), !noalias !507
  %i.fp = icmp ult i64 %i.fo, %i.fg
  br i1 %i.fp, label %.lr.ph.i7.i.i, label %.loopexit.i.i78

.lr.ph.i7.i.i:                                    ; preds = %bb.be, %bb.bf
  %i.fq = phi i64 [ %i.ft, %bb.bf ], [ %i.fo, %bb.be ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !noalias !518, !noundef !5
  switch i8 %i.fs, label %.loopexit [
    i8 32, label %bb.bf
    i8 10, label %bb.bf
    i8 9, label %bb.bf
    i8 13, label %bb.bf
    i8 93, label %bb.bh
  ], !prof !519

bb.bf:                                            ; preds = %.lr.ph.i7.i.i, %.lr.ph.i7.i.i, %.lr.ph.i7.i.i, %.lr.ph.i7.i.i
  %i.ft = add i64 %i.fq, 1                        ; 3 uses
  store i64 %i.ft, ptr %i.bf, align 8, !alias.scope !520, !noalias !521
  %exitcond.not.i8.i.i = icmp eq i64 %i.ft, %i.fg
  br i1 %exitcond.not.i8.i.i, label %.loopexit.i.i78, label %.lr.ph.i7.i.i

bb.bg:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !515
  store i64 7, ptr %i.c, align 8, !noalias !515
  %i.fu = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc80 unwind label %.loopexit.split-lp, !inline_history !298

.noexc80:                                         ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !515
  br label %bb.bj

.loopexit.i.i78:                                  ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !515
  store i64 5, ptr %i.d, align 8, !noalias !515
  %i.fv = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc81 unwind label %.loopexit.split-lp, !inline_history !298

.noexc81:                                         ; preds = %.loopexit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !515
  br label %bb.bj

bb.bh:                                            ; preds = %.lr.ph.i7.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !515
  store i64 21, ptr %i.e, align 8, !noalias !515
  %i.fw = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc82 unwind label %.loopexit.split-lp, !inline_history !298

.noexc82:                                         ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !515
  br label %bb.bj

.loopexit:                                        ; preds = %.lr.ph.i7.i.i, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !522
  invoke fastcc void @_RINvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB5_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #25
          to label %.noexc83 unwind label %.loopexit254, !inline_history !298

.noexc83:                                         ; preds = %.loopexit
  %i.fx = load i64, ptr %i.g, align 8, !range !10, !noalias !522, !noundef !5 ; 2 uses
  %i.fy = icmp eq i64 %i.fx, -1
  %i.fz = load ptr, ptr %.sroa.4146.0..sroa_idx, align 8, !noalias !522 ; 2 uses
  br i1 %i.fy, label %bb.bi, label %bb.bm

bb.bi:                                            ; preds = %.noexc83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !522
  br label %bb.bj

.loopexit254:                                     ; preds = %.loopexit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.i16

.loopexit.split-lp:                               ; preds = %.loopexit22.i.i, %bb.bg, %.loopexit.i.i78, %bb.bh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i16

.body.i16:                                        ; preds = %.loopexit254, %.loopexit.split-lp, %bb.bo
  %eh.lpad-body.i17 = phi { ptr, i32 } [ %i.gf, %bb.bo ], [ %lpad.loopexit, %.loopexit254 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #22
          to label %common.resume unwind label %bb.br, !noalias !507, !inline_history !312

bb.bj:                                            ; preds = %.noexc79, %.noexc80, %.noexc82, %.noexc81, %bb.bi
  %.sroa.9124.0.ph = phi ptr [ %i.fz, %bb.bi ], [ %i.fm, %.noexc79 ], [ %i.fu, %.noexc80 ], [ %i.fw, %.noexc82 ], [ %i.fv, %.noexc81 ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEECskSRqRFwaW70_9yara_x_py.exit.i unwind label %bb.bk, !noalias !507, !inline_history !312

bb.bk:                                            ; preds = %bb.bj
  %i.ga = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %common.resume unwind label %bb.bl, !noalias !507, !inline_history !312

bb.bl:                                            ; preds = %bb.bk
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !507, !inline_history !312
  unreachable

common.resume:                                    ; preds = %bb.by, %bb.ec, %bb.dx, %.body.i, %bb.ds, %bb.dt, %.body.i16, %bb.bk
  %common.resume.op = phi { ptr, i32 } [ %i.ld, %bb.ds ], [ %i.ga, %bb.bk ], [ %eh.lpad-body.i17, %.body.i16 ], [ %.pn.i4, %.body.i ], [ %i.li, %bb.dx ], [ %i.hg, %bb.by ], [ %i.le, %bb.dt ], [ %i.lv, %bb.ec ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEECskSRqRFwaW70_9yara_x_py.exit.i: ; preds = %bb.bj
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v), !noalias !507, !inline_history !312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !505
  %.pre326 = load i64, ptr %i.bg, align 8, !alias.scope !523, !noalias !524
  %.promoted.i.i6.pre = load i64, ptr %i.bf, align 8, !alias.scope !525, !noalias !526
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECskSRqRFwaW70_9yara_x_py.exit

bb.bm:                                            ; preds = %.noexc83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !505
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.i15.sroa.4.0..sroa.3.0..sroa_idx2.i20.sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5147.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !522
  store i64 %i.fx, ptr %i.u, align 8, !noalias !505
  store ptr %i.fz, ptr %.sroa.3.0..sroa_idx2.i20, align 8, !noalias !505
  %i.gc = load i64, ptr %i.fe, align 8, !alias.scope !527, !noalias !528, !noundef !5 ; 3 uses
  %i.gd = load i64, ptr %i.v, align 8, !range !16, !alias.scope !527, !noalias !528, !noundef !5
  %i.ge = icmp eq i64 %i.gc, %i.gd
  br i1 %i.ge, label %bb.bn, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueE8push_mutCskSRqRFwaW70_9yara_x_py.exit.i

bb.bn:                                            ; preds = %bb.bm
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsbbTh99npV2h_10serde_json5value5ValueE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueE8push_mutCskSRqRFwaW70_9yara_x_py.exit.i unwind label %bb.bo, !noalias !529, !inline_history !312

bb.bo:                                            ; preds = %bb.bn
  %i.gf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5value5ValueECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.u) #22
          to label %.body.i16 unwind label %bb.bp, !noalias !507, !inline_history !312

bb.bp:                                            ; preds = %bb.bo
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !507, !inline_history !312
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueE8push_mutCskSRqRFwaW70_9yara_x_py.exit.i: ; preds = %bb.bn, %bb.bm
  %i.gh = load ptr, ptr %i.fd, align 8, !alias.scope !527, !noalias !528, !nonnull !5, !noundef !5
  %i.gi = getelementptr inbounds nuw [72 x i8], ptr %i.gh, i64 %i.gc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.gi, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false), !noalias !507
  %i.gj = add i64 %i.gc, 1
  store i64 %i.gj, ptr %i.fe, align 8, !alias.scope !527, !noalias !528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !505
  %i.gk = load i64, ptr %i.bg, align 8, !alias.scope !530, !noalias !509, !noundef !5 ; 2 uses
  %.promoted.i.i.i75 = load i64, ptr %i.bf, align 8, !alias.scope !531, !noalias !514 ; 2 uses
  %i.gl = icmp ult i64 %.promoted.i.i.i75, %i.gk
  br i1 %i.gl, label %.lr.ph.i.i.i76, label %.loopexit22.i.i

bb.bq:                                            ; preds = %bb.ba
  %.sroa.0126.0.copyload = load ptr, ptr %i.v, align 8, !noalias !505
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %i.fd, i64 16, i1 false), !noalias !532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !505
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECskSRqRFwaW70_9yara_x_py.exit

bb.br:                                            ; preds = %.body.i16
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !507, !inline_history !312
  unreachable

_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECskSRqRFwaW70_9yara_x_py.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEECskSRqRFwaW70_9yara_x_py.exit.i, %bb.bq
  %.promoted.i.i6 = phi i64 [ %.promoted.i.i6.pre, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEECskSRqRFwaW70_9yara_x_py.exit.i ], [ %i.fi, %bb.bq ] ; 2 uses
  %i.gn = phi i64 [ %.pre326, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEECskSRqRFwaW70_9yara_x_py.exit.i ], [ %i.fg, %bb.bq ] ; 4 uses
  %.sroa.691.0 = phi ptr [ %.sroa.9124.0.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEECskSRqRFwaW70_9yara_x_py.exit.i ], [ %.sroa.0126.0.copyload, %bb.bq ]
  %.sroa.090.0 = phi i64 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEECskSRqRFwaW70_9yara_x_py.exit.i ], [ -9223372036854775804, %bb.bq ]
  %i.go = load i8, ptr %i.dp, align 8, !alias.scope !427, !noalias !426, !noundef !5
  %i.gp = add i8 %i.go, 1
  store i8 %i.gp, ptr %i.dp, align 8, !alias.scope !427, !noalias !426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !436
  store i64 %.sroa.090.0, ptr %i.ay, align 8, !noalias !436
  %.sroa.691.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %.sroa.691.0, ptr %.sroa.691.0..sroa_idx, align 8, !noalias !436
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8, i64 56, i1 false), !noalias !436
  call void @llvm.experimental.noalias.scope.decl(metadata !533)
  call void @llvm.experimental.noalias.scope.decl(metadata !534), !noalias !426
  %i.gq = icmp ult i64 %.promoted.i.i6, %i.gn
  br i1 %i.gq, label %.lr.ph.i.i9, label %.loopexit.i7

.lr.ph.i.i9:                                      ; preds = %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECskSRqRFwaW70_9yara_x_py.exit
  %i.gr = load ptr, ptr %i.bj, align 8, !alias.scope !523, !noalias !524, !nonnull !5, !noundef !5 ; 2 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bt, %.lr.ph.i.i9
  %i.gs = phi i64 [ %.promoted.i.i6, %.lr.ph.i.i9 ], [ %i.gv, %bb.bt ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !535), !noalias !426
  call void @llvm.experimental.noalias.scope.decl(metadata !536), !noalias !426
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !noalias !537, !noundef !5
  switch i8 %i.gu, label %bb.bu [
    i8 32, label %bb.bt
    i8 10, label %bb.bt
    i8 9, label %bb.bt
    i8 13, label %bb.bt
    i8 93, label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCskSRqRFwaW70_9yara_x_py.exit.thread
    i8 44, label %bb.bv
  ], !prof !21

bb.bt:                                            ; preds = %bb.bs, %bb.bs, %bb.bs, %bb.bs
  %i.gv = add i64 %i.gs, 1                        ; 3 uses
  store i64 %i.gv, ptr %i.bf, align 8, !alias.scope !538, !noalias !526
  %exitcond.not.i.i10 = icmp eq i64 %i.gv, %i.gn
  br i1 %exitcond.not.i.i10, label %.loopexit.i7, label %bb.bs

.loopexit.i7:                                     ; preds = %bb.bt, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECskSRqRFwaW70_9yara_x_py.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !539
  store i64 2, ptr %i.w, align 8, !noalias !539
  %i.gw = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.w)
          to label %.noexc11 unwind label %bb.by

.noexc11:                                         ; preds = %.loopexit.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !539
  br label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCskSRqRFwaW70_9yara_x_py.exit

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !539
  store i64 22, ptr %i.x, align 8, !noalias !539
  %i.gx = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.x)
          to label %.noexc12 unwind label %bb.by

.noexc12:                                         ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !539
  br label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCskSRqRFwaW70_9yara_x_py.exit

bb.bv:                                            ; preds = %bb.bs
  %i.gy = add i64 %i.gs, 1                        ; 3 uses
  store i64 %i.gy, ptr %i.bf, align 8, !alias.scope !540, !noalias !426
  call void @llvm.experimental.noalias.scope.decl(metadata !541), !noalias !426
  %i.gz = icmp ult i64 %i.gy, %i.gn
  br i1 %i.gz, label %.lr.ph.i12.i, label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskSRqRFwaW70_9yara_x_py.exit16.thread.i

.lr.ph.i12.i:                                     ; preds = %bb.bv, %bb.bw
  %i.ha = phi i64 [ %i.hd, %bb.bw ], [ %i.gy, %bb.bv ] ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !noalias !542, !noundef !5
  switch i8 %i.hc, label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskSRqRFwaW70_9yara_x_py.exit16.thread.i [
    i8 32, label %bb.bw
    i8 10, label %bb.bw
    i8 9, label %bb.bw
    i8 13, label %bb.bw
    i8 93, label %bb.bx
  ]

bb.bw:                                            ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i, %.lr.ph.i12.i, %.lr.ph.i12.i
  %i.hd = add i64 %i.ha, 1                        ; 3 uses
  store i64 %i.hd, ptr %i.bf, align 8, !alias.scope !543, !noalias !544
  %exitcond.not.i13.i = icmp eq i64 %i.hd, %i.gn
  br i1 %exitcond.not.i13.i, label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskSRqRFwaW70_9yara_x_py.exit16.thread.i, label %.lr.ph.i12.i

_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskSRqRFwaW70_9yara_x_py.exit16.thread.i: ; preds = %bb.bw, %.lr.ph.i12.i, %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !539
  store i64 22, ptr %i.y, align 8, !noalias !539
  %i.he = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.y)
          to label %.noexc13 unwind label %bb.by

.noexc13:                                         ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskSRqRFwaW70_9yara_x_py.exit16.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !539
  br label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCskSRqRFwaW70_9yara_x_py.exit

bb.bx:                                            ; preds = %.lr.ph.i12.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !539
  store i64 21, ptr %i.z, align 8, !noalias !539
  %i.hf = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.z)
          to label %.noexc14 unwind label %bb.by

.noexc14:                                         ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !539
  br label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCskSRqRFwaW70_9yara_x_py.exit

bb.by:                                            ; preds = %bb.bx, %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskSRqRFwaW70_9yara_x_py.exit16.thread.i, %bb.bu, %.loopexit.i7
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtNtB11_5error5ErrorEECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ay) #22
          to label %common.resume unwind label %bb.ca, !noalias !426, !inline_history !206

_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCskSRqRFwaW70_9yara_x_py.exit: ; preds = %.noexc14, %.noexc13, %.noexc12, %.noexc11
  %.sroa.0.0.i8 = phi ptr [ %i.gx, %.noexc12 ], [ %i.hf, %.noexc14 ], [ %i.gw, %.noexc11 ], [ %i.he, %.noexc13 ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.az, ptr noundef nonnull align 8 dereferenceable(72) %i.ay, i64 72, i1 false), !noalias !436
  %i.hh = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  store ptr %.sroa.0.0.i8, ptr %i.hh, align 8, !noalias !436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !436
  %i.hi = load i64, ptr %i.az, align 8, !range !10, !noalias !436, !noundef !5
  %i.hj = icmp eq i64 %i.hi, -1
  br i1 %i.hj, label %bb.cb, label %bb.bz

_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCskSRqRFwaW70_9yara_x_py.exit.thread: ; preds = %bb.bs
  %i.hk = add i64 %i.gs, 1
  store i64 %i.hk, ptr %i.bf, align 8, !alias.scope !545, !noalias !426
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.az, ptr noundef nonnull align 8 dereferenceable(72) %i.ay, i64 72, i1 false), !noalias !436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !436
  %i.hl = load i64, ptr %i.az, align 8, !range !10, !noalias !436, !noundef !5 ; 2 uses
  %i.hm = icmp eq i64 %i.hl, -1
  %i.hn = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  br i1 %i.hm, label %.thread365, label %.thread363

.thread365:                                       ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCskSRqRFwaW70_9yara_x_py.exit.thread
  %i.ho = load ptr, ptr %i.hn, align 8, !noalias !436, !nonnull !5, !align !19, !noundef !5
  %i.hp = ptrtoint ptr %i.ho to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %.thread245

.thread363:                                       ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCskSRqRFwaW70_9yara_x_py.exit.thread
  %.sroa.24.0.copyload415 = load i64, ptr %i.hn, align 8, !noalias !436
  %.sroa.41.0..sroa_idx418 = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.41.0.copyload419 = load i64, ptr %.sroa.41.0..sroa_idx418, align 8, !noalias !436
  %.sroa.49.0..sroa_idx422 = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.sroa.49.0.copyload423 = load i64, ptr %.sroa.49.0..sroa_idx422, align 8, !noalias !436
  %.sroa.51.0..sroa_idx426 = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.51, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.51.0..sroa_idx426, i64 40, i1 false), !noalias !436
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %.thread245

bb.bz:                                            ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCskSRqRFwaW70_9yara_x_py.exit
  %i.hq = ptrtoint ptr %.sroa.0.0.i8 to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5value5ValueECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 dereferenceable(72) %i.az), !noalias !426, !inline_history !206
  br label %.thread245

bb.ca:                                            ; preds = %bb.ec, %bb.by
  %i.hr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !426, !inline_history !206
  unreachable

.thread245:                                       ; preds = %.thread365, %.thread363, %bb.bz, %bb.cb
  %.sroa.24.sroa.23.sroa.0.3.in.in = phi i64 [ %i.hu, %bb.cb ], [ %i.hq, %bb.bz ], [ %i.hp, %.thread365 ], [ %.sroa.24.0.copyload415, %.thread363 ]
  %.sroa.49.2 = phi i64 [ undef, %bb.cb ], [ undef, %bb.bz ], [ undef, %.thread365 ], [ %.sroa.49.0.copyload423, %.thread363 ]
  %.sroa.41.3 = phi i64 [ undef, %bb.cb ], [ undef, %bb.bz ], [ undef, %.thread365 ], [ %.sroa.41.0.copyload419, %.thread363 ]
  %.sroa.0.3 = phi i64 [ -1, %bb.cb ], [ -1, %bb.bz ], [ -1, %.thread365 ], [ %i.hl, %.thread363 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !436
  br label %bb.ag

bb.cb:                                            ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCskSRqRFwaW70_9yara_x_py.exit
  %i.hs = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !noalias !436, !nonnull !5, !align !19, !noundef !5
  %i.hu = ptrtoint ptr %i.ht to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5error5ErrorECskSRqRFwaW70_9yara_x_py(ptr nonnull %.sroa.0.0.i8), !noalias !426, !inline_history !206
  br label %.thread245

bb.cc:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !436
  store i64 24, ptr %i.ax, align 8, !noalias !436
  %i.hv = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ax), !noalias !426, !inline_history !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !436
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hv, ptr %i.hw, align 8, !alias.scope !426, !noalias !427
  store i64 -1, ptr %0, align 8, !alias.scope !426, !noalias !427
  br label %bb.ah

bb.cd:                                            ; preds = %bb.ae
  %i.hx = add i64 %i.bl, 1
  store i64 %i.hx, ptr %i.bf, align 8, !alias.scope !546, !noalias !426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store ptr %1, ptr %i.ao, align 8, !noalias !548
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i8 1, ptr %i.hy, align 8, !noalias !548
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549), !noalias !426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !550
  call fastcc void @_RINvNvXs9_NtCsbbTh99npV2h_10serde_json2deINtB8_9MapAccesspENtNtCsaeRQ2XwCvzm_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ao), !noalias !551, !inline_history !353
  %i.hz = load i8, ptr %i.ad, align 8, !range !15, !noalias !550, !noundef !5
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !noalias !550, !nonnull !5, !align !19, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !550
  br label %bb.cp

bb.cf:                                            ; preds = %bb.cd
  %i.id = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.ie = load i8, ptr %i.id, align 1, !range !15, !noalias !550, !noundef !5
  %i.if = trunc nuw i8 %i.ie to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !550
  br i1 %i.if, label %bb.cg, label %bb.cr

bb.cg:                                            ; preds = %bb.cf
  %i.ig = load ptr, ptr %i.ao, align 8, !alias.scope !549, !noalias !552, !nonnull !5, !align !19, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !553), !noalias !426
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554), !noalias !426
  tail call void @llvm.experimental.noalias.scope.decl(metadata !555), !noalias !426
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 40 ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !alias.scope !556, !noalias !557, !noundef !5
  %i.ik = add i64 %i.ij, 1
  store i64 %i.ik, ptr %i.ii, align 8, !alias.scope !556, !noalias !557
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store i64 0, ptr %i.il, align 8, !alias.scope !558, !noalias !557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !559
  call void @_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ih, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ig), !noalias !557, !inline_history !353
  %i.im = load i64, ptr %i.ac, align 8, !range !495, !noalias !559, !noundef !5 ; 2 uses
  %i.in = icmp eq i64 %i.im, 2
  %i.io = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ip = load ptr, ptr %i.io, align 8, !noalias !559 ; 4 uses
  br i1 %i.in, label %bb.co, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !559 ; 8 uses
  %i.iq = trunc nuw i64 %i.im to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ip) ], !noalias !426
  br i1 %i.iq, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !560
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !561, !inline_history !353
  %i.ir = load i64, ptr %i.ab, align 8, !range !6, !noalias !560, !noundef !5
  %i.is = trunc nuw i64 %i.ir to i1
  %i.it = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.iu = load i64, ptr %i.it, align 8, !range !7, !noalias !560, !noundef !5 ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  br i1 %i.is, label %bb.cj, label %bb.ck, !prof !8

bb.cj:                                            ; preds = %bb.ci
  %i.iw = load i64, ptr %i.iv, align 8, !noalias !560
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.iu, i64 %i.iw) #21, !noalias !561, !inline_history !353
  unreachable

bb.ck:                                            ; preds = %bb.ci
  %i.ix = load ptr, ptr %i.iv, align 8, !noalias !560, !nonnull !5, !noundef !5 ; 2 uses
  %i.iy = icmp ule i64 %.sroa.4.0.copyload.i.i.i.i.i, %i.iu
  call void @llvm.assume(i1 %i.iy), !noalias !426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !560
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.cq, label %_RINvXsl_NtNtCsbbTh99npV2h_10serde_json5value2deNtB6_13KeyClassifierNtNtCsaeRQ2XwCvzm_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit.sink.split.i.i.i.i.i

bb.cl:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !562
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !563, !inline_history !353
  %i.iz = load i64, ptr %i.aa, align 8, !range !6, !noalias !562, !noundef !5
  %i.ja = trunc nuw i64 %i.iz to i1
  %i.jb = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.jc = load i64, ptr %i.jb, align 8, !range !7, !noalias !562, !noundef !5 ; 4 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  br i1 %i.ja, label %bb.cm, label %bb.cn, !prof !8

bb.cm:                                            ; preds = %bb.cl
  %i.je = load i64, ptr %i.jd, align 8, !noalias !562
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.jc, i64 %i.je) #21, !noalias !563, !inline_history !353
  unreachable

bb.cn:                                            ; preds = %bb.cl
  %i.jf = load ptr, ptr %i.jd, align 8, !noalias !562, !nonnull !5, !noundef !5 ; 2 uses
  %i.jg = icmp ule i64 %.sroa.4.0.copyload.i.i.i.i.i, %i.jc
  call void @llvm.assume(i1 %i.jg), !noalias !426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !562
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.cq, label %_RINvXsl_NtNtCsbbTh99npV2h_10serde_json5value2deNtB6_13KeyClassifierNtNtCsaeRQ2XwCvzm_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit.sink.split.i.i.i.i.i

_RINvXsl_NtNtCsbbTh99npV2h_10serde_json5value2deNtB6_13KeyClassifierNtNtCsaeRQ2XwCvzm_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit.sink.split.i.i.i.i.i: ; preds = %bb.cn, %bb.ck
  %.sink6.i.i.i.i.i = phi ptr [ %i.ix, %bb.ck ], [ %i.jf, %bb.cn ] ; 2 uses
  %.sink5.ph.i.i.i.i.i = phi i64 [ %i.iu, %bb.ck ], [ %i.jc, %bb.cn ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink6.i.i.i.i.i, ptr nonnull readonly align 1 %i.ip, i64 %.sroa.4.0.copyload.i.i.i.i.i, i1 false), !noalias !557
  br label %bb.cq

bb.co:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !559
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ip) ], !noalias !426
  br label %bb.cp

bb.cp:                                            ; preds = %bb.ce, %bb.co
  %.sroa.893.0.ph = phi ptr [ %i.ip, %bb.co ], [ %i.ic, %bb.ce ]
  %i.jh = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %.sroa.893.0.ph, ptr %i.jh, align 8, !alias.scope !547, !noalias !564
  store i64 -1, ptr %i.aw, align 8, !alias.scope !547, !noalias !564
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECskSRqRFwaW70_9yara_x_py.exit

bb.cq:                                            ; preds = %_RINvXsl_NtNtCsbbTh99npV2h_10serde_json5value2deNtB6_13KeyClassifierNtNtCsaeRQ2XwCvzm_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit.sink.split.i.i.i.i.i, %bb.cn, %bb.ck
  %.sroa.7.0.ph.i.i = phi ptr [ %.sink6.i.i.i.i.i, %_RINvXsl_NtNtCsbbTh99npV2h_10serde_json5value2deNtB6_13KeyClassifierNtNtCsaeRQ2XwCvzm_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit.sink.split.i.i.i.i.i ], [ %i.ix, %bb.ck ], [ %i.jf, %bb.cn ]
  %.sroa.0.0.ph.i.i = phi i64 [ %.sink5.ph.i.i.i.i.i, %_RINvXsl_NtNtCsbbTh99npV2h_10serde_json5value2deNtB6_13KeyClassifierNtNtCsaeRQ2XwCvzm_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit.sink.split.i.i.i.i.i ], [ %i.iu, %bb.ck ], [ %i.jc, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !548
  store i64 %.sroa.0.0.ph.i.i, ptr %i.an, align 8, !noalias !548
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %.sroa.7.0.ph.i.i, ptr %.sroa.3.0..sroa_idx2.i, align 8, !noalias !548
  %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %.sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx, align 8, !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !548
  %i.ji = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @22)
          to label %bb.cs unwind label %bb.dx, !noalias !565, !inline_history !353 ; 2 uses

bb.cr:                                            ; preds = %bb.cf
  %i.jj = tail call { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @22), !noalias !565, !inline_history !353 ; 2 uses
  %i.jk = extractvalue { i64, i64 } %i.jj, 0
  %i.jl = extractvalue { i64, i64 } %i.jj, 1
  store i64 0, ptr %i.aw, align 8, !noalias !564
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4108.0..sroa_idx, align 8, !noalias !564
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 0, ptr %.sroa.5109.0..sroa_idx, align 8, !noalias !564
  %.sroa.6110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6110.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @31, i64 32, i1 false), !noalias !564
  %.sroa.7111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  store i64 %i.jk, ptr %.sroa.7111.0..sroa_idx, align 8, !noalias !564
  %.sroa.8112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  store i64 %i.jl, ptr %.sroa.8112.0..sroa_idx, align 8, !noalias !564
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECskSRqRFwaW70_9yara_x_py.exit

bb.cs:                                            ; preds = %bb.cq
  %i.jm = extractvalue { i64, i64 } %i.ji, 0
  %i.jn = extractvalue { i64, i64 } %i.ji, 1
  store i64 0, ptr %i.am, align 8, !noalias !548
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4114.0..sroa_idx, align 8, !noalias !548
  %.sroa.5115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 0, ptr %.sroa.5115.0..sroa_idx, align 8, !noalias !548
  %.sroa.6116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6116.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @31, i64 32, i1 false), !noalias !548
  %.sroa.7117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  store i64 %i.jm, ptr %.sroa.7117.0..sroa_idx, align 8, !noalias !548
  %.sroa.8118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  store i64 %i.jn, ptr %.sroa.8118.0..sroa_idx, align 8, !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !noalias !548
  invoke fastcc void @_RINvXs9_NtCsbbTh99npV2h_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB8_5value5ValueEECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %_RINvYINtNtCsbbTh99npV2h_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de9MapAccess10next_valueNtNtB8_5value5ValueECskSRqRFwaW70_9yara_x_py.exit.i unwind label %bb.ct, !noalias !426, !inline_history !374

_RINvYINtNtCsbbTh99npV2h_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de9MapAccess10next_valueNtNtB8_5value5ValueECskSRqRFwaW70_9yara_x_py.exit.i: ; preds = %bb.cs
  %i.jo = load i64, ptr %i.aw, align 8, !range !10, !alias.scope !547, !noalias !564, !noundef !5
  %i.jp = icmp eq i64 %i.jo, -1
  br i1 %i.jp, label %bb.cu, label %bb.cx

bb.ct:                                            ; preds = %bb.cs
  %i.jq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak) #22
          to label %.body.i unwind label %bb.dw, !noalias !565, !inline_history !353

bb.cu:                                            ; preds = %_RINvYINtNtCsbbTh99npV2h_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de9MapAccess10next_valueNtNtB8_5value5ValueECskSRqRFwaW70_9yara_x_py.exit.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskSRqRFwaW70_9yara_x_py.exit.i.i unwind label %bb.cv, !noalias !565, !inline_history !353

bb.cv:                                            ; preds = %bb.cu
  %i.jr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %.body.i unwind label %bb.cw, !noalias !565, !inline_history !353

bb.cw:                                            ; preds = %bb.cv
  %i.js = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !565, !inline_history !353
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskSRqRFwaW70_9yara_x_py.exit.i.i: ; preds = %bb.cu
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskSRqRFwaW70_9yara_x_py.exit.i unwind label %.loopexit.split-lp256, !noalias !565, !inline_history !353

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskSRqRFwaW70_9yara_x_py.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskSRqRFwaW70_9yara_x_py.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !548
  br label %bb.dr

bb.cx:                                            ; preds = %_RINvYINtNtCsbbTh99npV2h_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de9MapAccess10next_valueNtNtB8_5value5ValueECskSRqRFwaW70_9yara_x_py.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.aw, i64 72, i1 false), !noalias !564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !548
  invoke void @_RNvMs2_NtCs907JfTDu8Xv_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsbbTh99npV2h_10serde_json5value5ValueE11insert_fullCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.am, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.aj)
          to label %bb.cy unwind label %.loopexit.split-lp256, !noalias !565, !inline_history !353

.body.i:                                          ; preds = %.loopexit255, %.loopexit.split-lp256, %bb.dk, %bb.dl, %bb.cv, %bb.ct
  %.pn.i4 = phi { ptr, i32 } [ %i.jq, %bb.ct ], [ %i.jr, %bb.cv ], [ %lpad.phi265, %bb.dk ], [ %i.kx, %bb.dl ], [ %lpad.loopexit257, %.loopexit255 ], [ %lpad.loopexit.split-lp258, %.loopexit.split-lp256 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbbTh99npV2h_10serde_json3map3MapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtBG_5value5ValueEECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 dereferenceable(72) %i.am) #22
          to label %common.resume unwind label %bb.dw, !noalias !565, !inline_history !353

.loopexit255:                                     ; preds = %bb.do, %bb.dq, %bb.da, %bb.dd
  %lpad.loopexit257 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp256:                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskSRqRFwaW70_9yara_x_py.exit.i.i, %bb.cx, %bb.cz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskSRqRFwaW70_9yara_x_py.exit.i71
  %lpad.loopexit.split-lp258 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.cy:                                            ; preds = %bb.cx
  %i.jt = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.jt, i64 72, i1 false), !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !548
  %i.ju = load i64, ptr %i.al, align 8, !range !10, !alias.scope !566, !noalias !548, !noundef !5
  %i.jv = icmp eq i64 %i.ju, -1
  br i1 %i.jv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbbTh99npV2h_10serde_json5value5ValueEECskSRqRFwaW70_9yara_x_py.exit.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5value5ValueECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.al)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbbTh99npV2h_10serde_json5value5ValueEECskSRqRFwaW70_9yara_x_py.exit.i unwind label %.loopexit.split-lp256, !noalias !565, !inline_history !353

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbbTh99npV2h_10serde_json5value5ValueEECskSRqRFwaW70_9yara_x_py.exit.i: ; preds = %bb.cz, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !548
  %i.jw = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.3.0..sroa_idx2.i67 = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.sroa.3.i64.sroa.4.0..sroa.3.0..sroa_idx2.i67.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %.sroa.35.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.35.i.sroa.4.0..sroa.35.0..sroa_idx6.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  br label %bb.da

bb.da:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbbTh99npV2h_10serde_json5value5ValueEECskSRqRFwaW70_9yara_x_py.exit19.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbbTh99npV2h_10serde_json5value5ValueEECskSRqRFwaW70_9yara_x_py.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !567)
  call void @llvm.experimental.noalias.scope.decl(metadata !568), !noalias !565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !569
  invoke fastcc void @_RINvNvXs9_NtCsbbTh99npV2h_10serde_json2deINtB8_9MapAccesspENtNtCsaeRQ2XwCvzm_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %.noexc72 unwind label %.loopexit255, !inline_history !383

.noexc72:                                         ; preds = %bb.da
  %i.jy = load i8, ptr %i.k, align 8, !range !15, !noalias !569, !noundef !5
  %i.jz = trunc nuw i8 %i.jy to i1
  br i1 %i.jz, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %.noexc72
  %i.ka = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.kb = load ptr, ptr %i.ka, align 8, !noalias !569, !nonnull !5, !align !19, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !569
  br label %.loopexit267

bb.dc:                                            ; preds = %.noexc72
  %i.kc = load i8, ptr %i.jw, align 1, !range !15, !noalias !569, !noundef !5
  %i.kd = trunc nuw i8 %i.kc to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !569
  br i1 %i.kd, label %bb.dd, label %.loopexit268

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !569
  %i.ke = load ptr, ptr %i.ao, align 8, !alias.scope !570, !noalias !571, !nonnull !5, !align !19, !noundef !5 ; 7 uses
  invoke void @_RINvXs6_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtCsbbTh99npV2h_10serde_json2de6MapKeyNtNtB1V_4read7StrReadEECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ke)
          to label %.noexc73 unwind label %.loopexit255, !inline_history !383

.noexc73:                                         ; preds = %bb.dd
  %i.kf = load i64, ptr %i.j, align 8, !range !12, !noalias !569, !noundef !5 ; 2 uses
  %i.kg = icmp eq i64 %i.kf, -1
  %i.kh = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !572 ; 2 uses
  br i1 %i.kg, label %bb.de, label %bb.df

bb.de:                                            ; preds = %.noexc73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !569
  br label %.loopexit267

bb.df:                                            ; preds = %.noexc73
  %.sroa.14.0.copyload = load i64, ptr %.sroa.14.0..sroa_idx, align 8, !noalias !572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !573
  store i64 %i.kf, ptr %i.m, align 8, !noalias !573
  store ptr %i.kh, ptr %.sroa.3.0..sroa_idx2.i67, align 8, !noalias !573
  store i64 %.sroa.14.0.copyload, ptr %.sroa.3.i64.sroa.4.0..sroa.3.0..sroa_idx2.i67.sroa_idx, align 8, !noalias !573
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !573
  call void @llvm.experimental.noalias.scope.decl(metadata !574), !noalias !565
  call void @llvm.experimental.noalias.scope.decl(metadata !575), !noalias !565
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 40 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ke, i64 32
  %i.kk = load i64, ptr %i.kj, align 8, !alias.scope !576, !noalias !577, !noundef !5 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.ki, align 8, !alias.scope !578, !noalias !579 ; 2 uses
  %i.kl = icmp ult i64 %.promoted.i.i.i, %i.kk
  br i1 %i.kl, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.df
  %i.km = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %i.kn = load ptr, ptr %i.km, align 8, !alias.scope !576, !noalias !577, !nonnull !5, !noundef !5
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dh, %.lr.ph.i.i.i
  %i.ko = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.kr, %bb.dh ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !580), !noalias !565
  call void @llvm.experimental.noalias.scope.decl(metadata !581), !noalias !565
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.ko
  %i.kq = load i8, ptr %i.kp, align 1, !noalias !582, !noundef !5
  switch i8 %i.kq, label %bb.di [
    i8 32, label %bb.dh
    i8 10, label %bb.dh
    i8 9, label %bb.dh
    i8 13, label %bb.dh
    i8 58, label %bb.dj
  ], !prof !23

bb.dh:                                            ; preds = %bb.dg, %bb.dg, %bb.dg, %bb.dg
  %i.kr = add i64 %i.ko, 1                        ; 3 uses
  store i64 %i.kr, ptr %i.ki, align 8, !alias.scope !583, !noalias !579
  %exitcond.not.i.i.i = icmp eq i64 %i.kr, %i.kk
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.dg

.loopexit.i.i:                                    ; preds = %bb.df, %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !584
  store i64 3, ptr %i.h, align 8, !noalias !584
  %i.ks = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ke, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.h)
          to label %.noexc9.i unwind label %.loopexit.split-lp262, !noalias !573, !inline_history !383

.noexc9.i:                                        ; preds = %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !584
  br label %.loopexit266

bb.di:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !584
  store i64 6, ptr %i.i, align 8, !noalias !584
  %i.kt = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ke, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i)
          to label %.noexc10.i unwind label %.loopexit.split-lp262, !noalias !573, !inline_history !383

.noexc10.i:                                       ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !584
  br label %.loopexit266

bb.dj:                                            ; preds = %bb.dg
  %i.ku = add i64 %i.ko, 1
  store i64 %i.ku, ptr %i.ki, align 8, !alias.scope !585, !noalias !573
  invoke fastcc void @_RINvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB5_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ke) #25
          to label %_RINvXs9_NtCsbbTh99npV2h_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB8_5value5ValueEECskSRqRFwaW70_9yara_x_py.exit.i unwind label %.loopexit261, !noalias !573, !inline_history !399

_RINvXs9_NtCsbbTh99npV2h_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB8_5value5ValueEECskSRqRFwaW70_9yara_x_py.exit.i: ; preds = %bb.dj
  %.pr220 = load i64, ptr %i.l, align 8, !noalias !573
  %i.kv = icmp eq i64 %.pr220, -1
  br i1 %i.kv, label %.loopexit266.loopexit, label %_RINvYINtNtCsbbTh99npV2h_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de9MapAccess10next_entryNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtB8_5value5ValueECskSRqRFwaW70_9yara_x_py.exit.i

.loopexit261:                                     ; preds = %bb.dj
  %lpad.loopexit263 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

.loopexit.split-lp262:                            ; preds = %.loopexit.i.i, %bb.di
  %lpad.loopexit.split-lp264 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dk:                                            ; preds = %.loopexit.split-lp262, %.loopexit261
  %lpad.phi265 = phi { ptr, i32 } [ %lpad.loopexit263, %.loopexit261 ], [ %lpad.loopexit.split-lp264, %.loopexit.split-lp262 ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #22
          to label %.body.i unwind label %bb.dn, !noalias !573, !inline_history !383

.loopexit266.loopexit:                            ; preds = %_RINvXs9_NtCsbbTh99npV2h_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB8_5value5ValueEECskSRqRFwaW70_9yara_x_py.exit.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !noalias !573
  br label %.loopexit266

.loopexit266:                                     ; preds = %.noexc10.i, %.noexc9.i, %.loopexit266.loopexit
  %i.kw = phi ptr [ %.pre, %.loopexit266.loopexit ], [ %i.ks, %.noexc9.i ], [ %i.kt, %.noexc10.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !573
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskSRqRFwaW70_9yara_x_py.exit.i71 unwind label %bb.dl, !noalias !573, !inline_history !383

bb.dl:                                            ; preds = %.loopexit266
  %i.kx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body.i unwind label %bb.dm, !noalias !573, !inline_history !383

bb.dm:                                            ; preds = %bb.dl
  %i.ky = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !573, !inline_history !383
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskSRqRFwaW70_9yara_x_py.exit.i71: ; preds = %.loopexit266
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.noexc74 unwind label %.loopexit.split-lp256, !inline_history !383

.noexc74:                                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskSRqRFwaW70_9yara_x_py.exit.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !573
  br label %.loopexit267

bb.dn:                                            ; preds = %bb.dk
  %i.kz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !573, !inline_history !383
  unreachable

_RINvYINtNtCsbbTh99npV2h_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de9MapAccess10next_entryNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtB8_5value5ValueECskSRqRFwaW70_9yara_x_py.exit.i: ; preds = %_RINvXs9_NtCsbbTh99npV2h_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB8_5value5ValueEECskSRqRFwaW70_9yara_x_py.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.1396.sroa.6, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !573
  %.sroa.0135.0.copyload = load i64, ptr %i.m, align 8, !noalias !573 ; 2 uses
  %.sroa.4136.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx2.i67, align 8, !noalias !573 ; 2 uses
  %.sroa.5137.0.copyload = load i64, ptr %.sroa.3.i64.sroa.4.0..sroa.3.0..sroa_idx2.i67.sroa_idx, align 8, !noalias !573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !573
  switch i64 %.sroa.0135.0.copyload, label %bb.do [
    i64 -2, label %.loopexit267
    i64 -1, label %.loopexit268
  ]

.loopexit267:                                     ; preds = %_RINvYINtNtCsbbTh99npV2h_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de9MapAccess10next_entryNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtB8_5value5ValueECskSRqRFwaW70_9yara_x_py.exit.i, %bb.db, %.noexc74, %bb.de
  %.sroa.995.0224 = phi ptr [ %i.kb, %bb.db ], [ %i.kh, %bb.de ], [ %i.kw, %.noexc74 ], [ %.sroa.4136.0.copyload, %_RINvYINtNtCsbbTh99npV2h_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de9MapAccess10next_entryNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtB8_5value5ValueECskSRqRFwaW70_9yara_x_py.exit.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.995.0224) ]
  %i.la = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %.sroa.995.0224, ptr %i.la, align 8, !alias.scope !547, !noalias !564
  store i64 -1, ptr %i.aw, align 8, !alias.scope !547, !noalias !564
  br label %bb.dr

bb.do:                                            ; preds = %_RINvYINtNtCsbbTh99npV2h_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de9MapAccess10next_entryNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtB8_5value5ValueECskSRqRFwaW70_9yara_x_py.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !548
  store i64 %.sroa.0135.0.copyload, ptr %i.ai, align 8, !noalias !548
  store ptr %.sroa.4136.0.copyload, ptr %.sroa.35.0..sroa_idx6.i, align 8, !noalias !548
  store i64 %.sroa.5137.0.copyload, ptr %.sroa.35.i.sroa.4.0..sroa.35.0..sroa_idx6.i.sroa_idx, align 8, !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ah, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.1396.sroa.6, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !548
  invoke void @_RNvMs2_NtCs907JfTDu8Xv_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsbbTh99npV2h_10serde_json5value5ValueE11insert_fullCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.am, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.ah)
          to label %bb.dp unwind label %.loopexit255, !noalias !565, !inline_history !353

.loopexit268:                                     ; preds = %bb.dc, %_RINvYINtNtCsbbTh99npV2h_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de9MapAccess10next_entryNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtB8_5value5ValueECskSRqRFwaW70_9yara_x_py.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aw, ptr noundef nonnull align 8 dereferenceable(72) %i.am, i64 72, i1 false), !noalias !564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !548
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECskSRqRFwaW70_9yara_x_py.exit

bb.dp:                                            ; preds = %bb.do
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ag, ptr noundef nonnull align 8 dereferenceable(72) %i.jx, i64 72, i1 false), !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !548
  %i.lb = load i64, ptr %i.ag, align 8, !range !10, !alias.scope !586, !noalias !548, !noundef !5
  %i.lc = icmp eq i64 %i.lb, -1
  br i1 %i.lc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbbTh99npV2h_10serde_json5value5ValueEECskSRqRFwaW70_9yara_x_py.exit19.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5value5ValueECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbbTh99npV2h_10serde_json5value5ValueEECskSRqRFwaW70_9yara_x_py.exit19.i unwind label %.loopexit255, !noalias !565, !inline_history !353

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbbTh99npV2h_10serde_json5value5ValueEECskSRqRFwaW70_9yara_x_py.exit19.i: ; preds = %bb.dq, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !548
  br label %bb.da

bb.dr:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskSRqRFwaW70_9yara_x_py.exit.i, %.loopexit267
  invoke void @_RNvXsf_NtCs9QmT8tHpLPH_9hashbrown3rawINtB5_8RawTablejENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.6116.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9QmT8tHpLPH_9hashbrown5table9HashTablejEECskSRqRFwaW70_9yara_x_py.exit.i.i.i.i unwind label %bb.ds, !noalias !565, !inline_history !353

bb.ds:                                            ; preds = %bb.dr
  %i.ld = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtCs907JfTDu8Xv_8indexmap6BucketNtNtBG_6string6StringNtNtCsbbTh99npV2h_10serde_json5value5ValueEEECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.am) #22
          to label %common.resume unwind label %bb.dv, !noalias !565, !inline_history !353

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9QmT8tHpLPH_9hashbrown5table9HashTablejEECskSRqRFwaW70_9yara_x_py.exit.i.i.i.i: ; preds = %bb.dr
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCs907JfTDu8Xv_8indexmap6BucketNtNtB7_6string6StringNtNtCsbbTh99npV2h_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.am)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs907JfTDu8Xv_8indexmap3map8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsbbTh99npV2h_10serde_json5value5ValueEECskSRqRFwaW70_9yara_x_py.exit.i.i unwind label %bb.dt, !noalias !565, !inline_history !353

bb.dt:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9QmT8tHpLPH_9hashbrown5table9HashTablejEECskSRqRFwaW70_9yara_x_py.exit.i.i.i.i
  %i.le = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCs907JfTDu8Xv_8indexmap6BucketNtNtB7_6string6StringNtNtCsbbTh99npV2h_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.am)
          to label %common.resume unwind label %bb.du, !noalias !565, !inline_history !353

bb.du:                                            ; preds = %bb.dt
  %i.lf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !565, !inline_history !353
  unreachable

bb.dv:                                            ; preds = %bb.ds
  %i.lg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !565, !inline_history !353
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs907JfTDu8Xv_8indexmap3map8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsbbTh99npV2h_10serde_json5value5ValueEECskSRqRFwaW70_9yara_x_py.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9QmT8tHpLPH_9hashbrown5table9HashTablejEECskSRqRFwaW70_9yara_x_py.exit.i.i.i.i
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCs907JfTDu8Xv_8indexmap6BucketNtNtB7_6string6StringNtNtCsbbTh99npV2h_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.am), !noalias !565, !inline_history !353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !548
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECskSRqRFwaW70_9yara_x_py.exit

bb.dw:                                            ; preds = %bb.dx, %.body.i, %bb.ct
  %i.lh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !565, !inline_history !353
  unreachable

bb.dx:                                            ; preds = %bb.cq
  %i.li = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an) #22
          to label %common.resume unwind label %bb.dw, !noalias !565, !inline_history !353

_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECskSRqRFwaW70_9yara_x_py.exit: ; preds = %bb.cp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs907JfTDu8Xv_8indexmap3map8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsbbTh99npV2h_10serde_json5value5ValueEECskSRqRFwaW70_9yara_x_py.exit.i.i, %bb.cr, %.loopexit268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %i.lj = load i8, ptr %i.dt, align 8, !alias.scope !427, !noalias !426, !noundef !5
  %i.lk = add i8 %i.lj, 1
  store i8 %i.lk, ptr %i.dt, align 8, !alias.scope !427, !noalias !426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !436
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.au, ptr noundef nonnull align 8 dereferenceable(72) %i.aw, i64 72, i1 false), !noalias !436
  call void @llvm.experimental.noalias.scope.decl(metadata !587)
  call void @llvm.experimental.noalias.scope.decl(metadata !588), !noalias !426
  %i.ll = load i64, ptr %i.bg, align 8, !alias.scope !589, !noalias !590, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.bf, align 8, !alias.scope !591, !noalias !592 ; 2 uses
  %i.lm = icmp ult i64 %.promoted.i.i, %i.ll
  br i1 %i.lm, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECskSRqRFwaW70_9yara_x_py.exit
  %i.ln = load ptr, ptr %i.bj, align 8, !alias.scope !589, !noalias !590, !nonnull !5, !noundef !5
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dz, %.lr.ph.i.i
  %i.lo = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.lr, %bb.dz ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !593), !noalias !426
  call void @llvm.experimental.noalias.scope.decl(metadata !594), !noalias !426
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.lo
  %i.lq = load i8, ptr %i.lp, align 1, !noalias !595, !noundef !5
  switch i8 %i.lq, label %bb.ea [
    i8 32, label %bb.dz
    i8 10, label %bb.dz
    i8 9, label %bb.dz
    i8 13, label %bb.dz
    i8 125, label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCskSRqRFwaW70_9yara_x_py.exit.thread
    i8 44, label %bb.eb
  ], !prof !21

bb.dz:                                            ; preds = %bb.dy, %bb.dy, %bb.dy, %bb.dy
  %i.lr = add i64 %i.lo, 1                        ; 3 uses
  store i64 %i.lr, ptr %i.bf, align 8, !alias.scope !596, !noalias !592
  %exitcond.not.i.i = icmp eq i64 %i.lr, %i.ll
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.dy

.loopexit.i:                                      ; preds = %bb.dz, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECskSRqRFwaW70_9yara_x_py.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !597
  store i64 3, ptr %i.ap, align 8, !noalias !597
  %i.ls = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ap)
          to label %.noexc unwind label %bb.ec

.noexc:                                           ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !597
  br label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCskSRqRFwaW70_9yara_x_py.exit

bb.ea:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !597
  store i64 22, ptr %i.aq, align 8, !noalias !597
  %i.lt = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aq)
          to label %.noexc1 unwind label %bb.ec

.noexc1:                                          ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !597
  br label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCskSRqRFwaW70_9yara_x_py.exit

bb.eb:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !597
  store i64 21, ptr %i.ar, align 8, !noalias !597
  %i.lu = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ar)
          to label %.noexc2 unwind label %bb.ec

.noexc2:                                          ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !597
  br label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCskSRqRFwaW70_9yara_x_py.exit

bb.ec:                                            ; preds = %bb.eb, %bb.ea, %.loopexit.i
  %i.lv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtNtB11_5error5ErrorEECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 dereferenceable(72) %i.au) #22
          to label %common.resume unwind label %bb.ca, !noalias !426, !inline_history !206

_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCskSRqRFwaW70_9yara_x_py.exit: ; preds = %.noexc2, %.noexc1, %.noexc
  %.sroa.0.0.i = phi ptr [ %i.lt, %.noexc1 ], [ %i.ls, %.noexc ], [ %i.lu, %.noexc2 ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.av, ptr noundef nonnull align 8 dereferenceable(72) %i.aw, i64 72, i1 false)
  %i.lw = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  store ptr %.sroa.0.0.i, ptr %i.lw, align 8, !noalias !436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !436
  %i.lx = load i64, ptr %i.av, align 8, !range !10, !noalias !436, !noundef !5
  %i.ly = icmp eq i64 %i.lx, -1
  br i1 %i.ly, label %bb.ee, label %bb.ed

_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCskSRqRFwaW70_9yara_x_py.exit.thread: ; preds = %bb.dy
  %i.lz = add i64 %i.lo, 1
  store i64 %i.lz, ptr %i.bf, align 8, !alias.scope !598, !noalias !426
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.av, ptr noundef nonnull align 8 dereferenceable(72) %i.aw, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !436
  %i.ma = load i64, ptr %i.av, align 8, !range !10, !noalias !436, !noundef !5
  %i.mb = icmp eq i64 %i.ma, -1
  br i1 %i.mb, label %.thread369, label %.thread367

.thread369:                                       ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCskSRqRFwaW70_9yara_x_py.exit.thread
  %i.mc = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.md = load ptr, ptr %i.mc, align 8, !noalias !436, !nonnull !5, !align !19, !noundef !5
  %i.me = ptrtoint ptr %i.md to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !436
  br label %.thread248

.thread367:                                       ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCskSRqRFwaW70_9yara_x_py.exit.thread
  %.sroa.0.0.copyload413 = load i64, ptr %i.aw, align 8
  %.sroa.24.0..sroa_idx416 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.24.0.copyload417 = load i64, ptr %.sroa.24.0..sroa_idx416, align 8
  %.sroa.41.0..sroa_idx420 = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.41.0.copyload421 = load i64, ptr %.sroa.41.0..sroa_idx420, align 8
  %.sroa.49.0..sroa_idx424 = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.sroa.49.0.copyload425 = load i64, ptr %.sroa.49.0..sroa_idx424, align 8
  %.sroa.51.0..sroa_idx427 = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.51, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.51.0..sroa_idx427, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !436
  br label %.thread248

bb.ed:                                            ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCskSRqRFwaW70_9yara_x_py.exit
  %i.mf = ptrtoint ptr %.sroa.0.0.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !436
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5value5ValueECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 dereferenceable(72) %i.av), !noalias !426, !inline_history !206
  br label %.thread248

.thread248:                                       ; preds = %.thread369, %.thread367, %bb.ed, %bb.ee
  %.sroa.24.sroa.23.sroa.0.4.in.in = phi i64 [ %i.mi, %bb.ee ], [ %i.mf, %bb.ed ], [ %i.me, %.thread369 ], [ %.sroa.24.0.copyload417, %.thread367 ]
  %.sroa.49.3 = phi i64 [ undef, %bb.ee ], [ undef, %bb.ed ], [ undef, %.thread369 ], [ %.sroa.49.0.copyload425, %.thread367 ]
  %.sroa.41.4 = phi i64 [ undef, %bb.ee ], [ undef, %bb.ed ], [ undef, %.thread369 ], [ %.sroa.41.0.copyload421, %.thread367 ]
  %.sroa.0.4 = phi i64 [ -1, %bb.ee ], [ -1, %bb.ed ], [ -1, %.thread369 ], [ %.sroa.0.0.copyload413, %.thread367 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !436
  br label %bb.ag

bb.ee:                                            ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCskSRqRFwaW70_9yara_x_py.exit
  %i.mg = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.mh = load ptr, ptr %i.mg, align 8, !noalias !436, !nonnull !5, !align !19, !noundef !5
  %i.mi = ptrtoint ptr %i.mh to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !436
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5error5ErrorECskSRqRFwaW70_9yara_x_py(ptr nonnull %.sroa.0.0.i), !noalias !426, !inline_history !206
  br label %.thread248

bb.ef:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !436
  store i64 10, ptr %i.at, align 8, !noalias !436
  %i.mj = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.at), !noalias !426, !inline_history !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !436
  br label %bb.eh

bb.eg:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !436
  call fastcc void @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.bc, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !noalias !426, !inline_history !206
  %i.mk = load i64, ptr %i.bc, align 8, !range !493, !noalias !436, !noundef !5 ; 2 uses
  %i.ml = icmp eq i64 %i.mk, -1
  %i.mm = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  br i1 %i.ml, label %bb.ei, label %bb.ej

bb.eh:                                            ; preds = %._crit_edge, %bb.ef
  %i.mn = phi ptr [ %i.dz, %._crit_edge ], [ %i.mj, %bb.ef ]
  %i.mo = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCsbbTh99npV2h_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECskSRqRFwaW70_9yara_x_py(ptr noalias noundef nonnull align 8 %i.mn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !noalias !426
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.mo, ptr %i.mp, align 8, !alias.scope !426, !noalias !427
  store i64 -1, ptr %0, align 8, !alias.scope !426, !noalias !427
  br label %bb.eo

bb.ei:                                            ; preds = %bb.eg
  %i.mq = load ptr, ptr %i.mm, align 8, !noalias !436, !nonnull !5, !align !19, !noundef !5
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.mq, ptr %i.mr, align 8, !alias.scope !426, !noalias !427
  store i64 -1, ptr %0, align 8, !alias.scope !426, !noalias !427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !436
  br label %bb.ah

bb.ej:                                            ; preds = %bb.eg
  %.sroa.488.0.copyload = load i64, ptr %i.mm, align 8, !noalias !436 ; 5 uses
  switch i64 %i.mk, label %default.unreachable614 [
    i64 0, label %bb.ek
    i64 1, label %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskSRqRFwaW70_9yara_x_py.exit
    i64 2, label %bb.en
  ]

bb.ek:                                            ; preds = %bb.ej
  %i.ms = bitcast i64 %.sroa.488.0.copyload to double
  %i.mt = tail call double @llvm.fabs.f64(double %i.ms)
  %i.mu = fcmp ueq double %i.mt, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !599
  br i1 %i.mu, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %.sroa.5.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.5.sroa.0.0.copyload8.i.i = load i64, ptr %.sroa.5.0..sroa_idx4.i.i, align 8, !alias.scope !600, !noalias !601
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.5.sroa.5.0.copyload9.i.i482 = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i, align 8, !alias.scope !600, !noalias !601
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit.i

bb.em:                                            ; preds = %bb.ek
  store i64 -9223372036854775808, ptr %i.as, align 8, !noalias !599
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602), !noalias !426
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5value5ValueECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.as), !noalias !603
  br label %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit.i

_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit.i: ; preds = %bb.em, %bb.el
  %i.mv = phi i64 [ %.sroa.5.sroa.5.0.copyload9.i.i482, %bb.el ], [ %.sroa.488.0.copyload, %bb.em ]
  %.sroa.5.sroa.0.0.i.i = phi i64 [ %.sroa.5.sroa.0.0.copyload8.i.i, %bb.el ], [ 2, %bb.em ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ -9223372036854775808, %bb.el ], [ -9223372036854775806, %bb.em ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !599
  br label %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskSRqRFwaW70_9yara_x_py.exit

bb.en:                                            ; preds = %bb.ej
  %.lobit.i.i = lshr i64 %.sroa.488.0.copyload, 63
  br label %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskSRqRFwaW70_9yara_x_py.exit

_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskSRqRFwaW70_9yara_x_py.exit: ; preds = %bb.ej, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit.i, %bb.en
  %.sroa.24.sroa.23.sroa.0.5 = phi i64 [ %.sroa.5.sroa.0.0.i.i, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit.i ], [ 0, %bb.en ], [ 0, %bb.ej ]
  %.sroa.24.sroa.0.5 = phi i64 [ %.sroa.5.sroa.0.0.i.i, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit.i ], [ %.lobit.i.i, %bb.en ], [ 0, %bb.ej ]
  %.sroa.41.5 = phi i64 [ %i.mv, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit.i ], [ %.sroa.488.0.copyload, %bb.en ], [ %.sroa.488.0.copyload, %bb.ej ]
  %.sroa.0.5 = phi i64 [ %.sroa.0.0.i.i, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit.i ], [ -9223372036854775806, %bb.en ], [ -9223372036854775806, %bb.ej ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !436
  br label %.thread

.thread:                                          ; preds = %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskSRqRFwaW70_9yara_x_py.exit38, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskSRqRFwaW70_9yara_x_py.exit, %bb.z, %bb.q, %bb.j, %bb.ag
  %.sroa.24.sroa.23.sroa.0.6 = phi i64 [ %.sroa.24.sroa.23.sroa.0.0.in.in, %bb.ag ], [ 0, %bb.q ], [ 0, %bb.z ], [ 0, %bb.j ], [ %.sroa.24.sroa.23.sroa.0.2.in.in, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit ], [ %.sroa.24.sroa.23.sroa.0.1, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskSRqRFwaW70_9yara_x_py.exit38 ], [ %.sroa.24.sroa.23.sroa.0.5, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskSRqRFwaW70_9yara_x_py.exit ]
  %.sroa.24.sroa.0.6 = phi i64 [ %.sroa.24.sroa.23.sroa.0.0.in.in, %bb.ag ], [ 1, %bb.q ], [ 0, %bb.z ], [ 0, %bb.j ], [ %.sroa.24.sroa.23.sroa.0.2.in.in, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit ], [ %.sroa.24.sroa.0.1, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskSRqRFwaW70_9yara_x_py.exit38 ], [ %.sroa.24.sroa.0.5, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskSRqRFwaW70_9yara_x_py.exit ]
  %.sroa.49.4 = phi i64 [ %.sroa.49.0, %bb.ag ], [ undef, %bb.q ], [ undef, %bb.z ], [ undef, %bb.j ], [ %.sroa.4.0.copyload.i, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit ], [ undef, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskSRqRFwaW70_9yara_x_py.exit38 ], [ undef, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskSRqRFwaW70_9yara_x_py.exit ]
  %.sroa.41.6 = phi i64 [ %.sroa.41.0, %bb.ag ], [ undef, %bb.q ], [ undef, %bb.z ], [ undef, %bb.j ], [ %.sroa.41.2, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit ], [ %.sroa.41.1, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskSRqRFwaW70_9yara_x_py.exit38 ], [ %.sroa.41.5, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskSRqRFwaW70_9yara_x_py.exit ]
  %.sroa.0.6 = phi i64 [ %.sroa.0.0, %bb.ag ], [ -9223372036854775807, %bb.q ], [ -9223372036854775807, %bb.z ], [ -9223372036854775808, %bb.j ], [ -9223372036854775805, %_RINvXNvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB8_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECskSRqRFwaW70_9yara_x_py.exit ], [ %.sroa.0.1, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskSRqRFwaW70_9yara_x_py.exit38 ], [ %.sroa.0.5, %_RINvMs2_NtCsbbTh99npV2h_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize12ValueVisitorECskSRqRFwaW70_9yara_x_py.exit ]
  store i64 %.sroa.0.6, ptr %0, align 8, !noalias !427
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.24.sroa.23.0.insert.ext = and i64 %.sroa.24.sroa.23.sroa.0.6, -256
  %.sroa.24.sroa.0.0.insert.ext = and i64 %.sroa.24.sroa.0.6, 255
  %.sroa.24.sroa.0.0.insert.insert = or disjoint i64 %.sroa.24.sroa.0.0.insert.ext, %.sroa.24.sroa.23.0.insert.ext
  store i64 %.sroa.24.sroa.0.0.insert.insert, ptr %.sroa.24.0..sroa_idx, align 8, !noalias !427
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.41.6, ptr %.sroa.41.0..sroa_idx, align 8, !noalias !427
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.49.4, ptr %.sroa.49.0..sroa_idx, align 8, !noalias !427
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.51.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.51, i64 40, i1 false), !noalias !427
  br label %bb.eo

bb.eo:                                            ; preds = %.thread, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51)
  br label %_RINvXs5_NtCsbbTh99npV2h_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECskSRqRFwaW70_9yara_x_py.exit

_RINvXs5_NtCsbbTh99npV2h_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECskSRqRFwaW70_9yara_x_py.exit: ; preds = %.loopexit269, %bb.ah, %bb.eo
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtCscjxkGEBy879_6bitvec6serdes5utilsINtB6_8TypeNameNtNtBa_5order4Lsb0ENtNtCsaeRQ2XwCvzm_10serde_core2de7Visitor9visit_strNtNtCslcwApyVHiOd_7bincode5error11DecodeErrorECskSRqRFwaW70_9yara_x_py(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = icmp eq i64 %2, 19
  br i1 %i.c, label %bb.b, label %bb.c, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 1
  %i.e = xor i128 %i.d, 101323666340595583741643909443253201250
  %i.f = getelementptr i8, ptr %1, i64 3
  %i.g = load i128, ptr %i.f, align 1
  %i.h = xor i128 %i.g, 64314127406277934520480969486363747702
  %i.i = or i128 %i.e, %i.h
  %i.j = icmp ne i128 %i.i, 0
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %2, ptr %i.n, align 8
  store i8 5, ptr %i.b, align 8
  call void @_RNvYNtNtCslcwApyVHiOd_7bincode5error11DecodeErrorNtNtCsaeRQ2XwCvzm_10serde_core2de5Error13invalid_valueCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i8 -1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3g_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs7gfv9tzbXmh_6yara_x8compiler10RegexSetIdINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB1G_7RegexIdENtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherENtB9_11Deserialize11deserializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowed12SerdeDecoderINtNtNtB4w_2de7decoder11DecoderImplNtNtB5D_4read11SliceReaderNtNtB4w_6config13ConfigurationuEEECskSRqRFwaW70_9yara_x_py(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  tail call void @_RINvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtB6_12SerdeDecoderINtNtNtBc_2de7decoder11DecoderImplNtNtB1p_4read11SliceReaderNtNtBc_6config13ConfigurationuEENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_mapINtNvXs3g_NtB2Q_5implsINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMappppENtB2Q_11Deserialize11deserialize10MapVisitorNtNtCs7gfv9tzbXmh_6yara_x8compiler10RegexSetIdINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB5U_7RegexIdENtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherEECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3g_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNtNtB1G_5rules14FilesizeBoundsNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherENtB9_11Deserialize11deserializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowed12SerdeDecoderINtNtNtB4c_2de7decoder11DecoderImplNtNtB5j_4read11SliceReaderNtNtB4c_6config13ConfigurationuEEECskSRqRFwaW70_9yara_x_py(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  tail call void @_RINvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtB6_12SerdeDecoderINtNtNtBc_2de7decoder11DecoderImplNtNtB1p_4read11SliceReaderNtNtBc_6config13ConfigurationuEENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_mapINtNvXs3g_NtB2Q_5implsINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMappppENtB2Q_11Deserialize11deserialize10MapVisitorNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNtNtB5U_5rules14FilesizeBoundsNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherEECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3g_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNtNtB1G_5rules16HeaderConstraintNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherENtB9_11Deserialize11deserializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowed12SerdeDecoderINtNtNtB4e_2de7decoder11DecoderImplNtNtB5l_4read11SliceReaderNtNtB4e_6config13ConfigurationuEEECskSRqRFwaW70_9yara_x_py(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  tail call void @_RINvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtB6_12SerdeDecoderINtNtNtBc_2de7decoder11DecoderImplNtNtB1p_4read11SliceReaderNtNtBc_6config13ConfigurationuEENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_mapINtNvXs3g_NtB2Q_5implsINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMappppENtB2Q_11Deserialize11deserialize10MapVisitorNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNtNtB5U_5rules16HeaderConstraintNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherEECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs9_NtCsbbTh99npV2h_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsaeRQ2XwCvzm_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB8_5value5ValueEECskSRqRFwaW70_9yara_x_py(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !5, !align !19, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !622, !noalias !623, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.d, align 8, !alias.scope !624, !noalias !625 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !622, !noalias !623, !nonnull !5, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.j = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !626)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !628, !noundef !5
  switch i8 %i.l, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.f
  ], !prof !23

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !629, !noalias !625
  %exitcond.not.i.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !620
  store i64 3, ptr %i.a, align 8, !noalias !620
  %i.n = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !620
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !620
  store i64 6, ptr %i.b, align 8, !noalias !620
  %i.o = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !620
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit.i
  %.sroa.0.0.i.ph = phi ptr [ %i.n, %.loopexit.i ], [ %i.o, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.ph, ptr %i.p, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.q = add i64 %i.j, 1
  store i64 %i.q, ptr %i.d, align 8, !alias.scope !630
  tail call fastcc void @_RINvXNtNtCsbbTh99npV2h_10serde_json5value2deNtB5_5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c) #25, !inline_history !619
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCscjxkGEBy879_6bitvec6serdes5utilsINtB5_8TypeNameNtNtB9_5order4Lsb0ENtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowed12SerdeDecoderINtNtNtB2l_2de7decoder11DecoderImplNtNtB3s_4read11SliceReaderNtNtB2l_6config13ConfigurationuEEECskSRqRFwaW70_9yara_x_py(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  tail call void @_RINvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtB6_12SerdeDecoderINtNtNtBc_2de7decoder11DecoderImplNtNtB1p_4read11SliceReaderNtNtBc_6config13ConfigurationuEENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_strINtNtNtCscjxkGEBy879_6bitvec6serdes5utils8TypeNameNtNtB3X_5order4Lsb0EECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtCsjq8JwqGjWmS_4pyo37pyclass5guardINtB2_12PyClassGuardNtCskSRqRFwaW70_9yara_x_py11IgnoredRuleE21try_from_class_objectBZ_(ptr noundef nonnull align 8 %0) unnamed_addr #3 {
bb.a:
  tail call void @_RNvXsf_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtCskSRqRFwaW70_9yara_x_py11IgnoredRuleEINtB5_23PyClassObjectBaseLayoutB16_E17ensure_threadsafeB18_(ptr noundef nonnull align 8 %0)
  %i.a = tail call noundef nonnull align 8 ptr @_RNvXsc_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtCskSRqRFwaW70_9yara_x_py11IgnoredRuleEINtB5_19PyClassObjectLayoutB16_E14borrow_checkerB18_(ptr noundef nonnull align 8 %0)
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.a)
  %. = select i1 %i.b, ptr null, ptr %0
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtCsjq8JwqGjWmS_4pyo37pyclass5guardINtB2_12PyClassGuardNtCskSRqRFwaW70_9yara_x_py11JsonDecoderE21try_from_class_objectBZ_(ptr noundef nonnull align 8 %0) unnamed_addr #3 {
bb.a:
  tail call void @_RNvXsf_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtCskSRqRFwaW70_9yara_x_py11JsonDecoderEINtB5_23PyClassObjectBaseLayoutB16_E17ensure_threadsafeB18_(ptr noundef nonnull align 8 %0)
  %i.a = tail call noundef nonnull align 8 ptr @_RNvXsc_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtCskSRqRFwaW70_9yara_x_py11JsonDecoderEINtB5_19PyClassObjectLayoutB16_E14borrow_checkerB18_(ptr noundef nonnull align 8 %0)
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.a)
  %. = select i1 %i.b, ptr null, ptr %0
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtCsjq8JwqGjWmS_4pyo37pyclass5guardINtB2_12PyClassGuardNtCskSRqRFwaW70_9yara_x_py11ScanOptionsE21try_from_class_objectBZ_(ptr noundef nonnull align 8 %0) unnamed_addr #3 {
bb.a:
  tail call void @_RNvXsf_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtCskSRqRFwaW70_9yara_x_py11ScanOptionsEINtB5_23PyClassObjectBaseLayoutB16_E17ensure_threadsafeB18_(ptr noundef nonnull align 8 %0)
  %i.a = tail call noundef nonnull align 8 ptr @_RNvXsc_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtCskSRqRFwaW70_9yara_x_py11ScanOptionsEINtB5_19PyClassObjectLayoutB16_E14borrow_checkerB18_(ptr noundef nonnull align 8 %0)
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.a)
  %. = select i1 %i.b, ptr null, ptr %0
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtCsjq8JwqGjWmS_4pyo37pyclass5guardINtB2_12PyClassGuardNtCskSRqRFwaW70_9yara_x_py11ScanResultsE21try_from_class_objectBZ_(ptr noundef nonnull align 8 %0) unnamed_addr #3 {
bb.a:
  tail call void @_RNvXsf_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtCskSRqRFwaW70_9yara_x_py11ScanResultsEINtB5_23PyClassObjectBaseLayoutB16_E17ensure_threadsafeB18_(ptr noundef nonnull align 8 %0)
  %i.a = tail call noundef nonnull align 8 ptr @_RNvXsc_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtCskSRqRFwaW70_9yara_x_py11ScanResultsEINtB5_19PyClassObjectLayoutB16_E14borrow_checkerB18_(ptr noundef nonnull align 8 %0)
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.a)
  %. = select i1 %i.b, ptr null, ptr %0
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtCsjq8JwqGjWmS_4pyo37pyclass5guardINtB2_12PyClassGuardNtCskSRqRFwaW70_9yara_x_py17IgnoredRuleReasonE21try_from_class_objectBZ_(ptr noundef nonnull align 8 %0) unnamed_addr #3 {
bb.a:
  tail call void @_RNvXsf_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtCskSRqRFwaW70_9yara_x_py17IgnoredRuleReasonEINtB5_23PyClassObjectBaseLayoutB16_E17ensure_threadsafeB18_(ptr noundef nonnull align 8 %0)
  %i.a = tail call noundef nonnull align 8 ptr @_RNvXsc_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtCskSRqRFwaW70_9yara_x_py17IgnoredRuleReasonEINtB5_19PyClassObjectLayoutB16_E14borrow_checkerB18_(ptr noundef nonnull align 8 %0)
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.a)
  %. = select i1 %i.b, ptr null, ptr %0
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtCsjq8JwqGjWmS_4pyo37pyclass5guardINtB2_12PyClassGuardNtCskSRqRFwaW70_9yara_x_py4RuleE21try_from_class_objectBZ_(ptr noundef nonnull align 8 %0) unnamed_addr #3 {
bb.a:
  tail call void @_RNvXsf_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtCskSRqRFwaW70_9yara_x_py4RuleEINtB5_23PyClassObjectBaseLayoutB16_E17ensure_threadsafeB18_(ptr noundef nonnull align 8 %0)
  %i.a = tail call noundef nonnull align 8 ptr @_RNvXsc_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtCskSRqRFwaW70_9yara_x_py4RuleEINtB5_19PyClassObjectLayoutB16_E14borrow_checkerB18_(ptr noundef nonnull align 8 %0)
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.a)
  %. = select i1 %i.b, ptr null, ptr %0
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtCsjq8JwqGjWmS_4pyo37pyclass5guardINtB2_12PyClassGuardNtCskSRqRFwaW70_9yara_x_py5MatchE21try_from_class_objectBZ_(ptr noundef nonnull align 8 %0) unnamed_addr #3 {
bb.a:
  tail call void @_RNvXsf_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtCskSRqRFwaW70_9yara_x_py5MatchEINtB5_23PyClassObjectBaseLayoutB16_E17ensure_threadsafeB18_(ptr noundef nonnull align 8 %0)
  %i.a = tail call noundef nonnull align 8 ptr @_RNvXsc_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtCskSRqRFwaW70_9yara_x_py5MatchEINtB5_19PyClassObjectLayoutB16_E14borrow_checkerB18_(ptr noundef nonnull align 8 %0)
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.a)
  %. = select i1 %i.b, ptr null, ptr %0
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtCsjq8JwqGjWmS_4pyo37pyclass5guardINtB2_12PyClassGuardNtCskSRqRFwaW70_9yara_x_py5RulesE21try_from_class_objectBZ_(ptr noundef nonnull align 8 %0) unnamed_addr #3 {
bb.a:
  tail call void @_RNvXsf_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtCskSRqRFwaW70_9yara_x_py5RulesEINtB5_23PyClassObjectBaseLayoutB16_E17ensure_threadsafeB18_(ptr noundef nonnull align 8 %0)
  %i.a = tail call noundef nonnull align 8 ptr @_RNvXsc_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtCskSRqRFwaW70_9yara_x_py5RulesEINtB5_19PyClassObjectLayoutB16_E14borrow_checkerB18_(ptr noundef nonnull align 8 %0)
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.a)
  %. = select i1 %i.b, ptr null, ptr %0
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtCsjq8JwqGjWmS_4pyo37pyclass5guardINtB2_12PyClassGuardNtCskSRqRFwaW70_9yara_x_py6ModuleE21try_from_class_objectBZ_(ptr noundef nonnull align 8 %0) unnamed_addr #3 {
bb.a:
  tail call void @_RNvXsf_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtCskSRqRFwaW70_9yara_x_py6ModuleEINtB5_23PyClassObjectBaseLayoutB16_E17ensure_threadsafeB18_(ptr noundef nonnull align 8 %0)
  %i.a = tail call noundef nonnull align 8 ptr @_RNvXsc_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtCskSRqRFwaW70_9yara_x_py6ModuleEINtB5_19PyClassObjectLayoutB16_E14borrow_checkerB18_(ptr noundef nonnull align 8 %0)
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.a)
  %. = select i1 %i.b, ptr null, ptr %0
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtCsjq8JwqGjWmS_4pyo37pyclass5guardINtB2_12PyClassGuardNtCskSRqRFwaW70_9yara_x_py7PatternE21try_from_class_objectBZ_(ptr noundef nonnull align 8 %0) unnamed_addr #3 {
bb.a:
  tail call void @_RNvXsf_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtCskSRqRFwaW70_9yara_x_py7PatternEINtB5_23PyClassObjectBaseLayoutB16_E17ensure_threadsafeB18_(ptr noundef nonnull align 8 %0)
  %i.a = tail call noundef nonnull align 8 ptr @_RNvXsc_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtCskSRqRFwaW70_9yara_x_py7PatternEINtB5_19PyClassObjectLayoutB16_E14borrow_checkerB18_(ptr noundef nonnull align 8 %0)
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.a)
  %. = select i1 %i.b, ptr null, ptr %0
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtCsjq8JwqGjWmS_4pyo37pyclass5guardINtB2_12PyClassGuardNtCskSRqRFwaW70_9yara_x_py8CompilerE21try_from_class_objectBZ_(ptr noundef nonnull align 8 %0) unnamed_addr #3 {
bb.a:
  tail call void @_RNvXsf_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtCskSRqRFwaW70_9yara_x_py8CompilerEINtB5_23PyClassObjectBaseLayoutB16_E17ensure_threadsafeB18_(ptr noundef nonnull align 8 %0)
  %i.a = tail call noundef nonnull align 8 ptr @_RNvXsc_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtCskSRqRFwaW70_9yara_x_py8CompilerEINtB5_19PyClassObjectLayoutB16_E14borrow_checkerB18_(ptr noundef nonnull align 8 %0)
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.a)
  %. = select i1 %i.b, ptr null, ptr %0
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtCsjq8JwqGjWmS_4pyo37pyclass5guardINtB2_12PyClassGuardNtCskSRqRFwaW70_9yara_x_py8MetaTypeE21try_from_class_objectBZ_(ptr noundef nonnull align 8 %0) unnamed_addr #3 {
bb.a:
  tail call void @_RNvXsf_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtCskSRqRFwaW70_9yara_x_py8MetaTypeEINtB5_23PyClassObjectBaseLayoutB16_E17ensure_threadsafeB18_(ptr noundef nonnull align 8 %0)
  %i.a = tail call noundef nonnull align 8 ptr @_RNvXsc_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtCskSRqRFwaW70_9yara_x_py8MetaTypeEINtB5_19PyClassObjectLayoutB16_E14borrow_checkerB18_(ptr noundef nonnull align 8 %0)
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.a)
  %. = select i1 %i.b, ptr null, ptr %0
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtCsjq8JwqGjWmS_4pyo37pyclass5guardINtB2_12PyClassGuardNtCskSRqRFwaW70_9yara_x_py9FormatterE21try_from_class_objectBZ_(ptr noundef nonnull align 8 %0) unnamed_addr #3 {
bb.a:
  tail call void @_RNvXsf_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtCskSRqRFwaW70_9yara_x_py9FormatterEINtB5_23PyClassObjectBaseLayoutB16_E17ensure_threadsafeB18_(ptr noundef nonnull align 8 %0)
  %i.a = tail call noundef nonnull align 8 ptr @_RNvXsc_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtCskSRqRFwaW70_9yara_x_py9FormatterEINtB5_19PyClassObjectLayoutB16_E14borrow_checkerB18_(ptr noundef nonnull align 8 %0)
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.a)
  %. = select i1 %i.b, ptr null, ptr %0
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMs0_NtCsjq8JwqGjWmS_4pyo36pycellINtB5_5PyRefNtCskSRqRFwaW70_9yara_x_py5RulesE10try_borrowBL_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 4 uses
  tail call void @_RNvXsf_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtCskSRqRFwaW70_9yara_x_py5RulesEINtB5_23PyClassObjectBaseLayoutB16_E17ensure_threadsafeB18_(ptr noundef nonnull align 8 %i.a)
  %i.b = tail call noundef nonnull align 8 ptr @_RNvXsc_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtCskSRqRFwaW70_9yara_x_py5RulesEINtB5_19PyClassObjectLayoutB16_E14borrow_checkerB18_(ptr noundef nonnull align 8 %i.a)
  %i.c = tail call noundef zeroext i1 @_RNvXs3_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.b)
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @Py_IncRef(ptr noundef nonnull %i.a) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMs0_NtCsjq8JwqGjWmS_4pyo36pycellINtB5_5PyRefNtCskSRqRFwaW70_9yara_x_py9RulesIterE10try_borrowBL_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 4 uses
  tail call void @_RNvXsf_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtCskSRqRFwaW70_9yara_x_py9RulesIterEINtB5_23PyClassObjectBaseLayoutB16_E17ensure_threadsafeB18_(ptr noundef nonnull align 8 %i.a)
  %i.b = tail call noundef nonnull align 8 ptr @_RNvXsc_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtCskSRqRFwaW70_9yara_x_py9RulesIterEINtB5_19PyClassObjectLayoutB16_E14borrow_checkerB18_(ptr noundef nonnull align 8 %i.a)
  %i.c = tail call noundef zeroext i1 @_RNvXs3_NtNtCsjq8JwqGjWmS_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.b)
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @Py_IncRef(ptr noundef nonnull %i.a) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read13peek_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsbbTh99npV2h_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5error9ErrorCodeECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #22
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberCskSRqRFwaW70_9yara_x_py(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !655, !noalias !656, !noundef !5 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !655, !noalias !656, !noundef !5 ; 4 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !655, !noalias !656, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h
  %i.o = load i8, ptr %i.n, align 1, !noalias !657, !noundef !5
  switch i8 %i.o, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread [
    i8 46, label %bb.b
    i8 101, label %bb.p
    i8 69, label %bb.p
  ]

_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %bb.a, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  br i1 %2, label %bb.s, label %bb.v

bb.b:                                             ; preds = %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %i.p = add nuw i64 %i.h, 1                      ; 3 uses
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !660, !noalias !658
  %i.q = icmp ult i64 %i.p, %i.j
  br i1 %i.q, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i, label %.thread.thread.i

_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i: ; preds = %bb.b
  %i.r = trunc i64 %i.h to i32
  %i.s = add i32 %i.r, 1
  %i.t = trunc i64 %i.j to i32
  %i.u = sub i32 %i.s, %i.t                       ; 2 uses
  br label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i

_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i: ; preds = %bb.n, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i
  %.sroa.0.061.i = phi i64 [ %3, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bg, %bb.n ] ; 6 uses
  %.sroa.07.060.i = phi i32 [ 0, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bh, %bb.n ] ; 5 uses
  %i.v = phi i64 [ %i.p, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.be, %bb.n ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !661, !noundef !5 ; 2 uses
  %i.y = add i8 %i.x, -48                         ; 3 uses
  %or.cond.i = icmp ult i8 %i.y, 10
  br i1 %or.cond.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  %i.z = icmp eq i32 %.sroa.07.060.i, 0
  br i1 %i.z, label %bb.e, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i

.thread.i:                                        ; preds = %bb.n
  %i.aa = icmp eq i32 %i.u, 0
  br i1 %i.aa, label %.thread.thread.i, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i

bb.d:                                             ; preds = %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  %i.ab = zext nneg i8 %i.y to i64
  %i.ac = icmp ugt i64 %.sroa.0.061.i, 1844674407370955160
  br i1 %i.ac, label %bb.m, label %bb.n

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !662
  store i64 13, ptr %i.d, align 8, !noalias !662
  %i.ad = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !662
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !658, !noalias !659
  store i64 1, ptr %i.f, align 8, !alias.scope !658, !noalias !659
  br label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCskSRqRFwaW70_9yara_x_py.exit

.thread.thread.i:                                 ; preds = %.thread.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !662
  store i64 5, ptr %i.c, align 8, !noalias !662
  %i.af = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !662
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !658, !noalias !659
  store i64 1, ptr %i.f, align 8, !alias.scope !658, !noalias !659
  br label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCskSRqRFwaW70_9yara_x_py.exit

_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i: ; preds = %bb.c
  switch i8 %i.x, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i [
    i8 101, label %bb.l
    i8 69, label %bb.l
  ]

_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i: ; preds = %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i, %.thread.i
  %.sroa.07.059.i = phi i32 [ %i.u, %.thread.i ], [ %.sroa.07.060.i, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i ] ; 3 uses
  %.sroa.0.056.i = phi i64 [ %i.bg, %.thread.i ], [ %.sroa.0.061.i, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %i.ah = uitofp i64 %.sroa.0.056.i to double     ; 2 uses
  %.sroa.012.020.i.i = tail call i32 @llvm.abs.i32(i32 %.sroa.07.059.i, i1 false) ; 2 uses
  %i.ai = icmp ult i32 %.sroa.012.020.i.i, 309
  br i1 %i.ai, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i, %bb.g
  %.sroa.0.022.i.i = phi i32 [ %i.aq, %bb.g ], [ %.sroa.07.059.i, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ] ; 2 uses
  %.sroa.04.021.i.i = phi double [ %i.ap, %bb.g ], [ %i.ah, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ] ; 3 uses
  %i.aj = fcmp oeq double %.sroa.04.021.i.i, 0.000000e+00
  br i1 %i.aj, label %.loopexit.i.i, label %bb.f

._crit_edge.i.i:                                  ; preds = %bb.g, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i
  %.sroa.04.0.lcssa.i.i = phi double [ %i.ah, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %i.ap, %bb.g ] ; 2 uses
  %.sroa.0.0.lcssa.i.i = phi i32 [ %.sroa.07.059.i, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %i.aq, %bb.g ]
  %.sroa.012.0.lcssa.i.i = phi i32 [ %.sroa.012.020.i.i, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %.sroa.012.0.i.i, %bb.g ]
  %i.ak = zext nneg i32 %.sroa.012.0.lcssa.i.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsbbTh99npV2h_10serde_json2de5POW10, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !noalias !664, !noundef !5 ; 2 uses
  %i.an = icmp sgt i32 %.sroa.0.0.lcssa.i.i, -1
  br i1 %i.an, label %bb.j, label %bb.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = icmp sgt i32 %.sroa.0.022.i.i, -1
  br i1 %i.ao, label %bb.h, label %bb.g, !prof !8

bb.g:                                             ; preds = %bb.f
  %i.ap = fdiv double %.sroa.04.021.i.i, 1.000000e+308 ; 2 uses
  %i.aq = add nsw i32 %.sroa.0.022.i.i, 308       ; 3 uses
  %.sroa.012.0.i.i = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true) ; 2 uses
  %i.ar = icmp samesign ult i32 %.sroa.012.0.i.i, 309
  br i1 %i.ar, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !664
  store i64 14, ptr %i.a, align 8, !noalias !664
  %i.as = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !664
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.as, ptr %i.at, align 8, !alias.scope !665, !noalias !666
  br label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCskSRqRFwaW70_9yara_x_py.exit.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %bb.j, %bb.i
  %.sroa.04.1.i.i = phi double [ %i.ax, %bb.j ], [ %i.aw, %bb.i ], [ %.sroa.04.021.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.au = fneg double %.sroa.04.1.i.i
  %.sroa.04.2.i.i = select i1 %2, double %.sroa.04.1.i.i, double %i.au
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store double %.sroa.04.2.i.i, ptr %i.av, align 8, !alias.scope !665, !noalias !666
  br label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCskSRqRFwaW70_9yara_x_py.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.aw = fdiv double %.sroa.04.0.lcssa.i.i, %i.am
  br label %.loopexit.i.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.ax = fmul double %.sroa.04.0.lcssa.i.i, %i.am ; 2 uses
  %i.ay = tail call double @llvm.fabs.f64(double %i.ax)
  %i.az = fcmp oeq double %i.ay, +inf
  br i1 %i.az, label %bb.k, label %.loopexit.i.i, !prof !8

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !664
  store i64 14, ptr %i.b, align 8, !noalias !664
  %i.ba = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !664
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ba, ptr %i.bb, align 8, !alias.scope !665, !noalias !666
  br label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCskSRqRFwaW70_9yara_x_py.exit.i

_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCskSRqRFwaW70_9yara_x_py.exit.i: ; preds = %bb.k, %.loopexit.i.i, %bb.h
  %storemerge.i.i = phi i64 [ 0, %.loopexit.i.i ], [ 1, %bb.k ], [ 1, %bb.h ]
  store i64 %storemerge.i.i, ptr %i.f, align 8, !alias.scope !665, !noalias !666
  br label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCskSRqRFwaW70_9yara_x_py.exit

bb.l:                                             ; preds = %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i
  call fastcc void @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.0.061.i, i32 noundef %.sroa.07.060.i)
  br label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCskSRqRFwaW70_9yara_x_py.exit

bb.m:                                             ; preds = %bb.d
  %i.bc = icmp ne i64 %.sroa.0.061.i, 1844674407370955161
  %i.bd = icmp samesign ugt i8 %i.y, 5
  %or.cond1.i = or i1 %i.bc, %i.bd
  br i1 %or.cond1.i, label %bb.o, label %bb.n, !prof !11

bb.n:                                             ; preds = %bb.m, %bb.d
  %i.be = add i64 %i.v, 1                         ; 3 uses
  store i64 %i.be, ptr %i.g, align 8, !alias.scope !667, !noalias !658
  %i.bf = mul nuw i64 %.sroa.0.061.i, 10
  %i.bg = add i64 %i.bf, %i.ab                    ; 2 uses
  %i.bh = add i32 %.sroa.07.060.i, -1
  %exitcond.not.i = icmp eq i64 %i.be, %i.j
  br i1 %exitcond.not.i, label %.thread.i, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i

bb.o:                                             ; preds = %bb.m
  call void @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE22parse_decimal_overflowB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.0.061.i, i32 noundef %.sroa.07.060.i) #26
  br label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCskSRqRFwaW70_9yara_x_py.exit

_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCskSRqRFwaW70_9yara_x_py.exit: ; preds = %bb.e, %.thread.thread.i, %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCskSRqRFwaW70_9yara_x_py.exit.i, %bb.l, %bb.o
  %i.bi = load i64, ptr %i.f, align 8, !range !6, !noundef !5
  %i.bj = trunc nuw i64 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %i.bj, label %bb.q, label %bb.r

bb.p:                                             ; preds = %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef 0)
  %i.bl = load i64, ptr %i.e, align 8, !range !6, !noundef !5
  %i.bm = trunc nuw i64 %i.bl to i1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.bm, label %bb.t, label %bb.u

bb.q:                                             ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCskSRqRFwaW70_9yara_x_py.exit
  %i.bo = load ptr, ptr %i.bk, align 8, !nonnull !5, !align !19, !noundef !5
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bo, ptr %i.bp, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.x

bb.r:                                             ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCskSRqRFwaW70_9yara_x_py.exit
  %i.bq = load i64, ptr %i.bk, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, %bb.w, %bb.u, %bb.r
  %.sroa.9.0 = phi i64 [ %i.bt, %bb.u ], [ %i.by, %bb.w ], [ %3, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread ], [ %i.bq, %bb.r ], [ %i.bu, %bb.v ]
  %.sroa.0.0 = phi i64 [ 0, %bb.u ], [ 0, %bb.w ], [ 1, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread ], [ 0, %bb.r ], [ 2, %bb.v ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.x

bb.t:                                             ; preds = %bb.p
  %i.br = load ptr, ptr %i.bn, align 8, !nonnull !5, !align !19, !noundef !5
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.br, ptr %i.bs, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

bb.u:                                             ; preds = %bb.p
  %i.bt = load i64, ptr %i.bn, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.s

bb.v:                                             ; preds = %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread
  %i.bu = sub i64 0, %3                           ; 2 uses
  %i.bv = icmp sgt i64 %i.bu, -1
  br i1 %i.bv, label %bb.w, label %bb.s

bb.w:                                             ; preds = %bb.v
  %i.bw = uitofp i64 %3 to double
  %i.bx = fneg double %i.bw
  %i.by = bitcast double %i.bx to i64
  br label %bb.s

bb.x:                                             ; preds = %bb.q, %bb.t, %bb.s
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCskSRqRFwaW70_9yara_x_py(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !690, !noalias !691, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !690, !noalias !691, !noundef !5 ; 4 uses
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !690, !noalias !691, !nonnull !5, !noundef !5 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.m = load i8, ptr %i.l, align 1, !noalias !692, !noundef !5 ; 3 uses
  %i.n = add nuw i64 %i.f, 1                      ; 5 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !690, !noalias !691
  %i.o = icmp eq i8 %i.m, 48
  br i1 %i.o, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 5, ptr %i.d, align 8
  %i.p = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.n, %i.h
  br i1 %i.r, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.s = add i8 %i.m, -49
  %or.cond1 = icmp ult i8 %i.s, 9
  br i1 %or.cond1, label %bb.h, label %bb.g, !prof !18

_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  %i.u = load i8, ptr %i.t, align 1, !noalias !693, !noundef !5
  %i.v = add i8 %i.u, -48
  %i.w = icmp ult i8 %i.v, 10
  br i1 %i.w, label %bb.f, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, !prof !22

_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %bb.d, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  tail call fastcc void @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef 0)
  br label %bb.i

bb.f:                                             ; preds = %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.x = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 13, ptr %i.a, align 8
  %i.z = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ab = add nsw i8 %i.m, -48
  %i.ac = zext nneg i8 %i.ab to i64               ; 2 uses
  %i.ad = icmp ult i64 %i.n, %i.h
  br i1 %i.ad, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread

bb.i:                                             ; preds = %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread, %bb.p, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, %bb.f, %bb.c, %bb.g
  ret void

_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30: ; preds = %bb.h, %bb.l
  %.sroa.07.053 = phi i64 [ %i.ao, %bb.l ], [ %i.ac, %bb.h ] ; 5 uses
  %i.ae = phi i64 [ %i.am, %bb.l ], [ %i.n, %bb.h ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !694, !noundef !5
  %i.ah = add i8 %i.ag, -48                       ; 3 uses
  %or.cond2 = icmp ult i8 %i.ah, 10
  br i1 %or.cond2, label %bb.j, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread

_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread: ; preds = %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30, %bb.l, %bb.h
  %.sroa.07.0.lcssa = phi i64 [ %i.ac, %bb.h ], [ %i.ao, %bb.l ], [ %.sroa.07.053, %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30 ]
  tail call fastcc void @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.07.0.lcssa)
  br label %bb.i

bb.j:                                             ; preds = %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = icmp ugt i64 %.sroa.07.053, 1844674407370955160
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = icmp ne i64 %.sroa.07.053, 1844674407370955161
  %i.al = icmp samesign ugt i8 %i.ah, 5
  %or.cond3 = or i1 %i.ak, %i.al
  br i1 %or.cond3, label %bb.m, label %bb.l, !prof !11

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.am = add i64 %i.ae, 1                        ; 3 uses
  store i64 %i.am, ptr %i.e, align 8, !alias.scope !695
  %i.an = mul nuw i64 %.sroa.07.053, 10
  %i.ao = add i64 %i.an, %i.ai                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %i.h
  br i1 %exitcond.not, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread, label %_RNvXs8_NtCsbbTh99npV2h_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE18parse_long_integerB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.07.053) #26
  %i.ap = load i64, ptr %i.b, align 8, !range !6, !noundef !5
  %i.aq = trunc nuw i64 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.aq, label %bb.n, label %bb.o
end_hunk_1
