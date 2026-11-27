Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_parser-4204840c537c9517.yara_x_parser.b6715538e8e8d337-cgu.13?download=true
inline.NumInlined: 210
inline.NumDeleted: 124
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMso_NtCsfF8zpZz1lvn_13yara_x_parser3cstINtB5_11NodeOrTokenNtB5_7MutableE6detach:bb.a
  %i.b = load i64, ptr %0, align 8, !range !8, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr i8, ptr %.val, i64 16
  %.val7.i = load ptr, ptr %i.e, align 8, !noundef !5 ; 7 uses
  %.not.i.i = icmp eq ptr %.val7.i, null
  br i1 %.not.i.i, label %_RNvMsm_NtCsfF8zpZz1lvn_13yara_x_parser3cstINtB5_5TokenNtB5_7MutableE6detach.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val7.i, i64 24 ; 6 uses
  %i.g = load i32, ptr %i.f, align 4, !noundef !5 ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsG258MDvU3F_3std7process5abort() #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = add nuw i32 %i.g, 1
  store i32 %i.i, ptr %i.f, align 4
  store ptr %.val7.i, ptr %i.a, align 8
  %i.j = load i64, ptr %.val7.i, align 8, !range !8, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %bb.f, label %bb.g, !prof !6

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #23
          to label %bb.n unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val7.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 28
  %i.o = load i32, ptr %i.n, align 4, !noundef !5
  %i.p = zext i32 %i.o to i64
  %i.q = invoke noundef nonnull ptr @_RNvMs5_NtNtCskKs5foxPL5A_5rowan5green4nodeNtB5_13GreenNodeData12remove_child(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m, i64 noundef %i.p)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.j, %bb.g, %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load i32, ptr %i.f, align 8, !noundef !5
  %i.t = add i32 %i.s, -1                         ; 2 uses
  store i32 %i.t, ptr %i.f, align 8
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskKs5foxPL5A_5rowan3api10SyntaxNodeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAEEB1k_.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCskKs5foxPL5A_5rowan6cursor4free(ptr noundef nonnull %.val7.i) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskKs5foxPL5A_5rowan3api10SyntaxNodeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAEEB1k_.exit.i unwind label %bb.o

bb.j:                                             ; preds = %bb.g
  %i.v = invoke noundef nonnull ptr @_RNvMs3_NtCskKs5foxPL5A_5rowan6cursorNtB5_10SyntaxNode12replace_with(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef nonnull %i.q)
          to label %bb.k unwind label %bb.h

bb.k:                                             ; preds = %bb.j
  %i.w = invoke noundef nonnull ptr @_RNvMs3_NtCskKs5foxPL5A_5rowan6cursorNtB5_10SyntaxNode8new_root(ptr noundef nonnull %i.v)
          to label %bb.l unwind label %bb.h       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.x = load i32, ptr %i.f, align 8, !noundef !5
  %i.y = add i32 %i.x, -1                         ; 2 uses
  store i32 %i.y, ptr %i.f, align 8
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.m, label %_RNvMsm_NtCsfF8zpZz1lvn_13yara_x_parser3cstINtB5_5TokenNtB5_7MutableE6detach.exit

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCskKs5foxPL5A_5rowan6cursor4free(ptr noundef nonnull %.val7.i) #21
  br label %_RNvMsm_NtCsfF8zpZz1lvn_13yara_x_parser3cstINtB5_5TokenNtB5_7MutableE6detach.exit

bb.n:                                             ; preds = %bb.f
  unreachable

bb.o:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskKs5foxPL5A_5rowan3api10SyntaxNodeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAEEB1k_.exit.i: ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %i.r

_RNvMsm_NtCsfF8zpZz1lvn_13yara_x_parser3cstINtB5_5TokenNtB5_7MutableE6detach.exit: ; preds = %bb.b, %bb.l, %bb.m
  %.sroa.0.0.i = phi ptr [ %i.w, %bb.m ], [ %i.w, %bb.l ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  %i.ab = tail call noundef ptr @_RNvMsv_NtCsfF8zpZz1lvn_13yara_x_parser3cstINtB5_4NodeNtB5_7MutableE6detach(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_RNvMsm_NtCsfF8zpZz1lvn_13yara_x_parser3cstINtB5_5TokenNtB5_7MutableE6detach.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i, %_RNvMsm_NtCsfF8zpZz1lvn_13yara_x_parser3cstINtB5_5TokenNtB5_7MutableE6detach.exit ], [ %i.ab, %bb.p ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvMsv_NtCsfF8zpZz1lvn_13yara_x_parser3cstINtB5_4NodeNtB5_7MutableE6detach(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val7 = load ptr, ptr %i.c, align 8, !noundef !5 ; 7 uses
  %.not.i = icmp eq ptr %.val7, null
  br i1 %.not.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskKs5foxPL5A_5rowan3api10SyntaxNodeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAEEB1k_.exit8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val7, i64 24 ; 6 uses
  %i.e = load i32, ptr %i.d, align 4, !noundef !5 ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.d, !prof !6

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsG258MDvU3F_3std7process5abort() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = add nuw i32 %i.e, 1
  store i32 %i.g, ptr %i.d, align 4
  store ptr %.val7, ptr %i.a, align 8
  %i.h = load i64, ptr %.val7, align 8, !range !8, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.e, label %bb.f, !prof !6

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskKs5foxPL5A_5rowan3api10SyntaxNodeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAEEB1k_.exit8: ; preds = %bb.a, %bb.l, %bb.k
  %.sroa.0.0 = phi ptr [ %i.u, %bb.l ], [ %i.u, %bb.k ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #23
          to label %bb.m unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.val7, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.m = load i32, ptr %i.l, align 4, !noundef !5
  %i.n = zext i32 %i.m to i64
  %i.o = invoke noundef nonnull ptr @_RNvMs5_NtNtCskKs5foxPL5A_5rowan5green4nodeNtB5_13GreenNodeData12remove_child(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k, i64 noundef %i.n)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.i, %bb.f, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load i32, ptr %i.d, align 8, !noundef !5
  %i.r = add i32 %i.q, -1                         ; 2 uses
  store i32 %i.r, ptr %i.d, align 8
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskKs5foxPL5A_5rowan3api10SyntaxNodeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAEEB1k_.exit

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCskKs5foxPL5A_5rowan6cursor4free(ptr noundef nonnull %.val7) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskKs5foxPL5A_5rowan3api10SyntaxNodeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAEEB1k_.exit unwind label %bb.n

bb.i:                                             ; preds = %bb.f
  %i.t = invoke noundef nonnull ptr @_RNvMs3_NtCskKs5foxPL5A_5rowan6cursorNtB5_10SyntaxNode12replace_with(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef nonnull %i.o)
          to label %bb.j unwind label %bb.g

bb.j:                                             ; preds = %bb.i
  %i.u = invoke noundef nonnull ptr @_RNvMs3_NtCskKs5foxPL5A_5rowan6cursorNtB5_10SyntaxNode8new_root(ptr noundef nonnull %i.t)
          to label %bb.k unwind label %bb.g       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.v = load i32, ptr %i.d, align 8, !noundef !5
  %i.w = add i32 %i.v, -1                         ; 2 uses
  store i32 %i.w, ptr %i.d, align 8
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskKs5foxPL5A_5rowan3api10SyntaxNodeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAEEB1k_.exit8

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCskKs5foxPL5A_5rowan6cursor4free(ptr noundef nonnull %.val7) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskKs5foxPL5A_5rowan3api10SyntaxNodeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAEEB1k_.exit8

bb.m:                                             ; preds = %bb.e
  unreachable

bb.n:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskKs5foxPL5A_5rowan3api10SyntaxNodeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAEEB1k_.exit: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtCsfF8zpZz1lvn_13yara_x_parser3cstNtB5_7CSTIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvXsc_NtCskKs5foxPL5A_5rowan3apiINtB5_18PreorderWithTokensNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  %i.i = load i64, ptr %i.h, align 8, !range !97, !noundef !5 ; 2 uses
  %.not76 = icmp eq i64 %i.i, 2
  br i1 %.not76, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskKs5foxPL5A_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit69
  %i.j = phi i64 [ %i.i, %.lr.ph ], [ %i.cl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskKs5foxPL5A_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit69 ]
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 30 uses
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = trunc nuw i64 %.sroa.5.0.copyload to i1  ; 2 uses
  br i1 %i.k, label %bb.f, label %bb.g

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskKs5foxPL5A_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit69, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterTNtCsfF8zpZz1lvn_13yara_x_parser4SpanNtNtCsexYYUdYSQU6_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextB1u_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !range !9, !noundef !5
  %.not24 = icmp eq i64 %i.o, -1
  br i1 %.not24, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %2 = load i32, ptr %i.d, align 8, !noundef !5
  %3 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %4 = load i32, ptr %3, align 4, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = zext i32 %2 to i64
  %6 = zext i32 %4 to i64
  %7 = shl nuw i64 %6, 32
  %8 = or disjoint i64 %7, %5
  store i64 %8, ptr %.sroa.421.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.ae, %bb.d, %bb.c
  ret void

bb.f:                                             ; preds = %bb.b
  br i1 %i.l, label %bb.ar, label %bb.af

bb.g:                                             ; preds = %bb.b
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  store ptr %.sroa.7.0.copyload, ptr %i.f, align 8
  %i.p = invoke noundef i16 @_RNvMs5_NtCskKs5foxPL5A_5rowan3apiINtB5_11SyntaxTokenNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAE4kindBS_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
          to label %bb.w unwind label %bb.u

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  store ptr %.sroa.7.0.copyload, ptr %i.g, align 8
  %i.q = invoke noundef i16 @_RNvMs4_NtCskKs5foxPL5A_5rowan3apiINtB5_10SyntaxNodeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAE4kindBR_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.q, %bb.n, %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 24 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !noundef !5
  %i.u = add i32 %i.t, -1                         ; 2 uses
  store i32 %i.u, ptr %i.s, align 4
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskKs5foxPL5A_5rowan3api10SyntaxNodeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAEEB1k_.exit

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCskKs5foxPL5A_5rowan6cursor4free(ptr noundef nonnull %.sroa.7.0.copyload) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskKs5foxPL5A_5rowan3api10SyntaxNodeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAEEB1k_.exit unwind label %bb.t

bb.l:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 32
  %i.x = load i32, ptr %i.w, align 8, !noundef !5 ; 3 uses
  %i.y = load i64, ptr %.sroa.7.0.copyload, align 8, !range !8, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.aa = trunc nuw i64 %i.y to i1
  %i.ab = load ptr, ptr %i.z, align 8, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.aa, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !5 ; 2 uses
  %i.ae = icmp ugt i64 %i.ad, 4294967295
  %i.af = shl nuw i64 %i.ad, 32
  %.sroa.09.0.insert.insert.i.i = select i1 %i.ae, i64 513, i64 %i.af ; 2 uses
  %i.ag = trunc i64 %.sroa.09.0.insert.insert.i.i to i1
  br i1 %i.ag, label %bb.n, label %_RNvXs_NtCsjbuKeQHxy30_9text_size6traitsReNtB4_7TextLen8text_len.exit.i, !prof !6

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 2, ptr %i.c, align 1
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #24
          to label %.noexc38 unwind label %bb.j

.noexc38:                                         ; preds = %bb.n
  unreachable

_RNvXs_NtCsjbuKeQHxy30_9text_size6traitsReNtB4_7TextLen8text_len.exit.i: ; preds = %bb.m
  %.sroa.6.0.extract.shift.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i to i32
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.ab, align 8, !noundef !5
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_RNvXs_NtCsjbuKeQHxy30_9text_size6traitsReNtB4_7TextLen8text_len.exit.i
  %.sroa.0.0.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i, %_RNvXs_NtCsjbuKeQHxy30_9text_size6traitsReNtB4_7TextLen8text_len.exit.i ], [ %i.ah, %bb.o ]
  %i.ai = add i32 %.sroa.0.0.i, %i.x              ; 2 uses
  %.not.i = icmp ugt i32 %i.x, %i.ai
  br i1 %.not.i, label %bb.q, label %bb.r, !prof !6

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #24
          to label %.noexc39 unwind label %bb.j

.noexc39:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.x, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ai, ptr %.sroa.58.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.q, ptr %.sroa.6.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 24 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !noundef !5
  %i.al = add i32 %i.ak, -1                       ; 2 uses
  store i32 %i.al, ptr %i.aj, align 8
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskKs5foxPL5A_5rowan3api10SyntaxNodeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAEEB1k_.exit40

bb.s:                                             ; preds = %bb.r
  call void @_RNvNtCskKs5foxPL5A_5rowan6cursor4free(ptr noundef nonnull %.sroa.7.0.copyload) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskKs5foxPL5A_5rowan3api10SyntaxNodeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAEEB1k_.exit40

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskKs5foxPL5A_5rowan3api10SyntaxNodeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAEEB1k_.exit40: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.t:                                             ; preds = %bb.ah, %bb.v, %bb.k
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskKs5foxPL5A_5rowan3api10SyntaxNodeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAEEB1k_.exit: ; preds = %bb.ah, %bb.ag, %bb.u, %bb.v, %bb.j, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.ao, %bb.v ], [ %i.ao, %bb.u ], [ %i.r, %bb.j ], [ %i.r, %bb.k ], [ %i.bl, %bb.ag ], [ %i.bl, %bb.ah ]
  resume { ptr, i32 } %.pn.pn

bb.u:                                             ; preds = %bb.ab, %bb.y, %bb.h
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 24 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !noundef !5
  %i.ar = add i32 %i.aq, -1                       ; 2 uses
  store i32 %i.ar, ptr %i.ap, align 4
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskKs5foxPL5A_5rowan3api10SyntaxNodeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAEEB1k_.exit

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCskKs5foxPL5A_5rowan6cursor4free(ptr noundef nonnull %.sroa.7.0.copyload) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskKs5foxPL5A_5rowan3api10SyntaxNodeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAEEB1k_.exit unwind label %bb.t

bb.w:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 32
  %i.au = load i32, ptr %i.at, align 8, !noundef !5 ; 3 uses
  %i.av = load i64, ptr %.sroa.7.0.copyload, align 8, !range !8, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.ax = trunc nuw i64 %i.av to i1
  %i.ay = load ptr, ptr %i.aw, align 8, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.ax, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !noundef !5 ; 2 uses
  %i.bb = icmp ugt i64 %i.ba, 4294967295
  %i.bc = shl nuw i64 %i.ba, 32
  %.sroa.09.0.insert.insert.i.i44 = select i1 %i.bb, i64 513, i64 %i.bc ; 2 uses
  %i.bd = trunc i64 %.sroa.09.0.insert.insert.i.i44 to i1
  br i1 %i.bd, label %bb.y, label %_RNvXs_NtCsjbuKeQHxy30_9text_size6traitsReNtB4_7TextLen8text_len.exit.i45, !prof !6

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 2, ptr %i.b, align 1
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #24
          to label %.noexc48 unwind label %bb.u

.noexc48:                                         ; preds = %bb.y
  unreachable

_RNvXs_NtCsjbuKeQHxy30_9text_size6traitsReNtB4_7TextLen8text_len.exit.i45: ; preds = %bb.x
  %.sroa.6.0.extract.shift.i.i.i46 = lshr i64 %.sroa.09.0.insert.insert.i.i44, 32
  %.sroa.6.0.extract.trunc.i.i.i47 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i46 to i32
  br label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.be = load i32, ptr %i.ay, align 8, !noundef !5
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_RNvXs_NtCsjbuKeQHxy30_9text_size6traitsReNtB4_7TextLen8text_len.exit.i45
  %.sroa.0.0.i42 = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i47, %_RNvXs_NtCsjbuKeQHxy30_9text_size6traitsReNtB4_7TextLen8text_len.exit.i45 ], [ %i.be, %bb.z ]
  %i.bf = add i32 %.sroa.0.0.i42, %i.au           ; 2 uses
  %.not.i43 = icmp ugt i32 %i.au, %i.bf
  br i1 %.not.i43, label %bb.ab, label %bb.ac, !prof !6

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #24
          to label %.noexc49 unwind label %bb.u

.noexc49:                                         ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.aa
  store i64 -9223372036854775806, ptr %0, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.au, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bf, ptr %.sroa.512.0..sroa_idx, align 4
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.p, ptr %.sroa.613.0..sroa_idx, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 24 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !noundef !5
end_hunk_0
begin_hunk_1_@_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsfF8zpZz1lvn_13yara_x_parser:bb.a
  %i.ai = icmp ult i64 %.sroa.0.0, %i.ah
  br i1 %i.ai, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.h
  %.promoted = load i64, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted19 = load i64, ptr %i.aj, align 8
  %.promoted20 = load i64, ptr %i.ak, align 8, !alias.scope !116
  %.promoted22 = load i64, ptr %i.al, align 8, !alias.scope !116
  br label %bb.q

bb.i:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !5
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !117, !noundef !5
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !117, !noundef !5 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !117, !noundef !5
  %i.av = add i64 %i.au, %i.ao                    ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ax = xor i64 %i.aw, %i.as                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.az = xor i64 %i.av, %i.ay                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.bb = add i64 %i.av, %i.ax                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 17)
  %i.be = xor i64 %i.bb, %i.bd
  store i64 %i.be, ptr %i.aq, align 8, !alias.scope !117
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 21)
  %i.bg = xor i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.am, align 8, !alias.scope !117
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  store i64 %i.bh, ptr %i.at, align 8, !alias.scope !117
  %i.bi = xor i64 %i.bc, %i.ad
  store i64 %i.bi, ptr %0, align 8
  br label %bb.h

bb.j:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit
  %i.bj = add i64 %i.e, %2
  br label %bb.r

._crit_edge:                                      ; preds = %bb.q
  store i64 %i.cy, ptr %i.aj, align 8
  store i64 %i.cw, ptr %i.ak, align 8, !alias.scope !116
  store i64 %i.cz, ptr %i.al, align 8, !alias.scope !116
  store i64 %i.da, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.0.1.lcssa = phi i64 [ %i.db, %._crit_edge ], [ %.sroa.0.0, %bb.h ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa
  %.sroa.014.0.copyload.i16 = load i32, ptr %i.bl, align 1, !alias.scope !118
  %i.bm = zext i32 %.sroa.014.0.copyload.i16 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i10 = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %.sroa.0.0.i11 = phi i64 [ %i.bm, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bn = or disjoint i64 %.sroa.03.0.i10, 1
  %i.bo = icmp samesign ult i64 %i.bn, %i.ag
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.sroa.03.0.i10
  %.sroa.015.0.copyload.i15 = load i16, ptr %i.bq, align 1, !alias.scope !118
  %i.br = zext i16 %.sroa.015.0.copyload.i15 to i64
  %i.bs = shl nuw nsw i64 %.sroa.03.0.i10, 3
  %i.bt = shl nuw nsw i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %.sroa.0.0.i11
  %i.bv = or disjoint i64 %.sroa.03.0.i10, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i12 = phi i64 [ %i.bv, %bb.n ], [ %.sroa.03.0.i10, %bb.m ] ; 3 uses
  %.sroa.0.1.i13 = phi i64 [ %i.bu, %bb.n ], [ %.sroa.0.0.i11, %bb.m ] ; 2 uses
  %i.bw = icmp samesign ult i64 %.sroa.03.1.i12, %i.ag
  br i1 %i.bw, label %bb.p, label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17

bb.p:                                             ; preds = %bb.o
  %i.bx = add i64 %.sroa.03.1.i12, %.sroa.0.1.lcssa ; 2 uses
  %i.by = icmp ult i64 %i.bx, %2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !118, !noundef !5
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %.sroa.03.1.i12, 3
  %i.cd = shl nuw nsw i64 %i.cb, %i.cc
  %i.ce = or i64 %i.cd, %.sroa.0.1.i13
  br label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17

_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17: ; preds = %bb.o, %bb.p
  %.sroa.0.2.i14 = phi i64 [ %i.ce, %bb.p ], [ %.sroa.0.1.i13, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i14, ptr %i.cf, align 8
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %i.cg = phi i64 [ %.promoted22, %.lr.ph ], [ %i.cz, %bb.q ]
  %i.ch = phi i64 [ %.promoted20, %.lr.ph ], [ %i.cw, %bb.q ] ; 3 uses
  %i.ci = phi i64 [ %.promoted19, %.lr.ph ], [ %i.cy, %bb.q ]
  %.sroa.0.118 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %i.db, %bb.q ] ; 2 uses
  %i.cj = phi i64 [ %.promoted, %.lr.ph ], [ %i.da, %bb.q ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.118
  %.sroa.07.0.copyload = load i64, ptr %i.ck, align 1 ; 2 uses
  %i.cl = xor i64 %i.ci, %.sroa.07.0.copyload     ; 3 uses
  %i.cm = add i64 %i.ch, %i.cj                    ; 3 uses
  %i.cn = add i64 %i.cg, %i.cl                    ; 2 uses
  %i.co = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 13)
  %i.cp = xor i64 %i.co, %i.cm                    ; 3 uses
  %i.cq = tail call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cr = xor i64 %i.cn, %i.cq                    ; 3 uses
  %i.cs = tail call noundef i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.ct = add i64 %i.cn, %i.cp                    ; 3 uses
  %i.cu = add i64 %i.cr, %i.cs                    ; 2 uses
  %i.cv = tail call noundef i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 17)
  %i.cw = xor i64 %i.ct, %i.cv                    ; 2 uses
  %i.cx = tail call noundef i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 21)
  %i.cy = xor i64 %i.cx, %i.cu                    ; 2 uses
  %i.cz = tail call noundef i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32) ; 2 uses
  %i.da = xor i64 %i.cu, %.sroa.07.0.copyload     ; 2 uses
  %i.db = add nuw i64 %.sroa.0.118, 8             ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.ah
  br i1 %i.dc, label %bb.q, label %._crit_edge

bb.r:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17, %bb.j
  %storemerge = phi i64 [ %i.bj, %bb.j ], [ %i.ag, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17 ]
  store i64 %storemerge, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtCsfF8zpZz1lvn_13yara_x_parser3cstNtB5_3CSTINtNtCskKLDkoKarTP_4core7convert4FromReE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [376 x i8], align 8               ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs_NtCsfF8zpZz1lvn_13yara_x_parser6parserNtB4_6Parser3new(ptr noalias nofree noundef nonnull sret([376 x i8]) align 8 captures(none) dereferenceable(376) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  call void @_RNvXs6_NtCsfF8zpZz1lvn_13yara_x_parser3cstNtB5_3CSTINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB7_6parser6ParserE8try_from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(376) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.d = load i64, ptr %i.c, align 8, !range !9, !alias.scope !123, !noundef !5
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.b, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsfF8zpZz1lvn_13yara_x_parser3cst3CSTNtNtNtB4_3str5error9Utf8ErrorE6unwrapBL_.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !124
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.f, i64 16, i1 false), !noalias !122
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #24, !noalias !124
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsfF8zpZz1lvn_13yara_x_parser3cst3CSTNtNtNtB4_3str5error9Utf8ErrorE6unwrapBL_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false), !alias.scope !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCskKLDkoKarTP_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @27)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtCsfF8zpZz1lvn_13yara_x_parser3cstNtB5_3CSTINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB7_6parser6ParserE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(376) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.7.i.sroa.0.i = alloca [6 x i8], align 2  ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 12 uses
  %i.c = alloca [112 x i8], align 8               ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  %i.h = alloca [8 x i8], align 8                 ; 3 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.22.i = alloca [6 x i8], align 2          ; 7 uses
  %i.k = alloca [488 x i8], align 8               ; 12 uses
  %i.l = alloca [24 x i8], align 8                ; 13 uses
  %i.m = alloca [112 x i8], align 8               ; 16 uses
  %i.n = alloca [488 x i8], align 8               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val2 = load i64, ptr %i.p, align 8, !noundef !5 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %i.n, ptr noundef nonnull align 8 dereferenceable(376) %1, i64 376, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 464
  store ptr %.val, ptr %i.q, align 8, !alias.scope !148
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 472
  store i64 %.val2, ptr %i.r, align 8, !alias.scope !148
  %.sroa.01.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 376
  store i64 -2, ptr %.sroa.01.sroa.4.0..sroa_idx.i, align 8, !alias.scope !148
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 408
  store i64 0, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !148
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 416
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !148
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 424
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 440
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !148
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !148
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 448
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 480
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !148
  store i16 257, ptr %i.s, align 8, !alias.scope !148
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 482
  store i8 1, ptr %i.t, align 2, !alias.scope !148
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !150
  invoke void @_RNvMNtNtCskKs5foxPL5A_5rowan5green7builderNtB2_16GreenNodeBuilder3new(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.m)
          to label %bb.b unwind label %bb.bd, !noalias !150

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !150
  store i64 0, ptr %i.l, align 8, !noalias !150
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.u, align 8, !noalias !150
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  store i64 0, ptr %i.v, align 8, !noalias !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %i.k, ptr noundef nonnull align 8 dereferenceable(488) %i.n, i64 488, i1 false), !noalias !149
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.630.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 481
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 480
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 482
  %.sroa.7.i.sroa.7.0..sroa.630.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.724.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 26
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.af, %bb.b
  %.sroa.519.0.i = phi i32 [ undef, %bb.b ], [ %.sroa.519.1.i, %bb.af ] ; 5 uses
  %.sroa.018.0.i = phi i1 [ false, %bb.b ], [ %.sroa.018.1.i, %bb.af ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !152
  invoke void @_RNvXs_NtNtCsfF8zpZz1lvn_13yara_x_parser3cst12error_mergerINtB4_11ErrorMergerNtNtB8_6parser6ParserENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB8_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %i.k)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !153

.noexc.i:                                         ; preds = %bb.c
  %i.aj = load i64, ptr %i.b, align 8, !range !154, !noalias !152, !noundef !5 ; 2 uses
  %.not49.i.i = icmp eq i64 %i.aj, -1
  br i1 %.not49.i.i, label %.loopexit140.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc.i, %.noexc53.i
  %i.ak = phi i64 [ %i.at, %.noexc53.i ], [ %i.aj, %.noexc.i ] ; 4 uses
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !152 ; 5 uses
  %.sroa.5.0.copyload.i.i = load i16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !152 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7.i.sroa.0.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.630.0..sroa_idx.i.i, i64 6, i1 false), !noalias !152
  %i.al = load <2 x i32>, ptr %.sroa.7.i.sroa.7.0..sroa.630.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !152
  %i.am = icmp eq i64 %i.ak, -9223372036854775806
  br i1 %i.am, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.lr.ph.i.i
  switch i16 %.sroa.5.0.copyload.i.i, label %.thread221.i [
    i16 80, label %bb.e
    i16 81, label %bb.f
    i16 82, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.an = load i8, ptr %i.y, align 2, !range !11, !alias.scope !151, !noalias !150, !noundef !5
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %.thread118.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventEBF_.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.ap = load i8, ptr %i.x, align 8, !range !11, !alias.scope !151, !noalias !150, !noundef !5
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %.thread118.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventEBF_.exit.i.i

bb.g:                                             ; preds = %bb.d
  %i.ar = load i8, ptr %i.w, align 1, !range !11, !alias.scope !151, !noalias !150, !noundef !5
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %.thread118.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventEBF_.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventEBF_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !152
  invoke void @_RNvXs_NtNtCsfF8zpZz1lvn_13yara_x_parser3cst12error_mergerINtB4_11ErrorMergerNtNtB8_6parser6ParserENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB8_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %i.k)
          to label %.noexc53.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !153

.noexc53.i:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventEBF_.exit.i.i
  %i.at = load i64, ptr %i.b, align 8, !range !154, !noalias !152, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i64 %i.at, -1
  br i1 %.not.i.i, label %.loopexit140.i, label %.lr.ph.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventEBF_.exit.i.i, %bb.ap, %bb.al, %bb.y, %bb.v, %bb.c, %bb.am, %bb.ai, %bb.x
  %lpad.loopexit.split-lp133 = landingpad { ptr, i32 }
          cleanup
  br label %.body59.i

.body59.i:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.as, %bb.ad, %bb.aa
  %eh.lpad-body60.i = phi { ptr, i32 } [ %i.ct, %bb.ad ], [ %i.ck, %bb.aa ], [ %i.do, %bb.as ], [ %lpad.loopexit.split-lp133, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtBG_6parser6ParserEEBG_(ptr noalias nofree noundef align 8 dereferenceable(488) %i.k) #20
          to label %.body.i unwind label %bb.bc, !noalias !150

.thread118.i:                                     ; preds = %bb.g, %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.22.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7.i.sroa.0.i, i64 6, i1 false), !noalias !155
  br label %.thread221.i

bb.h:                                             ; preds = %.lr.ph.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.22.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7.i.sroa.0.i, i64 6, i1 false), !noalias !155
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.sroa.0.i)
  %i.au = icmp slt i64 %i.ak, 0
  br i1 %i.au, label %bb.i, label %.thread126.i

bb.i:                                             ; preds = %bb.h
  %i.av = and i64 %i.ak, 9223372036854775807
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.u, label %bb.w

.loopexit140.i:                                   ; preds = %.noexc.i, %.noexc53.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22.i)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtBG_6parser6ParserEEBG_(ptr noalias nofree noundef align 8 dereferenceable(488) %i.k)
          to label %bb.k unwind label %bb.j, !noalias !150

.body.i:                                          ; preds = %bb.n, %bb.j, %.body59.i
  %.sroa.027.0.i = phi i1 [ true, %.body59.i ], [ %.sroa.027.1.i, %bb.j ], [ false, %bb.n ]
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body60.i, %.body59.i ], [ %i.ax, %bb.j ], [ %.pn.i.i, %bb.n ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtCsfF8zpZz1lvn_13yara_x_parser4SpanNtNtBG_6string6StringEEEB1b_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #20
          to label %bb.az unwind label %bb.bc, !noalias !150

bb.j:                                             ; preds = %bb.ao, %bb.r, %.loopexit140.i
  %.sroa.027.1.i = phi i1 [ true, %bb.ao ], [ false, %bb.r ], [ true, %.loopexit140.i ]
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.k:                                             ; preds = %.loopexit140.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.m, i64 112, i1 false), !noalias !150
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !157
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !156, !noalias !150, !noundef !5 ; 3 uses
  store i64 %i.az, ptr %i.a, align 8, !noalias !157
  %i.ba = icmp ult i64 %i.az, 384307168202282326
  call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp eq i64 %i.az, 1
  br i1 %i.bb, label %bb.m, label %bb.l, !prof !12

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @5, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #23
          to label %bb.p unwind label %bb.o, !noalias !157

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !157
  store i64 0, ptr %i.ay, align 8, !alias.scope !156, !noalias !150
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !156, !noalias !150, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.46.0.copyload.i.i = load i64, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !157
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.sroa.57.0.copyload.i.i = load ptr, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !noalias !157 ; 3 uses
  %i.be = trunc nuw i64 %.sroa.46.0.copyload.i.i to i1
  br i1 %i.be, label %bb.q, label %bb.r, !prof !6

bb.n:                                             ; preds = %bb.s, %bb.o
  %.pn.i.i = phi { ptr, i32 } [ %i.bf, %bb.o ], [ %i.bg, %bb.s ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskKs5foxPL5A_5rowan5green7builder16GreenNodeBuilderECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.c) #20
          to label %.body.i unwind label %bb.t, !noalias !150

bb.o:                                             ; preds = %bb.l
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.q, %bb.l
  unreachable

bb.q:                                             ; preds = %bb.m
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #23
          to label %bb.p unwind label %bb.s, !noalias !157

bb.r:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0.copyload.i.i) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskKs5foxPL5A_5rowan5green7builder16GreenNodeBuilderECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.c)
          to label %_RNvMNtNtCskKs5foxPL5A_5rowan5green7builderNtB2_16GreenNodeBuilder6finish.exit.i unwind label %bb.j, !noalias !150

bb.s:                                             ; preds = %bb.q
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskKs5foxPL5A_5rowan13utility_types11NodeOrTokenNtNtNtBG_5green4node9GreenNodeNtNtB1w_5token10GreenTokenEECsfF8zpZz1lvn_13yara_x_parser(i64 1, ptr %.sroa.57.0.copyload.i.i) #20
          to label %bb.n unwind label %bb.t, !noalias !157

bb.t:                                             ; preds = %bb.s, %bb.n
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_1
