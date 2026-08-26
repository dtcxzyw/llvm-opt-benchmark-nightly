Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/synstructure-0cba3660db3bc2fc.synstructure.216e75c5302d9708-cgu.5?download=true
inline.NumInlined: 13
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [40 x i8] c"internal error: entered unreachable code", align 1
@1 = private unnamed_addr constant [100 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/synstructure-0.13.2/src/lib.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"c\00\00\00\00\00\00\00<\01\00\00\11\00\00\00" }>, align 8
@3 = private unnamed_addr constant [13 x i8] c"\0A__binding_\C0\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"c\00\00\00\00\00\00\00\EC\00\00\00\10\00\00\00" }>, align 8
@5 = private unnamed_addr constant [61 x i8] c"3Attempted to merge conflicting generic parameters: \C0\05 and \C0\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"c\00\00\00\00\00\00\00e\03\00\00\17\00\00\00" }>, align 8
@7 = private unnamed_addr constant [42 x i8] c"assertion failed: self.bindings.is_empty()", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"c\00\00\00\00\00\00\009\02\00\00\11\00\00\00" }>, align 8
@9 = private unnamed_addr constant [48 x i8] c"`path` argument must be a valid rust trait bound", align 1
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"c\00\00\00\00\00\00\00\12\08\00\00\0E\00\00\00" }>, align 8
@11 = private unnamed_addr constant [6 x i8] c"extern", align 1
@12 = private unnamed_addr constant [5 x i8] c"crate", align 1
@13 = private unnamed_addr constant [4 x i8] c"impl", align 1
@14 = private unnamed_addr constant [3 x i8] c"for", align 1
@15 = private unnamed_addr constant [5 x i8] c"const", align 1
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"c\00\00\00\00\00\00\00\0E\09\00\00\19\00\00\00" }>, align 8
@17 = private unnamed_addr constant [40 x i8] c"Should've consumed the rest of our input", align 1
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"c\00\00\00\00\00\00\001\09\00\00\09\00\00\00" }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"c\00\00\00\00\00\00\00-\09\00\00\19\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"c\00\00\00\00\00\00\00%\09\00\00\14\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"c\00\00\00\00\00\00\00 \09\00\00!\00\00\00" }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"c\00\00\00\00\00\00\00\1D\09\00\00\11\00\00\00" }>, align 8
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"c\00\00\00\00\00\00\00\1C\09\00\00\11\00\00\00" }>, align 8
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"c\00\00\00\00\00\00\00\1B\09\00\00\11\00\00\00" }>, align 8
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"c\00\00\00\00\00\00\00\18\09\00\00\15\00\00\00" }>, align 8
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"c\00\00\00\00\00\00\00\15\09\00\00\1C\00\00\00" }>, align 8
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"c\00\00\00\00\00\00\00\12\09\00\00\16\00\00\00" }>, align 8
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"c\00\00\00\00\00\00\00\0D\06\00\00\17\00\00\00" }>, align 8
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"c\00\00\00\00\00\00\00\F7\06\00\008\00\00\00" }>, align 8
@30 = private unnamed_addr constant [40 x i8] c"Unable to create synstructure::Structure", align 1
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"c\00\00\00\00\00\00\00\F6\03\00\00\1C\00\00\00" }>, align 8
@32 = private unnamed_addr constant <{ [8 x i8], [8 x i8], [168 x i8] }> <{ [8 x i8] undef, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [168 x i8] undef }>, align 8
@33 = private unnamed_addr constant [37 x i8] c"unexpected unsupported untagged union", align 1
@34 = private unnamed_addr constant [24 x i8] c"Failed to parse gen_impl", align 1
@35 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"c\00\00\00\00\00\00\00\FC\08\00\00\0A\00\00\00" }>, align 8
@36 = private unnamed_addr constant [3 x i8] c"gen", align 1
@37 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @36, [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"c\00\00\00\00\00\00\00\05\09\00\00\15\00\00\00" }>, align 8
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"c\00\00\00\00\00\00\00\04\09\00\00\1A\00\00\00" }>, align 8
@40 = private unnamed_addr constant [22 x i8] c"Expected keyword `gen`", align 1
@41 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"c\00\00\00\00\00\00\00\01\09\00\00\10\00\00\00" }>, align 8
@42 = private unnamed_addr constant [3 x i8] c"mut", align 1
@43 = private unnamed_addr constant [3 x i8] c"ref", align 1
@44 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"c\00\00\00\00\00\00\00\C6\01\00\00$\00\00\00" }>, align 8
@45 = private unnamed_addr constant [94 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/syn-2.0.117/src/parse.rs\00", align 1
@46 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"]\00\00\00\00\00\00\00\11\05\00\00\09\00\00\00" }>, align 8
@47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"]\00\00\00\00\00\00\00\10\05\00\00\14\00\00\00" }>, align 8

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvMs1_Cs2RXd34xq0RM_12synstructureNtB7_11VariantInfo3new0B7_(ptr nofree writeonly sret([80 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, i64 %2, ptr align 8 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %4 = alloca [24 x i8], align 8                  ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 2 uses
  %i.h = alloca [24 x i8], align 8                ; 3 uses
  %i.i = alloca [4 x i8], align 4                 ; 2 uses
  %i.j = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %2, ptr %i.j, align 8
  %i.k = tail call i32 @_RNvMsi_Cs1K5DUQUZc67_11proc_macro2NtB5_4Span9call_site()
  store i32 %i.k, ptr %i.i, align 4
  %i.l = tail call i32 @_RNvXNtCsgFSQ9XOTBNe_3syn7spannedNtNtB4_4data5FieldNtB2_7Spanned4spanCs2RXd34xq0RM_12synstructure(ptr align 8 %3)
  %i.m = call i32 @_RNvMsi_Cs1K5DUQUZc67_11proc_macro2NtB5_4Span10located_at(ptr nonnull align 4 %i.i, i32 %i.l)
  store ptr %i.j, ptr %i.g, align 8
  call void @_RINvMNtNtCshzWfHUSfYae_4core3fmt2rtNtB3_8Argument11new_displayINtNtCslCbDOIcU2Dw_5quote9___private20IdentFragmentAdapterRjEECs2RXd34xq0RM_12synstructure(ptr nonnull sret([16 x i8]) align 8 %i.c, ptr nonnull align 8 %i.g) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.n = call { ptr, ptr } @_RINvMs2_NtCshzWfHUSfYae_4core3fmtNtB6_9Arguments3newKjd_Kj1_ECs2RXd34xq0RM_12synstructure(ptr nonnull @3, ptr nonnull align 8 %i.d) #12 ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0
  %i.p = extractvalue { ptr, ptr } %i.n, 1
  call void @_RNvNtCsbSS6DM8SDEO_5alloc3fmt6formatCs2RXd34xq0RM_12synstructure(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr %i.o, ptr %i.p) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.q = invoke { ptr, i64 } @_RNvXsx_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5derefCs2RXd34xq0RM_12synstructure(ptr nonnull align 8 %i.f)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.f) #13
          to label %bb.j unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.s = extractvalue { ptr, i64 } %i.q, 0
  %i.t = extractvalue { ptr, i64 } %i.q, 1
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private8mk_ident(ptr nonnull sret([24 x i8]) align 8 %i.h, ptr %i.s, i64 %i.t, i32 1, i32 %i.m)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.f)
  %i.u = load ptr, ptr %1, align 8
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.w = invoke i64 @_RNvMNtCsgFSQ9XOTBNe_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics12GenericParamNtNtB4_5token5CommaE3lenCs2RXd34xq0RM_12synstructure(ptr align 8 %i.v)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  invoke void @_RINvNtCsbSS6DM8SDEO_5alloc3vec9from_elembECs2RXd34xq0RM_12synstructure(ptr nonnull sret([24 x i8]) align 8 %i.a, i1 zeroext false, i64 %i.w)
          to label %.noexc2 unwind label %bb.g

.noexc2:                                          ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.v, ptr %i.x, align 8, !noalias !4
  invoke void @_RINvNtNtCsgFSQ9XOTBNe_3syn3gen5visit10visit_typeNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorEBO_(ptr nonnull align 8 %i.b, ptr align 8 %3)
          to label %bb.h unwind label %bb.e, !noalias !4

bb.e:                                             ; preds = %.noexc2
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvCs2RXd34xq0RM_12synstructure13get_ty_params16BoundTypeLocatorEBF_(ptr nonnull align 8 %i.b) #13
          to label %.body unwind label %bb.f, !noalias !4

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14, !noalias !4
  unreachable

bb.g:                                             ; preds = %.noexc, %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.g ], [ %i.y, %bb.e ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.h) #13
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %.noexc2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 2, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %3, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.v, ptr %i.ae, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.af = load i64, ptr %i.j, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.af, ptr %i.ag, align 8
  ret void

bb.i:                                             ; preds = %.body, %bb.b
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.j:                                             ; preds = %.body, %bb.b
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.r, %bb.b ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvMs1_Cs2RXd34xq0RM_12synstructureNtB7_11VariantInfo3pat0B7_(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = load ptr, ptr %0, align 8
  %i.l = tail call { ptr, ptr } @_RNvXsh_NtCsbSS6DM8SDEO_5alloc3vecRINtB5_3VecNtCs2RXd34xq0RM_12synstructure11BindingInfoENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterBI_(ptr align 8 %i.k) ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0
  %i.n = extractvalue { ptr, ptr } %i.l, 1
  store ptr %i.m, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.n, ptr %i.o, align 8
  %i.p = call align 8 ptr @_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtCs2RXd34xq0RM_12synstructure11BindingInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBR_(ptr nonnull align 8 %i.j) #12 ; 2 uses
  %.not18 = icmp eq ptr %i.p, null
  br i1 %.not18, label %._crit_edge20, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.p
  %i.q = phi ptr [ %i.ai, %bb.p ], [ %i.p, %bb.a ] ; 3 uses
  %.sroa.0.019 = phi i64 [ %i.ah, %bb.p ], [ 0, %bb.a ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = icmp ult i64 %.sroa.0.019, %i.s
  br i1 %i.t, label %.lr.ph, label %._crit_edge

._crit_edge20:                                    ; preds = %bb.p, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.ah, %bb.p ]
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.w = load i64, ptr %i.v, align 8
  %.not7 = icmp eq i64 %.sroa.0.0.lcssa, %i.w
  br i1 %.not7, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.g, %._crit_edge20
  ret void

bb.c:                                             ; preds = %._crit_edge20
  call void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.c)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private9push_dot2(ptr nonnull align 8 %i.c)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.c) #13
          to label %common.resume unwind label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  invoke void @_RNvXsu_NtCslCbDOIcU2Dw_5quote9to_tokensNtCs1K5DUQUZc67_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.d, ptr align 8 %1)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.d) #13
          to label %common.resume unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.d)
  br label %bb.b

bb.h:                                             ; preds = %bb.t, %bb.q, %bb.o, %bb.m, %bb.k, %bb.f, %bb.d
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.d, %bb.f, %bb.k, %bb.m, %bb.o, %bb.q, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.d ], [ %i.ak, %bb.t ], [ %i.aj, %bb.q ], [ %i.ag, %bb.o ], [ %i.af, %bb.m ], [ %i.ae, %bb.k ], [ %i.y, %bb.f ], [ %i.ac, %bb.i ]
  resume { ptr, i32 } %common.resume.op

._crit_edge:                                      ; preds = %bb.u, %.preheader
  %.sroa.0.1.lcssa = phi i64 [ %.sroa.0.019, %.preheader ], [ %i.al, %bb.u ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.aa, ptr %i.b, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  call void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  invoke void @_RNvXCs2RXd34xq0RM_12synstructureNtB2_9BindStyleNtNtCslCbDOIcU2Dw_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull %i.ab, ptr nonnull align 8 %i.a)
          to label %_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtCs2RXd34xq0RM_12synstructure9BindStyleNtB2_8ToTokens9to_tokensBB_.exit.i unwind label %bb.i

bb.i:                                             ; preds = %_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtCs2RXd34xq0RM_12synstructure9BindStyleNtB2_8ToTokens9to_tokensBB_.exit.i, %._crit_edge
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.a) #13
          to label %common.resume unwind label %bb.j

_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtCs2RXd34xq0RM_12synstructure9BindStyleNtB2_8ToTokens9to_tokensBB_.exit.i: ; preds = %._crit_edge
  invoke void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtCs1K5DUQUZc67_11proc_macro25IdentNtB2_8ToTokens9to_tokensCs2RXd34xq0RM_12synstructure(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %_RNvMs0_Cs2RXd34xq0RM_12synstructureNtB5_11BindingInfo3pat.exit unwind label %bb.i

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

_RNvMs0_Cs2RXd34xq0RM_12synstructureNtB5_11BindingInfo3pat.exit: ; preds = %_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtCs2RXd34xq0RM_12synstructure9BindStyleNtB2_8ToTokens9to_tokensBB_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsu_NtCslCbDOIcU2Dw_5quote9to_tokensNtCs1K5DUQUZc67_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.g, ptr align 8 %1)
          to label %bb.l unwind label %bb.k

.lr.ph:                                           ; preds = %.preheader, %bb.u
  %.sroa.0.117 = phi i64 [ %i.al, %bb.u ], [ %.sroa.0.019, %.preheader ]
  call void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.h)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private15push_underscore(ptr nonnull align 8 %i.h)
          to label %bb.r unwind label %bb.q

bb.k:                                             ; preds = %_RNvMs0_Cs2RXd34xq0RM_12synstructureNtB5_11BindingInfo3pat.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.g) #13
          to label %common.resume unwind label %bb.h

bb.l:                                             ; preds = %_RNvMs0_Cs2RXd34xq0RM_12synstructureNtB5_11BindingInfo3pat.exit
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.g)
  call void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.e)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_comma(ptr nonnull align 8 %i.e)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.e) #13
          to label %common.resume unwind label %bb.h

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  invoke void @_RNvXsu_NtCslCbDOIcU2Dw_5quote9to_tokensNtCs1K5DUQUZc67_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.f, ptr align 8 %1)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.f) #13
          to label %common.resume unwind label %bb.h

bb.p:                                             ; preds = %bb.n
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.f)
  %i.ah = add i64 %.sroa.0.1.lcssa, 1             ; 2 uses
  %i.ai = call align 8 ptr @_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtCs2RXd34xq0RM_12synstructure11BindingInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBR_(ptr nonnull align 8 %i.j) #12 ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %._crit_edge20, label %.preheader

bb.q:                                             ; preds = %bb.r, %.lr.ph
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.h) #13
          to label %common.resume unwind label %bb.h

bb.r:                                             ; preds = %.lr.ph
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_comma(ptr nonnull align 8 %i.h)
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  invoke void @_RNvXsu_NtCslCbDOIcU2Dw_5quote9to_tokensNtCs1K5DUQUZc67_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.i, ptr align 8 %1)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.i) #13
          to label %common.resume unwind label %bb.h

bb.u:                                             ; preds = %bb.s
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.i)
  %i.al = add nuw i64 %.sroa.0.117, 1             ; 3 uses
  %i.am = load i64, ptr %i.r, align 8
  %i.an = icmp ult i64 %i.al, %i.am
  br i1 %i.an, label %.lr.ph, label %._crit_edge
}

end_hunk_0
begin_hunk_1_@_RNvMs0_Cs2RXd34xq0RM_12synstructureNtB5_11BindingInfo20referenced_ty_params:bb.a
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  tail call fastcc void @_RNvCs2RXd34xq0RM_12synstructure14fetch_generics(ptr noalias align 8 %0, ptr %i.b, i64 %i.c, ptr align 8 %i.e)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @_RNvMs0_Cs2RXd34xq0RM_12synstructureNtB5_11BindingInfo3ast(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_Cs2RXd34xq0RM_12synstructureNtB5_11BindingInfo3pat(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  invoke void @_RNvXCs2RXd34xq0RM_12synstructureNtB2_9BindStyleNtNtCslCbDOIcU2Dw_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull %i.d, ptr nonnull align 8 %i.a)
          to label %_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtCs2RXd34xq0RM_12synstructure9BindStyleNtB2_8ToTokens9to_tokensBB_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a, %_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtCs2RXd34xq0RM_12synstructure9BindStyleNtB2_8ToTokens9to_tokensBB_.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.a) #13
          to label %bb.e unwind label %bb.d

_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtCs2RXd34xq0RM_12synstructure9BindStyleNtB2_8ToTokens9to_tokensBB_.exit: ; preds = %bb.a
  invoke void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtCs1K5DUQUZc67_11proc_macro25IdentNtB2_8ToTokens9to_tokensCs2RXd34xq0RM_12synstructure(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %bb.c unwind label %bb.b

bb.c:                                             ; preds = %_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtCs2RXd34xq0RM_12synstructure9BindStyleNtB2_8ToTokens9to_tokensBB_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs1_Cs2RXd34xq0RM_12synstructureNtB5_11VariantInfo12bindings_mut(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvXs9_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs2RXd34xq0RM_12synstructure11BindingInfoENtNtNtCshzWfHUSfYae_4core3ops5deref8DerefMut9deref_mutBH_(ptr align 8 %0) #12
  ret { ptr, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_RNvMs1_Cs2RXd34xq0RM_12synstructureNtB5_11VariantInfo14remove_binding(ptr returned align 8 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 2 uses
  call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtCs2RXd34xq0RM_12synstructure11BindingInfoE6removeBG_(ptr nonnull sret([80 x i8]) align 8 %i.a, ptr align 8 %0, i64 %1, ptr nonnull align 8 @6)
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs2RXd34xq0RM_12synstructure11BindingInfoEBD_(ptr nonnull align 8 %i.a)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvMs1_Cs2RXd34xq0RM_12synstructureNtB5_11VariantInfo16omitted_bindings(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8
  %i.c = tail call i64 @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtCs2RXd34xq0RM_12synstructure11BindingInfoE3lenBG_(ptr align 8 %0) #12
  %i.d = icmp ne i64 %i.b, %i.c
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_Cs2RXd34xq0RM_12synstructureNtB5_11VariantInfo20referenced_ty_params(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @_RNvMNtCsbSS6DM8SDEO_5alloc3vecINtB2_3VecbE3newCs2RXd34xq0RM_12synstructure(ptr nonnull sret([24 x i8]) align 8 %i.b) #12
  %i.c = invoke { ptr, ptr } @_RNvXsh_NtCsbSS6DM8SDEO_5alloc3vecRINtB5_3VecNtCs2RXd34xq0RM_12synstructure11BindingInfoENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterBI_(ptr align 8 %1)
          to label %bb.c unwind label %.loopexit.split-lp ; 2 uses

.loopexit:                                        ; preds = %bb.d, %bb.f, %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.loopexit.split-lp:                               ; preds = %bb.a, %bb.g, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecbEECs2RXd34xq0RM_12synstructure(ptr nonnull align 8 %i.b) #13
          to label %bb.l unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  store ptr %i.d, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %bb.c
  %i.g = invoke align 8 ptr @_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtCs2RXd34xq0RM_12synstructure11BindingInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBR_(ptr nonnull align 8 %i.a)
          to label %bb.e unwind label %.loopexit  ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = invoke { ptr, i64 } @_RNvXs8_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecbENtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5derefCs2RXd34xq0RM_12synstructure(ptr nonnull align 8 %i.g)
          to label %bb.j unwind label %.loopexit  ; 2 uses

bb.g:                                             ; preds = %bb.e
  %i.i = invoke { ptr, i64 } @_RNvXs8_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecbENtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5derefCs2RXd34xq0RM_12synstructure(ptr nonnull align 8 %i.b)
          to label %bb.h unwind label %.loopexit.split-lp ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  invoke fastcc void @_RNvCs2RXd34xq0RM_12synstructure14fetch_generics(ptr noalias align 8 %0, ptr %i.j, i64 %i.k, ptr align 8 %i.m)
          to label %bb.i unwind label %.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecbEECs2RXd34xq0RM_12synstructure(ptr nonnull align 8 %i.b)
  ret void

bb.j:                                             ; preds = %bb.f
  %i.n = extractvalue { ptr, i64 } %i.h, 0
  %i.o = extractvalue { ptr, i64 } %i.h, 1
  invoke fastcc void @_RNvCs2RXd34xq0RM_12synstructure13generics_fuse(ptr align 8 %i.b, ptr %i.n, i64 %i.o)
          to label %bb.d unwind label %.loopexit

bb.k:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.l:                                             ; preds = %bb.b
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs1_Cs2RXd34xq0RM_12synstructureNtB5_11VariantInfo3ast(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_Cs2RXd34xq0RM_12synstructureNtB5_11VariantInfo3new(ptr noalias nofree writeonly align 8 captures(none) %0, ptr nofree nonnull readonly align 8 captures(none) %1, ptr align 8 %2, ptr align 8 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %3, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_RNvMNtCsbSS6DM8SDEO_5alloc3vecINtB2_3VecNtCs2RXd34xq0RM_12synstructure11BindingInfoE3newBE_(ptr nonnull sret([24 x i8]) align 8 %i.c) #12
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = tail call { ptr, ptr } @_RNvXs9_NtCsgFSQ9XOTBNe_3syn10punctuatedRINtB5_10PunctuatedNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterCs2RXd34xq0RM_12synstructure(ptr nonnull align 8 %.sroa.0.0) ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  call void @_RNvYINtNtCsgFSQ9XOTBNe_3syn10punctuated4IterNtNtB7_4data5FieldENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator9enumerateCs2RXd34xq0RM_12synstructure(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %i.j, ptr align 8 %i.k) #12
  call void @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerate9EnumerateINtNtCsgFSQ9XOTBNe_3syn10punctuated4IterNtNtB18_4data5FieldEENtNtNtBa_6traits8iterator8Iterator3mapNtCs2RXd34xq0RM_12synstructure11BindingInfoNCNvMs1_B2G_NtB2G_11VariantInfo3new0EB2G_(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.d) #12
  call void @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateINtNtCsgFSQ9XOTBNe_3syn10punctuated4IterNtNtB1o_4data5FieldEENCNvMs1_Cs2RXd34xq0RM_12synstructureNtB2q_11VariantInfo3new0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB2q_11BindingInfoEEB2q_(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = invoke i64 @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtCs2RXd34xq0RM_12synstructure11BindingInfoE3lenBG_(ptr nonnull align 8 %i.c)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs2RXd34xq0RM_12synstructure11BindingInfoEEB1a_(ptr nonnull align 8 %i.c) #13
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %2, ptr %i.n, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.p = load ptr, ptr %i.d, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.l, ptr %i.r, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.h:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.m
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_Cs2RXd34xq0RM_12synstructureNtB5_11VariantInfo3pat(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 2 uses
  %i.b = alloca [12 x i8], align 4                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.f, align 8
  call void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsq_NtCslCbDOIcU2Dw_5quote9to_tokensNtCs1K5DUQUZc67_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.e)
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.k, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  invoke void @_RNvXsq_NtCslCbDOIcU2Dw_5quote9to_tokensNtCs1K5DUQUZc67_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr align 8 %i.j, ptr nonnull align 8 %i.e)
          to label %bb.m unwind label %bb.e

bb.d:                                             ; preds = %bb.j, %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.m, %bb.j ], [ %i.l, %bb.h ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.e) #13
          to label %bb.z unwind label %bb.l

bb.e:                                             ; preds = %bb.x, %bb.v, %bb.u, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.k, %bb.f, %bb.c, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.c)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.c)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.c) #13
          to label %bb.d unwind label %bb.l

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  invoke void @_RNvXsu_NtCslCbDOIcU2Dw_5quote9to_tokensNtCs1K5DUQUZc67_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.e)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.d) #13
          to label %bb.d unwind label %bb.l

bb.k:                                             ; preds = %bb.i
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.d)
          to label %bb.c unwind label %bb.e

bb.l:                                             ; preds = %bb.j, %bb.h, %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.m:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load i64, ptr %i.p, align 8
  switch i64 %i.q, label %bb.n [
    i64 0, label %bb.o
    i64 1, label %bb.p
    i64 2, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.r = invoke i32 @_RNvMsi_Cs1K5DUQUZc67_11proc_macro2NtB5_4Span9call_site()
          to label %bb.r unwind label %bb.e

bb.p:                                             ; preds = %bb.m
  %i.s = invoke i32 @_RNvMsi_Cs1K5DUQUZc67_11proc_macro2NtB5_4Span9call_site()
          to label %bb.u unwind label %bb.e

bb.q:                                             ; preds = %bb.m
  %i.t = invoke zeroext i1 @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtCs2RXd34xq0RM_12synstructure11BindingInfoE8is_emptyBG_(ptr nonnull align 8 %1)
          to label %bb.w unwind label %bb.e

bb.r:                                             ; preds = %bb.o
  invoke void @_RINvNtCsgFSQ9XOTBNe_3syn5token5BraceNtCs1K5DUQUZc67_11proc_macro24SpanEB4_(ptr nonnull sret([12 x i8]) align 4 %i.a, i32 %i.r)
          to label %bb.s unwind label %bb.e

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMsiX_NtCsgFSQ9XOTBNe_3syn5tokenNtB7_5Brace8surroundNCNvMs1_Cs2RXd34xq0RM_12synstructureNtBZ_11VariantInfo3pats_0EBZ_(ptr nonnull align 4 %i.a, ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.f)
          to label %bb.t unwind label %bb.e

bb.t:                                             ; preds = %bb.v, %bb.s, %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  ret void

bb.u:                                             ; preds = %bb.p
  invoke void @_RINvNtCsgFSQ9XOTBNe_3syn5token5ParenNtCs1K5DUQUZc67_11proc_macro24SpanEB4_(ptr nonnull sret([12 x i8]) align 4 %i.b, i32 %i.s)
          to label %bb.v unwind label %bb.e

bb.v:                                             ; preds = %bb.u
  invoke void @_RINvMsjf_NtCsgFSQ9XOTBNe_3syn5tokenNtB7_5Paren8surroundNCNvMs1_Cs2RXd34xq0RM_12synstructureNtBZ_11VariantInfo3pat0EBZ_(ptr nonnull align 4 %i.b, ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.f)
          to label %bb.t unwind label %bb.e

bb.w:                                             ; preds = %bb.q
  br i1 %i.t, label %bb.t, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr nonnull @7, i64 42, ptr nonnull align 8 @8) #16
          to label %bb.y unwind label %bb.e

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs1_Cs2RXd34xq0RM_12synstructureNtB5_11VariantInfo8bindings(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvXs8_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs2RXd34xq0RM_12synstructure11BindingInfoENtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5derefBH_(ptr align 8 %0) #12
  ret { ptr, i64 } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define align 8 ptr @_RNvMs2_Cs2RXd34xq0RM_12synstructureNtB5_9Structure10add_bounds(ptr nofree returned writeonly align 8 captures(ret: address, provenance) initializes((81, 82)) %0, i8 %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 81
  store i8 %1, ptr %i.a, align 1
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs2_Cs2RXd34xq0RM_12synstructureNtB5_9Structure12variants_mut(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvXs9_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs2RXd34xq0RM_12synstructure11VariantInfoENtNtNtCshzWfHUSfYae_4core3ops5deref8DerefMut9deref_mutBH_(ptr align 8 %0) #12
  ret { ptr, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_Cs2RXd34xq0RM_12synstructureNtB5_9Structure13impl_internal(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1, ptr align 8 %2, ptr align 8 %3, ptr align 8 %4, i8 %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 2 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 2 uses
  %i.g = alloca [32 x i8], align 8                ; 13 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 3 uses
  %i.k = alloca [8 x i8], align 8                 ; 2 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [40 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 2 uses
  %i.o = alloca [120 x i8], align 8               ; 2 uses
  %i.p = alloca [120 x i8], align 8               ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 3 uses
  %i.r = alloca [8 x i8], align 8                 ; 2 uses
  %i.s = alloca [24 x i8], align 8                ; 2 uses
  %i.t = alloca [8 x i8], align 8                 ; 2 uses
  %i.u = alloca [88 x i8], align 8                ; 5 uses
  %i.v = alloca [8 x i8], align 8                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 81
  %i.x = load i8, ptr %i.w, align 1
  %i.y = invoke i8 @_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionNtCs2RXd34xq0RM_12synstructure9AddBoundsE9unwrap_orBJ_(i8 %5, i8 %i.x)
          to label %bb.d unwind label %bb.c
end_hunk_1
