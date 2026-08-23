Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/coreutils.coreutils.f62e4db4eae9fc3c-cgu.0?download=true
inline.NumInlined: 9927
inline.NumDeleted: 3951
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RNCINvMs0_NtNtCs2vKOLqTMYjT_3std4sync4onceNtB8_4Once9call_onceNCINvNtCs3ewIIPtxFMv_10rayon_core8registry19set_global_registryNCINvB13_20init_global_registryNtB13_12DefaultSpawnE0E0E0Csl8pJiQOn4hA_9coreutils:bb.a
    i64 0, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i.i.i.i
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.br = load i8, ptr %.sroa.419.0.copyload.i.i.i.i, align 1, !alias.scope !32687, !noalias !32690, !noundef !12 ; 2 uses
  switch i8 %i.br, label %bb.s [
    i8 43, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i.i.i.i
    i8 45, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i.i.i.i
  ]

thread-pre-split.i.i54.i.i.i.i:                   ; preds = %bb.q
  %.pr.i.i55.i.i.i.i = load i8, ptr %.sroa.419.0.copyload.i.i.i.i, align 1, !alias.scope !32687, !noalias !32690
  br label %bb.s

bb.s:                                             ; preds = %thread-pre-split.i.i54.i.i.i.i, %bb.r
  %i.bs = phi i8 [ %.pr.i.i55.i.i.i.i, %thread-pre-split.i.i54.i.i.i.i ], [ %i.br, %bb.r ]
  %cond.i.i37.i.i.i.i = icmp eq i8 %i.bs, 43      ; 2 uses
  %i.bt = sext i1 %cond.i.i37.i.i.i.i to i64
  %.sroa.15.0.i.i38.i.i.i.i = add nsw i64 %.sroa.520.0.copyload.i.i.i.i, %i.bt ; 4 uses
  %.sroa.0.0.idx.i.i39.i.i.i.i = zext i1 %cond.i.i37.i.i.i.i to i64
  %.sroa.0.0.i.i40.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.419.0.copyload.i.i.i.i, i64 %.sroa.0.0.idx.i.i39.i.i.i.i ; 2 uses
  %i.bu = icmp samesign ult i64 %.sroa.15.0.i.i38.i.i.i.i, 17
  br i1 %i.bu, label %.preheader.i.i47.i.i.i.i, label %.preheader56.i.i41.i.i.i.i.preheader

.preheader.i.i47.i.i.i.i:                         ; preds = %bb.s
  %.not5366.i.i48.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i38.i.i.i.i, 0
  br i1 %.not5366.i.i48.i.i.i.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i.i.i.i, label %.lr.ph.i.i49.i.i.i.i

.preheader56.i.i41.i.i.i.i:                       ; preds = %bb.t
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i44.i.i.i.i251, i64 1
  %i.bw = add nsw i64 %.sroa.15.1.i.i43.i.i.i.i250, -1 ; 2 uses
  %.not52.i.not.i45.not.i.not.i.not.i.not.i.not = icmp eq i64 %i.bw, 0
  br i1 %.not52.i.not.i45.not.i.not.i.not.i.not.i.not, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i.i.i.i, label %.preheader56.i.i41.i.i.i.i.preheader

.preheader56.i.i41.i.i.i.i.preheader:             ; preds = %bb.s, %.preheader56.i.i41.i.i.i.i
  %.sroa.0.1.i.i44.i.i.i.i251 = phi ptr [ %i.bv, %.preheader56.i.i41.i.i.i.i ], [ %.sroa.0.0.i.i40.i.i.i.i, %bb.s ] ; 2 uses
  %.sroa.15.1.i.i43.i.i.i.i250 = phi i64 [ %i.bw, %.preheader56.i.i41.i.i.i.i ], [ %.sroa.15.0.i.i38.i.i.i.i, %bb.s ]
  %.sroa.042.0.i.i42.i.i.i.i249 = phi i64 [ %i.cf, %.preheader56.i.i41.i.i.i.i ], [ 0, %bb.s ]
  %i.bx = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i42.i.i.i.i249, i64 10) ; 2 uses
  %i.by = extractvalue { i64, i1 } %i.bx, 1
  br i1 %i.by, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i.i.i.i, label %bb.t, !prof !48

bb.t:                                             ; preds = %.preheader56.i.i41.i.i.i.i.preheader
  %i.bz = extractvalue { i64, i1 } %i.bx, 0       ; 2 uses
  %i.ca = load i8, ptr %.sroa.0.1.i.i44.i.i.i.i251, align 1, !alias.scope !32687, !noalias !32690, !noundef !12
  %i.cb = zext i8 %i.ca to i32
  %i.cc = add nsw i32 %i.cb, -48                  ; 2 uses
  %i.cd = icmp ugt i32 %i.cc, 9
  %i.ce = zext nneg i32 %i.cc to i64
  %i.cf = add i64 %i.bz, %i.ce                    ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %i.bz
  %or.cond.i46.i.i.i.i = select i1 %i.cd, i1 true, i1 %i.cg, !prof !328
  br i1 %or.cond.i46.i.i.i.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i.i.i.i, label %.preheader56.i.i41.i.i.i.i, !prof !328

.lr.ph.i.i49.i.i.i.i:                             ; preds = %.preheader.i.i47.i.i.i.i, %bb.u
  %.sroa.0.269.i.i50.i.i.i.i = phi ptr [ %i.cn, %bb.u ], [ %.sroa.0.0.i.i40.i.i.i.i, %.preheader.i.i47.i.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i51.i.i.i.i = phi i64 [ %i.cm, %bb.u ], [ %.sroa.15.0.i.i38.i.i.i.i, %.preheader.i.i47.i.i.i.i ]
  %.sroa.042.267.i.i52.i.i.i.i = phi i64 [ %i.cp, %bb.u ], [ 0, %.preheader.i.i47.i.i.i.i ]
  %i.ch = load i8, ptr %.sroa.0.269.i.i50.i.i.i.i, align 1, !alias.scope !32687, !noalias !32690, !noundef !12
  %i.ci = zext i8 %i.ch to i32
  %i.cj = add nsw i32 %i.ci, -48                  ; 2 uses
  %i.ck = icmp ugt i32 %i.cj, 9                   ; 3 uses
  br i1 %i.ck, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i49.i.i.i.i
  %i.cl = mul i64 %.sroa.042.267.i.i52.i.i.i.i, 10
  %i.cm = add nsw i64 %.sroa.15.268.i.i51.i.i.i.i, -1 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i50.i.i.i.i, i64 1
  %i.co = zext nneg i32 %i.cj to i64
  %i.cp = add i64 %i.cl, %i.co                    ; 2 uses
  %.not53.i.i53.i.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not53.i.i53.i.i.i.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i.i.i.i, label %.lr.ph.i.i49.i.i.i.i

_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i.i.i.i: ; preds = %bb.t, %.preheader56.i.i41.i.i.i.i.preheader, %.preheader56.i.i41.i.i.i.i, %bb.u, %.lr.ph.i.i49.i.i.i.i, %.preheader.i.i47.i.i.i.i, %bb.r, %bb.r, %bb.q
  %.sroa.101.0.i31.i.i.i.i = phi i64 [ undef, %bb.r ], [ 0, %.preheader.i.i47.i.i.i.i ], [ undef, %bb.q ], [ undef, %bb.r ], [ undef, %.lr.ph.i.i49.i.i.i.i ], [ %i.cp, %bb.u ], [ undef, %bb.t ], [ undef, %.preheader56.i.i41.i.i.i.i.preheader ], [ %i.cf, %.preheader56.i.i41.i.i.i.i ]
  %.sink.i.i32.i.i.i.i = phi i1 [ true, %bb.r ], [ false, %.preheader.i.i47.i.i.i.i ], [ true, %bb.q ], [ true, %bb.r ], [ %i.ck, %bb.u ], [ %i.ck, %.lr.ph.i.i49.i.i.i.i ], [ true, %bb.t ], [ true, %.preheader56.i.i41.i.i.i.i.preheader ], [ false, %.preheader56.i.i41.i.i.i.i ] ; 2 uses
  %i.cq = icmp eq i64 %.sroa.018.0.copyload.i.i.i.i, 0
  br i1 %i.cq, label %_RNCNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i.i.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.419.0.copyload.i.i.i.i, i64 noundef %.sroa.018.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !32694
  br label %_RNCNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RNCNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.v, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i.i.i.i
  %.sroa.3.0.i36.i.i.i.i = select i1 %.sink.i.i32.i.i.i.i, i64 undef, i64 %.sroa.101.0.i31.i.i.i.i ; 2 uses
  %i.cr = icmp eq i64 %.sroa.3.0.i36.i.i.i.i, 0
  %or.cond.not.i.i.i.i = select i1 %.sink.i.i32.i.i.i.i, i1 true, i1 %i.cr
  br i1 %or.cond.not.i.i.i.i, label %bb.w, label %_RNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCsl8pJiQOn4hA_9coreutils.exit.i.i.i

bb.w:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECsl8pJiQOn4hA_9coreutils.exit65.i.i.i.i, %_RNCNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  %i.cs = tail call { i64, ptr } @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions21available_parallelism() #45, !noalias !32661 ; 2 uses
  %i.ct = extractvalue { i64, ptr } %i.cs, 0
  %i.cu = extractvalue { i64, ptr } %i.cs, 1      ; 4 uses
  %i.cv = trunc nuw i64 %i.ct to i1
  %i.cw = ptrtoint ptr %i.cu to i64               ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cu) ]
  br i1 %i.cv, label %bb.x, label %_RNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCsl8pJiQOn4hA_9coreutils.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !32699
  %i.cx = and i64 %i.cw, 3
  switch i64 %i.cx, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i57.i.i.i.i
    i64 3, label %bb.y
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i57.i.i.i.i
    i64 1, label %bb.z
  ], !prof !91

bb.y:                                             ; preds = %bb.x
  %i.cy = icmp ult ptr %i.cu, inttoptr (i64 188978561024 to ptr)
  %i.cz = and i64 %i.cw, 1095216660480
  %i.da = icmp ne i64 %i.cz, 1095216660480
  tail call void @llvm.assume(i1 %i.cy)
  tail call void @llvm.assume(i1 %i.da)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i57.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.db = getelementptr i8, ptr %i.cu, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.db) ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.db, ptr %i.dc, align 8, !alias.scope !32702, !noalias !32699
  store i8 3, ptr %i.h, align 8, !alias.scope !32702, !noalias !32699
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dc) #45, !noalias !32705
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i57.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i57.i.i.i.i: ; preds = %bb.z, %bb.y, %bb.x, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !32699
  br label %_RNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCsl8pJiQOn4hA_9coreutils.exit.i.i.i

bb.aa:                                            ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32706)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val.i60.i.i.i.i = load i64, ptr %i.dd, align 8, !range !13, !alias.scope !32706, !noalias !32663, !noundef !12 ; 2 uses
  %i.de = icmp sgt i64 %.val.i60.i.i.i.i, 0
  br i1 %i.de, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.sink.split.i61.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECsl8pJiQOn4hA_9coreutils.exit65.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.sink.split.i61.i.i.i.i: ; preds = %bb.aa
  %i.df = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.val1.i63.i.i.i.i = load ptr, ptr %i.df, align 8, !alias.scope !32706, !noalias !32663, !nonnull !12, !noundef !12
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i63.i.i.i.i, i64 noundef %.val.i60.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !32709
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECsl8pJiQOn4hA_9coreutils.exit65.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECsl8pJiQOn4hA_9coreutils.exit65.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.sink.split.i61.i.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !32663
  br label %bb.w

_RNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i57.i.i.i.i, %bb.w, %_RNCNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, %bb.l, %bb.j, %bb.b
  %.sroa.0.1.i.i.i.i = phi i64 [ %.val.i.i.i, %bb.b ], [ %.sroa.101.0.i.i.i.i.i, %bb.j ], [ %.sroa.3.0.i36.i.i.i.i, %_RNCNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ %i.bg, %bb.l ], [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ], [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i57.i.i.i.i ], [ %i.cw, %bb.w ] ; 2 uses
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.1.i.i.i.i, i64 65535) ; 9 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.u, i64 89
  %i.dh = load i8, ptr %i.dg, align 1, !range !80, !alias.scope !32658, !noalias !32661, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !32710
  store i64 0, ptr %i.g, align 8, !alias.scope !32714, !noalias !32710
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !32714, !noalias !32710
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx.i.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !32714, !noalias !32710
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !32714, !noalias !32710
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 3 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !32714, !noalias !32710
  call void @llvm.experimental.noalias.scope.decl(metadata !32717)
  %.not.not.i.i.not.i.i.i = icmp eq i64 %.sroa.0.1.i.i.i.i, 0
  br i1 %.not.not.i.i.not.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.thread.i.i, label %_RNvXsj_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect6ExtendBF_E14extend_reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i

_RNvXsj_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect6ExtendBF_E14extend_reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i: ; preds = %_RNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g, i64 noundef 0, i64 noundef range(i64 1, 0) %..i.i.i.i, i64 noundef 8, i64 noundef 32) #45, !noalias !32720
  %i.di = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  %i.dj = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !32722, !noalias !32729, !noundef !12 ; 3 uses
  %i.dk = load i64, ptr %i.di, align 8, !range !63, !alias.scope !32722, !noalias !32729, !noundef !12
  %i.dl = sub i64 %i.dk, %i.dj
  %i.dm = icmp ugt i64 %..i.i.i.i, %i.dl
  br i1 %i.dm, label %bb.ab, label %.lr.ph.i.i.i.i.i.i.i.i, !prof !48

bb.ab:                                            ; preds = %_RNvXsj_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect6ExtendBF_E14extend_reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.di, i64 noundef %i.dj, i64 noundef range(i64 1, 0) %..i.i.i.i, i64 noundef 8, i64 noundef 16) #45, !noalias !32720
  %.promoted9.i.i.i.i.pre.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !32730, !noalias !32737
  br label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.thread.i.i:             ; preds = %_RNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !32741)
  call void @llvm.experimental.noalias.scope.decl(metadata !32742)
  call void @llvm.experimental.noalias.scope.decl(metadata !32743)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !32710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !32744
  store i64 0, ptr %i.e, align 8, !alias.scope !32747, !noalias !32744
  %.sroa.42.0..sroa_idx.i.i41266.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i41266.i.i.i, align 8, !alias.scope !32747, !noalias !32744
  %.sroa.53.0..sroa_idx.i.i42267.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx.i.i42267.i.i.i, i8 0, i64 16, i1 false), !alias.scope !32747, !noalias !32744
  call void @llvm.experimental.noalias.scope.decl(metadata !32750)
  call void @llvm.experimental.noalias.scope.decl(metadata !32753)
  call void @llvm.experimental.noalias.scope.decl(metadata !32756)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !32663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !32744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !32663
  br label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque7StealerNtNtB17_3job6JobRefEENvMs5_B15_B13_3newEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.ab, %_RNvXsj_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect6ExtendBF_E14extend_reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  %.promoted9.i.i.i.i.i.i.i.i = phi i64 [ %.promoted9.i.i.i.i.pre.i.i.i.i, %bb.ab ], [ %i.dj, %_RNvXsj_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect6ExtendBF_E14extend_reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ] ; 2 uses
  %i.dn = load ptr, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !32730, !noalias !32737, !nonnull !12 ; 3 uses
  %i.do = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !32730, !noalias !32737, !nonnull !12 ; 4 uses
  %.promoted.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !32730, !noalias !32737
  %i.dp = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.ds = trunc nuw i8 %i.dh to i1
  br label %bb.ac

bb.ac:                                            ; preds = %_RNCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB8_8Registry3newNtB8_12DefaultSpawnE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.dt = phi i64 [ %.promoted9.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.eo, %_RNCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB8_8Registry3newNtB8_12DefaultSpawnE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 6 uses
  %i.du = phi i64 [ %.promoted.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ek, %_RNCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB8_8Registry3newNtB8_12DefaultSpawnE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 3 uses
  %.sroa.0.08.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.dv, %_RNCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB8_8Registry3newNtB8_12DefaultSpawnE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 2 uses
  %i.dv = add i64 %.sroa.0.08.i.i.i.i.i.i.i.i, 1  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !32710
  br i1 %i.ds, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !32759), !noalias !32762
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !32763
  %i.dw = call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1024, i64 noundef range(i64 1, 9) 8) #45, !noalias !32763 ; 3 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.ae, label %_RINvXsb_NtNtCs7tKScEop1B6_5alloc5boxed4iterINtB8_3BoxSINtNtNtCs6JMX4GRUq9U_4core3mem12maybe_uninit11MaybeUninitNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEEINtNtNtNtBX_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB2z_8adapters3map3MapINtNtNtBX_3ops5range5RangejENCNvMs_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB4r_6BufferB1L_E5alloc0EECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 1024) #52, !noalias !32776
  unreachable

_RINvXsb_NtNtCs7tKScEop1B6_5alloc5boxed4iterINtB8_3BoxSINtNtNtCs6JMX4GRUq9U_4core3mem12maybe_uninit11MaybeUninitNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEEINtNtNtNtBX_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB2z_8adapters3map3MapINtNtNtBX_3ops5range5RangejENCNvMs_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB4r_6BufferB1L_E5alloc0EECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i: ; preds = %bb.ad
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !32777
  %i.dy = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !32777 ; 4 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.af, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i.i, !prof !28

bb.af:                                            ; preds = %_RINvXsb_NtNtCs7tKScEop1B6_5alloc5boxed4iterINtB8_3BoxSINtNtNtCs6JMX4GRUq9U_4core3mem12maybe_uninit11MaybeUninitNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEEINtNtNtNtBX_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB2z_8adapters3map3MapINtNtNtBX_3ops5range5RangejENCNvMs_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB4r_6BufferB1L_E5alloc0EECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #52, !noalias !32777
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i.i: ; preds = %_RINvXsb_NtNtCs7tKScEop1B6_5alloc5boxed4iterINtB8_3BoxSINtNtNtCs6JMX4GRUq9U_4core3mem12maybe_uninit11MaybeUninitNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEEINtNtNtNtBX_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB2z_8adapters3map3MapINtNtNtBX_3ops5range5RangejENCNvMs_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB4r_6BufferB1L_E5alloc0EECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  store ptr %i.dw, ptr %i.dy, align 8, !noalias !32777
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i64 64, ptr %i.ea, align 8, !noalias !32777
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !32778
  %i.eb = call noundef align 128 dereferenceable_or_null(384) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 384, i64 noundef range(i64 1, -9223372036854775807) 128) #45, !noalias !32778 ; 7 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.ag, label %_RNvMs4_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE8new_lifoCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, !prof !28

bb.ag:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 384) #52, !noalias !32778
  unreachable

_RNvMs4_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE8new_lifoCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i: ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i.i
  %i.ed = ptrtoint ptr %i.dy to i64
  store i64 1, ptr %i.eb, align 128, !noalias !32777
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !32777
  %.sroa.515.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 128
  store i64 %i.ed, ptr %.sroa.515.0..sroa_idx.i.i.i.i.i.i, align 128, !noalias !32777
  %.sroa.616.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(16) %.sroa.616.0..sroa_idx.i.i.i.i.i.i, i8 0, i64 16, i1 false), !noalias !32777
  store ptr %i.eb, ptr %i.f, align 8, !alias.scope !32759, !noalias !32781
  store ptr %i.dw, ptr %i.dp, align 8, !alias.scope !32759, !noalias !32781
  store i64 64, ptr %i.dq, align 8, !alias.scope !32759, !noalias !32781
  store i8 1, ptr %i.dr, align 8, !alias.scope !32759, !noalias !32781
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ac
  call fastcc void @_RNvMs4_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE8new_fifoCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.f) #45, !noalias !32782
  %.pre.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !32781
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_RNvMs4_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE8new_lifoCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i
  %i.ee = phi ptr [ %.pre.i.i.i.i.i, %bb.ah ], [ %i.eb, %_RNvMs4_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE8new_lifoCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ] ; 3 uses
  %i.ef = atomicrmw add ptr %i.ee, i64 1 monotonic, align 8, !noalias !32782
  %i.eg = icmp slt i64 %i.ef, 0
  br i1 %i.eg, label %bb.aj, label %_RNCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB8_8Registry3newNtB8_12DefaultSpawnE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.trap(), !noalias !32762
  unreachable

_RNCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB8_8Registry3newNtB8_12DefaultSpawnE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.ai
  %i.eh = load i8, ptr %i.dr, align 8, !range !80, !noalias !32781, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !32783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !32710
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ee) ]
  %i.ei = icmp ult i64 %i.du, 288230376151711744
  call void @llvm.assume(i1 %i.ei)
  %i.ej = getelementptr inbounds nuw [32 x i8], ptr %i.dn, i64 %i.du
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ej, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.i.i.i.i, i64 32, i1 false), !noalias !32784
  %i.ek = add nuw nsw i64 %i.du, 1                ; 3 uses
  %i.el = icmp ult i64 %i.dt, 576460752303423488
  call void @llvm.assume(i1 %i.el)
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.dt ; 2 uses
  store ptr %i.ee, ptr %i.em, align 8, !noalias !32785
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i8 %i.eh, ptr %i.en, align 8, !noalias !32785
  %i.eo = add nuw nsw i64 %i.dt, 1                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i.i.i.i)
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.dv, %..i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3q_7StealerB4a_EINtNtCs7tKScEop1B6_5alloc3vec3VecB3n_EIB4P_B4u_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %bb.ac

_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3q_7StealerB4a_EINtNtCs7tKScEop1B6_5alloc3vec3VecB3n_EIB4P_B4u_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %_RNCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB8_8Registry3newNtB8_12DefaultSpawnE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  %.sroa.0.0.copyload.pre.i.i.i = load i64, ptr %i.g, align 8, !noalias !32795 ; 2 uses
  %.sroa.6.0.copyload.pre.i.i.i = load i64, ptr %i.di, align 8, !noalias !32795 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !32710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !32744
  store i64 0, ptr %i.e, align 8, !alias.scope !32747, !noalias !32744
  %.sroa.42.0..sroa_idx.i.i41.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i41.i.i.i, align 8, !alias.scope !32747, !noalias !32744
  %.sroa.53.0..sroa_idx.i.i42.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i43.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx.i.i42.i.i.i, i8 0, i64 16, i1 false), !alias.scope !32747, !noalias !32744
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i.i43.i.i.i, align 8, !alias.scope !32747, !noalias !32744
  %.sroa.3.0..sroa_idx.i.i44.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 3 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i44.i.i.i, align 8, !alias.scope !32747, !noalias !32744
  call void @llvm.experimental.noalias.scope.decl(metadata !32796)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef 0, i64 noundef range(i64 1, 0) %..i.i.i.i, i64 noundef 8, i64 noundef 32) #45, !noalias !32799
  %i.ep = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %i.eq = load i64, ptr %.sroa.3.0..sroa_idx.i.i44.i.i.i, align 8, !alias.scope !32800, !noalias !32744, !noundef !12 ; 3 uses
  %i.er = load i64, ptr %i.ep, align 8, !range !63, !alias.scope !32800, !noalias !32744, !noundef !12
  %i.es = sub i64 %i.er, %i.eq
  %i.et = icmp ugt i64 %..i.i.i.i, %i.es
  br i1 %i.et, label %bb.ak, label %.lr.ph.i.i.i.i.i46.i.i.i, !prof !48

bb.ak:                                            ; preds = %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3q_7StealerB4a_EINtNtCs7tKScEop1B6_5alloc3vec3VecB3n_EIB4P_B4u_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ep, i64 noundef %i.eq, i64 noundef range(i64 1, 0) %..i.i.i.i, i64 noundef 8, i64 noundef 16) #45, !noalias !32799
  %.promoted8.i.i.i.pre.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i44.i.i.i, align 8, !alias.scope !32807, !noalias !32744
  br label %.lr.ph.i.i.i.i.i46.i.i.i

.lr.ph.i.i.i.i.i46.i.i.i:                         ; preds = %bb.ak, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3q_7StealerB4a_EINtNtCs7tKScEop1B6_5alloc3vec3VecB3n_EIB4P_B4u_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  %.sroa.3.0..sroa_idx.i.promoted.i.i.i.i = phi i64 [ %.promoted8.i.i.i.pre.i.i.i.i.i, %bb.ak ], [ %i.eq, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3q_7StealerB4a_EINtNtCs7tKScEop1B6_5alloc3vec3VecB3n_EIB4P_B4u_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ev = load ptr, ptr %.sroa.42.0..sroa_idx.i.i41.i.i.i, align 8, !alias.scope !32807, !noalias !32744, !nonnull !12
  %i.ew = load ptr, ptr %.sroa.2.0..sroa_idx.i.i43.i.i.i, align 8, !alias.scope !32807, !noalias !32744 ; 3 uses
  %.promoted.i.i.i.i.i47.i.i.i = load i64, ptr %.sroa.53.0..sroa_idx.i.i42.i.i.i, align 8, !alias.scope !32807, !noalias !32744
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32808
  call fastcc void @_RNvMs4_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE8new_fifoCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.d) #45, !noalias !32811
  %i.ex = load ptr, ptr %i.d, align 8, !noalias !32808, !nonnull !12, !noundef !12 ; 2 uses
  %i.ey = atomicrmw add ptr %i.ex, i64 1 monotonic, align 8, !noalias !32811
  %i.ez = icmp slt i64 %i.ey, 0
  br i1 %i.ez, label %._crit_edge.i.i.i.i, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjTINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCs7tKScEop1B6_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjTINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCs7tKScEop1B6_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32808
  call fastcc void @_RNvMs4_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE8new_fifoCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.d) #45, !noalias !32811
  %i.fa = load ptr, ptr %i.d, align 8, !noalias !32808, !nonnull !12, !noundef !12 ; 2 uses
  %i.fb = atomicrmw add ptr %i.fa, i64 1 monotonic, align 8, !noalias !32811
  %i.fc = icmp slt i64 %i.fb, 0
  br i1 %i.fc, label %._crit_edge.i.i.i.i, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjTINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCs7tKScEop1B6_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.al, %.lr.ph.i.i.i.i.i46.i.i.i
  call void @llvm.trap()
  unreachable

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjTINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCs7tKScEop1B6_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i46.i.i.i, %bb.al
  %i.fd = phi ptr [ %i.fa, %bb.al ], [ %i.ex, %.lr.ph.i.i.i.i.i46.i.i.i ]
  %.sroa.0.07.i.i.i.i4.i.i.i.i = phi i64 [ %i.fg, %bb.al ], [ 0, %.lr.ph.i.i.i.i.i46.i.i.i ]
  %i.fe = phi i64 [ %i.fk, %bb.al ], [ %.promoted.i.i.i.i.i47.i.i.i, %.lr.ph.i.i.i.i.i46.i.i.i ] ; 3 uses
  %i.ff = phi i64 [ %i.fo, %bb.al ], [ %.sroa.3.0..sroa_idx.i.promoted.i.i.i.i, %.lr.ph.i.i.i.i.i46.i.i.i ] ; 3 uses
  %i.fg = add nuw i64 %.sroa.0.07.i.i.i.i4.i.i.i.i, 1 ; 2 uses
  %i.fh = load i8, ptr %i.eu, align 8, !range !80, !noalias !32808, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !32812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32808
  %i.fi = icmp ult i64 %i.fe, 288230376151711744
  call void @llvm.assume(i1 %i.fi)
  %i.fj = getelementptr inbounds nuw [32 x i8], ptr %i.ev, i64 %i.fe
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !32813
  %i.fk = add nuw nsw i64 %i.fe, 1                ; 2 uses
  %i.fl = icmp ult i64 %i.ff, 576460752303423488
  call void @llvm.assume(i1 %i.fl)
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.ew, i64 %i.ff ; 2 uses
  store ptr %i.fd, ptr %i.fm, align 8, !noalias !32818
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i8 %i.fh, ptr %i.fn, align 8, !noalias !32818
  %i.fo = add nuw nsw i64 %i.ff, 1                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i.i)
  %exitcond.not.i.i.i.i.i48.i.i.i = icmp eq i64 %i.fg, %..i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i48.i.i.i, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3s_7StealerB4c_EINtNtCs7tKScEop1B6_5alloc3vec3VecB3p_EIB4R_B4w_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %bb.al

_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3s_7StealerB4c_EINtNtCs7tKScEop1B6_5alloc3vec3VecB3p_EIB4R_B4w_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjTINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCs7tKScEop1B6_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i
  store i64 %i.fk, ptr %.sroa.53.0..sroa_idx.i.i42.i.i.i, align 8, !noalias !32744
  %.sroa.469.0.copyload.pre.i.i.i = load i64, ptr %i.ep, align 8, !noalias !32663 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !32663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !32744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !32663
  %i.fp = icmp ne i64 %i.dt, 576460752303423487
  call void @llvm.assume(i1 %i.fp)
  %i.fq = mul i64 %i.eo, 48                       ; 3 uses
  %or.cond.i.i.i.i.i.i = icmp samesign ugt i64 %i.dt, 192153584101141161
  br i1 %or.cond.i.i.i.i.i.i, label %bb.ao, label %bb.am, !prof !1397

bb.am:                                            ; preds = %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3s_7StealerB4c_EINtNtCs7tKScEop1B6_5alloc3vec3VecB3p_EIB4R_B4w_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  %i.fr = icmp eq i64 %i.fq, 0
  br i1 %i.fr, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !32826
  %i.fs = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.fq, i64 noundef range(i64 1, 9) 8) #45, !noalias !32826 ; 2 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %bb.ao, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.an, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3s_7StealerB4c_EINtNtCs7tKScEop1B6_5alloc3vec3VecB3p_EIB4R_B4w_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.an ], [ 0, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3s_7StealerB4c_EINtNtCs7tKScEop1B6_5alloc3vec3VecB3p_EIB4R_B4w_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.fq) #52, !noalias !32832
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i: ; preds = %bb.an, %bb.am
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.am ], [ %i.fs, %bb.an ] ; 5 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %bb.am ], [ %i.eo, %bb.an ] ; 3 uses
  %i.fu = icmp samesign ult i64 %i.dt, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %i.fu)
  %2 = add i64 %.promoted9.i.i.i.i.i.i.i.i, %.sroa.0.08.i.i.i.i.i.i.i.i ; 2 uses
  %3 = and i64 %2, 1152921504606846975            ; 2 uses
  %i.fv = add nuw nsw i64 %3, 1                   ; 2 uses
  %i.fw = icmp eq i64 %3, 0
  br i1 %i.fw, label %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.new

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.new: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  %unroll_iter = and i64 %i.fv, 2305843009213693950
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.new
  %i.fx = phi i64 [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.new ], [ %i.go, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.fy = phi ptr [ %i.do, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.new ], [ %i.gj, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.fz = load ptr, ptr %i.fy, align 8, !noalias !32833, !nonnull !12, !noundef !12
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gb = load i8, ptr %i.ga, align 8, !range !80, !noalias !32833, !noundef !12
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.gd = getelementptr inbounds nuw [48 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %i.fx ; 5 uses
  store ptr %i.fz, ptr %i.gd, align 8, !noalias !32849
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i8 %i.gb, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !32849
  %i.ge = getelementptr i8, ptr %i.gd, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.ge, i8 0, i64 14, i1 false), !noalias !32856
  %i.gf = getelementptr i8, ptr %i.gd, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.gf, i8 0, i64 10, i1 false), !noalias !32856
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gd, i64 44
  store i32 0, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !32849
  %i.gg = load ptr, ptr %i.gc, align 8, !noalias !32833, !nonnull !12, !noundef !12
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.gi = load i8, ptr %i.gh, align 8, !range !80, !noalias !32833, !noundef !12
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fy, i64 32 ; 2 uses
  %i.gk = getelementptr inbounds nuw [48 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %i.fx ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 48
  store ptr %i.gg, ptr %i.gl, align 8, !noalias !32849
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.gk, i64 56
  store i8 %i.gi, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !32849
  %i.gm = getelementptr i8, ptr %i.gk, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.gm, i8 0, i64 14, i1 false), !noalias !32856
  %i.gn = getelementptr i8, ptr %i.gk, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.gn, i8 0, i64 10, i1 false), !noalias !32856
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.gk, i64 92
  store i32 0, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1, align 4, !noalias !32849
  %i.go = add nuw nsw i64 %i.fx, 2                ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.i.i.i.i.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.unr-lcssa:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.gp = and i64 %2, 1
  %lcmp.mod.not.not = icmp eq i64 %i.gp, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader, label %._crit_edge.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader:          ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.unr-lcssa, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  %.epil.init = phi i64 [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ], [ %i.go, %._crit_edge.i.i.i.i.i.i.i.i.i.unr-lcssa ] ; 2 uses
  %.epil.init312 = phi ptr [ %i.do, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ], [ %i.gj, %._crit_edge.i.i.i.i.i.i.i.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod314 = trunc i64 %i.fv to i1
  call void @llvm.assume(i1 %lcmp.mod314)
  %i.gq = load ptr, ptr %.epil.init312, align 8, !noalias !32833, !nonnull !12, !noundef !12
  %i.gr = getelementptr inbounds nuw i8, ptr %.epil.init312, i64 8
  %i.gs = load i8, ptr %i.gr, align 8, !range !80, !noalias !32833, !noundef !12
  %i.gt = getelementptr inbounds nuw [48 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %.epil.init ; 5 uses
  store ptr %i.gq, ptr %i.gt, align 8, !noalias !32849
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  store i8 %i.gs, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !32849
  %i.gu = getelementptr i8, ptr %i.gt, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.gu, i8 0, i64 14, i1 false), !noalias !32856
  %i.gv = getelementptr i8, ptr %i.gt, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.gv, i8 0, i64 10, i1 false), !noalias !32856
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.gt, i64 44
  store i32 0, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil, align 4, !noalias !32849
  %i.gw = add nuw nsw i64 %.epil.init, 1
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader
  %.lcssa289 = phi i64 [ %i.go, %._crit_edge.i.i.i.i.i.i.i.i.i.unr-lcssa ], [ %i.gw, %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.gx = icmp eq i64 %.sroa.6.0.copyload.pre.i.i.i, 0
  br i1 %i.gx, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque7StealerNtNtB17_3job6JobRefEENvMs5_B15_B13_3newEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.gy = shl nuw i64 %.sroa.6.0.copyload.pre.i.i.i, 4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.do, i64 noundef %i.gy, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !32833
  br label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque7StealerNtNtB17_3job6JobRefEENvMs5_B15_B13_3newEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i.i.i

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque7StealerNtNtB17_3job6JobRefEENvMs5_B15_B13_3newEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %bb.ap, %._crit_edge.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.thread.i.i
  %.sroa.42.0.i.i.i.i.i.i80.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.i.thread.i.i ], [ %.lcssa289, %bb.ap ], [ %.lcssa289, %._crit_edge.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.copyload280.i12385179.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.i.thread.i.i ], [ %.sroa.0.0.copyload.pre.i.i.i, %bb.ap ], [ %.sroa.0.0.copyload.pre.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ]
  %.sroa.4.0.copyload278.i13375278.i.i = phi ptr [ inttoptr (i64 8 to ptr), %._crit_edge.i.i.i.i.i.i.i.thread.i.i ], [ %i.dn, %bb.ap ], [ %i.dn, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.5.0.copyload276.i14365377.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.i.thread.i.i ], [ %i.ek, %bb.ap ], [ %i.ek, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.671.0.copyload.i18325676.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.i.thread.i.i ], [ %i.fo, %bb.ap ], [ %i.fo, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.570.0.copyload.i19315775.i.i = phi ptr [ inttoptr (i64 8 to ptr), %._crit_edge.i.i.i.i.i.i.i.thread.i.i ], [ %i.ew, %bb.ap ], [ %i.ew, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.469.0.copyload.i20305874.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.i.thread.i.i ], [ %.sroa.469.0.copyload.pre.i.i.i, %bb.ap ], [ %.sroa.469.0.copyload.pre.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ]
  %.sroa.10.0.i.i.i5973.i.i = phi ptr [ inttoptr (i64 8 to ptr), %._crit_edge.i.i.i.i.i.i.i.thread.i.i ], [ %.sroa.10.0.i.i.i.i.i, %bb.ap ], [ %.sroa.10.0.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ]
  %.sroa.4.0.i.i.i6072.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.i.thread.i.i ], [ %.sroa.4.0.i.i.i.i.i, %bb.ap ], [ %.sroa.4.0.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !32663
  call void @_RNvMNtCs3ewIIPtxFMv_10rayon_core5sleepNtB2_5Sleep3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.s, i64 noundef %..i.i.i.i) #45, !noalias !32661
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !32661
  %i.gz = call noundef align 8 dereferenceable_or_null(1520) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef 1520, i64 noundef 8) #45, !noalias !32661 ; 3 uses
  %i.ha = icmp eq ptr %i.gz, null
  br i1 %i.ha, label %bb.aq, label %_RNvMsc_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_5BlockNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE3newCsl8pJiQOn4hA_9coreutils.exit.i.i.i, !prof !48

bb.aq:                                            ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque7StealerNtNtB17_3job6JobRefEENvMs5_B15_B13_3newEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1520) #52, !noalias !32661
  unreachable

_RNvMsc_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_5BlockNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE3newCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque7StealerNtNtB17_3job6JobRefEENvMs5_B15_B13_3newEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.532.i.i.i)
  %.sroa.532.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.532.i.i.i, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.532.8..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !32663
  %i.hb = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.hc = load <2 x ptr>, ptr %i.hb, align 8, !alias.scope !32658, !noalias !32661
  store ptr null, ptr %i.hb, align 8, !alias.scope !32658, !noalias !32661
  %i.hd = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  %i.he = load <2 x ptr>, ptr %i.hd, align 8, !alias.scope !32658, !noalias !32661
  store ptr null, ptr %i.hd, align 8, !alias.scope !32658, !noalias !32661
  %i.hf = getelementptr inbounds nuw i8, ptr %i.u, i64 72 ; 2 uses
  %i.hg = load <2 x ptr>, ptr %i.hf, align 8, !alias.scope !32658, !noalias !32661
  store ptr null, ptr %i.hf, align 8, !alias.scope !32658, !noalias !32661
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.19.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !32663
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %.sroa.11.i.i.i, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.532.i.i.i, i64 27, i1 false), !noalias !32663
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.532.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !32663
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !32857
  %i.hh = call noundef align 128 dereferenceable_or_null(640) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 640, i64 noundef range(i64 1, -9223372036854775807) 128) #45, !noalias !32857 ; 19 uses
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %bb.ar, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i, !prof !28

bb.ar:                                            ; preds = %_RNvMsc_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_5BlockNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE3newCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 640) #52, !noalias !32857
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i: ; preds = %_RNvMsc_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_5BlockNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE3newCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  store i64 1, ptr %i.hh, align 128, !noalias !32661
  %.sroa.496.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store i64 1, ptr %.sroa.496.0..sroa_idx.i.i.i, align 8, !noalias !32661
  %.sroa.598.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 128
  store i64 0, ptr %.sroa.598.0..sroa_idx.i.i.i, align 128, !noalias !32661
  %.sroa.699.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 136
  store ptr %i.gz, ptr %.sroa.699.0..sroa_idx.i.i.i, align 8, !noalias !32661
  %.sroa.7101.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 256
  store i64 0, ptr %.sroa.7101.0..sroa_idx.i.i.i, align 128, !noalias !32661
  %.sroa.8102.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 264
  store ptr %i.gz, ptr %.sroa.8102.0..sroa_idx.i.i.i, align 8, !noalias !32661
  %.sroa.9104.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 384
  store i32 0, ptr %.sroa.9104.0..sroa_idx.i.i.i, align 128, !noalias !32661
  %.sroa.10.0..sroa_idx105.i.i.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 388
  store i8 0, ptr %.sroa.10.0..sroa_idx105.i.i.i, align 4, !noalias !32661
  %.sroa.11.0..sroa_idx106.i.i.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 389
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %.sroa.11.0..sroa_idx106.i.i.i, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.11.i.i.i, i64 27, i1 false), !noalias !32661
  %.sroa.12107.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 416
  store <2 x ptr> %i.hc, ptr %.sroa.12107.0..sroa_idx.i.i.i, align 32, !noalias !32661
  %.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 432
  store <2 x ptr> %i.he, ptr %.sroa.14.0..sroa_idx.i.i.i, align 16, !noalias !32661
  %.sroa.16.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 448
  store <2 x ptr> %i.hg, ptr %.sroa.16.0..sroa_idx.i.i.i, align 64, !noalias !32661
  %.sroa.18.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 464
  store i64 1, ptr %.sroa.18.0..sroa_idx.i.i.i, align 16, !noalias !32661
  %.sroa.19.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.19.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.19.i.i.i, i64 32, i1 false), !noalias !32661
  %.sroa.20.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 504
  store i64 %.sroa.4.0.i.i.i6072.i.i, ptr %.sroa.20.0..sroa_idx.i.i.i, align 8, !noalias !32661
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 512
  store ptr %.sroa.10.0.i.i.i5973.i.i, ptr %.sroa.21.0..sroa_idx.i.i.i, align 128, !noalias !32661
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 520
  store i64 %.sroa.42.0.i.i.i.i.i.i80.i.i, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !noalias !32661
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i.i.i)
  store ptr %i.hh, ptr %i.t, align 8, !noalias !32663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !32663
  store ptr %i.t, ptr %i.r, align 8, !noalias !32663
  %i.hj = icmp ult i64 %.sroa.5.0.copyload276.i14365377.i.i, 288230376151711744
  call void @llvm.assume(i1 %i.hj)
  %.idx180.i.i.i = shl nuw nsw i64 %.sroa.5.0.copyload276.i14365377.i.i, 5
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload278.i13375278.i.i, i64 %.idx180.i.i.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.570.0.copyload.i19315775.i.i) ]
  %i.hl = icmp samesign ult i64 %.sroa.671.0.copyload.i18325676.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.hl)
  %i.hm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.570.0.copyload.i19315775.i.i, i64 %.sroa.671.0.copyload.i18325676.i.i ; 2 uses
  %.sroa.08.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !32663
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.sroa.6.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !noalias !32663
  store ptr %.sroa.4.0.copyload278.i13375278.i.i, ptr %i.q, align 8, !noalias !32663
  %.sroa.08.sroa.0.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %.sroa.08.sroa.0.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.0.0.copyload280.i12385179.i.i, ptr %.sroa.08.sroa.0.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !32663
  %.sroa.08.sroa.0.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.hk, ptr %.sroa.08.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !32663
  %.sroa.08.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %.sroa.570.0.copyload.i19315775.i.i, ptr %.sroa.08.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !32663
  %.sroa.08.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 4 uses
  %.sroa.08.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i64 %.sroa.469.0.copyload.i20305874.i.i, ptr %.sroa.08.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !32663
  %.sroa.08.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store ptr %i.hm, ptr %.sroa.08.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !32663
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32860
  %i.hn = icmp eq i64 %.sroa.5.0.copyload276.i14365377.i.i, 0
  br i1 %i.hn, label %.loopexit.i.i.i, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.lr.ph.i.i.i

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.lr.ph.i.i.i: ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i
  %.sroa.518.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 25
  %.sroa.417.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ho = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.hp = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.hq = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 3 uses
  %.sroa.693.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %.sroa.794.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 81
  %i.hs = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.hu = getelementptr inbounds nuw i8, ptr %i.p, i64 88 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.hw = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.hx = getelementptr inbounds nuw i8, ptr %i.u, i64 90
  %i.hy = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3ewIIPtxFMv_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  br label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i: ; preds = %.backedge.i.i.i, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.lr.ph.i.i.i
  %i.hz = phi ptr [ %.sroa.4.0.copyload278.i13375278.i.i, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.lr.ph.i.i.i ], [ %i.id, %.backedge.i.i.i ] ; 5 uses
  %i.ia = phi ptr [ %.sroa.570.0.copyload.i19315775.i.i, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.lr.ph.i.i.i ], [ %i.ii, %.backedge.i.i.i ] ; 6 uses
  %i.ib = phi i64 [ 0, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.lr.ph.i.i.i ], [ %.be.i.i.i, %.backedge.i.i.i ] ; 4 uses
  %i.ic = phi i64 [ 0, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.lr.ph.i.i.i ], [ %i.im, %.backedge.i.i.i ] ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 32 ; 7 uses
  %.sroa.5.0..sroa_idx8.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %.sroa.5.0.copyload9.i.i.i.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx8.i.i.i.i.i.i, align 8, !noalias !32870 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %.sroa.5.0.copyload9.i.i.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.as

bb.as:                                            ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  %.sroa.7.0..sroa_idx10.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hz, i64 25 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.hz, i64 24, i1 false), !noalias !32876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.518.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx10.i.i.i.i.i.i, i64 7, i1 false), !noalias !32876
  store i8 %.sroa.5.0.copyload9.i.i.i.i.i.i, ptr %.sroa.417.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !32877
  %i.ie = icmp eq ptr %i.ia, %i.hm
  br i1 %i.ie, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  store ptr %i.id, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !32663
  store ptr %i.ia, ptr %.sroa.08.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !32663
  store i64 %i.ic, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !32663
  call void @llvm.experimental.noalias.scope.decl(metadata !32878)
  call void @llvm.experimental.noalias.scope.decl(metadata !32881)
  call void @llvm.experimental.noalias.scope.decl(metadata !32884)
  %i.if = load ptr, ptr %i.c, align 8, !alias.scope !32887, !noalias !32877, !nonnull !12, !noundef !12
  %i.ig = atomicrmw sub ptr %i.if, i64 1 release, align 8, !noalias !32888
  %i.ih = icmp eq i64 %i.ig, 1
  br i1 %i.ih, label %bb.au, label %bb.bx

end_hunk_0
