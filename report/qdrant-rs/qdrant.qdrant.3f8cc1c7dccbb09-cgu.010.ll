Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.010?download=true
inline.NumInlined: 5118
inline.NumDeleted: 2096
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumUnrolled: 36
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@_RINvNvXs9_NtCs8O45qwFIwQX_10serde_json2deINtB8_9MapAccesspENtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read9SliceReadECsl8OoimOLbh_6qdrant:bb.a

bb.e:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !range !8, !noundef !7
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i8 %i.p, 44
  br i1 %i.x, label %bb.h, label %bb.j, !prof !16

bb.g:                                             ; preds = %bb.e
  store i8 0, ptr %i.u, align 8
  %i.y = icmp eq i8 %i.p, 34
  br i1 %i.y, label %bb.n, label %bb.o, !prof !16

bb.h:                                             ; preds = %bb.f
  %i.z = add i64 %i.n, 1                          ; 3 uses
  store i64 %i.z, ptr %i.h, align 8, !alias.scope !2600
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2601)
  %i.aa = icmp ult i64 %i.z, %i.j
  br i1 %i.aa, label %.lr.ph.i7, label %.loopexit

.lr.ph.i7:                                        ; preds = %bb.h, %bb.i
  %i.ab = phi i64 [ %i.ae, %bb.i ], [ %i.z, %bb.h ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !2602, !noundef !7
  switch i8 %i.ad, label %bb.k [
    i8 32, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
    i8 34, label %bb.l
    i8 125, label %bb.m
  ], !prof !42

bb.i:                                             ; preds = %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7
  %i.ae = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.ae, ptr %i.h, align 8, !alias.scope !2603, !noalias !2604
  %exitcond.not.i8 = icmp eq i64 %i.ae, %i.j
  br i1 %exitcond.not.i8, label %.loopexit, label %.lr.ph.i7

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 8, ptr %i.a, align 8
  %i.af = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  br label %bb.p

.loopexit:                                        ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 5, ptr %i.b, align 8
  %i.ah = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.ai, align 8
  br label %bb.p

bb.k:                                             ; preds = %.lr.ph.i7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 17, ptr %i.c, align 8
  %i.aj = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
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
  %i.am = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
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
  %i.ap = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
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
define internal fastcc void @_RINvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB5_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [72 x i8], align 8                ; 6 uses
  %i.l = alloca [72 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 12 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [72 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [72 x i8], align 8                ; 4 uses
  %i.r = alloca [80 x i8], align 8                ; 7 uses
  %i.s = alloca [72 x i8], align 8                ; 12 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [72 x i8], align 8                ; 7 uses
  %i.v = alloca [80 x i8], align 8                ; 11 uses
  %.sroa.8 = alloca [56 x i8], align 8            ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.47 = alloca [40 x i8], align 8           ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2714)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2715)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !2716, !noalias !2717, !noundef !7 ; 8 uses
  %.promoted.i39 = load i64, ptr %i.ab, align 8, !alias.scope !2715, !noalias !2718 ; 2 uses
  %i.ae = icmp ult i64 %.promoted.i39, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !2716, !noalias !2717, !nonnull !7, !noundef !7 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.ah = phi i64 [ %.promoted.i39, %.lr.ph.i ], [ %i.ak, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2719), !noalias !2713
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2720), !noalias !2713
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !2721, !noundef !7 ; 3 uses
  switch i8 %i.aj, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ak = add i64 %i.ah, 1                        ; 3 uses
  store i64 %i.ak, ptr %i.ab, align 8, !alias.scope !2722, !noalias !2718
  %exitcond.not.i40 = icmp eq i64 %i.ak, %i.ad
  br i1 %exitcond.not.i40, label %.loopexit, label %bb.b

_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.47)
  switch i8 %i.aj, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ad
    i8 123, label %bb.ae
  ]

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2723
  store i64 5, ptr %i.aa, align 8, !noalias !2723
  %i.al = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aa), !noalias !2713, !inline_history !2619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2723
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !2713, !noalias !2714
  store i64 -1, ptr %0, align 8, !alias.scope !2713, !noalias !2714
  br label %_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECsl8OoimOLbh_6qdrant.exit

bb.d:                                             ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit
  %i.an = add i8 %i.aj, -48
  %or.cond8.i = icmp ult i8 %i.an, 10
  br i1 %or.cond8.i, label %bb.cf, label %bb.ce, !prof !14

bb.e:                                             ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit
  %i.ao = add i64 %i.ah, 1                        ; 4 uses
  store i64 %i.ao, ptr %i.ab, align 8, !alias.scope !2724, !noalias !2713
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2725)
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.ao) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2726), !noalias !2713
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2727), !noalias !2713
  %exitcond.not.i34.not = icmp ult i64 %i.ao, %i.ad
  br i1 %exitcond.not.i34.not, label %bb.f, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !2728, !noundef !7
  %i.ar = add i64 %i.ah, 2                        ; 3 uses
  store i64 %i.ar, ptr %i.ab, align 8, !alias.scope !2729, !noalias !2730
  %.not.i35 = icmp eq i8 %i.aq, 117
  br i1 %.not.i35, label %bb.g, label %bb.k, !prof !21

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2731), !noalias !2713
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2732), !noalias !2713
  %exitcond.not.i34.1 = icmp eq i64 %i.ar, %umax.i32
  br i1 %exitcond.not.i34.1, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !2733, !noundef !7
  %i.au = add i64 %i.ah, 3                        ; 3 uses
  store i64 %i.au, ptr %i.ab, align 8, !alias.scope !2734, !noalias !2730
  %.not.i35.1 = icmp eq i8 %i.at, 108
  br i1 %.not.i35.1, label %bb.i, label %bb.k, !prof !21

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2735), !noalias !2713
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2736), !noalias !2713
  %exitcond.not.i34.2 = icmp eq i64 %i.au, %umax.i32
  br i1 %exitcond.not.i34.2, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !2737, !noundef !7
  %i.ax = add i64 %i.ah, 4
  store i64 %i.ax, ptr %i.ab, align 8, !alias.scope !2738, !noalias !2730
  %.not.i35.2 = icmp eq i8 %i.aw, 108
  br i1 %.not.i35.2, label %.thread, label %bb.k, !prof !21

_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2739
  store i64 5, ptr %i.f, align 8, !noalias !2739
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !2740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2739
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2739
  store i64 9, ptr %i.e, align 8, !noalias !2739
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !2740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2739
  br label %bb.af

bb.l:                                             ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit
  %i.ba = add i64 %i.ah, 1                        ; 4 uses
  store i64 %i.ba, ptr %i.ab, align 8, !alias.scope !2741, !noalias !2713
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2742)
  %umax.i24 = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.ba) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2743), !noalias !2713
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2744), !noalias !2713
  %exitcond.not.i26.not = icmp ult i64 %i.ba, %i.ad
  br i1 %exitcond.not.i26.not, label %bb.m, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !2745, !noundef !7
  %i.bd = add i64 %i.ah, 2                        ; 3 uses
  store i64 %i.bd, ptr %i.ab, align 8, !alias.scope !2746, !noalias !2747
  %.not.i27 = icmp eq i8 %i.bc, 114
  br i1 %.not.i27, label %bb.n, label %bb.r, !prof !21

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2748), !noalias !2713
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2749), !noalias !2713
  %exitcond.not.i26.1 = icmp eq i64 %i.bd, %umax.i24
  br i1 %exitcond.not.i26.1, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !2750, !noundef !7
  %i.bg = add i64 %i.ah, 3                        ; 3 uses
  store i64 %i.bg, ptr %i.ab, align 8, !alias.scope !2751, !noalias !2747
  %.not.i27.1 = icmp eq i8 %i.bf, 117
  br i1 %.not.i27.1, label %bb.p, label %bb.r, !prof !21

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2752), !noalias !2713
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2753), !noalias !2713
  %exitcond.not.i26.2 = icmp eq i64 %i.bg, %umax.i24
  br i1 %exitcond.not.i26.2, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !2754, !noundef !7
  %i.bj = add i64 %i.ah, 4
  store i64 %i.bj, ptr %i.ab, align 8, !alias.scope !2755, !noalias !2747
  %.not.i27.2 = icmp eq i8 %i.bi, 101
  br i1 %.not.i27.2, label %.thread, label %bb.r, !prof !21

_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2756
  store i64 5, ptr %i.h, align 8, !noalias !2756
  %i.bk = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h), !noalias !2757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2756
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2756
  store i64 9, ptr %i.g, align 8, !noalias !2756
  %i.bl = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !noalias !2757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2756
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit
  %i.bm = add i64 %i.ah, 1                        ; 4 uses
  store i64 %i.bm, ptr %i.ab, align 8, !alias.scope !2758, !noalias !2713
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2759)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.bm) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2760), !noalias !2713
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2761), !noalias !2713
  %exitcond.not.i.not = icmp ult i64 %i.bm, %i.ad
  br i1 %exitcond.not.i.not, label %bb.t, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !2762, !noundef !7
  %i.bp = add i64 %i.ah, 2                        ; 3 uses
  store i64 %i.bp, ptr %i.ab, align 8, !alias.scope !2763, !noalias !2764
  %.not.i22 = icmp eq i8 %i.bo, 97
  br i1 %.not.i22, label %bb.u, label %bb.aa, !prof !21

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2765), !noalias !2713
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2766), !noalias !2713
  %exitcond.not.i.1 = icmp eq i64 %i.bp, %umax.i
  br i1 %exitcond.not.i.1, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !2767, !noundef !7
  %i.bs = add i64 %i.ah, 3                        ; 3 uses
  store i64 %i.bs, ptr %i.ab, align 8, !alias.scope !2768, !noalias !2764
  %.not.i22.1 = icmp eq i8 %i.br, 108
  br i1 %.not.i22.1, label %bb.w, label %bb.aa, !prof !21

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2769), !noalias !2713
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2770), !noalias !2713
  %exitcond.not.i.2 = icmp eq i64 %i.bs, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !2771, !noundef !7
  %i.bv = add i64 %i.ah, 4                        ; 3 uses
  store i64 %i.bv, ptr %i.ab, align 8, !alias.scope !2772, !noalias !2764
  %.not.i22.2 = icmp eq i8 %i.bu, 115
  br i1 %.not.i22.2, label %bb.y, label %bb.aa, !prof !21

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2773), !noalias !2713
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2774), !noalias !2713
  %exitcond.not.i.3 = icmp eq i64 %i.bv, %umax.i
  br i1 %exitcond.not.i.3, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !2775, !noundef !7
  %i.by = add i64 %i.ah, 5
  store i64 %i.by, ptr %i.ab, align 8, !alias.scope !2776, !noalias !2764
  %.not.i22.3 = icmp eq i8 %i.bx, 101
  br i1 %.not.i22.3, label %.thread, label %bb.aa, !prof !21

_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2777
  store i64 5, ptr %i.j, align 8, !noalias !2777
  %i.bz = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !2778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2777
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2777
  store i64 9, ptr %i.i, align 8, !noalias !2777
  %i.ca = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i), !noalias !2778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2777
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit
  %i.cb = add i64 %i.ah, 1
  store i64 %i.cb, ptr %i.ab, align 8, !alias.scope !2779, !noalias !2713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2723
  call fastcc void @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !2713, !inline_history !2619
  %i.cc = load i64, ptr %i.z, align 8, !range !13, !noalias !2723, !noundef !7 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, -1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  br i1 %i.cd, label %bb.ak, label %bb.al

bb.ac:                                            ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit
  %i.cf = add i64 %i.ah, 1
  store i64 %i.cf, ptr %i.ab, align 8, !alias.scope !2780, !noalias !2713
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cg, align 8, !alias.scope !2714, !noalias !2713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2723
  call void @_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !2713, !inline_history !2619
  %i.ch = load i64, ptr %i.x, align 8, !range !6, !noalias !2723, !noundef !7 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 2
  %i.cj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !2723 ; 3 uses
  br i1 %i.ci, label %bb.aq, label %bb.ar

bb.ad:                                            ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cm = load i8, ptr %i.cl, align 8, !alias.scope !2714, !noalias !2713, !noundef !7
  %i.cn = add i8 %i.cm, -1                        ; 2 uses
  store i8 %i.cn, ptr %i.cl, align 8, !alias.scope !2714, !noalias !2713
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.ay, label %bb.az, !prof !17

bb.ae:                                            ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cq = load i8, ptr %i.cp, align 8, !alias.scope !2714, !noalias !2713, !noundef !7
  %i.cr = add i8 %i.cq, -1                        ; 2 uses
  store i8 %i.cr, ptr %i.cp, align 8, !alias.scope !2714, !noalias !2713
  %i.cs = icmp eq i8 %i.cr, 0
  br i1 %i.cs, label %bb.bw, label %bb.bx, !prof !17

bb.af:                                            ; preds = %bb.k, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37
  %.sroa.0.1.i36.ph = phi ptr [ %i.ay, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37 ], [ %i.az, %bb.k ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i36.ph, ptr %i.ct, align 8, !alias.scope !2713, !noalias !2714
  store i64 -1, ptr %0, align 8, !alias.scope !2713, !noalias !2714
  br label %bb.ah

bb.ag:                                            ; preds = %.thread86, %.thread83
  %.sroa.22.sroa.21.sroa.0.0.in.in = phi i64 [ %.sroa.22.sroa.21.sroa.0.4.in.in, %.thread86 ], [ %.sroa.22.sroa.21.sroa.0.3.in.in, %.thread83 ] ; 3 uses
  %.sroa.45.0 = phi i64 [ %.sroa.45.3, %.thread86 ], [ %.sroa.45.2, %.thread83 ]
  %.sroa.37.0 = phi i64 [ %.sroa.37.4, %.thread86 ], [ %.sroa.37.3, %.thread83 ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.4, %.thread86 ], [ %.sroa.0.3, %.thread83 ] ; 2 uses
  %i.cu = icmp eq i64 %.sroa.0.0, -1
  br i1 %i.cu, label %._crit_edge, label %.thread, !prof !43

._crit_edge:                                      ; preds = %bb.ag
  %i.cv = inttoptr i64 %.sroa.22.sroa.21.sroa.0.0.in.in to ptr
  br label %bb.cg

bb.ah:                                            ; preds = %bb.ch, %bb.bw, %bb.ay, %bb.aq, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.47)
  br label %_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECsl8OoimOLbh_6qdrant.exit

bb.ai:                                            ; preds = %bb.r, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29
  %.sroa.0.1.i28.ph = phi ptr [ %i.bk, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29 ], [ %i.bl, %bb.r ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i28.ph, ptr %i.cw, align 8, !alias.scope !2713, !noalias !2714
  store i64 -1, ptr %0, align 8, !alias.scope !2713, !noalias !2714
  br label %bb.ah

bb.aj:                                            ; preds = %bb.aa, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i
  %.sroa.0.1.i.ph = phi ptr [ %i.bz, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.ca, %bb.aa ]
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.cx, align 8, !alias.scope !2713, !noalias !2714
  store i64 -1, ptr %0, align 8, !alias.scope !2713, !noalias !2714
  br label %bb.ah

bb.ak:                                            ; preds = %bb.ab
  %i.cy = load ptr, ptr %i.ce, align 8, !noalias !2723, !nonnull !7, !align !15, !noundef !7
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.cz, align 8, !alias.scope !2713, !noalias !2714
  store i64 -1, ptr %0, align 8, !alias.scope !2713, !noalias !2714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2723
  br label %bb.ah

bb.al:                                            ; preds = %bb.ab
  %.sroa.4.0.copyload = load i64, ptr %i.ce, align 8, !noalias !2723 ; 5 uses
  switch i64 %i.cc, label %default.unreachable214 [
    i64 0, label %bb.am
    i64 1, label %_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorECsl8OoimOLbh_6qdrant.exit19
    i64 2, label %bb.ap
  ]

default.unreachable214:                           ; preds = %bb.ci, %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.da = bitcast i64 %.sroa.4.0.copyload to double
  %i.db = tail call double @llvm.fabs.f64(double %i.da)
  %i.dc = fcmp ueq double %i.db, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2781
  br i1 %i.dc, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.sroa.5.0..sroa_idx4.i.i14 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5.sroa.0.0.copyload8.i.i15 = load i64, ptr %.sroa.5.0..sroa_idx4.i.i14, align 8, !alias.scope !2782, !noalias !2783
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i16 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5.sroa.5.0.copyload9.i.i17181 = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i16, align 8, !alias.scope !2782, !noalias !2783
  br label %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsl8OoimOLbh_6qdrant.exit.i8

bb.ao:                                            ; preds = %bb.am
  store i64 -9223372036854775808, ptr %i.k, align 8, !noalias !2781
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2784), !noalias !2713
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8O45qwFIwQX_10serde_json5value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.k), !noalias !2785
  br label %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsl8OoimOLbh_6qdrant.exit.i8

_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsl8OoimOLbh_6qdrant.exit.i8: ; preds = %bb.ao, %bb.an
  %i.dd = phi i64 [ %.sroa.5.sroa.5.0.copyload9.i.i17181, %bb.an ], [ %.sroa.4.0.copyload, %bb.ao ]
  %.sroa.5.sroa.0.0.i.i10 = phi i64 [ %.sroa.5.sroa.0.0.copyload8.i.i15, %bb.an ], [ 2, %bb.ao ] ; 2 uses
  %.sroa.0.0.i.i11 = phi i64 [ -9223372036854775808, %bb.an ], [ -9223372036854775806, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2781
  br label %_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorECsl8OoimOLbh_6qdrant.exit19

bb.ap:                                            ; preds = %bb.al
  %.lobit.i.i3 = lshr i64 %.sroa.4.0.copyload, 63
  br label %_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorECsl8OoimOLbh_6qdrant.exit19

_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorECsl8OoimOLbh_6qdrant.exit19: ; preds = %bb.al, %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsl8OoimOLbh_6qdrant.exit.i8, %bb.ap
  %.sroa.22.sroa.21.sroa.0.1 = phi i64 [ %.sroa.5.sroa.0.0.i.i10, %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsl8OoimOLbh_6qdrant.exit.i8 ], [ 0, %bb.ap ], [ 0, %bb.al ]
  %.sroa.22.sroa.0.1 = phi i64 [ %.sroa.5.sroa.0.0.i.i10, %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsl8OoimOLbh_6qdrant.exit.i8 ], [ %.lobit.i.i3, %bb.ap ], [ 0, %bb.al ]
  %.sroa.37.1 = phi i64 [ %i.dd, %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsl8OoimOLbh_6qdrant.exit.i8 ], [ %.sroa.4.0.copyload, %bb.ap ], [ %.sroa.4.0.copyload, %bb.al ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.i.i11, %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsl8OoimOLbh_6qdrant.exit.i8 ], [ -9223372036854775806, %bb.ap ], [ -9223372036854775806, %bb.al ]
end_hunk_0
begin_hunk_1_@_RINvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB5_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECsl8OoimOLbh_6qdrant:bb.a
  store i64 10, ptr %i.p, align 8, !noalias !2723
  %i.fz = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p), !noalias !2713, !inline_history !2619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2723
  br label %bb.cg

bb.cf:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2723
  call fastcc void @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !noalias !2713, !inline_history !2619
  %i.ga = load i64, ptr %i.y, align 8, !range !13, !noalias !2723, !noundef !7 ; 2 uses
  %i.gb = icmp eq i64 %i.ga, -1
  %i.gc = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  br i1 %i.gb, label %bb.ch, label %bb.ci

bb.cg:                                            ; preds = %._crit_edge, %bb.ce
  %i.gd = phi ptr [ %i.cv, %._crit_edge ], [ %i.fz, %bb.ce ]
  %i.ge = call noundef nonnull align 8 ptr @_RINvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsl8OoimOLbh_6qdrant(ptr noalias noundef nonnull align 8 %i.gd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !noalias !2713
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ge, ptr %i.gf, align 8, !alias.scope !2713, !noalias !2714
  store i64 -1, ptr %0, align 8, !alias.scope !2713, !noalias !2714
  br label %bb.cn

bb.ch:                                            ; preds = %bb.cf
  %i.gg = load ptr, ptr %i.gc, align 8, !noalias !2723, !nonnull !7, !align !15, !noundef !7
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gg, ptr %i.gh, align 8, !alias.scope !2713, !noalias !2714
  store i64 -1, ptr %0, align 8, !alias.scope !2713, !noalias !2714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2723
  br label %bb.ah

bb.ci:                                            ; preds = %bb.cf
  %.sroa.446.0.copyload = load i64, ptr %i.gc, align 8, !noalias !2723 ; 5 uses
  switch i64 %i.ga, label %default.unreachable214 [
    i64 0, label %bb.cj
    i64 1, label %_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorECsl8OoimOLbh_6qdrant.exit
    i64 2, label %bb.cm
  ]

bb.cj:                                            ; preds = %bb.ci
  %i.gi = bitcast i64 %.sroa.446.0.copyload to double
  %i.gj = tail call double @llvm.fabs.f64(double %i.gi)
  %i.gk = fcmp ueq double %i.gj, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2799
  br i1 %i.gk, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %.sroa.5.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.5.sroa.0.0.copyload8.i.i = load i64, ptr %.sroa.5.0..sroa_idx4.i.i, align 8, !alias.scope !2800, !noalias !2801
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.5.sroa.5.0.copyload9.i.i182 = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i, align 8, !alias.scope !2800, !noalias !2801
  br label %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsl8OoimOLbh_6qdrant.exit.i

bb.cl:                                            ; preds = %bb.cj
  store i64 -9223372036854775808, ptr %i.o, align 8, !noalias !2799
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2802), !noalias !2713
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8O45qwFIwQX_10serde_json5value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.o), !noalias !2803
  br label %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsl8OoimOLbh_6qdrant.exit.i

_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.cl, %bb.ck
  %i.gl = phi i64 [ %.sroa.5.sroa.5.0.copyload9.i.i182, %bb.ck ], [ %.sroa.446.0.copyload, %bb.cl ]
  %.sroa.5.sroa.0.0.i.i = phi i64 [ %.sroa.5.sroa.0.0.copyload8.i.i, %bb.ck ], [ 2, %bb.cl ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ -9223372036854775808, %bb.ck ], [ -9223372036854775806, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2799
  br label %_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorECsl8OoimOLbh_6qdrant.exit

bb.cm:                                            ; preds = %bb.ci
  %.lobit.i.i = lshr i64 %.sroa.446.0.copyload, 63
  br label %_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorECsl8OoimOLbh_6qdrant.exit

_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.ci, %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsl8OoimOLbh_6qdrant.exit.i, %bb.cm
  %.sroa.22.sroa.21.sroa.0.5 = phi i64 [ %.sroa.5.sroa.0.0.i.i, %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsl8OoimOLbh_6qdrant.exit.i ], [ 0, %bb.cm ], [ 0, %bb.ci ]
  %.sroa.22.sroa.0.5 = phi i64 [ %.sroa.5.sroa.0.0.i.i, %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsl8OoimOLbh_6qdrant.exit.i ], [ %.lobit.i.i, %bb.cm ], [ 0, %bb.ci ]
  %.sroa.37.5 = phi i64 [ %i.gl, %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsl8OoimOLbh_6qdrant.exit.i ], [ %.sroa.446.0.copyload, %bb.cm ], [ %.sroa.446.0.copyload, %bb.ci ]
  %.sroa.0.5 = phi i64 [ %.sroa.0.0.i.i, %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsl8OoimOLbh_6qdrant.exit.i ], [ -9223372036854775806, %bb.cm ], [ -9223372036854775806, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2723
  br label %.thread

.thread:                                          ; preds = %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsl8OoimOLbh_6qdrant.exit, %_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorECsl8OoimOLbh_6qdrant.exit19, %_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorECsl8OoimOLbh_6qdrant.exit, %bb.z, %bb.q, %bb.j, %bb.ag
  %.sroa.22.sroa.21.sroa.0.6 = phi i64 [ %.sroa.22.sroa.21.sroa.0.0.in.in, %bb.ag ], [ 0, %bb.q ], [ 0, %bb.z ], [ 0, %bb.j ], [ %.sroa.22.sroa.21.sroa.0.2.in.in, %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.22.sroa.21.sroa.0.1, %_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorECsl8OoimOLbh_6qdrant.exit19 ], [ %.sroa.22.sroa.21.sroa.0.5, %_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorECsl8OoimOLbh_6qdrant.exit ]
  %.sroa.22.sroa.0.6 = phi i64 [ %.sroa.22.sroa.21.sroa.0.0.in.in, %bb.ag ], [ 1, %bb.q ], [ 0, %bb.z ], [ 0, %bb.j ], [ %.sroa.22.sroa.21.sroa.0.2.in.in, %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.22.sroa.0.1, %_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorECsl8OoimOLbh_6qdrant.exit19 ], [ %.sroa.22.sroa.0.5, %_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorECsl8OoimOLbh_6qdrant.exit ]
  %.sroa.45.4 = phi i64 [ %.sroa.45.0, %bb.ag ], [ undef, %bb.q ], [ undef, %bb.z ], [ undef, %bb.j ], [ %.sroa.4.0.copyload.i, %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsl8OoimOLbh_6qdrant.exit ], [ undef, %_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorECsl8OoimOLbh_6qdrant.exit19 ], [ undef, %_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorECsl8OoimOLbh_6qdrant.exit ]
  %.sroa.37.6 = phi i64 [ %.sroa.37.0, %bb.ag ], [ undef, %bb.q ], [ undef, %bb.z ], [ undef, %bb.j ], [ %.sroa.37.2, %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.37.1, %_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorECsl8OoimOLbh_6qdrant.exit19 ], [ %.sroa.37.5, %_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorECsl8OoimOLbh_6qdrant.exit ]
  %.sroa.0.6 = phi i64 [ %.sroa.0.0, %bb.ag ], [ -9223372036854775807, %bb.q ], [ -9223372036854775807, %bb.z ], [ -9223372036854775808, %bb.j ], [ -9223372036854775805, %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.0.1, %_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorECsl8OoimOLbh_6qdrant.exit19 ], [ %.sroa.0.5, %_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorECsl8OoimOLbh_6qdrant.exit ]
  store i64 %.sroa.0.6, ptr %0, align 8, !noalias !2714
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.sroa.21.0.insert.ext = and i64 %.sroa.22.sroa.21.sroa.0.6, -256
  %.sroa.22.sroa.0.0.insert.ext = and i64 %.sroa.22.sroa.0.6, 255
  %.sroa.22.sroa.0.0.insert.insert = or disjoint i64 %.sroa.22.sroa.0.0.insert.ext, %.sroa.22.sroa.21.0.insert.ext
  store i64 %.sroa.22.sroa.0.0.insert.insert, ptr %.sroa.22.0..sroa_idx, align 8, !noalias !2714
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.37.6, ptr %.sroa.37.0..sroa_idx, align 8, !noalias !2714
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.45.4, ptr %.sroa.45.0..sroa_idx, align 8, !noalias !2714
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47, i64 40, i1 false), !noalias !2714
  br label %bb.cn

bb.cn:                                            ; preds = %.thread, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.47)
  br label %_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECsl8OoimOLbh_6qdrant.exit

_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECsl8OoimOLbh_6qdrant.exit: ; preds = %.loopexit, %bb.ah, %bb.cn
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB5_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read9SliceReadEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [72 x i8], align 8                ; 6 uses
  %i.l = alloca [72 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 12 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [72 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [72 x i8], align 8                ; 4 uses
  %i.r = alloca [80 x i8], align 8                ; 7 uses
  %i.s = alloca [72 x i8], align 8                ; 12 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [72 x i8], align 8                ; 7 uses
  %i.v = alloca [80 x i8], align 8                ; 11 uses
  %.sroa.8 = alloca [56 x i8], align 8            ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.47 = alloca [40 x i8], align 8           ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2895)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !2896, !noalias !2897, !noundef !7 ; 8 uses
  %.promoted.i39 = load i64, ptr %i.ab, align 8, !alias.scope !2895, !noalias !2898 ; 2 uses
  %i.ae = icmp ult i64 %.promoted.i39, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !2896, !noalias !2897, !nonnull !7, !noundef !7 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.ah = phi i64 [ %.promoted.i39, %.lr.ph.i ], [ %i.ak, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2899), !noalias !2893
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !2900, !noundef !7 ; 3 uses
  switch i8 %i.aj, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ak = add i64 %i.ah, 1                        ; 3 uses
  store i64 %i.ak, ptr %i.ab, align 8, !alias.scope !2901, !noalias !2898
  %exitcond.not.i40 = icmp eq i64 %i.ak, %i.ad
  br i1 %exitcond.not.i40, label %.loopexit, label %bb.b

_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.47)
  switch i8 %i.aj, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ad
    i8 123, label %bb.ae
  ]

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2902
  store i64 5, ptr %i.aa, align 8, !noalias !2902
  %i.al = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aa), !noalias !2893, !inline_history !2815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2902
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !2893, !noalias !2894
  store i64 -1, ptr %0, align 8, !alias.scope !2893, !noalias !2894
  br label %_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2s_5ValueNtB1l_11Deserialize11deserialize12ValueVisitorECsl8OoimOLbh_6qdrant.exit

bb.d:                                             ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit
  %i.an = add i8 %i.aj, -48
  %or.cond8.i = icmp ult i8 %i.an, 10
  br i1 %or.cond8.i, label %bb.cf, label %bb.ce, !prof !14

bb.e:                                             ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit
  %i.ao = add i64 %i.ah, 1                        ; 4 uses
  store i64 %i.ao, ptr %i.ab, align 8, !alias.scope !2903, !noalias !2893
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2904)
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.ao) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2905), !noalias !2893
  %exitcond.not.i34.not = icmp ult i64 %i.ao, %i.ad
  br i1 %exitcond.not.i34.not, label %bb.f, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !2906, !noundef !7
  %i.ar = add i64 %i.ah, 2                        ; 3 uses
  store i64 %i.ar, ptr %i.ab, align 8, !alias.scope !2907, !noalias !2908
  %.not.i35 = icmp eq i8 %i.aq, 117
  br i1 %.not.i35, label %bb.g, label %bb.k, !prof !21

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2909), !noalias !2893
  %exitcond.not.i34.1 = icmp eq i64 %i.ar, %umax.i32
  br i1 %exitcond.not.i34.1, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !2910, !noundef !7
  %i.au = add i64 %i.ah, 3                        ; 3 uses
  store i64 %i.au, ptr %i.ab, align 8, !alias.scope !2911, !noalias !2908
  %.not.i35.1 = icmp eq i8 %i.at, 108
  br i1 %.not.i35.1, label %bb.i, label %bb.k, !prof !21

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2912), !noalias !2893
  %exitcond.not.i34.2 = icmp eq i64 %i.au, %umax.i32
  br i1 %exitcond.not.i34.2, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !2913, !noundef !7
  %i.ax = add i64 %i.ah, 4
  store i64 %i.ax, ptr %i.ab, align 8, !alias.scope !2914, !noalias !2908
  %.not.i35.2 = icmp eq i8 %i.aw, 108
  br i1 %.not.i35.2, label %.thread, label %bb.k, !prof !21

_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2915
  store i64 5, ptr %i.f, align 8, !noalias !2915
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !2916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2915
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2915
  store i64 9, ptr %i.e, align 8, !noalias !2915
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !2916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2915
  br label %bb.af

bb.l:                                             ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit
  %i.ba = add i64 %i.ah, 1                        ; 4 uses
  store i64 %i.ba, ptr %i.ab, align 8, !alias.scope !2917, !noalias !2893
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2918)
  %umax.i24 = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.ba) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2919), !noalias !2893
  %exitcond.not.i26.not = icmp ult i64 %i.ba, %i.ad
  br i1 %exitcond.not.i26.not, label %bb.m, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !2920, !noundef !7
  %i.bd = add i64 %i.ah, 2                        ; 3 uses
  store i64 %i.bd, ptr %i.ab, align 8, !alias.scope !2921, !noalias !2922
  %.not.i27 = icmp eq i8 %i.bc, 114
  br i1 %.not.i27, label %bb.n, label %bb.r, !prof !21

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2923), !noalias !2893
  %exitcond.not.i26.1 = icmp eq i64 %i.bd, %umax.i24
  br i1 %exitcond.not.i26.1, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !2924, !noundef !7
  %i.bg = add i64 %i.ah, 3                        ; 3 uses
  store i64 %i.bg, ptr %i.ab, align 8, !alias.scope !2925, !noalias !2922
  %.not.i27.1 = icmp eq i8 %i.bf, 117
  br i1 %.not.i27.1, label %bb.p, label %bb.r, !prof !21

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2926), !noalias !2893
  %exitcond.not.i26.2 = icmp eq i64 %i.bg, %umax.i24
  br i1 %exitcond.not.i26.2, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !2927, !noundef !7
  %i.bj = add i64 %i.ah, 4
  store i64 %i.bj, ptr %i.ab, align 8, !alias.scope !2928, !noalias !2922
  %.not.i27.2 = icmp eq i8 %i.bi, 101
  br i1 %.not.i27.2, label %.thread, label %bb.r, !prof !21

_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2929
  store i64 5, ptr %i.h, align 8, !noalias !2929
  %i.bk = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h), !noalias !2930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2929
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2929
  store i64 9, ptr %i.g, align 8, !noalias !2929
  %i.bl = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !noalias !2930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2929
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit
  %i.bm = add i64 %i.ah, 1                        ; 4 uses
  store i64 %i.bm, ptr %i.ab, align 8, !alias.scope !2931, !noalias !2893
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2932)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.bm) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2933), !noalias !2893
  %exitcond.not.i.not = icmp ult i64 %i.bm, %i.ad
  br i1 %exitcond.not.i.not, label %bb.t, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !2934, !noundef !7
  %i.bp = add i64 %i.ah, 2                        ; 3 uses
  store i64 %i.bp, ptr %i.ab, align 8, !alias.scope !2935, !noalias !2936
  %.not.i22 = icmp eq i8 %i.bo, 97
  br i1 %.not.i22, label %bb.u, label %bb.aa, !prof !21

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2937), !noalias !2893
  %exitcond.not.i.1 = icmp eq i64 %i.bp, %umax.i
  br i1 %exitcond.not.i.1, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !2938, !noundef !7
  %i.bs = add i64 %i.ah, 3                        ; 3 uses
  store i64 %i.bs, ptr %i.ab, align 8, !alias.scope !2939, !noalias !2936
  %.not.i22.1 = icmp eq i8 %i.br, 108
  br i1 %.not.i22.1, label %bb.w, label %bb.aa, !prof !21

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2940), !noalias !2893
  %exitcond.not.i.2 = icmp eq i64 %i.bs, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !2941, !noundef !7
  %i.bv = add i64 %i.ah, 4                        ; 3 uses
  store i64 %i.bv, ptr %i.ab, align 8, !alias.scope !2942, !noalias !2936
  %.not.i22.2 = icmp eq i8 %i.bu, 115
  br i1 %.not.i22.2, label %bb.y, label %bb.aa, !prof !21

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2943), !noalias !2893
  %exitcond.not.i.3 = icmp eq i64 %i.bv, %umax.i
  br i1 %exitcond.not.i.3, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !2944, !noundef !7
  %i.by = add i64 %i.ah, 5
  store i64 %i.by, ptr %i.ab, align 8, !alias.scope !2945, !noalias !2936
  %.not.i22.3 = icmp eq i8 %i.bx, 101
  br i1 %.not.i22.3, label %.thread, label %bb.aa, !prof !21

_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2946
  store i64 5, ptr %i.j, align 8, !noalias !2946
  %i.bz = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !2947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2946
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2946
  store i64 9, ptr %i.i, align 8, !noalias !2946
  %i.ca = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i), !noalias !2947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2946
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit
  %i.cb = add i64 %i.ah, 1
  store i64 %i.cb, ptr %i.ab, align 8, !alias.scope !2948, !noalias !2893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2902
  call void @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !2893, !inline_history !2815
  %i.cc = load i64, ptr %i.z, align 8, !range !13, !noalias !2902, !noundef !7 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, -1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  br i1 %i.cd, label %bb.ak, label %bb.al

bb.ac:                                            ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit
  %i.cf = add i64 %i.ah, 1
  store i64 %i.cf, ptr %i.ab, align 8, !alias.scope !2949, !noalias !2893
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cg, align 8, !alias.scope !2894, !noalias !2893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2902
  call void @_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !2893, !inline_history !2815
  %i.ch = load i64, ptr %i.x, align 8, !range !6, !noalias !2902, !noundef !7 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 2
  %i.cj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !2902 ; 3 uses
  br i1 %i.ci, label %bb.aq, label %bb.ar

bb.ad:                                            ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cm = load i8, ptr %i.cl, align 8, !alias.scope !2894, !noalias !2893, !noundef !7
  %i.cn = add i8 %i.cm, -1                        ; 2 uses
  store i8 %i.cn, ptr %i.cl, align 8, !alias.scope !2894, !noalias !2893
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.ay, label %bb.az, !prof !17

bb.ae:                                            ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cq = load i8, ptr %i.cp, align 8, !alias.scope !2894, !noalias !2893, !noundef !7
  %i.cr = add i8 %i.cq, -1                        ; 2 uses
  store i8 %i.cr, ptr %i.cp, align 8, !alias.scope !2894, !noalias !2893
  %i.cs = icmp eq i8 %i.cr, 0
  br i1 %i.cs, label %bb.bw, label %bb.bx, !prof !17

bb.af:                                            ; preds = %bb.k, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37
  %.sroa.0.1.i36.ph = phi ptr [ %i.ay, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37 ], [ %i.az, %bb.k ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i36.ph, ptr %i.ct, align 8, !alias.scope !2893, !noalias !2894
  store i64 -1, ptr %0, align 8, !alias.scope !2893, !noalias !2894
  br label %bb.ah

bb.ag:                                            ; preds = %.thread86, %.thread83
  %.sroa.22.sroa.21.sroa.0.0.in.in = phi i64 [ %.sroa.22.sroa.21.sroa.0.4.in.in, %.thread86 ], [ %.sroa.22.sroa.21.sroa.0.3.in.in, %.thread83 ] ; 3 uses
  %.sroa.45.0 = phi i64 [ %.sroa.45.3, %.thread86 ], [ %.sroa.45.2, %.thread83 ]
  %.sroa.37.0 = phi i64 [ %.sroa.37.4, %.thread86 ], [ %.sroa.37.3, %.thread83 ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.4, %.thread86 ], [ %.sroa.0.3, %.thread83 ] ; 2 uses
  %i.cu = icmp eq i64 %.sroa.0.0, -1
  br i1 %i.cu, label %._crit_edge, label %.thread, !prof !43

._crit_edge:                                      ; preds = %bb.ag
  %i.cv = inttoptr i64 %.sroa.22.sroa.21.sroa.0.0.in.in to ptr
  br label %bb.cg

bb.ah:                                            ; preds = %bb.ch, %bb.bw, %bb.ay, %bb.aq, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.47)
  br label %_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2s_5ValueNtB1l_11Deserialize11deserialize12ValueVisitorECsl8OoimOLbh_6qdrant.exit

bb.ai:                                            ; preds = %bb.r, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29
  %.sroa.0.1.i28.ph = phi ptr [ %i.bk, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29 ], [ %i.bl, %bb.r ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i28.ph, ptr %i.cw, align 8, !alias.scope !2893, !noalias !2894
  store i64 -1, ptr %0, align 8, !alias.scope !2893, !noalias !2894
  br label %bb.ah

bb.aj:                                            ; preds = %bb.aa, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i
  %.sroa.0.1.i.ph = phi ptr [ %i.bz, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i ], [ %i.ca, %bb.aa ]
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.cx, align 8, !alias.scope !2893, !noalias !2894
  store i64 -1, ptr %0, align 8, !alias.scope !2893, !noalias !2894
  br label %bb.ah

bb.ak:                                            ; preds = %bb.ab
  %i.cy = load ptr, ptr %i.ce, align 8, !noalias !2902, !nonnull !7, !align !15, !noundef !7
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.cz, align 8, !alias.scope !2893, !noalias !2894
  store i64 -1, ptr %0, align 8, !alias.scope !2893, !noalias !2894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2902
  br label %bb.ah

bb.al:                                            ; preds = %bb.ab
  %.sroa.4.0.copyload = load i64, ptr %i.ce, align 8, !noalias !2902 ; 5 uses
  switch i64 %i.cc, label %default.unreachable214 [
    i64 0, label %bb.am
    i64 1, label %_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorECsl8OoimOLbh_6qdrant.exit19
    i64 2, label %bb.ap
  ]

default.unreachable214:                           ; preds = %bb.ci, %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.da = bitcast i64 %.sroa.4.0.copyload to double
  %i.db = tail call double @llvm.fabs.f64(double %i.da)
  %i.dc = fcmp ueq double %i.db, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2950
  br i1 %i.dc, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.sroa.5.0..sroa_idx4.i.i14 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5.sroa.0.0.copyload8.i.i15 = load i64, ptr %.sroa.5.0..sroa_idx4.i.i14, align 8, !alias.scope !2951, !noalias !2952
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i16 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5.sroa.5.0.copyload9.i.i17181 = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i16, align 8, !alias.scope !2951, !noalias !2952
  br label %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsl8OoimOLbh_6qdrant.exit.i8

bb.ao:                                            ; preds = %bb.am
  store i64 -9223372036854775808, ptr %i.k, align 8, !noalias !2950
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2953), !noalias !2893
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8O45qwFIwQX_10serde_json5value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.k), !noalias !2954
  br label %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsl8OoimOLbh_6qdrant.exit.i8

_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsl8OoimOLbh_6qdrant.exit.i8: ; preds = %bb.ao, %bb.an
  %i.dd = phi i64 [ %.sroa.5.sroa.5.0.copyload9.i.i17181, %bb.an ], [ %.sroa.4.0.copyload, %bb.ao ]
  %.sroa.5.sroa.0.0.i.i10 = phi i64 [ %.sroa.5.sroa.0.0.copyload8.i.i15, %bb.an ], [ 2, %bb.ao ] ; 2 uses
  %.sroa.0.0.i.i11 = phi i64 [ -9223372036854775808, %bb.an ], [ -9223372036854775806, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2950
  br label %_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorECsl8OoimOLbh_6qdrant.exit19

bb.ap:                                            ; preds = %bb.al
  %.lobit.i.i3 = lshr i64 %.sroa.4.0.copyload, 63
  br label %_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorECsl8OoimOLbh_6qdrant.exit19

_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorECsl8OoimOLbh_6qdrant.exit19: ; preds = %bb.al, %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsl8OoimOLbh_6qdrant.exit.i8, %bb.ap
  %.sroa.22.sroa.21.sroa.0.1 = phi i64 [ %.sroa.5.sroa.0.0.i.i10, %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsl8OoimOLbh_6qdrant.exit.i8 ], [ 0, %bb.ap ], [ 0, %bb.al ]
  %.sroa.22.sroa.0.1 = phi i64 [ %.sroa.5.sroa.0.0.i.i10, %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsl8OoimOLbh_6qdrant.exit.i8 ], [ %.lobit.i.i3, %bb.ap ], [ 0, %bb.al ]
  %.sroa.37.1 = phi i64 [ %i.dd, %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsl8OoimOLbh_6qdrant.exit.i8 ], [ %.sroa.4.0.copyload, %bb.ap ], [ %.sroa.4.0.copyload, %bb.al ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.i.i11, %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsl8OoimOLbh_6qdrant.exit.i8 ], [ -9223372036854775806, %bb.ap ], [ -9223372036854775806, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2902
  br label %.thread

bb.aq:                                            ; preds = %bb.ac
end_hunk_1
begin_hunk_2_@_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_u64NtNvXs1c_NtB1l_5implsjNtB1l_11Deserialize11deserialize16PrimitiveVisitorECsl8OoimOLbh_6qdrant:bb.a
  %i.w = load ptr, ptr %i.u, align 8, !noalias !9008, !nonnull !7, !align !15, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9008
  br label %_RINvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB6_12DeserializerNtNtB8_4read9SliceReadE18deserialize_numberNtNvXs1c_NtNtCs4NSHK7GLW4I_10serde_core2de5implsjNtB1N_11Deserialize11deserialize16PrimitiveVisitorECsl8OoimOLbh_6qdrant.exit

bb.g:                                             ; preds = %bb.d
  %.sroa.2.0.copyload.i = load i64, ptr %i.u, align 8, !noalias !9008 ; 5 uses
  switch i64 %i.s, label %default.unreachable [
    i64 0, label %bb.h
    i64 1, label %bb.i
    i64 2, label %bb.j
  ]

default.unreachable:                              ; preds = %bb.r, %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.x = bitcast i64 %.sroa.2.0.copyload.i to double
  %i.y = tail call { i64, ptr } @_RINvYNtNvXs1c_NtNtCs4NSHK7GLW4I_10serde_core2de5implsjNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor9visit_f64NtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(double noundef %i.x), !noalias !9018
  br label %_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1c_NtNtCs4NSHK7GLW4I_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsl8OoimOLbh_6qdrant.exit.i

bb.i:                                             ; preds = %bb.g
  %i.z = inttoptr i64 %.sroa.2.0.copyload.i to ptr
  %i.aa = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.z, 1
  br label %_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1c_NtNtCs4NSHK7GLW4I_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsl8OoimOLbh_6qdrant.exit.i

bb.j:                                             ; preds = %bb.g
  %i.ab = icmp sgt i64 %.sroa.2.0.copyload.i, -1
  br i1 %i.ab, label %bb.l, label %bb.k, !prof !16

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9019
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.2.0.copyload.i, ptr %i.ac, align 8, !noalias !9019
  store i8 2, ptr %i.c, align 8, !noalias !9019
  %i.ad = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error13invalid_value(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5), !noalias !9018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9019
  br label %_RINvXNvXs1c_NtNtCs4NSHK7GLW4I_10serde_core2de5implsjNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.ae = inttoptr i64 %.sroa.2.0.copyload.i to ptr
  br label %_RINvXNvXs1c_NtNtCs4NSHK7GLW4I_10serde_core2de5implsjNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant.exit.i.i

_RINvXNvXs1c_NtNtCs4NSHK7GLW4I_10serde_core2de5implsjNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.l, %bb.k
  %.sroa.3.0.i.i.i = phi ptr [ %i.ae, %bb.l ], [ %i.ad, %bb.k ]
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.l ], [ 1, %bb.k ]
  %i.af = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i.i.i, 0
  %i.ag = insertvalue { i64, ptr } %i.af, ptr %.sroa.3.0.i.i.i, 1
  br label %_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1c_NtNtCs4NSHK7GLW4I_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsl8OoimOLbh_6qdrant.exit.i

_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1c_NtNtCs4NSHK7GLW4I_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsl8OoimOLbh_6qdrant.exit.i: ; preds = %_RINvXNvXs1c_NtNtCs4NSHK7GLW4I_10serde_core2de5implsjNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant.exit.i.i, %bb.i, %bb.h
  %.merged.i.i = phi { i64, ptr } [ %i.y, %bb.h ], [ %i.aa, %bb.i ], [ %i.ag, %_RINvXNvXs1c_NtNtCs4NSHK7GLW4I_10serde_core2de5implsjNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9008
  br label %bb.m

bb.m:                                             ; preds = %_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1c_NtNtCs4NSHK7GLW4I_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsl8OoimOLbh_6qdrant.exit13.i, %_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1c_NtNtCs4NSHK7GLW4I_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsl8OoimOLbh_6qdrant.exit.i
  %.pn.i = phi { i64, ptr } [ %.merged.i.i, %_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1c_NtNtCs4NSHK7GLW4I_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsl8OoimOLbh_6qdrant.exit.i ], [ %.merged.i11.i, %_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1c_NtNtCs4NSHK7GLW4I_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsl8OoimOLbh_6qdrant.exit13.i ] ; 2 uses
  %.sroa.74.0.in.i = extractvalue { i64, ptr } %.pn.i, 1 ; 2 uses
  %.sroa.03.0.i = extractvalue { i64, ptr } %.pn.i, 0
  %i.ah = trunc nuw i64 %.sroa.03.0.i to i1
  br i1 %i.ah, label %bb.p, label %_RINvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB6_12DeserializerNtNtB8_4read9SliceReadE18deserialize_numberNtNvXs1c_NtNtCs4NSHK7GLW4I_10serde_core2de5implsjNtB1N_11Deserialize11deserialize16PrimitiveVisitorECsl8OoimOLbh_6qdrant.exit, !prof !17

bb.n:                                             ; preds = %bb.e
  %i.ai = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5)
  br label %bb.p

bb.o:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9008
  call void @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext true)
  %i.aj = load i64, ptr %i.d, align 8, !range !13, !noalias !9008, !noundef !7 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, -1
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.ak, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.n, %bb.m
  %.sroa.74.1.i = phi ptr [ %.sroa.74.0.in.i, %bb.m ], [ %i.ai, %bb.n ]
  %i.am = call noundef nonnull align 8 ptr @_RINvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsl8OoimOLbh_6qdrant(ptr noalias noundef nonnull align 8 %.sroa.74.1.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  br label %_RINvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB6_12DeserializerNtNtB8_4read9SliceReadE18deserialize_numberNtNvXs1c_NtNtCs4NSHK7GLW4I_10serde_core2de5implsjNtB1N_11Deserialize11deserialize16PrimitiveVisitorECsl8OoimOLbh_6qdrant.exit

bb.q:                                             ; preds = %bb.o
  %i.an = load ptr, ptr %i.al, align 8, !noalias !9008, !nonnull !7, !align !15, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9008
  br label %_RINvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB6_12DeserializerNtNtB8_4read9SliceReadE18deserialize_numberNtNvXs1c_NtNtCs4NSHK7GLW4I_10serde_core2de5implsjNtB1N_11Deserialize11deserialize16PrimitiveVisitorECsl8OoimOLbh_6qdrant.exit

bb.r:                                             ; preds = %bb.o
  %.sroa.218.0.copyload.i = load i64, ptr %i.al, align 8, !noalias !9008 ; 5 uses
  switch i64 %i.aj, label %default.unreachable [
    i64 0, label %bb.s
    i64 1, label %bb.t
    i64 2, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  %i.ao = bitcast i64 %.sroa.218.0.copyload.i to double
  %i.ap = tail call { i64, ptr } @_RINvYNtNvXs1c_NtNtCs4NSHK7GLW4I_10serde_core2de5implsjNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor9visit_f64NtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(double noundef %i.ao), !noalias !9020
  br label %_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1c_NtNtCs4NSHK7GLW4I_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsl8OoimOLbh_6qdrant.exit13.i

bb.t:                                             ; preds = %bb.r
  %i.aq = inttoptr i64 %.sroa.218.0.copyload.i to ptr
  %i.ar = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.aq, 1
  br label %_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1c_NtNtCs4NSHK7GLW4I_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsl8OoimOLbh_6qdrant.exit13.i

bb.u:                                             ; preds = %bb.r
  %i.as = icmp sgt i64 %.sroa.218.0.copyload.i, -1
  br i1 %i.as, label %bb.w, label %bb.v, !prof !16

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9021
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.218.0.copyload.i, ptr %i.at, align 8, !noalias !9021
  store i8 2, ptr %i.b, align 8, !noalias !9021
  %i.au = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error13invalid_value(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5), !noalias !9020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9021
  br label %_RINvXNvXs1c_NtNtCs4NSHK7GLW4I_10serde_core2de5implsjNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant.exit.i8.i

bb.w:                                             ; preds = %bb.u
  %i.av = inttoptr i64 %.sroa.218.0.copyload.i to ptr
  br label %_RINvXNvXs1c_NtNtCs4NSHK7GLW4I_10serde_core2de5implsjNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant.exit.i8.i

_RINvXNvXs1c_NtNtCs4NSHK7GLW4I_10serde_core2de5implsjNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant.exit.i8.i: ; preds = %bb.w, %bb.v
  %.sroa.3.0.i.i9.i = phi ptr [ %i.av, %bb.w ], [ %i.au, %bb.v ]
  %.sroa.0.0.i.i10.i = phi i64 [ 0, %bb.w ], [ 1, %bb.v ]
  %i.aw = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i.i10.i, 0
  %i.ax = insertvalue { i64, ptr } %i.aw, ptr %.sroa.3.0.i.i9.i, 1
  br label %_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1c_NtNtCs4NSHK7GLW4I_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsl8OoimOLbh_6qdrant.exit13.i

_RINvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1c_NtNtCs4NSHK7GLW4I_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsl8OoimOLbh_6qdrant.exit13.i: ; preds = %_RINvXNvXs1c_NtNtCs4NSHK7GLW4I_10serde_core2de5implsjNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant.exit.i8.i, %bb.t, %bb.s
  %.merged.i11.i = phi { i64, ptr } [ %i.ap, %bb.s ], [ %i.ar, %bb.t ], [ %i.ax, %_RINvXNvXs1c_NtNtCs4NSHK7GLW4I_10serde_core2de5implsjNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant.exit.i8.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9008
  br label %bb.m

_RINvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB6_12DeserializerNtNtB8_4read9SliceReadE18deserialize_numberNtNvXs1c_NtNtCs4NSHK7GLW4I_10serde_core2de5implsjNtB1N_11Deserialize11deserialize16PrimitiveVisitorECsl8OoimOLbh_6qdrant.exit: ; preds = %.loopexit.i, %bb.f, %bb.m, %bb.p, %bb.q
  %.sroa.7.3.in.i = phi ptr [ %i.q, %.loopexit.i ], [ %i.an, %bb.q ], [ %i.w, %bb.f ], [ %i.am, %bb.p ], [ %.sroa.74.0.in.i, %bb.m ]
  %.sroa.0.3.i = phi i64 [ 1, %.loopexit.i ], [ 1, %bb.q ], [ 1, %bb.f ], [ 1, %bb.p ], [ 0, %bb.m ]
  %i.ay = insertvalue { i64, ptr } poison, i64 %.sroa.0.3.i, 0
  %i.az = insertvalue { i64, ptr } %i.ay, ptr %.sroa.7.3.in.i, 1
  ret { i64, ptr } %i.az
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_u64QDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RINvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB6_12DeserializerNtNtB8_4read9SliceReadE18deserialize_numberQDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_boolNtNtB1l_5impls11BoolVisitorECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9051)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !9052, !noalias !9053, !noundef !7 ; 6 uses
  %.promoted.i = load i64, ptr %i.g, align 8, !alias.scope !9051, !noalias !9054 ; 2 uses
  %i.j = icmp ult i64 %.promoted.i, %i.i
  br i1 %i.j, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !9052, !noalias !9053, !nonnull !7, !noundef !7 ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.m = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.p, %bb.c ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9055)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !noalias !9056, !noundef !7
  switch i8 %i.o, label %bb.u [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 116, label %bb.d
    i8 102, label %bb.k
  ], !prof !49

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.p = add i64 %i.m, 1                          ; 3 uses
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !9057, !noalias !9054
  %exitcond.not.i = icmp eq i64 %i.p, %i.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 5, ptr %i.f, align 8
  %i.q = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  %i.s = add i64 %i.m, 1                          ; 4 uses
  store i64 %i.s, ptr %i.g, align 8, !alias.scope !9058
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9059)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 %i.s) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9060)
  %exitcond.not.i9.not = icmp ult i64 %i.s, %i.i
  br i1 %exitcond.not.i9.not, label %bb.e, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !noalias !9061, !noundef !7
  %i.v = add i64 %i.m, 2                          ; 3 uses
  store i64 %i.v, ptr %i.g, align 8, !alias.scope !9062, !noalias !9063
  %.not.i = icmp eq i8 %i.u, 114
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !21

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9064)
  %exitcond.not.i9.1 = icmp eq i64 %i.v, %umax.i
  br i1 %exitcond.not.i9.1, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !9065, !noundef !7
  %i.y = add i64 %i.m, 3                          ; 3 uses
  store i64 %i.y, ptr %i.g, align 8, !alias.scope !9066, !noalias !9063
  %.not.i.1 = icmp eq i8 %i.x, 117
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !21

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9067)
  %exitcond.not.i9.2 = icmp eq i64 %i.y, %umax.i
  br i1 %exitcond.not.i9.2, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !9068, !noundef !7
  %i.ab = add i64 %i.m, 4
  store i64 %i.ab, ptr %i.g, align 8, !alias.scope !9069, !noalias !9063
  %.not.i.2 = icmp eq i8 %i.aa, 101
  br i1 %.not.i.2, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit, label %bb.j, !prof !21

_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9070
  store i64 5, ptr %i.e, align 8, !noalias !9070
  %i.ac = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !9071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9070
  br label %bb.t

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9070
  store i64 9, ptr %i.d, align 8, !noalias !9070
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !9071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9070
  br label %bb.t

bb.k:                                             ; preds = %bb.b
  %i.ae = add i64 %i.m, 1                         ; 4 uses
  store i64 %i.ae, ptr %i.g, align 8, !alias.scope !9072
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9073)
  %umax.i12 = tail call i64 @llvm.umax.i64(i64 %i.i, i64 %i.ae) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9074)
  %exitcond.not.i14.not = icmp ult i64 %i.ae, %i.i
  br i1 %exitcond.not.i14.not, label %bb.l, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i18

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !9075, !noundef !7
  %i.ah = add i64 %i.m, 2                         ; 3 uses
  store i64 %i.ah, ptr %i.g, align 8, !alias.scope !9076, !noalias !9077
  %.not.i15 = icmp eq i8 %i.ag, 97
  br i1 %.not.i15, label %bb.m, label %bb.s, !prof !21

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9078)
  %exitcond.not.i14.1 = icmp eq i64 %i.ah, %umax.i12
  br i1 %exitcond.not.i14.1, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i18, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !9079, !noundef !7
  %i.ak = add i64 %i.m, 3                         ; 3 uses
  store i64 %i.ak, ptr %i.g, align 8, !alias.scope !9080, !noalias !9077
  %.not.i15.1 = icmp eq i8 %i.aj, 108
  br i1 %.not.i15.1, label %bb.o, label %bb.s, !prof !21

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9081)
  %exitcond.not.i14.2 = icmp eq i64 %i.ak, %umax.i12
  br i1 %exitcond.not.i14.2, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i18, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !noalias !9082, !noundef !7
  %i.an = add i64 %i.m, 4                         ; 3 uses
  store i64 %i.an, ptr %i.g, align 8, !alias.scope !9083, !noalias !9077
  %.not.i15.2 = icmp eq i8 %i.am, 115
  br i1 %.not.i15.2, label %bb.q, label %bb.s, !prof !21

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9084)
  %exitcond.not.i14.3 = icmp eq i64 %i.an, %umax.i12
  br i1 %exitcond.not.i14.3, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i18, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !9085, !noundef !7
  %i.aq = add i64 %i.m, 5
  store i64 %i.aq, ptr %i.g, align 8, !alias.scope !9086, !noalias !9077
  %.not.i15.3 = icmp eq i8 %i.ap, 101
  br i1 %.not.i15.3, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit, label %bb.s, !prof !21

_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i18: ; preds = %bb.q, %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9087
  store i64 5, ptr %i.c, align 8, !noalias !9087
  %i.ar = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !9088
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9087
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9087
  store i64 9, ptr %i.b, align 8, !noalias !9087
  %i.as = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !9088
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9087
  br label %bb.t

bb.t:                                             ; preds = %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, %bb.j, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i18, %bb.s
  %.sroa.0.1.i17.ph.sink = phi ptr [ %i.as, %bb.s ], [ %i.ar, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i18 ], [ %i.ac, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i ], [ %i.ad, %bb.j ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i17.ph.sink, ptr %i.at, align 8
  br label %bb.v

bb.u:                                             ; preds = %bb.b
  %i.au = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @337)
  %i.av = call noundef nonnull align 8 ptr @_RINvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsl8OoimOLbh_6qdrant(ptr noalias noundef nonnull align 8 %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.aw, align 8
  br label %bb.v

_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.r, %bb.i
  %.sroa.7.0 = phi i8 [ 1, %bb.i ], [ 0, %bb.r ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.7.0, ptr %i.ax, align 1
  br label %bb.v

bb.v:                                             ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit, %bb.u, %.loopexit, %bb.t
  %storemerge.sink = phi i8 [ 1, %bb.t ], [ 1, %.loopexit ], [ 0, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit ], [ 1, %bb.u ]
  store i8 %storemerge.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_boolQDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %3, ptr %i.h, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9118)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !9119, !noalias !9120, !noundef !7 ; 6 uses
  %.promoted.i = load i64, ptr %i.i, align 8, !alias.scope !9118, !noalias !9121 ; 2 uses
  %i.l = icmp ult i64 %.promoted.i, %i.k
  br i1 %i.l, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !9119, !noalias !9120, !nonnull !7, !noundef !7 ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.o = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.r, %bb.c ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9122)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !noalias !9123, !noundef !7 ; 2 uses
  switch i8 %i.q, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.r = add i64 %i.o, 1                          ; 3 uses
  store i64 %i.r, ptr %i.i, align 8, !alias.scope !9124, !noalias !9121
  %exitcond.not.i = icmp eq i64 %i.r, %i.k
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  switch i8 %i.q, label %bb.d [
    i8 116, label %bb.e
    i8 102, label %bb.l
  ], !prof !50

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 5, ptr %i.f, align 8
  %i.s = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.t, align 8
  store ptr null, ptr %0, align 8
  br label %bb.y

bb.d:                                             ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit
  %i.u = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1)
  br label %bb.v

bb.e:                                             ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit
  %i.v = add i64 %i.o, 1                          ; 4 uses
  store i64 %i.v, ptr %i.i, align 8, !alias.scope !9125
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9126)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %i.v) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9127)
  %exitcond.not.i9.not = icmp ult i64 %i.v, %i.k
  br i1 %exitcond.not.i9.not, label %bb.f, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !9128, !noundef !7
  %i.y = add i64 %i.o, 2                          ; 3 uses
  store i64 %i.y, ptr %i.i, align 8, !alias.scope !9129, !noalias !9130
  %.not.i = icmp eq i8 %i.x, 114
  br i1 %.not.i, label %bb.g, label %bb.k, !prof !21

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9131)
  %exitcond.not.i9.1 = icmp eq i64 %i.y, %umax.i
  br i1 %exitcond.not.i9.1, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !9132, !noundef !7
  %i.ab = add i64 %i.o, 3                         ; 3 uses
  store i64 %i.ab, ptr %i.i, align 8, !alias.scope !9133, !noalias !9130
  %.not.i.1 = icmp eq i8 %i.aa, 117
  br i1 %.not.i.1, label %bb.i, label %bb.k, !prof !21

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9134)
  %exitcond.not.i9.2 = icmp eq i64 %i.ab, %umax.i
  br i1 %exitcond.not.i9.2, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !9135, !noundef !7
  %i.ae = add i64 %i.o, 4
  store i64 %i.ae, ptr %i.i, align 8, !alias.scope !9136, !noalias !9130
  %.not.i.2 = icmp eq i8 %i.ad, 101
  br i1 %.not.i.2, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit19, label %bb.k, !prof !21

_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9137
  store i64 5, ptr %i.d, align 8, !noalias !9137
  %i.af = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !9138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9137
  br label %bb.u

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9137
  store i64 9, ptr %i.c, align 8, !noalias !9137
  %i.ag = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !9138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9137
  br label %bb.u

bb.l:                                             ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit
  %i.ah = add i64 %i.o, 1                         ; 4 uses
  store i64 %i.ah, ptr %i.i, align 8, !alias.scope !9139
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9140)
  %umax.i12 = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %i.ah) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9141)
  %exitcond.not.i14.not = icmp ult i64 %i.ah, %i.k
  br i1 %exitcond.not.i14.not, label %bb.m, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i18

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !9142, !noundef !7
  %i.ak = add i64 %i.o, 2                         ; 3 uses
  store i64 %i.ak, ptr %i.i, align 8, !alias.scope !9143, !noalias !9144
  %.not.i15 = icmp eq i8 %i.aj, 97
  br i1 %.not.i15, label %bb.n, label %bb.t, !prof !21

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9145)
  %exitcond.not.i14.1 = icmp eq i64 %i.ak, %umax.i12
  br i1 %exitcond.not.i14.1, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i18, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !noalias !9146, !noundef !7
  %i.an = add i64 %i.o, 3                         ; 3 uses
  store i64 %i.an, ptr %i.i, align 8, !alias.scope !9147, !noalias !9144
  %.not.i15.1 = icmp eq i8 %i.am, 108
  br i1 %.not.i15.1, label %bb.p, label %bb.t, !prof !21

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9148)
  %exitcond.not.i14.2 = icmp eq i64 %i.an, %umax.i12
  br i1 %exitcond.not.i14.2, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i18, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !9149, !noundef !7
  %i.aq = add i64 %i.o, 4                         ; 3 uses
  store i64 %i.aq, ptr %i.i, align 8, !alias.scope !9150, !noalias !9144
  %.not.i15.2 = icmp eq i8 %i.ap, 115
  br i1 %.not.i15.2, label %bb.r, label %bb.t, !prof !21

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9151)
  %exitcond.not.i14.3 = icmp eq i64 %i.aq, %umax.i12
  br i1 %exitcond.not.i14.3, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i18, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !noalias !9152, !noundef !7
  %i.at = add i64 %i.o, 5
  store i64 %i.at, ptr %i.i, align 8, !alias.scope !9153, !noalias !9144
  %.not.i15.3 = icmp eq i8 %i.as, 101
  br i1 %.not.i15.3, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit19, label %bb.t, !prof !21

_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i18: ; preds = %bb.r, %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9154
  store i64 5, ptr %i.b, align 8, !noalias !9154
  %i.au = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !9155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9154
  br label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9154
  store i64 9, ptr %i.a, align 8, !noalias !9154
  %i.av = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !9155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9154
  br label %bb.u

_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit19: ; preds = %bb.j, %bb.s
  %.sink = phi i1 [ false, %bb.s ], [ true, %bb.j ]
  call void @_RINvXs8_NtCs3cfoFdbzKJ1_12erased_serde2deQDNtB6_7VisitorEL_NtNtCs4NSHK7GLW4I_10serde_core2de7Visitor10visit_boolNtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %3, i1 noundef zeroext %.sink)
  %i.aw = load ptr, ptr %i.e, align 8, !noundef !7
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %._crit_edge, label %bb.w, !prof !17

._crit_edge:                                      ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit19
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.v

bb.u:                                             ; preds = %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, %bb.k, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i18, %bb.t
  %.sroa.0.1.i17.ph.sink = phi ptr [ %i.av, %bb.t ], [ %i.au, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i18 ], [ %i.af, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i ], [ %i.ag, %bb.k ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i17.ph.sink, ptr %i.ay, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.y

bb.v:                                             ; preds = %._crit_edge, %bb.d
  %i.az = phi ptr [ %.pre, %._crit_edge ], [ %i.u, %bb.d ]
  %i.ba = call noundef nonnull align 8 ptr @_RINvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsl8OoimOLbh_6qdrant(ptr noalias noundef nonnull align 8 %i.az, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ba, ptr %i.bb, align 8
  store ptr null, ptr %0, align 8
  br label %bb.x

bb.w:                                             ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.loopexit, %bb.u
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_charQDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_strQDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_i128QDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RINvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB6_12DeserializerNtNtB8_4read9SliceReadE19do_deserialize_i128QDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_u128QDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RINvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB6_12DeserializerNtNtB8_4read9SliceReadE19do_deserialize_u128QDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_unitQDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %3, ptr %i.f, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9174)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !9175, !noalias !9176, !noundef !7 ; 4 uses
  %.promoted.i = load i64, ptr %i.g, align 8, !alias.scope !9174, !noalias !9177 ; 2 uses
  %i.j = icmp ult i64 %.promoted.i, %i.i
  br i1 %i.j, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !9175, !noalias !9176, !nonnull !7, !noundef !7 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.m = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.p, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9178)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !noalias !9179, !noundef !7 ; 2 uses
  switch i8 %i.o, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.p = add i64 %i.m, 1                          ; 3 uses
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !9180, !noalias !9177
  %exitcond.not.i = icmp eq i64 %i.p, %i.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.q = icmp eq i8 %i.o, 110
  br i1 %i.q, label %bb.d, label %bb.k, !prof !16

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 5, ptr %i.d, align 8
  %i.r = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.s, align 8
  store ptr null, ptr %0, align 8
  br label %bb.p

bb.d:                                             ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit
  %i.t = add i64 %i.m, 1                          ; 4 uses
  store i64 %i.t, ptr %i.g, align 8, !alias.scope !9181
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9182)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 %i.t) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9183)
  %exitcond.not.i6.not = icmp ult i64 %i.t, %i.i
  br i1 %exitcond.not.i6.not, label %bb.e, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !noalias !9184, !noundef !7
  %i.w = add i64 %i.m, 2                          ; 3 uses
  store i64 %i.w, ptr %i.g, align 8, !alias.scope !9185, !noalias !9186
  %.not.i = icmp eq i8 %i.v, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !21

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9187)
  %exitcond.not.i6.1 = icmp eq i64 %i.w, %umax.i
  br i1 %exitcond.not.i6.1, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !9188, !noundef !7
  %i.z = add i64 %i.m, 3                          ; 3 uses
  store i64 %i.z, ptr %i.g, align 8, !alias.scope !9189, !noalias !9186
  %.not.i.1 = icmp eq i8 %i.y, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !21

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9190)
  %exitcond.not.i6.2 = icmp eq i64 %i.z, %umax.i
  br i1 %exitcond.not.i6.2, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !noalias !9191, !noundef !7
  %i.ac = add i64 %i.m, 4
  store i64 %i.ac, ptr %i.g, align 8, !alias.scope !9192, !noalias !9186
  %.not.i.2 = icmp eq i8 %i.ab, 108
  br i1 %.not.i.2, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit, label %bb.j, !prof !21

_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9193
  store i64 5, ptr %i.b, align 8, !noalias !9193
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !9194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9193
  br label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9193
  store i64 9, ptr %i.a, align 8, !noalias !9193
  %i.ae = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !9194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9193
  br label %bb.l

bb.k:                                             ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit
  %i.af = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1)
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i
  %.sroa.0.1.i.ph = phi ptr [ %i.ad, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i ], [ %i.ae, %bb.j ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.ag, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p

_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.i
  call void @_RINvXs8_NtCs3cfoFdbzKJ1_12erased_serde2deQDNtB6_7VisitorEL_NtNtCs4NSHK7GLW4I_10serde_core2de7Visitor10visit_unitNtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %3)
  %i.ah = load ptr, ptr %i.c, align 8, !noundef !7
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit._crit_edge, label %bb.n, !prof !17

_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit._crit_edge: ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.m

bb.m:                                             ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit._crit_edge, %bb.k
  %i.aj = phi ptr [ %.pre, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit._crit_edge ], [ %i.af, %bb.k ]
  %i.ak = call noundef nonnull align 8 ptr @_RINvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsl8OoimOLbh_6qdrant(ptr noalias noundef nonnull align 8 %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.al, align 8
  store ptr null, ptr %0, align 8
  br label %bb.o

bb.n:                                             ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.loopexit, %bb.l
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer17deserialize_bytesINtNtNtCs4R3jSB693Zs_4uuid8external13serde_support16UuidBytesVisitorNtB2u_4UuidEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 13 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9218)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !9219, !noalias !9220, !noundef !7 ; 4 uses
  %.promoted.i = load i64, ptr %i.h, align 8, !alias.scope !9218, !noalias !9221 ; 2 uses
  %i.k = icmp ult i64 %.promoted.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !9219, !noalias !9220, !nonnull !7, !noundef !7 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.n = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.q, %bb.c ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9222)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !9223, !noundef !7 ; 2 uses
  switch i8 %i.p, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.q = add i64 %i.n, 1                          ; 3 uses
  store i64 %i.q, ptr %i.h, align 8, !alias.scope !9224, !noalias !9221
  %exitcond.not.i = icmp eq i64 %i.q, %i.j
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  switch i8 %i.p, label %bb.d [
    i8 34, label %bb.e
    i8 91, label %bb.f
  ], !prof !50

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 5, ptr %i.g, align 8
  %i.r = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.s, align 8
  store i8 1, ptr %0, align 8
  br label %bb.z

bb.d:                                             ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit
  %i.t = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @377)
  br label %bb.w

bb.e:                                             ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit
  %i.u = add i64 %i.n, 1
  store i64 %i.u, ptr %i.h, align 8, !alias.scope !9225
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read13parse_str_raw(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.w = load i64, ptr %i.e, align 8, !range !6, !noundef !7
  %i.x = icmp eq i64 %i.w, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !7, !noundef !7 ; 2 uses
  br i1 %i.x, label %bb.t, label %bb.u

bb.f:                                             ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9227)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9228)
  %i.ab = icmp ult i64 %i.n, %i.j
  br i1 %i.ab, label %.lr.ph.i.i, label %.loopexit.i7

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %i.ac = phi i64 [ %i.af, %bb.g ], [ %i.n, %bb.f ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !9229, !noundef !7
  switch i8 %i.ae, label %bb.i [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 91, label %bb.h
  ], !prof !46

bb.g:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.af = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.af, ptr %i.h, align 8, !alias.scope !9230, !noalias !9231
  %exitcond.not.i.i = icmp eq i64 %i.af, %i.j
  br i1 %exitcond.not.i.i, label %.loopexit.i7, label %.lr.ph.i.i

.loopexit.i7:                                     ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9232
  store i64 5, ptr %i.d, align 8, !noalias !9232
end_hunk_2
begin_hunk_3_@_RINvXsf_NtCs8O45qwFIwQX_10serde_json2deINtB6_17UnitVariantAccessNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de13VariantAccess13tuple_variantQDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant
define hidden void @_RINvXsf_NtCs8O45qwFIwQX_10serde_json2deINtB6_17UnitVariantAccessNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de13VariantAccess13tuple_variantQDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 16)) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(56) %1, i64 noundef %2, ptr nofree noundef nonnull readnone captures(none) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(248) %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 13, ptr %i.a, align 8
  %i.b = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @466, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @129)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXsf_NtCs8O45qwFIwQX_10serde_json2deINtB6_17UnitVariantAccessNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de13VariantAccess14struct_variantQDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 16)) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr nofree noundef nonnull readnone captures(none) %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(248) %5) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 13, ptr %i.a, align 8
  %i.b = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @468, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @129)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXsf_NtCs8O45qwFIwQX_10serde_json2deINtB6_17UnitVariantAccessNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de13VariantAccess20newtype_variant_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB2A_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant6common8debugger15PyroscopeConfigEEEB3G_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 16)) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(56) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 13, ptr %i.a, align 8
  %i.b = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @470, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @129)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8
  store i64 -2, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXsf_NtCs8O45qwFIwQX_10serde_json2deINtB6_17UnitVariantAccessNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de13VariantAccess20newtype_variant_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(56) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 13, ptr %i.a, align 8
  %i.b = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @470, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @129)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXsf_NtCs8O45qwFIwQX_10serde_json2deINtB6_17UnitVariantAccessNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de13VariantAccess20newtype_variant_seedQDNtNtCs3cfoFdbzKJ1_12erased_serde2de15DeserializeSeedEL_ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 16)) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(56) %1, ptr nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 13, ptr %i.a, align 8
  %i.b = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @470, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @129)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtCs8O45qwFIwQX_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer14deserialize_i8QDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RINvMsg_NtCs8O45qwFIwQX_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadE18deserialize_numberQDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtCs8O45qwFIwQX_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer14deserialize_u8QDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RINvMsg_NtCs8O45qwFIwQX_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadE18deserialize_numberQDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtCs8O45qwFIwQX_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_f32QDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RINvMsg_NtCs8O45qwFIwQX_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadE18deserialize_numberQDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtCs8O45qwFIwQX_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_f64QDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RINvMsg_NtCs8O45qwFIwQX_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadE18deserialize_numberQDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtCs8O45qwFIwQX_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_i16QDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RINvMsg_NtCs8O45qwFIwQX_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadE18deserialize_numberQDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtCs8O45qwFIwQX_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_i32QDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RINvMsg_NtCs8O45qwFIwQX_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadE18deserialize_numberQDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtCs8O45qwFIwQX_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_i64QDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RINvMsg_NtCs8O45qwFIwQX_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadE18deserialize_numberQDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtCs8O45qwFIwQX_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_u16QDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RINvMsg_NtCs8O45qwFIwQX_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadE18deserialize_numberQDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtCs8O45qwFIwQX_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_u32QDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RINvMsg_NtCs8O45qwFIwQX_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadE18deserialize_numberQDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtCs8O45qwFIwQX_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_u64QDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RINvMsg_NtCs8O45qwFIwQX_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadE18deserialize_numberQDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtCs8O45qwFIwQX_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_boolQDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [40 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %3, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 12 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !24756, !noundef !7 ; 11 uses
  %i.n = add i64 %i.m, 1                          ; 3 uses
  store i64 %i.n, ptr %i.l, align 8, !alias.scope !24756
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24757)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !24757, !noalias !24758, !noundef !7 ; 5 uses
  %i.q = icmp ult i64 %i.n, %i.p
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %i.k, align 8, !alias.scope !24757, !noalias !24758, !nonnull !7, !noundef !7 ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.n
  %i.t = load i8, ptr %i.s, align 1, !noalias !24759, !noundef !7
  %i.u = add i64 %i.m, 2                          ; 7 uses
  store i64 %i.u, ptr %i.l, align 8, !alias.scope !24757, !noalias !24758
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  switch i8 %i.t, label %bb.d [
    i8 116, label %bb.e
    i8 102, label %bb.n
  ]

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 5, ptr %i.h, align 8
  %i.v = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.w, align 8
  store ptr null, ptr %0, align 8
  br label %bb.ag

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.y = load i64, ptr %i.f, align 8, !range !6, !noundef !7
  %i.z = icmp eq i64 %i.y, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !7, !noundef !7 ; 2 uses
  br i1 %i.z, label %bb.ae, label %bb.af, !prof !16

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24760)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 %i.u) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24761)
  %exitcond.not.i.not = icmp ult i64 %i.u, %i.p
  br i1 %exitcond.not.i.not, label %bb.f, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.u
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !24762, !noundef !7
  %i.ae = add i64 %i.m, 3                         ; 3 uses
  store i64 %i.ae, ptr %i.l, align 8, !alias.scope !24763, !noalias !24764
  %.not.i = icmp eq i8 %i.ad, 114
  br i1 %.not.i, label %bb.g, label %bb.m, !prof !21

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24765)
  %exitcond.not.i.1 = icmp eq i64 %i.ae, %umax.i
  br i1 %exitcond.not.i.1, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !24766, !noundef !7
  %i.ah = add i64 %i.m, 4                         ; 3 uses
  store i64 %i.ah, ptr %i.l, align 8, !alias.scope !24767, !noalias !24764
  %.not.i.1 = icmp eq i8 %i.ag, 117
  br i1 %.not.i.1, label %bb.i, label %bb.m, !prof !21

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24768)
  %exitcond.not.i.2 = icmp eq i64 %i.ah, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !24769, !noundef !7
  %i.ak = add i64 %i.m, 5                         ; 3 uses
  store i64 %i.ak, ptr %i.l, align 8, !alias.scope !24770, !noalias !24764
  %.not.i.2 = icmp eq i8 %i.aj, 101
  br i1 %.not.i.2, label %bb.k, label %bb.m, !prof !21

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24771)
  %exitcond.not.i.3 = icmp eq i64 %i.ak, %umax.i
  br i1 %exitcond.not.i.3, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !noalias !24772, !noundef !7
  %i.an = add i64 %i.m, 6
  store i64 %i.an, ptr %i.l, align 8, !alias.scope !24773, !noalias !24764
  %.not.i.3 = icmp eq i8 %i.am, 34
  br i1 %.not.i.3, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit20, label %bb.m, !prof !21

_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i: ; preds = %bb.k, %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24774
  store i64 5, ptr %i.d, align 8, !noalias !24774
  %i.ao = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !24775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24774
  br label %bb.y

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24774
  store i64 9, ptr %i.c, align 8, !noalias !24774
  %i.ap = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !24775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24774
  br label %bb.y

bb.n:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24776)
  %umax.i14 = tail call i64 @llvm.umax.i64(i64 %i.p, i64 %i.u) ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24777)
  %exitcond.not.i16.not = icmp ult i64 %i.u, %i.p
  br i1 %exitcond.not.i16.not, label %bb.o, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i19

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.u
  %i.ar = load i8, ptr %i.aq, align 1, !noalias !24778, !noundef !7
  %i.as = add i64 %i.m, 3                         ; 3 uses
  store i64 %i.as, ptr %i.l, align 8, !alias.scope !24779, !noalias !24780
  %.not.i17 = icmp eq i8 %i.ar, 97
  br i1 %.not.i17, label %bb.p, label %bb.x, !prof !21

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24781)
  %exitcond.not.i16.1 = icmp eq i64 %i.as, %umax.i14
  br i1 %exitcond.not.i16.1, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i19, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !noalias !24782, !noundef !7
  %i.av = add i64 %i.m, 4                         ; 3 uses
  store i64 %i.av, ptr %i.l, align 8, !alias.scope !24783, !noalias !24780
  %.not.i17.1 = icmp eq i8 %i.au, 108
  br i1 %.not.i17.1, label %bb.r, label %bb.x, !prof !21

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24784)
  %exitcond.not.i16.2 = icmp eq i64 %i.av, %umax.i14
  br i1 %exitcond.not.i16.2, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i19, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !24785, !noundef !7
  %i.ay = add i64 %i.m, 5                         ; 3 uses
  store i64 %i.ay, ptr %i.l, align 8, !alias.scope !24786, !noalias !24780
  %.not.i17.2 = icmp eq i8 %i.ax, 115
  br i1 %.not.i17.2, label %bb.t, label %bb.x, !prof !21

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24787)
  %exitcond.not.i16.3 = icmp eq i64 %i.ay, %umax.i14
  br i1 %exitcond.not.i16.3, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i19, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noalias !24788, !noundef !7
  %i.bb = add i64 %i.m, 6                         ; 3 uses
  store i64 %i.bb, ptr %i.l, align 8, !alias.scope !24789, !noalias !24780
  %.not.i17.3 = icmp eq i8 %i.ba, 101
  br i1 %.not.i17.3, label %bb.v, label %bb.x, !prof !21

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24790)
  %exitcond.not.i16.4 = icmp eq i64 %i.bb, %umax.i14
  br i1 %exitcond.not.i16.4, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i19, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bc = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !24791, !noundef !7
  %i.be = add i64 %i.m, 7
  store i64 %i.be, ptr %i.l, align 8, !alias.scope !24792, !noalias !24780
  %.not.i17.4 = icmp eq i8 %i.bd, 34
  br i1 %.not.i17.4, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit20, label %bb.x, !prof !21

_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i19: ; preds = %bb.v, %bb.t, %bb.r, %bb.p, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24793
  store i64 5, ptr %i.b, align 8, !noalias !24793
  %i.bf = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !24794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24793
  br label %bb.aa

bb.x:                                             ; preds = %bb.w, %bb.u, %bb.s, %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24793
  store i64 9, ptr %i.a, align 8, !noalias !24793
  %i.bg = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !24794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24793
  br label %bb.aa

bb.y:                                             ; preds = %bb.m, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i
  %.sroa.0.1.i.ph = phi ptr [ %i.ao, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i ], [ %i.ap, %bb.m ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.bh, align 8
  store ptr null, ptr %0, align 8
  br label %bb.z

_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit20: ; preds = %bb.l, %bb.w
  %.sink = phi i1 [ false, %bb.w ], [ true, %bb.l ]
  call void @_RINvXs8_NtCs3cfoFdbzKJ1_12erased_serde2deQDNtB6_7VisitorEL_NtNtCs4NSHK7GLW4I_10serde_core2de7Visitor10visit_boolNtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.g, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %3, i1 noundef zeroext %.sink)
  %i.bi = load ptr, ptr %i.g, align 8, !noundef !7
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %._crit_edge, label %bb.ac, !prof !17

._crit_edge:                                      ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit20
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.ab

bb.z:                                             ; preds = %bb.ae, %bb.aa, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ag

bb.aa:                                            ; preds = %bb.x, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i19
  %.sroa.0.1.i18.ph = phi ptr [ %i.bf, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i19 ], [ %i.bg, %bb.x ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i18.ph, ptr %i.bk, align 8
  store ptr null, ptr %0, align 8
  br label %bb.z

bb.ab:                                            ; preds = %._crit_edge, %bb.af
  %i.bl = phi ptr [ %.pre, %._crit_edge ], [ %i.br, %bb.af ]
  %i.bm = call noundef nonnull align 8 ptr @_RINvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsl8OoimOLbh_6qdrant(ptr noalias noundef nonnull align 8 %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bm, ptr %i.bn, align 8
  store ptr null, ptr %0, align 8
  br label %bb.ad

bb.ac:                                            ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.d
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.bo, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.z

bb.af:                                            ; preds = %bb.d
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ab, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.4.0.copyload, ptr %i.bq, align 8
  store i8 5, ptr %i.e, align 8
  %i.br = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ab

bb.ag:                                            ; preds = %bb.ad, %bb.c, %bb.z
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtCs8O45qwFIwQX_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_i128QDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !24805, !noundef !7
  %i.g = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !alias.scope !24805
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24806)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !24806, !noalias !24807, !noundef !7
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.d, align 8, !alias.scope !24806, !noalias !24807, !nonnull !7, !noundef !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g
  %i.m = load i8, ptr %i.l, align 1, !noalias !24808, !noundef !7 ; 3 uses
  %i.n = icmp ugt i8 %i.m, 47
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.old2 = icmp eq i8 %i.m, 45
  br i1 %.old2, label %bb.e, label %bb.m, !prof !16

bb.d:                                             ; preds = %bb.b
  %i.o = icmp ult i8 %i.m, 58
  br i1 %i.o, label %bb.e, label %bb.m, !prof !20

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call fastcc void @_RINvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB6_12DeserializerNtNtB8_4read9SliceReadE19do_deserialize_i128QDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3)
  %i.p = load ptr, ptr %0, align 8, !noundef !7
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24809)
  %i.r = load i64, ptr %i.e, align 8, !alias.scope !24809, !noalias !24810, !noundef !7 ; 3 uses
  %i.s = load i64, ptr %i.h, align 8, !alias.scope !24809, !noalias !24810, !noundef !7
  %i.t = icmp ult i64 %i.r, %i.s
  br i1 %i.t, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit18, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit18.thread

bb.g:                                             ; preds = %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit18.thread
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs_NtCs3cfoFdbzKJ1_12erased_serde3anyNtB4_3AnyNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
end_hunk_3
begin_hunk_4_@_RINvYINtNtCs8O45qwFIwQX_10serde_json2de9MapAccessINtNtB8_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEENtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueNtNtB2I_11ignored_any10IgnoredAnyECsl8OoimOLbh_6qdrant:bb.a
  store i8 %i.df, ptr %i.p, align 1, !alias.scope !25028, !noalias !25029
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25036
  switch i8 %i.df, label %.loopexit135.i.i.i.i.i [
    i8 32, label %.peel.next388.i.i.i.i.i.backedge
    i8 10, label %.peel.next388.i.i.i.i.i.backedge
    i8 9, label %.peel.next388.i.i.i.i.i.backedge
    i8 13, label %.peel.next388.i.i.i.i.i.backedge
    i8 58, label %.loopexit136.i.i.i.i.i
  ], !prof !46

.peel.next388.i.i.i.i.i.backedge:                 ; preds = %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i85.i.i.i.i.i, %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i85.i.i.i.i.i, %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i85.i.i.i.i.i, %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i85.i.i.i.i.i
  br label %.peel.next388.i.i.i.i.i, !llvm.loop !24953

.loopexit503.i.i.i.i.i:                           ; preds = %bb.u, %.peel.next388.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !24969
  store i64 3, ptr %i.e, align 8, !noalias !24969
  call void @llvm.experimental.noalias.scope.decl(metadata !25038)
  %.val.i90.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !25039, !noalias !25040, !noundef !7
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %.val2.i91.i.i.i.i.i = load i64, ptr %i.dg, align 8, !alias.scope !25039, !noalias !25040, !noundef !7
  %i.dh = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %.val.i90.i.i.i.i.i, i64 noundef %.val2.i91.i.i.i.i.i), !noalias !25038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !24969
  br label %_RINvXs9_NtCs8O45qwFIwQX_10serde_json2deINtB6_9MapAccessINtNtB8_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEENtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB2O_11ignored_any10IgnoredAnyEECsl8OoimOLbh_6qdrant.exit

.loopexit136.i.i.i.i.i:                           ; preds = %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i85.i.i.i.i.i, %bb.v
  store i8 0, ptr %i.o, align 8, !alias.scope !25041
  br label %.peel.begin.i.i.i.i.i.backedge

.peel.begin.i.i.i.i.i.backedge:                   ; preds = %.loopexit136.i.i.i.i.i, %.critedge.i.i.i.i.i
  %.pre.i.i.i.i.i.i.be = phi i8 [ 0, %.loopexit136.i.i.i.i.i ], [ %.pre.i69.i.i.i.i.i, %.critedge.i.i.i.i.i ]
  br label %.peel.begin.i.i.i.i.i

.loopexit135.i.i.i.i.i:                           ; preds = %bb.v, %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i85.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !24969
  store i64 6, ptr %i.f, align 8, !noalias !24969
  call void @llvm.experimental.noalias.scope.decl(metadata !25042)
  %.val.i92.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !25043, !noalias !25044, !noundef !7
  %i.di = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %.val2.i93.i.i.i.i.i = load i64, ptr %i.di, align 8, !alias.scope !25043, !noalias !25044, !noundef !7
  %i.dj = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %.val.i92.i.i.i.i.i, i64 noundef %.val2.i93.i.i.i.i.i), !noalias !25042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !24969
  br label %_RINvXs9_NtCs8O45qwFIwQX_10serde_json2deINtB6_9MapAccessINtNtB8_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEENtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB2O_11ignored_any10IgnoredAnyEECsl8OoimOLbh_6qdrant.exit

bb.w:                                             ; preds = %bb.s
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @473) #25
  unreachable

bb.x:                                             ; preds = %bb.s
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.s
  %storemerge51.i.i.i.i.i = phi i64 [ 8, %bb.x ], [ 7, %bb.s ]
  store i64 %storemerge51.i.i.i.i.i, ptr %i.j, align 8, !noalias !24969
  call void @llvm.experimental.noalias.scope.decl(metadata !25045)
  %.val.i94.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !25046, !noalias !25047, !noundef !7
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %.val2.i95.i.i.i.i.i = load i64, ptr %i.dk, align 8, !alias.scope !25046, !noalias !25047, !noundef !7
  %i.dl = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %.val.i94.i.i.i.i.i, i64 noundef %.val2.i95.i.i.i.i.i), !noalias !25045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !24969
  br label %_RINvXs9_NtCs8O45qwFIwQX_10serde_json2deINtB6_9MapAccessINtNtB8_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEENtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB2O_11ignored_any10IgnoredAnyEECsl8OoimOLbh_6qdrant.exit

_RINvXs9_NtCs8O45qwFIwQX_10serde_json2deINtB6_9MapAccessINtNtB8_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEENtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB2O_11ignored_any10IgnoredAnyEECsl8OoimOLbh_6qdrant.exit: ; preds = %.loopexit143.i.i.i.i.i, %.loopexit144.i.i.i.i.i, %.loopexit145.i.i.i.i.i, %.loopexit146.i.i.i.i.i, %.loopexit147.i.i.i.i.i, %bb.f, %bb.i, %.loopexit138.i.i.i.i.i, %bb.q, %bb.a, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit.i.thread23.i.i.i.i, %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i.thread.thread.i.i.i.i.i, %.loopexit497.i.i.i.i.i, %bb.h, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit63.i.thread35.i.i.i.i, %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i59.thread.thread.i.i.i.i.i, %bb.o, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit75.i.thread47.i.i.i.i, %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i71.thread.thread.i.i.i.i.i, %.loopexit500.i.i.i.i.i, %.loopexit137.i.i.i.i.i, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit89.i.thread59.i.i.i.i, %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i85.thread.thread.i.i.i.i.i, %.loopexit503.i.i.i.i.i, %.loopexit135.i.i.i.i.i, %bb.y
  %.sroa.0.0.i = phi ptr [ %i.m, %bb.a ], [ %i.bs, %bb.o ], [ %i.cy, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit89.i.thread59.i.i.i.i ], [ %i.am, %.loopexit497.i.i.i.i.i ], [ %i.ad, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit.i.thread23.i.i.i.i ], [ %i.aj, %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i.thread.thread.i.i.i.i.i ], [ %i.bp, %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i59.thread.thread.i.i.i.i.i ], [ %i.co, %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i71.thread.thread.i.i.i.i.i ], [ %i.de, %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i85.thread.thread.i.i.i.i.i ], [ null, %bb.q ], [ %i.dj, %.loopexit135.i.i.i.i.i ], [ %i.cj, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit75.i.thread47.i.i.i.i ], [ %i.cu, %.loopexit137.i.i.i.i.i ], [ %i.az, %bb.h ], [ %i.bj, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit63.i.thread35.i.i.i.i ], [ %i.dl, %bb.y ], [ %i.cr, %.loopexit500.i.i.i.i.i ], [ %i.dh, %.loopexit503.i.i.i.i.i ], [ %i.ar, %.loopexit145.i.i.i.i.i ], [ %i.aq, %.loopexit144.i.i.i.i.i ], [ %i.ap, %.loopexit143.i.i.i.i.i ], [ %i.as, %.loopexit146.i.i.i.i.i ], [ %i.ba, %bb.i ], [ %i.at, %.loopexit147.i.i.i.i.i ], [ %i.cs, %.loopexit138.i.i.i.i.i ], [ null, %bb.f ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsl8OoimOLbh_6qdrant(ptr %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25178)
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 40 ; 30 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !25179, !noalias !25180, !noundef !7 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !25181, !noalias !25182 ; 2 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !25179, !noalias !25180, !nonnull !7, !noundef !7 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25184)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !25185, !noundef !7
  switch i8 %i.y, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.e
  ], !prof !46

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !25186, !noalias !25182
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !25177
  store i64 3, ptr %i.o, align 8, !noalias !25177
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !25177
  br label %_RINvXs9_NtCs8O45qwFIwQX_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsl8OoimOLbh_6qdrant.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !25177
  store i64 6, ptr %i.p, align 8, !noalias !25177
  %i.ab = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !25177
  br label %_RINvXs9_NtCs8O45qwFIwQX_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsl8OoimOLbh_6qdrant.exit

bb.e:                                             ; preds = %bb.b
  %i.ac = add i64 %i.w, 1                         ; 3 uses
  store i64 %i.ac, ptr %i.q, align 8, !alias.scope !25187
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25191)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 5 uses
  store i64 0, ptr %i.ad, align 8, !alias.scope !25192
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25193)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %i.ai = phi i64 [ %.promoted.i179.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.al, %bb.g ] ; 17 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !25194, !noundef !7 ; 3 uses
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
  store i64 %i.al, ptr %i.q, align 8, !alias.scope !25195, !noalias !25196
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.al, %i.ah
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i, label %bb.f

.loopexit130.i.i.i.i.i:                           ; preds = %bb.bf, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !25192
  store i64 5, ptr %i.n, align 8, !noalias !25192
  %i.am = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !25192
  br label %_RINvXs9_NtCs8O45qwFIwQX_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsl8OoimOLbh_6qdrant.exit

bb.h:                                             ; preds = %bb.f
  %i.an = add i8 %i.ak, -48
  %or.cond.i.i.i.i.i = icmp ult i8 %i.an, 10
  br i1 %or.cond.i.i.i.i.i, label %bb.ai, label %bb.ah, !prof !14

bb.i:                                             ; preds = %bb.f
  %i.ao = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ao, ptr %i.q, align 8, !alias.scope !25197
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25198)
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ao) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25200)
  %exitcond.not.i53.not.i.i.i.i.i = icmp ult i64 %i.ao, %i.ah
  br i1 %exitcond.not.i53.not.i.i.i.i.i, label %bb.j, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !25201, !noundef !7
  %i.ar = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.ar, ptr %i.q, align 8, !alias.scope !25202, !noalias !25203
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aq, 117
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %.loopexit246.i.i.i.i.i, !prof !21

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25205)
  %exitcond.not.i53.1.i.i.i.i.i = icmp eq i64 %i.ar, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i53.1.i.i.i.i.i, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !25206, !noundef !7
  %i.au = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.au, ptr %i.q, align 8, !alias.scope !25207, !noalias !25203
  %.not.i.1.i.i.i.i.i = icmp eq i8 %i.at, 108
  br i1 %.not.i.1.i.i.i.i.i, label %bb.m, label %.loopexit246.i.i.i.i.i, !prof !21

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25209)
  %exitcond.not.i53.2.i.i.i.i.i = icmp eq i64 %i.au, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i53.2.i.i.i.i.i, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !25210, !noundef !7
  %i.ax = add i64 %i.ai, 4
  store i64 %i.ax, ptr %i.q, align 8, !alias.scope !25211, !noalias !25203
  %.not.i.2.i.i.i.i.i = icmp eq i8 %i.aw, 108
  br i1 %.not.i.2.i.i.i.i.i, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, label %.loopexit246.i.i.i.i.i, !prof !21

_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !25212
  store i64 5, ptr %i.f, align 8, !noalias !25212
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !25213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !25212
  br label %_RINvXs9_NtCs8O45qwFIwQX_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsl8OoimOLbh_6qdrant.exit

.loopexit246.i.i.i.i.i:                           ; preds = %bb.n, %bb.l, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !25212
  store i64 9, ptr %i.e, align 8, !noalias !25212
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !25213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !25212
  br label %_RINvXs9_NtCs8O45qwFIwQX_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsl8OoimOLbh_6qdrant.exit

bb.o:                                             ; preds = %bb.f
  %i.ba = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ba, ptr %i.q, align 8, !alias.scope !25214
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25215)
  %umax.i56.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ba) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25217)
  %exitcond.not.i58.not.i.i.i.i.i = icmp ult i64 %i.ba, %i.ah
  br i1 %exitcond.not.i58.not.i.i.i.i.i, label %bb.p, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !25218, !noundef !7
  %i.bd = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bd, ptr %i.q, align 8, !alias.scope !25219, !noalias !25220
  %.not.i59.i.i.i.i.i = icmp eq i8 %i.bc, 114
  br i1 %.not.i59.i.i.i.i.i, label %bb.q, label %.loopexit239.i.i.i.i.i, !prof !21

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25222)
  %exitcond.not.i58.1.i.i.i.i.i = icmp eq i64 %i.bd, %umax.i56.i.i.i.i.i
  br i1 %exitcond.not.i58.1.i.i.i.i.i, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !25223, !noundef !7
  %i.bg = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bg, ptr %i.q, align 8, !alias.scope !25224, !noalias !25220
  %.not.i59.1.i.i.i.i.i = icmp eq i8 %i.bf, 117
  br i1 %.not.i59.1.i.i.i.i.i, label %bb.s, label %.loopexit239.i.i.i.i.i, !prof !21

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25226)
  %exitcond.not.i58.2.i.i.i.i.i = icmp eq i64 %i.bg, %umax.i56.i.i.i.i.i
  br i1 %exitcond.not.i58.2.i.i.i.i.i, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !25227, !noundef !7
  %i.bj = add i64 %i.ai, 4
  store i64 %i.bj, ptr %i.q, align 8, !alias.scope !25228, !noalias !25220
  %.not.i59.2.i.i.i.i.i = icmp eq i8 %i.bi, 101
  br i1 %.not.i59.2.i.i.i.i.i, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, label %.loopexit239.i.i.i.i.i, !prof !21

_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i: ; preds = %bb.s, %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !25229
  store i64 5, ptr %i.d, align 8, !noalias !25229
  %i.bk = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !25230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !25229
  br label %_RINvXs9_NtCs8O45qwFIwQX_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsl8OoimOLbh_6qdrant.exit

.loopexit239.i.i.i.i.i:                           ; preds = %bb.t, %bb.r, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !25229
  store i64 9, ptr %i.c, align 8, !noalias !25229
  %i.bl = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !25230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !25229
  br label %_RINvXs9_NtCs8O45qwFIwQX_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.f
  %i.bm = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.bm, ptr %i.q, align 8, !alias.scope !25231
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25232)
  %umax.i65.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.bm) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25234)
  %exitcond.not.i67.not.i.i.i.i.i = icmp ult i64 %i.bm, %i.ah
  br i1 %exitcond.not.i67.not.i.i.i.i.i, label %bb.v, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !25235, !noundef !7
  %i.bp = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bp, ptr %i.q, align 8, !alias.scope !25236, !noalias !25237
  %.not.i68.i.i.i.i.i = icmp eq i8 %i.bo, 97
  br i1 %.not.i68.i.i.i.i.i, label %bb.w, label %.loopexit232.i.i.i.i.i, !prof !21

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25239)
  %exitcond.not.i67.1.i.i.i.i.i = icmp eq i64 %i.bp, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !25240, !noundef !7
  %i.bs = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bs, ptr %i.q, align 8, !alias.scope !25241, !noalias !25237
  %.not.i68.1.i.i.i.i.i = icmp eq i8 %i.br, 108
  br i1 %.not.i68.1.i.i.i.i.i, label %bb.y, label %.loopexit232.i.i.i.i.i, !prof !21

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25243)
  %exitcond.not.i67.2.i.i.i.i.i = icmp eq i64 %i.bs, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !25244, !noundef !7
  %i.bv = add i64 %i.ai, 4                        ; 3 uses
  store i64 %i.bv, ptr %i.q, align 8, !alias.scope !25245, !noalias !25237
  %.not.i68.2.i.i.i.i.i = icmp eq i8 %i.bu, 115
  br i1 %.not.i68.2.i.i.i.i.i, label %bb.aa, label %.loopexit232.i.i.i.i.i, !prof !21

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25247)
  %exitcond.not.i67.3.i.i.i.i.i = icmp eq i64 %i.bv, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.3.i.i.i.i.i, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !25248, !noundef !7
  %i.by = add i64 %i.ai, 5
  store i64 %i.by, ptr %i.q, align 8, !alias.scope !25249, !noalias !25237
  %.not.i68.3.i.i.i.i.i = icmp eq i8 %i.bx, 101
  br i1 %.not.i68.3.i.i.i.i.i, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, label %.loopexit232.i.i.i.i.i, !prof !21

_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i: ; preds = %bb.aa, %bb.y, %bb.w, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !25250
  store i64 5, ptr %i.b, align 8, !noalias !25250
  %i.bz = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !25251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25250
  br label %_RINvXs9_NtCs8O45qwFIwQX_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsl8OoimOLbh_6qdrant.exit

.loopexit232.i.i.i.i.i:                           ; preds = %bb.ab, %bb.z, %bb.x, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25250
  store i64 9, ptr %i.a, align 8, !noalias !25250
  %i.ca = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !25251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25250
  br label %_RINvXs9_NtCs8O45qwFIwQX_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsl8OoimOLbh_6qdrant.exit

bb.ac:                                            ; preds = %bb.f
  %i.cb = add i64 %i.ai, 1
  store i64 %i.cb, ptr %i.q, align 8, !alias.scope !25252
  %i.cc = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) ; 2 uses
  %.not45.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not45.i.i.i.i.i, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, label %_RINvXs9_NtCs8O45qwFIwQX_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsl8OoimOLbh_6qdrant.exit

bb.ad:                                            ; preds = %bb.f
  %i.cd = add i64 %i.ai, 1
  store i64 %i.cd, ptr %i.q, align 8, !alias.scope !25253
  %i.ce = tail call noundef align 8 ptr @_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read10ignore_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, label %_RINvXs9_NtCs8O45qwFIwQX_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsl8OoimOLbh_6qdrant.exit

bb.ae:                                            ; preds = %bb.f, %bb.f
  tail call void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VechE14extend_trustedINtNtCskKLDkoKarTP_4core6option8IntoIterhEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, i1 noundef zeroext %.sroa.039.0177.i.i.i.i.i, i8 %.sroa.7.0178.i.i.i.i.i)
  %i.cf = load i64, ptr %i.q, align 8, !alias.scope !25254, !noundef !7
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.q, align 8, !alias.scope !25254
  br label %bb.ag

_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i: ; preds = %bb.ai, %bb.ad, %bb.ac, %bb.ab, %bb.t, %bb.n
  br i1 %.sroa.039.0177.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i
  %i.ch = load i64, ptr %i.ad, align 8, !alias.scope !25192, !noundef !7 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %_RINvXs9_NtCs8O45qwFIwQX_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsl8OoimOLbh_6qdrant.exit, label %bb.aj

bb.ag:                                            ; preds = %bb.aj, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, %bb.ae
  %.sroa.027.0.i.i.i.i.i = phi i8 [ %i.ak, %bb.ae ], [ %i.cv, %bb.aj ], [ %.sroa.7.0178.i.i.i.i.i, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.042.0.i.i.i.i.i = phi i1 [ false, %bb.ae ], [ true, %bb.aj ], [ true, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ]
  %i.cj = load i64, ptr %i.r, align 8, !alias.scope !25255, !noalias !25256, !noundef !7 ; 6 uses
  %.promoted.i73162.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !25257, !noalias !25258 ; 2 uses
  %i.ck = icmp ult i64 %.promoted.i73162.i.i.i.i.i, %i.cj
  br i1 %i.ck, label %.lr.ph.i75.lr.ph.i.i.i.i.i, label %.loopexit123.i.i.i.i.i

.lr.ph.i75.lr.ph.i.i.i.i.i:                       ; preds = %bb.ag
  %.promoted.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !25192
  %i.cl = load ptr, ptr %i.u, align 8, !alias.scope !25255, !noalias !25256, !nonnull !7, !noundef !7 ; 3 uses
  %i.cm = load i64, ptr %.0.val, align 8, !range !45, !alias.scope !25192
  %i.cn = load ptr, ptr %i.af, align 8, !alias.scope !25192, !nonnull !7
  br label %.lr.ph.i75.i.i.i.i.i

bb.ah:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !25192
  store i64 10, ptr %i.m, align 8, !noalias !25192
  %i.co = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !25192
  br label %_RINvXs9_NtCs8O45qwFIwQX_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsl8OoimOLbh_6qdrant.exit

bb.ai:                                            ; preds = %bb.h
  %i.cp = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) ; 2 uses
  %.not49.i.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not49.i.i.i.i.i, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, label %_RINvXs9_NtCs8O45qwFIwQX_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsl8OoimOLbh_6qdrant.exit

bb.aj:                                            ; preds = %bb.af
  %i.cq = add i64 %i.ch, -1                       ; 3 uses
  store i64 %i.cq, ptr %i.ad, align 8, !alias.scope !25192
  %i.cr = load i64, ptr %.0.val, align 8, !range !45, !alias.scope !25192, !noundef !7
  %i.cs = icmp ult i64 %i.cq, %i.cr
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = load ptr, ptr %i.af, align 8, !alias.scope !25192, !nonnull !7, !noundef !7
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cq
  %i.cv = load i8, ptr %i.cu, align 1, !noundef !7
  br label %bb.ag

.lr.ph.i75.i.i.i.i.i:                             ; preds = %bb.au, %.lr.ph.i75.lr.ph.i.i.i.i.i
  %.promoted.i73170.i.i.i.i.i = phi i64 [ %.promoted.i73162.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.dg, %bb.au ]
  %.sroa.042.2164.i.i.i.i.i = phi i1 [ %.sroa.042.0.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ true, %bb.au ] ; 2 uses
  %.sroa.027.2163.i.i.i.i.i = phi i8 [ %.sroa.027.0.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.dl, %bb.au ] ; 6 uses
  %i.cw = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.di, %bb.au ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25259)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %.lr.ph.i75.i.i.i.i.i
  %i.cx = phi i64 [ %.promoted.i73170.i.i.i.i.i, %.lr.ph.i75.i.i.i.i.i ], [ %i.da, %bb.al ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25261)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !noalias !25262, !noundef !7
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
  store i64 %i.da, ptr %i.q, align 8, !alias.scope !25263, !noalias !25258
  %exitcond.not.i76.i.i.i.i.i = icmp eq i64 %i.da, %i.cj
  br i1 %exitcond.not.i76.i.i.i.i.i, label %.loopexit123.i.i.i.i.i, label %bb.ak

.loopexit123.i.i.i.i.i:                           ; preds = %bb.ag, %bb.au, %bb.al
  %.sroa.027.2159.i.i.i.i.i = phi i8 [ %i.dl, %bb.au ], [ %.sroa.027.2163.i.i.i.i.i, %bb.al ], [ %.sroa.027.0.i.i.i.i.i, %bb.ag ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !25192
  switch i8 %.sroa.027.2159.i.i.i.i.i, label %bb.am [
    i8 91, label %bb.ao
    i8 123, label %bb.an
  ]

bb.am:                                            ; preds = %.loopexit123.i.i.i.i.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @472) #25
  unreachable

bb.an:                                            ; preds = %.loopexit123.i.i.i.i.i
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.loopexit123.i.i.i.i.i
  %storemerge.i.i.i.i.i = phi i64 [ 3, %bb.an ], [ 2, %.loopexit123.i.i.i.i.i ]
  store i64 %storemerge.i.i.i.i.i, ptr %i.k, align 8, !noalias !25192
  %i.db = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !25192
  br label %_RINvXs9_NtCs8O45qwFIwQX_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsl8OoimOLbh_6qdrant.exit

.loopexit.i.i.i.i.i:                              ; preds = %bb.ar, %bb.aq, %bb.ak
  br i1 %.sroa.042.2164.i.i.i.i.i, label %bb.av, label %.critedge.i.i.i.i.i, !prof !17

bb.ap:                                            ; preds = %bb.ak
  br i1 %.sroa.042.2164.i.i.i.i.i, label %bb.as, label %.critedge.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ak
  %i.dc = icmp eq i8 %.sroa.027.2163.i.i.i.i.i, 91
  br i1 %i.dc, label %bb.at, label %.loopexit.i.i.i.i.i

bb.ar:                                            ; preds = %bb.ak
  %i.dd = icmp eq i8 %.sroa.027.2163.i.i.i.i.i, 123
end_hunk_4
begin_hunk_5_@_RINvYQINtNtCs8O45qwFIwQX_10serde_json2de12DeserializerINtNtB9_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCs5pRimKDHYSy_5serde7private2de7content14ContentVisitorECsl8OoimOLbh_6qdrant:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !25449
  %i.cd = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEE7end_mapCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %1)
          to label %bb.am unwind label %bb.al, !noalias !25437 ; 5 uses

bb.al:                                            ; preds = %bb.ak
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs4NSHK7GLW4I_10serde_core7private7content7ContentNtNtCs8O45qwFIwQX_10serde_json5error5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #19
          to label %bb.aw unwind label %bb.ah, !noalias !25437

bb.am:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !25449
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.cd, ptr %i.cf, align 8, !noalias !25449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !25449
  %i.cg = load i8, ptr %i.d, align 8, !range !35, !noalias !25449, !noundef !7
  %i.ch = icmp eq i8 %i.cg, -1
  br i1 %i.ch, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not.i = icmp eq ptr %i.cd, null
  br i1 %.not.i, label %.thread115.i, label %bb.ap

.thread115.i:                                     ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !25449
  br label %.thread70.i

bb.ao:                                            ; preds = %bb.am
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !25449, !nonnull !7, !align !15, !noundef !7
  %i.ck = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.cj, ptr %i.ck, align 8, !noalias !25449
  store i8 -1, ptr %i.l, align 8, !noalias !25449
  %.not73.i = icmp eq ptr %i.cd, null
  br i1 %.not73.i, label %.thread70.i, label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.cl = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.cd, ptr %i.cl, align 8, !noalias !25449
  store i8 -1, ptr %i.l, align 8, !noalias !25449
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4NSHK7GLW4I_10serde_core7private7content7ContentECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d), !noalias !25437
  br label %.thread70.i

.thread70.i:                                      ; preds = %bb.aq, %bb.ap, %bb.ao, %.thread115.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !25449
  br label %bb.o

bb.aq:                                            ; preds = %bb.ao
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %i.cd), !noalias !25437
  br label %.thread70.i

bb.ar:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !25449
  store i64 10, ptr %i.b, align 8, !noalias !25449
  call void @llvm.experimental.noalias.scope.decl(metadata !25477)
  %.val.i44.i = load i64, ptr %i.p, align 8, !alias.scope !25478, !noalias !25479, !noundef !7
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val2.i45.i = load i64, ptr %i.cm, align 8, !alias.scope !25478, !noalias !25479, !noundef !7
  %i.cn = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val.i44.i, i64 noundef %.val2.i45.i), !noalias !25480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25449
  br label %bb.at

bb.as:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !25449
  call fastcc void @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEE13parse_integerCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %1, i1 noundef zeroext true), !noalias !25437
  %i.co = load i64, ptr %i.j, align 8, !range !13, !noalias !25449, !noundef !7 ; 2 uses
  %i.cp = icmp eq i64 %i.co, -1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br i1 %i.cp, label %bb.au, label %switch.lookup24

bb.at:                                            ; preds = %bb.ar, %._crit_edge.i
  %i.cr = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.cn, %bb.ar ]
  %i.cs = call noundef nonnull align 8 ptr @_RINvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerINtNtB8_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEE12fix_position0ECsl8OoimOLbh_6qdrant(ptr noalias noundef nonnull align 8 %i.cr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %1), !noalias !25437
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cs, ptr %i.ct, align 8, !alias.scope !25437, !noalias !25438
  store i8 -1, ptr %0, align 8, !alias.scope !25437, !noalias !25438
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.cu = load ptr, ptr %i.cq, align 8, !noalias !25449, !nonnull !7, !align !15, !noundef !7
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cu, ptr %i.cv, align 8, !alias.scope !25437, !noalias !25438
  store i8 -1, ptr %0, align 8, !alias.scope !25437, !noalias !25438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !25449
  br label %bb.p

switch.lookup24:                                  ; preds = %bb.as
  %.sroa.255.0.copyload.i = load i64, ptr %i.cq, align 8, !noalias !25449
  %.sroa.41.0..sroa_idx.i.i46.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %switch.cast25 = trunc i64 %i.co to i24
  %switch.shiftamt26 = shl nuw nsw i24 %switch.cast25, 3
  %switch.downshift27 = lshr i24 525322, %switch.shiftamt26
  %switch.masked28 = trunc i24 %switch.downshift27 to i8
  store i8 %switch.masked28, ptr %i.l, align 8, !alias.scope !25481, !noalias !25482
  store i64 %.sroa.255.0.copyload.i, ptr %.sroa.41.0..sroa_idx.i.i46.i, align 8, !alias.scope !25481, !noalias !25482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !25449
  br label %.thread60.i

.thread60.i:                                      ; preds = %switch.lookup, %switch.lookup24, %bb.t, %bb.r, %bb.o, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !25438
  br label %bb.av

bb.av:                                            ; preds = %.thread60.i, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !25449
  br label %_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCs5pRimKDHYSy_5serde7private2de7content14ContentVisitorECsl8OoimOLbh_6qdrant.exit

bb.aw:                                            ; preds = %bb.al, %bb.ac
  %.pn.i = phi { ptr, i32 } [ %i.ce, %bb.al ], [ %i.bp, %bb.ac ]
  resume { ptr, i32 } %.pn.i

_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCs5pRimKDHYSy_5serde7private2de7content14ContentVisitorECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.d, %bb.p, %bb.av
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYQINtNtCs8O45qwFIwQX_10serde_json2de12DeserializerNtNtB9_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCs5pRimKDHYSy_5serde7private2de7content14ContentVisitorECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25569)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !25570, !noalias !25571, !noundef !7 ; 8 uses
  %.promoted.i.i = load i64, ptr %i.s, align 8, !alias.scope !25572, !noalias !25573 ; 2 uses
  %i.v = icmp ult i64 %.promoted.i.i, %i.u
  br i1 %i.v, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !25570, !noalias !25571, !nonnull !7, !noundef !7 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.y = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.ab, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25575)
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !25576, !noundef !7 ; 3 uses
  switch i8 %i.aa, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ab = add i64 %i.y, 1                         ; 3 uses
  store i64 %i.ab, ptr %i.s, align 8, !alias.scope !25577, !noalias !25573
  %exitcond.not.i.i = icmp eq i64 %i.ab, %i.u
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !25578
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !25578
  store i64 5, ptr %i.r, align 8, !noalias !25578
  %i.ac = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r), !noalias !25567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !25578
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !25567, !noalias !25568
  store i8 -1, ptr %0, align 8, !alias.scope !25567, !noalias !25568
  br label %_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCs5pRimKDHYSy_5serde7private2de7content14ContentVisitorECsl8OoimOLbh_6qdrant.exit

bb.d:                                             ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit.i
  %i.ae = add i8 %i.aa, -48
  %or.cond8.i = icmp ult i8 %i.ae, 10
  br i1 %or.cond8.i, label %bb.bi, label %bb.bh, !prof !14

bb.e:                                             ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit.i
  %i.af = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.af, ptr %i.s, align 8, !alias.scope !25579, !noalias !25567
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25580)
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.af) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25582)
  %exitcond.not.i40.not.i = icmp ult i64 %i.af, %i.u
  br i1 %exitcond.not.i40.not.i, label %bb.f, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !25583, !noundef !7
  %i.ai = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.ai, ptr %i.s, align 8, !alias.scope !25584, !noalias !25585
  %.not.i.i = icmp eq i8 %i.ah, 117
  br i1 %.not.i.i, label %bb.g, label %bb.k, !prof !21

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25587)
  %exitcond.not.i40.1.i = icmp eq i64 %i.ai, %umax.i.i
  br i1 %exitcond.not.i40.1.i, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !25588, !noundef !7
  %i.al = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.al, ptr %i.s, align 8, !alias.scope !25589, !noalias !25585
  %.not.i.1.i = icmp eq i8 %i.ak, 108
  br i1 %.not.i.1.i, label %bb.i, label %bb.k, !prof !21

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25591)
  %exitcond.not.i40.2.i = icmp eq i64 %i.al, %umax.i.i
  br i1 %exitcond.not.i40.2.i, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !noalias !25592, !noundef !7
  %i.ao = add i64 %i.y, 4
  store i64 %i.ao, ptr %i.s, align 8, !alias.scope !25593, !noalias !25585
  %.not.i.2.i = icmp eq i8 %i.an, 108
  br i1 %.not.i.2.i, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit.i, label %bb.k, !prof !21

_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !25594
  store i64 5, ptr %i.f, align 8, !noalias !25594
  %i.ap = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !25595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !25594
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !25594
  store i64 9, ptr %i.e, align 8, !noalias !25594
  %i.aq = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !25595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !25594
  br label %bb.af

bb.l:                                             ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit.i
  %i.ar = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.ar, ptr %i.s, align 8, !alias.scope !25596, !noalias !25567
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25597)
  %umax.i43.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.ar) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25599)
  %exitcond.not.i45.not.i = icmp ult i64 %i.ar, %i.u
  br i1 %exitcond.not.i45.not.i, label %bb.m, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49.i

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !25600, !noundef !7
  %i.au = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.au, ptr %i.s, align 8, !alias.scope !25601, !noalias !25602
  %.not.i46.i = icmp eq i8 %i.at, 114
  br i1 %.not.i46.i, label %bb.n, label %bb.r, !prof !21

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25604)
  %exitcond.not.i45.1.i = icmp eq i64 %i.au, %umax.i43.i
  br i1 %exitcond.not.i45.1.i, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !25605, !noundef !7
  %i.ax = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.ax, ptr %i.s, align 8, !alias.scope !25606, !noalias !25602
  %.not.i46.1.i = icmp eq i8 %i.aw, 117
  br i1 %.not.i46.1.i, label %bb.p, label %bb.r, !prof !21

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25608)
  %exitcond.not.i45.2.i = icmp eq i64 %i.ax, %umax.i43.i
  br i1 %exitcond.not.i45.2.i, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noalias !25609, !noundef !7
  %i.ba = add i64 %i.y, 4
  store i64 %i.ba, ptr %i.s, align 8, !alias.scope !25610, !noalias !25602
  %.not.i46.2.i = icmp eq i8 %i.az, 101
  br i1 %.not.i46.2.i, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit50.i, label %bb.r, !prof !21

_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49.i: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !25611
  store i64 5, ptr %i.d, align 8, !noalias !25611
  %i.bb = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !25612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !25611
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !25611
  store i64 9, ptr %i.c, align 8, !noalias !25611
  %i.bc = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !25612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !25611
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit.i
  %i.bd = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.bd, ptr %i.s, align 8, !alias.scope !25613, !noalias !25567
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25614)
  %umax.i52.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.bd) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25616)
  %exitcond.not.i54.not.i = icmp ult i64 %i.bd, %i.u
  br i1 %exitcond.not.i54.not.i, label %bb.t, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !25617, !noundef !7
  %i.bg = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.bg, ptr %i.s, align 8, !alias.scope !25618, !noalias !25619
  %.not.i55.i = icmp eq i8 %i.bf, 97
  br i1 %.not.i55.i, label %bb.u, label %bb.aa, !prof !21

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25621)
  %exitcond.not.i54.1.i = icmp eq i64 %i.bg, %umax.i52.i
  br i1 %exitcond.not.i54.1.i, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !25622, !noundef !7
  %i.bj = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.bj, ptr %i.s, align 8, !alias.scope !25623, !noalias !25619
  %.not.i55.1.i = icmp eq i8 %i.bi, 108
  br i1 %.not.i55.1.i, label %bb.w, label %bb.aa, !prof !21

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25625)
  %exitcond.not.i54.2.i = icmp eq i64 %i.bj, %umax.i52.i
  br i1 %exitcond.not.i54.2.i, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !25626, !noundef !7
  %i.bm = add i64 %i.y, 4                         ; 3 uses
  store i64 %i.bm, ptr %i.s, align 8, !alias.scope !25627, !noalias !25619
  %.not.i55.2.i = icmp eq i8 %i.bl, 115
  br i1 %.not.i55.2.i, label %bb.y, label %bb.aa, !prof !21

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25629)
  %exitcond.not.i54.3.i = icmp eq i64 %i.bm, %umax.i52.i
  br i1 %exitcond.not.i54.3.i, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !25630, !noundef !7
  %i.bp = add i64 %i.y, 5
  store i64 %i.bp, ptr %i.s, align 8, !alias.scope !25631, !noalias !25619
  %.not.i55.3.i = icmp eq i8 %i.bo, 101
  br i1 %.not.i55.3.i, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit59.i, label %bb.aa, !prof !21

_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !25632
  store i64 5, ptr %i.b, align 8, !noalias !25632
  %i.bq = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !25633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25632
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25632
  store i64 9, ptr %i.a, align 8, !noalias !25632
  %i.br = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !25633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25632
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit.i
  %i.bs = add i64 %i.y, 1
  store i64 %i.bs, ptr %i.s, align 8, !alias.scope !25634, !noalias !25567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !25578
  call fastcc void @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !25567
  %i.bt = load i64, ptr %i.p, align 8, !range !13, !noalias !25578, !noundef !7 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, -1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  br i1 %i.bu, label %bb.ak, label %switch.lookup

bb.ac:                                            ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit.i
  %i.bw = add i64 %i.y, 1
  store i64 %i.bw, ptr %i.s, align 8, !alias.scope !25635, !noalias !25567
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.bx, align 8, !alias.scope !25568, !noalias !25567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !25578
  call void @_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !25567
  %i.by = load i64, ptr %i.n, align 8, !range !6, !noalias !25578, !noundef !7 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 2
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !25578 ; 4 uses
  br i1 %i.bz, label %bb.al, label %bb.am

bb.ad:                                            ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cd = load i8, ptr %i.cc, align 8, !alias.scope !25568, !noalias !25567, !noundef !7
  %i.ce = add i8 %i.cd, -1                        ; 2 uses
  store i8 %i.ce, ptr %i.cc, align 8, !alias.scope !25568, !noalias !25567
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.aq, label %bb.ar, !prof !17

bb.ae:                                            ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ch = load i8, ptr %i.cg, align 8, !alias.scope !25568, !noalias !25567, !noundef !7
  %i.ci = add i8 %i.ch, -1                        ; 2 uses
  store i8 %i.ci, ptr %i.cg, align 8, !alias.scope !25568, !noalias !25567
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.az, label %bb.ba, !prof !17

bb.af:                                            ; preds = %bb.k, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i
  %.sroa.0.1.i.ph.i = phi ptr [ %i.ap, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i ], [ %i.aq, %bb.k ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i, ptr %i.ck, align 8, !alias.scope !25567, !noalias !25568
  store i8 -1, ptr %0, align 8, !alias.scope !25567, !noalias !25568
  br label %bb.ah

_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.j
  store i8 18, ptr %i.q, align 8, !alias.scope !25636, !noalias !25578
  br label %.thread.i

bb.ag:                                            ; preds = %.thread90.i, %.thread87.i, %bb.ap
  %.pr.i.pr = load i8, ptr %i.q, align 8, !noalias !25578
  %i.cl = icmp eq i8 %.pr.i.pr, -1
  br i1 %i.cl, label %._crit_edge.i, label %.thread.i, !prof !64

._crit_edge.i:                                    ; preds = %bb.ag
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !25578
  br label %bb.bj

bb.ah:                                            ; preds = %bb.bk, %bb.az, %bb.aq, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !25578
  br label %_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCs5pRimKDHYSy_5serde7private2de7content14ContentVisitorECsl8OoimOLbh_6qdrant.exit

bb.ai:                                            ; preds = %bb.r, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49.i
  %.sroa.0.1.i48.ph.i = phi ptr [ %i.bb, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49.i ], [ %i.bc, %bb.r ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i48.ph.i, ptr %i.cm, align 8, !alias.scope !25567, !noalias !25568
  store i8 -1, ptr %0, align 8, !alias.scope !25567, !noalias !25568
  br label %bb.ah

_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit50.i: ; preds = %bb.q
  store i8 0, ptr %i.q, align 8, !alias.scope !25637, !noalias !25578
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !alias.scope !25637, !noalias !25578
  br label %.thread.i

bb.aj:                                            ; preds = %bb.aa, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i
  %.sroa.0.1.i57.ph.i = phi ptr [ %i.bq, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i ], [ %i.br, %bb.aa ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i57.ph.i, ptr %i.cn, align 8, !alias.scope !25567, !noalias !25568
  store i8 -1, ptr %0, align 8, !alias.scope !25567, !noalias !25568
  br label %bb.ah

_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit59.i: ; preds = %bb.z
  store i8 0, ptr %i.q, align 8, !alias.scope !25638, !noalias !25578
  %.sroa.4.0..sroa_idx.i60.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 0, ptr %.sroa.4.0..sroa_idx.i60.i, align 1, !alias.scope !25638, !noalias !25578
  br label %.thread.i

bb.ak:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.bv, align 8, !noalias !25578, !nonnull !7, !align !15, !noundef !7
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.co, ptr %i.cp, align 8, !alias.scope !25567, !noalias !25568
  store i8 -1, ptr %0, align 8, !alias.scope !25567, !noalias !25568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !25578
  br label %bb.ah

switch.lookup:                                    ; preds = %bb.ab
  %.sroa.2.0.copyload.i = load i64, ptr %i.bv, align 8, !noalias !25578
  %.sroa.41.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %switch.cast = trunc i64 %i.bt to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 525322, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  store i8 %switch.masked, ptr %i.q, align 8, !alias.scope !25639, !noalias !25640
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.41.0..sroa_idx.i.i.i, align 8, !alias.scope !25639, !noalias !25640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !25578
  br label %.thread.i

bb.al:                                            ; preds = %bb.ac
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cb, ptr %i.cq, align 8, !alias.scope !25567, !noalias !25568
  store i8 -1, ptr %0, align 8, !alias.scope !25567, !noalias !25568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !25578
  br label %bb.ah

bb.am:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !25578 ; 2 uses
  %i.cr = trunc nuw i64 %i.by to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  br i1 %i.cr, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @_RINvXsj_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs4NSHK7GLW4I_10serde_core2de7Visitor9visit_strNtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cb, i64 noundef %.sroa.4.0.copyload.i), !noalias !25567
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  store i8 13, ptr %i.q, align 8, !alias.scope !25641, !noalias !25642
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
end_hunk_5
begin_hunk_6_@_RINvYQINtNtCs8O45qwFIwQX_10serde_json2de12DeserializerNtNtB9_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCs5pRimKDHYSy_5serde7private2de7content14ContentVisitorECsl8OoimOLbh_6qdrant:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !25578
  call void @_RINvXsj_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs4NSHK7GLW4I_10serde_core2de7Visitor9visit_mapINtNtCs8O45qwFIwQX_10serde_json2de9MapAccessNtNtB24_4read7StrReadEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !noalias !25567
  %i.dk = load i8, ptr %i.cg, align 8, !alias.scope !25568, !noalias !25567, !noundef !7
  %i.dl = add i8 %i.dk, 1
  store i8 %i.dl, ptr %i.cg, align 8, !alias.scope !25568, !noalias !25567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !25578
  %i.dm = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.bc unwind label %bb.bb, !noalias !25567 ; 5 uses

bb.bb:                                            ; preds = %bb.ba
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs4NSHK7GLW4I_10serde_core7private7content7ContentNtNtCs8O45qwFIwQX_10serde_json5error5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h) #19
          to label %bb.bm unwind label %bb.ax, !noalias !25567

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !25578
  %i.do = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.dm, ptr %i.do, align 8, !noalias !25578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !25578
  %i.dp = load i8, ptr %i.i, align 8, !range !35, !noalias !25578, !noundef !7
  %i.dq = icmp eq i8 %i.dp, -1
  br i1 %i.dq, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.not.i = icmp eq ptr %i.dm, null
  br i1 %.not.i, label %.thread116.i, label %bb.bf

.thread116.i:                                     ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !25578
  br label %.thread90.i

bb.be:                                            ; preds = %bb.bc
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !25578, !nonnull !7, !align !15, !noundef !7
  %i.dt = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.ds, ptr %i.dt, align 8, !noalias !25578
  store i8 -1, ptr %i.q, align 8, !noalias !25578
  %.not93.i = icmp eq ptr %i.dm, null
  br i1 %.not93.i, label %.thread90.i, label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.du = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.dm, ptr %i.du, align 8, !noalias !25578
  store i8 -1, ptr %i.q, align 8, !noalias !25578
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4NSHK7GLW4I_10serde_core7private7content7ContentECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i), !noalias !25567
  br label %.thread90.i

.thread90.i:                                      ; preds = %bb.bg, %bb.bf, %bb.be, %.thread116.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !25578
  br label %bb.ag

bb.bg:                                            ; preds = %bb.be
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %i.dm), !noalias !25567
  br label %.thread90.i

bb.bh:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !25578
  store i64 10, ptr %i.g, align 8, !noalias !25578
  %i.dv = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !noalias !25567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !25578
  br label %bb.bj

bb.bi:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !25578
  call fastcc void @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !noalias !25567
  %i.dw = load i64, ptr %i.o, align 8, !range !13, !noalias !25578, !noundef !7 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, -1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  br i1 %i.dx, label %bb.bk, label %switch.lookup31

bb.bj:                                            ; preds = %bb.bh, %._crit_edge.i
  %i.dz = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.dv, %bb.bh ]
  %i.ea = call noundef nonnull align 8 ptr @_RINvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsl8OoimOLbh_6qdrant(ptr noalias noundef nonnull align 8 %i.dz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !noalias !25567
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ea, ptr %i.eb, align 8, !alias.scope !25567, !noalias !25568
  store i8 -1, ptr %0, align 8, !alias.scope !25567, !noalias !25568
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.ec = load ptr, ptr %i.dy, align 8, !noalias !25578, !nonnull !7, !align !15, !noundef !7
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ec, ptr %i.ed, align 8, !alias.scope !25567, !noalias !25568
  store i8 -1, ptr %0, align 8, !alias.scope !25567, !noalias !25568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !25578
  br label %bb.ah

switch.lookup31:                                  ; preds = %bb.bi
  %.sroa.268.0.copyload.i = load i64, ptr %i.dy, align 8, !noalias !25578
  %.sroa.41.0..sroa_idx.i.i61.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %switch.cast32 = trunc i64 %i.dw to i24
  %switch.shiftamt33 = shl nuw nsw i24 %switch.cast32, 3
  %switch.downshift34 = lshr i24 525322, %switch.shiftamt33
  %switch.masked35 = trunc i24 %switch.downshift34 to i8
  store i8 %switch.masked35, ptr %i.q, align 8, !alias.scope !25645, !noalias !25646
  store i64 %.sroa.268.0.copyload.i, ptr %.sroa.41.0..sroa_idx.i.i61.i, align 8, !alias.scope !25645, !noalias !25646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !25578
  br label %.thread.i

.thread.i:                                        ; preds = %switch.lookup, %switch.lookup31, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit59.i, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit50.i, %bb.ag, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !noalias !25568
  br label %bb.bl

bb.bl:                                            ; preds = %.thread.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !25578
  br label %_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCs5pRimKDHYSy_5serde7private2de7content14ContentVisitorECsl8OoimOLbh_6qdrant.exit

bb.bm:                                            ; preds = %bb.bb, %bb.as
  %.pn.i = phi { ptr, i32 } [ %i.dn, %bb.bb ], [ %i.cy, %bb.as ]
  resume { ptr, i32 } %.pn.i

_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCs5pRimKDHYSy_5serde7private2de7content14ContentVisitorECsl8OoimOLbh_6qdrant.exit: ; preds = %.loopexit.i, %bb.ah, %bb.bl
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYQINtNtCs8O45qwFIwQX_10serde_json2de12DeserializerNtNtB9_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCs5pRimKDHYSy_5serde7private2de7content14ContentVisitorECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25714)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !25715, !noalias !25716, !noundef !7 ; 8 uses
  %.promoted.i.i = load i64, ptr %i.s, align 8, !alias.scope !25717, !noalias !25718 ; 2 uses
  %i.v = icmp ult i64 %.promoted.i.i, %i.u
  br i1 %i.v, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !25715, !noalias !25716, !nonnull !7, !noundef !7 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.y = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.ab, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25719)
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !25720, !noundef !7 ; 3 uses
  switch i8 %i.aa, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ab = add i64 %i.y, 1                         ; 3 uses
  store i64 %i.ab, ptr %i.s, align 8, !alias.scope !25721, !noalias !25718
  %exitcond.not.i.i = icmp eq i64 %i.ab, %i.u
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !25722
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !25722
  store i64 5, ptr %i.r, align 8, !noalias !25722
  %i.ac = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r), !noalias !25712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !25722
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !25712, !noalias !25713
  store i8 -1, ptr %0, align 8, !alias.scope !25712, !noalias !25713
  br label %_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCs5pRimKDHYSy_5serde7private2de7content14ContentVisitorECsl8OoimOLbh_6qdrant.exit

bb.d:                                             ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit.i
  %i.ae = add i8 %i.aa, -48
  %or.cond8.i = icmp ult i8 %i.ae, 10
  br i1 %or.cond8.i, label %bb.bi, label %bb.bh, !prof !14

bb.e:                                             ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit.i
  %i.af = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.af, ptr %i.s, align 8, !alias.scope !25723, !noalias !25712
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25724)
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.af) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25725)
  %exitcond.not.i40.not.i = icmp ult i64 %i.af, %i.u
  br i1 %exitcond.not.i40.not.i, label %bb.f, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !25726, !noundef !7
  %i.ai = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.ai, ptr %i.s, align 8, !alias.scope !25727, !noalias !25728
  %.not.i.i = icmp eq i8 %i.ah, 117
  br i1 %.not.i.i, label %bb.g, label %bb.k, !prof !21

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25729)
  %exitcond.not.i40.1.i = icmp eq i64 %i.ai, %umax.i.i
  br i1 %exitcond.not.i40.1.i, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !25730, !noundef !7
  %i.al = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.al, ptr %i.s, align 8, !alias.scope !25731, !noalias !25728
  %.not.i.1.i = icmp eq i8 %i.ak, 108
  br i1 %.not.i.1.i, label %bb.i, label %bb.k, !prof !21

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25732)
  %exitcond.not.i40.2.i = icmp eq i64 %i.al, %umax.i.i
  br i1 %exitcond.not.i40.2.i, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !noalias !25733, !noundef !7
  %i.ao = add i64 %i.y, 4
  store i64 %i.ao, ptr %i.s, align 8, !alias.scope !25734, !noalias !25728
  %.not.i.2.i = icmp eq i8 %i.an, 108
  br i1 %.not.i.2.i, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit.i, label %bb.k, !prof !21

_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !25735
  store i64 5, ptr %i.f, align 8, !noalias !25735
  %i.ap = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !25736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !25735
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !25735
  store i64 9, ptr %i.e, align 8, !noalias !25735
  %i.aq = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !25736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !25735
  br label %bb.af

bb.l:                                             ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit.i
  %i.ar = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.ar, ptr %i.s, align 8, !alias.scope !25737, !noalias !25712
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25738)
  %umax.i43.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.ar) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25739)
  %exitcond.not.i45.not.i = icmp ult i64 %i.ar, %i.u
  br i1 %exitcond.not.i45.not.i, label %bb.m, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i49.i

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !25740, !noundef !7
  %i.au = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.au, ptr %i.s, align 8, !alias.scope !25741, !noalias !25742
  %.not.i46.i = icmp eq i8 %i.at, 114
  br i1 %.not.i46.i, label %bb.n, label %bb.r, !prof !21

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25743)
  %exitcond.not.i45.1.i = icmp eq i64 %i.au, %umax.i43.i
  br i1 %exitcond.not.i45.1.i, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i49.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !25744, !noundef !7
  %i.ax = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.ax, ptr %i.s, align 8, !alias.scope !25745, !noalias !25742
  %.not.i46.1.i = icmp eq i8 %i.aw, 117
  br i1 %.not.i46.1.i, label %bb.p, label %bb.r, !prof !21

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25746)
  %exitcond.not.i45.2.i = icmp eq i64 %i.ax, %umax.i43.i
  br i1 %exitcond.not.i45.2.i, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i49.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noalias !25747, !noundef !7
  %i.ba = add i64 %i.y, 4
  store i64 %i.ba, ptr %i.s, align 8, !alias.scope !25748, !noalias !25742
  %.not.i46.2.i = icmp eq i8 %i.az, 101
  br i1 %.not.i46.2.i, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit50.i, label %bb.r, !prof !21

_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i49.i: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !25749
  store i64 5, ptr %i.d, align 8, !noalias !25749
  %i.bb = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !25750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !25749
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !25749
  store i64 9, ptr %i.c, align 8, !noalias !25749
  %i.bc = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !25750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !25749
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit.i
  %i.bd = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.bd, ptr %i.s, align 8, !alias.scope !25751, !noalias !25712
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25752)
  %umax.i52.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.bd) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25753)
  %exitcond.not.i54.not.i = icmp ult i64 %i.bd, %i.u
  br i1 %exitcond.not.i54.not.i, label %bb.t, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !25754, !noundef !7
  %i.bg = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.bg, ptr %i.s, align 8, !alias.scope !25755, !noalias !25756
  %.not.i55.i = icmp eq i8 %i.bf, 97
  br i1 %.not.i55.i, label %bb.u, label %bb.aa, !prof !21

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25757)
  %exitcond.not.i54.1.i = icmp eq i64 %i.bg, %umax.i52.i
  br i1 %exitcond.not.i54.1.i, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !25758, !noundef !7
  %i.bj = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.bj, ptr %i.s, align 8, !alias.scope !25759, !noalias !25756
  %.not.i55.1.i = icmp eq i8 %i.bi, 108
  br i1 %.not.i55.1.i, label %bb.w, label %bb.aa, !prof !21

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25760)
  %exitcond.not.i54.2.i = icmp eq i64 %i.bj, %umax.i52.i
  br i1 %exitcond.not.i54.2.i, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !25761, !noundef !7
  %i.bm = add i64 %i.y, 4                         ; 3 uses
  store i64 %i.bm, ptr %i.s, align 8, !alias.scope !25762, !noalias !25756
  %.not.i55.2.i = icmp eq i8 %i.bl, 115
  br i1 %.not.i55.2.i, label %bb.y, label %bb.aa, !prof !21

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25763)
  %exitcond.not.i54.3.i = icmp eq i64 %i.bm, %umax.i52.i
  br i1 %exitcond.not.i54.3.i, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !25764, !noundef !7
  %i.bp = add i64 %i.y, 5
  store i64 %i.bp, ptr %i.s, align 8, !alias.scope !25765, !noalias !25756
  %.not.i55.3.i = icmp eq i8 %i.bo, 101
  br i1 %.not.i55.3.i, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit59.i, label %bb.aa, !prof !21

_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !25766
  store i64 5, ptr %i.b, align 8, !noalias !25766
  %i.bq = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !25767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25766
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25766
  store i64 9, ptr %i.a, align 8, !noalias !25766
  %i.br = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !25767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25766
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit.i
  %i.bs = add i64 %i.y, 1
  store i64 %i.bs, ptr %i.s, align 8, !alias.scope !25768, !noalias !25712
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !25722
  call void @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !25712
  %i.bt = load i64, ptr %i.p, align 8, !range !13, !noalias !25722, !noundef !7 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, -1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  br i1 %i.bu, label %bb.ak, label %switch.lookup

bb.ac:                                            ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit.i
  %i.bw = add i64 %i.y, 1
  store i64 %i.bw, ptr %i.s, align 8, !alias.scope !25769, !noalias !25712
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.bx, align 8, !alias.scope !25713, !noalias !25712
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !25722
  call void @_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !25712
  %i.by = load i64, ptr %i.n, align 8, !range !6, !noalias !25722, !noundef !7 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 2
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !25722 ; 4 uses
  br i1 %i.bz, label %bb.al, label %bb.am

bb.ad:                                            ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cd = load i8, ptr %i.cc, align 8, !alias.scope !25713, !noalias !25712, !noundef !7
  %i.ce = add i8 %i.cd, -1                        ; 2 uses
  store i8 %i.ce, ptr %i.cc, align 8, !alias.scope !25713, !noalias !25712
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.aq, label %bb.ar, !prof !17

bb.ae:                                            ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ch = load i8, ptr %i.cg, align 8, !alias.scope !25713, !noalias !25712, !noundef !7
  %i.ci = add i8 %i.ch, -1                        ; 2 uses
  store i8 %i.ci, ptr %i.cg, align 8, !alias.scope !25713, !noalias !25712
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.az, label %bb.ba, !prof !17

bb.af:                                            ; preds = %bb.k, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i
  %.sroa.0.1.i.ph.i = phi ptr [ %i.ap, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i ], [ %i.aq, %bb.k ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i, ptr %i.ck, align 8, !alias.scope !25712, !noalias !25713
  store i8 -1, ptr %0, align 8, !alias.scope !25712, !noalias !25713
  br label %bb.ah

_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.j
  store i8 18, ptr %i.q, align 8, !alias.scope !25770, !noalias !25722
  br label %.thread.i

bb.ag:                                            ; preds = %.thread90.i, %.thread87.i, %bb.ap
  %.pr.i.pr = load i8, ptr %i.q, align 8, !noalias !25722
  %i.cl = icmp eq i8 %.pr.i.pr, -1
  br i1 %i.cl, label %._crit_edge.i, label %.thread.i, !prof !64

._crit_edge.i:                                    ; preds = %bb.ag
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !25722
  br label %bb.bj

bb.ah:                                            ; preds = %bb.bk, %bb.az, %bb.aq, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !25722
  br label %_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCs5pRimKDHYSy_5serde7private2de7content14ContentVisitorECsl8OoimOLbh_6qdrant.exit

bb.ai:                                            ; preds = %bb.r, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i49.i
  %.sroa.0.1.i48.ph.i = phi ptr [ %i.bb, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i49.i ], [ %i.bc, %bb.r ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i48.ph.i, ptr %i.cm, align 8, !alias.scope !25712, !noalias !25713
  store i8 -1, ptr %0, align 8, !alias.scope !25712, !noalias !25713
  br label %bb.ah

_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit50.i: ; preds = %bb.q
  store i8 0, ptr %i.q, align 8, !alias.scope !25771, !noalias !25722
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !alias.scope !25771, !noalias !25722
  br label %.thread.i

bb.aj:                                            ; preds = %bb.aa, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i
  %.sroa.0.1.i57.ph.i = phi ptr [ %i.bq, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i ], [ %i.br, %bb.aa ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i57.ph.i, ptr %i.cn, align 8, !alias.scope !25712, !noalias !25713
  store i8 -1, ptr %0, align 8, !alias.scope !25712, !noalias !25713
  br label %bb.ah

_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit59.i: ; preds = %bb.z
  store i8 0, ptr %i.q, align 8, !alias.scope !25772, !noalias !25722
  %.sroa.4.0..sroa_idx.i60.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 0, ptr %.sroa.4.0..sroa_idx.i60.i, align 1, !alias.scope !25772, !noalias !25722
  br label %.thread.i

bb.ak:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.bv, align 8, !noalias !25722, !nonnull !7, !align !15, !noundef !7
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.co, ptr %i.cp, align 8, !alias.scope !25712, !noalias !25713
  store i8 -1, ptr %0, align 8, !alias.scope !25712, !noalias !25713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !25722
  br label %bb.ah

switch.lookup:                                    ; preds = %bb.ab
  %.sroa.2.0.copyload.i = load i64, ptr %i.bv, align 8, !noalias !25722
  %.sroa.41.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %switch.cast = trunc i64 %i.bt to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 525322, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  store i8 %switch.masked, ptr %i.q, align 8, !alias.scope !25773, !noalias !25774
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.41.0..sroa_idx.i.i.i, align 8, !alias.scope !25773, !noalias !25774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !25722
  br label %.thread.i

bb.al:                                            ; preds = %bb.ac
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cb, ptr %i.cq, align 8, !alias.scope !25712, !noalias !25713
  store i8 -1, ptr %0, align 8, !alias.scope !25712, !noalias !25713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !25722
  br label %bb.ah

bb.am:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !25722 ; 2 uses
  %i.cr = trunc nuw i64 %i.by to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  br i1 %i.cr, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @_RINvXsj_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs4NSHK7GLW4I_10serde_core2de7Visitor9visit_strNtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cb, i64 noundef %.sroa.4.0.copyload.i), !noalias !25712
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  store i8 13, ptr %i.q, align 8, !alias.scope !25775, !noalias !25776
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.cb, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !25775, !noalias !25776
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !25775, !noalias !25776
  br label %bb.ap
end_hunk_6
begin_hunk_7_@_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEE7end_seqCsl8OoimOLbh_6qdrant:.peel.begin
  store i8 0, ptr %i.g, align 8, !alias.scope !26216, !noalias !26217
  call void @llvm.experimental.noalias.scope.decl(metadata !26218)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26219
  call void @_RNvXs_NtCs8O45qwFIwQX_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.i), !noalias !26212
  %i.y = load i8, ptr %i.a, align 8, !range !9, !noalias !26219, !noundef !7
  switch i8 %i.y, label %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i.thread.thread [
    i8 2, label %.thread82
    i8 0, label %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i
  ], !prof !10

_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i.thread.thread: ; preds = %.peel.next
  %i.z = load ptr, ptr %i.k, align 8, !noalias !26219, !nonnull !7, !noundef !7
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.z), !noalias !26212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26219
  br label %bb.g

.thread82:                                        ; preds = %.peel.next
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26219
  br label %bb.i

_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i: ; preds = %.peel.next
  %i.ab = load i8, ptr %i.j, align 1, !noalias !26219, !noundef !7 ; 2 uses
  store i8 1, ptr %i.g, align 8, !alias.scope !26211, !noalias !26212
  store i8 %i.ab, ptr %i.h, align 1, !alias.scope !26211, !noalias !26212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26219
  switch i8 %i.ab, label %.loopexit [
    i8 32, label %.peel.next.backedge
    i8 10, label %.peel.next.backedge
    i8 9, label %.peel.next.backedge
    i8 13, label %.peel.next.backedge
    i8 93, label %.loopexit30
    i8 44, label %.loopexit31
  ], !prof !42

.peel.next.backedge:                              ; preds = %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i, %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i, %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i, %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i
  br label %.peel.next, !llvm.loop !26193

_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit: ; preds = %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i.peel
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i.thread.thread, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit
  %.lcssa5874 = phi ptr [ %i.aa, %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i.thread.thread ], [ %i.u, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.lcssa5874) ]
  br label %bb.q

bb.h:                                             ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit
  br i1 %i.w, label %.thread, label %bb.i, !prof !12

.thread:                                          ; preds = %bb.h
  switch i8 %i.v, label %.loopexit [
    i8 93, label %.loopexit30
    i8 44, label %.loopexit31
  ], !prof !63

bb.i:                                             ; preds = %.thread82, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 2, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !26220)
  %.val.i = load i64, ptr %i.i, align 8, !alias.scope !26220, !noalias !26221, !noundef !7
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2.i = load i64, ptr %i.ac, align 8, !alias.scope !26220, !noalias !26221, !noundef !7
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val.i, i64 noundef %.val2.i), !noalias !26220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.q

.loopexit:                                        ; preds = %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i, %bb.f, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 22, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !26222)
  %.val.i10 = load i64, ptr %i.i, align 8, !alias.scope !26222, !noalias !26223, !noundef !7
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2.i11 = load i64, ptr %i.ae, align 8, !alias.scope !26222, !noalias !26223, !noundef !7
  %i.af = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.val.i10, i64 noundef %.val2.i11), !noalias !26222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.q

.loopexit30:                                      ; preds = %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i, %bb.f, %.thread
  store i8 0, ptr %i.g, align 8, !alias.scope !26224
  br label %bb.q

.loopexit31:                                      ; preds = %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i, %bb.f, %.thread
  store i8 0, ptr %i.g, align 8, !alias.scope !26225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEE16parse_whitespaceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0)
  %i.ag = load i8, ptr %i.f, align 8, !range !8, !noundef !7 ; 3 uses
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %.loopexit31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 22, ptr %i.d, align 8
  %.val.i12 = load i64, ptr %i.i, align 8, !alias.scope !26226, !noalias !26227, !noundef !7
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2.i13 = load i64, ptr %i.ai, align 8, !alias.scope !26226, !noalias !26227, !noundef !7
  %i.aj = invoke noundef nonnull align 8 ptr @_RNvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.val.i12, i64 noundef %.val2.i13)
          to label %bb.n unwind label %bb.l       ; 2 uses

bb.k:                                             ; preds = %.loopexit31
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !range !8, !noundef !7
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.ao = load i8, ptr %i.an, align 2
  %i.ap = icmp eq i8 %i.ao, 93
  %or.cond = select i1 %i.am, i1 %i.ap, i1 false
  br i1 %or.cond, label %.thread26, label %bb.j

.thread26:                                        ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 21, ptr %i.e, align 8
  %.val.i14 = load i64, ptr %i.i, align 8, !alias.scope !26228, !noalias !26229, !noundef !7
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2.i15 = load i64, ptr %i.aq, align 8, !alias.scope !26228, !noalias !26229, !noundef !7
  %i.ar = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %.val.i14, i64 noundef %.val2.i15)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs8O45qwFIwQX_10serde_json5error5ErrorEECsl8OoimOLbh_6qdrant.exit17

bb.l:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = icmp eq i8 %i.ag, 0
  br i1 %i.at, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs8O45qwFIwQX_10serde_json5error5ErrorEECsl8OoimOLbh_6qdrant.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val9 = load ptr, ptr %i.au, align 8, !nonnull !7, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val9)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs8O45qwFIwQX_10serde_json5error5ErrorEECsl8OoimOLbh_6qdrant.exit unwind label %bb.p

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.av = icmp eq i8 %i.ag, 0
  br i1 %i.av, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs8O45qwFIwQX_10serde_json5error5ErrorEECsl8OoimOLbh_6qdrant.exit17, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val7 = load ptr, ptr %i.aw, align 8, !nonnull !7, !noundef !7
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val7)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs8O45qwFIwQX_10serde_json5error5ErrorEECsl8OoimOLbh_6qdrant.exit17

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs8O45qwFIwQX_10serde_json5error5ErrorEECsl8OoimOLbh_6qdrant.exit17: ; preds = %.thread26, %bb.n, %bb.o
  %.sroa.0.129 = phi ptr [ %i.ar, %.thread26 ], [ %i.aj, %bb.n ], [ %i.aj, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs8O45qwFIwQX_10serde_json5error5ErrorEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %i.as

bb.q:                                             ; preds = %bb.i, %.loopexit, %.loopexit30, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs8O45qwFIwQX_10serde_json5error5ErrorEECsl8OoimOLbh_6qdrant.exit17, %bb.g
  %.sroa.0.2 = phi ptr [ %.lcssa5874, %bb.g ], [ %i.af, %.loopexit ], [ null, %.loopexit30 ], [ %.sroa.0.129, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs8O45qwFIwQX_10serde_json5error5ErrorEECsl8OoimOLbh_6qdrant.exit17 ], [ %i.ad, %bb.i ]
  ret ptr %.sroa.0.2
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read13peek_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8O45qwFIwQX_10serde_json5error9ErrorCodeECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #19
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !7
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26237)
  %exitcond.not = icmp eq i64 %i.l, %umax
  br i1 %exitcond.not, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !26238, !noundef !7
  %i.o = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.o, ptr %i.d, align 8, !alias.scope !26239, !noalias !26240
  %i.p = load i8, ptr %.sroa.01.09, align 1, !noundef !7
  %.not = icmp eq i8 %i.n, %i.p
  br i1 %.not, label %bb.b, label %bb.d, !prof !16

_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 5, ptr %i.b, align 8
  %i.q = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 9, ptr %i.a, align 8
  %i.r = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit, %bb.d
  %.sroa.0.1 = phi ptr [ %i.r, %bb.d ], [ %i.q, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26264)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !26265, !noalias !26266, !noundef !7 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !26265, !noalias !26266, !noundef !7 ; 4 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !26265, !noalias !26266, !nonnull !7, !noundef !7 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h
  %i.o = load i8, ptr %i.n, align 1, !noalias !26267, !noundef !7
  switch i8 %i.o, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread [
    i8 46, label %bb.b
    i8 101, label %bb.p
    i8 69, label %bb.p
  ]

_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %bb.a, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  br i1 %2, label %bb.s, label %bb.v

bb.b:                                             ; preds = %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26269)
  %i.p = add nuw i64 %i.h, 1                      ; 3 uses
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !26270, !noalias !26268
  %i.q = icmp ult i64 %i.p, %i.j
  br i1 %i.q, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i, label %.thread.thread.i

_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i: ; preds = %bb.b
  %i.r = trunc i64 %i.h to i32
  %i.s = add i32 %i.r, 1
  %i.t = trunc i64 %i.j to i32
  %i.u = sub i32 %i.s, %i.t                       ; 2 uses
  br label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i

_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i: ; preds = %bb.n, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i
  %.sroa.0.061.i = phi i64 [ %3, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bg, %bb.n ] ; 6 uses
  %.sroa.07.060.i = phi i32 [ 0, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bh, %bb.n ] ; 5 uses
  %i.v = phi i64 [ %i.p, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.be, %bb.n ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !26271, !noundef !7 ; 2 uses
  %i.y = add i8 %i.x, -48                         ; 3 uses
  %or.cond.i = icmp ult i8 %i.y, 10
  br i1 %or.cond.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  %i.z = icmp eq i32 %.sroa.07.060.i, 0
  br i1 %i.z, label %bb.e, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i

.thread.i:                                        ; preds = %bb.n
  %i.aa = icmp eq i32 %i.u, 0
  br i1 %i.aa, label %.thread.thread.i, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i

bb.d:                                             ; preds = %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  %i.ab = zext nneg i8 %i.y to i64
  %i.ac = icmp ugt i64 %.sroa.0.061.i, 1844674407370955160
  br i1 %i.ac, label %bb.m, label %bb.n

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !26272
  store i64 13, ptr %i.d, align 8, !noalias !26272
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !26268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !26272
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !26268, !noalias !26269
  store i64 1, ptr %i.f, align 8, !alias.scope !26268, !noalias !26269
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsl8OoimOLbh_6qdrant.exit

.thread.thread.i:                                 ; preds = %.thread.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !26272
  store i64 5, ptr %i.c, align 8, !noalias !26272
  %i.af = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !26268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26272
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !26268, !noalias !26269
  store i64 1, ptr %i.f, align 8, !alias.scope !26268, !noalias !26269
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsl8OoimOLbh_6qdrant.exit

_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i: ; preds = %bb.c
  switch i8 %i.x, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i [
    i8 101, label %bb.l
    i8 69, label %bb.l
  ]

_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i: ; preds = %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i, %.thread.i
  %.sroa.07.059.i = phi i32 [ %i.u, %.thread.i ], [ %.sroa.07.060.i, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i ] ; 3 uses
  %.sroa.0.056.i = phi i64 [ %i.bg, %.thread.i ], [ %.sroa.0.061.i, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26273)
  %i.ah = uitofp i64 %.sroa.0.056.i to double     ; 2 uses
  %.sroa.012.020.i.i = tail call i32 @llvm.abs.i32(i32 %.sroa.07.059.i, i1 false) ; 2 uses
  %i.ai = icmp ult i32 %.sroa.012.020.i.i, 309
  br i1 %i.ai, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i, %bb.g
  %.sroa.0.022.i.i = phi i32 [ %i.aq, %bb.g ], [ %.sroa.07.059.i, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ] ; 2 uses
  %.sroa.04.021.i.i = phi double [ %i.ap, %bb.g ], [ %i.ah, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ] ; 3 uses
  %i.aj = fcmp oeq double %.sroa.04.021.i.i, 0.000000e+00
  br i1 %i.aj, label %.loopexit.i.i, label %bb.f

._crit_edge.i.i:                                  ; preds = %bb.g, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i
  %.sroa.04.0.lcssa.i.i = phi double [ %i.ah, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %i.ap, %bb.g ] ; 2 uses
  %.sroa.0.0.lcssa.i.i = phi i32 [ %.sroa.07.059.i, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %i.aq, %bb.g ]
  %.sroa.012.0.lcssa.i.i = phi i32 [ %.sroa.012.020.i.i, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %.sroa.012.0.i.i, %bb.g ]
  %i.ak = zext nneg i32 %.sroa.012.0.lcssa.i.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCs8O45qwFIwQX_10serde_json2de5POW10, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !noalias !26274, !noundef !7 ; 2 uses
  %i.an = icmp sgt i32 %.sroa.0.0.lcssa.i.i, -1
  br i1 %i.an, label %bb.j, label %bb.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = icmp sgt i32 %.sroa.0.022.i.i, -1
  br i1 %i.ao, label %bb.h, label %bb.g, !prof !17

bb.g:                                             ; preds = %bb.f
  %i.ap = fdiv double %.sroa.04.021.i.i, 1.000000e+308 ; 2 uses
  %i.aq = add nsw i32 %.sroa.0.022.i.i, 308       ; 3 uses
  %.sroa.012.0.i.i = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true) ; 2 uses
  %i.ar = icmp samesign ult i32 %.sroa.012.0.i.i, 309
  br i1 %i.ar, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26274
  store i64 14, ptr %i.a, align 8, !noalias !26274
  %i.as = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !26275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26274
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.as, ptr %i.at, align 8, !alias.scope !26275, !noalias !26276
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsl8OoimOLbh_6qdrant.exit.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %bb.j, %bb.i
  %.sroa.04.1.i.i = phi double [ %i.ax, %bb.j ], [ %i.aw, %bb.i ], [ %.sroa.04.021.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.au = fneg double %.sroa.04.1.i.i
  %.sroa.04.2.i.i = select i1 %2, double %.sroa.04.1.i.i, double %i.au
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store double %.sroa.04.2.i.i, ptr %i.av, align 8, !alias.scope !26275, !noalias !26276
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsl8OoimOLbh_6qdrant.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.aw = fdiv double %.sroa.04.0.lcssa.i.i, %i.am
  br label %.loopexit.i.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.ax = fmul double %.sroa.04.0.lcssa.i.i, %i.am ; 2 uses
end_hunk_7
begin_hunk_8_@_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE15scan_integer128Csl8OoimOLbh_6qdrant:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !26506, !noundef !7 ; 3 uses
  %i.q = icmp sgt i64 %i.p, -1
  tail call void @llvm.assume(i1 %i.q)
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !26506, !nonnull !7, !noundef !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p
  store i8 48, ptr %i.t, align 1
  %i.u = add nuw i64 %i.p, 1
  store i64 %i.u, ptr %i.o, align 8, !alias.scope !26506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26508)
  %i.v = load i64, ptr %i.d, align 8, !alias.scope !26509, !noalias !26510, !noundef !7 ; 2 uses
  %i.w = load i64, ptr %i.f, align 8, !alias.scope !26509, !noalias !26510, !noundef !7
  %i.x = icmp ult i64 %i.v, %i.w
  br i1 %i.x, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %bb.c
  %i.y = load ptr, ptr %i.c, align 8, !alias.scope !26509, !noalias !26510, !nonnull !7, !noundef !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  %i.aa = load i8, ptr %i.z, align 1, !noalias !26511, !noundef !7
  %i.ab = add i8 %i.aa, -48
  %i.ac = icmp ult i8 %i.ab, 10
  br i1 %i.ac, label %bb.d, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, !prof !21

bb.d:                                             ; preds = %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 13, ptr %i.b, align 8
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread: ; preds = %bb.a, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 13, ptr %i.a, align 8
  %i.ae = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

bb.e:                                             ; preds = %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !26512, !noundef !7 ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  tail call void @llvm.assume(i1 %i.ah)
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !26512, !nonnull !7, !noundef !7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag
  store i8 %i.k, ptr %i.ak, align 1
  %storemerge55 = add nuw i64 %i.ag, 1            ; 2 uses
  store i64 %storemerge55, ptr %i.af, align 8
  %i.al = load i64, ptr %i.d, align 8, !alias.scope !26513, !noalias !26514, !noundef !7 ; 2 uses
  %i.am = load i64, ptr %i.f, align 8, !alias.scope !26513, !noalias !26514, !noundef !7
  %i.an = icmp ult i64 %i.al, %i.am
  br i1 %i.an, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit34, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit34: ; preds = %bb.e, %bb.f
  %i.ao = phi i64 [ %storemerge, %bb.f ], [ %storemerge55, %bb.e ] ; 3 uses
  %i.ap = phi i64 [ %i.ay, %bb.f ], [ %i.al, %bb.e ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26516)
  %i.aq = load ptr, ptr %i.c, align 8, !alias.scope !26517, !noalias !26514, !nonnull !7, !noundef !7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  %i.as = load i8, ptr %i.ar, align 1, !noalias !26518, !noundef !7 ; 2 uses
  %i.at = add i8 %i.as, -48
  %or.cond3 = icmp ult i8 %i.at, 10
  br i1 %or.cond3, label %bb.f, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

bb.f:                                             ; preds = %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit34
  %i.au = add nuw i64 %i.ap, 1
  store i64 %i.au, ptr %i.d, align 8, !alias.scope !26519
  %i.av = icmp sgt i64 %i.ao, -1
  tail call void @llvm.assume(i1 %i.av)
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
  %i.aw = load ptr, ptr %i.ai, align 8, !alias.scope !26520, !nonnull !7, !noundef !7
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ao
  store i8 %i.as, ptr %i.ax, align 1
  %storemerge = add nuw i64 %i.ao, 1              ; 2 uses
  store i64 %storemerge, ptr %i.af, align 8
  %i.ay = load i64, ptr %i.d, align 8, !alias.scope !26521, !noalias !26514, !noundef !7 ; 2 uses
  %i.az = load i64, ptr %i.f, align 8, !alias.scope !26521, !noalias !26514, !noundef !7
  %i.ba = icmp ult i64 %i.ay, %i.az
  br i1 %i.ba, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit34, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit34, %bb.f, %bb.e, %bb.c, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, %bb.d
  %.sroa.0.3 = phi ptr [ null, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit ], [ %i.ae, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread ], [ null, %bb.c ], [ %i.ad, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ null, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit34 ]
  ret ptr %.sroa.0.3
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((1, 2)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !26530, !noalias !26531, !noundef !7 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.d = icmp ult i64 %.promoted, %i.c
  br i1 %i.d, label %.lr.ph, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !26530, !noalias !26531, !nonnull !7, !noundef !7
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.g, align 1, !alias.scope !26531, !noalias !26530
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  br label %bb.b

._RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit_crit_edge: ; preds = %bb.c
  store i8 %i.l, ptr %i.h, align 2, !alias.scope !26531, !noalias !26530
  br label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit

_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %._RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit_crit_edge, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.i, align 1, !alias.scope !26531, !noalias !26530
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.j = phi i64 [ %.promoted, %.lr.ph ], [ %i.m, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26535)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !26536, !noundef !7 ; 3 uses
  switch i8 %i.l, label %.loopexit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.a, align 8, !alias.scope !26537
  %exitcond.not = icmp eq i64 %i.m, %i.c
  br i1 %exitcond.not, label %._RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit_crit_edge, label %bb.b

.loopexit:                                        ; preds = %bb.b
  store i8 %i.l, ptr %i.h, align 2, !alias.scope !26531, !noalias !26530
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #3 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26596)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !26597, !noalias !26598, !noundef !7 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !26597, !noalias !26598, !noundef !7 ; 10 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %.thread64

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !alias.scope !26597, !noalias !26598, !nonnull !7, !noundef !7
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !noalias !26599, !noundef !7 ; 2 uses
  switch i8 %i.y, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !66

bb.c:                                             ; preds = %bb.b
  %i.z = add i8 %i.y, -48
  %or.cond = icmp ult i8 %i.z, 10
  br i1 %or.cond, label %bb.aj, label %.thread64, !prof !21

bb.d:                                             ; preds = %bb.b
  %i.aa = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !26600
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26601)
  %i.ab = load ptr, ptr %i.q, align 8, !alias.scope !26601, !noalias !26602, !nonnull !7 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.aa)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26604)
  %exitcond.not.i.not = icmp ult i64 %i.aa, %i.u
  br i1 %exitcond.not.i.not, label %bb.e, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !26605, !noundef !7
  %i.ae = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ae, ptr %i.r, align 8, !alias.scope !26606, !noalias !26607
  %.not.i = icmp eq i8 %i.ad, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !21

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26609)
  %exitcond.not.i.1 = icmp eq i64 %i.u, %i.ae
  br i1 %exitcond.not.i.1, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !26610, !noundef !7
  %i.ah = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.ah, ptr %i.r, align 8, !alias.scope !26611, !noalias !26607
  %.not.i.1 = icmp eq i8 %i.ag, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !21

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26613)
  %exitcond.not.i.2 = icmp eq i64 %i.ah, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !26614, !noundef !7
  %i.ak = add i64 %i.s, 4
  store i64 %i.ak, ptr %i.r, align 8, !alias.scope !26615, !noalias !26607
  %.not.i.2 = icmp eq i8 %i.aj, 108
  br i1 %.not.i.2, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit, label %bb.j, !prof !21

_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !26616
  store i64 5, ptr %i.f, align 8, !noalias !26616
  %i.al = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !26602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !26616
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !26616
  store i64 9, ptr %i.e, align 8, !noalias !26616
  %i.am = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !26602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !26616
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.an = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.an, ptr %i.r, align 8, !alias.scope !26617
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26618)
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !26618, !noalias !26619, !nonnull !7 ; 3 uses
  %umax.i24 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.an)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26621)
  %exitcond.not.i26.not = icmp ult i64 %i.an, %i.u
  br i1 %exitcond.not.i26.not, label %bb.l, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !26622, !noundef !7
  %i.ar = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ar, ptr %i.r, align 8, !alias.scope !26623, !noalias !26624
  %.not.i27 = icmp eq i8 %i.aq, 114
  br i1 %.not.i27, label %bb.m, label %bb.q, !prof !21

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26626)
  %exitcond.not.i26.1 = icmp eq i64 %i.u, %i.ar
  br i1 %exitcond.not.i26.1, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !26627, !noundef !7
  %i.au = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.au, ptr %i.r, align 8, !alias.scope !26628, !noalias !26624
  %.not.i27.1 = icmp eq i8 %i.at, 117
  br i1 %.not.i27.1, label %bb.o, label %bb.q, !prof !21

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26630)
  %exitcond.not.i26.2 = icmp eq i64 %i.au, %umax.i24
  br i1 %exitcond.not.i26.2, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !26631, !noundef !7
  %i.ax = add i64 %i.s, 4
  store i64 %i.ax, ptr %i.r, align 8, !alias.scope !26632, !noalias !26624
  %.not.i27.2 = icmp eq i8 %i.aw, 101
  br i1 %.not.i27.2, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit30, label %bb.q, !prof !21

_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29: ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !26633
  store i64 5, ptr %i.d, align 8, !noalias !26633
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !26619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !26633
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !26633
  store i64 9, ptr %i.c, align 8, !noalias !26633
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !26619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26633
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread

bb.r:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.ba, ptr %i.r, align 8, !alias.scope !26634
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26635)
  %i.bb = load ptr, ptr %i.q, align 8, !alias.scope !26635, !noalias !26636, !nonnull !7 ; 4 uses
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.ba) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26638)
  %exitcond.not.i34.not = icmp ult i64 %i.ba, %i.u
  br i1 %exitcond.not.i34.not, label %bb.s, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !26639, !noundef !7
  %i.be = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.be, ptr %i.r, align 8, !alias.scope !26640, !noalias !26641
  %.not.i35 = icmp eq i8 %i.bd, 97
  br i1 %.not.i35, label %bb.t, label %bb.z, !prof !21

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26643)
  %exitcond.not.i34.1 = icmp eq i64 %i.u, %i.be
  br i1 %exitcond.not.i34.1, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !26644, !noundef !7
  %i.bh = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.bh, ptr %i.r, align 8, !alias.scope !26645, !noalias !26641
  %.not.i35.1 = icmp eq i8 %i.bg, 108
  br i1 %.not.i35.1, label %bb.v, label %bb.z, !prof !21

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26647)
  %exitcond.not.i34.2 = icmp eq i64 %i.bh, %umax.i32
  br i1 %exitcond.not.i34.2, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !26648, !noundef !7
  %i.bk = add i64 %i.s, 4                         ; 3 uses
  store i64 %i.bk, ptr %i.r, align 8, !alias.scope !26649, !noalias !26641
  %.not.i35.2 = icmp eq i8 %i.bj, 115
  br i1 %.not.i35.2, label %bb.x, label %bb.z, !prof !21

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26651)
  %exitcond.not.i34.3 = icmp eq i64 %i.bk, %umax.i32
  br i1 %exitcond.not.i34.3, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !26652, !noundef !7
  %i.bn = add i64 %i.s, 5
  store i64 %i.bn, ptr %i.r, align 8, !alias.scope !26653, !noalias !26641
  %.not.i35.3 = icmp eq i8 %i.bm, 101
  br i1 %.not.i35.3, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit38, label %bb.z, !prof !21

_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37: ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26654
  store i64 5, ptr %i.b, align 8, !noalias !26654
  %i.bo = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !26636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26654
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26654
  store i64 9, ptr %i.a, align 8, !noalias !26654
  %i.bp = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !26636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26654
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread

bb.aa:                                            ; preds = %bb.b
  %i.bq = add nuw i64 %i.s, 1
  store i64 %i.bq, ptr %i.r, align 8, !alias.scope !26655
  call fastcc void @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  %i.br = load i64, ptr %i.m, align 8, !range !13, !noundef !7
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !16

bb.ab:                                            ; preds = %bb.b
  %i.bt = add nuw i64 %i.s, 1
  store i64 %i.bt, ptr %i.r, align 8, !alias.scope !26656
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.bv = load i64, ptr %i.k, align 8, !range !6, !noundef !7
  %i.bw = icmp eq i64 %i.bv, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !7, !noundef !7 ; 2 uses
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !16

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 8
  %i.bz = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 11, ptr %i.h, align 8
  %i.ca = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 7, ptr %i.p, align 8
  %i.cb = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread64, %bb.ai, %bb.ag, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit38, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit30, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit, %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cs, %bb.al ], [ %i.cn, %.thread64 ], [ %i.cb, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit ], [ %i.ce, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit30 ], [ %i.cg, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit38 ], [ %i.cj, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ]
  %i.cc = call noundef nonnull align 8 ptr @_RINvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsl8OoimOLbh_6qdrant(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread

_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit30: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 1, ptr %i.cd, align 1
  store i8 0, ptr %i.o, align 8
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit38: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.cf, align 1
  store i8 0, ptr %i.n, align 8
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !7, !align !15, !noundef !7
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread

bb.ag:                                            ; preds = %bb.aa
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread

bb.ai:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.by, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.cl, align 8
  store i8 5, ptr %i.j, align 8
  %i.cm = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

.thread64:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cn = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call fastcc void @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.l, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext true)
  %i.co = load i64, ptr %i.l, align 8, !range !13, !noundef !7
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %bb.ak, label %bb.al, !prof !16

bb.ak:                                            ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !7, !align !15, !noundef !7
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread: ; preds = %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, %bb.z, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, %bb.q, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cc, %bb.ae ], [ %i.cr, %bb.ak ], [ %i.by, %bb.ah ], [ %i.az, %bb.q ], [ %i.am, %bb.j ], [ %i.ci, %bb.af ], [ %i.al, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.ay, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29 ], [ %i.bo, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37 ], [ %i.bp, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read8position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e
end_hunk_8
begin_hunk_9_@_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsl8OoimOLbh_6qdrant:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !26671, !noalias !26672, !nonnull !7, !noundef !7
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.j = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26675)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !26676, !noundef !7
  switch i8 %i.l, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 125, label %bb.e
    i8 44, label %bb.f
  ], !prof !42

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !26677, !noalias !26673
  %exitcond.not.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 3, ptr %i.a, align 8
  %i.n = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 22, ptr %i.b, align 8
  %i.o = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.p = add i64 %i.j, 1
  store i64 %i.p, ptr %i.d, align 8, !alias.scope !26678
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 21, ptr %i.c, align 8
  %i.q = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.d, %bb.e, %bb.f
  %.sroa.0.0 = phi ptr [ %i.o, %bb.d ], [ null, %bb.e ], [ %i.q, %bb.f ], [ %i.n, %.loopexit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26705)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !26706, !noalias !26707, !noundef !7 ; 4 uses
  %.promoted.i = load i64, ptr %i.e, align 8, !alias.scope !26705, !noalias !26708 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i, %i.g
  br i1 %i.h, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !26706, !noalias !26707, !nonnull !7, !noundef !7 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.k = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.n, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26710)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !26711, !noundef !7
  switch i8 %i.m, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 93, label %bb.e
    i8 44, label %bb.f
  ], !prof !42

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.n = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !26712, !noalias !26708
  %exitcond.not.i = icmp eq i64 %i.n, %i.g
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 2, ptr %i.a, align 8
  %i.o = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs8O45qwFIwQX_10serde_json5error5ErrorEECsl8OoimOLbh_6qdrant.exit17

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 22, ptr %i.b, align 8
  %i.p = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs8O45qwFIwQX_10serde_json5error5ErrorEECsl8OoimOLbh_6qdrant.exit17

bb.e:                                             ; preds = %bb.b
  %i.q = add i64 %i.k, 1
  store i64 %i.q, ptr %i.e, align 8, !alias.scope !26713
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs8O45qwFIwQX_10serde_json5error5ErrorEECsl8OoimOLbh_6qdrant.exit17

bb.f:                                             ; preds = %bb.b
  %i.r = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.r, ptr %i.e, align 8, !alias.scope !26714
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26715)
  %i.s = icmp ult i64 %i.r, %i.g
  br i1 %i.s, label %.lr.ph.i12, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit16.thread

.lr.ph.i12:                                       ; preds = %bb.f, %bb.g
  %i.t = phi i64 [ %i.w, %bb.g ], [ %i.r, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !noalias !26716, !noundef !7
  switch i8 %i.v, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit16.thread [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 93, label %bb.h
  ]

bb.g:                                             ; preds = %.lr.ph.i12, %.lr.ph.i12, %.lr.ph.i12, %.lr.ph.i12
  %i.w = add i64 %i.t, 1                          ; 3 uses
  store i64 %i.w, ptr %i.e, align 8, !alias.scope !26717, !noalias !26718
  %exitcond.not.i13 = icmp eq i64 %i.w, %i.g
  br i1 %exitcond.not.i13, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit16.thread, label %.lr.ph.i12

_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit16.thread: ; preds = %.lr.ph.i12, %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 22, ptr %i.c, align 8
  %i.x = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs8O45qwFIwQX_10serde_json5error5ErrorEECsl8OoimOLbh_6qdrant.exit17

bb.h:                                             ; preds = %.lr.ph.i12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 21, ptr %i.d, align 8
  %i.y = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs8O45qwFIwQX_10serde_json5error5ErrorEECsl8OoimOLbh_6qdrant.exit17

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs8O45qwFIwQX_10serde_json5error5ErrorEECsl8OoimOLbh_6qdrant.exit17: ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit16.thread, %bb.h, %.loopexit, %bb.d, %bb.e
  %.sroa.0.0 = phi ptr [ %i.p, %bb.d ], [ null, %bb.e ], [ %i.o, %.loopexit ], [ %i.x, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit16.thread ], [ %i.y, %bb.h ]
  ret ptr %.sroa.0.0
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read13peek_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8O45qwFIwQX_10serde_json5error9ErrorCodeECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #19
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !7
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26722)
  %exitcond.not = icmp eq i64 %i.l, %umax
  br i1 %exitcond.not, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !26723, !noundef !7
  %i.o = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.o, ptr %i.d, align 8, !alias.scope !26722, !noalias !26724
  %i.p = load i8, ptr %.sroa.01.09, align 1, !noundef !7
  %.not = icmp eq i8 %i.n, %i.p
  br i1 %.not, label %bb.b, label %bb.d, !prof !16

_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 5, ptr %i.b, align 8
  %i.q = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 9, ptr %i.a, align 8
  %i.r = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit, %bb.d
  %.sroa.0.1 = phi ptr [ %i.r, %bb.d ], [ %i.q, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE12fix_positionCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsl8OoimOLbh_6qdrant(ptr noalias noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE12ignore_valueCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) initializes((16, 24)) %0) unnamed_addr #0 {
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
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 28 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !26804, !noalias !26805, !noundef !7 ; 2 uses
  %.promoted.i176 = load i64, ptr %i.p, align 8, !alias.scope !26806, !noalias !26807 ; 2 uses
  %i.s = icmp ult i64 %.promoted.i176, %i.r
  br i1 %i.s, label %.lr.ph.i.lr.ph, label %.loopexit130

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.pre = load ptr, ptr %i.t, align 8, !alias.scope !26808, !noalias !26805
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %bb.bb
  %i.v = phi ptr [ %.pre, %.lr.ph.i.lr.ph ], [ %i.dw, %bb.bb ] ; 11 uses
  %.promoted.i179 = phi i64 [ %.promoted.i176, %.lr.ph.i.lr.ph ], [ %.promoted.i, %bb.bb ]
  %i.w = phi i64 [ %i.r, %.lr.ph.i.lr.ph ], [ %i.dv, %bb.bb ] ; 7 uses
  %.sroa.7.0178 = phi i8 [ undef, %.lr.ph.i.lr.ph ], [ %.sroa.027.2163, %bb.bb ] ; 2 uses
  %.sroa.039.0177 = phi i1 [ false, %.lr.ph.i.lr.ph ], [ true, %bb.bb ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26809)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.x = phi i64 [ %.promoted.i179, %.lr.ph.i ], [ %i.aa, %bb.c ] ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26810)
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !noalias !26811, !noundef !7 ; 3 uses
  switch i8 %i.z, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.e
    i8 116, label %bb.k
    i8 102, label %bb.q
    i8 45, label %bb.y
    i8 34, label %bb.z
    i8 91, label %bb.aa
    i8 123, label %bb.aa
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.aa = add i64 %i.x, 1                         ; 3 uses
  store i64 %i.aa, ptr %i.p, align 8, !alias.scope !26812, !noalias !26807
  %exitcond.not.i = icmp eq i64 %i.aa, %i.w
  br i1 %exitcond.not.i, label %.loopexit130, label %bb.b

.loopexit130:                                     ; preds = %bb.bb, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 5, ptr %i.n, align 8
  %i.ab = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.ac = add i8 %i.z, -48
  %or.cond = icmp ult i8 %i.ac, 10
  br i1 %or.cond, label %bb.ae, label %bb.ad, !prof !14

bb.e:                                             ; preds = %bb.b
  %i.ad = add i64 %i.x, 1                         ; 4 uses
  store i64 %i.ad, ptr %i.p, align 8, !alias.scope !26813
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26814)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 %i.ad) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26815)
  %exitcond.not.i53.not = icmp ult i64 %i.ad, %i.w
  br i1 %exitcond.not.i53.not, label %bb.f, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !noalias !26816, !noundef !7
  %i.ag = add i64 %i.x, 2                         ; 3 uses
  store i64 %i.ag, ptr %i.p, align 8, !alias.scope !26817, !noalias !26818
  %.not.i = icmp eq i8 %i.af, 117
  br i1 %.not.i, label %bb.g, label %.loopexit246, !prof !21

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26819)
  %exitcond.not.i53.1 = icmp eq i64 %i.ag, %umax.i
  br i1 %exitcond.not.i53.1, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !26820, !noundef !7
  %i.aj = add i64 %i.x, 3                         ; 3 uses
  store i64 %i.aj, ptr %i.p, align 8, !alias.scope !26821, !noalias !26818
  %.not.i.1 = icmp eq i8 %i.ai, 108
  br i1 %.not.i.1, label %bb.i, label %.loopexit246, !prof !21

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26822)
  %exitcond.not.i53.2 = icmp eq i64 %i.aj, %umax.i
  br i1 %exitcond.not.i53.2, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !26823, !noundef !7
  %i.am = add i64 %i.x, 4
  store i64 %i.am, ptr %i.p, align 8, !alias.scope !26824, !noalias !26818
  %.not.i.2 = icmp eq i8 %i.al, 108
  br i1 %.not.i.2, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit, label %.loopexit246, !prof !21

_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !26825
  store i64 5, ptr %i.f, align 8, !noalias !26825
  %i.an = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !26826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !26825
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread

.loopexit246:                                     ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !26825
  store i64 9, ptr %i.e, align 8, !noalias !26825
  %i.ao = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !26826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !26825
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.ap = add i64 %i.x, 1                         ; 4 uses
  store i64 %i.ap, ptr %i.p, align 8, !alias.scope !26827
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26828)
  %umax.i56 = tail call i64 @llvm.umax.i64(i64 %i.w, i64 %i.ap) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26829)
  %exitcond.not.i58.not = icmp ult i64 %i.ap, %i.w
  br i1 %exitcond.not.i58.not, label %bb.l, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !noalias !26830, !noundef !7
  %i.as = add i64 %i.x, 2                         ; 3 uses
  store i64 %i.as, ptr %i.p, align 8, !alias.scope !26831, !noalias !26832
  %.not.i59 = icmp eq i8 %i.ar, 114
  br i1 %.not.i59, label %bb.m, label %.loopexit239, !prof !21

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26833)
  %exitcond.not.i58.1 = icmp eq i64 %i.as, %umax.i56
  br i1 %exitcond.not.i58.1, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !noalias !26834, !noundef !7
  %i.av = add i64 %i.x, 3                         ; 3 uses
  store i64 %i.av, ptr %i.p, align 8, !alias.scope !26835, !noalias !26832
  %.not.i59.1 = icmp eq i8 %i.au, 117
  br i1 %.not.i59.1, label %bb.o, label %.loopexit239, !prof !21

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26836)
  %exitcond.not.i58.2 = icmp eq i64 %i.av, %umax.i56
  br i1 %exitcond.not.i58.2, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !26837, !noundef !7
  %i.ay = add i64 %i.x, 4
  store i64 %i.ay, ptr %i.p, align 8, !alias.scope !26838, !noalias !26832
  %.not.i59.2 = icmp eq i8 %i.ax, 101
  br i1 %.not.i59.2, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit, label %.loopexit239, !prof !21

_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62: ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !26839
  store i64 5, ptr %i.d, align 8, !noalias !26839
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !26840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !26839
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread

.loopexit239:                                     ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !26839
  store i64 9, ptr %i.c, align 8, !noalias !26839
  %i.ba = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !26840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26839
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread

bb.q:                                             ; preds = %bb.b
  %i.bb = add i64 %i.x, 1                         ; 4 uses
  store i64 %i.bb, ptr %i.p, align 8, !alias.scope !26841
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26842)
  %umax.i65 = tail call i64 @llvm.umax.i64(i64 %i.w, i64 %i.bb) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26843)
  %exitcond.not.i67.not = icmp ult i64 %i.bb, %i.w
  br i1 %exitcond.not.i67.not, label %bb.r, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !26844, !noundef !7
  %i.be = add i64 %i.x, 2                         ; 3 uses
  store i64 %i.be, ptr %i.p, align 8, !alias.scope !26845, !noalias !26846
  %.not.i68 = icmp eq i8 %i.bd, 97
  br i1 %.not.i68, label %bb.s, label %.loopexit232, !prof !21

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26847)
  %exitcond.not.i67.1 = icmp eq i64 %i.be, %umax.i65
  br i1 %exitcond.not.i67.1, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !26848, !noundef !7
  %i.bh = add i64 %i.x, 3                         ; 3 uses
  store i64 %i.bh, ptr %i.p, align 8, !alias.scope !26849, !noalias !26846
  %.not.i68.1 = icmp eq i8 %i.bg, 108
  br i1 %.not.i68.1, label %bb.u, label %.loopexit232, !prof !21

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26850)
  %exitcond.not.i67.2 = icmp eq i64 %i.bh, %umax.i65
  br i1 %exitcond.not.i67.2, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !26851, !noundef !7
  %i.bk = add i64 %i.x, 4                         ; 3 uses
  store i64 %i.bk, ptr %i.p, align 8, !alias.scope !26852, !noalias !26846
  %.not.i68.2 = icmp eq i8 %i.bj, 115
  br i1 %.not.i68.2, label %bb.w, label %.loopexit232, !prof !21

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26853)
  %exitcond.not.i67.3 = icmp eq i64 %i.bk, %umax.i65
  br i1 %exitcond.not.i67.3, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !26854, !noundef !7
  %i.bn = add i64 %i.x, 5
  store i64 %i.bn, ptr %i.p, align 8, !alias.scope !26855, !noalias !26846
  %.not.i68.3 = icmp eq i8 %i.bm, 101
  br i1 %.not.i68.3, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit, label %.loopexit232, !prof !21

_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71: ; preds = %bb.w, %bb.u, %bb.s, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26856
  store i64 5, ptr %i.b, align 8, !noalias !26856
  %i.bo = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !26857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26856
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread

.loopexit232:                                     ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26856
  store i64 9, ptr %i.a, align 8, !noalias !26856
  %i.bp = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !26857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26856
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread

bb.y:                                             ; preds = %bb.b
  %i.bq = add i64 %i.x, 1
  store i64 %i.bq, ptr %i.p, align 8, !alias.scope !26858
  %i.br = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(56) %0) ; 2 uses
  %.not45 = icmp eq ptr %i.br, null
  br i1 %.not45, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread

bb.z:                                             ; preds = %bb.b
  %i.bs = add i64 %i.x, 1
  store i64 %i.bs, ptr %i.p, align 8, !alias.scope !26859
  %i.bt = tail call noundef align 8 ptr @_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read10ignore_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) ; 2 uses
  %.not = icmp eq ptr %i.bt, null
  br i1 %.not, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread

bb.aa:                                            ; preds = %bb.b, %bb.b
  tail call void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VechE14extend_trustedINtNtCskKLDkoKarTP_4core6option8IntoIterhEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %.sroa.039.0177, i8 %.sroa.7.0178)
  %i.bu = load i64, ptr %i.p, align 8, !alias.scope !26860, !noundef !7
  %i.bv = add i64 %i.bu, 1
  store i64 %i.bv, ptr %i.p, align 8, !alias.scope !26860
  br label %bb.ac

_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.x, %bb.p, %bb.j, %bb.ae, %bb.z, %bb.y
  br i1 %.sroa.039.0177, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit
  %i.bw = load i64, ptr %i.o, align 8, !noundef !7 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread, label %bb.af

bb.ac:                                            ; preds = %bb.af, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit, %bb.aa
  %.sroa.027.0 = phi i8 [ %i.z, %bb.aa ], [ %i.ck, %bb.af ], [ %.sroa.7.0178, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit ] ; 2 uses
  %.sroa.042.0 = phi i1 [ false, %bb.aa ], [ true, %bb.af ], [ true, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit ]
  %i.by = load i64, ptr %i.q, align 8, !alias.scope !26861, !noalias !26862, !noundef !7 ; 6 uses
  %.promoted.i73162 = load i64, ptr %i.p, align 8, !alias.scope !26863, !noalias !26864 ; 2 uses
  %i.bz = icmp ult i64 %.promoted.i73162, %i.by
  br i1 %i.bz, label %.lr.ph.i75.lr.ph, label %.loopexit123

.lr.ph.i75.lr.ph:                                 ; preds = %bb.ac
  %.promoted = load i64, ptr %i.o, align 8
  %i.ca = load ptr, ptr %i.t, align 8, !alias.scope !26861, !noalias !26862, !nonnull !7, !noundef !7 ; 3 uses
  %i.cb = load i64, ptr %0, align 8, !range !45
  %i.cc = load ptr, ptr %i.u, align 8, !nonnull !7
  br label %.lr.ph.i75

bb.ad:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 10, ptr %i.m, align 8
  %i.cd = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread

bb.ae:                                            ; preds = %bb.d
  %i.ce = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(56) %0) ; 2 uses
  %.not49 = icmp eq ptr %i.ce, null
  br i1 %.not49, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread

bb.af:                                            ; preds = %bb.ab
  %i.cf = add i64 %i.bw, -1                       ; 3 uses
  store i64 %i.cf, ptr %i.o, align 8
  %i.cg = load i64, ptr %0, align 8, !range !45, !noundef !7
  %i.ch = icmp ult i64 %i.cf, %i.cg
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = load ptr, ptr %i.u, align 8, !nonnull !7, !noundef !7
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cf
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !7
  br label %bb.ac

.lr.ph.i75:                                       ; preds = %.lr.ph.i75.lr.ph, %bb.aq
  %.promoted.i73170 = phi i64 [ %.promoted.i73162, %.lr.ph.i75.lr.ph ], [ %i.cv, %bb.aq ]
  %.sroa.042.2164 = phi i1 [ %.sroa.042.0, %.lr.ph.i75.lr.ph ], [ true, %bb.aq ] ; 2 uses
  %.sroa.027.2163 = phi i8 [ %.sroa.027.0, %.lr.ph.i75.lr.ph ], [ %i.da, %bb.aq ] ; 6 uses
  %i.cl = phi i64 [ %.promoted, %.lr.ph.i75.lr.ph ], [ %i.cx, %bb.aq ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26865)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %.lr.ph.i75
  %i.cm = phi i64 [ %.promoted.i73170, %.lr.ph.i75 ], [ %i.cp, %bb.ah ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26866)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !noalias !26867, !noundef !7
  switch i8 %i.co, label %.loopexit [
    i8 32, label %bb.ah
    i8 10, label %bb.ah
    i8 9, label %bb.ah
    i8 13, label %bb.ah
    i8 44, label %bb.al
    i8 93, label %bb.am
    i8 125, label %bb.an
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.ag, %bb.ag, %bb.ag
  %i.cp = add i64 %i.cm, 1                        ; 3 uses
  store i64 %i.cp, ptr %i.p, align 8, !alias.scope !26868, !noalias !26864
  %exitcond.not.i76 = icmp eq i64 %i.cp, %i.by
  br i1 %exitcond.not.i76, label %.loopexit123, label %bb.ag

.loopexit123:                                     ; preds = %bb.ac, %bb.aq, %bb.ah
  %.sroa.027.2159 = phi i8 [ %i.da, %bb.aq ], [ %.sroa.027.2163, %bb.ah ], [ %.sroa.027.0, %bb.ac ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  switch i8 %.sroa.027.2159, label %bb.ai [
    i8 91, label %bb.ak
    i8 123, label %bb.aj
  ]

bb.ai:                                            ; preds = %.loopexit123
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @472) #25
  unreachable

bb.aj:                                            ; preds = %.loopexit123
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit123, %bb.aj
  %storemerge = phi i64 [ 3, %bb.aj ], [ 2, %.loopexit123 ]
  store i64 %storemerge, ptr %i.k, align 8
  %i.cq = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread

.loopexit:                                        ; preds = %bb.an, %bb.am, %bb.ag
  br i1 %.sroa.042.2164, label %bb.ar, label %.critedge, !prof !17

bb.al:                                            ; preds = %bb.ag
  br i1 %.sroa.042.2164, label %bb.ao, label %.critedge

bb.am:                                            ; preds = %bb.ag
  %i.cr = icmp eq i8 %.sroa.027.2163, 91
  br i1 %i.cr, label %bb.ap, label %.loopexit

bb.an:                                            ; preds = %bb.ag
  %i.cs = icmp eq i8 %.sroa.027.2163, 123
  br i1 %i.cs, label %bb.ap, label %.loopexit

bb.ao:                                            ; preds = %bb.al
  %i.ct = add i64 %i.cm, 1                        ; 2 uses
  store i64 %i.ct, ptr %i.p, align 8, !alias.scope !26869
end_hunk_9
begin_hunk_10_@_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE15scan_integer128Csl8OoimOLbh_6qdrant:bb.a
  %i.n = add i8 %i.k, -49
  %or.cond2 = icmp ult i8 %i.n, 9
  br i1 %or.cond2, label %bb.e, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread, !prof !21

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !27066, !noundef !7 ; 3 uses
  %i.q = icmp sgt i64 %i.p, -1
  tail call void @llvm.assume(i1 %i.q)
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !27066, !nonnull !7, !noundef !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p
  store i8 48, ptr %i.t, align 1
  %i.u = add nuw i64 %i.p, 1
  store i64 %i.u, ptr %i.o, align 8, !alias.scope !27066
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27067)
  %i.v = load i64, ptr %i.d, align 8, !alias.scope !27067, !noalias !27068, !noundef !7 ; 2 uses
  %i.w = load i64, ptr %i.f, align 8, !alias.scope !27067, !noalias !27068, !noundef !7
  %i.x = icmp ult i64 %i.v, %i.w
  br i1 %i.x, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread

_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %bb.c
  %i.y = load ptr, ptr %i.c, align 8, !alias.scope !27067, !noalias !27068, !nonnull !7, !noundef !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  %i.aa = load i8, ptr %i.z, align 1, !noalias !27069, !noundef !7
  %i.ab = add i8 %i.aa, -48
  %i.ac = icmp ult i8 %i.ab, 10
  br i1 %i.ac, label %bb.d, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, !prof !21

bb.d:                                             ; preds = %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 13, ptr %i.b, align 8
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread

_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread: ; preds = %bb.a, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 13, ptr %i.a, align 8
  %i.ae = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread

bb.e:                                             ; preds = %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !27070, !noundef !7 ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  tail call void @llvm.assume(i1 %i.ah)
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !27070, !nonnull !7, !noundef !7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag
  store i8 %i.k, ptr %i.ak, align 1
  %storemerge55 = add nuw i64 %i.ag, 1            ; 2 uses
  store i64 %storemerge55, ptr %i.af, align 8
  %i.al = load i64, ptr %i.d, align 8, !alias.scope !27071, !noalias !27072, !noundef !7 ; 2 uses
  %i.am = load i64, ptr %i.f, align 8, !alias.scope !27071, !noalias !27072, !noundef !7
  %i.an = icmp ult i64 %i.al, %i.am
  br i1 %i.an, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit34, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread

_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit34: ; preds = %bb.e, %bb.f
  %i.ao = phi i64 [ %storemerge, %bb.f ], [ %storemerge55, %bb.e ] ; 3 uses
  %i.ap = phi i64 [ %i.ay, %bb.f ], [ %i.al, %bb.e ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27073)
  %i.aq = load ptr, ptr %i.c, align 8, !alias.scope !27073, !noalias !27072, !nonnull !7, !noundef !7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  %i.as = load i8, ptr %i.ar, align 1, !noalias !27074, !noundef !7 ; 2 uses
  %i.at = add i8 %i.as, -48
  %or.cond3 = icmp ult i8 %i.at, 10
  br i1 %or.cond3, label %bb.f, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread

bb.f:                                             ; preds = %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit34
  %i.au = add nuw i64 %i.ap, 1
  store i64 %i.au, ptr %i.d, align 8, !alias.scope !27075
  %i.av = icmp sgt i64 %i.ao, -1
  tail call void @llvm.assume(i1 %i.av)
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
  %i.aw = load ptr, ptr %i.ai, align 8, !alias.scope !27076, !nonnull !7, !noundef !7
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ao
  store i8 %i.as, ptr %i.ax, align 1
  %storemerge = add nuw i64 %i.ao, 1              ; 2 uses
  store i64 %storemerge, ptr %i.af, align 8
  %i.ay = load i64, ptr %i.d, align 8, !alias.scope !27077, !noalias !27072, !noundef !7 ; 2 uses
  %i.az = load i64, ptr %i.f, align 8, !alias.scope !27077, !noalias !27072, !noundef !7
  %i.ba = icmp ult i64 %i.ay, %i.az
  br i1 %i.ba, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit34, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread

_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread: ; preds = %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit34, %bb.f, %bb.e, %bb.c, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, %bb.d
  %.sroa.0.3 = phi ptr [ null, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit ], [ %i.ae, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread ], [ null, %bb.c ], [ %i.ad, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ null, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit34 ]
  ret ptr %.sroa.0.3
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((1, 2)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !27083, !noalias !27084, !noundef !7 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.d = icmp ult i64 %.promoted, %i.c
  br i1 %i.d, label %.lr.ph, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !27083, !noalias !27084, !nonnull !7, !noundef !7
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.g, align 1, !alias.scope !27084, !noalias !27083
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  br label %bb.b

._RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge: ; preds = %bb.c
  store i8 %i.l, ptr %i.h, align 2, !alias.scope !27084, !noalias !27083
  br label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit

_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %._RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.i, align 1, !alias.scope !27084, !noalias !27083
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.j = phi i64 [ %.promoted, %.lr.ph ], [ %i.m, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27083)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !27085, !noundef !7 ; 3 uses
  switch i8 %i.l, label %.loopexit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.a, align 8, !alias.scope !27086
  %exitcond.not = icmp eq i64 %i.m, %i.c
  br i1 %exitcond.not, label %._RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge, label %bb.b

.loopexit:                                        ; preds = %bb.b
  store i8 %i.l, ptr %i.h, align 2, !alias.scope !27084, !noalias !27083
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #3 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27125)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !27125, !noalias !27126, !noundef !7 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !27125, !noalias !27126, !noundef !7 ; 10 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %.thread64

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !alias.scope !27125, !noalias !27126, !nonnull !7, !noundef !7
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !noalias !27127, !noundef !7 ; 2 uses
  switch i8 %i.y, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !66

bb.c:                                             ; preds = %bb.b
  %i.z = add i8 %i.y, -48
  %or.cond = icmp ult i8 %i.z, 10
  br i1 %or.cond, label %bb.aj, label %.thread64, !prof !21

bb.d:                                             ; preds = %bb.b
  %i.aa = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !27128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27129)
  %i.ab = load ptr, ptr %i.q, align 8, !alias.scope !27129, !noalias !27130, !nonnull !7 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.aa)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27131)
  %exitcond.not.i.not = icmp ult i64 %i.aa, %i.u
  br i1 %exitcond.not.i.not, label %bb.e, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !27132, !noundef !7
  %i.ae = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ae, ptr %i.r, align 8, !alias.scope !27133, !noalias !27134
  %.not.i = icmp eq i8 %i.ad, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !21

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27135)
  %exitcond.not.i.1 = icmp eq i64 %i.u, %i.ae
  br i1 %exitcond.not.i.1, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !27136, !noundef !7
  %i.ah = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.ah, ptr %i.r, align 8, !alias.scope !27137, !noalias !27134
  %.not.i.1 = icmp eq i8 %i.ag, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !21

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27138)
  %exitcond.not.i.2 = icmp eq i64 %i.ah, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !27139, !noundef !7
  %i.ak = add i64 %i.s, 4
  store i64 %i.ak, ptr %i.r, align 8, !alias.scope !27140, !noalias !27134
  %.not.i.2 = icmp eq i8 %i.aj, 108
  br i1 %.not.i.2, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit, label %bb.j, !prof !21

_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !27141
  store i64 5, ptr %i.f, align 8, !noalias !27141
  %i.al = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !27130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !27141
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !27141
  store i64 9, ptr %i.e, align 8, !noalias !27141
  %i.am = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !27130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !27141
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.an = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.an, ptr %i.r, align 8, !alias.scope !27142
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27143)
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !27143, !noalias !27144, !nonnull !7 ; 3 uses
  %umax.i24 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.an)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27145)
  %exitcond.not.i26.not = icmp ult i64 %i.an, %i.u
  br i1 %exitcond.not.i26.not, label %bb.l, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !27146, !noundef !7
  %i.ar = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ar, ptr %i.r, align 8, !alias.scope !27147, !noalias !27148
  %.not.i27 = icmp eq i8 %i.aq, 114
  br i1 %.not.i27, label %bb.m, label %bb.q, !prof !21

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27149)
  %exitcond.not.i26.1 = icmp eq i64 %i.u, %i.ar
  br i1 %exitcond.not.i26.1, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !27150, !noundef !7
  %i.au = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.au, ptr %i.r, align 8, !alias.scope !27151, !noalias !27148
  %.not.i27.1 = icmp eq i8 %i.at, 117
  br i1 %.not.i27.1, label %bb.o, label %bb.q, !prof !21

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27152)
  %exitcond.not.i26.2 = icmp eq i64 %i.au, %umax.i24
  br i1 %exitcond.not.i26.2, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !27153, !noundef !7
  %i.ax = add i64 %i.s, 4
  store i64 %i.ax, ptr %i.r, align 8, !alias.scope !27154, !noalias !27148
  %.not.i27.2 = icmp eq i8 %i.aw, 101
  br i1 %.not.i27.2, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit30, label %bb.q, !prof !21

_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29: ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !27155
  store i64 5, ptr %i.d, align 8, !noalias !27155
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !27144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !27155
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !27155
  store i64 9, ptr %i.c, align 8, !noalias !27155
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !27144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !27155
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread

bb.r:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.ba, ptr %i.r, align 8, !alias.scope !27156
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27157)
  %i.bb = load ptr, ptr %i.q, align 8, !alias.scope !27157, !noalias !27158, !nonnull !7 ; 4 uses
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.ba) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27159)
  %exitcond.not.i34.not = icmp ult i64 %i.ba, %i.u
  br i1 %exitcond.not.i34.not, label %bb.s, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !27160, !noundef !7
  %i.be = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.be, ptr %i.r, align 8, !alias.scope !27161, !noalias !27162
  %.not.i35 = icmp eq i8 %i.bd, 97
  br i1 %.not.i35, label %bb.t, label %bb.z, !prof !21

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27163)
  %exitcond.not.i34.1 = icmp eq i64 %i.u, %i.be
  br i1 %exitcond.not.i34.1, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !27164, !noundef !7
  %i.bh = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.bh, ptr %i.r, align 8, !alias.scope !27165, !noalias !27162
  %.not.i35.1 = icmp eq i8 %i.bg, 108
  br i1 %.not.i35.1, label %bb.v, label %bb.z, !prof !21

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27166)
  %exitcond.not.i34.2 = icmp eq i64 %i.bh, %umax.i32
  br i1 %exitcond.not.i34.2, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !27167, !noundef !7
  %i.bk = add i64 %i.s, 4                         ; 3 uses
  store i64 %i.bk, ptr %i.r, align 8, !alias.scope !27168, !noalias !27162
  %.not.i35.2 = icmp eq i8 %i.bj, 115
  br i1 %.not.i35.2, label %bb.x, label %bb.z, !prof !21

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27169)
  %exitcond.not.i34.3 = icmp eq i64 %i.bk, %umax.i32
  br i1 %exitcond.not.i34.3, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !27170, !noundef !7
  %i.bn = add i64 %i.s, 5
  store i64 %i.bn, ptr %i.r, align 8, !alias.scope !27171, !noalias !27162
  %.not.i35.3 = icmp eq i8 %i.bm, 101
  br i1 %.not.i35.3, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit38, label %bb.z, !prof !21

_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37: ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !27172
  store i64 5, ptr %i.b, align 8, !noalias !27172
  %i.bo = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !27158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27172
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27172
  store i64 9, ptr %i.a, align 8, !noalias !27172
  %i.bp = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !27158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27172
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread

bb.aa:                                            ; preds = %bb.b
  %i.bq = add nuw i64 %i.s, 1
  store i64 %i.bq, ptr %i.r, align 8, !alias.scope !27173
  call void @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  %i.br = load i64, ptr %i.m, align 8, !range !13, !noundef !7
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !16

bb.ab:                                            ; preds = %bb.b
  %i.bt = add nuw i64 %i.s, 1
  store i64 %i.bt, ptr %i.r, align 8, !alias.scope !27174
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.bv = load i64, ptr %i.k, align 8, !range !6, !noundef !7
  %i.bw = icmp eq i64 %i.bv, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !7, !noundef !7 ; 2 uses
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !16

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 8
  %i.bz = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 11, ptr %i.h, align 8
  %i.ca = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 7, ptr %i.p, align 8
  %i.cb = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread64, %bb.ai, %bb.ag, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit38, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit30, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit, %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cs, %bb.al ], [ %i.cn, %.thread64 ], [ %i.cb, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit ], [ %i.ce, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit30 ], [ %i.cg, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit38 ], [ %i.cj, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ]
  %i.cc = call noundef nonnull align 8 ptr @_RINvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsl8OoimOLbh_6qdrant(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread

_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit30: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 1, ptr %i.cd, align 1
  store i8 0, ptr %i.o, align 8
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit38: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.cf, align 1
  store i8 0, ptr %i.n, align 8
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !7, !align !15, !noundef !7
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread

bb.ag:                                            ; preds = %bb.aa
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread

bb.ai:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.by, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.cl, align 8
  store i8 5, ptr %i.j, align 8
  %i.cm = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

.thread64:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cn = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call void @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext true)
  %i.co = load i64, ptr %i.l, align 8, !range !13, !noundef !7
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %bb.ak, label %bb.al, !prof !16

bb.ak:                                            ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !7, !align !15, !noundef !7
  br label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs2_NtCs8O45qwFIwQX_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsl8OoimOLbh_6qdrant.exit.thread: ; preds = %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, %bb.z, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, %bb.q, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cc, %bb.ae ], [ %i.cr, %bb.ak ], [ %i.by, %bb.ah ], [ %i.az, %bb.q ], [ %i.am, %bb.j ], [ %i.ci, %bb.af ], [ %i.al, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i ], [ %i.ay, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29 ], [ %i.bo, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37 ], [ %i.bp, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read8position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

end_hunk_10
begin_hunk_11_@_RNvXs0_NtCsll92OiJkphV_14serde_untagged3seqINtNtCs8O45qwFIwQX_10serde_json2de9SeqAccessNtNtBK_4read9SliceReadENtB5_15ErasedSeqAccess24erased_next_element_seedCsl8OoimOLbh_6qdrant:bb.a

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27268
  %i.j = load ptr, ptr %1, align 8, !alias.scope !27267, !noalias !27269, !nonnull !7, !align !15, !noundef !7
  call void @_RINvXs_NtCsll92OiJkphV_14serde_untagged4seedQDNtB5_21ErasedDeserializeSeedEL_NtNtCs4NSHK7GLW4I_10serde_core2de15DeserializeSeed11deserializeQINtNtCs8O45qwFIwQX_10serde_json2de12DeserializerNtNtB2k_4read9SliceReadEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.j), !noalias !27270
  %i.k = load ptr, ptr %i.a, align 8, !noalias !27268, !noundef !7 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !27268, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27268
  br i1 %i.l, label %bb.e, label %_RINvXs7_NtCs8O45qwFIwQX_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess17next_element_seedQDNtNtCsll92OiJkphV_14serde_untagged4seed21ErasedDeserializeSeedEL_ECsl8OoimOLbh_6qdrant.exit

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.7.0.ph = phi ptr [ %i.f, %bb.b ], [ %i.n, %bb.d ]
  tail call void @_RINvXs1_NtCsll92OiJkphV_14serde_untagged5errorNtB6_5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error6customNtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 %.sroa.7.0.ph)
  br label %bb.f

_RINvXs7_NtCs8O45qwFIwQX_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess17next_element_seedQDNtNtCsll92OiJkphV_14serde_untagged4seed21ErasedDeserializeSeedEL_ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.d, %bb.c
  %.sroa.12.0 = phi ptr [ undef, %bb.c ], [ %i.n, %bb.d ]
  %.sroa.7.0 = phi ptr [ null, %bb.c ], [ %i.k, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.12.0, ptr %i.p, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RINvXs7_NtCs8O45qwFIwQX_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess17next_element_seedQDNtNtCsll92OiJkphV_14serde_untagged4seed21ErasedDeserializeSeedEL_ECsl8OoimOLbh_6qdrant.exit, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXsc_NtCs8O45qwFIwQX_10serde_json2deINtB5_13VariantAccessINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEENtNtCs4NSHK7GLW4I_10serde_core2de13VariantAccess12unit_variantCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 13 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27289)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.pre.i.i = load i8, ptr %i.d, align 8, !range !8, !alias.scope !27290, !noalias !27291
  %i.i = trunc nuw i8 %.pre.i.i to i1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27292)
  br i1 %i.i, label %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i.peel.i.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !27293
  call void @_RNvXs_NtCs8O45qwFIwQX_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.f), !noalias !27291
  %i.j = load i8, ptr %i.b, align 8, !range !9, !noalias !27293, !noundef !7
  switch i8 %i.j, label %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit.i.thread9 [
    i8 2, label %.thread57.i
    i8 0, label %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i.peel.i
  ], !prof !10

_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit.i.thread9: ; preds = %bb.b
  %i.k = load ptr, ptr %i.h, align 8, !noalias !27293, !nonnull !7, !noundef !7
  %i.l = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.k), !noalias !27291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27293
  br label %_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_unitNtNtB2T_5impls11UnitVisitorECsl8OoimOLbh_6qdrant.exit

_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i.peel.i: ; preds = %bb.b
  %i.m = load i8, ptr %i.g, align 1, !noalias !27293, !noundef !7 ; 2 uses
  store i8 1, ptr %i.d, align 8, !alias.scope !27294, !noalias !27291
  store i8 %i.m, ptr %i.e, align 1, !alias.scope !27294, !noalias !27291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27293
  br label %bb.c

_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i.peel.i.thread: ; preds = %bb.a
  %i.n = load i8, ptr %i.e, align 1, !alias.scope !27294, !noalias !27291, !noundef !7
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i.peel.i, %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i.peel.i.thread
  %i.o = phi i8 [ %i.n, %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i.peel.i.thread ], [ %i.m, %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i.peel.i ]
  switch i8 %i.o, label %.loopexit.i [
    i8 32, label %.peel.next.i.preheader
    i8 10, label %.peel.next.i.preheader
    i8 9, label %.peel.next.i.preheader
    i8 13, label %.peel.next.i.preheader
    i8 110, label %.loopexit14.i
  ], !prof !46

.peel.next.i.preheader:                           ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.backedge, %.peel.next.i.preheader
  store i8 0, ptr %i.d, align 8, !alias.scope !27295, !noalias !27296
  call void @llvm.experimental.noalias.scope.decl(metadata !27297)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !27298
  call void @_RNvXs_NtCs8O45qwFIwQX_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.f), !noalias !27291
  %i.p = load i8, ptr %i.b, align 8, !range !9, !noalias !27298, !noundef !7
  switch i8 %i.p, label %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i.thread.thread.i [
    i8 2, label %.thread57.i
    i8 0, label %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i.i
  ], !prof !10

_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i.thread.thread.i: ; preds = %.peel.next.i
  %i.q = load ptr, ptr %i.h, align 8, !noalias !27298, !nonnull !7, !noundef !7
  %i.r = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.q), !noalias !27291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27298
  br label %_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_unitNtNtB2T_5impls11UnitVisitorECsl8OoimOLbh_6qdrant.exit

_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %.peel.next.i
  %i.s = load i8, ptr %i.g, align 1, !noalias !27298, !noundef !7 ; 2 uses
  store i8 1, ptr %i.d, align 8, !alias.scope !27290, !noalias !27291
  store i8 %i.s, ptr %i.e, align 1, !alias.scope !27290, !noalias !27291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27298
  switch i8 %i.s, label %.loopexit.i [
    i8 32, label %.peel.next.i.backedge
    i8 10, label %.peel.next.i.backedge
    i8 9, label %.peel.next.i.backedge
    i8 13, label %.peel.next.i.backedge
    i8 110, label %.loopexit14.i
  ], !prof !46

.peel.next.i.backedge:                            ; preds = %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i.i, %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i.i, %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i.i, %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i.i
  br label %.peel.next.i, !llvm.loop !27282

.thread57.i:                                      ; preds = %.peel.next.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !27288
  store i64 5, ptr %i.c, align 8, !noalias !27288
  call void @llvm.experimental.noalias.scope.decl(metadata !27300)
  %.val.i.i = load i64, ptr %i.f, align 8, !alias.scope !27301, !noalias !27302, !noundef !7
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2.i.i = load i64, ptr %i.t, align 8, !alias.scope !27301, !noalias !27302, !noundef !7
  %i.u = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.val.i.i, i64 noundef %.val2.i.i), !noalias !27300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !27288
  br label %_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_unitNtNtB2T_5impls11UnitVisitorECsl8OoimOLbh_6qdrant.exit

.loopexit14.i:                                    ; preds = %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i.i, %bb.c
  store i8 0, ptr %i.d, align 8, !alias.scope !27303
  %i.v = call fastcc noundef align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEE11parse_identCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @329, i64 noundef 3)
  br label %_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_unitNtNtB2T_5impls11UnitVisitorECsl8OoimOLbh_6qdrant.exit

.loopexit.i:                                      ; preds = %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i.i, %bb.c
  %i.w = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEE17peek_invalid_typeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @338)
  %i.x = call noundef nonnull align 8 ptr @_RINvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerINtNtB8_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEE12fix_position0ECsl8OoimOLbh_6qdrant(ptr noalias noundef nonnull align 8 %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %0)
  br label %_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_unitNtNtB2T_5impls11UnitVisitorECsl8OoimOLbh_6qdrant.exit

_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_unitNtNtB2T_5impls11UnitVisitorECsl8OoimOLbh_6qdrant.exit: ; preds = %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i.thread.thread.i, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit.i.thread9, %.thread57.i, %.loopexit14.i, %.loopexit.i
  %.sroa.0.2.i = phi ptr [ %i.u, %.thread57.i ], [ %i.v, %.loopexit14.i ], [ %i.x, %.loopexit.i ], [ %i.r, %_RNvXs2_NtCs8O45qwFIwQX_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEENtB5_4Read4peekCsl8OoimOLbh_6qdrant.exit.i.thread.thread.i ], [ %i.l, %_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEE16parse_whitespaceCsl8OoimOLbh_6qdrant.exit.i.thread9 ]
  ret ptr %.sroa.0.2.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXsc_NtCs8O45qwFIwQX_10serde_json2deINtB5_13VariantAccessNtNtB7_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de13VariantAccess12unit_variantCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27333)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !27334, !noalias !27335, !noundef !7 ; 4 uses
  %.promoted.i.i = load i64, ptr %i.e, align 8, !alias.scope !27336, !noalias !27337 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i.i, %i.g
  br i1 %i.h, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !27334, !noalias !27335, !nonnull !7, !noundef !7 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.k = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.n, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27339)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !27340, !noundef !7
  switch i8 %i.m, label %bb.k [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.d
  ], !prof !46

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.n = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !27341, !noalias !27337
  %exitcond.not.i.i = icmp eq i64 %i.n, %i.g
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !27332
  store i64 5, ptr %i.d, align 8, !noalias !27332
  %i.o = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !27332
  br label %_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_unitNtNtB1j_5impls11UnitVisitorECsl8OoimOLbh_6qdrant.exit

bb.d:                                             ; preds = %bb.b
  %i.p = add i64 %i.k, 1                          ; 4 uses
  store i64 %i.p, ptr %i.e, align 8, !alias.scope !27342
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27343)
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.p) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27345)
  %exitcond.not.i9.not.i = icmp ult i64 %i.p, %i.g
  br i1 %exitcond.not.i9.not.i, label %bb.e, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !noalias !27346, !noundef !7
  %i.s = add i64 %i.k, 2                          ; 3 uses
  store i64 %i.s, ptr %i.e, align 8, !alias.scope !27347, !noalias !27348
  %.not.i.i = icmp eq i8 %i.r, 117
  br i1 %.not.i.i, label %bb.f, label %bb.j, !prof !21

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27350)
  %exitcond.not.i9.1.i = icmp eq i64 %i.s, %umax.i.i
  br i1 %exitcond.not.i9.1.i, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !noalias !27351, !noundef !7
  %i.v = add i64 %i.k, 3                          ; 3 uses
  store i64 %i.v, ptr %i.e, align 8, !alias.scope !27352, !noalias !27348
  %.not.i.1.i = icmp eq i8 %i.u, 108
  br i1 %.not.i.1.i, label %bb.h, label %bb.j, !prof !21

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27354)
  %exitcond.not.i9.2.i = icmp eq i64 %i.v, %umax.i.i
  br i1 %exitcond.not.i9.2.i, label %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !27355, !noundef !7
  %i.y = add i64 %i.k, 4
  store i64 %i.y, ptr %i.e, align 8, !alias.scope !27356, !noalias !27348
  %.not.i.2.i = icmp eq i8 %i.x, 108
  br i1 %.not.i.2.i, label %_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_unitNtNtB1j_5impls11UnitVisitorECsl8OoimOLbh_6qdrant.exit, label %bb.j, !prof !21

_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !27357
  store i64 5, ptr %i.c, align 8, !noalias !27357
  %i.z = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !27358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !27357
  br label %_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_unitNtNtB1j_5impls11UnitVisitorECsl8OoimOLbh_6qdrant.exit

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !27357
  store i64 9, ptr %i.b, align 8, !noalias !27357
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !27358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27357
  br label %_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_unitNtNtB1j_5impls11UnitVisitorECsl8OoimOLbh_6qdrant.exit

bb.k:                                             ; preds = %bb.b
  %i.ab = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @338)
  %i.ac = call noundef nonnull align 8 ptr @_RINvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsl8OoimOLbh_6qdrant(ptr noalias noundef nonnull align 8 %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  br label %_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_unitNtNtB1j_5impls11UnitVisitorECsl8OoimOLbh_6qdrant.exit

_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_unitNtNtB1j_5impls11UnitVisitorECsl8OoimOLbh_6qdrant.exit: ; preds = %.loopexit.i, %bb.i, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, %bb.j, %bb.k
  %.sroa.0.2.i = phi ptr [ %i.o, %.loopexit.i ], [ %i.aa, %bb.j ], [ %i.ac, %bb.k ], [ %i.z, %_RNvXs8_NtCs8O45qwFIwQX_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i ], [ null, %bb.i ]
  ret ptr %.sroa.0.2.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXsc_NtCs8O45qwFIwQX_10serde_json2deINtB5_13VariantAccessNtNtB7_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de13VariantAccess12unit_variantCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27380)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !27381, !noalias !27382, !noundef !7 ; 4 uses
  %.promoted.i.i = load i64, ptr %i.e, align 8, !alias.scope !27383, !noalias !27384 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i.i, %i.g
  br i1 %i.h, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !27381, !noalias !27382, !nonnull !7, !noundef !7 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.k = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.n, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27385)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !27386, !noundef !7
  switch i8 %i.m, label %bb.k [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.d
  ], !prof !46

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.n = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !27387, !noalias !27384
  %exitcond.not.i.i = icmp eq i64 %i.n, %i.g
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !27379
  store i64 5, ptr %i.d, align 8, !noalias !27379
  %i.o = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !27379
  br label %_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_unitNtNtB1l_5impls11UnitVisitorECsl8OoimOLbh_6qdrant.exit

bb.d:                                             ; preds = %bb.b
  %i.p = add i64 %i.k, 1                          ; 4 uses
  store i64 %i.p, ptr %i.e, align 8, !alias.scope !27388
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27389)
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.p) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27390)
  %exitcond.not.i9.not.i = icmp ult i64 %i.p, %i.g
  br i1 %exitcond.not.i9.not.i, label %bb.e, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !noalias !27391, !noundef !7
  %i.s = add i64 %i.k, 2                          ; 3 uses
  store i64 %i.s, ptr %i.e, align 8, !alias.scope !27392, !noalias !27393
  %.not.i.i = icmp eq i8 %i.r, 117
  br i1 %.not.i.i, label %bb.f, label %bb.j, !prof !21

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27394)
  %exitcond.not.i9.1.i = icmp eq i64 %i.s, %umax.i.i
  br i1 %exitcond.not.i9.1.i, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !noalias !27395, !noundef !7
  %i.v = add i64 %i.k, 3                          ; 3 uses
  store i64 %i.v, ptr %i.e, align 8, !alias.scope !27396, !noalias !27393
  %.not.i.1.i = icmp eq i8 %i.u, 108
  br i1 %.not.i.1.i, label %bb.h, label %bb.j, !prof !21

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27397)
  %exitcond.not.i9.2.i = icmp eq i64 %i.v, %umax.i.i
  br i1 %exitcond.not.i9.2.i, label %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !27398, !noundef !7
  %i.y = add i64 %i.k, 4
  store i64 %i.y, ptr %i.e, align 8, !alias.scope !27399, !noalias !27393
  %.not.i.2.i = icmp eq i8 %i.x, 108
  br i1 %.not.i.2.i, label %_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_unitNtNtB1l_5impls11UnitVisitorECsl8OoimOLbh_6qdrant.exit, label %bb.j, !prof !21

_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !27400
  store i64 5, ptr %i.c, align 8, !noalias !27400
  %i.z = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !27401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !27400
  br label %_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_unitNtNtB1l_5impls11UnitVisitorECsl8OoimOLbh_6qdrant.exit

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !27400
  store i64 9, ptr %i.b, align 8, !noalias !27400
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !27401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27400
  br label %_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_unitNtNtB1l_5impls11UnitVisitorECsl8OoimOLbh_6qdrant.exit

bb.k:                                             ; preds = %bb.b
  %i.ab = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @338)
  %i.ac = call noundef nonnull align 8 ptr @_RINvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsl8OoimOLbh_6qdrant(ptr noalias noundef nonnull align 8 %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  br label %_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_unitNtNtB1l_5impls11UnitVisitorECsl8OoimOLbh_6qdrant.exit

_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_unitNtNtB1l_5impls11UnitVisitorECsl8OoimOLbh_6qdrant.exit: ; preds = %.loopexit.i, %bb.i, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i, %bb.j, %bb.k
  %.sroa.0.2.i = phi ptr [ %i.o, %.loopexit.i ], [ %i.aa, %bb.j ], [ %i.ac, %bb.k ], [ %i.z, %_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i ], [ null, %bb.i ]
  ret ptr %.sroa.0.2.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1k_6option6OptionQIB1Z_INtNtB1k_4cell4CellTyyEEEEEE9call_onceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !8, !noalias !27406, !noundef !7
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Csl8OoimOLbh_6qdrant.exit, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2h_11RandomState3new4KEYS27___rust_std_internal_init_fnECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Csl8OoimOLbh_6qdrant.exit

_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Csl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2h_11RandomState3new4KEYS27___rust_std_internal_init_fnECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_Csll92OiJkphV_14serde_untaggedINtB5_19UntaggedEnumVisitorINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEEENtNtCs4NSHK7GLW4I_10serde_core2de7Visitor9visit_f64NtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(384), double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_Csll92OiJkphV_14serde_untaggedINtB5_19UntaggedEnumVisitorINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEEENtNtCs4NSHK7GLW4I_10serde_core2de7Visitor9visit_u64NtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(384), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_Csll92OiJkphV_14serde_untaggedINtB5_19UntaggedEnumVisitorINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEEENtNtCs4NSHK7GLW4I_10serde_core2de7Visitor9visit_i64NtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(384), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCs7qyR1EixLKx_12jsonwebtoken10validation12numeric_typeNtB3_11NumericTypeNtNtCs4NSHK7GLW4I_10serde_core2de7Visitor9visit_f64NtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNvNtCs7qyR1EixLKx_12jsonwebtoken10validation12numeric_type11NumericTypeNtNtCs4NSHK7GLW4I_10serde_core2de7Visitor9visit_i64NtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNvXs10_NtNtCs4NSHK7GLW4I_10serde_core2de5implshNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor9visit_f64NtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNvXs14_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeromENtBe_11Deserialize11deserialize14NonZeroVisitorNtBe_7Visitor9visit_f64NtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvXs14_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeromENtBc_11Deserialize11deserializeNtB3_14NonZeroVisitorNtBc_7Visitor9visit_u64NtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvXs14_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeromENtBc_11Deserialize11deserializeNtB3_14NonZeroVisitorNtBc_7Visitor9visit_i64NtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNvXs16_NtNtCs4NSHK7GLW4I_10serde_core2de5implsmNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor9visit_f64NtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvYNtNvXs19_NtNtCs4NSHK7GLW4I_10serde_core2de5implsyNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor9visit_f64NtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvYNtNvXs1c_NtNtCs4NSHK7GLW4I_10serde_core2de5implsjNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor9visit_f64NtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs8_NtCs3cfoFdbzKJ1_12erased_serde2deQDNtB6_7VisitorEL_NtNtCs4NSHK7GLW4I_10serde_core2de7Visitor9visit_f64NtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248), double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs8_NtCs3cfoFdbzKJ1_12erased_serde2deQDNtB6_7VisitorEL_NtNtCs4NSHK7GLW4I_10serde_core2de7Visitor9visit_u64NtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs8_NtCs3cfoFdbzKJ1_12erased_serde2deQDNtB6_7VisitorEL_NtNtCs4NSHK7GLW4I_10serde_core2de7Visitor9visit_i64NtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs4NSHK7GLW4I_10serde_core2deNtNvXs19_NtB4_5implsyNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs4NSHK7GLW4I_10serde_core2deQDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_NtB4_8Expected3fmtCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs8_NtCs3cfoFdbzKJ1_12erased_serde2deQDNtB6_7VisitorEL_NtNtCs4NSHK7GLW4I_10serde_core2de7Visitor10visit_i128NtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248), i128 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs8_NtCs3cfoFdbzKJ1_12erased_serde2deQDNtB6_7VisitorEL_NtNtCs4NSHK7GLW4I_10serde_core2de7Visitor10visit_u128NtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248), i128 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs4NSHK7GLW4I_10serde_core2deNtNvXs10_NtB4_5implshNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs4NSHK7GLW4I_10serde_core2deNtNvXs14_NtB4_5implsINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeromENtB4_11Deserialize11deserialize14NonZeroVisitorNtB4_8Expected3fmtCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs4NSHK7GLW4I_10serde_core2deNtNvXs16_NtB4_5implsmNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs4NSHK7GLW4I_10serde_core2deNtNvXs1c_NtB4_5implsjNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs4NSHK7GLW4I_10serde_core2deNtNvXs1e_NtB4_5implsdNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCs5QaNqjAn6vc_5shard20payload_index_schema1__NtB5_18PayloadIndexSchemaNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeQINtNtCs8O45qwFIwQX_10serde_json2de12DeserializerINtNtB2i_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(136)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvXNvNtCs5QaNqjAn6vc_5shard3wal1__NtB5_8WalStateNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeQINtNtCs8O45qwFIwQX_10serde_json2de12DeserializerINtNtB1P_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(136)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtNtCsgGgPqgSfnMH_7storage15content_manager9snapshotss_1__NtB5_14SnapshotConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeQINtNtCs8O45qwFIwQX_10serde_json2de12DeserializerINtNtB2p_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias nofree noundef align 8 dereferenceable(136)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state1__NtB5_15ReplicaSetStateNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeQINtNtCs8O45qwFIwQX_10serde_json2de12DeserializerINtNtB2F_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable(136)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCsgGgPqgSfnMH_7storage5audits3_1__NtB5_10AuditEventNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeQINtNtCs8O45qwFIwQX_10serde_json2de12DeserializerNtNtB1Z_4read7StrReadEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([184 x i8]) align 8 captures(address) dereferenceable(184), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference7services3_1__NtB5_14InferenceErrorNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeQINtNtCs8O45qwFIwQX_10serde_json2de12DeserializerNtNtB2o_4read7StrReadEEBb_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference7services0_1__NtB5_17InferenceResponseNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeQINtNtCs8O45qwFIwQX_10serde_json2de12DeserializerNtNtB2r_4read7StrReadEEBb_(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtNtNtCsl8OoimOLbh_6qdrant5actix3api15local_shard_apis0_1__INtB5_10WithFilterNtNtCs5QaNqjAn6vc_5shard5count20CountRequestInternalENtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeQINtNtCs8O45qwFIwQX_10serde_json2de12DeserializerNtNtB3e_4read9SliceReadEEBb_(ptr dead_on_unwind noalias nofree noundef writable sret([120 x i8]) align 8 captures(address) dereferenceable(120), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtNtNtCsl8OoimOLbh_6qdrant5actix3api15local_shard_apis0_1__INtB5_10WithFilterNtNtCs5QaNqjAn6vc_5shard6scroll21ScrollRequestInternalENtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeQINtNtCs8O45qwFIwQX_10serde_json2de12DeserializerNtNtB3g_4read9SliceReadEEBb_(ptr dead_on_unwind noalias nofree noundef writable sret([280 x i8]) align 8 captures(address) dereferenceable(280), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

end_hunk_11
