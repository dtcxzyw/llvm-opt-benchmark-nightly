Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.05?download=true
inline.NumInlined: 9267
inline.NumDeleted: 4067
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs0_NtNtNtCslt8cbK4E2O5_12futures_util6stream10try_stream11try_collectINtB5_10TryCollectINtNtNtB9_6stream8buffered8BufferedINtNtB9_4iter4IterINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB2j_INtNtNtB2r_3ops5range5RangejENCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_ranges_0ENCINvMs4_B3I_NtNtB3I_5inner17PolarsObjectStore28build_buffered_ranges_streamB36_E0EEEINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEENtNtNtB2r_6future6future6Future4pollCs2g09Ig8GZd6_13polars_stream:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !92825
  store i64 19, ptr %0, align 8, !dbg !92826
  br label %bb.h, !dbg !92827

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !92825
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !92828
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !92829
  store i64 0, ptr %i.c, align 8, !dbg !92830
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !92830
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.457.0..sroa_idx, align 8, !dbg !92830
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !92830
  store i64 0, ptr %.sroa.558.0..sroa_idx, align 8, !dbg !92830
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.12.sroa.12), !dbg !92827
  store i64 18, ptr %0, align 8, !dbg !92828
  br label %bb.e, !dbg !92831

bb.e:                                             ; preds = %bb.h, %bb.d
  ret void, !dbg !92831

bb.f:                                             ; preds = %bb.b
  %.sroa.7.0.copyload = load i64, ptr %i.d, align 8, !dbg !92832
  %.sroa.8.sroa.0.0.copyload = load ptr, ptr %.sroa.740.0..sroa_idx, align 8, !dbg !92832
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !92832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.sroa.12.sroa.12, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx.sroa_idx, i64 16, i1 false), !dbg !92832
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !92832
  %.sroa.753.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !92833
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.753.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, i64 32, i1 false), !dbg !92832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !92825
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !92833
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.652.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.sroa.12.sroa.12, i64 16, i1 false), !dbg !92825
  store i64 %i.e, ptr %0, align 8, !dbg !92833
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !92833
  store i64 %.sroa.7.0.copyload, ptr %.sroa.450.0..sroa_idx, align 8, !dbg !92833
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !92833
  store ptr %.sroa.8.sroa.0.0.copyload, ptr %.sroa.551.0..sroa_idx, align 8, !dbg !92833
  br label %bb.h, !dbg !92834

bb.g:                                             ; preds = %bb.b
  %.sroa.039.0.copyload = load ptr, ptr %i.d, align 8, !dbg !92835
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.sroa.12.sroa.12, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.740.0..sroa_idx, i64 16, i1 false), !dbg !92835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !92825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !92836, !noalias !92816
  store ptr %.sroa.039.0.copyload, ptr %i.a, align 8, !dbg !92837, !alias.scope !92817, !noalias !92818
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.355.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.sroa.12.sroa.12, i64 16, i1 false), !dbg !92837
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEINtB4_10SpecExtendBT_INtNtCscgRAwXFJnXP_4core6option8IntoIterBT_EE11spec_extendCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !92838, !noalias !92819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !92839, !noalias !92816
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.12.sroa.12), !dbg !92827
  br label %bb.b, !dbg !92821

bb.h:                                             ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.12.sroa.12), !dbg !92827
  br label %bb.e, !dbg !92831
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1_NtNtCsh8eZTKRCwoO_3std4sync9lazy_lockINtB5_8LazyLockINtNtNtB7_6poison5mutex5MutexINtNtCs2mZqlW55729_12polars_utils5cache8LruCacheNtNtB1t_6pl_str10PlSmallStrB2a_EEENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCs2g09Ig8GZd6_13polars_stream() unnamed_addr #5 personality ptr @rust_eh_personality !dbg !1861 !guid !92844 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCslpwjCj2YNBy_9polars_io5cloud7options13BUCKET_REGION, i64 104) acquire, align 8, !dbg !92846
  %i.d = icmp eq i32 %i.c, 0, !dbg !92847
  br i1 %i.d, label %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison5mutex5MutexINtNtCs2mZqlW55729_12polars_utils5cache8LruCacheNtNtB2b_6pl_str10PlSmallStrB2S_EEE5force0ECs2g09Ig8GZd6_13polars_stream.exit, label %bb.b, !dbg !92847, !prof !2346

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !92848
  store ptr @_RNvNtNtCslpwjCj2YNBy_9polars_io5cloud7options13BUCKET_REGION, ptr %i.b, align 8, !dbg !92849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !92850
  store ptr %i.b, ptr %i.a, align 8, !dbg !92850
  call void @_RNvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCslpwjCj2YNBy_9polars_io5cloud7options13BUCKET_REGION, i64 104), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4), !dbg !92851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !92852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !92853
  br label %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison5mutex5MutexINtNtCs2mZqlW55729_12polars_utils5cache8LruCacheNtNtB2b_6pl_str10PlSmallStrB2S_EEE5force0ECs2g09Ig8GZd6_13polars_stream.exit, !dbg !92853

_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison5mutex5MutexINtNtCs2mZqlW55729_12polars_utils5cache8LruCacheNtNtB2b_6pl_str10PlSmallStrB2S_EEE5force0ECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !92854
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtCskmDBXs7hs3c_5tokio2fs4fileNtB5_4FileNtNtNtB9_2io11async_write10AsyncWrite17is_write_vectored(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 !dbg !92855 !guid !92857 {
bb.a:
  ret i1 true, !dbg !92858
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_fileINtB5_9IpcReaderNtNtCsh8eZTKRCwoO_3std2fs4FileEINtNtB9_6shared9SerReaderB10_E6finishCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(312) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !92859 !guid !93826 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [48 x i8], align 8                ; 6 uses
  %i.k = alloca [104 x i8], align 8               ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [184 x i8], align 8               ; 7 uses
  %i.o = alloca [112 x i8], align 8               ; 4 uses
  %i.p = alloca [184 x i8], align 8               ; 7 uses
  %.sroa.625.i.i = alloca [72 x i8], align 8      ; 6 uses
  %i.q = alloca [88 x i8], align 8                ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 12 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %i.t = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.616.i.i = alloca [24 x i8], align 8      ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [112 x i8], align 8               ; 7 uses
  %.sroa.69.i.i = alloca [72 x i8], align 8       ; 6 uses
  %i.w = alloca [112 x i8], align 8               ; 10 uses
  %i.x = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.6.i.i = alloca [32 x i8], align 8        ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 9 uses
  %i.z = alloca [16 x i8], align 8                ; 9 uses
  %i.aa = alloca [104 x i8], align 8              ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %i.ac = alloca [32 x i8], align 8               ; 4 uses
  %i.ad = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.639.i = alloca [48 x i8], align 8        ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [360 x i8], align 8              ; 4 uses
  %i.ag = alloca [72 x i8], align 8               ; 7 uses
  %i.ah = alloca [112 x i8], align 8              ; 11 uses
  %i.ai = alloca [88 x i8], align 8               ; 4 uses
  %i.aj = alloca [8 x i8], align 8                ; 12 uses
  %i.ak = alloca [24 x i8], align 8               ; 5 uses
  %i.al = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.620.i = alloca [24 x i8], align 8        ; 6 uses
  %i.am = alloca [72 x i8], align 8               ; 7 uses
  %i.an = alloca [8 x i8], align 8                ; 16 uses
  %i.ao = alloca [72 x i8], align 8               ; 6 uses
  %i.ap = alloca [72 x i8], align 8               ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [48 x i8], align 8               ; 10 uses
  %i.as = alloca [72 x i8], align 8               ; 7 uses
  %i.at = alloca [48 x i8], align 16              ; 5 uses
  %i.au = alloca [24 x i8], align 8               ; 6 uses
  %i.av = alloca [160 x i8], align 16             ; 11 uses
  %i.aw = alloca [16 x i8], align 8               ; 8 uses
  %i.ax = alloca [24 x i8], align 8               ; 9 uses
  %i.ay = alloca [312 x i8], align 8              ; 75 uses
  %i.az = alloca [72 x i8], align 8               ; 37 uses
  %.sroa.69 = alloca [48 x i8], align 8           ; 6 uses
  %i.ba = alloca [48 x i8], align 8               ; 9 uses
  %i.bb = alloca [40 x i8], align 8               ; 15 uses
  %i.bc = alloca [24 x i8], align 8               ; 12 uses
  %i.bd = alloca [72 x i8], align 8               ; 7 uses
  %i.be = alloca [8 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !dbg !94103
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 296, !dbg !94104
  %i.bg = load ptr, ptr %i.bf, align 8, !dbg !94104, !noundef !2279 ; 3 uses
  %.not = icmp eq ptr %i.bg, null, !dbg !94104
  br i1 %.not, label %bb.c, label %bb.b, !dbg !94105

bb.b:                                             ; preds = %bb.a
  %i.bh = atomicrmw add ptr %i.bg, i64 1 monotonic, align 8, !dbg !94106
  %i.bi = icmp slt i64 %i.bh, 0, !dbg !94107
  br i1 %i.bi, label %bb.d, label %bb.e, !dbg !94107

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !dbg !94025
  invoke fastcc void @_RNvMs_NtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_fileINtB4_9IpcReaderNtNtCsh8eZTKRCwoO_3std2fs4FileE12get_metadataCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.bd, ptr noalias noundef align 8 dereferenceable(312) %1)
          to label %bb.hi unwind label %bb.jg, !dbg !94108

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap(), !dbg !94109
  unreachable, !dbg !94109

bb.e:                                             ; preds = %bb.hk, %bb.b
  %storemerge = phi ptr [ %i.bg, %bb.b ], [ %i.qe, %bb.hk ], !dbg !94110 ; 2 uses
  store ptr %storemerge, ptr %i.be, align 8, !dbg !94110
  %i.bj = getelementptr inbounds nuw i8, ptr %storemerge, i64 16, !dbg !94111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !dbg !94112
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !94113 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false), !dbg !94113
  store i64 -9223372036854775808, ptr %i.bk, align 8, !dbg !94114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !dbg !94115
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 224, !dbg !94116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.bl, i64 40, i1 false), !dbg !94116
  %.sroa.337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 247, !dbg !94117
  store i8 -38, ptr %.sroa.337.0..sroa_idx, align 1, !dbg !94117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !94118
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.69), !dbg !94036
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !dbg !94036
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !dbg !94036
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.ay, ptr noundef nonnull align 8 dereferenceable(312) %1, i64 312, i1 false), !dbg !94036
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93839), !dbg !94036
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93840), !dbg !94036
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !94119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !94119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !dbg !94119
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 16, !dbg !94119 ; 22 uses
  %i.bn = load i64, ptr %i.bm, align 8, !dbg !94119, !range !2623, !alias.scope !93840, !noundef !2279
  %.not.i = icmp eq i64 %i.bn, -9223372036854775808, !dbg !94119
  br i1 %.not.i, label %bb.i, label %bb.g, !dbg !94120

.body150.i:                                       ; preds = %bb.fn, %.body.thread.i, %.body.i, %bb.f
  %.sroa.052.0.i = phi i8 [ %.sroa.052.2.i, %.body.i ], [ %.sroa.052.2261.i, %.body.thread.i ], [ %.sroa.049.1.i, %bb.f ], [ %.sroa.052.2261.i, %bb.fn ], !dbg !94121
  %.sroa.049.0.i = phi i8 [ %.sroa.049.2.i, %.body.i ], [ %.sroa.049.2262.i, %.body.thread.i ], [ %.sroa.049.1.i, %bb.f ], [ %.sroa.049.2262.i, %bb.fn ], !dbg !94121 ; 2 uses
  %.pn132.i = phi { ptr, i32 } [ %.pn128.i, %.body.i ], [ %.pn128263.i, %.body.thread.i ], [ %i.bo, %bb.f ], [ %.pn128263.i, %bb.fn ] ; 2 uses
  %cond.i = icmp eq i8 %.sroa.052.0.i, 0, !dbg !94122
  br i1 %cond.i, label %bb.gz, label %.body150.thread.i, !dbg !94122

bb.f:                                             ; preds = %bb.fp, %bb.fg, %bb.eg, %bb.cg, %bb.bs, %bb.bm, %bb.j
  %.sroa.049.1.i = phi i8 [ 1, %bb.fp ], [ 1, %bb.cg ], [ %.sroa.049.6.i, %bb.fg ], [ 0, %bb.eg ], [ 1, %bb.j ], [ 1, %bb.bs ], [ 1, %bb.bm ], !dbg !94123 ; 2 uses
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body150.i

bb.g:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ay, i64 32, !dbg !94124
  %.val.i = load i64, ptr %i.bp, align 8, !dbg !94124, !alias.scope !93840, !noundef !2279 ; 2 uses
  %i.bq = icmp ult i64 %.val.i, 1152921504606846976, !dbg !94125
  tail call void @llvm.assume(i1 %i.bq), !dbg !94126
  %i.br = icmp eq i64 %.val.i, 0, !dbg !94127
  br i1 %i.br, label %bb.h, label %bb.i, !dbg !94128

bb.h:                                             ; preds = %bb.g
  %i.bs = load i64, ptr %i.ay, align 8, !dbg !94129, !range !2484, !alias.scope !93840, !noundef !2279
  %i.bt = trunc nuw i64 %i.bs to i1, !dbg !94130
  br i1 %i.bt, label %bb.fo, label %bb.fp, !dbg !94130

bb.i:                                             ; preds = %bb.g, %bb.e
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ay, i64 88, !dbg !94131 ; 6 uses
  %.val149.i = load i64, ptr %i.bu, align 8, !dbg !94132, !range !2623, !alias.scope !93840, !noundef !2279
  %.not274.i = icmp eq i64 %.val149.i, -9223372036854775808, !dbg !94133
  br i1 %.not274.i, label %bb.j, label %bb.k, !dbg !94131

bb.j:                                             ; preds = %bb.bv, %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ay, i64 308, !dbg !94134
  %i.bw = load i8, ptr %i.bv, align 4, !dbg !94134, !range !2327, !alias.scope !93840, !noundef !2279
  %i.bx = trunc nuw i8 %i.bw to i1, !dbg !94134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !94135, !noalias !93846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !dbg !94136, !noalias !93846
  invoke fastcc void @_RNvMs_NtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_fileINtB4_9IpcReaderNtNtCsh8eZTKRCwoO_3std2fs4FileE12get_metadataCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.am, ptr noalias noundef nonnull align 8 dereferenceable(312) %i.ay)
          to label %bb.bw unwind label %bb.f, !dbg !94137, !noalias !93839

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93847), !dbg !94138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93848), !dbg !94138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !93846
  store ptr null, ptr %i.z, align 8, !noalias !93849
  %i.by = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ay, i64 304, !dbg !94139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !94140, !noalias !93849
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i), !dbg !94141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !94141, !noalias !93849
  invoke void @_RNvMs_NtCs2mZqlW55729_12polars_utils4mmapNtB4_13MMapSemaphore13new_from_file(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.x, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.bz)
          to label %bb.m unwind label %.thread.i.i, !dbg !94141, !noalias !93851

bb.l:                                             ; preds = %bb.p
  br i1 %.sroa.036.1.i.i, label %bb.bo, label %.body150.thread.i, !dbg !94142

.thread.i.i:                                      ; preds = %bb.ad, %bb.k
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo, !dbg !94142

bb.m:                                             ; preds = %bb.k
  %i.cb = load i64, ptr %i.x, align 8, !dbg !94143, !range !2639, !noalias !93849, !noundef !2279 ; 2 uses
  %.not.i.i = icmp eq i64 %i.cb, 18, !dbg !94143
  %i.cc = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !94144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cc, i64 32, i1 false), !dbg !94144, !noalias !93849
  br i1 %.not.i.i, label %bb.o, label %bb.n, !dbg !94145

bb.n:                                             ; preds = %bb.m
  %.sroa.642.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 40, !dbg !94146
  %.sroa.345.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 40, !dbg !94147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.345.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.642.0..sroa_idx.i.i, i64 32, i1 false), !dbg !94146, !noalias !93853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !94148, !noalias !93849
  %.sroa.244.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8, !dbg !94147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.244.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i, i64 32, i1 false), !dbg !94148, !noalias !93853
  store i64 %i.cb, ptr %i.az, align 8, !dbg !94147, !alias.scope !93851
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i), !dbg !94149
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECs2g09Ig8GZd6_13polars_stream.exit.i.i, !dbg !94150

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !94148, !noalias !93849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i, i64 32, i1 false), !dbg !94141, !noalias !93849
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i), !dbg !94149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !94151, !noalias !93849
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.69.i.i), !dbg !94152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !94152, !noalias !93849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !94153, !noalias !93849
  %i.cd = getelementptr inbounds nuw i8, ptr %i.y, i64 16, !dbg !94154
  %i.ce = load ptr, ptr %i.cd, align 8, !dbg !94154, !noalias !93849, !noundef !2279
  %i.cf = getelementptr inbounds nuw i8, ptr %i.y, i64 24, !dbg !94155
  %i.cg = load i64, ptr %i.cf, align 8, !dbg !94155, !noalias !93849, !noundef !2279
  store ptr %i.ce, ptr %i.u, align 8, !dbg !94156, !noalias !93849
  %i.ch = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !94156
  store i64 %i.cg, ptr %i.ch, align 8, !dbg !94156, !noalias !93849
  %i.ci = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !94156
  store i64 0, ptr %i.ci, align 8, !dbg !94156, !noalias !93849
  invoke void @_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file18read_file_metadataINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.q unwind label %.thread7.i.i, !dbg !94152, !noalias !93851

bb.p:                                             ; preds = %.body.thread.i.i, %.body.i.i
  %.sroa.036.1.i.i = phi i1 [ %.sroa.036.2.i.i, %.body.i.i ], [ %.sroa.036.218.i.i, %.body.thread.i.i ], !dbg !94139 ; 2 uses
  %.sroa.033.0.i.i = phi i8 [ %.sroa.033.1.i.i, %.body.i.i ], [ %.sroa.033.119.i.i, %.body.thread.i.i ], !dbg !94157
  %.pn74.i.i = phi { ptr, i32 } [ %.pn72.i.i, %.body.i.i ], [ %.pn7220.i.i, %.body.thread.i.i ] ; 3 uses
  %i.cj = trunc nuw i8 %.sroa.033.0.i.i to i1, !dbg !94158
  br i1 %i.cj, label %bb.bn, label %bb.l, !dbg !94158

.thread7.i.i:                                     ; preds = %bb.x, %bb.o
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn, !dbg !94158

bb.q:                                             ; preds = %bb.o
  %i.cl = load i64, ptr %i.v, align 8, !dbg !94159, !range !2623, !noalias !93849, !noundef !2279 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, -9223372036854775808, !dbg !94159
  %i.cn = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !94160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.69.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.cn, i64 72, i1 false), !dbg !94160, !noalias !93849
  br i1 %i.cm, label %bb.r, label %bb.s, !dbg !94161

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !94162, !noalias !93849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.az, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.69.i.i, i64 72, i1 false), !dbg !94162, !noalias !93853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !94163, !noalias !93849
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69.i.i), !dbg !94163
  br label %bb.ad, !dbg !94164

bb.s:                                             ; preds = %bb.q
  %.sroa.648.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 80, !dbg !94165
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 80, !dbg !94166 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.648.0..sroa_idx.i.i, i64 32, i1 false), !dbg !94165, !noalias !93849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !94162, !noalias !93849
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !94166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.69.i.i, i64 72, i1 false), !dbg !94152, !noalias !93849
  store i64 %i.cl, ptr %i.w, align 8, !dbg !94166, !noalias !93849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !94163, !noalias !93849
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69.i.i), !dbg !94163
  %i.co = getelementptr inbounds nuw i8, ptr %i.ay, i64 40, !dbg !94167
  %i.cp = load i64, ptr %i.co, align 8, !dbg !94167, !range !2623, !alias.scope !93853, !noundef !2279
  %.not67.i.i = icmp eq i64 %i.cp, -9223372036854775808, !dbg !94167
  br i1 %.not67.i.i, label %bb.u, label %bb.t, !dbg !94168

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.616.i.i), !dbg !94169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !94169, !noalias !93849
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ay, i64 48, !dbg !94170
  %i.cr = load ptr, ptr %i.cq, align 8, !dbg !94170, !alias.scope !93853, !nonnull !2279, !noundef !2279
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ay, i64 56, !dbg !94171
  %i.ct = load i64, ptr %i.cs, align 8, !dbg !94171, !alias.scope !93853, !noundef !2279
  %i.cu = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !94172, !noalias !93849, !nonnull !2279, !noundef !2279
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16, !dbg !94173
  invoke void @_RINvNtNtCslpwjCj2YNBy_9polars_io5utils5other21columns_to_projectionNtNtCsgZ49sUHp3tW_5alloc6string6StringECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cr, i64 noundef %i.ct, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.cv)
          to label %bb.w unwind label %bb.v, !dbg !94169, !noalias !93851

bb.u:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECs2g09Ig8GZd6_13polars_stream.exit.i.i, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !94174, !noalias !93849
  %i.cw = load i64, ptr %i.bm, align 8, !dbg !94175, !range !2623, !alias.scope !93853, !noundef !2279
  %.not69.i.i = icmp eq i64 %i.cw, -9223372036854775808, !dbg !94175
  br i1 %.not69.i.i, label %bb.af, label %bb.ae, !dbg !94176

.body.i.i:                                        ; preds = %bb.ar, %.critedge.i.i, %bb.v
  %.sroa.036.2.i.i = phi i1 [ %.sroa.036.4.i.i, %.critedge.i.i ], [ %.sroa.036.3.i.i, %bb.v ], [ %.sroa.036.4.i.i, %bb.ar ], !dbg !94177 ; 2 uses
  %.sroa.033.1.i.i = phi i8 [ 0, %.critedge.i.i ], [ %.sroa.032.1.i.i, %bb.v ], [ 0, %bb.ar ], !dbg !94157 ; 2 uses
  %.sroa.032.0.i.i = phi i8 [ %.sroa.032.2.i.i, %.critedge.i.i ], [ %.sroa.032.1.i.i, %bb.v ], [ %.sroa.032.2.i.i, %bb.ar ], !dbg !94178
  %.pn72.i.i = phi { ptr, i32 } [ %.pn.i.i, %.critedge.i.i ], [ %i.cy, %bb.v ], [ %.pn.i.i, %bb.ar ] ; 2 uses
  %i.cx = trunc nuw i8 %.sroa.032.0.i.i to i1, !dbg !94179
  br i1 %i.cx, label %.body.thread.i.i, label %bb.p, !dbg !94179

bb.v:                                             ; preds = %bb.bg, %bb.aw, %bb.ae, %bb.t
  %.sroa.036.3.i.i = phi i1 [ true, %bb.aw ], [ false, %bb.bg ], [ true, %bb.t ], [ true, %bb.ae ], !dbg !94177
  %.sroa.032.1.i.i = phi i8 [ 0, %bb.aw ], [ 0, %bb.bg ], [ 1, %bb.t ], [ 1, %bb.ae ], !dbg !94178 ; 2 uses
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.w:                                             ; preds = %bb.t
  %i.cz = load i64, ptr %i.t, align 8, !dbg !94180, !range !2639, !noalias !93849, !noundef !2279 ; 2 uses
  %.not68.i.i = icmp eq i64 %i.cz, 18, !dbg !94180
  %i.da = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !94181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.616.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.da, i64 24, i1 false), !dbg !94181, !noalias !93849
  br i1 %.not68.i.i, label %bb.y, label %bb.x, !dbg !94182

bb.x:                                             ; preds = %bb.w
  %.sroa.654.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32, !dbg !94183
  %.sroa.357.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 32, !dbg !94184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.357.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.654.0..sroa_idx.i.i, i64 40, i1 false), !dbg !94183, !noalias !93853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !94185, !noalias !93849
  %.sroa.256.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8, !dbg !94184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.256.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.616.i.i, i64 24, i1 false), !dbg !94185, !noalias !93853
  store i64 %i.cz, ptr %i.az, align 8, !dbg !94184, !alias.scope !93851
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616.i.i), !dbg !94186
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(112) %i.w)
          to label %bb.ad unwind label %.thread7.i.i, !dbg !94179, !noalias !93851

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !94185, !noalias !93849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !94187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.616.i.i, i64 24, i1 false), !dbg !94169, !noalias !93849
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616.i.i), !dbg !94186
  %i.db = load i64, ptr %i.bm, align 8, !dbg !94188, !range !2623, !alias.scope !93870, !noundef !2279
  %i.dc = icmp eq i64 %i.db, -9223372036854775808, !dbg !94188
  br i1 %i.dc, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECs2g09Ig8GZd6_13polars_stream.exit.i.i, label %bb.z, !dbg !94188

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i unwind label %bb.aa, !dbg !94189, !noalias !93851

bb.aa:                                            ; preds = %bb.z
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %.thread13.i.i unwind label %bb.ab, !dbg !94190, !noalias !93851

bb.ab:                                            ; preds = %bb.aa
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !94189, !noalias !93851
  unreachable, !dbg !94189

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i: ; preds = %bb.z
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECs2g09Ig8GZd6_13polars_stream.exit.i.i unwind label %bb.ac, !dbg !94191, !noalias !93851

bb.ac:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.thread13.i.i, !dbg !94192

.thread13.i.i:                                    ; preds = %bb.ac, %bb.aa
  %eh.lpad-body81.i.i = phi { ptr, i32 } [ %i.df, %bb.ac ], [ %i.dd, %bb.aa ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !94192, !noalias !93851
  br label %.body.thread.i.i, !dbg !94179

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECs2g09Ig8GZd6_13polars_stream.exit.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i, %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !94192, !noalias !93851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !94193
  br label %bb.u, !dbg !94194

bb.ad:                                            ; preds = %bb.x, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !94179, !noalias !93849
  invoke void @_RNvXNtCs2mZqlW55729_12polars_utils4mmapNtB2_13MMapSemaphoreNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECs2g09Ig8GZd6_13polars_stream.exit.i.i unwind label %.thread.i.i, !dbg !94195, !noalias !93851

bb.ae:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !94196, !noalias !93849
  %i.dg = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !94197, !noalias !93849, !nonnull !2279, !noundef !2279
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16, !dbg !94198
  %i.di = getelementptr inbounds nuw i8, ptr %i.ay, i64 24, !dbg !94199
  %i.dj = load ptr, ptr %i.di, align 8, !dbg !94199, !alias.scope !93853, !nonnull !2279, !noundef !2279
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ay, i64 32, !dbg !94200
  %i.dl = load i64, ptr %i.dk, align 8, !dbg !94200, !alias.scope !93853, !noundef !2279
  invoke void @_RNvNtNtCslpwjCj2YNBy_9polars_io5utils5other16apply_projection(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.dh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dj, i64 noundef %i.dl)
          to label %bb.ag unwind label %bb.v, !dbg !94196, !noalias !93851

bb.af:                                            ; preds = %bb.u
  %i.dm = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !94201, !noalias !93849, !nonnull !2279, !noundef !2279
  %i.dn = atomicrmw add ptr %i.dm, i64 1 monotonic, align 8, !dbg !94202, !noalias !93851
end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_fileINtB5_9IpcReaderNtNtCsh8eZTKRCwoO_3std2fs4FileEINtNtB9_6shared9SerReaderB10_E6finishCs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.036.4.i.i = phi i1 [ false, %.noexc94.i.i ], [ true, %bb.as ], [ false, %bb.bd ], [ true, %bb.an ], !dbg !94177 ; 2 uses
  %.sroa.032.2.i.i = phi i8 [ 0, %.noexc94.i.i ], [ 0, %bb.as ], [ 0, %bb.bd ], [ 1, %bb.an ], !dbg !94230 ; 2 uses
  %.pn.i.i = phi { ptr, i32 } [ %i.ff, %.noexc94.i.i ], [ %i.ef, %bb.as ], [ %i.ez, %bb.bd ], [ %i.dz, %bb.an ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93881), !dbg !94231
  call void @llvm.experimental.noalias.scope.decl(metadata !93882), !dbg !94232
  %i.ec = load ptr, ptr %i.r, align 8, !dbg !94233, !alias.scope !93883, !noalias !93849, !nonnull !2279, !noundef !2279
  %i.ed = atomicrmw add ptr %i.ec, i64 -1 release, align 8, !dbg !94234, !noalias !93884
  %i.ee = icmp eq i64 %i.ed, 1, !dbg !94235
  br i1 %i.ee, label %bb.ar, label %.body.i.i, !dbg !94235

bb.ar:                                            ; preds = %.critedge.i.i
  fence acquire, !dbg !94236
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r) #38
          to label %.body.i.i unwind label %bb.bk, !dbg !94237, !noalias !93851

bb.as:                                            ; preds = %bb.at
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.i.i

bb.at:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dx, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false), !dbg !94238, !noalias !93851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !94239, !noalias !93849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !94230, !noalias !93849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.o, ptr noundef nonnull align 8 dereferenceable(112) %i.w, i64 112, i1 false), !dbg !94230, !noalias !93849
  invoke void @_RNvMs_NtNtCslpwjCj2YNBy_9polars_io3ipc4mmapNtB4_13MMapChunkIter3new(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.p, ptr noundef nonnull %i.dx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bm)
          to label %bb.au unwind label %bb.as, !dbg !94217, !noalias !93851

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !94240, !noalias !93849
  %i.eg = load i64, ptr %i.p, align 8, !dbg !94241, !range !2623, !noalias !93849, !noundef !2279 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, -9223372036854775808, !dbg !94241
  %i.ei = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !94242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.625.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.ei, i64 72, i1 false), !dbg !94242, !noalias !93849
  br i1 %i.eh, label %bb.av, label %bb.ax, !dbg !94243

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !94244, !noalias !93849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.az, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.625.i.i, i64 72, i1 false), !dbg !94244, !noalias !93853
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.625.i.i), !dbg !94244
  call void @llvm.experimental.noalias.scope.decl(metadata !93885), !dbg !94231
  call void @llvm.experimental.noalias.scope.decl(metadata !93886), !dbg !94245
  %i.ej = load ptr, ptr %i.r, align 8, !dbg !94246, !alias.scope !93887, !noalias !93849, !nonnull !2279, !noundef !2279
  %i.ek = atomicrmw add ptr %i.ej, i64 -1 release, align 8, !dbg !94247, !noalias !93888
  %i.el = icmp eq i64 %i.ek, 1, !dbg !94248
  br i1 %i.el, label %bb.aw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit90.i.i, !dbg !94248

bb.aw:                                            ; preds = %bb.av
  fence acquire, !dbg !94249
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r) #38
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit90.i.i unwind label %bb.v, !dbg !94250, !noalias !93851

bb.ax:                                            ; preds = %bb.au
  %.sroa.664.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 80, !dbg !94251
  %.sroa.331.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 80, !dbg !94252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !94252, !noalias !93849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.331.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.664.0..sroa_idx.i.i, i64 104, i1 false), !dbg !94251, !noalias !93849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !94244, !noalias !93849
  %.sroa.230.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !94252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.230.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.625.i.i, i64 72, i1 false), !dbg !94217, !noalias !93849
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.625.i.i), !dbg !94244
  store i64 %i.eg, ptr %i.n, align 8, !dbg !94252, !noalias !93849
  %i.em = load i64, ptr %i.ay, align 8, !dbg !94253, !range !2484, !alias.scope !93853, !noundef !2279
  %i.en = getelementptr inbounds nuw i8, ptr %i.ay, i64 8, !dbg !94253
  %i.eo = load i64, ptr %i.en, align 8, !dbg !94253, !alias.scope !93853
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !94254, !noalias !93849
  %i.ep = load ptr, ptr %i.z, align 8, !dbg !94254, !noalias !93849, !noundef !2279 ; 4 uses
  %i.eq = load ptr, ptr %i.by, align 8, !dbg !94254, !noalias !93849 ; 2 uses
  store ptr %i.ep, ptr %i.m, align 8, !dbg !94254, !noalias !93849
  %i.er = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !94254
  store ptr %i.eq, ptr %i.er, align 8, !dbg !94254, !noalias !93849
  %i.es = load ptr, ptr %i.r, align 8, !dbg !94255, !noalias !93849, !nonnull !2279, !noundef !2279
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16, !dbg !94256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !94257, !noalias !93849
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ay, i64 287, !dbg !94258
  %i.ev = load i8, ptr %i.eu, align 1, !dbg !94258, !range !2632, !alias.scope !93853, !noundef !2279 ; 2 uses
  %.not70.i.i = icmp eq i8 %i.ev, -38, !dbg !94258
  br i1 %.not70.i.i, label %bb.bb, label %bb.ay, !dbg !94259

bb.ay:                                            ; preds = %bb.ax
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ay, i64 264, !dbg !94258 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !94260, !noalias !93849
  %i.ex = icmp eq i8 %i.ev, -40, !dbg !94261
  br i1 %i.ex, label %bb.az, label %bb.ba, !dbg !94261

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ew) #38
          to label %bb.be unwind label %bb.bh, !dbg !94262, !noalias !93851

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ew, i64 24, i1 false), !dbg !94263, !noalias !93891
  br label %bb.be, !dbg !94264

bb.bb:                                            ; preds = %bb.ax
  %i.ey = getelementptr inbounds nuw i8, ptr %i.l, i64 23, !dbg !94265
  store i8 -38, ptr %i.ey, align 1, !dbg !94265, !noalias !93849
  br label %bb.bc, !dbg !94265

bb.bc:                                            ; preds = %bb.be, %bb.bb
  invoke void @_RINvNtCslpwjCj2YNBy_9polars_io6shared13finish_readerNtNtNtB4_3ipc4mmap13MMapChunkIterECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.az, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.n, i1 noundef zeroext false, i64 noundef %i.em, i64 %i.eo, ptr noundef %i.ep, ptr %i.eq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.et, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.l)
          to label %bb.bf unwind label %bb.bd, !dbg !94266

bb.bd:                                            ; preds = %bb.bc
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.i.i, !dbg !94267

bb.be:                                            ; preds = %bb.ba, %bb.az
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ay, i64 288, !dbg !94268
  %i.fb = load i32, ptr %i.fa, align 8, !dbg !94268, !alias.scope !93892, !noundef !2279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !94269, !noalias !93849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !94270, !noalias !93849
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !94271
  store i32 %i.fb, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !dbg !94271, !noalias !93849
  br label %bb.bc, !dbg !94272

bb.bf:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !94267, !noalias !93849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !94267, !noalias !93849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !94267, !noalias !93849
  call void @llvm.experimental.noalias.scope.decl(metadata !93893), !dbg !94231
  call void @llvm.experimental.noalias.scope.decl(metadata !93894), !dbg !94273
  %i.fc = load ptr, ptr %i.r, align 8, !dbg !94274, !alias.scope !93895, !noalias !93849, !nonnull !2279, !noundef !2279
  %i.fd = atomicrmw add ptr %i.fc, i64 -1 release, align 8, !dbg !94275, !noalias !93896
  %i.fe = icmp eq i64 %i.fd, 1, !dbg !94276
  br i1 %i.fe, label %bb.bg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit93.i.i, !dbg !94276

bb.bg:                                            ; preds = %bb.bf
  fence acquire, !dbg !94277
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r) #38
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit93.i.i unwind label %bb.v, !dbg !94278, !noalias !93851

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit93.i.i: ; preds = %bb.bg, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !94231, !noalias !93849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !94179, !noalias !93849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !94158, !noalias !93849
  br label %bb.br, !dbg !94142

bb.bh:                                            ; preds = %bb.az
  %i.ff = landingpad { ptr, i32 }
          cleanup
  %i.fg = icmp eq ptr %i.ep, null, !dbg !94279
  br i1 %i.fg, label %.noexc94.i.i, label %bb.bi, !dbg !94279

bb.bi:                                            ; preds = %bb.bh
  %i.fh = atomicrmw add ptr %i.ep, i64 -1 release, align 8, !dbg !94280, !noalias !93897
  %i.fi = icmp eq i64 %i.fh, 1, !dbg !94281
  br i1 %i.fi, label %bb.bj, label %.noexc94.i.i, !dbg !94281

bb.bj:                                            ; preds = %bb.bi
  fence acquire, !dbg !94282
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m) #38
          to label %.noexc94.i.i unwind label %bb.bk, !dbg !94283, !noalias !93851

bb.bk:                                            ; preds = %bb.bq, %bb.bn, %.body.thread.i.i, %.noexc94.i.i, %bb.bj, %bb.ar
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !94284, !noalias !93851
  unreachable, !dbg !94284

.noexc94.i.i:                                     ; preds = %bb.bj, %bb.bi, %bb.bh
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io3ipc4mmap13MMapChunkIterECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(184) %i.n) #33
          to label %.critedge.i.i unwind label %bb.bk, !dbg !94267, !noalias !93851

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit90.i.i: ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !94231, !noalias !93849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !94179, !noalias !93849
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECs2g09Ig8GZd6_13polars_stream.exit.i.i, !dbg !94158

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECs2g09Ig8GZd6_13polars_stream.exit.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit90.i.i, %bb.ad, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !94158, !noalias !93849
  call void @llvm.experimental.noalias.scope.decl(metadata !93898), !dbg !94142
  %i.fk = load ptr, ptr %i.z, align 8, !dbg !94285, !alias.scope !93898, !noalias !93849, !noundef !2279 ; 2 uses
  %i.fl = icmp eq ptr %i.fk, null, !dbg !94285
  br i1 %i.fl, label %bb.br, label %bb.bl, !dbg !94285

bb.bl:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECs2g09Ig8GZd6_13polars_stream.exit.i.i
  %i.fm = atomicrmw add ptr %i.fk, i64 -1 release, align 8, !dbg !94286, !noalias !93899
  %i.fn = icmp eq i64 %i.fm, 1, !dbg !94287
  br i1 %i.fn, label %bb.bm, label %bb.br, !dbg !94287

bb.bm:                                            ; preds = %bb.bl
  fence acquire, !dbg !94288
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z) #38
          to label %bb.br unwind label %bb.f, !dbg !94289, !noalias !93839

.body.thread.i.i:                                 ; preds = %bb.ai, %.thread13.i.i, %.body.i.i
  %.pn7220.i.i = phi { ptr, i32 } [ %eh.lpad-body81.i.i, %.thread13.i.i ], [ %.pn72.i.i, %.body.i.i ], [ %i.dt, %bb.ai ]
  %.sroa.033.119.i.i = phi i8 [ 1, %.thread13.i.i ], [ %.sroa.033.1.i.i, %.body.i.i ], [ 1, %bb.ai ]
  %.sroa.036.218.i.i = phi i1 [ true, %.thread13.i.i ], [ %.sroa.036.2.i.i, %.body.i.i ], [ true, %bb.ai ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(112) %i.w) #33
          to label %bb.p unwind label %bb.bk, !dbg !94179, !noalias !93851

bb.bn:                                            ; preds = %.thread7.i.i, %bb.p
  %.pn7412.i.i = phi { ptr, i32 } [ %i.ck, %.thread7.i.i ], [ %.pn74.i.i, %bb.p ] ; 2 uses
  %.sroa.036.111.i.i = phi i1 [ true, %.thread7.i.i ], [ %.sroa.036.1.i.i, %bb.p ]
  invoke void @_RNvXNtCs2mZqlW55729_12polars_utils4mmapNtB2_13MMapSemaphoreNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECs2g09Ig8GZd6_13polars_stream.exit97.i.i unwind label %bb.bk, !dbg !94290, !noalias !93851

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECs2g09Ig8GZd6_13polars_stream.exit97.i.i: ; preds = %bb.bn
  br i1 %.sroa.036.111.i.i, label %bb.bo, label %.body150.thread.i, !dbg !94142

bb.bo:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECs2g09Ig8GZd6_13polars_stream.exit97.i.i, %.thread.i.i, %bb.l
  %.pn766.i.i = phi { ptr, i32 } [ %i.ca, %.thread.i.i ], [ %.pn74.i.i, %bb.l ], [ %.pn7412.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECs2g09Ig8GZd6_13polars_stream.exit97.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93900), !dbg !94142
  %i.fo = load ptr, ptr %i.z, align 8, !dbg !94291, !alias.scope !93900, !noalias !93849, !noundef !2279 ; 2 uses
  %i.fp = icmp eq ptr %i.fo, null, !dbg !94291
  br i1 %i.fp, label %.body150.thread.i, label %bb.bp, !dbg !94291

bb.bp:                                            ; preds = %bb.bo
  %i.fq = atomicrmw add ptr %i.fo, i64 -1 release, align 8, !dbg !94292, !noalias !93901
  %i.fr = icmp eq i64 %i.fq, 1, !dbg !94293
  br i1 %i.fr, label %bb.bq, label %.body150.thread.i, !dbg !94293

bb.bq:                                            ; preds = %bb.bp
  fence acquire, !dbg !94294
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z) #38
          to label %.body150.thread.i unwind label %bb.bk, !dbg !94295, !noalias !93851

bb.br:                                            ; preds = %bb.bm, %bb.bl, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECs2g09Ig8GZd6_13polars_stream.exit.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit93.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !94296, !noalias !93846
  %i.fs = load i64, ptr %i.az, align 8, !dbg !94297, !range !2639, !alias.scope !93839, !noundef !2279
  %.not113.i = icmp eq i64 %i.fs, 18, !dbg !94297
  br i1 %.not113.i, label %.thread264.i, label %bb.bs, !dbg !94298

bb.bs:                                            ; preds = %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ap, ptr noundef nonnull align 8 dereferenceable(72) %i.az, i64 72, i1 false), !dbg !94299, !noalias !93840
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !dbg !94300, !noalias !93846
  invoke void @_RNvNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file14check_mmap_err(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ao, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.ap)
          to label %bb.bt unwind label %bb.f, !dbg !94300, !noalias !93839

bb.bt:                                            ; preds = %bb.bs
  %i.ft = load i64, ptr %i.ao, align 8, !dbg !94301, !range !2639, !noalias !93846, !noundef !2279
  %.not114.i = icmp eq i64 %i.ft, 18, !dbg !94301
  br i1 %.not114.i, label %bb.bv, label %bb.bu, !dbg !94302

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.az, ptr noundef nonnull align 8 dereferenceable(72) %i.ao, i64 72, i1 false), !dbg !94303, !noalias !93840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !94304, !noalias !93846
  br label %.thread264.i, !dbg !94305

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !94304, !noalias !93846
  br label %bb.j, !dbg !94306

bb.bw:                                            ; preds = %bb.j
  %i.fu = load i64, ptr %i.am, align 8, !dbg !94307, !range !2639, !noalias !93846, !noundef !2279 ; 2 uses
  %.not115.i = icmp eq i64 %i.fu, 18, !dbg !94307
  %i.fv = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !94308
  %i.fw = load ptr, ptr %i.fv, align 8, !dbg !94308, !noalias !93846 ; 2 uses
  br i1 %.not115.i, label %bb.by, label %bb.bx, !dbg !94309

bb.bx:                                            ; preds = %bb.bw
  %.sroa.678.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16, !dbg !94310
  %.sroa.381.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16, !dbg !94311
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.381.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.678.0..sroa_idx.i, i64 56, i1 false), !dbg !94310, !noalias !93840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !dbg !94312, !noalias !93846
  store i64 %i.fu, ptr %i.az, align 8, !dbg !94311, !alias.scope !93839
  %.sroa.280.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8, !dbg !94311
  store ptr %i.fw, ptr %.sroa.280.0..sroa_idx.i, align 8, !dbg !94311, !alias.scope !93839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !94313, !noalias !93846
  br label %.thread264.i, !dbg !94122

bb.by:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !dbg !94312, !noalias !93846
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 80, !dbg !94314
  %i.fy = load ptr, ptr %i.fx, align 8, !dbg !94314, !noalias !93839, !nonnull !2279, !noundef !2279 ; 3 uses
  %i.fz = atomicrmw add ptr %i.fy, i64 1 monotonic, align 8, !dbg !94315, !noalias !93839
  %i.ga = icmp slt i64 %i.fz, 0, !dbg !94316
  br i1 %i.ga, label %bb.ca, label %bb.bz, !dbg !94316

bb.bz:                                            ; preds = %bb.by
  store ptr %i.fy, ptr %i.an, align 8, !dbg !94317, !noalias !93846
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ay, i64 40, !dbg !94318 ; 5 uses
  %i.gc = load i64, ptr %i.gb, align 8, !dbg !94318, !range !2623, !alias.scope !93840, !noundef !2279
  %.not116.i = icmp eq i64 %i.gc, -9223372036854775808, !dbg !94318
  br i1 %.not116.i, label %bb.cc, label %bb.cb, !dbg !94319

bb.ca:                                            ; preds = %bb.by
  call void @llvm.trap(), !dbg !94320
  unreachable, !dbg !94320

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.620.i), !dbg !94321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !dbg !94321, !noalias !93846
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ay, i64 48, !dbg !94322
  %i.ge = load ptr, ptr %i.gd, align 8, !dbg !94322, !alias.scope !93840, !nonnull !2279, !noundef !2279
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ay, i64 56, !dbg !94323
  %i.gg = load i64, ptr %i.gf, align 8, !dbg !94323, !alias.scope !93840, !noundef !2279
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 16, !dbg !94324
  invoke void @_RINvNtNtCslpwjCj2YNBy_9polars_io5utils5other21columns_to_projectionNtNtCsgZ49sUHp3tW_5alloc6string6StringECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ge, i64 noundef %i.gg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.gh)
          to label %bb.ce unwind label %bb.cd, !dbg !94321, !noalias !93839

bb.cc:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECs2g09Ig8GZd6_13polars_stream.exit.i, %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !94325, !noalias !93846
  %i.gi = load i64, ptr %i.bm, align 8, !dbg !94326, !range !2623, !alias.scope !93840, !noundef !2279
  %.not118.i = icmp eq i64 %i.gi, -9223372036854775808, !dbg !94326
  br i1 %.not118.i, label %bb.cn, label %bb.cm, !dbg !94327

.body.i:                                          ; preds = %bb.cv, %.body164.i.a, %bb.cd
  %.sroa.052.2.i = phi i8 [ %.sroa.052.4.lpad-body.i, %.body164.i.a ], [ %.sroa.049.3.i, %bb.cd ], [ %.sroa.052.4.lpad-body.i, %bb.cv ], !dbg !94123 ; 2 uses
  %.sroa.049.2.i = phi i8 [ %.sroa.049.5.lpad-body.i, %.body164.i.a ], [ %.sroa.049.3.i, %bb.cd ], [ %.sroa.049.5.lpad-body.i, %bb.cv ], !dbg !94123 ; 2 uses
  %.sroa.046.0.i = phi i8 [ %.sroa.046.2.i, %.body164.i.a ], [ %.sroa.046.1.i, %bb.cd ], [ %.sroa.046.2.i, %bb.cv ], !dbg !94328
  %.pn128.i = phi { ptr, i32 } [ %eh.lpad-body165.i, %.body164.i.a ], [ %i.gk, %bb.cd ], [ %eh.lpad-body165.i, %bb.cv ] ; 2 uses
  %i.gj = trunc nuw i8 %.sroa.046.0.i to i1, !dbg !94313
  br i1 %i.gj, label %.body.thread.i, label %.body150.i, !dbg !94313

bb.cd:                                            ; preds = %bb.fe, %bb.eb, %bb.cm, %bb.cb
  %.sroa.049.3.i = phi i8 [ %.sroa.049.6.i, %bb.fe ], [ 0, %bb.eb ], [ 1, %bb.cb ], [ 1, %bb.cm ], !dbg !94123 ; 2 uses
  %.sroa.046.1.i = phi i8 [ %.sroa.046.2.i, %bb.fe ], [ %.sroa.046.2.i, %bb.eb ], [ 1, %bb.cb ], [ 1, %bb.cm ], !dbg !94328
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ce:                                            ; preds = %bb.cb
  %i.gl = load i64, ptr %i.al, align 8, !dbg !94329, !range !2639, !noalias !93846, !noundef !2279 ; 2 uses
  %.not117.i = icmp eq i64 %i.gl, 18, !dbg !94329
  %i.gm = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !94330
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.620.i, ptr noundef nonnull align 8 dereferenceable(24) %i.gm, i64 24, i1 false), !dbg !94330, !noalias !93846
  br i1 %.not117.i, label %bb.ch, label %bb.cf, !dbg !94331

bb.cf:                                            ; preds = %bb.ce
  %.sroa.687.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 32, !dbg !94332
  %.sroa.390.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 32, !dbg !94333
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.390.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.687.0..sroa_idx.i, i64 40, i1 false), !dbg !94332, !noalias !93840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !94334, !noalias !93846
  %.sroa.289.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8, !dbg !94333
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.289.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.620.i, i64 24, i1 false), !dbg !94334, !noalias !93840
  store i64 %i.gl, ptr %i.az, align 8, !dbg !94333, !alias.scope !93839
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620.i), !dbg !94335
  call void @llvm.experimental.noalias.scope.decl(metadata !93905), !dbg !94313
  call void @llvm.experimental.noalias.scope.decl(metadata !93906), !dbg !94336
  %i.gn = load ptr, ptr %i.an, align 8, !dbg !94337, !alias.scope !93907, !noalias !93846, !nonnull !2279, !noundef !2279
  %i.go = atomicrmw add ptr %i.gn, i64 -1 release, align 8, !dbg !94338, !noalias !93908
  %i.gp = icmp eq i64 %i.go, 1, !dbg !94339
  br i1 %i.gp, label %bb.cg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !94339

bb.cg:                                            ; preds = %bb.cf
  fence acquire, !dbg !94340
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.an) #38
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.f, !dbg !94341, !noalias !93839

bb.ch:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !94334, !noalias !93846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !94342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.620.i, i64 24, i1 false), !dbg !94321, !noalias !93846
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620.i), !dbg !94335
  %i.gq = load i64, ptr %i.bm, align 8, !dbg !94343, !range !2623, !alias.scope !93909, !noundef !2279
  %i.gr = icmp eq i64 %i.gq, -9223372036854775808, !dbg !94343
  br i1 %i.gr, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECs2g09Ig8GZd6_13polars_stream.exit.i, label %bb.ci, !dbg !94343

bb.ci:                                            ; preds = %bb.ch
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs2g09Ig8GZd6_13polars_stream.exit.i.i unwind label %bb.cj, !dbg !94344, !noalias !93839

bb.cj:                                            ; preds = %bb.ci
  %i.gs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %.thread256.i unwind label %bb.ck, !dbg !94345, !noalias !93839

bb.ck:                                            ; preds = %bb.cj
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !94344, !noalias !93839
  unreachable, !dbg !94344

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs2g09Ig8GZd6_13polars_stream.exit.i.i: ; preds = %bb.ci
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.cl, !dbg !94346, !noalias !93839

bb.cl:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs2g09Ig8GZd6_13polars_stream.exit.i.i
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %.thread256.i, !dbg !94347

.thread256.i:                                     ; preds = %bb.cl, %bb.cj
  %eh.lpad-body154.i.a = phi { ptr, i32 } [ %i.gu, %bb.cl ], [ %i.gs, %bb.cj ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !dbg !94347, !noalias !93839
  br label %.body.thread.i, !dbg !94313

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs2g09Ig8GZd6_13polars_stream.exit.i.i, %bb.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !dbg !94347, !noalias !93839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !94348
  br label %bb.cc, !dbg !94349

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.cg, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !94313, !noalias !93846
  br label %.thread264.i, !dbg !94305

bb.cm:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !94350, !noalias !93846
  %i.gv = load ptr, ptr %i.an, align 8, !dbg !94351, !noalias !93846, !nonnull !2279, !noundef !2279
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16, !dbg !94352
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ay, i64 24, !dbg !94353
  %i.gy = load ptr, ptr %i.gx, align 8, !dbg !94353, !alias.scope !93840, !nonnull !2279, !noundef !2279
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ay, i64 32, !dbg !94354
  %i.ha = load i64, ptr %i.gz, align 8, !dbg !94354, !alias.scope !93840, !noundef !2279
  invoke void @_RNvNtNtCslpwjCj2YNBy_9polars_io5utils5other16apply_projection(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.gw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.gy, i64 noundef %i.ha)
          to label %bb.co unwind label %bb.cd, !dbg !94350, !noalias !93839

bb.cn:                                            ; preds = %bb.cc
  %i.hb = load ptr, ptr %i.an, align 8, !dbg !94355, !noalias !93846, !nonnull !2279, !noundef !2279
  store ptr %i.hb, ptr %i.aj, align 8, !dbg !94355, !noalias !93846
  br label %bb.ct, !dbg !94356

bb.co:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !94357, !noalias !93846
  store i64 1, ptr %i.aa, align 8, !dbg !94357, !noalias !93846
  %i.hc = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !94357
  store i64 1, ptr %i.hc, align 8, !dbg !94357, !noalias !93846
  %i.hd = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !94357 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.hd, ptr noundef nonnull align 8 dereferenceable(88) %i.ai, i64 88, i1 false), !dbg !94357, !noalias !93846
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !dbg !94358, !noalias !93918
  %i.he = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, 641) 104, i64 noundef range(i64 8, 129) 8) #36, !dbg !94359, !noalias !93918 ; 3 uses
  %i.hf = icmp eq ptr %i.he, null, !dbg !94360
  br i1 %i.hf, label %bb.cp, label %bb.cs, !dbg !94361, !prof !2567

bb.cp:                                            ; preds = %bb.co
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #34
          to label %.noexc157.i unwind label %bb.cq, !dbg !94362, !noalias !93839

.noexc157.i:                                      ; preds = %bb.cp
  unreachable, !dbg !94362

bb.cq:                                            ; preds = %bb.cp
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3l_EEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(88) %i.hd)
          to label %.body.thread.i unwind label %bb.cr, !dbg !94363, !noalias !93839

bb.cr:                                            ; preds = %bb.cq
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !94364, !noalias !93839
  unreachable, !dbg !94364

bb.cs:                                            ; preds = %bb.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.he, ptr noundef nonnull align 8 dereferenceable(104) %i.aa, i64 104, i1 false), !dbg !94365, !noalias !93839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !94366, !noalias !93846
  store ptr %i.he, ptr %i.aj, align 8, !dbg !94367, !noalias !93846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !94368, !noalias !93846
  br label %bb.ct, !dbg !94356

bb.ct:                                            ; preds = %bb.cs, %bb.cn
  %.sroa.046.2.i = phi i8 [ 1, %bb.cs ], [ 0, %bb.cn ], !dbg !94369 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !94370, !noalias !93846
  invoke fastcc void @_RNvMs_NtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_fileINtB4_9IpcReaderNtNtCsh8eZTKRCwoO_3std2fs4FileE12get_metadataCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(312) %i.ay)
          to label %bb.cw unwind label %bb.cu, !dbg !94371, !noalias !93839

bb.cu:                                            ; preds = %bb.dx, %bb.dw, %bb.ct
  %.sroa.052.4.i = phi i8 [ 0, %bb.dx ], [ 0, %bb.dw ], [ 1, %bb.ct ], !dbg !94123
  %.sroa.049.5.i = phi i8 [ 0, %bb.dx ], [ 1, %bb.dw ], [ 1, %bb.ct ], !dbg !94123
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %.body164.i.a, !dbg !94372

.body164.i.a:                                     ; preds = %bb.dv, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs2g09Ig8GZd6_13polars_stream.exit13.i.i, %bb.cu
  %.sroa.052.4.lpad-body.i = phi i8 [ %.sroa.052.4.i, %bb.cu ], [ 1, %bb.dv ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs2g09Ig8GZd6_13polars_stream.exit13.i.i ] ; 2 uses
  %.sroa.049.5.lpad-body.i = phi i8 [ %.sroa.049.5.i, %bb.cu ], [ 1, %bb.dv ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs2g09Ig8GZd6_13polars_stream.exit13.i.i ] ; 2 uses
  %eh.lpad-body165.i = phi { ptr, i32 } [ %i.hi, %bb.cu ], [ %.pn.pn.i.i, %bb.dv ], [ %.pn.pn.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs2g09Ig8GZd6_13polars_stream.exit13.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93919), !dbg !94372
end_hunk_1
begin_hunk_2_@_RNvXs1_NtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_fileINtB5_9IpcReaderNtNtCsh8eZTKRCwoO_3std2fs4FileEINtNtB9_6shared9SerReaderB10_E6finishCs2g09Ig8GZd6_13polars_stream:bb.a
  %.pn.i162.i = phi { ptr, i32 } [ %i.il, %bb.dq ], [ %i.ii, %bb.dn ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc9IpcSchemaECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(32) %i.e) #33
          to label %bb.dh unwind label %bb.ds, !dbg !94415, !noalias !93939

bb.dn:                                            ; preds = %bb.dl
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.do:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i), !dbg !94416
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ho, i64 56, !dbg !94417 ; 2 uses
  %i.ik = load i64, ptr %i.ij, align 8, !dbg !94417, !range !2623, !alias.scope !93926, !noalias !93839, !noundef !2279
  %.not9.i.i = icmp eq i64 %i.ik, -9223372036854775808, !dbg !94417
  br i1 %.not9.i.i, label %bb.dw, label %bb.dp, !dbg !94418

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !94419, !noalias !93927
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf5BlockENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ij)
          to label %bb.dr unwind label %bb.dq, !dbg !94420, !noalias !93939

bb.dq:                                            ; preds = %bb.dp
  %i.il = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf5BlockEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.d) #33
          to label %bb.dm unwind label %bb.ds, !dbg !94415, !noalias !93939

bb.dr:                                            ; preds = %bb.dp
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.b, align 8, !dbg !94421, !noalias !93927
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !94421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, i64 16, i1 false), !dbg !94421, !noalias !93927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !94422, !noalias !93927
  br label %bb.dw, !dbg !94423

bb.ds:                                            ; preds = %bb.dv, %bb.du, %bb.dq, %bb.dm, %bb.dj
  %i.im = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !94424, !noalias !93939
  unreachable, !dbg !94424

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs2g09Ig8GZd6_13polars_stream.exit.i.i: ; preds = %bb.dj, %bb.di, %bb.dh
  call void @llvm.experimental.noalias.scope.decl(metadata !93941), !dbg !94415
  %i.in = load ptr, ptr %i.g, align 8, !dbg !94425, !alias.scope !93941, !noalias !93927, !noundef !2279 ; 2 uses
  %i.io = icmp eq ptr %i.in, null, !dbg !94425
  br i1 %i.io, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs2g09Ig8GZd6_13polars_stream.exit13.i.i, label %bb.dt, !dbg !94425

bb.dt:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs2g09Ig8GZd6_13polars_stream.exit.i.i
  %i.ip = atomicrmw add ptr %i.in, i64 -1 release, align 8, !dbg !94426, !noalias !93942
  %i.iq = icmp eq i64 %i.ip, 1, !dbg !94427
  br i1 %i.iq, label %bb.du, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs2g09Ig8GZd6_13polars_stream.exit13.i.i, !dbg !94427

bb.du:                                            ; preds = %bb.dt
  fence acquire, !dbg !94428
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EE9drop_slowCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #38
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs2g09Ig8GZd6_13polars_stream.exit13.i.i unwind label %bb.ds, !dbg !94429, !noalias !93939

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs2g09Ig8GZd6_13polars_stream.exit13.i.i: ; preds = %bb.du, %bb.dt, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs2g09Ig8GZd6_13polars_stream.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !93943), !dbg !94415
  call void @llvm.experimental.noalias.scope.decl(metadata !93944), !dbg !94430
  %i.ir = load ptr, ptr %i.h, align 8, !dbg !94431, !alias.scope !93945, !noalias !93927, !nonnull !2279, !noundef !2279
  %i.is = atomicrmw add ptr %i.ir, i64 -1 release, align 8, !dbg !94432, !noalias !93946
  %i.it = icmp eq i64 %i.is, 1, !dbg !94433
  br i1 %i.it, label %bb.dv, label %.body164.i.a, !dbg !94433

bb.dv:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs2g09Ig8GZd6_13polars_stream.exit13.i.i
  fence acquire, !dbg !94434
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h) #38
          to label %.body164.i.a unwind label %bb.ds, !dbg !94435, !noalias !93939

bb.dw:                                            ; preds = %bb.dr, %bb.do
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i, %bb.dr ], [ -9223372036854775808, %bb.do ], !dbg !94436
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ho, i64 104, !dbg !94437
  %i.iv = load i64, ptr %i.iu, align 8, !dbg !94437, !alias.scope !93926, !noalias !93839, !noundef !2279
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ah, i64 80, !dbg !94424
  store ptr %i.hq, ptr %i.iw, align 8, !dbg !94424, !alias.scope !93925, !noalias !93846
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ah, i64 88, !dbg !94424
  store ptr %i.hu, ptr %i.ix, align 8, !dbg !94424, !alias.scope !93925, !noalias !93846
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ah, i64 96, !dbg !94424
  store ptr %i.hy, ptr %i.iy, align 8, !dbg !94424, !alias.scope !93925, !noalias !93846
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !dbg !94424, !noalias !93947
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ah, i64 32, !dbg !94424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iz, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !94424, !noalias !93947
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ah, i64 56, !dbg !94424
  store i64 %.sroa.0.0.i.i, ptr %i.ja, align 8, !dbg !94424, !alias.scope !93925, !noalias !93846
  %.sroa.5.0..sroa_idx.i163.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 64, !dbg !94424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i163.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, i64 16, i1 false), !dbg !94424, !noalias !93947
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ah, i64 104, !dbg !94424
  store i64 %i.iv, ptr %i.jb, align 8, !dbg !94424, !alias.scope !93925, !noalias !93846
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i), !dbg !94415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !94415, !noalias !93927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !94415, !noalias !93927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !94415, !noalias !93927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !94415, !noalias !93927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !94415, !noalias !93927
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ay, i64 304, !dbg !94438
  %i.jd = load i32, ptr %i.jc, align 8, !dbg !94438, !range !2624, !alias.scope !93840, !noundef !2279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !94439, !noalias !93846
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false), !dbg !94439, !noalias !93839
  %i.je = load i64, ptr %i.ay, align 8, !dbg !94440, !range !2484, !alias.scope !93840, !noundef !2279
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ay, i64 8, !dbg !94440
  %i.jg = load i64, ptr %i.jf, align 8, !dbg !94440, !alias.scope !93840
  invoke void @_RNvMNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6readerINtB2_10FileReaderNtNtCsh8eZTKRCwoO_3std2fs4FileE3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([360 x i8]) align 8 captures(none) dereferenceable(360) %i.af, i32 noundef %i.jd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ae, i64 noundef %i.je, i64 %i.jg)
          to label %bb.dx unwind label %bb.cu, !dbg !94441, !noalias !93839

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !94442, !noalias !93846
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.639.i), !dbg !94443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !94443, !noalias !93846
  %i.jh = load ptr, ptr %i.aj, align 8, !dbg !94444, !noalias !93846, !nonnull !2279, !noundef !2279
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16, !dbg !94445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !94446, !noalias !93846
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ay, i64 264, !dbg !94446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.jj, i64 32, i1 false), !dbg !94446, !noalias !93839
  invoke void @_RINvNtCslpwjCj2YNBy_9polars_io6shared13finish_readerINtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6reader10FileReaderNtNtCsh8eZTKRCwoO_3std2fs4FileEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ad, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(360) %i.af, i1 noundef zeroext %i.bx, i64 noundef 0, i64 undef, ptr noundef null, ptr undef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ji, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ac)
          to label %bb.dy unwind label %bb.cu, !dbg !94443, !noalias !93839

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !94447, !noalias !93846
  %i.jk = load i64, ptr %i.ad, align 8, !dbg !94448, !range !2639, !noalias !93846, !noundef !2279 ; 2 uses
  %.not120.i = icmp eq i64 %i.jk, 18, !dbg !94448
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ad, i64 8, !dbg !94449
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.639.i, ptr noundef nonnull align 8 dereferenceable(48) %i.jl, i64 48, i1 false), !dbg !94449, !noalias !93846
  br i1 %.not120.i, label %bb.ea, label %bb.dz, !dbg !94450

bb.dz:                                            ; preds = %bb.dy
  %.sroa.6107.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 56, !dbg !94451
  %.sroa.3110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 56, !dbg !94452
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3110.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6107.0..sroa_idx.i, i64 16, i1 false), !dbg !94451, !noalias !93840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !94453, !noalias !93846
  %.sroa.2109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8, !dbg !94452
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2109.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.639.i, i64 48, i1 false), !dbg !94453, !noalias !93840
  store i64 %i.jk, ptr %i.az, align 8, !dbg !94452, !alias.scope !93839
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.639.i), !dbg !94454
  br label %bb.fd, !dbg !94455

bb.ea:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !94453, !noalias !93846
  %i.jm = getelementptr inbounds nuw i8, ptr %i.az, i64 8, !dbg !94456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.jm, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.639.i, i64 48, i1 false), !dbg !94443, !noalias !93840
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.639.i), !dbg !94454
  store i64 18, ptr %i.az, align 8, !dbg !94456, !alias.scope !93839
  call void @llvm.experimental.noalias.scope.decl(metadata !93951), !dbg !94372
  call void @llvm.experimental.noalias.scope.decl(metadata !93952), !dbg !94457
  %i.jn = load ptr, ptr %i.aj, align 8, !dbg !94458, !alias.scope !93953, !noalias !93846, !nonnull !2279, !noundef !2279
  %i.jo = atomicrmw add ptr %i.jn, i64 -1 release, align 8, !dbg !94459, !noalias !93954
  %i.jp = icmp eq i64 %i.jo, 1, !dbg !94460
  br i1 %i.jp, label %bb.eb, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit167.i, !dbg !94460

bb.eb:                                            ; preds = %bb.ea
  fence acquire, !dbg !94461
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aj) #38
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit167.i unwind label %bb.cd, !dbg !94462, !noalias !93839

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit167.i: ; preds = %bb.eb, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !94372, !noalias !93846
  %i.jq = trunc nuw i8 %.sroa.046.2.i to i1, !dbg !94313
  br i1 %i.jq, label %bb.ef, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit172.i, !dbg !94313

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit172.i: ; preds = %bb.eg, %bb.ef, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit167.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !94313, !noalias !93846
  %i.jr = load i64, ptr %i.gb, align 8, !dbg !94463, !range !2623, !alias.scope !93955, !noundef !2279
  %i.js = icmp eq i64 %i.jr, -9223372036854775808, !dbg !94463
  br i1 %i.js, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECs2g09Ig8GZd6_13polars_stream.exit.i, label %bb.ec, !dbg !94463

bb.ec:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit172.i
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gb)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECs2g09Ig8GZd6_13polars_stream.exit.i.i unwind label %bb.ed, !dbg !94464, !noalias !93839

bb.ed:                                            ; preds = %bb.ec
  %i.jt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gb)
          to label %.body168.i unwind label %bb.ee, !dbg !94465, !noalias !93839

bb.ee:                                            ; preds = %bb.ed
  %i.ju = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !94464, !noalias !93839
  unreachable, !dbg !94464

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECs2g09Ig8GZd6_13polars_stream.exit.i.i: ; preds = %bb.ec
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gb)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.eh, !dbg !94466, !noalias !93839

bb.ef:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit167.i
  call void @llvm.experimental.noalias.scope.decl(metadata !93956), !dbg !94313
  call void @llvm.experimental.noalias.scope.decl(metadata !93957), !dbg !94467
  %i.jv = load ptr, ptr %i.an, align 8, !dbg !94468, !alias.scope !93958, !noalias !93846, !nonnull !2279, !noundef !2279
  %i.jw = atomicrmw add ptr %i.jv, i64 -1 release, align 8, !dbg !94469, !noalias !93959
  %i.jx = icmp eq i64 %i.jw, 1, !dbg !94470
  br i1 %i.jx, label %bb.eg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit172.i, !dbg !94470

bb.eg:                                            ; preds = %bb.ef
  fence acquire, !dbg !94471
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.an) #38
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit172.i unwind label %bb.f, !dbg !94472, !noalias !93839

bb.eh:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECs2g09Ig8GZd6_13polars_stream.exit.i.i
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %.body168.i, !dbg !94122

.body168.i:                                       ; preds = %bb.eh, %bb.ed
  %eh.lpad-body169.i = phi { ptr, i32 } [ %i.jy, %bb.eh ], [ %i.jt, %bb.ed ]
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ay, i64 64, !dbg !94122
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.jz) #33
          to label %.body173.i unwind label %bb.fc, !dbg !94122, !noalias !93839

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECs2g09Ig8GZd6_13polars_stream.exit.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit172.i
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ay, i64 64, !dbg !94122 ; 4 uses
  %i.kb = load i64, ptr %i.ka, align 8, !dbg !94473, !range !2623, !alias.scope !93960, !noundef !2279
  %i.kc = icmp eq i64 %i.kb, -9223372036854775808, !dbg !94473
  br i1 %i.kc, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECs2g09Ig8GZd6_13polars_stream.exit.i, label %bb.ei, !dbg !94473

bb.ei:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECs2g09Ig8GZd6_13polars_stream.exit.i
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ka)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECs2g09Ig8GZd6_13polars_stream.exit.i.i unwind label %bb.ej, !dbg !94474, !noalias !93839

bb.ej:                                            ; preds = %bb.ei
  %i.kd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ka)
          to label %.body173.i unwind label %bb.ek, !dbg !94475, !noalias !93839

bb.ek:                                            ; preds = %bb.ej
  %i.ke = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !94474, !noalias !93839
  unreachable, !dbg !94474

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECs2g09Ig8GZd6_13polars_stream.exit.i.i: ; preds = %bb.ei
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ka)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.el, !dbg !94476, !noalias !93839

.body173.i:                                       ; preds = %bb.el, %bb.ej, %.body168.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body169.i, %.body168.i ], [ %i.kg, %bb.el ], [ %i.kd, %bb.ej ]
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ay, i64 224, !dbg !94122
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(40) %i.kf) #33
          to label %.body177.i unwind label %bb.fc, !dbg !94122, !noalias !93839

bb.el:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECs2g09Ig8GZd6_13polars_stream.exit.i.i
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %.body173.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECs2g09Ig8GZd6_13polars_stream.exit.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECs2g09Ig8GZd6_13polars_stream.exit.i
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ay, i64 247, !dbg !94477
  %i.ki = load i8, ptr %i.kh, align 1, !dbg !94477, !range !2632, !alias.scope !93961, !noundef !2279
  switch i8 %i.ki, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit.i.i.i [
    i8 -38, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECs2g09Ig8GZd6_13polars_stream.exit.i
    i8 -40, label %bb.em
  ], !dbg !94477, !prof !2633

bb.em:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECs2g09Ig8GZd6_13polars_stream.exit.i
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ay, i64 224, !dbg !94122
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.kj)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit.i.i.i unwind label %bb.en, !dbg !94478, !noalias !93839

bb.en:                                            ; preds = %bb.em
  %i.kk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ay, i64 248, !dbg !94479 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93962), !dbg !94479
  call void @llvm.experimental.noalias.scope.decl(metadata !93963), !dbg !94480
  call void @llvm.experimental.noalias.scope.decl(metadata !93964), !dbg !94481
  %i.km = load ptr, ptr %i.kl, align 8, !dbg !94482, !alias.scope !93965, !nonnull !2279, !noundef !2279
  %i.kn = atomicrmw add ptr %i.km, i64 -1 release, align 8, !dbg !94483, !noalias !93966
  %i.ko = icmp eq i64 %i.kn, 1, !dbg !94484
  br i1 %i.ko, label %bb.eo, label %.body177.i, !dbg !94484

bb.eo:                                            ; preds = %bb.en
  fence acquire, !dbg !94485
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.kl) #38
          to label %.body177.i unwind label %bb.eq, !dbg !94486, !noalias !93839

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit.i.i.i: ; preds = %bb.em, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECs2g09Ig8GZd6_13polars_stream.exit.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ay, i64 248, !dbg !94479 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93967), !dbg !94479
  call void @llvm.experimental.noalias.scope.decl(metadata !93968), !dbg !94487
  call void @llvm.experimental.noalias.scope.decl(metadata !93969), !dbg !94488
  %i.kq = load ptr, ptr %i.kp, align 8, !dbg !94489, !alias.scope !93970, !nonnull !2279, !noundef !2279
  %i.kr = atomicrmw add ptr %i.kq, i64 -1 release, align 8, !dbg !94490, !noalias !93971
  %i.ks = icmp eq i64 %i.kr, 1, !dbg !94491
  br i1 %i.ks, label %bb.ep, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !94491

bb.ep:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit.i.i.i
  fence acquire, !dbg !94492
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.kp) #38
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.er, !dbg !94493, !noalias !93839

bb.eq:                                            ; preds = %bb.eo
  %i.kt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !94479, !noalias !93839
  unreachable, !dbg !94479

.body177.i:                                       ; preds = %bb.er, %bb.eo, %bb.en, %.body173.i
  %.pn122.i = phi { ptr, i32 } [ %.pn.i, %.body173.i ], [ %i.ku, %bb.er ], [ %i.kk, %bb.eo ], [ %i.kk, %bb.en ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.bu) #33
          to label %.body179.i unwind label %bb.fc, !dbg !94122, !noalias !93839

bb.er:                                            ; preds = %bb.ep
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %.body177.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.ep, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECs2g09Ig8GZd6_13polars_stream.exit.i
  %i.kv = load i64, ptr %i.bu, align 8, !dbg !94494, !range !2623, !alias.scope !93972, !noundef !2279
  %i.kw = icmp eq i64 %i.kv, -9223372036854775808, !dbg !94494
  br i1 %i.kw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECs2g09Ig8GZd6_13polars_stream.exit.i, label %bb.es, !dbg !94494

bb.es:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECs2g09Ig8GZd6_13polars_stream.exit.i
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECs2g09Ig8GZd6_13polars_stream.exit.i.i.i unwind label %bb.et, !dbg !94495, !noalias !93839

bb.et:                                            ; preds = %bb.es
  %i.kx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %.body179.i unwind label %bb.eu, !dbg !94496, !noalias !93839

bb.eu:                                            ; preds = %bb.et
  %i.ky = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !94495, !noalias !93839
  unreachable, !dbg !94495

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECs2g09Ig8GZd6_13polars_stream.exit.i.i.i: ; preds = %bb.es
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.ew, !dbg !94497, !noalias !93839

.body179.i:                                       ; preds = %bb.ew, %bb.et, %.body177.i
  %.pn124.i = phi { ptr, i32 } [ %.pn122.i, %.body177.i ], [ %i.lc, %bb.ew ], [ %i.kx, %bb.et ] ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ay, i64 112, !dbg !94122 ; 2 uses
  %i.la = load i64, ptr %i.kz, align 8, !dbg !94498, !range !2623, !alias.scope !93973, !noundef !2279
  %i.lb = icmp eq i64 %i.la, -9223372036854775808, !dbg !94498
  br i1 %i.lb, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit.i, label %bb.ev, !dbg !94498

bb.ev:                                            ; preds = %.body179.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.kz)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.fc, !dbg !94498, !noalias !93839

bb.ew:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECs2g09Ig8GZd6_13polars_stream.exit.i.i.i
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %.body179.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECs2g09Ig8GZd6_13polars_stream.exit.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECs2g09Ig8GZd6_13polars_stream.exit.i
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ay, i64 112, !dbg !94122 ; 2 uses
  %i.le = load i64, ptr %i.ld, align 8, !dbg !94499, !range !2623, !alias.scope !93974, !noundef !2279
  %i.lf = icmp eq i64 %i.le, -9223372036854775808, !dbg !94499
  br i1 %i.lf, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit184.i, label %bb.ex, !dbg !94499

bb.ex:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECs2g09Ig8GZd6_13polars_stream.exit.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.ld)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit184.i unwind label %bb.fa, !dbg !94499, !noalias !93839

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.fa, %bb.ev, %.body179.i
  %.pn126.i = phi { ptr, i32 } [ %i.ll, %bb.fa ], [ %.pn124.i, %bb.ev ], [ %.pn124.i, %.body179.i ] ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ay, i64 296, !dbg !94122 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93975), !dbg !94122
  %i.lh = load ptr, ptr %i.lg, align 8, !dbg !94500, !alias.scope !93976, !noundef !2279 ; 2 uses
  %i.li = icmp eq ptr %i.lh, null, !dbg !94500
  br i1 %i.li, label %.body, label %bb.ey, !dbg !94500

bb.ey:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit.i
  %i.lj = atomicrmw add ptr %i.lh, i64 -1 release, align 8, !dbg !94501, !noalias !93977
  %i.lk = icmp eq i64 %i.lj, 1, !dbg !94502
  br i1 %i.lk, label %bb.ez, label %.body, !dbg !94502

bb.ez:                                            ; preds = %bb.ey
  fence acquire, !dbg !94503
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.lg) #38
          to label %.body unwind label %bb.fc, !dbg !94504, !noalias !93839

bb.fa:                                            ; preds = %bb.ex
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit184.i: ; preds = %bb.ex, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECs2g09Ig8GZd6_13polars_stream.exit.i
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ay, i64 296, !dbg !94122 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93978), !dbg !94122
  %i.ln = load ptr, ptr %i.lm, align 8, !dbg !94505, !alias.scope !93979, !noundef !2279 ; 2 uses
  %i.lo = icmp eq ptr %i.ln, null, !dbg !94505
  br i1 %i.lo, label %bb.hn, label %bb.fb, !dbg !94505

bb.fb:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit184.i
  %i.lp = atomicrmw add ptr %i.ln, i64 -1 release, align 8, !dbg !94506, !noalias !93980
  %i.lq = icmp eq i64 %i.lp, 1, !dbg !94507
  br i1 %i.lq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECs2g09Ig8GZd6_13polars_stream.exit188.sink.split.i, label %bb.hn, !dbg !94507

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECs2g09Ig8GZd6_13polars_stream.exit188.sink.split.i: ; preds = %bb.gx, %bb.fb
  %.sink.i = phi ptr [ %i.pc, %bb.gx ], [ %i.lm, %bb.fb ]
  fence acquire, !dbg !94508
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sink.i) #38
          to label %bb.hn unwind label %bb.hm, !dbg !94509

bb.fc:                                            ; preds = %bb.hh, %bb.hf, %bb.hd, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECs2g09Ig8GZd6_13polars_stream.exit241.i, %bb.hb, %bb.ha, %.body150.thread.i, %bb.gz, %bb.gy, %bb.gv, %bb.gr, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECs2g09Ig8GZd6_13polars_stream.exit237.i, %.body209.i, %.body195.i, %.body201.i.a, %bb.fy, %bb.fn, %bb.ez, %bb.ev, %.body177.i, %.body173.i, %.body168.i, %bb.cv
  %i.lr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !94510, !noalias !93839
  unreachable, !dbg !94510

bb.fd:                                            ; preds = %bb.dz, %bb.cx
  %.sroa.049.6.i = phi i8 [ 1, %bb.cx ], [ 0, %bb.dz ], !dbg !94123 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93981), !dbg !94372
  call void @llvm.experimental.noalias.scope.decl(metadata !93982), !dbg !94511
  %i.ls = load ptr, ptr %i.aj, align 8, !dbg !94512, !alias.scope !93983, !noalias !93846, !nonnull !2279, !noundef !2279
  %i.lt = atomicrmw add ptr %i.ls, i64 -1 release, align 8, !dbg !94513, !noalias !93984
  %i.lu = icmp eq i64 %i.lt, 1, !dbg !94514
  br i1 %i.lu, label %bb.fe, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit190.i, !dbg !94514

bb.fe:                                            ; preds = %bb.fd
  fence acquire, !dbg !94515
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aj) #38
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit190.i unwind label %bb.cd, !dbg !94516, !noalias !93839

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit190.i: ; preds = %bb.fe, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !94372, !noalias !93846
  %i.lv = trunc nuw i8 %.sroa.046.2.i to i1, !dbg !94313
  br i1 %i.lv, label %bb.ff, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit192.i, !dbg !94313

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit192.i: ; preds = %bb.fg, %bb.ff, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit190.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !94313, !noalias !93846
  %i.lw = trunc nuw i8 %.sroa.049.6.i to i1, !dbg !94122
  br i1 %i.lw, label %.thread264.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECs2g09Ig8GZd6_13polars_stream.exit204.i, !dbg !94122

bb.ff:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit190.i
  call void @llvm.experimental.noalias.scope.decl(metadata !93985), !dbg !94313
  call void @llvm.experimental.noalias.scope.decl(metadata !93986), !dbg !94517
  %i.lx = load ptr, ptr %i.an, align 8, !dbg !94518, !alias.scope !93987, !noalias !93846, !nonnull !2279, !noundef !2279
  %i.ly = atomicrmw add ptr %i.lx, i64 -1 release, align 8, !dbg !94519, !noalias !93988
  %i.lz = icmp eq i64 %i.ly, 1, !dbg !94520
  br i1 %i.lz, label %bb.fg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit192.i, !dbg !94520

bb.fg:                                            ; preds = %bb.ff
  fence acquire, !dbg !94521
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.an) #38
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit192.i unwind label %bb.f, !dbg !94522, !noalias !93839

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECs2g09Ig8GZd6_13polars_stream.exit204.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs2g09Ig8GZd6_13polars_stream.exit.i200.i, %.thread264.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit192.i
  %.sroa.049.9.i = phi i8 [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit192.i ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs2g09Ig8GZd6_13polars_stream.exit.i200.i ], [ 1, %.thread264.i ], !dbg !94121 ; 8 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ay, i64 40, !dbg !94122 ; 4 uses
  %i.mb = load i64, ptr %i.ma, align 8, !dbg !94523, !range !2623, !alias.scope !93989, !noundef !2279
  %i.mc = icmp eq i64 %i.mb, -9223372036854775808, !dbg !94523
  br i1 %i.mc, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECs2g09Ig8GZd6_13polars_stream.exit198.i, label %bb.fh, !dbg !94523

bb.fh:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECs2g09Ig8GZd6_13polars_stream.exit204.i
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ma)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECs2g09Ig8GZd6_13polars_stream.exit.i194.i unwind label %bb.fi, !dbg !94524, !noalias !93839

bb.fi:                                            ; preds = %bb.fh
  %i.md = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ma)
          to label %.body195.i unwind label %bb.fj, !dbg !94525, !noalias !93839

bb.fj:                                            ; preds = %bb.fi
  %i.me = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !94524, !noalias !93839
  unreachable, !dbg !94524

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECs2g09Ig8GZd6_13polars_stream.exit.i194.i: ; preds = %bb.fh
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ma)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECs2g09Ig8GZd6_13polars_stream.exit198.i unwind label %bb.gb, !dbg !94526, !noalias !93839

.thread264.i:                                     ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECs2g09Ig8GZd6_13polars_stream.exit192.i, %bb.br, %bb.bu, %bb.bx, %bb.fs, %bb.fv
  %.val.i156.sink.in.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 304, !dbg !94122
  %.val.i156.sink.i = load i32, ptr %.val.i156.sink.in.i, align 8, !dbg !94527, !range !2624, !alias.scope !93840, !noundef !2279
  %i.mf = call noundef i32 @close(i32 noundef %.val.i156.sink.i) #36, !dbg !94528, !noalias !93839 ; 0 uses
  %i.mg = load i64, ptr %i.bm, align 8, !dbg !94529, !range !2623, !alias.scope !93990, !noundef !2279
  %i.mh = icmp eq i64 %i.mg, -9223372036854775808, !dbg !94529
  br i1 %i.mh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECs2g09Ig8GZd6_13polars_stream.exit204.i, label %bb.fk, !dbg !94529

bb.fk:                                            ; preds = %.thread264.i
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs2g09Ig8GZd6_13polars_stream.exit.i200.i unwind label %bb.fl, !dbg !94530, !noalias !93839

bb.fl:                                            ; preds = %bb.fk
  %i.mi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %.body201.i.a unwind label %bb.fm, !dbg !94531, !noalias !93839

bb.fm:                                            ; preds = %bb.fl
  %i.mj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !94530, !noalias !93839
  unreachable, !dbg !94530

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs2g09Ig8GZd6_13polars_stream.exit.i200.i: ; preds = %bb.fk
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECs2g09Ig8GZd6_13polars_stream.exit204.i unwind label %2, !dbg !94532, !noalias !93839

.body.thread.i:                                   ; preds = %bb.cq, %.thread256.i, %.body.i
  %.pn128263.i = phi { ptr, i32 } [ %eh.lpad-body154.i.a, %.thread256.i ], [ %.pn128.i, %.body.i ], [ %i.hg, %bb.cq ] ; 2 uses
  %.sroa.049.2262.i = phi i8 [ 1, %.thread256.i ], [ %.sroa.049.2.i, %.body.i ], [ 1, %bb.cq ] ; 2 uses
  %.sroa.052.2261.i = phi i8 [ 1, %.thread256.i ], [ %.sroa.052.2.i, %.body.i ], [ 1, %bb.cq ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93991), !dbg !94313
  call void @llvm.experimental.noalias.scope.decl(metadata !93992), !dbg !94533
  %i.mk = load ptr, ptr %i.an, align 8, !dbg !94534, !alias.scope !93993, !noalias !93846, !nonnull !2279, !noundef !2279
  %i.ml = atomicrmw add ptr %i.mk, i64 -1 release, align 8, !dbg !94535, !noalias !93994
  %i.mm = icmp eq i64 %i.ml, 1, !dbg !94536
  br i1 %i.mm, label %bb.fn, label %.body150.i, !dbg !94536

bb.fn:                                            ; preds = %.body.thread.i
  fence acquire, !dbg !94537
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.an) #38
          to label %.body150.i unwind label %bb.fc, !dbg !94538, !noalias !93839

bb.fo:                                            ; preds = %bb.h
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ay, i64 8, !dbg !94129
  %i.mo = load i64, ptr %i.mn, align 8, !dbg !94539, !alias.scope !93840, !noundef !2279
  br label %bb.fq, !dbg !94540

bb.fp:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !dbg !94541, !noalias !93846
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ay, i64 304, !dbg !94542
  invoke void @_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file13get_row_countNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.as, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.mp)
          to label %bb.fr unwind label %bb.f, !dbg !94541, !noalias !93839

bb.fq:                                            ; preds = %bb.ft, %bb.fo
  %.sroa.01.0.i = phi i64 [ %i.mo, %bb.fo ], [ %i.mw, %bb.ft ], !dbg !94123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !dbg !94543, !noalias !93846
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ar, i64 24, !dbg !94544
  store i64 %.sroa.01.0.i, ptr %i.mq, align 8, !dbg !94544, !noalias !93846
  store i64 0, ptr %i.ar, align 8, !dbg !94544, !noalias !93846
  %.sroa.465.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8, !dbg !94544
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.465.0..sroa_idx.i, align 8, !dbg !94544, !noalias !93846
  %.sroa.566.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16, !dbg !94544
  store i64 0, ptr %.sroa.566.0..sroa_idx.i, align 8, !dbg !94544, !noalias !93846
  %.sroa.468.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 40, !dbg !94544
  store i32 3, ptr %.sroa.468.0..sroa_idx.i, align 8, !dbg !94544, !noalias !93846
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ay, i64 264, !dbg !94545 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ay, i64 287, !dbg !94545
  %i.mt = load i8, ptr %i.ms, align 1, !dbg !94545, !range !2632, !alias.scope !93840, !noundef !2279 ; 2 uses
  %.not131.i = icmp eq i8 %i.mt, -38, !dbg !94545
  br i1 %.not131.i, label %bb.fv, label %bb.fu, !dbg !94546

bb.fr:                                            ; preds = %bb.fp
  %i.mu = load i64, ptr %i.as, align 8, !dbg !94547, !range !2639, !noalias !93846, !noundef !2279 ; 2 uses
  %.not130.i = icmp eq i64 %i.mu, 18, !dbg !94547
  %i.mv = getelementptr inbounds nuw i8, ptr %i.as, i64 8, !dbg !94548
  %i.mw = load i64, ptr %i.mv, align 8, !dbg !94548, !noalias !93846 ; 2 uses
  br i1 %.not130.i, label %bb.ft, label %bb.fs, !dbg !94549

bb.fs:                                            ; preds = %bb.fr
  %.sroa.660.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16, !dbg !94550
  %.sroa.363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16, !dbg !94551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.363.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.660.0..sroa_idx.i, i64 56, i1 false), !dbg !94550, !noalias !93840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !94552, !noalias !93846
  store i64 %i.mu, ptr %i.az, align 8, !dbg !94551, !alias.scope !93839
  %.sroa.262.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8, !dbg !94551
  store i64 %i.mw, ptr %.sroa.262.0..sroa_idx.i, align 8, !dbg !94551, !alias.scope !93839
  br label %.thread264.i, !dbg !94305

bb.ft:                                            ; preds = %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !94552, !noalias !93846
  br label %bb.fq, !dbg !94540

bb.fu:                                            ; preds = %bb.fq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !dbg !94553, !noalias !93846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !94554, !noalias !93846
  %i.mx = icmp eq i8 %i.mt, -40, !dbg !94555
  br i1 %i.mx, label %bb.fw, label %bb.fx, !dbg !94555

bb.fv:                                            ; preds = %bb.ga, %bb.fq
  %i.my = getelementptr inbounds nuw i8, ptr %i.az, i64 8, !dbg !94556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.my, ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i64 48, i1 false), !dbg !94557, !noalias !93840
  store i64 18, ptr %i.az, align 8, !dbg !94556, !alias.scope !93839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !94558, !noalias !93846
  br label %.thread264.i, !dbg !94559

bb.fw:                                            ; preds = %bb.fu
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mr)
          to label %bb.fz unwind label %bb.fy, !dbg !94560, !noalias !93839

bb.fx:                                            ; preds = %bb.fu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.mr, i64 24, i1 false), !dbg !94561, !noalias !93839
  br label %bb.fz, !dbg !94562

bb.fy:                                            ; preds = %bb.fz, %bb.fw
  %i.mz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(48) %i.ar) #33
          to label %.body150.thread.i unwind label %bb.fc, !dbg !94558, !noalias !93839

bb.fz:                                            ; preds = %bb.fx, %bb.fw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !dbg !94563, !noalias !93846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !94564, !noalias !93846
  %i.na = getelementptr inbounds nuw i8, ptr %i.ay, i64 288, !dbg !94565
  %i.nb = load i32, ptr %i.na, align 8, !dbg !94565, !alias.scope !93840, !noundef !2279
  %i.nc = invoke noundef nonnull align 8 ptr @_RNvMNtCs1LHh8CLbVkQ_11polars_core5frameNtNtB2_9dataframe9DataFrame18with_row_index_mut(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aq, i32 noundef 1, i32 %i.nb)
          to label %bb.ga unwind label %bb.fy, !dbg !94566, !noalias !93839 ; 0 uses

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !94567, !noalias !93846
  br label %bb.fv, !dbg !94568

.body201.i.a:                                     ; preds = %2, %bb.fl
  %.pn134.i = phi { ptr, i32 } [ %i.mi, %bb.fl ], [ %3, %2 ]
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ay, i64 40, !dbg !94122
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.nd) #33
          to label %.body195.i unwind label %bb.fc, !dbg !94122, !noalias !93839

2:                                                ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs2g09Ig8GZd6_13polars_stream.exit.i200.i
  %3 = landingpad { ptr, i32 }
          cleanup
  br label %.body201.i.a

.body195.i:                                       ; preds = %bb.gb, %.body201.i.a, %bb.fi
  %.sroa.049.12.i = phi i8 [ 1, %.body201.i.a ], [ %.sroa.049.9.i, %bb.fi ], [ %.sroa.049.9.i, %bb.gb ], !dbg !94121
  %.pn136.i = phi { ptr, i32 } [ %.pn134.i, %.body201.i.a ], [ %i.md, %bb.fi ], [ %i.nf, %bb.gb ]
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ay, i64 64, !dbg !94122
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.ne) #33
          to label %.body209.i unwind label %bb.fc, !dbg !94122, !noalias !93839

bb.gb:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECs2g09Ig8GZd6_13polars_stream.exit.i194.i
  %i.nf = landingpad { ptr, i32 }
          cleanup
  br label %.body195.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECs2g09Ig8GZd6_13polars_stream.exit198.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECs2g09Ig8GZd6_13polars_stream.exit.i194.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECs2g09Ig8GZd6_13polars_stream.exit204.i
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ay, i64 64, !dbg !94122 ; 4 uses
  %i.nh = load i64, ptr %i.ng, align 8, !dbg !94569, !range !2623, !alias.scope !93997, !noundef !2279
  %i.ni = icmp eq i64 %i.nh, -9223372036854775808, !dbg !94569
  br i1 %i.ni, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECs2g09Ig8GZd6_13polars_stream.exit212.i, label %bb.gc, !dbg !94569

bb.gc:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECs2g09Ig8GZd6_13polars_stream.exit198.i
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ng)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECs2g09Ig8GZd6_13polars_stream.exit.i208.i unwind label %bb.gd, !dbg !94570, !noalias !93839

bb.gd:                                            ; preds = %bb.gc
  %i.nj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ng)
          to label %.body209.i unwind label %bb.ge, !dbg !94571, !noalias !93839

bb.ge:                                            ; preds = %bb.gd
  %i.nk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !94570, !noalias !93839
  unreachable, !dbg !94570

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECs2g09Ig8GZd6_13polars_stream.exit.i208.i: ; preds = %bb.gc
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ng)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECs2g09Ig8GZd6_13polars_stream.exit212.i unwind label %bb.gf, !dbg !94572, !noalias !93839

.body209.i:                                       ; preds = %bb.gf, %bb.gd, %.body195.i
  %.sroa.049.13.i = phi i8 [ %.sroa.049.12.i, %.body195.i ], [ %.sroa.049.9.i, %bb.gd ], [ %.sroa.049.9.i, %bb.gf ], !dbg !94121
  %.pn138.i = phi { ptr, i32 } [ %.pn136.i, %.body195.i ], [ %i.nj, %bb.gd ], [ %i.nm, %bb.gf ]
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ay, i64 224, !dbg !94122
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(40) %i.nl) #33
          to label %.body216.i unwind label %bb.fc, !dbg !94122, !noalias !93839

bb.gf:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECs2g09Ig8GZd6_13polars_stream.exit.i208.i
  %i.nm = landingpad { ptr, i32 }
          cleanup
  br label %.body209.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECs2g09Ig8GZd6_13polars_stream.exit212.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECs2g09Ig8GZd6_13polars_stream.exit.i208.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECs2g09Ig8GZd6_13polars_stream.exit198.i
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ay, i64 247, !dbg !94573
  %i.no = load i8, ptr %i.nn, align 1, !dbg !94573, !range !2632, !alias.scope !93998, !noundef !2279
  switch i8 %i.no, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit.i.i214.i [
    i8 -38, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECs2g09Ig8GZd6_13polars_stream.exit218.i
    i8 -40, label %bb.gg
  ], !dbg !94573, !prof !2633

bb.gg:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECs2g09Ig8GZd6_13polars_stream.exit212.i
  %i.np = getelementptr inbounds nuw i8, ptr %i.ay, i64 224, !dbg !94122
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.np)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit.i.i214.i unwind label %bb.gh, !dbg !94574, !noalias !93839

bb.gh:                                            ; preds = %bb.gg
  %i.nq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ay, i64 248, !dbg !94575 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93999), !dbg !94575
  call void @llvm.experimental.noalias.scope.decl(metadata !94000), !dbg !94576
  call void @llvm.experimental.noalias.scope.decl(metadata !94001), !dbg !94577
  %i.ns = load ptr, ptr %i.nr, align 8, !dbg !94578, !alias.scope !94002, !nonnull !2279, !noundef !2279
  %i.nt = atomicrmw add ptr %i.ns, i64 -1 release, align 8, !dbg !94579, !noalias !94003
  %i.nu = icmp eq i64 %i.nt, 1, !dbg !94580
  br i1 %i.nu, label %bb.gi, label %.body216.i, !dbg !94580

bb.gi:                                            ; preds = %bb.gh
  fence acquire, !dbg !94581
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.nr) #38
          to label %.body216.i unwind label %bb.gk, !dbg !94582, !noalias !93839

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit.i.i214.i: ; preds = %bb.gg, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECs2g09Ig8GZd6_13polars_stream.exit212.i
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ay, i64 248, !dbg !94575 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94004), !dbg !94575
  call void @llvm.experimental.noalias.scope.decl(metadata !94005), !dbg !94583
  call void @llvm.experimental.noalias.scope.decl(metadata !94006), !dbg !94584
  %i.nw = load ptr, ptr %i.nv, align 8, !dbg !94585, !alias.scope !94007, !nonnull !2279, !noundef !2279
  %i.nx = atomicrmw add ptr %i.nw, i64 -1 release, align 8, !dbg !94586, !noalias !94008
  %i.ny = icmp eq i64 %i.nx, 1, !dbg !94587
  br i1 %i.ny, label %bb.gj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECs2g09Ig8GZd6_13polars_stream.exit218.i, !dbg !94587

bb.gj:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit.i.i214.i
  fence acquire, !dbg !94588
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.nv) #38
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECs2g09Ig8GZd6_13polars_stream.exit218.i unwind label %bb.gl, !dbg !94589, !noalias !93839

bb.gk:                                            ; preds = %bb.gi
  %i.nz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !94575, !noalias !93839
  unreachable, !dbg !94575

.body216.i:                                       ; preds = %bb.gl, %bb.gi, %bb.gh, %.body209.i
  %.sroa.049.14.i = phi i8 [ %.sroa.049.13.i, %.body209.i ], [ %.sroa.049.9.i, %bb.gh ], [ %.sroa.049.9.i, %bb.gi ], [ %.sroa.049.9.i, %bb.gl ], !dbg !94121
  %.pn140.i = phi { ptr, i32 } [ %.pn138.i, %.body209.i ], [ %i.nq, %bb.gh ], [ %i.nq, %bb.gi ], [ %i.od, %bb.gl ] ; 2 uses
  %i.oa = trunc nuw i8 %.sroa.049.14.i to i1, !dbg !94122
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ay, i64 287
  %i.oc = load i8, ptr %i.ob, align 1, !range !2632
  %cond.i235.i = icmp eq i8 %i.oc, -40
  %or.cond131 = select i1 %i.oa, i1 %cond.i235.i, i1 false, !dbg !94122, !prof !3260
  br i1 %or.cond131, label %bb.gy, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECs2g09Ig8GZd6_13polars_stream.exit237.i, !dbg !94122, !prof !3260

bb.gl:                                            ; preds = %bb.gj
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %.body216.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECs2g09Ig8GZd6_13polars_stream.exit218.i: ; preds = %bb.gj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit.i.i214.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECs2g09Ig8GZd6_13polars_stream.exit212.i
  %i.oe = trunc nuw i8 %.sroa.049.9.i to i1, !dbg !94122
  %i.of = getelementptr inbounds nuw i8, ptr %i.ay, i64 287
  %i.og = load i8, ptr %i.of, align 1, !range !2632
  %cond.i.i = icmp eq i8 %i.og, -40
  %or.cond129 = select i1 %i.oe, i1 %cond.i.i, i1 false, !dbg !94122, !prof !3260
  br i1 %or.cond129, label %bb.gp, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !94122, !prof !3260

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.gp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECs2g09Ig8GZd6_13polars_stream.exit218.i
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ay, i64 88, !dbg !94122 ; 4 uses
  %i.oi = load i64, ptr %i.oh, align 8, !dbg !94590, !range !2623, !alias.scope !94009, !noundef !2279
  %i.oj = icmp eq i64 %i.oi, -9223372036854775808, !dbg !94590
  br i1 %i.oj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECs2g09Ig8GZd6_13polars_stream.exit224.i, label %bb.gm, !dbg !94590

bb.gm:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECs2g09Ig8GZd6_13polars_stream.exit.i
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.oh)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECs2g09Ig8GZd6_13polars_stream.exit.i.i220.i unwind label %bb.gn, !dbg !94591, !noalias !93839

bb.gn:                                            ; preds = %bb.gm
  %i.ok = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.oh)
          to label %.body221.i unwind label %bb.go, !dbg !94592, !noalias !93839

bb.go:                                            ; preds = %bb.gn
  %i.ol = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !94591, !noalias !93839
  unreachable, !dbg !94591

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECs2g09Ig8GZd6_13polars_stream.exit.i.i220.i: ; preds = %bb.gm
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.oh)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECs2g09Ig8GZd6_13polars_stream.exit224.i unwind label %bb.gs, !dbg !94593, !noalias !93839

bb.gp:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECs2g09Ig8GZd6_13polars_stream.exit218.i
  %i.om = getelementptr inbounds nuw i8, ptr %i.ay, i64 264, !dbg !94122
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.om)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.gq, !dbg !94594, !noalias !93839

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECs2g09Ig8GZd6_13polars_stream.exit237.i: ; preds = %bb.gy, %bb.gq, %.body216.i
  %.pn142.i = phi { ptr, i32 } [ %i.oo, %bb.gq ], [ %.pn140.i, %.body216.i ], [ %.pn140.i, %bb.gy ]
  %i.on = getelementptr inbounds nuw i8, ptr %i.ay, i64 88, !dbg !94122
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.on) #33
          to label %.body221.i unwind label %bb.fc, !dbg !94122, !noalias !93839

bb.gq:                                            ; preds = %bb.gp
  %i.oo = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECs2g09Ig8GZd6_13polars_stream.exit237.i

.body221.i:                                       ; preds = %bb.gs, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECs2g09Ig8GZd6_13polars_stream.exit237.i, %bb.gn
  %.pn144.i = phi { ptr, i32 } [ %.pn142.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECs2g09Ig8GZd6_13polars_stream.exit237.i ], [ %i.os, %bb.gs ], [ %i.ok, %bb.gn ] ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.ay, i64 112, !dbg !94122 ; 2 uses
  %i.oq = load i64, ptr %i.op, align 8, !dbg !94595, !range !2623, !alias.scope !94010, !noundef !2279
  %i.or = icmp eq i64 %i.oq, -9223372036854775808, !dbg !94595
  br i1 %i.or, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit227.i, label %bb.gr, !dbg !94595

bb.gr:                                            ; preds = %.body221.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.op)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit227.i unwind label %bb.fc, !dbg !94595, !noalias !93839

bb.gs:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECs2g09Ig8GZd6_13polars_stream.exit.i.i220.i
  %i.os = landingpad { ptr, i32 }
          cleanup
  br label %.body221.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECs2g09Ig8GZd6_13polars_stream.exit224.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECs2g09Ig8GZd6_13polars_stream.exit.i.i220.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECs2g09Ig8GZd6_13polars_stream.exit.i
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ay, i64 112, !dbg !94122 ; 2 uses
  %i.ou = load i64, ptr %i.ot, align 8, !dbg !94596, !range !2623, !alias.scope !94011, !noundef !2279
  %i.ov = icmp eq i64 %i.ou, -9223372036854775808, !dbg !94596
  br i1 %i.ov, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit229.i, label %bb.gt, !dbg !94596

bb.gt:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECs2g09Ig8GZd6_13polars_stream.exit224.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.ot)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit229.i unwind label %bb.gw, !dbg !94596, !noalias !93839

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit227.i: ; preds = %bb.gw, %bb.gr, %.body221.i
  %.pn146.i = phi { ptr, i32 } [ %i.pb, %bb.gw ], [ %.pn144.i, %bb.gr ], [ %.pn144.i, %.body221.i ] ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ay, i64 296, !dbg !94122 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94012), !dbg !94122
  %i.ox = load ptr, ptr %i.ow, align 8, !dbg !94597, !alias.scope !94013, !noundef !2279 ; 2 uses
  %i.oy = icmp eq ptr %i.ox, null, !dbg !94597
  br i1 %i.oy, label %.body, label %bb.gu, !dbg !94597

bb.gu:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit227.i
  %i.oz = atomicrmw add ptr %i.ox, i64 -1 release, align 8, !dbg !94598, !noalias !94014
  %i.pa = icmp eq i64 %i.oz, 1, !dbg !94599
  br i1 %i.pa, label %bb.gv, label %.body, !dbg !94599

bb.gv:                                            ; preds = %bb.gu
  fence acquire, !dbg !94600
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ow) #38
          to label %.body unwind label %bb.fc, !dbg !94601, !noalias !93839

bb.gw:                                            ; preds = %bb.gt
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit227.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit229.i: ; preds = %bb.gt, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECs2g09Ig8GZd6_13polars_stream.exit224.i
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ay, i64 296, !dbg !94122 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94015), !dbg !94122
  %i.pd = load ptr, ptr %i.pc, align 8, !dbg !94602, !alias.scope !94016, !noundef !2279 ; 2 uses
  %i.pe = icmp eq ptr %i.pd, null, !dbg !94602
  br i1 %i.pe, label %bb.hn, label %bb.gx, !dbg !94602

bb.gx:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit229.i
  %i.pf = atomicrmw add ptr %i.pd, i64 -1 release, align 8, !dbg !94603, !noalias !94017
  %i.pg = icmp eq i64 %i.pf, 1, !dbg !94604
  br i1 %i.pg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECs2g09Ig8GZd6_13polars_stream.exit188.sink.split.i, label %bb.hn, !dbg !94604

bb.gy:                                            ; preds = %.body216.i
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ay, i64 264, !dbg !94122
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ph)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECs2g09Ig8GZd6_13polars_stream.exit237.i unwind label %bb.fc, !dbg !94605, !noalias !93839

bb.gz:                                            ; preds = %.body150.thread.i, %.body150.i
  %.pn132255.i = phi { ptr, i32 } [ %.pn132.i, %.body150.i ], [ %.pn132254.i, %.body150.thread.i ] ; 3 uses
  %.sroa.049.0253.i = phi i8 [ %.sroa.049.0.i, %.body150.i ], [ %.sroa.049.0252.i, %.body150.thread.i ]
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ay, i64 40, !dbg !94122
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.pi) #33
          to label %bb.ha unwind label %bb.fc, !dbg !94122, !noalias !93839

.body150.thread.i:                                ; preds = %bb.fy, %bb.bq, %bb.bp, %bb.bo, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECs2g09Ig8GZd6_13polars_stream.exit97.i.i, %bb.l, %.body150.i
  %.pn132254.i = phi { ptr, i32 } [ %.pn132.i, %.body150.i ], [ %i.mz, %bb.fy ], [ %.pn766.i.i, %bb.bo ], [ %.pn766.i.i, %bb.bq ], [ %.pn74.i.i, %bb.l ], [ %.pn7412.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECs2g09Ig8GZd6_13polars_stream.exit97.i.i ], [ %.pn766.i.i, %bb.bp ]
  %.sroa.049.0252.i = phi i8 [ %.sroa.049.0.i, %.body150.i ], [ 1, %bb.fy ], [ 1, %bb.bo ], [ 1, %bb.bq ], [ 1, %bb.l ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECs2g09Ig8GZd6_13polars_stream.exit97.i.i ], [ 1, %bb.bp ]
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ay, i64 304, !dbg !94122
  call void @llvm.experimental.noalias.scope.decl(metadata !94018), !dbg !94122
  %.val.i238.i = load i32, ptr %i.pj, align 8, !dbg !94606, !range !2624, !alias.scope !94019, !noundef !2279
  %i.pk = call noundef i32 @close(i32 noundef %.val.i238.i) #36, !dbg !94607, !noalias !94020 ; 0 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.bm) #33
          to label %bb.gz unwind label %bb.fc, !dbg !94122, !noalias !93839

bb.ha:                                            ; preds = %bb.gz
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ay, i64 64, !dbg !94122
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.pl) #33
          to label %bb.hb unwind label %bb.fc, !dbg !94122, !noalias !93839

bb.hb:                                            ; preds = %bb.ha
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ay, i64 224, !dbg !94122
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(40) %i.pm) #33
          to label %bb.hc unwind label %bb.fc, !dbg !94122, !noalias !93839

bb.hc:                                            ; preds = %bb.hb
  %i.pn = trunc nuw i8 %.sroa.049.0253.i to i1, !dbg !94122
  %i.po = getelementptr inbounds nuw i8, ptr %i.ay, i64 287
  %i.pp = load i8, ptr %i.po, align 1, !range !2632
  %cond.i239.i = icmp eq i8 %i.pp, -40
  %or.cond133 = select i1 %i.pn, i1 %cond.i239.i, i1 false, !dbg !94122, !prof !3260
  br i1 %or.cond133, label %bb.hd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECs2g09Ig8GZd6_13polars_stream.exit241.i, !dbg !94122, !prof !3260

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECs2g09Ig8GZd6_13polars_stream.exit241.i: ; preds = %bb.hd, %bb.hc
  %i.pq = getelementptr inbounds nuw i8, ptr %i.ay, i64 88, !dbg !94122
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file20memory_mapped_hidden3KeyECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.pq) #33
          to label %bb.he unwind label %bb.fc, !dbg !94122, !noalias !93839

bb.hd:                                            ; preds = %bb.hc
  %i.pr = getelementptr inbounds nuw i8, ptr %i.ay, i64 264, !dbg !94122
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.pr)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECs2g09Ig8GZd6_13polars_stream.exit241.i unwind label %bb.fc, !dbg !94608, !noalias !93839

bb.he:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECs2g09Ig8GZd6_13polars_stream.exit241.i
  %i.ps = getelementptr inbounds nuw i8, ptr %i.ay, i64 112, !dbg !94122 ; 2 uses
  %i.pt = load i64, ptr %i.ps, align 8, !dbg !94609, !range !2623, !alias.scope !94021, !noundef !2279
  %i.pu = icmp eq i64 %i.pt, -9223372036854775808, !dbg !94609
  br i1 %i.pu, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit243.i, label %bb.hf, !dbg !94609

bb.hf:                                            ; preds = %bb.he
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.ps)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit243.i unwind label %bb.fc, !dbg !94609, !noalias !93839

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit243.i: ; preds = %bb.hf, %bb.he
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ay, i64 296, !dbg !94122 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94022), !dbg !94122
  %i.pw = load ptr, ptr %i.pv, align 8, !dbg !94610, !alias.scope !94023, !noundef !2279 ; 2 uses
  %i.px = icmp eq ptr %i.pw, null, !dbg !94610
  br i1 %i.px, label %.body, label %bb.hg, !dbg !94610

bb.hg:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit243.i
  %i.py = atomicrmw add ptr %i.pw, i64 -1 release, align 8, !dbg !94611, !noalias !94024
  %i.pz = icmp eq i64 %i.py, 1, !dbg !94612
  br i1 %i.pz, label %bb.hh, label %.body, !dbg !94612

bb.hh:                                            ; preds = %bb.hg
  fence acquire, !dbg !94613
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.pv) #38
          to label %.body unwind label %bb.fc, !dbg !94614, !noalias !93839

bb.hi:                                            ; preds = %bb.c
  %i.qa = load i64, ptr %i.bd, align 8, !dbg !94615, !range !2639, !noundef !2279 ; 2 uses
  %.not63 = icmp eq i64 %i.qa, 18, !dbg !94615
  %i.qb = getelementptr inbounds nuw i8, ptr %i.bd, i64 8, !dbg !94616
  %i.qc = load ptr, ptr %i.qb, align 8, !dbg !94616 ; 2 uses
  br i1 %.not63, label %bb.hk, label %bb.hj, !dbg !94617

bb.hj:                                            ; preds = %bb.hi
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16, !dbg !94618
  %.sroa.333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !94619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.333.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.630.0..sroa_idx, i64 56, i1 false), !dbg !94618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !dbg !94620
  store i64 %i.qa, ptr %0, align 8, !dbg !94619
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !94619
  store ptr %i.qc, ptr %.sroa.232.0..sroa_idx, align 8, !dbg !94619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !dbg !94621
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslpwjCj2YNBy_9polars_io3ipc8ipc_file9IpcReaderNtNtCsh8eZTKRCwoO_3std2fs4FileEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(312) %1), !dbg !94621
  br label %bb.iu, !dbg !94621

bb.hk:                                            ; preds = %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !dbg !94620
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 80, !dbg !94622
  %i.qe = load ptr, ptr %i.qd, align 8, !dbg !94622, !nonnull !2279, !noundef !2279 ; 2 uses
  %i.qf = atomicrmw add ptr %i.qe, i64 1 monotonic, align 8, !dbg !94623
  %i.qg = icmp slt i64 %i.qf, 0, !dbg !94624
  br i1 %i.qg, label %bb.hl, label %bb.e, !dbg !94624

bb.hl:                                            ; preds = %bb.hk
  tail call void @llvm.trap(), !dbg !94625
  unreachable, !dbg !94625

.body:                                            ; preds = %bb.hm, %bb.hh, %bb.hg, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit243.i, %bb.gv, %bb.gu, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit227.i, %bb.ez, %bb.ey, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit.i, %.body82
  %.sroa.024.0 = phi i1 [ %.not65, %.body82 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit.i ], [ true, %bb.ey ], [ true, %bb.ez ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit227.i ], [ true, %bb.gu ], [ true, %bb.gv ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit243.i ], [ true, %bb.hg ], [ true, %bb.hh ], [ true, %bb.hm ], !dbg !94626 ; 3 uses
  %.sroa.022.0 = phi i8 [ %.sroa.022.1, %.body82 ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit.i ], [ 1, %bb.ey ], [ 1, %bb.ez ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit227.i ], [ 1, %bb.gu ], [ 1, %bb.gv ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit243.i ], [ 1, %bb.hg ], [ 1, %bb.hh ], [ 1, %bb.hm ], !dbg !94627
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body82 ], [ %.pn126.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit.i ], [ %.pn126.i, %bb.ey ], [ %.pn126.i, %bb.ez ], [ %.pn146.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit227.i ], [ %.pn146.i, %bb.gu ], [ %.pn146.i, %bb.gv ], [ %.pn132255.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit243.i ], [ %.pn132255.i, %bb.hg ], [ %.pn132255.i, %bb.hh ], [ %i.qj, %bb.hm ] ; 3 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.bb, i64 23, !dbg !94628
  %i.qi = load i8, ptr %i.qh, align 1, !dbg !94628, !range !2632, !noundef !2279 ; 2 uses
  %.not70 = icmp eq i8 %i.qi, -38, !dbg !94628
  %cond = icmp eq i8 %.sroa.022.0, 0, !dbg !94628
  %or.cond77 = or i1 %cond, %.not70, !dbg !94628
  br i1 %or.cond77, label %.body79, label %bb.jc, !dbg !94628

bb.hm:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECs2g09Ig8GZd6_13polars_stream.exit188.sink.split.i
  %i.qj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.hn:                                            ; preds = %bb.gx, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit229.i, %bb.fb, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit184.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3Z_EEEEECs2g09Ig8GZd6_13polars_stream.exit188.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !94629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !94629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !94629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !dbg !94630
  %i.qk = load i64, ptr %i.az, align 8, !dbg !94631, !range !2639, !noundef !2279 ; 2 uses
  %.not64 = icmp eq i64 %i.qk, 18, !dbg !94631
  %i.ql = getelementptr inbounds nuw i8, ptr %i.az, i64 8, !dbg !94632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.69, ptr noundef nonnull align 8 dereferenceable(48) %i.ql, i64 48, i1 false), !dbg !94632
  br i1 %.not64, label %bb.hu, label %bb.ho, !dbg !94633

bb.ho:                                            ; preds = %bb.hn
  %.sroa.644.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 56, !dbg !94634
  %.sroa.347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !94635
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.347.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.644.0..sroa_idx, i64 16, i1 false), !dbg !94634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !dbg !94636
  %.sroa.246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !94635
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.246.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.69, i64 48, i1 false), !dbg !94636
  store i64 %i.qk, ptr %0, align 8, !dbg !94635
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69), !dbg !94637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !dbg !94638
  %i.qm = getelementptr inbounds nuw i8, ptr %i.bb, i64 23, !dbg !94639
  %i.qn = load i8, ptr %i.qm, align 1, !dbg !94639, !range !2632, !alias.scope !94039, !noundef !2279
  switch i8 %i.qn, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit.i.i [
    i8 -38, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECs2g09Ig8GZd6_13polars_stream.exit
    i8 -40, label %bb.hp
  ], !dbg !94639, !prof !2633

bb.hp:                                            ; preds = %bb.ho
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bb)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit.i.i unwind label %bb.hq, !dbg !94640

bb.hq:                                            ; preds = %bb.hp
  %i.qo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.bb, i64 24, !dbg !94641 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94040), !dbg !94641
  call void @llvm.experimental.noalias.scope.decl(metadata !94041), !dbg !94642
  call void @llvm.experimental.noalias.scope.decl(metadata !94042), !dbg !94643
  %i.qq = load ptr, ptr %i.qp, align 8, !dbg !94644, !alias.scope !94043, !nonnull !2279, !noundef !2279
  %i.qr = atomicrmw add ptr %i.qq, i64 -1 release, align 8, !dbg !94645, !noalias !94044
  %i.qs = icmp eq i64 %i.qr, 1, !dbg !94646
  br i1 %i.qs, label %bb.hr, label %.body79, !dbg !94646

bb.hr:                                            ; preds = %bb.hq
  fence acquire, !dbg !94647
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.qp) #38
          to label %.body79 unwind label %bb.ht, !dbg !94648

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit.i.i: ; preds = %bb.hp, %bb.ho
  %i.qt = getelementptr inbounds nuw i8, ptr %i.bb, i64 24, !dbg !94641 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94045), !dbg !94641
  call void @llvm.experimental.noalias.scope.decl(metadata !94046), !dbg !94649
  call void @llvm.experimental.noalias.scope.decl(metadata !94047), !dbg !94650
  %i.qu = load ptr, ptr %i.qt, align 8, !dbg !94651, !alias.scope !94048, !nonnull !2279, !noundef !2279
  %i.qv = atomicrmw add ptr %i.qu, i64 -1 release, align 8, !dbg !94652, !noalias !94049
  %i.qw = icmp eq i64 %i.qv, 1, !dbg !94653
  br i1 %i.qw, label %bb.hs, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !94653

bb.hs:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit.i.i
  fence acquire, !dbg !94654
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.qt) #38
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_10pl_ref_str8PlRefStrEEECs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.iv, !dbg !94655

bb.ht:                                            ; preds = %bb.hr
  %i.qx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !94641
  unreachable, !dbg !94641

bb.hu:                                            ; preds = %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !dbg !94636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ba, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.69, i64 48, i1 false), !dbg !94036
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69), !dbg !94637
  %i.qy = load i64, ptr %i.bc, align 8, !dbg !94656, !range !2623, !noundef !2279
  %.not65 = icmp eq i64 %i.qy, -9223372036854775808, !dbg !94656 ; 2 uses
  br i1 %.not65, label %bb.hw, label %bb.hv, !dbg !94657

bb.hv:                                            ; preds = %bb.hu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !dbg !94658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false), !dbg !94658
  %i.qz = getelementptr inbounds nuw i8, ptr %i.ax, i64 8, !dbg !94659
  %i.ra = load ptr, ptr %i.qz, align 8, !dbg !94659, !nonnull !2279, !noundef !2279
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16, !dbg !94660
  %i.rc = load i64, ptr %i.rb, align 8, !dbg !94660, !noundef !2279
  invoke void @_RINvNtCslpwjCj2YNBy_9polars_io4hive27materialize_hive_partitionsNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2T_EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.bj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ra, i64 %i.rc)
          to label %bb.hy unwind label %bb.hx, !dbg !94661

bb.hw:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECs2g09Ig8GZd6_13polars_stream.exit, %bb.hu
  %i.rd = getelementptr inbounds nuw i8, ptr %i.bb, i64 23, !dbg !94662
  %i.re = load i8, ptr %i.rd, align 1, !dbg !94662, !range !2632, !noundef !2279
  %.not66 = icmp eq i8 %i.re, -38, !dbg !94662
  br i1 %.not66, label %bb.ij, label %bb.ie, !dbg !94663

bb.hx:                                            ; preds = %bb.hv
  %i.rf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.ax) #33
          to label %.body82 unwind label %bb.id, !dbg !94664

bb.hy:                                            ; preds = %bb.hv
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %bb.ia unwind label %bb.hz, !dbg !94665

bb.hz:                                            ; preds = %bb.hy
  %i.rg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %.body82 unwind label %bb.ib, !dbg !94666

bb.ia:                                            ; preds = %bb.hy
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.ic, !dbg !94667

bb.ib:                                            ; preds = %bb.hz
  %i.rh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !94665
  unreachable, !dbg !94665

.body82:                                          ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit, %bb.in, %bb.ic, %bb.hz, %bb.hx
  %.sroa.022.1 = phi i8 [ 1, %bb.hz ], [ 1, %bb.hx ], [ %.sroa.022.2, %bb.ic ], [ 0, %bb.in ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit ], !dbg !94627
  %.pn.pn = phi { ptr, i32 } [ %i.rg, %bb.hz ], [ %i.rf, %bb.hx ], [ %i.ri, %bb.ic ], [ %.pn, %bb.in ], [ %.pn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(48) %i.ba) #33
          to label %.body unwind label %bb.id, !dbg !94638

bb.ic:                                            ; preds = %bb.iq, %bb.ia
  %.sroa.022.2 = phi i8 [ 0, %bb.iq ], [ 1, %bb.ia ], !dbg !94627
  %i.ri = landingpad { ptr, i32 }
          cleanup
  br label %.body82

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.ia
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !dbg !94664
  br label %bb.hw, !dbg !94668

bb.id:                                            ; preds = %bb.je, %bb.jd, %bb.iz, %bb.it, %bb.in, %bb.jg, %bb.jf, %bb.il, %.body82, %bb.hx
  %i.rj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !94669
  unreachable, !dbg !94669

bb.ie:                                            ; preds = %bb.hw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !dbg !94670
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false), !dbg !94671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !dbg !94672
  %i.rk = getelementptr inbounds nuw i8, ptr %i.bb, i64 24, !dbg !94672
  %i.rl = load ptr, ptr %i.rk, align 8, !dbg !94672, !nonnull !2279, !noundef !2279 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.bb, i64 32, !dbg !94672
  %i.rn = load i64, ptr %i.rm, align 8, !dbg !94672, !noundef !2279 ; 8 uses
  store ptr %i.rl, ptr %i.aw, align 8, !dbg !94672
  %i.ro = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !94672
  store i64 %i.rn, ptr %i.ro, align 8, !dbg !94672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !dbg !94078
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !dbg !94673
  store i8 15, ptr %i.at, align 16, !dbg !94673
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rl, i64 16, !dbg !94674 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !94675
  %i.rq = icmp eq i64 %i.rn, 0, !dbg !94675
  br i1 %i.rq, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECs2g09Ig8GZd6_13polars_stream.exit.thread119, label %bb.if, !dbg !94675

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECs2g09Ig8GZd6_13polars_stream.exit.thread119: ; preds = %bb.ie
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !94676
  br label %bb.im, !dbg !94677

bb.if:                                            ; preds = %bb.ie
  %i.rr = icmp ult i64 %i.rn, 25, !dbg !94678
  br i1 %i.rr, label %bb.ih, label %bb.ig, !dbg !94678

bb.ig:                                            ; preds = %bb.if
  %.sroa.0.0.i.i.i.i.i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 25, 0) %i.rn, i64 32), !dbg !94679 ; 2 uses
  %i.rs = invoke noundef ptr @_RNvNtNtNtCs7VARH73bmU_11compact_str4repr4heap15inline_capacity5alloc(i64 noundef %.sroa.0.0.i.i.i.i.i)
          to label %.noexc84 unwind label %bb.il, !dbg !94680 ; 3 uses

.noexc84:                                         ; preds = %bb.ig
  %i.rt = icmp eq ptr %i.rs, null, !dbg !94681
  br i1 %i.rt, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i, label %bb.ii, !dbg !94682

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i: ; preds = %.noexc84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !94676
  br label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !94683

bb.ih:                                            ; preds = %bb.if
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.a, i8 0, i64 23, i1 false), !dbg !94684, !noalias !94065
  %i.ru = trunc nuw nsw i64 %i.rn to i8, !dbg !94685
  %i.rv = or disjoint i8 %i.ru, -64, !dbg !94686
  %.23..23..23..23..23..23..23..23..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 23, !dbg !94686
  store i8 %i.rv, ptr %.23..23..23..23..23..23..23..23..sroa_idx, align 1, !dbg !94686, !noalias !94065
end_hunk_2
begin_hunk_3_@llvm.memmove.p0.p0.i64
!93921 = !{!93223, !93221}
!93922 = !{!93223, !93221, !92879}
!93923 = !DILexicalBlockFile(scope: !93234, file: !3206, discriminator: 2)
!93924 = !DILexicalBlockFile(scope: !93219, file: !2530, discriminator: 0)
!93925 = !{!93237}
!93926 = !{!93238}
!93927 = !{!93237, !93238, !92879, !92880}
!93928 = !DIFile(filename: "crates/polars-arrow/src/io/ipc/read/file.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "3a9bae761ac4c9f751d4a6829ec12e02")
!93929 = !DINamespace(name: "file", scope: !3259)
!93930 = !DINamespace(name: "{impl#1}", scope: !93929)
!93931 = !{!93237, !93238, !92879}
!93932 = !DILexicalBlockFile(scope: !93248, file: !2328, discriminator: 2)
!93933 = !DILexicalBlockFile(scope: !93256, file: !2354, discriminator: 2)
!93934 = !DILexicalBlockFile(scope: !93248, file: !2328, discriminator: 4)
!93935 = !DILexicalBlockFile(scope: !93256, file: !2354, discriminator: 4)
!93936 = !DILexicalBlockFile(scope: !93263, file: !2358, discriminator: 2)
!93937 = !DIFile(filename: "crates/polars-arrow/src/io/ipc/mod.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "1505352fc3783ecc57a93445e0bd2c7b")
!93938 = !DINamespace(name: "{impl#7}", scope: !3258)
!93939 = !{!93237, !92879}
!93940 = !{!93276, !93274, !93272, !93237, !92879}
!93941 = !{!93286}
!93942 = !{!93291, !93289, !93286, !93237, !92879}
!93943 = !{!93298}
!93944 = !{!93300}
!93945 = !{!93300, !93298}
!93946 = !{!93300, !93298, !93237, !92879}
!93947 = !{!93238, !92879, !92880}
!93948 = !DILexicalBlockFile(scope: !93133, file: !2354, discriminator: 6)
!93949 = !DILexicalBlockFile(scope: !93159, file: !2354, discriminator: 4)
!93950 = !DILexicalBlockFile(scope: !93317, file: !3206, discriminator: 2)
!93951 = !{!93321}
!93952 = !{!93323}
!93953 = !{!93323, !93321}
!93954 = !{!93323, !93321, !92879}
!93955 = !{!93332, !92880}
!93956 = !{!93338}
!93957 = !{!93340}
!93958 = !{!93340, !93338}
!93959 = !{!93340, !93338, !92879}
!93960 = !{!93349, !92880}
!93961 = !{!93356, !92880}
!93962 = !{!93363}
!93963 = !{!93365}
!93964 = !{!93368}
!93965 = !{!93368, !93365, !93363, !93371, !93356, !92880}
!93966 = !{!93368, !93365, !93363, !92879}
!93967 = !{!93379}
!93968 = !{!93381}
!93969 = !{!93384}
!93970 = !{!93384, !93381, !93379, !93371, !93356, !92880}
!93971 = !{!93384, !93381, !93379, !92879}
!93972 = !{!93395, !93393, !92880}
!93973 = !{!93405, !92880}
!93974 = !{!93408, !92880}
!93975 = !{!93411}
!93976 = !{!93411, !92880}
!93977 = !{!93416, !93414, !93411, !92879}
!93978 = !{!93423}
!93979 = !{!93423, !92880}
!93980 = !{!93428, !93426, !93423, !92879}
!93981 = !{!93438}
!93982 = !{!93440}
!93983 = !{!93440, !93438}
!93984 = !{!93440, !93438, !92879}
!93985 = !{!93449}
!93986 = !{!93451}
!93987 = !{!93451, !93449}
!93988 = !{!93451, !93449, !92879}
!93989 = !{!93460, !92880}
!93990 = !{!93470, !92880}
!93991 = !{!93476}
!93992 = !{!93478}
!93993 = !{!93478, !93476}
!93994 = !{!93478, !93476, !92879}
!93995 = !DILexicalBlockFile(scope: !93495, file: !3206, discriminator: 2)
!93996 = !DILexicalBlockFile(scope: !93486, file: !2530, discriminator: 0)
!93997 = !{!93506, !92880}
!93998 = !{!93513, !92880}
!93999 = !{!93520}
!94000 = !{!93522}
!94001 = !{!93525}
!94002 = !{!93525, !93522, !93520, !93528, !93513, !92880}
!94003 = !{!93525, !93522, !93520, !92879}
!94004 = !{!93536}
!94005 = !{!93538}
!94006 = !{!93541}
!94007 = !{!93541, !93538, !93536, !93528, !93513, !92880}
!94008 = !{!93541, !93538, !93536, !92879}
!94009 = !{!93552, !93550, !92880}
!94010 = !{!93568, !92880}
!94011 = !{!93571, !92880}
!94012 = !{!93574}
!94013 = !{!93574, !92880}
!94014 = !{!93579, !93577, !93574, !92879}
!94015 = !{!93586}
!94016 = !{!93586, !92880}
!94017 = !{!93591, !93589, !93586, !92879}
!94018 = !{!93603}
!94019 = !{!93603, !92880}
!94020 = !{!93603, !92879}
!94021 = !{!93616, !92880}
!94022 = !{!93619}
!94023 = !{!93619, !92880}
!94024 = !{!93624, !93622, !93619, !92879}
!94025 = !DILocation(line: 295, column: 13, scope: !92859)
!94026 = !DILexicalBlockFile(scope: !93634, file: !3206, discriminator: 2)
!94027 = !DILocation(line: 295, column: 13, scope: !94026)
!94028 = !DILexicalBlockFile(scope: !93636, file: !2354, discriminator: 2)
!94029 = !DILexicalBlockFile(scope: !92862, file: !2354, discriminator: 2)
!94030 = !DILocation(line: 295, column: 41, scope: !92859)
!94031 = !DILocation(line: 2394, column: 29, scope: !94029, inlinedAt: !94030)
!94032 = !DILocation(line: 2110, column: 27, scope: !94028, inlinedAt: !94031)
!94033 = !DILexicalBlockFile(scope: !92863, file: !2328, discriminator: 2)
!94034 = !DILocation(line: 2394, column: 44, scope: !94029, inlinedAt: !94030)
!94035 = !DILocation(line: 3162, column: 26, scope: !94033, inlinedAt: !94034)
!94036 = !DILocation(line: 304, column: 22, scope: !92877)
!94037 = !DILexicalBlockFile(scope: !93641, file: !3206, discriminator: 2)
!94038 = !DILocation(line: 304, column: 22, scope: !94037)
!94039 = !{!93644}
!94040 = !{!93651}
!94041 = !{!93653}
!94042 = !{!93656}
!94043 = !{!93656, !93653, !93651, !93659, !93644}
!94044 = !{!93656, !93653, !93651}
!94045 = !{!93667}
!94046 = !{!93669}
!94047 = !{!93672}
!94048 = !{!93672, !93669, !93667, !93659, !93644}
!94049 = !{!93672, !93669, !93667}
!94050 = !DILocation(line: 354, column: 80, scope: !93681)
!94051 = !DILocation(line: 1841, column: 76, scope: !93683, inlinedAt: !94050)
!94052 = !DILocation(line: 1942, column: 18, scope: !93684, inlinedAt: !94051)
!94053 = !DILocation(line: 296, column: 20, scope: !93685, inlinedAt: !94052)
!94054 = !DILocation(line: 609, column: 14, scope: !93686, inlinedAt: !94053)
!94055 = !DILexicalBlockFile(scope: !93693, file: !2354, discriminator: 2)
!94056 = !DILocation(line: 363, column: 53, scope: !93687)
!94057 = !DILocation(line: 49, column: 16, scope: !93692, inlinedAt: !94056)
!94058 = !DILocation(line: 4194, column: 10, scope: !94055, inlinedAt: !94057)
!94059 = !DILocation(line: 363, column: 62, scope: !93687)
!94060 = !DILocation(line: 778, column: 9, scope: !93695, inlinedAt: !94059)
!94061 = !DILocation(line: 154, column: 9, scope: !93696, inlinedAt: !94060)
!94062 = !DILocation(line: 57, column: 14, scope: !93697, inlinedAt: !94061)
!94063 = !DILocation(line: 2125, column: 9, scope: !93698, inlinedAt: !94062)
!94064 = !DILocation(line: 186, column: 29, scope: !93694, inlinedAt: !94063)
!94065 = !{!93712, !93711, !93709, !93708}
!94066 = !{!93712, !93709}
!94067 = !{!93711, !93709, !93708}
!94068 = !{!93717, !93712, !93709}
!94069 = !{!93722}
!94070 = !{!93724}
!94071 = !{!93724, !93722}
!94072 = !DIFile(filename: "crates/polars-core/src/scalar/mod.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "afaa8de78d6e8bed9cdb0709099d518b")
!94073 = !DINamespace(name: "scalar", scope: !2310)
!94074 = !DINamespace(name: "Scalar", scope: !94073)
!94075 = !DILocation(line: 361, column: 21, scope: !93687)
!94076 = !DILocation(line: 365, column: 24, scope: !93687)
!94077 = !DINamespace(name: "Column", scope: !3133)
!94078 = !DILocation(line: 359, column: 42, scope: !93687)
!94079 = !DIFile(filename: "crates/polars-core/src/frame/column/scalar.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "8ff8b1f9c00f11ec01586ddf8be37ba6")
!94080 = !DINamespace(name: "scalar", scope: !3133)
!94081 = !DINamespace(name: "ScalarColumn", scope: !94080)
!94082 = !DILocation(line: 69, column: 22, scope: !93735, inlinedAt: !94078)
!94083 = !{!93738}
!94084 = !{!93740}
!94085 = !{!93743}
!94086 = !{!93743, !93740, !93738}
!94087 = !{!93752}
!94088 = !{!93754}
!94089 = !{!93757}
!94090 = !{!93757, !93754, !93752}
!94091 = !{!93778, !93776, !93774, !93772}
!94092 = !{!93780}
!94093 = !{!93786}
!94094 = !{!93788}
!94095 = !{!93788, !93786}
!94096 = !{!93797}
!94097 = !{!93799}
!94098 = !{!93799, !93797}
!94099 = !{!93812}
!94100 = !{!93814}
!94101 = !{!93817}
!94102 = !{!93817, !93814, !93812}
!94103 = !DILocation(line: 292, column: 13, scope: !92859)
!94104 = !DILocation(line: 292, column: 55, scope: !92860)
!94105 = !DILocation(line: 292, column: 36, scope: !92860)
!94106 = !DILocation(line: 3937, column: 24, scope: !92861, inlinedAt: !93829)
!94107 = !DILocation(line: 2411, column: 12, scope: !92864, inlinedAt: !93827)
!94108 = !DILocation(line: 295, column: 18, scope: !92859)
!94109 = !DILocation(line: 2412, column: 13, scope: !92864, inlinedAt: !93827)
!94110 = !DILocation(line: 310, column: 9, scope: !92865, inlinedAt: !93831)
!94111 = !DILocation(line: 2428, column: 9, scope: !92866, inlinedAt: !93833)
!94112 = !DILocation(line: 299, column: 13, scope: !92869)
!94113 = !DILocation(line: 929, column: 22, scope: !92870, inlinedAt: !93835)
!94114 = !DILocation(line: 930, column: 49, scope: !92872, inlinedAt: !93835)
!94115 = !DILocation(line: 300, column: 13, scope: !92873)
!94116 = !DILocation(line: 929, column: 22, scope: !92874, inlinedAt: !93838)
!94117 = !DILocation(line: 930, column: 49, scope: !92876, inlinedAt: !93838)
!94118 = !DILocation(line: 304, column: 13, scope: !92877)
!94119 = !DILocation(line: 745, column: 15, scope: !92881, inlinedAt: !92884)
!94120 = !DILocation(line: 745, column: 9, scope: !92881, inlinedAt: !92884)
!94121 = !DILocation(line: 305, column: 13, scope: !92882, inlinedAt: !92883)
!94122 = !DILocation(line: 351, column: 9, scope: !92882, inlinedAt: !92883)
!94123 = !DILocation(line: 0, scope: !92882, inlinedAt: !92883)
!94124 = !DILocation(line: 664, column: 24, scope: !92886, inlinedAt: !92887)
!94125 = !DILocation(line: 3029, column: 37, scope: !92889, inlinedAt: !92894)
!94126 = !DILocation(line: 3029, column: 18, scope: !92889, inlinedAt: !92894)
!94127 = !DILocation(line: 3049, column: 9, scope: !92890, inlinedAt: !92893)
!94128 = !DILocation(line: 305, column: 16, scope: !92882, inlinedAt: !92883)
!94129 = !DILocation(line: 306, column: 50, scope: !92895, inlinedAt: !92883)
!94130 = !DILocation(line: 306, column: 40, scope: !92895, inlinedAt: !92883)
!94131 = !DILocation(line: 319, column: 16, scope: !92882, inlinedAt: !92883)
!94132 = !DILocation(line: 319, column: 32, scope: !92882, inlinedAt: !92883)
!94133 = !DILocation(line: 636, column: 18, scope: !93843, inlinedAt: !92900)
!94134 = !DILocation(line: 331, column: 27, scope: !92882, inlinedAt: !92883)
!94135 = !DILocation(line: 332, column: 17, scope: !92901, inlinedAt: !92883)
!94136 = !DILocation(line: 332, column: 26, scope: !92901, inlinedAt: !92883)
!94137 = !DILocation(line: 332, column: 31, scope: !92901, inlinedAt: !92883)
!94138 = !DILocation(line: 323, column: 32, scope: !92882, inlinedAt: !92883)
!94139 = !DILocation(line: 21, column: 15, scope: !92905, inlinedAt: !92906)
!94140 = !DILocation(line: 23, column: 21, scope: !92907, inlinedAt: !92906)
!94141 = !DILocation(line: 23, column: 33, scope: !92907, inlinedAt: !92906)
!94142 = !DILocation(line: 54, column: 5, scope: !92905, inlinedAt: !92906)
!94143 = !DILocation(line: 2173, column: 15, scope: !92908, inlinedAt: !92909)
!94144 = !DILocation(line: 0, scope: !92908, inlinedAt: !92909)
!94145 = !DILocation(line: 2173, column: 9, scope: !92908, inlinedAt: !92909)
!94146 = !DILocation(line: 2175, column: 17, scope: !92908, inlinedAt: !92909)
!94147 = !DILocation(line: 2189, column: 23, scope: !92911, inlinedAt: !92914)
!94148 = !DILocation(line: 23, column: 67, scope: !92907, inlinedAt: !92906)
!94149 = !DILocation(line: 23, column: 68, scope: !92907, inlinedAt: !92906)
!94150 = !DILocation(line: 0, scope: !93854, inlinedAt: !92906)
!94151 = !DILocation(line: 24, column: 21, scope: !92915, inlinedAt: !92906)
!94152 = !DILocation(line: 25, column: 21, scope: !92915, inlinedAt: !92906)
!94153 = !DILocation(line: 25, column: 51, scope: !92915, inlinedAt: !92906)
!94154 = !DILocation(line: 428, column: 9, scope: !92916, inlinedAt: !92923)
!94155 = !DILocation(line: 438, column: 9, scope: !92924, inlinedAt: !92925)
!94156 = !DILocation(line: 99, column: 9, scope: !92926, inlinedAt: !92927)
!94157 = !DILocation(line: 0, scope: !92907, inlinedAt: !92906)
!94158 = !DILocation(line: 51, column: 13, scope: !92907, inlinedAt: !92906)
!94159 = !DILocation(line: 2173, column: 15, scope: !92928, inlinedAt: !92929)
!94160 = !DILocation(line: 0, scope: !92928, inlinedAt: !92929)
!94161 = !DILocation(line: 2173, column: 9, scope: !92928, inlinedAt: !92929)
!94162 = !DILocation(line: 25, column: 92, scope: !92915, inlinedAt: !92906)
!94163 = !DILocation(line: 25, column: 93, scope: !92915, inlinedAt: !92906)
!94164 = !DILocation(line: 0, scope: !93868, inlinedAt: !92906)
!94165 = !DILocation(line: 2174, column: 16, scope: !92928, inlinedAt: !92929)
!94166 = !DILocation(line: 25, column: 21, scope: !92931, inlinedAt: !92906)
!94167 = !DILocation(line: 27, column: 40, scope: !92933, inlinedAt: !92906)
!94168 = !DILocation(line: 27, column: 24, scope: !92933, inlinedAt: !92906)
!94169 = !DILocation(line: 29, column: 31, scope: !92934, inlinedAt: !92906)
!94170 = !DILocation(line: 614, column: 9, scope: !92935, inlinedAt: !92946)
!94171 = !DILocation(line: 1841, column: 86, scope: !92939, inlinedAt: !92942)
!94172 = !DILocation(line: 444, column: 20, scope: !92947, inlinedAt: !92952)
!94173 = !DILocation(line: 2428, column: 9, scope: !92949, inlinedAt: !92950)
!94174 = !DILocation(line: 33, column: 21, scope: !92932, inlinedAt: !92906)
!94175 = !DILocation(line: 33, column: 56, scope: !92953, inlinedAt: !92906)
!94176 = !DILocation(line: 33, column: 37, scope: !92953, inlinedAt: !92906)
!94177 = !DILocation(line: 0, scope: !92905, inlinedAt: !92906)
!94178 = !DILocation(line: 0, scope: !92915, inlinedAt: !92906)
!94179 = !DILocation(line: 51, column: 13, scope: !92915, inlinedAt: !92906)
!94180 = !DILocation(line: 2173, column: 15, scope: !92954, inlinedAt: !92955)
!94181 = !DILocation(line: 0, scope: !92954, inlinedAt: !92955)
!94182 = !DILocation(line: 2173, column: 9, scope: !92954, inlinedAt: !92955)
!94183 = !DILocation(line: 2175, column: 17, scope: !92954, inlinedAt: !92955)
!94184 = !DILocation(line: 2189, column: 23, scope: !92956, inlinedAt: !92959)
!94185 = !DILocation(line: 29, column: 69, scope: !92934, inlinedAt: !92906)
!94186 = !DILocation(line: 29, column: 70, scope: !92934, inlinedAt: !92906)
!94187 = !DILocation(line: 30, column: 39, scope: !92960, inlinedAt: !92906)
!94188 = !DILocation(line: 810, column: 1, scope: !474, inlinedAt: !92963)
!94189 = !DILocation(line: 810, column: 1, scope: !475, inlinedAt: !92964)
!94190 = !DILocation(line: 810, column: 1, scope: !476, inlinedAt: !92965)
!94191 = !DILocation(line: 810, column: 1, scope: !476, inlinedAt: !92966)
!94192 = !DILocation(line: 30, column: 21, scope: !92960, inlinedAt: !92906)
!94193 = !DILocation(line: 30, column: 47, scope: !92960, inlinedAt: !92906)
!94194 = !DILocation(line: 27, column: 17, scope: !92932, inlinedAt: !92906)
!94195 = !DILocation(line: 810, column: 1, scope: !92967, inlinedAt: !92968)
!94196 = !DILocation(line: 34, column: 30, scope: !92953, inlinedAt: !92906)
!94197 = !DILocation(line: 444, column: 20, scope: !92947, inlinedAt: !92971)
!94198 = !DILocation(line: 2428, column: 9, scope: !92949, inlinedAt: !92969)
!94199 = !DILocation(line: 614, column: 9, scope: !92972, inlinedAt: !92983)
!94200 = !DILocation(line: 1841, column: 86, scope: !92976, inlinedAt: !92979)
!94201 = !DILocation(line: 444, column: 20, scope: !92947, inlinedAt: !92987)
!94202 = !DILocation(line: 3937, column: 24, scope: !92988, inlinedAt: !92991)
!94203 = !DILocation(line: 2411, column: 12, scope: !92992, inlinedAt: !92985)
!94204 = !DILocation(line: 422, column: 34, scope: !92993, inlinedAt: !92994)
!94205 = !DILocation(line: 99, column: 9, scope: !238, inlinedAt: !93002)
!94206 = !DILocation(line: 101, column: 9, scope: !238, inlinedAt: !93002)
!94207 = !DILocation(line: 248, column: 11, scope: !243, inlinedAt: !92998)
!94208 = !DILocation(line: 248, column: 5, scope: !243, inlinedAt: !92998)
!94209 = !DILocation(line: 250, column: 19, scope: !243, inlinedAt: !92998)
!94210 = !DILocation(line: 810, column: 1, scope: !2005, inlinedAt: !93003)
!94211 = !DILocation(line: 284, column: 5, scope: !2004, inlinedAt: !92997)
!94212 = !DILocation(line: 289, column: 56, scope: !2006, inlinedAt: !92997)
!94213 = !DILocation(line: 426, column: 10, scope: !92993, inlinedAt: !92994)
!94214 = !DILocation(line: 310, column: 9, scope: !93004, inlinedAt: !93008)
!94215 = !DILocation(line: 34, column: 76, scope: !92953, inlinedAt: !92906)
!94216 = !DILocation(line: 33, column: 30, scope: !92932, inlinedAt: !92906)
!94217 = !DILocation(line: 40, column: 30, scope: !93009, inlinedAt: !92906)
!94218 = !DILocation(line: 422, column: 34, scope: !93010, inlinedAt: !93011)
!94219 = !DILocation(line: 40, column: 58, scope: !93009, inlinedAt: !92906)
!94220 = !DILocation(line: 99, column: 9, scope: !238, inlinedAt: !93020)
!94221 = !DILocation(line: 101, column: 9, scope: !238, inlinedAt: !93020)
!94222 = !DILocation(line: 248, column: 11, scope: !243, inlinedAt: !93016)
!94223 = !DILocation(line: 248, column: 5, scope: !243, inlinedAt: !93016)
!94224 = !DILocation(line: 250, column: 19, scope: !243, inlinedAt: !93016)
!94225 = !DILocation(line: 810, column: 1, scope: !92967, inlinedAt: !93023)
!94226 = !DILocation(line: 284, column: 5, scope: !93014, inlinedAt: !93015)
!94227 = !DILocation(line: 2415, column: 38, scope: !92992, inlinedAt: !92985)
!94228 = !DILocation(line: 310, column: 9, scope: !93004, inlinedAt: !93024)
!94229 = !DILocation(line: 2412, column: 13, scope: !92992, inlinedAt: !92985)
!94230 = !DILocation(line: 40, column: 70, scope: !93009, inlinedAt: !92906)
!94231 = !DILocation(line: 51, column: 13, scope: !92932, inlinedAt: !92906)
!94232 = !DILocation(line: 810, column: 1, scope: !913, inlinedAt: !93029)
!94233 = !DILocation(line: 444, column: 20, scope: !1512, inlinedAt: !93032)
!94234 = !DILocation(line: 3956, column: 24, scope: !910, inlinedAt: !93034)
!94235 = !DILocation(line: 2814, column: 12, scope: !912, inlinedAt: !93030)
!94236 = !DILocation(line: 4387, column: 24, scope: !78, inlinedAt: !93035)
!94237 = !DILocation(line: 2857, column: 18, scope: !912, inlinedAt: !93030)
!94238 = !DILocation(line: 289, column: 56, scope: !93036, inlinedAt: !93015)
!94239 = !DILocation(line: 426, column: 10, scope: !93010, inlinedAt: !93011)
!94240 = !DILocation(line: 40, column: 96, scope: !93009, inlinedAt: !92906)
!94241 = !DILocation(line: 2173, column: 15, scope: !93037, inlinedAt: !93038)
!94242 = !DILocation(line: 0, scope: !93037, inlinedAt: !93038)
!94243 = !DILocation(line: 2173, column: 9, scope: !93037, inlinedAt: !93038)
!94244 = !DILocation(line: 40, column: 97, scope: !93009, inlinedAt: !92906)
!94245 = !DILocation(line: 810, column: 1, scope: !913, inlinedAt: !93043)
!94246 = !DILocation(line: 444, column: 20, scope: !1512, inlinedAt: !93046)
!94247 = !DILocation(line: 3956, column: 24, scope: !910, inlinedAt: !93048)
!94248 = !DILocation(line: 2814, column: 12, scope: !912, inlinedAt: !93044)
!94249 = !DILocation(line: 4387, column: 24, scope: !78, inlinedAt: !93049)
!94250 = !DILocation(line: 2857, column: 18, scope: !912, inlinedAt: !93044)
!94251 = !DILocation(line: 2174, column: 16, scope: !93037, inlinedAt: !93038)
!94252 = !DILocation(line: 43, column: 21, scope: !93050, inlinedAt: !92906)
!94253 = !DILocation(line: 46, column: 21, scope: !93050, inlinedAt: !92906)
!94254 = !DILocation(line: 47, column: 21, scope: !93050, inlinedAt: !92906)
!94255 = !DILocation(line: 444, column: 20, scope: !92947, inlinedAt: !93053)
!94256 = !DILocation(line: 2428, column: 9, scope: !92949, inlinedAt: !93051)
!94257 = !DILocation(line: 49, column: 21, scope: !93050, inlinedAt: !92906)
!94258 = !DILocation(line: 2277, column: 15, scope: !93054, inlinedAt: !93055)
!94259 = !DILocation(line: 2277, column: 9, scope: !93054, inlinedAt: !93055)
!94260 = !DILocation(line: 612, column: 33, scope: !93056, inlinedAt: !93068)
!94261 = !DILocation(line: 744, column: 12, scope: !93058, inlinedAt: !93066)
!94262 = !DILocation(line: 745, column: 13, scope: !93058, inlinedAt: !93066)
!94263 = !DILocation(line: 1721, column: 9, scope: !93071, inlinedAt: !93072)
!94264 = !DILocation(line: 744, column: 9, scope: !93058, inlinedAt: !93066)
!94265 = !DILocation(line: 2279, column: 21, scope: !93054, inlinedAt: !93055)
!94266 = !DILocation(line: 42, column: 17, scope: !93050, inlinedAt: !92906)
!94267 = !DILocation(line: 50, column: 17, scope: !93050, inlinedAt: !92906)
!94268 = !DILocation(line: 13, column: 5, scope: !93061, inlinedAt: !93063)
!94269 = !DILocation(line: 8, column: 10, scope: !93061, inlinedAt: !93063)
!94270 = !DILocation(line: 8, column: 15, scope: !93061, inlinedAt: !93063)
!94271 = !DILocation(line: 2278, column: 24, scope: !93062, inlinedAt: !93055)
!94272 = !DILocation(line: 2278, column: 38, scope: !93054, inlinedAt: !93055)
!94273 = !DILocation(line: 810, column: 1, scope: !913, inlinedAt: !93078)
!94274 = !DILocation(line: 444, column: 20, scope: !1512, inlinedAt: !93081)
!94275 = !DILocation(line: 3956, column: 24, scope: !910, inlinedAt: !93083)
!94276 = !DILocation(line: 2814, column: 12, scope: !912, inlinedAt: !93079)
!94277 = !DILocation(line: 4387, column: 24, scope: !78, inlinedAt: !93084)
!94278 = !DILocation(line: 2857, column: 18, scope: !912, inlinedAt: !93079)
!94279 = !DILocation(line: 810, column: 1, scope: !548, inlinedAt: !93085)
!94280 = !DILocation(line: 3956, column: 24, scope: !542, inlinedAt: !93095)
!94281 = !DILocation(line: 2814, column: 12, scope: !541, inlinedAt: !93093)
!94282 = !DILocation(line: 4387, column: 24, scope: !78, inlinedAt: !93096)
!94283 = !DILocation(line: 2857, column: 18, scope: !541, inlinedAt: !93093)
!94284 = !DILocation(line: 17, column: 5, scope: !92905, inlinedAt: !92906)
!94285 = !DILocation(line: 810, column: 1, scope: !548, inlinedAt: !93099)
!94286 = !DILocation(line: 3956, column: 24, scope: !542, inlinedAt: !93107)
!94287 = !DILocation(line: 2814, column: 12, scope: !541, inlinedAt: !93105)
!94288 = !DILocation(line: 4387, column: 24, scope: !78, inlinedAt: !93108)
!94289 = !DILocation(line: 2857, column: 18, scope: !541, inlinedAt: !93105)
!94290 = !DILocation(line: 810, column: 1, scope: !92967, inlinedAt: !93109)
!94291 = !DILocation(line: 810, column: 1, scope: !548, inlinedAt: !93112)
!94292 = !DILocation(line: 3956, column: 24, scope: !542, inlinedAt: !93120)
!94293 = !DILocation(line: 2814, column: 12, scope: !541, inlinedAt: !93118)
!94294 = !DILocation(line: 4387, column: 24, scope: !78, inlinedAt: !93121)
!94295 = !DILocation(line: 2857, column: 18, scope: !541, inlinedAt: !93118)
!94296 = !DILocation(line: 54, column: 6, scope: !92905, inlinedAt: !92906)
!94297 = !DILocation(line: 323, column: 27, scope: !92882, inlinedAt: !92883)
!94298 = !DILocation(line: 323, column: 21, scope: !92882, inlinedAt: !92883)
!94299 = !DILocation(line: 327, column: 29, scope: !92882, inlinedAt: !92883)
!94300 = !DILocation(line: 327, column: 37, scope: !93122, inlinedAt: !92883)
!94301 = !DILocation(line: 2173, column: 15, scope: !93123, inlinedAt: !93124)
!94302 = !DILocation(line: 2173, column: 9, scope: !93123, inlinedAt: !93124)
!94303 = !DILocation(line: 2175, column: 17, scope: !93123, inlinedAt: !93124)
!94304 = !DILocation(line: 327, column: 56, scope: !93122, inlinedAt: !92883)
!94305 = !DILocation(line: 0, scope: !93902, inlinedAt: !92883)
!94306 = !DILocation(line: 319, column: 13, scope: !92882, inlinedAt: !92883)
!94307 = !DILocation(line: 2173, column: 15, scope: !93125, inlinedAt: !93126)
!94308 = !DILocation(line: 0, scope: !93125, inlinedAt: !93126)
!94309 = !DILocation(line: 2173, column: 9, scope: !93125, inlinedAt: !93126)
!94310 = !DILocation(line: 2175, column: 17, scope: !93125, inlinedAt: !93126)
!94311 = !DILocation(line: 2189, column: 23, scope: !93128, inlinedAt: !93131)
!94312 = !DILocation(line: 332, column: 45, scope: !92901, inlinedAt: !92883)
!94313 = !DILocation(line: 351, column: 9, scope: !92901, inlinedAt: !92883)
!94314 = !DILocation(line: 444, column: 20, scope: !93132, inlinedAt: !93137)
!94315 = !DILocation(line: 3937, column: 24, scope: !93138, inlinedAt: !93141)
!94316 = !DILocation(line: 2411, column: 12, scope: !93142, inlinedAt: !93135)
!94317 = !DILocation(line: 310, column: 9, scope: !93143, inlinedAt: !93144)
!94318 = !DILocation(line: 334, column: 36, scope: !93146, inlinedAt: !92883)
!94319 = !DILocation(line: 334, column: 20, scope: !93146, inlinedAt: !92883)
!94320 = !DILocation(line: 2412, column: 13, scope: !93142, inlinedAt: !93135)
!94321 = !DILocation(line: 335, column: 27, scope: !93146, inlinedAt: !92883)
!94322 = !DILocation(line: 614, column: 9, scope: !93147, inlinedAt: !93158)
end_hunk_3
