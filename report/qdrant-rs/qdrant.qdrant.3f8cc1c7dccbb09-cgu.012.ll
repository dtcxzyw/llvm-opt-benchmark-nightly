Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.012?download=true
inline.NumInlined: 6425
inline.NumDeleted: 3672
begin_hunk_0_@_RNvXs4_NtCs5QaNqjAn6vc_5shard10operationsNtB5_26CollectionUpdateOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone:bb.a
  br label %bb.br

bb.bt:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !9037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !9037
  br label %bb.bq

bb.bu:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !9037
  invoke fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ek)
          to label %bb.bw unwind label %bb.bv, !noalias !9038

bb.bv:                                            ; preds = %bb.bu
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #21
          to label %bb.br unwind label %bb.bx, !noalias !9038

bb.bw:                                            ; preds = %bb.bu
  %.sroa.0.0.copyload1.i.i5 = load i64, ptr %i.i, align 8, !noalias !9037
  %.sroa.5.0..sroa_idx2.i.i6 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.i.i2, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.0..sroa_idx2.i.i6, i64 96, i1 false), !noalias !9040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9037
  br label %_RNvXsC_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_15DeletePayloadOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.bx:                                            ; preds = %bb.bv, %bb.br
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !9038
  unreachable

_RNvXsC_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_15DeletePayloadOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %bb.bw, %bb.bq
  %.sroa.0.0.i.i7 = phi i64 [ %.sroa.0.0.copyload1.i.i5, %bb.bw ], [ -2, %bb.bq ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i3, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !9041
  %.sroa.0.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !9041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !9037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !9037
  %i.ep = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ep, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i3, i64 48, i1 false), !noalias !9035
  %.sroa.5.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  store i64 %.sroa.0.0.i.i7, ptr %.sroa.5.0..sroa_idx.i8, align 8, !alias.scope !9034, !noalias !9035
  %.sroa.6.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6.0..sroa_idx.i9, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.i.i2, i64 96, i1 false), !noalias !9035
  store i64 1, ptr %i.z, align 8, !alias.scope !9034, !noalias !9035
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i3)
  br label %_RNvXs2_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_10PayloadOpsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.by:                                            ; preds = %bb.bl
  %i.eq = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.eq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eg)
  store i64 2, ptr %i.z, align 8, !alias.scope !9034, !noalias !9035
  br label %_RNvXs2_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_10PayloadOpsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.bz:                                            ; preds = %bb.bl
  %i.er = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.er, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.eg) #25
  store i64 3, ptr %i.z, align 8, !alias.scope !9034, !noalias !9035
  br label %_RNvXs2_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_10PayloadOpsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.ca:                                            ; preds = %bb.bl
  %i.es = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call fastcc void @_RNvXst_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_12SetPayloadOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(248) %i.es, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.eg) #25
  store i64 4, ptr %i.z, align 8, !alias.scope !9034, !noalias !9035
  br label %_RNvXs2_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_10PayloadOpsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

_RNvXs2_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_10PayloadOpsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %bb.bm, %_RNvXsC_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_15DeletePayloadOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %bb.by, %bb.bz, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %i.z, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.dj

bb.cb:                                            ; preds = %bb.a
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.28)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9042)
  %i.eu = load i64, ptr %i.et, align 8, !range !53, !alias.scope !9042, !noalias !9043, !noundef !17 ; 8 uses
  %i.ev = icmp eq i64 %i.eu, -3
  br i1 %i.ev, label %bb.cc, label %bb.cf

bb.cc:                                            ; preds = %bb.cb
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !9044
  call void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ew), !noalias !9045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !9044
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ex)
          to label %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i unwind label %bb.cd, !noalias !9045

bb.cd:                                            ; preds = %bb.cc
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #21
          to label %common.resume unwind label %bb.ce, !noalias !9045

bb.ce:                                            ; preds = %bb.cd
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !9045
  unreachable

_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %bb.cc
  %i.fa = load <4 x i8>, ptr %i.h, align 8, !noalias !9046
  %.sroa.726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.726.0.copyload = load i8, ptr %.sroa.726.0..sroa_idx, align 4, !noalias !9046
  %.sroa.827.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 5
  %.sroa.827.0.copyload = load i8, ptr %.sroa.827.0..sroa_idx, align 1, !noalias !9046
  %.sroa.928.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 6
  %.sroa.928.0.copyload = load i16, ptr %.sroa.928.0..sroa_idx, align 2, !noalias !9046
  %.sroa.1029.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.1029.0.copyload = load i64, ptr %.sroa.1029.0..sroa_idx, align 8, !noalias !9046
  %.sroa.1130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.1130.0.copyload = load i64, ptr %.sroa.1130.0..sroa_idx, align 8, !noalias !9046
  %.sroa.1231.24.copyload = load i64, ptr %i.g, align 8, !noalias !9046
  %.sroa.1432.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.1432.24.copyload = load i8, ptr %.sroa.1432.24..sroa_idx, align 8, !noalias !9046
  %.sroa.1533.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.7.sroa.0.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.1533.24..sroa_idx, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9044
  br label %_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.cf:                                            ; preds = %bb.cb
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9047)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !9048
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9049
  call void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fb), !noalias !9050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9049
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fc)
          to label %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i unwind label %bb.cg, !noalias !9050

bb.cg:                                            ; preds = %bb.cf
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #21
          to label %common.resume unwind label %bb.ch, !noalias !9050

bb.ch:                                            ; preds = %bb.cg
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !9050
  unreachable

_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !9051
  %i.ff = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ff, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !9051
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9049
  switch i64 %i.eu, label %bb.ci [
    i64 -2, label %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
    i64 -1, label %bb.da
  ]

bb.ci:                                            ; preds = %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9052)
  %i.fg = icmp ne i64 %i.eu, 6
  call void @llvm.assume(i1 %i.fg)
  %i.fh = add nsw i64 %i.eu, -2
  %i.fi = icmp samesign ugt i64 %i.eu, 1
  %i.fj = select i1 %i.fi, i64 %i.fh, i64 4
  switch i64 %i.fj, label %bb.cj [
    i64 0, label %bb.ck
    i64 1, label %bb.cl
    i64 2, label %bb.cm
    i64 3, label %bb.cn
    i64 4, label %bb.co
    i64 5, label %bb.cx
    i64 6, label %bb.cy
    i64 7, label %bb.cz
  ]

bb.cj:                                            ; preds = %bb.ci
  unreachable

bb.ck:                                            ; preds = %bb.ci
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.fm = load i8, ptr %i.fl, align 4, !range !60, !alias.scope !9053, !noalias !9054, !noundef !17
  %i.fn = load <4 x i8>, ptr %i.fk, align 8, !alias.scope !9053, !noalias !9054
  br label %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.cl:                                            ; preds = %bb.ci
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fp = load <4 x i8>, ptr %i.fo, align 8, !alias.scope !9053, !noalias !9054
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.fr = load i8, ptr %i.fq, align 1, !range !60, !alias.scope !9053, !noalias !9054, !noundef !17
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ft = load i8, ptr %i.fs, align 4, !range !40, !alias.scope !9053, !noalias !9054, !noundef !17
  br label %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.cm:                                            ; preds = %bb.ci
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fv = load <4 x i8>, ptr %i.fu, align 8, !alias.scope !9053, !noalias !9054
  br label %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.cn:                                            ; preds = %bb.ci
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 18
  %3 = load <16 x i8>, ptr %2, align 2
  %i.fx = load <4 x i8>, ptr %i.fw, align 8
  %4 = shufflevector <16 x i8> %3, <16 x i8> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %5 = shufflevector <4 x i8> %i.fx, <4 x i8> %4, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.co:                                            ; preds = %bb.ci
  call void @llvm.experimental.noalias.scope.decl(metadata !9055)
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 109
  %i.fz = load i8, ptr %i.fy, align 1, !range !47, !alias.scope !9056, !noalias !9057, !noundef !17
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gb = load i64, ptr %i.ga, align 8, !alias.scope !9056, !noalias !9057
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gd = load i64, ptr %i.gc, align 8, !range !24, !alias.scope !9056, !noalias !9057, !noundef !17 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gf = load i64, ptr %i.ge, align 8, !alias.scope !9056, !noalias !9057
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.gh = load i8, ptr %i.gg, align 8, !range !40, !alias.scope !9056, !noalias !9057, !noundef !17
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 105
  %i.gj = load <2 x i8>, ptr %i.gi, align 1, !alias.scope !9056, !noalias !9057
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gl = load i64, ptr %i.gk, align 8, !range !21, !alias.scope !9056, !noalias !9057, !noundef !17 ; 3 uses
  switch i64 %i.gl, label %bb.cp [
    i64 -1, label %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i
    i64 2, label %bb.cw
  ]

bb.cp:                                            ; preds = %bb.co
  call void @llvm.experimental.noalias.scope.decl(metadata !9058)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9059
  %i.gm = trunc nuw i64 %i.gl to i1               ; 2 uses
  br i1 %i.gm, label %bb.cq, label %.noexc.i.i

bb.cq:                                            ; preds = %bb.cp
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.go = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_RNvXs0_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNtNtB7_7set_val9SetValZSTENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.go, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gn)
          to label %.noexc.i.i unwind label %bb.db, !noalias !9060

.noexc.i.i:                                       ; preds = %bb.cq, %bb.cp
  %.sroa.0.0.copyload.i.i.i.i = phi i64 [ 0, %bb.cp ], [ 1, %bb.cq ] ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.c, align 8, !noalias !9059
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.gq = load i64, ptr %i.gp, align 8, !range !24, !alias.scope !9061, !noalias !9062, !noundef !17
  %i.gr = trunc nuw i64 %i.gq to i1
  br i1 %i.gr, label %bb.cr, label %_RNvXs2M_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_12StopwordsSetNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.cr:                                            ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9059
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_RNvXs0_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gs)
          to label %bb.cu unwind label %bb.cs, !noalias !9062

bb.cs:                                            ; preds = %bb.cr
  %i.gt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.gm, label %bb.ct, label %.body.i.i17

bb.ct:                                            ; preds = %bb.cs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNtNtB4_7set_val9SetValZSTENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gu)
          to label %.body.i.i17 unwind label %bb.cv, !noalias !9062

bb.cu:                                            ; preds = %bb.cr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9059
  br label %_RNvXs2M_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_12StopwordsSetNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.cv:                                            ; preds = %bb.ct
  %i.gv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !9062
  unreachable

_RNvXs2M_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_12StopwordsSetNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %bb.cu, %.noexc.i.i
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 1, %bb.cu ], [ 0, %.noexc.i.i ]
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !9063
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.7.sroa.0.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.0..sroa_idx.i.i.i.i, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9059
  br label %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

bb.cw:                                            ; preds = %bb.co
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gx = load i8, ptr %i.gw, align 8, !range !9064, !alias.scope !9056, !noalias !9057, !noundef !17
  br label %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.cw, %_RNvXs2M_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_12StopwordsSetNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, %bb.co
  %.sroa.58.sroa.4.sroa.4.0.i.i.i.i = phi i64 [ undef, %bb.co ], [ undef, %bb.cw ], [ %.sroa.0.0.i.i.i.i.i, %_RNvXs2M_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_12StopwordsSetNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.58.sroa.0.0.i.i.i.i = phi i8 [ undef, %bb.co ], [ %i.gx, %bb.cw ], [ %.sroa.4.0.copyload.i.i.i.i, %_RNvXs2M_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_12StopwordsSetNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.06.0.i.i.i.i16 = phi i64 [ %i.gl, %bb.co ], [ 2, %bb.cw ], [ %.sroa.0.0.copyload.i.i.i.i, %_RNvXs2M_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_12StopwordsSetNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.gy = trunc nuw i64 %i.gd to i1
  %.sroa.52.0.i.i.i.i = select i1 %i.gy, i64 %i.gf, i64 undef
  %i.gz = trunc nuw i64 %i.eu to i1
  %.sroa.5.0.i.i.i.i = select i1 %i.gz, i64 %i.gb, i64 undef ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 107
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 110
  %i.hc = load i8, ptr %i.hb, align 2, !range !60, !alias.scope !9056, !noalias !9057, !noundef !17
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 111
  %i.he = load i8, ptr %i.hd, align 1, !range !9065, !alias.scope !9056, !noalias !9057, !noundef !17
  %i.hf = load <2 x i8>, ptr %i.ha, align 1, !alias.scope !9056, !noalias !9057
  %.sroa.11.sroa.31.0.extract.shift.i.i = lshr i64 %.sroa.5.0.i.i.i.i, 32
  %.sroa.11.sroa.31.0.extract.trunc.i.i = trunc i64 %.sroa.11.sroa.31.0.extract.shift.i.i to i8
  %.sroa.11.sroa.33.0.extract.shift.i.i = lshr i64 %.sroa.5.0.i.i.i.i, 40
  %.sroa.11.sroa.33.0.extract.trunc.i.i = trunc i64 %.sroa.11.sroa.33.0.extract.shift.i.i to i8
  %.sroa.11.sroa.34.0.extract.shift.i.i = lshr i64 %.sroa.5.0.i.i.i.i, 48
  %.sroa.11.sroa.34.0.extract.trunc.i.i = trunc nuw i64 %.sroa.11.sroa.34.0.extract.shift.i.i to i16
  %i.hg = bitcast i64 %.sroa.5.0.i.i.i.i to <8 x i8>
  %i.hh = shufflevector <8 x i8> %i.hg, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hi = shufflevector <2 x i8> %i.gj, <2 x i8> %i.hf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.cx:                                            ; preds = %bb.ci
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 18
  %7 = load <16 x i8>, ptr %6, align 2
  %i.hk = load <4 x i8>, ptr %i.hj, align 8
  %8 = shufflevector <16 x i8> %7, <16 x i8> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %9 = shufflevector <4 x i8> %i.hk, <4 x i8> %8, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.cy:                                            ; preds = %bb.ci
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hm = load <4 x i8>, ptr %i.hl, align 8, !alias.scope !9053, !noalias !9054
  br label %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.cz:                                            ; preds = %bb.ci
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ho = load <4 x i8>, ptr %i.hn, align 8, !alias.scope !9053, !noalias !9054
  br label %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.da:                                            ; preds = %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hq = load i8, ptr %i.hp, align 8, !range !9066, !alias.scope !9067, !noalias !9060, !noundef !17
  %i.hr = insertelement <4 x i8> <i8 poison, i8 undef, i8 undef, i8 undef>, i8 %i.hq, i64 0
  br label %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.db:                                            ; preds = %bb.cq
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i17

.body.i.i17:                                      ; preds = %bb.db, %bb.ct, %bb.cs
  %eh.lpad-body.i.i18 = phi { ptr, i32 } [ %i.hs, %bb.db ], [ %i.gt, %bb.ct ], [ %i.gt, %bb.cs ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.f) #21
          to label %common.resume unwind label %bb.dc, !noalias !9060

bb.dc:                                            ; preds = %.body.i.i17
  %i.ht = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !9060
  unreachable

_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %bb.da, %bb.cz, %bb.cy, %bb.cx, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  %.sroa.5.sroa.4.sroa.23.0.i.i = phi i8 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.da ], [ undef, %bb.ck ], [ undef, %bb.cl ], [ undef, %bb.cm ], [ undef, %bb.cn ], [ %i.he, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.cx ], [ undef, %bb.cy ], [ undef, %bb.cz ]
  %.sroa.5.sroa.4.sroa.22.0.i.i = phi i8 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.da ], [ undef, %bb.ck ], [ undef, %bb.cl ], [ undef, %bb.cm ], [ undef, %bb.cn ], [ %i.hc, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.cx ], [ undef, %bb.cy ], [ undef, %bb.cz ]
  %.sroa.5.sroa.4.sroa.21.0.i.i = phi i8 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.da ], [ undef, %bb.ck ], [ undef, %bb.cl ], [ undef, %bb.cm ], [ undef, %bb.cn ], [ %i.fz, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.cx ], [ undef, %bb.cy ], [ undef, %bb.cz ]
  %.sroa.5.sroa.4.sroa.16.0.i.i = phi i8 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.da ], [ undef, %bb.ck ], [ undef, %bb.cl ], [ undef, %bb.cm ], [ undef, %bb.cn ], [ %i.gh, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.cx ], [ undef, %bb.cy ], [ undef, %bb.cz ]
  %.sroa.5.sroa.4.sroa.14.0.i.i = phi i64 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.da ], [ undef, %bb.ck ], [ undef, %bb.cl ], [ undef, %bb.cm ], [ undef, %bb.cn ], [ %.sroa.58.sroa.4.sroa.4.0.i.i.i.i, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.cx ], [ undef, %bb.cy ], [ undef, %bb.cz ]
  %.sroa.5.sroa.4.sroa.12.0.i.i = phi i8 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.da ], [ undef, %bb.ck ], [ undef, %bb.cl ], [ undef, %bb.cm ], [ undef, %bb.cn ], [ %.sroa.58.sroa.0.0.i.i.i.i, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.cx ], [ undef, %bb.cy ], [ undef, %bb.cz ]
  %.sroa.5.sroa.4.sroa.11.0.i.i = phi i64 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.da ], [ undef, %bb.ck ], [ undef, %bb.cl ], [ undef, %bb.cm ], [ undef, %bb.cn ], [ %.sroa.06.0.i.i.i.i16, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.cx ], [ undef, %bb.cy ], [ undef, %bb.cz ]
  %.sroa.5.sroa.4.sroa.10.0.i.i = phi i64 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.da ], [ undef, %bb.ck ], [ undef, %bb.cl ], [ undef, %bb.cm ], [ undef, %bb.cn ], [ %.sroa.52.0.i.i.i.i, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.cx ], [ undef, %bb.cy ], [ undef, %bb.cz ]
  %.sroa.5.sroa.4.sroa.9.0.i.i = phi i64 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.da ], [ undef, %bb.ck ], [ undef, %bb.cl ], [ undef, %bb.cm ], [ undef, %bb.cn ], [ %i.gd, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.cx ], [ undef, %bb.cy ], [ undef, %bb.cz ]
  %.sroa.5.sroa.4.sroa.8.0.i.i = phi i16 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.da ], [ undef, %bb.ck ], [ undef, %bb.cl ], [ undef, %bb.cm ], [ undef, %bb.cn ], [ %.sroa.11.sroa.34.0.extract.trunc.i.i, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.cx ], [ undef, %bb.cy ], [ undef, %bb.cz ]
  %.sroa.5.sroa.4.sroa.7.0.i.i = phi i8 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.da ], [ undef, %bb.ck ], [ %i.fr, %bb.cl ], [ undef, %bb.cm ], [ undef, %bb.cn ], [ %.sroa.11.sroa.33.0.extract.trunc.i.i, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.cx ], [ undef, %bb.cy ], [ undef, %bb.cz ]
  %.sroa.5.sroa.4.sroa.6.0.i.i = phi i8 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.da ], [ %i.fm, %bb.ck ], [ %i.ft, %bb.cl ], [ undef, %bb.cm ], [ undef, %bb.cn ], [ %.sroa.11.sroa.31.0.extract.trunc.i.i, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.cx ], [ undef, %bb.cy ], [ undef, %bb.cz ]
  %.sroa.0.0.i.i12 = phi i64 [ %i.eu, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ -1, %bb.da ], [ 2, %bb.ck ], [ 3, %bb.cl ], [ 4, %bb.cm ], [ 5, %bb.cn ], [ %i.eu, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 7, %bb.cx ], [ 8, %bb.cy ], [ 9, %bb.cz ]
  %i.hu = phi <4 x i8> [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ %i.hr, %bb.da ], [ %i.fn, %bb.ck ], [ %i.fp, %bb.cl ], [ %i.fv, %bb.cm ], [ %5, %bb.cn ], [ %i.hh, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %9, %bb.cx ], [ %i.hm, %bb.cy ], [ %i.ho, %bb.cz ]
  %i.hv = phi <4 x i8> [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.da ], [ undef, %bb.ck ], [ undef, %bb.cl ], [ undef, %bb.cm ], [ undef, %bb.cn ], [ %i.hi, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.cx ], [ undef, %bb.cy ], [ undef, %bb.cz ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.28, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !9042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9048
  br label %_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
  %.sroa.27.0 = phi i8 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.5.sroa.4.sroa.23.0.i.i, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %.sroa.26.0 = phi i8 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.5.sroa.4.sroa.22.0.i.i, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %.sroa.25.0 = phi i8 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.5.sroa.4.sroa.21.0.i.i, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %.sroa.20.0 = phi i8 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.5.sroa.4.sroa.16.0.i.i, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %.sroa.18.0 = phi i64 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.5.sroa.4.sroa.14.0.i.i, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %.sroa.16.0 = phi i8 [ %.sroa.1432.24.copyload, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.5.sroa.4.sroa.12.0.i.i, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %.sroa.15.0 = phi i64 [ %.sroa.1231.24.copyload, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.5.sroa.4.sroa.11.0.i.i, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %.sroa.14.0 = phi i64 [ %.sroa.1130.0.copyload, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.5.sroa.4.sroa.10.0.i.i, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %.sroa.13.0 = phi i64 [ %.sroa.1029.0.copyload, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.5.sroa.4.sroa.9.0.i.i, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %.sroa.12.0 = phi i16 [ %.sroa.928.0.copyload, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.5.sroa.4.sroa.8.0.i.i, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %.sroa.1122.0 = phi i8 [ %.sroa.827.0.copyload, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.5.sroa.4.sroa.7.0.i.i, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %.sroa.10.0 = phi i8 [ %.sroa.726.0.copyload, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.5.sroa.4.sroa.6.0.i.i, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %.sroa.020.0 = phi i64 [ -3, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.0.0.i.i12, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %i.hw = phi <4 x i8> [ %i.fa, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.hu, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %i.hx = phi <4 x i8> [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.hv, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.020.0, ptr %i.hy, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i8> %i.hw, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.1122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %.sroa.1122.0, ptr %.sroa.1122.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 2
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.15.0, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sroa.16.0, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.17.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.7.sroa.0.i.i.i.i, i64 23, i1 false)
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.18.0, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.19.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i.i, i64 24, i1 false)
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %.sroa.20.0, ptr %.sroa.20.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 105
  store <4 x i8> %i.hx, ptr %.sroa.21.0..sroa_idx, align 1
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 109
  store i8 %.sroa.25.0, ptr %.sroa.25.0..sroa_idx, align 1
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 110
  store i8 %.sroa.26.0, ptr %.sroa.26.0..sroa_idx, align 2
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 111
  store i8 %.sroa.27.0, ptr %.sroa.27.0..sroa_idx, align 1
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.28.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.28, i64 48, i1 false)
  store i64 8, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.28)
  br label %bb.dj

bb.dd:                                            ; preds = %bb.a
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9068)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9069)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ia = load i64, ptr %i.hz, align 8, !range !22, !alias.scope !9069, !noalias !9068, !noundef !17
  %i.ib = icmp eq i64 %i.ia, -1
  br i1 %i.ib, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.id = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.id, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ic)
  store i64 -1, ptr %i.y, align 8, !alias.scope !9068, !noalias !9069
  br label %_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.df:                                            ; preds = %bb.dd
  call void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.hz), !noalias !9068
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 42
  %i.ig = load i8, ptr %i.if, align 2, !range !40, !alias.scope !9069, !noalias !9068, !noundef !17 ; 2 uses
  %i.ih = icmp eq i8 %i.ig, 2
  %.sroa.06.0.copyload.i = load i64, ptr %i.ie, align 8, !alias.scope !9069, !noalias !9068
  br i1 %i.ih, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.58.0.copyload.i = load i8, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !9069, !noalias !9068
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 41
  %.sroa.611.0.copyload.i = load i8, ptr %.sroa.611.0..sroa_idx.i, align 1, !alias.scope !9069, !noalias !9068
  %.sroa.8.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %1, i64 43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.8.i, ptr noundef nonnull readonly align 1 dereferenceable(5) %.sroa.8.0..sroa_idx.i19, i64 5, i1 false), !noalias !9068
  br label %bb.di

bb.dh:                                            ; preds = %bb.df
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.ij = load i8, ptr %i.ii, align 1, !range !47, !alias.scope !9069, !noalias !9068, !noundef !17
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.il = load i8, ptr %i.ik, align 8, !range !9070, !alias.scope !9069, !noalias !9068, !noundef !17
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.sroa.611.0.i = phi i8 [ %.sroa.611.0.copyload.i, %bb.dg ], [ %i.ij, %bb.dh ]
  %.sroa.58.0.i = phi i8 [ %.sroa.58.0.copyload.i, %bb.dg ], [ %i.il, %bb.dh ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !9069
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 %.sroa.06.0.copyload.i, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !9068, !noalias !9069
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store i8 %.sroa.58.0.i, ptr %.sroa.520.0..sroa_idx.i, align 8, !alias.scope !9068, !noalias !9069
  %.sroa.621.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 33
  store i8 %.sroa.611.0.i, ptr %.sroa.621.0..sroa_idx.i, align 1, !alias.scope !9068, !noalias !9069
  %.sroa.722.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 34
  store i8 %i.ig, ptr %.sroa.722.0..sroa_idx.i, align 2, !alias.scope !9068, !noalias !9069
  %.sroa.823.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.823.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.8.i, i64 5, i1 false), !noalias !9069
  br label %_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %bb.de, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.im, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 40, i1 false)
  store i64 9, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.dj

bb.dj:                                            ; preds = %_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, %_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, %_RNvXs2_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_10PayloadOpsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = load i64, ptr %1, align 8, !range !22, !noundef !17
  %.not = icmp eq i64 %i.g, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types9ConditionENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !range !22, !noundef !17
  %.not4 = icmp eq i64 %i.i, -1
  br i1 %.not4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !9074)
  call void @llvm.experimental.noalias.scope.decl(metadata !9075)
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types9ConditionENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
          to label %bb.j unwind label %bb.i

bb.f:                                             ; preds = %bb.d
  store i64 -1, ptr %i.e, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !22, !noundef !17
  %.not5 = icmp eq i64 %i.k, -1
  br i1 %.not5, label %bb.l, label %bb.k

bb.h:                                             ; preds = %bb.n, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.l, %bb.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #21
          to label %bb.v unwind label %bb.u

bb.i:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !9075, !noalias !9074, !noundef !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.n, ptr %i.o, align 8, !alias.scope !9074, !noalias !9075
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

end_hunk_0
