Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst.typst.6bcdb96655de51b1-cgu.0?download=true
inline.NumInlined: 14587
inline.NumDeleted: 6611
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once9call_onceNCINvNtCsf1gSX8u3EQ2_10rayon_core8registry19set_global_registryNCINvB13_20init_global_registryNtB13_12DefaultSpawnE0E0E0Cs9fPPV5zPXBl_5typst:bb.a
  br i1 %or.cond.i.i.i.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i, label %.preheader56.i.i.i.i.i.i, !prof !61

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.i
  %.sroa.0.269.i.i.i.i.i.i = phi ptr [ %i.bk, %bb.i ], [ %.sroa.0.0.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i.i.i.i = phi i64 [ %i.bj, %bb.i ], [ %.sroa.15.0.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ]
  %.sroa.042.267.i.i.i.i.i.i = phi i64 [ %i.bm, %bb.i ], [ 0, %.preheader.i.i.i.i.i.i ]
  %i.be = load i8, ptr %.sroa.0.269.i.i.i.i.i.i, align 1, !alias.scope !25341, !noalias !25342, !noundef !28
  %i.bf = zext i8 %i.be to i32
  %i.bg = add nsw i32 %i.bf, -48                  ; 2 uses
  %i.bh = icmp ult i32 %i.bg, 10                  ; 3 uses
  br i1 %i.bh, label %bb.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bi = mul i64 %.sroa.042.267.i.i.i.i.i.i, 10
  %i.bj = add nsw i64 %.sroa.15.268.i.i.i.i.i.i, -1 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i.i.i.i, i64 1
  %i.bl = zext nneg i32 %i.bg to i64
  %i.bm = add i64 %i.bi, %i.bl                    ; 2 uses
  %.not53.i.i.i.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not53.i.i.i.i.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i: ; preds = %bb.h, %.preheader56.i.i.i.i.i.i.preheader, %.preheader56.i.i.i.i.i.i, %bb.i, %.lr.ph.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i, %bb.f, %bb.f, %bb.e
  %.sroa.105.0.i.i.i.i.i = phi i64 [ undef, %bb.f ], [ 0, %.preheader.i.i.i.i.i.i ], [ undef, %bb.e ], [ undef, %bb.f ], [ undef, %.lr.ph.i.i.i.i.i.i ], [ %i.bm, %bb.i ], [ undef, %bb.h ], [ undef, %.preheader56.i.i.i.i.i.i.preheader ], [ %i.bc, %.preheader56.i.i.i.i.i.i ] ; 2 uses
  %not..sink.i.i.i.i.i.i = phi i1 [ false, %bb.f ], [ true, %.preheader.i.i.i.i.i.i ], [ false, %bb.e ], [ false, %bb.f ], [ %i.bh, %bb.i ], [ %i.bh, %.lr.ph.i.i.i.i.i.i ], [ false, %bb.h ], [ false, %.preheader56.i.i.i.i.i.i.preheader ], [ true, %.preheader56.i.i.i.i.i.i ]
  %i.bn = icmp eq i64 %.sroa.017.0.copyload.i.i.i.i, 0
  br i1 %i.bn, label %_RNCNvMs2_Csf1gSX8u3EQ2_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0Cs9fPPV5zPXBl_5typst.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.418.sroa.0.0.copyload.i.i.i.i, i64 noundef %.sroa.017.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !25343
  br label %_RNCNvMs2_Csf1gSX8u3EQ2_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0Cs9fPPV5zPXBl_5typst.exit.i.i.i.i

_RNCNvMs2_Csf1gSX8u3EQ2_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0Cs9fPPV5zPXBl_5typst.exit.i.i.i.i: ; preds = %bb.j, %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i
  br i1 %not..sink.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RNCNvMs2_Csf1gSX8u3EQ2_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0Cs9fPPV5zPXBl_5typst.exit.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECs9fPPV5zPXBl_5typst.exit.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECs9fPPV5zPXBl_5typst.exit.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !25338
  invoke void @_RNvNvNtCsaL1QbXo9JQH_3std3env3var5inner(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @569, i64 noundef 17)
          to label %.noexc62.i.i.i unwind label %bb.ab, !noalias !25337

.noexc62.i.i.i:                                   ; preds = %bb.k
  %i.bo = load i64, ptr %i.j, align 8, !range !33, !noalias !25338, !noundef !28
  %i.bp = trunc nuw i64 %i.bo to i1
  br i1 %i.bp, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECs9fPPV5zPXBl_5typst.exit35.i.i.i.i

bb.l:                                             ; preds = %_RNCNvMs2_Csf1gSX8u3EQ2_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0Cs9fPPV5zPXBl_5typst.exit.i.i.i.i
  %.not29.i.i.i.i = icmp eq i64 %.sroa.105.0.i.i.i.i.i, 0
  br i1 %.not29.i.i.i.i, label %bb.m, label %bb.ac

bb.m:                                             ; preds = %bb.l
  %i.bq = invoke { i64, ptr } @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions21available_parallelism()
          to label %.noexc63.i.i.i unwind label %bb.ab, !noalias !25337 ; 2 uses

.noexc63.i.i.i:                                   ; preds = %bb.m
  %i.br = extractvalue { i64, ptr } %i.bq, 0
  %i.bs = extractvalue { i64, ptr } %i.bq, 1      ; 4 uses
  %i.bt = trunc nuw i64 %i.br to i1
  %i.bu = ptrtoint ptr %i.bs to i64               ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bs) ]
  br i1 %i.bt, label %bb.n, label %bb.ac

bb.n:                                             ; preds = %.noexc63.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !25344
  %i.bv = and i64 %i.bu, 3
  switch i64 %i.bv, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i
    i64 3, label %bb.o
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i
    i64 1, label %bb.p
  ], !prof !66

default.unreachable:                              ; preds = %bb.dl, %bb.y, %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.bw = icmp ult ptr %i.bs, inttoptr (i64 188978561024 to ptr)
  %i.bx = and i64 %i.bu, 1095216660480
  %i.by = icmp ne i64 %i.bx, 1095216660480
  tail call void @llvm.assume(i1 %i.bw)
  tail call void @llvm.assume(i1 %i.by)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bz = getelementptr i8, ptr %i.bs, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bz) ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.bz, ptr %i.ca, align 8, !alias.scope !25345, !noalias !25344
  store i8 3, ptr %i.i, align 8, !alias.scope !25345, !noalias !25344
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ca)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i unwind label %bb.ab, !noalias !25337

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !25344
  br label %bb.ac

bb.q:                                             ; preds = %.noexc62.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25346)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val.i30.i.i.i.i = load i64, ptr %i.cb, align 8, !range !55, !alias.scope !25346, !noalias !25338, !noundef !28 ; 2 uses
  %i.cc = icmp sgt i64 %.val.i30.i.i.i.i, 0
  br i1 %i.cc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.sink.split.i31.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECs9fPPV5zPXBl_5typst.exit35.thread.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.sink.split.i31.i.i.i.i: ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.val1.i33.i.i.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !25346, !noalias !25338, !nonnull !28, !noundef !28
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i33.i.i.i.i, i64 noundef %.val.i30.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !25347
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECs9fPPV5zPXBl_5typst.exit35.thread.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECs9fPPV5zPXBl_5typst.exit35.thread.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.sink.split.i31.i.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !25338
  br label %bb.x

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECs9fPPV5zPXBl_5typst.exit35.i.i.i.i: ; preds = %.noexc62.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.021.0.copyload.i.i.i.i = load i64, ptr %i.ce, align 8, !noalias !25338 ; 3 uses
  %.sroa.422.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.422.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.sroa.422.0..sroa_idx.i.i.i.i, align 8, !noalias !25338 ; 5 uses
  %.sroa.422.sroa.4.0..sroa.422.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.422.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.422.sroa.4.0..sroa.422.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !25338 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !25338
  %.not28.i.i.i.i = icmp eq i64 %.sroa.021.0.copyload.i.i.i.i, -1
  br i1 %.not28.i.i.i.i, label %bb.x, label %bb.r

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECs9fPPV5zPXBl_5typst.exit35.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.422.sroa.0.0.copyload.i.i.i.i) ]
  switch i64 %.sroa.422.sroa.4.0.copyload.i.i.i.i, label %thread-pre-split.i.i60.i.i.i.i [
    i64 0, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i36.i.i.i.i
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.cf = load i8, ptr %.sroa.422.sroa.0.0.copyload.i.i.i.i, align 1, !alias.scope !25348, !noalias !25349, !noundef !28 ; 2 uses
  switch i8 %i.cf, label %bb.t [
    i8 43, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i36.i.i.i.i
    i8 45, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i36.i.i.i.i
  ]

thread-pre-split.i.i60.i.i.i.i:                   ; preds = %bb.r
  %.pr.i.i61.i.i.i.i = load i8, ptr %.sroa.422.sroa.0.0.copyload.i.i.i.i, align 1, !alias.scope !25348, !noalias !25349
  br label %bb.t

bb.t:                                             ; preds = %thread-pre-split.i.i60.i.i.i.i, %bb.s
  %i.cg = phi i8 [ %.pr.i.i61.i.i.i.i, %thread-pre-split.i.i60.i.i.i.i ], [ %i.cf, %bb.s ]
  %cond.i.i43.i.i.i.i = icmp eq i8 %i.cg, 43      ; 2 uses
  %i.ch = sext i1 %cond.i.i43.i.i.i.i to i64
  %.sroa.15.0.i.i44.i.i.i.i = add nsw i64 %.sroa.422.sroa.4.0.copyload.i.i.i.i, %i.ch ; 4 uses
  %.sroa.0.0.idx.i.i45.i.i.i.i = zext i1 %cond.i.i43.i.i.i.i to i64
  %.sroa.0.0.i.i46.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.422.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.0.0.idx.i.i45.i.i.i.i ; 2 uses
  %i.ci = icmp samesign ult i64 %.sroa.15.0.i.i44.i.i.i.i, 17
  br i1 %i.ci, label %.preheader.i.i53.i.i.i.i, label %.preheader56.i.i47.i.i.i.i.preheader

.preheader.i.i53.i.i.i.i:                         ; preds = %bb.t
  %.not5366.i.i54.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i44.i.i.i.i, 0
  br i1 %.not5366.i.i54.i.i.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i36.i.i.i.i, label %.lr.ph.i.i55.i.i.i.i

.preheader56.i.i47.i.i.i.i:                       ; preds = %bb.u
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i50.i.i.i.i305, i64 1
  %i.ck = add nsw i64 %.sroa.15.1.i.i49.i.i.i.i304, -1 ; 2 uses
  %.not52.i.not.i51.not.i.not.i.not.i.not.i.not = icmp eq i64 %i.ck, 0
  br i1 %.not52.i.not.i51.not.i.not.i.not.i.not.i.not, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i36.i.i.i.i, label %.preheader56.i.i47.i.i.i.i.preheader

.preheader56.i.i47.i.i.i.i.preheader:             ; preds = %bb.t, %.preheader56.i.i47.i.i.i.i
  %.sroa.0.1.i.i50.i.i.i.i305 = phi ptr [ %i.cj, %.preheader56.i.i47.i.i.i.i ], [ %.sroa.0.0.i.i46.i.i.i.i, %bb.t ] ; 2 uses
  %.sroa.15.1.i.i49.i.i.i.i304 = phi i64 [ %i.ck, %.preheader56.i.i47.i.i.i.i ], [ %.sroa.15.0.i.i44.i.i.i.i, %bb.t ]
  %.sroa.042.0.i.i48.i.i.i.i303 = phi i64 [ %i.ct, %.preheader56.i.i47.i.i.i.i ], [ 0, %bb.t ]
  %i.cl = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i48.i.i.i.i303, i64 10) ; 2 uses
  %i.cm = extractvalue { i64, i1 } %i.cl, 1
  br i1 %i.cm, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i36.i.i.i.i, label %bb.u, !prof !38

bb.u:                                             ; preds = %.preheader56.i.i47.i.i.i.i.preheader
  %i.cn = extractvalue { i64, i1 } %i.cl, 0       ; 2 uses
  %i.co = load i8, ptr %.sroa.0.1.i.i50.i.i.i.i305, align 1, !alias.scope !25348, !noalias !25349, !noundef !28
  %i.cp = zext i8 %i.co to i32
  %i.cq = add nsw i32 %i.cp, -48                  ; 2 uses
  %i.cr = icmp ugt i32 %i.cq, 9
  %i.cs = zext nneg i32 %i.cq to i64
  %i.ct = add i64 %i.cn, %i.cs                    ; 3 uses
  %i.cu = icmp ult i64 %i.ct, %i.cn
  %or.cond.i52.i.i.i.i = select i1 %i.cr, i1 true, i1 %i.cu, !prof !61
  br i1 %or.cond.i52.i.i.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i36.i.i.i.i, label %.preheader56.i.i47.i.i.i.i, !prof !61

.lr.ph.i.i55.i.i.i.i:                             ; preds = %.preheader.i.i53.i.i.i.i, %bb.v
  %.sroa.0.269.i.i56.i.i.i.i = phi ptr [ %i.db, %bb.v ], [ %.sroa.0.0.i.i46.i.i.i.i, %.preheader.i.i53.i.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i57.i.i.i.i = phi i64 [ %i.da, %bb.v ], [ %.sroa.15.0.i.i44.i.i.i.i, %.preheader.i.i53.i.i.i.i ]
  %.sroa.042.267.i.i58.i.i.i.i = phi i64 [ %i.dd, %bb.v ], [ 0, %.preheader.i.i53.i.i.i.i ]
  %i.cv = load i8, ptr %.sroa.0.269.i.i56.i.i.i.i, align 1, !alias.scope !25348, !noalias !25349, !noundef !28
  %i.cw = zext i8 %i.cv to i32
  %i.cx = add nsw i32 %i.cw, -48                  ; 2 uses
  %i.cy = icmp ugt i32 %i.cx, 9                   ; 3 uses
  br i1 %i.cy, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i36.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i55.i.i.i.i
  %i.cz = mul i64 %.sroa.042.267.i.i58.i.i.i.i, 10
  %i.da = add nsw i64 %.sroa.15.268.i.i57.i.i.i.i, -1 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i56.i.i.i.i, i64 1
  %i.dc = zext nneg i32 %i.cx to i64
  %i.dd = add i64 %i.cz, %i.dc                    ; 2 uses
  %.not53.i.i59.i.i.i.i = icmp eq i64 %i.da, 0
  br i1 %.not53.i.i59.i.i.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i36.i.i.i.i, label %.lr.ph.i.i55.i.i.i.i

_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i36.i.i.i.i: ; preds = %bb.u, %.preheader56.i.i47.i.i.i.i.preheader, %.preheader56.i.i47.i.i.i.i, %bb.v, %.lr.ph.i.i55.i.i.i.i, %.preheader.i.i53.i.i.i.i, %bb.s, %bb.s, %bb.r
  %.sroa.105.0.i37.i.i.i.i = phi i64 [ undef, %bb.s ], [ 0, %.preheader.i.i53.i.i.i.i ], [ undef, %bb.r ], [ undef, %bb.s ], [ undef, %.lr.ph.i.i55.i.i.i.i ], [ %i.dd, %bb.v ], [ undef, %bb.u ], [ undef, %.preheader56.i.i47.i.i.i.i.preheader ], [ %i.ct, %.preheader56.i.i47.i.i.i.i ]
  %.sink.i.i38.i.i.i.i = phi i1 [ true, %bb.s ], [ false, %.preheader.i.i53.i.i.i.i ], [ true, %bb.r ], [ true, %bb.s ], [ %i.cy, %bb.v ], [ %i.cy, %.lr.ph.i.i55.i.i.i.i ], [ true, %bb.u ], [ true, %.preheader56.i.i47.i.i.i.i.preheader ], [ false, %.preheader56.i.i47.i.i.i.i ] ; 2 uses
  %i.de = icmp eq i64 %.sroa.021.0.copyload.i.i.i.i, 0
  br i1 %i.de, label %_RNCNvMs2_Csf1gSX8u3EQ2_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0Cs9fPPV5zPXBl_5typst.exit.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i36.i.i.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.422.sroa.0.0.copyload.i.i.i.i, i64 noundef %.sroa.021.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !25350
  br label %_RNCNvMs2_Csf1gSX8u3EQ2_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0Cs9fPPV5zPXBl_5typst.exit.i.i.i.i

_RNCNvMs2_Csf1gSX8u3EQ2_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0Cs9fPPV5zPXBl_5typst.exit.i.i.i.i: ; preds = %bb.w, %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i36.i.i.i.i
  %.sroa.3.0.i42.i.i.i.i = select i1 %.sink.i.i38.i.i.i.i, i64 undef, i64 %.sroa.105.0.i37.i.i.i.i ; 2 uses
  %i.df = icmp eq i64 %.sroa.3.0.i42.i.i.i.i, 0
  %or.cond.not.i.i.i.i = select i1 %.sink.i.i38.i.i.i.i, i1 true, i1 %i.df
  br i1 %or.cond.not.i.i.i.i, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %_RNCNvMs2_Csf1gSX8u3EQ2_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0Cs9fPPV5zPXBl_5typst.exit.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECs9fPPV5zPXBl_5typst.exit35.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECs9fPPV5zPXBl_5typst.exit35.thread.i.i.i.i
  %i.dg = invoke { i64, ptr } @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions21available_parallelism()
          to label %.noexc65.i.i.i unwind label %bb.ab, !noalias !25337 ; 2 uses

.noexc65.i.i.i:                                   ; preds = %bb.x
  %i.dh = extractvalue { i64, ptr } %i.dg, 0
  %i.di = extractvalue { i64, ptr } %i.dg, 1      ; 4 uses
  %i.dj = trunc nuw i64 %i.dh to i1
  %i.dk = ptrtoint ptr %i.di to i64               ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.di) ]
  br i1 %i.dj, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %.noexc65.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !25351
  %i.dl = and i64 %i.dk, 3
  switch i64 %i.dl, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs9fPPV5zPXBl_5typst.exit.i63.i.i.i.i
    i64 3, label %bb.z
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs9fPPV5zPXBl_5typst.exit.i63.i.i.i.i
    i64 1, label %bb.aa
  ], !prof !66

bb.z:                                             ; preds = %bb.y
  %i.dm = icmp ult ptr %i.di, inttoptr (i64 188978561024 to ptr)
  %i.dn = and i64 %i.dk, 1095216660480
  %i.do = icmp ne i64 %i.dn, 1095216660480
  tail call void @llvm.assume(i1 %i.dm)
  tail call void @llvm.assume(i1 %i.do)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs9fPPV5zPXBl_5typst.exit.i63.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.dp = getelementptr i8, ptr %i.di, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dp) ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.dp, ptr %i.dq, align 8, !alias.scope !25352, !noalias !25351
  store i8 3, ptr %i.h, align 8, !alias.scope !25352, !noalias !25351
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dq)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs9fPPV5zPXBl_5typst.exit.i63.i.i.i.i unwind label %bb.ab, !noalias !25337

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs9fPPV5zPXBl_5typst.exit.i63.i.i.i.i: ; preds = %bb.aa, %bb.z, %bb.y, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !25351
  br label %bb.ac

.body67.i.i.i:                                    ; preds = %.thread169.i.i.i, %bb.cz, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core8registry10TerminatorECs9fPPV5zPXBl_5typst.exit.i.i.i, %bb.bc, %.body.i.i.i.i, %bb.ab
  %.pn48.pn.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn48.pn.pn.pn.pn.pn129172.i.i.i, %.thread169.i.i.i ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %i.dr, %bb.ab ], [ %.pn48.pn.pn.pn.i.i.i, %bb.cz ], [ %.pn48.pn.pn.pn.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core8registry10TerminatorECs9fPPV5zPXBl_5typst.exit.i.i.i ], [ %i.hz, %bb.bc ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsf1gSX8u3EQ2_10rayon_core17ThreadPoolBuilderECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.af) #62
          to label %common.resume.i unwind label %bb.dc, !noalias !25337

bb.ab:                                            ; preds = %bb.aa, %bb.x, %bb.p, %bb.m, %bb.k, %bb.c
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body67.i.i.i

bb.ac:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs9fPPV5zPXBl_5typst.exit.i63.i.i.i.i, %.noexc65.i.i.i, %_RNCNvMs2_Csf1gSX8u3EQ2_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0Cs9fPPV5zPXBl_5typst.exit.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i, %.noexc63.i.i.i, %bb.l, %bb.b
  %.sroa.0.1.i.i.i.i = phi i64 [ %.sroa.105.0.i.i.i.i.i, %bb.l ], [ %.val.i.i.i, %bb.b ], [ %.sroa.3.0.i42.i.i.i.i, %_RNCNvMs2_Csf1gSX8u3EQ2_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0Cs9fPPV5zPXBl_5typst.exit.i.i.i.i ], [ %i.bu, %.noexc63.i.i.i ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs9fPPV5zPXBl_5typst.exit.i63.i.i.i.i ], [ %i.dk, %.noexc65.i.i.i ] ; 2 uses
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.1.i.i.i.i, i64 65535) ; 9 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.af, i64 89
  %i.dt = load i8, ptr %i.ds, align 1, !range !53, !alias.scope !25336, !noalias !25337, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !25353
  store i64 0, ptr %i.g, align 8, !alias.scope !25354, !noalias !25353
  %.sroa.4.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx2.i.i.i.i.i, align 8, !alias.scope !25354, !noalias !25353
  %.sroa.5.0..sroa_idx3.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 7 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !25354, !noalias !25353
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !25354, !noalias !25353
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 8 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !25354, !noalias !25353
  call void @llvm.experimental.noalias.scope.decl(metadata !25355)
  %.not.not.i.i.not.i.i.i = icmp eq i64 %.sroa.0.1.i.i.i.i, 0 ; 2 uses
  br i1 %.not.not.i.i.not.i.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits7collectTINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE14extend_reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g, i64 noundef 0, i64 noundef range(i64 1, 0) %..i.i.i.i, i64 noundef 8, i64 noundef 32)
          to label %_RNvXsj_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBF_E14extend_reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !25356

_RNvXsj_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBF_E14extend_reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i: ; preds = %bb.ad
  %i.du = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.dv = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !25357, !noalias !25358, !noundef !28 ; 3 uses
  %i.dw = load i64, ptr %i.du, align 8, !range !37, !alias.scope !25357, !noalias !25358, !noundef !28
  %i.dx = sub i64 %i.dw, %i.dv
  %i.dy = icmp ugt i64 %..i.i.i.i, %i.dx
  br i1 %i.dy, label %bb.ae, label %.lr.ph.i.i.i.i.i.i.i.i, !prof !38

bb.ae:                                            ; preds = %_RNvXsj_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBF_E14extend_reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.du, i64 noundef %i.dv, i64 noundef range(i64 1, 0) %..i.i.i.i, i64 noundef 8, i64 noundef 16)
          to label %..lr.ph.i.i.i.i_crit_edge.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !25356

..lr.ph.i.i.i.i_crit_edge.i.i.i.i:                ; preds = %bb.ae
  %.promoted9.i.i.i.i.pre.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !25359, !noalias !25360
  br label %.lr.ph.i.i.i.i.i.i.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits7collectTINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE14extend_reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i: ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !25361)
  call void @llvm.experimental.noalias.scope.decl(metadata !25362)
  call void @llvm.experimental.noalias.scope.decl(metadata !25363)
  br label %bb.ap

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %..lr.ph.i.i.i.i_crit_edge.i.i.i.i, %_RNvXsj_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBF_E14extend_reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i
  %.promoted9.i.i.i.i.i.i.i.i = phi i64 [ %.promoted9.i.i.i.i.pre.i.i.i.i, %..lr.ph.i.i.i.i_crit_edge.i.i.i.i ], [ %i.dv, %_RNvXsj_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBF_E14extend_reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i ]
  %i.dz = load ptr, ptr %.sroa.4.0..sroa_idx2.i.i.i.i.i, align 8, !alias.scope !25359, !noalias !25360, !nonnull !28
  %i.ea = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !25359, !noalias !25360, !nonnull !28
  %.promoted.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx3.i.i.i.i.i, align 8, !alias.scope !25359, !noalias !25360
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %.sroa.44.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.eg = trunc nuw i8 %i.dt to i1
  br label %bb.af

bb.af:                                            ; preds = %.noexc3.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.eh = phi i64 [ %.promoted9.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.fd, %.noexc3.i.i.i.i ] ; 7 uses
  %i.ei = phi i64 [ %.promoted.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ez, %.noexc3.i.i.i.i ] ; 7 uses
  %.sroa.0.08.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ej, %.noexc3.i.i.i.i ]
  %i.ej = add i64 %.sroa.0.08.i.i.i.i.i.i.i.i, 1  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !25353
  br i1 %i.eg, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !25364)
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !25365
  %i.ek = call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef range(i64 1, 17) 8) #56, !noalias !25365 ; 3 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.ah, label %_RINvXsb_NtNtCs1xwejQucwHj_5alloc5boxed4iterINtB8_3BoxSINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEINtNtNtNtBX_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB2z_8adapters3map3MapINtNtNtBX_3ops5range5RangejENCNvMs_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB4r_6BufferB1L_E5alloc0EECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  store i64 %i.ei, ptr %.sroa.5.0..sroa_idx3.i.i.i.i.i, align 8, !noalias !25353
  store i64 %i.eh, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !noalias !25353
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 1024) #61
          to label %.noexc4.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !25356

.noexc4.i.i.i.i:                                  ; preds = %bb.ah
  unreachable

_RINvXsb_NtNtCs1xwejQucwHj_5alloc5boxed4iterINtB8_3BoxSINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEINtNtNtNtBX_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB2z_8adapters3map3MapINtNtNtBX_3ops5range5RangejENCNvMs_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB4r_6BufferB1L_E5alloc0EECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i: ; preds = %bb.ag
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !25366
  %i.em = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !25366 ; 4 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %bb.ai, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i.i, !prof !29

bb.ai:                                            ; preds = %_RINvXsb_NtNtCs1xwejQucwHj_5alloc5boxed4iterINtB8_3BoxSINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEINtNtNtNtBX_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB2z_8adapters3map3MapINtNtNtBX_3ops5range5RangejENCNvMs_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB4r_6BufferB1L_E5alloc0EECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i
  store i64 %i.ei, ptr %.sroa.5.0..sroa_idx3.i.i.i.i.i, align 8, !noalias !25353
  store i64 %i.eh, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !noalias !25353
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
          to label %.noexc5.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !25356

.noexc5.i.i.i.i:                                  ; preds = %bb.ai
  unreachable

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i.i: ; preds = %_RINvXsb_NtNtCs1xwejQucwHj_5alloc5boxed4iterINtB8_3BoxSINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEINtNtNtNtBX_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB2z_8adapters3map3MapINtNtNtBX_3ops5range5RangejENCNvMs_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB4r_6BufferB1L_E5alloc0EECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i
  store ptr %i.ek, ptr %i.em, align 8, !noalias !25366
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i64 64, ptr %i.eo, align 8, !noalias !25366
  %i.ep = ptrtoint ptr %i.em to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !25367
  store i64 1, ptr %i.e, align 128, !noalias !25367
  store i64 1, ptr %i.eb, align 8, !noalias !25367
  store i64 %i.ep, ptr %i.ec, align 128, !noalias !25367
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(16) %.sroa.44.0..sroa_idx.i.i.i.i.i.i, i8 0, i64 16, i1 false), !noalias !25367
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !25368
  %i.eq = call noundef align 128 dereferenceable_or_null(384) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 384, i64 noundef range(i64 1, -9223372036854775807) 128) #56, !noalias !25368 ; 4 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %bb.aj, label %_RNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE8new_lifoCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i, !prof !29

bb.aj:                                            ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i.i
  store i64 %i.ei, ptr %.sroa.5.0..sroa_idx3.i.i.i.i.i, align 8, !noalias !25353
  store i64 %i.eh, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !noalias !25353
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 384) #61
          to label %.noexc.i.i.i.i.i.i unwind label %bb.ak, !noalias !25366

.noexc.i.i.i.i.i.i:                               ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.es = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtCs4ofGZotLxya_15crossbeam_utils12cache_padded11CachePaddedINtNtCs66IsRtDrrKP_15crossbeam_deque5deque5InnerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 128 dereferenceable(384) %i.e) #62, !noalias !25366
  br label %.body.i.i.i.i

_RNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE8new_lifoCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i: ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(384) %i.eq, ptr noundef nonnull align 128 dereferenceable(384) %i.e, i64 384, i1 false), !noalias !25366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !25367
  store ptr %i.eq, ptr %i.f, align 8, !alias.scope !25364, !noalias !25369
  store ptr %i.ek, ptr %i.ed, align 8, !alias.scope !25364, !noalias !25369
  store i64 64, ptr %i.ee, align 8, !alias.scope !25364, !noalias !25369
  store i8 1, ptr %i.ef, align 8, !alias.scope !25364, !noalias !25369
  br label %bb.am

bb.al:                                            ; preds = %bb.af
  invoke fastcc void @_RNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE8new_fifoCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.f)
          to label %.noexc6.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !25356

.noexc6.i.i.i.i:                                  ; preds = %bb.al
end_hunk_0
