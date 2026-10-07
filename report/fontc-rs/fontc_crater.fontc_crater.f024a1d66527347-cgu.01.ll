Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontc_crater.fontc_crater.f024a1d66527347-cgu.01?download=true
inline.NumInlined: 993
inline.NumDeleted: 362
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_RINvXs5_NtCs2xcxdQoJA8F_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNtB1j_5impls10StrVisitorECs1hTjP0dFAwJ_12fontc_crater:bb.a
  %.pre14 = load ptr, ptr %.phi.trans.insert13, align 8
  br label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %.pre = load i64, ptr %.phi.trans.insert13, align 8
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge12, %bb.e
  %i.ab = phi ptr [ %.pre14, %._crit_edge12 ], [ %i.x, %bb.e ]
  %i.ac = call noundef nonnull align 8 ptr @_RINvMs0_NtCs2xcxdQoJA8F_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECs1hTjP0dFAwJ_12fontc_crater(ptr noalias noundef nonnull align 8 %i.ab, ptr noundef nonnull readonly align 8 dereferenceable(56) %1)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8
  store ptr null, ptr %0, align 8
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge, %.thread
  %i.ae = phi i64 [ %.sroa.4.0.copyload, %.thread ], [ %.pre, %._crit_edge ]
  %i.af = phi ptr [ %i.w, %.thread ], [ %.pr, %._crit_edge ]
  store ptr %i.af, ptr %0, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ae, ptr %i.ag, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCs2xcxdQoJA8F_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNtNtCsiaiXH4eeXUJ_6chrono8datetime5serde15DateTimeVisitorECs1hTjP0dFAwJ_12fontc_crater(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1105, !noalias !1106, !noundef !6 ; 2 uses
  %.promoted.i = load i64, ptr %i.e, align 8, !alias.scope !1104, !noalias !1107 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i, %i.g
  br i1 %i.h, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1105, !noalias !1106, !nonnull !6, !noundef !6
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.k = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.n, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !1110, !noundef !6 ; 2 uses
  switch i8 %i.m, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.n = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !1111, !noalias !1107
  %exitcond.not.i = icmp eq i64 %i.n, %i.g
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.o = icmp eq i8 %i.m, 34
  br i1 %i.o, label %bb.d, label %bb.e, !prof !15

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 5, ptr %i.d, align 8
  %i.p = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  store i32 0, ptr %0, align 8
  br label %bb.k

bb.d:                                             ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit
  %i.r = add i64 %i.k, 1
  store i64 %i.r, ptr %i.e, align 8, !alias.scope !1112
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.t = load i64, ptr %i.b, align 8, !range !25, !noundef !6
  %i.u = icmp eq i64 %i.t, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !6, !noundef !6 ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit
  %i.x = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.y, align 8
  store i32 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RINvXs_NtNtCsiaiXH4eeXUJ_6chrono8datetime5serdeNtB5_15DateTimeVisitorNtNtCs7N5MyPZKytm_10serde_core2de7Visitor9visit_strNtNtCs2xcxdQoJA8F_10serde_json5error5ErrorECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %.sroa.4.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = load i32, ptr %i.c, align 8, !noundef !6
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %._crit_edge, label %bb.i, !prof !20

._crit_edge:                                      ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.e
  %i.ab = phi ptr [ %.pre, %._crit_edge ], [ %i.x, %bb.e ]
  %i.ac = call noundef nonnull align 8 ptr @_RINvMs0_NtCs2xcxdQoJA8F_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECs1hTjP0dFAwJ_12fontc_crater(ptr noalias noundef nonnull align 8 %i.ab, ptr noundef nonnull readonly align 8 dereferenceable(56) %1)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8
  store i32 0, ptr %0, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCs2xcxdQoJA8F_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer16deserialize_boolNtNtB1j_5impls11BoolVisitorECs1hTjP0dFAwJ_12fontc_crater(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1157, !noalias !1158, !noundef !6 ; 6 uses
  %.promoted.i = load i64, ptr %i.g, align 8, !alias.scope !1156, !noalias !1159 ; 2 uses
  %i.j = icmp ult i64 %.promoted.i, %i.i
  br i1 %i.j, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1157, !noalias !1158, !nonnull !6, !noundef !6 ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.m = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.p, %bb.c ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !noalias !1162, !noundef !6
  switch i8 %i.o, label %bb.u [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 116, label %bb.d
    i8 102, label %bb.k
  ], !prof !26

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.p = add i64 %i.m, 1                          ; 3 uses
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !1163, !noalias !1159
  %exitcond.not.i = icmp eq i64 %i.p, %i.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 5, ptr %i.f, align 8
  %i.q = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  %i.s = add i64 %i.m, 1                          ; 4 uses
  store i64 %i.s, ptr %i.g, align 8, !alias.scope !1164
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1165)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 %i.s) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  %exitcond.not.i9.not = icmp ult i64 %i.s, %i.i
  br i1 %exitcond.not.i9.not, label %bb.e, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !noalias !1168, !noundef !6
  %i.v = add i64 %i.m, 2                          ; 3 uses
  store i64 %i.v, ptr %i.g, align 8, !alias.scope !1169, !noalias !1170
  %.not.i = icmp eq i8 %i.u, 114
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !27

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  %exitcond.not.i9.1 = icmp eq i64 %i.v, %umax.i
  br i1 %exitcond.not.i9.1, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !1173, !noundef !6
  %i.y = add i64 %i.m, 3                          ; 3 uses
  store i64 %i.y, ptr %i.g, align 8, !alias.scope !1174, !noalias !1170
  %.not.i.1 = icmp eq i8 %i.x, 117
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !27

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  %exitcond.not.i9.2 = icmp eq i64 %i.y, %umax.i
  br i1 %exitcond.not.i9.2, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !1177, !noundef !6
  %i.ab = add i64 %i.m, 4
  store i64 %i.ab, ptr %i.g, align 8, !alias.scope !1178, !noalias !1170
  %.not.i.2 = icmp eq i8 %i.aa, 101
  br i1 %.not.i.2, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit, label %bb.j, !prof !27

_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1179
  store i64 5, ptr %i.e, align 8, !noalias !1179
  %i.ac = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !1180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1179
  br label %bb.t

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1179
  store i64 9, ptr %i.d, align 8, !noalias !1179
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !1180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1179
  br label %bb.t

bb.k:                                             ; preds = %bb.b
  %i.ae = add i64 %i.m, 1                         ; 4 uses
  store i64 %i.ae, ptr %i.g, align 8, !alias.scope !1181
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1182)
  %umax.i12 = tail call i64 @llvm.umax.i64(i64 %i.i, i64 %i.ae) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  %exitcond.not.i14.not = icmp ult i64 %i.ae, %i.i
  br i1 %exitcond.not.i14.not, label %bb.l, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i18

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !1185, !noundef !6
  %i.ah = add i64 %i.m, 2                         ; 3 uses
  store i64 %i.ah, ptr %i.g, align 8, !alias.scope !1186, !noalias !1187
  %.not.i15 = icmp eq i8 %i.ag, 97
  br i1 %.not.i15, label %bb.m, label %bb.s, !prof !27

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  %exitcond.not.i14.1 = icmp eq i64 %i.ah, %umax.i12
  br i1 %exitcond.not.i14.1, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i18, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !1190, !noundef !6
  %i.ak = add i64 %i.m, 3                         ; 3 uses
  store i64 %i.ak, ptr %i.g, align 8, !alias.scope !1191, !noalias !1187
  %.not.i15.1 = icmp eq i8 %i.aj, 108
  br i1 %.not.i15.1, label %bb.o, label %bb.s, !prof !27

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  %exitcond.not.i14.2 = icmp eq i64 %i.ak, %umax.i12
  br i1 %exitcond.not.i14.2, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i18, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !noalias !1194, !noundef !6
  %i.an = add i64 %i.m, 4                         ; 3 uses
  store i64 %i.an, ptr %i.g, align 8, !alias.scope !1195, !noalias !1187
  %.not.i15.2 = icmp eq i8 %i.am, 115
  br i1 %.not.i15.2, label %bb.q, label %bb.s, !prof !27

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  %exitcond.not.i14.3 = icmp eq i64 %i.an, %umax.i12
  br i1 %exitcond.not.i14.3, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i18, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !1198, !noundef !6
  %i.aq = add i64 %i.m, 5
  store i64 %i.aq, ptr %i.g, align 8, !alias.scope !1199, !noalias !1187
  %.not.i15.3 = icmp eq i8 %i.ap, 101
  br i1 %.not.i15.3, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit, label %bb.s, !prof !27

_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i18: ; preds = %bb.q, %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1200
  store i64 5, ptr %i.c, align 8, !noalias !1200
  %i.ar = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !1201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1200
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1200
  store i64 9, ptr %i.b, align 8, !noalias !1200
  %i.as = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !1201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1200
  br label %bb.t

bb.t:                                             ; preds = %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, %bb.j, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i18, %bb.s
  %.sroa.0.1.i17.ph.sink = phi ptr [ %i.as, %bb.s ], [ %i.ar, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i18 ], [ %i.ac, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.ad, %bb.j ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i17.ph.sink, ptr %i.at, align 8
  br label %bb.v

bb.u:                                             ; preds = %bb.b
  %i.au = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @70)
  %i.av = call noundef nonnull align 8 ptr @_RINvMs0_NtCs2xcxdQoJA8F_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECs1hTjP0dFAwJ_12fontc_crater(ptr noalias noundef nonnull align 8 %i.au, ptr noundef nonnull readonly align 8 dereferenceable(56) %1)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.aw, align 8
  br label %bb.v

_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.r, %bb.i
  %.sroa.7.0 = phi i8 [ 1, %bb.i ], [ 0, %bb.r ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.7.0, ptr %i.ax, align 1
  br label %bb.v

bb.v:                                             ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit, %bb.u, %.loopexit, %bb.t
  %storemerge.sink = phi i8 [ 1, %bb.t ], [ 1, %.loopexit ], [ 0, %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit ], [ 1, %bb.u ]
  store i8 %storemerge.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCs2xcxdQoJA8F_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer18deserialize_stringNtNtB1j_5impls13StringVisitorECs1hTjP0dFAwJ_12fontc_crater(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1221, !noalias !1222, !noundef !6 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.e, align 8, !alias.scope !1223, !noalias !1224 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i.i, %i.g
  br i1 %i.h, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1221, !noalias !1222, !nonnull !6, !noundef !6
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.k = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.n, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !1227, !noundef !6 ; 2 uses
  switch i8 %i.m, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.n = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !1228, !noalias !1224
  %exitcond.not.i.i = icmp eq i64 %i.n, %i.g
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1229
  %i.o = icmp eq i8 %i.m, 34
  br i1 %i.o, label %bb.d, label %bb.e, !prof !15

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1229
  store i64 5, ptr %i.d, align 8, !noalias !1229
  %i.p = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !1218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1229
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8, !alias.scope !1218, !noalias !1219
  store i64 -1, ptr %0, align 8, !alias.scope !1218, !noalias !1219
  br label %_RINvXs5_NtCs2xcxdQoJA8F_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNtB1j_5impls13StringVisitorECs1hTjP0dFAwJ_12fontc_crater.exit

bb.d:                                             ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.r = add i64 %i.k, 1
  store i64 %i.r, ptr %i.e, align 8, !alias.scope !1230, !noalias !1218
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.s, align 8, !alias.scope !1219, !noalias !1218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1229
  call void @_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !1218
  %i.t = load i64, ptr %i.b, align 8, !range !25, !noalias !1229, !noundef !6
  %i.u = icmp eq i64 %i.t, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1229, !nonnull !6, !noundef !6 ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.x = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @65), !noalias !1218
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.y, align 8, !alias.scope !1218, !noalias !1219
  store i64 -1, ptr %0, align 8, !alias.scope !1218, !noalias !1219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1229
  br label %_RINvXs5_NtCs2xcxdQoJA8F_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNtB1j_5impls13StringVisitorECs1hTjP0dFAwJ_12fontc_crater.exit

bb.g:                                             ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1229
  call void @_RINvXs4_NtNtCs7N5MyPZKytm_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCs2xcxdQoJA8F_10serde_json5error5ErrorECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %.sroa.4.0.copyload.i), !noalias !1218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1229
  %i.z = load i64, ptr %i.c, align 8, !range !7, !noalias !1229, !noundef !6
  %i.aa = icmp eq i64 %i.z, -1
  br i1 %i.aa, label %._crit_edge.i, label %bb.i, !prof !20

._crit_edge.i:                                    ; preds = %bb.g
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !1229
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %bb.e
  %i.ab = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.x, %bb.e ]
  %i.ac = call noundef nonnull align 8 ptr @_RINvMs0_NtCs2xcxdQoJA8F_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECs1hTjP0dFAwJ_12fontc_crater(ptr noalias noundef nonnull align 8 %i.ab, ptr noundef nonnull readonly align 8 dereferenceable(56) %1), !noalias !1218
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !1218, !noalias !1219
  store i64 -1, ptr %0, align 8, !alias.scope !1218, !noalias !1219
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1219
  br label %bb.j
end_hunk_0
begin_hunk_1_@_RINvYINtNtCs2xcxdQoJA8F_10serde_json2de6MapKeyNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCs2S1C3MmPSzG_5serde7private2de7content14ContentVisitorECs1hTjP0dFAwJ_12fontc_crater:bb.a
  call void @_RINvXsj_NtNtNtCs2S1C3MmPSzG_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs7N5MyPZKytm_10serde_core2de7Visitor9visit_strNtNtCs2xcxdQoJA8F_10serde_json5error5ErrorECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %.sroa.4.0.copyload.i)
  br label %_RINvXsh_NtCs2xcxdQoJA8F_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCs2S1C3MmPSzG_5serde7private2de7content14ContentVisitorECs1hTjP0dFAwJ_12fontc_crater.exit

bb.e:                                             ; preds = %bb.c
  store i8 13, ptr %0, align 8, !alias.scope !4193, !noalias !4194
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !4193, !noalias !4194
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !4193, !noalias !4194
  br label %_RINvXsh_NtCs2xcxdQoJA8F_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCs2S1C3MmPSzG_5serde7private2de7content14ContentVisitorECs1hTjP0dFAwJ_12fontc_crater.exit

_RINvXsh_NtCs2xcxdQoJA8F_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCs2S1C3MmPSzG_5serde7private2de7content14ContentVisitorECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4192
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCs2xcxdQoJA8F_10serde_json2de6MapKeyNtNtB8_4read9SliceReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCs2S1C3MmPSzG_5serde7private2de7content14ContentVisitorECs1hTjP0dFAwJ_12fontc_crater(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(56) initializes((16, 24)) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4204)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !4205, !noalias !4203, !noundef !6
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8, !alias.scope !4205, !noalias !4203
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.f, align 8, !alias.scope !4204, !noalias !4203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4206
  call void @_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !4203
  %i.g = load i64, ptr %i.a, align 8, !range !25, !noalias !4206, !noundef !6 ; 2 uses
  %i.h = icmp eq i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !4206 ; 4 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8, !alias.scope !4203, !noalias !4204
  store i8 -1, ptr %0, align 8, !alias.scope !4203, !noalias !4204
  br label %_RINvXsh_NtCs2xcxdQoJA8F_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCs2S1C3MmPSzG_5serde7private2de7content14ContentVisitorECs1hTjP0dFAwJ_12fontc_crater.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4206 ; 2 uses
  %i.l = trunc nuw i64 %i.g to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_RINvXsj_NtNtNtCs2S1C3MmPSzG_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs7N5MyPZKytm_10serde_core2de7Visitor9visit_strNtNtCs2xcxdQoJA8F_10serde_json5error5ErrorECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %.sroa.4.0.copyload.i)
  br label %_RINvXsh_NtCs2xcxdQoJA8F_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCs2S1C3MmPSzG_5serde7private2de7content14ContentVisitorECs1hTjP0dFAwJ_12fontc_crater.exit

bb.e:                                             ; preds = %bb.c
  store i8 13, ptr %0, align 8, !alias.scope !4207, !noalias !4208
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !4207, !noalias !4208
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !4207, !noalias !4208
  br label %_RINvXsh_NtCs2xcxdQoJA8F_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCs2S1C3MmPSzG_5serde7private2de7content14ContentVisitorECs1hTjP0dFAwJ_12fontc_crater.exit

_RINvXsh_NtCs2xcxdQoJA8F_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCs2S1C3MmPSzG_5serde7private2de7content14ContentVisitorECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4206
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvYINtNtCs2xcxdQoJA8F_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECs1hTjP0dFAwJ_12fontc_crater(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4339)
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 40 ; 30 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !4340, !noalias !4341, !noundef !6 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !4342, !noalias !4343 ; 2 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !4340, !noalias !4341, !nonnull !6, !noundef !6 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4345)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !4346, !noundef !6
  switch i8 %i.y, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.e
  ], !prof !23

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !4347, !noalias !4343
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4338
  store i64 3, ptr %i.o, align 8, !noalias !4338
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4338
  br label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4338
  store i64 6, ptr %i.p, align 8, !noalias !4338
  %i.ab = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4338
  br label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.e:                                             ; preds = %bb.b
  %i.ac = add i64 %i.w, 1                         ; 3 uses
  store i64 %i.ac, ptr %i.q, align 8, !alias.scope !4348
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4352)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 5 uses
  store i64 0, ptr %i.ad, align 8, !alias.scope !4353
  %i.ae = icmp ult i64 %i.ac, %i.s
  br i1 %i.ae, label %.lr.ph.i.lr.ph.i.i.i.i.i, label %.loopexit130.i.i.i.i.i

.lr.ph.i.lr.ph.i.i.i.i.i:                         ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bf, %.lr.ph.i.lr.ph.i.i.i.i.i
  %i.ag = phi ptr [ %i.v, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.eh, %bb.bf ] ; 11 uses
  %.promoted.i179.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i, %bb.bf ]
  %i.ah = phi i64 [ %i.s, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.eg, %bb.bf ] ; 7 uses
  %.sroa.7.0178.i.i.i.i.i = phi i8 [ undef, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.sroa.027.2163.i.i.i.i.i, %bb.bf ] ; 2 uses
  %.sroa.039.0177.i.i.i.i.i = phi i1 [ false, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ true, %bb.bf ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4354)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %i.ai = phi i64 [ %.promoted.i179.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.al, %bb.g ] ; 17 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !4355, !noundef !6 ; 3 uses
  switch i8 %i.ak, label %bb.h [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 110, label %bb.i
    i8 116, label %bb.o
    i8 102, label %bb.u
    i8 45, label %bb.ac
    i8 34, label %bb.ad
    i8 91, label %bb.ae
    i8 123, label %bb.ae
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.al = add i64 %i.ai, 1                        ; 3 uses
  store i64 %i.al, ptr %i.q, align 8, !alias.scope !4356, !noalias !4357
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.al, %i.ah
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i, label %bb.f

.loopexit130.i.i.i.i.i:                           ; preds = %bb.bf, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4353
  store i64 5, ptr %i.n, align 8, !noalias !4353
  %i.am = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4353
  br label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.h:                                             ; preds = %bb.f
  %i.an = add i8 %i.ak, -48
  %or.cond.i.i.i.i.i = icmp ult i8 %i.an, 10
  br i1 %or.cond.i.i.i.i.i, label %bb.ai, label %bb.ah, !prof !19

bb.i:                                             ; preds = %bb.f
  %i.ao = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ao, ptr %i.q, align 8, !alias.scope !4358
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4359)
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ao) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4361)
  %exitcond.not.i53.not.i.i.i.i.i = icmp ult i64 %i.ao, %i.ah
  br i1 %exitcond.not.i53.not.i.i.i.i.i, label %bb.j, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !4362, !noundef !6
  %i.ar = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.ar, ptr %i.q, align 8, !alias.scope !4363, !noalias !4364
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aq, 117
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %.loopexit246.i.i.i.i.i, !prof !27

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4366)
  %exitcond.not.i53.1.i.i.i.i.i = icmp eq i64 %i.ar, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i53.1.i.i.i.i.i, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !4367, !noundef !6
  %i.au = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.au, ptr %i.q, align 8, !alias.scope !4368, !noalias !4364
  %.not.i.1.i.i.i.i.i = icmp eq i8 %i.at, 108
  br i1 %.not.i.1.i.i.i.i.i, label %bb.m, label %.loopexit246.i.i.i.i.i, !prof !27

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4370)
  %exitcond.not.i53.2.i.i.i.i.i = icmp eq i64 %i.au, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i53.2.i.i.i.i.i, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !4371, !noundef !6
  %i.ax = add i64 %i.ai, 4
  store i64 %i.ax, ptr %i.q, align 8, !alias.scope !4372, !noalias !4364
  %.not.i.2.i.i.i.i.i = icmp eq i8 %i.aw, 108
  br i1 %.not.i.2.i.i.i.i.i, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.i.i.i.i.i, label %.loopexit246.i.i.i.i.i, !prof !27

_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4373
  store i64 5, ptr %i.f, align 8, !noalias !4373
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !4374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4373
  br label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit

.loopexit246.i.i.i.i.i:                           ; preds = %bb.n, %bb.l, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4373
  store i64 9, ptr %i.e, align 8, !noalias !4373
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !4374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4373
  br label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.o:                                             ; preds = %bb.f
  %i.ba = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ba, ptr %i.q, align 8, !alias.scope !4375
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4376)
  %umax.i56.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ba) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4378)
  %exitcond.not.i58.not.i.i.i.i.i = icmp ult i64 %i.ba, %i.ah
  br i1 %exitcond.not.i58.not.i.i.i.i.i, label %bb.p, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !4379, !noundef !6
  %i.bd = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bd, ptr %i.q, align 8, !alias.scope !4380, !noalias !4381
  %.not.i59.i.i.i.i.i = icmp eq i8 %i.bc, 114
  br i1 %.not.i59.i.i.i.i.i, label %bb.q, label %.loopexit239.i.i.i.i.i, !prof !27

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4383)
  %exitcond.not.i58.1.i.i.i.i.i = icmp eq i64 %i.bd, %umax.i56.i.i.i.i.i
  br i1 %exitcond.not.i58.1.i.i.i.i.i, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !4384, !noundef !6
  %i.bg = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bg, ptr %i.q, align 8, !alias.scope !4385, !noalias !4381
  %.not.i59.1.i.i.i.i.i = icmp eq i8 %i.bf, 117
  br i1 %.not.i59.1.i.i.i.i.i, label %bb.s, label %.loopexit239.i.i.i.i.i, !prof !27

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4387)
  %exitcond.not.i58.2.i.i.i.i.i = icmp eq i64 %i.bg, %umax.i56.i.i.i.i.i
  br i1 %exitcond.not.i58.2.i.i.i.i.i, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !4388, !noundef !6
  %i.bj = add i64 %i.ai, 4
  store i64 %i.bj, ptr %i.q, align 8, !alias.scope !4389, !noalias !4381
  %.not.i59.2.i.i.i.i.i = icmp eq i8 %i.bi, 101
  br i1 %.not.i59.2.i.i.i.i.i, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.i.i.i.i.i, label %.loopexit239.i.i.i.i.i, !prof !27

_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i: ; preds = %bb.s, %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4390
  store i64 5, ptr %i.d, align 8, !noalias !4390
  %i.bk = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !4391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4390
  br label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit

.loopexit239.i.i.i.i.i:                           ; preds = %bb.t, %bb.r, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4390
  store i64 9, ptr %i.c, align 8, !noalias !4390
  %i.bl = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !4391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4390
  br label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.u:                                             ; preds = %bb.f
  %i.bm = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.bm, ptr %i.q, align 8, !alias.scope !4392
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4393)
  %umax.i65.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.bm) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4395)
  %exitcond.not.i67.not.i.i.i.i.i = icmp ult i64 %i.bm, %i.ah
  br i1 %exitcond.not.i67.not.i.i.i.i.i, label %bb.v, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !4396, !noundef !6
  %i.bp = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bp, ptr %i.q, align 8, !alias.scope !4397, !noalias !4398
  %.not.i68.i.i.i.i.i = icmp eq i8 %i.bo, 97
  br i1 %.not.i68.i.i.i.i.i, label %bb.w, label %.loopexit232.i.i.i.i.i, !prof !27

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4400)
  %exitcond.not.i67.1.i.i.i.i.i = icmp eq i64 %i.bp, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !4401, !noundef !6
  %i.bs = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bs, ptr %i.q, align 8, !alias.scope !4402, !noalias !4398
  %.not.i68.1.i.i.i.i.i = icmp eq i8 %i.br, 108
  br i1 %.not.i68.1.i.i.i.i.i, label %bb.y, label %.loopexit232.i.i.i.i.i, !prof !27

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4404)
  %exitcond.not.i67.2.i.i.i.i.i = icmp eq i64 %i.bs, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !4405, !noundef !6
  %i.bv = add i64 %i.ai, 4                        ; 3 uses
  store i64 %i.bv, ptr %i.q, align 8, !alias.scope !4406, !noalias !4398
  %.not.i68.2.i.i.i.i.i = icmp eq i8 %i.bu, 115
  br i1 %.not.i68.2.i.i.i.i.i, label %bb.aa, label %.loopexit232.i.i.i.i.i, !prof !27

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4408)
  %exitcond.not.i67.3.i.i.i.i.i = icmp eq i64 %i.bv, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.3.i.i.i.i.i, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !4409, !noundef !6
  %i.by = add i64 %i.ai, 5
  store i64 %i.by, ptr %i.q, align 8, !alias.scope !4410, !noalias !4398
  %.not.i68.3.i.i.i.i.i = icmp eq i8 %i.bx, 101
  br i1 %.not.i68.3.i.i.i.i.i, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.i.i.i.i.i, label %.loopexit232.i.i.i.i.i, !prof !27

_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i: ; preds = %bb.aa, %bb.y, %bb.w, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4411
  store i64 5, ptr %i.b, align 8, !noalias !4411
  %i.bz = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !4412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4411
  br label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit

.loopexit232.i.i.i.i.i:                           ; preds = %bb.ab, %bb.z, %bb.x, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4411
  store i64 9, ptr %i.a, align 8, !noalias !4411
  %i.ca = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !4412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4411
  br label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.ac:                                            ; preds = %bb.f
  %i.cb = add i64 %i.ai, 1
  store i64 %i.cb, ptr %i.q, align 8, !alias.scope !4413
  %i.cc = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) ; 2 uses
  %.not45.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not45.i.i.i.i.i, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.i.i.i.i.i, label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.ad:                                            ; preds = %bb.f
  %i.cd = add i64 %i.ai, 1
  store i64 %i.cd, ptr %i.q, align 8, !alias.scope !4414
  %i.ce = tail call noundef align 8 ptr @_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read10ignore_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.i.i.i.i.i, label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.ae:                                            ; preds = %bb.f, %bb.f
  tail call void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VechE14extend_trustedINtNtCsf3Ta7LF998c_4core6option8IntoIterhEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, i1 noundef zeroext %.sroa.039.0177.i.i.i.i.i, i8 %.sroa.7.0178.i.i.i.i.i)
  %i.cf = load i64, ptr %i.q, align 8, !alias.scope !4415, !noundef !6
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.q, align 8, !alias.scope !4415
  br label %bb.ag

_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.i.i.i.i.i: ; preds = %bb.ai, %bb.ad, %bb.ac, %bb.ab, %bb.t, %bb.n
  br i1 %.sroa.039.0177.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.i.i.i.i.i
  %i.ch = load i64, ptr %i.ad, align 8, !alias.scope !4353, !noundef !6 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit, label %bb.aj

bb.ag:                                            ; preds = %bb.aj, %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.i.i.i.i.i, %bb.ae
  %.sroa.027.0.i.i.i.i.i = phi i8 [ %i.ak, %bb.ae ], [ %i.cv, %bb.aj ], [ %.sroa.7.0178.i.i.i.i.i, %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.042.0.i.i.i.i.i = phi i1 [ false, %bb.ae ], [ true, %bb.aj ], [ true, %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.i.i.i.i.i ]
  %i.cj = load i64, ptr %i.r, align 8, !alias.scope !4416, !noalias !4417, !noundef !6 ; 6 uses
  %.promoted.i73162.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !4418, !noalias !4419 ; 2 uses
  %i.ck = icmp ult i64 %.promoted.i73162.i.i.i.i.i, %i.cj
  br i1 %i.ck, label %.lr.ph.i75.lr.ph.i.i.i.i.i, label %.loopexit123.i.i.i.i.i

.lr.ph.i75.lr.ph.i.i.i.i.i:                       ; preds = %bb.ag
  %.promoted.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !4353
  %i.cl = load ptr, ptr %i.u, align 8, !alias.scope !4416, !noalias !4417, !nonnull !6, !noundef !6 ; 3 uses
  %i.cm = load i64, ptr %.0.val, align 8, !range !31, !alias.scope !4353
  %i.cn = load ptr, ptr %i.af, align 8, !alias.scope !4353, !nonnull !6
  br label %.lr.ph.i75.i.i.i.i.i

bb.ah:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4353
  store i64 10, ptr %i.m, align 8, !noalias !4353
  %i.co = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4353
  br label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.ai:                                            ; preds = %bb.h
  %i.cp = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) ; 2 uses
  %.not49.i.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not49.i.i.i.i.i, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.i.i.i.i.i, label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.aj:                                            ; preds = %bb.af
  %i.cq = add i64 %i.ch, -1                       ; 3 uses
  store i64 %i.cq, ptr %i.ad, align 8, !alias.scope !4353
  %i.cr = load i64, ptr %.0.val, align 8, !range !31, !alias.scope !4353, !noundef !6
  %i.cs = icmp ult i64 %i.cq, %i.cr
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = load ptr, ptr %i.af, align 8, !alias.scope !4353, !nonnull !6, !noundef !6
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cq
  %i.cv = load i8, ptr %i.cu, align 1, !noundef !6
  br label %bb.ag

.lr.ph.i75.i.i.i.i.i:                             ; preds = %bb.au, %.lr.ph.i75.lr.ph.i.i.i.i.i
  %.promoted.i73170.i.i.i.i.i = phi i64 [ %.promoted.i73162.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.dg, %bb.au ]
  %.sroa.042.2164.i.i.i.i.i = phi i1 [ %.sroa.042.0.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ true, %bb.au ] ; 2 uses
  %.sroa.027.2163.i.i.i.i.i = phi i8 [ %.sroa.027.0.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.dl, %bb.au ] ; 6 uses
  %i.cw = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.di, %bb.au ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4420)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %.lr.ph.i75.i.i.i.i.i
  %i.cx = phi i64 [ %.promoted.i73170.i.i.i.i.i, %.lr.ph.i75.i.i.i.i.i ], [ %i.da, %bb.al ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4422)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !noalias !4423, !noundef !6
  switch i8 %i.cz, label %.loopexit.i.i.i.i.i [
    i8 32, label %bb.al
    i8 10, label %bb.al
    i8 9, label %bb.al
    i8 13, label %bb.al
    i8 44, label %bb.ap
    i8 93, label %bb.aq
    i8 125, label %bb.ar
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak, %bb.ak, %bb.ak
  %i.da = add i64 %i.cx, 1                        ; 3 uses
  store i64 %i.da, ptr %i.q, align 8, !alias.scope !4424, !noalias !4419
  %exitcond.not.i76.i.i.i.i.i = icmp eq i64 %i.da, %i.cj
  br i1 %exitcond.not.i76.i.i.i.i.i, label %.loopexit123.i.i.i.i.i, label %bb.ak

.loopexit123.i.i.i.i.i:                           ; preds = %bb.ag, %bb.au, %bb.al
  %.sroa.027.2159.i.i.i.i.i = phi i8 [ %i.dl, %bb.au ], [ %.sroa.027.2163.i.i.i.i.i, %bb.al ], [ %.sroa.027.0.i.i.i.i.i, %bb.ag ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4353
  switch i8 %.sroa.027.2159.i.i.i.i.i, label %bb.am [
    i8 91, label %bb.ao
    i8 123, label %bb.an
  ]

bb.am:                                            ; preds = %.loopexit123.i.i.i.i.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #18
  unreachable

bb.an:                                            ; preds = %.loopexit123.i.i.i.i.i
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.loopexit123.i.i.i.i.i
  %storemerge.i.i.i.i.i = phi i64 [ 3, %bb.an ], [ 2, %.loopexit123.i.i.i.i.i ]
  store i64 %storemerge.i.i.i.i.i, ptr %i.k, align 8, !noalias !4353
  %i.db = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4353
  br label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit

.loopexit.i.i.i.i.i:                              ; preds = %bb.ar, %bb.aq, %bb.ak
  br i1 %.sroa.042.2164.i.i.i.i.i, label %bb.av, label %.critedge.i.i.i.i.i, !prof !20

bb.ap:                                            ; preds = %bb.ak
  br i1 %.sroa.042.2164.i.i.i.i.i, label %bb.as, label %.critedge.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ak
  %i.dc = icmp eq i8 %.sroa.027.2163.i.i.i.i.i, 91
  br i1 %i.dc, label %bb.at, label %.loopexit.i.i.i.i.i

bb.ar:                                            ; preds = %bb.ak
  %i.dd = icmp eq i8 %.sroa.027.2163.i.i.i.i.i, 123
end_hunk_1
begin_hunk_2_@_RINvYINtNtCs2xcxdQoJA8F_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECs1hTjP0dFAwJ_12fontc_crater:bb.a
  %i.dy = load ptr, ptr %i.u, align 8, !alias.scope !4433, !noalias !4434, !nonnull !6, !noundef !6 ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bc, %.lr.ph.i89.i.i.i.i.i
  %i.dz = phi i64 [ %.promoted.i87.i.i.i.i.i, %.lr.ph.i89.i.i.i.i.i ], [ %i.ec, %bb.bc ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4438)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !noalias !4439, !noundef !6
  switch i8 %i.eb, label %bb.be [
    i8 32, label %bb.bc
    i8 10, label %bb.bc
    i8 9, label %bb.bc
    i8 13, label %bb.bc
    i8 58, label %bb.bd
  ], !prof !23

bb.bc:                                            ; preds = %bb.bb, %bb.bb, %bb.bb, %bb.bb
  %i.ec = add i64 %i.dz, 1                        ; 3 uses
  store i64 %i.ec, ptr %i.q, align 8, !alias.scope !4440, !noalias !4436
  %exitcond.not.i90.i.i.i.i.i = icmp eq i64 %i.ec, %i.dw
  br i1 %exitcond.not.i90.i.i.i.i.i, label %.loopexit124.i.i.i.i.i, label %bb.bb

.loopexit124.i.i.i.i.i:                           ; preds = %bb.ba, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4353
  store i64 3, ptr %i.g, align 8, !noalias !4353
  %i.ed = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4353
  br label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.bd:                                            ; preds = %bb.bb
  %i.ee = add i64 %i.dz, 1                        ; 2 uses
  store i64 %i.ee, ptr %i.q, align 8, !alias.scope !4441
  br label %bb.bf

bb.be:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4353
  store i64 6, ptr %i.h, align 8, !noalias !4353
  %i.ef = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4353
  br label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.bf:                                            ; preds = %bb.bd, %.critedge.i.i.i.i.i
  %.promoted.i.i.i.i.i.i = phi i64 [ %.promoted.i80.i.i.i.i.i, %.critedge.i.i.i.i.i ], [ %i.ee, %bb.bd ] ; 2 uses
  %i.eg = phi i64 [ %i.cj, %.critedge.i.i.i.i.i ], [ %i.dw, %bb.bd ] ; 2 uses
  %i.eh = phi ptr [ %i.cl, %.critedge.i.i.i.i.i ], [ %i.dy, %bb.bd ]
  %i.ei = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.eg
  br i1 %i.ei, label %.lr.ph.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i

bb.bg:                                            ; preds = %bb.av
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #18
  unreachable

bb.bh:                                            ; preds = %bb.av
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.av
  %storemerge51.i.i.i.i.i = phi i64 [ 8, %bb.bh ], [ 7, %bb.av ]
  store i64 %storemerge51.i.i.i.i.i, ptr %i.l, align 8, !noalias !4353
  %i.ej = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4353
  br label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit

_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.ac, %bb.ad, %bb.af, %bb.ai, %bb.ay, %bb.at, %.loopexit.i.i, %bb.d, %.loopexit130.i.i.i.i.i, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i, %.loopexit246.i.i.i.i.i, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i, %.loopexit239.i.i.i.i.i, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i, %.loopexit232.i.i.i.i.i, %bb.ah, %bb.ao, %.loopexit125.i.i.i.i.i, %bb.az, %.loopexit124.i.i.i.i.i, %bb.be, %bb.bi
  %.sroa.0.0.i = phi ptr [ null, %bb.at ], [ %i.ca, %.loopexit232.i.i.i.i.i ], [ %i.am, %.loopexit130.i.i.i.i.i ], [ %i.ej, %bb.bi ], [ %i.ay, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i ], [ %i.ed, %.loopexit124.i.i.i.i.i ], [ %i.ab, %bb.d ], [ %i.ds, %.loopexit125.i.i.i.i.i ], [ %i.db, %bb.ao ], [ %i.bl, %.loopexit239.i.i.i.i.i ], [ %i.az, %.loopexit246.i.i.i.i.i ], [ %i.ef, %bb.be ], [ %i.co, %bb.ah ], [ %i.bz, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i ], [ %i.bk, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i ], [ %i.dv, %bb.az ], [ %i.aa, %.loopexit.i.i ], [ %i.cc, %bb.ac ], [ %i.cp, %bb.ai ], [ %i.du, %bb.ay ], [ %i.ce, %bb.ad ], [ null, %bb.af ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvYINtNtCs2xcxdQoJA8F_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECs1hTjP0dFAwJ_12fontc_crater(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4541)
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 40 ; 30 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !4542, !noalias !4543, !noundef !6 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !4544, !noalias !4545 ; 2 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !4542, !noalias !4543, !nonnull !6, !noundef !6 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4546)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !4547, !noundef !6
  switch i8 %i.y, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.e
  ], !prof !23

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !4548, !noalias !4545
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4540
  store i64 3, ptr %i.o, align 8, !noalias !4540
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4540
  br label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4540
  store i64 6, ptr %i.p, align 8, !noalias !4540
  %i.ab = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4540
  br label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.e:                                             ; preds = %bb.b
  %i.ac = add i64 %i.w, 1                         ; 3 uses
  store i64 %i.ac, ptr %i.q, align 8, !alias.scope !4549
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4553)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 5 uses
  store i64 0, ptr %i.ad, align 8, !alias.scope !4554
  %i.ae = icmp ult i64 %i.ac, %i.s
  br i1 %i.ae, label %.lr.ph.i.lr.ph.i.i.i.i.i, label %.loopexit130.i.i.i.i.i

.lr.ph.i.lr.ph.i.i.i.i.i:                         ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bf, %.lr.ph.i.lr.ph.i.i.i.i.i
  %i.ag = phi ptr [ %i.v, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.eh, %bb.bf ] ; 11 uses
  %.promoted.i179.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i, %bb.bf ]
  %i.ah = phi i64 [ %i.s, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.eg, %bb.bf ] ; 7 uses
  %.sroa.7.0178.i.i.i.i.i = phi i8 [ undef, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.sroa.027.2163.i.i.i.i.i, %bb.bf ] ; 2 uses
  %.sroa.039.0177.i.i.i.i.i = phi i1 [ false, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ true, %bb.bf ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4555)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %i.ai = phi i64 [ %.promoted.i179.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.al, %bb.g ] ; 17 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !4556, !noundef !6 ; 3 uses
  switch i8 %i.ak, label %bb.h [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 110, label %bb.i
    i8 116, label %bb.o
    i8 102, label %bb.u
    i8 45, label %bb.ac
    i8 34, label %bb.ad
    i8 91, label %bb.ae
    i8 123, label %bb.ae
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.al = add i64 %i.ai, 1                        ; 3 uses
  store i64 %i.al, ptr %i.q, align 8, !alias.scope !4557, !noalias !4558
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.al, %i.ah
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i, label %bb.f

.loopexit130.i.i.i.i.i:                           ; preds = %bb.bf, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4554
  store i64 5, ptr %i.n, align 8, !noalias !4554
  %i.am = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4554
  br label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.h:                                             ; preds = %bb.f
  %i.an = add i8 %i.ak, -48
  %or.cond.i.i.i.i.i = icmp ult i8 %i.an, 10
  br i1 %or.cond.i.i.i.i.i, label %bb.ai, label %bb.ah, !prof !19

bb.i:                                             ; preds = %bb.f
  %i.ao = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ao, ptr %i.q, align 8, !alias.scope !4559
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4560)
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ao) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4561)
  %exitcond.not.i53.not.i.i.i.i.i = icmp ult i64 %i.ao, %i.ah
  br i1 %exitcond.not.i53.not.i.i.i.i.i, label %bb.j, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !4562, !noundef !6
  %i.ar = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.ar, ptr %i.q, align 8, !alias.scope !4563, !noalias !4564
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aq, 117
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %.loopexit246.i.i.i.i.i, !prof !27

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4565)
  %exitcond.not.i53.1.i.i.i.i.i = icmp eq i64 %i.ar, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i53.1.i.i.i.i.i, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !4566, !noundef !6
  %i.au = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.au, ptr %i.q, align 8, !alias.scope !4567, !noalias !4564
  %.not.i.1.i.i.i.i.i = icmp eq i8 %i.at, 108
  br i1 %.not.i.1.i.i.i.i.i, label %bb.m, label %.loopexit246.i.i.i.i.i, !prof !27

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4568)
  %exitcond.not.i53.2.i.i.i.i.i = icmp eq i64 %i.au, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i53.2.i.i.i.i.i, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !4569, !noundef !6
  %i.ax = add i64 %i.ai, 4
  store i64 %i.ax, ptr %i.q, align 8, !alias.scope !4570, !noalias !4564
  %.not.i.2.i.i.i.i.i = icmp eq i8 %i.aw, 108
  br i1 %.not.i.2.i.i.i.i.i, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.i.i.i.i.i, label %.loopexit246.i.i.i.i.i, !prof !27

_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4571
  store i64 5, ptr %i.f, align 8, !noalias !4571
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !4572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4571
  br label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit

.loopexit246.i.i.i.i.i:                           ; preds = %bb.n, %bb.l, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4571
  store i64 9, ptr %i.e, align 8, !noalias !4571
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !4572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4571
  br label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.o:                                             ; preds = %bb.f
  %i.ba = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ba, ptr %i.q, align 8, !alias.scope !4573
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4574)
  %umax.i56.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ba) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4575)
  %exitcond.not.i58.not.i.i.i.i.i = icmp ult i64 %i.ba, %i.ah
  br i1 %exitcond.not.i58.not.i.i.i.i.i, label %bb.p, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !4576, !noundef !6
  %i.bd = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bd, ptr %i.q, align 8, !alias.scope !4577, !noalias !4578
  %.not.i59.i.i.i.i.i = icmp eq i8 %i.bc, 114
  br i1 %.not.i59.i.i.i.i.i, label %bb.q, label %.loopexit239.i.i.i.i.i, !prof !27

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4579)
  %exitcond.not.i58.1.i.i.i.i.i = icmp eq i64 %i.bd, %umax.i56.i.i.i.i.i
  br i1 %exitcond.not.i58.1.i.i.i.i.i, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !4580, !noundef !6
  %i.bg = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bg, ptr %i.q, align 8, !alias.scope !4581, !noalias !4578
  %.not.i59.1.i.i.i.i.i = icmp eq i8 %i.bf, 117
  br i1 %.not.i59.1.i.i.i.i.i, label %bb.s, label %.loopexit239.i.i.i.i.i, !prof !27

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4582)
  %exitcond.not.i58.2.i.i.i.i.i = icmp eq i64 %i.bg, %umax.i56.i.i.i.i.i
  br i1 %exitcond.not.i58.2.i.i.i.i.i, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !4583, !noundef !6
  %i.bj = add i64 %i.ai, 4
  store i64 %i.bj, ptr %i.q, align 8, !alias.scope !4584, !noalias !4578
  %.not.i59.2.i.i.i.i.i = icmp eq i8 %i.bi, 101
  br i1 %.not.i59.2.i.i.i.i.i, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.i.i.i.i.i, label %.loopexit239.i.i.i.i.i, !prof !27

_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i: ; preds = %bb.s, %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4585
  store i64 5, ptr %i.d, align 8, !noalias !4585
  %i.bk = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !4586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4585
  br label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit

.loopexit239.i.i.i.i.i:                           ; preds = %bb.t, %bb.r, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4585
  store i64 9, ptr %i.c, align 8, !noalias !4585
  %i.bl = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !4586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4585
  br label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.u:                                             ; preds = %bb.f
  %i.bm = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.bm, ptr %i.q, align 8, !alias.scope !4587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4588)
  %umax.i65.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.bm) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4589)
  %exitcond.not.i67.not.i.i.i.i.i = icmp ult i64 %i.bm, %i.ah
  br i1 %exitcond.not.i67.not.i.i.i.i.i, label %bb.v, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !4590, !noundef !6
  %i.bp = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bp, ptr %i.q, align 8, !alias.scope !4591, !noalias !4592
  %.not.i68.i.i.i.i.i = icmp eq i8 %i.bo, 97
  br i1 %.not.i68.i.i.i.i.i, label %bb.w, label %.loopexit232.i.i.i.i.i, !prof !27

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4593)
  %exitcond.not.i67.1.i.i.i.i.i = icmp eq i64 %i.bp, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !4594, !noundef !6
  %i.bs = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bs, ptr %i.q, align 8, !alias.scope !4595, !noalias !4592
  %.not.i68.1.i.i.i.i.i = icmp eq i8 %i.br, 108
  br i1 %.not.i68.1.i.i.i.i.i, label %bb.y, label %.loopexit232.i.i.i.i.i, !prof !27

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4596)
  %exitcond.not.i67.2.i.i.i.i.i = icmp eq i64 %i.bs, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !4597, !noundef !6
  %i.bv = add i64 %i.ai, 4                        ; 3 uses
  store i64 %i.bv, ptr %i.q, align 8, !alias.scope !4598, !noalias !4592
  %.not.i68.2.i.i.i.i.i = icmp eq i8 %i.bu, 115
  br i1 %.not.i68.2.i.i.i.i.i, label %bb.aa, label %.loopexit232.i.i.i.i.i, !prof !27

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4599)
  %exitcond.not.i67.3.i.i.i.i.i = icmp eq i64 %i.bv, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.3.i.i.i.i.i, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !4600, !noundef !6
  %i.by = add i64 %i.ai, 5
  store i64 %i.by, ptr %i.q, align 8, !alias.scope !4601, !noalias !4592
  %.not.i68.3.i.i.i.i.i = icmp eq i8 %i.bx, 101
  br i1 %.not.i68.3.i.i.i.i.i, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.i.i.i.i.i, label %.loopexit232.i.i.i.i.i, !prof !27

_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i: ; preds = %bb.aa, %bb.y, %bb.w, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4602
  store i64 5, ptr %i.b, align 8, !noalias !4602
  %i.bz = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !4603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4602
  br label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit

.loopexit232.i.i.i.i.i:                           ; preds = %bb.ab, %bb.z, %bb.x, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4602
  store i64 9, ptr %i.a, align 8, !noalias !4602
  %i.ca = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !4603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4602
  br label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.ac:                                            ; preds = %bb.f
  %i.cb = add i64 %i.ai, 1
  store i64 %i.cb, ptr %i.q, align 8, !alias.scope !4604
  %i.cc = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) ; 2 uses
  %.not45.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not45.i.i.i.i.i, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.i.i.i.i.i, label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.ad:                                            ; preds = %bb.f
  %i.cd = add i64 %i.ai, 1
  store i64 %i.cd, ptr %i.q, align 8, !alias.scope !4605
  %i.ce = tail call noundef align 8 ptr @_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read10ignore_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.i.i.i.i.i, label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.ae:                                            ; preds = %bb.f, %bb.f
  tail call void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VechE14extend_trustedINtNtCsf3Ta7LF998c_4core6option8IntoIterhEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, i1 noundef zeroext %.sroa.039.0177.i.i.i.i.i, i8 %.sroa.7.0178.i.i.i.i.i)
  %i.cf = load i64, ptr %i.q, align 8, !alias.scope !4606, !noundef !6
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.q, align 8, !alias.scope !4606
  br label %bb.ag

_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.i.i.i.i.i: ; preds = %bb.ai, %bb.ad, %bb.ac, %bb.ab, %bb.t, %bb.n
  br i1 %.sroa.039.0177.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.i.i.i.i.i
  %i.ch = load i64, ptr %i.ad, align 8, !alias.scope !4554, !noundef !6 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit, label %bb.aj

bb.ag:                                            ; preds = %bb.aj, %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.i.i.i.i.i, %bb.ae
  %.sroa.027.0.i.i.i.i.i = phi i8 [ %i.ak, %bb.ae ], [ %i.cv, %bb.aj ], [ %.sroa.7.0178.i.i.i.i.i, %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.042.0.i.i.i.i.i = phi i1 [ false, %bb.ae ], [ true, %bb.aj ], [ true, %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.i.i.i.i.i ]
  %i.cj = load i64, ptr %i.r, align 8, !alias.scope !4607, !noalias !4608, !noundef !6 ; 6 uses
  %.promoted.i73162.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !4609, !noalias !4610 ; 2 uses
  %i.ck = icmp ult i64 %.promoted.i73162.i.i.i.i.i, %i.cj
  br i1 %i.ck, label %.lr.ph.i75.lr.ph.i.i.i.i.i, label %.loopexit123.i.i.i.i.i

.lr.ph.i75.lr.ph.i.i.i.i.i:                       ; preds = %bb.ag
  %.promoted.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !4554
  %i.cl = load ptr, ptr %i.u, align 8, !alias.scope !4607, !noalias !4608, !nonnull !6, !noundef !6 ; 3 uses
  %i.cm = load i64, ptr %.0.val, align 8, !range !31, !alias.scope !4554
  %i.cn = load ptr, ptr %i.af, align 8, !alias.scope !4554, !nonnull !6
  br label %.lr.ph.i75.i.i.i.i.i

bb.ah:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4554
  store i64 10, ptr %i.m, align 8, !noalias !4554
  %i.co = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4554
  br label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.ai:                                            ; preds = %bb.h
  %i.cp = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) ; 2 uses
  %.not49.i.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not49.i.i.i.i.i, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.i.i.i.i.i, label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.aj:                                            ; preds = %bb.af
  %i.cq = add i64 %i.ch, -1                       ; 3 uses
  store i64 %i.cq, ptr %i.ad, align 8, !alias.scope !4554
  %i.cr = load i64, ptr %.0.val, align 8, !range !31, !alias.scope !4554, !noundef !6
  %i.cs = icmp ult i64 %i.cq, %i.cr
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = load ptr, ptr %i.af, align 8, !alias.scope !4554, !nonnull !6, !noundef !6
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cq
  %i.cv = load i8, ptr %i.cu, align 1, !noundef !6
  br label %bb.ag

.lr.ph.i75.i.i.i.i.i:                             ; preds = %bb.au, %.lr.ph.i75.lr.ph.i.i.i.i.i
  %.promoted.i73170.i.i.i.i.i = phi i64 [ %.promoted.i73162.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.dg, %bb.au ]
  %.sroa.042.2164.i.i.i.i.i = phi i1 [ %.sroa.042.0.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ true, %bb.au ] ; 2 uses
  %.sroa.027.2163.i.i.i.i.i = phi i8 [ %.sroa.027.0.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.dl, %bb.au ] ; 6 uses
  %i.cw = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.di, %bb.au ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4611)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %.lr.ph.i75.i.i.i.i.i
  %i.cx = phi i64 [ %.promoted.i73170.i.i.i.i.i, %.lr.ph.i75.i.i.i.i.i ], [ %i.da, %bb.al ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4612)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !noalias !4613, !noundef !6
  switch i8 %i.cz, label %.loopexit.i.i.i.i.i [
    i8 32, label %bb.al
    i8 10, label %bb.al
    i8 9, label %bb.al
    i8 13, label %bb.al
    i8 44, label %bb.ap
    i8 93, label %bb.aq
    i8 125, label %bb.ar
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak, %bb.ak, %bb.ak
  %i.da = add i64 %i.cx, 1                        ; 3 uses
  store i64 %i.da, ptr %i.q, align 8, !alias.scope !4614, !noalias !4610
  %exitcond.not.i76.i.i.i.i.i = icmp eq i64 %i.da, %i.cj
  br i1 %exitcond.not.i76.i.i.i.i.i, label %.loopexit123.i.i.i.i.i, label %bb.ak

.loopexit123.i.i.i.i.i:                           ; preds = %bb.ag, %bb.au, %bb.al
  %.sroa.027.2159.i.i.i.i.i = phi i8 [ %i.dl, %bb.au ], [ %.sroa.027.2163.i.i.i.i.i, %bb.al ], [ %.sroa.027.0.i.i.i.i.i, %bb.ag ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4554
  switch i8 %.sroa.027.2159.i.i.i.i.i, label %bb.am [
    i8 91, label %bb.ao
    i8 123, label %bb.an
  ]

bb.am:                                            ; preds = %.loopexit123.i.i.i.i.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #18
  unreachable

bb.an:                                            ; preds = %.loopexit123.i.i.i.i.i
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.loopexit123.i.i.i.i.i
  %storemerge.i.i.i.i.i = phi i64 [ 3, %bb.an ], [ 2, %.loopexit123.i.i.i.i.i ]
  store i64 %storemerge.i.i.i.i.i, ptr %i.k, align 8, !noalias !4554
  %i.db = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4554
  br label %_RINvXs9_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs7N5MyPZKytm_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1hTjP0dFAwJ_12fontc_crater.exit

.loopexit.i.i.i.i.i:                              ; preds = %bb.ar, %bb.aq, %bb.ak
  br i1 %.sroa.042.2164.i.i.i.i.i, label %bb.av, label %.critedge.i.i.i.i.i, !prof !20

bb.ap:                                            ; preds = %bb.ak
  br i1 %.sroa.042.2164.i.i.i.i.i, label %bb.as, label %.critedge.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ak
  %i.dc = icmp eq i8 %.sroa.027.2163.i.i.i.i.i, 91
  br i1 %i.dc, label %bb.at, label %.loopexit.i.i.i.i.i

bb.ar:                                            ; preds = %bb.ak
  %i.dd = icmp eq i8 %.sroa.027.2163.i.i.i.i.i, 123
  br i1 %i.dd, label %bb.at, label %.loopexit.i.i.i.i.i

bb.as:                                            ; preds = %bb.ap
  %i.de = add i64 %i.cx, 1                        ; 2 uses
  store i64 %i.de, ptr %i.q, align 8, !alias.scope !4615
end_hunk_2
begin_hunk_3_@_RINvYINtNtCs2xcxdQoJA8F_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9SeqAccess12next_elementfECs1hTjP0dFAwJ_12fontc_crater:bb.a
  br label %_RINvXs7_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9SeqAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDatafEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !14, !noalias !4642, !noundef !6
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4642
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.k, align 4, !alias.scope !4640, !noalias !4641
  store i32 0, ptr %0, align 8, !alias.scope !4640, !noalias !4641
  br label %_RINvXs7_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9SeqAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDatafEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4642
  %i.l = load ptr, ptr %1, align 8, !alias.scope !4641, !noalias !4640, !nonnull !6, !align !13, !noundef !6
  call fastcc void @_RINvXs3_NtCs7N5MyPZKytm_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDatafENtB6_15DeserializeSeed11deserializeQINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtB20_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef align 8 dereferenceable(56) %i.l) #17, !noalias !4642
  %i.m = load i32, ptr %i.a, align 8, !range !22, !noalias !4642, !noundef !6
  %i.n = trunc nuw i32 %i.m to i1
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !4642, !nonnull !6, !align !13, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8, !alias.scope !4640, !noalias !4641
  store i32 1, ptr %0, align 8, !alias.scope !4640, !noalias !4641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4642
  br label %_RINvXs7_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9SeqAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDatafEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.s = load float, ptr %i.r, align 4, !noalias !4642, !noundef !6
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.t, align 4, !alias.scope !4640, !noalias !4641
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.s, ptr %i.u, align 8, !alias.scope !4640, !noalias !4641
  store i32 0, ptr %0, align 8, !alias.scope !4640, !noalias !4641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4642
  br label %_RINvXs7_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9SeqAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDatafEECs1hTjP0dFAwJ_12fontc_crater.exit

_RINvXs7_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9SeqAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDatafEECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvYINtNtCs2xcxdQoJA8F_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9SeqAccess12next_elementmECs1hTjP0dFAwJ_12fontc_crater(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) initializes((0, 4)) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4647)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4648
  call fastcc void @_RINvNvXs7_NtCs2xcxdQoJA8F_10serde_json2deINtB8_9SeqAccesspENtNtCs7N5MyPZKytm_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !4646
  %i.c = load i8, ptr %i.b, align 8, !range !14, !noalias !4648, !noundef !6
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noalias !4648, !nonnull !6, !align !13, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8, !alias.scope !4646, !noalias !4647
  store i32 1, ptr %0, align 8, !alias.scope !4646, !noalias !4647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4648
  br label %_RINvXs7_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9SeqAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDatamEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !14, !noalias !4648, !noundef !6
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4648
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.k, align 4, !alias.scope !4646, !noalias !4647
  store i32 0, ptr %0, align 8, !alias.scope !4646, !noalias !4647
  br label %_RINvXs7_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9SeqAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDatamEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4648
  %i.l = load ptr, ptr %1, align 8, !alias.scope !4647, !noalias !4646, !nonnull !6, !align !13, !noundef !6
  call fastcc void @_RINvXs3_NtCs7N5MyPZKytm_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDatamENtB6_15DeserializeSeed11deserializeQINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtB20_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef align 8 dereferenceable(56) %i.l) #17, !noalias !4648
  %i.m = load i32, ptr %i.a, align 8, !range !22, !noalias !4648, !noundef !6
  %i.n = trunc nuw i32 %i.m to i1
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !4648, !nonnull !6, !align !13, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8, !alias.scope !4646, !noalias !4647
  store i32 1, ptr %0, align 8, !alias.scope !4646, !noalias !4647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4648
  br label %_RINvXs7_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9SeqAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDatamEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.s = load i32, ptr %i.r, align 4, !noalias !4648, !noundef !6
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.t, align 4, !alias.scope !4646, !noalias !4647
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.s, ptr %i.u, align 8, !alias.scope !4646, !noalias !4647
  store i32 0, ptr %0, align 8, !alias.scope !4646, !noalias !4647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4648
  br label %_RINvXs7_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9SeqAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDatamEECs1hTjP0dFAwJ_12fontc_crater.exit

_RINvXs7_NtCs2xcxdQoJA8F_10serde_json2deINtB6_9SeqAccessNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDatamEECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYQINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtB9_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCs2S1C3MmPSzG_5serde7private2de7content14ContentVisitorECs1hTjP0dFAwJ_12fontc_crater(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [40 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 29 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4734)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4735)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !4736, !noalias !4737, !noundef !6 ; 8 uses
  %.promoted.i.i = load i64, ptr %i.s, align 8, !alias.scope !4738, !noalias !4739 ; 2 uses
  %i.v = icmp ult i64 %.promoted.i.i, %i.u
  br i1 %i.v, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !4736, !noalias !4737, !nonnull !6, !noundef !6 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.y = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.ab, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4741)
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !4742, !noundef !6 ; 3 uses
  switch i8 %i.aa, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ab = add i64 %i.y, 1                         ; 3 uses
  store i64 %i.ab, ptr %i.s, align 8, !alias.scope !4743, !noalias !4739
  %exitcond.not.i.i = icmp eq i64 %i.ab, %i.u
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4744
  switch i8 %i.aa, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ad
    i8 123, label %bb.ae
  ]

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !4744
  store i64 5, ptr %i.r, align 8, !noalias !4744
  %i.ac = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r), !noalias !4733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !4744
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !4733, !noalias !4734
  store i8 -1, ptr %0, align 8, !alias.scope !4733, !noalias !4734
  br label %_RINvXs5_NtCs2xcxdQoJA8F_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCs2S1C3MmPSzG_5serde7private2de7content14ContentVisitorECs1hTjP0dFAwJ_12fontc_crater.exit

bb.d:                                             ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.ae = add i8 %i.aa, -48
  %or.cond8.i = icmp ult i8 %i.ae, 10
  br i1 %or.cond8.i, label %bb.bi, label %bb.bh, !prof !19

bb.e:                                             ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.af = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.af, ptr %i.s, align 8, !alias.scope !4745, !noalias !4733
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4746)
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.af) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4747)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4748)
  %exitcond.not.i40.not.i = icmp ult i64 %i.af, %i.u
  br i1 %exitcond.not.i40.not.i, label %bb.f, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !4749, !noundef !6
  %i.ai = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.ai, ptr %i.s, align 8, !alias.scope !4750, !noalias !4751
  %.not.i.i = icmp eq i8 %i.ah, 117
  br i1 %.not.i.i, label %bb.g, label %bb.k, !prof !27

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4753)
  %exitcond.not.i40.1.i = icmp eq i64 %i.ai, %umax.i.i
  br i1 %exitcond.not.i40.1.i, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !4754, !noundef !6
  %i.al = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.al, ptr %i.s, align 8, !alias.scope !4755, !noalias !4751
  %.not.i.1.i = icmp eq i8 %i.ak, 108
  br i1 %.not.i.1.i, label %bb.i, label %bb.k, !prof !27

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4757)
  %exitcond.not.i40.2.i = icmp eq i64 %i.al, %umax.i.i
  br i1 %exitcond.not.i40.2.i, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !noalias !4758, !noundef !6
  %i.ao = add i64 %i.y, 4
  store i64 %i.ao, ptr %i.s, align 8, !alias.scope !4759, !noalias !4751
  %.not.i.2.i = icmp eq i8 %i.an, 108
  br i1 %.not.i.2.i, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.i, label %bb.k, !prof !27

_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4760
  store i64 5, ptr %i.f, align 8, !noalias !4760
  %i.ap = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !4761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4760
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4760
  store i64 9, ptr %i.e, align 8, !noalias !4760
  %i.aq = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !4761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4760
  br label %bb.af

bb.l:                                             ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.ar = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.ar, ptr %i.s, align 8, !alias.scope !4762, !noalias !4733
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4763)
  %umax.i43.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.ar) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4765)
  %exitcond.not.i45.not.i = icmp ult i64 %i.ar, %i.u
  br i1 %exitcond.not.i45.not.i, label %bb.m, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49.i

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !4766, !noundef !6
  %i.au = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.au, ptr %i.s, align 8, !alias.scope !4767, !noalias !4768
  %.not.i46.i = icmp eq i8 %i.at, 114
  br i1 %.not.i46.i, label %bb.n, label %bb.r, !prof !27

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4770)
  %exitcond.not.i45.1.i = icmp eq i64 %i.au, %umax.i43.i
  br i1 %exitcond.not.i45.1.i, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !4771, !noundef !6
  %i.ax = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.ax, ptr %i.s, align 8, !alias.scope !4772, !noalias !4768
  %.not.i46.1.i = icmp eq i8 %i.aw, 117
  br i1 %.not.i46.1.i, label %bb.p, label %bb.r, !prof !27

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4774)
  %exitcond.not.i45.2.i = icmp eq i64 %i.ax, %umax.i43.i
  br i1 %exitcond.not.i45.2.i, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noalias !4775, !noundef !6
  %i.ba = add i64 %i.y, 4
  store i64 %i.ba, ptr %i.s, align 8, !alias.scope !4776, !noalias !4768
  %.not.i46.2.i = icmp eq i8 %i.az, 101
  br i1 %.not.i46.2.i, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit50.i, label %bb.r, !prof !27

_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49.i: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4777
  store i64 5, ptr %i.d, align 8, !noalias !4777
  %i.bb = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !4778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4777
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4777
  store i64 9, ptr %i.c, align 8, !noalias !4777
  %i.bc = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !4778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4777
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.bd = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.bd, ptr %i.s, align 8, !alias.scope !4779, !noalias !4733
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4780)
  %umax.i52.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.bd) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4782)
  %exitcond.not.i54.not.i = icmp ult i64 %i.bd, %i.u
  br i1 %exitcond.not.i54.not.i, label %bb.t, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !4783, !noundef !6
  %i.bg = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.bg, ptr %i.s, align 8, !alias.scope !4784, !noalias !4785
  %.not.i55.i = icmp eq i8 %i.bf, 97
  br i1 %.not.i55.i, label %bb.u, label %bb.aa, !prof !27

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4786)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4787)
  %exitcond.not.i54.1.i = icmp eq i64 %i.bg, %umax.i52.i
  br i1 %exitcond.not.i54.1.i, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !4788, !noundef !6
  %i.bj = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.bj, ptr %i.s, align 8, !alias.scope !4789, !noalias !4785
  %.not.i55.1.i = icmp eq i8 %i.bi, 108
  br i1 %.not.i55.1.i, label %bb.w, label %bb.aa, !prof !27

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4791)
  %exitcond.not.i54.2.i = icmp eq i64 %i.bj, %umax.i52.i
  br i1 %exitcond.not.i54.2.i, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !4792, !noundef !6
  %i.bm = add i64 %i.y, 4                         ; 3 uses
  store i64 %i.bm, ptr %i.s, align 8, !alias.scope !4793, !noalias !4785
  %.not.i55.2.i = icmp eq i8 %i.bl, 115
  br i1 %.not.i55.2.i, label %bb.y, label %bb.aa, !prof !27

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4795)
  %exitcond.not.i54.3.i = icmp eq i64 %i.bm, %umax.i52.i
  br i1 %exitcond.not.i54.3.i, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !4796, !noundef !6
  %i.bp = add i64 %i.y, 5
  store i64 %i.bp, ptr %i.s, align 8, !alias.scope !4797, !noalias !4785
  %.not.i55.3.i = icmp eq i8 %i.bo, 101
  br i1 %.not.i55.3.i, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit59.i, label %bb.aa, !prof !27

_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4798
  store i64 5, ptr %i.b, align 8, !noalias !4798
  %i.bq = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !4799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4798
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4798
  store i64 9, ptr %i.a, align 8, !noalias !4798
  %i.br = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !4799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4798
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.bs = add i64 %i.y, 1
  store i64 %i.bs, ptr %i.s, align 8, !alias.scope !4800, !noalias !4733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4744
  call fastcc void @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !4733
  %i.bt = load i64, ptr %i.p, align 8, !range !18, !noalias !4744, !noundef !6 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, -1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  br i1 %i.bu, label %bb.ak, label %switch.lookup

bb.ac:                                            ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.bw = add i64 %i.y, 1
  store i64 %i.bw, ptr %i.s, align 8, !alias.scope !4801, !noalias !4733
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.bx, align 8, !alias.scope !4734, !noalias !4733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4744
  call void @_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !4733
  %i.by = load i64, ptr %i.n, align 8, !range !25, !noalias !4744, !noundef !6 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 2
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !4744 ; 4 uses
  br i1 %i.bz, label %bb.al, label %bb.am

bb.ad:                                            ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cd = load i8, ptr %i.cc, align 8, !alias.scope !4734, !noalias !4733, !noundef !6
  %i.ce = add i8 %i.cd, -1                        ; 2 uses
  store i8 %i.ce, ptr %i.cc, align 8, !alias.scope !4734, !noalias !4733
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.aq, label %bb.ar, !prof !20

bb.ae:                                            ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ch = load i8, ptr %i.cg, align 8, !alias.scope !4734, !noalias !4733, !noundef !6
  %i.ci = add i8 %i.ch, -1                        ; 2 uses
  store i8 %i.ci, ptr %i.cg, align 8, !alias.scope !4734, !noalias !4733
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.az, label %bb.ba, !prof !20

bb.af:                                            ; preds = %bb.k, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i
  %.sroa.0.1.i.ph.i = phi ptr [ %i.ap, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i ], [ %i.aq, %bb.k ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i, ptr %i.ck, align 8, !alias.scope !4733, !noalias !4734
  store i8 -1, ptr %0, align 8, !alias.scope !4733, !noalias !4734
  br label %bb.ah

_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.i: ; preds = %bb.j
  store i8 18, ptr %i.q, align 8, !alias.scope !4802, !noalias !4744
  br label %.thread.i

bb.ag:                                            ; preds = %.thread90.i, %.thread87.i, %bb.ap
  %.pr.i.pr = load i8, ptr %i.q, align 8, !noalias !4744
  %i.cl = icmp eq i8 %.pr.i.pr, -1
  br i1 %i.cl, label %._crit_edge.i, label %.thread.i, !prof !32

._crit_edge.i:                                    ; preds = %bb.ag
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !4744
  br label %bb.bj

bb.ah:                                            ; preds = %bb.bk, %bb.az, %bb.aq, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4744
  br label %_RINvXs5_NtCs2xcxdQoJA8F_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCs2S1C3MmPSzG_5serde7private2de7content14ContentVisitorECs1hTjP0dFAwJ_12fontc_crater.exit

bb.ai:                                            ; preds = %bb.r, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49.i
  %.sroa.0.1.i48.ph.i = phi ptr [ %i.bb, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49.i ], [ %i.bc, %bb.r ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i48.ph.i, ptr %i.cm, align 8, !alias.scope !4733, !noalias !4734
  store i8 -1, ptr %0, align 8, !alias.scope !4733, !noalias !4734
  br label %bb.ah

_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit50.i: ; preds = %bb.q
  store i8 0, ptr %i.q, align 8, !alias.scope !4803, !noalias !4744
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !alias.scope !4803, !noalias !4744
  br label %.thread.i

bb.aj:                                            ; preds = %bb.aa, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i
  %.sroa.0.1.i57.ph.i = phi ptr [ %i.bq, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i ], [ %i.br, %bb.aa ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i57.ph.i, ptr %i.cn, align 8, !alias.scope !4733, !noalias !4734
  store i8 -1, ptr %0, align 8, !alias.scope !4733, !noalias !4734
  br label %bb.ah

_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit59.i: ; preds = %bb.z
  store i8 0, ptr %i.q, align 8, !alias.scope !4804, !noalias !4744
  %.sroa.4.0..sroa_idx.i60.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 0, ptr %.sroa.4.0..sroa_idx.i60.i, align 1, !alias.scope !4804, !noalias !4744
  br label %.thread.i

bb.ak:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.bv, align 8, !noalias !4744, !nonnull !6, !align !13, !noundef !6
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.co, ptr %i.cp, align 8, !alias.scope !4733, !noalias !4734
  store i8 -1, ptr %0, align 8, !alias.scope !4733, !noalias !4734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4744
  br label %bb.ah

switch.lookup:                                    ; preds = %bb.ab
  %.sroa.2.0.copyload.i = load i64, ptr %i.bv, align 8, !noalias !4744
  %.sroa.41.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %switch.cast = trunc i64 %i.bt to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 525322, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  store i8 %switch.masked, ptr %i.q, align 8, !alias.scope !4805, !noalias !4806
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.41.0..sroa_idx.i.i.i, align 8, !alias.scope !4805, !noalias !4806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4744
  br label %.thread.i

bb.al:                                            ; preds = %bb.ac
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cb, ptr %i.cq, align 8, !alias.scope !4733, !noalias !4734
  store i8 -1, ptr %0, align 8, !alias.scope !4733, !noalias !4734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4744
  br label %bb.ah

bb.am:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4744 ; 2 uses
  %i.cr = trunc nuw i64 %i.by to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  br i1 %i.cr, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @_RINvXsj_NtNtNtCs2S1C3MmPSzG_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs7N5MyPZKytm_10serde_core2de7Visitor9visit_strNtNtCs2xcxdQoJA8F_10serde_json5error5ErrorECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cb, i64 noundef %.sroa.4.0.copyload.i), !noalias !4733
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  store i8 13, ptr %i.q, align 8, !alias.scope !4807, !noalias !4808
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
end_hunk_3
begin_hunk_4_@_RINvYQINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtB9_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCs2S1C3MmPSzG_5serde7private2de7content14ContentVisitorECs1hTjP0dFAwJ_12fontc_crater:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4744
  call void @_RINvXsj_NtNtNtCs2S1C3MmPSzG_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs7N5MyPZKytm_10serde_core2de7Visitor9visit_mapINtNtCs2xcxdQoJA8F_10serde_json2de9MapAccessNtNtB24_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !noalias !4733
  %i.dk = load i8, ptr %i.cg, align 8, !alias.scope !4734, !noalias !4733, !noundef !6
  %i.dl = add i8 %i.dk, 1
  store i8 %i.dl, ptr %i.cg, align 8, !alias.scope !4734, !noalias !4733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4744
  %i.dm = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.bc unwind label %bb.bb, !noalias !4733 ; 5 uses

bb.bb:                                            ; preds = %bb.ba
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs7N5MyPZKytm_10serde_core7private7content7ContentNtNtCs2xcxdQoJA8F_10serde_json5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h) #14
          to label %bb.bm unwind label %bb.ax, !noalias !4733

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !4744
  %i.do = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.dm, ptr %i.do, align 8, !noalias !4744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4744
  %i.dp = load i8, ptr %i.i, align 8, !range !10, !noalias !4744, !noundef !6
  %i.dq = icmp eq i8 %i.dp, -1
  br i1 %i.dq, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.not.i = icmp eq ptr %i.dm, null
  br i1 %.not.i, label %.thread116.i, label %bb.bf

.thread116.i:                                     ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !4744
  br label %.thread90.i

bb.be:                                            ; preds = %bb.bc
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !4744, !nonnull !6, !align !13, !noundef !6
  %i.dt = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.ds, ptr %i.dt, align 8, !noalias !4744
  store i8 -1, ptr %i.q, align 8, !noalias !4744
  %.not93.i = icmp eq ptr %i.dm, null
  br i1 %.not93.i, label %.thread90.i, label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.du = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.dm, ptr %i.du, align 8, !noalias !4744
  store i8 -1, ptr %i.q, align 8, !noalias !4744
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7N5MyPZKytm_10serde_core7private7content7ContentECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i), !noalias !4733
  br label %.thread90.i

.thread90.i:                                      ; preds = %bb.bg, %bb.bf, %bb.be, %.thread116.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4744
  br label %bb.ag

bb.bg:                                            ; preds = %bb.be
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs2xcxdQoJA8F_10serde_json5error5ErrorECs1hTjP0dFAwJ_12fontc_crater(ptr nonnull %i.dm), !noalias !4733
  br label %.thread90.i

bb.bh:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4744
  store i64 10, ptr %i.g, align 8, !noalias !4744
  %i.dv = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !noalias !4733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4744
  br label %bb.bj

bb.bi:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4744
  call fastcc void @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !noalias !4733
  %i.dw = load i64, ptr %i.o, align 8, !range !18, !noalias !4744, !noundef !6 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, -1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  br i1 %i.dx, label %bb.bk, label %switch.lookup31

bb.bj:                                            ; preds = %bb.bh, %._crit_edge.i
  %i.dz = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.dv, %bb.bh ]
  %i.ea = call noundef nonnull align 8 ptr @_RINvMs0_NtCs2xcxdQoJA8F_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECs1hTjP0dFAwJ_12fontc_crater(ptr noalias noundef nonnull align 8 %i.dz, ptr noundef nonnull readonly align 8 dereferenceable(56) %1), !noalias !4733
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ea, ptr %i.eb, align 8, !alias.scope !4733, !noalias !4734
  store i8 -1, ptr %0, align 8, !alias.scope !4733, !noalias !4734
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.ec = load ptr, ptr %i.dy, align 8, !noalias !4744, !nonnull !6, !align !13, !noundef !6
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ec, ptr %i.ed, align 8, !alias.scope !4733, !noalias !4734
  store i8 -1, ptr %0, align 8, !alias.scope !4733, !noalias !4734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4744
  br label %bb.ah

switch.lookup31:                                  ; preds = %bb.bi
  %.sroa.268.0.copyload.i = load i64, ptr %i.dy, align 8, !noalias !4744
  %.sroa.41.0..sroa_idx.i.i61.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %switch.cast32 = trunc i64 %i.dw to i24
  %switch.shiftamt33 = shl nuw nsw i24 %switch.cast32, 3
  %switch.downshift34 = lshr i24 525322, %switch.shiftamt33
  %switch.masked35 = trunc i24 %switch.downshift34 to i8
  store i8 %switch.masked35, ptr %i.q, align 8, !alias.scope !4811, !noalias !4812
  store i64 %.sroa.268.0.copyload.i, ptr %.sroa.41.0..sroa_idx.i.i61.i, align 8, !alias.scope !4811, !noalias !4812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4744
  br label %.thread.i

.thread.i:                                        ; preds = %switch.lookup, %switch.lookup31, %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit59.i, %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit50.i, %bb.ag, %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !noalias !4734
  br label %bb.bl

bb.bl:                                            ; preds = %.thread.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4744
  br label %_RINvXs5_NtCs2xcxdQoJA8F_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCs2S1C3MmPSzG_5serde7private2de7content14ContentVisitorECs1hTjP0dFAwJ_12fontc_crater.exit

bb.bm:                                            ; preds = %bb.bb, %bb.as
  %.pn.i = phi { ptr, i32 } [ %i.dn, %bb.bb ], [ %i.cy, %bb.as ]
  resume { ptr, i32 } %.pn.i

_RINvXs5_NtCs2xcxdQoJA8F_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCs2S1C3MmPSzG_5serde7private2de7content14ContentVisitorECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %.loopexit.i, %bb.ah, %bb.bl
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYQINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtB9_4read9SliceReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCs2S1C3MmPSzG_5serde7private2de7content14ContentVisitorECs1hTjP0dFAwJ_12fontc_crater(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [40 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 29 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4880)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !4881, !noalias !4882, !noundef !6 ; 8 uses
  %.promoted.i.i = load i64, ptr %i.s, align 8, !alias.scope !4883, !noalias !4884 ; 2 uses
  %i.v = icmp ult i64 %.promoted.i.i, %i.u
  br i1 %i.v, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !4881, !noalias !4882, !nonnull !6, !noundef !6 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.y = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.ab, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4885)
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !4886, !noundef !6 ; 3 uses
  switch i8 %i.aa, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ab = add i64 %i.y, 1                         ; 3 uses
  store i64 %i.ab, ptr %i.s, align 8, !alias.scope !4887, !noalias !4884
  %exitcond.not.i.i = icmp eq i64 %i.ab, %i.u
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4888
  switch i8 %i.aa, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ad
    i8 123, label %bb.ae
  ]

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !4888
  store i64 5, ptr %i.r, align 8, !noalias !4888
  %i.ac = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r), !noalias !4878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !4888
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !4878, !noalias !4879
  store i8 -1, ptr %0, align 8, !alias.scope !4878, !noalias !4879
  br label %_RINvXs5_NtCs2xcxdQoJA8F_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCs2S1C3MmPSzG_5serde7private2de7content14ContentVisitorECs1hTjP0dFAwJ_12fontc_crater.exit

bb.d:                                             ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.ae = add i8 %i.aa, -48
  %or.cond8.i = icmp ult i8 %i.ae, 10
  br i1 %or.cond8.i, label %bb.bi, label %bb.bh, !prof !19

bb.e:                                             ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.af = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.af, ptr %i.s, align 8, !alias.scope !4889, !noalias !4878
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4890)
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.af) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4891)
  %exitcond.not.i40.not.i = icmp ult i64 %i.af, %i.u
  br i1 %exitcond.not.i40.not.i, label %bb.f, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !4892, !noundef !6
  %i.ai = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.ai, ptr %i.s, align 8, !alias.scope !4893, !noalias !4894
  %.not.i.i = icmp eq i8 %i.ah, 117
  br i1 %.not.i.i, label %bb.g, label %bb.k, !prof !27

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4895)
  %exitcond.not.i40.1.i = icmp eq i64 %i.ai, %umax.i.i
  br i1 %exitcond.not.i40.1.i, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !4896, !noundef !6
  %i.al = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.al, ptr %i.s, align 8, !alias.scope !4897, !noalias !4894
  %.not.i.1.i = icmp eq i8 %i.ak, 108
  br i1 %.not.i.1.i, label %bb.i, label %bb.k, !prof !27

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4898)
  %exitcond.not.i40.2.i = icmp eq i64 %i.al, %umax.i.i
  br i1 %exitcond.not.i40.2.i, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !noalias !4899, !noundef !6
  %i.ao = add i64 %i.y, 4
  store i64 %i.ao, ptr %i.s, align 8, !alias.scope !4900, !noalias !4894
  %.not.i.2.i = icmp eq i8 %i.an, 108
  br i1 %.not.i.2.i, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.i, label %bb.k, !prof !27

_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4901
  store i64 5, ptr %i.f, align 8, !noalias !4901
  %i.ap = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !4902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4901
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4901
  store i64 9, ptr %i.e, align 8, !noalias !4901
  %i.aq = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !4902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4901
  br label %bb.af

bb.l:                                             ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.ar = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.ar, ptr %i.s, align 8, !alias.scope !4903, !noalias !4878
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4904)
  %umax.i43.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.ar) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4905)
  %exitcond.not.i45.not.i = icmp ult i64 %i.ar, %i.u
  br i1 %exitcond.not.i45.not.i, label %bb.m, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i49.i

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !4906, !noundef !6
  %i.au = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.au, ptr %i.s, align 8, !alias.scope !4907, !noalias !4908
  %.not.i46.i = icmp eq i8 %i.at, 114
  br i1 %.not.i46.i, label %bb.n, label %bb.r, !prof !27

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4909)
  %exitcond.not.i45.1.i = icmp eq i64 %i.au, %umax.i43.i
  br i1 %exitcond.not.i45.1.i, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i49.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !4910, !noundef !6
  %i.ax = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.ax, ptr %i.s, align 8, !alias.scope !4911, !noalias !4908
  %.not.i46.1.i = icmp eq i8 %i.aw, 117
  br i1 %.not.i46.1.i, label %bb.p, label %bb.r, !prof !27

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4912)
  %exitcond.not.i45.2.i = icmp eq i64 %i.ax, %umax.i43.i
  br i1 %exitcond.not.i45.2.i, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i49.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noalias !4913, !noundef !6
  %i.ba = add i64 %i.y, 4
  store i64 %i.ba, ptr %i.s, align 8, !alias.scope !4914, !noalias !4908
  %.not.i46.2.i = icmp eq i8 %i.az, 101
  br i1 %.not.i46.2.i, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit50.i, label %bb.r, !prof !27

_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i49.i: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4915
  store i64 5, ptr %i.d, align 8, !noalias !4915
  %i.bb = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !4916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4915
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4915
  store i64 9, ptr %i.c, align 8, !noalias !4915
  %i.bc = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !4916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4915
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.bd = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.bd, ptr %i.s, align 8, !alias.scope !4917, !noalias !4878
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4918)
  %umax.i52.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.bd) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4919)
  %exitcond.not.i54.not.i = icmp ult i64 %i.bd, %i.u
  br i1 %exitcond.not.i54.not.i, label %bb.t, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !4920, !noundef !6
  %i.bg = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.bg, ptr %i.s, align 8, !alias.scope !4921, !noalias !4922
  %.not.i55.i = icmp eq i8 %i.bf, 97
  br i1 %.not.i55.i, label %bb.u, label %bb.aa, !prof !27

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4923)
  %exitcond.not.i54.1.i = icmp eq i64 %i.bg, %umax.i52.i
  br i1 %exitcond.not.i54.1.i, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !4924, !noundef !6
  %i.bj = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.bj, ptr %i.s, align 8, !alias.scope !4925, !noalias !4922
  %.not.i55.1.i = icmp eq i8 %i.bi, 108
  br i1 %.not.i55.1.i, label %bb.w, label %bb.aa, !prof !27

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4926)
  %exitcond.not.i54.2.i = icmp eq i64 %i.bj, %umax.i52.i
  br i1 %exitcond.not.i54.2.i, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !4927, !noundef !6
  %i.bm = add i64 %i.y, 4                         ; 3 uses
  store i64 %i.bm, ptr %i.s, align 8, !alias.scope !4928, !noalias !4922
  %.not.i55.2.i = icmp eq i8 %i.bl, 115
  br i1 %.not.i55.2.i, label %bb.y, label %bb.aa, !prof !27

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4929)
  %exitcond.not.i54.3.i = icmp eq i64 %i.bm, %umax.i52.i
  br i1 %exitcond.not.i54.3.i, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !4930, !noundef !6
  %i.bp = add i64 %i.y, 5
  store i64 %i.bp, ptr %i.s, align 8, !alias.scope !4931, !noalias !4922
  %.not.i55.3.i = icmp eq i8 %i.bo, 101
  br i1 %.not.i55.3.i, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit59.i, label %bb.aa, !prof !27

_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4932
  store i64 5, ptr %i.b, align 8, !noalias !4932
  %i.bq = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !4933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4932
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4932
  store i64 9, ptr %i.a, align 8, !noalias !4932
  %i.br = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !4933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4932
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.bs = add i64 %i.y, 1
  store i64 %i.bs, ptr %i.s, align 8, !alias.scope !4934, !noalias !4878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4888
  call fastcc void @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !4878
  %i.bt = load i64, ptr %i.p, align 8, !range !18, !noalias !4888, !noundef !6 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, -1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  br i1 %i.bu, label %bb.ak, label %switch.lookup

bb.ac:                                            ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.bw = add i64 %i.y, 1
  store i64 %i.bw, ptr %i.s, align 8, !alias.scope !4935, !noalias !4878
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.bx, align 8, !alias.scope !4879, !noalias !4878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4888
  call void @_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !4878
  %i.by = load i64, ptr %i.n, align 8, !range !25, !noalias !4888, !noundef !6 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 2
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !4888 ; 4 uses
  br i1 %i.bz, label %bb.al, label %bb.am

bb.ad:                                            ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cd = load i8, ptr %i.cc, align 8, !alias.scope !4879, !noalias !4878, !noundef !6
  %i.ce = add i8 %i.cd, -1                        ; 2 uses
  store i8 %i.ce, ptr %i.cc, align 8, !alias.scope !4879, !noalias !4878
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.aq, label %bb.ar, !prof !20

bb.ae:                                            ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ch = load i8, ptr %i.cg, align 8, !alias.scope !4879, !noalias !4878, !noundef !6
  %i.ci = add i8 %i.ch, -1                        ; 2 uses
  store i8 %i.ci, ptr %i.cg, align 8, !alias.scope !4879, !noalias !4878
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.az, label %bb.ba, !prof !20

bb.af:                                            ; preds = %bb.k, %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i
  %.sroa.0.1.i.ph.i = phi ptr [ %i.ap, %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i ], [ %i.aq, %bb.k ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i, ptr %i.ck, align 8, !alias.scope !4878, !noalias !4879
  store i8 -1, ptr %0, align 8, !alias.scope !4878, !noalias !4879
  br label %bb.ah

_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.i: ; preds = %bb.j
  store i8 18, ptr %i.q, align 8, !alias.scope !4936, !noalias !4888
  br label %.thread.i

bb.ag:                                            ; preds = %.thread90.i, %.thread87.i, %bb.ap
  %.pr.i.pr = load i8, ptr %i.q, align 8, !noalias !4888
  %i.cl = icmp eq i8 %.pr.i.pr, -1
  br i1 %i.cl, label %._crit_edge.i, label %.thread.i, !prof !32

._crit_edge.i:                                    ; preds = %bb.ag
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !4888
  br label %bb.bj

bb.ah:                                            ; preds = %bb.bk, %bb.az, %bb.aq, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4888
  br label %_RINvXs5_NtCs2xcxdQoJA8F_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCs2S1C3MmPSzG_5serde7private2de7content14ContentVisitorECs1hTjP0dFAwJ_12fontc_crater.exit

bb.ai:                                            ; preds = %bb.r, %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i49.i
  %.sroa.0.1.i48.ph.i = phi ptr [ %i.bb, %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i49.i ], [ %i.bc, %bb.r ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i48.ph.i, ptr %i.cm, align 8, !alias.scope !4878, !noalias !4879
  store i8 -1, ptr %0, align 8, !alias.scope !4878, !noalias !4879
  br label %bb.ah

_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit50.i: ; preds = %bb.q
  store i8 0, ptr %i.q, align 8, !alias.scope !4937, !noalias !4888
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !alias.scope !4937, !noalias !4888
  br label %.thread.i

bb.aj:                                            ; preds = %bb.aa, %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i
  %.sroa.0.1.i57.ph.i = phi ptr [ %i.bq, %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i ], [ %i.br, %bb.aa ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i57.ph.i, ptr %i.cn, align 8, !alias.scope !4878, !noalias !4879
  store i8 -1, ptr %0, align 8, !alias.scope !4878, !noalias !4879
  br label %bb.ah

_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit59.i: ; preds = %bb.z
  store i8 0, ptr %i.q, align 8, !alias.scope !4938, !noalias !4888
  %.sroa.4.0..sroa_idx.i60.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 0, ptr %.sroa.4.0..sroa_idx.i60.i, align 1, !alias.scope !4938, !noalias !4888
  br label %.thread.i

bb.ak:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.bv, align 8, !noalias !4888, !nonnull !6, !align !13, !noundef !6
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.co, ptr %i.cp, align 8, !alias.scope !4878, !noalias !4879
  store i8 -1, ptr %0, align 8, !alias.scope !4878, !noalias !4879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4888
  br label %bb.ah

switch.lookup:                                    ; preds = %bb.ab
  %.sroa.2.0.copyload.i = load i64, ptr %i.bv, align 8, !noalias !4888
  %.sroa.41.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %switch.cast = trunc i64 %i.bt to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 525322, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  store i8 %switch.masked, ptr %i.q, align 8, !alias.scope !4939, !noalias !4940
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.41.0..sroa_idx.i.i.i, align 8, !alias.scope !4939, !noalias !4940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4888
  br label %.thread.i

bb.al:                                            ; preds = %bb.ac
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cb, ptr %i.cq, align 8, !alias.scope !4878, !noalias !4879
  store i8 -1, ptr %0, align 8, !alias.scope !4878, !noalias !4879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4888
  br label %bb.ah

bb.am:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4888 ; 2 uses
  %i.cr = trunc nuw i64 %i.by to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  br i1 %i.cr, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @_RINvXsj_NtNtNtCs2S1C3MmPSzG_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs7N5MyPZKytm_10serde_core2de7Visitor9visit_strNtNtCs2xcxdQoJA8F_10serde_json5error5ErrorECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cb, i64 noundef %.sroa.4.0.copyload.i), !noalias !4878
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  store i8 13, ptr %i.q, align 8, !alias.scope !4941, !noalias !4942
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.cb, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !4941, !noalias !4942
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !4941, !noalias !4942
  br label %bb.ap
end_hunk_4
begin_hunk_5_@_RINvYQINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtB9_4read9SliceReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCs2S1C3MmPSzG_5serde7private2de7content14ContentVisitorECs1hTjP0dFAwJ_12fontc_crater:bb.a

bb.av:                                            ; preds = %bb.at
  %i.dc = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !4888, !nonnull !6, !align !13, !noundef !6
  %i.de = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.dd, ptr %i.de, align 8, !noalias !4888
  store i8 -1, ptr %i.q, align 8, !noalias !4888
  %.not94.i = icmp eq ptr %i.cx, null
  br i1 %.not94.i, label %.thread87.i, label %bb.ay

bb.aw:                                            ; preds = %bb.au
  %i.df = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.cx, ptr %i.df, align 8, !noalias !4888
  store i8 -1, ptr %i.q, align 8, !noalias !4888
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7N5MyPZKytm_10serde_core7private7content7ContentECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(32) %i.l), !noalias !4878
  br label %.thread87.i

bb.ax:                                            ; preds = %bb.bb, %bb.as
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #15, !noalias !4878
  unreachable

.thread87.i:                                      ; preds = %bb.ay, %bb.aw, %bb.av, %.thread114.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4888
  br label %bb.ag

bb.ay:                                            ; preds = %bb.av
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs2xcxdQoJA8F_10serde_json5error5ErrorECs1hTjP0dFAwJ_12fontc_crater(ptr nonnull %i.cx), !noalias !4878
  br label %.thread87.i

bb.az:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4888
  store i64 24, ptr %i.j, align 8, !noalias !4888
  %i.dh = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !4878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4888
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dh, ptr %i.di, align 8, !alias.scope !4878, !noalias !4879
  store i8 -1, ptr %0, align 8, !alias.scope !4878, !noalias !4879
  br label %bb.ah

bb.ba:                                            ; preds = %bb.ae
  %i.dj = add i64 %i.y, 1
  store i64 %i.dj, ptr %i.s, align 8, !alias.scope !4944, !noalias !4878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4888
  call void @_RINvXsj_NtNtNtCs2S1C3MmPSzG_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs7N5MyPZKytm_10serde_core2de7Visitor9visit_mapINtNtCs2xcxdQoJA8F_10serde_json2de9MapAccessNtNtB24_4read9SliceReadEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !noalias !4878
  %i.dk = load i8, ptr %i.cg, align 8, !alias.scope !4879, !noalias !4878, !noundef !6
  %i.dl = add i8 %i.dk, 1
  store i8 %i.dl, ptr %i.cg, align 8, !alias.scope !4879, !noalias !4878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4888
  %i.dm = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_mapCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.bc unwind label %bb.bb, !noalias !4878 ; 5 uses

bb.bb:                                            ; preds = %bb.ba
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs7N5MyPZKytm_10serde_core7private7content7ContentNtNtCs2xcxdQoJA8F_10serde_json5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h) #14
          to label %bb.bm unwind label %bb.ax, !noalias !4878

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !4888
  %i.do = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.dm, ptr %i.do, align 8, !noalias !4888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4888
  %i.dp = load i8, ptr %i.i, align 8, !range !10, !noalias !4888, !noundef !6
  %i.dq = icmp eq i8 %i.dp, -1
  br i1 %i.dq, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.not.i = icmp eq ptr %i.dm, null
  br i1 %.not.i, label %.thread116.i, label %bb.bf

.thread116.i:                                     ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !4888
  br label %.thread90.i

bb.be:                                            ; preds = %bb.bc
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !4888, !nonnull !6, !align !13, !noundef !6
  %i.dt = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.ds, ptr %i.dt, align 8, !noalias !4888
  store i8 -1, ptr %i.q, align 8, !noalias !4888
  %.not93.i = icmp eq ptr %i.dm, null
  br i1 %.not93.i, label %.thread90.i, label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.du = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.dm, ptr %i.du, align 8, !noalias !4888
  store i8 -1, ptr %i.q, align 8, !noalias !4888
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7N5MyPZKytm_10serde_core7private7content7ContentECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i), !noalias !4878
  br label %.thread90.i

.thread90.i:                                      ; preds = %bb.bg, %bb.bf, %bb.be, %.thread116.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4888
  br label %bb.ag

bb.bg:                                            ; preds = %bb.be
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs2xcxdQoJA8F_10serde_json5error5ErrorECs1hTjP0dFAwJ_12fontc_crater(ptr nonnull %i.dm), !noalias !4878
  br label %.thread90.i

bb.bh:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4888
  store i64 10, ptr %i.g, align 8, !noalias !4888
  %i.dv = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !noalias !4878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4888
  br label %bb.bj

bb.bi:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4888
  call fastcc void @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !noalias !4878
  %i.dw = load i64, ptr %i.o, align 8, !range !18, !noalias !4888, !noundef !6 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, -1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  br i1 %i.dx, label %bb.bk, label %switch.lookup31

bb.bj:                                            ; preds = %bb.bh, %._crit_edge.i
  %i.dz = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.dv, %bb.bh ]
  %i.ea = call noundef nonnull align 8 ptr @_RINvMs0_NtCs2xcxdQoJA8F_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECs1hTjP0dFAwJ_12fontc_crater(ptr noalias noundef nonnull align 8 %i.dz, ptr noundef nonnull readonly align 8 dereferenceable(56) %1), !noalias !4878
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ea, ptr %i.eb, align 8, !alias.scope !4878, !noalias !4879
  store i8 -1, ptr %0, align 8, !alias.scope !4878, !noalias !4879
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.ec = load ptr, ptr %i.dy, align 8, !noalias !4888, !nonnull !6, !align !13, !noundef !6
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ec, ptr %i.ed, align 8, !alias.scope !4878, !noalias !4879
  store i8 -1, ptr %0, align 8, !alias.scope !4878, !noalias !4879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4888
  br label %bb.ah

switch.lookup31:                                  ; preds = %bb.bi
  %.sroa.268.0.copyload.i = load i64, ptr %i.dy, align 8, !noalias !4888
  %.sroa.41.0..sroa_idx.i.i61.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %switch.cast32 = trunc i64 %i.dw to i24
  %switch.shiftamt33 = shl nuw nsw i24 %switch.cast32, 3
  %switch.downshift34 = lshr i24 525322, %switch.shiftamt33
  %switch.masked35 = trunc i24 %switch.downshift34 to i8
  store i8 %switch.masked35, ptr %i.q, align 8, !alias.scope !4945, !noalias !4946
  store i64 %.sroa.268.0.copyload.i, ptr %.sroa.41.0..sroa_idx.i.i61.i, align 8, !alias.scope !4945, !noalias !4946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4888
  br label %.thread.i

.thread.i:                                        ; preds = %switch.lookup, %switch.lookup31, %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit59.i, %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit50.i, %bb.ag, %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !noalias !4879
  br label %bb.bl

bb.bl:                                            ; preds = %.thread.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4888
  br label %_RINvXs5_NtCs2xcxdQoJA8F_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCs2S1C3MmPSzG_5serde7private2de7content14ContentVisitorECs1hTjP0dFAwJ_12fontc_crater.exit

bb.bm:                                            ; preds = %bb.bb, %bb.as
  %.pn.i = phi { ptr, i32 } [ %i.dn, %bb.bb ], [ %i.cy, %bb.as ]
  resume { ptr, i32 } %.pn.i

_RINvXs5_NtCs2xcxdQoJA8F_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCs2S1C3MmPSzG_5serde7private2de7content14ContentVisitorECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %.loopexit.i, %bb.ah, %bb.bl
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read13peek_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs2xcxdQoJA8F_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs2xcxdQoJA8F_10serde_json5error9ErrorCodeECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #14
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6
  %.promoted = load i64, ptr %i.d, align 8        ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %.promoted)
  %i.i = icmp samesign eq i64 %2, 0
  br i1 %i.i, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.09, i64 1 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.09 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.l = phi i64 [ %i.o, %bb.b ], [ %.promoted, %bb.a ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4954)
  %exitcond.not = icmp eq i64 %i.l, %umax
  br i1 %exitcond.not, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !4955, !noundef !6
  %i.o = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.o, ptr %i.d, align 8, !alias.scope !4956, !noalias !4957
  %i.p = load i8, ptr %.sroa.01.09, align 1, !noundef !6
  %.not = icmp eq i8 %i.n, %i.p
  br i1 %.not, label %bb.b, label %bb.d, !prof !15

_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 5, ptr %i.b, align 8
  %i.q = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 9, ptr %i.a, align 8
  %i.r = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit, %bb.d
  %.sroa.0.1 = phi ptr [ %i.r, %bb.d ], [ %i.q, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberCs1hTjP0dFAwJ_12fontc_crater(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4981)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !4982, !noalias !4983, !noundef !6 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !4982, !noalias !4983, !noundef !6 ; 4 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !4982, !noalias !4983, !nonnull !6, !noundef !6 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h
  %i.o = load i8, ptr %i.n, align 1, !noalias !4984, !noundef !6
  switch i8 %i.o, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread [
    i8 46, label %bb.b
    i8 101, label %bb.p
    i8 69, label %bb.p
  ]

_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %bb.a, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  br i1 %2, label %bb.s, label %bb.v

bb.b:                                             ; preds = %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4985)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4986)
  %i.p = add nuw i64 %i.h, 1                      ; 3 uses
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !4987, !noalias !4985
  %i.q = icmp ult i64 %i.p, %i.j
  br i1 %i.q, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i, label %.thread.thread.i

_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i: ; preds = %bb.b
  %i.r = trunc i64 %i.h to i32
  %i.s = add i32 %i.r, 1
  %i.t = trunc i64 %i.j to i32
  %i.u = sub i32 %i.s, %i.t                       ; 2 uses
  br label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i

_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i: ; preds = %bb.n, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i
  %.sroa.0.061.i = phi i64 [ %3, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bg, %bb.n ] ; 6 uses
  %.sroa.07.060.i = phi i32 [ 0, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bh, %bb.n ] ; 5 uses
  %i.v = phi i64 [ %i.p, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.be, %bb.n ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !4988, !noundef !6 ; 2 uses
  %i.y = add i8 %i.x, -48                         ; 3 uses
  %or.cond.i = icmp ult i8 %i.y, 10
  br i1 %or.cond.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  %i.z = icmp eq i32 %.sroa.07.060.i, 0
  br i1 %i.z, label %bb.e, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i

.thread.i:                                        ; preds = %bb.n
  %i.aa = icmp eq i32 %i.u, 0
  br i1 %i.aa, label %.thread.thread.i, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i

bb.d:                                             ; preds = %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  %i.ab = zext nneg i8 %i.y to i64
  %i.ac = icmp ugt i64 %.sroa.0.061.i, 1844674407370955160
  br i1 %i.ac, label %bb.m, label %bb.n

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4989
  store i64 13, ptr %i.d, align 8, !noalias !4989
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !4985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4989
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !4985, !noalias !4986
  store i64 1, ptr %i.f, align 8, !alias.scope !4985, !noalias !4986
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCs1hTjP0dFAwJ_12fontc_crater.exit

.thread.thread.i:                                 ; preds = %.thread.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4989
  store i64 5, ptr %i.c, align 8, !noalias !4989
  %i.af = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !4985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4989
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !4985, !noalias !4986
  store i64 1, ptr %i.f, align 8, !alias.scope !4985, !noalias !4986
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCs1hTjP0dFAwJ_12fontc_crater.exit

_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i: ; preds = %bb.c
  switch i8 %i.x, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i [
    i8 101, label %bb.l
    i8 69, label %bb.l
  ]

_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i: ; preds = %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i, %.thread.i
  %.sroa.07.059.i = phi i32 [ %i.u, %.thread.i ], [ %.sroa.07.060.i, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i ] ; 3 uses
  %.sroa.0.056.i = phi i64 [ %i.bg, %.thread.i ], [ %.sroa.0.061.i, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4990)
  %i.ah = uitofp i64 %.sroa.0.056.i to double     ; 2 uses
  %.sroa.012.020.i.i = tail call i32 @llvm.abs.i32(i32 %.sroa.07.059.i, i1 false) ; 2 uses
  %i.ai = icmp ult i32 %.sroa.012.020.i.i, 309
  br i1 %i.ai, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i, %bb.g
  %.sroa.0.022.i.i = phi i32 [ %i.aq, %bb.g ], [ %.sroa.07.059.i, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ] ; 2 uses
  %.sroa.04.021.i.i = phi double [ %i.ap, %bb.g ], [ %i.ah, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ] ; 3 uses
  %i.aj = fcmp oeq double %.sroa.04.021.i.i, 0.000000e+00
  br i1 %i.aj, label %.loopexit.i.i, label %bb.f

._crit_edge.i.i:                                  ; preds = %bb.g, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i
  %.sroa.04.0.lcssa.i.i = phi double [ %i.ah, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %i.ap, %bb.g ] ; 2 uses
  %.sroa.0.0.lcssa.i.i = phi i32 [ %.sroa.07.059.i, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %i.aq, %bb.g ]
  %.sroa.012.0.lcssa.i.i = phi i32 [ %.sroa.012.020.i.i, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %.sroa.012.0.i.i, %bb.g ]
  %i.ak = zext nneg i32 %.sroa.012.0.lcssa.i.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCs2xcxdQoJA8F_10serde_json2de5POW10, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !noalias !4991, !noundef !6 ; 2 uses
  %i.an = icmp sgt i32 %.sroa.0.0.lcssa.i.i, -1
  br i1 %i.an, label %bb.j, label %bb.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = icmp sgt i32 %.sroa.0.022.i.i, -1
  br i1 %i.ao, label %bb.h, label %bb.g, !prof !20

bb.g:                                             ; preds = %bb.f
  %i.ap = fdiv double %.sroa.04.021.i.i, 1.000000e+308 ; 2 uses
  %i.aq = add nsw i32 %.sroa.0.022.i.i, 308       ; 3 uses
  %.sroa.012.0.i.i = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true) ; 2 uses
  %i.ar = icmp samesign ult i32 %.sroa.012.0.i.i, 309
  br i1 %i.ar, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4991
  store i64 14, ptr %i.a, align 8, !noalias !4991
  %i.as = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !4992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4991
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.as, ptr %i.at, align 8, !alias.scope !4992, !noalias !4993
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCs1hTjP0dFAwJ_12fontc_crater.exit.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %bb.j, %bb.i
  %.sroa.04.1.i.i = phi double [ %i.ax, %bb.j ], [ %i.aw, %bb.i ], [ %.sroa.04.021.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.au = fneg double %.sroa.04.1.i.i
  %.sroa.04.2.i.i = select i1 %2, double %.sroa.04.1.i.i, double %i.au
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store double %.sroa.04.2.i.i, ptr %i.av, align 8, !alias.scope !4992, !noalias !4993
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCs1hTjP0dFAwJ_12fontc_crater.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.aw = fdiv double %.sroa.04.0.lcssa.i.i, %i.am
  br label %.loopexit.i.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.ax = fmul double %.sroa.04.0.lcssa.i.i, %i.am ; 2 uses
end_hunk_5
begin_hunk_6_@_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentCs1hTjP0dFAwJ_12fontc_crater:bb.a

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.sroa.0.022.i = phi i32 [ %i.au, %bb.l ], [ %.sroa.015.0, %bb.j ] ; 2 uses
  %.sroa.04.021.i = phi double [ %i.at, %bb.l ], [ %i.al, %bb.j ] ; 3 uses
  %i.an = fcmp oeq double %.sroa.04.021.i, 0.000000e+00
  br i1 %i.an, label %.loopexit.i, label %bb.k

._crit_edge.i:                                    ; preds = %bb.l, %bb.j
  %.sroa.04.0.lcssa.i = phi double [ %i.al, %bb.j ], [ %i.at, %bb.l ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.015.0, %bb.j ], [ %i.au, %bb.l ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.020.i, %bb.j ], [ %.sroa.012.0.i, %bb.l ]
  %i.ao = zext nneg i32 %.sroa.012.0.lcssa.i to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCs2xcxdQoJA8F_10serde_json2de5POW10, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !noalias !5186, !noundef !6 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5186
  store i64 14, ptr %i.a, align 8, !noalias !5186
  %i.aw = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !5185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5186
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !5185, !noalias !5187
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCs1hTjP0dFAwJ_12fontc_crater.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.az, align 8, !alias.scope !5185, !noalias !5187
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCs1hTjP0dFAwJ_12fontc_crater.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !20

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5186
  store i64 14, ptr %i.b, align 8, !noalias !5186
  %i.be = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !5185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5186
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !5185, !noalias !5187
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCs1hTjP0dFAwJ_12fontc_crater.exit

_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !5185, !noalias !5187
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCs1hTjP0dFAwJ_12fontc_crater.exit
  ret void

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.08.054, 214748364
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh
  br i1 %or.cond2, label %bb.t, label %bb.s, !prof !21

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.08.054, 10
  %i.bj = add i32 %i.bi, %i.ah                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.j
  br i1 %exitcond.not, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %3, 0
  tail call void @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE23parse_exponent_overflowB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bk, i1 noundef zeroext %.sroa.0.0) #19
  br label %bb.q
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((1, 2)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !5196, !noalias !5197, !noundef !6 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.d = icmp ult i64 %.promoted, %i.c
  br i1 %i.d, label %.lr.ph, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !5196, !noalias !5197, !nonnull !6, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.g, align 1, !alias.scope !5197, !noalias !5196
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  br label %bb.b

._RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit_crit_edge: ; preds = %bb.c
  store i8 %i.l, ptr %i.h, align 2, !alias.scope !5197, !noalias !5196
  br label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit

_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %._RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit_crit_edge, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.i, align 1, !alias.scope !5197, !noalias !5196
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.j = phi i64 [ %.promoted, %.lr.ph ], [ %i.m, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5201)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !5202, !noundef !6 ; 3 uses
  switch i8 %i.l, label %.loopexit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.a, align 8, !alias.scope !5203
  %exitcond.not = icmp eq i64 %i.m, %i.c
  br i1 %exitcond.not, label %._RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit_crit_edge, label %bb.b

.loopexit:                                        ; preds = %bb.b
  store i8 %i.l, ptr %i.h, align 2, !alias.scope !5197, !noalias !5196
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5262)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !5263, !noalias !5264, !noundef !6 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !5263, !noalias !5264, !noundef !6 ; 10 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %.thread64

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !alias.scope !5263, !noalias !5264, !nonnull !6, !noundef !6
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !noalias !5265, !noundef !6 ; 2 uses
  switch i8 %i.y, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !34

bb.c:                                             ; preds = %bb.b
  %i.z = add i8 %i.y, -48
  %or.cond = icmp ult i8 %i.z, 10
  br i1 %or.cond, label %bb.aj, label %.thread64, !prof !27

bb.d:                                             ; preds = %bb.b
  %i.aa = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !5266
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5267)
  %i.ab = load ptr, ptr %i.q, align 8, !alias.scope !5267, !noalias !5268, !nonnull !6 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.aa)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5270)
  %exitcond.not.i.not = icmp ult i64 %i.aa, %i.u
  br i1 %exitcond.not.i.not, label %bb.e, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !5271, !noundef !6
  %i.ae = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ae, ptr %i.r, align 8, !alias.scope !5272, !noalias !5273
  %.not.i = icmp eq i8 %i.ad, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !27

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5275)
  %exitcond.not.i.1 = icmp eq i64 %i.u, %i.ae
  br i1 %exitcond.not.i.1, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !5276, !noundef !6
  %i.ah = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.ah, ptr %i.r, align 8, !alias.scope !5277, !noalias !5273
  %.not.i.1 = icmp eq i8 %i.ag, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !27

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5279)
  %exitcond.not.i.2 = icmp eq i64 %i.ah, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !5280, !noundef !6
  %i.ak = add i64 %i.s, 4
  store i64 %i.ak, ptr %i.r, align 8, !alias.scope !5281, !noalias !5273
  %.not.i.2 = icmp eq i8 %i.aj, 108
  br i1 %.not.i.2, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit, label %bb.j, !prof !27

_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5282
  store i64 5, ptr %i.f, align 8, !noalias !5282
  %i.al = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !5268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5282
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5282
  store i64 9, ptr %i.e, align 8, !noalias !5282
  %i.am = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !5268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5282
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.an = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.an, ptr %i.r, align 8, !alias.scope !5283
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5284)
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !5284, !noalias !5285, !nonnull !6 ; 3 uses
  %umax.i24 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.an)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5287)
  %exitcond.not.i26.not = icmp ult i64 %i.an, %i.u
  br i1 %exitcond.not.i26.not, label %bb.l, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !5288, !noundef !6
  %i.ar = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ar, ptr %i.r, align 8, !alias.scope !5289, !noalias !5290
  %.not.i27 = icmp eq i8 %i.aq, 114
  br i1 %.not.i27, label %bb.m, label %bb.q, !prof !27

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5292)
  %exitcond.not.i26.1 = icmp eq i64 %i.u, %i.ar
  br i1 %exitcond.not.i26.1, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !5293, !noundef !6
  %i.au = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.au, ptr %i.r, align 8, !alias.scope !5294, !noalias !5290
  %.not.i27.1 = icmp eq i8 %i.at, 117
  br i1 %.not.i27.1, label %bb.o, label %bb.q, !prof !27

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5296)
  %exitcond.not.i26.2 = icmp eq i64 %i.au, %umax.i24
  br i1 %exitcond.not.i26.2, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !5297, !noundef !6
  %i.ax = add i64 %i.s, 4
  store i64 %i.ax, ptr %i.r, align 8, !alias.scope !5298, !noalias !5290
  %.not.i27.2 = icmp eq i8 %i.aw, 101
  br i1 %.not.i27.2, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit30, label %bb.q, !prof !27

_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29: ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5299
  store i64 5, ptr %i.d, align 8, !noalias !5299
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !5285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5299
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5299
  store i64 9, ptr %i.c, align 8, !noalias !5299
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !5285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5299
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.thread

bb.r:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.ba, ptr %i.r, align 8, !alias.scope !5300
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5301)
  %i.bb = load ptr, ptr %i.q, align 8, !alias.scope !5301, !noalias !5302, !nonnull !6 ; 4 uses
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.ba) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5304)
  %exitcond.not.i34.not = icmp ult i64 %i.ba, %i.u
  br i1 %exitcond.not.i34.not, label %bb.s, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !5305, !noundef !6
  %i.be = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.be, ptr %i.r, align 8, !alias.scope !5306, !noalias !5307
  %.not.i35 = icmp eq i8 %i.bd, 97
  br i1 %.not.i35, label %bb.t, label %bb.z, !prof !27

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5309)
  %exitcond.not.i34.1 = icmp eq i64 %i.u, %i.be
  br i1 %exitcond.not.i34.1, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !5310, !noundef !6
  %i.bh = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.bh, ptr %i.r, align 8, !alias.scope !5311, !noalias !5307
  %.not.i35.1 = icmp eq i8 %i.bg, 108
  br i1 %.not.i35.1, label %bb.v, label %bb.z, !prof !27

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5313)
  %exitcond.not.i34.2 = icmp eq i64 %i.bh, %umax.i32
  br i1 %exitcond.not.i34.2, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !5314, !noundef !6
  %i.bk = add i64 %i.s, 4                         ; 3 uses
  store i64 %i.bk, ptr %i.r, align 8, !alias.scope !5315, !noalias !5307
  %.not.i35.2 = icmp eq i8 %i.bj, 115
  br i1 %.not.i35.2, label %bb.x, label %bb.z, !prof !27

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5317)
  %exitcond.not.i34.3 = icmp eq i64 %i.bk, %umax.i32
  br i1 %exitcond.not.i34.3, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !5318, !noundef !6
  %i.bn = add i64 %i.s, 5
  store i64 %i.bn, ptr %i.r, align 8, !alias.scope !5319, !noalias !5307
  %.not.i35.3 = icmp eq i8 %i.bm, 101
  br i1 %.not.i35.3, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit38, label %bb.z, !prof !27

_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37: ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5320
  store i64 5, ptr %i.b, align 8, !noalias !5320
  %i.bo = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !5302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5320
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5320
  store i64 9, ptr %i.a, align 8, !noalias !5320
  %i.bp = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !5302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5320
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.thread

bb.aa:                                            ; preds = %bb.b
  %i.bq = add nuw i64 %i.s, 1
  store i64 %i.bq, ptr %i.r, align 8, !alias.scope !5321
  call fastcc void @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  %i.br = load i64, ptr %i.m, align 8, !range !18, !noundef !6
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !15

bb.ab:                                            ; preds = %bb.b
  %i.bt = add nuw i64 %i.s, 1
  store i64 %i.bt, ptr %i.r, align 8, !alias.scope !5322
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.bv = load i64, ptr %i.k, align 8, !range !25, !noundef !6
  %i.bw = icmp eq i64 %i.bv, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !6, !noundef !6 ; 2 uses
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !15

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 8
  %i.bz = call noundef nonnull align 8 ptr @_RNvXs6_NtCs2xcxdQoJA8F_10serde_json5errorNtB5_5ErrorNtNtCs7N5MyPZKytm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 11, ptr %i.h, align 8
  %i.ca = call noundef nonnull align 8 ptr @_RNvXs6_NtCs2xcxdQoJA8F_10serde_json5errorNtB5_5ErrorNtNtCs7N5MyPZKytm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 7, ptr %i.p, align 8
  %i.cb = call noundef nonnull align 8 ptr @_RNvXs6_NtCs2xcxdQoJA8F_10serde_json5errorNtB5_5ErrorNtNtCs7N5MyPZKytm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread64, %bb.ai, %bb.ag, %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit38, %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit30, %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit, %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cs, %bb.al ], [ %i.cn, %.thread64 ], [ %i.cb, %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit ], [ %i.ce, %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit30 ], [ %i.cg, %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit38 ], [ %i.cj, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ]
  %i.cc = call noundef nonnull align 8 ptr @_RINvMs0_NtCs2xcxdQoJA8F_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECs1hTjP0dFAwJ_12fontc_crater(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noundef nonnull readonly align 8 dereferenceable(56) %0)
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.thread

_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit30: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 1, ptr %i.cd, align 1
  store i8 0, ptr %i.o, align 8
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs6_NtCs2xcxdQoJA8F_10serde_json5errorNtB5_5ErrorNtNtCs7N5MyPZKytm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit38: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.cf, align 1
  store i8 0, ptr %i.n, align 8
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs6_NtCs2xcxdQoJA8F_10serde_json5errorNtB5_5ErrorNtNtCs7N5MyPZKytm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !6, !align !13, !noundef !6
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.thread

bb.ag:                                            ; preds = %bb.aa
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs2_NtCs2xcxdQoJA8F_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.thread

bb.ai:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.by, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.cl, align 8
  store i8 5, ptr %i.j, align 8
  %i.cm = call noundef nonnull align 8 ptr @_RNvXs6_NtCs2xcxdQoJA8F_10serde_json5errorNtB5_5ErrorNtNtCs7N5MyPZKytm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

.thread64:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cn = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call fastcc void @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.l, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext true)
  %i.co = load i64, ptr %i.l, align 8, !range !18, !noundef !6
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %bb.ak, label %bb.al, !prof !15

bb.ak:                                            ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !6, !align !13, !noundef !6
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs2_NtCs2xcxdQoJA8F_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.thread: ; preds = %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, %bb.z, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, %bb.q, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cc, %bb.ae ], [ %i.cr, %bb.ak ], [ %i.by, %bb.ah ], [ %i.az, %bb.q ], [ %i.am, %bb.j ], [ %i.ci, %bb.af ], [ %i.al, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.ay, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29 ], [ %i.bo, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37 ], [ %i.bp, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read8position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs2xcxdQoJA8F_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e
end_hunk_6
begin_hunk_7_@_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCs1hTjP0dFAwJ_12fontc_crater:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !5337, !noalias !5338, !nonnull !6, !noundef !6
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.j = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5341)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !5342, !noundef !6
  switch i8 %i.l, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 125, label %bb.e
    i8 44, label %bb.f
  ], !prof !17

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !5343, !noalias !5339
  %exitcond.not.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 3, ptr %i.a, align 8
  %i.n = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 22, ptr %i.b, align 8
  %i.o = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.p = add i64 %i.j, 1
  store i64 %i.p, ptr %i.d, align 8, !alias.scope !5344
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 21, ptr %i.c, align 8
  %i.q = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.d, %bb.e, %bb.f
  %.sroa.0.0 = phi ptr [ %i.o, %bb.d ], [ null, %bb.e ], [ %i.q, %bb.f ], [ %i.n, %.loopexit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5371)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !5372, !noalias !5373, !noundef !6 ; 4 uses
  %.promoted.i = load i64, ptr %i.e, align 8, !alias.scope !5371, !noalias !5374 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i, %i.g
  br i1 %i.h, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !5372, !noalias !5373, !nonnull !6, !noundef !6 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.k = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.n, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5376)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !5377, !noundef !6
  switch i8 %i.m, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 93, label %bb.e
    i8 44, label %bb.f
  ], !prof !17

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.n = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !5378, !noalias !5374
  %exitcond.not.i = icmp eq i64 %i.n, %i.g
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 2, ptr %i.a, align 8
  %i.o = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs2xcxdQoJA8F_10serde_json5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit17

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 22, ptr %i.b, align 8
  %i.p = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs2xcxdQoJA8F_10serde_json5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit17

bb.e:                                             ; preds = %bb.b
  %i.q = add i64 %i.k, 1
  store i64 %i.q, ptr %i.e, align 8, !alias.scope !5379
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs2xcxdQoJA8F_10serde_json5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit17

bb.f:                                             ; preds = %bb.b
  %i.r = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.r, ptr %i.e, align 8, !alias.scope !5380
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5381)
  %i.s = icmp ult i64 %i.r, %i.g
  br i1 %i.s, label %.lr.ph.i12, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit16.thread

.lr.ph.i12:                                       ; preds = %bb.f, %bb.g
  %i.t = phi i64 [ %i.w, %bb.g ], [ %i.r, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !noalias !5382, !noundef !6
  switch i8 %i.v, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit16.thread [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 93, label %bb.h
  ]

bb.g:                                             ; preds = %.lr.ph.i12, %.lr.ph.i12, %.lr.ph.i12, %.lr.ph.i12
  %i.w = add i64 %i.t, 1                          ; 3 uses
  store i64 %i.w, ptr %i.e, align 8, !alias.scope !5383, !noalias !5384
  %exitcond.not.i13 = icmp eq i64 %i.w, %i.g
  br i1 %exitcond.not.i13, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit16.thread, label %.lr.ph.i12

_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit16.thread: ; preds = %.lr.ph.i12, %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 22, ptr %i.c, align 8
  %i.x = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs2xcxdQoJA8F_10serde_json5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit17

bb.h:                                             ; preds = %.lr.ph.i12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 21, ptr %i.d, align 8
  %i.y = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs2xcxdQoJA8F_10serde_json5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit17

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs2xcxdQoJA8F_10serde_json5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit17: ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit16.thread, %bb.h, %.loopexit, %bb.d, %bb.e
  %.sroa.0.0 = phi ptr [ %i.p, %bb.d ], [ null, %bb.e ], [ %i.o, %.loopexit ], [ %i.x, %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit16.thread ], [ %i.y, %bb.h ]
  ret ptr %.sroa.0.0
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read13peek_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs2xcxdQoJA8F_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs2xcxdQoJA8F_10serde_json5error9ErrorCodeECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #14
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6
  %.promoted = load i64, ptr %i.d, align 8        ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %.promoted)
  %i.i = icmp samesign eq i64 %2, 0
  br i1 %i.i, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.09, i64 1 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.09 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.l = phi i64 [ %i.o, %bb.b ], [ %.promoted, %bb.a ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5388)
  %exitcond.not = icmp eq i64 %i.l, %umax
  br i1 %exitcond.not, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !5389, !noundef !6
  %i.o = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.o, ptr %i.d, align 8, !alias.scope !5388, !noalias !5390
  %i.p = load i8, ptr %.sroa.01.09, align 1, !noundef !6
  %.not = icmp eq i8 %i.n, %i.p
  br i1 %.not, label %bb.b, label %bb.d, !prof !15

_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 5, ptr %i.b, align 8
  %i.q = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 9, ptr %i.a, align 8
  %i.r = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit, %bb.d
  %.sroa.0.1 = phi ptr [ %i.r, %bb.d ], [ %i.q, %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCs1hTjP0dFAwJ_12fontc_crater(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !5401, !noundef !6 ; 2 uses
  %i.g = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !alias.scope !5401
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !5402, !noalias !5403, !noundef !6 ; 3 uses
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph, label %.thread.thread

_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !5402, !noalias !5403, !nonnull !6, !noundef !6
  %i.m = trunc i64 %i.f to i32
  %i.n = add i32 %i.m, 1                          ; 2 uses
  %i.o = trunc i64 %i.i to i32                    ; 2 uses
  %i.p = sub i32 %i.n, %i.o
  br label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit

_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph, %bb.o
  %.sroa.0.060 = phi i64 [ %3, %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph ], [ %i.be, %bb.o ] ; 6 uses
  %.sroa.07.059 = phi i32 [ 0, %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph ], [ %i.bf, %bb.o ] ; 4 uses
  %i.q = phi i64 [ %i.g, %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph ], [ %i.bc, %bb.o ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5402)
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !noalias !5404, !noundef !6 ; 2 uses
  %i.t = add i8 %i.s, -48                         ; 3 uses
  %or.cond = icmp ult i8 %i.t, 10
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  %i.u = icmp eq i32 %.sroa.07.059, 0
  br i1 %i.u, label %bb.d, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28

.thread:                                          ; preds = %bb.o
  %i.v = icmp eq i32 %i.n, %i.o
  br i1 %i.v, label %.thread.thread, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread

_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread: ; preds = %.thread
  %i.w = add i32 %i.p, %4
  br label %bb.e

bb.c:                                             ; preds = %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  %i.x = zext nneg i8 %i.t to i64
  %i.y = icmp ugt i64 %.sroa.0.060, 1844674407370955160
  br i1 %i.y, label %bb.n, label %bb.o

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 13, ptr %i.d, align 8
  %i.z = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  store i64 1, ptr %0, align 8
  br label %bb.m

.thread.thread:                                   ; preds = %bb.a, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 5, ptr %i.c, align 8
  %i.ab = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ac, align 8
  store i64 1, ptr %0, align 8
  br label %bb.m

_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28: ; preds = %bb.b
  %i.ad = add i32 %.sroa.07.059, %4               ; 2 uses
  switch i8 %i.s, label %bb.e [
    i8 101, label %bb.l
    i8 69, label %bb.l
  ]

bb.e:                                             ; preds = %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread, %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28
  %.sroa.0.056 = phi i64 [ %i.be, %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread ], [ %.sroa.0.060, %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28 ]
  %i.ae = phi i32 [ %i.w, %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread ], [ %i.ad, %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5405)
  %i.af = uitofp i64 %.sroa.0.056 to double       ; 2 uses
  %.sroa.012.020.i = tail call i32 @llvm.abs.i32(i32 %i.ae, i1 false) ; 2 uses
  %i.ag = icmp ult i32 %.sroa.012.020.i, 309
  br i1 %i.ag, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.g
  %.sroa.0.022.i = phi i32 [ %i.ao, %bb.g ], [ %i.ae, %bb.e ] ; 2 uses
  %.sroa.04.021.i = phi double [ %i.an, %bb.g ], [ %i.af, %bb.e ] ; 3 uses
  %i.ah = fcmp oeq double %.sroa.04.021.i, 0.000000e+00
  br i1 %i.ah, label %.loopexit.i, label %bb.f

._crit_edge.i:                                    ; preds = %bb.g, %bb.e
  %.sroa.04.0.lcssa.i = phi double [ %i.af, %bb.e ], [ %i.an, %bb.g ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %i.ae, %bb.e ], [ %i.ao, %bb.g ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.020.i, %bb.e ], [ %.sroa.012.0.i, %bb.g ]
  %i.ai = zext nneg i32 %.sroa.012.0.lcssa.i to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCs2xcxdQoJA8F_10serde_json2de5POW10, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !noalias !5406, !noundef !6 ; 2 uses
  %i.al = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.al, label %bb.j, label %bb.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.am = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.am, label %bb.h, label %bb.g, !prof !20

bb.g:                                             ; preds = %bb.f
  %i.an = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.ao = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.ao, i1 true) ; 2 uses
  %i.ap = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.ap, label %._crit_edge.i, label %.lr.ph.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5406
  store i64 14, ptr %i.a, align 8, !noalias !5406
  %i.aq = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !5405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5406
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !alias.scope !5405, !noalias !5407
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCs1hTjP0dFAwJ_12fontc_crater.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.j, %bb.i
  %.sroa.04.1.i = phi double [ %i.av, %bb.j ], [ %i.au, %bb.i ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.as = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.as
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.at, align 8, !alias.scope !5405, !noalias !5407
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCs1hTjP0dFAwJ_12fontc_crater.exit

bb.i:                                             ; preds = %._crit_edge.i
  %i.au = fdiv double %.sroa.04.0.lcssa.i, %i.ak
  br label %.loopexit.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.av = fmul double %.sroa.04.0.lcssa.i, %i.ak  ; 2 uses
  %i.aw = tail call double @llvm.fabs.f64(double %i.av)
  %i.ax = fcmp oeq double %i.aw, +inf
  br i1 %i.ax, label %bb.k, label %.loopexit.i, !prof !20

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5406
  store i64 14, ptr %i.b, align 8, !noalias !5406
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !5405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5406
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ay, ptr %i.az, align 8, !alias.scope !5405, !noalias !5407
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCs1hTjP0dFAwJ_12fontc_crater.exit

_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.h, %.loopexit.i, %bb.k
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.k ], [ 1, %bb.h ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !5405, !noalias !5407
  br label %bb.m

end_hunk_7
begin_hunk_8_@_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCs1hTjP0dFAwJ_12fontc_crater:bb.a
  %.sroa.012.020.i = tail call i32 @llvm.abs.i32(i32 %.sroa.015.0, i1 false) ; 2 uses
  %i.am = icmp ult i32 %.sroa.012.020.i, 309
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.sroa.0.022.i = phi i32 [ %i.au, %bb.l ], [ %.sroa.015.0, %bb.j ] ; 2 uses
  %.sroa.04.021.i = phi double [ %i.at, %bb.l ], [ %i.al, %bb.j ] ; 3 uses
  %i.an = fcmp oeq double %.sroa.04.021.i, 0.000000e+00
  br i1 %i.an, label %.loopexit.i, label %bb.k

._crit_edge.i:                                    ; preds = %bb.l, %bb.j
  %.sroa.04.0.lcssa.i = phi double [ %i.al, %bb.j ], [ %i.at, %bb.l ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.015.0, %bb.j ], [ %i.au, %bb.l ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.020.i, %bb.j ], [ %.sroa.012.0.i, %bb.l ]
  %i.ao = zext nneg i32 %.sroa.012.0.lcssa.i to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCs2xcxdQoJA8F_10serde_json2de5POW10, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !noalias !5558, !noundef !6 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5558
  store i64 14, ptr %i.a, align 8, !noalias !5558
  %i.aw = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !5557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5558
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !5557, !noalias !5559
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCs1hTjP0dFAwJ_12fontc_crater.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.az, align 8, !alias.scope !5557, !noalias !5559
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCs1hTjP0dFAwJ_12fontc_crater.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !20

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5558
  store i64 14, ptr %i.b, align 8, !noalias !5558
  %i.be = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !5557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5558
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !5557, !noalias !5559
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCs1hTjP0dFAwJ_12fontc_crater.exit

_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !5557, !noalias !5559
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCs1hTjP0dFAwJ_12fontc_crater.exit
  ret void

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.08.054, 214748364
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh
  br i1 %or.cond2, label %bb.t, label %bb.s, !prof !21

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.08.054, 10
  %i.bj = add i32 %i.bi, %i.ah                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.j
  br i1 %exitcond.not, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %3, 0
  tail call fastcc void @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE23parse_exponent_overflowCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bk, i1 noundef zeroext %.sroa.0.0) #19
  br label %bb.q
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((1, 2)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !5565, !noalias !5566, !noundef !6 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.d = icmp ult i64 %.promoted, %i.c
  br i1 %i.d, label %.lr.ph, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !5565, !noalias !5566, !nonnull !6, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.g, align 1, !alias.scope !5566, !noalias !5565
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  br label %bb.b

._RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge: ; preds = %bb.c
  store i8 %i.l, ptr %i.h, align 2, !alias.scope !5566, !noalias !5565
  br label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit

_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %._RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.i, align 1, !alias.scope !5566, !noalias !5565
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.j = phi i64 [ %.promoted, %.lr.ph ], [ %i.m, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5565)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !5567, !noundef !6 ; 3 uses
  switch i8 %i.l, label %.loopexit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.a, align 8, !alias.scope !5568
  %exitcond.not = icmp eq i64 %i.m, %i.c
  br i1 %exitcond.not, label %._RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge, label %bb.b

.loopexit:                                        ; preds = %bb.b
  store i8 %i.l, ptr %i.h, align 2, !alias.scope !5566, !noalias !5565
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5607)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !5607, !noalias !5608, !noundef !6 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !5607, !noalias !5608, !noundef !6 ; 10 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %.thread64

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !alias.scope !5607, !noalias !5608, !nonnull !6, !noundef !6
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !noalias !5609, !noundef !6 ; 2 uses
  switch i8 %i.y, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !34

bb.c:                                             ; preds = %bb.b
  %i.z = add i8 %i.y, -48
  %or.cond = icmp ult i8 %i.z, 10
  br i1 %or.cond, label %bb.aj, label %.thread64, !prof !27

bb.d:                                             ; preds = %bb.b
  %i.aa = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !5610
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5611)
  %i.ab = load ptr, ptr %i.q, align 8, !alias.scope !5611, !noalias !5612, !nonnull !6 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.aa)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5613)
  %exitcond.not.i.not = icmp ult i64 %i.aa, %i.u
  br i1 %exitcond.not.i.not, label %bb.e, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !5614, !noundef !6
  %i.ae = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ae, ptr %i.r, align 8, !alias.scope !5615, !noalias !5616
  %.not.i = icmp eq i8 %i.ad, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !27

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5617)
  %exitcond.not.i.1 = icmp eq i64 %i.u, %i.ae
  br i1 %exitcond.not.i.1, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !5618, !noundef !6
  %i.ah = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.ah, ptr %i.r, align 8, !alias.scope !5619, !noalias !5616
  %.not.i.1 = icmp eq i8 %i.ag, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !27

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5620)
  %exitcond.not.i.2 = icmp eq i64 %i.ah, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !5621, !noundef !6
  %i.ak = add i64 %i.s, 4
  store i64 %i.ak, ptr %i.r, align 8, !alias.scope !5622, !noalias !5616
  %.not.i.2 = icmp eq i8 %i.aj, 108
  br i1 %.not.i.2, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit, label %bb.j, !prof !27

_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5623
  store i64 5, ptr %i.f, align 8, !noalias !5623
  %i.al = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !5612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5623
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5623
  store i64 9, ptr %i.e, align 8, !noalias !5623
  %i.am = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !5612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5623
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.an = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.an, ptr %i.r, align 8, !alias.scope !5624
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5625)
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !5625, !noalias !5626, !nonnull !6 ; 3 uses
  %umax.i24 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.an)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5627)
  %exitcond.not.i26.not = icmp ult i64 %i.an, %i.u
  br i1 %exitcond.not.i26.not, label %bb.l, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !5628, !noundef !6
  %i.ar = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ar, ptr %i.r, align 8, !alias.scope !5629, !noalias !5630
  %.not.i27 = icmp eq i8 %i.aq, 114
  br i1 %.not.i27, label %bb.m, label %bb.q, !prof !27

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5631)
  %exitcond.not.i26.1 = icmp eq i64 %i.u, %i.ar
  br i1 %exitcond.not.i26.1, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !5632, !noundef !6
  %i.au = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.au, ptr %i.r, align 8, !alias.scope !5633, !noalias !5630
  %.not.i27.1 = icmp eq i8 %i.at, 117
  br i1 %.not.i27.1, label %bb.o, label %bb.q, !prof !27

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5634)
  %exitcond.not.i26.2 = icmp eq i64 %i.au, %umax.i24
  br i1 %exitcond.not.i26.2, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !5635, !noundef !6
  %i.ax = add i64 %i.s, 4
  store i64 %i.ax, ptr %i.r, align 8, !alias.scope !5636, !noalias !5630
  %.not.i27.2 = icmp eq i8 %i.aw, 101
  br i1 %.not.i27.2, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit30, label %bb.q, !prof !27

_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29: ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5637
  store i64 5, ptr %i.d, align 8, !noalias !5637
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !5626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5637
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5637
  store i64 9, ptr %i.c, align 8, !noalias !5637
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !5626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5637
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.thread

bb.r:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.ba, ptr %i.r, align 8, !alias.scope !5638
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5639)
  %i.bb = load ptr, ptr %i.q, align 8, !alias.scope !5639, !noalias !5640, !nonnull !6 ; 4 uses
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.ba) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5641)
  %exitcond.not.i34.not = icmp ult i64 %i.ba, %i.u
  br i1 %exitcond.not.i34.not, label %bb.s, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !5642, !noundef !6
  %i.be = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.be, ptr %i.r, align 8, !alias.scope !5643, !noalias !5644
  %.not.i35 = icmp eq i8 %i.bd, 97
  br i1 %.not.i35, label %bb.t, label %bb.z, !prof !27

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5645)
  %exitcond.not.i34.1 = icmp eq i64 %i.u, %i.be
  br i1 %exitcond.not.i34.1, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !5646, !noundef !6
  %i.bh = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.bh, ptr %i.r, align 8, !alias.scope !5647, !noalias !5644
  %.not.i35.1 = icmp eq i8 %i.bg, 108
  br i1 %.not.i35.1, label %bb.v, label %bb.z, !prof !27

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5648)
  %exitcond.not.i34.2 = icmp eq i64 %i.bh, %umax.i32
  br i1 %exitcond.not.i34.2, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !5649, !noundef !6
  %i.bk = add i64 %i.s, 4                         ; 3 uses
  store i64 %i.bk, ptr %i.r, align 8, !alias.scope !5650, !noalias !5644
  %.not.i35.2 = icmp eq i8 %i.bj, 115
  br i1 %.not.i35.2, label %bb.x, label %bb.z, !prof !27

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5651)
  %exitcond.not.i34.3 = icmp eq i64 %i.bk, %umax.i32
  br i1 %exitcond.not.i34.3, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !5652, !noundef !6
  %i.bn = add i64 %i.s, 5
  store i64 %i.bn, ptr %i.r, align 8, !alias.scope !5653, !noalias !5644
  %.not.i35.3 = icmp eq i8 %i.bm, 101
  br i1 %.not.i35.3, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit38, label %bb.z, !prof !27

_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37: ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5654
  store i64 5, ptr %i.b, align 8, !noalias !5654
  %i.bo = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !5640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5654
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5654
  store i64 9, ptr %i.a, align 8, !noalias !5654
  %i.bp = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !5640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5654
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.thread

bb.aa:                                            ; preds = %bb.b
  %i.bq = add nuw i64 %i.s, 1
  store i64 %i.bq, ptr %i.r, align 8, !alias.scope !5655
  call fastcc void @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  %i.br = load i64, ptr %i.m, align 8, !range !18, !noundef !6
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !15

bb.ab:                                            ; preds = %bb.b
  %i.bt = add nuw i64 %i.s, 1
  store i64 %i.bt, ptr %i.r, align 8, !alias.scope !5656
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.bv = load i64, ptr %i.k, align 8, !range !25, !noundef !6
  %i.bw = icmp eq i64 %i.bv, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !6, !noundef !6 ; 2 uses
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !15

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 8
  %i.bz = call noundef nonnull align 8 ptr @_RNvXs6_NtCs2xcxdQoJA8F_10serde_json5errorNtB5_5ErrorNtNtCs7N5MyPZKytm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 11, ptr %i.h, align 8
  %i.ca = call noundef nonnull align 8 ptr @_RNvXs6_NtCs2xcxdQoJA8F_10serde_json5errorNtB5_5ErrorNtNtCs7N5MyPZKytm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 7, ptr %i.p, align 8
  %i.cb = call noundef nonnull align 8 ptr @_RNvXs6_NtCs2xcxdQoJA8F_10serde_json5errorNtB5_5ErrorNtNtCs7N5MyPZKytm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread64, %bb.ai, %bb.ag, %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit38, %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit30, %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit, %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cs, %bb.al ], [ %i.cn, %.thread64 ], [ %i.cb, %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit ], [ %i.ce, %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit30 ], [ %i.cg, %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit38 ], [ %i.cj, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ]
  %i.cc = call noundef nonnull align 8 ptr @_RINvMs0_NtCs2xcxdQoJA8F_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECs1hTjP0dFAwJ_12fontc_crater(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noundef nonnull readonly align 8 dereferenceable(56) %0)
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.thread

_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit30: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 1, ptr %i.cd, align 1
  store i8 0, ptr %i.o, align 8
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs6_NtCs2xcxdQoJA8F_10serde_json5errorNtB5_5ErrorNtNtCs7N5MyPZKytm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit38: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.cf, align 1
  store i8 0, ptr %i.n, align 8
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs6_NtCs2xcxdQoJA8F_10serde_json5errorNtB5_5ErrorNtNtCs7N5MyPZKytm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !6, !align !13, !noundef !6
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.thread

bb.ag:                                            ; preds = %bb.aa
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs2_NtCs2xcxdQoJA8F_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.thread

bb.ai:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.by, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.cl, align 8
  store i8 5, ptr %i.j, align 8
  %i.cm = call noundef nonnull align 8 ptr @_RNvXs6_NtCs2xcxdQoJA8F_10serde_json5errorNtB5_5ErrorNtNtCs7N5MyPZKytm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

.thread64:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cn = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call fastcc void @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.l, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext true)
  %i.co = load i64, ptr %i.l, align 8, !range !18, !noundef !6
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %bb.ak, label %bb.al, !prof !15

bb.ak:                                            ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !6, !align !13, !noundef !6
  br label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs2_NtCs2xcxdQoJA8F_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1hTjP0dFAwJ_12fontc_crater.exit.thread: ; preds = %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, %bb.z, %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, %bb.q, %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cc, %bb.ae ], [ %i.cr, %bb.ak ], [ %i.by, %bb.ah ], [ %i.az, %bb.q ], [ %i.am, %bb.j ], [ %i.ci, %bb.af ], [ %i.al, %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i ], [ %i.ay, %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29 ], [ %i.bo, %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37 ], [ %i.bp, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE18parse_long_integerCs1hTjP0dFAwJ_12fontc_crater(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef range(i64 1844674407370955161, 0) %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !5665, !noalias !5666, !noundef !6 ; 3 uses
  %.promoted = load i64, ptr %i.c, align 8        ; 3 uses
  %i.f = icmp ult i64 %.promoted, %i.e
  br i1 %i.f, label %_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph, label %.thread

_RNvXs5_NtCs2xcxdQoJA8F_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !5665, !noalias !5666, !nonnull !6, !noundef !6
  %i.i = trunc i64 %i.e to i32
end_hunk_8
begin_hunk_9_@_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_mapCs1hTjP0dFAwJ_12fontc_crater:bb.a
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 125, label %bb.e
    i8 44, label %bb.f
  ], !prof !17

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !5713, !noalias !5710
  %exitcond.not.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 3, ptr %i.a, align 8
  %i.n = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 22, ptr %i.b, align 8
  %i.o = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.p = add i64 %i.j, 1
  store i64 %i.p, ptr %i.d, align 8, !alias.scope !5714
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 21, ptr %i.c, align 8
  %i.q = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.d, %bb.e, %bb.f
  %.sroa.0.0 = phi ptr [ %i.o, %bb.d ], [ null, %bb.e ], [ %i.q, %bb.f ], [ %i.n, %.loopexit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_seqCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5735)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !5736, !noalias !5737, !noundef !6 ; 4 uses
  %.promoted.i = load i64, ptr %i.e, align 8, !alias.scope !5735, !noalias !5738 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i, %i.g
  br i1 %i.h, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !5736, !noalias !5737, !nonnull !6, !noundef !6 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.k = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.n, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5739)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !5740, !noundef !6
  switch i8 %i.m, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 93, label %bb.e
    i8 44, label %bb.f
  ], !prof !17

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.n = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !5741, !noalias !5738
  %exitcond.not.i = icmp eq i64 %i.n, %i.g
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 2, ptr %i.a, align 8
  %i.o = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs2xcxdQoJA8F_10serde_json5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit17

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 22, ptr %i.b, align 8
  %i.p = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs2xcxdQoJA8F_10serde_json5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit17

bb.e:                                             ; preds = %bb.b
  %i.q = add i64 %i.k, 1
  store i64 %i.q, ptr %i.e, align 8, !alias.scope !5742
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs2xcxdQoJA8F_10serde_json5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit17

bb.f:                                             ; preds = %bb.b
  %i.r = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.r, ptr %i.e, align 8, !alias.scope !5743
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5744)
  %i.s = icmp ult i64 %i.r, %i.g
  br i1 %i.s, label %.lr.ph.i12, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit16.thread

.lr.ph.i12:                                       ; preds = %bb.f, %bb.g
  %i.t = phi i64 [ %i.w, %bb.g ], [ %i.r, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !noalias !5745, !noundef !6
  switch i8 %i.v, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit16.thread [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 93, label %bb.h
  ]

bb.g:                                             ; preds = %.lr.ph.i12, %.lr.ph.i12, %.lr.ph.i12, %.lr.ph.i12
  %i.w = add i64 %i.t, 1                          ; 3 uses
  store i64 %i.w, ptr %i.e, align 8, !alias.scope !5746, !noalias !5747
  %exitcond.not.i13 = icmp eq i64 %i.w, %i.g
  br i1 %exitcond.not.i13, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit16.thread, label %.lr.ph.i12

_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit16.thread: ; preds = %.lr.ph.i12, %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 22, ptr %i.c, align 8
  %i.x = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs2xcxdQoJA8F_10serde_json5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit17

bb.h:                                             ; preds = %.lr.ph.i12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 21, ptr %i.d, align 8
  %i.y = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs2xcxdQoJA8F_10serde_json5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit17

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs2xcxdQoJA8F_10serde_json5error5ErrorEECs1hTjP0dFAwJ_12fontc_crater.exit17: ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit16.thread, %bb.h, %.loopexit, %bb.d, %bb.e
  %.sroa.0.0 = phi ptr [ %i.p, %bb.d ], [ null, %bb.e ], [ %i.o, %.loopexit ], [ %i.x, %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit16.thread ], [ %i.y, %bb.h ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXsc_NtCs2xcxdQoJA8F_10serde_json2deINtB5_13VariantAccessNtNtB7_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de13VariantAccess12unit_variantCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5777)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !5778, !noalias !5779, !noundef !6 ; 4 uses
  %.promoted.i.i = load i64, ptr %i.e, align 8, !alias.scope !5780, !noalias !5781 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i.i, %i.g
  br i1 %i.h, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !5778, !noalias !5779, !nonnull !6, !noundef !6 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.k = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.n, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5783)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !5784, !noundef !6
  switch i8 %i.m, label %bb.k [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.d
  ], !prof !23

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.n = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !5785, !noalias !5781
  %exitcond.not.i.i = icmp eq i64 %i.n, %i.g
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5776
  store i64 5, ptr %i.d, align 8, !noalias !5776
  %i.o = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5776
  br label %_RINvXs5_NtCs2xcxdQoJA8F_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer16deserialize_unitNtNtB1j_5impls11UnitVisitorECs1hTjP0dFAwJ_12fontc_crater.exit

bb.d:                                             ; preds = %bb.b
  %i.p = add i64 %i.k, 1                          ; 4 uses
  store i64 %i.p, ptr %i.e, align 8, !alias.scope !5786
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5787)
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.p) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5789)
  %exitcond.not.i9.not.i = icmp ult i64 %i.p, %i.g
  br i1 %exitcond.not.i9.not.i, label %bb.e, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !noalias !5790, !noundef !6
  %i.s = add i64 %i.k, 2                          ; 3 uses
  store i64 %i.s, ptr %i.e, align 8, !alias.scope !5791, !noalias !5792
  %.not.i.i = icmp eq i8 %i.r, 117
  br i1 %.not.i.i, label %bb.f, label %bb.j, !prof !27

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5793)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5794)
  %exitcond.not.i9.1.i = icmp eq i64 %i.s, %umax.i.i
  br i1 %exitcond.not.i9.1.i, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !noalias !5795, !noundef !6
  %i.v = add i64 %i.k, 3                          ; 3 uses
  store i64 %i.v, ptr %i.e, align 8, !alias.scope !5796, !noalias !5792
  %.not.i.1.i = icmp eq i8 %i.u, 108
  br i1 %.not.i.1.i, label %bb.h, label %bb.j, !prof !27

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5798)
  %exitcond.not.i9.2.i = icmp eq i64 %i.v, %umax.i.i
  br i1 %exitcond.not.i9.2.i, label %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !5799, !noundef !6
  %i.y = add i64 %i.k, 4
  store i64 %i.y, ptr %i.e, align 8, !alias.scope !5800, !noalias !5792
  %.not.i.2.i = icmp eq i8 %i.x, 108
  br i1 %.not.i.2.i, label %_RINvXs5_NtCs2xcxdQoJA8F_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer16deserialize_unitNtNtB1j_5impls11UnitVisitorECs1hTjP0dFAwJ_12fontc_crater.exit, label %bb.j, !prof !27

_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5801
  store i64 5, ptr %i.c, align 8, !noalias !5801
  %i.z = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !5802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5801
  br label %_RINvXs5_NtCs2xcxdQoJA8F_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer16deserialize_unitNtNtB1j_5impls11UnitVisitorECs1hTjP0dFAwJ_12fontc_crater.exit

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5801
  store i64 9, ptr %i.b, align 8, !noalias !5801
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !5802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5801
  br label %_RINvXs5_NtCs2xcxdQoJA8F_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer16deserialize_unitNtNtB1j_5impls11UnitVisitorECs1hTjP0dFAwJ_12fontc_crater.exit

bb.k:                                             ; preds = %bb.b
  %i.ab = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @71)
  %i.ac = call noundef nonnull align 8 ptr @_RINvMs0_NtCs2xcxdQoJA8F_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECs1hTjP0dFAwJ_12fontc_crater(ptr noalias noundef nonnull align 8 %i.ab, ptr noundef nonnull readonly align 8 dereferenceable(56) %0)
  br label %_RINvXs5_NtCs2xcxdQoJA8F_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer16deserialize_unitNtNtB1j_5impls11UnitVisitorECs1hTjP0dFAwJ_12fontc_crater.exit

_RINvXs5_NtCs2xcxdQoJA8F_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer16deserialize_unitNtNtB1j_5impls11UnitVisitorECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %.loopexit.i, %bb.i, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, %bb.j, %bb.k
  %.sroa.0.2.i = phi ptr [ %i.o, %.loopexit.i ], [ %i.aa, %bb.j ], [ %i.ac, %bb.k ], [ %i.z, %_RNvXs8_NtCs2xcxdQoJA8F_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i ], [ null, %bb.i ]
  ret ptr %.sroa.0.2.i
}

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNvXs16_NtNtCs7N5MyPZKytm_10serde_core2de5implsmNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor9visit_f64NtNtCs2xcxdQoJA8F_10serde_json5error5ErrorECs1hTjP0dFAwJ_12fontc_crater(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), double noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs7N5MyPZKytm_10serde_core2deNtNvXs16_NtB4_5implsmNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs7N5MyPZKytm_10serde_core2deNtNvXs1d_NtB4_5implsfNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvCs1hTjP0dFAwJ_12fontc_craters_1__INtB5_7ResultsNtNtB5_15ttx_diff_runner10DiffOutputNtBS_9DiffErrorENtNtCs7N5MyPZKytm_10serde_core2de11Deserialize11deserializeQINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtB2J_4read7StrReadEEB5_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsh_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1hTjP0dFAwJ_12fontc_crater2ci10RunSummaryENtB8_11Deserialize11deserializeQINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtB2D_4read7StrReadEEB1k_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs3f_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBT_6string6StringB1J_ENtB9_11Deserialize11deserializeQINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtB2K_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs3f_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBT_3vec3VecNtNtNtB1N_2ci4html10AnnotationEENtB9_11Deserialize11deserializeQINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtB3Q_4read7StrReadEEB1N_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs3f_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtBT_6string6StringENtB9_11Deserialize11deserializeQINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtB3f_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvCs8toYegCbHEN_20google_fonts_sourcess_1__NtB5_9SourceSetNtNtCs7N5MyPZKytm_10serde_core2de11Deserialize11deserializeQINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtB22_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runners2_1__NtB5_13RawDiffOutputNtNtCs7N5MyPZKytm_10serde_core2de11Deserialize11deserializeQINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtB2j_4read9SliceReadEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs1hTjP0dFAwJ_12fontc_crater2ci10RunSummaryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs8toYegCbHEN_20google_fonts_sources11font_source10FontSourceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1hTjP0dFAwJ_12fontc_crater2ci4html10AnnotationENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs7N5MyPZKytm_10serde_core7private7content7ContentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtNtCs7N5MyPZKytm_10serde_core7private7content7ContentBG_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs1hTjP0dFAwJ_12fontc_crater2ci10RunSummaryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs8toYegCbHEN_20google_fonts_sources11font_source10FontSourceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1hTjP0dFAwJ_12fontc_crater2ci4html10AnnotationENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7N5MyPZKytm_10serde_core7private7content7ContentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs7N5MyPZKytm_10serde_core7private7content7ContentBN_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringB14_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtB8_3vec3VecNtNtNtB18_2ci4html10AnnotationEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtB18_15ttx_diff_runner10DiffOutputENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtB18_15ttx_diff_runner9DiffErrorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtB8_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs6_NtCs2xcxdQoJA8F_10serde_json5errorNtB5_5ErrorNtNtCs7N5MyPZKytm_10serde_core2de5Error13invalid_value(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringB17_E6insertCs1hTjP0dFAwJ_12fontc_crater(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueE6insertB1w_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBb_3vec3VecNtNtNtB1b_2ci4html10AnnotationEE6insertB1b_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(104), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtB1b_15ttx_diff_runner10DiffOutputE6insertB1b_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(104), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtB1b_15ttx_diff_runner9DiffErrorE6insertB1b_(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(104), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

end_hunk_9
