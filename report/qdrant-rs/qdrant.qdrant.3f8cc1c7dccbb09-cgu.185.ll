Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.185?download=true
inline.NumInlined: 354
inline.NumDeleted: 178
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMNtCs3TE53SMfxyL_6fs_err12open_optionsNtB3_11OpenOptions4openRNtNtCsG258MDvU3F_3std4path4PathECsl8OoimOLbh_6qdrant:bb.a
  store i64 %3, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !alias.scope !22, !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RINvMsj_NtCsG258MDvU3F_3std2fsNtB6_11OpenOptions4openRNtNtB8_4path7PathBufECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsG258MDvU3F_3std4path4PathINtB5_4IntoNtBB_7PathBufE4intoCsl8OoimOLbh_6qdrant.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #27
          to label %bb.j unwind label %bb.i

bb.e:                                             ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsG258MDvU3F_3std4path4PathINtB5_4IntoNtBB_7PathBufE4intoCsl8OoimOLbh_6qdrant.exit
  %i.o = load i32, ptr %i.d, align 8, !range !24, !noundef !18
  %i.p = trunc nuw i32 %i.o to i1
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !18, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.s = call noundef nonnull ptr @_RINvMNtCs3TE53SMfxyL_6fs_err6errorsNtB3_5Error5buildNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.r, i8 noundef 0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.t, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.v = load i32, ptr %i.u, align 4, !range !25, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @_RINvMs1_NtCs3TE53SMfxyL_6fs_err4fileNtB6_4File10from_partsNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i32 noundef %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.i:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.j:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCs3TE53SMfxyL_6fs_err12open_optionsNtB3_11OpenOptions4openRNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.f, align 8, !nonnull !18, !noundef !18
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1 = load i64, ptr %i.g, align 8, !noundef !18 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %.val1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !32
  %i.h = load i64, ptr %i.a, align 8, !range !17, !noalias !32, !noundef !18
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !19, !noalias !32, !noundef !18 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8OoimOLbh_6qdrant.exit.i.i.i, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !32
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #26, !noalias !32
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !32, !nonnull !18, !noundef !18 ; 2 uses
  %i.o = icmp ule i64 %.val1, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32
  %.not.i.i.i = icmp eq i64 %.val1, 0
  br i1 %.not.i.i.i, label %_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoNtNtCsG258MDvU3F_3std4path7PathBufE4intoCsl8OoimOLbh_6qdrant.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8OoimOLbh_6qdrant.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull readonly align 1 %.val, i64 range(i64 0, -9223372036854775808) %.val1, i1 false), !noalias !36
  br label %_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoNtNtCsG258MDvU3F_3std4path7PathBufE4intoCsl8OoimOLbh_6qdrant.exit

_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoNtNtCsG258MDvU3F_3std4path7PathBufE4intoCsl8OoimOLbh_6qdrant.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8OoimOLbh_6qdrant.exit.i.i.i, %bb.c
  store i64 %i.k, ptr %i.e, align 8, !alias.scope !37
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.n, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !37
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.val1, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !alias.scope !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RINvMsj_NtCsG258MDvU3F_3std2fsNtB6_11OpenOptions4openRNtNtB8_4path7PathBufECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoNtNtCsG258MDvU3F_3std4path7PathBufE4intoCsl8OoimOLbh_6qdrant.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #27
          to label %bb.j unwind label %bb.i

bb.e:                                             ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoNtNtCsG258MDvU3F_3std4path7PathBufE4intoCsl8OoimOLbh_6qdrant.exit
  %i.q = load i32, ptr %i.d, align 8, !range !24, !noundef !18
  %i.r = trunc nuw i32 %i.q to i1
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !18, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.u = call noundef nonnull ptr @_RINvMNtCs3TE53SMfxyL_6fs_err6errorsNtB3_5Error5buildNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.t, i8 noundef 0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.v, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.x = load i32, ptr %i.w, align 4, !range !25, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @_RINvMs1_NtCs3TE53SMfxyL_6fs_err4fileNtB6_4File10from_partsNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i32 noundef %i.x, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.i:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.j:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap10try_entry2NtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.833 = alloca [16 x i8], align 8          ; 2 uses
  %i.a = invoke noundef zeroext i1 @_RNvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 -1, ptr %i.b, align 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.c = load ptr, ptr %2, align 8, !alias.scope !44, !noundef !18 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !57, !noundef !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !57, !nonnull !18, !noundef !18
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !57, !noundef !18
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !57, !noundef !18
  tail call void %i.h(ptr noundef %i.f, ptr noundef %i.j, i64 noundef %i.l), !noalias !57, !inline_history !58
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit

bb.e:                                             ; preds = %bb.b
  %i.m = tail call fastcc noundef i16 @_RINvNtNtCs577yCKf7gy3_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull align 8 %2) ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.o = load i16, ptr %i.n, align 8, !noundef !18 ; 3 uses
  %i.p = and i16 %i.o, %i.m
  %i.q = zext nneg i16 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.s = load i64, ptr %i.r, align 8, !noundef !18 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !18
  %i.v = zext i16 %i.o to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !18
  %i.aa = load ptr, ptr %2, align 8               ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !range !59
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8            ; 3 uses
  %i.ag = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.ah = ptrtoint ptr %i.aa to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %.not153 = icmp eq i64 %i.s, 0
  br label %.outer

.outer:                                           ; preds = %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, %bb.e
  %.sroa.07.0.ph = phi i64 [ %i.ay, %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread ], [ 0, %bb.e ] ; 3 uses
  %.sroa.0.0.ph = phi i64 [ %i.az, %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread ], [ %i.q, %bb.e ] ; 2 uses
  %i.aj = icmp ult i64 %.sroa.0.0.ph, %i.s        ; 2 uses
  %.not153.not = xor i1 %.not153, true
  %brmerge = or i1 %i.aj, %.not153.not
  %.sroa.0.0.ph.mux = select i1 %i.aj, i64 %.sroa.0.0.ph, i64 0 ; 6 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.sroa.0.0.ph.mux ; 2 uses
  %i.al = load i16, ptr %i.ak, align 2, !noundef !18 ; 2 uses
  %.not = icmp eq i16 %i.al, -1
  br i1 %.not, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.n
  unreachable

bb.g:                                             ; preds = %.loopexit
  %i.am = zext i16 %i.al to i64                   ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.ao = load i16, ptr %i.an, align 2, !noundef !18 ; 2 uses
  %i.ap = and i16 %i.ao, %i.o
  %i.aq = zext i16 %i.ap to i64
  %i.ar = sub i64 %.sroa.0.0.ph.mux, %i.aq
  %i.as = and i64 %i.ar, %i.v
  %i.at = icmp samesign ult i64 %i.as, %.sroa.07.0.ph
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit, %bb.g
  %i.au = icmp samesign ugt i64 %.sroa.07.0.ph, 511
  %i.av = load i64, ptr %1, align 8, !range !60
  %i.aw = icmp ne i64 %i.av, 2
  %narrow = select i1 %i.au, i1 %i.aw, i1 false
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.833, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false)
  %.sroa.10.0 = zext i1 %narrow to i8
  store ptr %1, ptr %0, align 8
  %.sroa.523.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ah, ptr %.sroa.523.0..sroa_idx24, align 8
  %.sroa.728.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ai, ptr %.sroa.728.0..sroa_idx29, align 8
  %.sroa.833.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.833.0..sroa_idx34, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.833, i64 16, i1 false)
  %.sroa.836.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.0.ph.mux, ptr %.sroa.836.0..sroa_idx37, align 8
  %.sroa.941.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i16 %i.m, ptr %.sroa.941.0..sroa_idx42, align 8
  %.sroa.10.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx46, align 2
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit

bb.i:                                             ; preds = %bb.g
  %i.ax = icmp eq i16 %i.ao, %i.m
  br i1 %i.ax, label %bb.j, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.m, %bb.k, %.split, %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, %bb.i
  %i.ay = add nuw nsw i64 %.sroa.07.0.ph, 1
  %i.az = add i64 %.sroa.0.0.ph.mux, 1
  br label %.outer

bb.j:                                             ; preds = %bb.i
  %i.ba = icmp ugt i64 %i.x, %i.am
  br i1 %i.ba, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw [104 x i8], ptr %i.z, i64 %i.am ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %i.bd = load ptr, ptr %i.bc, align 8, !noundef !18
  %i.be = icmp ne ptr %i.bd, null                 ; 2 uses
  %i.bf = xor i1 %i.be, %i.ab
  br i1 %i.bf, label %bb.l, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.l:                                             ; preds = %bb.k
  br i1 %i.be, label %bb.m, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !18
  %i.bi = icmp eq i64 %i.bh, %i.af
  br i1 %i.bi, label %.split, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

.split:                                           ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bk = load ptr, ptr %i.bj, align 8, !noundef !18
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.bk, ptr %i.ag, i64 %i.af)
  %i.bl = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.bl, label %bb.o, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.n:                                             ; preds = %bb.j
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.am, i64 noundef %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #26
          to label %bb.f unwind label %bb.p

_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.l
  tail call void @llvm.assume(i1 %i.ab)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bn = load i8, ptr %i.bm, align 8, !range !59, !noundef !18
  %i.bo = icmp eq i8 %i.bn, %i.ad
  br i1 %i.bo, label %.thread, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

.thread:                                          ; preds = %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit
  store ptr %1, ptr %0, align 8
  %.sroa.523.0..sroa_idx2677 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.ph.mux, ptr %.sroa.523.0..sroa_idx2677, align 8
  %.sroa.728.0..sroa_idx3178 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.am, ptr %.sroa.728.0..sroa_idx3178, align 8
  %.sroa.10.0..sroa_idx4880 = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 2, ptr %.sroa.10.0..sroa_idx4880, align 2
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit

bb.o:                                             ; preds = %.split
  store ptr %1, ptr %0, align 8
  %.sroa.523.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.ph.mux, ptr %.sroa.523.0..sroa_idx26, align 8
  %.sroa.728.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.am, ptr %.sroa.728.0..sroa_idx31, align 8
  %.sroa.10.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 2, ptr %.sroa.10.0..sroa_idx48, align 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !79, !noundef !18
  %i.br = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !79, !nonnull !18, !noundef !18
  tail call void %i.bs(ptr noundef %i.bq, ptr noundef %i.ag, i64 noundef %i.af), !noalias !79, !inline_history !58
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.o, %.thread, %bb.d, %bb.c, %bb.h
  ret void

.noexc:                                           ; preds = %bb.q, %bb.p
  resume { ptr, i32 } %i.bt

bb.p:                                             ; preds = %bb.a, %bb.n
  %i.bt = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.bu = load ptr, ptr %2, align 8, !alias.scope !86, !noundef !18 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %.noexc, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !99, !noundef !18
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !99, !nonnull !18, !noundef !18
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !99, !noundef !18
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !99, !noundef !18
  invoke void %i.bz(ptr noundef %i.bx, ptr noundef %i.cb, i64 noundef %i.cd)
          to label %.noexc unwind label %bb.r, !inline_history !100

bb.r:                                             ; preds = %bb.q
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !107, !noalias !108, !noundef !18 ; 4 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %._RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit_crit_edge, label %bb.b

._RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit_crit_edge: ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !alias.scope !110
  br label %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef i16 @_RINvNtNtCs577yCKf7gy3_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull readonly align 8 %1) #29, !noalias !108 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i16, ptr %i.f, align 8, !alias.scope !107, !noalias !108, !noundef !18 ; 3 uses
  %i.h = and i16 %i.g, %i.e
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !107, !noalias !108, !noundef !18 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !107, !noalias !108, !nonnull !18
  %i.n = zext i16 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !107, !noalias !108, !nonnull !18
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %1, align 8                ; 6 uses
  %i.t = icmp eq ptr %i.s, null                   ; 3 uses
  %i.u = load i8, ptr %i.q, align 8, !range !59
  %i.v = load i64, ptr %i.r, align 8              ; 3 uses
  %i.w = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br label %.outer

.outer:                                           ; preds = %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i, %bb.b
  %.sroa.05.0.i.i.ph = phi i64 [ %i.aj, %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i.ph = phi i64 [ %i.ak, %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.x = icmp ult i64 %.sroa.0.0.i.i.ph, %i.k     ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.x, %.not.not
  %.sroa.0.0.i.i.ph.mux = select i1 %i.x, i64 %.sroa.0.0.i.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.i.ph.mux ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !noalias !115, !noundef !18 ; 2 uses
  %.not.i.i = icmp eq i16 %i.z, -1
  br i1 %.not.i.i, label %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.aa = zext i16 %i.z to i64                    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !noalias !115, !noundef !18 ; 2 uses
  %i.ad = and i16 %i.ac, %i.g
  %i.ae = zext i16 %i.ad to i64
  %i.af = sub i64 %.sroa.0.0.i.i.ph.mux, %i.ae
  %i.ag = and i64 %i.af, %i.n
  %i.ah = icmp samesign ugt i64 %.sroa.05.0.i.i.ph, %i.ag
  br i1 %i.ah, label %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp eq i16 %i.ac, %i.e
  br i1 %i.ai, label %bb.e, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i: ; preds = %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i, %bb.h, %bb.f, %bb.d
  %i.aj = add nuw nsw i64 %.sroa.05.0.i.i.ph, 1
  %i.ak = add i64 %.sroa.0.0.i.i.ph.mux, 1
  br label %.outer

bb.e:                                             ; preds = %bb.d
  %i.al = icmp samesign ugt i64 %i.b, %i.aa
  br i1 %i.al, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.aa ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !115, !noundef !18
  %i.ap = icmp ne ptr %i.ao, null                 ; 2 uses
  %i.aq = xor i1 %i.ap, %i.t
  br i1 %i.aq, label %bb.g, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.ap, label %bb.h, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.as = load i64, ptr %i.ar, align 8, !noalias !115, !noundef !18
  %i.at = icmp eq i64 %i.as, %i.v
  br i1 %i.at, label %.split.i.i, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

.split.i.i:                                       ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !noalias !115, !noundef !18
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.av, ptr %i.w, i64 %i.v), !noalias !115
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit.i, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.t)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ay = load i8, ptr %i.ax, align 8, !range !59, !noalias !115, !noundef !18
  %i.az = icmp eq i8 %i.ay, %i.u
  br i1 %i.az, label %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit.i, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.i:                                             ; preds = %bb.e
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aa, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #30
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit.i: ; preds = %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  br label %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit

bb.j:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !134, !noundef !18
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !134, !nonnull !18, !noundef !18
  invoke void %i.bf(ptr noundef %i.bd, ptr noundef %i.w, i64 noundef %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit unwind label %bb.m, !inline_history !100

_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c, %.loopexit, %._RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit_crit_edge, %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit.i
  %i.bg = phi ptr [ %i.s, %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit.i ], [ %.pre, %._RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit_crit_edge ], [ %i.s, %.loopexit ], [ %i.s, %bb.c ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.ba, %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit.i ], [ null, %._RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit_crit_edge ], [ null, %.loopexit ], [ null, %bb.c ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit2, label %bb.l

bb.l:                                             ; preds = %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !149, !noundef !18
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !149, !nonnull !18, !noundef !18
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !149, !noundef !18
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !149, !noundef !18
  tail call void %i.bl(ptr noundef %i.bj, ptr noundef %i.bn, i64 noundef %i.bp), !noalias !149, !inline_history !58
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit2: ; preds = %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit, %bb.l
  ret ptr %.sroa.0.0.i

bb.m:                                             ; preds = %bb.k
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %i.bb

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap3getRNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !156, !noalias !157, !noundef !18 ; 4 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4get2RNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef i16 @_RINvNtNtCs577yCKf7gy3_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull readonly align 8 %1) #29, !noalias !157 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i16, ptr %i.f, align 8, !alias.scope !156, !noalias !157, !noundef !18 ; 3 uses
  %i.h = and i16 %i.g, %i.e
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !156, !noalias !157, !noundef !18 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !156, !noalias !157, !nonnull !18
  %i.n = zext i16 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !156, !noalias !157, !nonnull !18
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.not = icmp eq i64 %i.k, 0
  br label %.outer

.outer:                                           ; preds = %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i, %bb.b
  %.sroa.05.0.i.i.ph = phi i64 [ %i.ae, %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i.ph = phi i64 [ %i.af, %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.s = icmp ult i64 %.sroa.0.0.i.i.ph, %i.k     ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.s, %.not.not
  %.sroa.0.0.i.i.ph.mux = select i1 %i.s, i64 %.sroa.0.0.i.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.i.ph.mux ; 2 uses
  %i.u = load i16, ptr %i.t, align 2, !noalias !159, !noundef !18 ; 2 uses
  %.not.i.i = icmp eq i16 %i.u, -1
  br i1 %.not.i.i, label %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4get2RNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.v = zext i16 %i.u to i64                     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.x = load i16, ptr %i.w, align 2, !noalias !159, !noundef !18 ; 2 uses
  %i.y = and i16 %i.x, %i.g
  %i.z = zext i16 %i.y to i64
  %i.aa = sub i64 %.sroa.0.0.i.i.ph.mux, %i.z
  %i.ab = and i64 %i.aa, %i.n
  %i.ac = icmp samesign ugt i64 %.sroa.05.0.i.i.ph, %i.ab
  br i1 %i.ac, label %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4get2RNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp eq i16 %i.x, %i.e
  br i1 %i.ad, label %bb.e, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i: ; preds = %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i, %bb.h, %bb.f, %bb.d
  %i.ae = add nuw nsw i64 %.sroa.05.0.i.i.ph, 1
  %i.af = add i64 %.sroa.0.0.i.i.ph.mux, 1
  br label %.outer

bb.e:                                             ; preds = %bb.d
  %i.ag = icmp samesign ugt i64 %i.b, %i.v
  br i1 %i.ag, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.v ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !159, !noundef !18
  %i.ak = icmp ne ptr %i.aj, null                 ; 2 uses
  %i.al = load ptr, ptr %1, align 8, !noalias !159, !noundef !18 ; 2 uses
  %i.am = icmp eq ptr %i.al, null                 ; 2 uses
  %i.an = xor i1 %i.ak, %i.am
  br i1 %i.an, label %bb.g, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.ak, label %bb.h, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !159, !noundef !18 ; 2 uses
  %i.aq = load i64, ptr %i.r, align 8, !noalias !159, !noundef !18
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %.split.i.i, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

.split.i.i:                                       ; preds = %bb.h
  %i.as = load ptr, ptr %i.q, align 8, !noalias !159, !noundef !18
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !noalias !159, !noundef !18
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.au, ptr %i.as, i64 %i.ap), !noalias !159
  %i.av = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.av, label %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit.i, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.am)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.ax = load i8, ptr %i.aw, align 8, !range !59, !noalias !159, !noundef !18
  %i.ay = load i8, ptr %i.q, align 8, !range !59, !noalias !159, !noundef !18
  %i.az = icmp eq i8 %i.ax, %i.ay
  br i1 %i.az, label %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit.i, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.i:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #30, !noalias !159
  unreachable

_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit.i: ; preds = %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  br label %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4get2RNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit

_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4get2RNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit: ; preds = %.loopexit, %bb.c, %bb.a, %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit.i
  %.sroa.0.0.i = phi ptr [ %i.ba, %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit.i ], [ null, %bb.a ], [ null, %bb.c ], [ null, %.loopexit ]
  ret ptr %.sroa.0.0.i

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap3getReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !163
  call void @_RINvMsq_NtNtCs577yCKf7gy3_4http6header4nameNtB6_7HdrName10from_bytesNCINvXs4_NtNtB8_3map14as_header_nameReNtB1d_6Sealed4findNtNtB8_5value11HeaderValueE0INtNtCskKLDkoKarTP_4core6option6OptionTjjEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0), !noalias !167
  %i.b = load i64, ptr %i.a, align 8, !range !60, !noalias !163, !noundef !18 ; 2 uses
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %_RINvXs4_NtNtNtCs577yCKf7gy3_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.thread.i, label %_RINvXs4_NtNtNtCs577yCKf7gy3_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i

_RINvXs4_NtNtNtCs577yCKf7gy3_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !163
  br label %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4get2ReECsl8OoimOLbh_6qdrant.exit

_RINvXs4_NtNtNtCs577yCKf7gy3_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.a
  %.sroa.51.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.51.0.copyload.i = load i64, ptr %.sroa.51.0..sroa_idx.i, align 8, !noalias !168 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !163
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4get2ReECsl8OoimOLbh_6qdrant.exit

bb.b:                                             ; preds = %_RINvXs4_NtNtNtCs577yCKf7gy3_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !160, !noundef !18 ; 2 uses
  %i.g = icmp ult i64 %.sroa.51.0.copyload.i, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !160, !nonnull !18, !noundef !18
  %i.j = getelementptr inbounds nuw [104 x i8], ptr %i.i, i64 %.sroa.51.0.copyload.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  br label %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4get2ReECsl8OoimOLbh_6qdrant.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.51.0.copyload.i, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #30
  unreachable

_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4get2ReECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvXs4_NtNtNtCs577yCKf7gy3_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.thread.i, %_RINvXs4_NtNtNtCs577yCKf7gy3_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ null, %_RINvXs4_NtNtNtCs577yCKf7gy3_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i ], [ null, %_RINvXs4_NtNtNtCs577yCKf7gy3_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.thread.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap6insertNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [104 x i8], align 8               ; 15 uses
  %i.c = alloca [104 x i8], align 8               ; 15 uses
  %.sroa.0 = alloca [32 x i8], align 8            ; 4 uses
  %.sroa.10 = alloca [7 x i8], align 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.d = invoke noundef zeroext i1 @_RNvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.b unwind label %bb.au, !noalias !183

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !195, !noalias !196, !noundef !18
  %i.g = load ptr, ptr %3, align 8, !alias.scope !195, !noalias !196, !nonnull !18, !align !197, !noundef !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !noalias !198, !nonnull !18, !noundef !18
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !195, !noalias !196, !noundef !18
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !195, !noalias !196, !noundef !18
  invoke void %i.i(ptr noundef %i.f, ptr noundef %i.k, i64 noundef %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.as, !noalias !183, !inline_history !199

bb.d:                                             ; preds = %bb.b
  %i.n = tail call fastcc noundef i16 @_RINvNtNtCs577yCKf7gy3_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noundef nonnull readonly align 8 dereferenceable(32) %2), !noalias !200 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = load i16, ptr %i.o, align 8, !alias.scope !201, !noalias !183, !noundef !18 ; 3 uses
  %i.q = and i16 %i.p, %i.n
  %i.r = zext nneg i16 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !201, !noalias !183, !noundef !18 ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8, !alias.scope !201, !noalias !183, !nonnull !18
  %i.w = zext i16 %i.p to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !201, !noalias !183 ; 15 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !201, !noalias !183, !nonnull !18 ; 3 uses
  %i.ab = load ptr, ptr %2, align 8, !alias.scope !202, !noalias !203 ; 9 uses
  %i.ac = icmp eq ptr %i.ab, null                 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !range !59, !alias.scope !202, !noalias !203
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !202, !noalias !203 ; 9 uses
  %i.ah = load ptr, ptr %i.ad, align 8, !alias.scope !202, !noalias !203 ; 8 uses
  %.not = icmp eq i64 %i.u, 0
  br label %.outer62

.outer62:                                         ; preds = %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i, %bb.d
  %.sroa.08.0.i.i.ph = phi i64 [ %i.bt, %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ 0, %bb.d ] ; 3 uses
  %.sroa.0.0.i.i.ph = phi i64 [ %i.bu, %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %i.r, %bb.d ] ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0.i.i.ph, %i.u    ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.ai, %.not.not
  %.sroa.0.0.i.i.ph.mux = select i1 %i.ai, i64 %.sroa.0.0.i.i.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer62
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.sroa.0.0.i.i.ph.mux ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2, !noalias !183, !noundef !18 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ak, -1
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.x
  unreachable

bb.f:                                             ; preds = %.loopexit
  %i.al = zext i16 %i.ak to i64                   ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.an = load i16, ptr %i.am, align 2, !noalias !183, !noundef !18 ; 2 uses
  %i.ao = and i16 %i.an, %i.p
  %i.ap = zext i16 %i.ao to i64
  %i.aq = sub i64 %.sroa.0.0.i.i.ph.mux, %i.ap
  %i.ar = and i64 %i.aq, %i.w
  %i.as = icmp samesign ult i64 %i.ar, %.sroa.08.0.i.i.ph
  br i1 %i.as, label %bb.af, label %bb.s

bb.g:                                             ; preds = %.loopexit
  %i.at = icmp ult i64 %i.y, 88686269585142076
  tail call void @llvm.assume(i1 %i.at)
  %.sroa.6117.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6117.0.copyload.i.i = load ptr, ptr %.sroa.6117.0..sroa_idx.i.i, align 8, !alias.scope !202, !noalias !203 ; 3 uses
  %.sroa.0118.0.copyload.i.i = load ptr, ptr %3, align 8, !alias.scope !204, !noalias !196 ; 3 uses
  %.sroa.5120.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5120.0.copyload.i.i = load ptr, ptr %.sroa.5120.0..sroa_idx.i.i, align 8, !alias.scope !204, !noalias !196 ; 2 uses
  %.sroa.6123.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.6123.0.copyload.i.i = load i64, ptr %.sroa.6123.0..sroa_idx.i.i, align 8, !alias.scope !204, !noalias !196 ; 2 uses
  %.sroa.7126.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.7126.0.copyload.i.i = load ptr, ptr %.sroa.7126.0..sroa_idx.i.i, align 8, !alias.scope !204, !noalias !196 ; 2 uses
  %.sroa.8129.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.8129.0.copyload.i.i = load i64, ptr %.sroa.8129.0..sroa_idx.i.i, align 8, !alias.scope !204, !noalias !196
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  %i.au = icmp samesign ugt i64 %i.y, 32767
  br i1 %i.au, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !208
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i16 %i.n, ptr %i.aw, align 8, !noalias !208
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.ab, ptr %i.ax, align 8, !noalias !211
  %.sroa.6102.0..sroa_idx103.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store ptr %i.ah, ptr %.sroa.6102.0..sroa_idx103.i.i, align 8, !noalias !211
  %.sroa.8106.0..sroa_idx107.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i64 %i.ag, ptr %.sroa.8106.0..sroa_idx107.i.i, align 8, !noalias !211
  %.sroa.10110.0..sroa_idx111.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr %.sroa.6117.0.copyload.i.i, ptr %.sroa.10110.0..sroa_idx111.i.i, align 8, !noalias !211
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.0118.0.copyload.i.i, ptr %i.ay, align 8, !noalias !212
  %.sroa.5120.0..sroa_idx121.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %.sroa.5120.0.copyload.i.i, ptr %.sroa.5120.0..sroa_idx121.i.i, align 8, !noalias !212
  %.sroa.6123.0..sroa_idx124.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %.sroa.6123.0.copyload.i.i, ptr %.sroa.6123.0..sroa_idx124.i.i, align 8, !noalias !212
  %.sroa.7126.0..sroa_idx127.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.sroa.7126.0.copyload.i.i, ptr %.sroa.7126.0..sroa_idx127.i.i, align 8, !noalias !212
  %.sroa.8129.0..sroa_idx130.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.8129.0.copyload.i.i, ptr %.sroa.8129.0..sroa_idx130.i.i, align 8, !noalias !212
  store i64 0, ptr %i.c, align 8, !noalias !208
  %i.az = load i64, ptr %i.av, align 8, !range !213, !alias.scope !214, !noalias !217, !noundef !18
  %i.ba = icmp eq i64 %i.y, %i.az
  br i1 %i.ba, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs577yCKf7gy3_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCs77NLLyX6U31_9axum_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %._crit_edge192.i.i unwind label %bb.j, !noalias !217

._crit_edge192.i.i:                               ; preds = %bb.i
  %.pre193.i.i = load ptr, ptr %i.z, align 8, !alias.scope !214, !noalias !217
  br label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs577yCKf7gy3_4http6header3map6BucketNtNtBG_5value11HeaderValueEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.c) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit45.i.i unwind label %bb.k, !noalias !219

bb.k:                                             ; preds = %bb.j
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !217
  unreachable

bb.l:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0118.0.copyload.i.i) ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0118.0.copyload.i.i, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !220, !nonnull !18, !noundef !18
  invoke void %i.be(ptr noundef %.sroa.7126.0.copyload.i.i, ptr noundef %.sroa.5120.0.copyload.i.i, i64 noundef %.sroa.6123.0.copyload.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.m, !noalias !227, !inline_history !199

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.l
  br i1 %i.ac, label %_RINvXNtNtNtCs577yCKf7gy3_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.thread, label %_RINvXNtNtNtCs577yCKf7gy3_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.thread.sink.split

bb.m:                                             ; preds = %bb.l
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit45.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !228, !nonnull !18, !noundef !18
  invoke void %i.bh(ptr noundef %.sroa.6117.0.copyload.i.i, ptr noundef %i.ah, i64 noundef %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit45.i.i unwind label %bb.o, !noalias !227, !inline_history !100

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !227
  unreachable

bb.p:                                             ; preds = %._crit_edge192.i.i, %bb.h
  %i.bj = phi ptr [ %.pre193.i.i, %._crit_edge192.i.i ], [ %i.aa, %bb.h ]
  %i.bk = getelementptr inbounds nuw [104 x i8], ptr %i.bj, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bk, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.c, i64 104, i1 false), !noalias !219
  %i.bl = add nuw nsw i64 %i.y, 1
  store i64 %i.bl, ptr %i.x, align 8, !alias.scope !214, !noalias !217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !208
  %i.bm = load i64, ptr %i.t, align 8, !alias.scope !201, !noalias !183, !noundef !18 ; 2 uses
  %i.bn = icmp ult i64 %.sroa.0.0.i.i.ph.mux, %i.bm
  br i1 %i.bn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bo = load ptr, ptr %i.s, align 8, !alias.scope !201, !noalias !183, !nonnull !18, !noundef !18
  %i.bp = trunc nuw nsw i64 %i.y to i16
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.sroa.0.0.i.i.ph.mux ; 2 uses
  store i16 %i.bp, ptr %i.bq, align 2, !noalias !183
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  store i16 %i.n, ptr %i.br, align 2, !noalias !183
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueENtNtB17_3map14MaxSizeReachedE6expectCsl8OoimOLbh_6qdrant.exit

bb.r:                                             ; preds = %bb.p
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i.i.ph.mux, i64 noundef %i.bm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #26, !noalias !183
  unreachable

bb.s:                                             ; preds = %bb.f
  %i.bs = icmp eq i16 %i.an, %i.n
  br i1 %i.bs, label %bb.t, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i: ; preds = %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i, %bb.w, %bb.u, %bb.s
  %i.bt = add nuw nsw i64 %.sroa.08.0.i.i.ph, 1
  %i.bu = add i64 %.sroa.0.0.i.i.ph.mux, 1
  br label %.outer62

bb.t:                                             ; preds = %bb.s
  %i.bv = icmp ugt i64 %i.y, %i.al
  br i1 %i.bv, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw [104 x i8], ptr %i.aa, i64 %i.al ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !183, !noundef !18
  %i.bz = icmp ne ptr %i.by, null                 ; 2 uses
  %i.ca = xor i1 %i.ac, %i.bz
  br i1 %i.ca, label %bb.v, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.v:                                             ; preds = %bb.u
  br i1 %i.bz, label %bb.w, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 80
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !183, !noundef !18
  %i.cd = icmp eq i64 %i.cc, %i.ag
  br i1 %i.cd, label %.split.i.i, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

.split.i.i:                                       ; preds = %bb.w
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !183, !noundef !18
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.cf, ptr %i.ah, i64 %i.ag), !noalias !183
  %i.cg = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.cg, label %bb.y, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.x:                                             ; preds = %bb.t
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #26
          to label %bb.e unwind label %bb.au, !noalias !183

_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.v
  tail call void @llvm.assume(i1 %i.ac)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  %i.ci = load i8, ptr %i.ch, align 8, !range !59, !noalias !183, !noundef !18
  %i.cj = icmp eq i8 %i.ci, %i.ae
  br i1 %i.cj, label %bb.y, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.y:                                             ; preds = %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i
  %i.ck = load <2 x ptr>, ptr %3, align 8, !alias.scope !204, !noalias !196 ; 3 uses
  %.sroa.690.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.690.0.copyload.i.i = load i64, ptr %.sroa.690.0..sroa_idx.i.i, align 8, !alias.scope !204, !noalias !196 ; 2 uses
  %.sroa.793.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.793.0.copyload.i.i = load ptr, ptr %.sroa.793.0..sroa_idx.i.i, align 8, !alias.scope !204, !noalias !196 ; 2 uses
  %.sroa.896.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.896.0.copyload.i.i = load i64, ptr %.sroa.896.0..sroa_idx.i.i, align 8, !alias.scope !204, !noalias !196
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %i.cl = load i64, ptr %i.bw, align 8, !range !17, !noalias !244, !noundef !18
  %i.cm = trunc nuw i64 %i.cl to i1
  br i1 %i.cm, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %.invoke.i.i.i, %bb.aa
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %i.co = extractelement <2 x ptr> %i.ck, i64 0   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.co) ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !247, !nonnull !18, !noundef !18
  %i.cr = extractelement <2 x ptr> %i.ck, i64 1
  invoke void %i.cq(ptr noundef %.sroa.793.0.copyload.i.i, ptr noundef %i.cr, i64 noundef %.sroa.690.0.copyload.i.i)
          to label %.thread145.i.i unwind label %bb.ac, !noalias !244, !inline_history !199

bb.aa:                                            ; preds = %bb.y
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !noalias !244, !noundef !18
  invoke void @_RNvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %i.ct)
          to label %._crit_edge.i.i.i unwind label %bb.z, !noalias !254

._crit_edge.i.i.i:                                ; preds = %bb.aa
  %.pre.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !255, !noalias !254
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.i.i.i, %bb.y
  %i.cu = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.y, %bb.y ] ; 2 uses
  %i.cv = icmp ugt i64 %i.cu, %i.al
  br i1 %i.cv, label %bb.ad, label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %bb.ab
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %i.cu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #26
          to label %.cont.i.i.i unwind label %bb.z, !noalias !244

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !244
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cx = load ptr, ptr %i.z, align 8, !alias.scope !255, !noalias !254, !nonnull !18, !noundef !18
  %i.cy = getelementptr inbounds nuw [104 x i8], ptr %i.cx, i64 %i.al ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(32) %i.cz, i64 32, i1 false), !noalias !256
  %.sroa.483.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 56 ; 2 uses
  %.sroa.483.0.copyload.i.i = load i8, ptr %.sroa.483.0..sroa_idx.i.i, align 8, !noalias !257 ; 2 uses
  %.sroa.584.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.584.0..sroa_idx.i.i, i64 7, i1 false), !noalias !256
  store <2 x ptr> %i.ck, ptr %i.cz, align 8, !noalias !258
  %.sroa.690.0..sroa_idx91.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  store i64 %.sroa.690.0.copyload.i.i, ptr %.sroa.690.0..sroa_idx91.i.i, align 8, !noalias !258
  %.sroa.793.0..sroa_idx94.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  store ptr %.sroa.793.0.copyload.i.i, ptr %.sroa.793.0..sroa_idx94.i.i, align 8, !noalias !258
  store i64 %.sroa.896.0.copyload.i.i, ptr %.sroa.483.0..sroa_idx.i.i, align 8, !noalias !258
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  br i1 %i.ac, label %_RINvXNtNtNtCs577yCKf7gy3_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECsl8OoimOLbh_6qdrant.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !alias.scope !277, !noalias !203, !noundef !18
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !278, !nonnull !18, !noundef !18
  tail call void %i.dd(ptr noundef %i.db, ptr noundef %i.ah, i64 noundef %i.ag), !noalias !278, !inline_history !279
  br label %_RINvXNtNtNtCs577yCKf7gy3_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECsl8OoimOLbh_6qdrant.exit

bb.af:                                            ; preds = %bb.f
  %i.de = icmp samesign ugt i64 %.sroa.08.0.i.i.ph, 511
  %i.df = load i64, ptr %1, align 8, !range !60, !alias.scope !201, !noalias !183
  %i.dg = icmp ne i64 %i.df, 2
  %.sroa.013.0.i.i = select i1 %i.de, i1 %i.dg, i1 false
  %.sroa.668.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.668.0.copyload.i.i = load ptr, ptr %.sroa.668.0..sroa_idx.i.i, align 8, !alias.scope !202, !noalias !203 ; 3 uses
  %.sroa.069.0.copyload.i.i = load ptr, ptr %3, align 8, !alias.scope !204, !noalias !196 ; 3 uses
  %.sroa.571.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.571.0.copyload.i.i = load ptr, ptr %.sroa.571.0..sroa_idx.i.i, align 8, !alias.scope !204, !noalias !196 ; 2 uses
  %.sroa.674.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.674.0.copyload.i.i = load i64, ptr %.sroa.674.0..sroa_idx.i.i, align 8, !alias.scope !204, !noalias !196 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !204, !noalias !196 ; 2 uses
  %.sroa.879.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.879.0.copyload.i.i = load i64, ptr %.sroa.879.0..sroa_idx.i.i, align 8, !alias.scope !204, !noalias !196
  %i.dh = icmp ult i64 %i.y, 88686269585142076
  tail call void @llvm.assume(i1 %i.dh)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %i.di = icmp samesign ugt i64 %i.y, 32767
  br i1 %i.di, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !283
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i16 %i.n, ptr %i.dk, align 8, !noalias !283
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.ab, ptr %i.dl, align 8, !noalias !286
  %.sroa.6.0..sroa_idx57.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.ah, ptr %.sroa.6.0..sroa_idx57.i.i, align 8, !noalias !286
  %.sroa.8.0..sroa_idx60.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 %i.ag, ptr %.sroa.8.0..sroa_idx60.i.i, align 8, !noalias !286
  %.sroa.10.0..sroa_idx63.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %.sroa.668.0.copyload.i.i, ptr %.sroa.10.0..sroa_idx63.i.i, align 8, !noalias !286
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.069.0.copyload.i.i, ptr %i.dm, align 8, !noalias !287
  %.sroa.571.0..sroa_idx72.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.571.0.copyload.i.i, ptr %.sroa.571.0..sroa_idx72.i.i, align 8, !noalias !287
  %.sroa.674.0..sroa_idx75.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.674.0.copyload.i.i, ptr %.sroa.674.0..sroa_idx75.i.i, align 8, !noalias !287
  %.sroa.7.0..sroa_idx77.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.7.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx77.i.i, align 8, !noalias !287
  %.sroa.879.0..sroa_idx80.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.879.0.copyload.i.i, ptr %.sroa.879.0..sroa_idx80.i.i, align 8, !noalias !287
  store i64 0, ptr %i.b, align 8, !noalias !283
  %i.dn = load i64, ptr %i.dj, align 8, !range !213, !alias.scope !288, !noalias !291, !noundef !18
  %i.do = icmp eq i64 %i.y, %i.dn
  br i1 %i.do, label %bb.ah, label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs577yCKf7gy3_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCs77NLLyX6U31_9axum_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dj)
          to label %._crit_edge.i.i unwind label %bb.ai, !noalias !291

._crit_edge.i.i:                                  ; preds = %bb.ah
  %.pre.i.i = load ptr, ptr %i.z, align 8, !alias.scope !288, !noalias !291
  br label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs577yCKf7gy3_4http6header3map6BucketNtNtBG_5value11HeaderValueEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.b) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit45.i.i unwind label %bb.aj, !noalias !293

bb.aj:                                            ; preds = %bb.ai
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !291
  unreachable

bb.ak:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.069.0.copyload.i.i) ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.069.0.copyload.i.i, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !294, !nonnull !18, !noundef !18
  invoke void %i.ds(ptr noundef %.sroa.7.0.copyload.i.i, ptr noundef %.sroa.571.0.copyload.i.i, i64 noundef %.sroa.674.0.copyload.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i48.i.i unwind label %bb.al, !noalias !301, !inline_history !199

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i48.i.i: ; preds = %bb.ak
  br i1 %i.ac, label %_RINvXNtNtNtCs577yCKf7gy3_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.thread, label %_RINvXNtNtNtCs577yCKf7gy3_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.thread.sink.split

bb.al:                                            ; preds = %bb.ak
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit45.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.du = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !302, !nonnull !18, !noundef !18
  invoke void %i.dv(ptr noundef %.sroa.668.0.copyload.i.i, ptr noundef %i.ah, i64 noundef %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit45.i.i unwind label %bb.an, !noalias !301, !inline_history !100

bb.an:                                            ; preds = %bb.am
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !301
  unreachable

bb.ao:                                            ; preds = %._crit_edge.i.i, %bb.ag
  %i.dx = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.aa, %bb.ag ]
  %i.dy = getelementptr inbounds nuw [104 x i8], ptr %i.dx, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.dy, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.b, i64 104, i1 false), !noalias !293
  %i.dz = add nuw nsw i64 %i.y, 1
  store i64 %i.dz, ptr %i.x, align 8, !alias.scope !288, !noalias !291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !283
  %i.ea = load ptr, ptr %i.s, align 8, !alias.scope !315, !noalias !318, !nonnull !18, !noundef !18
  %i.eb = load i64, ptr %i.t, align 8, !alias.scope !315, !noalias !318, !noundef !18 ; 2 uses
  %i.ec = trunc nuw nsw i64 %i.y to i16
  %.not78 = icmp eq i64 %i.eb, 0
  br label %.outer

.outer:                                           ; preds = %bb.ap, %bb.ao
  %.sroa.6.0.i.i.i.ph = phi i16 [ %i.ej, %bb.ap ], [ %i.n, %bb.ao ] ; 2 uses
  %.sroa.09.0.i.i.i.ph = phi i16 [ %i.ef, %bb.ap ], [ %i.ec, %bb.ao ] ; 2 uses
  %.sroa.07.0.i.i.i.ph = phi i64 [ %i.ei, %bb.ap ], [ 0, %bb.ao ] ; 2 uses
  %.sroa.0.0.i.i.i.ph = phi i64 [ %i.ek, %bb.ap ], [ %.sroa.0.0.i.i.ph.mux, %bb.ao ] ; 2 uses
  %i.ed = icmp ult i64 %.sroa.0.0.i.i.i.ph, %i.eb ; 2 uses
  %.not78.not = xor i1 %.not78, true
  %brmerge91 = or i1 %i.ed, %.not78.not
  %.sroa.0.0.i.i.i.ph.mux = select i1 %i.ed, i64 %.sroa.0.0.i.i.i.ph, i64 0 ; 2 uses
  br i1 %brmerge91, label %.loopexit77, label %infloop90

.loopexit77:                                      ; preds = %.outer
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.sroa.0.0.i.i.i.ph.mux ; 4 uses
  %i.ef = load i16, ptr %i.ee, align 2, !noalias !318, !noundef !18 ; 2 uses
  %i.eg = icmp eq i16 %i.ef, -1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 2 ; 3 uses
  br i1 %i.eg, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.loopexit77
  %i.ei = add i64 %.sroa.07.0.i.i.i.ph, 1
  %i.ej = load i16, ptr %i.eh, align 2, !noalias !318, !noundef !18
  store i16 %.sroa.09.0.i.i.i.ph, ptr %i.ee, align 2, !noalias !318
  store i16 %.sroa.6.0.i.i.i.ph, ptr %i.eh, align 2, !noalias !318
  %i.ek = add nuw i64 %.sroa.0.0.i.i.i.ph.mux, 1
  br label %.outer

bb.aq:                                            ; preds = %.loopexit77
  store i16 %.sroa.09.0.i.i.i.ph, ptr %i.ee, align 2, !noalias !318
  store i16 %.sroa.6.0.i.i.i.ph, ptr %i.eh, align 2, !noalias !318
  %i.el = icmp ugt i64 %.sroa.07.0.i.i.i.ph, 127
  %or.cond.i.i.i = select i1 %.sroa.013.0.i.i, i1 true, i1 %i.el
  %i.em = load i64, ptr %1, align 8, !range !60, !alias.scope !315, !noalias !318
  %i.en = icmp eq i64 %i.em, 0
  %or.cond3.i.i.i = select i1 %or.cond.i.i.i, i1 %i.en, i1 false
  br i1 %or.cond3.i.i.i, label %bb.ar, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueENtNtB17_3map14MaxSizeReachedE6expectCsl8OoimOLbh_6qdrant.exit

bb.ar:                                            ; preds = %bb.aq
  store i64 1, ptr %1, align 8, !alias.scope !315, !noalias !318
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueENtNtB17_3map14MaxSizeReachedE6expectCsl8OoimOLbh_6qdrant.exit

bb.as:                                            ; preds = %bb.c
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %.thread145.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.c
  %i.ep = load ptr, ptr %2, align 8, !alias.scope !321, !noalias !203, !noundef !18 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %_RINvXNtNtNtCs577yCKf7gy3_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.thread, label %bb.at

bb.at:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !326, !noalias !203, !noundef !18
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !alias.scope !326, !noalias !203, !noundef !18
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !326, !noalias !203, !noundef !18
  br label %_RINvXNtNtNtCs577yCKf7gy3_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.thread.sink.split

bb.au:                                            ; preds = %bb.x, %bb.a
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !alias.scope !344, !noalias !196, !noundef !18
  %i.ez = load ptr, ptr %3, align 8, !alias.scope !344, !noalias !196, !nonnull !18, !align !197, !noundef !18
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fb = load ptr, ptr %i.fa, align 8, !noalias !345, !nonnull !18, !noundef !18
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !alias.scope !344, !noalias !196, !noundef !18
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ff = load i64, ptr %i.fe, align 8, !alias.scope !344, !noalias !196, !noundef !18
  invoke void %i.fb(ptr noundef %i.ey, ptr noundef %i.fd, i64 noundef %i.ff)
          to label %.thread145.i.i unwind label %bb.av, !noalias !183, !inline_history !199

bb.av:                                            ; preds = %bb.aw, %bb.au
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !183
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit45.i.i: ; preds = %bb.aw, %.thread145.i.i, %bb.am, %bb.al, %bb.ai, %bb.n, %bb.m, %bb.j
  %.pn148.i.i = phi { ptr, i32 } [ %i.bf, %bb.m ], [ %.pn149.i.i, %.thread145.i.i ], [ %.pn149.i.i, %bb.aw ], [ %i.dt, %bb.al ], [ %i.dt, %bb.am ], [ %i.dp, %bb.ai ], [ %i.bf, %bb.n ], [ %i.bb, %bb.j ]
  resume { ptr, i32 } %.pn148.i.i

.thread145.i.i:                                   ; preds = %bb.au, %bb.as, %bb.z
  %.pn149.i.i = phi { ptr, i32 } [ %i.cn, %bb.z ], [ %i.eo, %bb.as ], [ %lpad.thr_comm.i.i, %bb.au ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %i.fh = load ptr, ptr %2, align 8, !alias.scope !352, !noalias !203, !noundef !18 ; 2 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit45.i.i, label %bb.aw

bb.aw:                                            ; preds = %.thread145.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !alias.scope !365, !noalias !203, !noundef !18
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8, !noalias !366, !nonnull !18, !noundef !18
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !alias.scope !365, !noalias !203, !noundef !18
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !365, !noalias !203, !noundef !18
  invoke void %i.fm(ptr noundef %i.fk, ptr noundef %i.fo, i64 noundef %i.fq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit45.i.i unwind label %bb.av, !noalias !183, !inline_history !100

_RINvXNtNtNtCs577yCKf7gy3_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.ad, %bb.ae
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  %i.fr = icmp eq i8 %.sroa.483.0.copyload.i.i, -1
  br i1 %i.fr, label %_RINvXNtNtNtCs577yCKf7gy3_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.thread, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueENtNtB17_3map14MaxSizeReachedE6expectCsl8OoimOLbh_6qdrant.exit, !prof !372

_RINvXNtNtNtCs577yCKf7gy3_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.thread.sink.split: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i48.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i.i.i, %bb.at
  %.pn = phi ptr [ %i.ab, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %i.ep, %bb.at ], [ %i.ab, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i48.i.i ]
  %.sink49 = phi i64 [ %i.ag, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %i.ew, %bb.at ], [ %i.ag, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i48.i.i ]
  %.sink = phi ptr [ %i.ah, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %i.eu, %bb.at ], [ %i.ah, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i48.i.i ]
  %.sroa.668.0.copyload.i.i.sink = phi ptr [ %.sroa.6117.0.copyload.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %i.es, %bb.at ], [ %.sroa.668.0.copyload.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i48.i.i ]
  %.sink50.in = getelementptr inbounds nuw i8, ptr %.pn, i64 32
  %.sink50 = load ptr, ptr %.sink50.in, align 8, !noalias !183, !nonnull !18, !noundef !18
  tail call void %.sink50(ptr noundef %.sroa.668.0.copyload.i.i.sink, ptr noundef %.sink, i64 noundef %.sink49), !noalias !183
  br label %_RINvXNtNtNtCs577yCKf7gy3_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.thread

_RINvXNtNtNtCs577yCKf7gy3_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.thread: ; preds = %_RINvXNtNtNtCs577yCKf7gy3_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.thread.sink.split, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i48.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i.i, %_RINvXNtNtNtCs577yCKf7gy3_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECsl8OoimOLbh_6qdrant.exit
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #30, !noalias !373
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueENtNtB17_3map14MaxSizeReachedE6expectCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.q, %bb.ar, %bb.aq, %_RINvXNtNtNtCs577yCKf7gy3_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECsl8OoimOLbh_6qdrant.exit
  %.sroa.4.05 = phi i8 [ %.sroa.483.0.copyload.i.i, %_RINvXNtNtNtCs577yCKf7gy3_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECsl8OoimOLbh_6qdrant.exit ], [ 2, %bb.aq ], [ 2, %bb.ar ], [ 2, %bb.q ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false), !alias.scope !373
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.4.05, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !373
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10, i64 7, i1 false), !alias.scope !373
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  ret void

infloop:                                          ; preds = %.outer62, %infloop
  br label %infloop

infloop90:                                        ; preds = %.outer, %infloop90
  br label %infloop90
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap6removeNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 9 uses
  %.sroa.09 = alloca [64 x i8], align 8           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.09, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !374, !noalias !377, !noundef !18 ; 4 uses
  %i.e = icmp ult i64 %i.d, 88686269585142076
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %..loopexit15_crit_edge, label %bb.b

..loopexit15_crit_edge:                           ; preds = %bb.a
  %.pre31.pre = load ptr, ptr %2, align 8, !alias.scope !379
  br label %.loopexit15

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc noundef i16 @_RINvNtNtCs577yCKf7gy3_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noundef nonnull readonly align 8 %2) #29, !noalias !377 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.i = load i16, ptr %i.h, align 8, !alias.scope !374, !noalias !377, !noundef !18 ; 3 uses
  %i.j = and i16 %i.i, %i.g
  %i.k = zext nneg i16 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !374, !noalias !377, !noundef !18 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !374, !noalias !377, !nonnull !18
  %i.p = zext i16 %i.i to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !374, !noalias !377, !nonnull !18
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load ptr, ptr %2, align 8                ; 7 uses
  %i.v = icmp eq ptr %i.u, null                   ; 3 uses
  %i.w = load i8, ptr %i.s, align 8, !range !59
  %i.x = load i64, ptr %i.t, align 8              ; 3 uses
  %i.y = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not = icmp eq i64 %i.m, 0
  br label %.outer67

.outer67:                                         ; preds = %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i, %bb.b
  %.sroa.05.0.i.ph = phi i64 [ %i.al, %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.ph = phi i64 [ %i.am, %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.z = icmp ult i64 %.sroa.0.0.i.ph, %i.m       ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.z, %.not.not
  %.sroa.0.0.i.ph.mux = select i1 %i.z, i64 %.sroa.0.0.i.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit76, label %infloop

.loopexit76:                                      ; preds = %.outer67
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.0.0.i.ph.mux ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 2, !noalias !384, !noundef !18 ; 3 uses
  %.not.i7 = icmp eq i16 %i.ab, -1
  br i1 %.not.i7, label %.loopexit15, label %bb.c

bb.c:                                             ; preds = %.loopexit76
  %i.ac = zext i16 %i.ab to i64                   ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ae = load i16, ptr %i.ad, align 2, !noalias !384, !noundef !18 ; 2 uses
  %i.af = and i16 %i.ae, %i.i
  %i.ag = zext i16 %i.af to i64
  %i.ah = sub i64 %.sroa.0.0.i.ph.mux, %i.ag
  %i.ai = and i64 %i.ah, %i.p
  %i.aj = icmp samesign ugt i64 %.sroa.05.0.i.ph, %i.ai
  br i1 %i.aj, label %.loopexit15, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = icmp eq i16 %i.ae, %i.g
  br i1 %i.ak, label %bb.e, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i: ; preds = %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i, %.split.i, %bb.h, %bb.f, %bb.d
  %i.al = add nuw nsw i64 %.sroa.05.0.i.ph, 1
  %i.am = add i64 %.sroa.0.0.i.ph.mux, 1
  br label %.outer67

bb.e:                                             ; preds = %bb.d
  %i.an = icmp samesign ugt i64 %i.d, %i.ac
  br i1 %i.an, label %bb.f, label %.invoke

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw [104 x i8], ptr %i.r, i64 %i.ac ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !384, !noundef !18
  %i.ar = icmp ne ptr %i.aq, null                 ; 2 uses
  %i.as = xor i1 %i.ar, %i.v
  br i1 %i.as, label %bb.g, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.ar, label %bb.h, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.au = load i64, ptr %i.at, align 8, !noalias !384, !noundef !18
  %i.av = icmp eq i64 %i.au, %i.x
  br i1 %i.av, label %.split.i, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

.split.i:                                         ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !384, !noundef !18
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ax, ptr %i.y, i64 %i.x), !noalias !384
  %i.ay = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.ay, label %_RINvXs0_NtNtNtCs577yCKf7gy3_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsl8OoimOLbh_6qdrant.exit, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.v)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.ba = load i8, ptr %i.az, align 8, !range !59, !noalias !384, !noundef !18
  %i.bb = icmp eq i8 %i.ba, %i.w
  br i1 %i.bb, label %_RINvXs0_NtNtNtCs577yCKf7gy3_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsl8OoimOLbh_6qdrant.exit, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

.invoke:                                          ; preds = %bb.e, %bb.m
  %i.bc = phi i64 [ %.sroa.0.0.i.ph.mux, %bb.m ], [ %i.ac, %bb.e ]
  %i.bd = phi i64 [ %i.bz, %bb.m ], [ %i.d, %bb.e ]
  %i.be = phi ptr [ @42, %bb.m ], [ @4, %bb.e ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bc, i64 noundef %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be) #30
          to label %.cont unwind label %bb.i

.cont:                                            ; preds = %.invoke
  unreachable

bb.i:                                             ; preds = %.invoke, %bb.ae, %bb.o, %bb.l
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.t, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bf, %bb.i ], [ %i.cv, %bb.t ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  br i1 %i.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit, label %bb.j

bb.j:                                             ; preds = %.body
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !403, !noundef !18
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !403, !nonnull !18, !noundef !18
  invoke void %i.bj(ptr noundef %i.bh, ptr noundef %i.y, i64 noundef %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit unwind label %bb.af, !inline_history !100

.loopexit15:                                      ; preds = %bb.c, %.loopexit76, %..loopexit15_crit_edge
  %.pre31 = phi ptr [ %.pre31.pre, %..loopexit15_crit_edge ], [ %i.u, %.loopexit76 ], [ %i.u, %bb.c ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %i.bk, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit6

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit6: ; preds = %bb.ae, %.loopexit, %.loopexit15
  %i.bl = phi ptr [ %.pre31, %.loopexit15 ], [ %i.u, %.loopexit ], [ %i.u, %bb.ae ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit2, label %bb.k

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !418, !noundef !18
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !418, !nonnull !18, !noundef !18
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !418, !noundef !18
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !418, !noundef !18
  tail call void %i.bq(ptr noundef %i.bo, ptr noundef %i.bs, i64 noundef %i.bu), !noalias !418, !inline_history !58
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit2: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit6, %bb.k
  ret void

_RINvXs0_NtNtNtCs577yCKf7gy3_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsl8OoimOLbh_6qdrant.exit: ; preds = %.split.i, %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i
  %i.bv = load i64, ptr %i.ao, align 8, !range !17, !noundef !18
  %i.bw = trunc nuw i64 %i.bv to i1
  br i1 %i.bw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_RINvXs0_NtNtNtCs577yCKf7gy3_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsl8OoimOLbh_6qdrant.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !noundef !18
  invoke void @_RNvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %i.by)
          to label %._crit_edge unwind label %bb.i

._crit_edge:                                      ; preds = %bb.l
  %.pre = load i64, ptr %i.l, align 8, !alias.scope !419, !noalias !422
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %_RINvXs0_NtNtNtCs577yCKf7gy3_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsl8OoimOLbh_6qdrant.exit
  %i.bz = phi i64 [ %.pre, %._crit_edge ], [ %i.m, %_RINvXs0_NtNtNtCs577yCKf7gy3_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsl8OoimOLbh_6qdrant.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %i.ca = icmp ult i64 %.sroa.0.0.i.ph.mux, %i.bz
  br i1 %i.ca, label %bb.n, label %.invoke

bb.n:                                             ; preds = %bb.m
  %i.cb = load ptr, ptr %i.n, align 8, !alias.scope !419, !noalias !422, !nonnull !18, !noundef !18 ; 5 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.sroa.0.0.i.ph.mux ; 2 uses
  store i16 -1, ptr %i.cc, align 2, !noalias !424
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  store i16 0, ptr %i.cd, align 2, !noalias !424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !424
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.ce = load i64, ptr %i.c, align 8, !alias.scope !428, !noalias !429, !noundef !18 ; 4 uses
  %i.cf = icmp ult i64 %i.ce, 88686269585142076
  tail call void @llvm.assume(i1 %i.cf)
  %.not.i.i = icmp samesign ugt i64 %i.ce, %i.ac
  br i1 %.not.i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs577yCKf7gy3_4http6header3map6BucketNtNtBJ_5value11HeaderValueEE11swap_removeCsl8OoimOLbh_6qdrant.exit.i, label %bb.o, !prof !431

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE11swap_remove13assert_failed(i64 noundef %i.ac, i64 noundef %i.ce) #30
          to label %.noexc3 unwind label %bb.i

.noexc3:                                          ; preds = %bb.o
  unreachable

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs577yCKf7gy3_4http6header3map6BucketNtNtBJ_5value11HeaderValueEE11swap_removeCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.n
  %i.cg = load ptr, ptr %i.q, align 8, !alias.scope !428, !noalias !429, !nonnull !18, !noundef !18 ; 2 uses
  %i.ch = getelementptr inbounds nuw [104 x i8], ptr %i.cg, i64 %i.ac ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.ch, i64 104, i1 false), !noalias !432
  %i.ci = add nsw i64 %i.ce, -1                   ; 5 uses
  %i.cj = getelementptr inbounds nuw [104 x i8], ptr %i.cg, i64 %i.ci
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ch, ptr noundef nonnull align 8 dereferenceable(104) %i.cj, i64 104, i1 false), !noalias !433
  store i64 %i.ci, ptr %i.c, align 8, !alias.scope !428, !noalias !429
  %i.ck = icmp samesign ugt i64 %i.ci, %i.ac
  br i1 %i.ck, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs577yCKf7gy3_4http6header3map6BucketNtNtBJ_5value11HeaderValueEE11swap_removeCsl8OoimOLbh_6qdrant.exit.i
  %i.cl = load i16, ptr %i.h, align 8, !alias.scope !419, !noalias !422, !noundef !18
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 96
  %i.cn = load i16, ptr %i.cm, align 8, !noalias !424, !noundef !18 ; 2 uses
  %i.co = and i16 %i.cn, %i.cl
  %i.cp = zext i16 %i.co to i64
  br label %bb.r

bb.q:                                             ; preds = %bb.y, %bb.v, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs577yCKf7gy3_4http6header3map6BucketNtNtBJ_5value11HeaderValueEE11swap_removeCsl8OoimOLbh_6qdrant.exit.i
  %i.cq = icmp eq i64 %i.ci, 0
  br i1 %i.cq, label %.loopexit, label %bb.z

bb.r:                                             ; preds = %.backedge, %bb.p
  %.sroa.01.0.i = phi i64 [ %i.cp, %bb.p ], [ %.sroa.01.0.i.be, %.backedge ] ; 4 uses
  %i.cr = icmp ult i64 %.sroa.01.0.i, %i.bz
  br i1 %i.cr, label %bb.s, label %.backedge

bb.s:                                             ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.sroa.01.0.i
  %i.ct = load i16, ptr %i.cs, align 2, !noalias !424, !noundef !18 ; 2 uses
  %.not.i = icmp eq i16 %i.ct, -1
  %i.cu = zext i16 %i.ct to i64
  %.not35.i = icmp samesign ugt i64 %i.ci, %i.cu
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not35.i
  br i1 %or.cond.i, label %bb.u, label %bb.v

bb.t:                                             ; preds = %.invoke.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs577yCKf7gy3_4http6header3map6BucketNtNtBG_5value11HeaderValueEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(104) %i.a) #27
          to label %.body unwind label %bb.ad, !noalias !424

bb.u:                                             ; preds = %bb.s
  %i.cw = add nuw i64 %.sroa.01.0.i, 1
  br label %.backedge

.backedge:                                        ; preds = %bb.u, %bb.r
  %.sroa.01.0.i.be = phi i64 [ %i.cw, %bb.u ], [ 0, %bb.r ]
  br label %bb.r

bb.v:                                             ; preds = %bb.s
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.sroa.01.0.i ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  store i16 %i.ab, ptr %i.cx, align 2, !noalias !424
  store i16 %i.cn, ptr %i.cy, align 2, !noalias !424
  %i.cz = load i64, ptr %i.ch, align 8, !range !17, !noalias !424, !noundef !18
  %i.da = trunc nuw i64 %i.cz to i1
  br i1 %i.da, label %bb.w, label %bb.q

bb.w:                                             ; preds = %bb.v
  %i.db = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !noalias !424, !noundef !18 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !noalias !424, !noundef !18 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !419, !noalias !422, !noundef !18 ; 4 uses
  %i.dh = icmp ult i64 %i.dc, %i.dg
  br i1 %i.dh, label %bb.x, label %.invoke.i

bb.x:                                             ; preds = %bb.w
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !419, !noalias !422, !nonnull !18, !noundef !18 ; 2 uses
  %i.dk = getelementptr inbounds nuw [72 x i8], ptr %i.dj, i64 %i.dc ; 2 uses
  store i64 0, ptr %i.dk, align 8, !noalias !424
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 %i.ac, ptr %i.dl, align 8, !noalias !424
  %i.dm = icmp ult i64 %i.de, %i.dg
  br i1 %i.dm, label %bb.y, label %.invoke.i

bb.y:                                             ; preds = %bb.x
  %i.dn = getelementptr inbounds nuw [72 x i8], ptr %i.dj, i64 %i.de ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store i64 0, ptr %i.do, align 8, !noalias !424
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  store i64 %i.ac, ptr %i.dp, align 8, !noalias !424
  br label %bb.q

bb.z:                                             ; preds = %bb.q
  %i.dq = load i16, ptr %i.h, align 8, !alias.scope !419, !noalias !422 ; 2 uses
  %i.dr = zext i16 %i.dq to i64
  br label %.outer

.outer:                                           ; preds = %bb.ac, %bb.z
  %.sroa.018.0.i.ph = phi i64 [ %.sroa.08.0.i.lcssa, %bb.ac ], [ %.sroa.0.0.i.ph.mux, %bb.z ] ; 4 uses
  %.sroa.08.0.i.ph = add i64 %.sroa.018.0.i.ph, 1 ; 2 uses
  %i.ds = icmp ult i64 %.sroa.08.0.i.ph, %i.bz
  %.sroa.08.0.i.lcssa = select i1 %i.ds, i64 %.sroa.08.0.i.ph, i64 0 ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.sroa.08.0.i.lcssa ; 3 uses
  %i.du = load i16, ptr %i.dt, align 2, !noalias !424, !noundef !18 ; 2 uses
  %.not36.i = icmp eq i16 %i.du, -1
  br i1 %.not36.i, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %.outer
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 2 ; 2 uses
  %i.dw = load i16, ptr %i.dv, align 2, !noalias !424, !noundef !18 ; 2 uses
  %i.dx = and i16 %i.dw, %i.dq
  %i.dy = zext i16 %i.dx to i64
  %i.dz = sub i64 %.sroa.08.0.i.lcssa, %i.dy
  %i.ea = and i64 %i.dz, %i.dr
  %.not37.i = icmp eq i64 %i.ea, 0
  br i1 %.not37.i, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eb = icmp ult i64 %.sroa.018.0.i.ph, %i.bz
  br i1 %i.eb, label %bb.ac, label %.invoke.i

.invoke.i:                                        ; preds = %bb.ab, %bb.x, %bb.w
  %i.ec = phi i64 [ %i.de, %bb.x ], [ %i.dc, %bb.w ], [ %.sroa.018.0.i.ph, %bb.ab ]
  %i.ed = phi i64 [ %i.dg, %bb.x ], [ %i.dg, %bb.w ], [ %i.bz, %bb.ab ]
  %i.ee = phi ptr [ @44, %bb.x ], [ @43, %bb.w ], [ @45, %bb.ab ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ec, i64 noundef %i.ed, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ee) #26
          to label %.cont.i unwind label %bb.t, !noalias !424

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.sroa.018.0.i.ph ; 2 uses
  store i16 %i.du, ptr %i.ef, align 2, !noalias !424
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  store i16 %i.dw, ptr %i.eg, align 2, !noalias !424
  store i16 -1, ptr %i.dt, align 2, !noalias !424
  store i16 0, ptr %i.dv, align 2, !noalias !424
  br label %.outer

bb.ad:                                            ; preds = %bb.t
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !424
  unreachable

.loopexit:                                        ; preds = %bb.aa, %.outer, %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.09, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !noalias !419 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !419
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.611.0.copyload = load i64, ptr %.sroa.611.0..sroa_idx, align 8, !noalias !419
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  %i.ei = icmp eq ptr %.sroa.410.0.copyload, null
  br i1 %i.ei, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit6, label %bb.ae

bb.ae:                                            ; preds = %.loopexit
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.410.0.copyload, i64 32
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !434, !nonnull !18, !noundef !18
  invoke void %i.ek(ptr noundef %.sroa.7.0.copyload, ptr noundef %.sroa.5.0.copyload, i64 noundef %.sroa.611.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit6 unwind label %bb.i, !inline_history !100

bb.af:                                            ; preds = %bb.j
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit: ; preds = %.body, %bb.j
  resume { ptr, i32 } %eh.lpad-body

infloop:                                          ; preds = %.outer67, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap7get_allRNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !447, !noalias !450, !noundef !18 ; 4 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef i16 @_RINvNtNtCs577yCKf7gy3_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noundef nonnull readonly align 8 %2) #29, !noalias !450 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.g = load i16, ptr %i.f, align 8, !alias.scope !447, !noalias !450, !noundef !18 ; 3 uses
  %i.h = and i16 %i.g, %i.e
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !447, !noalias !450, !noundef !18 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !447, !noalias !450, !nonnull !18
  %i.n = zext i16 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !447, !noalias !450, !nonnull !18
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.not = icmp eq i64 %i.k, 0
  br label %.outer

.outer:                                           ; preds = %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i, %bb.b
  %.sroa.05.0.i.ph = phi i64 [ %i.ae, %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.ph = phi i64 [ %i.af, %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.s = icmp ult i64 %.sroa.0.0.i.ph, %i.k       ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.s, %.not.not
  %.sroa.0.0.i.ph.mux = select i1 %i.s, i64 %.sroa.0.0.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.ph.mux ; 2 uses
  %i.u = load i16, ptr %i.t, align 2, !noalias !452, !noundef !18 ; 2 uses
  %.not.i = icmp eq i16 %i.u, -1
  br i1 %.not.i, label %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.v = zext i16 %i.u to i64                     ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.x = load i16, ptr %i.w, align 2, !noalias !452, !noundef !18 ; 2 uses
  %i.y = and i16 %i.x, %i.g
  %i.z = zext i16 %i.y to i64
  %i.aa = sub i64 %.sroa.0.0.i.ph.mux, %i.z
  %i.ab = and i64 %i.aa, %i.n
  %i.ac = icmp samesign ugt i64 %.sroa.05.0.i.ph, %i.ab
  br i1 %i.ac, label %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp eq i16 %i.x, %i.e
  br i1 %i.ad, label %bb.e, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i: ; preds = %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i, %.split.i, %bb.h, %bb.f, %bb.d
  %i.ae = add nuw nsw i64 %.sroa.05.0.i.ph, 1
  %i.af = add i64 %.sroa.0.0.i.ph.mux, 1
  br label %.outer

bb.e:                                             ; preds = %bb.d
  %i.ag = icmp samesign ugt i64 %i.b, %i.v
  br i1 %i.ag, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.v ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !452, !noundef !18
  %i.ak = icmp ne ptr %i.aj, null                 ; 2 uses
  %i.al = load ptr, ptr %2, align 8, !noalias !452, !noundef !18 ; 2 uses
  %i.am = icmp eq ptr %i.al, null                 ; 2 uses
  %i.an = xor i1 %i.ak, %i.am
  br i1 %i.an, label %bb.g, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.ak, label %bb.h, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !452, !noundef !18 ; 2 uses
  %i.aq = load i64, ptr %i.r, align 8, !noalias !452, !noundef !18
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %.split.i, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

.split.i:                                         ; preds = %bb.h
  %i.as = load ptr, ptr %i.q, align 8, !noalias !452, !noundef !18
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !noalias !452, !noundef !18
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.au, ptr %i.as, i64 %i.ap), !noalias !452
  %i.av = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.av, label %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.am)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.ax = load i8, ptr %i.aw, align 8, !range !59, !noalias !452, !noundef !18
  %i.ay = load i8, ptr %i.q, align 8, !range !59, !noalias !452, !noundef !18
  %i.az = icmp eq i8 %i.ax, %i.ay
  br i1 %i.az, label %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

bb.i:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #30, !noalias !452
  unreachable

_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit: ; preds = %.split.i, %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i, %.loopexit, %bb.c, %bb.a
  %.sroa.5.02 = phi i64 [ undef, %bb.a ], [ %i.v, %.split.i ], [ %i.v, %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i ], [ undef, %bb.c ], [ undef, %.loopexit ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 1, %.split.i ], [ 1, %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i ], [ 0, %bb.c ], [ 0, %.loopexit ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.ba, align 8
  store i64 %.sink.i, ptr %0, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.02, ptr %i.bb, align 8
  ret void

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs16_NtCsG258MDvU3F_3std4pathNtB7_4Path11starts_withRNtB7_7PathBufECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !nonnull !18, !noundef !18
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !noundef !18
  %i.c = tail call noundef zeroext i1 @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path12__starts_with(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs16_NtCsG258MDvU3F_3std4pathNtB7_4Path12strip_prefixRBv_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path13__strip_prefix(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  ret { ptr, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs16_NtCsG258MDvU3F_3std4pathNtB7_4Path12strip_prefixRNtB7_7PathBufECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !nonnull !18, !noundef !18
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !noundef !18
  %i.c = tail call { ptr, i64 } @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path13__strip_prefix(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
  ret { ptr, i64 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs16_NtCsG258MDvU3F_3std4pathNtB7_4Path14with_extensionReECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path15__with_extension(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_RINvMs16_NtCsG258MDvU3F_3std4pathNtB7_4Path3neweECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %1, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs16_NtCsG258MDvU3F_3std4pathNtB7_4Path4joinNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !18, !noundef !18
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !18
  invoke void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %3) #27
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs16_NtCsG258MDvU3F_3std4pathNtB7_4Path4joinNtNtNtB9_3ffi6os_str8OsStringECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !18, !noundef !18
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !18
  invoke void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %3) #27
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs16_NtCsG258MDvU3F_3std4pathNtB7_4Path4joinRBv_ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs16_NtCsG258MDvU3F_3std4pathNtB7_4Path4joinRNtB7_7PathBufECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !nonnull !18, !noundef !18
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !noundef !18
  tail call void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs16_NtCsG258MDvU3F_3std4pathNtB7_4Path4joinRNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
end_hunk_0
