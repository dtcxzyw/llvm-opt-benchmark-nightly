Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/ufo2fontir-46da0edc7bce67f1.ufo2fontir.1df759023741b243-cgu.10?download=true
inline.NumInlined: 674
inline.NumDeleted: 374
begin_hunk_0_@_RINvXNvXNvNtCsgdm2QMcbaeA_10fontdrasil5typess_1__NtB8_9GlyphNameNtNtCs7N5MyPZKytm_10serde_core2de11Deserialize11deserializeNtB3_9___VisitorNtB12_7Visitor20visit_newtype_structQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB2T_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir:bb.a
    i64 -3, label %bb.e
    i64 -2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !857
  store i64 -9223372036854775807, ptr %i.u, align 8, !noalias !857
  %i.z = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaGmGRvprAGn_5plist5errorNtB5_9ErrorKind16without_position(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.u), !noalias !859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !857
  br label %_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorECs2zvA5OmMqFb_10ufo2fontir.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !857, !nonnull !5, !align !13, !noundef !5
  br label %_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorECs2zvA5OmMqFb_10ufo2fontir.exit.thread

bb.g:                                             ; preds = %bb.d
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !857 ; 15 uses
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.16.0.copyload36.i.i = load i64, ptr %.sroa.16.0..sroa_idx.i.i, align 16, !noalias !857 ; 11 uses
  %.sroa.16.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.16.0.copyload37.i.i = load i64, ptr %.sroa.16.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !857 ; 4 uses
  %.sroa.16.sroa.0.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.16.0.copyload36.i.i to i32 ; 2 uses
  %i.ac = icmp ne i64 %i.y, -9223372036854775800
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = xor i64 %i.y, -9223372036854775808      ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 10
  %i.af = select i1 %i.ae, i64 %i.ad, i64 8
  switch i64 %i.af, label %bb.h [
    i64 0, label %bb.i
    i64 1, label %bb.j
    i64 2, label %bb.k
    i64 3, label %bb.l
    i64 4, label %bb.m
    i64 5, label %bb.n
    i64 6, label %bb.o
    i64 7, label %bb.p
    i64 8, label %bb.q
    i64 9, label %bb.r
  ]

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ag = trunc nuw i64 %.sroa.5.0.copyload.i.i to i1
  %.sroa.16.0.copyload36..i.i = select i1 %i.ag, i64 %.sroa.16.0.copyload36.i.i, i64 undef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !857
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %1, ptr %i.ah, align 8, !noalias !857
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i8 0, ptr %i.ai, align 8, !noalias !857
  store i64 %.sroa.5.0.copyload.i.i, ptr %i.r, align 8, !noalias !857
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.16.0.copyload36..i.i, ptr %i.aj, align 8, !noalias !857
  call void @_RINvYNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorNtNtCs7N5MyPZKytm_10serde_core2de7Visitor9visit_seqINtNtCsaGmGRvprAGn_5plist2de15MapAndSeqAccessINtNtB1V_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.r), !noalias !859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !857
  %i.ak = load i8, ptr %i.s, align 8, !range !25, !noalias !857, !noundef !5 ; 2 uses
  %i.al = icmp eq i8 %i.ak, -1
  br i1 %i.al, label %bb.s, label %bb.t

bb.j:                                             ; preds = %bb.g
  %i.am = trunc nuw i64 %.sroa.5.0.copyload.i.i to i1
  %.sroa.16.0.copyload36.350.i.i = select i1 %i.am, i64 %.sroa.16.0.copyload36.i.i, i64 undef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !857
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %1, ptr %i.an, align 8, !noalias !857
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i8 0, ptr %i.ao, align 8, !noalias !857
  store i64 %.sroa.5.0.copyload.i.i, ptr %i.l, align 8, !noalias !857
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.sroa.16.0.copyload36.350.i.i, ptr %i.ap, align 8, !noalias !857
  call void @_RINvYNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorNtNtCs7N5MyPZKytm_10serde_core2de7Visitor9visit_mapINtNtCsaGmGRvprAGn_5plist2de15MapAndSeqAccessINtNtB1V_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.l), !noalias !859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !857
  %i.aq = load i8, ptr %i.m, align 8, !range !25, !noalias !857, !noundef !5 ; 2 uses
  %i.ar = icmp eq i8 %i.aq, -1
  br i1 %i.ar, label %bb.ao, label %bb.ap

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !857
  store i64 %i.y, ptr %i.h, align 16, !noalias !857
  %.sroa.5.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx9.i.i, align 8, !noalias !857
  %.sroa.16.0..sroa_idx22.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.16.0.copyload36.i.i, ptr %.sroa.16.0..sroa_idx22.i.i, align 16, !noalias !857
  %.sroa.16.0..sroa_idx22.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %.sroa.16.0.copyload37.i.i, ptr %.sroa.16.0..sroa_idx22.sroa_idx.i.i, align 8, !noalias !857
  %i.as = invoke noundef nonnull align 8 ptr @_RNvNtCsaGmGRvprAGn_5plist5error21unexpected_event_type(i8 noundef 10, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.h)
          to label %bb.bk unwind label %bb.bj, !noalias !859

bb.l:                                             ; preds = %bb.g
  %i.at = trunc i64 %.sroa.5.0.copyload.i.i to i1
  call void @_RINvYNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorNtNtCs7N5MyPZKytm_10serde_core2de7Visitor10visit_boolNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, i1 noundef zeroext %i.at)
  br label %_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorECs2zvA5OmMqFb_10ufo2fontir.exit

bb.m:                                             ; preds = %bb.g
  %.not337.i.i = icmp eq i64 %.sroa.5.0.copyload.i.i, -1
  br i1 %.not337.i.i, label %bb.bm, label %bb.bl

bb.n:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.av = load i8, ptr %i.au, align 16, !range !9, !alias.scope !858, !noundef !5
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.bo, label %bb.bn

bb.o:                                             ; preds = %bb.g
  %.sroa.16.sroa.11.0.insert.ext.i.i = zext i64 %.sroa.16.0.copyload37.i.i to i128
  %.sroa.16.sroa.11.0.insert.shift.i.i = shl nuw i128 %.sroa.16.sroa.11.0.insert.ext.i.i, 64 ; 2 uses
  %.sroa.16.sroa.0.0.insert.ext.i.i = zext i64 %.sroa.16.0.copyload36.i.i to i128
  %.sroa.16.sroa.0.0.insert.insert.i.i = or disjoint i128 %.sroa.16.sroa.11.0.insert.shift.i.i, %.sroa.16.sroa.0.0.insert.ext.i.i ; 2 uses
  %i.ax = icmp slt i128 %.sroa.16.sroa.11.0.insert.shift.i.i, 0
  %i.ay = icmp sgt i128 %.sroa.16.sroa.0.0.insert.insert.i.i, 18446744073709551615
  %or.cond4.i.i = or i1 %i.ax, %i.ay
  br i1 %or.cond4.i.i, label %bb.bp, label %bb.bq

bb.p:                                             ; preds = %bb.g
  %i.az = bitcast i64 %.sroa.5.0.copyload.i.i to double
  call void @_RINvYNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorNtNtCs7N5MyPZKytm_10serde_core2de7Visitor9visit_f64NtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, double noundef %i.az)
  br label %_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorECs2zvA5OmMqFb_10ufo2fontir.exit

bb.q:                                             ; preds = %bb.g
  %.not336.i.i = icmp eq i64 %i.y, -1
  br i1 %.not336.i.i, label %bb.bu, label %bb.bt

bb.r:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.bb = load i8, ptr %i.ba, align 16, !range !9, !alias.scope !858, !noundef !5
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.bw, label %bb.bv

bb.s:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !857, !nonnull !5, !align !13, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !857
  br label %_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorECs2zvA5OmMqFb_10ufo2fontir.exit.thread

bb.t:                                             ; preds = %bb.i
  %.sroa.4258.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4258.0..sroa_idx.i.i, i64 7, i1 false), !noalias !857
  %.sroa.5259.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5259.0.copyload.i.i = load ptr, ptr %.sroa.5259.0..sroa_idx.i.i, align 8, !noalias !857
  %.sroa.6260.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.6260.0.copyload.i.i = load i64, ptr %.sroa.6260.0..sroa_idx.i.i, align 8, !noalias !857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !857
  store i8 %i.ak, ptr %i.t, align 8, !noalias !857
  %.sroa.5196.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 5 uses
  store ptr %.sroa.5259.0.copyload.i.i, ptr %.sroa.5196.0..sroa_idx.i.i, align 8, !noalias !857
  %.sroa.6197.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %.sroa.6260.0.copyload.i.i, ptr %.sroa.6197.0..sroa_idx.i.i, align 8, !noalias !857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !857
  %.sroa.0261.0.copyload.i.i = load i64, ptr %1, align 16, !alias.scope !858 ; 3 uses
  store i64 -4, ptr %1, align 16, !alias.scope !858
  %.not343.i.i = icmp eq i64 %.sroa.0261.0.copyload.i.i, -4
  br i1 %.not343.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i64 %.sroa.0261.0.copyload.i.i, ptr %i.p, align 16, !noalias !857
  %.sroa.5263.0..sroa_idx264.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5263.0..sroa_idx264.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5249.0..sroa_idx.i.i, i64 24, i1 false), !noalias !859
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke fastcc void @_RNvXs3_NtCsaGmGRvprAGn_5plist6streamINtB5_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.p, ptr noalias nofree noundef align 8 dereferenceable(200) %i.bf)
          to label %thread-pre-split.i.i unwind label %.thread.i.i, !noalias !859

bb.w:                                             ; preds = %bb.ai, %.thread.i.i, %bb.ab
  %.pn347.i.i = phi { ptr, i32 } [ %i.bu, %.thread.i.i ], [ %i.bm, %bb.ai ], [ %i.bm, %bb.ab ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !860)
  call void @llvm.experimental.noalias.scope.decl(metadata !861)
  %i.bg = load i8, ptr %i.t, align 8, !range !18, !alias.scope !862, !noalias !857, !noundef !5
  %switch.i.i.i.i = icmp samesign ult i8 %i.bg, 25
  br i1 %switch.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs2zvA5OmMqFb_10ufo2fontir.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !863)
  call void @llvm.experimental.noalias.scope.decl(metadata !864)
  %i.bh = load ptr, ptr %.sroa.5196.0..sroa_idx.i.i, align 8, !alias.scope !865, !noalias !857, !nonnull !5, !noundef !5
  %i.bi = atomicrmw add ptr %i.bh, i64 -1 release, align 8, !noalias !866
  %i.bj = icmp eq i64 %i.bi, 1
  br i1 %i.bj, label %bb.y, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs2zvA5OmMqFb_10ufo2fontir.exit.i.i

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.5196.0..sroa_idx.i.i) #30
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs2zvA5OmMqFb_10ufo2fontir.exit.i.i unwind label %bb.aj, !noalias !859

thread-pre-split.i.i:                             ; preds = %bb.v
  %.pr367.i.i = load i64, ptr %i.p, align 16, !noalias !857
  br label %bb.z

bb.z:                                             ; preds = %thread-pre-split.i.i, %bb.u
  %i.bk = phi i64 [ %.pr367.i.i, %thread-pre-split.i.i ], [ %.sroa.0261.0.copyload.i.i, %bb.u ] ; 2 uses
  switch i64 %i.bk, label %bb.ag [
    i64 -3, label %bb.aa
    i64 -2, label %bb.ae
    i64 -9223372036854775806, label %bb.af
  ]

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !857
  store i64 -9223372036854775807, ptr %i.o, align 8, !noalias !857
  %i.bl = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsaGmGRvprAGn_5plist5errorNtB5_9ErrorKind16without_position(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o)
          to label %bb.ac unwind label %bb.ab, !noalias !859

bb.ab:                                            ; preds = %bb.ag, %bb.aa
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load i64, ptr %i.p, align 16, !range !7, !noalias !857, !noundef !5
  %i.bo = add i64 %i.bn, 3
  %i.bp = icmp ult i64 %i.bo, 2
  br i1 %i.bp, label %bb.w, label %bb.ai

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !857
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ag, %bb.ae, %bb.ac
  %.sink380.i.i = phi ptr [ %i.bl, %bb.ac ], [ %i.bt, %bb.ae ], [ %i.bv, %bb.ag ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.sink380.i.i, ptr %i.bq, align 8, !alias.scope !859
  store i8 -1, ptr %i.w, align 8, !alias.scope !859
  %i.br = load i64, ptr %i.p, align 16, !range !7, !noalias !857, !noundef !5
  %.off.i.i = add i64 %i.br, 3
  %switch.i.i = icmp ult i64 %.off.i.i, 2
  br i1 %switch.i.i, label %bb.ak, label %bb.an

bb.ae:                                            ; preds = %bb.z
  %i.bs = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !857, !nonnull !5, !align !13, !noundef !5
  br label %bb.ad

bb.af:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.q, ptr noundef nonnull align 16 dereferenceable(32) %i.p, i64 32, i1 false), !noalias !857
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.q)
          to label %bb.ah unwind label %.thread.i.i, !noalias !859

.thread.i.i:                                      ; preds = %bb.an, %bb.af, %bb.v
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.ag:                                            ; preds = %bb.z
  %2 = icmp ne i64 %i.bk, -9223372036854775800
  tail call void @llvm.assume(i1 %2)
  %i.bv = invoke noundef nonnull align 8 ptr @_RNvNtCsaGmGRvprAGn_5plist5error21unexpected_event_type(i8 noundef 2, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.p)
          to label %bb.ad unwind label %bb.ab, !noalias !859

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !857
  br label %_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorECs2zvA5OmMqFb_10ufo2fontir.exit

bb.ai:                                            ; preds = %bb.ab
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.p) #26
          to label %bb.w unwind label %bb.aj, !noalias !859

bb.aj:                                            ; preds = %bb.bj, %bb.be, %bb.au, %bb.ai, %bb.y
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !859
  unreachable

bb.ak:                                            ; preds = %bb.an, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !857
  call void @llvm.experimental.noalias.scope.decl(metadata !867)
  call void @llvm.experimental.noalias.scope.decl(metadata !868)
  %i.bx = load i8, ptr %i.t, align 8, !range !18, !alias.scope !869, !noalias !857, !noundef !5
  %switch.i.i360.i.i = icmp samesign ult i8 %i.bx, 25
  br i1 %switch.i.i360.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs2zvA5OmMqFb_10ufo2fontir.exit361.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !870)
  call void @llvm.experimental.noalias.scope.decl(metadata !871)
  %i.by = load ptr, ptr %.sroa.5196.0..sroa_idx.i.i, align 8, !alias.scope !872, !noalias !857, !nonnull !5, !noundef !5
  %i.bz = atomicrmw add ptr %i.by, i64 -1 release, align 8, !noalias !873
  %i.ca = icmp eq i64 %i.bz, 1
  br i1 %i.ca, label %bb.am, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs2zvA5OmMqFb_10ufo2fontir.exit361.i.i

bb.am:                                            ; preds = %bb.al
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.5196.0..sroa_idx.i.i) #30, !noalias !859
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs2zvA5OmMqFb_10ufo2fontir.exit361.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs2zvA5OmMqFb_10ufo2fontir.exit361.i.i: ; preds = %bb.am, %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !857
  br label %_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorECs2zvA5OmMqFb_10ufo2fontir.exit

bb.an:                                            ; preds = %bb.ad
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.p)
          to label %bb.ak unwind label %.thread.i.i, !noalias !859

bb.ao:                                            ; preds = %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !857, !nonnull !5, !align !13, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !857
  br label %_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorECs2zvA5OmMqFb_10ufo2fontir.exit.thread

bb.ap:                                            ; preds = %bb.j
  %.sroa.4266.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.sroa.4218.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4218.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4266.0..sroa_idx.i.i, i64 7, i1 false), !noalias !857
  %.sroa.5267.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.5267.0.copyload.i.i = load ptr, ptr %.sroa.5267.0..sroa_idx.i.i, align 8, !noalias !857
  %.sroa.6268.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.6268.0.copyload.i.i = load i64, ptr %.sroa.6268.0..sroa_idx.i.i, align 8, !noalias !857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !857
  store i8 %i.aq, ptr %i.n, align 8, !noalias !857
  %.sroa.5219.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 5 uses
  store ptr %.sroa.5267.0.copyload.i.i, ptr %.sroa.5219.0..sroa_idx.i.i, align 8, !noalias !857
  %.sroa.6220.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.sroa.6268.0.copyload.i.i, ptr %.sroa.6220.0..sroa_idx.i.i, align 8, !noalias !857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !857
  %.sroa.0269.0.copyload.i.i = load i64, ptr %1, align 16, !alias.scope !858 ; 3 uses
  store i64 -4, ptr %1, align 16, !alias.scope !858
  %.not338.i.i = icmp eq i64 %.sroa.0269.0.copyload.i.i, -4
  br i1 %.not338.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i64 %.sroa.0269.0.copyload.i.i, ptr %i.j, align 16, !noalias !857
  %.sroa.5271.0..sroa_idx272.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5271.0..sroa_idx272.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5249.0..sroa_idx.i.i, i64 24, i1 false), !noalias !859
  br label %bb.av

bb.ar:                                            ; preds = %bb.ap
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke fastcc void @_RNvXs3_NtCsaGmGRvprAGn_5plist6streamINtB5_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.j, ptr noalias nofree noundef align 8 dereferenceable(200) %i.cd)
          to label %thread-pre-split371.i.i unwind label %.thread373.i.i, !noalias !859

bb.as:                                            ; preds = %bb.be, %.thread373.i.i, %bb.ax
  %.pn.i.i = phi { ptr, i32 } [ %i.cs, %.thread373.i.i ], [ %i.ck, %bb.be ], [ %i.ck, %bb.ax ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !874)
  call void @llvm.experimental.noalias.scope.decl(metadata !875)
  %i.ce = load i8, ptr %i.n, align 8, !range !18, !alias.scope !876, !noalias !857, !noundef !5
  %switch.i.i362.i.i = icmp samesign ult i8 %i.ce, 25
  br i1 %switch.i.i362.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs2zvA5OmMqFb_10ufo2fontir.exit.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !877)
  call void @llvm.experimental.noalias.scope.decl(metadata !878)
  %i.cf = load ptr, ptr %.sroa.5219.0..sroa_idx.i.i, align 8, !alias.scope !879, !noalias !857, !nonnull !5, !noundef !5
  %i.cg = atomicrmw add ptr %i.cf, i64 -1 release, align 8, !noalias !880
  %i.ch = icmp eq i64 %i.cg, 1
  br i1 %i.ch, label %bb.au, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs2zvA5OmMqFb_10ufo2fontir.exit.i.i

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.5219.0..sroa_idx.i.i) #30
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs2zvA5OmMqFb_10ufo2fontir.exit.i.i unwind label %bb.aj, !noalias !859

thread-pre-split371.i.i:                          ; preds = %bb.ar
  %.pr372.i.i = load i64, ptr %i.j, align 16, !noalias !857
  br label %bb.av

bb.av:                                            ; preds = %thread-pre-split371.i.i, %bb.aq
  %i.ci = phi i64 [ %.pr372.i.i, %thread-pre-split371.i.i ], [ %.sroa.0269.0.copyload.i.i, %bb.aq ] ; 2 uses
  switch i64 %i.ci, label %bb.bc [
    i64 -3, label %bb.aw
    i64 -2, label %bb.ba
    i64 -9223372036854775806, label %bb.bb
  ]

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !857
  store i64 -9223372036854775807, ptr %i.i, align 8, !noalias !857
  %i.cj = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsaGmGRvprAGn_5plist5errorNtB5_9ErrorKind16without_position(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i)
          to label %bb.ay unwind label %bb.ax, !noalias !859

bb.ax:                                            ; preds = %bb.bc, %bb.aw
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load i64, ptr %i.j, align 16, !range !7, !noalias !857, !noundef !5
  %i.cm = add i64 %i.cl, 3
  %i.cn = icmp ult i64 %i.cm, 2
  br i1 %i.cn, label %bb.as, label %bb.be

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !857
  br label %bb.az

bb.az:                                            ; preds = %bb.bc, %bb.ba, %bb.ay
  %.sink382.i.i = phi ptr [ %i.cj, %bb.ay ], [ %i.cr, %bb.ba ], [ %i.ct, %bb.bc ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.sink382.i.i, ptr %i.co, align 8, !alias.scope !859
  store i8 -1, ptr %i.w, align 8, !alias.scope !859
  %i.cp = load i64, ptr %i.j, align 16, !range !7, !noalias !857, !noundef !5
  %.off355.i.i = add i64 %i.cp, 3
  %switch356.i.i = icmp ult i64 %.off355.i.i, 2
  br i1 %switch356.i.i, label %bb.bf, label %bb.bi

bb.ba:                                            ; preds = %bb.av
  %i.cq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !857, !nonnull !5, !align !13, !noundef !5
  br label %bb.az

bb.bb:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.k, ptr noundef nonnull align 16 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !857
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.k)
          to label %bb.bd unwind label %.thread373.i.i, !noalias !859

.thread373.i.i:                                   ; preds = %bb.bi, %bb.bb, %bb.ar
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.bc:                                            ; preds = %bb.av
  %3 = icmp ne i64 %i.ci, -9223372036854775800
  tail call void @llvm.assume(i1 %3)
  %i.ct = invoke noundef nonnull align 8 ptr @_RNvNtCsaGmGRvprAGn_5plist5error21unexpected_event_type(i8 noundef 2, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.j)
          to label %bb.az unwind label %bb.ax, !noalias !859

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !857
  br label %_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorECs2zvA5OmMqFb_10ufo2fontir.exit

bb.be:                                            ; preds = %bb.ax
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.j) #26
          to label %bb.as unwind label %bb.aj, !noalias !859

bb.bf:                                            ; preds = %bb.bi, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !857
  call void @llvm.experimental.noalias.scope.decl(metadata !881)
  call void @llvm.experimental.noalias.scope.decl(metadata !882)
  %i.cu = load i8, ptr %i.n, align 8, !range !18, !alias.scope !883, !noalias !857, !noundef !5
  %switch.i.i365.i.i = icmp samesign ult i8 %i.cu, 25
  br i1 %switch.i.i365.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs2zvA5OmMqFb_10ufo2fontir.exit366.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.experimental.noalias.scope.decl(metadata !884)
  call void @llvm.experimental.noalias.scope.decl(metadata !885)
  %i.cv = load ptr, ptr %.sroa.5219.0..sroa_idx.i.i, align 8, !alias.scope !886, !noalias !857, !nonnull !5, !noundef !5
  %i.cw = atomicrmw add ptr %i.cv, i64 -1 release, align 8, !noalias !887
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.bh, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs2zvA5OmMqFb_10ufo2fontir.exit366.i.i

bb.bh:                                            ; preds = %bb.bg
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.5219.0..sroa_idx.i.i) #30, !noalias !859
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs2zvA5OmMqFb_10ufo2fontir.exit366.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs2zvA5OmMqFb_10ufo2fontir.exit366.i.i: ; preds = %bb.bh, %bb.bg, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !857
  br label %_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorECs2zvA5OmMqFb_10ufo2fontir.exit

bb.bi:                                            ; preds = %bb.az
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.j)
          to label %bb.bf unwind label %.thread373.i.i, !noalias !859

bb.bj:                                            ; preds = %bb.k
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.h) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs2zvA5OmMqFb_10ufo2fontir.exit.i.i unwind label %bb.aj, !noalias !859

bb.bk:                                            ; preds = %bb.k
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.h), !noalias !859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !857
  br label %_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorECs2zvA5OmMqFb_10ufo2fontir.exit.thread

bb.bl:                                            ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !857
  store i64 %.sroa.5.0.copyload.i.i, ptr %i.g, align 8, !noalias !857
  %.sroa.16.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.16.0.copyload36.i.i, ptr %.sroa.16.8..sroa_idx.i.i, align 8, !noalias !857
  %.sroa.16.8..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.16.0.copyload37.i.i, ptr %.sroa.16.8..sroa_idx.sroa_idx.i.i, align 8, !noalias !857
  call void @_RINvXNvNtCs9NoVXegZYB5_8smol_str5serde8smol_strNtB3_14SmolStrVisitorNtNtCs7N5MyPZKytm_10serde_core2de7Visitor14visit_byte_bufNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !857
  br label %_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorECs2zvA5OmMqFb_10ufo2fontir.exit

bb.bm:                                            ; preds = %bb.m
  %i.cz = inttoptr i64 %.sroa.16.0.copyload36.i.i to ptr
  call void @_RINvXNvNtCs9NoVXegZYB5_8smol_str5serde8smol_strNtB3_14SmolStrVisitorNtNtCs7N5MyPZKytm_10serde_core2de7Visitor11visit_bytesNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cz, i64 noundef %.sroa.16.0.copyload37.i.i)
  br label %_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorECs2zvA5OmMqFb_10ufo2fontir.exit

bb.bn:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !857
  store i64 %.sroa.5.0.copyload.i.i, ptr %i.d, align 8, !noalias !857
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %.sroa.16.sroa.0.sroa.0.0.extract.trunc.i.i, ptr %i.da, align 8, !noalias !857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !857
  call void @_RNvMNtCsaGmGRvprAGn_5plist4dateNtB2_4Date13to_xml_format(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d), !noalias !859
  call void @_RINvXNvNtCs9NoVXegZYB5_8smol_str5serde8smol_strNtB3_14SmolStrVisitorNtNtCs7N5MyPZKytm_10serde_core2de7Visitor12visit_stringNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !857
  br label %_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorECs2zvA5OmMqFb_10ufo2fontir.exit

bb.bo:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !857
  store i64 %.sroa.5.0.copyload.i.i, ptr %i.f, align 8, !noalias !857
  %i.db = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %.sroa.16.sroa.0.sroa.0.0.extract.trunc.i.i, ptr %i.db, align 8, !noalias !857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !857
  call void @_RNvMNtCsaGmGRvprAGn_5plist4dateNtB2_4Date13to_xml_format(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.3228.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f), !noalias !859
  store i64 1, ptr %i.e, align 8, !noalias !857
  %.sroa.0225.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 0, ptr %.sroa.0225.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !noalias !857
  %.sroa.0225.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 1, ptr %.sroa.0225.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !noalias !857
  %.sroa.0225.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @2, ptr %.sroa.0225.sroa.0.sroa.6.0..sroa_idx.i.i, align 8, !noalias !857
  %.sroa.0225.sroa.0.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 10, ptr %.sroa.0225.sroa.0.sroa.7.0..sroa_idx.i.i, align 8, !noalias !857
  %.sroa.0225.sroa.0.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0225.sroa.0.sroa.8.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3228.i.i, i64 24, i1 false), !noalias !857
  %.sroa.0225.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 -1, ptr %.sroa.0225.sroa.4.0..sroa_idx.i.i, align 8, !noalias !857
  %.sroa.5226.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i64 0, ptr %.sroa.5226.0..sroa_idx.i.i, align 8, !noalias !857
  call void @_RINvYNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorNtNtCs7N5MyPZKytm_10serde_core2de7Visitor10visit_enumINtNtB13_5value21MapAccessDeserializerINtB1V_15MapDeserializerINtNtNtCsf3Ta7LF998c_4core5array4iter8IntoIterTReNtNtCsgCecv3eZDcN_5alloc6string6StringEKj1_ENtNtCsaGmGRvprAGn_5plist5error5ErrorEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !857
  br label %_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorECs2zvA5OmMqFb_10ufo2fontir.exit

bb.bp:                                            ; preds = %bb.o
  %i.dc = add i128 %.sroa.16.sroa.0.0.insert.insert.i.i, -9223372036854775808
  %or.cond5.i.i = icmp ult i128 %i.dc, -18446744073709551616
  br i1 %or.cond5.i.i, label %bb.br, label %bb.bs, !prof !26

bb.bq:                                            ; preds = %bb.o
  call void @_RINvYNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorNtNtCs7N5MyPZKytm_10serde_core2de7Visitor9visit_u64NtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, i64 noundef %.sroa.16.0.copyload36.i.i)
  br label %_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorECs2zvA5OmMqFb_10ufo2fontir.exit

bb.br:                                            ; preds = %bb.bp
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #29, !noalias !859
  unreachable

bb.bs:                                            ; preds = %bb.bp
  call void @_RINvYNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorNtNtCs7N5MyPZKytm_10serde_core2de7Visitor9visit_i64NtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, i64 noundef %.sroa.16.0.copyload36.i.i)
  br label %_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorECs2zvA5OmMqFb_10ufo2fontir.exit

bb.bt:                                            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !857
  store i64 %i.y, ptr %i.b, align 8, !noalias !857
  %.sroa.5.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx11.i.i, align 8, !noalias !857
  %.sroa.16.0..sroa_idx24.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.16.0.copyload36.i.i, ptr %.sroa.16.0..sroa_idx24.i.i, align 8, !noalias !857
  call void @_RINvXNvNtCs9NoVXegZYB5_8smol_str5serde8smol_strNtB3_14SmolStrVisitorNtNtCs7N5MyPZKytm_10serde_core2de7Visitor12visit_stringNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !857
  br label %_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorECs2zvA5OmMqFb_10ufo2fontir.exit

bb.bu:                                            ; preds = %bb.q
  %i.dd = inttoptr i64 %.sroa.5.0.copyload.i.i to ptr
  call void @_RINvXNvNtCs9NoVXegZYB5_8smol_str5serde8smol_strNtB3_14SmolStrVisitorNtNtCs7N5MyPZKytm_10serde_core2de7Visitor9visit_strNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dd, i64 noundef %.sroa.16.0.copyload36.i.i)
  br label %_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorECs2zvA5OmMqFb_10ufo2fontir.exit

bb.bv:                                            ; preds = %bb.r
  call void @_RINvYNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorNtNtCs7N5MyPZKytm_10serde_core2de7Visitor9visit_u64NtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, i64 noundef %.sroa.5.0.copyload.i.i)
  br label %_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorECs2zvA5OmMqFb_10ufo2fontir.exit

bb.bw:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !857
  store i64 1, ptr %i.a, align 8, !noalias !857
  %.sroa.0233.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.sroa.0233.sroa.4.0..sroa_idx.i.i, align 8, !noalias !857
  %.sroa.0233.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.0233.sroa.5.0..sroa_idx.i.i, align 8, !noalias !857
  %.sroa.0233.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @5, ptr %.sroa.0233.sroa.6.0..sroa_idx.i.i, align 8, !noalias !857
  %.sroa.0233.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 9, ptr %.sroa.0233.sroa.7.0..sroa_idx.i.i, align 8, !noalias !857
  %.sroa.0233.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.0233.sroa.8.0..sroa_idx.i.i, align 8, !noalias !857
  %.sroa.4234.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %.sroa.4234.0..sroa_idx.i.i, align 8, !noalias !857
  %.sroa.6236.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 0, ptr %.sroa.6236.0..sroa_idx.i.i, align 8, !noalias !857
  call void @_RINvYNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorNtNtCs7N5MyPZKytm_10serde_core2de7Visitor10visit_enumINtNtB13_5value21MapAccessDeserializerINtB1V_15MapDeserializerINtNtNtCsf3Ta7LF998c_4core5array4iter8IntoIterTReyEKj1_ENtNtCsaGmGRvprAGn_5plist5error5ErrorEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !857
  br label %_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorECs2zvA5OmMqFb_10ufo2fontir.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs2zvA5OmMqFb_10ufo2fontir.exit.i.i: ; preds = %bb.bj, %bb.au, %bb.at, %bb.as, %bb.y, %bb.x, %bb.w
  %.pn347.pn.i.i = phi { ptr, i32 } [ %i.cy, %bb.bj ], [ %.pn347.i.i, %bb.x ], [ %.pn347.i.i, %bb.y ], [ %.pn347.i.i, %bb.w ], [ %.pn.i.i, %bb.au ], [ %.pn.i.i, %bb.as ], [ %.pn.i.i, %bb.at ]
  resume { ptr, i32 } %.pn347.pn.i.i

_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorECs2zvA5OmMqFb_10ufo2fontir.exit.thread: ; preds = %bb.e, %bb.f, %bb.s, %bb.ao, %bb.bk
  %i.de = phi ptr [ %i.as, %bb.bk ], [ %i.be, %bb.s ], [ %i.cc, %bb.ao ], [ %i.ab, %bb.f ], [ %i.z, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !857
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3228.i.i), !noalias !856
  br label %bb.bx

_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorECs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %bb.l, %bb.p, %bb.ah, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs2zvA5OmMqFb_10ufo2fontir.exit361.i.i, %bb.bd, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs2zvA5OmMqFb_10ufo2fontir.exit366.i.i, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bq, %bb.bs, %bb.bt, %bb.bu, %bb.bv, %bb.bw
  %.pr = load i8, ptr %i.w, align 8               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !857
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3228.i.i), !noalias !856
  %i.df = icmp eq i8 %.pr, -1
  br i1 %i.df, label %_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorECs2zvA5OmMqFb_10ufo2fontir.exit._crit_edge, label %bb.by

_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorECs2zvA5OmMqFb_10ufo2fontir.exit._crit_edge: ; preds = %_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorECs2zvA5OmMqFb_10ufo2fontir.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.bx

bb.bx:                                            ; preds = %_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorECs2zvA5OmMqFb_10ufo2fontir.exit._crit_edge, %_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorECs2zvA5OmMqFb_10ufo2fontir.exit.thread
  %i.dg = phi ptr [ %.pre, %_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorECs2zvA5OmMqFb_10ufo2fontir.exit._crit_edge ], [ %i.de, %_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorECs2zvA5OmMqFb_10ufo2fontir.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dg, ptr %i.dh, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.bz

bb.by:                                            ; preds = %_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_strNtNvNtCs9NoVXegZYB5_8smol_str5serde8smol_str14SmolStrVisitorECs2zvA5OmMqFb_10ufo2fontir.exit
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.413.0..sroa_idx, i64 7, i1 false)
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.514.0.copyload = load ptr, ptr %.sroa.514.0..sroa_idx, align 8
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.615.0.copyload = load i64, ptr %.sroa.615.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i8 %.pr, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.514.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.615.0.copyload, ptr %.sroa.611.0..sroa_idx, align 8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_anyINtNvXs3f_NtB2K_5implsINtNtNtNtB1l_11collections5btree3map8BTreeMapppENtB2K_11Deserialize11deserialize10MapVisitorNtNtB1l_6string6StringNtNtB2f_4path7PathBufEECs2zvA5OmMqFb_10ufo2fontir(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 16 dereferenceable(256) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.13.sroa.7.i = alloca [24 x i8], align 8  ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.3210 = alloca [24 x i8], align 8         ; 2 uses
  %i.i = alloca [72 x i8], align 8                ; 11 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [96 x i8], align 8                ; 11 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [32 x i8], align 16               ; 9 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [32 x i8], align 16               ; 14 uses
  %i.s = alloca [32 x i8], align 16               ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 9 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [32 x i8], align 16               ; 14 uses
  %i.w = alloca [32 x i8], align 16               ; 5 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 9 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [32 x i8], align 16              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %.sroa.0229.0.copyload = load i64, ptr %1, align 16 ; 3 uses
  %.sroa.5231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i64 -4, ptr %1, align 16
  %.not = icmp eq i64 %.sroa.0229.0.copyload, -4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %.sroa.0229.0.copyload, ptr %i.ab, align 16
  %.sroa.5231.0..sroa_idx232 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5231.0..sroa_idx232, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5231.0..sroa_idx, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  call fastcc void @_RNvXs3_NtCsaGmGRvprAGn_5plist6streamINtB5_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.ab, ptr noalias nofree noundef align 8 dereferenceable(200) %i.ac)
  %.pr = load i64, ptr %i.ab, align 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ad = phi i64 [ %.pr, %bb.c ], [ %.sroa.0229.0.copyload, %bb.b ] ; 6 uses
  switch i64 %i.ad, label %bb.h [
    i64 -3, label %bb.e
    i64 -2, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i64 -9223372036854775807, ptr %i.aa, align 8
  %i.ae = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaGmGRvprAGn_5plist5errorNtB5_9ErrorKind16without_position(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.sink = phi ptr [ %i.ah, %bb.g ], [ %i.ae, %bb.e ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.af, align 8
  store i64 1, ptr %0, align 8
  br label %bb.bs

bb.g:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !5, !align !13, !noundef !5
  br label %bb.f

bb.h:                                             ; preds = %bb.d
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 14 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.16.0.copyload36 = load i64, ptr %.sroa.16.0..sroa_idx, align 16 ; 11 uses
  %.sroa.16.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.16.0.copyload37 = load i64, ptr %.sroa.16.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %.sroa.16.sroa.0.sroa.0.0.extract.trunc = trunc i64 %.sroa.16.0.copyload36 to i32 ; 2 uses
  %i.ai = icmp ne i64 %i.ad, -9223372036854775800
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = xor i64 %i.ad, -9223372036854775808     ; 2 uses
  %i.ak = icmp ult i64 %i.aj, 10
  %i.al = select i1 %i.ak, i64 %i.aj, i64 8
  switch i64 %i.al, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %bb.k
    i64 2, label %bb.ad
    i64 3, label %bb.ae
    i64 4, label %bb.af
    i64 5, label %bb.ag
    i64 6, label %bb.ah
    i64 7, label %bb.ai
    i64 8, label %bb.aj
    i64 9, label %bb.ak
  ]

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.am = trunc nuw i64 %.sroa.5.0.copyload to i1
  %.sroa.16.0.copyload36. = select i1 %i.am, i64 %.sroa.16.0.copyload36, i64 undef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %1, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i8 0, ptr %i.ao, align 8
  store i64 %.sroa.5.0.copyload, ptr %i.x, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.sroa.16.0.copyload36., ptr %i.ap, align 8
  call void @_RINvYINtNvXs3f_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapppENtBf_11Deserialize11deserialize10MapVisitorNtNtBZ_6string6StringNtNtCs5Xr050g3D4S_3std4path7PathBufENtBf_7Visitor9visit_seqINtNtCsaGmGRvprAGn_5plist2de15MapAndSeqAccessINtNtB3W_6stream6ReaderINtNtNtNtBZ_2io8buffered9bufreader9BufReaderNtNtB2Y_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.aq = load i64, ptr %i.y, align 8, !range !10, !noundef !5
  %i.ar = trunc nuw i64 %i.aq to i1
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  br i1 %i.ar, label %bb.al, label %bb.am

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !909
  store ptr null, ptr %i.h, align 8, !noalias !909
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %i.au, align 8, !noalias !909
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 241 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECs2zvA5OmMqFb_10ufo2fontir.exit.i, %bb.k
  %i.ay = load i64, ptr %1, align 16, !range !15, !noalias !910, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ay, -4
  br i1 %.not.i.i.i.i.i, label %bb.m, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsaGmGRvprAGn_5plist6stream5EventNtNtB1c_5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2y_8PeekableINtB1a_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEE4peek0ECs2zvA5OmMqFb_10ufo2fontir.exit.i.i.i.i

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !911
  invoke fastcc void @_RNvXs3_NtCsaGmGRvprAGn_5plist6streamINtB5_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.av)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !909

.noexc.i:                                         ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %1, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !911
  %i.az = load i64, ptr %1, align 16, !range !15, !noalias !910, !noundef !5 ; 2 uses
  %i.ba = icmp ne i64 %i.az, -4
  call void @llvm.assume(i1 %i.ba)
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsaGmGRvprAGn_5plist6stream5EventNtNtB1c_5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2y_8PeekableINtB1a_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEE4peek0ECs2zvA5OmMqFb_10ufo2fontir.exit.i.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsaGmGRvprAGn_5plist6stream5EventNtNtB1c_5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2y_8PeekableINtB1a_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEE4peek0ECs2zvA5OmMqFb_10ufo2fontir.exit.i.i.i.i: ; preds = %.noexc.i, %bb.l
  %i.bb = phi i64 [ %i.ay, %bb.l ], [ %i.az, %.noexc.i ]
  %cond.i.i.i.i = icmp eq i64 %i.bb, -9223372036854775806
  br i1 %cond.i.i.i.i, label %split, label %bb.n

bb.n:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsaGmGRvprAGn_5plist6stream5EventNtNtB1c_5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2y_8PeekableINtB1a_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEE4peek0ECs2zvA5OmMqFb_10ufo2fontir.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !910
  %i.bc = load i8, ptr %i.aw, align 1, !range !20, !noalias !910, !noundef !5 ; 2 uses
  store i8 2, ptr %i.aw, align 1, !noalias !910
  invoke void @_RINvXs6_NtNtCs7N5MyPZKytm_10serde_core2de5implsNtNtCsgCecv3eZDcN_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB1W_6stream6ReaderINtNtNtNtBN_2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 16 dereferenceable(256) %1)
          to label %.noexc4.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !909

.noexc4.i:                                        ; preds = %bb.n
  store i8 %i.bc, ptr %i.aw, align 1, !noalias !910
  %i.bd = load i64, ptr %i.b, align 8, !range !14, !noalias !910, !noundef !5 ; 2 uses
  %i.be = icmp eq i64 %i.bd, -1
  %i.bf = load ptr, ptr %i.ax, align 8, !noalias !912 ; 2 uses
  br i1 %i.be, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !910
  br label %.loopexit

bb.p:                                             ; preds = %.noexc4.i
  %.sroa.12.0.copyload.i.i.i = load i64, ptr %.sroa.12.0..sroa_idx.i.i.i, align 8, !noalias !912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !913
  store i64 %i.bd, ptr %i.d, align 8, !noalias !913
  store ptr %i.bf, ptr %.sroa.3.0..sroa_idx2.i.i.i, align 8, !noalias !913
  store i64 %.sroa.12.0.copyload.i.i.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i, align 8, !noalias !913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !913
  store i8 2, ptr %i.aw, align 1, !noalias !914
  invoke fastcc void @_RINvXs3_NtCs7N5MyPZKytm_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtCs5Xr050g3D4S_3std4path7PathBufENtB6_15DeserializeSeed11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB2y_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtB1n_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 16 dereferenceable(256) %1) #31
          to label %bb.r unwind label %bb.q, !noalias !913

bb.q:                                             ; preds = %bb.p
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #26
          to label %.body.i unwind label %bb.v, !noalias !913

bb.r:                                             ; preds = %bb.p
  store i8 %i.bc, ptr %i.aw, align 1, !noalias !914
  %i.bh = load i64, ptr %i.c, align 8, !range !14, !noalias !913, !noundef !5
  %i.bi = icmp eq i64 %i.bh, -1
  br i1 %i.bi, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !913, !nonnull !5, !align !13, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !913
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs2zvA5OmMqFb_10ufo2fontir.exit.i.i.i unwind label %bb.t, !noalias !913

bb.t:                                             ; preds = %bb.s
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.u, !noalias !913

bb.u:                                             ; preds = %bb.t
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !913
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs2zvA5OmMqFb_10ufo2fontir.exit.i.i.i: ; preds = %bb.s
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.noexc5.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !909

.noexc5.i:                                        ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs2zvA5OmMqFb_10ufo2fontir.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !913
  br label %.loopexit

bb.v:                                             ; preds = %bb.q
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !913
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs2zvA5OmMqFb_10ufo2fontir.exit.i.i, %bb.x, %bb.n, %bb.m, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs2zvA5OmMqFb_10ufo2fontir.exit.i.i.i
  %lpad.loopexit.split-lp389 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aa, %bb.t, %bb.q
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bg, %bb.q ], [ %i.bl, %bb.t ], [ %i.br, %bb.aa ], [ %lpad.loopexit.split-lp389, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.ac, !noalias !909

bb.w:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !913
  %.sroa.010.0.copyload.i = load i64, ptr %i.d, align 8, !noalias !913 ; 2 uses
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx2.i.i.i, align 8, !noalias !913 ; 2 uses
  %i.bo = load i64, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i, align 8, !noalias !913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !913
  switch i64 %.sroa.010.0.copyload.i, label %bb.x [
    i64 -2, label %.loopexit
    i64 -1, label %._crit_edge
  ]

._crit_edge:                                      ; preds = %bb.w
  %.sroa.0247.0.copyload.pre = load i64, ptr %1, align 16
  br label %split

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !909
  store i64 %.sroa.010.0.copyload.i, ptr %i.g, align 8, !noalias !909
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.3.0..sroa_idx2.i, align 8, !noalias !909
  store i64 %i.bo, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i, align 8, !noalias !909
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !909
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.sroa.7.i, i64 24, i1 false), !noalias !909
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !909
  invoke void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs5Xr050g3D4S_3std4path7PathBufE6insertCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !909

bb.y:                                             ; preds = %bb.x
  %i.bp = load i64, ptr %i.e, align 8, !range !14, !alias.scope !915, !noalias !909, !noundef !5
  %i.bq = icmp eq i64 %i.bp, -1
  br i1 %i.bq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECs2zvA5OmMqFb_10ufo2fontir.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs2zvA5OmMqFb_10ufo2fontir.exit.i.i unwind label %bb.aa, !noalias !909

bb.aa:                                            ; preds = %bb.z
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i unwind label %bb.ab, !noalias !909

bb.ab:                                            ; preds = %bb.aa
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !909
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs2zvA5OmMqFb_10ufo2fontir.exit.i.i: ; preds = %bb.z
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECs2zvA5OmMqFb_10ufo2fontir.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !909

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECs2zvA5OmMqFb_10ufo2fontir.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs2zvA5OmMqFb_10ufo2fontir.exit.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !909
  br label %bb.l

bb.ac:                                            ; preds = %.body.i
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !909
  unreachable

common.resume:                                    ; preds = %bb.bt, %bb.ap, %bb.bf, %bb.ce, %bb.cg, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.dp, %bb.ce ], [ %eh.lpad-body.i, %.body.i ], [ %i.dq, %bb.cg ], [ %i.dj, %bb.bt ], [ %.pn324, %bb.ap ], [ %.pn, %bb.bf ]
  resume { ptr, i32 } %common.resume.op

bb.ad:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %i.ad, ptr %i.p, align 16
  %.sroa.5.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx9, align 8
  %.sroa.16.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %.sroa.16.0.copyload36, ptr %.sroa.16.0..sroa_idx22, align 16
  %.sroa.16.0..sroa_idx22.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 %.sroa.16.0.copyload37, ptr %.sroa.16.0..sroa_idx22.sroa_idx, align 8
  %i.bu = invoke noundef nonnull align 8 ptr @_RNvNtCsaGmGRvprAGn_5plist5error21unexpected_event_type(i8 noundef 10, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.p)
          to label %bb.bu unwind label %bb.bt

bb.ae:                                            ; preds = %bb.h
  %i.bv = trunc i64 %.sroa.5.0.copyload to i1
  tail call void @_RINvYINtNvXs3f_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapppENtBf_11Deserialize11deserialize10MapVisitorNtNtBZ_6string6StringNtNtCs5Xr050g3D4S_3std4path7PathBufENtBf_7Visitor10visit_boolNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i1 noundef zeroext %i.bv)
  br label %bb.bs

bb.af:                                            ; preds = %bb.h
  %.not314 = icmp eq i64 %.sroa.5.0.copyload, -1
  br i1 %.not314, label %bb.bw, label %bb.bv

bb.ag:                                            ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.bx = load i8, ptr %i.bw, align 16, !range !9, !noundef !5
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.by, label %bb.bx

bb.ah:                                            ; preds = %bb.h
  %.sroa.16.sroa.11.0.insert.ext = zext i64 %.sroa.16.0.copyload37 to i128
  %.sroa.16.sroa.11.0.insert.shift = shl nuw i128 %.sroa.16.sroa.11.0.insert.ext, 64 ; 2 uses
  %.sroa.16.sroa.0.0.insert.ext = zext i64 %.sroa.16.0.copyload36 to i128
  %.sroa.16.sroa.0.0.insert.insert = or disjoint i128 %.sroa.16.sroa.11.0.insert.shift, %.sroa.16.sroa.0.0.insert.ext ; 2 uses
  %i.bz = icmp slt i128 %.sroa.16.sroa.11.0.insert.shift, 0
  %i.ca = icmp sgt i128 %.sroa.16.sroa.0.0.insert.insert, 18446744073709551615
  %or.cond4 = or i1 %i.bz, %i.ca
  br i1 %or.cond4, label %bb.bz, label %bb.ca

bb.ai:                                            ; preds = %bb.h
  %i.cb = bitcast i64 %.sroa.5.0.copyload to double
  tail call void @_RINvYINtNvXs3f_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapppENtBf_11Deserialize11deserialize10MapVisitorNtNtBZ_6string6StringNtNtCs5Xr050g3D4S_3std4path7PathBufENtBf_7Visitor9visit_f64NtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, double noundef %i.cb)
  br label %bb.bs

bb.aj:                                            ; preds = %bb.h
  %.not313 = icmp eq i64 %i.ad, -1
  br i1 %.not313, label %bb.cj, label %bb.cd

bb.ak:                                            ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.cd = load i8, ptr %i.cc, align 16, !range !9, !noundef !5
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.cl, label %bb.ck

bb.al:                                            ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.cf, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.bs

bb.am:                                            ; preds = %bb.j
  %.sroa.4240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4240.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  store ptr %i.at, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %.sroa.0241.0.copyload = load i64, ptr %1, align 16 ; 3 uses
  store i64 -4, ptr %1, align 16
  %.not320 = icmp eq i64 %.sroa.0241.0.copyload, -4
  br i1 %.not320, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i64 %.sroa.0241.0.copyload, ptr %i.v, align 16
  %.sroa.5243.0..sroa_idx244 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5243.0..sroa_idx244, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5231.0..sroa_idx, i64 24, i1 false)
  br label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke fastcc void @_RNvXs3_NtCsaGmGRvprAGn_5plist6streamINtB5_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.v, ptr noalias nofree noundef align 8 dereferenceable(200) %i.cg)
          to label %thread-pre-split unwind label %.thread

bb.ap:                                            ; preds = %.thread, %bb.as, %bb.az
  %.pn324 = phi { ptr, i32 } [ %i.cr, %.thread ], [ %i.cj, %bb.az ], [ %i.cj, %bb.as ]
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %common.resume unwind label %bb.ba

thread-pre-split:                                 ; preds = %bb.ao
  %.pr346 = load i64, ptr %i.v, align 16
  br label %bb.aq

bb.aq:                                            ; preds = %thread-pre-split, %bb.an
  %i.ch = phi i64 [ %.pr346, %thread-pre-split ], [ %.sroa.0241.0.copyload, %bb.an ] ; 2 uses
  switch i64 %i.ch, label %bb.ax [
    i64 -3, label %bb.ar
    i64 -2, label %bb.av
    i64 -9223372036854775806, label %bb.aw
  ]

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 -9223372036854775807, ptr %i.u, align 8
  %i.ci = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsaGmGRvprAGn_5plist5errorNtB5_9ErrorKind16without_position(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.u)
          to label %bb.at unwind label %bb.as

bb.as:                                            ; preds = %bb.ax, %bb.ar
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = load i64, ptr %i.v, align 16, !range !7, !noundef !5
  %i.cl = add i64 %i.ck, 3
  %i.cm = icmp ult i64 %i.cl, 2
  br i1 %i.cm, label %bb.ap, label %bb.az

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.au

bb.au:                                            ; preds = %bb.ax, %bb.av, %bb.at
  %.sink378 = phi ptr [ %i.ci, %bb.at ], [ %i.cq, %bb.av ], [ %i.cs, %bb.ax ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink378, ptr %i.cn, align 8
  store i64 1, ptr %0, align 8
  %i.co = load i64, ptr %i.v, align 16, !range !7, !noundef !5
  %.off = add i64 %i.co, 3
  %switch = icmp ult i64 %.off, 2
  br i1 %switch, label %bb.bb, label %bb.bc

bb.av:                                            ; preds = %bb.aq
  %i.cp = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !5, !align !13, !noundef !5
  br label %bb.au

bb.aw:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.w, ptr noundef nonnull align 16 dereferenceable(32) %i.v, i64 32, i1 false)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.w)
          to label %bb.ay unwind label %.thread

.thread:                                          ; preds = %bb.ao, %bb.bc, %bb.aw
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ax:                                            ; preds = %bb.aq
  %2 = icmp ne i64 %i.ch, -9223372036854775800
  tail call void @llvm.assume(i1 %2)
  %i.cs = invoke noundef nonnull align 8 ptr @_RNvNtCsaGmGRvprAGn_5plist5error21unexpected_event_type(i8 noundef 2, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.v)
          to label %bb.au unwind label %bb.as

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.bs

bb.az:                                            ; preds = %bb.as
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.v) #26
          to label %bb.ap unwind label %bb.ba

bb.ba:                                            ; preds = %bb.bf, %bb.ap, %bb.bt, %bb.bp, %bb.az
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.bb:                                            ; preds = %bb.au, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.bs

bb.bc:                                            ; preds = %bb.au
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.v)
          to label %bb.bb unwind label %.thread

.loopexit:                                        ; preds = %bb.w, %.noexc5.i, %bb.o
  %.sroa.9.013.i = phi ptr [ %i.bf, %bb.o ], [ %i.bk, %.noexc5.i ], [ %.sroa.4.0.copyload.i, %bb.w ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.013.i) ]
  call void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h), !noalias !909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !909
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.sroa.7.i)
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.013.i, ptr %i.cv, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.bs

split:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsaGmGRvprAGn_5plist6stream5EventNtNtB1c_5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2y_8PeekableINtB1a_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEE4peek0ECs2zvA5OmMqFb_10ufo2fontir.exit.i.i.i.i, %._crit_edge
  %.sroa.0247.0.copyload = phi i64 [ %.sroa.0247.0.copyload.pre, %._crit_edge ], [ -9223372036854775806, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsaGmGRvprAGn_5plist6stream5EventNtNtB1c_5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2y_8PeekableINtB1a_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEE4peek0ECs2zvA5OmMqFb_10ufo2fontir.exit.i.i.i.i ] ; 3 uses
  %.sroa.6.8.copyload = load ptr, ptr %i.h, align 8, !noalias !916
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4203.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.8..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !909
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.sroa.7.i)
  store ptr %.sroa.6.8.copyload, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 -4, ptr %1, align 16
  %.not315 = icmp eq i64 %.sroa.0247.0.copyload, -4
  br i1 %.not315, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %split
  store i64 %.sroa.0247.0.copyload, ptr %i.r, align 16
  %.sroa.5249.0..sroa_idx250 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5249.0..sroa_idx250, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5231.0..sroa_idx, i64 24, i1 false)
  br label %bb.bg

bb.be:                                            ; preds = %split
  invoke fastcc void @_RNvXs3_NtCsaGmGRvprAGn_5plist6streamINtB5_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.r, ptr noalias nofree noundef align 8 dereferenceable(200) %i.av)
          to label %thread-pre-split350 unwind label %.thread352

bb.bf:                                            ; preds = %.thread352, %bb.bi, %bb.bp
  %.pn = phi { ptr, i32 } [ %i.dg, %.thread352 ], [ %i.cy, %bb.bp ], [ %i.cy, %bb.bi ]
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %common.resume unwind label %bb.ba

thread-pre-split350:                              ; preds = %bb.be
  %.pr351 = load i64, ptr %i.r, align 16
  br label %bb.bg

bb.bg:                                            ; preds = %thread-pre-split350, %bb.bd
  %i.cw = phi i64 [ %.pr351, %thread-pre-split350 ], [ %.sroa.0247.0.copyload, %bb.bd ] ; 2 uses
  switch i64 %i.cw, label %bb.bn [
    i64 -3, label %bb.bh
    i64 -2, label %bb.bl
    i64 -9223372036854775806, label %bb.bm
  ]

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 -9223372036854775807, ptr %i.q, align 8
  %i.cx = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsaGmGRvprAGn_5plist5errorNtB5_9ErrorKind16without_position(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q)
          to label %bb.bj unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bn, %bb.bh
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cz = load i64, ptr %i.r, align 16, !range !7, !noundef !5
  %i.da = add i64 %i.cz, 3
  %i.db = icmp ult i64 %i.da, 2
  br i1 %i.db, label %bb.bf, label %bb.bp

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bn, %bb.bl, %bb.bj
  %.sink380 = phi ptr [ %i.cx, %bb.bj ], [ %i.df, %bb.bl ], [ %i.dh, %bb.bn ]
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink380, ptr %i.dc, align 8
  store i64 1, ptr %0, align 8
  %i.dd = load i64, ptr %i.r, align 16, !range !7, !noundef !5
  %.off332 = add i64 %i.dd, 3
  %switch333 = icmp ult i64 %.off332, 2
  br i1 %switch333, label %bb.bq, label %bb.br

bb.bl:                                            ; preds = %bb.bg
  %i.de = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !nonnull !5, !align !13, !noundef !5
  br label %bb.bk

bb.bm:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.s, ptr noundef nonnull align 16 dereferenceable(32) %i.r, i64 32, i1 false)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.s)
          to label %bb.bo unwind label %.thread352

.thread352:                                       ; preds = %bb.be, %bb.br, %bb.bm
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bn:                                            ; preds = %bb.bg
  %3 = icmp ne i64 %i.cw, -9223372036854775800
  call void @llvm.assume(i1 %3)
  %i.dh = invoke noundef nonnull align 8 ptr @_RNvNtCsaGmGRvprAGn_5plist5error21unexpected_event_type(i8 noundef 2, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.r)
          to label %bb.bk unwind label %bb.bi

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.di, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.bs

bb.bp:                                            ; preds = %bb.bi
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.r) #26
          to label %bb.bf unwind label %bb.ba

bb.bq:                                            ; preds = %bb.bk, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.bs

bb.br:                                            ; preds = %bb.bk
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.r)
          to label %bb.bq unwind label %.thread352

bb.bs:                                            ; preds = %bb.al, %.loopexit, %bb.bb, %bb.bq, %bb.ay, %bb.bo, %bb.ae, %bb.bw, %bb.bv, %bb.bx, %bb.by, %bb.ai, %bb.cj, %_RINvYINtNvXs3f_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapppENtBf_11Deserialize11deserialize10MapVisitorNtNtBZ_6string6StringNtNtCs5Xr050g3D4S_3std4path7PathBufENtBf_7Visitor12visit_stringNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir.exit, %bb.ck, %bb.cl, %bb.cc, %bb.ca, %bb.f, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  ret void

bb.bt:                                            ; preds = %bb.ad
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.p) #26
          to label %common.resume unwind label %bb.ba

bb.bu:                                            ; preds = %bb.ad
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bu, ptr %i.dk, align 8
  store i64 1, ptr %0, align 8
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.bs

bb.bv:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %.sroa.5.0.copyload, ptr %i.o, align 8
  %.sroa.16.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %.sroa.16.0.copyload36, ptr %.sroa.16.8..sroa_idx, align 8
  %.sroa.16.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.16.0.copyload37, ptr %.sroa.16.8..sroa_idx.sroa_idx, align 8
  call void @_RINvYINtNvXs3f_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapppENtBf_11Deserialize11deserialize10MapVisitorNtNtBZ_6string6StringNtNtCs5Xr050g3D4S_3std4path7PathBufENtBf_7Visitor14visit_byte_bufNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.bs

bb.bw:                                            ; preds = %bb.af
  %i.dl = inttoptr i64 %.sroa.16.0.copyload36 to ptr
  tail call void @_RINvYINtNvXs3f_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapppENtBf_11Deserialize11deserialize10MapVisitorNtNtBZ_6string6StringNtNtCs5Xr050g3D4S_3std4path7PathBufENtBf_7Visitor11visit_bytesNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dl, i64 noundef %.sroa.16.0.copyload37)
  br label %bb.bs

bb.bx:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %.sroa.5.0.copyload, ptr %i.l, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %.sroa.16.sroa.0.sroa.0.0.extract.trunc, ptr %i.dm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMNtCsaGmGRvprAGn_5plist4dateNtB2_4Date13to_xml_format(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
  call fastcc void @_RINvYINtNvXs3f_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapppENtBf_11Deserialize11deserialize10MapVisitorNtNtBZ_6string6StringNtNtCs5Xr050g3D4S_3std4path7PathBufENtBf_7Visitor12visit_stringNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.k) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bs

bb.by:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 %.sroa.5.0.copyload, ptr %i.n, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 %.sroa.16.sroa.0.sroa.0.0.extract.trunc, ptr %i.dn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvMNtCsaGmGRvprAGn_5plist4dateNtB2_4Date13to_xml_format(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.3210, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n)
  store i64 1, ptr %i.m, align 8
  %.sroa.0207.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 0, ptr %.sroa.0207.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0207.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 1, ptr %.sroa.0207.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0207.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @2, ptr %.sroa.0207.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0207.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 10, ptr %.sroa.0207.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0207.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0207.sroa.0.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3210, i64 24, i1 false)
  %.sroa.0207.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store i64 -1, ptr %.sroa.0207.sroa.4.0..sroa_idx, align 8
  %.sroa.5208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store i64 0, ptr %.sroa.5208.0..sroa_idx, align 8
  call void @_RINvYINtNvXs3f_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapppENtBf_11Deserialize11deserialize10MapVisitorNtNtBZ_6string6StringNtNtCs5Xr050g3D4S_3std4path7PathBufENtBf_7Visitor10visit_enumINtNtBf_5value21MapAccessDeserializerINtB3W_15MapDeserializerINtNtNtCsf3Ta7LF998c_4core5array4iter8IntoIterTReB2z_EKj1_ENtNtCsaGmGRvprAGn_5plist5error5ErrorEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.bs

bb.bz:                                            ; preds = %bb.ah
  %i.do = add i128 %.sroa.16.sroa.0.0.insert.insert, -9223372036854775808
  %or.cond5 = icmp ult i128 %i.do, -18446744073709551616
  br i1 %or.cond5, label %bb.cb, label %bb.cc, !prof !26

bb.ca:                                            ; preds = %bb.ah
  tail call void @_RINvYINtNvXs3f_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapppENtBf_11Deserialize11deserialize10MapVisitorNtNtBZ_6string6StringNtNtCs5Xr050g3D4S_3std4path7PathBufENtBf_7Visitor9visit_u64NtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %.sroa.16.0.copyload36)
  br label %bb.bs

bb.cb:                                            ; preds = %bb.bz
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #29
  unreachable

bb.cc:                                            ; preds = %bb.bz
  tail call void @_RINvYINtNvXs3f_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapppENtBf_11Deserialize11deserialize10MapVisitorNtNtBZ_6string6StringNtNtCs5Xr050g3D4S_3std4path7PathBufENtBf_7Visitor9visit_i64NtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %.sroa.16.0.copyload36)
  br label %bb.bs

bb.cd:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %i.ad, ptr %i.j, align 8
  %.sroa.5.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx11, align 8
  %.sroa.16.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.16.0.copyload36, ptr %.sroa.16.0..sroa_idx24, align 8
  %.cast = inttoptr i64 %.sroa.5.0.copyload to ptr
  invoke void @_RINvYINtNvXs3f_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapppENtBf_11Deserialize11deserialize10MapVisitorNtNtBZ_6string6StringNtNtCs5Xr050g3D4S_3std4path7PathBufENtBf_7Visitor9visit_strNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.cast, i64 noundef %.sroa.16.0.copyload36)
          to label %bb.cf unwind label %bb.ce, !noalias !917

bb.ce:                                            ; preds = %bb.cd
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #26
          to label %common.resume unwind label %bb.ci, !noalias !918

bb.cf:                                            ; preds = %bb.cd
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvYINtNvXs3f_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapppENtBf_11Deserialize11deserialize10MapVisitorNtNtBZ_6string6StringNtNtCs5Xr050g3D4S_3std4path7PathBufENtBf_7Visitor12visit_stringNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir.exit unwind label %bb.cg, !noalias !918

bb.cg:                                            ; preds = %bb.cf
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.ch, !noalias !918

bb.ch:                                            ; preds = %bb.cg
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !918
  unreachable

bb.ci:                                            ; preds = %bb.ce
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !918
  unreachable

_RINvYINtNvXs3f_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapppENtBf_11Deserialize11deserialize10MapVisitorNtNtBZ_6string6StringNtNtCs5Xr050g3D4S_3std4path7PathBufENtBf_7Visitor12visit_stringNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %bb.cf
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j), !noalias !918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.bs

bb.cj:                                            ; preds = %bb.aj
  %i.dt = inttoptr i64 %.sroa.5.0.copyload to ptr
  tail call void @_RINvYINtNvXs3f_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapppENtBf_11Deserialize11deserialize10MapVisitorNtNtBZ_6string6StringNtNtCs5Xr050g3D4S_3std4path7PathBufENtBf_7Visitor9visit_strNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dt, i64 noundef %.sroa.16.0.copyload36)
  br label %bb.bs

bb.ck:                                            ; preds = %bb.ak
  tail call void @_RINvYINtNvXs3f_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapppENtBf_11Deserialize11deserialize10MapVisitorNtNtBZ_6string6StringNtNtCs5Xr050g3D4S_3std4path7PathBufENtBf_7Visitor9visit_u64NtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %.sroa.5.0.copyload)
  br label %bb.bs

bb.cl:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 1, ptr %i.i, align 8
  %.sroa.0215.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 0, ptr %.sroa.0215.sroa.4.0..sroa_idx, align 8
  %.sroa.0215.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 1, ptr %.sroa.0215.sroa.5.0..sroa_idx, align 8
  %.sroa.0215.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @5, ptr %.sroa.0215.sroa.6.0..sroa_idx, align 8
  %.sroa.0215.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 9, ptr %.sroa.0215.sroa.7.0..sroa_idx, align 8
  %.sroa.0215.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %.sroa.5.0.copyload, ptr %.sroa.0215.sroa.8.0..sroa_idx, align 8
  %.sroa.4216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 0, ptr %.sroa.4216.0..sroa_idx, align 8
  %.sroa.6218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i64 0, ptr %.sroa.6218.0..sroa_idx, align 8
  call void @_RINvYINtNvXs3f_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapppENtBf_11Deserialize11deserialize10MapVisitorNtNtBZ_6string6StringNtNtCs5Xr050g3D4S_3std4path7PathBufENtBf_7Visitor10visit_enumINtNtBf_5value21MapAccessDeserializerINtB3W_15MapDeserializerINtNtNtCsf3Ta7LF998c_4core5array4iter8IntoIterTReyEKj1_ENtNtCsaGmGRvprAGn_5plist5error5ErrorEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.bs
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB2K_5implsINtNtB1l_3vec3VecpENtB2K_11Deserialize11deserialize10VecVisitorTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtB2f_4path7PathBufEEECs2zvA5OmMqFb_10ufo2fontir(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 16 dereferenceable(256) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.3218 = alloca [24 x i8], align 8         ; 2 uses
  %i.a = alloca [72 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
end_hunk_0
begin_hunk_1_@_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB2K_5implsINtNtB1l_3vec3VecpENtB2K_11Deserialize11deserialize10VecVisitorTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtB2f_4path7PathBufEEECs2zvA5OmMqFb_10ufo2fontir:bb.a
bb.c:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  call fastcc void @_RNvXs3_NtCsaGmGRvprAGn_5plist6streamINtB5_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.v, ptr noalias nofree noundef align 8 dereferenceable(200) %i.w)
  %.pr = load i64, ptr %i.v, align 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = phi i64 [ %.pr, %bb.c ], [ %.sroa.0237.0.copyload, %bb.b ] ; 6 uses
  switch i64 %i.x, label %bb.h [
    i64 -3, label %bb.e
    i64 -2, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 -9223372036854775807, ptr %i.u, align 8
  %i.y = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaGmGRvprAGn_5plist5errorNtB5_9ErrorKind16without_position(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.sink = phi ptr [ %i.ab, %bb.g ], [ %i.y, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.z, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bc

bb.g:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !5, !align !13, !noundef !5
  br label %bb.f

bb.h:                                             ; preds = %bb.d
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 16 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.16.0.copyload36 = load i64, ptr %.sroa.16.0..sroa_idx, align 16 ; 12 uses
  %.sroa.16.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.16.0.copyload37 = load i64, ptr %.sroa.16.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %.sroa.16.sroa.0.sroa.0.0.extract.trunc = trunc i64 %.sroa.16.0.copyload36 to i32 ; 2 uses
  %i.ac = icmp ne i64 %i.x, -9223372036854775800
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = xor i64 %i.x, -9223372036854775808      ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 10
  %i.af = select i1 %i.ae, i64 %i.ad, i64 8
  switch i64 %i.af, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %bb.k
    i64 2, label %bb.l
    i64 3, label %bb.m
    i64 4, label %bb.n
    i64 5, label %bb.o
    i64 6, label %bb.p
    i64 7, label %bb.q
    i64 8, label %bb.r
    i64 9, label %bb.s
  ]

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ag = trunc nuw i64 %.sroa.5.0.copyload to i1
  %.sroa.16.0.copyload36. = select i1 %i.ag, i64 %.sroa.16.0.copyload36, i64 undef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %1, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i8 0, ptr %i.ai, align 8
  store i64 %.sroa.5.0.copyload, ptr %i.r, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.16.0.copyload36., ptr %i.aj, align 8
  call void @_RINvXNvXsh_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtBb_7Visitor9visit_seqINtNtCsaGmGRvprAGn_5plist2de15MapAndSeqAccessINtNtB3W_6stream6ReaderINtNtNtNtBR_2io8buffered9bufreader9BufReaderNtNtB2X_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ak = load i64, ptr %i.s, align 8, !range !14, !noundef !5 ; 2 uses
  %i.al = icmp eq i64 %i.ak, -1
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  br i1 %i.al, label %bb.t, label %bb.u

bb.k:                                             ; preds = %bb.h
  %i.ao = trunc nuw i64 %.sroa.5.0.copyload to i1
  %.sroa.16.0.copyload36.338 = select i1 %i.ao, i64 %.sroa.16.0.copyload36, i64 undef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %1, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i8 0, ptr %i.aq, align 8
  store i64 %.sroa.5.0.copyload, ptr %i.l, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.sroa.16.0.copyload36.338, ptr %i.ar, align 8
  call void @_RINvYINtNvXsh_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBe_11Deserialize11deserialize10VecVisitorTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtBe_7Visitor9visit_mapINtNtCsaGmGRvprAGn_5plist2de15MapAndSeqAccessINtNtB3T_6stream6ReaderINtNtNtNtBU_2io8buffered9bufreader9BufReaderNtNtB2U_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.as = load i64, ptr %i.m, align 8, !range !14, !noundef !5 ; 2 uses
  %i.at = icmp eq i64 %i.as, -1
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  br i1 %i.at, label %bb.al, label %bb.am

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.x, ptr %i.h, align 16
  %.sroa.5.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx9, align 8
  %.sroa.16.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.16.0.copyload36, ptr %.sroa.16.0..sroa_idx22, align 16
  %.sroa.16.0..sroa_idx22.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %.sroa.16.0.copyload37, ptr %.sroa.16.0..sroa_idx22.sroa_idx, align 8
  %i.aw = invoke noundef nonnull align 8 ptr @_RNvNtCsaGmGRvprAGn_5plist5error21unexpected_event_type(i8 noundef 10, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.h)
          to label %bb.be unwind label %bb.bd

bb.m:                                             ; preds = %bb.h
  %i.ax = trunc i64 %.sroa.5.0.copyload to i1
  tail call void @_RINvYINtNvXsh_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBe_11Deserialize11deserialize10VecVisitorTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtBe_7Visitor10visit_boolNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %i.ax)
  br label %bb.bc

bb.n:                                             ; preds = %bb.h
  %.not325 = icmp eq i64 %.sroa.5.0.copyload, -1
  br i1 %.not325, label %bb.bg, label %bb.bf

bb.o:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.az = load i8, ptr %i.ay, align 16, !range !9, !noundef !5
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.bi, label %bb.bh

bb.p:                                             ; preds = %bb.h
  %.sroa.16.sroa.11.0.insert.ext = zext i64 %.sroa.16.0.copyload37 to i128
  %.sroa.16.sroa.11.0.insert.shift = shl nuw i128 %.sroa.16.sroa.11.0.insert.ext, 64 ; 2 uses
  %.sroa.16.sroa.0.0.insert.ext = zext i64 %.sroa.16.0.copyload36 to i128
  %.sroa.16.sroa.0.0.insert.insert = or disjoint i128 %.sroa.16.sroa.11.0.insert.shift, %.sroa.16.sroa.0.0.insert.ext ; 2 uses
  %i.bb = icmp slt i128 %.sroa.16.sroa.11.0.insert.shift, 0
  %i.bc = icmp sgt i128 %.sroa.16.sroa.0.0.insert.insert, 18446744073709551615
  %or.cond4 = or i1 %i.bb, %i.bc
  br i1 %or.cond4, label %bb.bj, label %bb.bk

bb.q:                                             ; preds = %bb.h
  %i.bd = bitcast i64 %.sroa.5.0.copyload to double
  tail call void @_RINvYINtNvXsh_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBe_11Deserialize11deserialize10VecVisitorTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtBe_7Visitor9visit_f64NtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, double noundef %i.bd)
  br label %bb.bc

bb.r:                                             ; preds = %bb.h
  %.not324 = icmp eq i64 %i.x, -1
  br i1 %.not324, label %bb.bt, label %bb.bn

bb.s:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.bf = load i8, ptr %i.be, align 16, !range !9, !noundef !5
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.bv, label %bb.bu

bb.t:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.bh, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.bc

bb.u:                                             ; preds = %bb.j
  %.sroa.5249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.5249.0.copyload = load i64, ptr %.sroa.5249.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store i64 %i.ak, ptr %i.t, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.an, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %.sroa.5249.0.copyload, ptr %.sroa.5192.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %.sroa.0250.0.copyload = load i64, ptr %1, align 16 ; 3 uses
  store i64 -4, ptr %1, align 16
  %.not331 = icmp eq i64 %.sroa.0250.0.copyload, -4
  br i1 %.not331, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i64 %.sroa.0250.0.copyload, ptr %i.p, align 16
  %.sroa.5252.0..sroa_idx253 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5252.0..sroa_idx253, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5239.0..sroa_idx, i64 24, i1 false)
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke fastcc void @_RNvXs3_NtCsaGmGRvprAGn_5plist6streamINtB5_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.p, ptr noalias nofree noundef align 8 dereferenceable(200) %i.bi)
          to label %thread-pre-split unwind label %.thread

bb.x:                                             ; preds = %.thread, %bb.aa, %bb.ah
  %.pn335 = phi { ptr, i32 } [ %i.bt, %.thread ], [ %i.bl, %bb.ah ], [ %i.bl, %bb.aa ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #26
          to label %common.resume unwind label %bb.ai

thread-pre-split:                                 ; preds = %bb.w
  %.pr348 = load i64, ptr %i.p, align 16
  br label %bb.y

bb.y:                                             ; preds = %thread-pre-split, %bb.v
  %i.bj = phi i64 [ %.pr348, %thread-pre-split ], [ %.sroa.0250.0.copyload, %bb.v ] ; 2 uses
  switch i64 %i.bj, label %bb.af [
    i64 -3, label %bb.z
    i64 -2, label %bb.ad
    i64 -9223372036854775806, label %bb.ae
  ]

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 -9223372036854775807, ptr %i.o, align 8
  %i.bk = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsaGmGRvprAGn_5plist5errorNtB5_9ErrorKind16without_position(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o)
          to label %bb.ab unwind label %bb.aa

bb.aa:                                            ; preds = %bb.af, %bb.z
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load i64, ptr %i.p, align 16, !range !7, !noundef !5
  %i.bn = add i64 %i.bm, 3
  %i.bo = icmp ult i64 %i.bn, 2
  br i1 %i.bo, label %bb.x, label %bb.ah

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.af, %bb.ad, %bb.ab
  %.sink361 = phi ptr [ %i.bk, %bb.ab ], [ %i.bs, %bb.ad ], [ %i.bu, %bb.af ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink361, ptr %i.bp, align 8
  store i64 -1, ptr %0, align 8
  %i.bq = load i64, ptr %i.p, align 16, !range !7, !noundef !5
  %.off = add i64 %i.bq, 3
  %switch = icmp ult i64 %.off, 2
  br i1 %switch, label %bb.aj, label %bb.ak

bb.ad:                                            ; preds = %bb.y
  %i.br = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !5, !align !13, !noundef !5
  br label %bb.ac

bb.ae:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.q, ptr noundef nonnull align 16 dereferenceable(32) %i.p, i64 32, i1 false)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.q)
          to label %bb.ag unwind label %.thread

.thread:                                          ; preds = %bb.w, %bb.ak, %bb.ae
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.af:                                            ; preds = %bb.y
  %2 = icmp ne i64 %i.bj, -9223372036854775800
  call void @llvm.assume(i1 %2)
  %i.bu = invoke noundef nonnull align 8 ptr @_RNvNtCsaGmGRvprAGn_5plist5error21unexpected_event_type(i8 noundef 2, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.p)
          to label %bb.ac unwind label %bb.aa

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.bc

bb.ah:                                            ; preds = %bb.aa
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.p) #26
          to label %bb.x unwind label %bb.ai

bb.ai:                                            ; preds = %bb.bd, %bb.az, %bb.ap, %bb.ah, %bb.x
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.aj:                                            ; preds = %bb.ac, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.bc

bb.ak:                                            ; preds = %bb.ac
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.p)
          to label %bb.aj unwind label %.thread

bb.al:                                            ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.bw, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.bc

bb.am:                                            ; preds = %bb.k
  %.sroa.5256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.5256.0.copyload = load i64, ptr %.sroa.5256.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 %i.as, ptr %i.n, align 8
  %.sroa.4210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.av, ptr %.sroa.4210.0..sroa_idx, align 8
  %.sroa.5211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.sroa.5256.0.copyload, ptr %.sroa.5211.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %.sroa.0257.0.copyload = load i64, ptr %1, align 16 ; 3 uses
  store i64 -4, ptr %1, align 16
  %.not326 = icmp eq i64 %.sroa.0257.0.copyload, -4
  br i1 %.not326, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i64 %.sroa.0257.0.copyload, ptr %i.j, align 16
  %.sroa.5259.0..sroa_idx260 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5259.0..sroa_idx260, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5239.0..sroa_idx, i64 24, i1 false)
  br label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke fastcc void @_RNvXs3_NtCsaGmGRvprAGn_5plist6streamINtB5_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.j, ptr noalias nofree noundef align 8 dereferenceable(200) %i.bx)
          to label %thread-pre-split352 unwind label %.thread354

bb.ap:                                            ; preds = %.thread354, %bb.as, %bb.az
  %.pn = phi { ptr, i32 } [ %i.ci, %.thread354 ], [ %i.ca, %bb.az ], [ %i.ca, %bb.as ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #26
          to label %common.resume unwind label %bb.ai

thread-pre-split352:                              ; preds = %bb.ao
  %.pr353 = load i64, ptr %i.j, align 16
  br label %bb.aq

bb.aq:                                            ; preds = %thread-pre-split352, %bb.an
  %i.by = phi i64 [ %.pr353, %thread-pre-split352 ], [ %.sroa.0257.0.copyload, %bb.an ] ; 2 uses
  switch i64 %i.by, label %bb.ax [
    i64 -3, label %bb.ar
    i64 -2, label %bb.av
    i64 -9223372036854775806, label %bb.aw
  ]

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 -9223372036854775807, ptr %i.i, align 8
  %i.bz = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsaGmGRvprAGn_5plist5errorNtB5_9ErrorKind16without_position(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i)
          to label %bb.at unwind label %bb.as

bb.as:                                            ; preds = %bb.ax, %bb.ar
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = load i64, ptr %i.j, align 16, !range !7, !noundef !5
  %i.cc = add i64 %i.cb, 3
  %i.cd = icmp ult i64 %i.cc, 2
  br i1 %i.cd, label %bb.ap, label %bb.az

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.au

bb.au:                                            ; preds = %bb.ax, %bb.av, %bb.at
  %.sink363 = phi ptr [ %i.bz, %bb.at ], [ %i.ch, %bb.av ], [ %i.cj, %bb.ax ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink363, ptr %i.ce, align 8
  store i64 -1, ptr %0, align 8
  %i.cf = load i64, ptr %i.j, align 16, !range !7, !noundef !5
  %.off343 = add i64 %i.cf, 3
  %switch344 = icmp ult i64 %.off343, 2
  br i1 %switch344, label %bb.ba, label %bb.bb

bb.av:                                            ; preds = %bb.aq
  %i.cg = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !5, !align !13, !noundef !5
  br label %bb.au

bb.aw:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.k, ptr noundef nonnull align 16 dereferenceable(32) %i.j, i64 32, i1 false)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.k)
          to label %bb.ay unwind label %.thread354

.thread354:                                       ; preds = %bb.ao, %bb.bb, %bb.aw
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ax:                                            ; preds = %bb.aq
  %3 = icmp ne i64 %i.by, -9223372036854775800
  tail call void @llvm.assume(i1 %3)
  %i.cj = invoke noundef nonnull align 8 ptr @_RNvNtCsaGmGRvprAGn_5plist5error21unexpected_event_type(i8 noundef 2, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.j)
          to label %bb.au unwind label %bb.as

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.bc

bb.az:                                            ; preds = %bb.as
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.j) #26
          to label %bb.ap unwind label %bb.ai

bb.ba:                                            ; preds = %bb.au, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.bc

bb.bb:                                            ; preds = %bb.au
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.j)
          to label %bb.ba unwind label %.thread354

bb.bc:                                            ; preds = %bb.t, %bb.al, %bb.aj, %bb.ba, %bb.ag, %bb.ay, %bb.m, %bb.bg, %bb.bf, %bb.bh, %bb.bi, %bb.q, %bb.bt, %_RINvYINtNvXsh_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBe_11Deserialize11deserialize10VecVisitorTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtBe_7Visitor12visit_stringNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir.exit, %bb.bu, %bb.bv, %bb.bm, %bb.bk, %bb.f, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  ret void

bb.bd:                                            ; preds = %bb.l
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.h) #26
          to label %common.resume unwind label %bb.ai

bb.be:                                            ; preds = %bb.l
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.cl, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.bc

bb.bf:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.sroa.5.0.copyload, ptr %i.g, align 8
  %.sroa.16.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.16.0.copyload36, ptr %.sroa.16.8..sroa_idx, align 8
  %.sroa.16.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.16.0.copyload37, ptr %.sroa.16.8..sroa_idx.sroa_idx, align 8
  call void @_RINvYINtNvXsh_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBe_11Deserialize11deserialize10VecVisitorTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtBe_7Visitor14visit_byte_bufNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bc

bb.bg:                                            ; preds = %bb.n
  %i.cm = inttoptr i64 %.sroa.16.0.copyload36 to ptr
  tail call void @_RINvYINtNvXsh_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBe_11Deserialize11deserialize10VecVisitorTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtBe_7Visitor11visit_bytesNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cm, i64 noundef %.sroa.16.0.copyload37)
  br label %bb.bc

bb.bh:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.sroa.5.0.copyload, ptr %i.d, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %.sroa.16.sroa.0.sroa.0.0.extract.trunc, ptr %i.cn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMNtCsaGmGRvprAGn_5plist4dateNtB2_4Date13to_xml_format(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
  call fastcc void @_RINvYINtNvXsh_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBe_11Deserialize11deserialize10VecVisitorTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtBe_7Visitor12visit_stringNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.bc

bb.bi:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %.sroa.5.0.copyload, ptr %i.f, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %.sroa.16.sroa.0.sroa.0.0.extract.trunc, ptr %i.co, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMNtCsaGmGRvprAGn_5plist4dateNtB2_4Date13to_xml_format(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.3218, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
  store i64 1, ptr %i.e, align 8
  %.sroa.0215.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 0, ptr %.sroa.0215.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0215.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 1, ptr %.sroa.0215.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0215.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @2, ptr %.sroa.0215.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0215.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 10, ptr %.sroa.0215.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0215.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0215.sroa.0.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3218, i64 24, i1 false)
  %.sroa.0215.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 -1, ptr %.sroa.0215.sroa.4.0..sroa_idx, align 8
  %.sroa.5216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i64 0, ptr %.sroa.5216.0..sroa_idx, align 8
  call void @_RINvYINtNvXsh_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBe_11Deserialize11deserialize10VecVisitorTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtBe_7Visitor10visit_enumINtNtBe_5value21MapAccessDeserializerINtB3T_15MapDeserializerINtNtNtCsf3Ta7LF998c_4core5array4iter8IntoIterTReNtNtBU_6string6StringEKj1_ENtNtCsaGmGRvprAGn_5plist5error5ErrorEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.bc

bb.bj:                                            ; preds = %bb.p
  %i.cp = add i128 %.sroa.16.sroa.0.0.insert.insert, -9223372036854775808
  %or.cond5 = icmp ult i128 %i.cp, -18446744073709551616
  br i1 %or.cond5, label %bb.bl, label %bb.bm, !prof !26

bb.bk:                                            ; preds = %bb.p
  tail call void @_RINvYINtNvXsh_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBe_11Deserialize11deserialize10VecVisitorTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtBe_7Visitor9visit_u64NtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %.sroa.16.0.copyload36)
  br label %bb.bc

bb.bl:                                            ; preds = %bb.bj
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #29
  unreachable

bb.bm:                                            ; preds = %bb.bj
  tail call void @_RINvYINtNvXsh_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBe_11Deserialize11deserialize10VecVisitorTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtBe_7Visitor9visit_i64NtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %.sroa.16.0.copyload36)
  br label %bb.bc

bb.bn:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.x, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx11, align 8
  %.sroa.16.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.16.0.copyload36, ptr %.sroa.16.0..sroa_idx24, align 8
  %.cast = inttoptr i64 %.sroa.5.0.copyload to ptr
  invoke void @_RINvYINtNvXsh_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBe_11Deserialize11deserialize10VecVisitorTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtBe_7Visitor9visit_strNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.cast, i64 noundef %.sroa.16.0.copyload36)
          to label %bb.bp unwind label %bb.bo, !noalias !922

bb.bo:                                            ; preds = %bb.bn
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #26
          to label %common.resume unwind label %bb.bs, !noalias !923

bb.bp:                                            ; preds = %bb.bn
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvYINtNvXsh_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBe_11Deserialize11deserialize10VecVisitorTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtBe_7Visitor12visit_stringNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir.exit unwind label %bb.bq, !noalias !923

bb.bq:                                            ; preds = %bb.bp
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.br, !noalias !923

bb.br:                                            ; preds = %bb.bq
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !923
  unreachable

common.resume:                                    ; preds = %bb.bd, %bb.ap, %bb.x, %bb.bo, %bb.bq
  %common.resume.op = phi { ptr, i32 } [ %i.cq, %bb.bo ], [ %i.cr, %bb.bq ], [ %.pn335, %bb.x ], [ %.pn, %bb.ap ], [ %i.ck, %bb.bd ]
  resume { ptr, i32 } %common.resume.op

bb.bs:                                            ; preds = %bb.bo
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !923
  unreachable

_RINvYINtNvXsh_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBe_11Deserialize11deserialize10VecVisitorTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtBe_7Visitor12visit_stringNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %bb.bp
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.bc

bb.bt:                                            ; preds = %bb.r
  %i.cu = inttoptr i64 %.sroa.5.0.copyload to ptr
  tail call void @_RINvYINtNvXsh_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBe_11Deserialize11deserialize10VecVisitorTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtBe_7Visitor9visit_strNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cu, i64 noundef %.sroa.16.0.copyload36)
  br label %bb.bc

bb.bu:                                            ; preds = %bb.s
  tail call void @_RINvYINtNvXsh_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBe_11Deserialize11deserialize10VecVisitorTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtBe_7Visitor9visit_u64NtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %.sroa.5.0.copyload)
  br label %bb.bc

bb.bv:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %.sroa.0223.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.sroa.0223.sroa.4.0..sroa_idx, align 8
  %.sroa.0223.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.0223.sroa.5.0..sroa_idx, align 8
  %.sroa.0223.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @5, ptr %.sroa.0223.sroa.6.0..sroa_idx, align 8
  %.sroa.0223.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 9, ptr %.sroa.0223.sroa.7.0..sroa_idx, align 8
  %.sroa.0223.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.5.0.copyload, ptr %.sroa.0223.sroa.8.0..sroa_idx, align 8
  %.sroa.4224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %.sroa.4224.0..sroa_idx, align 8
  %.sroa.6226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 0, ptr %.sroa.6226.0..sroa_idx, align 8
  call void @_RINvYINtNvXsh_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBe_11Deserialize11deserialize10VecVisitorTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtBe_7Visitor10visit_enumINtNtBe_5value21MapAccessDeserializerINtB3T_15MapDeserializerINtNtNtCsf3Ta7LF998c_4core5array4iter8IntoIterTReyEKj1_ENtNtCsaGmGRvprAGn_5plist5error5ErrorEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.bc
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_anyNtNtB2K_5impls13StringVisitorECs2zvA5OmMqFb_10ufo2fontir(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 16 dereferenceable(256) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.3218 = alloca [24 x i8], align 8         ; 2 uses
  %i.a = alloca [72 x i8], align 8                ; 11 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
end_hunk_1
begin_hunk_2_@_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer15deserialize_anyNtNtB2K_5impls13StringVisitorECs2zvA5OmMqFb_10ufo2fontir:bb.a
bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  call fastcc void @_RNvXs3_NtCsaGmGRvprAGn_5plist6streamINtB5_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.t, ptr noalias nofree noundef align 8 dereferenceable(200) %i.u)
  %.pr = load i64, ptr %i.t, align 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = phi i64 [ %.pr, %bb.c ], [ %.sroa.0237.0.copyload, %bb.b ] ; 6 uses
  switch i64 %i.v, label %bb.h [
    i64 -3, label %bb.e
    i64 -2, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 -9223372036854775807, ptr %i.s, align 8
  %i.w = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaGmGRvprAGn_5plist5errorNtB5_9ErrorKind16without_position(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.sink = phi ptr [ %i.z, %bb.g ], [ %i.w, %bb.e ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.x, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bc

bb.g:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !5, !align !13, !noundef !5
  br label %bb.f

bb.h:                                             ; preds = %bb.d
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 15 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.16.0.copyload36 = load i64, ptr %.sroa.16.0..sroa_idx, align 16 ; 11 uses
  %.sroa.16.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.16.0.copyload37 = load i64, ptr %.sroa.16.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %.sroa.16.sroa.0.sroa.0.0.extract.trunc = trunc i64 %.sroa.16.0.copyload36 to i32 ; 2 uses
  %i.aa = icmp ne i64 %i.v, -9223372036854775800
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = xor i64 %i.v, -9223372036854775808      ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 10
  %i.ad = select i1 %i.ac, i64 %i.ab, i64 8
  switch i64 %i.ad, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %bb.k
    i64 2, label %bb.l
    i64 3, label %bb.m
    i64 4, label %bb.n
    i64 5, label %bb.o
    i64 6, label %bb.p
    i64 7, label %bb.q
    i64 8, label %bb.r
    i64 9, label %bb.s
  ]

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ae = trunc nuw i64 %.sroa.5.0.copyload to i1
  %.sroa.16.0.copyload36. = select i1 %i.ae, i64 %.sroa.16.0.copyload36, i64 undef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i8 0, ptr %i.ag, align 8
  store i64 %.sroa.5.0.copyload, ptr %i.p, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sroa.16.0.copyload36., ptr %i.ah, align 8
  call void @_RINvYNtNtNtCs7N5MyPZKytm_10serde_core2de5impls13StringVisitorNtB7_7Visitor9visit_seqINtNtCsaGmGRvprAGn_5plist2de15MapAndSeqAccessINtNtB1p_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ai = load i64, ptr %i.q, align 8, !range !14, !noundef !5 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  br i1 %i.aj, label %bb.t, label %bb.u

bb.k:                                             ; preds = %bb.h
  %i.am = trunc nuw i64 %.sroa.5.0.copyload to i1
  %.sroa.16.0.copyload36.338 = select i1 %i.am, i64 %.sroa.16.0.copyload36, i64 undef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %1, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i8 0, ptr %i.ao, align 8
  store i64 %.sroa.5.0.copyload, ptr %i.j, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sroa.16.0.copyload36.338, ptr %i.ap, align 8
  call void @_RINvYNtNtNtCs7N5MyPZKytm_10serde_core2de5impls13StringVisitorNtB7_7Visitor9visit_mapINtNtCsaGmGRvprAGn_5plist2de15MapAndSeqAccessINtNtB1p_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.aq = load i64, ptr %i.k, align 8, !range !14, !noundef !5 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, -1
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  br i1 %i.ar, label %bb.al, label %bb.am

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.v, ptr %i.f, align 16
  %.sroa.5.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx9, align 8
  %.sroa.16.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.16.0.copyload36, ptr %.sroa.16.0..sroa_idx22, align 16
  %.sroa.16.0..sroa_idx22.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %.sroa.16.0.copyload37, ptr %.sroa.16.0..sroa_idx22.sroa_idx, align 8
  %i.au = invoke noundef nonnull align 8 ptr @_RNvNtCsaGmGRvprAGn_5plist5error21unexpected_event_type(i8 noundef 10, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.f)
          to label %bb.be unwind label %bb.bd

bb.m:                                             ; preds = %bb.h
  %i.av = trunc i64 %.sroa.5.0.copyload to i1
  tail call void @_RINvYNtNtNtCs7N5MyPZKytm_10serde_core2de5impls13StringVisitorNtB7_7Visitor10visit_boolNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %i.av)
  br label %bb.bc

bb.n:                                             ; preds = %bb.h
  %.not325 = icmp eq i64 %.sroa.5.0.copyload, -1
  br i1 %.not325, label %bb.bg, label %bb.bf

bb.o:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ax = load i8, ptr %i.aw, align 16, !range !9, !noundef !5
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.bi, label %bb.bh

bb.p:                                             ; preds = %bb.h
  %.sroa.16.sroa.11.0.insert.ext = zext i64 %.sroa.16.0.copyload37 to i128
  %.sroa.16.sroa.11.0.insert.shift = shl nuw i128 %.sroa.16.sroa.11.0.insert.ext, 64 ; 2 uses
  %.sroa.16.sroa.0.0.insert.ext = zext i64 %.sroa.16.0.copyload36 to i128
  %.sroa.16.sroa.0.0.insert.insert = or disjoint i128 %.sroa.16.sroa.11.0.insert.shift, %.sroa.16.sroa.0.0.insert.ext ; 2 uses
  %i.az = icmp slt i128 %.sroa.16.sroa.11.0.insert.shift, 0
  %i.ba = icmp sgt i128 %.sroa.16.sroa.0.0.insert.insert, 18446744073709551615
  %or.cond4 = or i1 %i.az, %i.ba
  br i1 %or.cond4, label %bb.bj, label %bb.bk

bb.q:                                             ; preds = %bb.h
  %i.bb = bitcast i64 %.sroa.5.0.copyload to double
  tail call void @_RINvYNtNtNtCs7N5MyPZKytm_10serde_core2de5impls13StringVisitorNtB7_7Visitor9visit_f64NtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, double noundef %i.bb)
  br label %bb.bc

bb.r:                                             ; preds = %bb.h
  %.not324 = icmp eq i64 %i.v, -1
  br i1 %.not324, label %bb.bo, label %bb.bn

bb.s:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.bd = load i8, ptr %i.bc, align 16, !range !9, !noundef !5
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.bq, label %bb.bp

bb.t:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.bf, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.bc

bb.u:                                             ; preds = %bb.j
  %.sroa.5249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.5249.0.copyload = load i64, ptr %.sroa.5249.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 %i.ai, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.al, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.5249.0.copyload, ptr %.sroa.5192.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %.sroa.0250.0.copyload = load i64, ptr %1, align 16 ; 3 uses
  store i64 -4, ptr %1, align 16
  %.not331 = icmp eq i64 %.sroa.0250.0.copyload, -4
  br i1 %.not331, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i64 %.sroa.0250.0.copyload, ptr %i.n, align 16
  %.sroa.5252.0..sroa_idx253 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5252.0..sroa_idx253, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5239.0..sroa_idx, i64 24, i1 false)
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke fastcc void @_RNvXs3_NtCsaGmGRvprAGn_5plist6streamINtB5_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.n, ptr noalias nofree noundef align 8 dereferenceable(200) %i.bg)
          to label %thread-pre-split unwind label %.thread

bb.x:                                             ; preds = %.thread, %bb.aa, %bb.ah
  %.pn335 = phi { ptr, i32 } [ %i.br, %.thread ], [ %i.bj, %bb.ah ], [ %i.bj, %bb.aa ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #26
          to label %bb.br unwind label %bb.ai

thread-pre-split:                                 ; preds = %bb.w
  %.pr351 = load i64, ptr %i.n, align 16
  br label %bb.y

bb.y:                                             ; preds = %thread-pre-split, %bb.v
  %i.bh = phi i64 [ %.pr351, %thread-pre-split ], [ %.sroa.0250.0.copyload, %bb.v ] ; 2 uses
  switch i64 %i.bh, label %bb.af [
    i64 -3, label %bb.z
    i64 -2, label %bb.ad
    i64 -9223372036854775806, label %bb.ae
  ]

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 -9223372036854775807, ptr %i.m, align 8
  %i.bi = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsaGmGRvprAGn_5plist5errorNtB5_9ErrorKind16without_position(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.m)
          to label %bb.ab unwind label %bb.aa

bb.aa:                                            ; preds = %bb.af, %bb.z
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load i64, ptr %i.n, align 16, !range !7, !noundef !5
  %i.bl = add i64 %i.bk, 3
  %i.bm = icmp ult i64 %i.bl, 2
  br i1 %i.bm, label %bb.x, label %bb.ah

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.af, %bb.ad, %bb.ab
  %.sink364 = phi ptr [ %i.bi, %bb.ab ], [ %i.bq, %bb.ad ], [ %i.bs, %bb.af ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink364, ptr %i.bn, align 8
  store i64 -1, ptr %0, align 8
  %i.bo = load i64, ptr %i.n, align 16, !range !7, !noundef !5
  %.off = add i64 %i.bo, 3
  %switch = icmp ult i64 %.off, 2
  br i1 %switch, label %bb.aj, label %bb.ak

bb.ad:                                            ; preds = %bb.y
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !5, !align !13, !noundef !5
  br label %bb.ac

bb.ae:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.o, ptr noundef nonnull align 16 dereferenceable(32) %i.n, i64 32, i1 false)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.o)
          to label %bb.ag unwind label %.thread

.thread:                                          ; preds = %bb.w, %bb.ak, %bb.ae
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.af:                                            ; preds = %bb.y
  %2 = icmp ne i64 %i.bh, -9223372036854775800
  tail call void @llvm.assume(i1 %2)
  %i.bs = invoke noundef nonnull align 8 ptr @_RNvNtCsaGmGRvprAGn_5plist5error21unexpected_event_type(i8 noundef 2, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %bb.ac unwind label %bb.aa

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.bc

bb.ah:                                            ; preds = %bb.aa
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.n) #26
          to label %bb.x unwind label %bb.ai

bb.ai:                                            ; preds = %bb.bd, %bb.az, %bb.ap, %bb.ah, %bb.x
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.aj:                                            ; preds = %bb.ac, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.bc

bb.ak:                                            ; preds = %bb.ac
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.n)
          to label %bb.aj unwind label %.thread

bb.al:                                            ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.bu, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bc

bb.am:                                            ; preds = %bb.k
  %.sroa.5256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5256.0.copyload = load i64, ptr %.sroa.5256.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 %i.aq, ptr %i.l, align 8
  %.sroa.4210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.at, ptr %.sroa.4210.0..sroa_idx, align 8
  %.sroa.5211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %.sroa.5256.0.copyload, ptr %.sroa.5211.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.sroa.0257.0.copyload = load i64, ptr %1, align 16 ; 3 uses
  store i64 -4, ptr %1, align 16
  %.not326 = icmp eq i64 %.sroa.0257.0.copyload, -4
  br i1 %.not326, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i64 %.sroa.0257.0.copyload, ptr %i.h, align 16
  %.sroa.5259.0..sroa_idx260 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5259.0..sroa_idx260, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5239.0..sroa_idx, i64 24, i1 false)
  br label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke fastcc void @_RNvXs3_NtCsaGmGRvprAGn_5plist6streamINtB5_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef align 8 dereferenceable(200) %i.bv)
          to label %thread-pre-split355 unwind label %.thread357

bb.ap:                                            ; preds = %.thread357, %bb.as, %bb.az
  %.pn = phi { ptr, i32 } [ %i.cg, %.thread357 ], [ %i.by, %bb.az ], [ %i.by, %bb.as ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #26
          to label %bb.br unwind label %bb.ai

thread-pre-split355:                              ; preds = %bb.ao
  %.pr356 = load i64, ptr %i.h, align 16
  br label %bb.aq

bb.aq:                                            ; preds = %thread-pre-split355, %bb.an
  %i.bw = phi i64 [ %.pr356, %thread-pre-split355 ], [ %.sroa.0257.0.copyload, %bb.an ] ; 2 uses
  switch i64 %i.bw, label %bb.ax [
    i64 -3, label %bb.ar
    i64 -2, label %bb.av
    i64 -9223372036854775806, label %bb.aw
  ]

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 -9223372036854775807, ptr %i.g, align 8
  %i.bx = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsaGmGRvprAGn_5plist5errorNtB5_9ErrorKind16without_position(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g)
          to label %bb.at unwind label %bb.as

bb.as:                                            ; preds = %bb.ax, %bb.ar
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load i64, ptr %i.h, align 16, !range !7, !noundef !5
  %i.ca = add i64 %i.bz, 3
  %i.cb = icmp ult i64 %i.ca, 2
  br i1 %i.cb, label %bb.ap, label %bb.az

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.au

bb.au:                                            ; preds = %bb.ax, %bb.av, %bb.at
  %.sink366 = phi ptr [ %i.bx, %bb.at ], [ %i.cf, %bb.av ], [ %i.ch, %bb.ax ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink366, ptr %i.cc, align 8
  store i64 -1, ptr %0, align 8
  %i.cd = load i64, ptr %i.h, align 16, !range !7, !noundef !5
  %.off343 = add i64 %i.cd, 3
  %switch344 = icmp ult i64 %.off343, 2
  br i1 %switch344, label %bb.ba, label %bb.bb

bb.av:                                            ; preds = %bb.aq
  %i.ce = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !nonnull !5, !align !13, !noundef !5
  br label %bb.au

bb.aw:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.i, ptr noundef nonnull align 16 dereferenceable(32) %i.h, i64 32, i1 false)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.i)
          to label %bb.ay unwind label %.thread357

.thread357:                                       ; preds = %bb.ao, %bb.bb, %bb.aw
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ax:                                            ; preds = %bb.aq
  %3 = icmp ne i64 %i.bw, -9223372036854775800
  tail call void @llvm.assume(i1 %3)
  %i.ch = invoke noundef nonnull align 8 ptr @_RNvNtCsaGmGRvprAGn_5plist5error21unexpected_event_type(i8 noundef 2, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.h)
          to label %bb.au unwind label %bb.as

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bc

bb.az:                                            ; preds = %bb.as
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.h) #26
          to label %bb.ap unwind label %bb.ai

bb.ba:                                            ; preds = %bb.au, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bc

bb.bb:                                            ; preds = %bb.au
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.h)
          to label %bb.ba unwind label %.thread357

bb.bc:                                            ; preds = %bb.t, %bb.al, %bb.aj, %bb.ba, %bb.ag, %bb.ay, %bb.m, %bb.bg, %bb.bf, %bb.bh, %bb.bi, %bb.q, %bb.bo, %bb.bn, %bb.bp, %bb.bq, %bb.bm, %bb.bk, %bb.f, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret void

bb.bd:                                            ; preds = %bb.l
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.f) #26
          to label %bb.br unwind label %bb.ai

bb.be:                                            ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.cj, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.bc

bb.bf:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.sroa.5.0.copyload, ptr %i.e, align 8
  %.sroa.16.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.16.0.copyload36, ptr %.sroa.16.8..sroa_idx, align 8
  %.sroa.16.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.16.0.copyload37, ptr %.sroa.16.8..sroa_idx.sroa_idx, align 8
  call void @_RINvXs4_NtNtCs7N5MyPZKytm_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor14visit_byte_bufNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bc

bb.bg:                                            ; preds = %bb.n
  %i.ck = inttoptr i64 %.sroa.16.0.copyload36 to ptr
  tail call void @_RINvXs4_NtNtCs7N5MyPZKytm_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor11visit_bytesNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ck, i64 noundef %.sroa.16.0.copyload37)
  br label %bb.bc

bb.bh:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.5.0.copyload, ptr %i.b, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %.sroa.16.sroa.0.sroa.0.0.extract.trunc, ptr %i.cl, align 8
  call void @_RNvMNtCsaGmGRvprAGn_5plist4dateNtB2_4Date13to_xml_format(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.bc

bb.bi:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.sroa.5.0.copyload, ptr %i.d, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %.sroa.16.sroa.0.sroa.0.0.extract.trunc, ptr %i.cm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMNtCsaGmGRvprAGn_5plist4dateNtB2_4Date13to_xml_format(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.3218, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
  store i64 1, ptr %i.c, align 8
  %.sroa.0215.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.sroa.0215.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0215.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1, ptr %.sroa.0215.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0215.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @2, ptr %.sroa.0215.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0215.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 10, ptr %.sroa.0215.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0215.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0215.sroa.0.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3218, i64 24, i1 false)
  %.sroa.0215.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 -1, ptr %.sroa.0215.sroa.4.0..sroa_idx, align 8
  %.sroa.5216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i64 0, ptr %.sroa.5216.0..sroa_idx, align 8
  call void @_RINvYNtNtNtCs7N5MyPZKytm_10serde_core2de5impls13StringVisitorNtB7_7Visitor10visit_enumINtNtB7_5value21MapAccessDeserializerINtB1p_15MapDeserializerINtNtNtCsf3Ta7LF998c_4core5array4iter8IntoIterTReNtNtCsgCecv3eZDcN_5alloc6string6StringEKj1_ENtNtCsaGmGRvprAGn_5plist5error5ErrorEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.bc

bb.bj:                                            ; preds = %bb.p
  %i.cn = add i128 %.sroa.16.sroa.0.0.insert.insert, -9223372036854775808
  %or.cond5 = icmp ult i128 %i.cn, -18446744073709551616
  br i1 %or.cond5, label %bb.bl, label %bb.bm, !prof !26

bb.bk:                                            ; preds = %bb.p
  tail call void @_RINvYNtNtNtCs7N5MyPZKytm_10serde_core2de5impls13StringVisitorNtB7_7Visitor9visit_u64NtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %.sroa.16.0.copyload36)
  br label %bb.bc

bb.bl:                                            ; preds = %bb.bj
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #29
  unreachable

bb.bm:                                            ; preds = %bb.bj
  tail call void @_RINvYNtNtNtCs7N5MyPZKytm_10serde_core2de5impls13StringVisitorNtB7_7Visitor9visit_i64NtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %.sroa.16.0.copyload36)
  br label %bb.bc

bb.bn:                                            ; preds = %bb.r
  store i64 %i.v, ptr %0, align 8, !alias.scope !927
  %.sroa.4.0..sroa_idx348 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.copyload, ptr %.sroa.4.0..sroa_idx348, align 8, !alias.scope !927
  %.sroa.5.0..sroa_idx349 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.16.0.copyload36, ptr %.sroa.5.0..sroa_idx349, align 8, !alias.scope !927
  br label %bb.bc

bb.bo:                                            ; preds = %bb.r
  %i.co = inttoptr i64 %.sroa.5.0.copyload to ptr
  tail call void @_RINvXs4_NtNtCs7N5MyPZKytm_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.co, i64 noundef %.sroa.16.0.copyload36)
  br label %bb.bc

bb.bp:                                            ; preds = %bb.s
  tail call void @_RINvYNtNtNtCs7N5MyPZKytm_10serde_core2de5impls13StringVisitorNtB7_7Visitor9visit_u64NtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %.sroa.5.0.copyload)
  br label %bb.bc

bb.bq:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %.sroa.0223.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.sroa.0223.sroa.4.0..sroa_idx, align 8
  %.sroa.0223.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.0223.sroa.5.0..sroa_idx, align 8
  %.sroa.0223.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @5, ptr %.sroa.0223.sroa.6.0..sroa_idx, align 8
  %.sroa.0223.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 9, ptr %.sroa.0223.sroa.7.0..sroa_idx, align 8
  %.sroa.0223.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.5.0.copyload, ptr %.sroa.0223.sroa.8.0..sroa_idx, align 8
  %.sroa.4224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %.sroa.4224.0..sroa_idx, align 8
  %.sroa.6226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 0, ptr %.sroa.6226.0..sroa_idx, align 8
  call void @_RINvYNtNtNtCs7N5MyPZKytm_10serde_core2de5impls13StringVisitorNtB7_7Visitor10visit_enumINtNtB7_5value21MapAccessDeserializerINtB1p_15MapDeserializerINtNtNtCsf3Ta7LF998c_4core5array4iter8IntoIterTReyEKj1_ENtNtCsaGmGRvprAGn_5plist5error5ErrorEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.bc

bb.br:                                            ; preds = %bb.x, %bb.ap, %bb.bd
  %.pn335.pn = phi { ptr, i32 } [ %.pn335, %bb.x ], [ %.pn, %bb.ap ], [ %i.ci, %bb.bd ]
  resume { ptr, i32 } %.pn335.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsaGmGRvprAGn_5plist2deQINtB6_12DeserializerINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de12Deserializer26deserialize_newtype_structNtNvXNvNtCsgdm2QMcbaeA_10fontdrasil5typess_1__NtB42_9GlyphNameNtB2K_11Deserialize11deserialize9___VisitorECs2zvA5OmMqFb_10ufo2fontir(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 16 dereferenceable(256) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %3, 11
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %2, align 1
  %i.c = xor i64 %i.b, 4708000300660247632
  %i.d = getelementptr i8, ptr %2, i64 3
  %i.e = load i64, ptr %i.d, align 1
  %i.f = xor i64 %i.e, 4995983205139829843
  %i.g = or i64 %i.c, %i.f
  %i.h = icmp ne i64 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  tail call fastcc void @_RINvXNvXNvNtCsgdm2QMcbaeA_10fontdrasil5typess_1__NtB8_9GlyphNameNtNtCs7N5MyPZKytm_10serde_core2de11Deserialize11deserializeNtB3_9___VisitorNtB12_7Visitor20visit_newtype_structQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB2T_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 16 dereferenceable(256) %1) #31
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 3 uses
  %i.l = load i8, ptr %i.k, align 16, !range !9, !noundef !5
  store i8 1, ptr %i.k, align 16
  tail call fastcc void @_RINvXNvXNvNtCsgdm2QMcbaeA_10fontdrasil5typess_1__NtB8_9GlyphNameNtNtCs7N5MyPZKytm_10serde_core2de11Deserialize11deserializeNtB3_9___VisitorNtB12_7Visitor20visit_newtype_structQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB2T_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 16 dereferenceable(256) %1) #31
  store i8 %i.l, ptr %i.k, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCs7N5MyPZKytm_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtCs5Xr050g3D4S_3std4path7PathBufENtB6_15DeserializeSeed11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB2y_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtB1n_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(256) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.3218.i.i.i = alloca [24 x i8], align 8   ; 4 uses
  %i.a = alloca [72 x i8], align 8                ; 11 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [96 x i8], align 8                ; 11 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 16               ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
end_hunk_2
begin_hunk_3_@_RINvXs3_NtCs7N5MyPZKytm_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtCs5Xr050g3D4S_3std4path7PathBufENtB6_15DeserializeSeed11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB2y_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtB1n_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir:bb.a
bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  call fastcc void @_RNvXs3_NtCsaGmGRvprAGn_5plist6streamINtB5_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.t, ptr noalias nofree noundef align 8 dereferenceable(200) %i.u), !noalias !949
  %.pr.i.i.i = load i64, ptr %i.t, align 16, !noalias !947
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = phi i64 [ %.pr.i.i.i, %bb.c ], [ %.sroa.0237.0.copyload.i.i.i, %bb.b ] ; 6 uses
  switch i64 %i.v, label %bb.h [
    i64 -3, label %bb.e
    i64 -2, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !947
  store i64 -9223372036854775807, ptr %i.s, align 8, !noalias !947
  %i.w = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaGmGRvprAGn_5plist5errorNtB5_9ErrorKind16without_position(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.s), !noalias !949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !947
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.sink.i.i.i = phi ptr [ %i.z, %bb.g ], [ %i.w, %bb.e ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i.i.i, ptr %i.x, align 8, !alias.scope !949
  store i64 -1, ptr %0, align 8, !alias.scope !949
  br label %_RINvXsr_NtNtCs7N5MyPZKytm_10serde_core2de5implsNtNtCs5Xr050g3D4S_3std4path7PathBufNtB8_11Deserialize11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB1T_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtBN_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.g:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !noalias !947, !nonnull !5, !align !13, !noundef !5
  br label %bb.f

bb.h:                                             ; preds = %bb.d
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !947 ; 15 uses
  %.sroa.16.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.16.0.copyload36.i.i.i = load i64, ptr %.sroa.16.0..sroa_idx.i.i.i, align 16, !noalias !947 ; 11 uses
  %.sroa.16.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.16.0.copyload37.i.i.i = load i64, ptr %.sroa.16.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !947 ; 4 uses
  %.sroa.16.sroa.0.sroa.0.0.extract.trunc.i.i.i = trunc i64 %.sroa.16.0.copyload36.i.i.i to i32 ; 2 uses
  %i.aa = icmp ne i64 %i.v, -9223372036854775800
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = xor i64 %i.v, -9223372036854775808      ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 10
  %i.ad = select i1 %i.ac, i64 %i.ab, i64 8
  switch i64 %i.ad, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %bb.k
    i64 2, label %bb.l
    i64 3, label %bb.m
    i64 4, label %bb.n
    i64 5, label %bb.o
    i64 6, label %bb.p
    i64 7, label %bb.q
    i64 8, label %bb.r
    i64 9, label %bb.s
  ]

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ae = trunc nuw i64 %.sroa.5.0.copyload.i.i.i to i1
  %.sroa.16.0.copyload36..i.i.i = select i1 %i.ae, i64 %.sroa.16.0.copyload36.i.i.i, i64 undef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !947
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !947
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !947
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %1, ptr %i.af, align 8, !noalias !947
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i8 0, ptr %i.ag, align 8, !noalias !947
  store i64 %.sroa.5.0.copyload.i.i.i, ptr %i.p, align 8, !noalias !947
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sroa.16.0.copyload36..i.i.i, ptr %i.ah, align 8, !noalias !947
  call void @_RINvYNtNtNtCs7N5MyPZKytm_10serde_core2de5impls14PathBufVisitorNtB7_7Visitor9visit_seqINtNtCsaGmGRvprAGn_5plist2de15MapAndSeqAccessINtNtB1q_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.p), !noalias !949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !947
  %i.ai = load i64, ptr %i.q, align 8, !range !14, !noalias !947, !noundef !5 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !947 ; 2 uses
  br i1 %i.aj, label %bb.t, label %bb.u

bb.k:                                             ; preds = %bb.h
  %i.am = trunc nuw i64 %.sroa.5.0.copyload.i.i.i to i1
  %.sroa.16.0.copyload36.338.i.i.i = select i1 %i.am, i64 %.sroa.16.0.copyload36.i.i.i, i64 undef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !947
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !947
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !947
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %1, ptr %i.an, align 8, !noalias !947
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i8 0, ptr %i.ao, align 8, !noalias !947
  store i64 %.sroa.5.0.copyload.i.i.i, ptr %i.j, align 8, !noalias !947
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sroa.16.0.copyload36.338.i.i.i, ptr %i.ap, align 8, !noalias !947
  call void @_RINvYNtNtNtCs7N5MyPZKytm_10serde_core2de5impls14PathBufVisitorNtB7_7Visitor9visit_mapINtNtCsaGmGRvprAGn_5plist2de15MapAndSeqAccessINtNtB1q_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.j), !noalias !949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !947
  %i.aq = load i64, ptr %i.k, align 8, !range !14, !noalias !947, !noundef !5 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, -1
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !noalias !947 ; 2 uses
  br i1 %i.ar, label %bb.al, label %bb.am

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !947
  store i64 %i.v, ptr %i.f, align 16, !noalias !947
  %.sroa.5.0..sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.5.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx9.i.i.i, align 8, !noalias !947
  %.sroa.16.0..sroa_idx22.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.16.0.copyload36.i.i.i, ptr %.sroa.16.0..sroa_idx22.i.i.i, align 16, !noalias !947
  %.sroa.16.0..sroa_idx22.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %.sroa.16.0.copyload37.i.i.i, ptr %.sroa.16.0..sroa_idx22.sroa_idx.i.i.i, align 8, !noalias !947
  %i.au = invoke noundef nonnull align 8 ptr @_RNvNtCsaGmGRvprAGn_5plist5error21unexpected_event_type(i8 noundef 10, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.f)
          to label %bb.bd unwind label %bb.bc, !noalias !949

bb.m:                                             ; preds = %bb.h
  %i.av = trunc i64 %.sroa.5.0.copyload.i.i.i to i1
  tail call void @_RINvYNtNtNtCs7N5MyPZKytm_10serde_core2de5impls14PathBufVisitorNtB7_7Visitor10visit_boolNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %i.av)
  br label %_RINvXsr_NtNtCs7N5MyPZKytm_10serde_core2de5implsNtNtCs5Xr050g3D4S_3std4path7PathBufNtB8_11Deserialize11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB1T_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtBN_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.n:                                             ; preds = %bb.h
  %.not325.i.i.i = icmp eq i64 %.sroa.5.0.copyload.i.i.i, -1
  br i1 %.not325.i.i.i, label %bb.bf, label %bb.be

bb.o:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ax = load i8, ptr %i.aw, align 16, !range !9, !alias.scope !948, !noundef !5
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.bh, label %bb.bg

bb.p:                                             ; preds = %bb.h
  %.sroa.16.sroa.11.0.insert.ext.i.i.i = zext i64 %.sroa.16.0.copyload37.i.i.i to i128
  %.sroa.16.sroa.11.0.insert.shift.i.i.i = shl nuw i128 %.sroa.16.sroa.11.0.insert.ext.i.i.i, 64 ; 2 uses
  %.sroa.16.sroa.0.0.insert.ext.i.i.i = zext i64 %.sroa.16.0.copyload36.i.i.i to i128
  %.sroa.16.sroa.0.0.insert.insert.i.i.i = or disjoint i128 %.sroa.16.sroa.11.0.insert.shift.i.i.i, %.sroa.16.sroa.0.0.insert.ext.i.i.i ; 2 uses
  %i.az = icmp slt i128 %.sroa.16.sroa.11.0.insert.shift.i.i.i, 0
  %i.ba = icmp sgt i128 %.sroa.16.sroa.0.0.insert.insert.i.i.i, 18446744073709551615
  %or.cond4.i.i.i = or i1 %i.az, %i.ba
  br i1 %or.cond4.i.i.i, label %bb.bi, label %bb.bj

bb.q:                                             ; preds = %bb.h
  %i.bb = bitcast i64 %.sroa.5.0.copyload.i.i.i to double
  tail call void @_RINvYNtNtNtCs7N5MyPZKytm_10serde_core2de5impls14PathBufVisitorNtB7_7Visitor9visit_f64NtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, double noundef %i.bb)
  br label %_RINvXsr_NtNtCs7N5MyPZKytm_10serde_core2de5implsNtNtCs5Xr050g3D4S_3std4path7PathBufNtB8_11Deserialize11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB1T_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtBN_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.r:                                             ; preds = %bb.h
  %.not324.i.i.i = icmp eq i64 %i.v, -1
  br i1 %.not324.i.i.i, label %bb.bn, label %bb.bm

bb.s:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.bd = load i8, ptr %i.bc, align 16, !range !9, !alias.scope !948, !noundef !5
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.bp, label %bb.bo

bb.t:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !947
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.bf, align 8, !alias.scope !949
  store i64 -1, ptr %0, align 8, !alias.scope !949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !947
  br label %_RINvXsr_NtNtCs7N5MyPZKytm_10serde_core2de5implsNtNtCs5Xr050g3D4S_3std4path7PathBufNtB8_11Deserialize11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB1T_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtBN_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.u:                                             ; preds = %bb.j
  %.sroa.5249.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.5249.0.copyload.i.i.i = load i64, ptr %.sroa.5249.0..sroa_idx.i.i.i, align 8, !noalias !947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !947
  store i64 %i.ai, ptr %i.r, align 8, !noalias !947
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.al, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !947
  %.sroa.5192.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.5249.0.copyload.i.i.i, ptr %.sroa.5192.0..sroa_idx.i.i.i, align 8, !noalias !947
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !947
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !947
  %.sroa.0250.0.copyload.i.i.i = load i64, ptr %1, align 16, !alias.scope !948 ; 3 uses
  store i64 -4, ptr %1, align 16, !alias.scope !948
  %.not331.i.i.i = icmp eq i64 %.sroa.0250.0.copyload.i.i.i, -4
  br i1 %.not331.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i64 %.sroa.0250.0.copyload.i.i.i, ptr %i.n, align 16, !noalias !947
  %.sroa.5252.0..sroa_idx253.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5252.0..sroa_idx253.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5239.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !949
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke fastcc void @_RNvXs3_NtCsaGmGRvprAGn_5plist6streamINtB5_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.n, ptr noalias nofree noundef align 8 dereferenceable(200) %i.bg)
          to label %thread-pre-split.i.i.i unwind label %.thread.i.i.i, !noalias !949

bb.x:                                             ; preds = %bb.ah, %.thread.i.i.i, %bb.aa
  %.pn335.i.i.i = phi { ptr, i32 } [ %i.br, %.thread.i.i.i ], [ %i.bj, %bb.ah ], [ %i.bj, %bb.aa ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #26
          to label %bb.bq unwind label %bb.ai, !noalias !949

thread-pre-split.i.i.i:                           ; preds = %bb.w
  %.pr351.i.i.i = load i64, ptr %i.n, align 16, !noalias !947
  br label %bb.y

bb.y:                                             ; preds = %thread-pre-split.i.i.i, %bb.v
  %i.bh = phi i64 [ %.pr351.i.i.i, %thread-pre-split.i.i.i ], [ %.sroa.0250.0.copyload.i.i.i, %bb.v ] ; 2 uses
  switch i64 %i.bh, label %bb.af [
    i64 -3, label %bb.z
    i64 -2, label %bb.ad
    i64 -9223372036854775806, label %bb.ae
  ]

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !947
  store i64 -9223372036854775807, ptr %i.m, align 8, !noalias !947
  %i.bi = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsaGmGRvprAGn_5plist5errorNtB5_9ErrorKind16without_position(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.m)
          to label %bb.ab unwind label %bb.aa, !noalias !949

bb.aa:                                            ; preds = %bb.af, %bb.z
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load i64, ptr %i.n, align 16, !range !7, !noalias !947, !noundef !5
  %i.bl = add i64 %i.bk, 3
  %i.bm = icmp ult i64 %i.bl, 2
  br i1 %i.bm, label %bb.x, label %bb.ah

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !947
  br label %bb.ac

bb.ac:                                            ; preds = %bb.af, %bb.ad, %bb.ab
  %.sink364.i.i.i = phi ptr [ %i.bi, %bb.ab ], [ %i.bq, %bb.ad ], [ %i.bs, %bb.af ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink364.i.i.i, ptr %i.bn, align 8, !alias.scope !949
  store i64 -1, ptr %0, align 8, !alias.scope !949
  %i.bo = load i64, ptr %i.n, align 16, !range !7, !noalias !947, !noundef !5
  %.off.i.i.i = add i64 %i.bo, 3
  %switch.i.i.i = icmp ult i64 %.off.i.i.i, 2
  br i1 %switch.i.i.i, label %bb.aj, label %bb.ak

bb.ad:                                            ; preds = %bb.y
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !947, !nonnull !5, !align !13, !noundef !5
  br label %bb.ac

bb.ae:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.o, ptr noundef nonnull align 16 dereferenceable(32) %i.n, i64 32, i1 false), !noalias !947
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.o)
          to label %bb.ag unwind label %.thread.i.i.i, !noalias !949

.thread.i.i.i:                                    ; preds = %bb.ak, %bb.ae, %bb.w
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.af:                                            ; preds = %bb.y
  %2 = icmp ne i64 %i.bh, -9223372036854775800
  tail call void @llvm.assume(i1 %2)
  %i.bs = invoke noundef nonnull align 8 ptr @_RNvNtCsaGmGRvprAGn_5plist5error21unexpected_event_type(i8 noundef 2, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %bb.ac unwind label %bb.aa, !noalias !949

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !947
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !947
  br label %_RINvXsr_NtNtCs7N5MyPZKytm_10serde_core2de5implsNtNtCs5Xr050g3D4S_3std4path7PathBufNtB8_11Deserialize11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB1T_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtBN_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.ah:                                            ; preds = %bb.aa
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.n) #26
          to label %bb.x unwind label %bb.ai, !noalias !949

bb.ai:                                            ; preds = %bb.bc, %bb.az, %bb.ap, %bb.ah, %bb.x
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !949
  unreachable

bb.aj:                                            ; preds = %bb.ak, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !947
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r), !noalias !949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !947
  br label %_RINvXsr_NtNtCs7N5MyPZKytm_10serde_core2de5implsNtNtCs5Xr050g3D4S_3std4path7PathBufNtB8_11Deserialize11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB1T_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtBN_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.ak:                                            ; preds = %bb.ac
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.n)
          to label %bb.aj unwind label %.thread.i.i.i, !noalias !949

bb.al:                                            ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !947
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.bu, align 8, !alias.scope !949
  store i64 -1, ptr %0, align 8, !alias.scope !949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !947
  br label %_RINvXsr_NtNtCs7N5MyPZKytm_10serde_core2de5implsNtNtCs5Xr050g3D4S_3std4path7PathBufNtB8_11Deserialize11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB1T_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtBN_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.am:                                            ; preds = %bb.k
  %.sroa.5256.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5256.0.copyload.i.i.i = load i64, ptr %.sroa.5256.0..sroa_idx.i.i.i, align 8, !noalias !947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !947
  store i64 %i.aq, ptr %i.l, align 8, !noalias !947
  %.sroa.4210.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.at, ptr %.sroa.4210.0..sroa_idx.i.i.i, align 8, !noalias !947
  %.sroa.5211.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %.sroa.5256.0.copyload.i.i.i, ptr %.sroa.5211.0..sroa_idx.i.i.i, align 8, !noalias !947
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !947
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !947
  %.sroa.0257.0.copyload.i.i.i = load i64, ptr %1, align 16, !alias.scope !948 ; 3 uses
  store i64 -4, ptr %1, align 16, !alias.scope !948
  %.not326.i.i.i = icmp eq i64 %.sroa.0257.0.copyload.i.i.i, -4
  br i1 %.not326.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i64 %.sroa.0257.0.copyload.i.i.i, ptr %i.h, align 16, !noalias !947
  %.sroa.5259.0..sroa_idx260.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5259.0..sroa_idx260.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5239.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !949
  br label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke fastcc void @_RNvXs3_NtCsaGmGRvprAGn_5plist6streamINtB5_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef align 8 dereferenceable(200) %i.bv)
          to label %thread-pre-split355.i.i.i unwind label %.thread357.i.i.i, !noalias !949

bb.ap:                                            ; preds = %bb.az, %.thread357.i.i.i, %bb.as
  %.pn.i.i.i = phi { ptr, i32 } [ %i.cg, %.thread357.i.i.i ], [ %i.by, %bb.az ], [ %i.by, %bb.as ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #26
          to label %bb.bq unwind label %bb.ai, !noalias !949

thread-pre-split355.i.i.i:                        ; preds = %bb.ao
  %.pr356.i.i.i = load i64, ptr %i.h, align 16, !noalias !947
  br label %bb.aq

bb.aq:                                            ; preds = %thread-pre-split355.i.i.i, %bb.an
  %i.bw = phi i64 [ %.pr356.i.i.i, %thread-pre-split355.i.i.i ], [ %.sroa.0257.0.copyload.i.i.i, %bb.an ] ; 2 uses
  switch i64 %i.bw, label %bb.ax [
    i64 -3, label %bb.ar
    i64 -2, label %bb.av
    i64 -9223372036854775806, label %bb.aw
  ]

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !947
  store i64 -9223372036854775807, ptr %i.g, align 8, !noalias !947
  %i.bx = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsaGmGRvprAGn_5plist5errorNtB5_9ErrorKind16without_position(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g)
          to label %bb.at unwind label %bb.as, !noalias !949

bb.as:                                            ; preds = %bb.ax, %bb.ar
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load i64, ptr %i.h, align 16, !range !7, !noalias !947, !noundef !5
  %i.ca = add i64 %i.bz, 3
  %i.cb = icmp ult i64 %i.ca, 2
  br i1 %i.cb, label %bb.ap, label %bb.az

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !947
  br label %bb.au

bb.au:                                            ; preds = %bb.ax, %bb.av, %bb.at
  %.sink366.i.i.i = phi ptr [ %i.bx, %bb.at ], [ %i.cf, %bb.av ], [ %i.ch, %bb.ax ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink366.i.i.i, ptr %i.cc, align 8, !alias.scope !949
  store i64 -1, ptr %0, align 8, !alias.scope !949
  %i.cd = load i64, ptr %i.h, align 16, !range !7, !noalias !947, !noundef !5
  %.off343.i.i.i = add i64 %i.cd, 3
  %switch344.i.i.i = icmp ult i64 %.off343.i.i.i, 2
  br i1 %switch344.i.i.i, label %bb.ba, label %bb.bb

bb.av:                                            ; preds = %bb.aq
  %i.ce = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !947, !nonnull !5, !align !13, !noundef !5
  br label %bb.au

bb.aw:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.i, ptr noundef nonnull align 16 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !947
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.i)
          to label %bb.ay unwind label %.thread357.i.i.i, !noalias !949

.thread357.i.i.i:                                 ; preds = %bb.bb, %bb.aw, %bb.ao
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ax:                                            ; preds = %bb.aq
  %3 = icmp ne i64 %i.bw, -9223372036854775800
  tail call void @llvm.assume(i1 %3)
  %i.ch = invoke noundef nonnull align 8 ptr @_RNvNtCsaGmGRvprAGn_5plist5error21unexpected_event_type(i8 noundef 2, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.h)
          to label %bb.au unwind label %bb.as, !noalias !949

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !947
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !947
  br label %_RINvXsr_NtNtCs7N5MyPZKytm_10serde_core2de5implsNtNtCs5Xr050g3D4S_3std4path7PathBufNtB8_11Deserialize11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB1T_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtBN_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.az:                                            ; preds = %bb.as
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.h) #26
          to label %bb.ap unwind label %bb.ai, !noalias !949

bb.ba:                                            ; preds = %bb.bb, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !947
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l), !noalias !949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !947
  br label %_RINvXsr_NtNtCs7N5MyPZKytm_10serde_core2de5implsNtNtCs5Xr050g3D4S_3std4path7PathBufNtB8_11Deserialize11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB1T_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtBN_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.bb:                                            ; preds = %bb.au
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.h)
          to label %bb.ba unwind label %.thread357.i.i.i, !noalias !949

bb.bc:                                            ; preds = %bb.l
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.f) #26
          to label %bb.bq unwind label %bb.ai, !noalias !949

bb.bd:                                            ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.cj, align 8, !alias.scope !949
  store i64 -1, ptr %0, align 8, !alias.scope !949
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.f), !noalias !949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !947
  br label %_RINvXsr_NtNtCs7N5MyPZKytm_10serde_core2de5implsNtNtCs5Xr050g3D4S_3std4path7PathBufNtB8_11Deserialize11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB1T_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtBN_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.be:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !947
  store i64 %.sroa.5.0.copyload.i.i.i, ptr %i.e, align 8, !noalias !947
  %.sroa.16.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.16.0.copyload36.i.i.i, ptr %.sroa.16.8..sroa_idx.i.i.i, align 8, !noalias !947
  %.sroa.16.8..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.16.0.copyload37.i.i.i, ptr %.sroa.16.8..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !947
  call void @_RINvXsq_NtNtCs7N5MyPZKytm_10serde_core2de5implsNtB6_14PathBufVisitorNtB8_7Visitor14visit_byte_bufNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !947
  br label %_RINvXsr_NtNtCs7N5MyPZKytm_10serde_core2de5implsNtNtCs5Xr050g3D4S_3std4path7PathBufNtB8_11Deserialize11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB1T_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtBN_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.bf:                                            ; preds = %bb.n
  %i.ck = inttoptr i64 %.sroa.16.0.copyload36.i.i.i to ptr
  tail call void @_RINvXsq_NtNtCs7N5MyPZKytm_10serde_core2de5implsNtB6_14PathBufVisitorNtB8_7Visitor11visit_bytesNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ck, i64 noundef %.sroa.16.0.copyload37.i.i.i)
  br label %_RINvXsr_NtNtCs7N5MyPZKytm_10serde_core2de5implsNtNtCs5Xr050g3D4S_3std4path7PathBufNtB8_11Deserialize11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB1T_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtBN_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.bg:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !947
  store i64 %.sroa.5.0.copyload.i.i.i, ptr %i.b, align 8, !noalias !947
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %.sroa.16.sroa.0.sroa.0.0.extract.trunc.i.i.i, ptr %i.cl, align 8, !noalias !947
  call void @_RNvMNtCsaGmGRvprAGn_5plist4dateNtB2_4Date13to_xml_format(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !947
  br label %_RINvXsr_NtNtCs7N5MyPZKytm_10serde_core2de5implsNtNtCs5Xr050g3D4S_3std4path7PathBufNtB8_11Deserialize11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB1T_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtBN_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.bh:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !947
  store i64 %.sroa.5.0.copyload.i.i.i, ptr %i.d, align 8, !noalias !947
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %.sroa.16.sroa.0.sroa.0.0.extract.trunc.i.i.i, ptr %i.cm, align 8, !noalias !947
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !947
  call void @_RNvMNtCsaGmGRvprAGn_5plist4dateNtB2_4Date13to_xml_format(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.3218.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d), !noalias !949
  store i64 1, ptr %i.c, align 8, !noalias !947
  %.sroa.0215.sroa.0.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.sroa.0215.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !947
  %.sroa.0215.sroa.0.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1, ptr %.sroa.0215.sroa.0.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !947
  %.sroa.0215.sroa.0.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @2, ptr %.sroa.0215.sroa.0.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !947
  %.sroa.0215.sroa.0.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 10, ptr %.sroa.0215.sroa.0.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !947
  %.sroa.0215.sroa.0.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0215.sroa.0.sroa.8.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3218.i.i.i, i64 24, i1 false), !noalias !947
  %.sroa.0215.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 -1, ptr %.sroa.0215.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !947
  %.sroa.5216.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i64 0, ptr %.sroa.5216.0..sroa_idx.i.i.i, align 8, !noalias !947
  call void @_RINvYNtNtNtCs7N5MyPZKytm_10serde_core2de5impls14PathBufVisitorNtB7_7Visitor10visit_enumINtNtB7_5value21MapAccessDeserializerINtB1q_15MapDeserializerINtNtNtCsf3Ta7LF998c_4core5array4iter8IntoIterTReNtNtCsgCecv3eZDcN_5alloc6string6StringEKj1_ENtNtCsaGmGRvprAGn_5plist5error5ErrorEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !947
  br label %_RINvXsr_NtNtCs7N5MyPZKytm_10serde_core2de5implsNtNtCs5Xr050g3D4S_3std4path7PathBufNtB8_11Deserialize11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB1T_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtBN_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.bi:                                            ; preds = %bb.p
  %i.cn = add i128 %.sroa.16.sroa.0.0.insert.insert.i.i.i, -9223372036854775808
  %or.cond5.i.i.i = icmp ult i128 %i.cn, -18446744073709551616
  br i1 %or.cond5.i.i.i, label %bb.bk, label %bb.bl, !prof !26

bb.bj:                                            ; preds = %bb.p
  tail call void @_RINvYNtNtNtCs7N5MyPZKytm_10serde_core2de5impls14PathBufVisitorNtB7_7Visitor9visit_u64NtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %.sroa.16.0.copyload36.i.i.i)
  br label %_RINvXsr_NtNtCs7N5MyPZKytm_10serde_core2de5implsNtNtCs5Xr050g3D4S_3std4path7PathBufNtB8_11Deserialize11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB1T_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtBN_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.bk:                                            ; preds = %bb.bi
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #29, !noalias !949
  unreachable

bb.bl:                                            ; preds = %bb.bi
  tail call void @_RINvYNtNtNtCs7N5MyPZKytm_10serde_core2de5impls14PathBufVisitorNtB7_7Visitor9visit_i64NtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %.sroa.16.0.copyload36.i.i.i)
  br label %_RINvXsr_NtNtCs7N5MyPZKytm_10serde_core2de5implsNtNtCs5Xr050g3D4S_3std4path7PathBufNtB8_11Deserialize11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB1T_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtBN_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.bm:                                            ; preds = %bb.r
  store i64 %i.v, ptr %0, align 8, !alias.scope !950
  %.sroa.4.0..sroa_idx348.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx348.i.i.i, align 8, !alias.scope !950
  %.sroa.5.0..sroa_idx349.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.16.0.copyload36.i.i.i, ptr %.sroa.5.0..sroa_idx349.i.i.i, align 8, !alias.scope !950
  br label %_RINvXsr_NtNtCs7N5MyPZKytm_10serde_core2de5implsNtNtCs5Xr050g3D4S_3std4path7PathBufNtB8_11Deserialize11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB1T_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtBN_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.bn:                                            ; preds = %bb.r
  %i.co = inttoptr i64 %.sroa.5.0.copyload.i.i.i to ptr
  tail call void @_RINvXsq_NtNtCs7N5MyPZKytm_10serde_core2de5implsNtB6_14PathBufVisitorNtB8_7Visitor9visit_strNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.co, i64 noundef %.sroa.16.0.copyload36.i.i.i)
  br label %_RINvXsr_NtNtCs7N5MyPZKytm_10serde_core2de5implsNtNtCs5Xr050g3D4S_3std4path7PathBufNtB8_11Deserialize11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB1T_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtBN_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.bo:                                            ; preds = %bb.s
  tail call void @_RINvYNtNtNtCs7N5MyPZKytm_10serde_core2de5impls14PathBufVisitorNtB7_7Visitor9visit_u64NtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %.sroa.5.0.copyload.i.i.i)
  br label %_RINvXsr_NtNtCs7N5MyPZKytm_10serde_core2de5implsNtNtCs5Xr050g3D4S_3std4path7PathBufNtB8_11Deserialize11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB1T_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtBN_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.bp:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !947
  store i64 1, ptr %i.a, align 8, !noalias !947
  %.sroa.0223.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.sroa.0223.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !947
  %.sroa.0223.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.0223.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !947
  %.sroa.0223.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @5, ptr %.sroa.0223.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !947
  %.sroa.0223.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 9, ptr %.sroa.0223.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !947
  %.sroa.0223.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.5.0.copyload.i.i.i, ptr %.sroa.0223.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !947
  %.sroa.4224.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %.sroa.4224.0..sroa_idx.i.i.i, align 8, !noalias !947
  %.sroa.6226.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 0, ptr %.sroa.6226.0..sroa_idx.i.i.i, align 8, !noalias !947
  call void @_RINvYNtNtNtCs7N5MyPZKytm_10serde_core2de5impls14PathBufVisitorNtB7_7Visitor10visit_enumINtNtB7_5value21MapAccessDeserializerINtB1q_15MapDeserializerINtNtNtCsf3Ta7LF998c_4core5array4iter8IntoIterTReyEKj1_ENtNtCsaGmGRvprAGn_5plist5error5ErrorEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !947
  br label %_RINvXsr_NtNtCs7N5MyPZKytm_10serde_core2de5implsNtNtCs5Xr050g3D4S_3std4path7PathBufNtB8_11Deserialize11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB1T_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtBN_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.bq:                                            ; preds = %bb.bc, %bb.ap, %bb.x
  %.pn335.pn.i.i.i = phi { ptr, i32 } [ %.pn335.i.i.i, %bb.x ], [ %.pn.i.i.i, %bb.ap ], [ %i.ci, %bb.bc ]
  resume { ptr, i32 } %.pn335.pn.i.i.i

_RINvXsr_NtNtCs7N5MyPZKytm_10serde_core2de5implsNtNtCs5Xr050g3D4S_3std4path7PathBufNtB8_11Deserialize11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB1T_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtBN_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %bb.f, %bb.m, %bb.q, %bb.t, %bb.ag, %bb.aj, %bb.al, %bb.ay, %bb.ba, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bj, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !947
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3218.i.i.i), !noalias !946
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtCsaGmGRvprAGn_5plist2deINtB6_15MapAndSeqAccessINtNtB8_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtCs7N5MyPZKytm_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtB2h_4path7PathBufEEECs2zvA5OmMqFb_10ufo2fontir(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 16               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.3225.i.i.i.i = alloca [24 x i8], align 8 ; 4 uses
  %i.g = alloca [72 x i8], align 8                ; 11 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [96 x i8], align 8                ; 11 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 16               ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [32 x i8], align 16               ; 14 uses
  %i.q = alloca [32 x i8], align 16               ; 5 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [48 x i8], align 8                ; 8 uses
  %i.t = alloca [48 x i8], align 8                ; 11 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [32 x i8], align 16               ; 14 uses
  %i.w = alloca [32 x i8], align 16               ; 5 uses
  %i.x = alloca [48 x i8], align 8                ; 12 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [32 x i8], align 16               ; 4 uses
  %i.aa = alloca [48 x i8], align 8               ; 31 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !5, !align !27, !noundef !5 ; 23 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 5 uses
  %i.ae = load i64, ptr %i.ac, align 16, !range !15, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.ae, -4
  br i1 %.not.i, label %bb.b, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsaGmGRvprAGn_5plist6stream5EventNtNtB1c_5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2y_8PeekableINtB1a_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEE4peek0ECs2zvA5OmMqFb_10ufo2fontir.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1007
  call fastcc void @_RNvXs3_NtCsaGmGRvprAGn_5plist6streamINtB5_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(32) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.ad), !noalias !1007
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ac, ptr noundef nonnull align 16 dereferenceable(32) %i.z, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1007
  %i.af = load i64, ptr %i.ac, align 16, !range !15, !noundef !5 ; 2 uses
  %i.ag = icmp ne i64 %i.af, -4
  tail call void @llvm.assume(i1 %i.ag)
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsaGmGRvprAGn_5plist6stream5EventNtNtB1c_5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2y_8PeekableINtB1a_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEE4peek0ECs2zvA5OmMqFb_10ufo2fontir.exit

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsaGmGRvprAGn_5plist6stream5EventNtNtB1c_5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2y_8PeekableINtB1a_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEE4peek0ECs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %bb.a, %bb.b
  %i.ah = phi i64 [ %i.ae, %bb.a ], [ %i.af, %bb.b ] ; 7 uses
  %cond = icmp eq i64 %i.ah, -9223372036854775806
  br i1 %cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsaGmGRvprAGn_5plist6stream5EventNtNtB1c_5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2y_8PeekableINtB1a_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEE4peek0ECs2zvA5OmMqFb_10ufo2fontir.exit
  %i.ai = load i64, ptr %1, align 8, !range !10, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = trunc nuw i64 %i.ai to i1
  br i1 %i.ak, label %bb.f, label %bb.g

bb.d:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsaGmGRvprAGn_5plist6stream5EventNtNtB1c_5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2y_8PeekableINtB1a_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEE4peek0ECs2zvA5OmMqFb_10ufo2fontir.exit
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.co, %bb.d
  ret void

bb.f:                                             ; preds = %bb.c
  %i.al = load i64, ptr %i.aj, align 8
  %i.am = tail call i64 @llvm.usub.sat.i64(i64 %i.al, i64 1)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %.sroa.5.0 = phi i64 [ %i.am, %bb.f ], [ undef, %bb.c ]
  %.sroa.03.0 = phi i64 [ 1, %bb.f ], [ 0, %bb.c ]
  store i64 %.sroa.03.0, ptr %1, align 8
  store i64 %.sroa.5.0, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 241 ; 9 uses
  %i.ao = load i8, ptr %i.an, align 1, !range !20, !noundef !5
  store i8 2, ptr %i.an, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3225.i.i.i.i), !noalias !1016
  %.sroa.5246.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  store i64 -4, ptr %i.ac, align 16, !alias.scope !1017
  %.sroa.3.8.copyload = load i64, ptr %.sroa.5246.0..sroa_idx.i.i.i.i, align 8, !noalias !1018 ; 15 uses
  %.sroa.6.8..sroa.5246.0..sroa_idx.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.6.8.copyload = load i64, ptr %.sroa.6.8..sroa.5246.0..sroa_idx.i.i.i.i.sroa_idx, align 16, !noalias !1018 ; 11 uses
  %.sroa.7.8..sroa.5246.0..sroa_idx.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.7.8.copyload = load i64, ptr %.sroa.7.8..sroa.5246.0..sroa_idx.i.i.i.i.sroa_idx, align 8, !noalias !1018 ; 4 uses
  switch i64 %i.ah, label %bb.k [
    i64 -3, label %bb.h
    i64 -2, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1019
  store i64 -9223372036854775807, ptr %i.y, align 8, !noalias !1019
  %i.ap = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaGmGRvprAGn_5plist5errorNtB5_9ErrorKind16without_position(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.y), !noalias !1018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1019
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.sink.i.i.i.i = phi ptr [ %i.ar, %bb.j ], [ %i.ap, %bb.h ]
  store ptr %.sink.i.i.i.i, ptr %i.aa, align 8, !alias.scope !1018
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 -1, ptr %i.aq, align 8, !alias.scope !1018
  br label %_RINvXs3_NtCs7N5MyPZKytm_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtB6_15DeserializeSeed11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB3k_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtB28_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.j:                                             ; preds = %bb.g
  %i.ar = inttoptr i64 %.sroa.3.8.copyload to ptr
  br label %bb.i

bb.k:                                             ; preds = %bb.g
  %.sroa.16.sroa.0.sroa.0.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.6.8.copyload to i32 ; 2 uses
  %i.as = icmp ne i64 %i.ah, -9223372036854775800
  tail call void @llvm.assume(i1 %i.as)
  %i.at = xor i64 %i.ah, -9223372036854775808     ; 2 uses
  %i.au = icmp ult i64 %i.at, 10
  %i.av = select i1 %i.au, i64 %i.at, i64 8
  switch i64 %i.av, label %bb.l [
    i64 0, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsaGmGRvprAGn_5plist6stream5EventNtNtB1c_5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2y_8PeekableINtB1a_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEE4peek0ECs2zvA5OmMqFb_10ufo2fontir.exit.i.i.i.i.i.i.i
    i64 1, label %bb.ab
    i64 2, label %bb.ac
    i64 3, label %bb.ad
    i64 4, label %bb.ae
    i64 5, label %bb.af
    i64 6, label %bb.ag
    i64 7, label %bb.ah
    i64 8, label %bb.ai
    i64 9, label %bb.aj
  ]

bb.l:                                             ; preds = %bb.k
  unreachable

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsaGmGRvprAGn_5plist6stream5EventNtNtB1c_5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2y_8PeekableINtB1a_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEE4peek0ECs2zvA5OmMqFb_10ufo2fontir.exit.i.i.i.i.i.i.i: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1020
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1021
  call fastcc void @_RNvXs3_NtCsaGmGRvprAGn_5plist6streamINtB5_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.ad), !noalias !1022
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ac, ptr noundef nonnull align 16 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !1023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1021
  %i.aw = load i64, ptr %i.ac, align 16, !range !15, !alias.scope !1017, !noalias !1024, !noundef !5 ; 2 uses
  %i.ax = icmp ne i64 %i.aw, -4
  tail call void @llvm.assume(i1 %i.ax)
  %cond.i.i.i.i.i.i.i = icmp eq i64 %i.aw, -9223372036854775806
  br i1 %cond.i.i.i.i.i.i.i, label %bb.r, label %bb.m

bb.m:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsaGmGRvprAGn_5plist6stream5EventNtNtB1c_5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2y_8PeekableINtB1a_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEE4peek0ECs2zvA5OmMqFb_10ufo2fontir.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1025
  %i.ay = load i8, ptr %i.an, align 1, !range !20, !alias.scope !1017, !noalias !1024, !noundef !5
  store i8 2, ptr %i.an, align 1, !alias.scope !1017, !noalias !1024
  call void @_RINvXNvNtCsgdm2QMcbaeA_10fontdrasil5typess_1__NtB5_9GlyphNameNtNtCs7N5MyPZKytm_10serde_core2de11Deserialize11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB20_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 16 dereferenceable(256) %i.ac), !noalias !1023
  store i8 %i.ay, ptr %i.an, align 1, !alias.scope !1017, !noalias !1024
  %i.az = load i8, ptr %i.e, align 8, !range !25, !noalias !1025, !noundef !5 ; 2 uses
  %i.ba = icmp eq i8 %i.az, -1
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !1025, !nonnull !5, !align !13, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1025
  br label %bb.ak

bb.o:                                             ; preds = %bb.m
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx.i.i.i.i.i, i64 7, i1 false), !noalias !1020
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.8.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1026
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.10.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1025
  store i8 %i.az, ptr %i.f, align 8, !noalias !1020
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 6 uses
  store ptr %.sroa.8.0.copyload.i.i.i.i.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !noalias !1020
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.10.0.copyload.i.i.i.i.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !noalias !1020
  %i.bd = load i64, ptr %i.ac, align 16, !range !15, !alias.scope !1017, !noalias !1027, !noundef !5 ; 2 uses
  %.not.i.i.i14.i.i.i.i.i = icmp eq i64 %i.bd, -4
  br i1 %.not.i.i.i14.i.i.i.i.i, label %bb.p, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsaGmGRvprAGn_5plist6stream5EventNtNtB1c_5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2y_8PeekableINtB1a_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEE4peek0ECs2zvA5OmMqFb_10ufo2fontir.exit.i.i15.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1028
  invoke fastcc void @_RNvXs3_NtCsaGmGRvprAGn_5plist6streamINtB5_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.ad)
          to label %.noexc.i.i.i.i.i unwind label %bb.s, !noalias !1029

.noexc.i.i.i.i.i:                                 ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ac, ptr noundef nonnull align 16 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !1030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1028
  %i.be = load i64, ptr %i.ac, align 16, !range !15, !alias.scope !1017, !noalias !1027, !noundef !5 ; 2 uses
  %i.bf = icmp ne i64 %i.be, -4
  call void @llvm.assume(i1 %i.bf)
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsaGmGRvprAGn_5plist6stream5EventNtNtB1c_5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2y_8PeekableINtB1a_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEE4peek0ECs2zvA5OmMqFb_10ufo2fontir.exit.i.i15.i.i.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsaGmGRvprAGn_5plist6stream5EventNtNtB1c_5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2y_8PeekableINtB1a_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEE4peek0ECs2zvA5OmMqFb_10ufo2fontir.exit.i.i15.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i, %bb.o
  %i.bg = phi i64 [ %i.bd, %bb.o ], [ %i.be, %.noexc.i.i.i.i.i ]
  %cond.i.i16.i.i.i.i.i = icmp eq i64 %i.bg, -9223372036854775806
  br i1 %cond.i.i16.i.i.i.i.i, label %bb.w, label %bb.q

bb.q:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsaGmGRvprAGn_5plist6stream5EventNtNtB1c_5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2y_8PeekableINtB1a_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEE4peek0ECs2zvA5OmMqFb_10ufo2fontir.exit.i.i15.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1031
  %i.bh = load i8, ptr %i.an, align 1, !range !20, !alias.scope !1017, !noalias !1027, !noundef !5
  store i8 2, ptr %i.an, align 1, !alias.scope !1017, !noalias !1027
  invoke fastcc void @_RINvXs3_NtCs7N5MyPZKytm_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtCs5Xr050g3D4S_3std4path7PathBufENtB6_15DeserializeSeed11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB2y_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtB1n_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 16 dereferenceable(256) %i.ac) #31
          to label %.noexc20.i.i.i.i.i unwind label %bb.s, !noalias !1029

.noexc20.i.i.i.i.i:                               ; preds = %bb.q
  store i8 %i.bh, ptr %i.an, align 1, !alias.scope !1017, !noalias !1027
  %i.bi = load i64, ptr %i.c, align 8, !range !14, !noalias !1031, !noundef !5 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, -1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !1032 ; 2 uses
  br i1 %i.bj, label %bb.v, label %bb.al

bb.r:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsaGmGRvprAGn_5plist6stream5EventNtNtB1c_5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2y_8PeekableINtB1a_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEE4peek0ECs2zvA5OmMqFb_10ufo2fontir.exit.i.i.i.i.i.i.i
  %i.bm = call noundef nonnull align 8 ptr @_RNvYNtNtCsaGmGRvprAGn_5plist5error5ErrorNtNtCs7N5MyPZKytm_10serde_core2de5Error14invalid_lengthCs2zvA5OmMqFb_10ufo2fontir(i64 noundef 0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1), !noalias !1029
  br label %bb.ak

bb.s:                                             ; preds = %bb.w, %bb.q, %bb.p
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1033)
  call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  call void @llvm.experimental.noalias.scope.decl(metadata !1035)
  %i.bo = load i8, ptr %i.f, align 8, !range !18, !alias.scope !1036, !noalias !1020, !noundef !5
  %switch.i.i.i.i.i.i.i.i = icmp samesign ult i8 %i.bo, 25
  br i1 %switch.i.i.i.i.i.i.i.i, label %common.resume.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  call void @llvm.experimental.noalias.scope.decl(metadata !1038)
  %i.bp = load ptr, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !1039, !noalias !1020, !nonnull !5, !noundef !5
  %i.bq = atomicrmw add ptr %i.bp, i64 -1 release, align 8, !noalias !1040
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.u, label %common.resume.i.i.i.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i) #30
          to label %common.resume.i.i.i.i unwind label %bb.aa, !noalias !1029

bb.v:                                             ; preds = %.noexc20.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1031
  br label %bb.x

bb.w:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsaGmGRvprAGn_5plist6stream5EventNtNtB1c_5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2y_8PeekableINtB1a_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEE4peek0ECs2zvA5OmMqFb_10ufo2fontir.exit.i.i15.i.i.i.i.i
  %i.bs = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsaGmGRvprAGn_5plist5error5ErrorNtNtCs7N5MyPZKytm_10serde_core2de5Error14invalid_lengthCs2zvA5OmMqFb_10ufo2fontir(i64 noundef 1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1)
          to label %bb.x unwind label %bb.s, !noalias !1029

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink62.i.i.i.i.i = phi ptr [ %i.bl, %bb.v ], [ %i.bs, %bb.w ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  %i.bt = load i8, ptr %i.f, align 8, !range !18, !alias.scope !1044, !noalias !1020, !noundef !5
  %switch.i.i.i22.i.i.i.i.i = icmp samesign ult i8 %i.bt, 25
  br i1 %switch.i.i.i22.i.i.i.i.i, label %bb.ak, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  %i.bu = load ptr, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !1047, !noalias !1020, !nonnull !5, !noundef !5
  %i.bv = atomicrmw add ptr %i.bu, i64 -1 release, align 8, !noalias !1048
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.z, label %bb.ak

bb.z:                                             ; preds = %bb.y
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i) #30, !noalias !1029
  br label %bb.ak

bb.aa:                                            ; preds = %bb.u
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !1029
  unreachable

common.resume.i.i.i.i:                            ; preds = %bb.cg, %bb.ce, %bb.bt, %bb.bg, %bb.ao, %bb.u, %bb.t, %bb.s
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.dy, %bb.ce ], [ %i.bn, %bb.s ], [ %i.bn, %bb.u ], [ %i.bn, %bb.t ], [ %i.dz, %bb.cg ], [ %.pn345.i.i.i.i, %bb.ao ], [ %.pn.i.i.i.i, %bb.bg ], [ %i.ds, %bb.bt ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

bb.ab:                                            ; preds = %bb.k
  %i.by = trunc nuw i64 %.sroa.3.8.copyload to i1
  %.sroa.16.0.copyload36.348.i.i.i.i = select i1 %i.by, i64 %.sroa.6.8.copyload, i64 undef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1019
  %i.bz = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.ac, ptr %i.bz, align 8, !noalias !1019
  %i.ca = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i8 0, ptr %i.ca, align 8, !noalias !1019
  store i64 %.sroa.3.8.copyload, ptr %i.r, align 8, !noalias !1019
  %i.cb = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.16.0.copyload36.348.i.i.i.i, ptr %i.cb, align 8, !noalias !1019
  call void @_RINvYINtNvXs30_NtNtCs7N5MyPZKytm_10serde_core2de5implsTppENtBf_11Deserialize11deserialize12TupleVisitorNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENtBf_7Visitor9visit_mapINtNtCsaGmGRvprAGn_5plist2de15MapAndSeqAccessINtNtB3p_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtB2r_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.r), !noalias !1018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1019
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.cd = load i64, ptr %i.cc, align 8, !range !14, !noalias !1019, !noundef !5 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, -1
  %i.cf = load ptr, ptr %i.s, align 8, !noalias !1019 ; 2 uses
  br i1 %i.ce, label %bb.bc, label %bb.bd

bb.ac:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1019
  store i64 %i.ah, ptr %i.n, align 16, !noalias !1019
  %.sroa.5.0..sroa_idx9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sroa.3.8.copyload, ptr %.sroa.5.0..sroa_idx9.i.i.i.i, align 8, !noalias !1019
  %.sroa.16.0..sroa_idx22.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.sroa.6.8.copyload, ptr %.sroa.16.0..sroa_idx22.i.i.i.i, align 16, !noalias !1019
  %.sroa.16.0..sroa_idx22.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 %.sroa.7.8.copyload, ptr %.sroa.16.0..sroa_idx22.sroa_idx.i.i.i.i, align 8, !noalias !1019
  %i.cg = invoke noundef nonnull align 8 ptr @_RNvNtCsaGmGRvprAGn_5plist5error21unexpected_event_type(i8 noundef 10, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %bb.bu unwind label %bb.bt, !noalias !1018

bb.ad:                                            ; preds = %bb.k
  %i.ch = trunc i64 %.sroa.3.8.copyload to i1
  call void @_RINvYINtNvXs30_NtNtCs7N5MyPZKytm_10serde_core2de5implsTppENtBf_11Deserialize11deserialize12TupleVisitorNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENtBf_7Visitor10visit_boolNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aa, i1 noundef zeroext %i.ch)
  br label %_RINvXs3_NtCs7N5MyPZKytm_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtB6_15DeserializeSeed11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB3k_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtB28_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.ae:                                            ; preds = %bb.k
  %.not335.i.i.i.i = icmp eq i64 %.sroa.3.8.copyload, -1
  br i1 %.not335.i.i.i.i, label %bb.bw, label %bb.bv

bb.af:                                            ; preds = %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ac, i64 240
  %i.cj = load i8, ptr %i.ci, align 16, !range !9, !alias.scope !1017, !noundef !5
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.by, label %bb.bx

bb.ag:                                            ; preds = %bb.k
  %.sroa.16.sroa.11.0.insert.ext.i.i.i.i = zext i64 %.sroa.7.8.copyload to i128
  %.sroa.16.sroa.11.0.insert.shift.i.i.i.i = shl nuw i128 %.sroa.16.sroa.11.0.insert.ext.i.i.i.i, 64 ; 2 uses
  %.sroa.16.sroa.0.0.insert.ext.i.i.i.i = zext i64 %.sroa.6.8.copyload to i128
  %.sroa.16.sroa.0.0.insert.insert.i.i.i.i = or disjoint i128 %.sroa.16.sroa.11.0.insert.shift.i.i.i.i, %.sroa.16.sroa.0.0.insert.ext.i.i.i.i ; 2 uses
  %i.cl = icmp slt i128 %.sroa.16.sroa.11.0.insert.shift.i.i.i.i, 0
  %i.cm = icmp sgt i128 %.sroa.16.sroa.0.0.insert.insert.i.i.i.i, 18446744073709551615
  %or.cond4.i.i.i.i = or i1 %i.cl, %i.cm
  br i1 %or.cond4.i.i.i.i, label %bb.bz, label %bb.ca

bb.ah:                                            ; preds = %bb.k
  %i.cn = bitcast i64 %.sroa.3.8.copyload to double
  call void @_RINvYINtNvXs30_NtNtCs7N5MyPZKytm_10serde_core2de5implsTppENtBf_11Deserialize11deserialize12TupleVisitorNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENtBf_7Visitor9visit_f64NtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aa, double noundef %i.cn)
  br label %_RINvXs3_NtCs7N5MyPZKytm_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtB6_15DeserializeSeed11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB3k_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtB28_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.ai:                                            ; preds = %bb.k
  %.not334.i.i.i.i = icmp eq i64 %i.ah, -1
  br i1 %.not334.i.i.i.i, label %bb.cj, label %bb.cd

bb.aj:                                            ; preds = %bb.k
  %i.co = getelementptr inbounds nuw i8, ptr %i.ac, i64 240
  %i.cp = load i8, ptr %i.co, align 16, !range !9, !alias.scope !1017, !noundef !5
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.cl, label %bb.ck

bb.ak:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.r, %bb.n
  %.sroa.0.0.ph.i.i.i.i = phi ptr [ %i.bc, %bb.n ], [ %i.bm, %bb.r ], [ %.sink62.i.i.i.i.i, %bb.y ], [ %.sink62.i.i.i.i.i, %bb.z ], [ %.sink62.i.i.i.i.i, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1020
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph.i.i.i.i) ]
  store ptr %.sroa.0.0.ph.i.i.i.i, ptr %i.aa, align 8, !alias.scope !1018
  %i.cr = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 -1, ptr %i.cr, align 8, !alias.scope !1018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1019
  br label %_RINvXs3_NtCs7N5MyPZKytm_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtB6_15DeserializeSeed11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB3k_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtB28_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.al:                                            ; preds = %.noexc20.i.i.i.i.i
  %.sroa.1026.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.1026.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.1026.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1031
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !1049
  %.sroa.4193.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4193.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, i64 16, i1 false), !noalias !1019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1020
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.x, align 8, !noalias !1019
  %.sroa.5194.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 %i.bi, ptr %.sroa.5194.0..sroa_idx.i.i.i.i, align 8, !noalias !1019
  %.sroa.6195.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %i.bl, ptr %.sroa.6195.0..sroa_idx.i.i.i.i, align 8, !noalias !1019
  %.sroa.6195.sroa.4.0..sroa.6195.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store i64 %.sroa.1026.0.copyload.i.i.i.i.i, ptr %.sroa.6195.sroa.4.0..sroa.6195.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !1019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1019
  %.sroa.0258.0.copyload.i.i.i.i = load i64, ptr %i.ac, align 16, !alias.scope !1017 ; 3 uses
  store i64 -4, ptr %i.ac, align 16, !alias.scope !1017
  %.not341.i.i.i.i = icmp eq i64 %.sroa.0258.0.copyload.i.i.i.i, -4
  br i1 %.not341.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i64 %.sroa.0258.0.copyload.i.i.i.i, ptr %i.v, align 16, !noalias !1019
  %.sroa.5260.0..sroa_idx261.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5260.0..sroa_idx261.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5246.0..sroa_idx.i.i.i.i, i64 24, i1 false), !noalias !1018
  br label %bb.ap

bb.an:                                            ; preds = %bb.al
  invoke fastcc void @_RNvXs3_NtCsaGmGRvprAGn_5plist6streamINtB5_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.v, ptr noalias nofree noundef align 8 dereferenceable(200) %i.ad)
          to label %thread-pre-split.i.i.i.i unwind label %.thread.i.i.i.i, !noalias !1018

bb.ao:                                            ; preds = %bb.ay, %.thread.i.i.i.i, %bb.ar
  %.pn345.i.i.i.i = phi { ptr, i32 } [ %i.dc, %.thread.i.i.i.i ], [ %i.cu, %bb.ay ], [ %i.cu, %bb.ar ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(48) %i.x) #26
          to label %common.resume.i.i.i.i unwind label %bb.az, !noalias !1018

thread-pre-split.i.i.i.i:                         ; preds = %bb.an
  %.pr367.i.i.i.i = load i64, ptr %i.v, align 16, !noalias !1019
  br label %bb.ap

bb.ap:                                            ; preds = %thread-pre-split.i.i.i.i, %bb.am
  %i.cs = phi i64 [ %.pr367.i.i.i.i, %thread-pre-split.i.i.i.i ], [ %.sroa.0258.0.copyload.i.i.i.i, %bb.am ] ; 2 uses
  switch i64 %i.cs, label %bb.aw [
    i64 -3, label %bb.aq
    i64 -2, label %bb.au
    i64 -9223372036854775806, label %bb.av
  ]

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1019
  store i64 -9223372036854775807, ptr %i.u, align 8, !noalias !1019
  %i.ct = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsaGmGRvprAGn_5plist5errorNtB5_9ErrorKind16without_position(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.u)
          to label %bb.as unwind label %bb.ar, !noalias !1018

bb.ar:                                            ; preds = %bb.aw, %bb.aq
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load i64, ptr %i.v, align 16, !range !7, !noalias !1019, !noundef !5
  %i.cw = add i64 %i.cv, 3
  %i.cx = icmp ult i64 %i.cw, 2
  br i1 %i.cx, label %bb.ao, label %bb.ay

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1019
  br label %bb.at

bb.at:                                            ; preds = %bb.aw, %bb.au, %bb.as
  %.sink383.i.i.i.i = phi ptr [ %i.ct, %bb.as ], [ %i.db, %bb.au ], [ %i.dd, %bb.aw ]
  store ptr %.sink383.i.i.i.i, ptr %i.aa, align 8, !alias.scope !1018
  %i.cy = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 -1, ptr %i.cy, align 8, !alias.scope !1018
  %i.cz = load i64, ptr %i.v, align 16, !range !7, !noalias !1019, !noundef !5
  %.off.i.i.i.i = add i64 %i.cz, 3
  %switch.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 2
  br i1 %switch.i.i.i.i, label %bb.ba, label %bb.bb

bb.au:                                            ; preds = %bb.ap
  %i.da = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !noalias !1019, !nonnull !5, !align !13, !noundef !5
  br label %bb.at

bb.av:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.w, ptr noundef nonnull align 16 dereferenceable(32) %i.v, i64 32, i1 false), !noalias !1019
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.w)
          to label %bb.ax unwind label %.thread.i.i.i.i, !noalias !1018

.thread.i.i.i.i:                                  ; preds = %bb.bb, %bb.av, %bb.an
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.aw:                                            ; preds = %bb.ap
  %2 = icmp ne i64 %i.cs, -9223372036854775800
  call void @llvm.assume(i1 %2)
  %i.dd = invoke noundef nonnull align 8 ptr @_RNvNtCsaGmGRvprAGn_5plist5error21unexpected_event_type(i8 noundef 2, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.v)
          to label %bb.at unwind label %bb.ar, !noalias !1018

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1019
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull align 8 dereferenceable(48) %i.x, i64 48, i1 false), !noalias !1017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1019
  br label %_RINvXs3_NtCs7N5MyPZKytm_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtB6_15DeserializeSeed11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB3k_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtB28_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.ay:                                            ; preds = %bb.ar
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.v) #26
          to label %bb.ao unwind label %bb.az, !noalias !1018

bb.az:                                            ; preds = %bb.bt, %bb.bq, %bb.bg, %bb.ay, %bb.ao
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !1018
  unreachable

bb.ba:                                            ; preds = %bb.bb, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1019
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(48) %i.x), !noalias !1018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1019
  br label %_RINvXs3_NtCs7N5MyPZKytm_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtB6_15DeserializeSeed11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB3k_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtB28_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.bb:                                            ; preds = %bb.at
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.v)
          to label %bb.ba unwind label %.thread.i.i.i.i, !noalias !1018

bb.bc:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1019
  store ptr %i.cf, ptr %i.aa, align 8, !alias.scope !1018
  %i.df = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 -1, ptr %i.df, align 8, !alias.scope !1018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1019
  br label %_RINvXs3_NtCs7N5MyPZKytm_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtB6_15DeserializeSeed11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB3k_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtB28_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.bd:                                            ; preds = %bb.ab
  %.sroa.4263.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.4215.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4215.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4263.0..sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !1019
  %.sroa.6265.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.6217.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6217.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6265.0..sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !1019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1019
  store ptr %i.cf, ptr %i.t, align 8, !noalias !1019
  %.sroa.5216.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 %i.cd, ptr %.sroa.5216.0..sroa_idx.i.i.i.i, align 8, !noalias !1019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1019
  %.sroa.0266.0.copyload.i.i.i.i = load i64, ptr %i.ac, align 16, !alias.scope !1017 ; 3 uses
  store i64 -4, ptr %i.ac, align 16, !alias.scope !1017
  %.not336.i.i.i.i = icmp eq i64 %.sroa.0266.0.copyload.i.i.i.i, -4
  br i1 %.not336.i.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store i64 %.sroa.0266.0.copyload.i.i.i.i, ptr %i.p, align 16, !noalias !1019
  %.sroa.5268.0..sroa_idx269.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5268.0..sroa_idx269.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5246.0..sroa_idx.i.i.i.i, i64 24, i1 false), !noalias !1018
  br label %bb.bh

bb.bf:                                            ; preds = %bb.bd
  invoke fastcc void @_RNvXs3_NtCsaGmGRvprAGn_5plist6streamINtB5_6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.p, ptr noalias nofree noundef align 8 dereferenceable(200) %i.ad)
          to label %thread-pre-split371.i.i.i.i unwind label %.thread373.i.i.i.i, !noalias !1018

bb.bg:                                            ; preds = %bb.bq, %.thread373.i.i.i.i, %bb.bj
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.dq, %.thread373.i.i.i.i ], [ %i.di, %bb.bq ], [ %i.di, %bb.bj ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(48) %i.t) #26
          to label %common.resume.i.i.i.i unwind label %bb.az, !noalias !1018

thread-pre-split371.i.i.i.i:                      ; preds = %bb.bf
  %.pr372.i.i.i.i = load i64, ptr %i.p, align 16, !noalias !1019
  br label %bb.bh

bb.bh:                                            ; preds = %thread-pre-split371.i.i.i.i, %bb.be
  %i.dg = phi i64 [ %.pr372.i.i.i.i, %thread-pre-split371.i.i.i.i ], [ %.sroa.0266.0.copyload.i.i.i.i, %bb.be ] ; 2 uses
  switch i64 %i.dg, label %bb.bo [
    i64 -3, label %bb.bi
    i64 -2, label %bb.bm
    i64 -9223372036854775806, label %bb.bn
  ]

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1019
  store i64 -9223372036854775807, ptr %i.o, align 8, !noalias !1019
  %i.dh = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsaGmGRvprAGn_5plist5errorNtB5_9ErrorKind16without_position(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o)
          to label %bb.bk unwind label %bb.bj, !noalias !1018

bb.bj:                                            ; preds = %bb.bo, %bb.bi
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = load i64, ptr %i.p, align 16, !range !7, !noalias !1019, !noundef !5
  %i.dk = add i64 %i.dj, 3
  %i.dl = icmp ult i64 %i.dk, 2
  br i1 %i.dl, label %bb.bg, label %bb.bq

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1019
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bo, %bb.bm, %bb.bk
  %.sink385.i.i.i.i = phi ptr [ %i.dh, %bb.bk ], [ %i.dp, %bb.bm ], [ %i.dr, %bb.bo ]
  store ptr %.sink385.i.i.i.i, ptr %i.aa, align 8, !alias.scope !1018
  %i.dm = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 -1, ptr %i.dm, align 8, !alias.scope !1018
  %i.dn = load i64, ptr %i.p, align 16, !range !7, !noalias !1019, !noundef !5
  %.off353.i.i.i.i = add i64 %i.dn, 3
  %switch354.i.i.i.i = icmp ult i64 %.off353.i.i.i.i, 2
  br i1 %switch354.i.i.i.i, label %bb.br, label %bb.bs

bb.bm:                                            ; preds = %bb.bh
  %i.do = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !1019, !nonnull !5, !align !13, !noundef !5
  br label %bb.bl

bb.bn:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.q, ptr noundef nonnull align 16 dereferenceable(32) %i.p, i64 32, i1 false), !noalias !1019
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.q)
          to label %bb.bp unwind label %.thread373.i.i.i.i, !noalias !1018

.thread373.i.i.i.i:                               ; preds = %bb.bs, %bb.bn, %bb.bf
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bo:                                            ; preds = %bb.bh
  %3 = icmp ne i64 %i.dg, -9223372036854775800
  tail call void @llvm.assume(i1 %3)
  %i.dr = invoke noundef nonnull align 8 ptr @_RNvNtCsaGmGRvprAGn_5plist5error21unexpected_event_type(i8 noundef 2, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.p)
          to label %bb.bl unwind label %bb.bj, !noalias !1018

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1019
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull align 8 dereferenceable(48) %i.t, i64 48, i1 false), !noalias !1017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1019
  br label %_RINvXs3_NtCs7N5MyPZKytm_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtB6_15DeserializeSeed11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB3k_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtB28_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.bq:                                            ; preds = %bb.bj
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.p) #26
          to label %bb.bg unwind label %bb.az, !noalias !1018

bb.br:                                            ; preds = %bb.bs, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1019
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(48) %i.t), !noalias !1018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1019
  br label %_RINvXs3_NtCs7N5MyPZKytm_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtB6_15DeserializeSeed11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB3k_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtB28_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.bs:                                            ; preds = %bb.bl
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.p)
          to label %bb.br unwind label %.thread373.i.i.i.i, !noalias !1018

bb.bt:                                            ; preds = %bb.ac
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.n) #26
          to label %common.resume.i.i.i.i unwind label %bb.az, !noalias !1018

bb.bu:                                            ; preds = %bb.ac
  store ptr %i.cg, ptr %i.aa, align 8, !alias.scope !1018
  %i.dt = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 -1, ptr %i.dt, align 8, !alias.scope !1018
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist6stream5EventECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(32) %i.n), !noalias !1018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1019
  br label %_RINvXs3_NtCs7N5MyPZKytm_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtB6_15DeserializeSeed11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB3k_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtB28_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.bv:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1019
  store i64 %.sroa.3.8.copyload, ptr %i.m, align 8, !noalias !1019
  %.sroa.16.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sroa.6.8.copyload, ptr %.sroa.16.8..sroa_idx.i.i.i.i, align 8, !noalias !1019
  %.sroa.16.8..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.sroa.7.8.copyload, ptr %.sroa.16.8..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !1019
  call void @_RINvYINtNvXs30_NtNtCs7N5MyPZKytm_10serde_core2de5implsTppENtBf_11Deserialize11deserialize12TupleVisitorNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENtBf_7Visitor14visit_byte_bufNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1019
  br label %_RINvXs3_NtCs7N5MyPZKytm_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtB6_15DeserializeSeed11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB3k_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtB28_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.bw:                                            ; preds = %bb.ae
  %i.du = inttoptr i64 %.sroa.6.8.copyload to ptr
  call void @_RINvYINtNvXs30_NtNtCs7N5MyPZKytm_10serde_core2de5implsTppENtBf_11Deserialize11deserialize12TupleVisitorNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENtBf_7Visitor11visit_bytesNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.du, i64 noundef %.sroa.7.8.copyload)
  br label %_RINvXs3_NtCs7N5MyPZKytm_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtB6_15DeserializeSeed11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB3k_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtB28_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.bx:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1019
  store i64 %.sroa.3.8.copyload, ptr %i.j, align 8, !noalias !1019
  %i.dv = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %.sroa.16.sroa.0.sroa.0.0.extract.trunc.i.i.i.i, ptr %i.dv, align 8, !noalias !1019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1019
  call void @_RNvMNtCsaGmGRvprAGn_5plist4dateNtB2_4Date13to_xml_format(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !noalias !1018
  call fastcc void @_RINvYINtNvXs30_NtNtCs7N5MyPZKytm_10serde_core2de5implsTppENtBf_11Deserialize11deserialize12TupleVisitorNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENtBf_7Visitor12visit_stringNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.aa, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1019
  br label %_RINvXs3_NtCs7N5MyPZKytm_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtB6_15DeserializeSeed11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB3k_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtB28_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.by:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1019
  store i64 %.sroa.3.8.copyload, ptr %i.l, align 8, !noalias !1019
  %i.dw = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %.sroa.16.sroa.0.sroa.0.0.extract.trunc.i.i.i.i, ptr %i.dw, align 8, !noalias !1019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1019
  call void @_RNvMNtCsaGmGRvprAGn_5plist4dateNtB2_4Date13to_xml_format(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.3225.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l), !noalias !1018
  store i64 1, ptr %i.k, align 8, !noalias !1019
  %.sroa.0222.sroa.0.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 0, ptr %.sroa.0222.sroa.0.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !1019
  %.sroa.0222.sroa.0.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 1, ptr %.sroa.0222.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !1019
  %.sroa.0222.sroa.0.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @2, ptr %.sroa.0222.sroa.0.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !1019
  %.sroa.0222.sroa.0.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 10, ptr %.sroa.0222.sroa.0.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !1019
  %.sroa.0222.sroa.0.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0222.sroa.0.sroa.8.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3225.i.i.i.i, i64 24, i1 false), !noalias !1019
  %.sroa.0222.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i64 -1, ptr %.sroa.0222.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !1019
  %.sroa.5223.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  store i64 0, ptr %.sroa.5223.0..sroa_idx.i.i.i.i, align 8, !noalias !1019
  call void @_RINvYINtNvXs30_NtNtCs7N5MyPZKytm_10serde_core2de5implsTppENtBf_11Deserialize11deserialize12TupleVisitorNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENtBf_7Visitor10visit_enumINtNtBf_5value21MapAccessDeserializerINtB3p_15MapDeserializerINtNtNtCsf3Ta7LF998c_4core5array4iter8IntoIterTReNtNtCsgCecv3eZDcN_5alloc6string6StringEKj1_ENtNtCsaGmGRvprAGn_5plist5error5ErrorEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1019
  br label %_RINvXs3_NtCs7N5MyPZKytm_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtB6_15DeserializeSeed11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB3k_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtB28_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.bz:                                            ; preds = %bb.ag
  %i.dx = add i128 %.sroa.16.sroa.0.0.insert.insert.i.i.i.i, -9223372036854775808
  %or.cond5.i.i.i.i = icmp ult i128 %i.dx, -18446744073709551616
  br i1 %or.cond5.i.i.i.i, label %bb.cb, label %bb.cc, !prof !26

bb.ca:                                            ; preds = %bb.ag
  call void @_RINvYINtNvXs30_NtNtCs7N5MyPZKytm_10serde_core2de5implsTppENtBf_11Deserialize11deserialize12TupleVisitorNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENtBf_7Visitor9visit_u64NtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aa, i64 noundef %.sroa.6.8.copyload)
  br label %_RINvXs3_NtCs7N5MyPZKytm_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtB6_15DeserializeSeed11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB3k_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtB28_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.cb:                                            ; preds = %bb.bz
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #29, !noalias !1018
  unreachable

bb.cc:                                            ; preds = %bb.bz
  call void @_RINvYINtNvXs30_NtNtCs7N5MyPZKytm_10serde_core2de5implsTppENtBf_11Deserialize11deserialize12TupleVisitorNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENtBf_7Visitor9visit_i64NtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aa, i64 noundef %.sroa.6.8.copyload)
  br label %_RINvXs3_NtCs7N5MyPZKytm_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtB6_15DeserializeSeed11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB3k_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtB28_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.cd:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1019
  store i64 %i.ah, ptr %i.h, align 8, !noalias !1019
  %.sroa.5.0..sroa_idx11.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.3.8.copyload, ptr %.sroa.5.0..sroa_idx11.i.i.i.i, align 8, !noalias !1019
  %.sroa.16.0..sroa_idx24.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.6.8.copyload, ptr %.sroa.16.0..sroa_idx24.i.i.i.i, align 8, !noalias !1019
  %.cast.i.i.i.i = inttoptr i64 %.sroa.3.8.copyload to ptr
  invoke void @_RINvYINtNvXs30_NtNtCs7N5MyPZKytm_10serde_core2de5implsTppENtBf_11Deserialize11deserialize12TupleVisitorNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENtBf_7Visitor9visit_strNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.cast.i.i.i.i, i64 noundef %.sroa.6.8.copyload)
          to label %bb.cf unwind label %bb.ce, !noalias !1050

bb.ce:                                            ; preds = %bb.cd
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #26
          to label %common.resume.i.i.i.i unwind label %bb.ci, !noalias !1051

bb.cf:                                            ; preds = %bb.cd
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvYINtNvXs30_NtNtCs7N5MyPZKytm_10serde_core2de5implsTppENtBf_11Deserialize11deserialize12TupleVisitorNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENtBf_7Visitor12visit_stringNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir.exit.i.i.i.i unwind label %bb.cg, !noalias !1051

bb.cg:                                            ; preds = %bb.cf
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume.i.i.i.i unwind label %bb.ch, !noalias !1051

bb.ch:                                            ; preds = %bb.cg
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !1051
  unreachable

bb.ci:                                            ; preds = %bb.ce
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !1051
  unreachable

_RINvYINtNvXs30_NtNtCs7N5MyPZKytm_10serde_core2de5implsTppENtBf_11Deserialize11deserialize12TupleVisitorNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENtBf_7Visitor12visit_stringNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir.exit.i.i.i.i: ; preds = %bb.cf
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h), !noalias !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1019
  br label %_RINvXs3_NtCs7N5MyPZKytm_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtB6_15DeserializeSeed11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB3k_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtB28_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.cj:                                            ; preds = %bb.ai
  %i.ec = inttoptr i64 %.sroa.3.8.copyload to ptr
  call void @_RINvYINtNvXs30_NtNtCs7N5MyPZKytm_10serde_core2de5implsTppENtBf_11Deserialize11deserialize12TupleVisitorNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENtBf_7Visitor9visit_strNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ec, i64 noundef %.sroa.6.8.copyload)
  br label %_RINvXs3_NtCs7N5MyPZKytm_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtB6_15DeserializeSeed11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB3k_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtB28_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.ck:                                            ; preds = %bb.aj
  call void @_RINvYINtNvXs30_NtNtCs7N5MyPZKytm_10serde_core2de5implsTppENtBf_11Deserialize11deserialize12TupleVisitorNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENtBf_7Visitor9visit_u64NtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aa, i64 noundef %.sroa.3.8.copyload)
  br label %_RINvXs3_NtCs7N5MyPZKytm_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtB6_15DeserializeSeed11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB3k_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtB28_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

bb.cl:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1019
  store i64 1, ptr %i.g, align 8, !noalias !1019
  %.sroa.0230.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 0, ptr %.sroa.0230.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !1019
  %.sroa.0230.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 1, ptr %.sroa.0230.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !1019
  %.sroa.0230.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @5, ptr %.sroa.0230.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !1019
  %.sroa.0230.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 9, ptr %.sroa.0230.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !1019
  %.sroa.0230.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 %.sroa.3.8.copyload, ptr %.sroa.0230.sroa.8.0..sroa_idx.i.i.i.i, align 8, !noalias !1019
  %.sroa.4231.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 0, ptr %.sroa.4231.0..sroa_idx.i.i.i.i, align 8, !noalias !1019
  %.sroa.6233.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i64 0, ptr %.sroa.6233.0..sroa_idx.i.i.i.i, align 8, !noalias !1019
  call void @_RINvYINtNvXs30_NtNtCs7N5MyPZKytm_10serde_core2de5implsTppENtBf_11Deserialize11deserialize12TupleVisitorNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENtBf_7Visitor10visit_enumINtNtBf_5value21MapAccessDeserializerINtB3p_15MapDeserializerINtNtNtCsf3Ta7LF998c_4core5array4iter8IntoIterTReyEKj1_ENtNtCsaGmGRvprAGn_5plist5error5ErrorEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1019
  br label %_RINvXs3_NtCs7N5MyPZKytm_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtB6_15DeserializeSeed11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB3k_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtB28_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit

_RINvXs3_NtCs7N5MyPZKytm_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtB6_15DeserializeSeed11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB3k_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtB28_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %bb.i, %bb.ad, %bb.ah, %bb.ak, %bb.ax, %bb.ba, %bb.bc, %bb.bp, %bb.br, %bb.bu, %bb.bv, %bb.bw, %bb.bx, %bb.by, %bb.ca, %bb.cc, %_RINvYINtNvXs30_NtNtCs7N5MyPZKytm_10serde_core2de5implsTppENtBf_11Deserialize11deserialize12TupleVisitorNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENtBf_7Visitor12visit_stringNtNtCsaGmGRvprAGn_5plist5error5ErrorECs2zvA5OmMqFb_10ufo2fontir.exit.i.i.i.i, %bb.cj, %bb.ck, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3225.i.i.i.i), !noalias !1016
  store i8 %i.ao, ptr %i.an, align 1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ee = load i64, ptr %i.ed, align 8, !range !14, !noundef !5
  %i.ef = icmp eq i64 %i.ee, -1
  br i1 %i.ef, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %_RINvXs3_NtCs7N5MyPZKytm_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEENtB6_15DeserializeSeed11deserializeQINtNtCsaGmGRvprAGn_5plist2de12DeserializerINtNtB3k_6stream6ReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtB28_2fs4FileEEEECs2zvA5OmMqFb_10ufo2fontir.exit
  %i.eg = load ptr, ptr %i.aa, align 8, !nonnull !5, !align !13, !noundef !5
  store ptr %i.eg, ptr %0, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -2, ptr %i.eh, align 8
  br label %bb.co

end_hunk_3
