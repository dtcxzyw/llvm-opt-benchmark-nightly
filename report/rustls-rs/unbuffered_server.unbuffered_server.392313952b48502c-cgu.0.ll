Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/unbuffered_server.unbuffered_server.392313952b48502c-cgu.0?download=true
inline.NumInlined: 183
inline.NumDeleted: 123
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeECs4U8CktZq7fc_17unbuffered_server:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecjEECs4U8CktZq7fc_17unbuffered_server.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECs4U8CktZq7fc_17unbuffered_server.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs4U8CktZq7fc_17unbuffered_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECs4U8CktZq7fc_17unbuffered_server.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs4U8CktZq7fc_17unbuffered_server(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !9, !noundef !5
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs4U8CktZq7fc_17unbuffered_server.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !range !10, !alias.scope !24, !noundef !5
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs4U8CktZq7fc_17unbuffered_server.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs4U8CktZq7fc_17unbuffered_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs4U8CktZq7fc_17unbuffered_server.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs4U8CktZq7fc_17unbuffered_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs4U8CktZq7fc_17unbuffered_server.exit.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs4U8CktZq7fc_17unbuffered_server.exit.i.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.f

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs4U8CktZq7fc_17unbuffered_server.exit.i.i: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs4U8CktZq7fc_17unbuffered_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs4U8CktZq7fc_17unbuffered_server.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs4U8CktZq7fc_17unbuffered_server.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs4U8CktZq7fc_17unbuffered_server.exit.i.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs4U8CktZq7fc_17unbuffered_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs4U8CktZq7fc_17unbuffered_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std3sys6os_str5bytes3BufECs4U8CktZq7fc_17unbuffered_server.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs4U8CktZq7fc_17unbuffered_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs4U8CktZq7fc_17unbuffered_server.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs4U8CktZq7fc_17unbuffered_server.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std3sys6os_str5bytes3BufECs4U8CktZq7fc_17unbuffered_server.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs4U8CktZq7fc_17unbuffered_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTbINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs4U8CktZq7fc_17unbuffered_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs4U8CktZq7fc_17unbuffered_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs4U8CktZq7fc_17unbuffered_server.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs4U8CktZq7fc_17unbuffered_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs4U8CktZq7fc_17unbuffered_server.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs4U8CktZq7fc_17unbuffered_server.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs4U8CktZq7fc_17unbuffered_server.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs4U8CktZq7fc_17unbuffered_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCs4wP2HXfJTCR_5alloc2io8buf_read18default_read_untilINtNtNtB4_8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileEECs4U8CktZq7fc_17unbuffered_server(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs4U8CktZq7fc_17unbuffered_server.exit, %bb.a
  %.sroa.01.0.ph = phi i64 [ %i.bl, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs4U8CktZq7fc_17unbuffered_server.exit ], [ 0, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECs4U8CktZq7fc_17unbuffered_server.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.n = load i64, ptr %i.c, align 8, !alias.scope !43, !noalias !44, !noundef !5 ; 2 uses
  %i.o = load i64, ptr %i.d, align 8, !alias.scope !43, !noalias !44, !noundef !5 ; 2 uses
  %.not.i.i = icmp ult i64 %i.n, %i.o
  %.pre.i.i = load ptr, ptr %0, align 8, !alias.scope !43, !noalias !44 ; 3 uses
  br i1 %.not.i.i, label %_RNvXs5_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs4U8CktZq7fc_17unbuffered_server.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !45
  %i.p = load i64, ptr %i.f, align 8, !alias.scope !43, !noalias !44, !noundef !5
  store ptr %.pre.i.i, ptr %i.b, align 8, !noalias !45
  store i64 %i.p, ptr %i.g, align 8, !noalias !45
  store i64 0, ptr %i.h, align 8, !noalias !45
  %i.q = load i8, ptr %i.j, align 8, !range !9, !alias.scope !43, !noalias !44, !noundef !5
  store i8 %i.q, ptr %i.i, align 8, !noalias !45
  %i.r = call noundef ptr @_RNvXsa_NtCsaKJjC64KgbL_3std2fsNtB5_4FileNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b), !noalias !46 ; 2 uses
  store i64 0, ptr %i.c, align 8, !alias.scope !43, !noalias !44
  %i.s = load i64, ptr %i.h, align 8, !noalias !45, !noundef !5 ; 2 uses
  store i64 %i.s, ptr %i.d, align 8, !alias.scope !43, !noalias !44
  %i.t = load i8, ptr %i.i, align 8, !range !9, !noalias !45, !noundef !5
  store i8 %i.t, ptr %i.j, align 8, !alias.scope !43, !noalias !44
  %.not3.i.i = icmp eq ptr %i.r, null
  br i1 %.not3.i.i, label %bb.d, label %_RNvXs5_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs4U8CktZq7fc_17unbuffered_server.exit.thread

_RNvXs5_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs4U8CktZq7fc_17unbuffered_server.exit.thread: ; preds = %bb.c
  %i.u = ptrtoint ptr %i.r to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !45
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !45
  br label %_RNvXs5_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs4U8CktZq7fc_17unbuffered_server.exit

_RNvXs5_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs4U8CktZq7fc_17unbuffered_server.exit: ; preds = %bb.b, %bb.d
  %i.v = phi i64 [ %i.o, %bb.b ], [ %i.s, %bb.d ]
  %i.w = phi i64 [ %i.n, %bb.b ], [ 0, %bb.d ]    ; 2 uses
  %i.x = sub nuw i64 %i.v, %i.w                   ; 8 uses
  %i.y = icmp eq ptr %.pre.i.i, null
  br i1 %i.y, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_RNvXs5_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs4U8CktZq7fc_17unbuffered_server.exit.thread, %_RNvXs5_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs4U8CktZq7fc_17unbuffered_server.exit
  %.sroa.9.030 = phi i64 [ %i.u, %_RNvXs5_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs4U8CktZq7fc_17unbuffered_server.exit.thread ], [ %i.x, %_RNvXs5_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs4U8CktZq7fc_17unbuffered_server.exit ] ; 5 uses
  %i.z = inttoptr i64 %.sroa.9.030 to ptr         ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  %i.aa = and i64 %.sroa.9.030, 3
  switch i64 %i.aa, label %default.unreachable [
    i64 2, label %bb.f
    i64 3, label %.split37
    i64 0, label %.split38
    i64 1, label %.split
  ], !prof !7

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.ab = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.f
  %i.ac = lshr i64 %.sroa.9.030, 32
  %i.ad = trunc nuw i64 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !5, !noundef !5
  %i.ag = invoke noundef zeroext i1 %i.af(i32 noundef %i.ad)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.l, !inline_history !32

.split37:                                         ; preds = %bb.e
  %i.ah = icmp ult i64 %.sroa.9.030, 188978561024
  call void @llvm.assume(i1 %i.ah)
  %.mask = and i64 %.sroa.9.030, 270582939648
  %i.ai = icmp eq i64 %.mask, 150323855360
  br i1 %i.ai, label %bb.m, label %.loopexit

.split38:                                         ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ak = load i8, ptr %i.aj, align 8, !range !11, !noundef !5
  %i.al = icmp eq i8 %i.ak, 35
  br i1 %i.al, label %.thread, label %.loopexit

.split:                                           ; preds = %bb.e
  %i.am = getelementptr i8, ptr %i.z, i64 31
  %i.an = load i8, ptr %i.am, align 8, !range !11, !noundef !5
  %i.ao = icmp eq i8 %i.an, 35
  br i1 %i.ao, label %bb.n, label %.loopexit

bb.g:                                             ; preds = %_RNvXs5_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs4U8CktZq7fc_17unbuffered_server.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %i.w ; 3 uses
  %i.aq = icmp samesign ult i64 %i.x, 16
  br i1 %i.aq, label %.preheader.i, label %bb.h

.preheader.i:                                     ; preds = %bb.g
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr6memchr.exit.thread, label %.lr.ph.i

bb.h:                                             ; preds = %bb.g
  %i.ar = call { i64, i64 } @_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr14memchr_aligned(i8 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef range(i64 0, -9223372036854775808) %i.x) ; 2 uses
  %i.as = extractvalue { i64, i64 } %i.ar, 0
  %i.at = extractvalue { i64, i64 } %i.ar, 1
  %i.au = trunc nuw i64 %i.as to i1
  br i1 %i.au, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs4U8CktZq7fc_17unbuffered_server.exit, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr6memchr.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %.sroa.04.011.i = phi i64 [ %i.ay, %bb.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.04.011.i
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !47, !noundef !5
  %i.ax = icmp eq i8 %i.aw, %1
  br i1 %i.ax, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs4U8CktZq7fc_17unbuffered_server.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.ay = add nuw nsw i64 %.sroa.04.011.i, 1      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ay, %i.x
  br i1 %exitcond.not.i, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr6memchr.exit.thread, label %.lr.ph.i

_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs4U8CktZq7fc_17unbuffered_server.exit: ; preds = %.lr.ph.i, %bb.h
  %.sroa.5.0.i = phi i64 [ %i.at, %bb.h ], [ %.sroa.04.011.i, %.lr.ph.i ] ; 2 uses
  %i.az = icmp ult i64 %.sroa.5.0.i, %i.x
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %.sroa.5.0.i, 1
  br label %_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr6memchr.exit.thread

_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr6memchr.exit.thread: ; preds = %bb.i, %.preheader.i, %bb.h, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs4U8CktZq7fc_17unbuffered_server.exit
  %i.bb = phi i1 [ true, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs4U8CktZq7fc_17unbuffered_server.exit ], [ false, %bb.h ], [ false, %.preheader.i ], [ false, %bb.i ]
  %.sroa.6.0 = phi i64 [ %i.ba, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs4U8CktZq7fc_17unbuffered_server.exit ], [ %i.x, %bb.h ], [ 0, %.preheader.i ], [ %i.x, %bb.i ] ; 6 uses
  call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs4U8CktZq7fc_17unbuffered_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.sroa.6.0)
  %i.bc = load i64, ptr %i.l, align 8, !alias.scope !48, !noundef !5 ; 3 uses
  %i.bd = icmp sgt i64 %i.bc, -1
  call void @llvm.assume(i1 %i.bd)
  %.not.i21 = icmp eq i64 %.sroa.6.0, 0           ; 2 uses
  br i1 %.not.i21, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs4U8CktZq7fc_17unbuffered_server.exit, label %bb.j

bb.j:                                             ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr6memchr.exit.thread
  %i.be = load ptr, ptr %i.m, align 8, !alias.scope !48, !nonnull !5, !noundef !5
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr nonnull readonly align 1 %i.ap, i64 %.sroa.6.0, i1 false)
  %.pre.i = load i64, ptr %i.l, align 8, !alias.scope !48
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs4U8CktZq7fc_17unbuffered_server.exit

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs4U8CktZq7fc_17unbuffered_server.exit: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr6memchr.exit.thread, %bb.j
  %i.bg = phi i64 [ %.pre.i, %bb.j ], [ %i.bc, %_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr6memchr.exit.thread ]
  %i.bh = add i64 %i.bg, %.sroa.6.0
  store i64 %i.bh, ptr %i.l, align 8, !alias.scope !48
  %i.bi = load i64, ptr %i.c, align 8, !alias.scope !49, !noundef !5
  %i.bj = add i64 %i.bi, %.sroa.6.0
  %i.bk = load i64, ptr %i.d, align 8, !alias.scope !49, !noundef !5
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %i.bk, i64 %i.bj)
  store i64 %..i.i, ptr %i.c, align 8, !alias.scope !49
  %i.bl = add i64 %.sroa.6.0, %.sroa.01.0.ph      ; 2 uses
  %or.cond = or i1 %i.bb, %.not.i21
  br i1 %or.cond, label %bb.k, label %.outer

bb.k:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs4U8CktZq7fc_17unbuffered_server.exit
  %i.bm = inttoptr i64 %i.bl to ptr
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split37, %.split38, %bb.k
  %.sroa.3.0 = phi ptr [ %i.bm, %bb.k ], [ %i.z, %.split38 ], [ %i.z, %.split37 ], [ %i.z, %.split ], [ %i.z, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  %.sroa.0.0 = phi i64 [ 0, %bb.k ], [ 1, %.split38 ], [ 1, %.split37 ], [ 1, %.split ], [ 1, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  %i.bn = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.bo = insertvalue { i64, ptr } %i.bn, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.bo

bb.l:                                             ; preds = %.noexc, %bb.f
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECs4U8CktZq7fc_17unbuffered_server(ptr null, ptr nonnull %i.z) #15
          to label %bb.p unwind label %bb.o

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.ag, label %.thread, label %.loopexit

.thread:                                          ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECs4U8CktZq7fc_17unbuffered_server.exit

bb.m:                                             ; preds = %.split37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECs4U8CktZq7fc_17unbuffered_server.exit

bb.n:                                             ; preds = %.split
  %i.bq = getelementptr i8, ptr %i.z, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bq) ]
  store ptr %i.bq, ptr %i.k, align 8, !alias.scope !50
  store i8 3, ptr %i.a, align 8, !alias.scope !50
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECs4U8CktZq7fc_17unbuffered_server.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECs4U8CktZq7fc_17unbuffered_server.exit: ; preds = %bb.m, %bb.n, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.o:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.p:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.bp
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCsaKJjC64KgbL_3std3sys3net10connection9each_addrNtNtCs4wP2HXfJTCR_5alloc6string6StringNvNvMs7_NtB2_6socketNtB1E_11TcpListener4bind5innerB1Q_ECs4U8CktZq7fc_17unbuffered_server(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 4                ; 6 uses
  %.sroa.8 = alloca [30 x i8], align 2            ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvXs9_NtNtCsaKJjC64KgbL_3std3net11socket_addrNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB5_13ToSocketAddrs15to_socket_addrs(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECs4U8CktZq7fc_17unbuffered_server.exit, %bb.c
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.c ], [ %.sroa.0.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECs4U8CktZq7fc_17unbuffered_server.exit ]
  %.pn.pn = phi { ptr, i32 } [ %i.h, %bb.c ], [ %.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECs4U8CktZq7fc_17unbuffered_server.exit ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs4U8CktZq7fc_17unbuffered_server(ptr %.sroa.0.0) #15
          to label %bb.z unwind label %bb.v

bb.c:                                             ; preds = %bb.p, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCs4U8CktZq7fc_17unbuffered_server.exit.thread, %bb.a
  %.sroa.0.1 = phi ptr [ %.sroa.0.2.lcssa, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCs4U8CktZq7fc_17unbuffered_server.exit.thread ], [ %.sroa.0.243, %bb.p ], [ null, %bb.a ]
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !noundef !5 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5 ; 3 uses
  br i1 %i.j, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.m, align 8
  store i32 1, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs4U8CktZq7fc_17unbuffered_server.exit27

bb.e:                                             ; preds = %bb.d
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5.sroa.0.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.n = icmp eq ptr %i.l, %.sroa.5.sroa.4.0.copyload
  br i1 %i.n, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCs4U8CktZq7fc_17unbuffered_server.exit.thread, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCs4U8CktZq7fc_17unbuffered_server.exit.lr.ph

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCs4U8CktZq7fc_17unbuffered_server.exit.lr.ph: ; preds = %bb.e
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCs4U8CktZq7fc_17unbuffered_server.exit

bb.f:                                             ; preds = %bb.u, %bb.g
  %.sroa.0.3 = phi ptr [ %i.z, %bb.u ], [ %.sroa.0.243, %bb.g ]
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.u ], [ %i.r, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !63
  store i64 %.sroa.5.sroa.0.0.copyload, ptr %i.e, align 8, !noalias !63
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.i, ptr %i.q, align 8, !noalias !63
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtBS_3ops4drop4Drop4dropCs4U8CktZq7fc_17unbuffered_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECs4U8CktZq7fc_17unbuffered_server.exit unwind label %bb.v

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECs4U8CktZq7fc_17unbuffered_server.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !63
  br label %bb.b

bb.g:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCs4U8CktZq7fc_17unbuffered_server.exit: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCs4U8CktZq7fc_17unbuffered_server.exit.lr.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs4U8CktZq7fc_17unbuffered_server.exit
  %.sroa.0.243 = phi ptr [ null, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCs4U8CktZq7fc_17unbuffered_server.exit.lr.ph ], [ %i.z, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs4U8CktZq7fc_17unbuffered_server.exit ] ; 11 uses
  %.sroa.7.042 = phi ptr [ %i.l, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCs4U8CktZq7fc_17unbuffered_server.exit.lr.ph ], [ %i.s, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs4U8CktZq7fc_17unbuffered_server.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.7.042, i64 32 ; 2 uses
  %.sroa.031.0.copyload32 = load i16, ptr %.sroa.7.042, align 4, !noalias !64 ; 2 uses
  %.sroa.8.0..sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7.042, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.8, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.8.0..sroa.7.8..sroa_idx, i64 30, i1 false), !noalias !64
  %.not = icmp eq i16 %.sroa.031.0.copyload32, 2
  br i1 %.not, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCs4U8CktZq7fc_17unbuffered_server.exit.thread, label %bb.h

bb.h:                                             ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCs4U8CktZq7fc_17unbuffered_server.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i16 %.sroa.031.0.copyload32, ptr %i.f, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.8, i64 30, i1 false)
  invoke void @_RNvNvMs7_NtNtNtNtCsaKJjC64KgbL_3std3sys3net10connection6socketNtB7_11TcpListener4bind5inner(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.f)
          to label %_RNvYNvNvMs7_NtNtNtNtCsaKJjC64KgbL_3std3sys3net10connection6socketNtBa_11TcpListener4bind5innerINtNtNtCsj6eKBz9Db1c_4core3ops8function5FnMutTRNtNtNtB1B_3net11socket_addr10SocketAddrEE8call_mutCs4U8CktZq7fc_17unbuffered_server.exit unwind label %bb.g

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCs4U8CktZq7fc_17unbuffered_server.exit.thread: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCs4U8CktZq7fc_17unbuffered_server.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs4U8CktZq7fc_17unbuffered_server.exit, %bb.e
  %.sroa.0.2.lcssa = phi ptr [ null, %bb.e ], [ %i.z, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs4U8CktZq7fc_17unbuffered_server.exit ], [ %.sroa.0.243, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCs4U8CktZq7fc_17unbuffered_server.exit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !65
  store i64 %.sroa.5.sroa.0.0.copyload, ptr %i.d, align 8, !noalias !65
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.i, ptr %i.t, align 8, !noalias !65
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtBS_3ops4drop4Drop4dropCs4U8CktZq7fc_17unbuffered_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %bb.i unwind label %bb.c

bb.i:                                             ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCs4U8CktZq7fc_17unbuffered_server.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !65
  %.not8 = icmp eq ptr %.sroa.0.2.lcssa, null
  %spec.select = select i1 %.not8, ptr @15, ptr %.sroa.0.2.lcssa
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %spec.select, ptr %i.u, align 8
  store i32 1, ptr %0, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs4U8CktZq7fc_17unbuffered_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs4U8CktZq7fc_17unbuffered_server.exit29 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs4U8CktZq7fc_17unbuffered_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %bb.z, %bb.x, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.au, %bb.x ], [ %i.v, %bb.j ], [ %.pn11, %bb.z ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs4U8CktZq7fc_17unbuffered_server.exit29: ; preds = %bb.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs4U8CktZq7fc_17unbuffered_server.exit27
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs4U8CktZq7fc_17unbuffered_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret void

_RNvYNvNvMs7_NtNtNtNtCsaKJjC64KgbL_3std3sys3net10connection6socketNtBa_11TcpListener4bind5innerINtNtNtCsj6eKBz9Db1c_4core3ops8function5FnMutTRNtNtNtB1B_3net11socket_addr10SocketAddrEE8call_mutCs4U8CktZq7fc_17unbuffered_server.exit: ; preds = %bb.h
  %i.x = load i32, ptr %0, align 8, !range !66, !noundef !5
  %i.y = trunc nuw i32 %i.x to i1
  br i1 %i.y, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_RNvYNvNvMs7_NtNtNtNtCsaKJjC64KgbL_3std3sys3net10connection6socketNtBa_11TcpListener4bind5innerINtNtNtCsj6eKBz9Db1c_4core3ops8function5FnMutTRNtNtNtB1B_3net11socket_addr10SocketAddrEE8call_mutCs4U8CktZq7fc_17unbuffered_server.exit
  %i.z = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.aa = icmp eq ptr %.sroa.0.243, null
  br i1 %i.aa, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs4U8CktZq7fc_17unbuffered_server.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ab = ptrtoint ptr %.sroa.0.243 to i64        ; 2 uses
  %i.ac = and i64 %i.ab, 3
  switch i64 %i.ac, label %.unreachabledefault [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4U8CktZq7fc_17unbuffered_server.exit.i
    i64 3, label %bb.n
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4U8CktZq7fc_17unbuffered_server.exit.i
    i64 1, label %bb.o
  ], !prof !7

.unreachabledefault:                              ; preds = %bb.m
  unreachable

default.unreachable:                              ; preds = %bb.r
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.ad = icmp ult ptr %.sroa.0.243, inttoptr (i64 188978561024 to ptr)
  %i.ae = and i64 %i.ab, 1095216660480
  %i.af = icmp ne i64 %i.ae, 1095216660480
  call void @llvm.assume(i1 %i.ad)
  call void @llvm.assume(i1 %i.af)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4U8CktZq7fc_17unbuffered_server.exit.i

bb.o:                                             ; preds = %bb.m
  %i.ag = getelementptr i8, ptr %.sroa.0.243, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  store ptr %i.ag, ptr %i.p, align 8, !alias.scope !67
  store i8 3, ptr %i.c, align 8, !alias.scope !67
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4U8CktZq7fc_17unbuffered_server.exit.i unwind label %bb.u
end_hunk_0
