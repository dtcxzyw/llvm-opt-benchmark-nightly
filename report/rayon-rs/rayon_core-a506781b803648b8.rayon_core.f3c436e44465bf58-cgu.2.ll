Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rayon-rs/original/rayon_core-a506781b803648b8.rayon_core.f3c436e44465bf58-cgu.2?download=true
inline.NumInlined: 179
inline.NumDeleted: 106
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs2_CskVyUMSjkkSy_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsB5_:bb.a
  %.val.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !231 ; 2 uses
  %i.q = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit.thread, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core.exit.sink.split.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core.exit.sink.split.i: ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val1.i.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !230, !nonnull !4, !noundef !4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !4
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit.thread

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit.thread: ; preds = %bb.c, %bb.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.b
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.418.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not27 = icmp eq i64 %i.l, -1
  br i1 %.not27, label %bb.p, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.420.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  store i64 %i.l, ptr %i.d, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %i.s = load ptr, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !232, !nonnull !4, !noundef !4 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !232, !noundef !4 ; 2 uses
  switch i64 %i.u, label %thread-pre-split.i.i [
    i64 0, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.v = load i8, ptr %i.s, align 1, !alias.scope !233, !noalias !232, !noundef !4 ; 2 uses
  switch i8 %i.v, label %bb.i [
    i8 43, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i
    i8 45, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i
  ]

thread-pre-split.i.i:                             ; preds = %bb.g
  %.pr.i.i = load i8, ptr %i.s, align 1, !alias.scope !233, !noalias !232
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split.i.i, %bb.h
  %i.w = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.v, %bb.h ]
  %cond.i.i = icmp eq i8 %i.w, 43                 ; 2 uses
  %i.x = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %i.u, %i.x        ; 4 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.idx.i.i ; 2 uses
  %i.y = icmp samesign ult i64 %.sroa.15.0.i.i, 17
  br i1 %i.y, label %.preheader.i.i, label %.preheader56.i.i.preheader

.preheader.i.i:                                   ; preds = %bb.i
  %.not5366.i.i = icmp eq i64 %.sroa.15.0.i.i, 0
  br i1 %.not5366.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph.i.i

.preheader56.i.i:                                 ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i124, i64 1
  %i.aa = add nsw i64 %.sroa.15.1.i.i123, -1      ; 2 uses
  %.not52.i.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not52.i.not.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %.preheader56.i.i.preheader

.preheader56.i.i.preheader:                       ; preds = %bb.i, %.preheader56.i.i
  %.sroa.0.1.i.i124 = phi ptr [ %i.z, %.preheader56.i.i ], [ %.sroa.0.0.i.i, %bb.i ] ; 2 uses
  %.sroa.15.1.i.i123 = phi i64 [ %i.aa, %.preheader56.i.i ], [ %.sroa.15.0.i.i, %bb.i ]
  %.sroa.042.0.i.i122 = phi i64 [ %i.aj, %.preheader56.i.i ], [ 0, %bb.i ]
  %i.ab = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i122, i64 10) ; 2 uses
  %i.ac = extractvalue { i64, i1 } %i.ab, 1
  br i1 %i.ac, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %bb.j, !prof !6

bb.j:                                             ; preds = %.preheader56.i.i.preheader
  %i.ad = extractvalue { i64, i1 } %i.ab, 0       ; 2 uses
  %i.ae = load i8, ptr %.sroa.0.1.i.i124, align 1, !alias.scope !233, !noalias !232, !noundef !4
  %i.af = zext i8 %i.ae to i32
  %i.ag = add nsw i32 %i.af, -48                  ; 2 uses
  %i.ah = icmp ugt i32 %i.ag, 9
  %i.ai = zext nneg i32 %i.ag to i64
  %i.aj = add i64 %i.ad, %i.ai                    ; 3 uses
  %i.ak = icmp ult i64 %i.aj, %i.ad
  %or.cond.i = select i1 %i.ah, i1 true, i1 %i.ak, !prof !16
  br i1 %or.cond.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %.preheader56.i.i, !prof !16

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.k
  %.sroa.0.269.i.i = phi ptr [ %i.ar, %bb.k ], [ %.sroa.0.0.i.i, %.preheader.i.i ] ; 2 uses
  %.sroa.15.268.i.i = phi i64 [ %i.aq, %bb.k ], [ %.sroa.15.0.i.i, %.preheader.i.i ]
  %.sroa.042.267.i.i = phi i64 [ %i.at, %bb.k ], [ 0, %.preheader.i.i ]
  %i.al = load i8, ptr %.sroa.0.269.i.i, align 1, !alias.scope !233, !noalias !232, !noundef !4
  %i.am = zext i8 %i.al to i32
  %i.an = add nsw i32 %i.am, -48                  ; 2 uses
  %i.ao = icmp ult i32 %i.an, 10                  ; 3 uses
  br i1 %i.ao, label %bb.k, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.ap = mul i64 %.sroa.042.267.i.i, 10
  %i.aq = add nsw i64 %.sroa.15.268.i.i, -1       ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i, i64 1
  %i.as = zext nneg i32 %i.an to i64
  %i.at = add i64 %i.ap, %i.as                    ; 2 uses
  %.not53.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not53.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph.i.i

_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i: ; preds = %bb.j, %.preheader56.i.i.preheader, %.preheader56.i.i, %bb.k, %.lr.ph.i.i, %.preheader.i.i, %bb.h, %bb.h, %bb.g
  %.sroa.102.0.i = phi i64 [ undef, %bb.h ], [ 0, %.preheader.i.i ], [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %.lr.ph.i.i ], [ %i.at, %bb.k ], [ undef, %bb.j ], [ undef, %.preheader56.i.i.preheader ], [ %i.aj, %.preheader56.i.i ] ; 2 uses
  %not..sink.i.i = phi i1 [ false, %bb.h ], [ true, %.preheader.i.i ], [ false, %bb.g ], [ false, %bb.h ], [ %i.ao, %bb.k ], [ %i.ao, %.lr.ph.i.i ], [ false, %bb.j ], [ false, %.preheader56.i.i.preheader ], [ true, %.preheader56.i.i ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i30 = load i64, ptr %i.d, align 8, !alias.scope !234 ; 2 uses
  %i.av = icmp eq i64 %.val2.i.i.i30, 0
  br i1 %i.av, label %common.resume, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val3.i.i.i = load ptr, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !235, !nonnull !4, !noundef !4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i30, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !236
  br label %common.resume

bb.n:                                             ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i
  %.val.i.i.i31 = load i64, ptr %i.d, align 8, !alias.scope !234 ; 2 uses
  %i.aw = icmp eq i64 %.val.i.i.i31, 0
  br i1 %i.aw, label %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0B7_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val1.i.i.i = load ptr, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !235, !nonnull !4, !noundef !4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i31, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !237
  br label %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0B7_.exit

_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0B7_.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br i1 %not..sink.i.i, label %bb.r, label %bb.q

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit.thread, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0B7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.715)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RINvNtCsaL1QbXo9JQH_3std3env3varReECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 17)
  %i.ax = load i64, ptr %i.e, align 8, !range !5, !noundef !4
  %i.ay = trunc nuw i64 %i.ax to i1
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.ba = load i64, ptr %i.az, align 8            ; 3 uses
  br i1 %i.ay, label %bb.w, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit45

bb.r:                                             ; preds = %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0B7_.exit
  %.not29 = icmp eq i64 %.sroa.102.0.i, 0
  br i1 %.not29, label %bb.s, label %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threads0B7_.exit

bb.s:                                             ; preds = %bb.r
  %i.bb = call { i64, ptr } @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions21available_parallelism() ; 2 uses
  %i.bc = extractvalue { i64, ptr } %i.bb, 0
  %i.bd = extractvalue { i64, ptr } %i.bb, 1      ; 4 uses
  %i.be = trunc nuw i64 %i.bc to i1
  %i.bf = ptrtoint ptr %i.bd to i64               ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bd) ]
  br i1 %i.be, label %bb.t, label %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threads0B7_.exit

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !238
  %i.bg = and i64 %i.bf, 3
  switch i64 %i.bg, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i
    i64 3, label %bb.u
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i
    i64 1, label %bb.v
  ], !prof !11

default.unreachable:                              ; preds = %bb.al, %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.bh = icmp ult ptr %i.bd, inttoptr (i64 188978561024 to ptr)
  %i.bi = and i64 %i.bf, 1095216660480
  %i.bj = icmp ne i64 %i.bi, 1095216660480
  call void @llvm.assume(i1 %i.bh)
  call void @llvm.assume(i1 %i.bj)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i

bb.v:                                             ; preds = %bb.t
  %i.bk = getelementptr i8, ptr %i.bd, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.bk, ptr %i.bl, align 8, !alias.scope !239, !noalias !238
  store i8 3, ptr %i.b, align 8, !alias.scope !239, !noalias !238
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bl), !noalias !238
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i: ; preds = %bb.v, %bb.u, %bb.t, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !238
  br label %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threads0B7_.exit

_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threads0B7_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i77, %bb.ak, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i, %bb.s, %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0B7_.exit, %bb.r, %bb.a
  %.sroa.0.1 = phi i64 [ %.sroa.102.0.i, %bb.r ], [ %i.h, %bb.a ], [ %.sroa.102.0.i47, %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0B7_.exit ], [ %i.bf, %bb.s ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i77 ], [ %i.dc, %bb.ak ]
  ret i64 %.sroa.0.1

common.resume.sink.split.i33:                     ; preds = %bb.y
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val3.i.i.i.i.i36 = load ptr, ptr %i.bm, align 8, !alias.scope !240, !nonnull !4, !noundef !4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i36, i64 noundef %.val2.i.i.i.i.i32, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !4
  br label %common.resume

bb.w:                                             ; preds = %bb.q
  %i.bn = icmp eq i64 %i.ba, -1
  br i1 %i.bn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit45.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i32 = load i64, ptr %i.az, align 8, !alias.scope !241 ; 2 uses
  %i.bp = icmp eq i64 %.val2.i.i.i.i.i32, 0
  br i1 %i.bp, label %common.resume, label %common.resume.sink.split.i33

bb.z:                                             ; preds = %bb.x
  %.val.i.i.i.i.i39 = load i64, ptr %i.az, align 8, !alias.scope !241 ; 2 uses
  %i.bq = icmp eq i64 %.val.i.i.i.i.i39, 0
  br i1 %i.bq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit45.thread, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core.exit.sink.split.i40

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core.exit.sink.split.i40: ; preds = %bb.z
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val1.i.i.i.i.i42 = load ptr, ptr %i.br, align 8, !alias.scope !240, !nonnull !4, !noundef !4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i42, i64 noundef %.val.i.i.i.i.i39, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !4
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit45.thread

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit45.thread: ; preds = %bb.w, %bb.z, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core.exit.sink.split.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.aj

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit45: ; preds = %bb.q
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.715, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.422.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not28 = icmp eq i64 %i.ba, -1
  br i1 %.not28, label %bb.aj, label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit45
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.424.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.715, i64 16, i1 false)
  store i64 %i.ba, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.bs = load ptr, ptr %.sroa.424.0..sroa_idx, align 8, !alias.scope !242, !nonnull !4, !noundef !4 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !242, !noundef !4 ; 2 uses
  switch i64 %i.bu, label %thread-pre-split.i.i74 [
    i64 0, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46
    i64 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.bv = load i8, ptr %i.bs, align 1, !alias.scope !243, !noalias !242, !noundef !4 ; 2 uses
  switch i8 %i.bv, label %bb.ac [
    i8 43, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46
    i8 45, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46
  ]

thread-pre-split.i.i74:                           ; preds = %bb.aa
  %.pr.i.i75 = load i8, ptr %i.bs, align 1, !alias.scope !243, !noalias !242
  br label %bb.ac

bb.ac:                                            ; preds = %thread-pre-split.i.i74, %bb.ab
  %i.bw = phi i8 [ %.pr.i.i75, %thread-pre-split.i.i74 ], [ %i.bv, %bb.ab ]
  %cond.i.i57 = icmp eq i8 %i.bw, 43              ; 2 uses
  %i.bx = sext i1 %cond.i.i57 to i64
  %.sroa.15.0.i.i58 = add nsw i64 %i.bu, %i.bx    ; 4 uses
  %.sroa.0.0.idx.i.i59 = zext i1 %cond.i.i57 to i64
  %.sroa.0.0.i.i60 = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.0.0.idx.i.i59 ; 2 uses
  %i.by = icmp samesign ult i64 %.sroa.15.0.i.i58, 17
  br i1 %i.by, label %.preheader.i.i67, label %.preheader56.i.i61.preheader

.preheader.i.i67:                                 ; preds = %bb.ac
  %.not5366.i.i68 = icmp eq i64 %.sroa.15.0.i.i58, 0
  br i1 %.not5366.i.i68, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46, label %.lr.ph.i.i69

.preheader56.i.i61:                               ; preds = %bb.ad
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i64127, i64 1
  %i.ca = add nsw i64 %.sroa.15.1.i.i63126, -1    ; 2 uses
  %.not52.i.not.i65.not = icmp eq i64 %i.ca, 0
  br i1 %.not52.i.not.i65.not, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46, label %.preheader56.i.i61.preheader

.preheader56.i.i61.preheader:                     ; preds = %bb.ac, %.preheader56.i.i61
  %.sroa.0.1.i.i64127 = phi ptr [ %i.bz, %.preheader56.i.i61 ], [ %.sroa.0.0.i.i60, %bb.ac ] ; 2 uses
  %.sroa.15.1.i.i63126 = phi i64 [ %i.ca, %.preheader56.i.i61 ], [ %.sroa.15.0.i.i58, %bb.ac ]
  %.sroa.042.0.i.i62125 = phi i64 [ %i.cj, %.preheader56.i.i61 ], [ 0, %bb.ac ]
  %i.cb = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i62125, i64 10) ; 2 uses
  %i.cc = extractvalue { i64, i1 } %i.cb, 1
  br i1 %i.cc, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46, label %bb.ad, !prof !6

bb.ad:                                            ; preds = %.preheader56.i.i61.preheader
  %i.cd = extractvalue { i64, i1 } %i.cb, 0       ; 2 uses
  %i.ce = load i8, ptr %.sroa.0.1.i.i64127, align 1, !alias.scope !243, !noalias !242, !noundef !4
  %i.cf = zext i8 %i.ce to i32
  %i.cg = add nsw i32 %i.cf, -48                  ; 2 uses
  %i.ch = icmp ugt i32 %i.cg, 9
  %i.ci = zext nneg i32 %i.cg to i64
  %i.cj = add i64 %i.cd, %i.ci                    ; 3 uses
  %i.ck = icmp ult i64 %i.cj, %i.cd
  %or.cond.i66 = select i1 %i.ch, i1 true, i1 %i.ck, !prof !16
  br i1 %or.cond.i66, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46, label %.preheader56.i.i61, !prof !16

.lr.ph.i.i69:                                     ; preds = %.preheader.i.i67, %bb.ae
  %.sroa.0.269.i.i70 = phi ptr [ %i.cr, %bb.ae ], [ %.sroa.0.0.i.i60, %.preheader.i.i67 ] ; 2 uses
  %.sroa.15.268.i.i71 = phi i64 [ %i.cq, %bb.ae ], [ %.sroa.15.0.i.i58, %.preheader.i.i67 ]
  %.sroa.042.267.i.i72 = phi i64 [ %i.ct, %bb.ae ], [ 0, %.preheader.i.i67 ]
  %i.cl = load i8, ptr %.sroa.0.269.i.i70, align 1, !alias.scope !243, !noalias !242, !noundef !4
  %i.cm = zext i8 %i.cl to i32
  %i.cn = add nsw i32 %i.cm, -48                  ; 2 uses
  %i.co = icmp ugt i32 %i.cn, 9                   ; 3 uses
  br i1 %i.co, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i69
  %i.cp = mul i64 %.sroa.042.267.i.i72, 10
  %i.cq = add nsw i64 %.sroa.15.268.i.i71, -1     ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i70, i64 1
  %i.cs = zext nneg i32 %i.cn to i64
  %i.ct = add i64 %i.cp, %i.cs                    ; 2 uses
  %.not53.i.i73 = icmp eq i64 %i.cq, 0
  br i1 %.not53.i.i73, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46, label %.lr.ph.i.i69

_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46: ; preds = %bb.ad, %.preheader56.i.i61.preheader, %.preheader56.i.i61, %bb.ae, %.lr.ph.i.i69, %.preheader.i.i67, %bb.ab, %bb.ab, %bb.aa
  %.sroa.102.0.i47 = phi i64 [ undef, %bb.ab ], [ 0, %.preheader.i.i67 ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ undef, %.lr.ph.i.i69 ], [ %i.ct, %bb.ae ], [ undef, %bb.ad ], [ undef, %.preheader56.i.i61.preheader ], [ %i.cj, %.preheader56.i.i61 ] ; 2 uses
  %.sink.i.i48 = phi i1 [ true, %bb.ab ], [ false, %.preheader.i.i67 ], [ true, %bb.aa ], [ true, %bb.ab ], [ %i.co, %bb.ae ], [ %i.co, %.lr.ph.i.i69 ], [ true, %bb.ad ], [ true, %.preheader56.i.i61.preheader ], [ false, %.preheader56.i.i61 ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.ah unwind label %bb.af

bb.af:                                            ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i49 = load i64, ptr %i.c, align 8, !alias.scope !244 ; 2 uses
  %i.cv = icmp eq i64 %.val2.i.i.i49, 0
  br i1 %i.cv, label %common.resume, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.val3.i.i.i50 = load ptr, ptr %.sroa.424.0..sroa_idx, align 8, !alias.scope !245, !nonnull !4, !noundef !4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i50, i64 noundef %.val2.i.i.i49, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !246
  br label %common.resume

bb.ah:                                            ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46
  %.val.i.i.i52 = load i64, ptr %i.c, align 8, !alias.scope !244 ; 2 uses
  %i.cw = icmp eq i64 %.val.i.i.i52, 0
  br i1 %i.cw, label %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0B7_.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.val1.i.i.i53 = load ptr, ptr %.sroa.424.0..sroa_idx, align 8, !alias.scope !245, !nonnull !4, !noundef !4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i53, i64 noundef %.val.i.i.i52, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !247
  br label %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0B7_.exit

_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0B7_.exit: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.715)
  %i.cx = icmp eq i64 %.sroa.102.0.i47, 0
  %or.cond.not = select i1 %.sink.i.i48, i1 true, i1 %i.cx
  br i1 %or.cond.not, label %bb.ak, label %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threads0B7_.exit

bb.aj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit45.thread, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit45
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.715)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0B7_.exit
  %i.cy = call { i64, ptr } @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions21available_parallelism() ; 2 uses
  %i.cz = extractvalue { i64, ptr } %i.cy, 0
  %i.da = extractvalue { i64, ptr } %i.cy, 1      ; 4 uses
  %i.db = trunc nuw i64 %i.cz to i1
  %i.dc = ptrtoint ptr %i.da to i64               ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.da) ]
  br i1 %i.db, label %bb.al, label %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threads0B7_.exit

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !248
  %i.dd = and i64 %i.dc, 3
  switch i64 %i.dd, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i77
    i64 3, label %bb.am
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i77
    i64 1, label %bb.an
  ], !prof !11

bb.am:                                            ; preds = %bb.al
  %i.de = icmp ult ptr %i.da, inttoptr (i64 188978561024 to ptr)
  %i.df = and i64 %i.dc, 1095216660480
  %i.dg = icmp ne i64 %i.df, 1095216660480
  call void @llvm.assume(i1 %i.de)
  call void @llvm.assume(i1 %i.dg)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i77

bb.an:                                            ; preds = %bb.al
  %i.dh = getelementptr i8, ptr %i.da, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dh) ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.dh, ptr %i.di, align 8, !alias.scope !249, !noalias !248
  store i8 3, ptr %i.a, align 8, !alias.scope !249, !noalias !248
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.di), !noalias !248
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i77

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i77: ; preds = %bb.an, %bb.am, %bb.al, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !248
  br label %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threads0B7_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_CskVyUMSjkkSy_10rayon_coreNtB5_17ThreadPoolBuilder15get_thread_nameB5_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !17, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.f(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull %i.b, i64 noundef %2) #35
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val10 = load ptr, ptr %i.a, align 8           ; 3 uses
  %i.b = icmp eq i64 %3, 0
  %i.c = icmp eq i64 %.val, 0
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = mul nuw i64 %.val, %3                    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2) #34
  %i.f = inttoptr i64 %2 to ptr
  store ptr %i.f, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit
  store i64 %1, ptr %0, align 8
  br label %bb.e

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit: ; preds = %bb.b
  %i.g = mul nuw i64 %3, %1                       ; 3 uses
  %i.h = icmp ule i64 %i.g, %i.d
  tail call void @llvm.assume(i1 %i.h)
  %i.i = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.g) #34 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit
  store ptr %i.i, ptr %i.a, align 8
  %i.k = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.k)
  br label %bb.c

bb.e:                                             ; preds = %bb.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ -1, %bb.c ], [ %2, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit ], [ -1, %bb.a ]
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.m
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_CskVyUMSjkkSy_10rayon_coreNtB5_13Configuration5build(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [96 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  call void @_RINvMNtCskVyUMSjkkSy_10rayon_core11thread_poolNtB3_10ThreadPool5buildNtNtB5_8registry12DefaultSpawnEB5_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = load i64, ptr %i.c, align 8, !range !15, !noundef !4 ; 3 uses
  %.not = icmp eq i64 %i.d, -1
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.d, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34
  %i.h = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #34 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorE3newBG_.exit, !prof !6

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #29
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorEBD_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #30
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.j

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorE3newBG_.exit: ; preds = %bb.b
  store i64 %i.d, ptr %i.h, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.f, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @7, ptr %i.m, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.n, align 8
  store ptr null, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorE3newBG_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs4_CskVyUMSjkkSy_10rayon_coreNtB5_20ThreadPoolBuildError14is_unsupported(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !4
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
