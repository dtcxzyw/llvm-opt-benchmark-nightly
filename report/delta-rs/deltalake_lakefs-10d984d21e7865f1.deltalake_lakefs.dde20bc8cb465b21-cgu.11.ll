inline.NumInlined: 364
inline.NumDeleted: 128
begin_hunk_0_@_RINvNvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9MapAccesspENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 17, ptr %i.e, align 8
  %i.ap = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.j, %.loopexit22, %bb.d
  %.sink = phi i8 [ 1, %.loopexit ], [ 1, %bb.k ], [ 0, %bb.l ], [ 1, %bb.m ], [ 0, %bb.n ], [ 1, %bb.o ], [ 1, %bb.j ], [ 1, %.loopexit22 ], [ 0, %bb.d ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9MapAccesspENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read9SliceReadECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !3, !align !25, !noundef !3 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !176, !noalias !179, !noundef !3 ; 4 uses
  %.promoted.i = load i64, ptr %i.h, align 8, !alias.scope !173, !noalias !182 ; 2 uses
  %i.k = icmp ult i64 %.promoted.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %.loopexit22

.lr.ph.i:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !176, !noalias !179, !nonnull !3, !noundef !3 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.n = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.q, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !184, !noundef !3 ; 3 uses
  switch i8 %i.p, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 125, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.q = add i64 %i.n, 1                          ; 3 uses
  store i64 %i.q, ptr %i.h, align 8, !alias.scope !185, !noalias !182
  %exitcond.not.i = icmp eq i64 %i.q, %i.j
  br i1 %exitcond.not.i, label %.loopexit22, label %bb.b

.loopexit22:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 3, ptr %i.f, align 8
  %i.r = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f)
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
  %i.v = load i8, ptr %i.u, align 8, !range !117, !noundef !3
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i8 %i.p, 44
  br i1 %i.x, label %bb.h, label %bb.j, !prof !118

bb.g:                                             ; preds = %bb.e
  store i8 0, ptr %i.u, align 8
  %i.y = icmp eq i8 %i.p, 34
  br i1 %i.y, label %bb.n, label %bb.o, !prof !118

bb.h:                                             ; preds = %bb.f
  %i.z = add i64 %i.n, 1                          ; 3 uses
  store i64 %i.z, ptr %i.h, align 8, !alias.scope !188
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.aa = icmp ult i64 %i.z, %i.j
  br i1 %i.aa, label %.lr.ph.i7, label %.loopexit

.lr.ph.i7:                                        ; preds = %bb.h, %bb.i
  %i.ab = phi i64 [ %i.ae, %bb.i ], [ %i.z, %bb.h ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !194, !noundef !3
  switch i8 %i.ad, label %bb.k [
    i8 32, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
    i8 34, label %bb.l
    i8 125, label %bb.m
  ], !prof !168

bb.i:                                             ; preds = %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7
  %i.ae = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.ae, ptr %i.h, align 8, !alias.scope !199, !noalias !202
  %exitcond.not.i8 = icmp eq i64 %i.ae, %i.j
  br i1 %exitcond.not.i8, label %.loopexit, label %.lr.ph.i7

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 8, ptr %i.a, align 8
  %i.af = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  br label %bb.p

.loopexit:                                        ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 5, ptr %i.b, align 8
  %i.ah = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.ai, align 8
  br label %bb.p

bb.k:                                             ; preds = %.lr.ph.i7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 17, ptr %i.c, align 8
  %i.aj = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
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
  %i.am = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
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
  %i.ap = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
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
define internal fastcc void @_RINvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB5_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 13 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 6 uses
  %i.aa = alloca [40 x i8], align 8               ; 10 uses
  %i.ab = alloca [32 x i8], align 8               ; 14 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [32 x i8], align 8               ; 9 uses
  %i.ae = alloca [40 x i8], align 8               ; 15 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 7 uses
  %i.ah = alloca [16 x i8], align 8               ; 6 uses
  %i.ai = alloca [16 x i8], align 8               ; 6 uses
  %.sroa.22 = alloca [6 x i8], align 2            ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 31 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !211, !noalias !216, !noundef !3 ; 10 uses
  %.promoted.i47 = load i64, ptr %i.ak, align 8, !alias.scope !208, !noalias !220 ; 2 uses
  %i.an = icmp ult i64 %.promoted.i47, %i.am
  br i1 %i.an, label %.lr.ph.i, label %.loopexit150

.lr.ph.i:                                         ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !211, !noalias !216, !nonnull !3, !noundef !3 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.aq = phi i64 [ %.promoted.i47, %.lr.ph.i ], [ %i.at, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221), !noalias !203
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222), !noalias !203
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !noalias !223, !noundef !3 ; 3 uses
  switch i8 %i.as, label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsj34PGqTgg0L_16deltalake_lakefs.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.at = add i64 %i.aq, 1                        ; 3 uses
  store i64 %i.at, ptr %i.ak, align 8, !alias.scope !224, !noalias !220
  %exitcond.not.i48 = icmp eq i64 %i.at, %i.am
  br i1 %exitcond.not.i48, label %.loopexit150, label %bb.b

_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22)
  switch i8 %i.as, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.m
    i8 102, label %bb.u
    i8 45, label %bb.ae
    i8 34, label %bb.af
    i8 91, label %bb.ag
    i8 123, label %bb.ah
  ]

.loopexit150:                                     ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !227
  store i64 5, ptr %i.aj, align 8, !noalias !227
  %i.au = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aj), !noalias !203, !inline_history !228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !227
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.av, align 8, !alias.scope !203, !noalias !206
  store i8 6, ptr %0, align 8, !alias.scope !203, !noalias !206
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.d:                                             ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.aw = add i8 %i.as, -48
  %or.cond8.i = icmp ult i8 %i.aw, 10
  br i1 %or.cond8.i, label %bb.ct, label %bb.cs, !prof !229

bb.e:                                             ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.ax = add i64 %i.aq, 1                        ; 4 uses
  store i64 %i.ax, ptr %i.ak, align 8, !alias.scope !230, !noalias !203
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %umax.i40 = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.am) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236), !noalias !203
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239), !noalias !203
  %exitcond.not.i42.not = icmp ult i64 %i.ax, %i.am
  br i1 %exitcond.not.i42.not, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noalias !242, !noundef !3
  %i.ba = add i64 %i.aq, 2                        ; 3 uses
  store i64 %i.ba, ptr %i.ak, align 8, !alias.scope !246, !noalias !247
  %.not.i43 = icmp eq i8 %i.az, 117
  br i1 %.not.i43, label %bb.g, label %bb.l, !prof !248

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249), !noalias !203
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251), !noalias !203
  %exitcond.not.i42.1 = icmp eq i64 %i.ba, %umax.i40
  br i1 %exitcond.not.i42.1, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !253, !noundef !3
  %i.bd = add i64 %i.aq, 3                        ; 3 uses
  store i64 %i.bd, ptr %i.ak, align 8, !alias.scope !254, !noalias !247
  %.not.i43.1 = icmp eq i8 %i.bc, 108
  br i1 %.not.i43.1, label %bb.i, label %bb.l, !prof !248

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255), !noalias !203
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257), !noalias !203
  %exitcond.not.i42.2 = icmp eq i64 %i.bd, %umax.i40
  br i1 %exitcond.not.i42.2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !259, !noundef !3
  %i.bg = add i64 %i.aq, 4
  store i64 %i.bg, ptr %i.ak, align 8, !alias.scope !260, !noalias !247
  %.not.i43.2 = icmp eq i8 %i.bf, 108
  br i1 %.not.i43.2, label %.thread, label %bb.l, !prof !248

bb.k:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !261
  store i64 5, ptr %i.i, align 8, !noalias !261
  %i.bh = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i), !noalias !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !261
  br label %bb.ai

bb.l:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !261
  store i64 9, ptr %i.h, align 8, !noalias !261
  %i.bi = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h), !noalias !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !261
  br label %bb.ai

bb.m:                                             ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.bj = add i64 %i.aq, 1                        ; 4 uses
  store i64 %i.bj, ptr %i.ak, align 8, !alias.scope !263, !noalias !203
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.bj, i64 %i.am) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269), !noalias !203
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272), !noalias !203
  %exitcond.not.i34.not = icmp ult i64 %i.bj, %i.am
  br i1 %exitcond.not.i34.not, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !275, !noundef !3
  %i.bm = add i64 %i.aq, 2                        ; 3 uses
  store i64 %i.bm, ptr %i.ak, align 8, !alias.scope !279, !noalias !280
  %.not.i35 = icmp eq i8 %i.bl, 114
  br i1 %.not.i35, label %bb.o, label %bb.t, !prof !248

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281), !noalias !203
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283), !noalias !203
  %exitcond.not.i34.1 = icmp eq i64 %i.bm, %umax.i32
  br i1 %exitcond.not.i34.1, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !285, !noundef !3
  %i.bp = add i64 %i.aq, 3                        ; 3 uses
  store i64 %i.bp, ptr %i.ak, align 8, !alias.scope !286, !noalias !280
  %.not.i35.1 = icmp eq i8 %i.bo, 117
  br i1 %.not.i35.1, label %bb.q, label %bb.t, !prof !248

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287), !noalias !203
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289), !noalias !203
  %exitcond.not.i34.2 = icmp eq i64 %i.bp, %umax.i32
  br i1 %exitcond.not.i34.2, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !291, !noundef !3
  %i.bs = add i64 %i.aq, 4
  store i64 %i.bs, ptr %i.ak, align 8, !alias.scope !292, !noalias !280
  %.not.i35.2 = icmp eq i8 %i.br, 101
  br i1 %.not.i35.2, label %.thread, label %bb.t, !prof !248

bb.s:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !293
  store i64 5, ptr %i.k, align 8, !noalias !293
  %i.bt = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !noalias !294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !293
  br label %bb.al

bb.t:                                             ; preds = %bb.r, %bb.p, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !293
  store i64 9, ptr %i.j, align 8, !noalias !293
  %i.bu = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !293
  br label %bb.al

bb.u:                                             ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.bv = add i64 %i.aq, 1                        ; 4 uses
  store i64 %i.bv, ptr %i.ak, align 8, !alias.scope !295, !noalias !203
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 %i.am) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301), !noalias !203
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304), !noalias !203
  %exitcond.not.i.not = icmp ult i64 %i.bv, %i.am
  br i1 %exitcond.not.i.not, label %bb.v, label %bb.ac
end_hunk_0
begin_hunk_1_@_RINvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB5_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECsj34PGqTgg0L_16deltalake_lakefs:bb.a
          to label %bb.cb unwind label %bb.cc, !noalias !203

bb.bz:                                            ; preds = %.lr.ph.i12.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !453
  store i64 21, ptr %i.t, align 8, !noalias !453
  %i.gj = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.t)
          to label %bb.ca unwind label %bb.cc, !noalias !203

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !453
  br label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.cb:                                            ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsj34PGqTgg0L_16deltalake_lakefs.exit16.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !453
  br label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.cc:                                            ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsj34PGqTgg0L_16deltalake_lakefs.exit16.thread.i, %bb.bz
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cd:                                            ; preds = %bb.bw, %.loopexit.i5
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.cc, %bb.cd
  %eh.lpad-body = phi { ptr, i32 } [ %i.gl, %bb.cd ], [ %i.gk, %bb.cc ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtNtB16_5error5ErrorEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %i.ad) #20
          to label %common.resume unwind label %bb.cf, !noalias !203, !inline_history !228

_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %.noexc10, %.noexc9, %bb.ca, %bb.cb
  %.sroa.0.0.i6 = phi ptr [ %i.gb, %.noexc10 ], [ %i.gj, %bb.ca ], [ %i.ga, %.noexc9 ], [ %i.gi, %bb.cb ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false), !noalias !227
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store ptr %.sroa.0.0.i6, ptr %i.gm, align 8, !noalias !227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !227
  %i.gn = load i8, ptr %i.ae, align 8, !range !11, !noalias !227, !noundef !3
  %i.go = icmp eq i8 %i.gn, 6
  br i1 %i.go, label %bb.cg, label %bb.ce

_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsj34PGqTgg0L_16deltalake_lakefs.exit.thread: ; preds = %bb.bu
  %i.gp = add i64 %i.fw, 1
  store i64 %i.gp, ptr %i.ak, align 8, !alias.scope !472, !noalias !203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false), !noalias !227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !227
  %i.gq = load i8, ptr %i.ae, align 8, !range !11, !noalias !227, !noundef !3 ; 2 uses
  %i.gr = icmp eq i8 %i.gq, 6
  br i1 %i.gr, label %.thread220, label %.thread218

.thread220:                                       ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsj34PGqTgg0L_16deltalake_lakefs.exit.thread
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !noalias !227, !nonnull !3, !align !25, !noundef !3
  %i.gu = ptrtoint ptr %i.gt to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %.thread140

.thread218:                                       ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsj34PGqTgg0L_16deltalake_lakefs.exit.thread
  %.sroa.20.0..sroa_idx257 = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %.sroa.20.0.copyload258 = load i8, ptr %.sroa.20.0..sroa_idx257, align 1, !noalias !227
  %.sroa.22.0..sroa_idx261 = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.22, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.22.0..sroa_idx261, i64 6, i1 false), !noalias !227
  %.sroa.22263.0..sroa_idx264 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.22263.0.copyload265 = load i64, ptr %.sroa.22263.0..sroa_idx264, align 8, !noalias !227
  %.sroa.33.0..sroa_idx268 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.33.0.copyload269 = load i64, ptr %.sroa.33.0..sroa_idx268, align 8, !noalias !227
  %.sroa.37.0..sroa_idx272 = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.37.0.copyload273 = load i64, ptr %.sroa.37.0..sroa_idx272, align 8, !noalias !227
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %.thread140

bb.ce:                                            ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.gv = ptrtoint ptr %.sroa.0.0.i6 to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %i.ae), !noalias !203, !inline_history !228
  br label %.thread140

bb.cf:                                            ; preds = %bb.co, %.body
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19, !noalias !203, !inline_history !228
  unreachable

.thread140:                                       ; preds = %.thread220, %.thread218, %bb.ce, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit3
  %.sroa.37.2 = phi i64 [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit3 ], [ undef, %bb.ce ], [ undef, %.thread220 ], [ %.sroa.37.0.copyload273, %.thread218 ]
  %.sroa.33.2 = phi i64 [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit3 ], [ undef, %bb.ce ], [ undef, %.thread220 ], [ %.sroa.33.0.copyload269, %.thread218 ]
  %.sroa.22263.2 = phi i64 [ %i.ha, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit3 ], [ %i.gv, %bb.ce ], [ %i.gu, %.thread220 ], [ %.sroa.22263.0.copyload265, %.thread218 ]
  %.sroa.20.1 = phi i8 [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit3 ], [ undef, %bb.ce ], [ undef, %.thread220 ], [ %.sroa.20.0.copyload258, %.thread218 ]
  %.sroa.0.2 = phi i8 [ 6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit3 ], [ 6, %bb.ce ], [ 6, %.thread220 ], [ %i.gq, %.thread218 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !227
  br label %bb.aj

bb.cg:                                            ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !noalias !227, !nonnull !3, !align !25, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorCodeECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %.sroa.0.0.i6)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit3 unwind label %bb.ch, !noalias !203

bb.ch:                                            ; preds = %bb.cg
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit3: ; preds = %bb.cg
  %i.ha = ptrtoint ptr %i.gy to i64
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i6, i64 noundef 40, i64 noundef 8) #18, !noalias !203
  br label %.thread140

bb.ci:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !227
  store i64 24, ptr %i.ac, align 8, !noalias !227
  %i.hb = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ac), !noalias !203, !inline_history !228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !227
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hb, ptr %i.hc, align 8, !alias.scope !203, !noalias !206
  store i8 6, ptr %0, align 8, !alias.scope !203, !noalias !206
  br label %bb.ak

bb.cj:                                            ; preds = %bb.ah
  %i.hd = add i64 %i.aq, 1
  store i64 %i.hd, ptr %i.ak, align 8, !alias.scope !475, !noalias !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !227
  call void @_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext true), !noalias !203, !inline_history !228
  %i.he = load i8, ptr %i.cy, align 8, !alias.scope !206, !noalias !203, !noundef !3
  %i.hf = add i8 %i.he, 1
  store i8 %i.hf, ptr %i.cy, align 8, !alias.scope !206, !noalias !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !227
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false), !noalias !227
  call void @llvm.experimental.noalias.scope.decl(metadata !478)
  call void @llvm.experimental.noalias.scope.decl(metadata !481), !noalias !203
  %i.hg = load i64, ptr %i.al, align 8, !alias.scope !484, !noalias !489, !noundef !3 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.ak, align 8, !alias.scope !493, !noalias !494 ; 2 uses
  %i.hh = icmp ult i64 %.promoted.i.i, %i.hg
  br i1 %i.hh, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.cj
  %i.hi = load ptr, ptr %i.ao, align 8, !alias.scope !484, !noalias !489, !nonnull !3, !noundef !3
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cl, %.lr.ph.i.i
  %i.hj = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.hm, %bb.cl ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !495), !noalias !203
  call void @llvm.experimental.noalias.scope.decl(metadata !496), !noalias !203
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !noalias !497, !noundef !3
  switch i8 %i.hl, label %bb.cm [
    i8 32, label %bb.cl
    i8 10, label %bb.cl
    i8 9, label %bb.cl
    i8 13, label %bb.cl
    i8 125, label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsj34PGqTgg0L_16deltalake_lakefs.exit.thread
    i8 44, label %bb.cn
  ], !prof !168

bb.cl:                                            ; preds = %bb.ck, %bb.ck, %bb.ck, %bb.ck
  %i.hm = add i64 %i.hj, 1                        ; 3 uses
  store i64 %i.hm, ptr %i.ak, align 8, !alias.scope !498, !noalias !494
  %exitcond.not.i.i = icmp eq i64 %i.hm, %i.hg
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.ck

.loopexit.i:                                      ; preds = %bb.cl, %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !501
  store i64 3, ptr %i.u, align 8, !noalias !501
  %i.hn = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u)
          to label %.noexc unwind label %bb.co

.noexc:                                           ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !501
  br label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !501
  store i64 22, ptr %i.v, align 8, !noalias !501
  %i.ho = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.v)
          to label %.noexc1 unwind label %bb.co

.noexc1:                                          ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !501
  br label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.cn:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !501
  store i64 21, ptr %i.w, align 8, !noalias !501
  %i.hp = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.w)
          to label %.noexc2 unwind label %bb.co

.noexc2:                                          ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !501
  br label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.co:                                            ; preds = %bb.cn, %bb.cm, %.loopexit.i
  %i.hq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtNtB16_5error5ErrorEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %i.z) #20
          to label %common.resume unwind label %bb.cf, !noalias !203, !inline_history !228

_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %.noexc2, %.noexc1, %.noexc
  %.sroa.0.0.i = phi ptr [ %i.ho, %.noexc1 ], [ %i.hn, %.noexc ], [ %i.hp, %.noexc2 ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 32, i1 false), !noalias !227
  %i.hr = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %.sroa.0.0.i, ptr %i.hr, align 8, !noalias !227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !227
  %i.hs = load i8, ptr %i.aa, align 8, !range !11, !noalias !227, !noundef !3
  %i.ht = icmp eq i8 %i.hs, 6
  br i1 %i.ht, label %bb.cq, label %bb.cp

_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsj34PGqTgg0L_16deltalake_lakefs.exit.thread: ; preds = %bb.ck
  %i.hu = add i64 %i.hj, 1
  store i64 %i.hu, ptr %i.ak, align 8, !alias.scope !502, !noalias !203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !227
  %i.hv = load i8, ptr %i.aa, align 8, !range !11, !noalias !227, !noundef !3
  %i.hw = icmp eq i8 %i.hv, 6
  br i1 %i.hw, label %.thread224, label %.thread222

.thread224:                                       ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsj34PGqTgg0L_16deltalake_lakefs.exit.thread
  %i.hx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !noalias !227, !nonnull !3, !align !25, !noundef !3
  %i.hz = ptrtoint ptr %i.hy to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !227
  br label %.thread143

.thread222:                                       ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsj34PGqTgg0L_16deltalake_lakefs.exit.thread
  %.sroa.0.0.copyload256 = load i8, ptr %i.ab, align 8
  %.sroa.20.0..sroa_idx259 = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %.sroa.20.0.copyload260 = load i8, ptr %.sroa.20.0..sroa_idx259, align 1
  %.sroa.22.0..sroa_idx262 = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.22, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.22.0..sroa_idx262, i64 6, i1 false)
  %.sroa.22263.0..sroa_idx266 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.22263.0.copyload267 = load i64, ptr %.sroa.22263.0..sroa_idx266, align 8
  %.sroa.33.0..sroa_idx270 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.33.0.copyload271 = load i64, ptr %.sroa.33.0..sroa_idx270, align 8
  %.sroa.37.0..sroa_idx274 = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.37.0.copyload275 = load i64, ptr %.sroa.37.0..sroa_idx274, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !227
  br label %.thread143

bb.cp:                                            ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.ia = ptrtoint ptr %.sroa.0.0.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !227
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %i.aa), !noalias !203, !inline_history !228
  br label %.thread143

.thread143:                                       ; preds = %.thread224, %.thread222, %bb.cp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit
  %.sroa.37.3 = phi i64 [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ undef, %bb.cp ], [ undef, %.thread224 ], [ %.sroa.37.0.copyload275, %.thread222 ]
  %.sroa.33.3 = phi i64 [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ undef, %bb.cp ], [ undef, %.thread224 ], [ %.sroa.33.0.copyload271, %.thread222 ]
  %.sroa.22263.3 = phi i64 [ %i.ie, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %i.ia, %bb.cp ], [ %i.hz, %.thread224 ], [ %.sroa.22263.0.copyload267, %.thread222 ]
  %.sroa.20.2 = phi i8 [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ undef, %bb.cp ], [ undef, %.thread224 ], [ %.sroa.20.0.copyload260, %.thread222 ]
  %.sroa.0.3 = phi i8 [ 6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ 6, %bb.cp ], [ 6, %.thread224 ], [ %.sroa.0.0.copyload256, %.thread222 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !227
  br label %bb.aj

bb.cq:                                            ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.ib = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !noalias !227, !nonnull !3, !align !25, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !227
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorCodeECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %.sroa.0.0.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.cr, !noalias !203

bb.cr:                                            ; preds = %bb.cq
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.cq
  %i.ie = ptrtoint ptr %i.ic to i64
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i, i64 noundef 40, i64 noundef 8) #18, !noalias !203
  br label %.thread143

bb.cs:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !227
  store i64 10, ptr %i.y, align 8, !noalias !227
  %i.if = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.y), !noalias !203, !inline_history !228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !227
  br label %bb.cu

bb.ct:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !227
  call fastcc void @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext true), !noalias !203, !inline_history !228
  %i.ig = load i64, ptr %i.ah, align 8, !range !336, !noalias !227, !noundef !3 ; 2 uses
  %i.ih = icmp eq i64 %i.ig, 3
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  br i1 %i.ih, label %bb.cv, label %bb.cw

bb.cu:                                            ; preds = %._crit_edge187, %bb.cs
  %i.ij = phi ptr [ %i.de, %._crit_edge187 ], [ %i.if, %bb.cs ]
  %i.ik = call noundef nonnull align 8 ptr @_RINvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 %i.ij, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1), !noalias !203
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ik, ptr %i.il, align 8, !alias.scope !203, !noalias !206
  store i8 6, ptr %0, align 8, !alias.scope !203, !noalias !206
  br label %bb.da

bb.cv:                                            ; preds = %bb.ct
  %i.im = load ptr, ptr %i.ii, align 8, !noalias !227, !nonnull !3, !align !25, !noundef !3
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.im, ptr %i.in, align 8, !alias.scope !203, !noalias !206
  store i8 6, ptr %0, align 8, !alias.scope !203, !noalias !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !227
  br label %bb.ak

bb.cw:                                            ; preds = %bb.ct
  %.sroa.459.0.copyload = load i64, ptr %i.ii, align 8, !noalias !227 ; 3 uses
  switch i64 %i.ig, label %default.unreachable367 [
    i64 0, label %bb.cx
    i64 1, label %_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit
    i64 2, label %bb.cz
  ]

bb.cx:                                            ; preds = %bb.cw
  %i.io = bitcast i64 %.sroa.459.0.copyload to double
  %i.ip = tail call double @llvm.fabs.f64(double %i.io)
  %i.iq = fcmp ueq double %i.ip, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !505
  br i1 %i.iq, label %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  store i8 0, ptr %i.x, align 8, !noalias !505
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.x), !noalias !511
  br label %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit.i

_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.cy, %bb.cx
  %.sroa.0.0.i.i = phi i8 [ 2, %bb.cy ], [ 0, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !505
  br label %_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.cz:                                            ; preds = %bb.cw
  %.lobit.i.i = lshr i64 %.sroa.459.0.copyload, 63
  br label %_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.cw, %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit.i, %bb.cz
  %.sroa.0.0.i.i.sink = phi i8 [ %.sroa.0.0.i.i, %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit.i ], [ 2, %bb.cz ], [ 2, %bb.cw ]
  %.sink254 = phi i64 [ 2, %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit.i ], [ %.lobit.i.i, %bb.cz ], [ 0, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !227
  br label %.thread

.thread:                                          ; preds = %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit, %_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit25, %_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.ab, %bb.r, %bb.j, %bb.aj
  %.sroa.37.4 = phi i64 [ %.sroa.37.0, %bb.aj ], [ undef, %bb.r ], [ undef, %bb.ab ], [ undef, %bb.j ], [ %.sroa.4.0.copyload.i, %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ undef, %_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit25 ], [ undef, %_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit ]
  %.sroa.33.4 = phi i64 [ %.sroa.33.0, %bb.aj ], [ undef, %bb.r ], [ undef, %bb.ab ], [ undef, %bb.j ], [ %.sroa.33.1, %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %.sroa.4.0.copyload, %_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit25 ], [ %.sroa.459.0.copyload, %_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit ]
  %.sroa.22263.4 = phi i64 [ %.sroa.22263.0, %bb.aj ], [ undef, %bb.r ], [ undef, %bb.ab ], [ undef, %bb.j ], [ %.sroa.22263.1, %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %.sink, %_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit25 ], [ %.sink254, %_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit ]
  %.sroa.20.3 = phi i8 [ %.sroa.20.0, %bb.aj ], [ 1, %bb.r ], [ 0, %bb.ab ], [ undef, %bb.j ], [ undef, %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ undef, %_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit25 ], [ undef, %_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit ]
  %.sroa.0.4 = phi i8 [ %.sroa.0.0, %bb.aj ], [ 1, %bb.r ], [ 1, %bb.ab ], [ 0, %bb.j ], [ 3, %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %.sroa.0.0.i.i21.sink, %_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit25 ], [ %.sroa.0.0.i.i.sink, %_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit ]
  store i8 %.sroa.0.4, ptr %0, align 8, !noalias !206
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.20.3, ptr %.sroa.20.0..sroa_idx, align 1, !noalias !206
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.22.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.22, i64 6, i1 false), !noalias !206
  %.sroa.22263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.22263.4, ptr %.sroa.22263.0..sroa_idx, align 8, !noalias !206
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.33.4, ptr %.sroa.33.0..sroa_idx, align 8, !noalias !206
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.37.4, ptr %.sroa.37.0..sroa_idx, align 8, !noalias !206
  br label %bb.da

bb.da:                                            ; preds = %.thread, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22)
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %.loopexit150, %bb.ak, %bb.da
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB5_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read9SliceReadEECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 12 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 5 uses
  %i.r = alloca [40 x i8], align 8                ; 12 uses
  %i.s = alloca [32 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [40 x i8], align 8                ; 12 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.20 = alloca [6 x i8], align 2            ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !523, !noalias !526, !noundef !3 ; 8 uses
  %.promoted.i33 = load i64, ptr %i.ab, align 8, !alias.scope !520, !noalias !529 ; 2 uses
  %i.ae = icmp ult i64 %.promoted.i33, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !523, !noalias !526, !nonnull !3, !noundef !3 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.ah = phi i64 [ %.promoted.i33, %.lr.ph.i ], [ %i.ak, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530), !noalias !515
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !531, !noundef !3 ; 3 uses
  switch i8 %i.aj, label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsj34PGqTgg0L_16deltalake_lakefs.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ak = add i64 %i.ah, 1                        ; 3 uses
  store i64 %i.ak, ptr %i.ab, align 8, !alias.scope !532, !noalias !529
  %exitcond.not.i34 = icmp eq i64 %i.ak, %i.ad
  br i1 %exitcond.not.i34, label %.loopexit, label %bb.b

_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20)
  switch i8 %i.aj, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.m
    i8 102, label %bb.u
    i8 45, label %bb.ae
    i8 34, label %bb.af
    i8 91, label %bb.ag
    i8 123, label %bb.ah
  ]

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !535
  store i64 5, ptr %i.aa, align 8, !noalias !535
  %i.al = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa), !noalias !515, !inline_history !536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !535
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !515, !noalias !518
  store i8 6, ptr %0, align 8, !alias.scope !515, !noalias !518
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2s_5ValueNtB1l_11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.d:                                             ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.an = add i8 %i.aj, -48
  %or.cond8.i = icmp ult i8 %i.an, 10
  br i1 %or.cond8.i, label %bb.cj, label %bb.ci, !prof !229

bb.e:                                             ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.ao = add i64 %i.ah, 1                        ; 4 uses
  store i64 %i.ao, ptr %i.ab, align 8, !alias.scope !537, !noalias !515
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  %umax.i27 = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 %i.ad) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543), !noalias !515
  %exitcond.not.i29.not = icmp ult i64 %i.ao, %i.ad
  br i1 %exitcond.not.i29.not, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !546, !noundef !3
  %i.ar = add i64 %i.ah, 2                        ; 3 uses
  store i64 %i.ar, ptr %i.ab, align 8, !alias.scope !549, !noalias !550
  %.not.i30 = icmp eq i8 %i.aq, 117
  br i1 %.not.i30, label %bb.g, label %bb.l, !prof !248

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551), !noalias !515
  %exitcond.not.i29.1 = icmp eq i64 %i.ar, %umax.i27
  br i1 %exitcond.not.i29.1, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !553, !noundef !3
  %i.au = add i64 %i.ah, 3                        ; 3 uses
  store i64 %i.au, ptr %i.ab, align 8, !alias.scope !554, !noalias !550
  %.not.i30.1 = icmp eq i8 %i.at, 108
  br i1 %.not.i30.1, label %bb.i, label %bb.l, !prof !248

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !555), !noalias !515
  %exitcond.not.i29.2 = icmp eq i64 %i.au, %umax.i27
  br i1 %exitcond.not.i29.2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !557, !noundef !3
  %i.ax = add i64 %i.ah, 4
  store i64 %i.ax, ptr %i.ab, align 8, !alias.scope !558, !noalias !550
  %.not.i30.2 = icmp eq i8 %i.aw, 108
  br i1 %.not.i30.2, label %.thread, label %bb.l, !prof !248

bb.k:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !559
  store i64 5, ptr %i.f, align 8, !noalias !559
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !559
  br label %bb.ai

bb.l:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !559
  store i64 9, ptr %i.e, align 8, !noalias !559
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !559
  br label %bb.ai

bb.m:                                             ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.ba = add i64 %i.ah, 1                        ; 4 uses
  store i64 %i.ba, ptr %i.ab, align 8, !alias.scope !561, !noalias !515
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  %umax.i20 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.ad) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567), !noalias !515
  %exitcond.not.i22.not = icmp ult i64 %i.ba, %i.ad
  br i1 %exitcond.not.i22.not, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !570, !noundef !3
  %i.bd = add i64 %i.ah, 2                        ; 3 uses
  store i64 %i.bd, ptr %i.ab, align 8, !alias.scope !573, !noalias !574
  %.not.i23 = icmp eq i8 %i.bc, 114
  br i1 %.not.i23, label %bb.o, label %bb.t, !prof !248

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !575), !noalias !515
  %exitcond.not.i22.1 = icmp eq i64 %i.bd, %umax.i20
  br i1 %exitcond.not.i22.1, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !577, !noundef !3
  %i.bg = add i64 %i.ah, 3                        ; 3 uses
  store i64 %i.bg, ptr %i.ab, align 8, !alias.scope !578, !noalias !574
  %.not.i23.1 = icmp eq i8 %i.bf, 117
  br i1 %.not.i23.1, label %bb.q, label %bb.t, !prof !248

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579), !noalias !515
  %exitcond.not.i22.2 = icmp eq i64 %i.bg, %umax.i20
  br i1 %exitcond.not.i22.2, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !581, !noundef !3
  %i.bj = add i64 %i.ah, 4
  store i64 %i.bj, ptr %i.ab, align 8, !alias.scope !582, !noalias !574
  %.not.i23.2 = icmp eq i8 %i.bi, 101
  br i1 %.not.i23.2, label %.thread, label %bb.t, !prof !248

bb.s:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !583
  store i64 5, ptr %i.h, align 8, !noalias !583
  %i.bk = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h), !noalias !584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !583
  br label %bb.al

bb.t:                                             ; preds = %bb.r, %bb.p, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !583
  store i64 9, ptr %i.g, align 8, !noalias !583
  %i.bl = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !noalias !584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !583
  br label %bb.al

bb.u:                                             ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.bm = add i64 %i.ah, 1                        ; 4 uses
  store i64 %i.bm, ptr %i.ab, align 8, !alias.scope !585, !noalias !515
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 %i.ad) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591), !noalias !515
  %exitcond.not.i.not = icmp ult i64 %i.bm, %i.ad
  br i1 %exitcond.not.i.not, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !594, !noundef !3
  %i.bp = add i64 %i.ah, 2                        ; 3 uses
  store i64 %i.bp, ptr %i.ab, align 8, !alias.scope !597, !noalias !598
  %.not.i18 = icmp eq i8 %i.bo, 97
  br i1 %.not.i18, label %bb.w, label %bb.ad, !prof !248
end_hunk_1
begin_hunk_2_@_RINvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB5_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read9SliceReadEECsj34PGqTgg0L_16deltalake_lakefs:bb.a
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.bj, !noalias !655, !inline_history !656

bb.bj:                                            ; preds = %bb.bi
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume unwind label %bb.bk, !noalias !655, !inline_history !656

bb.bk:                                            ; preds = %bb.bj
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19, !noalias !655, !inline_history !656
  unreachable

common.resume.sink.split:                         ; preds = %bb.by, %bb.ch
  %.sink116 = phi ptr [ %i.fq, %bb.ch ], [ %i.fa, %bb.by ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.fz, %bb.ch ], [ %i.fk, %bb.by ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink116, i64 noundef 40, i64 noundef 8) #18, !noalias !515
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.br, %bb.cb, %.body.i, %bb.bj
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.en, %bb.bj ], [ %i.fr, %bb.cb ], [ %i.fb, %bb.br ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.bi
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m), !noalias !655, !inline_history !656
  br label %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read9SliceReadEECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.bl:                                            ; preds = %.noexc35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx2.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.452.0..sroa_idx, i64 7, i1 false)
  %.sroa.553.0.copyload = load ptr, ptr %.sroa.553.0..sroa_idx, align 8, !noalias !651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx2.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.654.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !651
  store i8 %i.ej, ptr %i.l, align 8, !noalias !644
  store ptr %.sroa.553.0.copyload, ptr %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx, align 8, !noalias !644
  %i.ep = load i64, ptr %i.ea, align 8, !alias.scope !657, !noalias !660, !noundef !3 ; 3 uses
  %i.eq = load i64, ptr %i.m, align 8, !range !8, !alias.scope !657, !noalias !660, !noundef !3
  %i.er = icmp eq i64 %i.ep, %i.eq
  br i1 %i.er, label %bb.bm, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE8push_mutCsj34PGqTgg0L_16deltalake_lakefs.exit.i

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE8push_mutCsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.bn, !noalias !662, !inline_history !656

bb.bn:                                            ; preds = %bb.bm
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l) #20
          to label %.body.i unwind label %bb.bo, !noalias !655, !inline_history !656

bb.bo:                                            ; preds = %bb.bn
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19, !noalias !655, !inline_history !656
  unreachable

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE8push_mutCsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.bm, %bb.bl
  %i.eu = load ptr, ptr %i.dz, align 8, !alias.scope !657, !noalias !660, !nonnull !3, !noundef !3
  %i.ev = getelementptr inbounds nuw [32 x i8], ptr %i.eu, i64 %i.ep
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ev, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !655
  %i.ew = add i64 %i.ep, 1
  store i64 %i.ew, ptr %i.ea, align 8, !alias.scope !657, !noalias !660
  br label %bb.bc

bb.bp:                                            ; preds = %bb.be
  %.sroa.046.0.copyload = load ptr, ptr %i.m, align 8, !noalias !644
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i64 16, i1 false), !noalias !663
  br label %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read9SliceReadEECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.bq:                                            ; preds = %.body.i
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19, !noalias !655, !inline_history !656
  unreachable

_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read9SliceReadEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i, %bb.bp
  %.sroa.042.0 = phi i8 [ 6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i ], [ 4, %bb.bp ]
  %.sroa.7.0 = phi ptr [ %.sroa.10.1.ph, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i ], [ %.sroa.046.0.copyload, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ey = load i8, ptr %i.cl, align 8, !alias.scope !518, !noalias !515, !noundef !3
  %i.ez = add i8 %i.ey, 1
  store i8 %i.ez, ptr %i.cl, align 8, !alias.scope !518, !noalias !515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !535
  store i8 %.sroa.042.0, ptr %i.u, align 8, !noalias !535
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !535
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false), !noalias !535
  %i.fa = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_seqCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.bs unwind label %bb.br, !noalias !515, !inline_history !536 ; 7 uses

bb.br:                                            ; preds = %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read9SliceReadEECsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.fb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtNtB16_5error5ErrorEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %i.u) #20
          to label %common.resume unwind label %bb.bw, !noalias !515, !inline_history !536

bb.bs:                                            ; preds = %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read9SliceReadEECsj34PGqTgg0L_16deltalake_lakefs.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false), !noalias !535
  %i.fc = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %i.fa, ptr %i.fc, align 8, !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !535
  %i.fd = load i8, ptr %i.v, align 8, !range !11, !noalias !535, !noundef !3 ; 2 uses
  %i.fe = icmp eq i8 %i.fd, 6
  br i1 %i.fe, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.not31.i = icmp eq ptr %i.fa, null
  br i1 %.not31.i, label %.thread109, label %bb.bv

.thread109:                                       ; preds = %bb.bt
  %.sroa.18.0..sroa_idx121 = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %.sroa.18.0.copyload122 = load i8, ptr %.sroa.18.0..sroa_idx121, align 1, !noalias !535
  %.sroa.20.0..sroa_idx125 = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.20, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.20.0..sroa_idx125, i64 6, i1 false), !noalias !535
  %.sroa.20127.0..sroa_idx128 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.20127.0.copyload129 = load i64, ptr %.sroa.20127.0..sroa_idx128, align 8, !noalias !535
  %.sroa.29.0..sroa_idx132 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.29.0.copyload133 = load i64, ptr %.sroa.29.0..sroa_idx132, align 8, !noalias !535
  %.sroa.33.0..sroa_idx136 = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.33.0.copyload137 = load i64, ptr %.sroa.33.0..sroa_idx136, align 8, !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %.thread79

bb.bu:                                            ; preds = %bb.bs
  %i.ff = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !noalias !535, !nonnull !3, !align !25, !noundef !3
  %i.fh = ptrtoint ptr %i.fg to i64               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %.not85 = icmp eq ptr %i.fa, null
  br i1 %.not85, label %.thread79, label %bb.bx

bb.bv:                                            ; preds = %bb.bt
  %i.fi = ptrtoint ptr %i.fa to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %i.v), !noalias !515, !inline_history !536
  br label %.thread79

bb.bw:                                            ; preds = %bb.cb, %bb.br
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19, !noalias !515, !inline_history !536
  unreachable

.thread79:                                        ; preds = %.thread109, %bb.bv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit1, %bb.bu
  %.sroa.33.2 = phi i64 [ undef, %bb.bu ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit1 ], [ %.sroa.33.0.copyload137, %.thread109 ], [ undef, %bb.bv ]
  %.sroa.29.2 = phi i64 [ undef, %bb.bu ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit1 ], [ %.sroa.29.0.copyload133, %.thread109 ], [ undef, %bb.bv ]
  %.sroa.20127.2 = phi i64 [ %i.fh, %bb.bu ], [ %i.fh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit1 ], [ %.sroa.20127.0.copyload129, %.thread109 ], [ %i.fi, %bb.bv ]
  %.sroa.18.1 = phi i8 [ undef, %bb.bu ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit1 ], [ %.sroa.18.0.copyload122, %.thread109 ], [ undef, %bb.bv ]
  %.sroa.0.2 = phi i8 [ 6, %bb.bu ], [ 6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit1 ], [ %i.fd, %.thread109 ], [ 6, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !535
  br label %bb.aj

bb.bx:                                            ; preds = %bb.bu
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorCodeECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.fa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit1 unwind label %bb.by, !noalias !515

bb.by:                                            ; preds = %bb.bx
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit1: ; preds = %bb.bx
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fa, i64 noundef 40, i64 noundef 8) #18, !noalias !515
  br label %.thread79

bb.bz:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !535
  store i64 24, ptr %i.t, align 8, !noalias !535
  %i.fl = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.t), !noalias !515, !inline_history !536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !535
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fl, ptr %i.fm, align 8, !alias.scope !515, !noalias !518
  store i8 6, ptr %0, align 8, !alias.scope !515, !noalias !518
  br label %bb.ak

bb.ca:                                            ; preds = %bb.ah
  %i.fn = add i64 %i.ah, 1
  store i64 %i.fn, ptr %i.ab, align 8, !alias.scope !664, !noalias !515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !535
  call void @_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read9SliceReadEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext true), !noalias !515, !inline_history !536
  %i.fo = load i8, ptr %i.cp, align 8, !alias.scope !518, !noalias !515, !noundef !3
  %i.fp = add i8 %i.fo, 1
  store i8 %i.fp, ptr %i.cp, align 8, !alias.scope !518, !noalias !515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !535
  %i.fq = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_mapCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.cc unwind label %bb.cb, !noalias !515, !inline_history !536 ; 7 uses

bb.cb:                                            ; preds = %bb.ca
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtNtB16_5error5ErrorEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %i.q) #20
          to label %common.resume unwind label %bb.bw, !noalias !515, !inline_history !536

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !noalias !535
  %i.fs = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.fq, ptr %i.fs, align 8, !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !535
  %i.ft = load i8, ptr %i.r, align 8, !range !11, !noalias !535, !noundef !3 ; 2 uses
  %i.fu = icmp eq i8 %i.ft, 6
  br i1 %i.fu, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %.not.i = icmp eq ptr %i.fq, null
  br i1 %.not.i, label %.thread111, label %bb.cf

.thread111:                                       ; preds = %bb.cd
  %.sroa.18.0..sroa_idx123 = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.sroa.18.0.copyload124 = load i8, ptr %.sroa.18.0..sroa_idx123, align 1, !noalias !535
  %.sroa.20.0..sroa_idx126 = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.20, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.20.0..sroa_idx126, i64 6, i1 false), !noalias !535
  %.sroa.20127.0..sroa_idx130 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.20127.0.copyload131 = load i64, ptr %.sroa.20127.0..sroa_idx130, align 8, !noalias !535
  %.sroa.29.0..sroa_idx134 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.29.0.copyload135 = load i64, ptr %.sroa.29.0..sroa_idx134, align 8, !noalias !535
  %.sroa.33.0..sroa_idx138 = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.33.0.copyload139 = load i64, ptr %.sroa.33.0..sroa_idx138, align 8, !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !535
  br label %.thread82

bb.ce:                                            ; preds = %bb.cc
  %i.fv = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !535, !nonnull !3, !align !25, !noundef !3
  %i.fx = ptrtoint ptr %i.fw to i64               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !535
  %.not = icmp eq ptr %i.fq, null
  br i1 %.not, label %.thread82, label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  %i.fy = ptrtoint ptr %i.fq to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !535
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %i.r), !noalias !515, !inline_history !536
  br label %.thread82

.thread82:                                        ; preds = %.thread111, %bb.cf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.ce
  %.sroa.33.3 = phi i64 [ undef, %bb.ce ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %.sroa.33.0.copyload139, %.thread111 ], [ undef, %bb.cf ]
  %.sroa.29.3 = phi i64 [ undef, %bb.ce ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %.sroa.29.0.copyload135, %.thread111 ], [ undef, %bb.cf ]
  %.sroa.20127.3 = phi i64 [ %i.fx, %bb.ce ], [ %i.fx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %.sroa.20127.0.copyload131, %.thread111 ], [ %i.fy, %bb.cf ]
  %.sroa.18.2 = phi i8 [ undef, %bb.ce ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %.sroa.18.0.copyload124, %.thread111 ], [ undef, %bb.cf ]
  %.sroa.0.3 = phi i8 [ 6, %bb.ce ], [ 6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %i.ft, %.thread111 ], [ 6, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !535
  br label %bb.aj

bb.cg:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorCodeECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.fq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.ch, !noalias !515

bb.ch:                                            ; preds = %bb.cg
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.cg
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fq, i64 noundef 40, i64 noundef 8) #18, !noalias !515
  br label %.thread82

bb.ci:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !535
  store i64 10, ptr %i.p, align 8, !noalias !535
  %i.ga = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p), !noalias !515, !inline_history !536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !535
  br label %bb.ck

bb.cj:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !535
  call fastcc void @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext true), !noalias !515, !inline_history !536
  %i.gb = load i64, ptr %i.y, align 8, !range !336, !noalias !535, !noundef !3 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 3
  %i.gd = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  br i1 %i.gc, label %bb.cl, label %bb.cm

bb.ck:                                            ; preds = %._crit_edge90, %bb.ci
  %i.ge = phi ptr [ %i.cv, %._crit_edge90 ], [ %i.ga, %bb.ci ]
  %i.gf = call noundef nonnull align 8 ptr @_RINvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 %i.ge, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !515
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gf, ptr %i.gg, align 8, !alias.scope !515, !noalias !518
  store i8 6, ptr %0, align 8, !alias.scope !515, !noalias !518
  br label %bb.cq

bb.cl:                                            ; preds = %bb.cj
  %i.gh = load ptr, ptr %i.gd, align 8, !noalias !535, !nonnull !3, !align !25, !noundef !3
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gh, ptr %i.gi, align 8, !alias.scope !515, !noalias !518
  store i8 6, ptr %0, align 8, !alias.scope !515, !noalias !518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !535
  br label %bb.ak

bb.cm:                                            ; preds = %bb.cj
  %.sroa.440.0.copyload = load i64, ptr %i.gd, align 8, !noalias !535 ; 3 uses
  switch i64 %i.gb, label %default.unreachable173 [
    i64 0, label %bb.cn
    i64 1, label %_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit
    i64 2, label %bb.cp
  ]

bb.cn:                                            ; preds = %bb.cm
  %i.gj = bitcast i64 %.sroa.440.0.copyload to double
  %i.gk = tail call double @llvm.fabs.f64(double %i.gj)
  %i.gl = fcmp ueq double %i.gk, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !667
  br i1 %i.gl, label %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store i8 0, ptr %i.o, align 8, !noalias !667
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.o), !noalias !673
  br label %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit.i

_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.co, %bb.cn
  %.sroa.0.0.i.i = phi i8 [ 2, %bb.co ], [ 0, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !667
  br label %_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.cp:                                            ; preds = %bb.cm
  %.lobit.i.i = lshr i64 %.sroa.440.0.copyload, 63
  br label %_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.cm, %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit.i, %bb.cp
  %.sroa.0.0.i.i.sink = phi i8 [ %.sroa.0.0.i.i, %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit.i ], [ 2, %bb.cp ], [ 2, %bb.cm ]
  %.sink117 = phi i64 [ 2, %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit.i ], [ %.lobit.i.i, %bb.cp ], [ 0, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !535
  br label %.thread

.thread:                                          ; preds = %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit, %_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit15, %_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.ab, %bb.r, %bb.j, %bb.aj
  %.sroa.33.4 = phi i64 [ %.sroa.33.0, %bb.aj ], [ undef, %bb.r ], [ undef, %bb.ab ], [ undef, %bb.j ], [ %.sroa.4.0.copyload.i, %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ undef, %_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit15 ], [ undef, %_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit ]
  %.sroa.29.4 = phi i64 [ %.sroa.29.0, %bb.aj ], [ undef, %bb.r ], [ undef, %bb.ab ], [ undef, %bb.j ], [ %.sroa.29.1, %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %.sroa.4.0.copyload, %_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit15 ], [ %.sroa.440.0.copyload, %_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit ]
  %.sroa.20127.4 = phi i64 [ %.sroa.20127.0, %bb.aj ], [ undef, %bb.r ], [ undef, %bb.ab ], [ undef, %bb.j ], [ %.sroa.20127.1, %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %.sink, %_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit15 ], [ %.sink117, %_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit ]
  %.sroa.18.3 = phi i8 [ %.sroa.18.0, %bb.aj ], [ 1, %bb.r ], [ 0, %bb.ab ], [ undef, %bb.j ], [ undef, %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ undef, %_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit15 ], [ undef, %_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit ]
  %.sroa.0.4 = phi i8 [ %.sroa.0.0, %bb.aj ], [ 1, %bb.r ], [ 1, %bb.ab ], [ 0, %bb.j ], [ 3, %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %.sroa.0.0.i.i11.sink, %_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit15 ], [ %.sroa.0.0.i.i.sink, %_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit ]
  store i8 %.sroa.0.4, ptr %0, align 8, !noalias !518
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.18.3, ptr %.sroa.18.0..sroa_idx, align 1, !noalias !518
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.20.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.20, i64 6, i1 false), !noalias !518
  %.sroa.20127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.20127.4, ptr %.sroa.20127.0..sroa_idx, align 8, !noalias !518
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.29.4, ptr %.sroa.29.0..sroa_idx, align 8, !noalias !518
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.33.4, ptr %.sroa.33.0..sroa_idx, align 8, !noalias !518
  br label %bb.cq

bb.cq:                                            ; preds = %.thread, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2s_5ValueNtB1l_11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2s_5ValueNtB1l_11Deserialize11deserialize12ValueVisitorECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %.loopexit, %bb.ak, %bb.cq
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_strNtNtB8_3raw15BoxedFromStringECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !677)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !680, !noalias !685, !noundef !3 ; 2 uses
  %.promoted.i = load i64, ptr %i.e, align 8, !alias.scope !677, !noalias !689 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i, %i.g
  br i1 %i.h, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !680, !noalias !685, !nonnull !3, !noundef !3
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.k = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.n, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !692, !noundef !3 ; 2 uses
  switch i8 %i.m, label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsj34PGqTgg0L_16deltalake_lakefs.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.n = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !693, !noalias !689
  %exitcond.not.i = icmp eq i64 %i.n, %i.g
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.o = icmp eq i8 %i.m, 34
  br i1 %i.o, label %bb.d, label %bb.e, !prof !118

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 5, ptr %i.d, align 8
  %i.p = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  store ptr null, ptr %0, align 8
  br label %bb.k

bb.d:                                             ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.r = add i64 %i.k, 1
  store i64 %i.r, ptr %i.e, align 8, !alias.scope !696
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs8_NtCseqDwI8vvjGQ_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.t = load i64, ptr %i.b, align 8, !range !340, !noundef !3
  %i.u = icmp eq i64 %i.t, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !3, !noundef !3 ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.x = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(80) %1, ptr noundef nonnull %i.a)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.y, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RINvXsd_NtCseqDwI8vvjGQ_10serde_json3rawNtB6_15BoxedFromStringNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_strNtNtB8_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %.sroa.4.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = load ptr, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.aa, label %._crit_edge, label %bb.i, !prof !341

._crit_edge:                                      ; preds = %bb.g
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
end_hunk_2
