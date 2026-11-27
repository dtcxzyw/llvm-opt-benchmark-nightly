Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.036?download=true
inline.NumInlined: 3434
inline.NumDeleted: 890
begin_hunk_0_@_RNvXs6_NtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_reqINtB5_17TupleFromRequest4INtNtB9_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api14CollectionPathENtNtB3j_4auth9ActixAuthINtNtB2w_5query5QueryNtNtB3h_15collections_api18OptimizationsParamEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollB3l_:bb.a
  store i64 2, ptr %1, align 8, !alias.scope !2956
  br label %bb.bb

bb.bb:                                            ; preds = %.sink.split, %bb.ay
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 151 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #15
          to label %bb.bm unwind label %bb.bv

.thread172:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCskn68Yowd57P_16pin_project_lite9___private22UnsafeDropInPlaceGuardINtNtNtB4_6future5ready5ReadyINtNtB4_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEEEEEB2H_.exit.i53, %bb.az
  store i64 2, ptr %i.s, align 8, !alias.scope !2967
  br label %bb.bh

bb.bc:                                            ; preds = %bb.az
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0141.0.copyload142 = load i64, ptr %i.bo, align 8, !alias.scope !2968 ; 3 uses
  store i64 2, ptr %i.s, align 8, !alias.scope !2967
  %i.bp = icmp ne i64 %.sroa.0141.0.copyload142, -9223372036854775807
  call void @llvm.assume(i1 %i.bp)
  %i.bq = icmp sgt i64 %.sroa.0141.0.copyload142, -9223372036854775806
  br i1 %i.bq, label %bb.bd, label %bb.bh, !prof !28

bb.bd:                                            ; preds = %bb.bc
  %.sroa.7144.0..sroa_idx145 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.4152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.4152.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7144.0..sroa_idx145, i64 120, i1 false)
  store i64 %.sroa.0141.0.copyload142, ptr %i.m, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2969)
  call void @llvm.experimental.noalias.scope.decl(metadata !2970)
  call void @llvm.experimental.noalias.scope.decl(metadata !2971)
  %i.br = load i64, ptr %i.t, align 8, !range !7, !alias.scope !2970, !noundef !6
  switch i64 %i.br, label %default.unreachable181 [
    i64 0, label %bb.be
    i64 1, label %bb.bi
    i64 2, label %.sink.split186
  ]

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2972
  store i64 2, ptr %i.b, align 8, !noalias !2972
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2972
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr %i.bs, ptr %i.a, align 8, !noalias !2972
  invoke void @_RNvXs1_NtCskn68Yowd57P_16pin_project_lite9___privateINtB5_22UnsafeDropInPlaceGuardINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator5query5QueryNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api15collections_api18OptimizationsParamENtNtNtCsgoPClq0H8JF_9actix_web5error5error5ErrorEEENtNtNtB2f_3ops4drop4Drop4dropB3K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.thread184 unwind label %bb.bf, !noalias !2973

bb.bf:                                            ; preds = %bb.be
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req18ExtractReplaceProjINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtB4_6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator5query5QueryNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api15collections_api18OptimizationsParamENtNtNtBI_5error5error5ErrorEEB32_EEB40_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.b) #11
          to label %.body60 unwind label %bb.bg, !noalias !2973

.thread184:                                       ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2972
  br label %.sink.split186

bb.bg:                                            ; preds = %bb.bf
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2973
  unreachable

.body60:                                          ; preds = %bb.bf
  store i64 2, ptr %i.t, align 8, !alias.scope !2974
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage4rbac4auth4AuthECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthEBH_.exit unwind label %bb.bn

bb.bh:                                            ; preds = %.thread172, %bb.bc
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 151 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #15
          to label %bb.bm unwind label %bb.bq

bb.bi:                                            ; preds = %bb.bd
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.0153.0.copyload154 = load i64, ptr %i.bv, align 8, !alias.scope !2975 ; 3 uses
  store i64 2, ptr %i.t, align 8, !alias.scope !2974
  %i.bw = icmp ne i64 %.sroa.0153.0.copyload154, 3
  call void @llvm.assume(i1 %i.bw)
  %i.bx = icmp samesign ult i64 %.sroa.0153.0.copyload154, 2
  br i1 %i.bx, label %bb.bj, label %bb.bk, !prof !28

bb.bj:                                            ; preds = %bb.bi
  %.sroa.7156.0..sroa_idx157 = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.sroa.525.sroa.4.0..sroa.525.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.525.sroa.4.0..sroa.525.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7156.0..sroa_idx157, i64 32, i1 false)
  %i.by = load ptr, ptr %i.o, align 8, !nonnull !6, !noundef !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.020, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %.sroa.020.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.020, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.020.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %i.m, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.020, i64 152, i1 false)
  br label %bb.ao

.sink.split186:                                   ; preds = %bb.bd, %.thread184
  store i64 2, ptr %i.t, align 8, !alias.scope !2974
  br label %bb.bk

bb.bk:                                            ; preds = %.sink.split186, %bb.bi
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 151 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #15
          to label %bb.bm unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage4rbac4auth4AuthECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthEBH_.exit65 unwind label %bb.bn

bb.bm:                                            ; preds = %bb.bk, %bb.bh, %bb.bb
  unreachable

bb.bn:                                            ; preds = %bb.bu, %bb.bs, %bb.bp, %bb.bl, %.body60, %bb.ax, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthEBH_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthEBH_.exit65, %.body55
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthEBH_.exit65: ; preds = %bb.bl
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api14CollectionPathEEB1v_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #11
          to label %bb.bo unwind label %bb.bn

bb.bo:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthEBH_.exit65
  call void @llvm.experimental.noalias.scope.decl(metadata !2976)
  call void @llvm.experimental.noalias.scope.decl(metadata !2977)
  call void @llvm.experimental.noalias.scope.decl(metadata !2978)
  %i.cb = load ptr, ptr %i.o, align 8, !alias.scope !2979, !nonnull !6, !noundef !6
  %i.cc = atomicrmw add ptr %i.cb, i64 -1 release, align 8, !noalias !2979
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.bp, label %common.resume

bb.bp:                                            ; preds = %bb.bo
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherE9drop_slowCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #13
          to label %common.resume unwind label %bb.bn

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthEBH_.exit: ; preds = %.body60, %bb.bq
  %.pn31 = phi { ptr, i32 } [ %i.ce, %bb.bq ], [ %i.bt, %.body60 ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api14CollectionPathEEB1v_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #11
          to label %bb.br unwind label %bb.bn

bb.bq:                                            ; preds = %bb.bh
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthEBH_.exit

bb.br:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthEBH_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !2980)
  call void @llvm.experimental.noalias.scope.decl(metadata !2981)
  call void @llvm.experimental.noalias.scope.decl(metadata !2982)
  %i.cf = load ptr, ptr %i.o, align 8, !alias.scope !2983, !nonnull !6, !noundef !6
  %i.cg = atomicrmw add ptr %i.cf, i64 -1 release, align 8, !noalias !2983
  %i.ch = icmp eq i64 %i.cg, 1
  br i1 %i.ch, label %bb.bs, label %common.resume

bb.bs:                                            ; preds = %bb.br
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherE9drop_slowCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #13
          to label %common.resume unwind label %bb.bn

bb.bt:                                            ; preds = %bb.bv, %.body55
  %.pn = phi { ptr, i32 } [ %i.bn, %.body55 ], [ %i.cl, %bb.bv ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2984)
  call void @llvm.experimental.noalias.scope.decl(metadata !2985)
  call void @llvm.experimental.noalias.scope.decl(metadata !2986)
  %i.ci = load ptr, ptr %i.o, align 8, !alias.scope !2987, !nonnull !6, !noundef !6
  %i.cj = atomicrmw add ptr %i.ci, i64 -1 release, align 8, !noalias !2987
  %i.ck = icmp eq i64 %i.cj, 1
  br i1 %i.ck, label %bb.bu, label %common.resume

bb.bu:                                            ; preds = %bb.bt
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherE9drop_slowCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #13
          to label %common.resume unwind label %bb.bn

bb.bv:                                            ; preds = %bb.bb
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_reqINtB5_17TupleFromRequest4INtNtB9_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathEINtNtNtB9_5types4json4JsonNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestENtNtB3j_4auth9ActixAuthENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollB3l_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([216 x i8]) align 8 captures(none) dereferenceable(216) %0, ptr noalias nofree noundef align 8 dereferenceable(336) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [8 x i8], align 8                 ; 12 uses
  %.sroa.6110 = alloca [120 x i8], align 8        ; 5 uses
  %i.n = alloca [56 x i8], align 8                ; 4 uses
  %i.o = alloca [56 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 12 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  %i.t = load i64, ptr %i.q, align 8, !range !24, !noundef !6 ; 2 uses
  %i.u = tail call i64 @llvm.usub.sat.i64(i64 %i.t, i64 1)
  switch i64 %i.u, label %default.unreachable165 [
    i64 0, label %bb.b
    i64 1, label %bb.i
    i64 2, label %bb.d
  ], !prof !25

default.unreachable165:                           ; preds = %bb.ba, %bb.ax, %bb.aq, %bb.an, %bb.ae, %bb.z, %bb.u, %bb.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3054)
  store i64 0, ptr %i.q, align 8, !alias.scope !3054
  %i.v = trunc nuw i64 %i.t to i1
  br i1 %i.v, label %bb.e, label %bb.c, !prof !26

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14, !noalias !3055
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 151 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #14
  unreachable

bb.e:                                             ; preds = %bb.b
  %.sroa.4.0..sroa.0.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %.sroa.5.8.copyload = load ptr, ptr %.sroa.4.0..sroa.0.0..sroa_idx.i, align 8, !alias.scope !3055 ; 2 uses
  %.sroa.7.8..sroa.4.0..sroa.0.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.sroa.7.8.copyload = load ptr, ptr %.sroa.7.8..sroa.4.0..sroa.0.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !3055, !nonnull !6, !noundef !6 ; 3 uses
  %.not = icmp eq ptr %.sroa.5.8.copyload, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 -1, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.8.copyload, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.8.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.al

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3057)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3058
  store ptr %i.q, ptr %i.j, align 8, !noalias !3058
  invoke void @_RNvXs1_NtCskn68Yowd57P_16pin_project_lite9___privateINtB5_22UnsafeDropInPlaceGuardINtNtNtCs2tOeTMwhwEo_11actix_utils6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB2Q_5error5error5ErrorEEENtNtNtB2e_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCs2tOeTMwhwEo_11actix_utils6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB8_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB8_5error5error5ErrorEEB2L_E15project_replaceCsl8OoimOLbh_6qdrant.exit unwind label %bb.h, !noalias !3057

common.resume:                                    ; preds = %bb.av, %.body, %bb.bk, %bb.bj, %bb.bn, %bb.bm, %bb.bp, %bb.bo, %bb.s, %bb.ap, %bb.aj, %bb.ab, %bb.q, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.h ], [ %i.z, %bb.q ], [ %i.ae, %bb.s ], [ %i.ar, %bb.ab ], [ %i.av, %bb.aj ], [ %i.ay, %bb.ap ], [ %i.bd, %.body ], [ %i.bw, %bb.bj ], [ %.pn31, %bb.bm ], [ %i.bd, %bb.av ], [ %i.bw, %bb.bk ], [ %.pn31, %bb.bn ], [ %.pn, %bb.bp ], [ %.pn, %bb.bo ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  store i64 2, ptr %i.q, align 8, !alias.scope !3058
  store ptr %.sroa.7.8.copyload, ptr %.sroa.4.0..sroa.0.0..sroa_idx.i, align 8, !alias.scope !3058
  br label %common.resume

_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCs2tOeTMwhwEo_11actix_utils6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB8_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB8_5error5error5ErrorEEB2L_E15project_replaceCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3058
  store i64 2, ptr %i.q, align 8, !alias.scope !3058
  store ptr %.sroa.7.8.copyload, ptr %.sroa.4.0..sroa.0.0..sroa_idx.i, align 8, !alias.scope !3058
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCs2tOeTMwhwEo_11actix_utils6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB8_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB8_5error5error5ErrorEEB2L_E15project_replaceCsl8OoimOLbh_6qdrant.exit
  %i.x = load i64, ptr %1, align 8, !range !7, !noundef !6
  switch i64 %i.x, label %default.unreachable165 [
    i64 0, label %bb.j
    i64 1, label %bb.u
    i64 2, label %bb.l
  ], !prof !25

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3059)
  call void @llvm.experimental.noalias.scope.decl(metadata !3060)
  %.sroa.01.0.copyload.i35 = load i64, ptr %i.y, align 8, !alias.scope !3060 ; 4 uses
  store i64 -2, ptr %i.y, align 8, !alias.scope !3060
  %.not.i = icmp eq i64 %.sroa.01.0.copyload.i35, -2
  br i1 %.not.i, label %bb.k, label %_RNvXs1_NtNtCsiHzErX7aQFk_12futures_util6future5readyINtB5_5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtCsgoPClq0H8JF_9actix_web5error5error5ErrorEENtNtNtB15_6future6future6Future4pollB2w_.exit, !prof !27

bb.k:                                             ; preds = %bb.j
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #14, !noalias !3061
  unreachable

_RNvXs1_NtNtCsiHzErX7aQFk_12futures_util6future5readyINtB5_5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtCsgoPClq0H8JF_9actix_web5error5error5ErrorEENtNtNtB15_6future6future6Future4pollB2w_.exit: ; preds = %bb.j
  %.sroa.5.0..sroa.0.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.sroa.677.8.copyload = load ptr, ptr %.sroa.5.0..sroa.0.0..sroa_idx.i, align 8, !alias.scope !3061 ; 4 uses
  %.sroa.8.8..sroa.5.0..sroa.0.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.sroa.8.8.copyload = load ptr, ptr %.sroa.8.8..sroa.5.0..sroa.0.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !3061 ; 4 uses
  %.sroa.9.8..sroa.5.0..sroa.0.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %.sroa.9.8.copyload = load i64, ptr %.sroa.9.8..sroa.5.0..sroa.0.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !3061 ; 2 uses
  %cond = icmp eq i64 %.sroa.01.0.copyload.i35, -1
  br i1 %cond, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 151 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #14
  unreachable

bb.m:                                             ; preds = %_RNvXs1_NtNtCsiHzErX7aQFk_12futures_util6future5readyINtB5_5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtCsgoPClq0H8JF_9actix_web5error5error5ErrorEENtNtNtB15_6future6future6Future4pollB2w_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.677.8.copyload), "nonnull"(ptr %.sroa.8.8.copyload) ]
  store i64 -1, ptr %0, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.677.8.copyload, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.8.8.copyload, ptr %.sroa.58.0..sroa_idx, align 8
  br label %bb.al

bb.n:                                             ; preds = %_RNvXs1_NtNtCsiHzErX7aQFk_12futures_util6future5readyINtB5_5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtCsgoPClq0H8JF_9actix_web5error5error5ErrorEENtNtNtB15_6future6future6Future4pollB2w_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !3062)
  call void @llvm.experimental.noalias.scope.decl(metadata !3063)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3064
  store i64 -9223372036854775808, ptr %i.i, align 8, !noalias !3064
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3064
  store ptr %i.y, ptr %i.h, align 8, !noalias !3064
  invoke void @_RNvXs1_NtCskn68Yowd57P_16pin_project_lite9___privateINtB5_22UnsafeDropInPlaceGuardINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtCsgoPClq0H8JF_9actix_web5error5error5ErrorEEENtNtNtB2f_3ops4drop4Drop4dropB3G_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3G_.exit unwind label %bb.o, !noalias !3065

bb.o:                                             ; preds = %bb.n
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req18ExtractReplaceProjINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtB4_6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtBI_5error5error5ErrorEEB32_EEB3W_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #11
          to label %bb.q unwind label %bb.p, !noalias !3065

bb.p:                                             ; preds = %bb.o
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !3065
  unreachable

bb.q:                                             ; preds = %bb.o
  store i64 1, ptr %1, align 8, !alias.scope !3066
  store i64 %.sroa.01.0.copyload.i35, ptr %i.y, align 8, !alias.scope !3066
  store ptr %.sroa.677.8.copyload, ptr %.sroa.5.0..sroa.0.0..sroa_idx.i, align 8, !alias.scope !3066
  store ptr %.sroa.8.8.copyload, ptr %.sroa.8.8..sroa.5.0..sroa.0.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !3066
  store i64 %.sroa.9.8.copyload, ptr %.sroa.9.8..sroa.5.0..sroa.0.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !3066
  br label %common.resume

_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3G_.exit: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3064
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !3066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3064
  store i64 1, ptr %1, align 8, !alias.scope !3066
  store i64 %.sroa.01.0.copyload.i35, ptr %i.y, align 8, !alias.scope !3066
  store ptr %.sroa.677.8.copyload, ptr %.sroa.5.0..sroa.0.0..sroa_idx.i, align 8, !alias.scope !3066
  store ptr %.sroa.8.8.copyload, ptr %.sroa.8.8..sroa.5.0..sroa.0.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !3066
  store i64 %.sroa.9.8.copyload, ptr %.sroa.9.8..sroa.5.0..sroa.0.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !3066
  %i.ab = load i64, ptr %i.p, align 8, !range !9, !alias.scope !3067, !noundef !6 ; 2 uses
  %i.ac = icmp ne i64 %i.ab, -9223372036854775807
  call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp sgt i64 %i.ab, -1
  br i1 %i.ad, label %bb.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req18ExtractReplaceProjINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtB4_6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtBI_5error5error5ErrorEEB32_EEB3W_.exit

bb.r:                                             ; preds = %_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3G_.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathEEB1v_.exit.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathEEB1v_.exit.i: ; preds = %bb.r
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req18ExtractReplaceProjINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtB4_6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtBI_5error5error5ErrorEEB32_EEB3W_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req18ExtractReplaceProjINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtB4_6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtBI_5error5error5ErrorEEB32_EEB3W_.exit: ; preds = %_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3G_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathEEB1v_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.u

bb.u:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req18ExtractReplaceProjINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtB4_6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtBI_5error5error5ErrorEEB32_EEB3W_.exit, %bb.i
  %i.ag = load i64, ptr %i.r, align 8, !range !20, !noundef !6
  %i.ah = call i64 @llvm.usub.sat.i64(i64 %i.ag, i64 2)
  switch i64 %i.ah, label %default.unreachable165 [
    i64 0, label %bb.v
    i64 1, label %bb.ae
    i64 2, label %bb.w
  ], !prof !25

bb.v:                                             ; preds = %bb.u
  call void @_RNvXs5_NtNtCsgoPClq0H8JF_9actix_web5types4jsonINtB5_14JsonExtractFutNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.ai = load i64, ptr %i.n, align 8, !range !11, !noundef !6
  %i.aj = trunc nuw i64 %i.ai to i1               ; 2 uses
  br i1 %i.aj, label %bb.ad, label %bb.x

bb.w:                                             ; preds = %bb.u
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 151 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #14
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !noundef !6
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 -1, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load <2 x ptr>, ptr %i.an, align 8
  store <2 x ptr> %i.ao, ptr %.sroa.413.0..sroa_idx, align 8
  br label %bb.al

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !3068)
  call void @llvm.experimental.noalias.scope.decl(metadata !3069)
  call void @llvm.experimental.noalias.scope.decl(metadata !3070)
  %i.ap = load i64, ptr %i.r, align 8, !range !20, !alias.scope !3069, !noundef !6
  %i.aq = call i64 @llvm.usub.sat.i64(i64 %i.ap, i64 2)
  switch i64 %i.aq, label %default.unreachable165 [
    i64 0, label %bb.aa
    i64 1, label %bb.ac
    i64 2, label %_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtB8_5types4json14JsonExtractFutNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEINtB1l_4JsonB1T_EE15project_replaceCsl8OoimOLbh_6qdrant.exit.thread
  ]

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3071
  store ptr %i.r, ptr %i.g, align 8, !noalias !3071
  invoke void @_RNvXs1_NtCskn68Yowd57P_16pin_project_lite9___privateINtB5_22UnsafeDropInPlaceGuardINtNtNtCsgoPClq0H8JF_9actix_web5types4json14JsonExtractFutNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCskn68Yowd57P_16pin_project_lite9___private22UnsafeDropInPlaceGuardINtNtNtCsgoPClq0H8JF_9actix_web5types4json14JsonExtractFutNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEEEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.ab, !noalias !3072

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCskn68Yowd57P_16pin_project_lite9___private22UnsafeDropInPlaceGuardINtNtNtCsgoPClq0H8JF_9actix_web5types4json14JsonExtractFutNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEEEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3071
  br label %_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtB8_5types4json14JsonExtractFutNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEINtB1l_4JsonB1T_EE15project_replaceCsl8OoimOLbh_6qdrant.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.ar = landingpad { ptr, i32 }
          cleanup
  store i64 3, ptr %i.r, align 8, !alias.scope !3073
  %.sroa.597.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %1, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.597.0..sroa_idx98, ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i64 48, i1 false)
  br label %common.resume

_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtB8_5types4json14JsonExtractFutNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEINtB1l_4JsonB1T_EE15project_replaceCsl8OoimOLbh_6qdrant.exit.thread: ; preds = %bb.z, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCskn68Yowd57P_16pin_project_lite9___private22UnsafeDropInPlaceGuardINtNtNtCsgoPClq0H8JF_9actix_web5types4json14JsonExtractFutNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEEEECsl8OoimOLbh_6qdrant.exit.i
  store i64 3, ptr %i.r, align 8, !alias.scope !3073
  %.sroa.597.0..sroa_idx166 = getelementptr inbounds nuw i8, ptr %1, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.597.0..sroa_idx166, ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i64 48, i1 false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req18ExtractReplaceProjINtNtNtBI_5types4json14JsonExtractFutNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEINtB1R_4JsonB2p_EEECsl8OoimOLbh_6qdrant.exit

bb.ac:                                            ; preds = %bb.z
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 208
  %4 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false), !alias.scope !3074
  store i64 1, ptr %i.o, align 8, !alias.scope !3068
  store i64 3, ptr %i.r, align 8, !alias.scope !3073
  %.sroa.597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.597.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i64 48, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.as)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req18ExtractReplaceProjINtNtNtBI_5types4json14JsonExtractFutNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEINtB1R_4JsonB2p_EEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req18ExtractReplaceProjINtNtNtBI_5types4json14JsonExtractFutNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEINtB1R_4JsonB2p_EEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtB8_5types4json14JsonExtractFutNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEINtB1l_4JsonB1T_EE15project_replaceCsl8OoimOLbh_6qdrant.exit.thread, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req18ExtractReplaceProjINtNtNtBI_5types4json14JsonExtractFutNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEINtB1R_4JsonB2p_EEECsl8OoimOLbh_6qdrant.exit
  %.sroa.0.4 = xor i1 %i.aj, true
  br label %bb.ae

bb.ae:                                            ; preds = %bb.u, %bb.ad
  %.sroa.0.5 = phi i1 [ %.sroa.0.4, %bb.ad ], [ true, %bb.u ]
  %i.at = load i64, ptr %i.s, align 8, !range !7, !noundef !6
  switch i64 %i.at, label %default.unreachable165 [
    i64 0, label %bb.af
    i64 1, label %bb.ak
    i64 2, label %bb.ah
  ], !prof !25

bb.af:                                            ; preds = %bb.ae
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3075)
  %.sroa.01.0.copyload.i37 = load i64, ptr %i.au, align 8, !alias.scope !3075 ; 3 uses
  store i64 -2, ptr %i.au, align 8, !alias.scope !3075
  %.not.i38 = icmp eq i64 %.sroa.01.0.copyload.i37, -2
  br i1 %.not.i38, label %bb.ag, label %bb.ai, !prof !27

bb.ag:                                            ; preds = %bb.af
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #14, !noalias !3076
  unreachable

bb.ah:                                            ; preds = %bb.ae
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 151 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #14
  unreachable

bb.ai:                                            ; preds = %bb.af
  %.sroa.5.0..sroa.0.0..sroa_idx.i39 = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6110)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.6110, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.0..sroa.0.0..sroa_idx.i39, i64 120, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !3077)
  call void @llvm.experimental.noalias.scope.decl(metadata !3078)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3079
  store ptr %i.au, ptr %i.f, align 8, !noalias !3079
  invoke void @_RNvXs1_NtCskn68Yowd57P_16pin_project_lite9___privateINtB5_22UnsafeDropInPlaceGuardINtNtNtCskKLDkoKarTP_4core6future5ready5ReadyINtNtB1p_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEEENtNtNtB1p_3ops4drop4Drop4dropB2u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req18ExtractReplaceProjINtNtNtB4_6future5ready5ReadyINtNtB4_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEEB2D_EEB2J_.exit unwind label %bb.aj, !noalias !3080

bb.aj:                                            ; preds = %bb.ai
  %i.av = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %i.s, align 8, !alias.scope !3081
  store i64 %.sroa.01.0.copyload.i37, ptr %i.au, align 8, !alias.scope !3081
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.0..sroa.0.0..sroa_idx.i39, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.6110, i64 120, i1 false), !alias.scope !3081
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req18ExtractReplaceProjINtNtNtB4_6future5ready5ReadyINtNtB4_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEEB2D_EEB2J_.exit: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3079
  store i64 1, ptr %i.s, align 8, !alias.scope !3081
  store i64 %.sroa.01.0.copyload.i37, ptr %i.au, align 8, !alias.scope !3081
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.0..sroa.0.0..sroa_idx.i39, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.6110, i64 120, i1 false), !alias.scope !3081
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6110)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ae, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req18ExtractReplaceProjINtNtNtB4_6future5ready5ReadyINtNtB4_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEEB2D_EEB2J_.exit
  br i1 %.sroa.0.5, label %bb.an, label %bb.am

bb.al:                                            ; preds = %bb.am, %bb.be, %bb.f, %bb.m, %bb.y
  ret void

bb.am:                                            ; preds = %bb.ak
  store i64 -2, ptr %0, align 8
  br label %bb.al

bb.an:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !3082)
  call void @llvm.experimental.noalias.scope.decl(metadata !3083)
  %i.aw = load i64, ptr %i.q, align 8, !range !24, !alias.scope !3082, !noundef !6
  %i.ax = call i64 @llvm.usub.sat.i64(i64 %i.aw, i64 1)
  switch i64 %i.ax, label %default.unreachable165 [
    i64 0, label %bb.ao
    i64 1, label %bb.aq
    i64 2, label %bb.au
  ]

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3084
  store ptr %i.q, ptr %i.e, align 8, !noalias !3084
  invoke void @_RNvXs1_NtCskn68Yowd57P_16pin_project_lite9___privateINtB5_22UnsafeDropInPlaceGuardINtNtNtCs2tOeTMwhwEo_11actix_utils6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB2Q_5error5error5ErrorEEENtNtNtB2e_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCskn68Yowd57P_16pin_project_lite9___private22UnsafeDropInPlaceGuardINtNtNtCs2tOeTMwhwEo_11actix_utils6future5ready5ReadyINtNtB4_6result6ResultINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB34_5error5error5ErrorEEEEECsl8OoimOLbh_6qdrant.exit.i43 unwind label %bb.ap, !noalias !3083

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCskn68Yowd57P_16pin_project_lite9___private22UnsafeDropInPlaceGuardINtNtNtCs2tOeTMwhwEo_11actix_utils6future5ready5ReadyINtNtB4_6result6ResultINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB34_5error5error5ErrorEEEEECsl8OoimOLbh_6qdrant.exit.i43: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3084
  br label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.ay = landingpad { ptr, i32 }
          cleanup
  store i64 3, ptr %i.q, align 8, !alias.scope !3084
  br label %common.resume

bb.aq:                                            ; preds = %bb.an
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !3082, !nonnull !6, !noundef !6
  store i64 3, ptr %i.q, align 8, !alias.scope !3084
  store ptr %i.ba, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !3085)
  call void @llvm.experimental.noalias.scope.decl(metadata !3086)
  call void @llvm.experimental.noalias.scope.decl(metadata !3087)
  %i.bb = load i64, ptr %1, align 8, !range !7, !alias.scope !3086, !noundef !6
  switch i64 %i.bb, label %default.unreachable165 [
    i64 0, label %bb.ar
    i64 1, label %bb.aw
    i64 2, label %.sink.split
  ]

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3088
  store i64 -9223372036854775808, ptr %i.d, align 8, !noalias !3088
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3088
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.bc, ptr %i.c, align 8, !noalias !3088
  invoke void @_RNvXs1_NtCskn68Yowd57P_16pin_project_lite9___privateINtB5_22UnsafeDropInPlaceGuardINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtCsgoPClq0H8JF_9actix_web5error5error5ErrorEEENtNtNtB2f_3ops4drop4Drop4dropB3G_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.thread167 unwind label %bb.as, !noalias !3089

bb.as:                                            ; preds = %bb.ar
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req18ExtractReplaceProjINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtB4_6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtBI_5error5error5ErrorEEB32_EEB3W_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #11
          to label %.body unwind label %bb.at, !noalias !3089

.thread167:                                       ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3088
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3088
  br label %.sink.split

bb.at:                                            ; preds = %bb.as
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !3089
  unreachable

.body:                                            ; preds = %bb.as
  store i64 2, ptr %1, align 8, !alias.scope !3090
  call void @llvm.experimental.noalias.scope.decl(metadata !3091)
  call void @llvm.experimental.noalias.scope.decl(metadata !3092)
  call void @llvm.experimental.noalias.scope.decl(metadata !3093)
  %i.bf = load ptr, ptr %i.m, align 8, !alias.scope !3094, !nonnull !6, !noundef !6
  %i.bg = atomicrmw add ptr %i.bf, i64 -1 release, align 8, !noalias !3094
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.av, label %common.resume

bb.au:                                            ; preds = %bb.an, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCskn68Yowd57P_16pin_project_lite9___private22UnsafeDropInPlaceGuardINtNtNtCs2tOeTMwhwEo_11actix_utils6future5ready5ReadyINtNtB4_6result6ResultINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB34_5error5error5ErrorEEEEECsl8OoimOLbh_6qdrant.exit.i43
  store i64 3, ptr %i.q, align 8, !alias.scope !3084
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 151 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #14
  unreachable

bb.av:                                            ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherE9drop_slowCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #13
          to label %common.resume unwind label %bb.bi

bb.aw:                                            ; preds = %bb.aq
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0116.0.copyload117 = load i64, ptr %i.bi, align 8, !alias.scope !3095 ; 3 uses
  store i64 2, ptr %1, align 8, !alias.scope !3090
  %i.bj = icmp ne i64 %.sroa.0116.0.copyload117, -9223372036854775807
  call void @llvm.assume(i1 %i.bj)
  %i.bk = icmp sgt i64 %.sroa.0116.0.copyload117, -1
  br i1 %i.bk, label %bb.ax, label %bb.az, !prof !28

bb.ax:                                            ; preds = %bb.aw
  %.sroa.7119.0..sroa_idx120 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4127.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7119.0..sroa_idx120, i64 24, i1 false)
  store i64 %.sroa.0116.0.copyload117, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !3096)
  call void @llvm.experimental.noalias.scope.decl(metadata !3097)
  %i.bl = load i64, ptr %i.r, align 8, !range !20, !alias.scope !3096, !noundef !6
  %i.bm = call i64 @llvm.usub.sat.i64(i64 %i.bl, i64 2)
  switch i64 %i.bm, label %default.unreachable165 [
    i64 0, label %bb.ay
    i64 1, label %bb.ba
    i64 2, label %bb.bc
  ]

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3098
  store ptr %i.r, ptr %i.b, align 8, !noalias !3098
  invoke void @_RNvXs1_NtCskn68Yowd57P_16pin_project_lite9___privateINtB5_22UnsafeDropInPlaceGuardINtNtNtCsgoPClq0H8JF_9actix_web5types4json14JsonExtractFutNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCskn68Yowd57P_16pin_project_lite9___private22UnsafeDropInPlaceGuardINtNtNtCsgoPClq0H8JF_9actix_web5types4json14JsonExtractFutNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEEEECsl8OoimOLbh_6qdrant.exit.i49 unwind label %.body51, !noalias !3099

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCskn68Yowd57P_16pin_project_lite9___private22UnsafeDropInPlaceGuardINtNtNtCsgoPClq0H8JF_9actix_web5types4json14JsonExtractFutNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEEEECsl8OoimOLbh_6qdrant.exit.i49: ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3098
  br label %bb.bc

.body51:                                          ; preds = %bb.ay
end_hunk_0
begin_hunk_1_@llvm.experimental.noalias.scope.decl
!2873 = distinct !{!2873, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api15collections_api18OptimizationsParamEBJ_"}
!2874 = distinct !{!2874, !2873, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api15collections_api18OptimizationsParamEBJ_: argument 0"}
!2875 = distinct !{!2875, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant"}
!2876 = distinct !{!2876, !2875, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant: argument 0"}
!2877 = distinct !{!2877, i1 true, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCs2tOeTMwhwEo_11actix_utils6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB8_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB8_5error5error5ErrorEEB2L_E15project_replaceCsl8OoimOLbh_6qdrant"}
!2878 = distinct !{!2878, !2877, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCs2tOeTMwhwEo_11actix_utils6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB8_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB8_5error5error5ErrorEEB2L_E15project_replaceCsl8OoimOLbh_6qdrant: argument 0"}
!2879 = distinct !{!2879, !2877, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCs2tOeTMwhwEo_11actix_utils6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB8_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB8_5error5error5ErrorEEB2L_E15project_replaceCsl8OoimOLbh_6qdrant: argument 1"}
!2880 = distinct !{!2880, i1 true, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api14CollectionPathENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3G_"}
!2881 = distinct !{!2881, !2880, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api14CollectionPathENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3G_: argument 0"}
!2882 = distinct !{!2882, !2880, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api14CollectionPathENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3G_: argument 1"}
!2883 = distinct !{!2883, !2880, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api14CollectionPathENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3G_: argument 2"}
!2884 = distinct !{!2884, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant"}
!2885 = distinct !{!2885, !2884, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant: argument 0"}
!2886 = distinct !{!2886, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant"}
!2887 = distinct !{!2887, !2886, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant: argument 0"}
!2888 = distinct !{!2888, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant"}
!2889 = distinct !{!2889, !2888, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant: argument 0"}
!2890 = distinct !{!2890, i1 true, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCskKLDkoKarTP_4core6future5ready5ReadyINtNtB1p_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEEB2o_E15project_replaceB2u_"}
!2891 = distinct !{!2891, !2890, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCskKLDkoKarTP_4core6future5ready5ReadyINtNtB1p_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEEB2o_E15project_replaceB2u_: argument 0"}
!2892 = distinct !{!2892, !2890, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCskKLDkoKarTP_4core6future5ready5ReadyINtNtB1p_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEEB2o_E15project_replaceB2u_: argument 1"}
!2893 = distinct !{!2893, !2890, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCskKLDkoKarTP_4core6future5ready5ReadyINtNtB1p_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEEB2o_E15project_replaceB2u_: argument 2"}
!2894 = distinct !{!2894, i1 true, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator5query5QueryNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api15collections_api18OptimizationsParamENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3K_"}
!2895 = distinct !{!2895, !2894, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator5query5QueryNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api15collections_api18OptimizationsParamENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3K_: argument 0"}
!2896 = distinct !{!2896, !2894, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator5query5QueryNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api15collections_api18OptimizationsParamENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3K_: argument 1"}
!2897 = distinct !{!2897, !2894, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator5query5QueryNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api15collections_api18OptimizationsParamENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3K_: argument 2"}
!2898 = distinct !{!2898, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant"}
!2899 = distinct !{!2899, !2898, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant: argument 0"}
!2900 = distinct !{!2900, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant"}
!2901 = distinct !{!2901, !2900, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant: argument 0"}
!2902 = distinct !{!2902, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant"}
!2903 = distinct !{!2903, !2902, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant: argument 0"}
!2904 = distinct !{!2904, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant"}
!2905 = distinct !{!2905, !2904, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant: argument 0"}
!2906 = distinct !{!2906, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant"}
!2907 = distinct !{!2907, !2906, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant: argument 0"}
!2908 = distinct !{!2908, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant"}
!2909 = distinct !{!2909, !2908, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant: argument 0"}
!2910 = distinct !{!2910, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant"}
!2911 = distinct !{!2911, !2910, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant: argument 0"}
!2912 = distinct !{!2912, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant"}
!2913 = distinct !{!2913, !2912, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant: argument 0"}
!2914 = distinct !{!2914, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant"}
!2915 = distinct !{!2915, !2914, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant: argument 0"}
!2916 = !{!2841}
!2917 = !{!2842}
!2918 = !{!2841, !2842}
!2919 = !{!2844}
!2920 = !{!2845}
!2921 = !{!2844, !2845}
!2922 = !{!2847}
!2923 = !{!2848}
!2924 = !{!2847, !2848}
!2925 = !{!2850}
!2926 = !{!2851}
!2927 = !{!2852, !2850, !2851}
!2928 = !{!2852, !2851}
!2929 = !{!2850, !2851}
!2930 = !{!2854}
!2931 = !{!2856}
!2932 = !{!2857, !2856}
!2933 = !{!2859}
!2934 = !{!2860}
!2935 = !{!2861, !2859, !2860}
!2936 = !{!2861, !2860}
!2937 = !{!2859, !2860}
!2938 = !{!2863}
!2939 = !{!2864}
!2940 = !{!2863, !2864}
!2941 = !{!2866}
!2942 = !{!2867}
!2943 = !{!2868, !2866, !2867}
!2944 = !{!2868, !2867}
!2945 = !{!2866, !2867}
!2946 = !{!2870}
!2947 = !{!2876, !2874, !2872, !2870}
!2948 = !{!2878}
!2949 = !{!2879}
!2950 = !{!2878, !2879}
!2951 = !{!2881}
!2952 = !{!2882}
!2953 = !{!2883}
!2954 = !{!2881, !2882, !2883}
!2955 = !{!2881, !2883}
!2956 = !{!2882, !2883}
!2957 = !{!2885}
!2958 = !{!2887}
!2959 = !{!2889}
!2960 = !{!2889, !2887, !2885}
!2961 = !{!2881, !2882}
!2962 = !{!2891}
!2963 = !{!2892}
!2964 = !{!2893}
!2965 = !{!2891, !2892, !2893}
!2966 = !{!2891, !2893}
!2967 = !{!2892, !2893}
!2968 = !{!2891, !2892}
!2969 = !{!2895}
!2970 = !{!2896}
!2971 = !{!2897}
!2972 = !{!2895, !2896, !2897}
!2973 = !{!2895, !2897}
!2974 = !{!2896, !2897}
!2975 = !{!2895, !2896}
!2976 = !{!2899}
!2977 = !{!2901}
!2978 = !{!2903}
!2979 = !{!2903, !2901, !2899}
!2980 = !{!2905}
!2981 = !{!2907}
!2982 = !{!2909}
!2983 = !{!2909, !2907, !2905}
!2984 = !{!2911}
!2985 = !{!2913}
!2986 = !{!2915}
!2987 = !{!2915, !2913, !2911}
!2988 = distinct !{!2988, i1 true, !"_RNvXs0_NtNtCs2tOeTMwhwEo_11actix_utils6future5readyINtB5_5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB1G_5error5error5ErrorEENtNtNtB14_6future6future6Future4pollCsl8OoimOLbh_6qdrant"}
!2989 = distinct !{!2989, !2988, !"_RNvXs0_NtNtCs2tOeTMwhwEo_11actix_utils6future5readyINtB5_5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB1G_5error5error5ErrorEENtNtNtB14_6future6future6Future4pollCsl8OoimOLbh_6qdrant: argument 0"}
!2990 = distinct !{!2990, !2988, !"_RNvXs0_NtNtCs2tOeTMwhwEo_11actix_utils6future5readyINtB5_5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB1G_5error5error5ErrorEENtNtNtB14_6future6future6Future4pollCsl8OoimOLbh_6qdrant: argument 1"}
!2991 = distinct !{!2991, i1 true, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCs2tOeTMwhwEo_11actix_utils6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB8_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB8_5error5error5ErrorEEB2L_E15project_replaceCsl8OoimOLbh_6qdrant"}
!2992 = distinct !{!2992, !2991, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCs2tOeTMwhwEo_11actix_utils6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB8_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB8_5error5error5ErrorEEB2L_E15project_replaceCsl8OoimOLbh_6qdrant: argument 0"}
!2993 = distinct !{!2993, !2991, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCs2tOeTMwhwEo_11actix_utils6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB8_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB8_5error5error5ErrorEEB2L_E15project_replaceCsl8OoimOLbh_6qdrant: argument 1"}
!2994 = distinct !{!2994, i1 true, !"_RNvXs1_NtNtCsiHzErX7aQFk_12futures_util6future5readyINtB5_5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtCsgoPClq0H8JF_9actix_web5error5error5ErrorEENtNtNtB15_6future6future6Future4pollB2w_"}
!2995 = distinct !{!2995, !2994, !"_RNvXs1_NtNtCsiHzErX7aQFk_12futures_util6future5readyINtB5_5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtCsgoPClq0H8JF_9actix_web5error5error5ErrorEENtNtNtB15_6future6future6Future4pollB2w_: argument 0"}
!2996 = distinct !{!2996, !2994, !"_RNvXs1_NtNtCsiHzErX7aQFk_12futures_util6future5readyINtB5_5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtCsgoPClq0H8JF_9actix_web5error5error5ErrorEENtNtNtB15_6future6future6Future4pollB2w_: argument 1"}
!2997 = distinct !{!2997, i1 true, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3G_"}
!2998 = distinct !{!2998, !2997, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3G_: argument 1"}
!2999 = distinct !{!2999, !2997, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3G_: argument 2"}
!3000 = distinct !{!3000, !2997, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3G_: argument 0"}
!3001 = distinct !{!3001, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req18ExtractReplaceProjINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtB4_6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtBI_5error5error5ErrorEEB32_EEB3W_"}
!3002 = distinct !{!3002, !3001, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req18ExtractReplaceProjINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtB4_6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtBI_5error5error5ErrorEEB32_EEB3W_: argument 0"}
!3003 = distinct !{!3003, i1 true, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtB8_5types4json14JsonExtractFutNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEINtB1l_4JsonB1T_EE15project_replaceCsl8OoimOLbh_6qdrant"}
!3004 = distinct !{!3004, !3003, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtB8_5types4json14JsonExtractFutNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEINtB1l_4JsonB1T_EE15project_replaceCsl8OoimOLbh_6qdrant: argument 0"}
!3005 = distinct !{!3005, !3003, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtB8_5types4json14JsonExtractFutNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEINtB1l_4JsonB1T_EE15project_replaceCsl8OoimOLbh_6qdrant: argument 1"}
!3006 = distinct !{!3006, !3003, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtB8_5types4json14JsonExtractFutNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEINtB1l_4JsonB1T_EE15project_replaceCsl8OoimOLbh_6qdrant: argument 2"}
!3007 = distinct !{!3007, i1 true, !"_RNvXs_NtNtCskKLDkoKarTP_4core6future5readyINtB4_5ReadyINtNtB8_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEENtNtB6_6future6Future4pollB1i_"}
!3008 = distinct !{!3008, !3007, !"_RNvXs_NtNtCskKLDkoKarTP_4core6future5readyINtB4_5ReadyINtNtB8_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEENtNtB6_6future6Future4pollB1i_: argument 1"}
!3009 = distinct !{!3009, !3007, !"_RNvXs_NtNtCskKLDkoKarTP_4core6future5readyINtB4_5ReadyINtNtB8_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEENtNtB6_6future6Future4pollB1i_: argument 0"}
!3010 = distinct !{!3010, i1 true, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCskKLDkoKarTP_4core6future5ready5ReadyINtNtB1p_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEEB2o_E15project_replaceB2u_"}
!3011 = distinct !{!3011, !3010, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCskKLDkoKarTP_4core6future5ready5ReadyINtNtB1p_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEEB2o_E15project_replaceB2u_: argument 1"}
!3012 = distinct !{!3012, !3010, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCskKLDkoKarTP_4core6future5ready5ReadyINtNtB1p_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEEB2o_E15project_replaceB2u_: argument 2"}
!3013 = distinct !{!3013, !3010, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCskKLDkoKarTP_4core6future5ready5ReadyINtNtB1p_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEEB2o_E15project_replaceB2u_: argument 0"}
!3014 = distinct !{!3014, i1 true, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCs2tOeTMwhwEo_11actix_utils6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB8_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB8_5error5error5ErrorEEB2L_E15project_replaceCsl8OoimOLbh_6qdrant"}
!3015 = distinct !{!3015, !3014, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCs2tOeTMwhwEo_11actix_utils6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB8_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB8_5error5error5ErrorEEB2L_E15project_replaceCsl8OoimOLbh_6qdrant: argument 0"}
!3016 = distinct !{!3016, !3014, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCs2tOeTMwhwEo_11actix_utils6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB8_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB8_5error5error5ErrorEEB2L_E15project_replaceCsl8OoimOLbh_6qdrant: argument 1"}
!3017 = distinct !{!3017, i1 true, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3G_"}
!3018 = distinct !{!3018, !3017, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3G_: argument 0"}
!3019 = distinct !{!3019, !3017, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3G_: argument 1"}
!3020 = distinct !{!3020, !3017, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3G_: argument 2"}
!3021 = distinct !{!3021, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant"}
!3022 = distinct !{!3022, !3021, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant: argument 0"}
!3023 = distinct !{!3023, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant"}
!3024 = distinct !{!3024, !3023, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant: argument 0"}
!3025 = distinct !{!3025, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant"}
!3026 = distinct !{!3026, !3025, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant: argument 0"}
!3027 = distinct !{!3027, i1 true, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtB8_5types4json14JsonExtractFutNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEINtB1l_4JsonB1T_EE15project_replaceCsl8OoimOLbh_6qdrant"}
!3028 = distinct !{!3028, !3027, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtB8_5types4json14JsonExtractFutNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEINtB1l_4JsonB1T_EE15project_replaceCsl8OoimOLbh_6qdrant: argument 1"}
!3029 = distinct !{!3029, !3027, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtB8_5types4json14JsonExtractFutNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEINtB1l_4JsonB1T_EE15project_replaceCsl8OoimOLbh_6qdrant: argument 2"}
!3030 = distinct !{!3030, !3027, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtB8_5types4json14JsonExtractFutNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEINtB1l_4JsonB1T_EE15project_replaceCsl8OoimOLbh_6qdrant: argument 0"}
!3031 = distinct !{!3031, i1 true, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCskKLDkoKarTP_4core6future5ready5ReadyINtNtB1p_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEEB2o_E15project_replaceB2u_"}
!3032 = distinct !{!3032, !3031, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCskKLDkoKarTP_4core6future5ready5ReadyINtNtB1p_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEEB2o_E15project_replaceB2u_: argument 0"}
!3033 = distinct !{!3033, !3031, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCskKLDkoKarTP_4core6future5ready5ReadyINtNtB1p_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEEB2o_E15project_replaceB2u_: argument 1"}
!3034 = distinct !{!3034, !3031, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCskKLDkoKarTP_4core6future5ready5ReadyINtNtB1p_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEEB2o_E15project_replaceB2u_: argument 2"}
!3035 = distinct !{!3035, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant"}
!3036 = distinct !{!3036, !3035, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant: argument 0"}
!3037 = distinct !{!3037, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant"}
!3038 = distinct !{!3038, !3037, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant: argument 0"}
!3039 = distinct !{!3039, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant"}
!3040 = distinct !{!3040, !3039, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant: argument 0"}
!3041 = distinct !{!3041, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant"}
!3042 = distinct !{!3042, !3041, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant: argument 0"}
!3043 = distinct !{!3043, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant"}
!3044 = distinct !{!3044, !3043, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant: argument 0"}
!3045 = distinct !{!3045, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant"}
!3046 = distinct !{!3046, !3045, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant: argument 0"}
!3047 = distinct !{!3047, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant"}
!3048 = distinct !{!3048, !3047, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant: argument 0"}
!3049 = distinct !{!3049, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant"}
!3050 = distinct !{!3050, !3049, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant: argument 0"}
!3051 = distinct !{!3051, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant"}
!3052 = distinct !{!3052, !3051, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant: argument 0"}
!3053 = !{!2989}
!3054 = !{!2990}
!3055 = !{!2989, !2990}
!3056 = !{!2992}
!3057 = !{!2993}
!3058 = !{!2992, !2993}
!3059 = !{!2995}
!3060 = !{!2996}
!3061 = !{!2995, !2996}
!3062 = !{!2998}
!3063 = !{!2999}
!3064 = !{!3000, !2998, !2999}
!3065 = !{!3000, !2999}
!3066 = !{!2998, !2999}
!3067 = !{!3002}
!3068 = !{!3004}
!3069 = !{!3005}
!3070 = !{!3006}
!3071 = !{!3004, !3005, !3006}
!3072 = !{!3004, !3006}
!3073 = !{!3005, !3006}
!3074 = !{!3004, !3005}
!3075 = !{!3008}
!3076 = !{!3009, !3008}
!3077 = !{!3011}
!3078 = !{!3012}
!3079 = !{!3013, !3011, !3012}
!3080 = !{!3013, !3012}
!3081 = !{!3011, !3012}
!3082 = !{!3015}
!3083 = !{!3016}
!3084 = !{!3015, !3016}
!3085 = !{!3018}
!3086 = !{!3019}
!3087 = !{!3020}
!3088 = !{!3018, !3019, !3020}
!3089 = !{!3018, !3020}
!3090 = !{!3019, !3020}
!3091 = !{!3022}
!3092 = !{!3024}
!3093 = !{!3026}
!3094 = !{!3026, !3024, !3022}
!3095 = !{!3018, !3019}
!3096 = !{!3028}
!3097 = !{!3029}
!3098 = !{!3030, !3028, !3029}
!3099 = !{!3030, !3029}
!3100 = !{!3028, !3029}
!3101 = !{!3032}
!3102 = !{!3033}
!3103 = !{!3034}
!3104 = !{!3032, !3033, !3034}
!3105 = !{!3032, !3034}
!3106 = !{!3033, !3034}
!3107 = !{!3032, !3033}
!3108 = !{!3036}
!3109 = !{!3038}
!3110 = !{!3040}
!3111 = !{!3040, !3038, !3036}
!3112 = !{!3042}
!3113 = !{!3044}
!3114 = !{!3046}
!3115 = !{!3046, !3044, !3042}
!3116 = !{!3048}
!3117 = !{!3050}
!3118 = !{!3052}
!3119 = !{!3052, !3050, !3048}
!3120 = distinct !{!3120, i1 true, !"_RNvXs0_NtNtCs2tOeTMwhwEo_11actix_utils6future5readyINtB5_5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB1G_5error5error5ErrorEENtNtNtB14_6future6future6Future4pollCsl8OoimOLbh_6qdrant"}
!3121 = distinct !{!3121, !3120, !"_RNvXs0_NtNtCs2tOeTMwhwEo_11actix_utils6future5readyINtB5_5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB1G_5error5error5ErrorEENtNtNtB14_6future6future6Future4pollCsl8OoimOLbh_6qdrant: argument 0"}
!3122 = distinct !{!3122, !3120, !"_RNvXs0_NtNtCs2tOeTMwhwEo_11actix_utils6future5readyINtB5_5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB1G_5error5error5ErrorEENtNtNtB14_6future6future6Future4pollCsl8OoimOLbh_6qdrant: argument 1"}
!3123 = distinct !{!3123, i1 true, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCs2tOeTMwhwEo_11actix_utils6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB8_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB8_5error5error5ErrorEEB2L_E15project_replaceCsl8OoimOLbh_6qdrant"}
!3124 = distinct !{!3124, !3123, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCs2tOeTMwhwEo_11actix_utils6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB8_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB8_5error5error5ErrorEEB2L_E15project_replaceCsl8OoimOLbh_6qdrant: argument 0"}
!3125 = distinct !{!3125, !3123, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCs2tOeTMwhwEo_11actix_utils6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB8_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB8_5error5error5ErrorEEB2L_E15project_replaceCsl8OoimOLbh_6qdrant: argument 1"}
!3126 = distinct !{!3126, i1 true, !"_RNvXs1_NtNtCsiHzErX7aQFk_12futures_util6future5readyINtB5_5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtCsgoPClq0H8JF_9actix_web5error5error5ErrorEENtNtNtB15_6future6future6Future4pollB2w_"}
!3127 = distinct !{!3127, !3126, !"_RNvXs1_NtNtCsiHzErX7aQFk_12futures_util6future5readyINtB5_5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtCsgoPClq0H8JF_9actix_web5error5error5ErrorEENtNtNtB15_6future6future6Future4pollB2w_: argument 0"}
!3128 = distinct !{!3128, !3126, !"_RNvXs1_NtNtCsiHzErX7aQFk_12futures_util6future5readyINtB5_5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtCsgoPClq0H8JF_9actix_web5error5error5ErrorEENtNtNtB15_6future6future6Future4pollB2w_: argument 1"}
!3129 = distinct !{!3129, i1 true, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3G_"}
!3130 = distinct !{!3130, !3129, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3G_: argument 1"}
!3131 = distinct !{!3131, !3129, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3G_: argument 2"}
!3132 = distinct !{!3132, !3129, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3G_: argument 0"}
!3133 = distinct !{!3133, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req18ExtractReplaceProjINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtB4_6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtBI_5error5error5ErrorEEB32_EEB3W_"}
!3134 = distinct !{!3134, !3133, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req18ExtractReplaceProjINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtB4_6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtBI_5error5error5ErrorEEB32_EEB3W_: argument 0"}
!3135 = distinct !{!3135, i1 true, !"_RNvXs0_NtNtCs2tOeTMwhwEo_11actix_utils6future5readyINtB5_5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtCsgoPClq0H8JF_9actix_web5types5query5QueryNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api12snapshot_api17SnapshottingParamENtNtNtB1I_5error5error5ErrorEENtNtNtB14_6future6future6Future4pollB2w_"}
!3136 = distinct !{!3136, !3135, !"_RNvXs0_NtNtCs2tOeTMwhwEo_11actix_utils6future5readyINtB5_5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtCsgoPClq0H8JF_9actix_web5types5query5QueryNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api12snapshot_api17SnapshottingParamENtNtNtB1I_5error5error5ErrorEENtNtNtB14_6future6future6Future4pollB2w_: argument 0"}
!3137 = distinct !{!3137, !3135, !"_RNvXs0_NtNtCs2tOeTMwhwEo_11actix_utils6future5readyINtB5_5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtCsgoPClq0H8JF_9actix_web5types5query5QueryNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api12snapshot_api17SnapshottingParamENtNtNtB1I_5error5error5ErrorEENtNtNtB14_6future6future6Future4pollB2w_: argument 1"}
!3138 = distinct !{!3138, i1 true, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCs2tOeTMwhwEo_11actix_utils6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtB8_5types5query5QueryNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api12snapshot_api17SnapshottingParamENtNtNtB8_5error5error5ErrorEEB2L_E15project_replaceB3l_"}
!3139 = distinct !{!3139, !3138, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCs2tOeTMwhwEo_11actix_utils6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtB8_5types5query5QueryNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api12snapshot_api17SnapshottingParamENtNtNtB8_5error5error5ErrorEEB2L_E15project_replaceB3l_: argument 0"}
!3140 = distinct !{!3140, !3138, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCs2tOeTMwhwEo_11actix_utils6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtB8_5types5query5QueryNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api12snapshot_api17SnapshottingParamENtNtNtB8_5error5error5ErrorEEB2L_E15project_replaceB3l_: argument 1"}
!3141 = distinct !{!3141, i1 true, !"_RNvXs_NtNtCskKLDkoKarTP_4core6future5readyINtB4_5ReadyINtNtB8_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEENtNtB6_6future6Future4pollB1i_"}
!3142 = distinct !{!3142, !3141, !"_RNvXs_NtNtCskKLDkoKarTP_4core6future5readyINtB4_5ReadyINtNtB8_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEENtNtB6_6future6Future4pollB1i_: argument 1"}
!3143 = distinct !{!3143, !3141, !"_RNvXs_NtNtCskKLDkoKarTP_4core6future5readyINtB4_5ReadyINtNtB8_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEENtNtB6_6future6Future4pollB1i_: argument 0"}
!3144 = distinct !{!3144, i1 true, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCskKLDkoKarTP_4core6future5ready5ReadyINtNtB1p_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEEB2o_E15project_replaceB2u_"}
!3145 = distinct !{!3145, !3144, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCskKLDkoKarTP_4core6future5ready5ReadyINtNtB1p_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEEB2o_E15project_replaceB2u_: argument 1"}
!3146 = distinct !{!3146, !3144, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCskKLDkoKarTP_4core6future5ready5ReadyINtNtB1p_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEEB2o_E15project_replaceB2u_: argument 2"}
!3147 = distinct !{!3147, !3144, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCskKLDkoKarTP_4core6future5ready5ReadyINtNtB1p_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEEB2o_E15project_replaceB2u_: argument 0"}
!3148 = distinct !{!3148, i1 true, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCs2tOeTMwhwEo_11actix_utils6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB8_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB8_5error5error5ErrorEEB2L_E15project_replaceCsl8OoimOLbh_6qdrant"}
!3149 = distinct !{!3149, !3148, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCs2tOeTMwhwEo_11actix_utils6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB8_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB8_5error5error5ErrorEEB2L_E15project_replaceCsl8OoimOLbh_6qdrant: argument 0"}
!3150 = distinct !{!3150, !3148, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCs2tOeTMwhwEo_11actix_utils6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB8_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB8_5error5error5ErrorEEB2L_E15project_replaceCsl8OoimOLbh_6qdrant: argument 1"}
!3151 = distinct !{!3151, i1 true, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3G_"}
!3152 = distinct !{!3152, !3151, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3G_: argument 0"}
!3153 = distinct !{!3153, !3151, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3G_: argument 1"}
!3154 = distinct !{!3154, !3151, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3G_: argument 2"}
!3155 = distinct !{!3155, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant"}
!3156 = distinct !{!3156, !3155, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant: argument 0"}
!3157 = distinct !{!3157, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant"}
!3158 = distinct !{!3158, !3157, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant: argument 0"}
!3159 = distinct !{!3159, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant"}
!3160 = distinct !{!3160, !3159, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant: argument 0"}
!3161 = distinct !{!3161, i1 true, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCs2tOeTMwhwEo_11actix_utils6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtB8_5types5query5QueryNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api12snapshot_api17SnapshottingParamENtNtNtB8_5error5error5ErrorEEB2L_E15project_replaceB3l_"}
!3162 = distinct !{!3162, !3161, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCs2tOeTMwhwEo_11actix_utils6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtB8_5types5query5QueryNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api12snapshot_api17SnapshottingParamENtNtNtB8_5error5error5ErrorEEB2L_E15project_replaceB3l_: argument 0"}
!3163 = distinct !{!3163, !3161, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCs2tOeTMwhwEo_11actix_utils6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtB8_5types5query5QueryNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api12snapshot_api17SnapshottingParamENtNtNtB8_5error5error5ErrorEEB2L_E15project_replaceB3l_: argument 1"}
!3164 = distinct !{!3164, i1 true, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCskKLDkoKarTP_4core6future5ready5ReadyINtNtB1p_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEEB2o_E15project_replaceB2u_"}
!3165 = distinct !{!3165, !3164, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCskKLDkoKarTP_4core6future5ready5ReadyINtNtB1p_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEEB2o_E15project_replaceB2u_: argument 0"}
!3166 = distinct !{!3166, !3164, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCskKLDkoKarTP_4core6future5ready5ReadyINtNtB1p_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEEB2o_E15project_replaceB2u_: argument 1"}
!3167 = distinct !{!3167, !3164, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCskKLDkoKarTP_4core6future5ready5ReadyINtNtB1p_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEEB2o_E15project_replaceB2u_: argument 2"}
!3168 = distinct !{!3168, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant"}
!3169 = distinct !{!3169, !3168, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant: argument 0"}
!3170 = distinct !{!3170, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant"}
!3171 = distinct !{!3171, !3170, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant: argument 0"}
!3172 = distinct !{!3172, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant"}
!3173 = distinct !{!3173, !3172, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant: argument 0"}
!3174 = distinct !{!3174, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant"}
!3175 = distinct !{!3175, !3174, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant: argument 0"}
!3176 = distinct !{!3176, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant"}
!3177 = distinct !{!3177, !3176, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant: argument 0"}
!3178 = distinct !{!3178, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant"}
!3179 = distinct !{!3179, !3178, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant: argument 0"}
!3180 = distinct !{!3180, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant"}
!3181 = distinct !{!3181, !3180, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant: argument 0"}
!3182 = distinct !{!3182, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant"}
!3183 = distinct !{!3183, !3182, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant: argument 0"}
!3184 = distinct !{!3184, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant"}
!3185 = distinct !{!3185, !3184, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant: argument 0"}
!3186 = !{!3121}
!3187 = !{!3122}
!3188 = !{!3121, !3122}
!3189 = !{!3124}
!3190 = !{!3125}
!3191 = !{!3124, !3125}
!3192 = !{!3127}
!3193 = !{!3128}
!3194 = !{!3127, !3128}
!3195 = !{!3130}
!3196 = !{!3131}
!3197 = !{!3132, !3130, !3131}
!3198 = !{!3132, !3131}
!3199 = !{!3130, !3131}
!3200 = !{!3134}
!3201 = !{!3136}
!3202 = !{!3137}
!3203 = !{!3136, !3137}
!3204 = !{!3139}
!3205 = !{!3140}
!3206 = !{!3139, !3140}
!3207 = !{!3142}
!3208 = !{!3143, !3142}
!3209 = !{!3145}
!3210 = !{!3146}
!3211 = !{!3147, !3145, !3146}
!3212 = !{!3147, !3146}
!3213 = !{!3145, !3146}
!3214 = !{!3149}
!3215 = !{!3150}
!3216 = !{!3149, !3150}
!3217 = !{!3152}
!3218 = !{!3153}
!3219 = !{!3154}
!3220 = !{!3152, !3153, !3154}
!3221 = !{!3152, !3154}
!3222 = !{!3153, !3154}
!3223 = !{!3156}
!3224 = !{!3158}
!3225 = !{!3160}
!3226 = !{!3160, !3158, !3156}
!3227 = !{!3152, !3153}
!3228 = !{!3162}
!3229 = !{!3163}
!3230 = !{!3162, !3163}
!3231 = !{!3165}
!3232 = !{!3166}
!3233 = !{!3167}
!3234 = !{!3165, !3166, !3167}
!3235 = !{!3165, !3167}
!3236 = !{!3166, !3167}
!3237 = !{!3165, !3166}
!3238 = !{!3169}
!3239 = !{!3171}
!3240 = !{!3173}
!3241 = !{!3173, !3171, !3169}
!3242 = !{!3175}
!3243 = !{!3177}
!3244 = !{!3179}
!3245 = !{!3179, !3177, !3175}
!3246 = !{!3181}
!3247 = !{!3183}
!3248 = !{!3185}
!3249 = !{!3185, !3183, !3181}
!3250 = distinct !{!3250, i1 true, !"_RNvXs0_NtNtCs2tOeTMwhwEo_11actix_utils6future5readyINtB5_5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB1G_5error5error5ErrorEENtNtNtB14_6future6future6Future4pollCsl8OoimOLbh_6qdrant"}
!3251 = distinct !{!3251, !3250, !"_RNvXs0_NtNtCs2tOeTMwhwEo_11actix_utils6future5readyINtB5_5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB1G_5error5error5ErrorEENtNtNtB14_6future6future6Future4pollCsl8OoimOLbh_6qdrant: argument 0"}
!3252 = distinct !{!3252, !3250, !"_RNvXs0_NtNtCs2tOeTMwhwEo_11actix_utils6future5readyINtB5_5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB1G_5error5error5ErrorEENtNtNtB14_6future6future6Future4pollCsl8OoimOLbh_6qdrant: argument 1"}
!3253 = distinct !{!3253, i1 true, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCs2tOeTMwhwEo_11actix_utils6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB8_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB8_5error5error5ErrorEEB2L_E15project_replaceCsl8OoimOLbh_6qdrant"}
!3254 = distinct !{!3254, !3253, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCs2tOeTMwhwEo_11actix_utils6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB8_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB8_5error5error5ErrorEEB2L_E15project_replaceCsl8OoimOLbh_6qdrant: argument 0"}
!3255 = distinct !{!3255, !3253, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCs2tOeTMwhwEo_11actix_utils6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB8_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtNtB8_5error5error5ErrorEEB2L_E15project_replaceCsl8OoimOLbh_6qdrant: argument 1"}
!3256 = distinct !{!3256, i1 true, !"_RNvXs1_NtNtCsiHzErX7aQFk_12futures_util6future5readyINtB5_5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api22CollectionSnapshotPathENtNtNtCsgoPClq0H8JF_9actix_web5error5error5ErrorEENtNtNtB15_6future6future6Future4pollB2w_"}
!3257 = distinct !{!3257, !3256, !"_RNvXs1_NtNtCsiHzErX7aQFk_12futures_util6future5readyINtB5_5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api22CollectionSnapshotPathENtNtNtCsgoPClq0H8JF_9actix_web5error5error5ErrorEENtNtNtB15_6future6future6Future4pollB2w_: argument 0"}
!3258 = distinct !{!3258, !3256, !"_RNvXs1_NtNtCsiHzErX7aQFk_12futures_util6future5readyINtB5_5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api22CollectionSnapshotPathENtNtNtCsgoPClq0H8JF_9actix_web5error5error5ErrorEENtNtNtB15_6future6future6Future4pollB2w_: argument 1"}
!3259 = distinct !{!3259, i1 true, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api22CollectionSnapshotPathENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3G_"}
!3260 = distinct !{!3260, !3259, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api22CollectionSnapshotPathENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3G_: argument 1"}
!3261 = distinct !{!3261, !3259, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api22CollectionSnapshotPathENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3G_: argument 2"}
!3262 = distinct !{!3262, !3259, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api22CollectionSnapshotPathENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3G_: argument 0"}
!3263 = distinct !{!3263, i1 true, !"_RNvXs1_NtNtCsiHzErX7aQFk_12futures_util6future5readyINtB5_5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator5query5QueryNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api12snapshot_api17SnapshottingParamENtNtNtCsgoPClq0H8JF_9actix_web5error5error5ErrorEENtNtNtB15_6future6future6Future4pollB2A_"}
!3264 = distinct !{!3264, !3263, !"_RNvXs1_NtNtCsiHzErX7aQFk_12futures_util6future5readyINtB5_5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator5query5QueryNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api12snapshot_api17SnapshottingParamENtNtNtCsgoPClq0H8JF_9actix_web5error5error5ErrorEENtNtNtB15_6future6future6Future4pollB2A_: argument 0"}
!3265 = distinct !{!3265, !3263, !"_RNvXs1_NtNtCsiHzErX7aQFk_12futures_util6future5readyINtB5_5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator5query5QueryNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api12snapshot_api17SnapshottingParamENtNtNtCsgoPClq0H8JF_9actix_web5error5error5ErrorEENtNtNtB15_6future6future6Future4pollB2A_: argument 1"}
!3266 = distinct !{!3266, i1 true, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator5query5QueryNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api12snapshot_api17SnapshottingParamENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3K_"}
!3267 = distinct !{!3267, !3266, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator5query5QueryNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api12snapshot_api17SnapshottingParamENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3K_: argument 0"}
!3268 = distinct !{!3268, !3266, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCsiHzErX7aQFk_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtCs93fV3EiCHxi_19actix_web_validator5query5QueryNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api12snapshot_api17SnapshottingParamENtNtNtB8_5error5error5ErrorEEB2M_E15project_replaceB3K_: argument 1"}
!3269 = distinct !{!3269, i1 true, !"_RNvXs_NtNtCskKLDkoKarTP_4core6future5readyINtB4_5ReadyINtNtB8_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEENtNtB6_6future6Future4pollB1i_"}
!3270 = distinct !{!3270, !3269, !"_RNvXs_NtNtCskKLDkoKarTP_4core6future5readyINtB4_5ReadyINtNtB8_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEENtNtB6_6future6Future4pollB1i_: argument 1"}
!3271 = distinct !{!3271, !3269, !"_RNvXs_NtNtCskKLDkoKarTP_4core6future5readyINtB4_5ReadyINtNtB8_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEENtNtB6_6future6Future4pollB1i_: argument 0"}
!3272 = distinct !{!3272, i1 true, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCskKLDkoKarTP_4core6future5ready5ReadyINtNtB1p_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEEB2o_E15project_replaceB2u_"}
!3273 = distinct !{!3273, !3272, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCskKLDkoKarTP_4core6future5ready5ReadyINtNtB1p_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEEB2o_E15project_replaceB2u_: argument 1"}
!3274 = distinct !{!3274, !3272, !"_RNvMNvNtNtCsgoPClq0H8JF_9actix_web7extract14tuple_from_req1__INtB4_13ExtractFutureINtNtNtCskKLDkoKarTP_4core6future5ready5ReadyINtNtB1p_6result6ResultNtNtNtCsl8OoimOLbh_6qdrant5actix4auth9ActixAuthzEEB2o_E15project_replaceB2u_: argument 2"}
end_hunk_1
