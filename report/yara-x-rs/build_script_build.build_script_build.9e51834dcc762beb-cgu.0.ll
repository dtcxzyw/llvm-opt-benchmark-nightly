Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/build_script_build.build_script_build.9e51834dcc762beb-cgu.0?download=true
inline.NumInlined: 92
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXsk_NtNtCs5YNYYMCeUDn_8protobuf7reflect5typesINtB5_19ProtobufTypeMessageNtNtCs63vnYBEjbPn_12yara_x_proto4yara13ModuleOptionsENtB5_17ProtobufTypeTrait16get_from_unknownCsdAIXAMGuHRT_18build_script_build:bb.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsdAIXAMGuHRT_18build_script_build6ModuleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBH_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCsdAIXAMGuHRT_18build_script_build6ModuleEBE_(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsdAIXAMGuHRT_18build_script_build(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr %i.b, i64 %i.d, ptr align 8 %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvXss_NtNtCskKLDkoKarTP_4core3str7patternRReNtB5_7Pattern15is_contained_inCsdAIXAMGuHRT_18build_script_build(ptr nofree readonly align 8 captures(none) %0, ptr %1, i64 %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 14 uses
  %i.d = alloca [32 x i8], align 8                ; 13 uses
  %i.e = alloca [16 x i8], align 16               ; 5 uses
  %i.f = alloca [16 x i8], align 16               ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [1 x i8], align 1                 ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [104 x i8], align 8               ; 24 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  %i.p = load ptr, ptr %0, align 8                ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8              ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern15is_contained_inCsdAIXAMGuHRT_18build_script_build.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = icmp ult i64 %i.r, %2
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = icmp eq i64 %i.r, 1
  br i1 %i.u, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.v = icmp eq i64 %i.r, %2
  br i1 %i.v, label %bb.bf, label %_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern15is_contained_inCsdAIXAMGuHRT_18build_script_build.exit

bb.e:                                             ; preds = %bb.c
  %i.w = icmp ult i64 %i.r, 33
  br i1 %i.w, label %bb.ao, label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.x = tail call zeroext i1 @_RNvXsg_NtNtCskKLDkoKarTP_4core5slice3cmphNtB5_13SliceContains14slice_containsCs1tVjAUWfF5G_9getrandom(ptr %i.p, ptr %1, i64 %2) #25
  br label %_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern15is_contained_inCsdAIXAMGuHRT_18build_script_build.exit

bb.g:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_containsCsdAIXAMGuHRT_18build_script_build.exit.i, %bb.e
  call void @_RNvMsu_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcher3new(ptr nonnull sret([104 x i8]) align 8 %i.n, ptr %1, i64 %2, ptr %i.p, i64 %i.r)
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.y = load i64, ptr %i.n, align 8, !noalias !46
  switch i64 %i.y, label %.loopexit.i.i [
    i64 0, label %.preheader.i.i
    i64 1, label %bb.ae
    i64 2, label %bb.af
  ]

.preheader.i.i:                                   ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 72 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 80 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 26 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %bb.h

.loopexit.i.i:                                    ; preds = %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsdAIXAMGuHRT_18build_script_build.exit.i.i, %bb.g
  unreachable

thread-pre-split.i.i:                             ; preds = %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsdAIXAMGuHRT_18build_script_build.exit.i.i
  %.pr.i.i = load i64, ptr %i.n, align 8, !noalias !49
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split.i.i, %.preheader.i.i
  %i.al = phi i64 [ %.pr.i.i, %thread-pre-split.i.i ], [ 0, %.preheader.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !46
  switch i64 %i.al, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %bb.k
    i64 2, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr %i.aj, align 2, !noalias !49
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %.sink.split.i.i.i, label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.aa, align 8, !noalias !49 ; 2 uses
  %i.ap = load i64, ptr %i.ab, align 8, !noalias !49 ; 5 uses
  %i.aq = load i64, ptr %i.ac, align 8, !noalias !49 ; 5 uses
  %.not40.i.i.i = icmp ult i64 %i.aq, %i.ap
  br i1 %.not40.i.i.i, label %bb.x, label %.sink.split.i.i.i

bb.l:                                             ; preds = %bb.h
  %i.ar = load i64, ptr %i.z, align 8, !noalias !49
  %i.as = load i64, ptr %i.ab, align 8, !noalias !49 ; 2 uses
  %i.at = icmp eq i64 %i.ar, %i.as
  br i1 %i.at, label %.sink.split.i.i.i, label %bb.ab

bb.m:                                             ; preds = %bb.j
  %i.au = load i8, ptr %i.ai, align 8, !noalias !49 ; 2 uses
  %i.av = trunc nuw i8 %i.au to i1                ; 2 uses
  %i.aw = and i8 %i.au, 1
  %i.ax = xor i8 %i.aw, 1
  store i8 %i.ax, ptr %i.ai, align 8, !noalias !49
  %i.ay = load i64, ptr %i.ac, align 8, !noalias !49 ; 5 uses
  %i.az = load ptr, ptr %i.aa, align 8, !noalias !49 ; 2 uses
  %i.ba = load i64, ptr %i.ab, align 8, !noalias !49 ; 3 uses
  %i.bb = call { ptr, i64 } @_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsdAIXAMGuHRT_18build_script_build(i64 %i.ay, ptr %i.az, i64 %i.ba) #25, !noalias !49 ; 2 uses
  %i.bc = extractvalue { ptr, i64 } %i.bb, 0      ; 3 uses
  %.not43.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not43.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = extractvalue { ptr, i64 } %i.bb, 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  store ptr %i.bc, ptr %i.l, align 8, !noalias !49
  store ptr %i.be, ptr %i.ak, align 8, !noalias !49
  %i.bf = call { i32, i32 } @_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs1bwT8MhFwPb_10num_traits(ptr nonnull align 8 %i.l) #25, !noalias !49 ; 2 uses
  %i.bg = extractvalue { i32, i32 } %i.bf, 0
  %i.bh = extractvalue { i32, i32 } %i.bf, 1      ; 3 uses
  %i.bi = trunc i32 %i.bg to i1
  br i1 %i.bi, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.m
  call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr %i.az, i64 %i.ba, i64 %i.ay, i64 %i.ba, ptr nonnull align 8 @74) #27, !noalias !49
  unreachable

bb.p:                                             ; preds = %bb.n
  br i1 %i.av, label %bb.s, label %bb.t

bb.q:                                             ; preds = %bb.n
  br i1 %i.av, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr %i.aj, align 2, !noalias !49
  br label %.sink.split.i.i.i

bb.s:                                             ; preds = %bb.q, %bb.p
  store i64 %i.ay, ptr %i.ag, align 8, !alias.scope !52, !noalias !46
  store i64 %i.ay, ptr %i.ah, align 8, !alias.scope !52, !noalias !46
  br label %.sink.split.i.i.i

bb.t:                                             ; preds = %bb.p
  %i.bj = icmp ult i32 %i.bh, 128
  br i1 %i.bj, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = icmp ult i32 %i.bh, 2048
  br i1 %i.bk, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = icmp ult i32 %i.bh, 65536
  %..i.i.i = select i1 %i.bl, i64 3, i64 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.sroa.01.0.i.i.i = phi i64 [ 2, %bb.u ], [ %..i.i.i, %bb.v ], [ 1, %bb.t ]
  %i.bm = load i64, ptr %i.ac, align 8, !noalias !49
  %i.bn = add i64 %i.bm, %.sroa.01.0.i.i.i        ; 2 uses
  store i64 %i.bn, ptr %i.ac, align 8, !noalias !49
  store i64 %i.ay, ptr %i.ag, align 8, !alias.scope !52, !noalias !46
  store i64 %i.bn, ptr %i.ah, align 8, !alias.scope !52, !noalias !46
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.loopexit45.i.i.i, %.preheader.preheader.i.i.i, %bb.z, %bb.w, %bb.s, %bb.r, %bb.l, %bb.k, %bb.j
  %.sink.i.i.i = phi i64 [ 1, %.loopexit45.i.i.i ], [ 0, %bb.z ], [ 1, %.preheader.preheader.i.i.i ], [ 2, %bb.r ], [ 0, %bb.s ], [ 1, %bb.w ], [ 2, %bb.k ], [ 2, %bb.l ], [ 2, %bb.j ] ; 2 uses
  store i64 %.sink.i.i.i, ptr %i.m, align 8, !alias.scope !52, !noalias !46
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsdAIXAMGuHRT_18build_script_build.exit.i.i

bb.x:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !49
  %i.bq = load i8, ptr %i.ai, align 8, !noalias !49
  %i.br = icmp eq i8 %i.bp, %i.bq
  %i.bs = add nuw i64 %i.aq, 1                    ; 4 uses
  br i1 %i.br, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not41.i.i.i = icmp ult i64 %i.bs, %i.ap
  br i1 %.not41.i.i.i, label %.loopexit.i.i.i.a, label %.preheader.preheader.i.i.i

bb.z:                                             ; preds = %bb.x
  store i64 %i.bs, ptr %i.ac, align 8, !noalias !49
  store i64 %i.aq, ptr %i.ag, align 8, !alias.scope !52, !noalias !46
  store i64 %i.bs, ptr %i.ah, align 8, !alias.scope !52, !noalias !46
  br label %.sink.split.i.i.i

.loopexit.i.i.i.a:                                ; preds = %bb.y, %bb.aa
  %.sroa.08.0.i.i.i = phi i64 [ %i.bt, %bb.aa ], [ %i.bs, %bb.y ] ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.08.0.i.i.i
  %4 = load i8, ptr %3, align 1, !noalias !49
  %5 = icmp sgt i8 %4, -65
  br i1 %5, label %.preheader.preheader.i.i.i, label %bb.aa

.preheader.preheader.i.i.i:                       ; preds = %bb.aa, %.loopexit.i.i.i.a, %bb.y
  %.sroa.02.0.i.i.i = phi i64 [ %i.ap, %bb.y ], [ %.sroa.08.0.i.i.i, %.loopexit.i.i.i.a ], [ %i.ap, %bb.aa ] ; 2 uses
  store i64 %.sroa.02.0.i.i.i, ptr %i.ac, align 8, !noalias !49
  store i64 %i.aq, ptr %i.ag, align 8, !alias.scope !52, !noalias !46
  store i64 %.sroa.02.0.i.i.i, ptr %i.ah, align 8, !alias.scope !52, !noalias !46
  br label %.sink.split.i.i.i

bb.aa:                                            ; preds = %.loopexit.i.i.i.a
  %i.bt = add i64 %.sroa.08.0.i.i.i, 1            ; 2 uses
  %exitcond50.not.i.i.i = icmp eq i64 %i.bt, %i.ap
  br i1 %exitcond50.not.i.i.i, label %.preheader.preheader.i.i.i, label %.loopexit.i.i.i.a

bb.ab:                                            ; preds = %bb.l
  %i.bu = load i64, ptr %i.ad, align 8, !noalias !49
  %i.bv = icmp eq i64 %i.bu, -1
  %i.bw = load ptr, ptr %i.aa, align 8, !noalias !49
  %i.bx = load ptr, ptr %i.ae, align 8, !noalias !49
  %i.by = load i64, ptr %i.af, align 8, !noalias !49
  call void @_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECs2nizDKKJVD2_6chrono(ptr nonnull sret([24 x i8]) align 8 %i.m, ptr nonnull align 8 %i.ac, ptr %i.bw, i64 %i.as, ptr %i.bx, i64 %i.by, i1 zeroext %i.bv) #25, !noalias !46
  %i.bz = load i64, ptr %i.m, align 8, !noalias !46 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 1
  br i1 %i.ca, label %bb.ac, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsdAIXAMGuHRT_18build_script_build.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.cb = load i64, ptr %i.ag, align 8, !alias.scope !52, !noalias !46
  %i.cc = load i64, ptr %i.ah, align 8, !alias.scope !52, !noalias !46 ; 2 uses
  %i.cd = load ptr, ptr %i.aa, align 8, !noalias !49
  %i.ce = load i64, ptr %i.ab, align 8, !noalias !49 ; 4 uses
  %.not.i.i.i = icmp ult i64 %i.cc, %i.ce
  br i1 %.not.i.i.i, label %.preheader44.split.i.i.i, label %.loopexit45.i.i.i

.preheader44.split.i.i.i:                         ; preds = %bb.ac, %bb.ad
  %.sroa.013.0.i.i.i = phi i64 [ %i.ch, %bb.ad ], [ %i.cc, %bb.ac ] ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.sroa.013.0.i.i.i
  %7 = load i8, ptr %6, align 1, !noalias !46
  %8 = icmp sgt i8 %7, -65
  br i1 %8, label %.loopexit45.i.i.i, label %bb.ad

.loopexit45.i.i.i:                                ; preds = %bb.ad, %.preheader44.split.i.i.i, %bb.ac
  %.sroa.018.0.i.i.i = phi i64 [ %i.ce, %bb.ac ], [ %.sroa.013.0.i.i.i, %.preheader44.split.i.i.i ], [ %i.ce, %bb.ad ] ; 2 uses
  %i.cf = load i64, ptr %i.z, align 8, !noalias !49
  %i.cg = call i64 @_RNvYjNtNtCskKLDkoKarTP_4core3cmp3Ord3maxCs2nizDKKJVD2_6chrono(i64 %.sroa.018.0.i.i.i, i64 %i.cf) #25, !noalias !46
  store i64 %i.cg, ptr %i.z, align 8, !noalias !49
  store i64 %i.cb, ptr %i.ag, align 8, !alias.scope !52, !noalias !46
  store i64 %.sroa.018.0.i.i.i, ptr %i.ah, align 8, !alias.scope !52, !noalias !46
  br label %.sink.split.i.i.i

bb.ad:                                            ; preds = %.preheader44.split.i.i.i
  %i.ch = add i64 %.sroa.013.0.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ch, %i.ce
  br i1 %exitcond.not.i.i.i, label %.loopexit45.i.i.i, label %.preheader44.split.i.i.i

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsdAIXAMGuHRT_18build_script_build.exit.i.i: ; preds = %bb.ab, %.sink.split.i.i.i
  %i.ci = phi i64 [ %.sink.i.i.i, %.sink.split.i.i.i ], [ %i.bz, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !46
  switch i64 %i.ci, label %.loopexit.i.i [
    i64 0, label %bb.ag
    i64 1, label %thread-pre-split.i.i
    i64 2, label %bb.ah
  ]

bb.ae:                                            ; preds = %bb.g
  %i.cj = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.ck = load i64, ptr %i.cj, align 8, !noalias !46 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !noalias !46 ; 3 uses
  %.not.i.i = icmp ult i64 %i.cm, %i.ck
  br i1 %.not.i.i, label %bb.aj, label %bb.ai

bb.af:                                            ; preds = %bb.g
  %i.cn = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.cp = load i64, ptr %i.co, align 8, !noalias !46
  %i.cq = icmp eq i64 %i.cp, -1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !46 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.cu = load i64, ptr %i.ct, align 8, !noalias !46 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !46 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.cy = load i64, ptr %i.cx, align 8, !noalias !46 ; 2 uses
  br i1 %i.cq, label %bb.an, label %bb.am

bb.ag:                                            ; preds = %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsdAIXAMGuHRT_18build_script_build.exit.i.i
  store i64 1, ptr %i.o, align 8, !alias.scope !46
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCsdAIXAMGuHRT_18build_script_build.exit.i

bb.ah:                                            ; preds = %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsdAIXAMGuHRT_18build_script_build.exit.i.i
  store i64 0, ptr %i.o, align 8, !alias.scope !46
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCsdAIXAMGuHRT_18build_script_build.exit.i

bb.ai:                                            ; preds = %bb.ae
  store i64 0, ptr %i.o, align 8, !alias.scope !46
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCsdAIXAMGuHRT_18build_script_build.exit.i

bb.aj:                                            ; preds = %bb.ae
  %i.cz = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !46
  %i.db = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.dc = load i8, ptr %i.db, align 8, !noalias !46
  %i.dd = sub nuw i64 %i.ck, %i.cm
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cm
  %i.df = call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchrCsdAIXAMGuHRT_18build_script_build(i8 %i.dc, ptr %i.de, i64 %i.dd) #25, !noalias !46
  %i.dg = extractvalue { i64, i64 } %i.df, 0
  %i.dh = trunc nuw i64 %i.dg to i1
  br i1 %i.dh, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i64 1, ptr %i.o, align 8, !alias.scope !46
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCsdAIXAMGuHRT_18build_script_build.exit.i

bb.al:                                            ; preds = %bb.aj
  store i64 0, ptr %i.o, align 8, !alias.scope !46
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCsdAIXAMGuHRT_18build_script_build.exit.i

bb.am:                                            ; preds = %bb.af
  call void @_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2nizDKKJVD2_6chrono(ptr nonnull sret([24 x i8]) align 8 %i.o, ptr nonnull align 8 %i.cn, ptr %i.cs, i64 %i.cu, ptr %i.cw, i64 %i.cy, i1 zeroext false) #25
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCsdAIXAMGuHRT_18build_script_build.exit.i

bb.an:                                            ; preds = %bb.af
  call void @_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2nizDKKJVD2_6chrono(ptr nonnull sret([24 x i8]) align 8 %i.o, ptr nonnull align 8 %i.cn, ptr %i.cs, i64 %i.cu, ptr %i.cw, i64 %i.cy, i1 zeroext true) #25
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCsdAIXAMGuHRT_18build_script_build.exit.i

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCsdAIXAMGuHRT_18build_script_build.exit.i: ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ai, %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.di = load i64, ptr %i.o, align 8
  %i.dj = icmp eq i64 %i.di, 1
  br label %_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern15is_contained_inCsdAIXAMGuHRT_18build_script_build.exit

bb.ao:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.p, ptr %i.k, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.r, ptr %i.dk, align 8
  %i.dl = load i8, ptr %i.p, align 1
  store i8 %i.dl, ptr %i.j, align 1
  %i.dm = add nsw i64 %i.r, -1                    ; 2 uses
  %i.dn = icmp eq i64 %i.r, 2
  br i1 %i.dn, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.do = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %i.r, i64 4)
  store i64 %i.do, ptr %i.h, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.r, ptr %i.dp, align 8
  store ptr %i.p, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.r, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx.i.i, align 8
  %i.dq = call { i64, i64 } @_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECs2nizDKKJVD2_6chrono(ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.b) #25 ; 2 uses
  %i.dr = extractvalue { i64, i64 } %i.dq, 0
  %i.ds = trunc nuw i64 %i.dr to i1
  br i1 %i.ds, label %bb.ar, label %_RNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_containsCsdAIXAMGuHRT_18build_script_build.exit.i

bb.aq:                                            ; preds = %bb.ar, %bb.ao
  %storemerge.i.i = phi i64 [ %i.dv, %bb.ar ], [ 1, %bb.ao ] ; 4 uses
  store i64 %storemerge.i.i, ptr %i.i, align 8
  %i.dt = add nuw nsw i64 %i.r, 15                ; 3 uses
  %i.du = icmp ult i64 %2, %i.dt
  br i1 %i.du, label %bb.bd, label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.dv = extractvalue { i64, i64 } %i.dq, 1
  br label %bb.aq

bb.as:                                            ; preds = %bb.aq
  %i.dw = load i8, ptr %i.j, align 1
  %i.dx = insertelement <16 x i8> poison, i8 %i.dw, i64 0
  %i.dy = shufflevector <16 x i8> %i.dx, <16 x i8> poison, <16 x i32> zeroinitializer
  store <16 x i8> %i.dy, ptr %i.f, align 16
  %i.dz = icmp ult i64 %storemerge.i.i, %i.r
  br i1 %i.dz, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ea = getelementptr inbounds nuw i8, ptr %i.p, i64 %storemerge.i.i
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = insertelement <16 x i8> poison, i8 %i.eb, i64 0
  %i.ed = shufflevector <16 x i8> %i.ec, <16 x i8> poison, <16 x i32> zeroinitializer
  store <16 x i8> %i.ed, ptr %i.e, align 16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store ptr %1, ptr %i.d, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %2, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.ee, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.dm, ptr %i.eh, align 8
  store ptr %1, ptr %i.c, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %2, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.i, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.f, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.e, ptr %i.el, align 8
  %i.em = add nuw nsw i64 %i.r, 63                ; 2 uses
  %.not.i3.i = icmp ult i64 %i.em, %2
  br i1 %.not.i3.i, label %.lr.ph.i.i, label %.preheader.i4.i

bb.au:                                            ; preds = %bb.as
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 %storemerge.i.i, i64 range(i64 2, 33) %i.r, ptr nonnull align 8 @68) #27
  unreachable

.preheader.i4.i:                                  ; preds = %bb.ay, %bb.at
  %.sroa.06.0.lcssa.i.i = phi i64 [ 0, %bb.at ], [ %i.fn, %bb.ay ] ; 2 uses
  %.sroa.014.0.lcssa.i.i = phi i8 [ 0, %bb.at ], [ %.sroa.014.2.3.i.i, %bb.ay ] ; 2 uses
  %i.en = add i64 %.sroa.06.0.lcssa.i.i, %i.dt
  %i.eo = icmp uge i64 %i.en, %2
  %i.ep = trunc nuw i8 %.sroa.014.0.lcssa.i.i to i1 ; 2 uses
  %or.cond358.i.i = select i1 %i.eo, i1 true, i1 %i.ep
  br i1 %or.cond358.i.i, label %._crit_edge.i.i, label %.lr.ph60.i.i

.lr.ph.i.i:                                       ; preds = %bb.at, %bb.ay
  %.sroa.06.056.i.i = phi i64 [ %i.fn, %bb.ay ], [ 0, %bb.at ] ; 6 uses
  %i.eq = call i16 @_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_containss1_0Cs2nizDKKJVD2_6chrono(ptr nonnull align 8 %i.c, i64 %.sroa.06.056.i.i) #25 ; 2 uses
  %i.er = or disjoint i64 %.sroa.06.056.i.i, 16   ; 2 uses
  %i.es = call i16 @_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_containss1_0Cs2nizDKKJVD2_6chrono(ptr nonnull align 8 %i.c, i64 %i.er) #25 ; 2 uses
  %i.et = or disjoint i64 %.sroa.06.056.i.i, 32   ; 2 uses
  %i.eu = call i16 @_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_containss1_0Cs2nizDKKJVD2_6chrono(ptr nonnull align 8 %i.c, i64 %i.et) #25 ; 2 uses
  %i.ev = or disjoint i64 %.sroa.06.056.i.i, 48   ; 2 uses
  %i.ew = call i16 @_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_containss1_0Cs2nizDKKJVD2_6chrono(ptr nonnull align 8 %i.c, i64 %i.ev) #25 ; 2 uses
  %i.ex = icmp eq i16 %i.eq, 0
  br i1 %i.ex, label %.preheader52.1.i.i, label %bb.az

.preheader52.1.i.i:                               ; preds = %bb.az, %.lr.ph.i.i
  %.sroa.014.2.i.i = phi i8 [ 0, %.lr.ph.i.i ], [ %i.fs, %bb.az ] ; 3 uses
  %i.ey = icmp eq i16 %i.es, 0
  br i1 %i.ey, label %.preheader52.2.i.i, label %bb.av

bb.av:                                            ; preds = %.preheader52.1.i.i
  %i.ez = trunc nuw i8 %.sroa.014.2.i.i to i1
  %i.fa = call zeroext i1 @_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_containss0_0Cs2nizDKKJVD2_6chrono(ptr nonnull align 8 %i.d, i64 %i.er, i16 %i.es, i1 zeroext %i.ez) #25
  %i.fb = zext i1 %i.fa to i8
  %i.fc = or i8 %.sroa.014.2.i.i, %i.fb
  br label %.preheader52.2.i.i

.preheader52.2.i.i:                               ; preds = %bb.av, %.preheader52.1.i.i
  %.sroa.014.2.1.i.i = phi i8 [ %.sroa.014.2.i.i, %.preheader52.1.i.i ], [ %i.fc, %bb.av ] ; 3 uses
end_hunk_0
