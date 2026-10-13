Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/shadowsocks_rust-8c1b79cab299925f.shadowsocks_rust.79f42262b046863e-cgu.0?download=true
inline.NumInlined: 5128
inline.NumDeleted: 2462
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust
define internal noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !14, !align !27, !noundef !14
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #30
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRRINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBC_6format13DefaultFieldsENtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !14, !align !27, !noundef !14
  %.val = load ptr, ptr %i.a, align 8, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.b = getelementptr i8, ptr %.val, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !noalias !10874, !nonnull !14, !noundef !14
  %i.c = getelementptr i8, ptr %.val, i64 16
  %.val1.i = load i64, ptr %i.c, align 8, !noalias !10874, !noundef !14
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #30
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !14, !noundef !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !14
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #30
  ret i1 %i.d
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1m_NtCsgCecv3eZDcN_5alloc6stringNtB6_13FromUtf8ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @698, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @699, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @696, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @700, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @697) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1p_NtCslxdWNweD0x2_11shadowsocks6configNtB6_15ServerAddrErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @701, i64 noundef 15) #30
  ret i1 %i.a
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_4ModeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !19, !noundef !14
  %i.b = trunc nuw i8 %i.a to i1
  %. = select i1 %i.b, ptr @703, ptr @702
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %., i64 noundef 9) #30
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtCsat9HgdBb3qc_16shadowsocks_rust6configNtB5_11ConfigErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = load i64, ptr %0, align 8, !range !59, !noundef !14 ; 2 uses
  %i.h = xor i64 %i.g, -9223372036854775808
  %i.i = icmp slt i64 %i.g, 0
  %i.j = select i1 %i.i, i64 %i.h, i64 2
  switch i64 %i.j, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.k, ptr %i.f, align 8, !captures !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.43.0..sroa_idx, align 8
  %i.l = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !14, !align !27, !noundef !14
  %i.o = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noundef nonnull @306, ptr noundef nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.p, ptr %i.d, align 8, !captures !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCseuwcdgGPBeX_5json55error5ErrorNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.418.0..sroa_idx, align 8
  %i.q = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !14, !align !27, !noundef !14
  %i.t = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @306, ptr noundef nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8, !captures !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCsgCecv3eZDcN_5alloc6string6StringNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.434.0..sroa_idx, align 8
  %i.u = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !14, !align !27, !noundef !14
  %i.x = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.w, ptr noundef nonnull @704, ptr noundef nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.1.in = phi i1 [ %i.o, %bb.c ], [ %i.t, %bb.d ], [ %i.x, %bb.e ]
  ret i1 %.sroa.0.1.in
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvXs2_NtNtCs5Xr050g3D4S_3std4hash6randomNtB5_13DefaultHasherNtNtCsf3Ta7LF998c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10887)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !10886, !noalias !10887, !noundef !14
  %i.c = add i64 %i.b, 8
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !10886, !noalias !10887
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !10886, !noalias !10887, !noundef !14 ; 5 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.g, i64 8) ; 2 uses
  %i.i = icmp ugt i64 %i.g, 3
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i.i = load i32, ptr %1, align 1, !alias.scope !10888, !noalias !10886
  %i.j = zext i32 %.sroa.014.0.copyload.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.k = or disjoint i64 %.sroa.03.0.i.i, 1
  %i.l = icmp samesign ult i64 %i.k, %i.h
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %1, i64 %.sroa.03.0.i.i
  %.sroa.015.0.copyload.i.i = load i16, ptr %i.m, align 1, !alias.scope !10888, !noalias !10886
  %i.n = zext i16 %.sroa.015.0.copyload.i.i to i64
  %i.o = shl nuw nsw i64 %.sroa.03.0.i.i, 3
  %i.p = shl nuw nsw i64 %i.n, %i.o
  %i.q = or i64 %i.p, %.sroa.0.0.i.i
  %i.r = or disjoint i64 %.sroa.03.0.i.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i.i = phi i64 [ %i.r, %bb.e ], [ %.sroa.03.0.i.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.0.0.i.i, %bb.d ] ; 2 uses
  %i.s = icmp samesign ult i64 %.sroa.03.1.i.i, %i.h
  br i1 %i.s, label %bb.g, label %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit.i

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i.i
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !10888, !noalias !10886, !noundef !14
  %i.v = zext i8 %i.u to i64
  %i.w = shl nuw nsw i64 %.sroa.03.1.i.i, 3
  %i.x = shl nuw nsw i64 %i.v, %i.w
  %i.y = or i64 %i.x, %.sroa.0.1.i.i
  br label %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit.i

_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.0.2.i.i = phi i64 [ %i.y, %bb.g ], [ %.sroa.0.1.i.i, %bb.f ]
  %i.z = shl i64 %i.e, 3
  %i.aa = and i64 %i.z, 56
  %i.ab = shl i64 %.sroa.0.2.i.i, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !10886, !noalias !10887, !noundef !14
  %i.ae = or i64 %i.ad, %i.ab                     ; 3 uses
  store i64 %i.ae, ptr %i.ac, align 8, !alias.scope !10886, !noalias !10887
  %i.af = icmp ugt i64 %i.e, 8
  br i1 %i.af, label %22, label %._crit_edge.i

bb.h:                                             ; preds = %._crit_edge.i, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.g, %._crit_edge.i ] ; 5 uses
  %i.ag = sub nuw nsw i64 8, %.sroa.0.0.i         ; 2 uses
  %i.ah = and i64 %i.ag, 7                        ; 4 uses
  %i.ai = and i64 %i.ag, 8
  %i.aj = icmp ult i64 %.sroa.0.0.i, %i.ai
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.promoted.i = load i64, ptr %0, align 8, !alias.scope !10886, !noalias !10887
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !10886, !noalias !10887
  %.promoted20.i = load i64, ptr %2, align 8, !alias.scope !10889, !noalias !10887 ; 3 uses
  %i.am = load i64, ptr %3, align 8, !alias.scope !10889, !noalias !10887
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.i
  %.sroa.07.0.copyload.i = load i64, ptr %4, align 1, !alias.scope !10887, !noalias !10886 ; 2 uses
  %5 = xor i64 %.sroa.07.0.copyload.i, %i.al      ; 3 uses
  %6 = add i64 %.promoted20.i, %.promoted.i       ; 3 uses
  %i.an = add i64 %5, %i.am                       ; 2 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %.promoted20.i, i64 %.promoted20.i, i64 13)
  %i.ap = xor i64 %i.ao, %6                       ; 3 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 16)
  %i.ar = xor i64 %i.an, %i.aq                    ; 3 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 32)
  %i.at = add i64 %i.an, %i.ap                    ; 3 uses
  %i.au = add i64 %i.ar, %i.as                    ; 2 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 17)
  %i.aw = xor i64 %i.at, %i.av
  %7 = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 21)
  %8 = xor i64 %7, %i.au
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 32)
  %i.ay = xor i64 %i.au, %.sroa.07.0.copyload.i
  %9 = add nuw nsw i64 %.sroa.0.0.i, 8
  store i64 %8, ptr %i.ak, align 8, !alias.scope !10886, !noalias !10887
  store i64 %i.aw, ptr %2, align 8, !alias.scope !10889, !noalias !10887
  store i64 %i.ax, ptr %3, align 8, !alias.scope !10889, !noalias !10887
  store i64 %i.ay, ptr %0, align 8, !alias.scope !10886, !noalias !10887
  br label %bb.j

._crit_edge.i:                                    ; preds = %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %10 = load i64, ptr %i.az, align 8, !alias.scope !10886, !noalias !10887, !noundef !14
  %11 = xor i64 %10, %i.ae                        ; 3 uses
  %12 = load i64, ptr %0, align 8, !alias.scope !10890, !noalias !10887, !noundef !14
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted19.i = load i64, ptr %13, align 8, !alias.scope !10890, !noalias !10887, !noundef !14 ; 3 uses
  %14 = add i64 %.promoted19.i, %12               ; 3 uses
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %16 = load i64, ptr %15, align 8, !alias.scope !10890, !noalias !10887, !noundef !14
  %i.ba = add i64 %16, %11                        ; 2 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %.promoted19.i, i64 %.promoted19.i, i64 13)
  %i.bc = xor i64 %i.bb, %14                      ; 3 uses
  %17 = tail call noundef i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 16)
  %18 = xor i64 %i.ba, %17                        ; 3 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 32)
  %i.be = add i64 %i.ba, %i.bc                    ; 3 uses
  %19 = add i64 %18, %i.bd                        ; 2 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 17)
  %i.bg = xor i64 %i.be, %i.bf
  store i64 %i.bg, ptr %13, align 8, !alias.scope !10890, !noalias !10887
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 21)
  %i.bi = xor i64 %i.bh, %19
  store i64 %i.bi, ptr %i.az, align 8, !alias.scope !10890, !noalias !10887
  %20 = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 32)
  store i64 %20, ptr %15, align 8, !alias.scope !10890, !noalias !10887
  %21 = xor i64 %19, %i.ae
  store i64 %21, ptr %0, align 8, !alias.scope !10886, !noalias !10887
  br label %bb.h

22:                                               ; preds = %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit.i
  %23 = add i64 %i.e, 8
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsat9HgdBb3qc_16shadowsocks_rust.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.1.lcssa.i = phi i64 [ %9, %bb.i ], [ %.sroa.0.0.i, %bb.h ] ; 3 uses
  %i.bj = icmp samesign ugt i64 %i.ah, 3
  br i1 %i.bj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa.i
  %.sroa.014.0.copyload.i16.i = load i32, ptr %i.bk, align 1, !alias.scope !10891, !noalias !10886
  %i.bl = zext i32 %.sroa.014.0.copyload.i16.i to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.03.0.i10.i = phi i64 [ 4, %bb.k ], [ 0, %bb.j ] ; 5 uses
  %.sroa.0.0.i11.i = phi i64 [ %i.bl, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.bm = or disjoint i64 %.sroa.03.0.i10.i, 1
  %i.bn = icmp samesign ult i64 %i.bm, %i.ah
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa.i
  %i.bp = getelementptr i8, ptr %i.bo, i64 %.sroa.03.0.i10.i
  %.sroa.015.0.copyload.i15.i = load i16, ptr %i.bp, align 1, !alias.scope !10891, !noalias !10886
  %i.bq = zext i16 %.sroa.015.0.copyload.i15.i to i64
  %i.br = shl nuw nsw i64 %.sroa.03.0.i10.i, 3
  %i.bs = shl nuw nsw i64 %i.bq, %i.br
  %i.bt = or i64 %i.bs, %.sroa.0.0.i11.i
  %i.bu = or disjoint i64 %.sroa.03.0.i10.i, 2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.03.1.i12.i = phi i64 [ %i.bu, %bb.m ], [ %.sroa.03.0.i10.i, %bb.l ] ; 3 uses
  %.sroa.0.1.i13.i = phi i64 [ %i.bt, %bb.m ], [ %.sroa.0.0.i11.i, %bb.l ] ; 2 uses
  %i.bv = icmp samesign ult i64 %.sroa.03.1.i12.i, %i.ah
  br i1 %i.bv, label %bb.o, label %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit17.i

bb.o:                                             ; preds = %bb.n
  %i.bw = add nsw i64 %.sroa.03.1.i12.i, %.sroa.0.1.lcssa.i ; 2 uses
  %i.bx = icmp ult i64 %i.bw, 8
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %i.bw
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !10891, !noalias !10886, !noundef !14
  %i.ca = zext i8 %i.bz to i64
  %i.cb = shl nuw nsw i64 %.sroa.03.1.i12.i, 3
  %i.cc = shl nuw nsw i64 %i.ca, %i.cb
  %i.cd = or i64 %i.cc, %.sroa.0.1.i13.i
  br label %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit17.i

_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit17.i: ; preds = %bb.o, %bb.n
  %.sroa.0.2.i14.i = phi i64 [ %i.cd, %bb.o ], [ %.sroa.0.1.i13.i, %bb.n ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i14.i, ptr %i.ce, align 8, !alias.scope !10886, !noalias !10887
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsat9HgdBb3qc_16shadowsocks_rust.exit

_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %22, %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit17.i
  %storemerge.i = phi i64 [ %23, %22 ], [ %i.ah, %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit17.i ]
  store i64 %storemerge.i, ptr %i.d, align 8, !alias.scope !10886, !noalias !10887
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs20vKyNBpNec_16tracing_appender7rolling7builderNtB5_9InitErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @709, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @710, i64 noundef 7, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @707, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @711, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @708) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs4_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatINtB5_6FormatNtB5_4FullINtNtNtB7_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EEINtB5_11FormatEventNtNtNtB9_8registry7sharded8RegistryNtB5_13DefaultFieldsE12format_eventCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly captures(none) dereferenceable(11) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [40 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 50 uses
  %i.j = alloca [24 x i8], align 8                ; 20 uses
  %i.k = alloca [656 x i8], align 8               ; 24 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [17 x i8], align 1                ; 8 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [17 x i8], align 1                ; 8 uses
  %i.p = alloca [48 x i8], align 8                ; 9 uses
  %i.q = alloca [17 x i8], align 1                ; 8 uses
  %i.r = alloca [17 x i8], align 1                ; 8 uses
  %i.s = alloca [4 x i8], align 4                 ; 4 uses
  %i.t = alloca [48 x i8], align 8                ; 9 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [72 x i8], align 8                ; 13 uses
  %i.w = alloca [72 x i8], align 8                ; 13 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [72 x i8], align 8                ; 17 uses
  %i.z = alloca [72 x i8], align 8                ; 17 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [72 x i8], align 8               ; 16 uses
  %i.ac = alloca [48 x i8], align 8               ; 9 uses
  %i.ad = alloca [72 x i8], align 8               ; 15 uses
  %i.ae = alloca [72 x i8], align 8               ; 15 uses
  %i.af = alloca [8 x i8], align 8                ; 5 uses
  %i.ag = alloca [8 x i8], align 8                ; 5 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [72 x i8], align 8               ; 15 uses
  %i.aj = alloca [40 x i8], align 8               ; 7 uses
  %i.ak = alloca [40 x i8], align 8               ; 8 uses
  %i.al = alloca [672 x i8], align 8              ; 13 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [8 x i8], align 8                ; 8 uses
  %i.ap = alloca [8 x i8], align 8                ; 5 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [8 x i8], align 8                ; 4 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [8 x i8], align 8                ; 10 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = alloca [120 x i8], align 8              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @_RNvXse_Cs6d6qJmr6Ia5_11tracing_logNtNtCs1kwRxRulhfk_12tracing_core5event5EventNtB5_14NormalizeEvent19normalized_metadata(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) #30
  %i.ay = load i64, ptr %i.ax, align 8, !range !22, !noundef !14
  %.not = icmp eq i64 %i.ay, -1                   ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !14, !align !27 ; 7 uses
  %.sroa.01.0 = select i1 %.not, ptr %i.ba, ptr %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.bc = load i8, ptr %i.bb, align 1, !range !28, !noundef !14 ; 2 uses
  %.not441 = icmp eq i8 %i.bc, 2
  br i1 %.not441, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 %i.bc, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.val449 = load i8, ptr %0, align 1, !range !19, !noundef !14
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val450 = load i24, ptr %i.bd, align 1         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11082)
  %i.be = trunc nuw i8 %.val449 to i1
  br i1 %i.be, label %bb.d, label %_RNvMs3_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatINtB5_6FormatNtB5_4FullINtNtNtB7_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EE16format_timestampCsat9HgdBb3qc_16shadowsocks_rust.exit.thread565

bb.d:                                             ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bg = load i8, ptr %i.bf, align 8, !range !19, !alias.scope !11082, !noundef !14
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bi = tail call fastcc noundef zeroext i1 @_RNvXs8_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt4time10time_crateINtB5_10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339ENtB7_10FormatTime11format_timeCsat9HgdBb3qc_16shadowsocks_rust(i24 %.val450, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #30
  br i1 %i.bi, label %bb.g, label %_RNvMs3_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatINtB5_6FormatNtB5_4FullINtNtNtB7_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EE16format_timestampCsat9HgdBb3qc_16shadowsocks_rust.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !11082
  store i8 0, ptr %i.o, align 1, !noalias !11082
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 1, ptr %.sroa.5.0..sroa_idx.i, align 1, !noalias !11082
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx.i, i8 0, i64 7, i1 false), !noalias !11082
  store i32 255, ptr %.sroa.13.0..sroa_idx.i, align 1, !noalias !11082
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 13
  store i32 255, ptr %.sroa.14.0..sroa_idx.i, align 1, !noalias !11082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !11082
  store ptr %i.o, ptr %i.n, align 8, !noalias !11082
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs2_NtCsimqtg22L1SV_12nu_ansi_term4ansiNtB5_6PrefixNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !11082
  %i.bj = call noundef zeroext i1 @_RNvMs_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatNtB4_6Writer9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @306, ptr noundef nonnull %i.n) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !11082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !11082
  br i1 %i.bj, label %_RNvMs3_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatINtB5_6FormatNtB5_4FullINtNtNtB7_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EE16format_timestampCsat9HgdBb3qc_16shadowsocks_rust.exit.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bk = load ptr, ptr %2, align 8, !alias.scope !11082, !nonnull !14, !noundef !14
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !11082, !nonnull !14, !align !27, !noundef !14
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !invariant.load !14, !nonnull !14
  %i.bp = tail call noundef zeroext i1 %i.bo(ptr noundef nonnull %i.bk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @305, i64 noundef 14) #35, !inline_history !10894
  br i1 %i.bp, label %_RNvMs3_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatINtB5_6FormatNtB5_4FullINtNtNtB7_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EE16format_timestampCsat9HgdBb3qc_16shadowsocks_rust.exit.thread, label %_RNvMs3_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatINtB5_6FormatNtB5_4FullINtNtNtB7_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EE16format_timestampCsat9HgdBb3qc_16shadowsocks_rust.exit

bb.h:                                             ; preds = %bb.f
  %i.bq = call fastcc noundef zeroext i1 @_RNvXs8_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt4time10time_crateINtB5_10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339ENtB7_10FormatTime11format_timeCsat9HgdBb3qc_16shadowsocks_rust(i24 %.val450, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #30
  br i1 %i.bq, label %bb.i, label %.split

bb.i:                                             ; preds = %bb.h
  %i.br = load ptr, ptr %2, align 8, !alias.scope !11082, !nonnull !14, !noundef !14
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !11082, !nonnull !14, !align !27, !noundef !14
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !14, !nonnull !14
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.br, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @305, i64 noundef 14) #35, !inline_history !10894
  br i1 %i.bw, label %_RNvMs3_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatINtB5_6FormatNtB5_4FullINtNtNtB7_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EE16format_timestampCsat9HgdBb3qc_16shadowsocks_rust.exit.thread, label %.split

.split:                                           ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !11082
  store i8 0, ptr %i.m, align 1, !noalias !11082
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i8 1, ptr %.sroa.5.0..sroa_idx3.i, align 1, !noalias !11082
  %.sroa.6.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %.sroa.13.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %i.m, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx5.i, i8 0, i64 7, i1 false), !noalias !11082
  store i32 255, ptr %.sroa.13.0..sroa_idx19.i, align 1, !noalias !11082
  %.sroa.14.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.m, i64 13
  store i32 255, ptr %.sroa.14.0..sroa_idx21.i, align 1, !noalias !11082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !11082
  store ptr %i.m, ptr %i.l, align 8, !noalias !11082
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs4_NtCsimqtg22L1SV_12nu_ansi_term4ansiNtB5_6SuffixNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.438.0..sroa_idx.i, align 8, !noalias !11082
  %i.bx = call noundef zeroext i1 @_RNvMs_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatNtB4_6Writer9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @307, ptr noundef nonnull %i.l) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !11082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !11082
  br i1 %i.bx, label %_RNvMs3_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatINtB5_6FormatNtB5_4FullINtNtNtB7_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EE16format_timestampCsat9HgdBb3qc_16shadowsocks_rust.exit.thread, label %_RNvMs3_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatINtB5_6FormatNtB5_4FullINtNtNtB7_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EE16format_timestampCsat9HgdBb3qc_16shadowsocks_rust.exit.thread565

_RNvMs3_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatINtB5_6FormatNtB5_4FullINtNtNtB7_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EE16format_timestampCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.e, %bb.g
  %i.by = load ptr, ptr %2, align 8, !alias.scope !11082, !nonnull !14, !noundef !14
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !11082, !nonnull !14, !align !27, !noundef !14
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !invariant.load !14, !nonnull !14
  %i.cd = tail call noundef zeroext i1 %i.cc(ptr noundef nonnull %i.by, i32 noundef 32) #35, !inline_history !10894
  br i1 %i.cd, label %_RNvMs3_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatINtB5_6FormatNtB5_4FullINtNtNtB7_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EE16format_timestampCsat9HgdBb3qc_16shadowsocks_rust.exit.thread, label %_RNvMs3_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatINtB5_6FormatNtB5_4FullINtNtNtB7_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EE16format_timestampCsat9HgdBb3qc_16shadowsocks_rust.exit.thread565

_RNvMs3_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatINtB5_6FormatNtB5_4FullINtNtNtB7_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EE16format_timestampCsat9HgdBb3qc_16shadowsocks_rust.exit.thread565: ; preds = %bb.c, %.split, %_RNvMs3_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatINtB5_6FormatNtB5_4FullINtNtNtB7_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EE16format_timestampCsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.cf = load i8, ptr %i.ce, align 1, !range !19, !noundef !14
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.k, %_RNvMs3_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatINtB5_6FormatNtB5_4FullINtNtNtB7_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EE16format_timestampCsat9HgdBb3qc_16shadowsocks_rust.exit.thread565
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ci = load i8, ptr %i.ch, align 1, !range !19, !noundef !14
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.m, label %bb.l

bb.k:                                             ; preds = %_RNvMs3_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatINtB5_6FormatNtB5_4FullINtNtNtB7_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EE16format_timestampCsat9HgdBb3qc_16shadowsocks_rust.exit.thread565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cl = load i8, ptr %i.ck, align 8, !range !19, !noundef !14
  store ptr %.sroa.01.0, ptr %i.aw, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i8 %i.cl, ptr %i.cm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store ptr %i.aw, ptr %i.av, align 8
  %.sroa.4297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr @_RNvXsl_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatNtB5_8FmtLevelNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4297.0..sroa_idx, align 8
  %i.cn = call noundef zeroext i1 @_RNvMs_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatNtB4_6Writer9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @307, ptr noundef nonnull %i.av) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
end_hunk_0
