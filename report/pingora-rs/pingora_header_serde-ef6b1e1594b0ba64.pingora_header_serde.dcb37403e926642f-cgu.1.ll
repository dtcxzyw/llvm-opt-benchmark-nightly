Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_header_serde-ef6b1e1594b0ba64.pingora_header_serde.dcb37403e926642f-cgu.1?download=true
inline.NumInlined: 183
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMCsiWMK64dCVjf_20pingora_header_serdeNtB2_11HeaderSerde3new:bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #20
          to label %common.resume unwind label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.j, ptr noundef nonnull align 8 dereferenceable(1040) %i.a, i64 1040, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %0, i8 0, i64 504, i1 false)
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i64 0, ptr %.sroa.43.0..sroa_idx, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiWMK64dCVjf_20pingora_header_serde.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.i, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %bb.e
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiWMK64dCVjf_20pingora_header_serde.exit
  ret void

bb.i:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCsiWMK64dCVjf_20pingora_header_serdeNtB2_11HeaderSerde9serialize(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [2 x i8], align 2                 ; 4 uses
  %i.i = tail call noundef align 8 ptr @_RINvMs3_Cse0v0U5LqnG1_12thread_localINtB6_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE10get_or_tryNCINvB2_6get_orNCNvMCsiWMK64dCVjf_20pingora_header_serdeNtB2z_11HeaderSerde9serialize0E0uEB2z_(ptr noundef nonnull align 8 %1) ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.s, !prof !15

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 19 uses
  store i64 0, ptr %i.m, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 106
  %i.o = load i8, ptr %i.n, align 2, !range !198, !alias.scope !196, !noalias !197, !noundef !4
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 9)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %switch.selectcmp6.i = icmp eq i8 %i.o, 1
  %switch.select7.i = select i1 %switch.selectcmp6.i, ptr @20, ptr @21
  %i.p = load i64, ptr %i.m, align 8, !alias.scope !199, !noalias !196, !noundef !4 ; 2 uses
  %i.q = icmp sgt i64 %i.p, -1
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 7 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !199, !noalias !196, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.t, ptr noundef nonnull readonly align 1 dereferenceable(9) %switch.select7.i, i64 9, i1 false), !noalias !196
  %.pre.i.i = load i64, ptr %i.m, align 8, !alias.scope !199, !noalias !196
  %i.u = add i64 %.pre.i.i, 9
  store i64 %i.u, ptr %i.m, align 8, !alias.scope !199, !noalias !196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !200
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.w = load i16, ptr %i.v, align 8, !range !201, !alias.scope !196, !noalias !197, !noundef !4 ; 2 uses
  store i16 %i.w, ptr %i.h, align 2, !noalias !200
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 3)
          to label %.noexc4 unwind label %.loopexit.split-lp

.noexc4:                                          ; preds = %.noexc
  %i.x = add i16 %i.w, -100
  %i.y = zext i16 %i.x to i64
  %i.z = mul nuw nsw i64 %i.y, 3
  %i.aa = getelementptr inbounds nuw i8, ptr @22, i64 %i.z
  %i.ab = load i64, ptr %i.m, align 8, !alias.scope !202, !noalias !196, !noundef !4 ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, -1
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = load ptr, ptr %i.r, align 8, !alias.scope !202, !noalias !196, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ae, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.aa, i64 3, i1 false), !noalias !196
  %.pre.i8.i = load i64, ptr %i.m, align 8, !alias.scope !202, !noalias !196
  %i.af = add i64 %.pre.i8.i, 3
  store i64 %i.af, ptr %i.m, align 8, !alias.scope !202, !noalias !196
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 1)
          to label %.noexc5 unwind label %.loopexit.split-lp

.noexc5:                                          ; preds = %.noexc4
  %i.ag = load i64, ptr %i.m, align 8, !alias.scope !203, !noalias !196, !noundef !4 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = load ptr, ptr %i.r, align 8, !alias.scope !203, !noalias !196, !nonnull !4, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 32, ptr %i.aj, align 1, !noalias !196
  %.pre.i9.i = load i64, ptr %i.m, align 8, !alias.scope !203, !noalias !196
  %i.ak = add i64 %.pre.i9.i, 1
  store i64 %i.ak, ptr %i.m, align 8, !alias.scope !203, !noalias !196
  %i.al = invoke { ptr, i64 } @_RNvMNtCs84JG9zk80ZV_4http6statusNtB2_10StatusCode16canonical_reason(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.h)
          to label %.noexc6 unwind label %.loopexit.split-lp ; 2 uses

.noexc6:                                          ; preds = %.noexc5
  %i.am = extractvalue { ptr, i64 } %i.al, 0      ; 2 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc6
  %i.an = extractvalue { ptr, i64 } %i.al, 1      ; 4 uses
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.an)
          to label %.noexc7 unwind label %.loopexit.split-lp

.noexc7:                                          ; preds = %bb.c
  %i.ao = load i64, ptr %i.m, align 8, !alias.scope !204, !noalias !196, !noundef !4 ; 3 uses
  %i.ap = icmp sgt i64 %i.ao, -1
  call void @llvm.assume(i1 %i.ap)
  %.not.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsiWMK64dCVjf_20pingora_header_serde.exit.i, label %bb.d

bb.d:                                             ; preds = %.noexc7
  %i.aq = load ptr, ptr %i.r, align 8, !alias.scope !204, !noalias !196, !nonnull !4, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull readonly align 1 %i.am, i64 %i.an, i1 false), !noalias !196
  %.pre.i10.i = load i64, ptr %i.m, align 8, !alias.scope !204, !noalias !196
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsiWMK64dCVjf_20pingora_header_serde.exit.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsiWMK64dCVjf_20pingora_header_serde.exit.i: ; preds = %bb.d, %.noexc7
  %i.as = phi i64 [ %.pre.i10.i, %bb.d ], [ %i.ao, %.noexc7 ]
  %i.at = add i64 %i.as, %i.an
  store i64 %i.at, ptr %i.m, align 8, !alias.scope !204, !noalias !196
  br label %bb.e

bb.e:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsiWMK64dCVjf_20pingora_header_serde.exit.i, %.noexc6
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 2)
          to label %.noexc8 unwind label %.loopexit.split-lp

.noexc8:                                          ; preds = %bb.e
  %i.au = load i64, ptr %i.m, align 8, !alias.scope !205, !noalias !196, !noundef !4 ; 2 uses
  %i.av = icmp sgt i64 %i.au, -1
  call void @llvm.assume(i1 %i.av)
  %i.aw = load ptr, ptr %i.r, align 8, !alias.scope !205, !noalias !196, !nonnull !4, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au
  store i16 2573, ptr %i.ax, align 1, !noalias !196
  %.pre.i11.i = load i64, ptr %i.m, align 8, !alias.scope !205, !noalias !196
  %i.ay = add i64 %.pre.i11.i, 2
  store i64 %i.ay, ptr %i.m, align 8, !alias.scope !205, !noalias !196
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !range !7, !alias.scope !196, !noalias !197, !noundef !4
  %.not5.i = icmp eq i64 %i.ba, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !206)
  br i1 %.not5.i, label %select.unfold.preheader.i.i, label %_RINvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtBc_6option8IntoIterRINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENCNvB2G_16case_header_iter0EIB1d_INtNtB8_3zip3ZipINtB1U_4IterB2C_EIB4w_NtNtB1W_5value11HeaderValueEENCNCB3K_00EE9iter_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator4fold7flattenB4a_uNCINvNvB62_8for_each4callTRB2C_RB4R_ENCINvB2G_17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0E0ECsiWMK64dCVjf_20pingora_header_serde.exit.i.i

_RINvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtBc_6option8IntoIterRINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENCNvB2G_16case_header_iter0EIB1d_INtNtB8_3zip3ZipINtB1U_4IterB2C_EIB4w_NtNtB1W_5value11HeaderValueEENCNCB3K_00EE9iter_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator4fold7flattenB4a_uNCINvNvB62_8for_each4callTRB2C_RB4R_ENCINvB2G_17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0E0ECsiWMK64dCVjf_20pingora_header_serde.exit.i.i: ; preds = %.noexc8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !207
  store ptr %i.l, ptr %i.g, align 8, !noalias !208
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtBc_6option8IntoIterRINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENCNvB2b_16case_header_iter0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB4u_13FlattenCompatppE9iter_fold7flattenIBO_INtNtB8_3zip3ZipINtB1p_4IterB27_EIB5J_NtNtB1r_5value11HeaderValueEENCNCB3f_00EuNCINvNvXsi_B4u_B4H_B3F_4fold7flattenB5o_uNCINvNvB3F_8for_each4callTRB27_RB64_ENCINvB2b_17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0E0E0ECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) %i.az, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc9 unwind label %.loopexit.split-lp

.noexc9:                                          ; preds = %_RINvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtBc_6option8IntoIterRINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENCNvB2G_16case_header_iter0EIB1d_INtNtB8_3zip3ZipINtB1U_4IterB2C_EIB4w_NtNtB1W_5value11HeaderValueEENCNCB3K_00EE9iter_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator4fold7flattenB4a_uNCINvNvB62_8for_each4callTRB2C_RB4R_ENCINvB2G_17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0E0ECsiWMK64dCVjf_20pingora_header_serde.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !207
  br label %_RINvCskspKcFIsYcD_12pingora_http17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiWMK64dCVjf_20pingora_header_serde.exit.i

select.unfold.preheader.i.i:                      ; preds = %.noexc8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !209, !noalias !210, !noundef !4 ; 5 uses
  %.not21.i.i = icmp eq i64 %i.bc, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !209, !noalias !210, !nonnull !4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !209, !noalias !210 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !209, !noalias !210, !nonnull !4
  %i.bj = icmp ult i64 %i.bc, 88686269585142076
  %spec.select = select i1 %.not21.i.i, i64 2, i64 0
  br label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %select.unfold.preheader.i.i, %.noexc14
  %.sroa.13.0.i.i = phi i64 [ %.sroa.13.13338.i.i, %.noexc14 ], [ 0, %select.unfold.preheader.i.i ] ; 6 uses
  %.sroa.7.0.i.i = phi i64 [ %.sroa.7.2.i.i, %.noexc14 ], [ undef, %select.unfold.preheader.i.i ] ; 4 uses
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.1.i.i, %.noexc14 ], [ %spec.select, %select.unfold.preheader.i.i ] ; 2 uses
  %.not.i27.i.i = icmp eq i64 %.sroa.0.0.i.i, 2
  br i1 %.not.i27.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %select.unfold.i.i
  %i.bk = icmp ult i64 %.sroa.13.0.i.i, %i.bc
  br i1 %i.bk, label %bb.h, label %.invoke

.thread35.i.i:                                    ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw [104 x i8], ptr %i.be, i64 %i.bm
  br label %bb.j

bb.g:                                             ; preds = %select.unfold.i.i
  %i.bm = add i64 %.sroa.13.0.i.i, 1              ; 3 uses
  call void @llvm.assume(i1 %i.bj)
  %.not17.i.i.i = icmp ult i64 %i.bm, %i.bc
  br i1 %.not17.i.i.i, label %.thread35.i.i, label %_RINvCskspKcFIsYcD_12pingora_http17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiWMK64dCVjf_20pingora_header_serde.exit.i

bb.h:                                             ; preds = %bb.f
  %i.bn = icmp eq i64 %.sroa.0.0.i.i, 0
  %i.bo = getelementptr inbounds nuw [104 x i8], ptr %i.be, i64 %.sroa.13.0.i.i ; 2 uses
  br i1 %i.bn, label %bb.j, label %bb.i, !prof !211

bb.i:                                             ; preds = %bb.h
  %i.bp = icmp ult i64 %.sroa.7.0.i.i, %i.bg
  br i1 %i.bp, label %bb.m, label %.invoke

bb.j:                                             ; preds = %bb.h, %.thread35.i.i
  %i.bq = phi ptr [ %i.bl, %.thread35.i.i ], [ %i.bo, %bb.h ] ; 4 uses
  %.sroa.13.13339.i.i = phi i64 [ %i.bm, %.thread35.i.i ], [ %.sroa.13.0.i.i, %bb.h ]
  %.sroa.09.0.copyload.i.i.i = load i64, ptr %i.bq, align 8, !noalias !212
  %i.br = trunc nuw i64 %.sroa.09.0.copyload.i.i.i to i1
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.410.0.copyload.i.i.i = load i64, ptr %.sroa.410.0..sroa_idx.i.i.i, align 8, !noalias !212
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.58.0.i.i.i = phi i64 [ %.sroa.410.0.copyload.i.i.i, %bb.k ], [ undef, %bb.j ]
  %.sroa.07.0.i.i.i = phi i64 [ 1, %bb.k ], [ 2, %bb.j ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  br label %bb.p

bb.m:                                             ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw [72 x i8], ptr %i.bi, i64 %.sroa.7.0.i.i ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !range !12, !noalias !212, !noundef !4
  %i.bw = trunc nuw i64 %i.bv to i1
  br i1 %i.bw, label %bb.n, label %bb.o

.invoke:                                          ; preds = %bb.i, %bb.f
  %i.bx = phi i64 [ %.sroa.13.0.i.i, %bb.f ], [ %.sroa.7.0.i.i, %bb.i ]
  %i.by = phi i64 [ %i.bc, %bb.f ], [ %i.bg, %bb.i ]
  %i.bz = phi ptr [ @113, %bb.f ], [ @114, %bb.i ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bx, i64 noundef %i.by, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bz) #23
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.cb = load i64, ptr %i.ca, align 8, !noalias !212, !noundef !4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.7.1.i.i = phi i64 [ %i.cb, %bb.n ], [ %.sroa.7.0.i.i, %bb.m ]
  %.sink.i.i.i = phi i64 [ 1, %bb.n ], [ 2, %bb.m ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.cd = phi ptr [ %i.bq, %bb.l ], [ %i.bo, %bb.o ] ; 3 uses
  %.sroa.13.13338.i.i = phi i64 [ %.sroa.13.13339.i.i, %bb.l ], [ %.sroa.13.0.i.i, %bb.o ]
  %.sroa.7.2.i.i = phi i64 [ %.sroa.58.0.i.i.i, %bb.l ], [ %.sroa.7.1.i.i, %bb.o ]
  %.sroa.0.1.i.i = phi i64 [ %.sroa.07.0.i.i.i, %bb.l ], [ %.sink.i.i.i, %bb.o ]
  %.sroa.4.0.i.i.i = phi ptr [ %i.bs, %bb.l ], [ %i.cc, %bb.o ] ; 2 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  %i.ce = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !noalias !213, !noundef !4
  %.not23.i.i = icmp eq ptr %i.ce, null
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 72 ; 2 uses
  br i1 %.not23.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cg = load i8, ptr %i.cf, align 8, !range !11, !noalias !213, !noundef !4 ; 3 uses
  switch i8 %i.cg, label %switch.lookup [
    i8 4, label %.thread.i.i
    i8 13, label %_RNvMsP_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_14StandardHeader6as_str.exit.i.i
    i8 17, label %.thread79.i.i
    i8 20, label %.thread84.i.i
    i8 22, label %.thread89.i.i
    i8 24, label %.thread94.i.i
    i8 29, label %.thread99.i.i
    i8 32, label %.thread104.i.i
    i8 38, label %.thread109.i.i
    i8 64, label %.thread114.i.i
    i8 65, label %.thread119.i.i
    i8 69, label %.thread124.i.i
  ]

.thread79.i.i:                                    ; preds = %bb.q
  br label %_RNvMsP_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_14StandardHeader6as_str.exit.i.i

.thread84.i.i:                                    ; preds = %bb.q
  br label %_RNvMsP_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_14StandardHeader6as_str.exit.i.i

.thread89.i.i:                                    ; preds = %bb.q
  br label %_RNvMsP_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_14StandardHeader6as_str.exit.i.i

.thread94.i.i:                                    ; preds = %bb.q
  br label %_RNvMsP_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_14StandardHeader6as_str.exit.i.i

.thread99.i.i:                                    ; preds = %bb.q
  br label %_RNvMsP_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_14StandardHeader6as_str.exit.i.i

.thread104.i.i:                                   ; preds = %bb.q
  br label %_RNvMsP_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_14StandardHeader6as_str.exit.i.i

.thread109.i.i:                                   ; preds = %bb.q
  br label %_RNvMsP_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_14StandardHeader6as_str.exit.i.i

.thread114.i.i:                                   ; preds = %bb.q
  br label %_RNvMsP_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_14StandardHeader6as_str.exit.i.i

.thread119.i.i:                                   ; preds = %bb.q
  br label %_RNvMsP_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_14StandardHeader6as_str.exit.i.i

.thread124.i.i:                                   ; preds = %bb.q
  br label %_RNvMsP_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_14StandardHeader6as_str.exit.i.i

.thread.i.i:                                      ; preds = %bb.q
  br label %_RNvMsP_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_14StandardHeader6as_str.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.ch = load ptr, ptr %i.cf, align 8, !noalias !213, !noundef !4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 80
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !213, !noundef !4
  br label %_RNvMsP_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_14StandardHeader6as_str.exit.i.i

switch.lookup:                                    ; preds = %bb.q
  %i.ck = zext nneg i8 %i.cg to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMCsiWMK64dCVjf_20pingora_header_serdeNtB2_11HeaderSerde9serialize, i64 %i.ck
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.cl = zext nneg i8 %i.cg to i64
  %switch.gep53 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMCsiWMK64dCVjf_20pingora_header_serdeNtB2_11HeaderSerde9serialize.27, i64 %i.cl
  %switch.load54 = load ptr, ptr %switch.gep53, align 8
  br label %_RNvMsP_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_14StandardHeader6as_str.exit.i.i

_RNvMsP_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_14StandardHeader6as_str.exit.i.i: ; preds = %switch.lookup, %bb.r, %.thread.i.i, %.thread124.i.i, %.thread119.i.i, %.thread114.i.i, %.thread109.i.i, %.thread104.i.i, %.thread99.i.i, %.thread94.i.i, %.thread89.i.i, %.thread84.i.i, %.thread79.i.i, %bb.q
  %i.cm = phi i64 [ 3, %bb.q ], [ 13, %.thread79.i.i ], [ 10, %.thread84.i.i ], [ 16, %.thread89.i.i ], [ 14, %.thread94.i.i ], [ 12, %.thread99.i.i ], [ 4, %.thread104.i.i ], [ 4, %.thread109.i.i ], [ 6, %.thread114.i.i ], [ 10, %.thread119.i.i ], [ 17, %.thread124.i.i ], [ 13, %.thread.i.i ], [ %i.cj, %bb.r ], [ %switch.ext, %switch.lookup ]
  %i.cn = phi ptr [ @1, %bb.q ], [ @2, %.thread79.i.i ], [ @3, %.thread84.i.i ], [ @4, %.thread89.i.i ], [ @5, %.thread94.i.i ], [ @6, %.thread99.i.i ], [ @7, %.thread104.i.i ], [ @8, %.thread109.i.i ], [ @9, %.thread114.i.i ], [ @10, %.thread119.i.i ], [ @11, %.thread124.i.i ], [ @0, %.thread.i.i ], [ %i.ch, %bb.r ], [ %switch.load54, %switch.lookup ]
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cn, i64 noundef range(i64 0, -9223372036854775808) %i.cm)
          to label %.noexc12 unwind label %.loopexit

.noexc12:                                         ; preds = %_RNvMsP_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_14StandardHeader6as_str.exit.i.i
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 2)
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %.noexc12
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.i.i, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !213, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.i.i, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !213, !noundef !4
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cp, i64 noundef range(i64 0, -9223372036854775808) %i.cr)
          to label %.noexc14 unwind label %.loopexit

.noexc14:                                         ; preds = %.noexc13
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 2)
          to label %select.unfold.i.i unwind label %.loopexit

_RINvCskspKcFIsYcD_12pingora_http17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiWMK64dCVjf_20pingora_header_serde.exit.i: ; preds = %bb.g, %.noexc9
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 2)
          to label %bb.t unwind label %.loopexit.split-lp

bb.s:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #23
  unreachable

bb.t:                                             ; preds = %_RINvCskspKcFIsYcD_12pingora_http17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiWMK64dCVjf_20pingora_header_serde.exit.i
  %i.cs = load i64, ptr %i.m, align 8, !alias.scope !214, !noalias !196, !noundef !4 ; 2 uses
  %i.ct = icmp sgt i64 %i.cs, -1
  call void @llvm.assume(i1 %i.ct)
  %i.cu = load ptr, ptr %i.r, align 8, !alias.scope !214, !noalias !196, !nonnull !4, !noundef !4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cs
  store i16 2573, ptr %i.cv, align 1
  %.pre.i13.i = load i64, ptr %i.m, align 8, !alias.scope !214, !noalias !196
  %i.cw = add nsw i64 %.pre.i13.i, 2              ; 3 uses
  store i64 %i.cw, ptr %i.m, align 8, !alias.scope !214, !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !200
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.cy = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.cz = load ptr, ptr %i.cx, align 8, !noalias !216, !noundef !4
  %.not.i17 = icmp eq ptr %i.cz, null
  br i1 %.not.i17, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !216
  invoke void @_RNvMs_NtCsiWMK64dCVjf_20pingora_header_serde11thread_zstdNtB4_19CompressionWithDict8compress(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull align 8 %i.cx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef range(i64 0, -9223372036854775808) %i.cw)
          to label %.noexc18 unwind label %.loopexit.split-lp

.noexc18:                                         ; preds = %bb.u
  %i.da = load i64, ptr %i.e, align 8, !range !8, !noalias !216, !noundef !4
  %i.db = icmp eq i64 %i.da, -1
  br i1 %i.db, label %bb.z, label %bb.aa

bb.v:                                             ; preds = %bb.t
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !216
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 1544
  %i.de = load i32, ptr %i.dd, align 8, !noalias !216, !noundef !4
  invoke void @_RNvMNtCsiWMK64dCVjf_20pingora_header_serde11thread_zstdNtB2_11Compression8compress(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.dc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef range(i64 0, -9223372036854775808) %i.cw, i32 noundef %i.de)
          to label %.noexc19 unwind label %.loopexit.split-lp

.noexc19:                                         ; preds = %bb.v
  %i.df = load i64, ptr %i.f, align 8, !range !8, !noalias !216, !noundef !4
  %i.dg = icmp eq i64 %i.df, -1
  br i1 %i.dg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.noexc19
  %i.dh = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !216, !nonnull !4, !noundef !4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !noalias !216, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !216
  store i16 28, ptr %i.d, align 8, !noalias !216
end_hunk_0
