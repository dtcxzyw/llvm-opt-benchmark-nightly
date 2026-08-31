Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio_macros-12eaf04942311908.tokio_macros.42cddc68238191f1-cgu.05?download=true
inline.NumInlined: 642
inline.NumDeleted: 221
begin_hunk_0_@_RINvNtCscBrinq2mG3I_3syn5parse12parse_scopedNvYNtNtB4_4path4PathNtB2_5Parse5parseECs5JB0sjZZtVB_12tokio_macros:bb.a
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11, !noalias !1308
  unreachable

bb.ak:                                            ; preds = %bb.i, %bb.f, %.body.i
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11, !noalias !1308
  unreachable

bb.al:                                            ; preds = %_RNvYNvYNtNtCscBrinq2mG3I_3syn4path4PathNtNtB9_5parse5Parse5parseINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBD_11ParseBufferEE9call_onceCs5JB0sjZZtVB_12tokio_macros.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !1324
  store i64 -1, ptr %0, align 8, !alias.scope !1396, !noalias !1399
  br label %bb.ac

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit19.i: ; preds = %bb.ai, %bb.ah, %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %cond23 = icmp eq i64 %i.k, 0
  br i1 %cond23, label %_RNvXsh_NtCscBrinq2mG3I_3syn5parseNvYNtNtB7_4path4PathNtB5_5Parse5parseNtB5_6Parser14___parse_scopedCs5JB0sjZZtVB_12tokio_macros.exit, label %.lr.ph20

bb.am:                                            ; preds = %.lr.ph20
  %i.bu = icmp eq i64 %i.bw, %i.k
  br i1 %i.bu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer11TokenBufferECs5JB0sjZZtVB_12tokio_macros.exit.sink.split.i, label %.lr.ph20

.lr.ph20:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit19.i, %bb.am
  %.sroa.0.0.i.i.i20.i19 = phi i64 [ %i.bw, %bb.am ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit19.i ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %.sroa.0.0.i.i.i20.i19
  %i.bw = add nuw nsw i64 %.sroa.0.0.i.i.i20.i19, 1 ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer5EntryECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bv)
          to label %bb.am unwind label %bb.ao, !noalias !1308

bb.an:                                            ; preds = %.lr.ph22
  %i.bx = add i64 %.sroa.0.1.i.i.i21.i21, 1       ; 2 uses
  %i.by = icmp eq i64 %i.bx, %i.k
  br i1 %i.by, label %common.resume.sink.split.i, label %.lr.ph22

bb.ao:                                            ; preds = %.lr.ph20
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = icmp eq i64 %i.bw, %i.k
  br i1 %i.ca, label %common.resume.sink.split.i, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.ao, %bb.an
  %.sroa.0.1.i.i.i21.i21 = phi i64 [ %i.bx, %bb.an ], [ %i.bw, %bb.ao ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %.sroa.0.1.i.i.i21.i21
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer5EntryECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.cb) #12
          to label %bb.an unwind label %bb.ap, !noalias !1308

bb.ap:                                            ; preds = %.lr.ph22
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11, !noalias !1308
  unreachable

_RNvXsh_NtCscBrinq2mG3I_3syn5parseNvYNtNtB7_4path4PathNtB5_5Parse5parseNtB5_6Parser14___parse_scopedCs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit19.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer11TokenBufferECs5JB0sjZZtVB_12tokio_macros.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamE8push_mutCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !1401, !noundef !5
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamE8grow_oneCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro211TokenStreamECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %1) #12
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsh_NtCscBrinq2mG3I_3syn5parseNvYNtNtCs5JB0sjZZtVB_12tokio_macros5entry6ItemFnNtB5_5Parse5parseNtB5_6Parser6parse2BC_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([408 x i8]) align 8 captures(none) dereferenceable(408) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.0101.i.i.sroa.14 = alloca [328 x i8], align 8 ; 14 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 16 uses
  %i.j = alloca [32 x i8], align 8                ; 13 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 12 uses
  %i.m = alloca [56 x i8], align 8                ; 9 uses
  %i.n = alloca [32 x i8], align 8                ; 13 uses
  %i.o = alloca [288 x i8], align 8               ; 9 uses
  %i.p = alloca [288 x i8], align 8               ; 12 uses
  %i.q = alloca [32 x i8], align 8                ; 11 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 12 uses
  %i.t = alloca [32 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 2 uses
  %i.v = alloca [24 x i8], align 8                ; 3 uses
  %.sroa.23 = alloca [328 x i8], align 8          ; 3 uses
  %.sroa.32 = alloca [12 x i8], align 8           ; 3 uses
  %i.w = alloca [408 x i8], align 8               ; 14 uses
  %i.x = alloca [32 x i8], align 8                ; 14 uses
  %i.y = alloca [16 x i8], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.z = call { ptr, i64 } @_RNvMNtCscBrinq2mG3I_3syn6bufferNtB2_11TokenBuffer4new2(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.t) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.aa = extractvalue { ptr, i64 } %i.z, 0       ; 10 uses
  %i.ab = extractvalue { ptr, i64 } %i.z, 1       ; 12 uses
  store ptr %i.aa, ptr %i.y, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %i.ab, ptr %i.ac, align 8
  invoke void @_RNvNtCscBrinq2mG3I_3syn5parse22tokens_to_parse_buffer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.y)
          to label %bb.c unwind label %bb.b

.body18:                                          ; preds = %bb.cn, %bb.co, %bb.cp, %bb.bz, %bb.ca, %bb.cb, %bb.b, %.body
  %.pn8 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.cy, %bb.bz ], [ %i.ad, %bb.b ], [ %i.cy, %bb.cb ], [ %i.cy, %bb.ca ], [ %i.dz, %bb.cp ], [ %i.dz, %bb.co ], [ %i.dz, %bb.cn ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer11TokenBufferECs5JB0sjZZtVB_12tokio_macros(ptr %i.aa, i64 %i.ab) #12
          to label %common.resume unwind label %bb.cu

bb.b:                                             ; preds = %bb.cs, %bb.ce, %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body18

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1402
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1405
  invoke void @_RNvMNtCscBrinq2mG3I_3syn4attrNtB2_9Attribute11parse_outer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.r, ptr noundef nonnull align 8 %i.x)
          to label %.noexc unwind label %bb.bp

.noexc:                                           ; preds = %bb.c
  %i.ae = load i64, ptr %i.r, align 8, !range !515, !noalias !1405, !noundef !5
  %i.af = trunc nuw i64 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5.i.i.sroa.0.0.copyload = load i64, ptr %i.ag, align 8, !noalias !1405 ; 2 uses
  %.sroa.5.i.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.5.i.i.sroa.6.0.copyload = load i64, ptr %.sroa.5.i.i.sroa.6.0..sroa_idx, align 8, !noalias !1405 ; 2 uses
  %.sroa.5.i.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.5.i.i.sroa.7.0.copyload = load i64, ptr %.sroa.5.i.i.sroa.7.0..sroa_idx, align 8, !noalias !1405 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1405
  br i1 %i.af, label %.thread, label %bb.d

bb.d:                                             ; preds = %.noexc
  store i64 %.sroa.5.i.i.sroa.0.0.copyload, ptr %i.s, align 8, !noalias !1405
  %.sroa.5.i.i.sroa.6.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %.sroa.5.i.i.sroa.6.0.copyload, ptr %.sroa.5.i.i.sroa.6.0..sroa_idx87, align 8, !noalias !1405
  %.sroa.5.i.i.sroa.7.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.sroa.5.i.i.sroa.7.0.copyload, ptr %.sroa.5.i.i.sroa.7.0..sroa_idx89, align 8, !noalias !1405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1405
  invoke void @_RNvXNtNtCscBrinq2mG3I_3syn11restriction7parsingNtB4_10VisibilityNtNtB6_5parse5Parse5parse(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.q, ptr noundef nonnull align 8 %i.x)
          to label %bb.f unwind label %bb.e, !noalias !1405

bb.e:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.f:                                             ; preds = %bb.d
  %i.ai = load i32, ptr %i.q, align 8, !range !1408, !noalias !1405, !noundef !5 ; 5 uses
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.0117.0.copyload.i.i = load i64, ptr %i.ak, align 8, !noalias !1405
  %.sroa.4118.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.6.sroa.8.i.i.sroa.0.0.copyload92 = load i64, ptr %.sroa.4118.0..sroa_idx.i.i, align 8, !noalias !1405
  %.sroa.6.sroa.8.i.i.sroa.7.0..sroa.4118.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.6.sroa.8.i.i.sroa.7.0.copyload94 = load i64, ptr %.sroa.6.sroa.8.i.i.sroa.7.0..sroa.4118.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !1405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1405
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn11restriction10VisibilityECs5JB0sjZZtVB_12tokio_macros.exit.i.i

bb.h:                                             ; preds = %bb.f
  %.sroa.443.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.sroa.443.sroa.0.0.copyload.i.i = load i32, ptr %.sroa.443.0..sroa_idx.i.i, align 4, !noalias !1405
  %.sroa.443.sroa.4.0..sroa.443.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %2 = load <2 x i64>, ptr %.sroa.443.sroa.4.0..sroa.443.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1405
  %.sroa.443.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.443.sroa.4.0..sroa.443.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1405
  %.sroa.443.sroa.5.0..sroa.443.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.6.sroa.8.i.i.sroa.7.0.copyload = load i64, ptr %.sroa.443.sroa.5.0..sroa.443.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1405
  %3 = inttoptr i64 %.sroa.443.sroa.4.0.copyload.i.i to ptr ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1405
  invoke void @_RNvXs6_NtNtCscBrinq2mG3I_3syn4item7parsingNtB7_9SignatureNtNtB9_5parse5Parse5parse(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(address) dereferenceable(288) %i.o, ptr noundef nonnull align 8 %i.x)
          to label %bb.j unwind label %bb.i, !noalias !1405

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit.i.i, %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.j:                                             ; preds = %bb.h
  %i.am = load i64, ptr %i.o, align 8, !range !1409, !noalias !1405, !noundef !5 ; 2 uses
  %i.an = icmp eq i64 %i.am, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.68.i.i.sroa.0.0.copyload = load i64, ptr %i.ao, align 8, !noalias !1405 ; 2 uses
  %.sroa.68.i.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.68.i.i.sroa.6.0.copyload = load i64, ptr %.sroa.68.i.i.sroa.6.0..sroa_idx, align 8, !noalias !1405 ; 2 uses
  %.sroa.68.i.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.68.i.i.sroa.7.0.copyload = load i64, ptr %.sroa.68.i.i.sroa.7.0..sroa_idx, align 8, !noalias !1405 ; 2 uses
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1405
  br label %bb.bi

bb.l:                                             ; preds = %bb.j
  %.sroa.546.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.513.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.513.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.546.0..sroa_idx.i.i, i64 256, i1 false), !noalias !1405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1405
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  store i64 %.sroa.68.i.i.sroa.0.0.copyload, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !noalias !1405
  %.sroa.68.i.i.sroa.6.0..sroa.412.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store i64 %.sroa.68.i.i.sroa.6.0.copyload, ptr %.sroa.68.i.i.sroa.6.0..sroa.412.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !1405
  %.sroa.68.i.i.sroa.7.0..sroa.412.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  store i64 %.sroa.68.i.i.sroa.7.0.copyload, ptr %.sroa.68.i.i.sroa.7.0..sroa.412.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !1405
  store i64 %i.am, ptr %i.p, align 8, !noalias !1405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1405
  invoke void @_RNvNtCscBrinq2mG3I_3syn5group12parse_braces(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.m, ptr noundef nonnull align 8 %i.x)
          to label %bb.m unwind label %.thread164.i.i, !noalias !1405

.thread141.i.i:                                   ; preds = %bb.at, %bb.o
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread137.i.i

.thread164.i.i:                                   ; preds = %bb.l
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body77.thread.i.i

bb.m:                                             ; preds = %bb.l
  %i.ap = load i64, ptr %i.m, align 8, !range !515, !noalias !1405, !noundef !5
  %i.aq = trunc nuw i64 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.sroa.11.8.copyload39 = load i64, ptr %i.ar, align 8
  %.sroa.20.8..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.20.8.copyload48 = load i64, ptr %.sroa.20.8..sroa_idx47, align 8
  %.sroa.22.8..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.22.8.copyload58 = load i64, ptr %.sroa.22.8..sroa_idx57, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1405
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 8 dereferenceable(12) %i.as, i64 12, i1 false), !noalias !1405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i64 32, i1 false), !noalias !1405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1405
  invoke void @_RNvMNtCscBrinq2mG3I_3syn4attrNtB2_9Attribute11parse_inner(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.k, ptr noundef nonnull align 8 %i.n)
          to label %bb.p unwind label %.thread141.i.i, !noalias !1405

bb.p:                                             ; preds = %bb.o
  %i.at = load i64, ptr %i.k, align 8, !range !515, !noalias !1405, !noundef !5
  %i.au = trunc nuw i64 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.515.i.i.sroa.0.0.copyload = load i64, ptr %i.av, align 8, !noalias !1405 ; 2 uses
  %.sroa.515.i.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.515.i.i.sroa.6.0.copyload = load i64, ptr %.sroa.515.i.i.sroa.6.0..sroa_idx, align 8, !noalias !1405 ; 2 uses
  %.sroa.515.i.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.515.i.i.sroa.7.0.copyload = load i64, ptr %.sroa.515.i.i.sroa.7.0..sroa_idx, align 8, !noalias !1405 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1405
  br i1 %i.au, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i64 %.sroa.515.i.i.sroa.0.0.copyload, ptr %i.l, align 8, !noalias !1405
  %.sroa.515.i.i.sroa.6.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.sroa.515.i.i.sroa.6.0.copyload, ptr %.sroa.515.i.i.sroa.6.0..sroa_idx102, align 8, !noalias !1405
  %.sroa.515.i.i.sroa.7.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %.sroa.515.i.i.sroa.7.0.copyload, ptr %.sroa.515.i.i.sroa.7.0..sroa_idx104, align 8, !noalias !1405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1405
  invoke void @_RNvMCsfr4kGEjnBfC_11proc_macro2NtB2_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j)
          to label %bb.s unwind label %.thread156.i.i, !noalias !1405

.thread156.i.i:                                   ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamEECs5JB0sjZZtVB_12tokio_macros.exit.i.i, %bb.q
  %lpad.thr_comm154.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread145.i.i

bb.r:                                             ; preds = %bb.be
  %lpad.thr_comm.split-lp155.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread137.i.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1405
  store i64 0, ptr %i.i, align 8, !noalias !1405
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.aw, align 8, !noalias !1405
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store i64 0, ptr %i.ax, align 8, !noalias !1405
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.458.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.233.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.backedge.i.i.backedge, %bb.s
  %i.az = invoke noundef zeroext i1 @_RNvMs9_NtCscBrinq2mG3I_3syn5parseNtB5_11ParseBuffer8is_empty(ptr noundef nonnull align 8 %i.n)
          to label %bb.t unwind label %.loopexit.i.i, !noalias !1405

.loopexit.i.i:                                    ; preds = %bb.aj, %bb.af, %bb.aa, %bb.z, %bb.u, %.backedge.i.i
  %.sroa.034.1.ph.i.i = phi i1 [ true, %bb.u ], [ true, %bb.aa ], [ true, %bb.aj ], [ true, %bb.z ], [ true, %.backedge.i.i ], [ false, %bb.af ]
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i.i:                           ; preds = %bb.bd, %bb.v
  %.sroa.034.1.ph170.i.i = phi i1 [ true, %bb.v ], [ false, %bb.bd ]
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ad, %.loopexit.split-lp.i.i, %.loopexit.i.i
  %.sroa.034.1.lpad-body.i.i = phi i1 [ false, %bb.ad ], [ %.sroa.034.1.ph.i.i, %.loopexit.i.i ], [ %.sroa.034.1.ph170.i.i, %.loopexit.split-lp.i.i ]
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bg, %bb.ad ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamEECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #12
          to label %bb.ap unwind label %bb.bh, !noalias !1405

bb.t:                                             ; preds = %.backedge.i.i
  br i1 %i.az, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1405
  invoke void @_RNvXsb_NtCscBrinq2mG3I_3syn5parseINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB7_5token4SemiENtB5_5Parse5parseCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %i.n)
          to label %bb.w unwind label %.loopexit.i.i, !noalias !1405

bb.v:                                             ; preds = %bb.t
  %i.ba = invoke noundef zeroext i1 @_RNvMCsfr4kGEjnBfC_11proc_macro2NtB2_11TokenStream8is_empty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j)
          to label %bb.bc unwind label %.loopexit.split-lp.i.i, !noalias !1405

bb.w:                                             ; preds = %bb.u
  %i.bb = load i64, ptr %i.h, align 8, !range !18, !noalias !1405, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i64 %i.bb, -1
  %.sroa.047.0.copyload.i.i = load i64, ptr %i.ay, align 8, !noalias !1405 ; 3 uses
  br i1 %.not.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.553.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.553.0.copyload.i.i = load i64, ptr %.sroa.553.0..sroa_idx.i.i, align 8, !noalias !1405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1405
  br label %bb.al

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1405
  %i.bc = trunc i64 %.sroa.047.0.copyload.i.i to i1
  br i1 %i.bc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.sroa.2.0.extract.shift.i.i = lshr i64 %.sroa.047.0.copyload.i.i, 32
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1405
  store i32 %.sroa.2.0.extract.trunc.i.i, ptr %i.g, align 4, !noalias !1405
  invoke void @_RNvXs8M_NtCscBrinq2mG3I_3syn5tokenNtB6_4SemiNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %bb.ab unwind label %.loopexit.i.i, !noalias !1405

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1405
  invoke void @_RNvXsd_NtCscBrinq2mG3I_3syn5parseNtCsfr4kGEjnBfC_11proc_macro29TokenTreeNtB5_5Parse5parse(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %i.n)
          to label %bb.ah unwind label %.loopexit.i.i, !noalias !1405

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !1405
  %i.bd = load i64, ptr %i.ax, align 8, !alias.scope !1410, !noalias !1413, !noundef !5 ; 3 uses
  %i.be = load i64, ptr %i.i, align 8, !range !1401, !alias.scope !1410, !noalias !1413, !noundef !5
  %i.bf = icmp eq i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamE8grow_oneCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.af unwind label %bb.ad, !noalias !1413

bb.ad:                                            ; preds = %bb.ac
  %i.bg = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_RNvXsh_NtCscBrinq2mG3I_3syn5parseNvYNtNtCs5JB0sjZZtVB_12tokio_macros5entry6ItemFnNtB5_5Parse5parseNtB5_6Parser6parse2BC_:bb.a
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamEECs5JB0sjZZtVB_12tokio_macros.exit.i.i unwind label %bb.aq, !noalias !1405

bb.ao:                                            ; preds = %bb.am
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11, !noalias !1405
  unreachable

bb.ap:                                            ; preds = %.body.i.i
  br i1 %.sroa.034.1.lpad-body.i.i, label %.thread159.i.i, label %.thread145.i.i

bb.aq:                                            ; preds = %bb.an
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.thread159.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamEECs5JB0sjZZtVB_12tokio_macros.exit.i.i: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1405
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro211TokenStreamECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.j)
          to label %bb.ar unwind label %.thread156.i.i, !noalias !1405

bb.ar:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamEECs5JB0sjZZtVB_12tokio_macros.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1405
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.at unwind label %bb.as, !noalias !1405

bb.as:                                            ; preds = %bb.ar
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCscBrinq2mG3I_3syn4attr9AttributeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.thread137.i.i unwind label %bb.au, !noalias !1405

bb.at:                                            ; preds = %bb.ar
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCscBrinq2mG3I_3syn4attr9AttributeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros.exit.i.i unwind label %.thread141.i.i, !noalias !1405

bb.au:                                            ; preds = %bb.as
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11, !noalias !1405
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit.i.i: ; preds = %bb.ba, %bb.az, %bb.ay, %bb.n
  %.sroa.22.2 = phi i64 [ %.sroa.22.8.copyload58, %bb.n ], [ %.sroa.22.1, %bb.ay ], [ %.sroa.22.1, %bb.ba ], [ %.sroa.22.1, %bb.az ]
  %.sroa.20.2 = phi i64 [ %.sroa.20.8.copyload48, %bb.n ], [ %.sroa.20.1, %bb.ay ], [ %.sroa.20.1, %bb.ba ], [ %.sroa.20.1, %bb.az ]
  %.sroa.11.2 = phi i64 [ %.sroa.11.8.copyload39, %bb.n ], [ %.sroa.11.1, %bb.ay ], [ %.sroa.11.1, %bb.ba ], [ %.sroa.11.1, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1405
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4item9SignatureECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(288) %i.p)
          to label %bb.bi unwind label %bb.i, !noalias !1405

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros.exit.i.i: ; preds = %bb.p, %bb.at
  %.sroa.22.1 = phi i64 [ %.sroa.22.0, %bb.at ], [ %.sroa.515.i.i.sroa.7.0.copyload, %bb.p ] ; 3 uses
  %.sroa.20.1 = phi i64 [ %.sroa.20.0, %bb.at ], [ %.sroa.515.i.i.sroa.6.0.copyload, %bb.p ] ; 3 uses
  %.sroa.11.1 = phi i64 [ %.sroa.11.0, %bb.at ], [ %.sroa.515.i.i.sroa.0.0.copyload, %bb.p ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1405
  invoke void @_RNvXNtCscBrinq2mG3I_3syn5parseNtB2_11ParseBufferNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %bb.ay unwind label %bb.av, !noalias !1405

bb.av:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros.exit.i.i
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1416)
  call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !1425, !noalias !1405, !noundef !5 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %.body77.thread.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.bx = load i64, ptr %i.bv, align 8, !noalias !1428, !noundef !5
  %i.by = add i64 %i.bx, -1                       ; 2 uses
  store i64 %i.by, ptr %i.bv, align 8, !noalias !1428
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.ax, label %.body77.thread.i.i

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell4CellNtNtCscBrinq2mG3I_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bu) #14
          to label %.body77.thread.i.i unwind label %bb.bb, !noalias !1405

bb.ay:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros.exit.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !1442, !noalias !1405, !noundef !5 ; 3 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cd = load i64, ptr %i.cb, align 8, !noalias !1443, !noundef !5
  %i.ce = add i64 %i.cd, -1                       ; 2 uses
  store i64 %i.ce, ptr %i.cb, align 8, !noalias !1443
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.ba, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit.i.i

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell4CellNtNtCscBrinq2mG3I_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ca) #14
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit.i.i unwind label %.split.thread.i.i, !noalias !1405

.split.thread.i.i:                                ; preds = %bb.ba
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body77.thread.i.i

bb.bb:                                            ; preds = %bb.ax
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11, !noalias !1405
  unreachable

bb.bc:                                            ; preds = %bb.v
  br i1 %i.ba, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !1405
  invoke fastcc void @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamE8push_mutCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.c)
          to label %bb.bf unwind label %.loopexit.split-lp.i.i

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0101.i.i.sroa.14)
  %.sroa.0101.i.i.sroa.14.288..sroa_idx114 = getelementptr inbounds nuw i8, ptr %.sroa.0101.i.i.sroa.14, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0101.i.i.sroa.14.288..sroa_idx114, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !1405
  %.sroa.0101.i.i.sroa.0.0.copyload106 = load i64, ptr %i.p, align 8, !noalias !1405
  %.sroa.0101.i.i.sroa.8.0.copyload108 = load i64, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !noalias !1405
  %.sroa.0101.i.i.sroa.10.0.copyload110 = load i64, ptr %.sroa.68.i.i.sroa.6.0..sroa.412.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !1405
  %.sroa.0101.i.i.sroa.12.0.copyload112 = load i64, ptr %.sroa.68.i.i.sroa.7.0..sroa.412.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !1405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.0101.i.i.sroa.14, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.513.0..sroa_idx.i.i, i64 256, i1 false), !noalias !1405
  %.sroa.0101.i.i.sroa.14.312..sroa_idx115 = getelementptr inbounds nuw i8, ptr %.sroa.0101.i.i.sroa.14, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0101.i.i.sroa.14.312..sroa_idx115, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !1405
  %.sroa.0101.i.i.sroa.14.336..sroa_idx116 = getelementptr inbounds nuw i8, ptr %.sroa.0101.i.i.sroa.14, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0101.i.i.sroa.14.336..sroa_idx116, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !1405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(328) %.sroa.0101.i.i.sroa.14, i64 328, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.32, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0101.i.i.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1405
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro211TokenStreamECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.j)
          to label %bb.bg unwind label %bb.r, !noalias !1405

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1405
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0101.i.i.sroa.14)
  %.sroa.0101.i.i.sroa.14.288..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0101.i.i.sroa.14, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0101.i.i.sroa.14.288..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !1405
  %.sroa.0101.i.i.sroa.0.0.copyload = load i64, ptr %i.p, align 8, !noalias !1405
  %.sroa.0101.i.i.sroa.8.0.copyload = load i64, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !noalias !1405
  %.sroa.0101.i.i.sroa.10.0.copyload = load i64, ptr %.sroa.68.i.i.sroa.6.0..sroa.412.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !1405
  %.sroa.0101.i.i.sroa.12.0.copyload = load i64, ptr %.sroa.68.i.i.sroa.7.0..sroa.412.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !1405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.0101.i.i.sroa.14, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.513.0..sroa_idx.i.i, i64 256, i1 false), !noalias !1405
  %.sroa.0101.i.i.sroa.14.312..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0101.i.i.sroa.14, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0101.i.i.sroa.14.312..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !1405
  %.sroa.0101.i.i.sroa.14.336..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0101.i.i.sroa.14, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0101.i.i.sroa.14.336..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !1405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(328) %.sroa.0101.i.i.sroa.14, i64 328, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.32, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0101.i.i.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1405
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.sroa.22.5 = phi i64 [ %.sroa.0101.i.i.sroa.12.0.copyload112, %bb.be ], [ %.sroa.0101.i.i.sroa.12.0.copyload, %bb.bf ] ; 2 uses
  %.sroa.20.5 = phi i64 [ %.sroa.0101.i.i.sroa.10.0.copyload110, %bb.be ], [ %.sroa.0101.i.i.sroa.10.0.copyload, %bb.bf ] ; 2 uses
  %.sroa.11.5 = phi i64 [ %.sroa.0101.i.i.sroa.8.0.copyload108, %bb.be ], [ %.sroa.0101.i.i.sroa.8.0.copyload, %bb.bf ] ; 2 uses
  %.sroa.034.5 = phi i64 [ %.sroa.0101.i.i.sroa.0.0.copyload106, %bb.be ], [ %.sroa.0101.i.i.sroa.0.0.copyload, %bb.bf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1405
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n)
          to label %bb.bq unwind label %bb.bp

.body77.i.i:                                      ; preds = %.thread137.i.i
  br i1 %.sroa.041.2135.i.i, label %.body77.thread.i.i, label %.body

bb.bh:                                            ; preds = %bb.bo, %bb.bn, %.body77.thread.i.i, %.thread137.i.i, %.thread145.i.i, %.thread159.i.i, %.body.i.i
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11, !noalias !1405
  unreachable

.thread159.i.i:                                   ; preds = %bb.aq, %bb.ap, %bb.am
  %.pn163.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %bb.ap ], [ %i.bq, %bb.aq ], [ %i.bo, %bb.am ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro211TokenStreamECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.j) #12
          to label %.thread145.i.i unwind label %bb.bh, !noalias !1405

.thread145.i.i:                                   ; preds = %.thread159.i.i, %bb.ap, %.thread156.i.i
  %.pn61151.i.i = phi { ptr, i32 } [ %lpad.thr_comm154.i.i, %.thread156.i.i ], [ %eh.lpad-body.i.i, %bb.ap ], [ %.pn163.i.i, %.thread159.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #12
          to label %.thread137.i.i unwind label %bb.bh, !noalias !1405

bb.bi:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit.i.i, %bb.k
  %.sroa.22.3 = phi i64 [ %.sroa.68.i.i.sroa.7.0.copyload, %bb.k ], [ %.sroa.22.2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit.i.i ] ; 2 uses
  %.sroa.20.3 = phi i64 [ %.sroa.68.i.i.sroa.6.0.copyload, %bb.k ], [ %.sroa.20.2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit.i.i ] ; 2 uses
  %.sroa.11.3 = phi i64 [ %.sroa.68.i.i.sroa.0.0.copyload, %bb.k ], [ %.sroa.11.2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1405
  %i.cj = icmp ne i32 %i.ai, 3
  call void @llvm.assume(i1 %i.cj)
  %i.ck = icmp samesign ult i32 %i.ai, 2
  br i1 %i.ck, label %bb.bj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn11restriction10VisibilityECs5JB0sjZZtVB_12tokio_macros.exit.i.i

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4path4PathECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %3)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn11restriction13VisRestrictedECs5JB0sjZZtVB_12tokio_macros.exit.i.i.i unwind label %bb.bk, !noalias !1405

bb.bk:                                            ; preds = %bb.bj
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef 48, i64 noundef 8) #10, !noalias !1405
  br label %bb.bo

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn11restriction13VisRestrictedECs5JB0sjZZtVB_12tokio_macros.exit.i.i.i: ; preds = %bb.bj
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef 48, i64 noundef 8) #10, !noalias !1405
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn11restriction10VisibilityECs5JB0sjZZtVB_12tokio_macros.exit.i.i

.thread137.i.i:                                   ; preds = %.thread145.i.i, %bb.as, %bb.r, %.thread141.i.i
  %.pn61.pn136.i.i = phi { ptr, i32 } [ %i.br, %bb.as ], [ %lpad.thr_comm.i.i, %.thread141.i.i ], [ %lpad.thr_comm.split-lp155.i.i, %bb.r ], [ %.pn61151.i.i, %.thread145.i.i ] ; 2 uses
  %.sroa.041.2135.i.i = phi i1 [ true, %bb.as ], [ true, %.thread141.i.i ], [ false, %bb.r ], [ true, %.thread145.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n) #12
          to label %.body77.i.i unwind label %bb.bh, !noalias !1405

.body77.thread.i.i:                               ; preds = %.body77.i.i, %.split.thread.i.i, %bb.ax, %bb.aw, %bb.av, %.thread164.i.i
  %.pn64167.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %.thread164.i.i ], [ %.pn61.pn136.i.i, %.body77.i.i ], [ %i.bt, %bb.ax ], [ %i.bt, %bb.aw ], [ %i.bt, %bb.av ], [ %i.cg, %.split.thread.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4item9SignatureECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(288) %i.p) #12
          to label %bb.bn unwind label %bb.bh, !noalias !1405

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn11restriction10VisibilityECs5JB0sjZZtVB_12tokio_macros.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn11restriction13VisRestrictedECs5JB0sjZZtVB_12tokio_macros.exit.i.i.i, %bb.bi, %bb.g
  %.sroa.22.4 = phi i64 [ %.sroa.6.sroa.8.i.i.sroa.7.0.copyload94, %bb.g ], [ %.sroa.22.3, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn11restriction13VisRestrictedECs5JB0sjZZtVB_12tokio_macros.exit.i.i.i ], [ %.sroa.22.3, %bb.bi ]
  %.sroa.20.4 = phi i64 [ %.sroa.6.sroa.8.i.i.sroa.0.0.copyload92, %bb.g ], [ %.sroa.20.3, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn11restriction13VisRestrictedECs5JB0sjZZtVB_12tokio_macros.exit.i.i.i ], [ %.sroa.20.3, %bb.bi ]
  %.sroa.11.4 = phi i64 [ %.sroa.0117.0.copyload.i.i, %bb.g ], [ %.sroa.11.3, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn11restriction13VisRestrictedECs5JB0sjZZtVB_12tokio_macros.exit.i.i.i ], [ %.sroa.11.3, %bb.bi ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros.exit82.i.i unwind label %bb.bl, !noalias !1405

bb.bl:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn11restriction10VisibilityECs5JB0sjZZtVB_12tokio_macros.exit.i.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCscBrinq2mG3I_3syn4attr9AttributeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body unwind label %bb.bm, !noalias !1405

bb.bm:                                            ; preds = %bb.bl
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11, !noalias !1405
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros.exit82.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn11restriction10VisibilityECs5JB0sjZZtVB_12tokio_macros.exit.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCscBrinq2mG3I_3syn4attr9AttributeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.thread unwind label %bb.bp

bb.bn:                                            ; preds = %.body77.thread.i.i, %bb.i
  %.pn66.ph.i.i = phi { ptr, i32 } [ %.pn64167.i.i, %.body77.thread.i.i ], [ %i.al, %bb.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn11restriction10VisibilityECs5JB0sjZZtVB_12tokio_macros(i32 %i.ai, ptr %3) #12
          to label %bb.bo unwind label %bb.bh, !noalias !1405

bb.bo:                                            ; preds = %bb.bn, %bb.bk, %bb.e
  %.pn68.ph.i.i = phi { ptr, i32 } [ %.pn66.ph.i.i, %bb.bn ], [ %i.ah, %bb.e ], [ %i.cl, %bb.bk ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #12
          to label %.body unwind label %bb.bh, !noalias !1405

.body:                                            ; preds = %bb.bp, %bb.bo, %bb.bl, %.body77.i.i, %bb.bs
  %.pn = phi { ptr, i32 } [ %i.cq, %bb.bs ], [ %i.co, %bb.bp ], [ %i.cm, %bb.bl ], [ %.pn68.ph.i.i, %bb.bo ], [ %.pn61.pn136.i.i, %.body77.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.x) #12
          to label %.body18 unwind label %bb.cu

bb.bp:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros.exit82.i.i, %bb.bg, %bb.c, %bb.cl, %bb.cg
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread:                                          ; preds = %.noexc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros.exit82.i.i
  %.sroa.22.6.ph = phi i64 [ %.sroa.22.4, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros.exit82.i.i ], [ %.sroa.5.i.i.sroa.7.0.copyload, %.noexc ]
  %.sroa.20.6.ph = phi i64 [ %.sroa.20.4, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros.exit82.i.i ], [ %.sroa.5.i.i.sroa.6.0.copyload, %.noexc ]
  %.sroa.11.6.ph = phi i64 [ %.sroa.11.4, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros.exit82.i.i ], [ %.sroa.5.i.i.sroa.0.0.copyload, %.noexc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1402
  br label %bb.cv

bb.bq:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1402
  %i.cp = icmp eq i64 %.sroa.034.5, 2
  br i1 %i.cp, label %bb.cv, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(328) %.sroa.23, i64 328, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.32, i64 12, i1 false)
  store i64 %.sroa.034.5, ptr %i.w, align 8
  %.sroa.270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %.sroa.11.5, ptr %.sroa.270.0..sroa_idx, align 8
  %.sroa.371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %.sroa.20.5, ptr %.sroa.371.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 %.sroa.22.5, ptr %.sroa.4.0..sroa_idx72, align 8
  %.sroa.6.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.w, i64 360
  store i32 %i.ai, ptr %.sroa.6.0..sroa_idx73, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 364
  store i32 %.sroa.443.sroa.0.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 368
  store <2 x i64> %2, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 384
  store i64 %.sroa.6.sroa.8.i.i.sroa.7.0.copyload, ptr %.sroa.9.0..sroa_idx, align 8
  invoke void @_RNvMs9_NtCscBrinq2mG3I_3syn5parseNtB5_11ParseBuffer16check_unexpected(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noundef nonnull align 8 %i.x)
          to label %bb.bt unwind label %bb.bs

bb.bs:                                            ; preds = %bb.bx, %bb.bv, %bb.bu, %bb.br
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5JB0sjZZtVB_12tokio_macros5entry6ItemFnEBF_(ptr noalias nofree noundef align 8 dereferenceable(408) %i.w) #12
          to label %.body unwind label %bb.cu

bb.bt:                                            ; preds = %bb.br
  %i.cr = load i64, ptr %i.v, align 8, !range !18, !alias.scope !1448, !noalias !1451, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.cr, -1
  br i1 %.not.i, label %bb.bu, label %bb.cl

bb.bu:                                            ; preds = %bb.bt
  %i.cs = invoke { ptr, ptr } @_RNvMs9_NtCscBrinq2mG3I_3syn5parseNtB5_11ParseBuffer6cursor(ptr noundef nonnull align 8 %i.x)
          to label %bb.bv unwind label %bb.bs     ; 2 uses

bb.bv:                                            ; preds = %bb.bu
  %i.ct = extractvalue { ptr, ptr } %i.cs, 0
  %i.cu = extractvalue { ptr, ptr } %i.cs, 1
  %i.cv = invoke { i32, i8 } @_RNvNtCscBrinq2mG3I_3syn5parse33span_of_unexpected_ignoring_nones(ptr noundef %i.ct, ptr noundef %i.cu)
          to label %bb.bw unwind label %bb.bs     ; 2 uses

bb.bw:                                            ; preds = %bb.bv
  %i.cw = extractvalue { i32, i8 } %i.cv, 1       ; 2 uses
  %.not6.not = icmp eq i8 %i.cw, -1
  br i1 %.not6.not, label %.thread148, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.cx = extractvalue { i32, i8 } %i.cv, 0
  invoke void @_RNvNtCscBrinq2mG3I_3syn5parse20err_unexpected_token(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, i32 noundef %i.cx, i8 noundef %i.cw)
          to label %bb.cg unwind label %bb.bs

.thread148:                                       ; preds = %bb.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(408) %i.w, i64 408, i1 false)
  br label %bb.by

bb.by:                                            ; preds = %.thread148, %bb.cg
  invoke void @_RNvXNtCscBrinq2mG3I_3syn5parseNtB2_11ParseBufferNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %bb.cc unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  call void @llvm.experimental.noalias.scope.decl(metadata !1459)
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !1462, !noundef !5 ; 3 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %.body18, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.dc = load i64, ptr %i.da, align 8, !noalias !1465, !noundef !5
  %i.dd = add i64 %i.dc, -1                       ; 2 uses
  store i64 %i.dd, ptr %i.da, align 8, !noalias !1465
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %bb.cb, label %.body18

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell4CellNtNtCscBrinq2mG3I_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cz) #14
          to label %.body18 unwind label %bb.cf

bb.cc:                                            ; preds = %bb.by
  %i.df = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1470)
  call void @llvm.experimental.noalias.scope.decl(metadata !1473)
  call void @llvm.experimental.noalias.scope.decl(metadata !1476)
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !1479, !noundef !5 ; 3 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.di = load i64, ptr %i.dg, align 8, !noalias !1480, !noundef !5
  %i.dj = add i64 %i.di, -1                       ; 2 uses
  store i64 %i.dj, ptr %i.dg, align 8, !noalias !1480
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %bb.ce, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit

bb.ce:                                            ; preds = %bb.cd
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell4CellNtNtCscBrinq2mG3I_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.df) #14
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit unwind label %bb.b

bb.cf:                                            ; preds = %bb.cb
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.cg:                                            ; preds = %bb.bx
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  store i64 2, ptr %0, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5JB0sjZZtVB_12tokio_macros5entry6ItemFnEBF_(ptr noalias nofree noundef align 8 dereferenceable(408) %i.w)
          to label %bb.by unwind label %bb.bp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.cd, %bb.cc, %bb.ce
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  %cond = icmp eq i64 %i.ab, 0
  br i1 %cond, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer11TokenBufferECs5JB0sjZZtVB_12tokio_macros.exit, label %.lr.ph

bb.ch:                                            ; preds = %.lr.ph
  %i.dn = icmp eq i64 %i.dp, %i.ab
  br i1 %i.dn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer11TokenBufferECs5JB0sjZZtVB_12tokio_macros.exit.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit, %bb.ch
  %.sroa.0.0.i.i.i178 = phi i64 [ %i.dp, %bb.ch ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit ] ; 2 uses
  %i.do = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %.sroa.0.0.i.i.i178
  %i.dp = add nuw nsw i64 %.sroa.0.0.i.i.i178, 1  ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer5EntryECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.do)
          to label %bb.ch unwind label %bb.cj

bb.ci:                                            ; preds = %.lr.ph180
  %i.dq = add i64 %.sroa.0.1.i.i.i179, 1          ; 2 uses
  %i.dr = icmp eq i64 %i.dq, %i.ab
  br i1 %i.dr, label %common.resume.sink.split, label %.lr.ph180

bb.cj:                                            ; preds = %.lr.ph
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = icmp eq i64 %i.dp, %i.ab
  br i1 %i.dt, label %common.resume.sink.split, label %.lr.ph180

.lr.ph180:                                        ; preds = %bb.cj, %bb.ci
  %.sroa.0.1.i.i.i179 = phi i64 [ %i.dq, %bb.ci ], [ %i.dp, %bb.cj ] ; 2 uses
  %i.du = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %.sroa.0.1.i.i.i179
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer5EntryECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.du) #12
          to label %bb.ci unwind label %bb.ck

bb.ck:                                            ; preds = %.lr.ph180
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11
  unreachable

common.resume.sink.split:                         ; preds = %bb.ci, %bb.cx, %bb.cj, %bb.cy
  %common.resume.op.ph = phi { ptr, i32 } [ %i.eu, %bb.cy ], [ %i.ds, %bb.cj ], [ %i.eu, %bb.cx ], [ %i.ds, %bb.ci ]
  %i.dw = shl nuw nsw i64 %i.ab, 5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef range(i64 1, 0) %i.dw, i64 noundef 8) #10
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.body18
  %common.resume.op = phi { ptr, i32 } [ %.pn8, %.body18 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer11TokenBufferECs5JB0sjZZtVB_12tokio_macros.exit.sink.split: ; preds = %bb.ch, %bb.cw
  %i.dx = shl nuw nsw i64 %i.ab, 5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef range(i64 1, 0) %i.dx, i64 noundef 8) #10
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer11TokenBufferECs5JB0sjZZtVB_12tokio_macros.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer11TokenBufferECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit25, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer11TokenBufferECs5JB0sjZZtVB_12tokio_macros.exit.sink.split
  ret void

bb.cl:                                            ; preds = %bb.bt
  %.sroa.477.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.482.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.477.0..sroa_idx78, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cr, ptr %i.dy, align 8, !alias.scope !1488
  store i64 2, ptr %0, align 8, !alias.scope !1490, !noalias !1485
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5JB0sjZZtVB_12tokio_macros5entry6ItemFnEBF_(ptr noalias nofree noundef align 8 dereferenceable(408) %i.w)
          to label %bb.cm unwind label %bb.bp

bb.cm:                                            ; preds = %bb.cv, %bb.cl
  invoke void @_RNvXNtCscBrinq2mG3I_3syn5parseNtB2_11ParseBufferNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %bb.cq unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  call void @llvm.experimental.noalias.scope.decl(metadata !1494)
  call void @llvm.experimental.noalias.scope.decl(metadata !1497)
  %i.eb = load ptr, ptr %i.ea, align 8, !alias.scope !1500, !noundef !5 ; 3 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %.body18, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ed = load i64, ptr %i.eb, align 8, !noalias !1503, !noundef !5
  %i.ee = add i64 %i.ed, -1                       ; 2 uses
  store i64 %i.ee, ptr %i.eb, align 8, !noalias !1503
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %bb.cp, label %.body18

bb.cp:                                            ; preds = %bb.co
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell4CellNtNtCscBrinq2mG3I_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ea) #14
          to label %.body18 unwind label %bb.ct

bb.cq:                                            ; preds = %bb.cm
  %i.eg = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1508)
  call void @llvm.experimental.noalias.scope.decl(metadata !1511)
  call void @llvm.experimental.noalias.scope.decl(metadata !1514)
  %i.eh = load ptr, ptr %i.eg, align 8, !alias.scope !1517, !noundef !5 ; 3 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit25, label %bb.cr

end_hunk_1
