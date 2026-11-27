Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio_macros-12eaf04942311908.tokio_macros.42cddc68238191f1-cgu.05?download=true
inline.NumInlined: 642
inline.NumDeleted: 221
begin_hunk_0_@_RINvNtCscBrinq2mG3I_3syn5parse12parse_scopedNvYNtNtB4_4path4PathNtB2_5Parse5parseECs5JB0sjZZtVB_12tokio_macros:bb.a
common.resume.i:                                  ; preds = %common.resume.sink.split.i, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %.pn8.i, %.body.i ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer11TokenBufferECs5JB0sjZZtVB_12tokio_macros.exit.sink.split.i: ; preds = %bb.x, %bb.am
  %i.bc = shl nuw nsw i64 %i.k, 5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.bc, i64 noundef 8) #10, !noalias !1363
  br label %_RNvXsh_NtCscBrinq2mG3I_3syn5parseNvYNtNtB7_4path4PathNtB5_5Parse5parseNtB5_6Parser14___parse_scopedCs5JB0sjZZtVB_12tokio_macros.exit

bb.ab:                                            ; preds = %bb.j
  %.sroa.433.0..sroa_idx34.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.438.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.433.0..sroa_idx34.i, i64 16, i1 false), !noalias !1367
  call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.w, ptr %i.bd, align 8, !alias.scope !1379
  store i64 -1, ptr %0, align 8, !alias.scope !1380
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4path4PathECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e)
          to label %bb.ac unwind label %bb.g, !noalias !1363

bb.ac:                                            ; preds = %bb.al, %bb.ab
  invoke void @_RNvXNtCscBrinq2mG3I_3syn5parseNtB2_11ParseBufferNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.ag unwind label %bb.ad, !noalias !1363

bb.ad:                                            ; preds = %bb.ac
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  call void @llvm.experimental.noalias.scope.decl(metadata !1382)
  call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !1384, !noalias !1363, !noundef !13 ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %.body.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bi = load i64, ptr %i.bg, align 8, !noalias !1385, !noundef !13
  %i.bj = add i64 %i.bi, -1                       ; 2 uses
  store i64 %i.bj, ptr %i.bg, align 8, !noalias !1385
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.af, label %.body.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell4CellNtNtCscBrinq2mG3I_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bf) #14
          to label %.body.i unwind label %bb.aj, !noalias !1363

bb.ag:                                            ; preds = %bb.ac
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  call void @llvm.experimental.noalias.scope.decl(metadata !1388)
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !1389, !noalias !1363, !noundef !13 ; 3 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit19.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bo = load i64, ptr %i.bm, align 8, !noalias !1390, !noundef !13
  %i.bp = add i64 %i.bo, -1                       ; 2 uses
  store i64 %i.bp, ptr %i.bm, align 8, !noalias !1390
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.ai, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit19.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell4CellNtNtCscBrinq2mG3I_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bl) #14
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit19.i unwind label %bb.b, !noalias !1363

bb.aj:                                            ; preds = %bb.af
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11, !noalias !1363
  unreachable

bb.ak:                                            ; preds = %bb.i, %bb.f, %.body.i
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11, !noalias !1363
  unreachable

bb.al:                                            ; preds = %_RNvYNvYNtNtCscBrinq2mG3I_3syn4path4PathNtNtB9_5parse5Parse5parseINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBD_11ParseBufferEE9call_onceCs5JB0sjZZtVB_12tokio_macros.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !1367
  store i64 -1, ptr %0, align 8, !alias.scope !1391
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
          to label %bb.am unwind label %bb.ao, !noalias !1363

bb.an:                                            ; preds = %.lr.ph22
  %i.bx = add nuw nsw i64 %.sroa.0.1.i.i.i21.i21, 1 ; 2 uses
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
          to label %bb.an unwind label %bb.ap, !noalias !1363

bb.ap:                                            ; preds = %.lr.ph22
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11, !noalias !1363
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
  %i.b = load i64, ptr %i.a, align 8, !noundef !13 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !27, !noundef !13
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamE8grow_oneCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !13, !noundef !13
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
  %.pn8 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.da, %bb.bz ], [ %i.ad, %bb.b ], [ %i.da, %bb.cb ], [ %i.da, %bb.ca ], [ %i.eb, %bb.cp ], [ %i.eb, %bb.co ], [ %i.eb, %bb.cn ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer11TokenBufferECs5JB0sjZZtVB_12tokio_macros(ptr %i.aa, i64 %i.ab) #12
          to label %common.resume unwind label %bb.cu

bb.b:                                             ; preds = %bb.cs, %bb.ce, %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body18

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1473
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1474
  invoke void @_RNvMNtCscBrinq2mG3I_3syn4attrNtB2_9Attribute11parse_outer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.r, ptr noundef nonnull align 8 %i.x)
          to label %.noexc unwind label %bb.bp, !noalias !1474

.noexc:                                           ; preds = %bb.c
  %i.ae = load i64, ptr %i.r, align 8, !range !25, !noalias !1474, !noundef !13
  %i.af = trunc nuw i64 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5.i.i.sroa.0.0.copyload = load i64, ptr %i.ag, align 8, !noalias !1474 ; 2 uses
  %.sroa.5.i.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.5.i.i.sroa.6.0.copyload = load i64, ptr %.sroa.5.i.i.sroa.6.0..sroa_idx, align 8, !noalias !1474 ; 2 uses
  %.sroa.5.i.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.5.i.i.sroa.7.0.copyload = load i64, ptr %.sroa.5.i.i.sroa.7.0..sroa_idx, align 8, !noalias !1474 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1474
  br i1 %i.af, label %.thread, label %bb.d

bb.d:                                             ; preds = %.noexc
  store i64 %.sroa.5.i.i.sroa.0.0.copyload, ptr %i.s, align 8, !noalias !1474
  %.sroa.5.i.i.sroa.6.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %.sroa.5.i.i.sroa.6.0.copyload, ptr %.sroa.5.i.i.sroa.6.0..sroa_idx86, align 8, !noalias !1474
  %.sroa.5.i.i.sroa.7.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.sroa.5.i.i.sroa.7.0.copyload, ptr %.sroa.5.i.i.sroa.7.0..sroa_idx88, align 8, !noalias !1474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1474
  invoke void @_RNvXNtNtCscBrinq2mG3I_3syn11restriction7parsingNtB4_10VisibilityNtNtB6_5parse5Parse5parse(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.q, ptr noundef nonnull align 8 %i.x)
          to label %bb.f unwind label %bb.e, !noalias !1474

bb.e:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.f:                                             ; preds = %bb.d
  %i.ai = load i32, ptr %i.q, align 8, !range !1475, !noalias !1474, !noundef !13 ; 5 uses
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.0117.0.copyload.i.i = load ptr, ptr %i.ak, align 8, !noalias !1474
  %.sroa.4118.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.6.sroa.8.i.i.sroa.0.0.copyload91 = load i64, ptr %.sroa.4118.0..sroa_idx.i.i, align 8, !noalias !1474
  %.sroa.6.sroa.8.i.i.sroa.7.0..sroa.4118.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.6.sroa.8.i.i.sroa.7.0.copyload93 = load i64, ptr %.sroa.6.sroa.8.i.i.sroa.7.0..sroa.4118.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !1474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1474
  %i.al = ptrtoint ptr %.sroa.0117.0.copyload.i.i to i64
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn11restriction10VisibilityECs5JB0sjZZtVB_12tokio_macros.exit.i.i

bb.h:                                             ; preds = %bb.f
  %.sroa.443.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.sroa.443.sroa.0.0.copyload.i.i = load i32, ptr %.sroa.443.0..sroa_idx.i.i, align 4, !noalias !1474
  %.sroa.443.sroa.4.0..sroa.443.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.443.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.443.sroa.4.0..sroa.443.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1474 ; 6 uses
  %.sroa.443.sroa.5.0..sroa.443.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.am = load <2 x i64>, ptr %.sroa.443.sroa.5.0..sroa.443.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1474
  invoke void @_RNvXs6_NtNtCscBrinq2mG3I_3syn4item7parsingNtB7_9SignatureNtNtB9_5parse5Parse5parse(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(address) dereferenceable(288) %i.o, ptr noundef nonnull align 8 %i.x)
          to label %bb.j unwind label %bb.i, !noalias !1474

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit.i.i, %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.j:                                             ; preds = %bb.h
  %i.ao = load i64, ptr %i.o, align 8, !range !1476, !noalias !1474, !noundef !13 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.68.i.i.sroa.0.0.copyload = load i64, ptr %i.aq, align 8, !noalias !1474 ; 2 uses
  %.sroa.68.i.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.68.i.i.sroa.6.0.copyload = load i64, ptr %.sroa.68.i.i.sroa.6.0..sroa_idx, align 8, !noalias !1474 ; 2 uses
  %.sroa.68.i.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.68.i.i.sroa.7.0.copyload = load i64, ptr %.sroa.68.i.i.sroa.7.0..sroa_idx, align 8, !noalias !1474 ; 2 uses
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1474
  br label %bb.bi

bb.l:                                             ; preds = %bb.j
  %.sroa.546.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.513.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.513.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.546.0..sroa_idx.i.i, i64 256, i1 false), !noalias !1474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1474
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  store i64 %.sroa.68.i.i.sroa.0.0.copyload, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !noalias !1474
  %.sroa.68.i.i.sroa.6.0..sroa.412.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store i64 %.sroa.68.i.i.sroa.6.0.copyload, ptr %.sroa.68.i.i.sroa.6.0..sroa.412.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !1474
  %.sroa.68.i.i.sroa.7.0..sroa.412.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  store i64 %.sroa.68.i.i.sroa.7.0.copyload, ptr %.sroa.68.i.i.sroa.7.0..sroa.412.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !1474
  store i64 %i.ao, ptr %i.p, align 8, !noalias !1474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1474
  invoke void @_RNvNtCscBrinq2mG3I_3syn5group12parse_braces(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.m, ptr noundef nonnull align 8 %i.x)
          to label %bb.m unwind label %.split.thread.i.i, !noalias !1474

.thread141.i.i:                                   ; preds = %bb.at, %bb.o
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread137.i.i

bb.m:                                             ; preds = %bb.l
  %i.ar = load i64, ptr %i.m, align 8, !range !25, !noalias !1474, !noundef !13
  %i.as = trunc nuw i64 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.sroa.11.8.copyload38 = load i64, ptr %i.at, align 8
  %.sroa.20.8..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.20.8.copyload47 = load i64, ptr %.sroa.20.8..sroa_idx46, align 8
  %.sroa.22.8..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.22.8.copyload57 = load i64, ptr %.sroa.22.8..sroa_idx56, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1474
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 8 dereferenceable(12) %i.au, i64 12, i1 false), !noalias !1474
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.at, i64 32, i1 false), !noalias !1474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1474
  invoke void @_RNvMNtCscBrinq2mG3I_3syn4attrNtB2_9Attribute11parse_inner(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.k, ptr noundef nonnull align 8 %i.n)
          to label %bb.p unwind label %.thread141.i.i, !noalias !1474

bb.p:                                             ; preds = %bb.o
  %i.av = load i64, ptr %i.k, align 8, !range !25, !noalias !1474, !noundef !13
  %i.aw = trunc nuw i64 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.515.i.i.sroa.0.0.copyload = load i64, ptr %i.ax, align 8, !noalias !1474 ; 2 uses
  %.sroa.515.i.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.515.i.i.sroa.6.0.copyload = load i64, ptr %.sroa.515.i.i.sroa.6.0..sroa_idx, align 8, !noalias !1474 ; 2 uses
  %.sroa.515.i.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.515.i.i.sroa.7.0.copyload = load i64, ptr %.sroa.515.i.i.sroa.7.0..sroa_idx, align 8, !noalias !1474 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1474
  br i1 %i.aw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i64 %.sroa.515.i.i.sroa.0.0.copyload, ptr %i.l, align 8, !noalias !1474
  %.sroa.515.i.i.sroa.6.0..sroa_idx101 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.sroa.515.i.i.sroa.6.0.copyload, ptr %.sroa.515.i.i.sroa.6.0..sroa_idx101, align 8, !noalias !1474
  %.sroa.515.i.i.sroa.7.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %.sroa.515.i.i.sroa.7.0.copyload, ptr %.sroa.515.i.i.sroa.7.0..sroa_idx103, align 8, !noalias !1474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1474
  invoke void @_RNvMCsfr4kGEjnBfC_11proc_macro2NtB2_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j)
          to label %bb.s unwind label %.thread156.i.i, !noalias !1474

.thread156.i.i:                                   ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamEECs5JB0sjZZtVB_12tokio_macros.exit.i.i, %bb.q
  %lpad.thr_comm154.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread145.i.i

bb.r:                                             ; preds = %bb.be
  %lpad.thr_comm.split-lp155.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread137.i.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1474
  store i64 0, ptr %i.i, align 8, !noalias !1474
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ay, align 8, !noalias !1474
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store i64 0, ptr %i.az, align 8, !noalias !1474
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.458.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.233.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.backedge.i.i.backedge, %bb.s
  %i.bb = invoke noundef zeroext i1 @_RNvMs9_NtCscBrinq2mG3I_3syn5parseNtB5_11ParseBuffer8is_empty(ptr noundef nonnull align 8 %i.n)
          to label %bb.t unwind label %.loopexit.i.i, !noalias !1474

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
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bi, %bb.ad ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamEECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #12
          to label %bb.ap unwind label %bb.bh, !noalias !1474

bb.t:                                             ; preds = %.backedge.i.i
  br i1 %i.bb, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1474
  invoke void @_RNvXsb_NtCscBrinq2mG3I_3syn5parseINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB7_5token4SemiENtB5_5Parse5parseCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %i.n)
          to label %bb.w unwind label %.loopexit.i.i, !noalias !1474

bb.v:                                             ; preds = %bb.t
  %i.bc = invoke noundef zeroext i1 @_RNvMCsfr4kGEjnBfC_11proc_macro2NtB2_11TokenStream8is_empty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j)
          to label %bb.bc unwind label %.loopexit.split-lp.i.i, !noalias !1474

bb.w:                                             ; preds = %bb.u
  %i.bd = load i64, ptr %i.h, align 8, !range !16, !noalias !1474, !noundef !13 ; 2 uses
  %.not.i.i = icmp eq i64 %i.bd, -1
  %.sroa.047.0.copyload.i.i = load i64, ptr %i.ba, align 8, !noalias !1474 ; 3 uses
  br i1 %.not.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.553.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.553.0.copyload.i.i = load i64, ptr %.sroa.553.0..sroa_idx.i.i, align 8, !noalias !1474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1474
  br label %bb.al

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1474
  %i.be = trunc i64 %.sroa.047.0.copyload.i.i to i1
  br i1 %i.be, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.sroa.2.0.extract.shift.i.i = lshr i64 %.sroa.047.0.copyload.i.i, 32
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1474
  store i32 %.sroa.2.0.extract.trunc.i.i, ptr %i.g, align 4, !noalias !1474
  invoke void @_RNvXs8M_NtCscBrinq2mG3I_3syn5tokenNtB6_4SemiNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %bb.ab unwind label %.loopexit.i.i, !noalias !1474

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1474
  invoke void @_RNvXsd_NtCscBrinq2mG3I_3syn5parseNtCsfr4kGEjnBfC_11proc_macro29TokenTreeNtB5_5Parse5parse(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %i.n)
          to label %bb.ah unwind label %.loopexit.i.i, !noalias !1474

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1474
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !1474
  %i.bf = load i64, ptr %i.az, align 8, !alias.scope !1477, !noalias !1474, !noundef !13 ; 3 uses
  %i.bg = load i64, ptr %i.i, align 8, !range !27, !alias.scope !1477, !noalias !1474, !noundef !13
  %i.bh = icmp eq i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamE8grow_oneCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.af unwind label %bb.ad, !noalias !1478

bb.ad:                                            ; preds = %bb.ac
  %i.bi = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_RNvXsh_NtCscBrinq2mG3I_3syn5parseNvYNtNtCs5JB0sjZZtVB_12tokio_macros5entry6ItemFnNtB5_5Parse5parseNtB5_6Parser6parse2BC_:bb.a
bb.ae:                                            ; preds = %bb.ad
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11, !noalias !1474
  unreachable

bb.af:                                            ; preds = %bb.ac, %bb.ab
  %i.bk = load ptr, ptr %i.ay, align 8, !alias.scope !1477, !noalias !1474, !nonnull !13, !noundef !13
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.bk, i64 %i.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !1474
  %i.bm = add i64 %i.bf, 1
  store i64 %i.bm, ptr %i.az, align 8, !alias.scope !1477, !noalias !1474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1474
  invoke void @_RNvMCsfr4kGEjnBfC_11proc_macro2NtB2_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.ag unwind label %.loopexit.i.i, !noalias !1474

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !1474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1474
  br label %.backedge.i.i.backedge

bb.ah:                                            ; preds = %bb.aa
  %i.bn = load i32, ptr %i.b, align 8, !range !1479, !noalias !1474, !noundef !13 ; 2 uses
  %i.bo = icmp eq i32 %i.bn, -1
  br i1 %i.bo, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.11.8.copyload = load i64, ptr %i.bp, align 8
  %.sroa.20.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.20.8.copyload = load i64, ptr %.sroa.20.8..sroa_idx, align 8
  %.sroa.22.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.22.8.copyload = load i64, ptr %.sroa.22.8..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1474
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.233.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.458.0..sroa_idx.i.i, i64 28, i1 false), !noalias !1474
  store i32 %i.bn, ptr %i.d, align 8, !noalias !1474
  invoke void @_RINvXs7_NtCsfr4kGEjnBfC_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendAB1O_j1_ECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.ak unwind label %.loopexit.i.i, !noalias !1474

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1474
  br label %.backedge.i.i.backedge

.backedge.i.i.backedge:                           ; preds = %bb.ak, %bb.ag
  br label %.backedge.i.i

bb.al:                                            ; preds = %bb.ai, %bb.x
  %.sroa.22.0 = phi i64 [ %.sroa.22.8.copyload, %bb.ai ], [ %.sroa.553.0.copyload.i.i, %bb.x ]
  %.sroa.20.0 = phi i64 [ %.sroa.20.8.copyload, %bb.ai ], [ %.sroa.047.0.copyload.i.i, %bb.x ]
  %.sroa.11.0 = phi i64 [ %.sroa.11.8.copyload, %bb.ai ], [ %i.bd, %bb.x ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.an unwind label %bb.am, !noalias !1474

bb.am:                                            ; preds = %bb.al
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.thread159.i.i unwind label %bb.ao, !noalias !1474

bb.an:                                            ; preds = %bb.al
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamEECs5JB0sjZZtVB_12tokio_macros.exit.i.i unwind label %bb.aq, !noalias !1474

bb.ao:                                            ; preds = %bb.am
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11, !noalias !1474
  unreachable

bb.ap:                                            ; preds = %.body.i.i
  br i1 %.sroa.034.1.lpad-body.i.i, label %.thread159.i.i, label %.thread145.i.i

bb.aq:                                            ; preds = %bb.an
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.thread159.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamEECs5JB0sjZZtVB_12tokio_macros.exit.i.i: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1474
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro211TokenStreamECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.j)
          to label %bb.ar unwind label %.thread156.i.i, !noalias !1474

bb.ar:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamEECs5JB0sjZZtVB_12tokio_macros.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1474
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.at unwind label %bb.as, !noalias !1474

bb.as:                                            ; preds = %bb.ar
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCscBrinq2mG3I_3syn4attr9AttributeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.thread137.i.i unwind label %bb.au, !noalias !1474

bb.at:                                            ; preds = %bb.ar
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCscBrinq2mG3I_3syn4attr9AttributeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros.exit.i.i unwind label %.thread141.i.i, !noalias !1474

bb.au:                                            ; preds = %bb.as
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11, !noalias !1474
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit.i.i: ; preds = %bb.ba, %bb.az, %bb.ay, %bb.n
  %.sroa.22.2 = phi i64 [ %.sroa.22.8.copyload57, %bb.n ], [ %.sroa.22.1, %bb.ay ], [ %.sroa.22.1, %bb.ba ], [ %.sroa.22.1, %bb.az ]
  %.sroa.20.2 = phi i64 [ %.sroa.20.8.copyload47, %bb.n ], [ %.sroa.20.1, %bb.ay ], [ %.sroa.20.1, %bb.ba ], [ %.sroa.20.1, %bb.az ]
  %.sroa.11.2 = phi i64 [ %.sroa.11.8.copyload38, %bb.n ], [ %.sroa.11.1, %bb.ay ], [ %.sroa.11.1, %bb.ba ], [ %.sroa.11.1, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1474
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4item9SignatureECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(288) %i.p)
          to label %bb.bi unwind label %bb.i, !noalias !1474

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros.exit.i.i: ; preds = %bb.p, %bb.at
  %.sroa.22.1 = phi i64 [ %.sroa.22.0, %bb.at ], [ %.sroa.515.i.i.sroa.7.0.copyload, %bb.p ] ; 3 uses
  %.sroa.20.1 = phi i64 [ %.sroa.20.0, %bb.at ], [ %.sroa.515.i.i.sroa.6.0.copyload, %bb.p ] ; 3 uses
  %.sroa.11.1 = phi i64 [ %.sroa.11.0, %bb.at ], [ %.sroa.515.i.i.sroa.0.0.copyload, %bb.p ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1474
  invoke void @_RNvXNtCscBrinq2mG3I_3syn5parseNtB2_11ParseBufferNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %bb.ay unwind label %bb.av, !noalias !1474

bb.av:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros.exit.i.i
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1480)
  call void @llvm.experimental.noalias.scope.decl(metadata !1481)
  call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !1483, !noalias !1474, !noundef !13 ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %.body77.thread.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.bz = load i64, ptr %i.bx, align 8, !noalias !1484, !noundef !13
  %i.ca = add i64 %i.bz, -1                       ; 2 uses
  store i64 %i.ca, ptr %i.bx, align 8, !noalias !1484
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %bb.ax, label %.body77.thread.i.i

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell4CellNtNtCscBrinq2mG3I_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bw) #14
          to label %.body77.thread.i.i unwind label %bb.bb, !noalias !1474

bb.ay:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros.exit.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  call void @llvm.experimental.noalias.scope.decl(metadata !1487)
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !1488, !noalias !1474, !noundef !13 ; 3 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cf = load i64, ptr %i.cd, align 8, !noalias !1489, !noundef !13
  %i.cg = add i64 %i.cf, -1                       ; 2 uses
  store i64 %i.cg, ptr %i.cd, align 8, !noalias !1489
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.ba, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit.i.i

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell4CellNtNtCscBrinq2mG3I_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cc) #14
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit.i.i unwind label %.split.thread.i.i, !noalias !1474

.split.thread.i.i:                                ; preds = %bb.ba, %bb.l
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body77.thread.i.i

bb.bb:                                            ; preds = %bb.ax
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11, !noalias !1474
  unreachable

bb.bc:                                            ; preds = %bb.v
  br i1 %i.bc, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1474
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !1474
  invoke fastcc void @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamE8push_mutCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.c)
          to label %bb.bf unwind label %.loopexit.split-lp.i.i

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0101.i.i.sroa.14)
  %.sroa.0101.i.i.sroa.14.288..sroa_idx113 = getelementptr inbounds nuw i8, ptr %.sroa.0101.i.i.sroa.14, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0101.i.i.sroa.14.288..sroa_idx113, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !1474
  %.sroa.0101.i.i.sroa.0.0.copyload105 = load i64, ptr %i.p, align 8, !noalias !1474
  %.sroa.0101.i.i.sroa.8.0.copyload107 = load i64, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !noalias !1474
  %.sroa.0101.i.i.sroa.10.0.copyload109 = load i64, ptr %.sroa.68.i.i.sroa.6.0..sroa.412.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !1474
  %.sroa.0101.i.i.sroa.12.0.copyload111 = load i64, ptr %.sroa.68.i.i.sroa.7.0..sroa.412.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !1474
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.0101.i.i.sroa.14, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.513.0..sroa_idx.i.i, i64 256, i1 false), !noalias !1474
  %.sroa.0101.i.i.sroa.14.312..sroa_idx114 = getelementptr inbounds nuw i8, ptr %.sroa.0101.i.i.sroa.14, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0101.i.i.sroa.14.312..sroa_idx114, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !1474
  %.sroa.0101.i.i.sroa.14.336..sroa_idx115 = getelementptr inbounds nuw i8, ptr %.sroa.0101.i.i.sroa.14, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0101.i.i.sroa.14.336..sroa_idx115, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !1474
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(328) %.sroa.0101.i.i.sroa.14, i64 328, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.32, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0101.i.i.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1474
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro211TokenStreamECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.j)
          to label %bb.bg unwind label %bb.r, !noalias !1474

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1474
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0101.i.i.sroa.14)
  %.sroa.0101.i.i.sroa.14.288..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0101.i.i.sroa.14, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0101.i.i.sroa.14.288..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !1474
  %.sroa.0101.i.i.sroa.0.0.copyload = load i64, ptr %i.p, align 8, !noalias !1474
  %.sroa.0101.i.i.sroa.8.0.copyload = load i64, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !noalias !1474
  %.sroa.0101.i.i.sroa.10.0.copyload = load i64, ptr %.sroa.68.i.i.sroa.6.0..sroa.412.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !1474
  %.sroa.0101.i.i.sroa.12.0.copyload = load i64, ptr %.sroa.68.i.i.sroa.7.0..sroa.412.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !1474
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.0101.i.i.sroa.14, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.513.0..sroa_idx.i.i, i64 256, i1 false), !noalias !1474
  %.sroa.0101.i.i.sroa.14.312..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0101.i.i.sroa.14, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0101.i.i.sroa.14.312..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !1474
  %.sroa.0101.i.i.sroa.14.336..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0101.i.i.sroa.14, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0101.i.i.sroa.14.336..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !1474
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(328) %.sroa.0101.i.i.sroa.14, i64 328, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.32, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0101.i.i.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1474
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.sroa.22.5 = phi i64 [ %.sroa.0101.i.i.sroa.12.0.copyload111, %bb.be ], [ %.sroa.0101.i.i.sroa.12.0.copyload, %bb.bf ] ; 2 uses
  %.sroa.20.5 = phi i64 [ %.sroa.0101.i.i.sroa.10.0.copyload109, %bb.be ], [ %.sroa.0101.i.i.sroa.10.0.copyload, %bb.bf ] ; 2 uses
  %.sroa.11.5 = phi i64 [ %.sroa.0101.i.i.sroa.8.0.copyload107, %bb.be ], [ %.sroa.0101.i.i.sroa.8.0.copyload, %bb.bf ] ; 2 uses
  %.sroa.033.5 = phi i64 [ %.sroa.0101.i.i.sroa.0.0.copyload105, %bb.be ], [ %.sroa.0101.i.i.sroa.0.0.copyload, %bb.bf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1474
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n)
          to label %bb.bq unwind label %bb.bp, !noalias !1474

.body77.i.i:                                      ; preds = %.thread137.i.i
  br i1 %.sroa.041.2135.i.i, label %.body77.thread.i.i, label %.body

bb.bh:                                            ; preds = %bb.bo, %bb.bn, %.body77.thread.i.i, %.thread137.i.i, %.thread145.i.i, %.thread159.i.i, %.body.i.i
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11, !noalias !1474
  unreachable

.thread159.i.i:                                   ; preds = %bb.aq, %bb.ap, %bb.am
  %.pn163.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %bb.ap ], [ %i.bs, %bb.aq ], [ %i.bq, %bb.am ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro211TokenStreamECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.j) #12
          to label %.thread145.i.i unwind label %bb.bh, !noalias !1474

.thread145.i.i:                                   ; preds = %.thread159.i.i, %bb.ap, %.thread156.i.i
  %.pn61151.i.i = phi { ptr, i32 } [ %lpad.thr_comm154.i.i, %.thread156.i.i ], [ %eh.lpad-body.i.i, %bb.ap ], [ %.pn163.i.i, %.thread159.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #12
          to label %.thread137.i.i unwind label %bb.bh, !noalias !1474

bb.bi:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit.i.i, %bb.k
  %.sroa.22.3 = phi i64 [ %.sroa.68.i.i.sroa.7.0.copyload, %bb.k ], [ %.sroa.22.2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit.i.i ] ; 2 uses
  %.sroa.20.3 = phi i64 [ %.sroa.68.i.i.sroa.6.0.copyload, %bb.k ], [ %.sroa.20.2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit.i.i ] ; 2 uses
  %.sroa.11.3 = phi i64 [ %.sroa.68.i.i.sroa.0.0.copyload, %bb.k ], [ %.sroa.11.2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1474
  %i.cl = icmp ne i32 %i.ai, 3
  call void @llvm.assume(i1 %i.cl)
  %i.cm = icmp samesign ult i32 %i.ai, 2
  br i1 %i.cm, label %bb.bj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn11restriction10VisibilityECs5JB0sjZZtVB_12tokio_macros.exit.i.i

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.443.sroa.4.0.copyload.i.i) ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4path4PathECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sroa.443.sroa.4.0.copyload.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn11restriction13VisRestrictedECs5JB0sjZZtVB_12tokio_macros.exit.i.i.i unwind label %bb.bk, !noalias !1474

bb.bk:                                            ; preds = %bb.bj
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.443.sroa.4.0.copyload.i.i, i64 noundef 48, i64 noundef 8) #10, !noalias !1474
  br label %bb.bo

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn11restriction13VisRestrictedECs5JB0sjZZtVB_12tokio_macros.exit.i.i.i: ; preds = %bb.bj
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.443.sroa.4.0.copyload.i.i, i64 noundef 48, i64 noundef 8) #10, !noalias !1474
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn11restriction10VisibilityECs5JB0sjZZtVB_12tokio_macros.exit.i.i

.thread137.i.i:                                   ; preds = %.thread145.i.i, %bb.as, %bb.r, %.thread141.i.i
  %.pn61.pn136.i.i = phi { ptr, i32 } [ %i.bt, %bb.as ], [ %lpad.thr_comm.i.i, %.thread141.i.i ], [ %lpad.thr_comm.split-lp155.i.i, %bb.r ], [ %.pn61151.i.i, %.thread145.i.i ] ; 2 uses
  %.sroa.041.2135.i.i = phi i1 [ true, %bb.as ], [ true, %.thread141.i.i ], [ false, %bb.r ], [ true, %.thread145.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n) #12
          to label %.body77.i.i unwind label %bb.bh, !noalias !1474

.body77.thread.i.i:                               ; preds = %.body77.i.i, %.split.thread.i.i, %bb.ax, %bb.aw, %bb.av
  %.pn64167.i.i = phi { ptr, i32 } [ %i.ci, %.split.thread.i.i ], [ %.pn61.pn136.i.i, %.body77.i.i ], [ %i.bv, %bb.ax ], [ %i.bv, %bb.aw ], [ %i.bv, %bb.av ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4item9SignatureECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(288) %i.p) #12
          to label %bb.bn unwind label %bb.bh, !noalias !1474

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn11restriction10VisibilityECs5JB0sjZZtVB_12tokio_macros.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn11restriction13VisRestrictedECs5JB0sjZZtVB_12tokio_macros.exit.i.i.i, %bb.bi, %bb.g
  %.sroa.22.4 = phi i64 [ %.sroa.6.sroa.8.i.i.sroa.7.0.copyload93, %bb.g ], [ %.sroa.22.3, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn11restriction13VisRestrictedECs5JB0sjZZtVB_12tokio_macros.exit.i.i.i ], [ %.sroa.22.3, %bb.bi ]
  %.sroa.20.4 = phi i64 [ %.sroa.6.sroa.8.i.i.sroa.0.0.copyload91, %bb.g ], [ %.sroa.20.3, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn11restriction13VisRestrictedECs5JB0sjZZtVB_12tokio_macros.exit.i.i.i ], [ %.sroa.20.3, %bb.bi ]
  %.sroa.11.4 = phi i64 [ %i.al, %bb.g ], [ %.sroa.11.3, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn11restriction13VisRestrictedECs5JB0sjZZtVB_12tokio_macros.exit.i.i.i ], [ %.sroa.11.3, %bb.bi ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros.exit82.i.i unwind label %bb.bl, !noalias !1474

bb.bl:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn11restriction10VisibilityECs5JB0sjZZtVB_12tokio_macros.exit.i.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCscBrinq2mG3I_3syn4attr9AttributeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body unwind label %bb.bm, !noalias !1474

bb.bm:                                            ; preds = %bb.bl
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11, !noalias !1474
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros.exit82.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn11restriction10VisibilityECs5JB0sjZZtVB_12tokio_macros.exit.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCscBrinq2mG3I_3syn4attr9AttributeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.thread unwind label %bb.bp, !noalias !1474

bb.bn:                                            ; preds = %.body77.thread.i.i, %bb.i
  %.pn66.ph.i.i = phi { ptr, i32 } [ %.pn64167.i.i, %.body77.thread.i.i ], [ %i.an, %bb.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn11restriction10VisibilityECs5JB0sjZZtVB_12tokio_macros(i32 %i.ai, ptr %.sroa.443.sroa.4.0.copyload.i.i) #12
          to label %bb.bo unwind label %bb.bh, !noalias !1474

bb.bo:                                            ; preds = %bb.bn, %bb.bk, %bb.e
  %.pn68.ph.i.i = phi { ptr, i32 } [ %.pn66.ph.i.i, %bb.bn ], [ %i.ah, %bb.e ], [ %i.cn, %bb.bk ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #12
          to label %.body unwind label %bb.bh, !noalias !1474

.body:                                            ; preds = %bb.bp, %bb.bo, %bb.bl, %.body77.i.i, %bb.bs
  %.pn = phi { ptr, i32 } [ %i.cs, %bb.bs ], [ %i.cq, %bb.bp ], [ %i.co, %bb.bl ], [ %.pn68.ph.i.i, %bb.bo ], [ %.pn61.pn136.i.i, %.body77.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.x) #12
          to label %.body18 unwind label %bb.cu

bb.bp:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros.exit82.i.i, %bb.bg, %bb.c, %bb.cl, %bb.cg
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread:                                          ; preds = %.noexc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros.exit82.i.i
  %.sroa.22.6.ph = phi i64 [ %.sroa.22.4, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros.exit82.i.i ], [ %.sroa.5.i.i.sroa.7.0.copyload, %.noexc ]
  %.sroa.20.6.ph = phi i64 [ %.sroa.20.4, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros.exit82.i.i ], [ %.sroa.5.i.i.sroa.6.0.copyload, %.noexc ]
  %.sroa.11.6.ph = phi i64 [ %.sroa.11.4, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros.exit82.i.i ], [ %.sroa.5.i.i.sroa.0.0.copyload, %.noexc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1473
  br label %bb.cv

bb.bq:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1473
  %i.cr = icmp eq i64 %.sroa.033.5, 2
  br i1 %i.cr, label %bb.cv, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(328) %.sroa.23, i64 328, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.32, i64 12, i1 false)
  store i64 %.sroa.033.5, ptr %i.w, align 8
  %.sroa.269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %.sroa.11.5, ptr %.sroa.269.0..sroa_idx, align 8
  %.sroa.370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %.sroa.20.5, ptr %.sroa.370.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 %.sroa.22.5, ptr %.sroa.4.0..sroa_idx71, align 8
  %.sroa.6.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %i.w, i64 360
  store i32 %i.ai, ptr %.sroa.6.0..sroa_idx72, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 364
  store i32 %.sroa.443.sroa.0.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.w, i64 368
  store ptr %.sroa.443.sroa.4.0.copyload.i.i, ptr %.sroa.8.0..sroa_idx.a, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 376
  store <2 x i64> %i.am, ptr %.sroa.9.0..sroa_idx, align 8
  invoke void @_RNvMs9_NtCscBrinq2mG3I_3syn5parseNtB5_11ParseBuffer16check_unexpected(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noundef nonnull align 8 %i.x)
          to label %bb.bt unwind label %bb.bs

bb.bs:                                            ; preds = %bb.bx, %bb.bv, %bb.bu, %bb.br
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5JB0sjZZtVB_12tokio_macros5entry6ItemFnEBF_(ptr noalias nofree noundef align 8 dereferenceable(408) %i.w) #12
          to label %.body unwind label %bb.cu

bb.bt:                                            ; preds = %bb.br
  %i.ct = load i64, ptr %i.v, align 8, !range !16, !alias.scope !1490, !noundef !13 ; 2 uses
  %.not.i = icmp eq i64 %i.ct, -1
  br i1 %.not.i, label %bb.bu, label %bb.cl

bb.bu:                                            ; preds = %bb.bt
  %i.cu = invoke { ptr, ptr } @_RNvMs9_NtCscBrinq2mG3I_3syn5parseNtB5_11ParseBuffer6cursor(ptr noundef nonnull align 8 %i.x)
          to label %bb.bv unwind label %bb.bs     ; 2 uses

bb.bv:                                            ; preds = %bb.bu
  %i.cv = extractvalue { ptr, ptr } %i.cu, 0
  %i.cw = extractvalue { ptr, ptr } %i.cu, 1
  %i.cx = invoke { i32, i8 } @_RNvNtCscBrinq2mG3I_3syn5parse33span_of_unexpected_ignoring_nones(ptr noundef %i.cv, ptr noundef %i.cw)
          to label %bb.bw unwind label %bb.bs     ; 2 uses

bb.bw:                                            ; preds = %bb.bv
  %i.cy = extractvalue { i32, i8 } %i.cx, 1       ; 2 uses
  %.not6.not = icmp eq i8 %i.cy, -1
  br i1 %.not6.not, label %.thread147, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.cz = extractvalue { i32, i8 } %i.cx, 0
  invoke void @_RNvNtCscBrinq2mG3I_3syn5parse20err_unexpected_token(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, i32 noundef %i.cz, i8 noundef %i.cy)
          to label %bb.cg unwind label %bb.bs

.thread147:                                       ; preds = %bb.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(408) %i.w, i64 408, i1 false)
  br label %bb.by

bb.by:                                            ; preds = %.thread147, %bb.cg
  invoke void @_RNvXNtCscBrinq2mG3I_3syn5parseNtB2_11ParseBufferNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %bb.cc unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  call void @llvm.experimental.noalias.scope.decl(metadata !1492)
  call void @llvm.experimental.noalias.scope.decl(metadata !1493)
  %i.dc = load ptr, ptr %i.db, align 8, !alias.scope !1494, !noundef !13 ; 3 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %.body18, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.de = load i64, ptr %i.dc, align 8, !noalias !1495, !noundef !13
  %i.df = add i64 %i.de, -1                       ; 2 uses
  store i64 %i.df, ptr %i.dc, align 8, !noalias !1495
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %bb.cb, label %.body18

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell4CellNtNtCscBrinq2mG3I_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.db) #14
          to label %.body18 unwind label %bb.cf

bb.cc:                                            ; preds = %bb.by
  %i.dh = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1496)
  call void @llvm.experimental.noalias.scope.decl(metadata !1497)
  call void @llvm.experimental.noalias.scope.decl(metadata !1498)
  %i.di = load ptr, ptr %i.dh, align 8, !alias.scope !1499, !noundef !13 ; 3 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.dk = load i64, ptr %i.di, align 8, !noalias !1500, !noundef !13
  %i.dl = add i64 %i.dk, -1                       ; 2 uses
  store i64 %i.dl, ptr %i.di, align 8, !noalias !1500
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %bb.ce, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit

bb.ce:                                            ; preds = %bb.cd
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell4CellNtNtCscBrinq2mG3I_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dh) #14
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit unwind label %bb.b

bb.cf:                                            ; preds = %bb.cb
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.cg:                                            ; preds = %bb.bx
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  store i64 2, ptr %0, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5JB0sjZZtVB_12tokio_macros5entry6ItemFnEBF_(ptr noalias nofree noundef align 8 dereferenceable(408) %i.w)
          to label %bb.by unwind label %bb.bp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.cd, %bb.cc, %bb.ce
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  %cond = icmp eq i64 %i.ab, 0
  br i1 %cond, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer11TokenBufferECs5JB0sjZZtVB_12tokio_macros.exit, label %.lr.ph

bb.ch:                                            ; preds = %.lr.ph
  %i.dp = icmp eq i64 %i.dr, %i.ab
  br i1 %i.dp, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer11TokenBufferECs5JB0sjZZtVB_12tokio_macros.exit.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit, %bb.ch
  %.sroa.0.0.i.i.i177 = phi i64 [ %i.dr, %bb.ch ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %.sroa.0.0.i.i.i177
  %i.dr = add nuw nsw i64 %.sroa.0.0.i.i.i177, 1  ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer5EntryECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.dq)
          to label %bb.ch unwind label %bb.cj

bb.ci:                                            ; preds = %.lr.ph179
  %i.ds = add nuw nsw i64 %.sroa.0.1.i.i.i178, 1  ; 2 uses
  %i.dt = icmp eq i64 %i.ds, %i.ab
  br i1 %i.dt, label %common.resume.sink.split, label %.lr.ph179

bb.cj:                                            ; preds = %.lr.ph
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dv = icmp eq i64 %i.dr, %i.ab
  br i1 %i.dv, label %common.resume.sink.split, label %.lr.ph179

.lr.ph179:                                        ; preds = %bb.cj, %bb.ci
  %.sroa.0.1.i.i.i178 = phi i64 [ %i.ds, %bb.ci ], [ %i.dr, %bb.cj ] ; 2 uses
  %i.dw = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %.sroa.0.1.i.i.i178
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer5EntryECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.dw) #12
          to label %bb.ci unwind label %bb.ck

bb.ck:                                            ; preds = %.lr.ph179
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11
  unreachable

common.resume.sink.split:                         ; preds = %bb.ci, %bb.cx, %bb.cj, %bb.cy
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ew, %bb.cy ], [ %i.du, %bb.cj ], [ %i.ew, %bb.cx ], [ %i.du, %bb.ci ]
  %i.dy = shl nuw nsw i64 %i.ab, 5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef range(i64 1, 0) %i.dy, i64 noundef 8) #10
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.body18
  %common.resume.op = phi { ptr, i32 } [ %.pn8, %.body18 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer11TokenBufferECs5JB0sjZZtVB_12tokio_macros.exit.sink.split: ; preds = %bb.ch, %bb.cw
  %i.dz = shl nuw nsw i64 %i.ab, 5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef range(i64 1, 0) %i.dz, i64 noundef 8) #10
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer11TokenBufferECs5JB0sjZZtVB_12tokio_macros.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer11TokenBufferECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit24, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer11TokenBufferECs5JB0sjZZtVB_12tokio_macros.exit.sink.split
  ret void

bb.cl:                                            ; preds = %bb.bt
  %.sroa.476.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.481.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.476.0..sroa_idx77, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1501)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ct, ptr %i.ea, align 8, !alias.scope !1502
  store i64 2, ptr %0, align 8, !alias.scope !1503
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5JB0sjZZtVB_12tokio_macros5entry6ItemFnEBF_(ptr noalias nofree noundef align 8 dereferenceable(408) %i.w)
          to label %bb.cm unwind label %bb.bp

bb.cm:                                            ; preds = %bb.cv, %bb.cl
  invoke void @_RNvXNtCscBrinq2mG3I_3syn5parseNtB2_11ParseBufferNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %bb.cq unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1504)
  call void @llvm.experimental.noalias.scope.decl(metadata !1505)
  call void @llvm.experimental.noalias.scope.decl(metadata !1506)
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !1507, !noundef !13 ; 3 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %.body18, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ef = load i64, ptr %i.ed, align 8, !noalias !1508, !noundef !13
  %i.eg = add i64 %i.ef, -1                       ; 2 uses
  store i64 %i.eg, ptr %i.ed, align 8, !noalias !1508
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %bb.cp, label %.body18

bb.cp:                                            ; preds = %bb.co
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell4CellNtNtCscBrinq2mG3I_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ec) #14
          to label %.body18 unwind label %bb.ct

bb.cq:                                            ; preds = %bb.cm
  %i.ei = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1509)
  call void @llvm.experimental.noalias.scope.decl(metadata !1510)
  call void @llvm.experimental.noalias.scope.decl(metadata !1511)
end_hunk_1
