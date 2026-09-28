Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/zip-6da3ff7bab271d6c.zip.63b7b3929591a8f8-cgu.0?download=true
inline.NumInlined: 145
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMsj_NtCs8yNfvVM1dno_3zip5typesNtB5_20Zip64ExtraFieldBlock9serialize:bb.a
  store i64 0, ptr %i.e, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 2, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i16 %i.j, ptr %.sroa.518.0..sroa_idx, align 8
  invoke void @_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtCshzWfHUSfYae_4core5array4iter8IntoIterhKj2_EECs8yNfvVM1dno_3zip(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.e unwind label %bb.q

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i16 %i.l, ptr %.sroa.531.0..sroa_idx, align 8
  invoke void @_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtCshzWfHUSfYae_4core5array4iter8IntoIterhKj2_EECs8yNfvVM1dno_3zip(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aj = trunc nuw i64 %i.m to i1
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 8, ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.o, ptr %.sroa.542.0..sroa_idx, align 8
  invoke void @_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtCshzWfHUSfYae_4core5array4iter8IntoIterhKj8_EECs8yNfvVM1dno_3zip(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.i unwind label %bb.q

bb.h:                                             ; preds = %bb.i, %bb.f
  %i.ak = trunc nuw i64 %i.q to i1
  br i1 %i.ak, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 8, ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.s, ptr %.sroa.552.0..sroa_idx, align 8
  invoke void @_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtCshzWfHUSfYae_4core5array4iter8IntoIterhKj8_EECs8yNfvVM1dno_3zip(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.l unwind label %bb.q

bb.k:                                             ; preds = %bb.l, %bb.h
  %i.al = trunc nuw i64 %i.u to i1
  br i1 %i.al, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 8, ptr %.sroa.461.0..sroa_idx, align 8
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.w, ptr %.sroa.562.0..sroa_idx, align 8
  invoke void @_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtCshzWfHUSfYae_4core5array4iter8IntoIterhKj8_EECs8yNfvVM1dno_3zip(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.o unwind label %bb.q

bb.n:                                             ; preds = %bb.o, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.am = call { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE16into_boxed_sliceCs8yNfvVM1dno_3zip(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret { ptr, i64 } %i.am

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.p:                                             ; preds = %bb.q
  resume { ptr, i32 } %lpad.thr_comm

bb.q:                                             ; preds = %bb.m, %bb.j, %bb.g, %bb.e, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs8yNfvVM1dno_3zip(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #17
          to label %bb.p unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCs8yNfvVM1dno_3zip5typesNtB5_8DateTimeNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 15 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [2 x i8], align 2                 ; 4 uses
  %i.h = load i16, ptr %0, align 2, !noundef !5   ; 4 uses
  %i.i = icmp eq i16 %i.h, 33
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = load i16, ptr %i.j, align 2              ; 4 uses
  %i.l = icmp eq i16 %i.k, 0
  %or.cond = select i1 %i.i, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.m = lshr i16 %i.h, 9
  %i.n = add nuw nsw i16 %i.m, 1980
  store i16 %i.n, ptr %i.g, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.o = lshr i16 %i.h, 5
  %i.p = trunc i16 %i.o to i8
  %i.q = and i8 %i.p, 15
  store i8 %i.q, ptr %i.f, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.r = trunc i16 %i.h to i8
  %i.s = and i8 %i.r, 31
  store i8 %i.s, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.t = lshr i16 %i.k, 11
  %i.u = trunc nuw nsw i16 %i.t to i8
  store i8 %i.u, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.v = lshr i16 %i.k, 5
  %i.w = trunc i16 %i.v to i8
  %i.x = and i8 %i.w, 63
  store i8 %i.x, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.tr = trunc i16 %i.k to i8
  %i.y = shl i8 %.tr, 1
  %i.z = and i8 %i.y, 62
  store i8 %i.z, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.a, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs3_NtNtNtCshzWfHUSfYae_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.45.0..sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.aa, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXNtNtNtCshzWfHUSfYae_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.e, ptr %i.ab, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXNtNtNtCshzWfHUSfYae_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.d, ptr %i.ac, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXNtNtNtCshzWfHUSfYae_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.417.0..sroa_idx, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.c, ptr %i.ad, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr @_RNvXNtNtNtCshzWfHUSfYae_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.421.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.b, ptr %i.ae, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr @_RNvXNtNtNtCshzWfHUSfYae_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.425.0..sroa_idx, align 8
  %i.af = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !5, !align !209, !noundef !5
  %i.ai = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ah, ptr noundef nonnull @20, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.aj = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 19)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.aj, %bb.c ], [ %i.ai, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i8 -1, 2) i8 @_RNvXs2_NtCs8yNfvVM1dno_3zip5typesNtB5_8DateTimeNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(4) %1) unnamed_addr #2 {
bb.a:
  %.val = load i16, ptr %0, align 2, !noundef !5  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.val1 = load i16, ptr %i.a, align 2            ; 3 uses
  %.val2 = load i16, ptr %1, align 2, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.val3 = load i16, ptr %i.b, align 2            ; 3 uses
  %i.c = lshr i16 %.val, 9                        ; 2 uses
  %i.d = lshr i16 %.val2, 9                       ; 2 uses
  %i.e = tail call i8 @llvm.ucmp.i8.i16(i16 %i.c, i16 %i.d)
  %i.f = icmp eq i16 %i.c, %i.d
  br i1 %i.f, label %bb.b, label %_RNvXs1_NtCs8yNfvVM1dno_3zip5typesNtB5_8DateTimeNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit

bb.b:                                             ; preds = %bb.a
  %i.g = lshr i16 %.val, 5
  %i.h = trunc i16 %i.g to i8
  %i.i = and i8 %i.h, 15                          ; 2 uses
  %i.j = lshr i16 %.val2, 5
  %i.k = trunc i16 %i.j to i8
  %i.l = and i8 %i.k, 15                          ; 2 uses
  %i.m = tail call i8 @llvm.ucmp.i8.i8(i8 %i.i, i8 %i.l)
  %i.n = icmp eq i8 %i.i, %i.l
  br i1 %i.n, label %bb.c, label %_RNvXs1_NtCs8yNfvVM1dno_3zip5typesNtB5_8DateTimeNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit

bb.c:                                             ; preds = %bb.b
  %i.o = trunc i16 %.val to i8
  %i.p = and i8 %i.o, 31                          ; 2 uses
  %i.q = trunc i16 %.val2 to i8
  %i.r = and i8 %i.q, 31                          ; 2 uses
  %i.s = tail call i8 @llvm.ucmp.i8.i8(i8 %i.p, i8 %i.r)
  %i.t = icmp eq i8 %i.p, %i.r
  br i1 %i.t, label %bb.d, label %_RNvXs1_NtCs8yNfvVM1dno_3zip5typesNtB5_8DateTimeNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit

bb.d:                                             ; preds = %bb.c
  %i.u = lshr i16 %.val1, 11                      ; 2 uses
  %i.v = trunc nuw nsw i16 %i.u to i8
  %i.w = lshr i16 %.val3, 11                      ; 2 uses
  %i.x = trunc nuw nsw i16 %i.w to i8
  %i.y = tail call i8 @llvm.ucmp.i8.i8(i8 %i.v, i8 %i.x)
  %i.z = icmp eq i16 %i.u, %i.w
  br i1 %i.z, label %bb.e, label %_RNvXs1_NtCs8yNfvVM1dno_3zip5typesNtB5_8DateTimeNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = lshr i16 %.val1, 5
  %i.ab = trunc i16 %i.aa to i8
  %i.ac = and i8 %i.ab, 63                        ; 2 uses
  %i.ad = lshr i16 %.val3, 5
  %i.ae = trunc i16 %i.ad to i8
  %i.af = and i8 %i.ae, 63                        ; 2 uses
  %i.ag = tail call i8 @llvm.ucmp.i8.i8(i8 %i.ac, i8 %i.af)
  %i.ah = icmp eq i8 %i.ac, %i.af
  br i1 %i.ah, label %bb.f, label %_RNvXs1_NtCs8yNfvVM1dno_3zip5typesNtB5_8DateTimeNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit

bb.f:                                             ; preds = %bb.e
  %.tr.i = trunc i16 %.val1 to i8
  %i.ai = shl i8 %.tr.i, 1
  %i.aj = and i8 %i.ai, 62
  %.tr6.i = trunc i16 %.val3 to i8
  %i.ak = shl i8 %.tr6.i, 1
  %i.al = and i8 %i.ak, 62
  %i.am = tail call i8 @llvm.ucmp.i8.i8(i8 %i.aj, i8 %i.al)
  br label %_RNvXs1_NtCs8yNfvVM1dno_3zip5typesNtB5_8DateTimeNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit

_RNvXs1_NtCs8yNfvVM1dno_3zip5typesNtB5_8DateTimeNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.i = phi i8 [ %i.am, %bb.f ], [ %i.e, %bb.a ], [ %i.y, %bb.d ], [ %i.m, %bb.b ], [ %i.ag, %bb.e ], [ %i.s, %bb.c ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCshzWfHUSfYae_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define range(i48 0, -65534) i48 @_RNvXs9_NtCs8yNfvVM1dno_3zip5typesNtB5_8DateTimeINtNtCshzWfHUSfYae_4core7convert7TryFromNtNtCsjsYc2335iSi_4time16offset_date_time14OffsetDateTimeE8try_from(ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call i48 @_RNvXsa_NtCs8yNfvVM1dno_3zip5typesNtB5_8DateTimeINtNtCshzWfHUSfYae_4core7convert7TryFromNtNtCsjsYc2335iSi_4time19primitive_date_time17PrimitiveDateTimeE8try_from(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0)
  ret i48 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCshzWfHUSfYae_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !212, !noundef !5 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs8yNfvVM1dno_3zip(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !212, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs8yNfvVM1dno_3zip(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !212, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !212
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs8yNfvVM1dno_3zip(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !218
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !219, !noalias !218, !noundef !5 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !219, !noalias !218, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !219, !noalias !218
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !219, !noalias !218
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define range(i48 0, -65534) i48 @_RNvXsa_NtCs8yNfvVM1dno_3zip5typesNtB5_8DateTimeINtNtCshzWfHUSfYae_4core7convert7TryFromNtNtCsjsYc2335iSi_4time19primitive_date_time17PrimitiveDateTimeE8try_from(ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4, !range !220, !noundef !5 ; 3 uses
  %i.c = ashr i32 %i.b, 10                        ; 3 uses
  %or.cond = icmp ugt i32 %i.c, 65535
  br i1 %or.cond, label %_RNvMs8_NtCs8yNfvVM1dno_3zip5typesNtB5_8DateTime18from_date_and_time.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw i32 %i.c to i16                ; 4 uses
end_hunk_0
