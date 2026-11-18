Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_types-aa1abf77e42e2ac6.meilisearch_types.e2c1562f49b7a899-cgu.0?download=true
inline.NumInlined: 11037
inline.NumDeleted: 4505
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 226
loop-unroll.NumUnrolled: 306
begin_hunk_0_@"_ZN10serde_json2de21Deserializer$LT$R$GT$12parse_number17h653aa8f8e92dd5dcE":bb.a
  br label %bb.x

bb.r:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_decimal17h8a74e1444f17dd8fE.exit"
  %i.bs = load i64, ptr %i.bm, align 8, !noundef !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread", %bb.w, %bb.u, %bb.r
  %.sroa.9.0 = phi i64 [ %i.bv, %bb.u ], [ %i.ca, %bb.w ], [ %3, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread" ], [ %i.bs, %bb.r ], [ %i.bw, %bb.v ]
  %.sroa.0.0 = phi i64 [ 0, %bb.u ], [ 0, %bb.w ], [ 1, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread" ], [ 0, %bb.r ], [ 2, %bb.v ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.x

bb.t:                                             ; preds = %bb.p
  %i.bt = load ptr, ptr %i.bp, align 8, !nonnull !22, !align !28, !noundef !22
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bt, ptr %i.bu, align 8
  store i64 3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

bb.u:                                             ; preds = %bb.p
  %i.bv = load i64, ptr %i.bp, align 8, !noundef !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.s

bb.v:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread"
  %i.bw = sub i64 0, %3                           ; 2 uses
  %i.bx = icmp sgt i64 %i.bw, -1
  br i1 %i.bx, label %bb.w, label %bb.s

bb.w:                                             ; preds = %bb.v
  %i.by = uitofp i64 %3 to double
  %i.bz = fneg double %i.by
  %i.ca = bitcast double %i.bz to i64
  br label %bb.s

bb.x:                                             ; preds = %bb.q, %bb.t, %bb.s
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h029af679a93f1f69E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2) unnamed_addr #1 !guid !2681 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2683)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !2684, !noundef !22 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !2684, !noundef !22 ; 4 uses
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !2684, !nonnull !22, !align !38, !noundef !22 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.m = load i8, ptr %i.l, align 1, !noalias !2685, !noundef !22 ; 3 uses
  %i.n = add nuw i64 %i.f, 1                      ; 5 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !2684
  %i.o = icmp eq i8 %i.m, 48
  br i1 %i.o, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 5, ptr %i.d, align 8
  %i.p = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52df9833b1238becE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  store i64 3, ptr %0, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.n, %i.h
  br i1 %i.r, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread"

bb.e:                                             ; preds = %bb.b
  %i.s = add i8 %i.m, -49
  %or.cond1 = icmp ult i8 %i.s, 9
  br i1 %or.cond1, label %bb.h, label %bb.g, !prof !46

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit": ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  %i.u = load i8, ptr %i.t, align 1, !noalias !2686, !noundef !22
  %i.v = add i8 %i.u, -48
  %or.cond = icmp ult i8 %i.v, 10
  br i1 %or.cond, label %bb.f, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread", !prof !47

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread": ; preds = %bb.d, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit"
  tail call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$12parse_number17h653aa8f8e92dd5dcE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(80) %1, i1 noundef zeroext %2, i64 noundef 0)
  br label %bb.i

bb.f:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.w = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hef8cca19a10c12dfE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 3, ptr %0, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 13, ptr %i.a, align 8
  %i.y = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52df9833b1238becE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8
  store i64 3, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.aa = add nsw i8 %i.m, -48
  %i.ab = zext nneg i8 %i.aa to i64               ; 2 uses
  %i.ac = icmp ult i64 %i.n, %i.h
  br i1 %i.ac, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit13", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit13.thread"

bb.i:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit13.thread", %bb.p, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread", %bb.f, %bb.c, %bb.g
  ret void

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit13": ; preds = %bb.h, %bb.l
  %.sroa.05.031 = phi i64 [ %i.an, %bb.l ], [ %i.ab, %bb.h ] ; 5 uses
  %i.ad = phi i64 [ %i.al, %bb.l ], [ %i.n, %bb.h ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !noalias !2687, !noundef !22
  %i.ag = add i8 %i.af, -48                       ; 3 uses
  %or.cond2 = icmp ult i8 %i.ag, 10
  br i1 %or.cond2, label %bb.j, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit13.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit13.thread": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit13", %bb.l, %bb.h
  %.sroa.05.0.lcssa = phi i64 [ %i.ab, %bb.h ], [ %i.an, %bb.l ], [ %.sroa.05.031, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit13" ]
  tail call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$12parse_number17h653aa8f8e92dd5dcE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(80) %1, i1 noundef zeroext %2, i64 noundef %.sroa.05.0.lcssa)
  br label %bb.i

bb.j:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit13"
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = icmp ugt i64 %.sroa.05.031, 1844674407370955160
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = icmp ne i64 %.sroa.05.031, 1844674407370955161
  %i.ak = icmp samesign ugt i8 %i.ag, 5
  %or.cond3 = or i1 %i.aj, %i.ak
  br i1 %or.cond3, label %bb.m, label %bb.l, !prof !45

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.al = add nuw i64 %i.ad, 1                    ; 3 uses
  store i64 %i.al, ptr %i.e, align 8, !alias.scope !2688
  %i.am = mul nuw i64 %.sroa.05.031, 10
  %i.an = add i64 %i.am, %i.ah                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.al, %i.h
  br i1 %exitcond.not, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit13.thread", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit13"

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN10serde_json2de21Deserializer$LT$R$GT$18parse_long_integer17h4fa64d3e1a0a8d20E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2, i64 noundef %.sroa.05.031)
  %i.ao = load i64, ptr %i.b, align 8, !range !33, !noundef !22
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.ap, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.as = load ptr, ptr %i.aq, align 8, !nonnull !22, !align !28, !noundef !22
  store ptr %i.as, ptr %i.ar, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.at = load double, ptr %i.aq, align 8, !noundef !22
  store double %i.at, ptr %i.ar, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink = phi i64 [ 3, %bb.n ], [ 0, %bb.o ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_integer17h7792aba84fd8d738E"(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(64) %0) unnamed_addr #1 !guid !2782 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2784)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 14 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !2785, !noundef !22 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !2785, !noundef !22 ; 16 uses
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h9fc205b303ad2e00E.exit", label %.thread

"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h9fc205b303ad2e00E.exit": ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2785, !nonnull !22, !align !38, !noundef !22 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g
  %i.n = load i8, ptr %i.m, align 1, !noalias !2786, !noundef !22 ; 2 uses
  %i.o = add nuw i64 %i.g, 1                      ; 8 uses
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !2785
  %i.p = icmp eq i8 %i.n, 48
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h9fc205b303ad2e00E.exit"
  %i.q = icmp ult i64 %i.o, %i.i
  br i1 %i.q, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.thread"

bb.c:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h9fc205b303ad2e00E.exit"
  %i.r = add i8 %i.n, -49
  %or.cond1 = icmp ult i8 %i.r, 9
  br i1 %or.cond1, label %.preheader, label %.thread, !prof !47

.preheader:                                       ; preds = %bb.c
  %i.s = icmp ult i64 %i.o, %i.i
  br i1 %i.s, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit7", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit": ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %i.u = load i8, ptr %i.t, align 1, !noalias !2787, !noundef !22
  %i.v = add i8 %i.u, -48
  %or.cond = icmp ult i8 %i.v, 10
  br i1 %or.cond, label %bb.d, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.thread", !prof !48

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.thread": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit7", %bb.e, %.preheader, %bb.b, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit"
  %i.w = phi i64 [ %i.o, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit" ], [ %i.o, %.preheader ], [ %i.o, %bb.b ], [ %i.aa, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit7" ], [ %i.ae, %bb.e ] ; 5 uses
  %i.x = icmp ult i64 %i.w, %i.i
  br i1 %i.x, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit5", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3d802d7529531dc4E.exit"

bb.d:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 13, ptr %i.e, align 8
  %i.y = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h37b14f047f8b1025E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3d802d7529531dc4E.exit"

.thread:                                          ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 13, ptr %i.d, align 8
  %i.z = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h97db5a6137b0fb54E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3d802d7529531dc4E.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit7": ; preds = %.preheader, %bb.e
  %i.aa = phi i64 [ %i.ae, %bb.e ], [ %i.o, %.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !noalias !2788, !noundef !22
  %i.ad = add i8 %i.ac, -48
  %or.cond2 = icmp ult i8 %i.ad, 10
  br i1 %or.cond2, label %bb.e, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.thread"

bb.e:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit7"
  %i.ae = add nuw i64 %i.aa, 1                    ; 4 uses
  store i64 %i.ae, ptr %i.f, align 8, !alias.scope !2789
  %i.af = icmp ult i64 %i.ae, %i.i
  br i1 %i.af, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit7", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit5": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.thread"
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.w
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !2790, !noundef !22
  switch i8 %i.ah, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3d802d7529531dc4E.exit" [
    i8 46, label %bb.f
    i8 101, label %bb.j
    i8 69, label %bb.j
  ]

bb.f:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit5"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2791)
  %storemerge.peel.i = add nuw i64 %i.w, 1        ; 5 uses
  store i64 %storemerge.peel.i, ptr %i.f, align 8, !alias.scope !2791
  %i.ai = icmp ult i64 %storemerge.peel.i, %i.i
  br i1 %i.ai, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.peel.i", label %.thread.thread.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.peel.i": ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 %storemerge.peel.i
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !2792, !noundef !22
  %i.al = add i8 %i.ak, -48
  %or.cond.peel.i = icmp ult i8 %i.al, 10
  br i1 %or.cond.peel.i, label %.peel.next.i.preheader, label %.thread.thread.i

.peel.next.i.preheader:                           ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.peel.i"
  %i.am = add i64 %i.i, -1                        ; 2 uses
  %exitcond.not58 = icmp eq i64 %storemerge.peel.i, %i.am
  br i1 %exitcond.not58, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3d802d7529531dc4E.exit.loopexit30", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.i"

.peel.next.i:                                     ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.i"
  %exitcond.not = icmp eq i64 %storemerge.i, %i.am
  br i1 %exitcond.not, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3d802d7529531dc4E.exit.loopexit30", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.i", !llvm.loop !2723

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.i": ; preds = %.peel.next.i.preheader, %.peel.next.i
  %storemerge.in17.i59 = phi i64 [ %storemerge.i, %.peel.next.i ], [ %storemerge.peel.i, %.peel.next.i.preheader ] ; 3 uses
  %storemerge.i = add nuw i64 %storemerge.in17.i59, 1 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 %storemerge.i
  %i.ao = load i8, ptr %i.an, align 1, !noalias !2793, !noundef !22 ; 2 uses
  %i.ap = add i8 %i.ao, -48
  %or.cond.i = icmp ult i8 %i.ap, 10
  br i1 %or.cond.i, label %.peel.next.i, label %.loopexit.i, !llvm.loop !2723

.loopexit.i:                                      ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.i"
  store i64 %storemerge.i, ptr %i.f, align 8, !alias.scope !2791
  switch i8 %i.ao, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3d802d7529531dc4E.exit" [
    i8 101, label %bb.g
    i8 69, label %bb.g
  ]

.thread.thread.i:                                 ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.peel.i", %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2791
  store i64 13, ptr %i.c, align 8, !noalias !2791
  %i.aq = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h37b14f047f8b1025E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2791
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3d802d7529531dc4E.exit"

bb.g:                                             ; preds = %.loopexit.i, %.loopexit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2794)
  %i.ar = add nuw i64 %storemerge.in17.i59, 2     ; 5 uses
  store i64 %i.ar, ptr %i.f, align 8, !alias.scope !2795
  %i.as = icmp ult i64 %i.ar, %i.i
  br i1 %i.as, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.i.i", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.thread.i.i"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.i.i": ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ar
  %i.au = load i8, ptr %i.at, align 1, !noalias !2796, !noundef !22
  switch i8 %i.au, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.thread.i.i" [
    i8 43, label %bb.h
    i8 45, label %bb.h
  ]

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.thread.i.i": ; preds = %bb.h, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.i.i", %bb.g
  %i.av = phi i64 [ %i.ar, %bb.g ], [ %i.ax, %bb.h ], [ %i.ar, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.i.i" ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2798)
  %i.aw = icmp ult i64 %i.av, %i.i
  br i1 %i.aw, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h9fc205b303ad2e00E.exit.i.i", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h9fc205b303ad2e00E.exit.thread.i.i"

bb.h:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.i.i", %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.i.i"
  %i.ax = add nuw i64 %storemerge.in17.i59, 3     ; 2 uses
  store i64 %i.ax, ptr %i.f, align 8, !alias.scope !2799
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.thread.i.i"

"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h9fc205b303ad2e00E.exit.i.i": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.thread.i.i"
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.av
  %i.az = load i8, ptr %i.ay, align 1, !noalias !2800, !noundef !22
  %i.ba = add nuw i64 %i.av, 1                    ; 3 uses
  store i64 %i.ba, ptr %i.f, align 8, !alias.scope !2801
  %i.bb = add i8 %i.az, -48
  %or.cond.i.i = icmp ult i8 %i.bb, 10
  br i1 %or.cond.i.i, label %.preheader.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h9fc205b303ad2e00E.exit.thread.i.i", !prof !47

.preheader.i.i:                                   ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h9fc205b303ad2e00E.exit.i.i"
  %i.bc = icmp ult i64 %i.ba, %i.i
  br i1 %i.bc, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit4.i.i", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3d802d7529531dc4E.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h9fc205b303ad2e00E.exit.thread.i.i": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h9fc205b303ad2e00E.exit.i.i", %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.thread.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2802
  store i64 13, ptr %i.b, align 8, !noalias !2802
  %i.bd = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h97db5a6137b0fb54E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2802
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3d802d7529531dc4E.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit4.i.i": ; preds = %.preheader.i.i, %bb.i
  %i.be = phi i64 [ %i.bi, %bb.i ], [ %i.ba, %.preheader.i.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !2803, !noundef !22
  %i.bh = add i8 %i.bg, -48
  %or.cond1.i.i = icmp ult i8 %i.bh, 10
  br i1 %or.cond1.i.i, label %bb.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3d802d7529531dc4E.exit"

bb.i:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit4.i.i"
  %i.bi = add nuw i64 %i.be, 1                    ; 3 uses
  store i64 %i.bi, ptr %i.f, align 8, !alias.scope !2804
  %exitcond.not.i.i = icmp eq i64 %i.bi, %i.i
  br i1 %exitcond.not.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3d802d7529531dc4E.exit", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit4.i.i"

bb.j:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit5", %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit5"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2805)
  %i.bj = add nuw i64 %i.w, 1                     ; 5 uses
  store i64 %i.bj, ptr %i.f, align 8, !alias.scope !2806
  %i.bk = icmp ult i64 %i.bj, %i.i
  br i1 %i.bk, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.i9", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.thread.i"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.i9": ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bj
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !2807, !noundef !22
  switch i8 %i.bm, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.thread.i" [
    i8 43, label %bb.k
    i8 45, label %bb.k
  ]

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.thread.i": ; preds = %bb.k, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.i9", %bb.j
  %i.bn = phi i64 [ %i.bj, %bb.j ], [ %i.bp, %bb.k ], [ %i.bj, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.i9" ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2809)
  %i.bo = icmp ult i64 %i.bn, %i.i
  br i1 %i.bo, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h9fc205b303ad2e00E.exit.i", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h9fc205b303ad2e00E.exit.thread.i"

bb.k:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.i9", %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.i9"
  %i.bp = add nuw i64 %i.w, 2                     ; 2 uses
  store i64 %i.bp, ptr %i.f, align 8, !alias.scope !2810
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.thread.i"

"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h9fc205b303ad2e00E.exit.i": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.thread.i"
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bn
  %i.br = load i8, ptr %i.bq, align 1, !noalias !2811, !noundef !22
  %i.bs = add nuw i64 %i.bn, 1                    ; 3 uses
  store i64 %i.bs, ptr %i.f, align 8, !alias.scope !2812
  %i.bt = add i8 %i.br, -48
  %or.cond.i8 = icmp ult i8 %i.bt, 10
  br i1 %or.cond.i8, label %.preheader.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h9fc205b303ad2e00E.exit.thread.i", !prof !47

.preheader.i:                                     ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h9fc205b303ad2e00E.exit.i"
  %i.bu = icmp ult i64 %i.bs, %i.i
  br i1 %i.bu, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit4.i", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3d802d7529531dc4E.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h9fc205b303ad2e00E.exit.thread.i": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h9fc205b303ad2e00E.exit.i", %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.thread.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2805
  store i64 13, ptr %i.a, align 8, !noalias !2805
  %i.bv = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h97db5a6137b0fb54E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2805
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3d802d7529531dc4E.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit4.i": ; preds = %.preheader.i, %bb.l
  %i.bw = phi i64 [ %i.ca, %bb.l ], [ %i.bs, %.preheader.i ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !noalias !2813, !noundef !22
  %i.bz = add i8 %i.by, -48
  %or.cond1.i = icmp ult i8 %i.bz, 10
  br i1 %or.cond1.i, label %bb.l, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3d802d7529531dc4E.exit"

bb.l:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit4.i"
  %i.ca = add nuw i64 %i.bw, 1                    ; 3 uses
  store i64 %i.ca, ptr %i.f, align 8, !alias.scope !2814
  %exitcond.not.i = icmp eq i64 %i.ca, %i.i
  br i1 %exitcond.not.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3d802d7529531dc4E.exit", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit4.i"

"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3d802d7529531dc4E.exit.loopexit30": ; preds = %.peel.next.i, %.peel.next.i.preheader
  store i64 %i.i, ptr %i.f, align 8, !alias.scope !2791
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3d802d7529531dc4E.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3d802d7529531dc4E.exit": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit4.i", %bb.l, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit4.i.i", %bb.i, %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3d802d7529531dc4E.exit.loopexit30", %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.thread", %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit5", %.thread.thread.i, %.loopexit.i, %.preheader.i.i, %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h9fc205b303ad2e00E.exit.thread.i.i", %.preheader.i, %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h9fc205b303ad2e00E.exit.thread.i", %bb.d, %.thread
  %.sroa.0.3 = phi ptr [ %i.z, %.thread ], [ %i.y, %bb.d ], [ null, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit4.i.i" ], [ null, %.preheader.i ], [ null, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit5" ], [ %i.aq, %.thread.thread.i ], [ null, %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3d802d7529531dc4E.exit.loopexit30" ], [ null, %.loopexit.i ], [ %i.bd, %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h9fc205b303ad2e00E.exit.thread.i.i" ], [ null, %.preheader.i.i ], [ null, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit.thread" ], [ %i.bv, %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h9fc205b303ad2e00E.exit.thread.i" ], [ null, %bb.i ], [ null, %bb.l ], [ null, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h922c80bb7e9b3701E.exit4.i" ]
  ret ptr %.sroa.0.3
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_integer17ha0af09011e560c3fE"(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(80) %0) unnamed_addr #1 !guid !2944 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2946)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2947)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 14 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !2948, !noundef !22 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !2948, !noundef !22 ; 16 uses
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h79bf2c53e4c009f4E.exit", label %.thread

"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h79bf2c53e4c009f4E.exit": ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2948, !nonnull !22, !align !38, !noundef !22 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g
  %i.n = load i8, ptr %i.m, align 1, !noalias !2949, !noundef !22 ; 2 uses
  %i.o = add nuw i64 %i.g, 1                      ; 8 uses
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !2948
  %i.p = icmp eq i8 %i.n, 48
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h79bf2c53e4c009f4E.exit"
  %i.q = icmp ult i64 %i.o, %i.i
  br i1 %i.q, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread"

bb.c:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h79bf2c53e4c009f4E.exit"
  %i.r = add i8 %i.n, -49
  %or.cond1 = icmp ult i8 %i.r, 9
  br i1 %or.cond1, label %.preheader, label %.thread, !prof !47

.preheader:                                       ; preds = %bb.c
  %i.s = icmp ult i64 %i.o, %i.i
  br i1 %i.s, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit7", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit": ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %i.u = load i8, ptr %i.t, align 1, !noalias !2950, !noundef !22
  %i.v = add i8 %i.u, -48
  %or.cond = icmp ult i8 %i.v, 10
  br i1 %or.cond, label %bb.d, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread", !prof !48

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit7", %bb.e, %.preheader, %bb.b, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit"
  %i.w = phi i64 [ %i.o, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit" ], [ %i.o, %.preheader ], [ %i.o, %bb.b ], [ %i.aa, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit7" ], [ %i.ae, %bb.e ] ; 5 uses
  %i.x = icmp ult i64 %i.w, %i.i
  br i1 %i.x, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit5", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h60982dc7d56cd15dE.exit"

bb.d:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 13, ptr %i.e, align 8
  %i.y = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hef8cca19a10c12dfE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h60982dc7d56cd15dE.exit"

.thread:                                          ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 13, ptr %i.d, align 8
  %i.z = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52df9833b1238becE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h60982dc7d56cd15dE.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit7": ; preds = %.preheader, %bb.e
  %i.aa = phi i64 [ %i.ae, %bb.e ], [ %i.o, %.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !noalias !2951, !noundef !22
  %i.ad = add i8 %i.ac, -48
  %or.cond2 = icmp ult i8 %i.ad, 10
  br i1 %or.cond2, label %bb.e, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread"

bb.e:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit7"
  %i.ae = add nuw i64 %i.aa, 1                    ; 4 uses
  store i64 %i.ae, ptr %i.f, align 8, !alias.scope !2952
  %i.af = icmp ult i64 %i.ae, %i.i
  br i1 %i.af, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit7", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit5": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread"
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.w
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !2953, !noundef !22
  switch i8 %i.ah, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h60982dc7d56cd15dE.exit" [
    i8 46, label %bb.f
    i8 101, label %bb.j
    i8 69, label %bb.j
  ]

bb.f:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit5"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2954)
  %storemerge.peel.i = add nuw i64 %i.w, 1        ; 5 uses
  store i64 %storemerge.peel.i, ptr %i.f, align 8, !alias.scope !2954
  %i.ai = icmp ult i64 %storemerge.peel.i, %i.i
  br i1 %i.ai, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.peel.i", label %.thread.thread.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.peel.i": ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 %storemerge.peel.i
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !2955, !noundef !22
  %i.al = add i8 %i.ak, -48
  %or.cond.peel.i = icmp ult i8 %i.al, 10
  br i1 %or.cond.peel.i, label %.peel.next.i.preheader, label %.thread.thread.i

.peel.next.i.preheader:                           ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.peel.i"
  %i.am = add i64 %i.i, -1                        ; 2 uses
  %exitcond.not58 = icmp eq i64 %storemerge.peel.i, %i.am
  br i1 %exitcond.not58, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h60982dc7d56cd15dE.exit.loopexit30", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.i"

.peel.next.i:                                     ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.i"
  %exitcond.not = icmp eq i64 %storemerge.i, %i.am
  br i1 %exitcond.not, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h60982dc7d56cd15dE.exit.loopexit30", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.i", !llvm.loop !2864

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.i": ; preds = %.peel.next.i.preheader, %.peel.next.i
  %storemerge.in17.i59 = phi i64 [ %storemerge.i, %.peel.next.i ], [ %storemerge.peel.i, %.peel.next.i.preheader ] ; 3 uses
  %storemerge.i = add nuw i64 %storemerge.in17.i59, 1 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 %storemerge.i
  %i.ao = load i8, ptr %i.an, align 1, !noalias !2956, !noundef !22 ; 2 uses
  %i.ap = add i8 %i.ao, -48
  %or.cond.i = icmp ult i8 %i.ap, 10
  br i1 %or.cond.i, label %.peel.next.i, label %.loopexit.i, !llvm.loop !2864

.loopexit.i:                                      ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.i"
  store i64 %storemerge.i, ptr %i.f, align 8, !alias.scope !2954
  switch i8 %i.ao, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h60982dc7d56cd15dE.exit" [
    i8 101, label %bb.g
    i8 69, label %bb.g
  ]

.thread.thread.i:                                 ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.peel.i", %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2954
  store i64 13, ptr %i.c, align 8, !noalias !2954
  %i.aq = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hef8cca19a10c12dfE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2954
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h60982dc7d56cd15dE.exit"

bb.g:                                             ; preds = %.loopexit.i, %.loopexit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2957)
  %i.ar = add nuw i64 %storemerge.in17.i59, 2     ; 5 uses
  store i64 %i.ar, ptr %i.f, align 8, !alias.scope !2958
  %i.as = icmp ult i64 %i.ar, %i.i
  br i1 %i.as, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.i.i", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread.i.i"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.i.i": ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ar
  %i.au = load i8, ptr %i.at, align 1, !noalias !2959, !noundef !22
  switch i8 %i.au, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread.i.i" [
    i8 43, label %bb.h
    i8 45, label %bb.h
  ]

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread.i.i": ; preds = %bb.h, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.i.i", %bb.g
  %i.av = phi i64 [ %i.ar, %bb.g ], [ %i.ax, %bb.h ], [ %i.ar, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.i.i" ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2960)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2962)
  %i.aw = icmp ult i64 %i.av, %i.i
  br i1 %i.aw, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h79bf2c53e4c009f4E.exit.i.i", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h79bf2c53e4c009f4E.exit.thread.i.i"

bb.h:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.i.i", %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.i.i"
  %i.ax = add nuw i64 %storemerge.in17.i59, 3     ; 2 uses
  store i64 %i.ax, ptr %i.f, align 8, !alias.scope !2963
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread.i.i"

"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h79bf2c53e4c009f4E.exit.i.i": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread.i.i"
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.av
  %i.az = load i8, ptr %i.ay, align 1, !noalias !2964, !noundef !22
  %i.ba = add nuw i64 %i.av, 1                    ; 3 uses
  store i64 %i.ba, ptr %i.f, align 8, !alias.scope !2965
  %i.bb = add i8 %i.az, -48
  %or.cond.i.i = icmp ult i8 %i.bb, 10
  br i1 %or.cond.i.i, label %.preheader.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h79bf2c53e4c009f4E.exit.thread.i.i", !prof !47

.preheader.i.i:                                   ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h79bf2c53e4c009f4E.exit.i.i"
  %i.bc = icmp ult i64 %i.ba, %i.i
  br i1 %i.bc, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit4.i.i", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h60982dc7d56cd15dE.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h79bf2c53e4c009f4E.exit.thread.i.i": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h79bf2c53e4c009f4E.exit.i.i", %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2966
  store i64 13, ptr %i.b, align 8, !noalias !2966
  %i.bd = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52df9833b1238becE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2966
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h60982dc7d56cd15dE.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit4.i.i": ; preds = %.preheader.i.i, %bb.i
  %i.be = phi i64 [ %i.bi, %bb.i ], [ %i.ba, %.preheader.i.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !2967, !noundef !22
  %i.bh = add i8 %i.bg, -48
  %or.cond1.i.i = icmp ult i8 %i.bh, 10
  br i1 %or.cond1.i.i, label %bb.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h60982dc7d56cd15dE.exit"

bb.i:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit4.i.i"
  %i.bi = add nuw i64 %i.be, 1                    ; 3 uses
  store i64 %i.bi, ptr %i.f, align 8, !alias.scope !2968
  %exitcond.not.i.i = icmp eq i64 %i.bi, %i.i
  br i1 %exitcond.not.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h60982dc7d56cd15dE.exit", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit4.i.i"

bb.j:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit5", %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit5"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2969)
  %i.bj = add nuw i64 %i.w, 1                     ; 5 uses
  store i64 %i.bj, ptr %i.f, align 8, !alias.scope !2970
  %i.bk = icmp ult i64 %i.bj, %i.i
  br i1 %i.bk, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.i9", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread.i"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.i9": ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bj
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !2971, !noundef !22
  switch i8 %i.bm, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread.i" [
    i8 43, label %bb.k
    i8 45, label %bb.k
  ]

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread.i": ; preds = %bb.k, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.i9", %bb.j
  %i.bn = phi i64 [ %i.bj, %bb.j ], [ %i.bp, %bb.k ], [ %i.bj, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.i9" ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2974)
  %i.bo = icmp ult i64 %i.bn, %i.i
  br i1 %i.bo, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h79bf2c53e4c009f4E.exit.i", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h79bf2c53e4c009f4E.exit.thread.i"

bb.k:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.i9", %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.i9"
  %i.bp = add nuw i64 %i.w, 2                     ; 2 uses
  store i64 %i.bp, ptr %i.f, align 8, !alias.scope !2975
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread.i"

"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h79bf2c53e4c009f4E.exit.i": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread.i"
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bn
  %i.br = load i8, ptr %i.bq, align 1, !noalias !2976, !noundef !22
  %i.bs = add nuw i64 %i.bn, 1                    ; 3 uses
  store i64 %i.bs, ptr %i.f, align 8, !alias.scope !2977
  %i.bt = add i8 %i.br, -48
  %or.cond.i8 = icmp ult i8 %i.bt, 10
  br i1 %or.cond.i8, label %.preheader.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h79bf2c53e4c009f4E.exit.thread.i", !prof !47

.preheader.i:                                     ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h79bf2c53e4c009f4E.exit.i"
  %i.bu = icmp ult i64 %i.bs, %i.i
  br i1 %i.bu, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit4.i", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h60982dc7d56cd15dE.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h79bf2c53e4c009f4E.exit.thread.i": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h79bf2c53e4c009f4E.exit.i", %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2969
  store i64 13, ptr %i.a, align 8, !noalias !2969
  %i.bv = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52df9833b1238becE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2969
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h60982dc7d56cd15dE.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit4.i": ; preds = %.preheader.i, %bb.l
  %i.bw = phi i64 [ %i.ca, %bb.l ], [ %i.bs, %.preheader.i ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !noalias !2978, !noundef !22
  %i.bz = add i8 %i.by, -48
  %or.cond1.i = icmp ult i8 %i.bz, 10
  br i1 %or.cond1.i, label %bb.l, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h60982dc7d56cd15dE.exit"

bb.l:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit4.i"
  %i.ca = add nuw i64 %i.bw, 1                    ; 3 uses
  store i64 %i.ca, ptr %i.f, align 8, !alias.scope !2979
  %exitcond.not.i = icmp eq i64 %i.ca, %i.i
  br i1 %exitcond.not.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h60982dc7d56cd15dE.exit", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit4.i"

"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h60982dc7d56cd15dE.exit.loopexit30": ; preds = %.peel.next.i, %.peel.next.i.preheader
  store i64 %i.i, ptr %i.f, align 8, !alias.scope !2954
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h60982dc7d56cd15dE.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h60982dc7d56cd15dE.exit": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit4.i", %bb.l, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit4.i.i", %bb.i, %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h60982dc7d56cd15dE.exit.loopexit30", %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread", %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit5", %.thread.thread.i, %.loopexit.i, %.preheader.i.i, %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h79bf2c53e4c009f4E.exit.thread.i.i", %.preheader.i, %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h79bf2c53e4c009f4E.exit.thread.i", %bb.d, %.thread
  %.sroa.0.3 = phi ptr [ %i.z, %.thread ], [ %i.y, %bb.d ], [ null, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit4.i.i" ], [ null, %.preheader.i ], [ null, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit5" ], [ %i.aq, %.thread.thread.i ], [ null, %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h60982dc7d56cd15dE.exit.loopexit30" ], [ null, %.loopexit.i ], [ %i.bd, %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h79bf2c53e4c009f4E.exit.thread.i.i" ], [ null, %.preheader.i.i ], [ null, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread" ], [ %i.bv, %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17h79bf2c53e4c009f4E.exit.thread.i" ], [ null, %bb.i ], [ null, %bb.l ], [ null, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit4.i" ]
  ret ptr %.sroa.0.3
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$14parse_exponent17h1307f3ab472396e0E"(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %4) unnamed_addr #1 !guid !3011 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !3012, !noundef !22 ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 5 uses
  store i64 %i.h, ptr %i.f, align 8, !alias.scope !3012
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3015)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !3016, !noundef !22 ; 4 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit": ; preds = %bb.a
  %i.l = load ptr, ptr %i.e, align 8, !alias.scope !3016, !nonnull !22, !align !38, !noundef !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.n = load i8, ptr %i.m, align 1, !noalias !3017, !noundef !22
  switch i8 %i.n, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread" [
    i8 43, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread.sink.split"
    i8 45, label %bb.b
  ]

bb.b:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit"
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread.sink.split"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread.sink.split": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit", %bb.b
  %.sroa.0.0.ph = phi i1 [ false, %bb.b ], [ true, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit" ]
  %i.o = add i64 %i.g, 2                          ; 2 uses
  store i64 %i.o, ptr %i.f, align 8
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread.sink.split", %bb.a, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit"
  %i.p = phi i64 [ %i.h, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit" ], [ %i.h, %bb.a ], [ %i.o, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread.sink.split" ] ; 3 uses
  %.sroa.0.0 = phi i1 [ true, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit" ], [ true, %bb.a ], [ %.sroa.0.0.ph, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread.sink.split" ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3019)
  %i.q = icmp ult i64 %i.p, %i.j
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread"
  %i.r = load ptr, ptr %i.e, align 8, !alias.scope !3020, !nonnull !22, !align !38, !noundef !22 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  %i.t = load i8, ptr %i.s, align 1, !noalias !3021, !noundef !22
  %i.u = add nuw i64 %i.p, 1                      ; 3 uses
  store i64 %i.u, ptr %i.f, align 8, !alias.scope !3020
  %i.v = add i8 %i.t, -48                         ; 2 uses
  %or.cond = icmp ult i8 %i.v, 10
  br i1 %or.cond, label %bb.f, label %bb.e, !prof !46

bb.d:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit.thread"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 5, ptr %i.d, align 8
  %i.w = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52df9833b1238becE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.y = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52df9833b1238becE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %i.aa = zext nneg i8 %i.v to i32                ; 2 uses
  %i.ab = icmp ult i64 %i.u, %i.j
  br i1 %i.ab, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit14", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit14.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit14": ; preds = %bb.f, %bb.s
  %.sroa.06.032 = phi i32 [ %i.bj, %bb.s ], [ %i.aa, %bb.f ] ; 4 uses
  %i.ac = phi i64 [ %i.ag, %bb.s ], [ %i.u, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !3022, !noundef !22
  %i.af = add i8 %i.ae, -48                       ; 3 uses
  %or.cond1 = icmp ult i8 %i.af, 10
  br i1 %or.cond1, label %bb.g, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit14.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit14.thread": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit14", %bb.s, %bb.f
  %.sroa.06.0.lcssa = phi i32 [ %i.aa, %bb.f ], [ %i.bj, %bb.s ], [ %.sroa.06.032, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit14" ] ; 2 uses
  br i1 %.sroa.0.0, label %bb.i, label %bb.h

bb.g:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit14"
  %i.ag = add nuw i64 %i.ac, 1                    ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !3023
  %i.ah = zext nneg i8 %i.af to i32
  %i.ai = icmp sgt i32 %.sroa.06.032, 214748363
  br i1 %i.ai, label %bb.r, label %bb.s

bb.h:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit14.thread"
  %i.aj = tail call i32 @llvm.ssub.sat.i32(i32 %4, i32 %.sroa.06.0.lcssa)
  br label %bb.j

bb.i:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h3005d33242eccd68E.exit14.thread"
  %i.ak = tail call i32 @llvm.sadd.sat.i32(i32 %4, i32 %.sroa.06.0.lcssa)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.011.0 = phi i32 [ %i.ak, %bb.i ], [ %i.aj, %bb.h ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3024)
  %i.al = uitofp i64 %3 to double                 ; 2 uses
  %.sroa.012.021.i = tail call i32 @llvm.abs.i32(i32 %.sroa.011.0, i1 false) ; 2 uses
  %i.am = icmp ult i32 %.sroa.012.021.i, 309
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.sroa.0.023.i = phi i32 [ %i.au, %bb.l ], [ %.sroa.011.0, %bb.j ] ; 2 uses
  %.sroa.04.022.i = phi double [ %i.at, %bb.l ], [ %i.al, %bb.j ] ; 3 uses
  %i.an = fcmp oeq double %.sroa.04.022.i, 0.000000e+00
  br i1 %i.an, label %.loopexit.i, label %bb.k

._crit_edge.i:                                    ; preds = %bb.l, %bb.j
  %.sroa.04.0.lcssa.i = phi double [ %i.al, %bb.j ], [ %i.at, %bb.l ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.011.0, %bb.j ], [ %i.au, %bb.l ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.021.i, %bb.j ], [ %.sroa.012.0.i, %bb.l ]
  %i.ao = zext nneg i32 %.sroa.012.0.lcssa.i to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_ZN10serde_json2de5POW1017h13e2d2d3887eda26E, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !noalias !3025, !noundef !22 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.023.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !24

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.022.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.023.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3025
  store i64 14, ptr %i.a, align 8, !noalias !3025
  %i.aw = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52df9833b1238becE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !3024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3025
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !3024
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h0e91ecf7a6466a0dE.exit"

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.022.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.013.0.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.013.0.i, ptr %i.az, align 8, !alias.scope !3024
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h0e91ecf7a6466a0dE.exit"

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !24

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3025
  store i64 14, ptr %i.b, align 8, !noalias !3025
  %i.be = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52df9833b1238becE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !3024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3025
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !3024
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h0e91ecf7a6466a0dE.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h0e91ecf7a6466a0dE.exit": ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !3024
  br label %bb.q

bb.q:                                             ; preds = %bb.d, %bb.t, %bb.e, %"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h0e91ecf7a6466a0dE.exit"
  ret void

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.06.032, 214748364
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh
  br i1 %or.cond2, label %bb.t, label %bb.s, !prof !45

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.06.032, 10
  %i.bj = add i32 %i.bi, %i.ah                    ; 2 uses
end_hunk_0
