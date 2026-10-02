Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_client-75c402fe18a1f54a.xet_client.d88642a81e22a8c9-cgu.03?download=true
inline.NumInlined: 1832
inline.NumDeleted: 617
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB8_12MemoryClient29compute_reconstruction_ranges00Be_:bb.a
  br i1 %i.aw, label %bb.m, label %bb.n

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  %i.ax = load atomic i64, ptr @_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !671
  %i.ay = icmp ult i64 %i.ax, 5
  br i1 %i.ay, label %bb.h, label %_RNCNCNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBa_12MemoryClient29compute_reconstruction_ranges000Bg_.exit

bb.h:                                             ; preds = %select.unfold
  %i.az = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBc_12MemoryClient29compute_reconstruction_ranges00010___CALLSITE, i64 16) monotonic, align 8, !noalias !671 ; 3 uses
  switch i8 %i.az, label %bb.i [
    i8 0, label %_RNCNCNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBa_12MemoryClient29compute_reconstruction_ranges000Bg_.exit
    i8 1, label %bb.j
    i8 2, label %bb.j
  ], !prof !39

bb.i:                                             ; preds = %bb.h
  %i.ba = tail call noundef i8 @_RNvMNtCs94TQx44N27d_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBc_12MemoryClient29compute_reconstruction_ranges00010___CALLSITE) #26, !noalias !671 ; 2 uses
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %_RNCNCNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBa_12MemoryClient29compute_reconstruction_ranges000Bg_.exit, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.h
  %.sroa.06.0.i = phi i8 [ %i.ba, %bb.i ], [ %i.az, %bb.h ], [ %i.az, %bb.h ]
  %i.bc = load ptr, ptr @_RNvNCNCNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBc_12MemoryClient29compute_reconstruction_ranges00010___CALLSITE, align 8, !noalias !671, !nonnull !12, !align !17, !noundef !12
  %i.bd = tail call noundef zeroext i1 @_RNvNtCs942S7uueXw1_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bc, i8 noundef %.sroa.06.0.i), !noalias !671
  br i1 %i.bd, label %bb.k, label %_RNCNCNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBa_12MemoryClient29compute_reconstruction_ranges000Bg_.exit

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr @_RNvNCNCNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBc_12MemoryClient29compute_reconstruction_ranges00010___CALLSITE, align 8, !noalias !671, !nonnull !12, !align !17, !noundef !12 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !671
  store ptr %i.i, ptr %i.e, align 8, !noalias !671
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtB6_5Debug3fmtCsiAynQAjgDuT_10xet_client, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !671
  store ptr @5, ptr %i.f, align 8, !noalias !671
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.e, ptr %i.bg, align 8, !noalias !671
  store ptr %i.f, ptr %i.g, align 8, !noalias !671
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @6, ptr %i.bh, align 8, !noalias !671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !671
  store i64 1, ptr %i.d, align 8, !noalias !671
  %.sroa.08.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.g, ptr %.sroa.08.sroa.4.0..sroa_idx.i, align 8, !noalias !671
  %.sroa.08.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx.i, align 8, !noalias !671
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.bf, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !671
  call void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.be, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d), !noalias !672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !671
  %.pre = load ptr, ptr %i.i, align 8, !alias.scope !670, !noalias !672
  br label %_RNCNCNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBa_12MemoryClient29compute_reconstruction_ranges000Bg_.exit

_RNCNCNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBa_12MemoryClient29compute_reconstruction_ranges000Bg_.exit: ; preds = %select.unfold, %bb.h, %bb.i, %bb.j, %bb.k
  %i.bi = phi ptr [ %2, %select.unfold ], [ %2, %bb.h ], [ %2, %bb.i ], [ %2, %bb.j ], [ %.pre, %bb.k ] ; 2 uses
  %.sroa.4.8.copyload = load ptr, ptr %i.bi, align 8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.525.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.8..sroa_idx, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 34, ptr %i.bj, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.8.copyload, ptr %.sroa.424.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.u, %_RNCNCNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBa_12MemoryClient29compute_reconstruction_ranges000Bg_.exit, %bb.g
  ret void

bb.m:                                             ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageINtNtBS_18passthrough_hasher15U64DirectHasherBO_EE3getBO_EB26_.exit
  %i.bk = getelementptr inbounds i8, ptr %i.aj, i64 -200
  call void @_RNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation11random_xorbNtB2_10RandomXorb15get_xorb_object(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bk)
  br label %bb.u

bb.n:                                             ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageINtNtBS_18passthrough_hasher15U64DirectHasherBO_EE3getBO_EB26_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674)
  %i.bl = getelementptr inbounds i8, ptr %i.aj, i64 -69
  %i.bm = load i8, ptr %i.bl, align 1, !alias.scope !674, !noalias !673, !noundef !12
  %i.bn = getelementptr inbounds i8, ptr %i.aj, i64 -61
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !674, !noalias !673, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !675
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.au), !noalias !673
  %i.bp = getelementptr inbounds i8, ptr %i.aj, i64 -53
  %i.bq = load i8, ptr %i.bp, align 1, !alias.scope !674, !noalias !673, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !675
  %i.br = getelementptr inbounds i8, ptr %i.aj, i64 -184
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.br)
          to label %bb.q unwind label %bb.p, !noalias !673

bb.o:                                             ; preds = %bb.r, %bb.p
  %.pn.i = phi { ptr, i32 } [ %i.bu, %bb.r ], [ %i.bs, %bb.p ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #27
          to label %bb.t unwind label %bb.s, !noalias !673

bb.p:                                             ; preds = %bb.n
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !675
  %i.bt = getelementptr inbounds i8, ptr %i.aj, i64 -160
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bt)
          to label %_RNvXsa_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB5_16XorbObjectInfoV1NtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit unwind label %bb.r, !noalias !673

bb.r:                                             ; preds = %bb.q
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #27
          to label %bb.o unwind label %bb.s, !noalias !673

bb.s:                                             ; preds = %bb.r, %bb.o
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !673
  unreachable

bb.t:                                             ; preds = %bb.o
  resume { ptr, i32 } %.pn.i

_RNvXsa_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB5_16XorbObjectInfoV1NtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %bb.q
  %i.bw = getelementptr inbounds i8, ptr %i.aj, i64 -60
  %i.bx = getelementptr inbounds i8, ptr %i.aj, i64 -68
  %i.by = getelementptr inbounds i8, ptr %i.aj, i64 -136
  %i.bz = getelementptr inbounds i8, ptr %i.aj, i64 -76
  %i.ca = getelementptr inbounds i8, ptr %i.aj, i64 -88
  %i.cb = getelementptr inbounds i8, ptr %i.aj, i64 -80
  %i.cc = load i32, ptr %i.cb, align 8, !alias.scope !674, !noalias !673, !noundef !12
  %i.cd = getelementptr inbounds i8, ptr %i.aj, i64 -104
  %.sroa.026.104..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.026, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.026.104..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false), !alias.scope !675
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(7) %i.bz, i64 7, i1 false)
  %.sroa.026.72..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.026, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.026.72..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.by, i64 32, i1 false), !alias.scope !675
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(7) %i.bx, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.026, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !674
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(7) %i.bw, i64 7, i1 false)
  %.sroa.026.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.026, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.026.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !674
  %.sroa.026.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.026, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.026.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !675
  %i.ce = getelementptr inbounds i8, ptr %i.aj, i64 -48
  %i.cf = load i32, ptr %i.ce, align 8, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.h, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.026, i64 120, i1 false)
  %.sroa.827.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.cg = load <2 x i32>, ptr %i.ca, align 8, !alias.scope !674, !noalias !673
  store <2 x i32> %i.cg, ptr %.sroa.827.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  store i32 %i.cc, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 139
  store i8 %i.bm, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 147
  store i8 %i.bo, ptr %.sroa.14.0..sroa_idx, align 1
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 155
  store i8 %i.bq, ptr %.sroa.16.0..sroa_idx, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  store i32 %i.cf, ptr %i.ch, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.026)
  br label %bb.u

bb.u:                                             ; preds = %_RNvXsa_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB5_16XorbObjectInfoV1NtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %i.h, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB4_12MemoryClient14xorb_is_tagged0Ba_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !18, !noundef !12
  switch i8 %i.c, label %default.unreachable19 [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.b
  ]

default.unreachable19:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %2 = load <2 x ptr>, ptr %0, align 8
  %3 = getelementptr inbounds nuw i8, <2 x ptr> %2, <2 x i64> <i64 376, i64 0>
  %4 = shufflevector <2 x ptr> %3, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %4, ptr %i.d, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.f

.body:                                            ; preds = %bb.t, %bb.r, %bb.n, %bb.m, %bb.g, %bb.u
  %.pn11 = phi { ptr, i32 } [ %i.ah, %bb.u ], [ %i.q, %bb.m ], [ %i.ag, %bb.t ], [ %i.g, %bb.g ], [ %i.ac, %bb.r ], [ %i.q, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.b, align 8
  resume { ptr, i32 } %.pn11

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #28
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #28
  unreachable

bb.f:                                             ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = invoke fastcc { ptr, ptr } @_RNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtB7_6RwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEE4read0CsiAynQAjgDuT_10xet_client(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef align 8 dereferenceable(32) %1)
          to label %bb.h unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEE4read0ECsiAynQAjgDuT_10xet_client(ptr noundef nonnull align 8 %i.e) #27
          to label %.body unwind label %bb.v

bb.h:                                             ; preds = %bb.f
  %i.h = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.i, label %bb.j

common.ret:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEEECsiAynQAjgDuT_10xet_client.exit16, %bb.i
  %storemerge = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEEECsiAynQAjgDuT_10xet_client.exit16 ], [ 3, %bb.i ]
  %common.ret.op = phi i8 [ %i.ai, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEEECsiAynQAjgDuT_10xet_client.exit16 ], [ 2, %bb.i ]
  store i8 %storemerge, ptr %i.b, align 8
  ret i8 %common.ret.op

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %common.ret

bb.j:                                             ; preds = %bb.h
  %i.j = extractvalue { ptr, ptr } %i.f, 1        ; 2 uses
  store ptr %i.h, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load i8, ptr %i.l, align 8, !range !18, !noundef !12
  %cond.i = icmp eq i8 %i.m, 3
  br i1 %cond.i, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load i8, ptr %i.n, align 8, !range !18, !noundef !12
  %cond.i.i = icmp eq i8 %i.o, 3
  br i1 %cond.i.i, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RNvXs3_NtNtCsUrhh0HcRih_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.p)
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val2.i.i.i = load ptr, ptr %i.r, align 8, !align !17, !noundef !12 ; 2 uses
  %i.s = icmp eq ptr %.val2.i.i.i, null
  br i1 %i.s, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = getelementptr i8, ptr %0, i64 56
  %.val3.i.i.i = load ptr, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !12, !noundef !12
  invoke void %i.v(ptr noundef %.val3.i.i.i)
          to label %.body unwind label %bb.q, !inline_history !1

bb.o:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.i.i = load ptr, ptr %i.w, align 8, !align !17, !noundef !12 ; 2 uses
  %i.x = icmp eq ptr %.val.i.i.i, null
  br i1 %i.x, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.y = getelementptr i8, ptr %0, i64 56
  %.val1.i.i.i = load ptr, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !12, !noundef !12
  invoke void %i.aa(ptr noundef %.val1.i.i.i)
          to label %bb.s unwind label %bb.r, !inline_history !22

bb.q:                                             ; preds = %bb.n
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %bb.p, %bb.j, %bb.k, %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !12, !align !17, !noundef !12
  %i.af = invoke noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE12contains_keyBO_ECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ae)
          to label %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB6_7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashE8containsB13_ECsiAynQAjgDuT_10xet_client.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.body unwind label %bb.v

_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB6_7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashE8containsB13_ECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.s
  invoke void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEEECsiAynQAjgDuT_10xet_client.exit16 unwind label %bb.u

bb.u:                                             ; preds = %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB6_7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashE8containsB13_ECsiAynQAjgDuT_10xet_client.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEEECsiAynQAjgDuT_10xet_client.exit16: ; preds = %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB6_7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashE8containsB13_ECsiAynQAjgDuT_10xet_client.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ai = zext i1 %i.af to i8
  br label %common.ret

bb.v:                                             ; preds = %bb.t, %bb.g
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB4_12MemoryClient15shard_is_tagged0Ba_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !18, !noundef !12
  switch i8 %i.c, label %default.unreachable23 [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.b
  ]

default.unreachable23:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %2 = load <2 x ptr>, ptr %0, align 8
  %3 = getelementptr inbounds nuw i8, <2 x ptr> %2, <2 x i64> <i64 472, i64 0>
  %4 = shufflevector <2 x ptr> %3, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %4, ptr %i.d, align 8
  %.sroa.821.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %.sroa.821.0..sroa_idx, align 8
  br label %bb.f

.body:                                            ; preds = %bb.q, %bb.m, %bb.l, %bb.g, %bb.w
  %.pn11 = phi { ptr, i32 } [ %i.ar, %bb.w ], [ %i.q, %bb.m ], [ %i.q, %bb.l ], [ %i.g, %bb.g ], [ %i.ac, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.b, align 8
  resume { ptr, i32 } %.pn11

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #28
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #28
  unreachable

bb.f:                                             ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = invoke fastcc { ptr, ptr } @_RNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtB7_6RwLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEE4read0CsiAynQAjgDuT_10xet_client(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef align 8 dereferenceable(32) %1)
          to label %bb.h unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockINtNtB4_6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEE4read0ECsiAynQAjgDuT_10xet_client(ptr noundef nonnull align 8 %i.e) #27
          to label %.body unwind label %bb.x

bb.h:                                             ; preds = %bb.f
  %i.h = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %common.ret, label %bb.i

common.ret:                                       ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashE11is_some_andNCNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB2d_12MemoryClient15shard_is_tagged00EB2j_.exit, %bb.h
  %storemerge = phi i8 [ 3, %bb.h ], [ 1, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashE11is_some_andNCNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB2d_12MemoryClient15shard_is_tagged00EB2j_.exit ]
  %common.ret.op = phi i8 [ 2, %bb.h ], [ %.sroa.0.0.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashE11is_some_andNCNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB2d_12MemoryClient15shard_is_tagged00EB2j_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 %storemerge, ptr %i.b, align 8
  ret i8 %common.ret.op

bb.i:                                             ; preds = %bb.h
  %i.j = extractvalue { ptr, ptr } %i.f, 1        ; 6 uses
  store ptr %i.h, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load i8, ptr %i.l, align 8, !range !18, !noundef !12
  %cond.i = icmp eq i8 %i.m, 3
  br i1 %cond.i, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load i8, ptr %i.n, align 8, !range !18, !noundef !12
  %cond.i.i = icmp eq i8 %i.o, 3
  br i1 %cond.i.i, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RNvXs3_NtNtCsUrhh0HcRih_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.p)
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val2.i.i.i = load ptr, ptr %i.r, align 8, !align !17, !noundef !12 ; 2 uses
  %i.s = icmp eq ptr %.val2.i.i.i, null
  br i1 %i.s, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = getelementptr i8, ptr %0, i64 56
  %.val3.i.i.i = load ptr, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !12, !noundef !12
  invoke void %i.v(ptr noundef %.val3.i.i.i)
          to label %.body unwind label %bb.p, !inline_history !1

bb.n:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.i.i = load ptr, ptr %i.w, align 8, !align !17, !noundef !12 ; 2 uses
  %i.x = icmp eq ptr %.val.i.i.i, null
  br i1 %i.x, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.y = getelementptr i8, ptr %0, i64 56
  %.val1.i.i.i = load ptr, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !12, !noundef !12
  invoke void %i.aa(ptr noundef %.val1.i.i.i)
          to label %bb.r unwind label %bb.q, !inline_history !34

bb.p:                                             ; preds = %bb.m
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.o, %bb.i, %bb.j, %bb.n
  %.sroa.0.0.copyload = load i64, ptr %i.j, align 8
  %.sroa.8.0..val.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..val.sroa_idx, align 8
  %.sroa.9.0..val.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..val.sroa_idx, align 8
  %.sroa.10.0..val.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..val.sroa_idx, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val13 = load ptr, ptr %i.ad, align 8          ; 5 uses
  %i.ae = trunc nuw i64 %.sroa.0.0.copyload to i1
  br i1 %i.ae, label %bb.s, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashE11is_some_andNCNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB2d_12MemoryClient15shard_is_tagged00EB2j_.exit

bb.s:                                             ; preds = %bb.r
  %.sroa.7.0..val.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..val.sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %i.af = load i64, ptr %.val13, align 8, !noalias !680, !noundef !12
  %i.ag = icmp eq i64 %.sroa.7.0.copyload, %i.af
  br i1 %i.ag, label %bb.t, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashE11is_some_andNCNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB2d_12MemoryClient15shard_is_tagged00EB2j_.exit

bb.t:                                             ; preds = %bb.s
  %i.ah = getelementptr inbounds nuw i8, ptr %.val13, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !680, !noundef !12
  %i.aj = icmp eq i64 %.sroa.8.0.copyload, %i.ai
  br i1 %i.aj, label %bb.u, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashE11is_some_andNCNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB2d_12MemoryClient15shard_is_tagged00EB2j_.exit

bb.u:                                             ; preds = %bb.t
  %i.ak = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noalias !680, !noundef !12
  %i.am = icmp eq i64 %.sroa.9.0.copyload, %i.al
  br i1 %i.am, label %bb.v, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashE11is_some_andNCNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB2d_12MemoryClient15shard_is_tagged00EB2j_.exit

bb.v:                                             ; preds = %bb.u
  %i.an = getelementptr inbounds nuw i8, ptr %.val13, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !noalias !680, !noundef !12
  %i.ap = icmp eq i64 %.sroa.10.0.copyload, %i.ao
  %i.aq = zext i1 %i.ap to i8
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashE11is_some_andNCNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB2d_12MemoryClient15shard_is_tagged00EB2j_.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashE11is_some_andNCNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB2d_12MemoryClient15shard_is_tagged00EB2j_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i = phi i8 [ 0, %bb.r ], [ %i.aq, %bb.v ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ]
  invoke void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEENtNtNtB1k_3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %common.ret unwind label %bb.w

bb.w:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashE11is_some_andNCNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB2d_12MemoryClient15shard_is_tagged00EB2j_.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB6_12MemoryClient21get_reconstruction_v10Bc_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %.sroa.599 = alloca [16 x i8], align 8          ; 4 uses
  %.sroa.7103 = alloca [16 x i8], align 8         ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [56 x i8], align 8                ; 9 uses
  %i.h = alloca [64 x i8], align 8                ; 7 uses
  %i.i = alloca [40 x i8], align 8                ; 5 uses
  %i.j = alloca [64 x i8], align 8                ; 5 uses
  %i.k = alloca [48 x i8], align 8                ; 12 uses
  %i.l = alloca [16 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [40 x i8], align 8                ; 10 uses
  %i.o = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.377 = alloca [16 x i8], align 8          ; 5 uses
  %.sroa.779 = alloca [40 x i8], align 8          ; 3 uses
  %i.p = alloca [72 x i8], align 8                ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.r = load i8, ptr %i.q, align 8, !range !19, !noundef !12
  switch i8 %i.r, label %default.unreachable156 [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.s
  ]

default.unreachable156:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.u = load <2 x ptr>, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.t, align 8, !nonnull !12, !align !17, !noundef !12
  store <2 x ptr> %i.u, ptr %i.s, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !696
  %i.x = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 8, 689) 128, i64 noundef range(i64 4, 9) 8) #24, !noalias !696 ; 4 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.noexc.i, label %bb.d, !prof !37

.noexc.i:                                         ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #29
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.c:                                             ; preds = %.noexc.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.b
  store ptr %i.v, ptr %i.x, align 8
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  store i8 0, ptr %.sroa.4121.0..sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.x, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr @125, ptr %i.ab, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #28
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #28
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.ad = invoke noundef zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputuNtNtB8_6marker4SendEL_EEB1v_4pollCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %.val45 = load ptr, ptr %i.ac, align 8
  %i.af = getelementptr i8, ptr %1, i64 96
  %.val46 = load ptr, ptr %i.af, align 8, !nonnull !12, !align !17, !noundef !12
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsiAynQAjgDuT_10xet_client(ptr %.val45, ptr nonnull %.val46) #27
          to label %.body unwind label %bb.r

bb.i:                                             ; preds = %bb.g
  br i1 %i.ad, label %bb.j, label %bb.k

common.ret:                                       ; preds = %bb.al, %bb.v, %bb.j
  %.sink = phi i8 [ 1, %bb.al ], [ 4, %bb.v ], [ 3, %bb.j ]
  store i8 %.sink, ptr %i.q, align 8
  ret void

bb.j:                                             ; preds = %bb.i
  store i64 -3, ptr %0, align 8
  br label %common.ret

bb.k:                                             ; preds = %bb.i
  %.val = load ptr, ptr %i.ac, align 8            ; 5 uses
  %i.ag = getelementptr i8, ptr %1, i64 96
  %.val44 = load ptr, ptr %i.ag, align 8, !nonnull !12, !align !17, !noundef !12 ; 5 uses
  %i.ah = load ptr, ptr %.val44, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.ah(ptr noundef nonnull %.val)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %.val44, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !13, !invariant.load !12 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %.val44, i64 16
  %i.am = load i64, ptr %i.al, align 8, !range !14, !invariant.load !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.aj, i64 noundef range(i64 1, 536870913) %i.am) #24
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val44, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !13, !invariant.load !12 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %.val44, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !range !14, !invariant.load !12
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.ap, i64 noundef range(i64 1, 536870913) %i.as) #24
  br label %.body

bb.q:                                             ; preds = %bb.n, %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false)
  %.sroa.873.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.av = load <2 x ptr>, ptr %i.at, align 8
  store <2 x ptr> %i.av, ptr %.sroa.873.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 320
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 8
  br label %bb.s

bb.r:                                             ; preds = %.thread130, %bb.av, %bb.ah, %bb.h, %bb.bb, %bb.aw, %bb.t
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

.body:                                            ; preds = %bb.t, %bb.x, %bb.p, %bb.o, %bb.h, %bb.ba, %bb.c
  %.pn41.pn = phi { ptr, i32 } [ %i.an, %bb.p ], [ %.pn39145, %bb.ba ], [ %i.z, %bb.c ], [ %i.ae, %bb.h ], [ %i.an, %bb.o ], [ %i.ay, %bb.t ], [ %i.bb, %bb.x ]
  store i8 2, ptr %i.q, align 8
  resume { ptr, i32 } %.pn41.pn

bb.s:                                             ; preds = %bb.a, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  invoke fastcc void @_RNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB6_12MemoryClient29compute_reconstruction_ranges0Bc_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.p, ptr noundef nonnull align 8 %i.ax, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient29compute_reconstruction_ranges0EBO_(ptr noundef nonnull align 8 %i.ax) #27
          to label %.body unwind label %bb.r

bb.u:                                             ; preds = %bb.s
  %i.az = load i64, ptr %i.p, align 8, !range !40, !noundef !12 ; 5 uses
  %i.ba = icmp eq i64 %i.az, -3
  br i1 %i.ba, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i64 -3, ptr %0, align 8
  br label %common.ret

bb.w:                                             ; preds = %bb.u
  %.sroa.377.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.377, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.377.0..sroa_idx, i64 16, i1 false)
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.578.0.copyload = load i64, ptr %.sroa.578.0..sroa_idx, align 8 ; 3 uses
  %.sroa.779.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.779, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.779.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient29compute_reconstruction_ranges0EBO_(ptr noundef nonnull align 8 %i.ax)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.w
  switch i64 %i.az, label %bb.z [
    i64 -2, label %bb.bc
    i64 -1, label %bb.al
  ]

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %i.az, ptr %i.o, align 8
  %.sroa.3.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.377, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.779, i64 40, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.val47 = load i64, ptr %i.bc, align 8, !noundef !12 ; 2 uses
  %i.bd = icmp ult i64 %.val47, 192153584101141163
  tail call void @llvm.assume(i1 %i.bd)
  %.not150 = icmp eq i64 %.val47, 0               ; 2 uses
  br i1 %.not150, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.be = invoke { i64, i32 } @_RNvMNtNtCsUrhh0HcRih_5tokio4time7instantNtB2_7Instant3now()
          to label %bb.ac unwind label %.thread136 ; 2 uses

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.bf = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @92)
          to label %bb.ax unwind label %bb.aw     ; 2 uses

.thread136:                                       ; preds = %bb.aa
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.thread130

bb.ac:                                            ; preds = %bb.aa
  %i.bh = extractvalue { i64, i32 } %i.be, 0
  %i.bi = extractvalue { i64, i32 } %i.be, 1
  store i64 %i.bh, ptr %i.l, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %i.bi, ptr %i.bj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.bk = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @92)
          to label %bb.ad unwind label %.thread139 ; 2 uses

.thread139:                                       ; preds = %bb.ac
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.thread130

bb.ad:                                            ; preds = %bb.ac
  %i.bm = extractvalue { i64, i64 } %i.bk, 0
  %i.bn = extractvalue { i64, i64 } %i.bk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(32) @94, i64 32, i1 false)
  %.sroa.4.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  store i64 %i.bm, ptr %.sroa.4.0..sroa_idx.i49, align 8, !alias.scope !697
  %.sroa.5.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  store i64 %i.bn, ptr %.sroa.5.0..sroa_idx.i50, align 8, !alias.scope !697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false)
  invoke void @_RNvXs3_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmapINtB5_18PassThroughHashMapNtNtB7_9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterB2K_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.i)
          to label %bb.af unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.av

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.688.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.089.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.089.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.089.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.691.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types27XorbReconstructionFetchInfoEEEB1y_.exit, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB2I_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %_RNvXsF_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB2S_.exit unwind label %bb.ai

bb.ah:                                            ; preds = %bb.au, %bb.ai
  %.pn29.pn.pn = phi { ptr, i32 } [ %.pn29.pn, %bb.au ], [ %i.bq, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB2I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3l_.exit unwind label %bb.r

bb.ai:                                            ; preds = %bb.ag
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

_RNvXsF_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB2S_.exit: ; preds = %bb.ag
  %i.br = load i64, ptr %i.bp, align 8, !range !15, !noundef !12 ; 2 uses
  %.not22 = icmp eq i64 %i.br, -1
  br i1 %.not22, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %_RNvXsF_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB2S_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB2I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3l_.exit56 unwind label %bb.ak

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3l_.exit: ; preds = %bb.ah, %bb.ak
  %.pn29.pn.pn.pn = phi { ptr, i32 } [ %i.bs, %bb.ak ], [ %.pn29.pn.pn, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.av

bb.ak:                                            ; preds = %bb.aj
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3l_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3l_.exit56: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.599, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.377, i64 16, i1 false)
  %.sroa.0112.0.copyload = load i64, ptr %i.k, align 8
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7103, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4113.0..sroa_idx, i64 16, i1 false)
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.5114.0.copyload = load i64, ptr %.sroa.5114.0..sroa_idx, align 8
  %.sroa.6115.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx.i49, align 8
  %.sroa.7116.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx.i50, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.al

bb.al:                                            ; preds = %bb.y, %bb.bc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtBG_9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3d_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3l_.exit56
  %.sroa.10111.0 = phi i64 [ undef, %bb.bc ], [ %.sroa.578.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3l_.exit56 ], [ %.sroa.578.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtBG_9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3d_.exit ], [ undef, %bb.y ]
  %.sroa.9109.0 = phi i64 [ undef, %bb.bc ], [ %.sroa.7116.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3l_.exit56 ], [ %i.ce, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtBG_9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3d_.exit ], [ undef, %bb.y ]
  %.sroa.8107.0 = phi i64 [ undef, %bb.bc ], [ %.sroa.6115.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3l_.exit56 ], [ %i.cf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtBG_9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3d_.exit ], [ undef, %bb.y ]
  %.sroa.8104.0 = phi i64 [ undef, %bb.bc ], [ %.sroa.5114.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3l_.exit56 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtBG_9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3d_.exit ], [ undef, %bb.y ]
  %.sroa.6100.0 = phi i64 [ %.sroa.578.0.copyload, %bb.bc ], [ %.sroa.0112.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3l_.exit56 ], [ ptrtoint (ptr @93 to i64), %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtBG_9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3d_.exit ], [ undef, %bb.y ]
  %.sroa.096.0 = phi i64 [ -2, %bb.bc ], [ %i.az, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3l_.exit56 ], [ %.sroa.07.sroa.0.sroa.0.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtBG_9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3d_.exit ], [ %i.az, %bb.y ]
  store i64 %.sroa.096.0, ptr %0, align 8
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.599.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.599, i64 16, i1 false)
  %.sroa.6100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6100.0, ptr %.sroa.6100.0..sroa_idx, align 8
  %.sroa.7103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7103.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7103, i64 16, i1 false)
  %.sroa.8104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.8104.0, ptr %.sroa.8104.0..sroa_idx, align 8
  %.sroa.8107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.8107.0, ptr %.sroa.8107.0..sroa_idx, align 8
  %.sroa.9109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.9109.0, ptr %.sroa.9109.0..sroa_idx, align 8
  %.sroa.10111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.10111.0, ptr %.sroa.10111.0..sroa_idx, align 8
  br label %common.ret

bb.am:                                            ; preds = %_RNvXsF_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB2S_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  %.sroa.587.0.copyload = load ptr, ptr %.sroa.587.0..sroa_idx, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %.sroa.688.0.copyload = load i64, ptr %.sroa.688.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bt = icmp ult i64 %.sroa.688.0.copyload, 384307168202282326
  call void @llvm.assume(i1 %i.bt)
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %.sroa.587.0.copyload, i64 %.sroa.688.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !698
  store ptr %.sroa.587.0.copyload, ptr %i.a, align 8, !alias.scope !699, !noalias !700
end_hunk_0
begin_hunk_1_@_RNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB6_12MemoryClient21get_reconstruction_v10Bc_:bb.a

bb.ba:                                            ; preds = %.thread147, %bb.bb, %bb.ay
  %.pn39145 = phi { ptr, i32 } [ %.pn39146, %bb.bb ], [ %.pn37135, %bb.ay ], [ %i.cd, %.thread147 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.body

bb.bb:                                            ; preds = %.thread142, %bb.ay
  %.pn39146 = phi { ptr, i32 } [ %.pn29.pn.pn.pn.pn, %.thread142 ], [ %.pn37135, %bb.ay ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types22XorbReconstructionTermEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #27
          to label %bb.ba unwind label %bb.r

bb.bc:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.599, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.377, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7103, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.779, i64 16, i1 false)
  br label %bb.al
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB6_12MemoryClient21get_reconstruction_v20Bc_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5118 = alloca [16 x i8], align 8         ; 4 uses
  %.sroa.7122 = alloca [16 x i8], align 8         ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 12 uses
  %i.h = alloca [24 x i8], align 8                ; 12 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [56 x i8], align 8                ; 10 uses
  %i.k = alloca [64 x i8], align 8                ; 8 uses
  %i.l = alloca [40 x i8], align 8                ; 5 uses
  %i.m = alloca [64 x i8], align 8                ; 5 uses
  %i.n = alloca [48 x i8], align 8                ; 12 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [40 x i8], align 8                ; 10 uses
  %i.q = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.397 = alloca [16 x i8], align 8          ; 4 uses
  %.sroa.799 = alloca [40 x i8], align 8          ; 3 uses
  %i.r = alloca [72 x i8], align 8                ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.t = load i8, ptr %i.s, align 8, !range !19, !noundef !12
  switch i8 %i.t, label %default.unreachable195 [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.s
  ]

default.unreachable195:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.w = load <2 x ptr>, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.v, align 8, !nonnull !12, !align !17, !noundef !12
  store <2 x ptr> %i.w, ptr %i.u, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !716
  %i.z = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 8, 689) 128, i64 noundef range(i64 4, 9) 8) #24, !noalias !716 ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.noexc.i, label %bb.d, !prof !37

.noexc.i:                                         ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #29
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.c:                                             ; preds = %.noexc.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.b
  store ptr %i.x, ptr %i.z, align 8
  %.sroa.4140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 120
  store i8 0, ptr %.sroa.4140.0..sroa_idx, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.z, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr @125, ptr %i.ad, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.af = invoke noundef zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputuNtNtB8_6marker4SendEL_EEB1v_4pollCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %.val54 = load ptr, ptr %i.ae, align 8
  %i.ah = getelementptr i8, ptr %1, i64 96
  %.val55 = load ptr, ptr %i.ah, align 8, !nonnull !12, !align !17, !noundef !12
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsiAynQAjgDuT_10xet_client(ptr %.val54, ptr nonnull %.val55) #27
          to label %.body unwind label %bb.r

bb.i:                                             ; preds = %bb.g
  br i1 %i.af, label %bb.j, label %bb.k

common.ret:                                       ; preds = %bb.aj, %bb.v, %bb.j
  %.sink = phi i8 [ 1, %bb.aj ], [ 4, %bb.v ], [ 3, %bb.j ]
  store i8 %.sink, ptr %i.s, align 8
  ret void

bb.j:                                             ; preds = %bb.i
  store i64 -3, ptr %0, align 8
  br label %common.ret

bb.k:                                             ; preds = %bb.i
  %.val = load ptr, ptr %i.ae, align 8            ; 5 uses
  %i.ai = getelementptr i8, ptr %1, i64 96
  %.val53 = load ptr, ptr %i.ai, align 8, !nonnull !12, !align !17, !noundef !12 ; 5 uses
  %i.aj = load ptr, ptr %.val53, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.aj(ptr noundef nonnull %.val)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %.val53, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !13, !invariant.load !12 ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %.val53, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !range !14, !invariant.load !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.al, i64 noundef range(i64 1, 536870913) %i.ao) #24
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val53, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !13, !invariant.load !12 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %.val53, i64 16
  %i.au = load i64, ptr %i.at, align 8, !range !14, !invariant.load !12
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.ar, i64 noundef range(i64 1, 536870913) %i.au) #24
  br label %.body

bb.q:                                             ; preds = %bb.n, %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false)
  %.sroa.893.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ax = load <2 x ptr>, ptr %i.av, align 8
  store <2 x ptr> %i.ax, ptr %.sroa.893.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 320
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 8
  br label %bb.s

bb.r:                                             ; preds = %.thread163, %bb.bf, %bb.ah, %bb.h, %bb.bl, %bb.bg, %.thread148, %bb.be, %bb.ak, %bb.t
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

.body:                                            ; preds = %bb.t, %bb.x, %bb.p, %bb.o, %bb.h, %bb.bk, %bb.c
  %.pn50.pn = phi { ptr, i32 } [ %i.ap, %bb.p ], [ %.pn48175, %bb.bk ], [ %i.ab, %bb.c ], [ %i.ag, %bb.h ], [ %i.ap, %bb.o ], [ %i.ba, %bb.t ], [ %i.bd, %bb.x ]
  store i8 2, ptr %i.s, align 8
  resume { ptr, i32 } %.pn50.pn

bb.s:                                             ; preds = %bb.a, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  invoke fastcc void @_RNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB6_12MemoryClient29compute_reconstruction_ranges0Bc_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.r, ptr noundef nonnull align 8 %i.az, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient29compute_reconstruction_ranges0EBO_(ptr noundef nonnull align 8 %i.az) #27
          to label %.body unwind label %bb.r

bb.u:                                             ; preds = %bb.s
  %i.bb = load i64, ptr %i.r, align 8, !range !40, !noundef !12 ; 5 uses
  %i.bc = icmp eq i64 %i.bb, -3
  br i1 %i.bc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store i64 -3, ptr %0, align 8
  br label %common.ret

bb.w:                                             ; preds = %bb.u
  %.sroa.397.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.397, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.397.0..sroa_idx, i64 16, i1 false)
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.598.0.copyload = load i64, ptr %.sroa.598.0..sroa_idx, align 8 ; 3 uses
  %.sroa.799.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.799, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.799.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient29compute_reconstruction_ranges0EBO_(ptr noundef nonnull align 8 %i.az)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.w
  switch i64 %i.bb, label %bb.z [
    i64 -2, label %bb.bm
    i64 -1, label %bb.aj
  ]

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 %i.bb, ptr %i.q, align 8
  %.sroa.3.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.397, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.799, i64 40, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.val56 = load i64, ptr %i.be, align 8, !noundef !12 ; 2 uses
  %i.bf = icmp ult i64 %.val56, 192153584101141163
  tail call void @llvm.assume(i1 %i.bf)
  %.not180 = icmp eq i64 %.val56, 0               ; 2 uses
  br i1 %.not180, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bg = invoke { i64, i32 } @_RNvMNtNtCsUrhh0HcRih_5tokio4time7instantNtB2_7Instant3now()
          to label %bb.ad unwind label %bb.ac     ; 2 uses

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %i.bh = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @92)
          to label %bb.bh unwind label %bb.bg     ; 2 uses

bb.ac:                                            ; preds = %bb.aa
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.thread163

bb.ad:                                            ; preds = %bb.aa
  %i.bj = extractvalue { i64, i32 } %i.bg, 0
  %i.bk = extractvalue { i64, i32 } %i.bg, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !12, !align !17, !noundef !12
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 368
  %i.bo = load atomic i64, ptr %i.bn monotonic, align 8
  %.fr189 = freeze i64 %i.bo                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.bp = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @92)
          to label %bb.ae unwind label %.thread169 ; 2 uses

.thread169:                                       ; preds = %bb.ad
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %.thread163

bb.ae:                                            ; preds = %bb.ad
  %i.br = extractvalue { i64, i64 } %i.bp, 0
  %i.bs = extractvalue { i64, i64 } %i.bp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(32) @94, i64 32, i1 false)
  %.sroa.4.0..sroa_idx.i62 = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  store i64 %i.br, ptr %.sroa.4.0..sroa_idx.i62, align 8, !alias.scope !717
  %.sroa.5.0..sroa_idx.i63 = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  store i64 %i.bs, ptr %.sroa.5.0..sroa_idx.i63, align 8, !alias.scope !717
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false)
  invoke void @_RNvXs3_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmapINtB5_18PassThroughHashMapNtNtB7_9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterB2K_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.l)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bf

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  %i.bx = icmp eq i64 %.fr189, 0
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br i1 %i.bx, label %.split.us, label %.split, !prof !37

.split.us:                                        ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB2I_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %_RNvXsF_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB2S_.exit.us unwind label %.split184.us

_RNvXsF_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB2S_.exit.us: ; preds = %.split.us
  %i.cd = load i64, ptr %i.bu, align 8, !range !15, !noundef !12
  %.not26.us = icmp eq i64 %i.cd, -1
  br i1 %.not26.us, label %.split186.us, label %.split188.us

.split188.us:                                     ; preds = %_RNvXsF_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB2S_.exit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8, !alias.scope !718
  store ptr inttoptr (i64 8 to ptr), ptr %i.bv, align 8, !alias.scope !718
  store i64 0, ptr %i.bw, align 8, !alias.scope !718
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @90, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #28
          to label %.noexc70 unwind label %bb.am

.split184.us:                                     ; preds = %.split.us
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.split:                                           ; preds = %bb.ag, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEB1g_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB2I_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %_RNvXsF_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB2S_.exit unwind label %.split184

bb.ah:                                            ; preds = %.split184, %.split184.us, %.body76
  %.pn34.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn.pn.pn.pn, %.body76 ], [ %i.cf, %.split184 ], [ %i.ce, %.split184.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB2I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3l_.exit unwind label %bb.r

.split184:                                        ; preds = %.split
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

_RNvXsF_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB2S_.exit: ; preds = %.split
  %i.cg = load i64, ptr %i.bu, align 8, !range !15, !noundef !12
  %.not26 = icmp eq i64 %i.cg, -1
  br i1 %.not26, label %.split186.us, label %bb.al

.split186.us:                                     ; preds = %_RNvXsF_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB2S_.exit, %_RNvXsF_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB2S_.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB2I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3l_.exit69 unwind label %bb.ai

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3l_.exit: ; preds = %bb.ah, %bb.ai
  %.pn34.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.ai ], [ %.pn34.pn.pn.pn.pn.pn.pn.pn, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.bf

bb.ai:                                            ; preds = %.split186.us
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3l_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3l_.exit69: ; preds = %.split186.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5118, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx3, i64 16, i1 false)
  %.sroa.0131.0.copyload = load i64, ptr %i.n, align 8
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7122, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4132.0..sroa_idx, i64 16, i1 false)
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.5133.0.copyload = load i64, ptr %.sroa.5133.0..sroa_idx, align 8
  %.sroa.6134.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx.i62, align 8
  %.sroa.7135.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx.i63, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.y, %bb.bm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtBG_9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3d_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3l_.exit69
  %.sroa.10130.0 = phi i64 [ undef, %bb.bm ], [ %.sroa.598.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3l_.exit69 ], [ %.sroa.598.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtBG_9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3d_.exit ], [ undef, %bb.y ]
  %.sroa.9128.0 = phi i64 [ undef, %bb.bm ], [ %.sroa.7135.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3l_.exit69 ], [ %i.di, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtBG_9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3d_.exit ], [ undef, %bb.y ]
  %.sroa.8126.0 = phi i64 [ undef, %bb.bm ], [ %.sroa.6134.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3l_.exit69 ], [ %i.dj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtBG_9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3d_.exit ], [ undef, %bb.y ]
  %.sroa.8123.0 = phi i64 [ undef, %bb.bm ], [ %.sroa.5133.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3l_.exit69 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtBG_9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3d_.exit ], [ undef, %bb.y ]
  %.sroa.6119.0 = phi i64 [ %.sroa.598.0.copyload, %bb.bm ], [ %.sroa.0131.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3l_.exit69 ], [ ptrtoint (ptr @93 to i64), %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtBG_9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3d_.exit ], [ undef, %bb.y ]
  %.sroa.0115.0 = phi i64 [ -2, %bb.bm ], [ %i.bb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3l_.exit69 ], [ %.sroa.07.sroa.0.sroa.0.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtBG_9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3d_.exit ], [ %i.bb, %bb.y ]
  store i64 %.sroa.0115.0, ptr %0, align 8
  %.sroa.5118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_1
begin_hunk_2_@_RNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB6_12MemoryClient21get_reconstruction_v20Bc_:bb.a
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.bk

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtBG_9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3d_.exit: ; preds = %bb.bh
  %i.di = extractvalue { i64, i64 } %i.bh, 1
  %i.dj = extractvalue { i64, i64 } %i.bh, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.aj

bb.bj:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.thread163

.thread163:                                       ; preds = %bb.ac, %bb.bj, %.thread169
  %.pn46168 = phi { ptr, i32 } [ %i.bq, %.thread169 ], [ %i.dg, %bb.bj ], [ %i.bi, %bb.ac ] ; 2 uses
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB2E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %bb.bi unwind label %bb.r

bb.bk:                                            ; preds = %.thread177, %bb.bl, %bb.bi
  %.pn48175 = phi { ptr, i32 } [ %.pn48176, %bb.bl ], [ %.pn46168, %bb.bi ], [ %i.dh, %.thread177 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %.body

bb.bl:                                            ; preds = %.thread172, %bb.bi
  %.pn48176 = phi { ptr, i32 } [ %.pn34.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.thread172 ], [ %.pn46168, %bb.bi ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types22XorbReconstructionTermEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #27
          to label %bb.bk unwind label %bb.r

bb.bm:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5118, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.397, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7122, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.799, i64 16, i1 false)
  br label %bb.aj
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB6_12MemoryClient29compute_reconstruction_ranges0Bc_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 10 uses
  %i.e = alloca [16 x i8], align 8                ; 10 uses
  %i.f = alloca [152 x i8], align 8               ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 3 uses
  %i.i = load i8, ptr %i.h, align 8, !range !21, !noundef !12
  switch i8 %i.i, label %default.unreachable97 [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.b
    i8 4, label %bb.c
    i8 5, label %bb.d
  ]

default.unreachable97:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  br label %bb.ae

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br label %bb.aw

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = load <2 x ptr>, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !12, !align !17, !noundef !12
  store <2 x ptr> %i.l, ptr %i.j, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 240
  store ptr %i.o, ptr %i.p, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28
  unreachable

bb.h:                                             ; preds = %bb.b, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 3 uses
  %i.r = invoke fastcc { ptr, ptr } @_RNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtB7_6RwLockNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardE4read0CsiAynQAjgDuT_10xet_client(ptr noundef nonnull align 8 %i.q, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %bb.i       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardE4read0ECsiAynQAjgDuT_10xet_client(ptr noundef nonnull align 8 %i.q) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit unwind label %bb.ac

bb.j:                                             ; preds = %bb.h
  %i.t = extractvalue { ptr, ptr } %i.r, 0        ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.k, label %bb.l

common.ret:                                       ; preds = %bb.az, %bb.ah, %bb.aa, %bb.k
  %.sink = phi i8 [ 5, %bb.az ], [ 4, %bb.ah ], [ 1, %bb.aa ], [ 3, %bb.k ]
  store i8 %.sink, ptr %i.h, align 8
  ret void

bb.k:                                             ; preds = %bb.j
  store i64 -3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %common.ret

bb.l:                                             ; preds = %bb.j
  %i.v = extractvalue { ptr, ptr } %i.r, 1
  store ptr %i.t, ptr %i.g, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !range !18, !noundef !12
  %cond.i = icmp eq i8 %i.y, 3
  br i1 %cond.i, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.aa = load i8, ptr %i.z, align 8, !range !18, !noundef !12
  %cond.i.i = icmp eq i8 %i.aa, 3
  br i1 %cond.i.i, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke void @_RNvXs3_NtNtCsUrhh0HcRih_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.ab)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.val2.i.i.i = load ptr, ptr %i.ad, align 8, !align !17, !noundef !12 ; 2 uses
  %i.ae = icmp eq ptr %.val2.i.i.i, null
  br i1 %i.ae, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = getelementptr i8, ptr %1, i64 272
  %.val3.i.i.i = load ptr, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !12, !noundef !12
  invoke void %i.ah(ptr noundef %.val3.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit unwind label %bb.s, !inline_history !1

bb.q:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.val.i.i.i = load ptr, ptr %i.ai, align 8, !align !17, !noundef !12 ; 2 uses
  %i.aj = icmp eq ptr %.val.i.i.i, null
  br i1 %i.aj, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = getelementptr i8, ptr %1, i64 272
  %.val1.i.i.i = load ptr, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !12, !noundef !12
  invoke void %i.am(ptr noundef %.val1.i.i.i)
          to label %bb.u unwind label %bb.t, !inline_history !33

bb.s:                                             ; preds = %bb.p
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit

bb.u:                                             ; preds = %bb.r, %bb.l, %bb.m, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.val42 = load ptr, ptr %i.w, align 8, !noundef !12
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !12, !align !17, !noundef !12
  invoke void @_RNvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memoryNtB2_16MDBInMemoryShard28get_file_reconstruction_info(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %.val42, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aq)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit unwind label %bb.ac

bb.w:                                             ; preds = %bb.u
  %i.as = load i64, ptr %i.f, align 8, !range !41, !noundef !12
  %.not = icmp eq i64 %i.as, 2
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.at, ptr noundef nonnull align 8 dereferenceable(152) %i.f, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %bb.ab unwind label %bb.z

bb.y:                                             ; preds = %bb.w
  store i64 -1, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit47 unwind label %bb.z

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.i, %bb.o, %bb.p, %bb.t, %bb.v, %bb.z
  %.pn20 = phi { ptr, i32 } [ %i.au, %bb.z ], [ %i.ar, %bb.v ], [ %i.ac, %bb.o ], [ %i.s, %bb.i ], [ %i.ao, %bb.t ], [ %i.ac, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ad

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit47: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEECsiAynQAjgDuT_10xet_client.exit77, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  br label %common.ret

bb.ab:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !12, !align !17, !noundef !12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 376
  store ptr %i.ax, ptr %i.q, align 8
  store i8 0, ptr %i.x, align 8
  br label %bb.ae

.body56:                                          ; preds = %bb.as, %bb.aq, %bb.am, %bb.al, %bb.af
  %.pn26.pn = phi { ptr, i32 } [ %i.bl, %bb.al ], [ %i.by, %bb.as ], [ %i.bb, %bb.af ], [ %i.bx, %bb.aq ], [ %i.bl, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEECsiAynQAjgDuT_10xet_client.exit

bb.ac:                                            ; preds = %bb.bj, %bb.av, %bb.as, %bb.v, %bb.ax, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEECsiAynQAjgDuT_10xet_client.exit, %bb.af, %bb.i
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ad:                                            ; preds = %bb.bn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEECsiAynQAjgDuT_10xet_client.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit
  %.pn40 = phi { ptr, i32 } [ %i.dm, %bb.bn ], [ %.pn38, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEECsiAynQAjgDuT_10xet_client.exit ], [ %.pn20, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit ]
  store i8 2, ptr %i.h, align 8
  resume { ptr, i32 } %.pn40

bb.ae:                                            ; preds = %bb.c, %bb.ab
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 3 uses
  %i.ba = invoke fastcc { ptr, ptr } @_RNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtB7_6RwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEE4read0CsiAynQAjgDuT_10xet_client(ptr noundef nonnull align 8 %i.az, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.ag unwind label %bb.af     ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEE4read0ECsiAynQAjgDuT_10xet_client(ptr noundef nonnull align 8 %i.az) #27
          to label %.body56 unwind label %bb.ac

bb.ag:                                            ; preds = %bb.ae
  %i.bc = extractvalue { ptr, ptr } %i.ba, 0      ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i64 -3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %common.ret

bb.ai:                                            ; preds = %bb.ag
  %i.be = extractvalue { ptr, ptr } %i.ba, 1
  store ptr %i.bc, ptr %i.e, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.bh = load i8, ptr %i.bg, align 8, !range !18, !noundef !12
  %cond.i48 = icmp eq i8 %i.bh, 3
  br i1 %cond.i48, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.bj = load i8, ptr %i.bi, align 8, !range !18, !noundef !12
  %cond.i.i49 = icmp eq i8 %i.bj, 3
  br i1 %cond.i.i49, label %bb.ak, label %bb.ar

bb.ak:                                            ; preds = %bb.aj
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke void @_RNvXs3_NtNtCsUrhh0HcRih_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.bk)
          to label %bb.an unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.val2.i.i.i50 = load ptr, ptr %i.bm, align 8, !align !17, !noundef !12 ; 2 uses
  %i.bn = icmp eq ptr %.val2.i.i.i50, null
  br i1 %i.bn, label %.body56, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bo = getelementptr i8, ptr %1, i64 272
  %.val3.i.i.i51 = load ptr, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.val2.i.i.i50, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !12, !noundef !12
  invoke void %i.bq(ptr noundef %.val3.i.i.i51)
          to label %.body56 unwind label %bb.ap, !inline_history !1

bb.an:                                            ; preds = %bb.ak
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.val.i.i.i53 = load ptr, ptr %i.br, align 8, !align !17, !noundef !12 ; 2 uses
  %i.bs = icmp eq ptr %.val.i.i.i53, null
  br i1 %i.bs, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bt = getelementptr i8, ptr %1, i64 272
  %.val1.i.i.i54 = load ptr, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.i.i.i53, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !12, !noundef !12
  invoke void %i.bv(ptr noundef %.val1.i.i.i54)
          to label %bb.ar unwind label %bb.aq, !inline_history !22

bb.ap:                                            ; preds = %bb.am
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body56

bb.ar:                                            ; preds = %bb.ao, %bb.ai, %bb.aj, %bb.an
  %.val = load ptr, ptr %i.bf, align 8, !noundef !12
  invoke void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.az, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val)
          to label %_RNvXs3_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB5_7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiAynQAjgDuT_10xet_client.exit unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.body56 unwind label %bb.ac

_RNvXs3_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB5_7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.ar
  invoke void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %_RNvXs3_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB5_7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiAynQAjgDuT_10xet_client.exit
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.av

bb.au:                                            ; preds = %_RNvXs3_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB5_7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiAynQAjgDuT_10xet_client.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !12, !align !17, !noundef !12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr %i.cc, ptr %i.cd, align 8
  %.sroa.893.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 376
  store i8 0, ptr %.sroa.893.0..sroa_idx, align 8
  br label %bb.aw

bb.av:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit, %bb.at
  %.pn35.pn = phi { ptr, i32 } [ %.pn35, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit ], [ %i.bz, %bb.at ]
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 240
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ce)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEECsiAynQAjgDuT_10xet_client.exit unwind label %bb.ac

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.av, %bb.bm, %.body56
  %.pn38 = phi { ptr, i32 } [ %i.dl, %bb.bm ], [ %.pn26.pn, %.body56 ], [ %.pn35.pn, %bb.av ]
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(152) %i.cf) #27
          to label %bb.ad unwind label %bb.ac

bb.aw:                                            ; preds = %bb.d, %bb.au
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.ch = invoke fastcc { ptr, ptr } @_RNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtB7_6RwLockINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtBY_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEE4read0B2Y_(ptr noundef nonnull align 8 %i.cg, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.ay unwind label %bb.ax     ; 2 uses

bb.ax:                                            ; preds = %bb.aw
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1A_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEE4read0EB3B_(ptr noundef nonnull align 8 %i.cg) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit unwind label %bb.ac

bb.ay:                                            ; preds = %bb.aw
  %i.cj = extractvalue { ptr, ptr } %i.ch, 0      ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i64 -3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %common.ret

bb.ba:                                            ; preds = %bb.ay
  %i.cl = extractvalue { ptr, ptr } %i.ch, 1
  store ptr %i.cj, ptr %i.d, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.cl, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.co = load i8, ptr %i.cn, align 8, !range !18, !noundef !12
  %cond.i63 = icmp eq i8 %i.co, 3
  br i1 %cond.i63, label %bb.bb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1A_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEE4read0EB3B_.exit

bb.bb:                                            ; preds = %bb.ba
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.cq = load i8, ptr %i.cp, align 8, !range !18, !noundef !12
  %cond.i.i64 = icmp eq i8 %i.cq, 3
  br i1 %cond.i.i64, label %bb.bc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1A_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEE4read0EB3B_.exit

bb.bc:                                            ; preds = %bb.bb
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 304
  invoke void @_RNvXs3_NtNtCsUrhh0HcRih_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.cr)
          to label %bb.bf unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 312
  %.val2.i.i.i65 = load ptr, ptr %i.ct, align 8, !align !17, !noundef !12 ; 2 uses
  %i.cu = icmp eq ptr %.val2.i.i.i65, null
  br i1 %i.cu, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.cv = getelementptr i8, ptr %1, i64 320
  %.val3.i.i.i66 = load ptr, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %.val2.i.i.i65, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !nonnull !12, !noundef !12
  invoke void %i.cx(ptr noundef %.val3.i.i.i66)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit unwind label %bb.bh, !inline_history !1

bb.bf:                                            ; preds = %bb.bc
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 312
  %.val.i.i.i68 = load ptr, ptr %i.cy, align 8, !align !17, !noundef !12 ; 2 uses
  %i.cz = icmp eq ptr %.val.i.i.i68, null
  br i1 %i.cz, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1A_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEE4read0EB3B_.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.da = getelementptr i8, ptr %1, i64 320
  %.val1.i.i.i69 = load ptr, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %.val.i.i.i68, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !nonnull !12, !noundef !12
  invoke void %i.dc(ptr noundef %.val1.i.i.i69)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1A_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEE4read0EB3B_.exit unwind label %bb.bi, !inline_history !23

bb.bh:                                            ; preds = %bb.be
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1A_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEE4read0EB3B_.exit: ; preds = %bb.bf, %bb.bb, %bb.ba, %bb.bg
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  store ptr %i.dh, ptr %i.b, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.di, align 8
  invoke void @_RNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.df, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @31)
          to label %bb.bk unwind label %bb.bj

bb.bj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1A_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEE4read0EB3B_.exit
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1k_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB3l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit unwind label %bb.ac

bb.bk:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1A_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEE4read0EB3B_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1k_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB3l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit75 unwind label %bb.bl

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit: ; preds = %bb.ax, %bb.bd, %bb.be, %bb.bi, %bb.bj, %bb.bl
  %.pn35 = phi { ptr, i32 } [ %i.dk, %bb.bl ], [ %i.dj, %bb.bj ], [ %i.cs, %bb.bd ], [ %i.ci, %bb.ax ], [ %i.de, %bb.bi ], [ %i.cs, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.av

bb.bl:                                            ; preds = %bb.bk
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit75: ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEECsiAynQAjgDuT_10xet_client.exit77 unwind label %bb.bm

bb.bm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit75
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEECsiAynQAjgDuT_10xet_client.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEECsiAynQAjgDuT_10xet_client.exit77: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit75
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(152) %i.df)
          to label %bb.aa unwind label %bb.bn

bb.bn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEECsiAynQAjgDuT_10xet_client.exit77
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controllerNtB6_29AdaptiveConcurrencyController25acquire_connection_permit0Bc_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 11 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 9 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !range !19, !noundef !12
  switch i8 %i.f, label %default.unreachable158 [
    i8 0, label %.thread
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.f
    i8 4, label %bb.bh
  ]

default.unreachable158:                           ; preds = %bb.br, %bb.bo, %bb.bk, %bb.bh, %bb.q, %bb.j, %bb.f, %bb.a
  unreachable

.thread:                                          ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %1, align 8, !nonnull !12, !align !17, !noundef !12 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !captures !42
  %.val42 = load ptr, ptr %i.h, align 8, !nonnull !12, !noundef !12
  %i.i = getelementptr inbounds nuw i8, ptr %.val42, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.i, ptr %i.j, align 8
  %.sroa.9103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i8 0, ptr %.sroa.9103.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 160
  br label %.thread.i

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #28
  unreachable

bb.d:                                             ; preds = %.body
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.n = load i8, ptr %i.m, align 4, !range !18, !noundef !12
  %cond.i.i = icmp eq i8 %i.n, 3
  br i1 %cond.i.i, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs0_NtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphoreNtBJ_19AdjustableSemaphore7acquire0ECsiAynQAjgDuT_10xet_client.exit

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsUrhh0HcRih_5tokio4sync9semaphoreNtBG_9Semaphore18acquire_many_owned0ECsiAynQAjgDuT_10xet_client(ptr noundef nonnull align 8 %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs0_NtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphoreNtBJ_19AdjustableSemaphore7acquire0ECsiAynQAjgDuT_10xet_client.exit unwind label %bb.bd

bb.f:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !18, !noalias !777
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 8 uses
  switch i8 %.pre, label %default.unreachable158 [
    i8 0, label %.thread.i
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.j
  ]

.thread.i:                                        ; preds = %.thread, %bb.f
  %i.r = phi ptr [ %i.l, %.thread ], [ %i.q, %bb.f ]
  %i.s = phi ptr [ %i.k, %.thread ], [ %i.p, %bb.f ] ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !noalias !777, !nonnull !12, !align !17, !noundef !12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.t, ptr %i.u, align 8, !noalias !777
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 1, ptr %.sroa.711.0..sroa_idx.i, align 8, !noalias !777
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 156 ; 2 uses
  store i8 0, ptr %.sroa.9.0..sroa_idx.i, align 4, !noalias !777
  br label %bb.l

.body.thread:                                     ; preds = %bb.i, %.body.thread.i, %.body.i
  %i.v = phi ptr [ %i.q, %.body.i ], [ %i.an, %.body.thread.i ], [ %i.q, %bb.i ]
  %.pn2.i = phi { ptr, i32 } [ %i.da, %.body.i ], [ %.pn9.pn.i.i, %.body.thread.i ], [ %i.da, %bb.i ]
  store i8 2, ptr %i.v, align 8, !noalias !777
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs0_NtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphoreNtBJ_19AdjustableSemaphore7acquire0ECsiAynQAjgDuT_10xet_client.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #28
          to label %.noexc47 unwind label %.body

.noexc47:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #28
          to label %.noexc48 unwind label %.body

.noexc48:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %.body.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsUrhh0HcRih_5tokio4sync9semaphoreNtBG_9Semaphore18acquire_many_owned0ECsiAynQAjgDuT_10xet_client(ptr noundef nonnull align 8 %i.w)
          to label %.body.thread unwind label %bb.as, !noalias !777

bb.j:                                             ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 156 ; 6 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 4, !range !18, !noalias !778
  switch i8 %.pre.i, label %default.unreachable158 [
    i8 0, label %._crit_edge148
    i8 1, label %bb.o
    i8 2, label %bb.p
    i8 3, label %bb.q
  ]

._crit_edge148:                                   ; preds = %bb.j
  %.phi.trans.insert149 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre150 = load ptr, ptr %.phi.trans.insert149, align 8, !noalias !778
  %.phi.trans.insert151 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre152 = load i64, ptr %.phi.trans.insert151, align 8, !noalias !778
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.l:                                             ; preds = %._crit_edge148, %.thread.i
  %i.y = phi ptr [ %i.r, %.thread.i ], [ %i.q, %._crit_edge148 ] ; 2 uses
  %i.z = phi ptr [ %i.s, %.thread.i ], [ %i.p, %._crit_edge148 ]
  %i.aa = phi i64 [ 1, %.thread.i ], [ %.pre152, %._crit_edge148 ]
  %i.ab = phi ptr [ %i.t, %.thread.i ], [ %.pre150, %._crit_edge148 ] ; 2 uses
  %i.ac = phi ptr [ %.sroa.9.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert.i, %._crit_edge148 ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store ptr %i.ab, ptr %i.ad, align 8, !noalias !778, !captures !42
  %.val12.i.i = load ptr, ptr %i.ab, align 8, !noalias !778, !nonnull !12, !noundef !12
  %i.ae = getelementptr inbounds nuw i8, ptr %.val12.i.i, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.ag = invoke noundef i32 @_RNvMs0_NtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphoreNtB5_19AdjustableSemaphore19to_physical_acquire(ptr noundef nonnull align 8 %i.ae, i64 noundef %i.aa)
          to label %bb.m unwind label %bb.k, !noalias !778

bb.m:                                             ; preds = %bb.l
  store i32 %i.ag, ptr %i.af, align 8, !noalias !778
  %i.ah = load ptr, ptr %i.ad, align 8, !noalias !778, !nonnull !12, !align !17, !noundef !12
  %.val.i.i = load ptr, ptr %i.ah, align 8, !noalias !778, !nonnull !12, !noundef !12
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %.val13.i.i = load ptr, ptr %i.ai, align 8, !noalias !778, !nonnull !12, !noundef !12 ; 3 uses
  %i.aj = atomicrmw add ptr %.val13.i.i, i64 1 monotonic, align 8, !noalias !778
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %bb.n, label %.thread.i.i

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.trap()
  unreachable

.thread.i.i:                                      ; preds = %bb.m
  %i.al = load i32, ptr %i.af, align 8, !noalias !778, !noundef !12 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  store ptr %.val13.i.i, ptr %i.am, align 8, !noalias !778
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i32 %i.al, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !778
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  store i8 0, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !778
  br label %bb.s

.body.thread.i:                                   ; preds = %bb.an, %.body.i.i, %bb.k
  %i.an = phi ptr [ %i.y, %bb.k ], [ %i.ap, %.body.i.i ], [ %i.bl, %bb.an ]
  %i.ao = phi ptr [ %i.ac, %bb.k ], [ %i.aq, %.body.i.i ], [ %i.bn, %bb.an ]
  %.pn9.pn.i.i = phi { ptr, i32 } [ %i.x, %bb.k ], [ %.pn7.i.i, %.body.i.i ], [ %i.cr, %bb.an ]
  store i8 2, ptr %i.ao, align 4, !noalias !778
  br label %.body.thread

bb.o:                                             ; preds = %bb.j
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #28
          to label %.noexc4.i unwind label %.body.i, !noalias !777

.noexc4.i:                                        ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.j
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #28
          to label %.noexc5.i unwind label %.body.i, !noalias !777

.noexc5.i:                                        ; preds = %bb.p
  unreachable

.body.i.i:                                        ; preds = %bb.al, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECsiAynQAjgDuT_10xet_client.exit.i.i.i
  %i.ap = phi ptr [ %i.bl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECsiAynQAjgDuT_10xet_client.exit.i.i.i ], [ %i.q, %bb.al ]
  %i.aq = phi ptr [ %i.bn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECsiAynQAjgDuT_10xet_client.exit.i.i.i ], [ %.phi.trans.insert.i, %bb.al ]
  %i.ar = phi ptr [ %i.bp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECsiAynQAjgDuT_10xet_client.exit.i.i.i ], [ %i.as, %bb.al ]
  %.pn7.i.i = phi { ptr, i32 } [ %.pn9.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECsiAynQAjgDuT_10xet_client.exit.i.i.i ], [ %i.cq, %bb.al ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsUrhh0HcRih_5tokio4sync9semaphoreNtBG_9Semaphore18acquire_many_owned0ECsiAynQAjgDuT_10xet_client(ptr noundef nonnull align 8 %i.ar) #27
          to label %.body.thread.i unwind label %bb.ar, !noalias !779

bb.q:                                             ; preds = %bb.j
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !range !18, !noalias !780
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  switch i8 %.pre.i.i, label %default.unreachable158 [
    i8 0, label %._crit_edge16.i
    i8 1, label %bb.u
    i8 2, label %bb.v
    i8 3, label %bb.w
  ]

._crit_edge16.i:                                  ; preds = %bb.q
  %.pre17.i = load ptr, ptr %i.as, align 8, !noalias !780
  %.phi.trans.insert18.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.pre19.i = load i32, ptr %.phi.trans.insert18.i, align 8, !noalias !780
  br label %bb.s

.body.i.i.i:                                      ; preds = %bb.ab, %bb.aa, %bb.x, %bb.r
  %.pn6.i.i.i = phi { ptr, i32 } [ %i.bu, %bb.aa ], [ %i.bs, %bb.x ], [ %i.ax, %bb.r ], [ %i.bu, %bb.ab ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782)
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !783, !noalias !780, !nonnull !12, !noundef !12
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !784
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECsiAynQAjgDuT_10xet_client.exit.i.i.i

bb.r:                                             ; preds = %bb.ad
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.s:                                             ; preds = %._crit_edge16.i, %.thread.i.i
  %i.ay = phi ptr [ %i.y, %.thread.i.i ], [ %i.q, %._crit_edge16.i ]
  %i.az = phi ptr [ %i.z, %.thread.i.i ], [ %i.p, %._crit_edge16.i ]
  %i.ba = phi ptr [ %i.ac, %.thread.i.i ], [ %.phi.trans.insert.i, %._crit_edge16.i ]
  %i.bb = phi i32 [ %i.al, %.thread.i.i ], [ %.pre19.i, %._crit_edge16.i ] ; 2 uses
  %i.bc = phi ptr [ %.val13.i.i, %.thread.i.i ], [ %.pre17.i, %._crit_edge16.i ] ; 2 uses
  %i.bd = phi ptr [ %.sroa.11.0..sroa_idx.i.i, %.thread.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge16.i ]
  %i.be = phi ptr [ %i.am, %.thread.i.i ], [ %i.as, %._crit_edge16.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.bc, ptr %i.bf, align 8, !noalias !780
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 140
  store i32 %i.bb, ptr %i.bg, align 4, !noalias !780
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bi = zext i32 %i.bb to i64                   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.bh, ptr %i.bj, align 8, !noalias !780
  %.sroa.815.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr null, ptr %.sroa.815.0..sroa_idx.i.i.i, align 8, !noalias !780
  %i.bk = getelementptr i8, ptr %1, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false), !noalias !780
  %.sroa.1017.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.bi, ptr %.sroa.1017.0..sroa_idx.i.i.i, align 8, !noalias !780
  %.sroa.1118.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 %i.bi, ptr %.sroa.1118.0..sroa_idx.i.i.i, align 8, !noalias !780
  %.sroa.1219.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i8 0, ptr %.sroa.1219.0..sroa_idx.i.i.i, align 8, !noalias !780
  br label %bb.w

bb.t:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.at) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECsiAynQAjgDuT_10xet_client.exit.i.i.i unwind label %bb.ak, !noalias !785

bb.u:                                             ; preds = %bb.q
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #28
          to label %.noexc.i.i unwind label %bb.al, !noalias !778

.noexc.i.i:                                       ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.q
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #28
          to label %.noexc15.i.i unwind label %bb.al, !noalias !778

.noexc15.i.i:                                     ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.s, %bb.q
  %i.bl = phi ptr [ %i.q, %bb.q ], [ %i.ay, %bb.s ] ; 5 uses
  %i.bm = phi ptr [ %i.p, %bb.q ], [ %i.az, %bb.s ] ; 5 uses
  %i.bn = phi ptr [ %.phi.trans.insert.i, %bb.q ], [ %i.ba, %bb.s ] ; 5 uses
  %i.bo = phi ptr [ %.phi.trans.insert.i.i, %bb.q ], [ %i.bd, %bb.s ] ; 3 uses
  %i.bp = phi ptr [ %i.as, %bb.q ], [ %i.be, %bb.s ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.br = invoke noundef i8 @_RNvXs1_NtNtCsUrhh0HcRih_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.bq, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.y unwind label %bb.x, !noalias !785 ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync15batch_semaphore7AcquireECsiAynQAjgDuT_10xet_client(ptr noundef nonnull align 8 %i.bq) #27
          to label %.body.i.i.i unwind label %bb.ak, !noalias !785

bb.y:                                             ; preds = %bb.w
  %i.bt = icmp eq i8 %i.br, 2
  br i1 %i.bt, label %bb.at, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvXs3_NtNtCsUrhh0HcRih_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.bq)
          to label %bb.ac unwind label %bb.aa, !noalias !785

bb.aa:                                            ; preds = %bb.z
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val2.i.i.i.i = load ptr, ptr %i.bv, align 8, !noalias !780, !align !17, !noundef !12 ; 2 uses
  %i.bw = icmp eq ptr %.val2.i.i.i.i, null
  br i1 %i.bw, label %.body.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bx = getelementptr i8, ptr %1, i64 88
  %.val3.i.i.i.i = load ptr, ptr %i.bx, align 8, !noalias !780
  %i.by = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !785, !nonnull !12, !noundef !12
  invoke void %i.bz(ptr noundef %.val3.i.i.i.i)
          to label %.body.i.i.i unwind label %bb.ae, !noalias !785, !inline_history !1

bb.ac:                                            ; preds = %bb.z
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val.i.i.i.i = load ptr, ptr %i.ca, align 8, !noalias !780, !align !17, !noundef !12 ; 2 uses
  %i.cb = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.cb, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cc = getelementptr i8, ptr %1, i64 88
  %.val1.i.i.i.i = load ptr, ptr %i.cc, align 8, !noalias !780
  %i.cd = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !785, !nonnull !12, !noundef !12
  invoke void %i.ce(ptr noundef %.val1.i.i.i.i)
          to label %bb.af unwind label %bb.r, !noalias !785, !inline_history !20

bb.ae:                                            ; preds = %bb.ab
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !785
  unreachable

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %i.cg = trunc nuw i8 %i.br to i1
end_hunk_2
begin_hunk_3_@_RNCNvXs0_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB7_12MemoryClientNtNtB9_20direct_access_client18DirectAccessClient13get_file_data0Bd_:bb.a
  br i1 %i.cq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBG_12MemoryClient15shard_is_tagged0EBM_.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cr = getelementptr i8, ptr %1, i64 248
  %.val1.i.i.i.i = load ptr, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !nonnull !12, !noundef !12
  invoke void %i.ct(ptr noundef %.val1.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBG_12MemoryClient15shard_is_tagged0EBM_.exit unwind label %bb.ar, !inline_history !25

bb.aq:                                            ; preds = %bb.an
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body89

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBG_12MemoryClient15shard_is_tagged0EBM_.exit: ; preds = %bb.ao, %bb.ak, %bb.aj, %bb.ai, %bb.ap
  %i.cw = trunc nuw i8 %i.bz to i1
  br i1 %i.cw, label %bb.as, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBG_12MemoryClient15shard_is_tagged0EBM_.exit._crit_edge

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBG_12MemoryClient15shard_is_tagged0EBM_.exit._crit_edge: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBG_12MemoryClient15shard_is_tagged0EBM_.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !992
  br label %bb.y

bb.as:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBG_12MemoryClient15shard_is_tagged0EBM_.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !nonnull !12, !align !17, !noundef !12 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !1002, !noundef !12 ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsiAynQAjgDuT_10xet_client.exit92, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !1006, !nonnull !12, !noundef !12
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !1006, !noundef !12
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !1006, !noundef !12
  invoke void %i.dd(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef %i.dg, i64 noundef %i.di)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsiAynQAjgDuT_10xet_client.exit92 unwind label %bb.au, !inline_history !5

bb.au:                                            ; preds = %bb.at, %bb.z
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsiAynQAjgDuT_10xet_client.exit82

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.12.sroa.0)
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dk)
          to label %bb.aw unwind label %bb.av

bb.av:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsiAynQAjgDuT_10xet_client.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsiAynQAjgDuT_10xet_client.exit92, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit143, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit85

bb.aw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsiAynQAjgDuT_10xet_client.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dn = load ptr, ptr %i.dm, align 8, !nonnull !12, !align !17, !noundef !12
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 96
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.do, ptr %i.dp, align 8
  %.sroa.8183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i8 0, ptr %.sroa.8183.0..sroa_idx, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.c, %bb.aw
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.dr = invoke fastcc { ptr, ptr } @_RNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtB7_6RwLockNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardE4read0CsiAynQAjgDuT_10xet_client(ptr noundef nonnull align 8 %i.dq, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.az unwind label %bb.ay     ; 2 uses

bb.ay:                                            ; preds = %bb.ax
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardE4read0ECsiAynQAjgDuT_10xet_client(ptr noundef nonnull align 8 %i.dq) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit113 unwind label %bb.ad

bb.az:                                            ; preds = %bb.ax
  %i.dt = extractvalue { ptr, ptr } %i.dr, 0      ; 2 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %common.ret

bb.bb:                                            ; preds = %bb.az
  %i.dv = extractvalue { ptr, ptr } %i.dr, 1
  store ptr %i.dt, ptr %i.j, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.dv, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.dy = load i8, ptr %i.dx, align 8, !range !18, !noundef !12
  %cond.i95 = icmp eq i8 %i.dy, 3
  br i1 %cond.i95, label %bb.bc, label %bb.bk

bb.bc:                                            ; preds = %bb.bb
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ea = load i8, ptr %i.dz, align 8, !range !18, !noundef !12
  %cond.i.i96 = icmp eq i8 %i.ea, 3
  br i1 %cond.i.i96, label %bb.bd, label %bb.bk

bb.bd:                                            ; preds = %bb.bc
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 112
  invoke void @_RNvXs3_NtNtCsUrhh0HcRih_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.eb)
          to label %bb.bg unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val2.i.i.i97 = load ptr, ptr %i.ed, align 8, !align !17, !noundef !12 ; 2 uses
  %i.ee = icmp eq ptr %.val2.i.i.i97, null
  br i1 %i.ee, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit113, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ef = getelementptr i8, ptr %1, i64 128
  %.val3.i.i.i98 = load ptr, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %.val2.i.i.i97, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !nonnull !12, !noundef !12
  invoke void %i.eh(ptr noundef %.val3.i.i.i98)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit113 unwind label %bb.bi, !inline_history !1

bb.bg:                                            ; preds = %bb.bd
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val.i.i.i100 = load ptr, ptr %i.ei, align 8, !align !17, !noundef !12 ; 2 uses
  %i.ej = icmp eq ptr %.val.i.i.i100, null
  br i1 %i.ej, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ek = getelementptr i8, ptr %1, i64 128
  %.val1.i.i.i101 = load ptr, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %.val.i.i.i100, i64 24
  %i.em = load ptr, ptr %i.el, align 8, !nonnull !12, !noundef !12
  invoke void %i.em(ptr noundef %.val1.i.i.i101)
          to label %bb.bk unwind label %bb.bj, !inline_history !33

bb.bi:                                            ; preds = %bb.bf
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit113

bb.bk:                                            ; preds = %bb.bh, %bb.bb, %bb.bc, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8187.sroa.8.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7192.sroa.7.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10193)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.val69 = load ptr, ptr %i.dw, align 8, !noundef !12
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !nonnull !12, !align !17, !noundef !12
  invoke void @_RNvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memoryNtB2_16MDBInMemoryShard28get_file_reconstruction_info(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %.val69, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.eq)
          to label %bb.bn unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bp, %bb.bm
  %.pn30 = phi { ptr, i32 } [ %i.ev, %bb.bp ], [ %i.er, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7192.sroa.7.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10193)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8187.sroa.8.sroa.0)
  invoke void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit113 unwind label %bb.ad

bb.bm:                                            ; preds = %bb.bk
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bn:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.es = load ptr, ptr %i.ep, align 8, !nonnull !12, !align !17, !noundef !12
  %i.et = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.et, ptr noundef nonnull align 8 dereferenceable(32) %i.es, i64 32, i1 false)
  store i64 25, ptr %i.h, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  %i.eu = load i64, ptr %i.i, align 8, !range !41, !alias.scope !1008, !noalias !1010, !noundef !12 ; 2 uses
  %.not.i106 = icmp eq i64 %i.eu, 2
  br i1 %.not.i106, label %bb.bv, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.sroa.7192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.7192.sroa.0.0.copyload = load i64, ptr %.sroa.7192.0..sroa_idx, align 8, !alias.scope !1011, !noalias !1009
  %.sroa.7192.sroa.7.0..sroa.7192.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7192.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7192.sroa.7.0..sroa.7192.0..sroa_idx.sroa_idx, i64 24, i1 false), !alias.scope !1011, !noalias !1009
  %.sroa.7192.sroa.7.sroa.7.0..sroa.7192.sroa.7.0..sroa.7192.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.7192.sroa.7.sroa.7.0.copyload = load i64, ptr %.sroa.7192.sroa.7.sroa.7.0..sroa.7192.sroa.7.0..sroa.7192.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !1011, !noalias !1009
  %.sroa.10193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.10193, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.10193.0..sroa_idx, i64 104, i1 false), !alias.scope !1011, !noalias !1009
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %bb.bq unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.bl

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8187.sroa.8.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7192.sroa.7.sroa.0, i64 24, i1 false), !alias.scope !1012
  %.sroa.6203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6203.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.10193, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7192.sroa.7.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10193)
  %.sroa.5202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5202.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8187.sroa.8.sroa.0, i64 24, i1 false)
  store i64 %i.eu, ptr %i.dq, align 8
  %.sroa.4201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %.sroa.7192.sroa.0.0.copyload, ptr %.sroa.4201.0..sroa_idx, align 8
  %.sroa.5202.sroa.4.0..sroa.5202.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 %.sroa.7192.sroa.7.sroa.7.0.copyload, ptr %.sroa.5202.sroa.4.0..sroa.5202.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8187.sroa.8.sroa.0)
  invoke void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %bb.bt unwind label %bb.br

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit113: ; preds = %bb.ay, %bb.be, %bb.bf, %bb.bj, %bb.bl, %bb.br
  %.pn57 = phi { ptr, i32 } [ %i.ew, %bb.br ], [ %.pn30, %bb.bl ], [ %i.ec, %bb.be ], [ %i.ds, %bb.ay ], [ %i.eo, %bb.bj ], [ %i.ec, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit85

bb.br:                                            ; preds = %bb.bv, %bb.bq
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit113

.body137:                                         ; preds = %bb.dh, %bb.dd, %bb.bs, %bb.dk
  %.pn53 = phi { ptr, i32 } [ %.pn48.pn.pn.pn, %bb.dk ], [ %i.if, %bb.dd ], [ %i.ey, %bb.bs ], [ %i.ij, %bb.dh ]
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(152) %i.ex) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit85 unwind label %bb.ad

bb.bs:                                            ; preds = %bb.di, %bb.de
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.body137

bb.bt:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 248
  store i64 0, ptr %i.ez, align 8, !alias.scope !1013
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr inttoptr (i64 1 to ptr), ptr %i.fa, align 8, !alias.scope !1013
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 264
  store i64 0, ptr %i.fb, align 8, !alias.scope !1013
  %i.fc = getelementptr i8, ptr %1, i64 160
  %.val71 = load ptr, ptr %i.fc, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.fd = getelementptr i8, ptr %1, i64 168
  %.val72 = load i64, ptr %i.fd, align 8, !noundef !12
  %i.fe = getelementptr inbounds nuw [48 x i8], ptr %.val71, i64 %.val72 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr %.val71, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 280
  store ptr %i.fe, ptr %i.fg, align 8
  br label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client.exit, %bb.bt
  %i.fh = phi ptr [ %.pre271, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client.exit ], [ %i.fe, %bb.bt ]
  %i.fi = phi ptr [ %.pre269, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client.exit ], [ %.val71, %bb.bt ] ; 4 uses
  %i.fj = icmp eq ptr %i.fi, %i.fh
  br i1 %i.fj, label %bb.ct, label %bb.cr

bb.bv:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7192.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.et, i64 24, i1 false), !alias.scope !1010, !noalias !1008
  %.sroa.7192.sroa.7.sroa.7.0..sroa.7192.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.7192.sroa.7.sroa.7.0.copyload229 = load i64, ptr %.sroa.7192.sroa.7.sroa.7.0..sroa.7192.sroa.7.0..sroa_idx.sroa_idx, align 8, !alias.scope !1010, !noalias !1008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8187.sroa.8.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7192.sroa.7.sroa.0, i64 24, i1 false), !alias.scope !1012
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7192.sroa.7.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10193)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8187.sroa.8.sroa.0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8187.sroa.8.sroa.0)
  invoke void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit111 unwind label %bb.br

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit111: ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit

bb.bw:                                            ; preds = %bb.d, %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 3 uses
  invoke void @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_3vec3VecNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorENtNtB8_6marker4SendEL_EEB1v_4pollB37_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.fk, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.by unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.val67 = load ptr, ptr %i.fk, align 8
  %i.fm = getelementptr i8, ptr %1, i64 296
  %.val68 = load ptr, ptr %i.fm, align 8, !nonnull !12, !align !17, !noundef !12
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorENtNtB4_6marker4SendEL_EEEB3k_(ptr %.val67, ptr nonnull %.val68) #27
          to label %.sink.split unwind label %bb.ad

bb.by:                                            ; preds = %bb.bw
  %i.fn = load i64, ptr %i.e, align 8, !range !43, !noundef !12 ; 3 uses
  %i.fo = icmp eq i64 %i.fn, -2
  br i1 %i.fo, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %common.ret

bb.ca:                                            ; preds = %bb.by
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, i64 24, i1 false)
  %.sroa.5218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.5218.0.copyload = load i64, ptr %.sroa.5218.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.val = load ptr, ptr %i.fk, align 8            ; 5 uses
  %i.fp = getelementptr i8, ptr %1, i64 296
  %.val66 = load ptr, ptr %i.fp, align 8, !nonnull !12, !align !17, !noundef !12 ; 5 uses
  %i.fq = load ptr, ptr %.val66, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.fq(ptr noundef nonnull %.val)
          to label %bb.cc unwind label %bb.ce

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.fr = getelementptr inbounds nuw i8, ptr %.val66, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !range !13, !invariant.load !12 ; 2 uses
  %i.ft = icmp eq i64 %i.fs, 0
  br i1 %i.ft, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorENtNtB4_6marker4SendEL_EEEB3k_.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.fu = getelementptr inbounds nuw i8, ptr %.val66, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !range !14, !invariant.load !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.fs, i64 noundef range(i64 1, 536870913) %i.fv) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorENtNtB4_6marker4SendEL_EEEB3k_.exit

bb.ce:                                            ; preds = %bb.cb
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.val66, i64 8
  %i.fy = load i64, ptr %i.fx, align 8, !range !13, !invariant.load !12 ; 2 uses
  %i.fz = icmp eq i64 %i.fy, 0
  br i1 %i.fz, label %.sink.split, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ga = getelementptr inbounds nuw i8, ptr %.val66, i64 16
  %i.gb = load i64, ptr %i.ga, align 8, !range !14, !invariant.load !12
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.fy, i64 noundef range(i64 1, 536870913) %i.gb) #24
  br label %.sink.split

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorENtNtB4_6marker4SendEL_EEEB3k_.exit: ; preds = %bb.cd, %bb.cc
  %.not.i116 = icmp eq i64 %i.fn, -1
  br i1 %.not.i116, label %bb.cg, label %bb.dt

bb.cg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorENtNtB4_6marker4SendEL_EEEB3k_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  %i.gc = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !alias.scope !1014, !noalias !1015, !noundef !12 ; 3 uses
  %i.ge = icmp eq i64 %i.gd, 0
  br i1 %i.ge, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCslc8SwK8fohf_5bytes5bytes5BytesE3popCsiAynQAjgDuT_10xet_client.exit.thread, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCslc8SwK8fohf_5bytes5bytes5BytesE3popCsiAynQAjgDuT_10xet_client.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCslc8SwK8fohf_5bytes5bytes5BytesE3popCsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.cg
  %i.gf = add nsw i64 %i.gd, -1                   ; 3 uses
  store i64 %i.gf, ptr %i.gc, align 8, !alias.scope !1014, !noalias !1015
  %i.gg = load i64, ptr %i.f, align 8, !range !13, !alias.scope !1014, !noalias !1015, !noundef !12
  %i.gh = icmp samesign ult i64 %i.gf, %i.gg
  call void @llvm.assume(i1 %i.gh)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !alias.scope !1014, !noalias !1015, !nonnull !12, !noundef !12
  %i.gk = icmp ult i64 %i.gd, 288230376151711745
  call void @llvm.assume(i1 %i.gk)
end_hunk_3
begin_hunk_4_@_RNCNvXs0_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB7_12MemoryClientNtNtB9_20direct_access_client18DirectAccessClient13get_file_size0Bd_:bb.a
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !1084, !nonnull !12, !noundef !12
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !1084, !noundef !12
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !1084, !noundef !12
  invoke void %i.bg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef %i.bj, i64 noundef %i.bl)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsiAynQAjgDuT_10xet_client.exit33 unwind label %bb.ad, !inline_history !5

bb.aa:                                            ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.sroa.13, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.13)
  br label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsiAynQAjgDuT_10xet_client.exit43, %bb.bh, %bb.aa
  %.sroa.5.0 = phi i64 [ %.sroa.10.sroa.12.0.copyload69, %bb.aa ], [ %.sroa.793.sroa.7.0.copyload105, %bb.bh ], [ %.sroa.085.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsiAynQAjgDuT_10xet_client.exit43 ]
  %.sroa.0.0 = phi i64 [ %.sroa.10.sroa.0.0.copyload65, %bb.aa ], [ 25, %bb.bh ], [ 25, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsiAynQAjgDuT_10xet_client.exit43 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit unwind label %bb.bg

bb.ac:                                            ; preds = %bb.bd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsiAynQAjgDuT_10xet_client.exit33, %bb.s
  %.pn25.pn = phi { ptr, i32 } [ %i.ak, %bb.s ], [ %.pn23, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsiAynQAjgDuT_10xet_client.exit33 ], [ %.pn20.pn, %bb.bd ]
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bn)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit36 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z, %bb.bb, %bb.af, %bb.g
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit36: ; preds = %bb.g, %bb.m, %bb.n, %bb.r, %bb.ac, %bb.bg
  %.pn28 = phi { ptr, i32 } [ %i.do, %bb.bg ], [ %.pn25.pn, %bb.ac ], [ %i.x, %bb.m ], [ %i.m, %bb.g ], [ %i.aj, %bb.r ], [ %i.x, %bb.n ]
  store i8 2, ptr %i.e, align 8
  resume { ptr, i32 } %.pn28

bb.ae:                                            ; preds = %bb.b, %bb.y
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.bq = invoke fastcc noundef i8 @_RNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB4_12MemoryClient15shard_is_tagged0Ba_(ptr noundef nonnull align 8 %i.bp, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.ag unwind label %bb.af     ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBG_12MemoryClient15shard_is_tagged0EBM_(ptr noundef nonnull align 8 %i.bp) #27
          to label %.body40 unwind label %bb.ad

bb.ag:                                            ; preds = %bb.ae
  %i.bs = icmp eq i8 %i.bq, 2
  br i1 %i.bs, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.13)
  br label %common.ret

bb.ai:                                            ; preds = %bb.ag
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.bu = load i8, ptr %i.bt, align 8, !range !18, !noundef !12
  %cond.i37 = icmp eq i8 %i.bu, 3
  br i1 %cond.i37, label %bb.aj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBG_12MemoryClient15shard_is_tagged0EBM_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bw = load i8, ptr %i.bv, align 8, !range !18, !noundef !12
  %cond.i.i38 = icmp eq i8 %i.bw, 3
  br i1 %cond.i.i38, label %bb.ak, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBG_12MemoryClient15shard_is_tagged0EBM_.exit

bb.ak:                                            ; preds = %bb.aj
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.by = load i8, ptr %i.bx, align 8, !range !18, !noundef !12
  %cond.i.i.i = icmp eq i8 %i.by, 3
  br i1 %cond.i.i.i, label %bb.al, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBG_12MemoryClient15shard_is_tagged0EBM_.exit

bb.al:                                            ; preds = %bb.ak
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 184
  invoke void @_RNvXs3_NtNtCsUrhh0HcRih_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.bz)
          to label %bb.ao unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.val2.i.i.i.i = load ptr, ptr %i.cb, align 8, !align !17, !noundef !12 ; 2 uses
  %i.cc = icmp eq ptr %.val2.i.i.i.i, null
  br i1 %i.cc, label %.body40, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cd = getelementptr i8, ptr %1, i64 200
  %.val3.i.i.i.i = load ptr, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !nonnull !12, !noundef !12
  invoke void %i.cf(ptr noundef %.val3.i.i.i.i)
          to label %.body40 unwind label %bb.aq, !inline_history !1

bb.ao:                                            ; preds = %bb.al
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.val.i.i.i.i = load ptr, ptr %i.cg, align 8, !align !17, !noundef !12 ; 2 uses
  %i.ch = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.ch, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBG_12MemoryClient15shard_is_tagged0EBM_.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ci = getelementptr i8, ptr %1, i64 200
  %.val1.i.i.i.i = load ptr, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !nonnull !12, !noundef !12
  invoke void %i.ck(ptr noundef %.val1.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBG_12MemoryClient15shard_is_tagged0EBM_.exit unwind label %bb.ar, !inline_history !25

bb.aq:                                            ; preds = %bb.an
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body40

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBG_12MemoryClient15shard_is_tagged0EBM_.exit: ; preds = %bb.ao, %bb.ak, %bb.aj, %bb.ai, %bb.ap
  %i.cn = trunc nuw i8 %i.bq to i1
  br i1 %i.cn, label %bb.as, label %bb.w

bb.as:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBG_12MemoryClient15shard_is_tagged0EBM_.exit
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !12, !align !17, !noundef !12 ; 2 uses
  %.sroa.085.0.copyload = load i64, ptr %i.cp, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !1085, !noundef !12 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsiAynQAjgDuT_10xet_client.exit43, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !1089, !nonnull !12, !noundef !12
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !1089, !noundef !12
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !1089, !noundef !12
  invoke void %i.cu(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef %i.cx, i64 noundef %i.cz)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsiAynQAjgDuT_10xet_client.exit43 unwind label %bb.au, !inline_history !5

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsiAynQAjgDuT_10xet_client.exit33: ; preds = %.body40, %bb.z, %bb.au
  %.pn23 = phi { ptr, i32 } [ %i.da, %bb.au ], [ %.pn14, %bb.z ], [ %.pn14, %.body40 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.13)
  br label %bb.ac

bb.au:                                            ; preds = %bb.at, %bb.x
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsiAynQAjgDuT_10xet_client.exit33

.thread:                                          ; preds = %bb.v, %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.888.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.793.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1094)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dc = getelementptr i8, ptr %1, i64 32
  %.val = load ptr, ptr %i.dc, align 8, !noundef !12
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !12, !align !17, !noundef !12
  invoke void @_RNvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memoryNtB2_16MDBInMemoryShard28get_file_reconstruction_info(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.de)
          to label %bb.ax unwind label %bb.aw

bb.av:                                            ; preds = %bb.az, %bb.aw
  %.pn16 = phi { ptr, i32 } [ %i.dk, %bb.az ], [ %i.df, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.793.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1094)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.888.sroa.9)
  br label %bb.bd

bb.aw:                                            ; preds = %.thread
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ax:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.dg = load ptr, ptr %i.dd, align 8, !nonnull !12, !align !17, !noundef !12 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %i.dg, i64 32, i1 false)
  store i64 25, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1092)
  %i.di = load i64, ptr %i.b, align 8, !range !41, !alias.scope !1091, !noalias !1093, !noundef !12 ; 2 uses
  %.not.i = icmp eq i64 %i.di, 2
  br i1 %.not.i, label %bb.bh, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.sroa.793.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dj = load <2 x i64>, ptr %.sroa.793.0..sroa_idx, align 8, !alias.scope !1094, !noalias !1092
  %.sroa.793.sroa.9.0..sroa.793.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.793.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.793.sroa.9.0..sroa.793.0..sroa_idx.sroa_idx, i64 24, i1 false), !alias.scope !1094, !noalias !1092
  %.sroa.1094.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.1094, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.1094.0..sroa_idx, i64 104, i1 false), !alias.scope !1094, !noalias !1092
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %bb.ba unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.av

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.888.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.793.sroa.9, i64 24, i1 false), !alias.scope !1095
  %.sroa.7110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7110.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.1094, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.793.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1094)
  %.sroa.6109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6109.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.888.sroa.9, i64 24, i1 false)
  store i64 %i.di, ptr %i.c, align 8
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store <2 x i64> %i.dj, ptr %.sroa.4107.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.888.sroa.9)
  %i.dl = invoke noundef i64 @_RNvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB5_11MDBFileInfo9file_size(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.c)
          to label %bb.bc unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(152) %i.c) #27
          to label %bb.bd unwind label %bb.ad

bb.bc:                                            ; preds = %bb.ba
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(152) %i.c)
          to label %bb.bf unwind label %bb.be

bb.bd:                                            ; preds = %bb.av, %bb.be, %bb.bb
  %.pn20.pn = phi { ptr, i32 } [ %.pn16, %bb.av ], [ %i.dn, %bb.be ], [ %i.dm, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ac

bb.be:                                            ; preds = %bb.bc
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bf:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.db)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.ab
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit36

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.bf, %bb.ab
  %.sroa.5.1 = phi i64 [ %.sroa.5.0, %bb.ab ], [ %i.dl, %bb.bf ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.ab ], [ -1, %bb.bf ]
  store i64 %.sroa.0.1, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false)
  br label %common.ret

bb.bh:                                            ; preds = %bb.ax
  %.sroa.793.sroa.7.0.copyload105 = load i64, ptr %i.dh, align 8, !alias.scope !1093, !noalias !1091
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.793.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1094)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.888.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ab

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsiAynQAjgDuT_10xet_client.exit43: ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.13)
  br label %bb.ab
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs0_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB7_12MemoryClientNtNtB9_20direct_access_client18DirectAccessClient13get_full_xorb0Bd_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 3 uses
  %i.i = alloca [40 x i8], align 8                ; 9 uses
  %.sroa.8.sroa.8 = alloca [16 x i8], align 8     ; 7 uses
  %i.j = alloca [168 x i8], align 8               ; 11 uses
  %.sroa.8.sroa.9.sroa.0 = alloca [16 x i8], align 8 ; 7 uses
  %i.k = alloca [168 x i8], align 8               ; 14 uses
  %i.l = alloca [56 x i8], align 8                ; 13 uses
  %i.m = alloca [16 x i8], align 8                ; 11 uses
  %.sroa.8.sroa.8.sroa.0 = alloca [16 x i8], align 8 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.o = load i8, ptr %i.n, align 8, !range !19, !noundef !12
  switch i8 %i.o, label %default.unreachable189 [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.b
  ]

default.unreachable189:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load <2 x ptr>, ptr %1, align 8
  %i.s = load ptr, ptr %1, align 8, !nonnull !12, !align !17, !noundef !12
  store ptr %i.s, ptr %i.p, align 8
  store <2 x ptr> %i.r, ptr %i.q, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #28
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #28
  unreachable

bb.f:                                             ; preds = %bb.a, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.u = invoke fastcc noundef i8 @_RNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB4_12MemoryClient14xorb_is_tagged0Ba_(ptr noundef nonnull align 8 %i.t, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBG_12MemoryClient14xorb_is_tagged0EBM_(ptr noundef nonnull align 8 %i.t) #27
          to label %.body unwind label %bb.v

bb.h:                                             ; preds = %bb.f
  %i.w = icmp eq i8 %i.u, 2
  br i1 %i.w, label %bb.i, label %bb.j

common.ret:                                       ; preds = %bb.bz, %bb.z, %bb.i
  %.sink = phi i8 [ 1, %bb.bz ], [ 4, %bb.z ], [ 3, %bb.i ]
  store i8 %.sink, ptr %i.n, align 8
  ret void

bb.i:                                             ; preds = %bb.h
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.y = load i8, ptr %i.x, align 8, !range !18, !noundef !12
  %cond.i = icmp eq i8 %i.y, 3
  br i1 %cond.i, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBG_12MemoryClient14xorb_is_tagged0EBM_.exit

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.aa = load i8, ptr %i.z, align 8, !range !18, !noundef !12
  %cond.i.i = icmp eq i8 %i.aa, 3
  br i1 %cond.i.i, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBG_12MemoryClient14xorb_is_tagged0EBM_.exit

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ac = load i8, ptr %i.ab, align 8, !range !18, !noundef !12
  %cond.i.i.i = icmp eq i8 %i.ac, 3
  br i1 %cond.i.i.i, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBG_12MemoryClient14xorb_is_tagged0EBM_.exit

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_RNvXs3_NtNtCsUrhh0HcRih_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.ad)
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val2.i.i.i.i = load ptr, ptr %i.af, align 8, !align !17, !noundef !12 ; 2 uses
end_hunk_4
begin_hunk_5_@_RNCNvXs0_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB7_12MemoryClientNtNtB9_20direct_access_client18DirectAccessClient18get_xorb_raw_bytes0Bd_:bb.a
  %i.db = icmp eq i64 %i.da, -1
  br i1 %i.db, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 8 ; 2 uses
  %i.dd = invoke noundef i64 @_RNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation11random_xorbNtB2_10RandomXorb17serialized_length(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.dc)
          to label %bb.bb unwind label %bb.ba     ; 3 uses

bb.as:                                            ; preds = %bb.aq
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 168
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dg = load i64, ptr %i.df, align 8, !range !36, !alias.scope !1463, !noundef !12
  %i.dh = trunc nuw i64 %i.dg to i1               ; 2 uses
  br i1 %i.dh, label %bb.at, label %.thread

bb.at:                                            ; preds = %bb.as
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i = load i64, ptr %i.di, align 8, !alias.scope !1464, !noundef !12
  %i.dj = getelementptr i8, ptr %1, i64 64
  %.val.i46 = load i64, ptr %i.dj, align 8, !alias.scope !1465, !noundef !12
  br label %.thread

.thread:                                          ; preds = %bb.as, %bb.at
  %..i113 = phi i64 [ %.val.i, %bb.at ], [ 0, %bb.as ] ; 2 uses
  %.sroa.3.0.i48 = phi i64 [ %.val.i46, %bb.at ], [ undef, %bb.as ]
  %i.dk = getelementptr i8, ptr %.sroa.0.1.i.i, i64 184
  %.val33 = load i64, ptr %i.dk, align 8, !noundef !12 ; 3 uses
  %.not23 = icmp ult i64 %..i113, %.val33
  br i1 %.not23, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %.thread
  %i.dl = call i64 @llvm.umin.i64(i64 %.val33, i64 %.sroa.3.0.i48)
  %..i50 = select i1 %i.dh, i64 %i.dl, i64 %.val33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvMNtCslc8SwK8fohf_5bytes5bytesNtB3_5Bytes5sliceINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %i.de, i64 noundef %..i113, i64 noundef %..i50)
          to label %bb.aw unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.az

bb.aw:                                            ; preds = %bb.au
  %.sroa.7.sroa.0.0.copyload96 = load ptr, ptr %i.b, align 8
  %.sroa.7.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.sroa.5.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.bf, %bb.aw
  %.sroa.7.sroa.0.0 = phi ptr [ %.sroa.7.sroa.0.0.copyload97, %bb.bf ], [ %.sroa.7.sroa.0.0.copyload96, %bb.aw ]
  invoke void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1k_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB3l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit unwind label %bb.bg

bb.ay:                                            ; preds = %.thread114, %.thread, %bb.bi
  %.sroa.7.sroa.0.1 = phi ptr [ undef, %.thread ], [ %.sroa.791.0.copyload, %bb.bi ], [ undef, %.thread114 ]
  %.sroa.0.1 = phi i64 [ 22, %.thread ], [ 34, %bb.bi ], [ 22, %.thread114 ]
  invoke void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1k_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB3l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit53 unwind label %bb.bg

bb.az:                                            ; preds = %bb.ap, %.loopexit.split-lp, %.loopexit, %bb.be, %bb.ba, %bb.av
  %.pn25.pn = phi { ptr, i32 } [ %i.dn, %bb.ba ], [ %i.du, %bb.be ], [ %i.dm, %bb.av ], [ %i.cz, %bb.ap ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1k_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB3l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit55 unwind label %bb.v

bb.ba:                                            ; preds = %bb.ar
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.bb:                                            ; preds = %bb.ar
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dp = load i64, ptr %i.do, align 8, !range !36, !alias.scope !1466, !noundef !12
  %i.dq = trunc nuw i64 %i.dp to i1
  br i1 %i.dq, label %bb.bc, label %.thread114

bb.bc:                                            ; preds = %bb.bb
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i58 = load i64, ptr %i.dr, align 8, !alias.scope !1467, !noundef !12
  %i.ds = getelementptr i8, ptr %1, i64 64
  %.val.i64 = load i64, ptr %i.ds, align 8, !alias.scope !1468, !noundef !12
  %i.dt = call i64 @llvm.umin.i64(i64 %i.dd, i64 %.val.i64)
  br label %.thread114

.thread114:                                       ; preds = %bb.bb, %bb.bc
  %..i67 = phi i64 [ %i.dt, %bb.bc ], [ %i.dd, %bb.bb ]
  %..i61118 = phi i64 [ %.val.i58, %bb.bc ], [ 0, %bb.bb ] ; 2 uses
  %.not24 = icmp ult i64 %..i61118, %i.dd
  br i1 %.not24, label %bb.bd, label %bb.ay

bb.bd:                                            ; preds = %.thread114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation11random_xorbNtB2_10RandomXorb20get_serialized_range(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.dc, i64 noundef %..i61118, i64 noundef %..i67)
          to label %bb.bf unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.az

bb.bf:                                            ; preds = %bb.bd
  %.sroa.7.sroa.0.0.copyload97 = load ptr, ptr %i.a, align 8
  %.sroa.7.sroa.5.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.sroa.5.0..sroa_idx99, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ax

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit55: ; preds = %bb.x, %bb.ad, %bb.ae, %bb.ai, %bb.az, %bb.bg
  %.pn28 = phi { ptr, i32 } [ %i.dv, %bb.bg ], [ %.pn25.pn, %bb.az ], [ %i.bd, %bb.ad ], [ %i.at, %bb.x ], [ %i.bp, %bb.ai ], [ %i.bd, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.body

bb.bg:                                            ; preds = %bb.ay, %bb.ax
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit55

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit: ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.t, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit53, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit
  %.sroa.7.sroa.0.2 = phi ptr [ %.sroa.0100.0.copyload, %bb.t ], [ %.sroa.7.sroa.0.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit ], [ %.sroa.7.sroa.0.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit53 ]
  %.sroa.0.2 = phi i64 [ 34, %bb.t ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit ], [ %.sroa.0.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit53 ]
  store i64 %.sroa.0.2, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.sroa.0.2, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.sroa.5, i64 24, i1 false)
  br label %common.ret

bb.bi:                                            ; preds = %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageINtNtB17_18passthrough_hasher15U64DirectHasherB13_EE3getB13_EB2l_.exit
  %.sroa.791.0.copyload = load ptr, ptr %i.cy, align 8, !alias.scope !1469
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.dw, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ay

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit53: ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.bh
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs0_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB7_12MemoryClientNtNtB9_20direct_access_client18DirectAccessClient21get_reconstruction_v10Bd_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 2 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !18, !noundef !12
  switch i8 %i.d, label %default.unreachable10 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable10:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load <2 x ptr>, ptr %i.e, align 8
  store <2 x ptr> %i.g, ptr %.sroa.76.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 8
  br label %bb.e

.body:                                            ; preds = %bb.q, %bb.o, %bb.n, %bb.f
  %.pn2 = phi { ptr, i32 } [ %i.v, %bb.n ], [ %i.i, %bb.f ], [ %i.ac, %bb.q ], [ %i.v, %bb.o ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn2

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #28
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #28
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  invoke fastcc void @_RNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB6_12MemoryClient21get_reconstruction_v10Bc_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.b, ptr noundef nonnull align 8 %i.h, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v10EBO_(ptr noundef nonnull align 8 %i.h) #27
          to label %.body unwind label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.j = load i64, ptr %i.b, align 8, !range !40, !noundef !12
  %i.k = icmp eq i64 %i.j, -3
  br i1 %i.k, label %bb.h, label %bb.i

common.ret:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v10EBO_.exit, %bb.h
  %storemerge = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v10EBO_.exit ], [ 3, %bb.h ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -3, ptr %0, align 8
  br label %common.ret

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.m = load i8, ptr %i.l, align 8, !range !19, !noundef !12
  switch i8 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v10EBO_.exit [
    i8 4, label %bb.p
    i8 3, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val.i = load ptr, ptr %i.n, align 8           ; 5 uses
  %i.o = getelementptr i8, ptr %1, i64 136
  %.val1.i = load ptr, ptr %i.o, align 8, !nonnull !12, !align !17, !noundef !12 ; 5 uses
  %i.p = load ptr, ptr %.val1.i, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.p(ptr noundef nonnull %.val.i)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !13, !invariant.load !12 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v10EBO_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !14, !invariant.load !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v10EBO_.exit

bb.n:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !13, !invariant.load !12 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !14, !invariant.load !12
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #24
  br label %.body

bb.p:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient29compute_reconstruction_ranges0EBO_(ptr noundef nonnull align 8 %i.ab)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v10EBO_.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v10EBO_.exit: ; preds = %bb.m, %bb.l, %bb.i, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  br label %common.ret

bb.r:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs0_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB7_12MemoryClientNtNtB9_20direct_access_client18DirectAccessClient21get_reconstruction_v20Bd_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 2 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !18, !noundef !12
  switch i8 %i.d, label %default.unreachable10 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable10:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load <2 x ptr>, ptr %i.e, align 8
  store <2 x ptr> %i.g, ptr %.sroa.76.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 8
  br label %bb.e

.body:                                            ; preds = %bb.q, %bb.o, %bb.n, %bb.f
  %.pn2 = phi { ptr, i32 } [ %i.v, %bb.n ], [ %i.i, %bb.f ], [ %i.ac, %bb.q ], [ %i.v, %bb.o ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn2

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #28
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #28
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  invoke fastcc void @_RNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB6_12MemoryClient21get_reconstruction_v20Bc_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.b, ptr noundef nonnull align 8 %i.h, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v20EBO_(ptr noundef nonnull align 8 %i.h) #27
          to label %.body unwind label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.j = load i64, ptr %i.b, align 8, !range !40, !noundef !12
  %i.k = icmp eq i64 %i.j, -3
  br i1 %i.k, label %bb.h, label %bb.i

common.ret:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v20EBO_.exit, %bb.h
  %storemerge = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v20EBO_.exit ], [ 3, %bb.h ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -3, ptr %0, align 8
  br label %common.ret

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.m = load i8, ptr %i.l, align 8, !range !19, !noundef !12
  switch i8 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v20EBO_.exit [
    i8 4, label %bb.p
    i8 3, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val.i = load ptr, ptr %i.n, align 8           ; 5 uses
  %i.o = getelementptr i8, ptr %1, i64 136
  %.val1.i = load ptr, ptr %i.o, align 8, !nonnull !12, !align !17, !noundef !12 ; 5 uses
  %i.p = load ptr, ptr %.val1.i, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.p(ptr noundef nonnull %.val.i)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !13, !invariant.load !12 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v20EBO_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !14, !invariant.load !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v20EBO_.exit

bb.n:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !13, !invariant.load !12 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !14, !invariant.load !12
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #24
  br label %.body

bb.p:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient29compute_reconstruction_ranges0EBO_(ptr noundef nonnull align 8 %i.ab)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v20EBO_.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v20EBO_.exit: ; preds = %bb.m, %bb.l, %bb.i, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  br label %common.ret

bb.r:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB7_12MemoryClientNtNtBb_9interface6Client11upload_xorb0Bd_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [200 x i8], align 8               ; 6 uses
  %i.j = alloca [208 x i8], align 8               ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [208 x i8], align 8               ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 9 uses
  %i.q = alloca [24 x i8], align 8                ; 9 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5246 = alloca [152 x i8], align 8        ; 4 uses
  %i.s = alloca [200 x i8], align 8               ; 10 uses
  %.sroa.8231.sroa.9 = alloca [24 x i8], align 8  ; 7 uses
  %i.t = alloca [32 x i8], align 8                ; 10 uses
  %i.u = alloca [168 x i8], align 8               ; 11 uses
  %i.v = alloca [24 x i8], align 8                ; 13 uses
  %i.w = alloca [168 x i8], align 8               ; 10 uses
  %.sroa.8206.sroa.9 = alloca [24 x i8], align 8  ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.9 = alloca [24 x i8], align 8            ; 7 uses
  %.sroa.10227 = alloca [120 x i8], align 8       ; 7 uses
  %.sroa.11 = alloca [24 x i8], align 8           ; 7 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %i.aa = alloca [16 x i8], align 8               ; 6 uses
  %i.ab = alloca [32 x i8], align 8               ; 8 uses
  %.sroa.7 = alloca [24 x i8], align 8            ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 8, !range !21, !noundef !12
  switch i8 %i.ad, label %default.unreachable320 [
    i8 0, label %bb.b
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.c
    i8 5, label %bb.d
  ]

default.unreachable320:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 417
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 420
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 419
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 418
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 423
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ae, i8 0, i64 6, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !12, !align !17, !noundef !12 ; 2 uses
  store ptr %i.al, ptr %i.aj, align 8
  store i8 0, ptr %i.af, align 4
  store i8 1, ptr %i.ai, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.am, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  store i8 0, ptr %i.ag, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ap = load <2 x ptr>, ptr %i.ao, align 8
  store <2 x ptr> %i.ap, ptr %i.an, align 8
  store i8 0, ptr %i.ah, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, ptr noundef nonnull align 8 dereferenceable(40) %i.ar, i64 40, i1 false)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !1555
  %i.as = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 8, 689) 128, i64 noundef range(i64 4, 9) 8) #24, !noalias !1555 ; 4 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %.noexc.i, label %bb.f, !prof !37

.noexc.i:                                         ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #29
          to label %.noexc98 unwind label %bb.e

.noexc98:                                         ; preds = %.noexc.i
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  br label %bb.cy

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  br label %bb.dv

bb.e:                                             ; preds = %.noexc.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.b
  store ptr %i.al, ptr %i.as, align 8
  %.sroa.4285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 120
  store i8 0, ptr %.sroa.4285.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 424
  store ptr %i.as, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 432
  store ptr @125, ptr %i.aw, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #28
  unreachable

end_hunk_5
begin_hunk_6_@_RNCNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB7_12MemoryClientNtNtBb_9interface6Client18get_file_term_data0Bd_:bb.a
bb.fn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9interface11URLProviderEL_EEB1h_.exit212
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore25AdjustableSemaphorePermitECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ou)
          to label %bb.fq unwind label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.ov = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1956)
  call void @llvm.experimental.noalias.scope.decl(metadata !1957)
  %i.ox = load ptr, ptr %i.ow, align 8, !alias.scope !1958, !nonnull !12, !noundef !12
  %i.oy = atomicrmw sub ptr %i.ox, i64 1 release, align 8, !noalias !1959
  %i.oz = icmp eq i64 %i.oy, 1
  br i1 %i.oz, label %bb.fp, label %.body215

bb.fp:                                            ; preds = %bb.fo
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ow) #26
          to label %.body215 unwind label %bb.fs

bb.fq:                                            ; preds = %bb.fn
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1960)
  call void @llvm.experimental.noalias.scope.decl(metadata !1961)
  %i.pb = load ptr, ptr %i.pa, align 8, !alias.scope !1962, !nonnull !12, !noundef !12
  %i.pc = atomicrmw sub ptr %i.pb, i64 1 release, align 8, !noalias !1963
  %i.pd = icmp eq i64 %i.pc, 1
  br i1 %i.pd, label %bb.fr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller16ConnectionPermitEBJ_.exit217

bb.fr:                                            ; preds = %bb.fq
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.pa) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller16ConnectionPermitEBJ_.exit217 unwind label %bb.ft

bb.fs:                                            ; preds = %bb.fp
  %i.pe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

.body215:                                         ; preds = %bb.ft, %bb.fp, %bb.fo, %bb.fy, %.body210
  %.pn79 = phi { ptr, i32 } [ %i.oi, %.body210 ], [ %i.oi, %bb.fy ], [ %i.pi, %bb.ft ], [ %i.ov, %bb.fp ], [ %i.ov, %bb.fo ] ; 4 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 273
  %i.pg = load i8, ptr %i.pf, align 1, !range !29, !noundef !12
  %i.ph = trunc nuw i8 %i.pg to i1
  br i1 %i.ph, label %bb.fz, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsiAynQAjgDuT_10xet_client.exit221

bb.ft:                                            ; preds = %bb.fr
  %i.pi = landingpad { ptr, i32 }
          cleanup
  br label %.body215

bb.fu:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller16ConnectionPermitEBJ_.exit217
  %i.pj = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1964)
  %i.pk = load ptr, ptr %i.pj, align 8, !alias.scope !1964, !noundef !12 ; 2 uses
  %i.pl = icmp eq ptr %i.pk, null
  br i1 %i.pl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9interface11URLProviderEL_EEB1h_.exit, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.pm = atomicrmw sub ptr %i.pk, i64 1 release, align 8, !noalias !1965
  %i.pn = icmp eq i64 %i.pm, 1
  br i1 %i.pn, label %bb.fw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9interface11URLProviderEL_EEB1h_.exit

bb.fw:                                            ; preds = %bb.fv
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtNtCskKLDkoKarTP_4core3ops8function2FnTyyyEEp6OutputuNtNtBO_6marker4SendNtB1E_4SyncEL_E9drop_slowCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.pj) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9interface11URLProviderEL_EEB1h_.exit unwind label %bb.fx

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsiAynQAjgDuT_10xet_client.exit221: ; preds = %bb.gh, %bb.gg, %bb.gi, %bb.ga, %bb.fz, %bb.gb, %bb.ge, %bb.fx, %.body215
  %.pn81 = phi { ptr, i32 } [ %i.po, %bb.fx ], [ %.pn77, %bb.ge ], [ %.pn79, %.body215 ], [ %.pn79, %bb.ga ], [ %.pn79, %bb.gb ], [ %.pn79, %bb.fz ], [ %.pn77, %bb.gi ], [ %.pn77, %bb.gg ], [ %.pn77, %bb.gh ]
  store i8 2, ptr %i.s, align 8
  resume { ptr, i32 } %.pn81

bb.fx:                                            ; preds = %bb.fw
  %i.po = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsiAynQAjgDuT_10xet_client.exit221

bb.fy:                                            ; preds = %.body210
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller16ConnectionPermitEBJ_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.pp) #27
          to label %.body215 unwind label %bb.t

bb.fz:                                            ; preds = %.body215
  %i.pq = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1966)
  %i.pr = load ptr, ptr %i.pq, align 8, !alias.scope !1966, !noundef !12 ; 2 uses
  %i.ps = icmp eq ptr %i.pr, null
  br i1 %i.ps, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsiAynQAjgDuT_10xet_client.exit221, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.pt = atomicrmw sub ptr %i.pr, i64 1 release, align 8, !noalias !1967
  %i.pu = icmp eq i64 %i.pt, 1
  br i1 %i.pu, label %bb.gb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsiAynQAjgDuT_10xet_client.exit221

bb.gb:                                            ; preds = %bb.ga
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtNtCskKLDkoKarTP_4core3ops8function2FnTyyyEEp6OutputuNtNtBO_6marker4SendNtB1E_4SyncEL_E9drop_slowCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.pq) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsiAynQAjgDuT_10xet_client.exit221 unwind label %bb.t

bb.gc:                                            ; preds = %bb.gd, %.body164
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 274
  %i.pw = load i8, ptr %i.pv, align 2, !range !29, !noundef !12
  %i.px = trunc nuw i8 %i.pw to i1
  br i1 %i.px, label %bb.gf, label %bb.ge

bb.gd:                                            ; preds = %.body164
  %i.py = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val97 = load ptr, ptr %i.py, align 8
  %i.pz = getelementptr i8, ptr %1, i64 32
  %.val98 = load ptr, ptr %i.pz, align 8, !nonnull !12, !align !17, !noundef !12
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9interface11URLProviderEL_EEB1h_(ptr %.val97, ptr nonnull %.val98) #27
          to label %bb.gc unwind label %bb.t

bb.ge:                                            ; preds = %bb.gf, %bb.gc
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 273
  %i.qb = load i8, ptr %i.qa, align 1, !range !29, !noundef !12
  %i.qc = trunc nuw i8 %i.qb to i1
  br i1 %i.qc, label %bb.gg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsiAynQAjgDuT_10xet_client.exit221

bb.gf:                                            ; preds = %bb.gc
  %i.qd = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller16ConnectionPermitEBJ_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.qd) #27
          to label %bb.ge unwind label %bb.t

bb.gg:                                            ; preds = %bb.ge
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1968)
  %i.qf = load ptr, ptr %i.qe, align 8, !alias.scope !1968, !noundef !12 ; 2 uses
  %i.qg = icmp eq ptr %i.qf, null
  br i1 %i.qg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsiAynQAjgDuT_10xet_client.exit221, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.qh = atomicrmw sub ptr %i.qf, i64 1 release, align 8, !noalias !1969
  %i.qi = icmp eq i64 %i.qh, 1
  br i1 %i.qi, label %bb.gi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsiAynQAjgDuT_10xet_client.exit221

bb.gi:                                            ; preds = %bb.gh
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtNtCskKLDkoKarTP_4core3ops8function2FnTyyyEEp6OutputuNtNtBO_6marker4SendNtB1E_4SyncEL_E9drop_slowCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.qe) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsiAynQAjgDuT_10xet_client.exit221 unwind label %bb.t
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB7_12MemoryClientNtNtBb_9interface6Client18get_reconstruction0Bd_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 2 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !18, !noundef !12
  switch i8 %i.d, label %default.unreachable10 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable10:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load <2 x ptr>, ptr %i.e, align 8
  store <2 x ptr> %i.g, ptr %.sroa.76.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 8
  br label %bb.e

.body:                                            ; preds = %bb.q, %bb.o, %bb.n, %bb.f
  %.pn2 = phi { ptr, i32 } [ %i.v, %bb.n ], [ %i.i, %bb.f ], [ %i.ac, %bb.q ], [ %i.v, %bb.o ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn2

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #28
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #28
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  invoke fastcc void @_RNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB6_12MemoryClient21get_reconstruction_v20Bc_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.b, ptr noundef nonnull align 8 %i.h, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v20EBO_(ptr noundef nonnull align 8 %i.h) #27
          to label %.body unwind label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.j = load i64, ptr %i.b, align 8, !range !40, !noundef !12
  %i.k = icmp eq i64 %i.j, -3
  br i1 %i.k, label %bb.h, label %bb.i

common.ret:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v20EBO_.exit, %bb.h
  %storemerge = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v20EBO_.exit ], [ 3, %bb.h ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -3, ptr %0, align 8
  br label %common.ret

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.m = load i8, ptr %i.l, align 8, !range !19, !noundef !12
  switch i8 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v20EBO_.exit [
    i8 4, label %bb.p
    i8 3, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val.i = load ptr, ptr %i.n, align 8           ; 5 uses
  %i.o = getelementptr i8, ptr %1, i64 136
  %.val1.i = load ptr, ptr %i.o, align 8, !nonnull !12, !align !17, !noundef !12 ; 5 uses
  %i.p = load ptr, ptr %.val1.i, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.p(ptr noundef nonnull %.val.i)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !13, !invariant.load !12 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v20EBO_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !14, !invariant.load !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v20EBO_.exit

bb.n:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !13, !invariant.load !12 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !14, !invariant.load !12
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #24
  br label %.body

bb.p:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient29compute_reconstruction_ranges0EBO_(ptr noundef nonnull align 8 %i.ab)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v20EBO_.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v20EBO_.exit: ; preds = %bb.m, %bb.l, %bb.i, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  br label %common.ret

bb.r:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB7_12MemoryClientNtNtBb_9interface6Client21acquire_upload_permit0Bd_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !19, !noundef !12
  switch i8 %i.d, label %default.unreachable21 [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.s
  ]

default.unreachable21:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %1, align 8, !nonnull !12, !align !17, !noundef !12 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !1972
  %i.g = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 8, 689) 128, i64 noundef range(i64 4, 9) 8) #24, !noalias !1972 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.noexc.i, label %bb.d, !prof !37

.noexc.i:                                         ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #29
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.c:                                             ; preds = %.noexc.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.b
  store ptr %i.f, ptr %i.g, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  store i8 0, ptr %.sroa.416.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr @125, ptr %i.k, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #28
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #28
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.m = invoke noundef zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputuNtNtB8_6marker4SendEL_EEB1v_4pollCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  %.val11 = load ptr, ptr %i.l, align 8
  %i.o = getelementptr i8, ptr %1, i64 32
  %.val12 = load ptr, ptr %i.o, align 8, !nonnull !12, !align !17, !noundef !12
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsiAynQAjgDuT_10xet_client(ptr %.val11, ptr nonnull %.val12) #27
          to label %.body unwind label %bb.r

bb.i:                                             ; preds = %bb.g
  br i1 %i.m, label %bb.j, label %bb.k

common.ret:                                       ; preds = %bb.y, %bb.v, %bb.j
  %.sink = phi i8 [ 1, %bb.y ], [ 4, %bb.v ], [ 3, %bb.j ]
  store i8 %.sink, ptr %i.c, align 8
  ret void

bb.j:                                             ; preds = %bb.i
  store i64 2, ptr %0, align 8
  br label %common.ret

bb.k:                                             ; preds = %bb.i
  %.val = load ptr, ptr %i.l, align 8             ; 5 uses
  %i.p = getelementptr i8, ptr %1, i64 32
  %.val10 = load ptr, ptr %i.p, align 8, !nonnull !12, !align !17, !noundef !12 ; 5 uses
  %i.q = load ptr, ptr %.val10, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.q(ptr noundef nonnull %.val)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !13, !invariant.load !12 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !14, !invariant.load !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #24
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !13, !invariant.load !12 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !14, !invariant.load !12
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #24
  br label %.body

bb.q:                                             ; preds = %bb.n, %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !12, !align !17, !noundef !12
  store ptr %i.ad, ptr %i.l, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.h, %bb.t
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

.body:                                            ; preds = %bb.t, %bb.x, %bb.p, %bb.o, %bb.h, %bb.c
  %.pn7.pn = phi { ptr, i32 } [ %i.w, %bb.p ], [ %i.i, %bb.c ], [ %i.n, %bb.h ], [ %i.w, %bb.o ], [ %i.aj, %bb.x ], [ %i.ag, %bb.t ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn7.pn

bb.s:                                             ; preds = %bb.a, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  invoke fastcc void @_RNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controllerNtB6_29AdaptiveConcurrencyController25acquire_connection_permit0Bc_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull align 8 %i.af, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controllerNtBI_29AdaptiveConcurrencyController25acquire_connection_permit0EBO_(ptr noundef nonnull align 8 %i.af) #27
          to label %.body unwind label %bb.r

bb.u:                                             ; preds = %bb.s
  %i.ah = load i64, ptr %i.b, align 8, !range !41, !noundef !12
  %i.ai = icmp eq i64 %i.ah, 2
  br i1 %i.ai, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 2, ptr %0, align 8
  br label %common.ret

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controllerNtBI_29AdaptiveConcurrencyController25acquire_connection_permit0EBO_(ptr noundef nonnull align 8 %i.af)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  br label %common.ret
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB7_12MemoryClientNtNtBb_9interface6Client21get_file_chunk_hashes0Bd_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 10 uses
  %i.h = alloca [168 x i8], align 8               ; 5 uses
  %i.i = alloca [168 x i8], align 8               ; 14 uses
  %i.j = alloca [40 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 13 uses
  %i.l = alloca [16 x i8], align 8                ; 11 uses
  %i.m = alloca [16 x i8], align 8                ; 10 uses
  %i.n = alloca [40 x i8], align 8                ; 8 uses
  %i.o = alloca [152 x i8], align 8               ; 8 uses
  %.sroa.7161 = alloca [40 x i8], align 8         ; 8 uses
  %.sroa.10162 = alloca [104 x i8], align 8       ; 6 uses
  %.sroa.8157 = alloca [40 x i8], align 8         ; 8 uses
  %i.p = alloca [16 x i8], align 8                ; 11 uses
  %i.q = alloca [88 x i8], align 8                ; 16 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 3 uses
  %i.s = load i8, ptr %i.r, align 8, !range !24, !noundef !12
  switch i8 %i.s, label %default.unreachable330 [
    i8 0, label %bb.b
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.c
    i8 5, label %bb.d
    i8 6, label %bb.e
  ]

default.unreachable330:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 226
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 225
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !12, !align !17, !noundef !12 ; 2 uses
  store ptr %i.x, ptr %i.v, align 8
  store i8 0, ptr %i.u, align 1
  store i8 1, ptr %i.t, align 2
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !2028
  %i.z = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 8, 689) 128, i64 noundef range(i64 4, 9) 8) #24, !noalias !2028 ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.noexc.i, label %bb.g, !prof !37

.noexc.i:                                         ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #29
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  br label %bb.v

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  br label %bb.aw

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  br label %bb.bo

bb.f:                                             ; preds = %.noexc.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.b
  store ptr %i.x, ptr %i.z, align 8
  %.sroa.4227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 120
  store i8 0, ptr %.sroa.4227.0..sroa_idx, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 232
  store ptr %i.z, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 240
  store ptr @125, ptr %i.ad, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #28
  unreachable

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #28
  unreachable

bb.j:                                             ; preds = %bb.g, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 4 uses
  %i.af = invoke noundef zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputuNtNtB8_6marker4SendEL_EEB1v_4pollCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %.val79 = load ptr, ptr %i.ae, align 8
  %i.ah = getelementptr i8, ptr %1, i64 240
  %.val80 = load ptr, ptr %i.ah, align 8, !nonnull !12, !align !17, !noundef !12
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsiAynQAjgDuT_10xet_client(ptr %.val79, ptr nonnull %.val80) #27
          to label %.body unwind label %bb.u

bb.l:                                             ; preds = %bb.j
  br i1 %i.af, label %bb.m, label %bb.n

common.ret:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB1b_2__FEEEB1d_.exit152, %bb.br, %bb.az, %bb.y, %bb.m
  %.sink = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB1b_2__FEEEB1d_.exit152 ], [ 6, %bb.br ], [ 5, %bb.az ], [ 4, %bb.y ], [ 3, %bb.m ]
  store i8 %.sink, ptr %i.r, align 8
  ret void

bb.m:                                             ; preds = %bb.l
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.n:                                             ; preds = %bb.l
  %.val77 = load ptr, ptr %i.ae, align 8          ; 5 uses
  %i.ai = getelementptr i8, ptr %1, i64 240
  %.val78 = load ptr, ptr %i.ai, align 8, !nonnull !12, !align !17, !noundef !12 ; 5 uses
  %i.aj = load ptr, ptr %.val78, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val77) ]
  invoke void %i.aj(ptr noundef nonnull %.val77)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %.val78, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !13, !invariant.load !12 ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %.val78, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !range !14, !invariant.load !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val77) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val77, i64 noundef range(i64 1, 0) %i.al, i64 noundef range(i64 1, 536870913) %i.ao) #24
  br label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val78, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !13, !invariant.load !12 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %.body, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.at = getelementptr inbounds nuw i8, ptr %.val78, i64 16
  %i.au = load i64, ptr %i.at, align 8, !range !14, !invariant.load !12
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val77, i64 noundef range(i64 1, 0) %i.ar, i64 noundef range(i64 1, 536870913) %i.au) #24
  br label %.body

bb.t:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !12, !align !17, !noundef !12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  store ptr %i.ax, ptr %i.ae, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 320
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.v

bb.u:                                             ; preds = %bb.ds, %.body140, %bb.bn, %bb.bk, %bb.aj, %bb.k, %bb.eb, %bb.ea, %bb.dz, %bb.bp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEECsiAynQAjgDuT_10xet_client.exit, %bb.ax, %bb.w
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

.body:                                            ; preds = %bb.s, %bb.r, %bb.k, %bb.f, %bb.ch, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEECsiAynQAjgDuT_10xet_client.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit92
  %.pn66.pn = phi { ptr, i32 } [ %.pn66, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit92 ], [ %i.ft, %bb.ch ], [ %.pn62, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEECsiAynQAjgDuT_10xet_client.exit ], [ %i.ab, %bb.f ], [ %i.ag, %bb.k ], [ %i.ap, %bb.r ], [ %i.ap, %bb.s ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 226
  %i.ba = load i8, ptr %i.az, align 2, !range !29, !noundef !12
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.ea, label %.body89

bb.v:                                             ; preds = %bb.c, %bb.t
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 3 uses
  %i.bd = invoke fastcc { ptr, ptr } @_RNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtB7_6RwLockNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardE4read0CsiAynQAjgDuT_10xet_client(ptr noundef nonnull align 8 %i.bc, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.x unwind label %bb.w       ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardE4read0ECsiAynQAjgDuT_10xet_client(ptr noundef nonnull align 8 %i.bc) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit92 unwind label %bb.u

bb.x:                                             ; preds = %bb.v
  %i.bf = extractvalue { ptr, ptr } %i.bd, 0      ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %common.ret

bb.z:                                             ; preds = %bb.x
  %i.bh = extractvalue { ptr, ptr } %i.bd, 1
  store ptr %i.bf, ptr %i.p, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.bh, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 8, !range !18, !noundef !12
  %cond.i = icmp eq i8 %i.bk, 3
  br i1 %cond.i, label %bb.aa, label %bb.ai

bb.aa:                                            ; preds = %bb.z
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.bm = load i8, ptr %i.bl, align 8, !range !18, !noundef !12
  %cond.i.i = icmp eq i8 %i.bm, 3
  br i1 %cond.i.i, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 248
  invoke void @_RNvXs3_NtNtCsUrhh0HcRih_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.bn)
          to label %bb.ae unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.val2.i.i.i = load ptr, ptr %i.bp, align 8, !align !17, !noundef !12 ; 2 uses
  %i.bq = icmp eq ptr %.val2.i.i.i, null
  br i1 %i.bq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit92, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.br = getelementptr i8, ptr %1, i64 264
  %.val3.i.i.i = load ptr, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !12, !noundef !12
  invoke void %i.bt(ptr noundef %.val3.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit92 unwind label %bb.ag, !inline_history !1

bb.ae:                                            ; preds = %bb.ab
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.val.i.i.i = load ptr, ptr %i.bu, align 8, !align !17, !noundef !12 ; 2 uses
  %i.bv = icmp eq ptr %.val.i.i.i, null
  br i1 %i.bv, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bw = getelementptr i8, ptr %1, i64 264
  %.val1.i.i.i = load ptr, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !12, !noundef !12
  invoke void %i.by(ptr noundef %.val1.i.i.i)
          to label %bb.ai unwind label %bb.ah, !inline_history !33

bb.ag:                                            ; preds = %bb.ad
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit92

bb.ai:                                            ; preds = %bb.af, %bb.z, %bb.aa, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8157)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7161)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10162)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %.val74 = load ptr, ptr %i.bi, align 8, !noundef !12
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !12, !align !17, !noundef !12
  invoke void @_RNvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memoryNtB2_16MDBInMemoryShard28get_file_reconstruction_info(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %.val74, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cc)
          to label %bb.al unwind label %bb.ak

bb.aj:                                            ; preds = %bb.an, %bb.ak
  %.pn24 = phi { ptr, i32 } [ %i.ch, %bb.an ], [ %i.cd, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7161)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10162)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8157)
  invoke void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit92 unwind label %bb.u

bb.ak:                                            ; preds = %bb.ai
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.al:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ce = load ptr, ptr %i.cb, align 8, !nonnull !12, !align !17, !noundef !12
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %i.ce, i64 32, i1 false)
  store i64 25, ptr %i.n, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2030)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2031)
  %i.cg = load i64, ptr %i.o, align 8, !range !41, !alias.scope !2030, !noalias !2032, !noundef !12 ; 2 uses
  %.not.i = icmp eq i64 %i.cg, 2
  br i1 %.not.i, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.sroa.7161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7161, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7161.0..sroa_idx, i64 40, i1 false), !alias.scope !2033, !noalias !2031
  %.sroa.10162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.10162, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.10162.0..sroa_idx, i64 104, i1 false), !alias.scope !2033, !noalias !2031
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.n)
          to label %bb.ao unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.aj

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8157, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7161, i64 40, i1 false), !alias.scope !2034
  %.sroa.5165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5165.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.10162, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7161)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10162)
  %.sroa.4164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4164.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8157, i64 40, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %i.cg, ptr %i.ci, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8157)
  invoke void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %bb.aq unwind label %bb.ap

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit92: ; preds = %bb.w, %bb.ac, %bb.ad, %bb.ah, %bb.aj, %bb.ap
  %.pn66 = phi { ptr, i32 } [ %i.cj, %bb.ap ], [ %.pn24, %bb.aj ], [ %i.bo, %bb.ac ], [ %i.be, %bb.w ], [ %i.ca, %bb.ah ], [ %i.bo, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.body

bb.ap:                                            ; preds = %bb.ar, %bb.ao
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit92

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !12, !align !17, !noundef !12
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 376
  store ptr %i.cm, ptr %i.bc, align 8
  store i8 0, ptr %i.bj, align 8
  br label %bb.aw

.body101:                                         ; preds = %bb.bk, %bb.bi, %bb.be, %bb.bd, %bb.ax
  %.pn32.pn = phi { ptr, i32 } [ %i.dd, %bb.bd ], [ %i.dq, %bb.bk ], [ %i.ct, %bb.ax ], [ %i.dp, %bb.bi ], [ %i.dd, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEECsiAynQAjgDuT_10xet_client.exit

bb.ar:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7161, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false), !alias.scope !2032, !noalias !2030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8157, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7161, i64 40, i1 false), !alias.scope !2034
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7161)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10162)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cn, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8157, i64 40, i1 false)
  store i64 -1, ptr %i.q, align 8, !alias.scope !2035, !noalias !2036
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8157)
  invoke void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit87 unwind label %bb.ap

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit87: ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.as

bb.as:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEECsiAynQAjgDuT_10xet_client.exit147, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit87
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBI_2__FEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBP_2__FEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %.body89 unwind label %bb.av

bb.au:                                            ; preds = %bb.as
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBP_2__FEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB1b_2__FEEEB1d_.exit unwind label %bb.dt

bb.av:                                            ; preds = %bb.at
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.aw:                                            ; preds = %bb.d, %bb.aq
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 3 uses
  %i.cs = invoke fastcc { ptr, ptr } @_RNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtB7_6RwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEE4read0CsiAynQAjgDuT_10xet_client(ptr noundef nonnull align 8 %i.cr, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.ay unwind label %bb.ax     ; 2 uses

bb.ax:                                            ; preds = %bb.aw
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEE4read0ECsiAynQAjgDuT_10xet_client(ptr noundef nonnull align 8 %i.cr) #27
          to label %.body101 unwind label %bb.u

bb.ay:                                            ; preds = %bb.aw
  %i.cu = extractvalue { ptr, ptr } %i.cs, 0      ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %common.ret

bb.ba:                                            ; preds = %bb.ay
  %i.cw = extractvalue { ptr, ptr } %i.cs, 1
  store ptr %i.cu, ptr %i.m, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.cw, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.cz = load i8, ptr %i.cy, align 8, !range !18, !noundef !12
  %cond.i93 = icmp eq i8 %i.cz, 3
  br i1 %cond.i93, label %bb.bb, label %bb.bj

bb.bb:                                            ; preds = %bb.ba
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.db = load i8, ptr %i.da, align 8, !range !18, !noundef !12
  %cond.i.i94 = icmp eq i8 %i.db, 3
  br i1 %cond.i.i94, label %bb.bc, label %bb.bj

bb.bc:                                            ; preds = %bb.bb
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 248
  invoke void @_RNvXs3_NtNtCsUrhh0HcRih_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.dc)
          to label %bb.bf unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.val2.i.i.i95 = load ptr, ptr %i.de, align 8, !align !17, !noundef !12 ; 2 uses
  %i.df = icmp eq ptr %.val2.i.i.i95, null
  br i1 %i.df, label %.body101, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dg = getelementptr i8, ptr %1, i64 264
  %.val3.i.i.i96 = load ptr, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.val2.i.i.i95, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !nonnull !12, !noundef !12
  invoke void %i.di(ptr noundef %.val3.i.i.i96)
          to label %.body101 unwind label %bb.bh, !inline_history !1

bb.bf:                                            ; preds = %bb.bc
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.val.i.i.i98 = load ptr, ptr %i.dj, align 8, !align !17, !noundef !12 ; 2 uses
  %i.dk = icmp eq ptr %.val.i.i.i98, null
  br i1 %i.dk, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dl = getelementptr i8, ptr %1, i64 264
  %.val1.i.i.i99 = load ptr, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.val.i.i.i98, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !nonnull !12, !noundef !12
  invoke void %i.dn(ptr noundef %.val1.i.i.i99)
          to label %bb.bj unwind label %bb.bi, !inline_history !22

bb.bh:                                            ; preds = %bb.be
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body101

bb.bj:                                            ; preds = %bb.bg, %bb.ba, %bb.bb, %bb.bf
  %.val73 = load ptr, ptr %i.cx, align 8, !noundef !12
  invoke void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.cr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val73)
          to label %_RNvXs3_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB5_7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiAynQAjgDuT_10xet_client.exit unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %.body101 unwind label %bb.u

_RNvXs3_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB5_7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.bj
  invoke void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %bb.bm unwind label %bb.bl

bb.bl:                                            ; preds = %_RNvXs3_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB5_7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiAynQAjgDuT_10xet_client.exit
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.bn
end_hunk_6
begin_hunk_7_@_RNCNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB7_12MemoryClientNtNtBb_9interface6Client21get_file_chunk_hashes0Bd_:bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBI_2__FEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.dw unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ip = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBP_2__FEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %.body150 unwind label %bb.dx

bb.dw:                                            ; preds = %bb.du
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBP_2__FEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB1b_2__FEEEB1d_.exit152 unwind label %bb.dy

bb.dx:                                            ; preds = %bb.dv
  %i.iq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

.body150:                                         ; preds = %bb.dy, %bb.dv, %bb.eb, %.body89
  %.pn71 = phi { ptr, i32 } [ %.pn69, %.body89 ], [ %.pn69, %bb.eb ], [ %i.ir, %bb.dy ], [ %i.ip, %bb.dv ]
  store i8 2, ptr %i.r, align 8
  resume { ptr, i32 } %.pn71

bb.dy:                                            ; preds = %bb.dw
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %.body150

bb.dz:                                            ; preds = %bb.cs, %.loopexit.split-lp, %.loopexit, %bb.ck, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format10XorbObjectEECsiAynQAjgDuT_10xet_client.exit143
  %.pn53.pn.pn.ph = phi { ptr, i32 } [ %.pn51, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format10XorbObjectEECsiAynQAjgDuT_10xet_client.exit143 ], [ %i.fv, %bb.ck ], [ %i.hc, %bb.cs ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #27
          to label %.body140 unwind label %bb.u

bb.ea:                                            ; preds = %.body
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB1b_2__FEEEB1d_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.is) #27
          to label %.body89 unwind label %bb.u

bb.eb:                                            ; preds = %.body89
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB1b_2__FEEEB1d_(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #27
          to label %.body150 unwind label %bb.u
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB7_12MemoryClientNtNtBb_9interface6Client23acquire_download_permit0Bd_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !19, !noundef !12
  switch i8 %i.d, label %default.unreachable21 [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.s
  ]

default.unreachable21:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %1, align 8, !nonnull !12, !align !17, !noundef !12 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !2065
  %i.g = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 8, 689) 128, i64 noundef range(i64 4, 9) 8) #24, !noalias !2065 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.noexc.i, label %bb.d, !prof !37

.noexc.i:                                         ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #29
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.c:                                             ; preds = %.noexc.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.b
  store ptr %i.f, ptr %i.g, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  store i8 0, ptr %.sroa.416.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr @125, ptr %i.k, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #28
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #28
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.m = invoke noundef zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputuNtNtB8_6marker4SendEL_EEB1v_4pollCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  %.val11 = load ptr, ptr %i.l, align 8
  %i.o = getelementptr i8, ptr %1, i64 32
  %.val12 = load ptr, ptr %i.o, align 8, !nonnull !12, !align !17, !noundef !12
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsiAynQAjgDuT_10xet_client(ptr %.val11, ptr nonnull %.val12) #27
          to label %.body unwind label %bb.r

bb.i:                                             ; preds = %bb.g
  br i1 %i.m, label %bb.j, label %bb.k

common.ret:                                       ; preds = %bb.y, %bb.v, %bb.j
  %.sink = phi i8 [ 1, %bb.y ], [ 4, %bb.v ], [ 3, %bb.j ]
  store i8 %.sink, ptr %i.c, align 8
  ret void

bb.j:                                             ; preds = %bb.i
  store i64 2, ptr %0, align 8
  br label %common.ret

bb.k:                                             ; preds = %bb.i
  %.val = load ptr, ptr %i.l, align 8             ; 5 uses
  %i.p = getelementptr i8, ptr %1, i64 32
  %.val10 = load ptr, ptr %i.p, align 8, !nonnull !12, !align !17, !noundef !12 ; 5 uses
  %i.q = load ptr, ptr %.val10, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.q(ptr noundef nonnull %.val)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !13, !invariant.load !12 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !14, !invariant.load !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #24
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !13, !invariant.load !12 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !14, !invariant.load !12
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #24
  br label %.body

bb.q:                                             ; preds = %bb.n, %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !12, !align !17, !noundef !12
  store ptr %i.ad, ptr %i.l, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.h, %bb.t
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

.body:                                            ; preds = %bb.t, %bb.x, %bb.p, %bb.o, %bb.h, %bb.c
  %.pn7.pn = phi { ptr, i32 } [ %i.w, %bb.p ], [ %i.i, %bb.c ], [ %i.n, %bb.h ], [ %i.w, %bb.o ], [ %i.aj, %bb.x ], [ %i.ag, %bb.t ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn7.pn

bb.s:                                             ; preds = %bb.a, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  invoke fastcc void @_RNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controllerNtB6_29AdaptiveConcurrencyController25acquire_connection_permit0Bc_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull align 8 %i.af, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controllerNtBI_29AdaptiveConcurrencyController25acquire_connection_permit0EBO_(ptr noundef nonnull align 8 %i.af) #27
          to label %.body unwind label %bb.r

bb.u:                                             ; preds = %bb.s
  %i.ah = load i64, ptr %i.b, align 8, !range !41, !noundef !12
  %i.ai = icmp eq i64 %i.ah, 2
  br i1 %i.ai, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 2, ptr %0, align 8
  br label %common.ret

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controllerNtBI_29AdaptiveConcurrencyController25acquire_connection_permit0EBO_(ptr noundef nonnull align 8 %i.af)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  br label %common.ret
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB7_12MemoryClientNtNtBb_9interface6Client24batch_get_reconstruction0Bd_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [56 x i8], align 8                ; 7 uses
  %i.h = alloca [64 x i8], align 8                ; 7 uses
  %i.i = alloca [64 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.380 = alloca [72 x i8], align 8          ; 4 uses
  %i.n = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.369 = alloca [40 x i8], align 8          ; 3 uses
  %.sroa.4 = alloca [48 x i8], align 8            ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.p = load i8, ptr %i.o, align 8, !range !19, !noundef !12
  switch i8 %i.p, label %default.unreachable135 [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.v
  ]

default.unreachable135:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load ptr, ptr %1, align 8, !nonnull !12, !align !17, !noundef !12 ; 2 uses
  store ptr %i.r, ptr %i.q, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !2091
  %i.s = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 8, 689) 128, i64 noundef range(i64 4, 9) 8) #24, !noalias !2091 ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.noexc.i, label %bb.d, !prof !37

.noexc.i:                                         ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #29
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.c:                                             ; preds = %.noexc.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.b
  store ptr %i.r, ptr %i.s, align 8
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  store i8 0, ptr %.sroa.495.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.s, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr @125, ptr %i.w, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #28
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #28
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.y = invoke noundef zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputuNtNtB8_6marker4SendEL_EEB1v_4pollCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  %.val36 = load ptr, ptr %i.x, align 8
  %i.aa = getelementptr i8, ptr %1, i64 48
  %.val37 = load ptr, ptr %i.aa, align 8, !nonnull !12, !align !17, !noundef !12
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsiAynQAjgDuT_10xet_client(ptr %.val36, ptr nonnull %.val37) #27
          to label %.body unwind label %bb.u

bb.i:                                             ; preds = %bb.g
  br i1 %i.y, label %common.ret, label %bb.j

common.ret:                                       ; preds = %bb.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB1z_22XorbReconstructionTermEEEB1B_.exit67, %bb.y
  %.sink136 = phi i64 [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB1z_22XorbReconstructionTermEEEB1B_.exit67 ], [ 1, %bb.y ], [ 1, %bb.i ]
  %.sink = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB1z_22XorbReconstructionTermEEEB1B_.exit67 ], [ 4, %bb.y ], [ 3, %bb.i ]
  store i64 %.sink136, ptr %0, align 8
  store i8 %.sink, ptr %i.o, align 8
  ret void

bb.j:                                             ; preds = %bb.i
  %.val = load ptr, ptr %i.x, align 8             ; 5 uses
  %i.ab = getelementptr i8, ptr %1, i64 48
  %.val35 = load ptr, ptr %i.ab, align 8, !nonnull !12, !align !17, !noundef !12 ; 5 uses
  %i.ac = load ptr, ptr %.val35, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.ac(ptr noundef nonnull %.val)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %.val35, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !13, !invariant.load !12 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsiAynQAjgDuT_10xet_client.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %.val35, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !14, !invariant.load !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsiAynQAjgDuT_10xet_client.exit

bb.n:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val35, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !13, !invariant.load !12 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %.val35, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !14, !invariant.load !12
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.ak, i64 noundef range(i64 1, 536870913) %i.an) #24
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.m, %bb.l
  %i.ao = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @92)
          to label %bb.q unwind label %bb.p       ; 2 uses

.body:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB1z_27XorbReconstructionFetchInfoEEEB1B_.exit, %bb.o, %bb.n, %bb.h, %bb.c, %bb.p
  %.pn33 = phi { ptr, i32 } [ %i.ap, %bb.p ], [ %i.ai, %bb.n ], [ %i.u, %bb.c ], [ %i.z, %bb.h ], [ %.pn31, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB1z_27XorbReconstructionFetchInfoEEEB1B_.exit ], [ %i.ai, %bb.o ]
  store i8 2, ptr %i.o, align 8
  resume { ptr, i32 } %.pn33

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB1z_27XorbReconstructionFetchInfoEEEB1B_.exit65, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsiAynQAjgDuT_10xet_client.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsiAynQAjgDuT_10xet_client.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.ar = extractvalue { i64, i64 } %i.ao, 0
  %i.as = extractvalue { i64, i64 } %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) @94, i64 32, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 552
  store i64 %i.ar, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2092
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 560
  store i64 %i.as, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2092
  %i.at = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @92)
          to label %bb.s unwind label %bb.r       ; 2 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB1z_27XorbReconstructionFetchInfoEEEB1B_.exit: ; preds = %.body44, %bb.r
  %.pn31 = phi { ptr, i32 } [ %i.av, %bb.r ], [ %.pn27, %.body44 ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 520
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtBT_22XorbReconstructionTermEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.au)
          to label %.body unwind label %bb.u

bb.r:                                             ; preds = %bb.bj, %bb.q
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB1z_27XorbReconstructionFetchInfoEEEB1B_.exit

bb.s:                                             ; preds = %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.ax = extractvalue { i64, i64 } %i.at, 0
  %i.ay = extractvalue { i64, i64 } %i.at, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) @94, i64 32, i1 false)
  %.sroa.4.0..sroa_idx.i39 = getelementptr inbounds nuw i8, ptr %1, i64 600
  store i64 %i.ax, ptr %.sroa.4.0..sroa_idx.i39, align 8, !alias.scope !2093
  %.sroa.5.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %1, i64 608
  store i64 %i.ay, ptr %.sroa.5.0..sroa_idx.i40, align 8, !alias.scope !2093
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !12, !align !17, !noundef !12 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !12
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 616
  store ptr %i.ba, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 624
  store ptr %i.bd, ptr %i.bf, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.aw, %bb.s
  %i.bg = phi ptr [ %.pre125, %bb.aw ], [ %i.bd, %bb.s ]
  %i.bh = phi ptr [ %.pre, %bb.aw ], [ %i.ba, %bb.s ] ; 4 uses
  %i.bi = icmp eq ptr %i.bh, %i.bg
  br i1 %i.bi, label %bb.bh, label %bb.bi

bb.u:                                             ; preds = %.thread119, %bb.ar, %.body44, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB1z_27XorbReconstructionFetchInfoEEEB1B_.exit, %bb.h, %bb.bf, %bb.w
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.v:                                             ; preds = %bb.a, %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  invoke fastcc void @_RNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB6_12MemoryClient21get_reconstruction_v10Bc_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.n, ptr noundef nonnull align 8 %i.bk, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v10EBO_(ptr noundef nonnull align 8 %i.bk) #27
          to label %.body44 unwind label %bb.u

bb.x:                                             ; preds = %bb.v
  %i.bm = load i64, ptr %i.n, align 8, !range !40, !noundef !12 ; 3 uses
  %i.bn = icmp eq i64 %i.bm, -3
  br i1 %i.bn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %common.ret

bb.z:                                             ; preds = %bb.x
  %.sroa.380.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.380, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.380.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bp = load i8, ptr %i.bo, align 8, !range !19, !noundef !12
  switch i8 %i.bp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v10EBO_.exit [
    i8 4, label %bb.ag
    i8 3, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val.i = load ptr, ptr %i.bq, align 8          ; 5 uses
  %i.br = getelementptr i8, ptr %1, i64 144
  %.val1.i = load ptr, ptr %i.br, align 8, !nonnull !12, !align !17, !noundef !12 ; 5 uses
  %i.bs = load ptr, ptr %.val1.i, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.bs(ptr noundef nonnull %.val.i)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bt = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !range !13, !invariant.load !12 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v10EBO_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bw = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !range !14, !invariant.load !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.bu, i64 noundef range(i64 1, 536870913) %i.bx) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v10EBO_.exit

bb.ae:                                            ; preds = %bb.ab
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !range !13, !invariant.load !12 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %.body44, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cc = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !range !14, !invariant.load !12
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.ca, i64 noundef range(i64 1, 536870913) %i.cd) #24
  br label %.body44

bb.ag:                                            ; preds = %bb.z
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient29compute_reconstruction_ranges0EBO_(ptr noundef nonnull align 8 %i.ce)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v10EBO_.exit unwind label %bb.ah

.body44:                                          ; preds = %bb.ah, %bb.af, %bb.ae, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB1z_27XorbReconstructionFetchInfoEEEB1B_.exit63, %bb.w
  %.pn27 = phi { ptr, i32 } [ %i.by, %bb.af ], [ %.pn21.pn.pn.pn.pn112117, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB1z_27XorbReconstructionFetchInfoEEEB1B_.exit63 ], [ %i.by, %bb.ae ], [ %i.bl, %bb.w ], [ %i.cg, %bb.ah ]
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 568
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtBT_27XorbReconstructionFetchInfoEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB1z_27XorbReconstructionFetchInfoEEEB1B_.exit unwind label %bb.u

bb.ah:                                            ; preds = %bb.ag
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body44

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v10EBO_.exit: ; preds = %bb.ad, %bb.ac, %bb.z, %bb.ag
  switch i64 %i.bm, label %bb.ai [
    i64 -2, label %bb.bj
    i64 -1, label %bb.aw
  ]

bb.ai:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v10EBO_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 %i.bm, ptr %i.m, align 8
  %.sroa.3.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.380, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !12, !align !17, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.ci, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  invoke void @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtBR_22XorbReconstructionTermENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertBT_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cj, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j)
          to label %_RNvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB16_22XorbReconstructionTermEE6insertB18_.exit unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %.thread119

_RNvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB16_22XorbReconstructionTermEE6insertB18_.exit: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.cl = load i64, ptr %i.k, align 8, !range !15, !alias.scope !2094, !noundef !12
  %i.cm = icmp eq i64 %i.cl, -1
  br i1 %i.cm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types22XorbReconstructionTermEEEB1y_.exit, label %bb.ak

bb.ak:                                            ; preds = %_RNvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB16_22XorbReconstructionTermEE6insertB18_.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types22XorbReconstructionTermENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types22XorbReconstructionTermEEB1c_.exit.i unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsiAynQAjgDuT_10xet_client9cas_types22XorbReconstructionTermENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.thread119 unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types22XorbReconstructionTermEEB1c_.exit.i: ; preds = %bb.ak
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsiAynQAjgDuT_10xet_client9cas_types22XorbReconstructionTermENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types22XorbReconstructionTermEEEB1y_.exit unwind label %bb.an

.thread119:                                       ; preds = %bb.aj, %bb.al, %bb.an
  %.pn16 = phi { ptr, i32 } [ %i.ck, %bb.aj ], [ %i.cq, %bb.an ], [ %i.cn, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtBT_27XorbReconstructionFetchInfoEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cp)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB1z_27XorbReconstructionFetchInfoEEEB1B_.exit63 unwind label %bb.u

bb.an:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types22XorbReconstructionTermEEB1c_.exit.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.thread119

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types22XorbReconstructionTermEEEB1y_.exit: ; preds = %_RNvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB16_22XorbReconstructionTermEE6insertB18_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types22XorbReconstructionTermEEB1c_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.380, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2095
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.cr, i64 48, i1 false)
  invoke void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtBR_27XorbReconstructionFetchInfoENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterBT_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.d)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types22XorbReconstructionTermEEEB1y_.exit
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ap:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types22XorbReconstructionTermEEEB1y_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2095
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 568
  %.sroa.682.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.983.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.1184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.1184.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.4.0..sroa_idx.i58 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.687.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.aq

bb.aq:                                            ; preds = %bb.bc, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtBX_27XorbReconstructionFetchInfoEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %_RNvXsF_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_8IntoIterNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB17_27XorbReconstructionFetchInfoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB19_.exit unwind label %bb.as

bb.ar:                                            ; preds = %bb.be, %bb.as
  %.pn21.pn = phi { ptr, i32 } [ %.pn21106, %bb.be ], [ %i.cz, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtBX_27XorbReconstructionFetchInfoEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB1A_27XorbReconstructionFetchInfoEEEB1C_.exit unwind label %bb.u

bb.as:                                            ; preds = %bb.aq
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

_RNvXsF_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_8IntoIterNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB17_27XorbReconstructionFetchInfoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB19_.exit: ; preds = %bb.aq
  %i.da = load i64, ptr %i.ct, align 8, !range !15, !noundef !12
  %.not18 = icmp eq i64 %i.da, -1
  br i1 %.not18, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_RNvXsF_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_8IntoIterNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB17_27XorbReconstructionFetchInfoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB19_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2096
  invoke void @_RNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB13_27XorbReconstructionFetchInfoENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entryB15_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cu, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.f)
          to label %.noexc54 unwind label %bb.ax

.noexc54:                                         ; preds = %bb.at
  %i.db = load ptr, ptr %i.c, align 8, !noalias !2096, !noundef !12 ; 2 uses
  %.not.i = icmp eq ptr %i.db, null
  br i1 %.not.i, label %bb.az, label %bb.ay

bb.au:                                            ; preds = %_RNvXsF_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_8IntoIterNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB17_27XorbReconstructionFetchInfoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB19_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtBX_27XorbReconstructionFetchInfoEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB1A_27XorbReconstructionFetchInfoEEEB1C_.exit56 unwind label %bb.av

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB1A_27XorbReconstructionFetchInfoEEEB1C_.exit: ; preds = %bb.ar, %bb.av
  %.pn21.pn.pn = phi { ptr, i32 } [ %i.dc, %bb.av ], [ %.pn21.pn, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.bg

bb.av:                                            ; preds = %bb.au
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB1A_27XorbReconstructionFetchInfoEEEB1C_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB1A_27XorbReconstructionFetchInfoEEEB1C_.exit56: ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.aw

bb.aw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v10EBO_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB1A_27XorbReconstructionFetchInfoEEEB1C_.exit56
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 616
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2097
  %.phi.trans.insert124 = getelementptr inbounds nuw i8, ptr %1, i64 624
  %.pre125 = load ptr, ptr %.phi.trans.insert124, align 8, !alias.scope !2097
  br label %bb.t

bb.ax:                                            ; preds = %bb.at
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.ay:                                            ; preds = %.noexc54
  %.sroa.682.0.copyload = load i64, ptr %.sroa.682.0..sroa_idx, align 8, !noalias !2098
  %.sroa.983.0.copyload = load ptr, ptr %.sroa.983.0..sroa_idx, align 8, !noalias !2098
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2099
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1184.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1184.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2096
  store ptr %.sroa.983.0.copyload, ptr %i.b, align 8
  store i64 0, ptr %i.cv, align 8, !noalias !2099
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i58, align 8, !noalias !2099
  store i64 0, ptr %.sroa.58.0..sroa_idx.i, align 8, !noalias !2099
  %i.de = invoke noundef nonnull ptr @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtBT_27XorbReconstructionFetchInfoEEE14insert_no_growBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.db, i64 noundef %.sroa.682.0.copyload, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.b)
          to label %.noexc60 unwind label %bb.ba

.noexc60:                                         ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2099
  br label %bb.bb

bb.az:                                            ; preds = %.noexc54
  %i.df = load ptr, ptr %.sroa.682.0..sroa_idx, align 8, !noalias !2096, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2096
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bb:                                            ; preds = %bb.az, %.noexc60
  %.pn.i = phi ptr [ %i.de, %.noexc60 ], [ %i.df, %bb.az ]
  %.sroa.0.0.i59 = getelementptr inbounds i8, ptr %.pn.i, i64 -24
  %.sroa.085.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.586.0.copyload = load ptr, ptr %.sroa.586.0..sroa_idx, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %.sroa.687.0.copyload = load i64, ptr %.sroa.687.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2100
  %i.dh = icmp ult i64 %.sroa.687.0.copyload, 192153584101141163
  call void @llvm.assume(i1 %i.dh)
  %i.di = getelementptr inbounds nuw [48 x i8], ptr %.sroa.586.0.copyload, i64 %.sroa.687.0.copyload
  store ptr %.sroa.586.0.copyload, ptr %i.a, align 8, !alias.scope !2101, !noalias !2102
  store i64 %.sroa.085.0.copyload, ptr %i.cw, align 8, !alias.scope !2101, !noalias !2102
  store ptr %.sroa.586.0.copyload, ptr %i.cx, align 8, !alias.scope !2101, !noalias !2102
  store ptr %i.di, ptr %i.cy, align 8, !alias.scope !2101, !noalias !2102
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types27XorbReconstructionFetchInfoEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i59, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.aq

bb.bd:                                            ; preds = %bb.bb
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bf
  %.pn21106 = phi { ptr, i32 } [ %.pn19, %bb.bf ], [ %i.dj, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ar

bb.bf:                                            ; preds = %bb.ax, %bb.ba
  %.pn19 = phi { ptr, i32 } [ %i.dg, %bb.ba ], [ %i.dd, %bb.ax ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types27XorbReconstructionFetchInfoEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #27
          to label %bb.be unwind label %bb.u

bb.bg:                                            ; preds = %bb.ao, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB1A_27XorbReconstructionFetchInfoEEEB1C_.exit
  %.pn21.pn.pn.pn = phi { ptr, i32 } [ %.pn21.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB1A_27XorbReconstructionFetchInfoEEEB1C_.exit ], [ %i.cs, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB1z_27XorbReconstructionFetchInfoEEEB1B_.exit63

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB1z_27XorbReconstructionFetchInfoEEEB1B_.exit63: ; preds = %.thread119, %bb.bg
  %.pn21.pn.pn.pn.pn112117 = phi { ptr, i32 } [ %.pn21.pn.pn.pn, %bb.bg ], [ %.pn16, %.thread119 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.body44

bb.bh:                                            ; preds = %bb.t
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 520
  %.sroa.091.0.copyload = load ptr, ptr %i.dk, align 8
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.369, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.492.0..sroa_idx, i64 40, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(48) %i.dl, i64 48, i1 false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB1z_22XorbReconstructionTermEEEB1B_.exit67

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB1z_22XorbReconstructionTermEEEB1B_.exit67: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB1z_27XorbReconstructionFetchInfoEEEB1B_.exit65, %bb.bh
  %.sroa.0.0 = phi ptr [ %.sroa.091.0.copyload, %bb.bh ], [ null, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB1z_27XorbReconstructionFetchInfoEEEB1B_.exit65 ]
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %i.dm, align 8
  %.sroa.369.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.369.0..sroa_idx70, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.369, i64 40, i1 false)
  %.sroa.4.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx71, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4, i64 48, i1 false)
  br label %common.ret

bb.bi:                                            ; preds = %bb.t
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.do = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  store ptr %i.do, ptr %i.dn, align 8, !alias.scope !2097
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.bh, ptr %i.dp, align 8, !captures !42
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !nonnull !12, !align !17, !noundef !12
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 0, ptr %i.ds, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.dr, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.1076.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %i.bh, ptr %.sroa.1076.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i8 0, ptr %.sroa.12.0..sroa_idx, align 8
  br label %bb.v

bb.bj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBI_12MemoryClient21get_reconstruction_v10EBO_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.369, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.380, i64 40, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 568
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtBT_27XorbReconstructionFetchInfoEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dt)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB1z_27XorbReconstructionFetchInfoEEEB1B_.exit65 unwind label %bb.r

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB1z_27XorbReconstructionFetchInfoEEEB1B_.exit65: ; preds = %bb.bj
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 520
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtBT_22XorbReconstructionTermEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.du)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB1z_22XorbReconstructionTermEEEB1B_.exit67 unwind label %bb.p
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB7_12MemoryClientNtNtBb_9interface6Client28get_file_reconstruction_info0Bd_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([192 x i8]) align 8 captures(none) dereferenceable(192) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 6 uses
  %.sroa.631 = alloca [144 x i8], align 8         ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !19, !noundef !12
  switch i8 %i.d, label %default.unreachable44 [
    i8 0, label %bb.b
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.c
  ]

default.unreachable44:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %1, align 8, !nonnull !12, !align !17, !noundef !12 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !2108
  %i.g = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 8, 689) 128, i64 noundef range(i64 4, 9) 8) #24, !noalias !2108 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.noexc.i, label %bb.e, !prof !37

.noexc.i:                                         ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #29
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %bb.t

bb.d:                                             ; preds = %.noexc.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b
  store ptr %i.f, ptr %i.g, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  store i8 0, ptr %.sroa.438.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr @125, ptr %i.k, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #28
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #28
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.m = invoke noundef zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputuNtNtB8_6marker4SendEL_EEB1v_4pollCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  %.val19 = load ptr, ptr %i.l, align 8
  %i.o = getelementptr i8, ptr %1, i64 40
  %.val20 = load ptr, ptr %i.o, align 8, !nonnull !12, !align !17, !noundef !12
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsiAynQAjgDuT_10xet_client(ptr %.val19, ptr nonnull %.val20) #27
          to label %.body unwind label %bb.s

bb.j:                                             ; preds = %bb.h
  br i1 %i.m, label %bb.k, label %bb.l

common.ret:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit26, %bb.w, %bb.k
  %.sink = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit26 ], [ 4, %bb.w ], [ 3, %bb.k ]
  store i8 %.sink, ptr %i.c, align 8
  ret void

bb.k:                                             ; preds = %bb.j
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.l:                                             ; preds = %bb.j
  %.val17 = load ptr, ptr %i.l, align 8           ; 5 uses
  %i.p = getelementptr i8, ptr %1, i64 40
  %.val18 = load ptr, ptr %i.p, align 8, !nonnull !12, !align !17, !noundef !12 ; 5 uses
  %i.q = load ptr, ptr %.val18, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17) ]
  invoke void %i.q(ptr noundef nonnull %.val17)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.r = getelementptr inbounds nuw i8, ptr %.val18, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !13, !invariant.load !12 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !14, !invariant.load !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef range(i64 1, 0) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #24
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val18, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !13, !invariant.load !12 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aa = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !14, !invariant.load !12
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef range(i64 1, 0) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #24
  br label %.body

bb.r:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !12, !align !17, !noundef !12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  store ptr %i.ae, ptr %i.l, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.t

bb.s:                                             ; preds = %bb.ah, %bb.i, %bb.u
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

.body:                                            ; preds = %bb.q, %bb.p, %bb.i, %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit
  %.pn14.pn = phi { ptr, i32 } [ %.pn14, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit ], [ %i.i, %bb.d ], [ %i.n, %bb.i ], [ %i.w, %bb.p ], [ %i.w, %bb.q ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn14.pn

bb.t:                                             ; preds = %bb.c, %bb.r
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ah = invoke fastcc { ptr, ptr } @_RNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtB7_6RwLockNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardE4read0CsiAynQAjgDuT_10xet_client(ptr noundef nonnull align 8 %i.ag, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.v unwind label %bb.u       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardE4read0ECsiAynQAjgDuT_10xet_client(ptr noundef nonnull align 8 %i.ag) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit unwind label %bb.s

bb.v:                                             ; preds = %bb.t
  %i.aj = extractvalue { ptr, ptr } %i.ah, 0      ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %common.ret

bb.x:                                             ; preds = %bb.v
  %i.al = extractvalue { ptr, ptr } %i.ah, 1      ; 2 uses
  store ptr %i.aj, ptr %i.b, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.al, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ao = load i8, ptr %i.an, align 8, !range !18, !noundef !12
  %cond.i = icmp eq i8 %i.ao, 3
  br i1 %cond.i, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aq = load i8, ptr %i.ap, align 8, !range !18, !noundef !12
  %cond.i.i = icmp eq i8 %i.aq, 3
  br i1 %cond.i.i, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %bb.y
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_RNvXs3_NtNtCsUrhh0HcRih_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.ar)
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val2.i.i.i = load ptr, ptr %i.at, align 8, !align !17, !noundef !12 ; 2 uses
  %i.au = icmp eq ptr %.val2.i.i.i, null
  br i1 %i.au, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.av = getelementptr i8, ptr %1, i64 64
  %.val3.i.i.i = load ptr, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !12, !noundef !12
  invoke void %i.ax(ptr noundef %.val3.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit unwind label %bb.ae, !inline_history !1

bb.ac:                                            ; preds = %bb.z
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i.i.i = load ptr, ptr %i.ay, align 8, !align !17, !noundef !12 ; 2 uses
  %i.az = icmp eq ptr %.val.i.i.i, null
  br i1 %i.az, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ba = getelementptr i8, ptr %1, i64 64
  %.val1.i.i.i = load ptr, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !12, !noundef !12
  invoke void %i.bc(ptr noundef %.val1.i.i.i)
          to label %bb.ag unwind label %bb.af, !inline_history !33

bb.ae:                                            ; preds = %bb.ab
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit

bb.ag:                                            ; preds = %bb.ad, %bb.x, %bb.y, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !12, !align !17, !noundef !12
  invoke void @_RNvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memoryNtB2_16MDBInMemoryShard28get_file_reconstruction_info(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bg)
          to label %bb.ai unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit unwind label %bb.s

bb.ai:                                            ; preds = %bb.ag
  %i.bi = load i64, ptr %i.a, align 8, !range !41, !alias.scope !2109, !noalias !2110, !noundef !12 ; 2 uses
  %.not.i = icmp eq i64 %i.bi, 2
  br i1 %.not.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoE3mapTBI_IBw_NtNtNtBO_10merklehash9data_hash8DataHashEENCNCNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB37_12MemoryClientNtNtB3b_9interface6Client28get_file_reconstruction_info00EB3d_.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.sroa.631.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.631, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.631.0..sroa_idx32, i64 144, i1 false)
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoE3mapTBI_IBw_NtNtNtBO_10merklehash9data_hash8DataHashEENCNCNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB37_12MemoryClientNtNtB3b_9interface6Client28get_file_reconstruction_info00EB3d_.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoE3mapTBI_IBw_NtNtNtBO_10merklehash9data_hash8DataHashEENCNCNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB37_12MemoryClientNtNtB3b_9interface6Client28get_file_reconstruction_info00EB3d_.exit: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit26 unwind label %bb.ak

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.u, %bb.aa, %bb.ab, %bb.af, %bb.ah, %bb.ak
  %.pn14 = phi { ptr, i32 } [ %i.bj, %bb.ak ], [ %i.bh, %bb.ah ], [ %i.as, %bb.aa ], [ %i.ai, %bb.u ], [ %i.be, %bb.af ], [ %i.as, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.body

bb.ak:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoE3mapTBI_IBw_NtNtNtBO_10merklehash9data_hash8DataHashEENCNCNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB37_12MemoryClientNtNtB3b_9interface6Client28get_file_reconstruction_info00EB3d_.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit26: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoE3mapTBI_IBw_NtNtNtBO_10merklehash9data_hash8DataHashEENCNCNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB37_12MemoryClientNtNtB3b_9interface6Client28get_file_reconstruction_info00EB3d_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.bi, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.631, i64 144, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8
  br label %common.ret
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB7_12MemoryClientNtNtBb_9interface6Client28query_for_global_dedup_shard0Bd_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 13 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.896.sroa.9 = alloca [24 x i8], align 8   ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 12 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 11 uses
  %i.i = alloca [32 x i8], align 8                ; 18 uses
  %.sroa.9 = alloca [24 x i8], align 8            ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8, !range !19, !noundef !12
  switch i8 %i.k, label %default.unreachable165 [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.r
  ]

default.unreachable165:                           ; preds = %bb.u, %bb.r, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %1, align 8, !nonnull !12, !align !17, !noundef !12 ; 2 uses
  store ptr %i.m, ptr %i.l, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !2156
  %i.n = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 8, 689) 128, i64 noundef range(i64 4, 9) 8) #24, !noalias !2156 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.noexc.i, label %bb.d, !prof !37

.noexc.i:                                         ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #29
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.c:                                             ; preds = %.noexc.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.b
  store ptr %i.m, ptr %i.n, align 8
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  store i8 0, ptr %.sroa.4123.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.n, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr @125, ptr %i.r, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #28
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #28
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.t = invoke noundef zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputuNtNtB8_6marker4SendEL_EEB1v_4pollCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  %.val41 = load ptr, ptr %i.s, align 8
  %i.v = getelementptr i8, ptr %1, i64 40
  %.val42 = load ptr, ptr %i.v, align 8, !nonnull !12, !align !17, !noundef !12
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsiAynQAjgDuT_10xet_client(ptr %.val41, ptr nonnull %.val42) #27
          to label %.body unwind label %bb.q

bb.i:                                             ; preds = %bb.g
  br i1 %i.t, label %bb.j, label %bb.k

common.ret:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client.exit71, %bb.an, %bb.j
  %.sink = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client.exit71 ], [ 4, %bb.an ], [ 3, %bb.j ]
  store i8 %.sink, ptr %i.j, align 8
  ret void

bb.j:                                             ; preds = %bb.i
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.k:                                             ; preds = %bb.i
  %.val = load ptr, ptr %i.s, align 8             ; 5 uses
  %i.w = getelementptr i8, ptr %1, i64 40
  %.val40 = load ptr, ptr %i.w, align 8, !nonnull !12, !align !17, !noundef !12 ; 5 uses
  %i.x = load ptr, ptr %.val40, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.x(ptr noundef nonnull %.val)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %.val40, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !13, !invariant.load !12 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %.val40, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !14, !invariant.load !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.z, i64 noundef range(i64 1, 536870913) %i.ac) #24
  br label %.thread

bb.o:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val40, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !13, !invariant.load !12 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %.val40, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !range !14, !invariant.load !12
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.af, i64 noundef range(i64 1, 536870913) %i.ai) #24
  br label %.body

.thread:                                          ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !12, !align !17, !noundef !12
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 240
  store ptr %i.al, ptr %i.s, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 120
  br label %.thread.i

bb.q:                                             ; preds = %bb.bu, %bb.bt, %bb.h, %bb.bf, %.body68, %.body47
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

.body:                                            ; preds = %bb.p, %bb.o, %bb.h, %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client.exit73
  %.pn37.pn = phi { ptr, i32 } [ %.pn37, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client.exit73 ], [ %i.p, %bb.c ], [ %i.u, %bb.h ], [ %i.ad, %bb.o ], [ %i.ad, %bb.p ]
  store i8 2, ptr %i.j, align 8
  resume { ptr, i32 } %.pn37.pn

.body47:                                          ; preds = %bb.am, %.body17.i
  %i.ap = phi ptr [ %i.cd, %.body17.i ], [ %i.aq, %bb.am ]
  %.pn13 = phi { ptr, i32 } [ %.pn.i, %.body17.i ], [ %i.cg, %bb.am ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1A_9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEE4read0ECsiAynQAjgDuT_10xet_client(ptr noundef nonnull align 8 %i.ap) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsiAynQAjgDuT_10xet_client.exit75 unwind label %bb.q

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !18, !noalias !2157
end_hunk_7
begin_hunk_8_@_RNCNvXs2_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB7_12MemoryClientNtNtB9_17deletion_controls25DeletionControlableClient16verify_integrity0Bd_:bb.a
          cleanup
  br label %bb.bz

_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB6_7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashE8containsB13_ECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.ch
  br i1 %i.ge, label %bb.cg, label %bb.ce

bb.cj:                                            ; preds = %bb.bx, %bb.be
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit119

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.be
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1k_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB3l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.gh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit115 unwind label %bb.ck

bb.ck:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit110, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit115: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.gj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEEECsiAynQAjgDuT_10xet_client.exit117 unwind label %bb.cl

bb.cl:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit121, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit115
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEEECsiAynQAjgDuT_10xet_client.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEEECsiAynQAjgDuT_10xet_client.exit117: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit121, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit115
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit115 ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit121 ]
  store i64 %.sroa.0.1, ptr %0, align 8
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4127.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4127, i64 32, i1 false)
  br label %common.ret

bb.cm:                                            ; preds = %bb.bz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsiAynQAjgDuT_10xet_client.exit95
  %.pn57.pn = phi { ptr, i32 } [ %.pn57, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsiAynQAjgDuT_10xet_client.exit95 ], [ %.pn53.pn, %bb.bz ]
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.gl)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit119 unwind label %bb.t

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit110: ; preds = %bb.bx
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1k_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB3l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.gm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit121 unwind label %bb.ck

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1N_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEEEB3O_.exit121: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit110
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.gn)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEEECsiAynQAjgDuT_10xet_client.exit117 unwind label %bb.cl
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs2_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB7_12MemoryClientNtNtB9_17deletion_controls25DeletionControlableClient17delete_file_entry0Bd_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !range !18, !noundef !12
  switch i8 %i.e, label %default.unreachable25 [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.b
  ]

default.unreachable25:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !nonnull !12, !align !17, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.g, ptr %i.h, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #28
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #28
  unreachable

bb.f:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  invoke fastcc void @_RNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtB7_6RwLockNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardE5write0CsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.i, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardE5write0ECsiAynQAjgDuT_10xet_client(ptr noundef nonnull align 8 %i.i) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock11write_guard16RwLockWriteGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit22 unwind label %bb.ae

bb.h:                                             ; preds = %bb.f
  %i.k = load ptr, ptr %i.b, align 8, !noundef !12
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.i, label %bb.j

common.ret:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock11write_guard16RwLockWriteGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit, %bb.i
  %storemerge = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock11write_guard16RwLockWriteGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit ], [ 3, %bb.i ]
  store i8 %storemerge, ptr %i.d, align 8
  ret void

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %common.ret

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.n = load i8, ptr %i.m, align 8, !range !18, !noundef !12
  %cond.i = icmp eq i8 %i.n, 3
  br i1 %cond.i, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.p = load i8, ptr %i.o, align 8, !range !18, !noundef !12
  %cond.i.i = icmp eq i8 %i.p, 3
  br i1 %cond.i.i, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_RNvXs3_NtNtCsUrhh0HcRih_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.q)
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val2.i.i.i = load ptr, ptr %i.s, align 8, !align !17, !noundef !12 ; 2 uses
  %i.t = icmp eq ptr %.val2.i.i.i, null
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock11write_guard16RwLockWriteGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit22, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = getelementptr i8, ptr %1, i64 48
  %.val3.i.i.i = load ptr, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !12, !noundef !12
  invoke void %i.w(ptr noundef %.val3.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock11write_guard16RwLockWriteGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit22 unwind label %bb.q, !inline_history !1

bb.o:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i.i = load ptr, ptr %i.x, align 8, !align !17, !noundef !12 ; 2 uses
  %i.y = icmp eq ptr %.val.i.i.i, null
  br i1 %i.y, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.z = getelementptr i8, ptr %1, i64 48
  %.val1.i.i.i = load ptr, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !12, !noundef !12
  invoke void %i.ab(ptr noundef %.val1.i.i.i)
          to label %bb.s unwind label %bb.r, !inline_history !30

bb.q:                                             ; preds = %bb.n
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock11write_guard16RwLockWriteGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit22

bb.s:                                             ; preds = %bb.p, %bb.j, %bb.k, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.val13 = load ptr, ptr %i.ae, align 8, !noundef !12
  %i.af = getelementptr inbounds nuw i8, ptr %.val13, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !12, !align !17, !noundef !12
  invoke void @_RINvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1e_14metadata_shard12file_structs11MDBFileInfoE6removeB18_ECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ah)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %.val14 = load i64, ptr %i.a, align 8, !range !41, !noundef !12
  %.not = icmp eq i64 %.val14, 2
  br i1 %.not, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.a)
          to label %bb.aa unwind label %bb.x

bb.w:                                             ; preds = %bb.t, %bb.x
  %.pn7 = phi { ptr, i32 } [ %i.aj, %bb.x ], [ %i.ai, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ad

bb.x:                                             ; preds = %bb.v
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.y:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %bb.y
  invoke void @_RNvXs3_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock11write_guardINtB5_16RwLockWriteGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock11write_guard16RwLockWriteGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit unwind label %bb.ac

bb.aa:                                            ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %i.ae, align 8, !noundef !12
  invoke void @_RNvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memoryNtB2_16MDBInMemoryShard22recalculate_shard_size(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %.val)
          to label %bb.z unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock11write_guard16RwLockWriteGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit22: ; preds = %bb.g, %bb.m, %bb.n, %bb.r, %bb.ad, %bb.ac
  %.pn11 = phi { ptr, i32 } [ %i.al, %bb.ac ], [ %.pn9, %bb.ad ], [ %i.r, %bb.m ], [ %i.j, %bb.g ], [ %i.ad, %bb.r ], [ %i.r, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 2, ptr %i.d, align 8
  resume { ptr, i32 } %.pn11

bb.ac:                                            ; preds = %bb.z
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock11write_guard16RwLockWriteGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit22

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock11write_guard16RwLockWriteGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 -1, ptr %0, align 8
  br label %common.ret

bb.ad:                                            ; preds = %bb.ab, %bb.w
  %.pn9 = phi { ptr, i32 } [ %i.ak, %bb.ab ], [ %.pn7, %bb.w ]
  invoke void @_RNvXs3_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock11write_guardINtB5_16RwLockWriteGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock11write_guard16RwLockWriteGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit22 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.g
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs2_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB7_12MemoryClientNtNtB9_17deletion_controls25DeletionControlableClient18delete_shard_entry0Bd_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [72 x i8], align 8                ; 10 uses
  %.sroa.8100.sroa.10 = alloca [24 x i8], align 8 ; 9 uses
  %i.g = alloca [64 x i8], align 8                ; 13 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.588 = alloca [24 x i8], align 8          ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.m = load i8, ptr %i.l, align 8, !range !19, !noundef !12
  switch i8 %i.m, label %default.unreachable151 [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.b
  ]

default.unreachable151:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %bb.bb

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %1, align 8, !nonnull !12, !align !17, !noundef !12 ; 2 uses
  store ptr %i.o, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.p, ptr %i.q, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #28
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #28
  unreachable

bb.f:                                             ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  invoke fastcc void @_RNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtB7_6RwLockNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardE5write0CsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull align 8 %i.r, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardE5write0ECsiAynQAjgDuT_10xet_client(ptr noundef nonnull align 8 %i.r) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock11write_guard16RwLockWriteGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit56 unwind label %bb.ai

bb.h:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.k, align 8, !noundef !12
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %bb.j

common.ret:                                       ; preds = %bb.be, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock11write_guard16RwLockWriteGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit, %bb.i
  %.sink = phi i8 [ 4, %bb.be ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock11write_guard16RwLockWriteGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit ], [ 3, %bb.i ]
  store i8 %.sink, ptr %i.l, align 8
  ret void

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.j:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.x = load i8, ptr %i.w, align 8, !range !18, !noundef !12
  %cond.i = icmp eq i8 %i.x, 3
  br i1 %cond.i, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.z = load i8, ptr %i.y, align 8, !range !18, !noundef !12
  %cond.i.i = icmp eq i8 %i.z, 3
  br i1 %cond.i.i, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_RNvXs3_NtNtCsUrhh0HcRih_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.aa)
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val2.i.i.i = load ptr, ptr %i.ac, align 8, !align !17, !noundef !12 ; 2 uses
  %i.ad = icmp eq ptr %.val2.i.i.i, null
  br i1 %i.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock11write_guard16RwLockWriteGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit56, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr i8, ptr %1, i64 88
  %.val3.i.i.i = load ptr, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !12, !noundef !12
  invoke void %i.ag(ptr noundef %.val3.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock11write_guard16RwLockWriteGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEECsiAynQAjgDuT_10xet_client.exit56 unwind label %bb.q, !inline_history !1

bb.o:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val.i.i.i = load ptr, ptr %i.ah, align 8, !align !17, !noundef !12 ; 2 uses
  %i.ai = icmp eq ptr %.val.i.i.i, null
  br i1 %i.ai, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr i8, ptr %1, i64 88
  %.val1.i.i.i = load ptr, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !12, !noundef !12
  invoke void %i.al(ptr noundef %.val1.i.i.i)
          to label %bb.t unwind label %bb.r, !inline_history !30

bb.q:                                             ; preds = %bb.n
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

end_hunk_8
begin_hunk_9_@_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsiAynQAjgDuT_10xet_client9cas_types19XorbMultiRangeFetchE8grow_oneBQ_
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsiAynQAjgDuT_10xet_client9cas_types19XorbMultiRangeFetchE8grow_oneBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCslc8SwK8fohf_5bytes5bytes5BytesE8grow_oneCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCsbc8Eb5TzBdy_3url(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #15

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCskKLDkoKarTP_4core3str4iter7RSplitNcEE9from_iterCsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMse_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB5_8DataHash8from_hex(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvXs1_NtNtCsUrhh0HcRih_5tokio4time7instantNtB5_7InstantINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtBZ_4time8DurationE3add(i64 noundef, i32 noundef range(i32 0, 1000000000), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils18parse_v2_fetch_url(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils21generate_v2_fetch_url(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 384307168202282326), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCs94TQx44N27d_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest(ptr noundef nonnull align 8, i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils32duration_to_expiration_secs_ceil(i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsiAynQAjgDuT_10xet_client10cas_client9interface23ShardUploadProgressTypeL0_EEEp6OutputuNtNtBQ_6marker4SendNtB2Z_4SyncEL_E9drop_slowB1x_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtNtCskKLDkoKarTP_4core3ops8function2FnTyyyEEp6OutputuNtNtBO_6marker4SendNtB1E_4SyncEL_E9drop_slowCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsarFSTFZzLuM_11xet_runtime4core6common9XetCommonE9drop_slowCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore19AdjustableSemaphoreE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsarFSTFZzLuM_11xet_runtime6config10xet_config9XetConfigE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller29AdaptiveConcurrencyControllerE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB2I_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtBX_27XorbReconstructionFetchInfoEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextBZ_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCsiAynQAjgDuT_10xet_client5errorNtB5_11ClientErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCsUrhh0HcRih_5tokio4sync15batch_semaphore12AcquireErrorE4from(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40)) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #22

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCs4DkaUnCZMGd_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtBR_27XorbReconstructionFetchInfoENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterBT_(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nounwind }
attributes #25 = { cold noreturn nounwind }
attributes #26 = { noinline }
attributes #27 = { cold }
attributes #28 = { noinline noreturn }
attributes #29 = { noreturn }
attributes #30 = { inlinehint }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync15batch_semaphore7AcquireECsiAynQAjgDuT_10xet_client, null, null, null, null, null, null}
!3 = distinct !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEE4read0ECsiAynQAjgDuT_10xet_client, ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBL_6RwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEE4read00ECsiAynQAjgDuT_10xet_client, ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync15batch_semaphore7AcquireECsiAynQAjgDuT_10xet_client, null, null, null, null, null, null}
!4 = distinct !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardE4read0ECsiAynQAjgDuT_10xet_client, ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBL_6RwLockNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardE4read00ECsiAynQAjgDuT_10xet_client, ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync15batch_semaphore7AcquireECsiAynQAjgDuT_10xet_client, null, null, null, null, null, null}
!5 = distinct !{null}
!6 = distinct !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardE5write0ECsiAynQAjgDuT_10xet_client, ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBL_6RwLockNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardE5write00ECsiAynQAjgDuT_10xet_client, ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync15batch_semaphore7AcquireECsiAynQAjgDuT_10xet_client, null, null, null, null, null, null}
!7 = distinct !{null}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 2, !"RtLibUseGOT", i32 1}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!12 = !{}
!13 = !{i64 0, i64 -9223372036854775808}
!14 = !{i64 1, i64 536870913}
!15 = !{i64 -1, i64 -9223372036854775808}
!16 = !{i64 -2, i64 -9223372036854775808}
!17 = !{i64 8}
!18 = !{i8 0, i8 4}
!19 = !{i8 0, i8 5}
!20 = !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync15batch_semaphore7AcquireECsiAynQAjgDuT_10xet_client}
!21 = !{i8 0, i8 6}
!22 = !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEE4read0ECsiAynQAjgDuT_10xet_client}
!23 = !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1A_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEE4read0EB3B_}
!24 = !{i8 0, i8 7}
!25 = !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBG_12MemoryClient15shard_is_tagged0EBM_}
!26 = !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBG_12MemoryClient14xorb_is_tagged0EBM_}
!27 = !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1A_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEE5write0EB3B_}
!28 = !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEE5write0ECsiAynQAjgDuT_10xet_client}
!29 = !{i8 0, i8 2}
!30 = !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardE5write0ECsiAynQAjgDuT_10xet_client}
!31 = !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1A_9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEE5write0ECsiAynQAjgDuT_10xet_client}
!32 = !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockINtNtB4_6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEE5write0ECsiAynQAjgDuT_10xet_client}
!33 = !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardE4read0ECsiAynQAjgDuT_10xet_client}
!34 = !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockINtNtB4_6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEE4read0ECsiAynQAjgDuT_10xet_client}
!35 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!36 = !{i64 0, i64 2}
!37 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!38 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!39 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!40 = !{i64 -3, i64 -9223372036854775808}
!41 = !{i64 0, i64 3}
!42 = !{!"address", !"read_provenance"}
!43 = !{i64 -2, i64 42}
!44 = !{i64 0, i64 -9223372036854775807}
!45 = !{i64 -1, i64 21}
!46 = !{i32 -1, i32 1000000000}
!47 = !{i32 0, i32 1000000000}
!48 = distinct !{!48, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECsiAynQAjgDuT_10xet_client"}
!49 = distinct !{!49, !48, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECsiAynQAjgDuT_10xet_client: argument 0"}
!50 = distinct !{!50, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client"}
!51 = distinct !{!51, !50, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client: argument 0"}
!52 = distinct !{!52, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore20OwnedSemaphorePermitECsiAynQAjgDuT_10xet_client"}
!53 = distinct !{!53, !52, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore20OwnedSemaphorePermitECsiAynQAjgDuT_10xet_client: argument 0"}
!54 = distinct !{!54, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECsiAynQAjgDuT_10xet_client"}
!55 = distinct !{!55, !54, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECsiAynQAjgDuT_10xet_client: argument 0"}
!56 = distinct !{!56, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client"}
!57 = distinct !{!57, !56, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client: argument 0"}
!58 = !{!49}
!59 = !{!51}
!60 = !{!51, !49, !53}
!61 = !{!51, !49}
!62 = !{!55}
!63 = !{!57}
!64 = !{!57, !55, !53}
!65 = !{!57, !55}
!66 = distinct !{!66, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEBJ_"}
!67 = distinct !{!67, !66, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEBJ_: argument 0"}
!68 = distinct !{!68, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client16MaterializedXorbEBJ_"}
!69 = distinct !{!69, !68, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client16MaterializedXorbEBJ_: argument 0"}
!70 = distinct !{!70, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client"}
!71 = distinct !{!71, !70, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client: argument 0"}
!72 = distinct !{!72, !"_RNvXs1_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!73 = distinct !{!73, !72, !"_RNvXs1_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!74 = !{!67}
!75 = !{!69}
!76 = !{!71}
!77 = !{!73}
!78 = !{!73, !71, !69, !67}
!79 = distinct !{!79, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller29AdaptiveConcurrencyControllerEEB1h_"}
!80 = distinct !{!80, !79, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller29AdaptiveConcurrencyControllerEEB1h_: argument 0"}
!81 = distinct !{!81, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller29AdaptiveConcurrencyControllerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_"}
!82 = distinct !{!82, !81, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller29AdaptiveConcurrencyControllerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_: argument 0"}
!83 = distinct !{!83, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client12MemoryClientEBJ_"}
!84 = distinct !{!84, !83, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client12MemoryClientEBJ_: argument 0"}
!85 = distinct !{!85, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller29AdaptiveConcurrencyControllerEEB1h_"}
!86 = distinct !{!86, !85, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller29AdaptiveConcurrencyControllerEEB1h_: argument 0"}
!87 = distinct !{!87, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller29AdaptiveConcurrencyControllerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_"}
!88 = distinct !{!88, !87, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller29AdaptiveConcurrencyControllerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_: argument 0"}
!89 = !{!80}
!90 = !{!82}
!91 = !{!82, !80, !84}
!92 = !{!82, !80}
!93 = !{!86}
!94 = !{!88}
!95 = !{!88, !86, !84}
!96 = !{!88, !86}
!97 = distinct !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs8_NtNtCsUrhh0HcRih_5tokio4sync5mutexINtBJ_5MutexNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller26ConcurrencyControllerStateE7acquire0EB1B_, ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync15batch_semaphore7AcquireECsiAynQAjgDuT_10xet_client, null, null, null, null, null, null}
!98 = distinct !{!98, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECsiAynQAjgDuT_10xet_client"}
!99 = distinct !{!99, !98, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECsiAynQAjgDuT_10xet_client: argument 0"}
!100 = distinct !{!100, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client"}
!101 = distinct !{!101, !100, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client: argument 0"}
!102 = distinct !{!102, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECsiAynQAjgDuT_10xet_client"}
!103 = distinct !{!103, !102, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECsiAynQAjgDuT_10xet_client: argument 0"}
!104 = distinct !{!104, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client"}
!105 = distinct !{!105, !104, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client: argument 0"}
!106 = distinct !{!106, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECsiAynQAjgDuT_10xet_client"}
!107 = distinct !{!107, !106, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECsiAynQAjgDuT_10xet_client: argument 0"}
!108 = distinct !{!108, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client"}
!109 = distinct !{!109, !108, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client: argument 0"}
!110 = !{!99}
!111 = !{!101}
!112 = !{!101, !99}
!113 = !{!103}
!114 = !{!105}
!115 = !{!105, !103}
!116 = !{!107}
!117 = !{!109}
!118 = !{!109, !107}
!119 = distinct !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockINtNtB4_6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEE4read0ECsiAynQAjgDuT_10xet_client, ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBL_6RwLockINtNtB4_6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEE4read00ECsiAynQAjgDuT_10xet_client, ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync15batch_semaphore7AcquireECsiAynQAjgDuT_10xet_client, null, null, null, null, null, null}
!120 = distinct !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMs8_NtNtCsUrhh0HcRih_5tokio4sync5mutexINtBL_5MutexNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller26ConcurrencyControllerStateE4lock00EB1D_, ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs8_NtNtCsUrhh0HcRih_5tokio4sync5mutexINtBJ_5MutexNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller26ConcurrencyControllerStateE7acquire0EB1B_, ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync15batch_semaphore7AcquireECsiAynQAjgDuT_10xet_client, null, null, null, null, null, null}
!121 = distinct !{!121, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller29AdaptiveConcurrencyControllerEEB1h_"}
!122 = distinct !{!122, !121, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller29AdaptiveConcurrencyControllerEEB1h_: argument 0"}
!123 = distinct !{!123, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller29AdaptiveConcurrencyControllerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_"}
!124 = distinct !{!124, !123, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller29AdaptiveConcurrencyControllerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_: argument 0"}
!125 = distinct !{!125, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller29AdaptiveConcurrencyControllerEEB1h_"}
!126 = distinct !{!126, !125, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller29AdaptiveConcurrencyControllerEEB1h_: argument 0"}
!127 = distinct !{!127, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller29AdaptiveConcurrencyControllerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_"}
!128 = distinct !{!128, !127, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller29AdaptiveConcurrencyControllerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_: argument 0"}
!129 = !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs8_NtNtCsUrhh0HcRih_5tokio4sync5mutexINtBJ_5MutexNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller26ConcurrencyControllerStateE4lock0EB1B_}
!130 = !{!122}
!131 = !{!124}
!132 = !{!124, !122}
!133 = !{!126}
!134 = !{!128}
!135 = !{!128, !126}
!136 = distinct !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBL_6RwLockINtNtB4_6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEE4read00ECsiAynQAjgDuT_10xet_client, ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync15batch_semaphore7AcquireECsiAynQAjgDuT_10xet_client, null, null, null, null, null, null}
!137 = distinct !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBL_6RwLockINtNtB4_6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEE5write00ECsiAynQAjgDuT_10xet_client, ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync15batch_semaphore7AcquireECsiAynQAjgDuT_10xet_client, null, null, null, null, null, null}
!138 = distinct !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBL_6RwLockINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1C_9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEE4read00ECsiAynQAjgDuT_10xet_client, ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync15batch_semaphore7AcquireECsiAynQAjgDuT_10xet_client, null, null, null, null, null, null}
!139 = distinct !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBL_6RwLockINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1C_9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEE5write00ECsiAynQAjgDuT_10xet_client, ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync15batch_semaphore7AcquireECsiAynQAjgDuT_10xet_client, null, null, null, null, null, null}
!140 = distinct !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBL_6RwLockINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1C_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEE4read00EB3D_, ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync15batch_semaphore7AcquireECsiAynQAjgDuT_10xet_client, null, null, null, null, null, null}
!141 = distinct !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBL_6RwLockINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtB1C_9data_hash8DataHashNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client11XorbStorageEE5write00EB3D_, ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync15batch_semaphore7AcquireECsiAynQAjgDuT_10xet_client, null, null, null, null, null, null}
!142 = distinct !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBL_6RwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEE4read00ECsiAynQAjgDuT_10xet_client, ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync15batch_semaphore7AcquireECsiAynQAjgDuT_10xet_client, null, null, null, null, null, null}
!143 = distinct !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBL_6RwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEE5write00ECsiAynQAjgDuT_10xet_client, ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync15batch_semaphore7AcquireECsiAynQAjgDuT_10xet_client, null, null, null, null, null, null}
!144 = distinct !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBL_6RwLockNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardE4read00ECsiAynQAjgDuT_10xet_client, ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync15batch_semaphore7AcquireECsiAynQAjgDuT_10xet_client, null, null, null, null, null, null}
!145 = distinct !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBL_6RwLockNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardE5write00ECsiAynQAjgDuT_10xet_client, ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync15batch_semaphore7AcquireECsiAynQAjgDuT_10xet_client, null, null, null, null, null, null}
!146 = distinct !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtBG_12MemoryClient14xorb_is_tagged0EBM_, ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBJ_6RwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEE4read0ECsiAynQAjgDuT_10xet_client, ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMsc_NtNtCsUrhh0HcRih_5tokio4sync6rwlockINtBL_6RwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEE4read00ECsiAynQAjgDuT_10xet_client, ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync15batch_semaphore7AcquireECsiAynQAjgDuT_10xet_client, null, null, null, null, null, null}
!147 = distinct !{!147, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsiAynQAjgDuT_10xet_client"}
!148 = distinct !{!148, !147, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsiAynQAjgDuT_10xet_client: argument 0"}
!149 = distinct !{!149, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsiAynQAjgDuT_10xet_client"}
!150 = distinct !{!150, !149, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsiAynQAjgDuT_10xet_client: argument 0"}
!151 = distinct !{!151, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client"}
!152 = distinct !{!152, !151, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client: argument 0"}
!153 = distinct !{!153, !"_RNvXs1_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!154 = distinct !{!154, !153, !"_RNvXs1_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!155 = distinct !{!155, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsiAynQAjgDuT_10xet_client"}
!156 = distinct !{!156, !155, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsiAynQAjgDuT_10xet_client: argument 0"}
!157 = distinct !{!157, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsiAynQAjgDuT_10xet_client"}
!158 = distinct !{!158, !157, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsiAynQAjgDuT_10xet_client: argument 0"}
!159 = distinct !{!159, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client"}
!160 = distinct !{!160, !159, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client: argument 0"}
!161 = distinct !{!161, !"_RNvXs1_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!162 = distinct !{!162, !161, !"_RNvXs1_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!163 = !{!148}
!164 = !{!150}
!165 = !{!152}
!166 = !{!154}
!167 = !{!154, !152, !150, !148}
!168 = !{!156}
!169 = !{!158}
!170 = !{!160}
!171 = !{!162}
!172 = !{!162, !160, !158, !156}
!173 = distinct !{!173, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsiAynQAjgDuT_10xet_client"}
!174 = distinct !{!174, !173, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsiAynQAjgDuT_10xet_client: argument 0"}
!175 = distinct !{!175, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsiAynQAjgDuT_10xet_client"}
!176 = distinct !{!176, !175, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsiAynQAjgDuT_10xet_client: argument 0"}
!177 = distinct !{!177, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client"}
!178 = distinct !{!178, !177, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client: argument 0"}
!179 = distinct !{!179, !"_RNvXs1_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!180 = distinct !{!180, !179, !"_RNvXs1_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!181 = distinct !{!181, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsiAynQAjgDuT_10xet_client"}
!182 = distinct !{!182, !181, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsiAynQAjgDuT_10xet_client: argument 0"}
!183 = distinct !{!183, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsiAynQAjgDuT_10xet_client"}
!184 = distinct !{!184, !183, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsiAynQAjgDuT_10xet_client: argument 0"}
!185 = distinct !{!185, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client"}
!186 = distinct !{!186, !185, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client: argument 0"}
!187 = distinct !{!187, !"_RNvXs1_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!188 = distinct !{!188, !187, !"_RNvXs1_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!189 = !{!174}
!190 = !{!176}
!191 = !{!178}
!192 = !{!180}
!193 = !{!180, !178, !176, !174}
!194 = !{!182}
!195 = !{!184}
!196 = !{!186}
!197 = !{!188}
!198 = !{!188, !186, !184, !182}
!199 = distinct !{!199, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsiAynQAjgDuT_10xet_client"}
!200 = distinct !{!200, !199, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsiAynQAjgDuT_10xet_client: argument 0"}
!201 = distinct !{!201, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB1R_4SyncEL_EECsiAynQAjgDuT_10xet_client"}
!202 = distinct !{!202, !201, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB1R_4SyncEL_EECsiAynQAjgDuT_10xet_client: argument 0"}
!203 = distinct !{!203, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtNtCskKLDkoKarTP_4core3ops8function2FnTyyyEEp6OutputuNtNtBO_6marker4SendNtB1E_4SyncEL_ENtNtBM_4drop4Drop4dropCsiAynQAjgDuT_10xet_client"}
!204 = distinct !{!204, !203, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtNtCskKLDkoKarTP_4core3ops8function2FnTyyyEEp6OutputuNtNtBO_6marker4SendNtB1E_4SyncEL_ENtNtBM_4drop4Drop4dropCsiAynQAjgDuT_10xet_client: argument 0"}
!205 = distinct !{!205, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsiAynQAjgDuT_10xet_client"}
!206 = distinct !{!206, !205, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsiAynQAjgDuT_10xet_client: argument 0"}
!207 = distinct !{!207, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB1R_4SyncEL_EECsiAynQAjgDuT_10xet_client"}
!208 = distinct !{!208, !207, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB1R_4SyncEL_EECsiAynQAjgDuT_10xet_client: argument 0"}
!209 = distinct !{!209, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtNtCskKLDkoKarTP_4core3ops8function2FnTyyyEEp6OutputuNtNtBO_6marker4SendNtB1E_4SyncEL_ENtNtBM_4drop4Drop4dropCsiAynQAjgDuT_10xet_client"}
!210 = distinct !{!210, !209, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtNtCskKLDkoKarTP_4core3ops8function2FnTyyyEEp6OutputuNtNtBO_6marker4SendNtB1E_4SyncEL_ENtNtBM_4drop4Drop4dropCsiAynQAjgDuT_10xet_client: argument 0"}
!211 = distinct !{!211, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoEEB1h_"}
!212 = distinct !{!212, !211, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoEEB1h_: argument 0"}
!213 = distinct !{!213, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_"}
!214 = distinct !{!214, !213, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_: argument 0"}
!215 = distinct !{!215, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller16ConnectionPermitEBJ_"}
!216 = distinct !{!216, !215, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller16ConnectionPermitEBJ_: argument 0"}
!217 = distinct !{!217, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoEEB1h_"}
!218 = distinct !{!218, !217, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoEEB1h_: argument 0"}
!219 = distinct !{!219, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_"}
!220 = distinct !{!220, !219, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_: argument 0"}
!221 = distinct !{!221, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoEEB1h_"}
!222 = distinct !{!222, !221, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoEEB1h_: argument 0"}
!223 = distinct !{!223, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_"}
!224 = distinct !{!224, !223, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_: argument 0"}
!225 = distinct !{!225, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller16ConnectionPermitEBJ_"}
!226 = distinct !{!226, !225, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller16ConnectionPermitEBJ_: argument 0"}
!227 = distinct !{!227, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoEEB1h_"}
!228 = distinct !{!228, !227, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoEEB1h_: argument 0"}
!229 = distinct !{!229, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_"}
!230 = distinct !{!230, !229, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_: argument 0"}
!231 = distinct !{!231, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsiAynQAjgDuT_10xet_client"}
!232 = distinct !{!232, !231, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsiAynQAjgDuT_10xet_client: argument 0"}
!233 = distinct !{!233, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB1R_4SyncEL_EECsiAynQAjgDuT_10xet_client"}
!234 = distinct !{!234, !233, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB1R_4SyncEL_EECsiAynQAjgDuT_10xet_client: argument 0"}
!235 = distinct !{!235, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtNtCskKLDkoKarTP_4core3ops8function2FnTyyyEEp6OutputuNtNtBO_6marker4SendNtB1E_4SyncEL_ENtNtBM_4drop4Drop4dropCsiAynQAjgDuT_10xet_client"}
!236 = distinct !{!236, !235, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtNtCskKLDkoKarTP_4core3ops8function2FnTyyyEEp6OutputuNtNtBO_6marker4SendNtB1E_4SyncEL_ENtNtBM_4drop4Drop4dropCsiAynQAjgDuT_10xet_client: argument 0"}
!237 = distinct !{!237, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsiAynQAjgDuT_10xet_client"}
!238 = distinct !{!238, !237, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsiAynQAjgDuT_10xet_client: argument 0"}
!239 = distinct !{!239, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB1R_4SyncEL_EECsiAynQAjgDuT_10xet_client"}
!240 = distinct !{!240, !239, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTyyyEEp6OutputuNtNtB4_6marker4SendNtB1R_4SyncEL_EECsiAynQAjgDuT_10xet_client: argument 0"}
!241 = distinct !{!241, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtNtCskKLDkoKarTP_4core3ops8function2FnTyyyEEp6OutputuNtNtBO_6marker4SendNtB1E_4SyncEL_ENtNtBM_4drop4Drop4dropCsiAynQAjgDuT_10xet_client"}
!242 = distinct !{!242, !241, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtNtCskKLDkoKarTP_4core3ops8function2FnTyyyEEp6OutputuNtNtBO_6marker4SendNtB1E_4SyncEL_ENtNtBM_4drop4Drop4dropCsiAynQAjgDuT_10xet_client: argument 0"}
end_hunk_9
