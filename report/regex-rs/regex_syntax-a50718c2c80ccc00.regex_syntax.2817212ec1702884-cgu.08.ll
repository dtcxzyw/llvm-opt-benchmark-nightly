Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.08?download=true
inline.NumInlined: 149
inline.NumDeleted: 41
begin_hunk_0_@_RNvXsr_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_3AstNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop:bb.a
  %i.bg = load i64, ptr %i.ah, align 8, !dbg !5759, !alias.scope !5661, !noundef !464 ; 3 uses
    #dbg_value(i64 %i.bg, !5667, !DIExpression(), !5362)
    #dbg_value(i64 %i.bg, !5680, !DIExpression(), !5365)
    #dbg_value(ptr %i.f, !5678, !DIExpression(), !5366)
  %i.bh = load i64, ptr %i.f, align 8, !dbg !5760, !range !1332, !alias.scope !5661, !noundef !464
  %i.bi = icmp eq i64 %i.bg, %i.bh, !dbg !5761
  br i1 %i.bi, label %bb.v, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstE8push_mutBJ_.exit, !dbg !5761

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstE8push_mutBJ_.exit unwind label %bb.w, !dbg !5762, !inline_history !5367

bb.w:                                             ; preds = %bb.v
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b) #16
          to label %.body unwind label %bb.x, !dbg !5763, !inline_history !5367

bb.x:                                             ; preds = %bb.w
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #14, !dbg !5764, !inline_history !5367
  unreachable, !dbg !5764

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstE8push_mutBJ_.exit: ; preds = %bb.u, %bb.v
  %i.bl = load ptr, ptr %i.ag, align 8, !dbg !5765, !alias.scope !5661, !nonnull !464, !noundef !464
    #dbg_value(ptr %i.bl, !5683, !DIExpression(), !5365)
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bg, !dbg !5766 ; 2 uses
    #dbg_value(ptr %i.bm, !5668, !DIExpression(), !5374)
    #dbg_value(ptr %i.bm, !5685, !DIExpression(), !5377)
    #dbg_value(i64 %i.bd, !5688, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5377)
    #dbg_value(ptr %i.bf, !5688, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5377)
  store i64 %i.bd, ptr %i.bm, align 8, !dbg !5767
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8, !dbg !5767
  store ptr %i.bf, ptr %i.bn, align 8, !dbg !5767
  %i.bo = add i64 %i.bg, 1, !dbg !5768
  store i64 %i.bo, ptr %i.ah, align 8, !dbg !5768, !alias.scope !5661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5769
  br label %bb.p, !dbg !5769

bb.y:                                             ; preds = %bb.r
    #dbg_value(ptr %_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed110, !1231, !DIExpression(), !5378)
    #dbg_value(i64 0, !5434, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5647)
    #dbg_value(ptr %_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed110, !5434, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5647)
  %i.bp = load i64, ptr %i.bb, align 8, !dbg !5770, !range !1132, !noundef !464 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 8, !dbg !5770 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !dbg !5770, !noundef !464 ; 2 uses
    #dbg_value(i64 %i.bp, !5634, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5645)
    #dbg_value(ptr %i.br, !5634, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5645)
  store i64 0, ptr %i.bb, align 8, !dbg !5771
  store ptr %_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed110, ptr %i.bq, align 8, !dbg !5771
  call void @llvm.experimental.noalias.scope.decl(metadata !5690), !dbg !5772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.bp, ptr %i.a, align 8, !noalias !5690
  store ptr %i.br, ptr %i.aj, align 8, !noalias !5690
    #dbg_value(ptr %i.f, !5662, !DIExpression(), !5382)
    #dbg_value(ptr %i.f, !5670, !DIExpression(), !5384)
    #dbg_declare(ptr %i.a, !5666, !DIExpression(), !5385)
    #dbg_value(i64 16, !5675, !DIExpression(), !5388)
  %i.bs = load i64, ptr %i.ah, align 8, !dbg !5773, !alias.scope !5690, !noundef !464 ; 3 uses
    #dbg_value(i64 %i.bs, !5667, !DIExpression(), !5389)
    #dbg_value(i64 %i.bs, !5680, !DIExpression(), !5391)
    #dbg_value(ptr %i.f, !5678, !DIExpression(), !5392)
  %i.bt = load i64, ptr %i.f, align 8, !dbg !5774, !range !1332, !alias.scope !5690, !noundef !464
  %i.bu = icmp eq i64 %i.bs, %i.bt, !dbg !5775
  br i1 %i.bu, label %bb.z, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstE8push_mutBJ_.exit87, !dbg !5775

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstE8push_mutBJ_.exit87 unwind label %bb.aa, !dbg !5776, !inline_history !5367

bb.aa:                                            ; preds = %bb.z
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #16
          to label %.body unwind label %bb.ab, !dbg !5777, !inline_history !5367

bb.ab:                                            ; preds = %bb.aa
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #14, !dbg !5778, !inline_history !5367
  unreachable, !dbg !5778

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstE8push_mutBJ_.exit87: ; preds = %bb.y, %bb.z
  %i.bx = load ptr, ptr %i.ag, align 8, !dbg !5779, !alias.scope !5690, !nonnull !464, !noundef !464
    #dbg_value(ptr %i.bx, !5683, !DIExpression(), !5391)
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.bs, !dbg !5780 ; 2 uses
    #dbg_value(ptr %i.by, !5668, !DIExpression(), !5396)
    #dbg_value(ptr %i.by, !5685, !DIExpression(), !5398)
    #dbg_value(i64 %i.bp, !5688, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5398)
    #dbg_value(ptr %i.br, !5688, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5398)
  store i64 %i.bp, ptr %i.by, align 8, !dbg !5781
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8, !dbg !5781
  store ptr %i.br, ptr %i.bz, align 8, !dbg !5781
  %i.ca = add i64 %i.bs, 1, !dbg !5782
  store i64 %i.ca, ptr %i.ah, align 8, !dbg !5782, !alias.scope !5690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5783
  br label %bb.p, !dbg !5783

bb.ac:                                            ; preds = %bb.s
  invoke void @_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstE14extend_trustedINtNtB6_5drain5DrainBG_EEBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.d)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !5784

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !5785
  br label %bb.p, !dbg !5786

bb.ae:                                            ; preds = %bb.t
  invoke void @_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstE14extend_trustedINtNtB6_5drain5DrainBG_EEBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !5787

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !5788
  br label %bb.p, !dbg !5789

bb.ag:                                            ; preds = %bb.ah, %.body
  %.pn = phi { ptr, i32 } [ %i.cb, %bb.ah ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #16
          to label %common.resume unwind label %bb.aj, !dbg !5729

bb.ah:                                            ; preds = %bb.p
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ai:                                            ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !5740
  %.pr = load i64, ptr %i.ah, align 8, !dbg !5725 ; 2 uses
    #dbg_value(ptr %i.f, !5535, !DIExpression(), !5602)
    #dbg_value(ptr %i.f, !5537, !DIExpression(), !5603)
    #dbg_value(ptr %i.f, !5604, !DIExpression(), !5607)
    #dbg_value(ptr %i.f, !5561, !DIExpression(), !5609)
  %i.cc = icmp eq i64 %.pr, 0, !dbg !5725
  br i1 %i.cc, label %bb.l, label %bb.o, !dbg !5725

bb.aj:                                            ; preds = %bb.ag, %.body
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #14, !dbg !5790
  unreachable, !dbg !5790
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXss_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_8ClassSetNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 captures(none) dereferenceable(160) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5805 {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 4 uses
  %i.b = alloca [160 x i8], align 8               ; 5 uses
  %i.c = alloca [160 x i8], align 8               ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [160 x i8], align 8               ; 10 uses
  %i.g = alloca [160 x i8], align 8               ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 15 uses
    #dbg_value(ptr %0, !5940, !DIExpression(), !5959)
    #dbg_value(ptr %0, !5960, !DIExpression(), !5966)
    #dbg_declare(ptr %i.h, !5948, !DIExpression(), !5967)
    #dbg_declare(ptr %i.f, !5949, !DIExpression(), !5968)
    #dbg_declare(ptr poison, !5969, !DIExpression(), !5976)
    #dbg_declare(ptr %i.e, !5977, !DIExpression(), !6009)
    #dbg_declare(ptr %i.e, !6010, !DIExpression(), !6015)
    #dbg_declare(ptr %i.d, !6017, !DIExpression(), !6029)
    #dbg_declare(ptr %i.c, !5969, !DIExpression(), !6031)
    #dbg_declare(ptr %i.b, !5969, !DIExpression(), !6033)
    #dbg_declare(ptr poison, !5946, !DIExpression(), !6034)
    #dbg_declare(ptr poison, !6035, !DIExpression(), !6052)
    #dbg_declare(ptr poison, !6070, !DIExpression(), !6080)
    #dbg_value(i64 160, !6081, !DIExpression(), !6088)
    #dbg_declare(ptr poison, !6023, !DIExpression(), !6113)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !6245 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !dbg !6245, !range !1144, !noundef !464 ; 4 uses
  %i.k = icmp eq i32 %i.j, -1, !dbg !6245
  br i1 %i.k, label %bb.b, label %bb.c, !dbg !6246

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !5945, !DIExpression(), !6114)
  %i.l = load ptr, ptr %0, align 8, !dbg !6247, !nonnull !464, !noundef !464
    #dbg_value(ptr %i.l, !6115, !DIExpression(), !6122)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 152, !dbg !6248
  %i.n = load i32, ptr %i.m, align 8, !dbg !6248, !range !1144, !noundef !464 ; 3 uses
  %i.o = icmp eq i32 %i.n, -1, !dbg !6248
  br i1 %i.o, label %bb.h, label %bb.j, !dbg !6249

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !5941, !DIExpression(), !6123)
  %i.p = icmp ne i32 %i.j, 1114114, !dbg !6250
  tail call void @llvm.assume(i1 %i.p), !dbg !6250
  %i.q = add nsw i32 %i.j, -1114112, !dbg !6250
  %i.r = icmp samesign ugt i32 %i.j, 1114111, !dbg !6250
  %narrow = select i1 %i.r, i32 %i.q, i32 2, !dbg !6250
  switch i32 %narrow, label %.loopexit [
    i32 0, label %bb.d
    i32 1, label %bb.d
    i32 2, label %bb.d
    i32 3, label %bb.d
    i32 4, label %bb.d
    i32 5, label %bb.d
    i32 6, label %bb.e
    i32 7, label %bb.f
  ], !dbg !6251

.loopexit:                                        ; preds = %bb.u, %bb.c
  unreachable, !dbg !6252

bb.d:                                             ; preds = %bb.l, %bb.f, %bb.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast8ClassSetEEB1c_.exit, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  ret void, !dbg !6253

bb.e:                                             ; preds = %bb.c
    #dbg_value(ptr %0, !5942, !DIExpression(), !6125)
  %i.s = load ptr, ptr %0, align 8, !dbg !6254, !nonnull !464, !noundef !464
    #dbg_value(ptr %i.s, !6115, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !6127)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 200, !dbg !6255
  %i.u = load i32, ptr %i.t, align 8, !dbg !6255, !range !1144, !noundef !464 ; 3 uses
  %i.v = icmp eq i32 %i.u, -1, !dbg !6255
  br i1 %i.v, label %bb.h, label %bb.g, !dbg !6256

bb.f:                                             ; preds = %bb.c
    #dbg_value(ptr %0, !5943, !DIExpression(), !6128)
    #dbg_value(ptr %0, !6129, !DIExpression(), !6132)
    #dbg_value(ptr %0, !6133, !DIExpression(), !6136)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6257
  %i.x = load i64, ptr %i.w, align 8, !dbg !6257, !noundef !464 ; 2 uses
  %i.y = icmp ult i64 %i.x, 57646075230342349, !dbg !6258
  tail call void @llvm.assume(i1 %i.y), !dbg !6259
  %i.z = icmp eq i64 %i.x, 0, !dbg !6260
  br i1 %i.z, label %bb.d, label %bb.h, !dbg !6261

bb.g:                                             ; preds = %bb.e
  %i.aa = icmp ne i32 %i.u, 1114114, !dbg !6255
  tail call void @llvm.assume(i1 %i.aa), !dbg !6255
  %i.ab = icmp eq i32 %i.u, 1114112, !dbg !6256
  br i1 %i.ab, label %bb.d, label %bb.h, !dbg !6254

bb.h:                                             ; preds = %bb.k, %bb.j, %bb.l, %bb.b, %bb.f, %bb.g, %bb.e
    #dbg_value(ptr poison, !5947, !DIExpression(), !6137)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !6262
    #dbg_value(i64 8, !1146, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5839)
    #dbg_value(i64 8, !1162, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5841)
    #dbg_value(i64 8, !1180, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5843)
    #dbg_value(i64 160, !1146, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5839)
    #dbg_value(i64 160, !1162, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5841)
    #dbg_value(i64 160, !1180, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5843)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !1178, !DIExpression(), !5841)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !1184, !DIExpression(), !5843)
    #dbg_value(i8 0, !1185, !DIExpression(), !5843)
    #dbg_value(i64 8, !1187, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5845)
    #dbg_value(i64 8, !1210, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5847)
    #dbg_value(i64 160, !1187, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5845)
    #dbg_value(i64 160, !1210, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5847)
    #dbg_value(i1 false, !1191, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5845)
    #dbg_value(i64 160, !1192, !DIExpression(), !5848)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !dbg !6263
  %i.ac = tail call noundef align 8 dereferenceable_or_null(160) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 217) 160, i64 noundef 8) #15, !dbg !6264 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null, !dbg !6265
  br i1 %i.ad, label %bb.i, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !dbg !6266, !prof !1213

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 160) #17, !dbg !6267
  unreachable, !dbg !6267

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.h
    #dbg_value(ptr %i.ac, !6068, !DIExpression(), !6141)
    #dbg_value(i64 0, !5963, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6143)
    #dbg_value(i64 0, !5963, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6145)
    #dbg_value(i64 0, !5963, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6147)
    #dbg_value(i64 0, !5963, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5966)
    #dbg_value(i64 0, !5963, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6143)
    #dbg_value(i64 0, !5963, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6145)
    #dbg_value(i64 0, !5963, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6147)
    #dbg_value(i64 0, !5963, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5966)
    #dbg_value(i64 0, !5963, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6143)
    #dbg_value(i64 0, !5963, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6145)
    #dbg_value(i64 0, !5963, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6147)
    #dbg_value(i64 0, !5963, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5966)
    #dbg_value(i64 0, !5963, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6143)
    #dbg_value(i64 0, !5963, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6145)
    #dbg_value(i64 0, !5963, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6147)
    #dbg_value(i64 0, !5963, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5966)
    #dbg_value(i64 0, !5963, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !6143)
    #dbg_value(i64 0, !5963, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !6145)
    #dbg_value(i64 0, !5963, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !6147)
    #dbg_value(i64 0, !5963, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !5966)
    #dbg_value(i64 0, !5963, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !6143)
    #dbg_value(i64 0, !5963, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !6145)
    #dbg_value(i64 0, !5963, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !6147)
    #dbg_value(i64 0, !5963, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !5966)
    #dbg_value(i32 1114112, !5963, !DIExpression(DW_OP_LLVM_fragment, 1216, 32), !5966)
    #dbg_value(i32 1114112, !5963, !DIExpression(DW_OP_LLVM_fragment, 1216, 32), !6147)
    #dbg_value(i32 1114112, !5963, !DIExpression(DW_OP_LLVM_fragment, 1216, 32), !6145)
    #dbg_value(i32 1114112, !5963, !DIExpression(DW_OP_LLVM_fragment, 1216, 32), !6143)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ac, ptr noundef nonnull align 8 dereferenceable(160) %0, i64 160, i1 false), !dbg !6268
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !dbg !6269
  store i32 1114112, ptr %i.i, align 8, !dbg !6269
    #dbg_value(ptr %i.ac, !6042, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6148)
    #dbg_value(i64 1, !6042, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6148)
    #dbg_value(i64 1, !6043, !DIExpression(), !6149)
    #dbg_value(i64 1, !6076, !DIExpression(), !6150)
    #dbg_value(i64 1, !6077, !DIExpression(), !6150)
    #dbg_value(ptr %i.ac, !6044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6151)
    #dbg_value(i64 1, !6044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6151)
    #dbg_value(ptr %i.ac, !6075, !DIExpression(), !6150)
  store i64 1, ptr %i.h, align 8, !dbg !6270
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !6270 ; 4 uses
  store ptr %i.ac, ptr %i.ae, align 8, !dbg !6270
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !6270 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !6271
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.p, !dbg !6272

bb.j:                                             ; preds = %bb.b
  %i.ai = icmp ne i32 %i.n, 1114114, !dbg !6248
  tail call void @llvm.assume(i1 %i.ai), !dbg !6248
  %i.aj = icmp eq i32 %i.n, 1114112, !dbg !6249
  br i1 %i.aj, label %bb.k, label %bb.h, !dbg !6247

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6273
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !6273, !nonnull !464, !noundef !464
    #dbg_value(ptr %i.al, !6115, !DIExpression(), !6153)
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 152, !dbg !6274
  %i.an = load i32, ptr %i.am, align 8, !dbg !6274, !range !1144, !noundef !464 ; 3 uses
  %i.ao = icmp eq i32 %i.an, -1, !dbg !6274
  br i1 %i.ao, label %bb.h, label %bb.l, !dbg !6275

bb.l:                                             ; preds = %bb.k
  %i.ap = icmp ne i32 %i.an, 1114114, !dbg !6274
  tail call void @llvm.assume(i1 %i.ap), !dbg !6274
  %i.aq = icmp eq i32 %i.an, 1114112, !dbg !6275
  br i1 %i.aq, label %bb.d, label %bb.h, !dbg !6273

bb.m:                                             ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !6276
    #dbg_value(ptr %i.h, !796, !DIExpression(), !5850)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast8ClassSetENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast8ClassSetEEB1c_.exit unwind label %bb.n, !dbg !6277

bb.n:                                             ; preds = %bb.m
  %i.ar = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.h, !801, !DIExpression(), !5852)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast8ClassSetENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.o, !dbg !6278

bb.o:                                             ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #14, !dbg !6277
  unreachable, !dbg !6277

common.resume:                                    ; preds = %bb.ag, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.ar, %bb.n ], [ %.pn, %bb.ag ]
  resume { ptr, i32 } %common.resume.op, !dbg !5959

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast8ClassSetEEB1c_.exit: ; preds = %bb.m
    #dbg_value(ptr %i.h, !801, !DIExpression(), !5854)
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast8ClassSetENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h), !dbg !6279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !6280
  br label %bb.d, !dbg !6253

bb.p:                                             ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, %bb.ai
  %i.at = phi i64 [ 1, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit ], [ %.pr, %bb.ai ] ; 3 uses
  %i.au = add nsw i64 %i.at, -1, !dbg !6281       ; 3 uses
  store i64 %i.au, ptr %i.af, align 8, !dbg !6281
  %i.av = load i64, ptr %i.h, align 8, !dbg !6282, !range !1332, !noundef !464
  %i.aw = icmp samesign ult i64 %i.au, %i.av, !dbg !6283
    #dbg_value(i1 true, !6154, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6157)
  call void @llvm.assume(i1 %i.aw), !dbg !6284
  %i.ax = load ptr, ptr %i.ae, align 8, !dbg !6285, !nonnull !464, !noundef !464
    #dbg_value(ptr %i.ax, !6177, !DIExpression(), !6183)
    #dbg_value(i64 %i.au, !6180, !DIExpression(), !6183)
  %i.ay = icmp samesign ult i64 %i.at, 57646075230342350, !dbg !6286
  call void @llvm.assume(i1 %i.ay), !dbg !6287
  %i.az = getelementptr inbounds nuw [160 x i8], ptr %i.ax, i64 %i.au, !dbg !6288 ; 2 uses
    #dbg_value(ptr %i.az, !6188, !DIExpression(), !6193)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.g, ptr noundef nonnull align 8 dereferenceable(160) %i.az, i64 160, i1 false), !dbg !6289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !5968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.f, ptr noundef nonnull align 8 dereferenceable(160) %i.g, i64 160, i1 false), !dbg !5968
  %i.ba = load i32, ptr %i.ag, align 8, !dbg !6290, !range !1144, !noundef !464 ; 4 uses
  %i.bb = icmp eq i32 %i.ba, -1, !dbg !6290
  br i1 %i.bb, label %bb.q, label %bb.u, !dbg !6291

bb.q:                                             ; preds = %bb.p
    #dbg_value(ptr %i.f, !5953, !DIExpression(), !6194)
    #dbg_value(ptr %i.h, !5973, !DIExpression(), !6195)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !6144
  %i.bc = load ptr, ptr %i.f, align 8, !dbg !6292, !nonnull !464, !noundef !464 ; 3 uses
    #dbg_value(ptr %i.bc, !5960, !DIExpression(), !6145)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef nonnull align 8 dereferenceable(160) %i.bc, i64 160, i1 false), !dbg !6293
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.bc, i64 152, !dbg !6294
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bc, i8 0, i64 48, i1 false), !dbg !6294
  store i32 1114112, ptr %.sroa.5.0..sroa_idx2, align 8, !dbg !6294
    #dbg_value(ptr %i.h, !6196, !DIExpression(), !5867)
    #dbg_value(ptr %i.h, !6204, !DIExpression(), !5870)
    #dbg_declare(ptr %i.c, !6200, !DIExpression(), !5871)
    #dbg_declare(ptr poison, !6209, !DIExpression(), !5874)
    #dbg_value(i64 160, !6214, !DIExpression(), !5879)
  %i.bd = load i64, ptr %i.af, align 8, !dbg !6295, !alias.scope !6219, !noundef !464 ; 3 uses
    #dbg_value(i64 %i.bd, !6201, !DIExpression(), !5882)
    #dbg_value(i64 %i.bd, !6220, !DIExpression(), !5885)
    #dbg_value(ptr %i.h, !6217, !DIExpression(), !5886)
  %i.be = load i64, ptr %i.h, align 8, !dbg !6296, !range !1332, !alias.scope !6219, !noundef !464
  %i.bf = icmp eq i64 %i.bd, %i.be, !dbg !6297
  br i1 %i.bf, label %bb.r, label %bb.ab, !dbg !6297

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast8ClassSetE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.ab unwind label %bb.s, !dbg !6298, !noalias !6225, !inline_history !5888

bb.s:                                             ; preds = %bb.r
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast8ClassSetEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.c) #16
          to label %.body unwind label %bb.t, !dbg !6299, !inline_history !5888

bb.t:                                             ; preds = %bb.s
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #14, !dbg !6300, !inline_history !5888
  unreachable, !dbg !6300

bb.u:                                             ; preds = %bb.p
    #dbg_value(ptr %i.f, !5950, !DIExpression(), !6226)
  %i.bi = icmp ne i32 %i.ba, 1114114, !dbg !6301
  call void @llvm.assume(i1 %i.bi), !dbg !6301
  %i.bj = add nsw i32 %i.ba, -1114112, !dbg !6301
  %i.bk = icmp samesign ugt i32 %i.ba, 1114111, !dbg !6301
  %narrow104 = select i1 %i.bk, i32 %i.bj, i32 2, !dbg !6301
  switch i32 %narrow104, label %.loopexit [
    i32 0, label %bb.v
    i32 1, label %bb.v
    i32 2, label %bb.v
    i32 3, label %bb.v
    i32 4, label %bb.v
    i32 5, label %bb.v
    i32 6, label %bb.y
    i32 7, label %bb.w
  ], !dbg !6302

bb.v:                                             ; preds = %bb.af, %bb.aa, %bb.y, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast8ClassSetEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.f)
          to label %bb.ai unwind label %bb.ah, !dbg !6276

bb.w:                                             ; preds = %bb.u
    #dbg_value(ptr %i.f, !5952, !DIExpression(), !6227)
    #dbg_value(ptr %i.h, !6004, !DIExpression(), !6228)
    #dbg_value(ptr %i.h, !6011, !DIExpression(), !6229)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !6303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !6303
  invoke void @_RINvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemE5drainNtNtNtCsj6eKBz9Db1c_4core3ops5range9RangeFullEBJ_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.z unwind label %bb.x, !dbg !6304

bb.x:                                             ; preds = %bb.z, %bb.w
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !6276

.body:                                            ; preds = %bb.ad, %bb.x, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.s ], [ %i.bl, %bb.x ], [ %i.bv, %bb.ad ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast8ClassSetEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.f) #16
          to label %bb.ag unwind label %bb.aj, !dbg !6276

bb.y:                                             ; preds = %bb.u
    #dbg_value(ptr %i.f, !5951, !DIExpression(), !6230)
    #dbg_value(ptr %i.h, !5973, !DIExpression(), !6231)
  %i.bm = load ptr, ptr %i.f, align 8, !dbg !6305, !nonnull !464, !noundef !464 ; 2 uses
    #dbg_value(ptr %i.bm, !5960, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !6232)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48, !dbg !6306 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef nonnull align 8 dereferenceable(160) %i.bn, i64 160, i1 false), !dbg !6306
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.bm, i64 200, !dbg !6308
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bn, i8 0, i64 48, i1 false), !dbg !6308
  store i32 1114112, ptr %.sroa.5.0..sroa_idx4, align 8, !dbg !6308
    #dbg_value(ptr %i.h, !6196, !DIExpression(), !5890)
    #dbg_value(ptr %i.h, !6204, !DIExpression(), !5892)
    #dbg_declare(ptr poison, !6200, !DIExpression(), !5893)
    #dbg_declare(ptr %i.a, !6209, !DIExpression(), !5895)
    #dbg_value(i64 160, !6214, !DIExpression(), !5898)
    #dbg_value(i64 %i.au, !6201, !DIExpression(), !5899)
    #dbg_value(i64 %i.au, !6220, !DIExpression(), !5901)
    #dbg_value(ptr %i.h, !6217, !DIExpression(), !5902)
    #dbg_value(ptr %i.ax, !6223, !DIExpression(), !5901)
    #dbg_value(ptr %i.az, !6202, !DIExpression(), !5903)
    #dbg_value(ptr %i.az, !6212, !DIExpression(), !5904)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.az, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false), !dbg !6309, !noalias !6233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6310
  store i64 %i.at, ptr %i.af, align 8, !dbg !6311, !alias.scope !6234
  br label %bb.v, !dbg !6312

bb.z:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !dbg !6313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !6314
  invoke void @_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast8ClassSetE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB6_5drain5DrainNtBI_12ClassSetItemENcNtBG_4Item0EEBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.e)
          to label %bb.aa unwind label %bb.x, !dbg !6315

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !6316
  br label %bb.v, !dbg !6317

bb.ab:                                            ; preds = %bb.r, %bb.q
  %i.bo = load ptr, ptr %i.ae, align 8, !dbg !6318, !alias.scope !6219, !nonnull !464, !noundef !464
    #dbg_value(ptr %i.bo, !6223, !DIExpression(), !5885)
  %i.bp = getelementptr inbounds nuw [160 x i8], ptr %i.bo, i64 %i.bd, !dbg !6319
    #dbg_value(ptr %i.bp, !6202, !DIExpression(), !5915)
    #dbg_value(ptr %i.bp, !6212, !DIExpression(), !5916)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.bp, ptr noundef nonnull align 8 dereferenceable(160) %i.c, i64 160, i1 false), !dbg !6320, !noalias !464
  %i.bq = add i64 %i.bd, 1, !dbg !6321
  store i64 %i.bq, ptr %i.af, align 8, !dbg !6321, !alias.scope !6219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6322
    #dbg_value(ptr %i.h, !5973, !DIExpression(), !6238)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6142
  %i.br = load ptr, ptr %i.ah, align 8, !dbg !6323, !nonnull !464, !noundef !464 ; 3 uses
    #dbg_value(ptr %i.br, !5960, !DIExpression(), !6143)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.b, ptr noundef nonnull align 8 dereferenceable(160) %i.br, i64 160, i1 false), !dbg !6324
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.br, i64 152, !dbg !6325
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.br, i8 0, i64 48, i1 false), !dbg !6325
  store i32 1114112, ptr %.sroa.5.0..sroa_idx6, align 8, !dbg !6325
    #dbg_value(ptr %i.h, !6196, !DIExpression(), !5918)
    #dbg_value(ptr %i.h, !6204, !DIExpression(), !5920)
    #dbg_declare(ptr %i.b, !6200, !DIExpression(), !5921)
    #dbg_declare(ptr poison, !6209, !DIExpression(), !5923)
    #dbg_value(i64 160, !6214, !DIExpression(), !5926)
  %i.bs = load i64, ptr %i.af, align 8, !dbg !6326, !alias.scope !6239, !noundef !464 ; 3 uses
    #dbg_value(i64 %i.bs, !6201, !DIExpression(), !5929)
    #dbg_value(i64 %i.bs, !6220, !DIExpression(), !5931)
    #dbg_value(ptr %i.h, !6217, !DIExpression(), !5932)
  %i.bt = load i64, ptr %i.h, align 8, !dbg !6327, !range !1332, !alias.scope !6239, !noundef !464
  %i.bu = icmp eq i64 %i.bs, %i.bt, !dbg !6328
  br i1 %i.bu, label %bb.ac, label %bb.af, !dbg !6328

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast8ClassSetE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.af unwind label %bb.ad, !dbg !6329, !noalias !6240, !inline_history !5888

bb.ad:                                            ; preds = %bb.ac
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast8ClassSetEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.b) #16
          to label %.body unwind label %bb.ae, !dbg !6330, !inline_history !5888

bb.ae:                                            ; preds = %bb.ad
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #14, !dbg !6331, !inline_history !5888
  unreachable, !dbg !6331

bb.af:                                            ; preds = %bb.ac, %bb.ab
  %i.bx = load ptr, ptr %i.ae, align 8, !dbg !6332, !alias.scope !6239, !nonnull !464, !noundef !464
    #dbg_value(ptr %i.bx, !6223, !DIExpression(), !5931)
  %i.by = getelementptr inbounds nuw [160 x i8], ptr %i.bx, i64 %i.bs, !dbg !6333
    #dbg_value(ptr %i.by, !6202, !DIExpression(), !5937)
    #dbg_value(ptr %i.by, !6212, !DIExpression(), !5938)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.by, ptr noundef nonnull align 8 dereferenceable(160) %i.b, i64 160, i1 false), !dbg !6334, !noalias !464
  %i.bz = add i64 %i.bs, 1, !dbg !6335
  store i64 %i.bz, ptr %i.af, align 8, !dbg !6335, !alias.scope !6239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6336
  br label %bb.v, !dbg !6337

bb.ag:                                            ; preds = %bb.ah, %.body
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.ah ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast8ClassSetEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #16
          to label %common.resume unwind label %bb.aj, !dbg !6280

bb.ah:                                            ; preds = %bb.v
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ai:                                            ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !6276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !6276
  %.pr = load i64, ptr %i.af, align 8, !dbg !6272 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !6271
    #dbg_value(ptr %i.h, !6099, !DIExpression(), !6241)
    #dbg_value(ptr %i.h, !6105, !DIExpression(), !6242)
    #dbg_value(ptr %i.h, !6169, !DIExpression(), !6243)
    #dbg_value(ptr %i.h, !6185, !DIExpression(), !6244)
  %i.cb = icmp eq i64 %.pr, 0, !dbg !6272
  br i1 %i.cb, label %bb.m, label %bb.p, !dbg !6272

bb.aj:                                            ; preds = %bb.ag, %.body
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #14, !dbg !6338
  unreachable, !dbg !6338
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast8ClassSetENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast9FlagsItemENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast8ClassSetENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast9FlagsItemENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

end_hunk_0
