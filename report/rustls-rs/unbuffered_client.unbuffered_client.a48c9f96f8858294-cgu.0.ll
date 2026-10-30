Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/unbuffered_client.unbuffered_client.a48c9f96f8858294-cgu.0?download=true
inline.NumInlined: 313
inline.NumDeleted: 180
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadECse7TjioWD9Jw_17unbuffered_client:bb.a

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCshVVPy9isBpn_6webpki3crl5types18CertRevocationListECse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !7
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke void @_RNvXNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB2_8BTreeMapINtNtB8_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapINtNtBK_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertEECse7TjioWD9Jw_17unbuffered_client.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECse7TjioWD9Jw_17unbuffered_client.exit.i unwind label %bb.k

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapINtNtBK_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertEECse7TjioWD9Jw_17unbuffered_client.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECse7TjioWD9Jw_17unbuffered_client.exit4.i unwind label %bb.e

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECse7TjioWD9Jw_17unbuffered_client.exit.i: ; preds = %bb.e, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.c, %bb.c ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !range !6, !alias.scope !96, !noundef !7
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECse7TjioWD9Jw_17unbuffered_client.exit.i, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECse7TjioWD9Jw_17unbuffered_client.exit.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECse7TjioWD9Jw_17unbuffered_client.exit.i unwind label %bb.k

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapINtNtBK_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertEECse7TjioWD9Jw_17unbuffered_client.exit.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECse7TjioWD9Jw_17unbuffered_client.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECse7TjioWD9Jw_17unbuffered_client.exit4.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapINtNtBK_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertEECse7TjioWD9Jw_17unbuffered_client.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !range !6, !alias.scope !97, !noundef !7
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECse7TjioWD9Jw_17unbuffered_client.exit6.i, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECse7TjioWD9Jw_17unbuffered_client.exit4.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECse7TjioWD9Jw_17unbuffered_client.exit6.i unwind label %bb.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECse7TjioWD9Jw_17unbuffered_client.exit.i: ; preds = %bb.g, %bb.d, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECse7TjioWD9Jw_17unbuffered_client.exit.i
  %.pn2.i = phi { ptr, i32 } [ %i.l, %bb.g ], [ %.pn.i, %bb.d ], [ %.pn.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECse7TjioWD9Jw_17unbuffered_client.exit.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki11signed_data15OwnedSignedDataECse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.k) #18
          to label %common.resume.i unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECse7TjioWD9Jw_17unbuffered_client.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECse7TjioWD9Jw_17unbuffered_client.exit6.i: ; preds = %bb.f, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECse7TjioWD9Jw_17unbuffered_client.exit4.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.m)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECse7TjioWD9Jw_17unbuffered_client.exit.i.i unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECse7TjioWD9Jw_17unbuffered_client.exit6.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECse7TjioWD9Jw_17unbuffered_client.exit2.i.i unwind label %bb.j

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECse7TjioWD9Jw_17unbuffered_client.exit.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECse7TjioWD9Jw_17unbuffered_client.exit6.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCshVVPy9isBpn_6webpki3crl5types23OwnedCertRevocationListECse7TjioWD9Jw_17unbuffered_client.exit unwind label %bb.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECse7TjioWD9Jw_17unbuffered_client.exit2.i.i: ; preds = %bb.i, %bb.h
  %.pn.i.i = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.n, %bb.h ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume.i unwind label %bb.j

bb.i:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECse7TjioWD9Jw_17unbuffered_client.exit.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECse7TjioWD9Jw_17unbuffered_client.exit2.i.i

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECse7TjioWD9Jw_17unbuffered_client.exit2.i.i, %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume.i:                                  ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECse7TjioWD9Jw_17unbuffered_client.exit2.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECse7TjioWD9Jw_17unbuffered_client.exit.i
  %common.resume.op.i = phi { ptr, i32 } [ %.pn.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECse7TjioWD9Jw_17unbuffered_client.exit2.i.i ], [ %.pn2.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECse7TjioWD9Jw_17unbuffered_client.exit.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECse7TjioWD9Jw_17unbuffered_client.exit.i, %bb.d, %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCshVVPy9isBpn_6webpki3crl5types23OwnedCertRevocationListECse7TjioWD9Jw_17unbuffered_client.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECse7TjioWD9Jw_17unbuffered_client.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCshVVPy9isBpn_6webpki3crl5types23OwnedCertRevocationListECse7TjioWD9Jw_17unbuffered_client.exit, %bb.a
  ret void
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define hidden void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedbbECse7TjioWD9Jw_17unbuffered_client(i8 noundef range(i8 0, 3) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %2, ptr noundef %3, ptr %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13, ptr noundef %3, ptr %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #19
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define hidden { ptr, ptr } @_RINvNtNtCsaKJjC64KgbL_3std3sys9backtrace28___rust_begin_short_backtraceFEINtNtCsj6eKBz9Db1c_4core6result6ResultuINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB1e_5error5ErrorEL_EEB19_ECse7TjioWD9Jw_17unbuffered_client(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call { ptr, ptr } %0(), !inline_history !98
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !99
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvNtNtCsj6eKBz9Db1c_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECse7TjioWD9Jw_17unbuffered_client(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ugt i64 %1, %2
  br i1 %i.a, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #19, !noalias !102
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %0, %1
  br i1 %i.b, label %bb.d, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16into_slice_range.exit, !prof !10

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #19, !noalias !102
  unreachable

_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16into_slice_range.exit: ; preds = %bb.c
  %i.c = insertvalue { i64, i64 } poison, i64 %0, 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %1, 1
  ret { i64, i64 } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @_RINvNtNtCsj6eKBz9Db1c_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECse7TjioWD9Jw_17unbuffered_client(i64 noundef %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16into_slice_range.exit:
  %i.a = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %0, 1
  ret { i64, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCsaKJjC64KgbL_3std3sys3net10connection9each_addrNtNtCs4wP2HXfJTCR_5alloc6string6StringNvNvMs3_NtB2_6socketNtB1E_9TcpStream7connect5innerB1Q_ECse7TjioWD9Jw_17unbuffered_client(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 4                ; 6 uses
  %.sroa.825 = alloca [30 x i8], align 2          ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvXs9_NtNtCsaKJjC64KgbL_3std3net11socket_addrNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB5_13ToSocketAddrs15to_socket_addrs(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.c unwind label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECse7TjioWD9Jw_17unbuffered_client.exit: ; preds = %bb.e, %bb.b
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.b ], [ %.sroa.0.3, %bb.e ]
  %.pn.pn = phi { ptr, i32 } [ %i.f, %bb.b ], [ %.pn, %bb.e ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECse7TjioWD9Jw_17unbuffered_client(ptr %.sroa.0.0) #18
          to label %bb.t unwind label %bb.r

bb.b:                                             ; preds = %bb.l, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCse7TjioWD9Jw_17unbuffered_client.exit.thread, %bb.a
  %.sroa.0.1 = phi ptr [ %.sroa.0.2.lcssa, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCse7TjioWD9Jw_17unbuffered_client.exit.thread ], [ %.sroa.0.235, %bb.l ], [ null, %bb.a ]
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECse7TjioWD9Jw_17unbuffered_client.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.e, align 8, !noundef !7 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 4 uses
  br i1 %i.h, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8
  store i32 1, ptr %0, align 8
  br label %bb.m

bb.d:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.d, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.j, ptr %.sroa.2.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.825)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !113, !nonnull !7, !noundef !7
  %i.n = icmp eq ptr %i.j, %i.m
  br i1 %i.n, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCse7TjioWD9Jw_17unbuffered_client.exit.thread, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCse7TjioWD9Jw_17unbuffered_client.exit.lr.ph

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCse7TjioWD9Jw_17unbuffered_client.exit.lr.ph: ; preds = %bb.d
  %.sroa.825.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCse7TjioWD9Jw_17unbuffered_client.exit

bb.e:                                             ; preds = %bb.q, %bb.f
  %.sroa.0.3 = phi ptr [ %i.w, %bb.q ], [ %.sroa.0.235, %bb.f ]
  %.pn = phi { ptr, i32 } [ %i.am, %bb.q ], [ %i.q, %bb.f ]
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtB12_3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECse7TjioWD9Jw_17unbuffered_client.exit unwind label %bb.r

bb.f:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCse7TjioWD9Jw_17unbuffered_client.exit: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCse7TjioWD9Jw_17unbuffered_client.exit.lr.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit
  %i.r = phi ptr [ %i.j, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCse7TjioWD9Jw_17unbuffered_client.exit.lr.ph ], [ %i.ao, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit ] ; 3 uses
  %.sroa.0.235 = phi ptr [ null, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCse7TjioWD9Jw_17unbuffered_client.exit.lr.ph ], [ %i.w, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.s, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !114
  %.sroa.023.0.copyload24 = load i16, ptr %i.r, align 4, !noalias !114 ; 2 uses
  %.sroa.825.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.825, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.825.0..sroa_idx26, i64 30, i1 false), !noalias !114
  %.not = icmp eq i16 %.sroa.023.0.copyload24, 2
  br i1 %.not, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCse7TjioWD9Jw_17unbuffered_client.exit.thread, label %bb.g

bb.g:                                             ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCse7TjioWD9Jw_17unbuffered_client.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %.sroa.023.0.copyload24, ptr %i.c, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.825.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.825, i64 30, i1 false)
  invoke void @_RNvNvMs3_NtNtNtNtCsaKJjC64KgbL_3std3sys3net10connection6socketNtB7_9TcpStream7connect5inner(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %_RNvYNvNvMs3_NtNtNtNtCsaKJjC64KgbL_3std3sys3net10connection6socketNtBa_9TcpStream7connect5innerINtNtNtCsj6eKBz9Db1c_4core3ops8function5FnMutTRNtNtNtB1B_3net11socket_addr10SocketAddrEE8call_mutCse7TjioWD9Jw_17unbuffered_client.exit unwind label %bb.f

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCse7TjioWD9Jw_17unbuffered_client.exit.thread: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCse7TjioWD9Jw_17unbuffered_client.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit, %bb.d
  %.sroa.0.2.lcssa = phi ptr [ null, %bb.d ], [ %i.w, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit ], [ %.sroa.0.235, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCse7TjioWD9Jw_17unbuffered_client.exit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.825)
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtB12_3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECse7TjioWD9Jw_17unbuffered_client.exit15 unwind label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECse7TjioWD9Jw_17unbuffered_client.exit15: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCse7TjioWD9Jw_17unbuffered_client.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not8 = icmp eq ptr %.sroa.0.2.lcssa, null
  %spec.select = select i1 %.not8, ptr @16, ptr %.sroa.0.2.lcssa
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %spec.select, ptr %i.t, align 8
  store i32 1, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit21

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit21: ; preds = %bb.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECse7TjioWD9Jw_17unbuffered_client.exit.i18, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECse7TjioWD9Jw_17unbuffered_client.exit15
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret void

_RNvYNvNvMs3_NtNtNtNtCsaKJjC64KgbL_3std3sys3net10connection6socketNtBa_9TcpStream7connect5innerINtNtNtCsj6eKBz9Db1c_4core3ops8function5FnMutTRNtNtNtB1B_3net11socket_addr10SocketAddrEE8call_mutCse7TjioWD9Jw_17unbuffered_client.exit: ; preds = %bb.g
  %i.u = load i32, ptr %0, align 8, !range !115, !noundef !7
  %i.v = trunc nuw i32 %i.u to i1
  br i1 %i.v, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_RNvYNvNvMs3_NtNtNtNtCsaKJjC64KgbL_3std3sys3net10connection6socketNtBa_9TcpStream7connect5innerINtNtNtCsj6eKBz9Db1c_4core3ops8function5FnMutTRNtNtNtB1B_3net11socket_addr10SocketAddrEE8call_mutCse7TjioWD9Jw_17unbuffered_client.exit
  %i.w = load ptr, ptr %i.o, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.x = icmp eq ptr %.sroa.0.235, null
  br i1 %i.x, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.y = ptrtoint ptr %.sroa.0.235 to i64         ; 2 uses
  %i.z = and i64 %i.y, 3
  switch i64 %i.z, label %.unreachabledefault [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECse7TjioWD9Jw_17unbuffered_client.exit.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECse7TjioWD9Jw_17unbuffered_client.exit.i
    i64 1, label %bb.k
  ], !prof !8

.unreachabledefault:                              ; preds = %bb.i
  unreachable

default.unreachable:                              ; preds = %bb.n
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.aa = icmp ult ptr %.sroa.0.235, inttoptr (i64 188978561024 to ptr)
  %i.ab = and i64 %i.y, 1095216660480
  %i.ac = icmp ne i64 %i.ab, 1095216660480
  call void @llvm.assume(i1 %i.aa)
  call void @llvm.assume(i1 %i.ac)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECse7TjioWD9Jw_17unbuffered_client.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ad = getelementptr i8, ptr %.sroa.0.235, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  store ptr %i.ad, ptr %i.p, align 8, !alias.scope !116
  store i8 3, ptr %i.b, align 8, !alias.scope !116
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECse7TjioWD9Jw_17unbuffered_client.exit.i unwind label %bb.q

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECse7TjioWD9Jw_17unbuffered_client.exit.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit

bb.l:                                             ; preds = %_RNvYNvNvMs3_NtNtNtNtCsaKJjC64KgbL_3std3sys3net10connection6socketNtBa_9TcpStream7connect5innerINtNtNtCsj6eKBz9Db1c_4core3ops8function5FnMutTRNtNtNtB1B_3net11socket_addr10SocketAddrEE8call_mutCse7TjioWD9Jw_17unbuffered_client.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.825)
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtB12_3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECse7TjioWD9Jw_17unbuffered_client.exit17 unwind label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECse7TjioWD9Jw_17unbuffered_client.exit17: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.m

bb.m:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECse7TjioWD9Jw_17unbuffered_client.exit17, %.thread
  %.sroa.0.4 = phi ptr [ null, %.thread ], [ %.sroa.0.235, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECse7TjioWD9Jw_17unbuffered_client.exit17 ] ; 4 uses
  %i.ae = icmp eq ptr %.sroa.0.4, null
  br i1 %i.ae, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit21, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.af = ptrtoint ptr %.sroa.0.4 to i64          ; 2 uses
  %i.ag = and i64 %i.af, 3
  switch i64 %i.ag, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECse7TjioWD9Jw_17unbuffered_client.exit.i18
    i64 3, label %bb.o
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECse7TjioWD9Jw_17unbuffered_client.exit.i18
    i64 1, label %bb.p
  ], !prof !8

bb.o:                                             ; preds = %bb.n
  %i.ah = icmp ult ptr %.sroa.0.4, inttoptr (i64 188978561024 to ptr)
  %i.ai = and i64 %i.af, 1095216660480
  %i.aj = icmp ne i64 %i.ai, 1095216660480
  call void @llvm.assume(i1 %i.ah)
  call void @llvm.assume(i1 %i.aj)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECse7TjioWD9Jw_17unbuffered_client.exit.i18

bb.p:                                             ; preds = %bb.n
  %i.ak = getelementptr i8, ptr %.sroa.0.4, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ak, ptr %i.al, align 8, !alias.scope !117
  store i8 3, ptr %i.a, align 8, !alias.scope !117
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECse7TjioWD9Jw_17unbuffered_client.exit.i18 unwind label %bb.s

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECse7TjioWD9Jw_17unbuffered_client.exit.i18: ; preds = %bb.p, %bb.o, %bb.n, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit21

bb.q:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECse7TjioWD9Jw_17unbuffered_client.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.825)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.825)
  %i.an = load ptr, ptr %i.l, align 8, !alias.scope !118, !nonnull !7, !noundef !7
  %i.ao = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !118, !nonnull !7, !noundef !7 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.an
  br i1 %i.ap, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCse7TjioWD9Jw_17unbuffered_client.exit.thread, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCse7TjioWD9Jw_17unbuffered_client.exit

bb.r:                                             ; preds = %bb.t, %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECse7TjioWD9Jw_17unbuffered_client.exit
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECse7TjioWD9Jw_17unbuffered_client.exit, %bb.s
  %.pn11 = phi { ptr, i32 } [ %i.ar, %bb.s ], [ %.pn.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECse7TjioWD9Jw_17unbuffered_client.exit ]
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECse7TjioWD9Jw_17unbuffered_client.exit unwind label %bb.r

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECse7TjioWD9Jw_17unbuffered_client.exit: ; preds = %bb.t
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #4 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.a, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %0, i64 range(i64 0, -9223372036854775808) %3)
  %i.a = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #4 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.c, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %i.a = sub nuw nsw i64 %1, %3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %i.b, i64 range(i64 0, -9223372036854775808) %3)
  %i.c = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE6resizeCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !7 ; 6 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE8truncateCse7TjioWD9Jw_17unbuffered_client.exit

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b                     ; 4 uses
  %i.f = load i64, ptr %0, align 8, !range !123, !alias.scope !124, !noundef !7
  %i.g = sub nsw i64 %i.f, %i.b
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCse7TjioWD9Jw_17unbuffered_client.exit.i, !prof !10

bb.c:                                             ; preds = %bb.b
  tail call void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.e, i64 noundef 1, i64 noundef 1)
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !125
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCse7TjioWD9Jw_17unbuffered_client.exit.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCse7TjioWD9Jw_17unbuffered_client.exit.i: ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.b, %bb.b ], [ %.pre.i, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !125, !nonnull !7, !noundef !7 ; 2 uses
  %i.l = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr i8, ptr %i.k, i64 %i.i     ; 2 uses
  %i.n = icmp ugt i64 %i.e, 1
  br i1 %i.n, label %._crit_edge.thread.i, label %._crit_edge.i

._crit_edge.thread.i:                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCse7TjioWD9Jw_17unbuffered_client.exit.i
  %i.o = add i64 %i.e, -1                         ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.m, i8 %2, i64 %i.o, i1 false)
  %i.p = add i64 %i.o, %i.i                       ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.k, i64 %i.p
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCse7TjioWD9Jw_17unbuffered_client.exit.i, %._crit_edge.thread.i
  %storemerge.lcssa.i = phi i64 [ %i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCse7TjioWD9Jw_17unbuffered_client.exit.i ], [ %i.p, %._crit_edge.thread.i ]
  %.sroa.0.0.lcssa.i = phi ptr [ %i.m, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCse7TjioWD9Jw_17unbuffered_client.exit.i ], [ %scevgep.i, %._crit_edge.thread.i ]
  store i8 %2, ptr %.sroa.0.0.lcssa.i, align 1
  %i.q = add i64 %storemerge.lcssa.i, 1
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE8truncateCse7TjioWD9Jw_17unbuffered_client.exit

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE8truncateCse7TjioWD9Jw_17unbuffered_client.exit: ; preds = %._crit_edge.i, %bb.a
  %storemerge = phi i64 [ %1, %bb.a ], [ %i.q, %._crit_edge.i ]
  store i64 %storemerge, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls4conn10unbufferedINtB5_11ReadTrafficNtNtNtB9_6client11client_conn20ClientConnectionDataE11next_recordCse7TjioWD9Jw_17unbuffered_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !align !11, !noundef !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  call void @_RNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2_14ChunkVecBuffer3pop(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.d)
  %i.e = load i64, ptr %1, align 8, !range !6, !alias.scope !128, !noundef !7
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECse7TjioWD9Jw_17unbuffered_client.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECse7TjioWD9Jw_17unbuffered_client.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  resume { ptr, i32 } %i.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECse7TjioWD9Jw_17unbuffered_client.exit: ; preds = %bb.a, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = load i64, ptr %1, align 8, !range !6, !noundef !7
  %.not = icmp eq i64 %i.h, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECse7TjioWD9Jw_17unbuffered_client.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECse7TjioWD9Jw_17unbuffered_client.exit, %bb.d
  %.sink = phi i8 [ -1, %bb.d ], [ -2, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECse7TjioWD9Jw_17unbuffered_client.exit ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs8_NtNtCs7ZUl82OSlxp_6rustls4conn10unbufferedINtB5_12WriteTrafficNtNtNtB9_6client11client_conn20ClientConnectionDataE7encryptCse7TjioWD9Jw_17unbuffered_client(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull %4, i64 noundef range(i64 0, -9223372036854775808) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 10 uses
  %i.s = alloca [32 x i8], align 8                ; 12 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 7 uses
  %i.ad = alloca [56 x i8], align 8               ; 13 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.0.i.sroa.9.i.i.i.i.i.i = alloca [68 x i8], align 4 ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.1028.i.i.i.i.i.i = alloca [68 x i8], align 4 ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.5.i.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [64 x i8], align 8               ; 39 uses
  %i.ak = alloca [64 x i8], align 8               ; 35 uses
  %i.al = alloca [32 x i8], align 8               ; 6 uses
  %i.am = load ptr, ptr %1, align 8, !nonnull !7, !align !11, !noundef !7 ; 66 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 831 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !range !12, !alias.scope !327, !noundef !7
  %i.ap = trunc nuw i8 %i.ao to i1
  store i8 0, ptr %i.an, align 1, !alias.scope !327
  br i1 %i.ap, label %bb.b, label %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE26maybe_refresh_traffic_keysCse7TjioWD9Jw_17unbuffered_client.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !327
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 896
  %i.ar = load i8, ptr %i.aq, align 8, !range !329, !alias.scope !330, !noundef !7 ; 3 uses
  %.not.i.i = icmp eq i8 %i.ar, -1
  br i1 %.not.i.i, label %bb.eh, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !331
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  switch i8 %i.ar, label %default.unreachable [
    i8 0, label %bb.d
    i8 1, label %bb.g
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
    i8 5, label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
    i8 6, label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
    i8 7, label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
    i8 8, label %bb.l
    i8 9, label %bb.aw
    i8 10, label %bb.ax
    i8 11, label %bb.ay
    i8 12, label %bb.dl
    i8 13, label %bb.ec
    i8 14, label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
    i8 15, label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
    i8 16, label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
    i8 17, label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
    i8 18, label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
    i8 19, label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
    i8 20, label %bb.ed
    i8 21, label %bb.ee
  ]

default.unreachable:                              ; preds = %bb.dl, %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 912
  %.val.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !334, !nonnull !7, !noundef !7
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 920
  %.val1.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !334, !noundef !7 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !335
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, i64 noundef range(i64 0, 4611686018427387904) %.val1.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 2), !noalias !336
  %i.au = load i64, ptr %i.ai, align 8, !range !13, !noalias !335, !noundef !7
  %i.av = trunc nuw i64 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !range !14, !noalias !335, !noundef !7 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  br i1 %i.av, label %bb.e, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.az = load i64, ptr %i.ay, align 8, !noalias !335
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ax, i64 %i.az) #21, !noalias !336
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i: ; preds = %bb.d
  %i.ba = load ptr, ptr %i.ay, align 8, !noalias !335, !nonnull !7, !noundef !7 ; 2 uses
  %i.bb = icmp samesign ule i64 %.val1.i.i.i, %i.ax
  tail call void @llvm.assume(i1 %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !335
  %.not.i.i.i.i.i = icmp eq i64 %.val1.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i
  %i.bc = shl nuw nsw i64 %.val1.i.i.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr nonnull readonly align 1 %.val.i.i.i, i64 %i.bc, i1 false), !noalias !337
  br label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i: ; preds = %bb.f, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 897
  %i.be = load i8, ptr %i.bd, align 1, !range !15, !alias.scope !334, !noundef !7
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 898
  %i.bg = load i8, ptr %i.bf, align 2, !alias.scope !334
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.ax, ptr %i.bh, align 8, !alias.scope !332, !noalias !331
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.ba, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !332, !noalias !331
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i64 %.val1.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !332, !noalias !331
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store i8 %i.be, ptr %i.bi, align 1, !alias.scope !332, !noalias !331
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store i8 %i.bg, ptr %i.bj, align 2, !alias.scope !332, !noalias !331
  br label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i

bb.g:                                             ; preds = %bb.c
end_hunk_0
