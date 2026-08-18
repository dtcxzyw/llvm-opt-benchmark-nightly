inline.NumInlined: 149
inline.NumDeleted: 41
begin_hunk_0_@_RNvXsr_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_3AstNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop:bb.a
    #dbg_value(i64 %i.bp, !5732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5769)
    #dbg_value(ptr %i.br, !5732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5769)
  store i64 %i.bp, ptr %i.by, align 8, !dbg !5771
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8, !dbg !5771
  store ptr %i.br, ptr %i.bz, align 8, !dbg !5771
  %i.ca = add i64 %i.bs, 1, !dbg !5772
  store i64 %i.ca, ptr %i.ah, align 8, !dbg !5772, !alias.scope !5741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5773
  br label %bb.p, !dbg !5773

bb.ac:                                            ; preds = %bb.s
  invoke void @_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstE14extend_trustedINtNtB6_5drain5DrainBG_EEBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.d)
          to label %bb.ad unwind label %.loopexit, !dbg !5774

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !5775
  br label %bb.p, !dbg !5776

bb.ae:                                            ; preds = %bb.t
  invoke void @_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstE14extend_trustedINtNtB6_5drain5DrainBG_EEBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.af unwind label %.loopexit, !dbg !5777

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !5778
  br label %bb.p, !dbg !5779

bb.ag:                                            ; preds = %bb.ah, %.body
  %.pn = phi { ptr, i32 } [ %i.cb, %bb.ah ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #16
          to label %common.resume unwind label %bb.aj, !dbg !5541

bb.ah:                                            ; preds = %bb.p
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ai:                                            ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !5579
  %.pr = load i64, ptr %i.ah, align 8, !dbg !5531 ; 2 uses
    #dbg_value(ptr %i.f, !5371, !DIExpression(), !5522)
    #dbg_value(ptr %i.f, !5367, !DIExpression(), !5523)
    #dbg_value(ptr %i.f, !5524, !DIExpression(), !5527)
    #dbg_value(ptr %i.f, !5405, !DIExpression(), !5529)
  %i.cc = icmp eq i64 %.pr, 0, !dbg !5531
  br i1 %i.cc, label %bb.l, label %bb.o, !dbg !5531

bb.aj:                                            ; preds = %bb.ag, %.body
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #14, !dbg !5780
  unreachable, !dbg !5780
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXss_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_8ClassSetNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 captures(none) dereferenceable(160) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5781 {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 4 uses
  %i.b = alloca [160 x i8], align 8               ; 5 uses
  %i.c = alloca [160 x i8], align 8               ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [160 x i8], align 8               ; 10 uses
  %i.g = alloca [160 x i8], align 8               ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 15 uses
    #dbg_value(ptr %0, !5784, !DIExpression(), !5816)
    #dbg_value(ptr %0, !5817, !DIExpression(), !5823)
    #dbg_declare(ptr %i.h, !5804, !DIExpression(), !5825)
    #dbg_declare(ptr %i.f, !5806, !DIExpression(), !5826)
    #dbg_declare(ptr poison, !5827, !DIExpression(), !5834)
    #dbg_declare(ptr %i.e, !5836, !DIExpression(), !5873)
    #dbg_declare(ptr %i.e, !5875, !DIExpression(), !5880)
    #dbg_declare(ptr %i.d, !5882, !DIExpression(), !5895)
    #dbg_declare(ptr %i.c, !5827, !DIExpression(), !5897)
    #dbg_declare(ptr %i.b, !5827, !DIExpression(), !5899)
    #dbg_declare(ptr poison, !5794, !DIExpression(), !5901)
    #dbg_declare(ptr poison, !5902, !DIExpression(), !5921)
    #dbg_declare(ptr poison, !5946, !DIExpression(), !5956)
    #dbg_value(i64 160, !5958, !DIExpression(), !5962)
    #dbg_declare(ptr poison, !5891, !DIExpression(), !5998)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !5999 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !dbg !5999, !range !2282, !noundef !15 ; 4 uses
  %i.k = icmp eq i32 %i.j, -1, !dbg !5999
  br i1 %i.k, label %bb.b, label %bb.c, !dbg !6000

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !5791, !DIExpression(), !6001)
  %i.l = load ptr, ptr %0, align 8, !dbg !6002, !nonnull !15, !noundef !15
    #dbg_value(ptr %i.l, !6003, !DIExpression(), !6010)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 152, !dbg !6012
  %i.n = load i32, ptr %i.m, align 8, !dbg !6012, !range !2282, !noundef !15 ; 3 uses
  %i.o = icmp eq i32 %i.n, -1, !dbg !6012
  br i1 %i.o, label %bb.h, label %bb.j, !dbg !6013

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !5785, !DIExpression(), !6014)
  %i.p = icmp ne i32 %i.j, 1114114, !dbg !6015
  tail call void @llvm.assume(i1 %i.p), !dbg !6015
  %i.q = add nsw i32 %i.j, -1114112, !dbg !6015
  %i.r = icmp samesign ugt i32 %i.j, 1114111, !dbg !6015
  %narrow = select i1 %i.r, i32 %i.q, i32 2, !dbg !6015
  switch i32 %narrow, label %.loopexit [
    i32 0, label %bb.d
    i32 1, label %bb.d
    i32 2, label %bb.d
    i32 3, label %bb.d
    i32 4, label %bb.d
    i32 5, label %bb.d
    i32 6, label %bb.e
    i32 7, label %bb.f
  ], !dbg !6016

.loopexit:                                        ; preds = %bb.u, %bb.c
  unreachable, !dbg !6017

bb.d:                                             ; preds = %bb.l, %bb.f, %bb.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast8ClassSetEEB1c_.exit, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  ret void, !dbg !6019

bb.e:                                             ; preds = %bb.c
    #dbg_value(ptr %0, !5787, !DIExpression(), !6020)
  %i.s = load ptr, ptr %0, align 8, !dbg !6021, !nonnull !15, !noundef !15
    #dbg_value(ptr %i.s, !6003, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !6022)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 200, !dbg !6024
  %i.u = load i32, ptr %i.t, align 8, !dbg !6024, !range !2282, !noundef !15 ; 3 uses
  %i.v = icmp eq i32 %i.u, -1, !dbg !6024
  br i1 %i.v, label %bb.h, label %bb.g, !dbg !6025

bb.f:                                             ; preds = %bb.c
    #dbg_value(ptr %0, !5789, !DIExpression(), !6026)
    #dbg_value(ptr %0, !6027, !DIExpression(), !6030)
    #dbg_value(ptr %0, !6032, !DIExpression(), !6035)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6037
  %i.x = load i64, ptr %i.w, align 8, !dbg !6037, !noundef !15 ; 2 uses
  %i.y = icmp ult i64 %i.x, 57646075230342349, !dbg !6038
  tail call void @llvm.assume(i1 %i.y), !dbg !6039
  %i.z = icmp eq i64 %i.x, 0, !dbg !6040
  br i1 %i.z, label %bb.d, label %bb.h, !dbg !6041

bb.g:                                             ; preds = %bb.e
  %i.aa = icmp ne i32 %i.u, 1114114, !dbg !6024
  tail call void @llvm.assume(i1 %i.aa), !dbg !6024
  %i.ab = icmp eq i32 %i.u, 1114112, !dbg !6025
  br i1 %i.ab, label %bb.d, label %bb.h, !dbg !6021

bb.h:                                             ; preds = %bb.k, %bb.j, %bb.l, %bb.b, %bb.f, %bb.g, %bb.e
    #dbg_value(ptr poison, !5798, !DIExpression(), !6042)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !6043
    #dbg_value(i64 8, !2489, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6044)
    #dbg_value(i64 8, !2511, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6050)
    #dbg_value(i64 8, !2537, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6052)
    #dbg_value(i64 160, !2489, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6044)
    #dbg_value(i64 160, !2511, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6050)
    #dbg_value(i64 160, !2537, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6052)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2534, !DIExpression(), !6050)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2543, !DIExpression(), !6052)
    #dbg_value(i8 0, !2544, !DIExpression(), !6052)
    #dbg_value(i64 8, !2547, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6054)
    #dbg_value(i64 8, !2584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6056)
    #dbg_value(i64 160, !2547, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6054)
    #dbg_value(i64 160, !2584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6056)
    #dbg_value(i1 false, !2553, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6054)
    #dbg_value(i64 160, !2554, !DIExpression(), !6058)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !dbg !6059
  %i.ac = tail call noundef align 8 dereferenceable_or_null(160) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 217) 160, i64 noundef 8) #15, !dbg !6060 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null, !dbg !6061
  br i1 %i.ad, label %bb.i, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !dbg !6062, !prof !2597

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 160) #17, !dbg !6063
  unreachable, !dbg !6063

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.h
    #dbg_value(ptr %i.ac, !5943, !DIExpression(), !6064)
    #dbg_value(i64 0, !5822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6065)
    #dbg_value(i64 0, !5822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6067)
    #dbg_value(i64 0, !5822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6069)
    #dbg_value(i64 0, !5822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5823)
    #dbg_value(i64 0, !5822, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6065)
    #dbg_value(i64 0, !5822, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6067)
    #dbg_value(i64 0, !5822, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6069)
    #dbg_value(i64 0, !5822, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5823)
    #dbg_value(i64 0, !5822, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6065)
    #dbg_value(i64 0, !5822, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6067)
    #dbg_value(i64 0, !5822, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6069)
    #dbg_value(i64 0, !5822, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5823)
    #dbg_value(i64 0, !5822, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6065)
    #dbg_value(i64 0, !5822, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6067)
    #dbg_value(i64 0, !5822, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6069)
    #dbg_value(i64 0, !5822, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5823)
    #dbg_value(i64 0, !5822, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !6065)
    #dbg_value(i64 0, !5822, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !6067)
    #dbg_value(i64 0, !5822, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !6069)
    #dbg_value(i64 0, !5822, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !5823)
    #dbg_value(i64 0, !5822, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !6065)
    #dbg_value(i64 0, !5822, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !6067)
    #dbg_value(i64 0, !5822, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !6069)
    #dbg_value(i64 0, !5822, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !5823)
    #dbg_value(i32 1114112, !5822, !DIExpression(DW_OP_LLVM_fragment, 1216, 32), !5823)
    #dbg_value(i32 1114112, !5822, !DIExpression(DW_OP_LLVM_fragment, 1216, 32), !6069)
    #dbg_value(i32 1114112, !5822, !DIExpression(DW_OP_LLVM_fragment, 1216, 32), !6067)
    #dbg_value(i32 1114112, !5822, !DIExpression(DW_OP_LLVM_fragment, 1216, 32), !6065)
    #dbg_value(i32 undef, !5822, !DIExpression(DW_OP_LLVM_fragment, 1248, 32), !5823)
    #dbg_value(i32 undef, !5822, !DIExpression(DW_OP_LLVM_fragment, 1248, 32), !6069)
    #dbg_value(i32 undef, !5822, !DIExpression(DW_OP_LLVM_fragment, 1248, 32), !6067)
    #dbg_value(i32 undef, !5822, !DIExpression(DW_OP_LLVM_fragment, 1248, 32), !6065)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ac, ptr noundef nonnull align 8 dereferenceable(160) %0, i64 160, i1 false), !dbg !6071
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !dbg !6072
  store i32 1114112, ptr %i.i, align 8, !dbg !6072
    #dbg_value(ptr %i.ac, !5914, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6073)
    #dbg_value(i64 1, !5914, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6073)
    #dbg_value(i64 1, !5915, !DIExpression(), !6074)
    #dbg_value(i64 1, !5954, !DIExpression(), !6075)
    #dbg_value(i64 1, !5955, !DIExpression(), !6075)
    #dbg_value(ptr %i.ac, !5916, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6076)
    #dbg_value(i64 1, !5916, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6076)
    #dbg_value(ptr %i.ac, !5953, !DIExpression(), !6075)
  store i64 1, ptr %i.h, align 8, !dbg !6077
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !6077 ; 4 uses
  store ptr %i.ac, ptr %i.ae, align 8, !dbg !6077
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !6077 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !6078
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.p, !dbg !6079

bb.j:                                             ; preds = %bb.b
  %i.ai = icmp ne i32 %i.n, 1114114, !dbg !6012
  tail call void @llvm.assume(i1 %i.ai), !dbg !6012
  %i.aj = icmp eq i32 %i.n, 1114112, !dbg !6013
  br i1 %i.aj, label %bb.k, label %bb.h, !dbg !6002

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6080
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !6080, !nonnull !15, !noundef !15
    #dbg_value(ptr %i.al, !6003, !DIExpression(), !6081)
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 152, !dbg !6083
  %i.an = load i32, ptr %i.am, align 8, !dbg !6083, !range !2282, !noundef !15 ; 3 uses
  %i.ao = icmp eq i32 %i.an, -1, !dbg !6083
  br i1 %i.ao, label %bb.h, label %bb.l, !dbg !6084

bb.l:                                             ; preds = %bb.k
  %i.ap = icmp ne i32 %i.an, 1114114, !dbg !6083
  tail call void @llvm.assume(i1 %i.ap), !dbg !6083
  %i.aq = icmp eq i32 %i.an, 1114112, !dbg !6084
  br i1 %i.aq, label %bb.d, label %bb.h, !dbg !6080

bb.m:                                             ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !6085
    #dbg_value(ptr %i.h, !619, !DIExpression(), !6086)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast8ClassSetENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast8ClassSetEEB1c_.exit unwind label %bb.n, !dbg !6088

bb.n:                                             ; preds = %bb.m
  %i.ar = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.h, !624, !DIExpression(), !6089)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast8ClassSetENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.o, !dbg !6091

bb.o:                                             ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #14, !dbg !6088
  unreachable, !dbg !6088

common.resume:                                    ; preds = %bb.ag, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.ar, %bb.n ], [ %.pn, %bb.ag ]
  resume { ptr, i32 } %common.resume.op, !dbg !5816

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast8ClassSetEEB1c_.exit: ; preds = %bb.m
    #dbg_value(ptr %i.h, !624, !DIExpression(), !6092)
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast8ClassSetENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h), !dbg !6094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !6095
  br label %bb.d, !dbg !6019

bb.p:                                             ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, %bb.ai
  %i.at = phi i64 [ 1, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit ], [ %.pr, %bb.ai ] ; 3 uses
  %i.au = add nsw i64 %i.at, -1, !dbg !6096       ; 3 uses
  store i64 %i.au, ptr %i.af, align 8, !dbg !6096
  %i.av = load i64, ptr %i.h, align 8, !dbg !6097, !range !3896, !noundef !15
  %i.aw = icmp samesign ult i64 %i.au, %i.av, !dbg !6098
    #dbg_value(i1 true, !6099, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6102)
  call void @llvm.assume(i1 %i.aw), !dbg !6104
  %i.ax = load ptr, ptr %i.ae, align 8, !dbg !6105, !nonnull !15, !noundef !15
    #dbg_value(ptr %i.ax, !6129, !DIExpression(), !6135)
    #dbg_value(i64 %i.au, !6134, !DIExpression(), !6135)
  %i.ay = icmp samesign ult i64 %i.at, 57646075230342350, !dbg !6137
  call void @llvm.assume(i1 %i.ay), !dbg !6143
  %i.az = getelementptr inbounds nuw [160 x i8], ptr %i.ax, i64 %i.au, !dbg !6144 ; 2 uses
    #dbg_value(ptr %i.az, !6145, !DIExpression(), !6150)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.g, ptr noundef nonnull align 8 dereferenceable(160) %i.az, i64 160, i1 false), !dbg !6152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !5826
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.f, ptr noundef nonnull align 8 dereferenceable(160) %i.g, i64 160, i1 false), !dbg !5826
  %i.ba = load i32, ptr %i.ag, align 8, !dbg !6153, !range !2282, !noundef !15 ; 4 uses
  %i.bb = icmp eq i32 %i.ba, -1, !dbg !6153
  br i1 %i.bb, label %bb.q, label %bb.u, !dbg !6154

bb.q:                                             ; preds = %bb.p
    #dbg_value(ptr %i.f, !5814, !DIExpression(), !6155)
    #dbg_value(ptr %i.h, !5833, !DIExpression(), !6156)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !6068
  %i.bc = load ptr, ptr %i.f, align 8, !dbg !6157, !nonnull !15, !noundef !15 ; 3 uses
    #dbg_value(ptr %i.bc, !5817, !DIExpression(), !6067)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef nonnull align 8 dereferenceable(160) %i.bc, i64 160, i1 false), !dbg !6158
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.bc, i64 152, !dbg !6159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bc, i8 0, i64 48, i1 false), !dbg !6159
  store i32 1114112, ptr %.sroa.5.0..sroa_idx2, align 8, !dbg !6159
    #dbg_value(ptr %i.h, !6160, !DIExpression(), !6171)
    #dbg_value(ptr %i.h, !6173, !DIExpression(), !6179)
    #dbg_declare(ptr %i.c, !6166, !DIExpression(), !6181)
    #dbg_declare(ptr poison, !6182, !DIExpression(), !6188)
    #dbg_value(i64 160, !6190, !DIExpression(), !6194)
  %i.bd = load i64, ptr %i.af, align 8, !dbg !6200, !alias.scope !6201, !noalias !6204, !noundef !15 ; 3 uses
    #dbg_value(i64 %i.bd, !6167, !DIExpression(), !6206)
    #dbg_value(i64 %i.bd, !6207, !DIExpression(), !6213)
    #dbg_value(ptr %i.h, !6198, !DIExpression(), !6215)
  %i.be = load i64, ptr %i.h, align 8, !dbg !6216, !range !3896, !alias.scope !6201, !noalias !6204, !noundef !15
  %i.bf = icmp eq i64 %i.bd, %i.be, !dbg !6217
  br i1 %i.bf, label %bb.r, label %bb.ab, !dbg !6217

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast8ClassSetE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.ab unwind label %bb.s, !dbg !6218, !noalias !6204, !inline_history !6219

bb.s:                                             ; preds = %bb.r
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast8ClassSetEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.c) #16
          to label %.body unwind label %bb.t, !dbg !6220, !inline_history !6219

bb.t:                                             ; preds = %bb.s
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #14, !dbg !6221, !inline_history !6219
  unreachable, !dbg !6221

bb.u:                                             ; preds = %bb.p
    #dbg_value(ptr %i.f, !5808, !DIExpression(), !6222)
  %i.bi = icmp ne i32 %i.ba, 1114114, !dbg !6223
  call void @llvm.assume(i1 %i.bi), !dbg !6223
  %i.bj = add nsw i32 %i.ba, -1114112, !dbg !6223
  %i.bk = icmp samesign ugt i32 %i.ba, 1114111, !dbg !6223
  %narrow104 = select i1 %i.bk, i32 %i.bj, i32 2, !dbg !6223
  switch i32 %narrow104, label %.loopexit [
    i32 0, label %bb.v
    i32 1, label %bb.v
    i32 2, label %bb.v
    i32 3, label %bb.v
    i32 4, label %bb.v
    i32 5, label %bb.v
    i32 6, label %bb.y
    i32 7, label %bb.w
  ], !dbg !6224

bb.v:                                             ; preds = %bb.af, %bb.aa, %bb.y, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast8ClassSetEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.f)
          to label %bb.ai unwind label %bb.ah, !dbg !6085

bb.w:                                             ; preds = %bb.u
    #dbg_value(ptr %i.f, !5812, !DIExpression(), !6225)
    #dbg_value(ptr %i.h, !5870, !DIExpression(), !6226)
    #dbg_value(ptr %i.h, !5878, !DIExpression(), !6227)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !6228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !6228
  invoke void @_RINvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemE5drainNtNtNtCsj6eKBz9Db1c_4core3ops5range9RangeFullEBJ_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.z unwind label %bb.x, !dbg !6229

bb.x:                                             ; preds = %bb.z, %bb.w
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !6085

.body:                                            ; preds = %bb.ad, %bb.x, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.s ], [ %i.bl, %bb.x ], [ %i.bv, %bb.ad ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast8ClassSetEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.f) #16
          to label %bb.ag unwind label %bb.aj, !dbg !6085

bb.y:                                             ; preds = %bb.u
    #dbg_value(ptr %i.f, !5810, !DIExpression(), !6230)
    #dbg_value(ptr %i.h, !5833, !DIExpression(), !6231)
  %i.bm = load ptr, ptr %i.f, align 8, !dbg !6232, !nonnull !15, !noundef !15 ; 2 uses
    #dbg_value(ptr %i.bm, !5817, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !6233)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48, !dbg !6234 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6235
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef nonnull align 8 dereferenceable(160) %i.bn, i64 160, i1 false), !dbg !6234
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.bm, i64 200, !dbg !6237
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bn, i8 0, i64 48, i1 false), !dbg !6237
  store i32 1114112, ptr %.sroa.5.0..sroa_idx4, align 8, !dbg !6237
    #dbg_value(ptr %i.h, !6160, !DIExpression(), !6238)
    #dbg_value(ptr %i.h, !6173, !DIExpression(), !6239)
    #dbg_declare(ptr poison, !6166, !DIExpression(), !6241)
    #dbg_declare(ptr %i.a, !6182, !DIExpression(), !6242)
    #dbg_value(i64 160, !6190, !DIExpression(), !6244)
    #dbg_value(i64 %i.au, !6167, !DIExpression(), !6247)
    #dbg_value(i64 %i.au, !6207, !DIExpression(), !6248)
    #dbg_value(ptr %i.h, !6198, !DIExpression(), !6250)
    #dbg_value(ptr %i.ax, !6212, !DIExpression(), !6248)
    #dbg_value(ptr %i.az, !6169, !DIExpression(), !6251)
    #dbg_value(ptr %i.az, !6187, !DIExpression(), !6252)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.az, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false), !dbg !6253, !noalias !6254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6257
  store i64 %i.at, ptr %i.af, align 8, !dbg !6258, !alias.scope !6259, !noalias !6254
  br label %bb.v, !dbg !6261

bb.z:                                             ; preds = %bb.w
end_hunk_0
