Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/hickory_resolver-bce106928ed3f83f.hickory_resolver.72e945fa543ae282-cgu.05?download=true
inline.NumInlined: 579
inline.NumDeleted: 263
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigECs9RFwvXNxPyg_16hickory_resolver:bb.a
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_EECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bk) #21
          to label %.body39 unwind label %bb.ai

bb.aa:                                            ; preds = %bb.y
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body36

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_EECs9RFwvXNxPyg_16hickory_resolver.exit: ; preds = %bb.y
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_EECs9RFwvXNxPyg_16hickory_resolver.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %.body39 unwind label %bb.ad

bb.ac:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_EECs9RFwvXNxPyg_16hickory_resolver.exit
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_EECs9RFwvXNxPyg_16hickory_resolver.exit unwind label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22
  unreachable

.body39:                                          ; preds = %bb.af, %bb.ab, %.body36
  %.pn14 = phi { ptr, i32 } [ %.pn12, %.body36 ], [ %i.bt, %bb.af ], [ %i.bn, %bb.ab ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !322, !nonnull !5, !noundef !5
  %i.br = atomicrmw add ptr %i.bq, i64 -1 release, align 8, !noalias !322
  %i.bs = icmp eq i64 %i.br, 1
  br i1 %i.bs, label %bb.ae, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheEECs9RFwvXNxPyg_16hickory_resolver.exit

bb.ae:                                            ; preds = %.body39
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bp) #24
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheEECs9RFwvXNxPyg_16hickory_resolver.exit unwind label %bb.ai

bb.af:                                            ; preds = %bb.ac
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.body39

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_EECs9RFwvXNxPyg_16hickory_resolver.exit: ; preds = %bb.ac
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !325, !nonnull !5, !noundef !5
  %i.bw = atomicrmw add ptr %i.bv, i64 -1 release, align 8, !noalias !325
  %i.bx = icmp eq i64 %i.bw, 1
  br i1 %i.bx, label %bb.ag, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheEECs9RFwvXNxPyg_16hickory_resolver.exit43

bb.ag:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_EECs9RFwvXNxPyg_16hickory_resolver.exit
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bu) #24
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheEECs9RFwvXNxPyg_16hickory_resolver.exit43 unwind label %bb.ah

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheEECs9RFwvXNxPyg_16hickory_resolver.exit: ; preds = %.body39, %bb.ae, %bb.ah
  %.pn16 = phi { ptr, i32 } [ %i.bz, %bb.ah ], [ %.pn14, %bb.ae ], [ %.pn14, %.body39 ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(128) %i.by) #21
          to label %bb.aj unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheEECs9RFwvXNxPyg_16hickory_resolver.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheEECs9RFwvXNxPyg_16hickory_resolver.exit43: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_EECs9RFwvXNxPyg_16hickory_resolver.exit, %bb.ag
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(128) %i.ca)
  ret void

bb.ai:                                            ; preds = %bb.ae, %bb.t, %bb.q, %bb.n, %bb.k, %bb.h, %bb.f, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheEECs9RFwvXNxPyg_16hickory_resolver.exit, %.body36, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EECs9RFwvXNxPyg_16hickory_resolver.exit
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.aj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheEECs9RFwvXNxPyg_16hickory_resolver.exit
  resume { ptr, i32 } %.pn16
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata3soa3SOAECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(80) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(80) %i.b) #21
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(80) %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i16, ptr %0, align 8, !range !7, !alias.scope !330, !noundef !5
  %i.b = icmp eq i16 %i.a, 0
  br i1 %i.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs3Zo60xg5UZv_7tinyvec7tinyvec7TinyVecAhj20_EECs9RFwvXNxPyg_16hickory_resolver.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs9RFwvXNxPyg_16hickory_resolver.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs9RFwvXNxPyg_16hickory_resolver.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs3Zo60xg5UZv_7tinyvec7tinyvec7TinyVecAhj20_EECs9RFwvXNxPyg_16hickory_resolver.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs9RFwvXNxPyg_16hickory_resolver.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs3Zo60xg5UZv_7tinyvec7tinyvec7TinyVecAhj18_EECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #21
          to label %common.resume unwind label %bb.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs3Zo60xg5UZv_7tinyvec7tinyvec7TinyVecAhj20_EECs9RFwvXNxPyg_16hickory_resolver.exit: ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs9RFwvXNxPyg_16hickory_resolver.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i16, ptr %i.h, align 8, !range !7, !alias.scope !331, !noundef !5
  %i.j = icmp eq i16 %i.i, 0
  br i1 %i.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs3Zo60xg5UZv_7tinyvec7tinyvec7TinyVecAhj18_EECs9RFwvXNxPyg_16hickory_resolver.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs3Zo60xg5UZv_7tinyvec7tinyvec7TinyVecAhj20_EECs9RFwvXNxPyg_16hickory_resolver.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs9RFwvXNxPyg_16hickory_resolver.exit.i2 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.g ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs9RFwvXNxPyg_16hickory_resolver.exit.i2: ; preds = %bb.f
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs3Zo60xg5UZv_7tinyvec7tinyvec7TinyVecAhj18_EECs9RFwvXNxPyg_16hickory_resolver.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs3Zo60xg5UZv_7tinyvec7tinyvec7TinyVecAhj18_EECs9RFwvXNxPyg_16hickory_resolver.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs3Zo60xg5UZv_7tinyvec7tinyvec7TinyVecAhj20_EECs9RFwvXNxPyg_16hickory_resolver.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs9RFwvXNxPyg_16hickory_resolver.exit.i2
  ret void

bb.i:                                             ; preds = %.body
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtCscg2Fb9rc1fS_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
.preheader.preheader:
  %.sroa.0.0.copyload.i = load <2 x i64>, ptr %0, align 4, !noalias !344
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i18 = load <2 x i64>, ptr %i.a, align 4, !noalias !345
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i19 = load <2 x i64>, ptr %i.b, align 4, !noalias !346
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i20 = load <2 x i64>, ptr %i.c, align 4, !noalias !347
  %i.d = shufflevector <2 x i64> %.sroa.0.0.copyload.i20, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.e = add <4 x i64> %i.d, <i64 0, i64 0, i64 1, i64 0> ; 2 uses
  %i.f = add <4 x i64> %i.d, <i64 2, i64 0, i64 3, i64 0> ; 2 uses
  %2 = shufflevector <2 x i64> %.sroa.0.0.copyload.i19, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %.cast = bitcast <4 x i64> %2 to <8 x i32>      ; 4 uses
  %3 = shufflevector <2 x i64> %.sroa.0.0.copyload.i18, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %4 = bitcast <4 x i64> %3 to <8 x i32>          ; 4 uses
  %5 = shufflevector <2 x i64> %.sroa.0.0.copyload.i, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %6 = bitcast <4 x i64> %5 to <8 x i32>          ; 4 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.preheader.preheader
  %.sroa.46.0.i = phi <4 x i64> [ %i.f, %.preheader.preheader ], [ %18, %bb.a ]
  %.sroa.19.0.i = phi <4 x i64> [ %i.e, %.preheader.preheader ], [ %17, %bb.a ]
  %.sroa.023.062.i = phi i64 [ 0, %.preheader.preheader ], [ %i.m, %bb.a ]
  %i.g = phi <8 x i32> [ %6, %.preheader.preheader ], [ %i.ce, %bb.a ]
  %i.h = phi <8 x i32> [ %4, %.preheader.preheader ], [ %i.by, %bb.a ] ; 2 uses
  %i.i = phi <8 x i32> [ %6, %.preheader.preheader ], [ %i.cg, %bb.a ]
  %i.j = phi <8 x i32> [ %4, %.preheader.preheader ], [ %i.cc, %bb.a ] ; 2 uses
  %i.k = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cd, %bb.a ]
  %i.l = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cf, %bb.a ]
  %i.m = add nuw nsw i64 %.sroa.023.062.i, 1      ; 2 uses
  %i.n = add <8 x i32> %i.h, %i.g                 ; 2 uses
  %i.o = bitcast <8 x i32> %i.n to <4 x i64>
  %i.p = xor <4 x i64> %.sroa.19.0.i, %i.o
  %i.q = bitcast <4 x i64> %i.p to <32 x i8>
  %i.r = shufflevector <32 x i8> %i.q, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.s = add <8 x i32> %i.j, %i.i                 ; 2 uses
  %i.t = bitcast <8 x i32> %i.s to <4 x i64>
  %i.u = xor <4 x i64> %.sroa.46.0.i, %i.t
  %i.v = bitcast <4 x i64> %i.u to <32 x i8>
  %i.w = shufflevector <32 x i8> %i.v, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.x = bitcast <32 x i8> %i.r to <8 x i32>
  %i.y = add <8 x i32> %i.k, %i.x                 ; 2 uses
  %i.z = xor <8 x i32> %i.y, %i.h                 ; 2 uses
  %i.aa = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.z, <8 x i32> %i.z, <8 x i32> splat (i32 12)) ; 2 uses
  %i.ab = bitcast <32 x i8> %i.w to <8 x i32>
  %i.ac = add <8 x i32> %i.l, %i.ab               ; 2 uses
  %i.ad = xor <8 x i32> %i.ac, %i.j               ; 2 uses
  %i.ae = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ad, <8 x i32> %i.ad, <8 x i32> splat (i32 12)) ; 2 uses
  %i.af = add <8 x i32> %i.aa, %i.n               ; 2 uses
  %i.ag = bitcast <8 x i32> %i.af to <32 x i8>
  %i.ah = xor <32 x i8> %i.r, %i.ag
  %i.ai = shufflevector <32 x i8> %i.ah, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  %7 = bitcast <32 x i8> %i.ai to <4 x i64>
  %i.aj = add <8 x i32> %i.ae, %i.s               ; 2 uses
  %i.ak = bitcast <8 x i32> %i.aj to <32 x i8>
  %i.al = xor <32 x i8> %i.w, %i.ak
  %i.am = shufflevector <32 x i8> %i.al, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  %8 = bitcast <32 x i8> %i.am to <4 x i64>
  %i.an = bitcast <32 x i8> %i.ai to <8 x i32>
  %i.ao = add <8 x i32> %i.y, %i.an               ; 2 uses
  %i.ap = xor <8 x i32> %i.ao, %i.aa              ; 2 uses
  %i.aq = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ap, <8 x i32> %i.ap, <8 x i32> splat (i32 7)) ; 2 uses
  %i.ar = bitcast <32 x i8> %i.am to <8 x i32>
  %i.as = add <8 x i32> %i.ac, %i.ar              ; 2 uses
  %i.at = xor <8 x i32> %i.as, %i.ae              ; 2 uses
  %i.au = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.at, <8 x i32> %i.at, <8 x i32> splat (i32 7)) ; 2 uses
  %i.av = shufflevector <8 x i32> %i.ao, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %9 = shufflevector <4 x i64> %7, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.aw = shufflevector <8 x i32> %i.af, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.ax = shufflevector <8 x i32> %i.as, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %10 = shufflevector <4 x i64> %8, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ay = shufflevector <8 x i32> %i.aj, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.az = add <8 x i32> %i.aq, %i.aw              ; 2 uses
  %11 = bitcast <8 x i32> %i.az to <4 x i64>
  %12 = xor <4 x i64> %9, %11
  %i.ba = bitcast <4 x i64> %12 to <32 x i8>
  %i.bb = shufflevector <32 x i8> %i.ba, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.bc = add <8 x i32> %i.au, %i.ay              ; 2 uses
  %13 = bitcast <8 x i32> %i.bc to <4 x i64>
  %14 = xor <4 x i64> %10, %13
  %i.bd = bitcast <4 x i64> %14 to <32 x i8>
  %i.be = shufflevector <32 x i8> %i.bd, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.bf = bitcast <32 x i8> %i.bb to <8 x i32>
  %i.bg = add <8 x i32> %i.av, %i.bf              ; 2 uses
  %i.bh = xor <8 x i32> %i.bg, %i.aq              ; 2 uses
  %i.bi = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bh, <8 x i32> %i.bh, <8 x i32> splat (i32 12)) ; 2 uses
  %i.bj = bitcast <32 x i8> %i.be to <8 x i32>
  %i.bk = add <8 x i32> %i.ax, %i.bj              ; 2 uses
  %i.bl = xor <8 x i32> %i.bk, %i.au              ; 2 uses
  %i.bm = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bl, <8 x i32> %i.bl, <8 x i32> splat (i32 12)) ; 2 uses
  %i.bn = add <8 x i32> %i.bi, %i.az              ; 2 uses
  %i.bo = bitcast <8 x i32> %i.bn to <32 x i8>
  %i.bp = xor <32 x i8> %i.bb, %i.bo
  %i.bq = shufflevector <32 x i8> %i.bp, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  %15 = bitcast <32 x i8> %i.bq to <4 x i64>
  %i.br = add <8 x i32> %i.bm, %i.bc              ; 2 uses
  %i.bs = bitcast <8 x i32> %i.br to <32 x i8>
  %i.bt = xor <32 x i8> %i.be, %i.bs
  %i.bu = shufflevector <32 x i8> %i.bt, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  %16 = bitcast <32 x i8> %i.bu to <4 x i64>
  %i.bv = bitcast <32 x i8> %i.bq to <8 x i32>
  %i.bw = add <8 x i32> %i.bg, %i.bv              ; 2 uses
  %i.bx = xor <8 x i32> %i.bw, %i.bi              ; 2 uses
  %i.by = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bx, <8 x i32> %i.bx, <8 x i32> splat (i32 7)) ; 2 uses
  %i.bz = bitcast <32 x i8> %i.bu to <8 x i32>
  %i.ca = add <8 x i32> %i.bk, %i.bz              ; 2 uses
  %i.cb = xor <8 x i32> %i.ca, %i.bm              ; 2 uses
  %i.cc = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.cb, <8 x i32> %i.cb, <8 x i32> splat (i32 7)) ; 2 uses
  %i.cd = shufflevector <8 x i32> %i.bw, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %17 = shufflevector <4 x i64> %15, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.ce = shufflevector <8 x i32> %i.bn, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.cf = shufflevector <8 x i32> %i.ca, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %18 = shufflevector <4 x i64> %16, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.cg = shufflevector <8 x i32> %i.br, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.m, 6
  br i1 %exitcond.not.i, label %_RNvMNtNtCscg2Fb9rc1fS_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCs9RFwvXNxPyg_16hickory_resolver.exit, label %bb.a

_RNvMNtNtCscg2Fb9rc1fS_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCs9RFwvXNxPyg_16hickory_resolver.exit: ; preds = %bb.a
  %19 = bitcast <4 x i64> %18 to <8 x i32>
  %i.ch = bitcast <4 x i64> %i.f to <8 x i32>
  %i.ci = add <8 x i32> %19, %i.ch                ; 2 uses
  %i.cj = add <8 x i32> %i.cf, %.cast             ; 2 uses
  %i.ck = add <8 x i32> %i.cc, %4                 ; 2 uses
  %i.cl = add <8 x i32> %i.cg, %6                 ; 2 uses
  %20 = bitcast <4 x i64> %17 to <8 x i32>
  %i.cm = bitcast <4 x i64> %i.e to <8 x i32>
  %i.cn = add <8 x i32> %20, %i.cm                ; 2 uses
  %i.co = add <8 x i32> %i.cd, %.cast             ; 2 uses
  %i.cp = add <8 x i32> %i.by, %4                 ; 2 uses
  %i.cq = add <8 x i32> %i.ce, %6                 ; 2 uses
  %.sroa.2.32.vec.extract = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.2.48.vec.extract = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.5.64.vec.extract = shufflevector <8 x i32> %i.cp, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.5.80.vec.extract = shufflevector <8 x i32> %i.cp, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.8.96.vec.extract = shufflevector <8 x i32> %i.co, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.8.112.vec.extract = shufflevector <8 x i32> %i.co, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.11.128.vec.extract = shufflevector <8 x i32> %i.cn, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.11.144.vec.extract = shufflevector <8 x i32> %i.cn, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.2.32.vec.extract, ptr %1, align 4, !noalias !348
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %.sroa.2.48.vec.extract, ptr %i.cr, align 4, !noalias !349
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %.sroa.5.64.vec.extract, ptr %i.cs, align 4, !noalias !348
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %.sroa.5.80.vec.extract, ptr %i.ct, align 4, !noalias !349
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %.sroa.8.96.vec.extract, ptr %i.cu, align 4, !noalias !348
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %.sroa.8.112.vec.extract, ptr %i.cv, align 4, !noalias !349
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %.sroa.11.128.vec.extract, ptr %i.cw, align 4, !noalias !348
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %.sroa.11.144.vec.extract, ptr %i.cx, align 4, !noalias !349
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.14.160.vec.extract = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.14.176.vec.extract = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.17.192.vec.extract = shufflevector <8 x i32> %i.ck, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.17.208.vec.extract = shufflevector <8 x i32> %i.ck, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.20.224.vec.extract = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.20.240.vec.extract = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.23.256.vec.extract = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.23.272.vec.extract = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.14.160.vec.extract, ptr %i.cy, align 4, !noalias !348
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %.sroa.14.176.vec.extract, ptr %i.cz, align 4, !noalias !349
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %.sroa.17.192.vec.extract, ptr %i.da, align 4, !noalias !348
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %.sroa.17.208.vec.extract, ptr %i.db, align 4, !noalias !349
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %.sroa.20.224.vec.extract, ptr %i.dc, align 4, !noalias !348
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %.sroa.20.240.vec.extract, ptr %i.dd, align 4, !noalias !349
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %.sroa.23.256.vec.extract, ptr %i.de, align 4, !noalias !348
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %.sroa.23.272.vec.extract, ptr %i.df, align 4, !noalias !349
  %i.dg = add <4 x i64> %i.d, <i64 4, i64 poison, i64 poison, i64 poison>
  %21 = shufflevector <4 x i64> %i.dg, <4 x i64> poison, <1 x i32> zeroinitializer
  store <1 x i64> %21, ptr %i.c, align 4
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef i32 @_RINvNtNtNtCsj6eKBz9Db1c_4core9core_arch3x865sse4117__mm_extract_epi32Kl1_ECs9RFwvXNxPyg_16hickory_resolver(<2 x i64> %.0.val) unnamed_addr #2 {
bb.a:
  %i.a = bitcast <2 x i64> %.0.val to <4 x i32>
  %i.b = extractelement <4 x i32> %i.a, i64 1
  ret i32 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCs37Y8JGf013z_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entryB1L_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dead_on_return dereferenceable(17) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = tail call noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRNtNtNtBU_3net7ip_addr6IpAddrECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(17) %2) ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.c = lshr i64 %i.b, 57
  %i.d = trunc nuw nsw i64 %i.c to i8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !367, !noundef !5 ; 4 uses
  %i.g = load ptr, ptr %1, align 8, !alias.scope !367, !nonnull !5, !noundef !5 ; 4 uses
  %i.h = insertelement <16 x i8> poison, i8 %i.d, i64 0
  %i.i = shufflevector <16 x i8> %i.h, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.j = load i8, ptr %2, align 1, !range !12, !alias.scope !365
  %.fr8 = freeze i8 %i.j                          ; 3 uses
  %i.k = trunc i8 %.fr8 to i1
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.m = load i32, ptr %i.l, align 1, !alias.scope !365
  %i.n = load i128, ptr %i.l, align 1, !alias.scope !365
  br i1 %i.k, label %.split6.us, label %.split6

.split6.us:                                       ; preds = %bb.a, %bb.b
  %.sroa.9.0.i.i.us = phi i64 [ %i.ai, %bb.b ], [ 0, %bb.a ]
  %.pn.i.us = phi i64 [ %i.aj, %bb.b ], [ %i.b, %bb.a ]
  %.sroa.01.0.i.i.us = and i64 %.pn.i.us, %i.f    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.01.0.i.i.us
  %.sroa.0.0.copyload.i25.i.us = load <16 x i8>, ptr %i.o, align 1, !noalias !368 ; 2 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.us, %i.i
  %i.q = bitcast <16 x i1> %i.p to i16            ; 2 uses
  %.not.i.not31.i.us = icmp eq i16 %i.q, 0
  br i1 %.not.i.not31.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.split6.us, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.thread.i.us.us
  %.sroa.06.0.i32.i.us.us = phi i16 [ %i.ae, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.thread.i.us.us ], [ %i.q, %.split6.us ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i32.i.us.us, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = add i64 %.sroa.01.0.i.i.us, %i.s
  %i.u = and i64 %i.t, %i.f
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [48 x i8], ptr %i.g, i64 %i.v ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -48
  %i.y = load i8, ptr %i.x, align 1, !range !12, !alias.scope !369, !noalias !370, !noundef !5
  %i.z = icmp eq i8 %i.y, %.fr8
  br i1 %i.z, label %.split.i.us.us, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.thread.i.us.us, !prof !371

.split.i.us.us:                                   ; preds = %.lr.ph.i.us.us
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 -47
  %i.ab = load i128, ptr %i.aa, align 1, !alias.scope !369, !noalias !370, !noundef !5
  %i.ac = icmp eq i128 %i.ab, %i.n
  br i1 %i.ac, label %.split.us, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.thread.i.us.us, !prof !372

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.thread.i.us.us: ; preds = %.split.i.us.us, %.lr.ph.i.us.us
  %i.ad = add i16 %.sroa.06.0.i32.i.us.us, -1
  %i.ae = and i16 %i.ad, %.sroa.06.0.i32.i.us.us  ; 2 uses
  %.not.i.not.i.us.us = icmp eq i16 %i.ae, 0
  br i1 %.not.i.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

._crit_edge.i.us:                                 ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.thread.i.us.us, %.split6.us
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.us, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %bb.b, label %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0EB1C_.exit, !prof !14

bb.b:                                             ; preds = %._crit_edge.i.us
  %i.ai = add i64 %.sroa.9.0.i.i.us, 16           ; 2 uses
  %i.aj = add i64 %.sroa.01.0.i.i.us, %i.ai
  br label %.split6.us

.split6:                                          ; preds = %bb.a, %bb.c
  %.sroa.9.0.i.i = phi i64 [ %i.be, %bb.c ], [ 0, %bb.a ]
  %.pn.i = phi i64 [ %i.bf, %bb.c ], [ %i.b, %bb.a ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.f          ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i25.i = load <16 x i8>, ptr %i.ak, align 1, !noalias !368 ; 2 uses
  %i.al = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i, %i.i
  %i.am = bitcast <16 x i1> %i.al to i16          ; 2 uses
  %.not.i.not31.i = icmp eq i16 %i.am, 0
  br i1 %.not.i.not31.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split6, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.thread.i
  %.sroa.06.0.i32.i = phi i16 [ %i.bd, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.thread.i ], [ %i.am, %.split6 ] ; 3 uses
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i32.i, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = add i64 %.sroa.01.0.i.i, %i.ao
  %i.aq = and i64 %i.ap, %i.f
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = getelementptr inbounds [48 x i8], ptr %i.g, i64 %i.ar ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -48
  %i.au = load i8, ptr %i.at, align 1, !range !12, !alias.scope !369, !noalias !370, !noundef !5
  %i.av = icmp eq i8 %i.au, %.fr8
  br i1 %i.av, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.i, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.thread.i, !prof !371

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.i: ; preds = %.lr.ph.i
  %i.aw = getelementptr inbounds i8, ptr %i.as, i64 -47
  %i.ax = load i32, ptr %i.aw, align 1, !alias.scope !369, !noalias !370, !noundef !5
  %i.ay = icmp eq i32 %i.ax, %i.m
  br i1 %i.ay, label %.split.us, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.thread.i, !prof !372

._crit_edge.i:                                    ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.thread.i, %.split6
  %i.az = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i, splat (i8 -1)
  %i.ba = bitcast <16 x i1> %i.az to i16
  %i.bb = icmp eq i16 %i.ba, 0
  br i1 %i.bb, label %bb.c, label %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0EB1C_.exit, !prof !14

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.thread.i: ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.i, %.lr.ph.i
  %i.bc = add i16 %.sroa.06.0.i32.i, -1
  %i.bd = and i16 %i.bc, %.sroa.06.0.i32.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.bd, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.c:                                             ; preds = %._crit_edge.i
  %i.be = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.bf = add i64 %.sroa.01.0.i.i, %i.be
  br label %.split6

.split.us:                                        ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.i, %.split.i.us.us
  %.us-phi = phi ptr [ %i.w, %.split.i.us.us ], [ %i.as, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1A_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1E_.exit.i ]
  store ptr %.us-phi, ptr %0, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.bh, align 8
  br label %bb.d

_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0EB1C_.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us
  tail call void @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE7reserveNCINvNtB8_3map11make_hasherBQ_B1y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0EB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(17) %2, i64 17, i1 false)
  store ptr %1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0EB1C_.exit, %.split.us
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs37Y8JGf013z_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameNtNtCs9RFwvXNxPyg_16hickory_resolver5hosts10LookupTypeNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entryB1Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = invoke noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %2)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i, %bb.f, %bb.a
  %lpad.loopexit.split-lp16 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(80) %2) #21
          to label %bb.j unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.c = lshr i64 %i.b, 57
  %i.d = trunc nuw nsw i64 %i.c to i8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !382, !noundef !5 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !alias.scope !382, !nonnull !5, !noundef !5 ; 2 uses
  %i.h = insertelement <16 x i8> poison, i8 %i.d, i64 0
  %i.i = shufflevector <16 x i8> %i.h, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.b ], [ %i.z, %bb.e ]
  %.pn.i = phi i64 [ %i.b, %bb.b ], [ %i.aa, %bb.e ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.f          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i24.i = load <16 x i8>, ptr %i.j, align 1, !noalias !383 ; 2 uses
  %i.k = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, %i.i
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not.i.not30.i = icmp eq i16 %i.l, 0
  br i1 %.not.i.not30.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i = phi i16 [ %i.y, %bb.d ], [ %i.l, %bb.c ] ; 3 uses
  %i.m = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i, i1 true)
  %i.n = zext nneg i16 %i.m to i64
  %i.o = add i64 %.sroa.01.0.i.i, %i.n
  %i.p = and i64 %i.o, %i.f
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [416 x i8], ptr %i.g, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -416
  %i.t = invoke noundef zeroext i1 @_RNvXs9_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %2)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i
  br i1 %i.t, label %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameNtNtCs9RFwvXNxPyg_16hickory_resolver5hosts10LookupTypeEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1L_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0EB1P_.exit, label %bb.d, !prof !15
end_hunk_0
begin_hunk_1_@_RNvXs4_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolNtB5_20ActiveRequestCleanupNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop:bb.a
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.o, %bb.e, %.noexc, %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.k, %bb.l, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.y, %bb.l ], [ %i.y, %bb.k ], [ %i.y, %bb.j ]
  %i.v = cmpxchg ptr %i.d, i8 1, i8 0 release monotonic, align 1
  %i.w = extractvalue { i8, i1 } %i.v, 1
  br i1 %i.w, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs45r4e3XQE14_8lock_api5mutex10MutexGuardNtNtCsbCIQ8H6Y6l3_11parking_lot9raw_mutex8RawMutexINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyENtB3E_12SharedLookupEEEB3G_.exit, label %bb.g, !prof !15

bb.g:                                             ; preds = %.body
  invoke void @_RNvMs1_NtCsbCIQ8H6Y6l3_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs45r4e3XQE14_8lock_api5mutex10MutexGuardNtNtCsbCIQ8H6Y6l3_11parking_lot9raw_mutex8RawMutexINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyENtB3E_12SharedLookupEEEB3G_.exit unwind label %bb.r

bb.h:                                             ; preds = %bb.d, %bb.e
  %.pr = load i64, ptr %i.b, align 8, !alias.scope !648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !646
  %i.x = icmp eq i64 %.pr, 0
  br i1 %i.x, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool12SharedLookupEEB11_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXsb_NtNtNtCsgO2xhGITpH9_12futures_util6future6future6sharedINtB5_6SharedINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB1g_6future6future6Futurep6OutputINtNtB1g_6option6OptionINtNtB1g_6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEENtNtB1g_6marker4SendEL_EEENtNtNtB1g_3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %bb.m unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !649)
  %i.z = load ptr, ptr %i.q, align 8, !alias.scope !650, !noundef !5 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = atomicrmw add ptr %i.z, i64 -1 release, align 8, !noalias !651
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.l, label %.body

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6future6future6shared5InnerINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputINtNtB1N_6option6OptionINtNtB1N_6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEENtNtB1N_6marker4SendEL_EEEE9drop_slowCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q) #24
          to label %.body unwind label %bb.p

bb.m:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !652)
  %i.ad = load ptr, ptr %i.q, align 8, !alias.scope !653, !noundef !5 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool12SharedLookupEEB11_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = atomicrmw add ptr %i.ad, i64 -1 release, align 8, !noalias !654
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.o, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool12SharedLookupEEB11_.exit

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6future6future6shared5InnerINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputINtNtB1N_6option6OptionINtNtB1N_6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEENtNtB1N_6marker4SendEL_EEEE9drop_slowCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q) #24
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool12SharedLookupEEB11_.exit unwind label %bb.f

bb.p:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool12SharedLookupEEB11_.exit: ; preds = %bb.n, %bb.m, %bb.h, %.thread, %bb.o
  %i.ai = cmpxchg ptr %i.d, i8 1, i8 0 release monotonic, align 1
  %i.aj = extractvalue { i8, i1 } %i.ai, 1
  br i1 %i.aj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs45r4e3XQE14_8lock_api5mutex10MutexGuardNtNtCsbCIQ8H6Y6l3_11parking_lot9raw_mutex8RawMutexINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyENtB3E_12SharedLookupEEEB3G_.exit6, label %bb.q, !prof !15

bb.q:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool12SharedLookupEEB11_.exit
  call void @_RNvMs1_NtCsbCIQ8H6Y6l3_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs45r4e3XQE14_8lock_api5mutex10MutexGuardNtNtCsbCIQ8H6Y6l3_11parking_lot9raw_mutex8RawMutexINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyENtB3E_12SharedLookupEEEB3G_.exit6

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs45r4e3XQE14_8lock_api5mutex10MutexGuardNtNtCsbCIQ8H6Y6l3_11parking_lot9raw_mutex8RawMutexINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyENtB3E_12SharedLookupEEEB3G_.exit6: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool12SharedLookupEEB11_.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.r:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs45r4e3XQE14_8lock_api5mutex10MutexGuardNtNtCsbCIQ8H6Y6l3_11parking_lot9raw_mutex8RawMutexINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyENtB3E_12SharedLookupEEEB3G_.exit: ; preds = %.body, %bb.g
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolNtB5_12SharedLookupNtNtNtCsj6eKBz9Db1c_4core6future6future6Future4poll(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([176 x i8]) align 8 captures(none) dereferenceable(176) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.sroa.55.sroa.5 = alloca [7 x i8], align 1     ; 4 uses
  %.sroa.55.sroa.8 = alloca [48 x i8], align 8    ; 4 uses
  %.sroa.55.sroa.9 = alloca [96 x i8], align 8    ; 4 uses
  %i.a = alloca [176 x i8], align 8               ; 8 uses
  call void @_RNvXs9_NtNtNtCsgO2xhGITpH9_12futures_util6future6future6sharedINtB5_6SharedINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB1g_6future6future6Futurep6OutputINtNtB1g_6option6OptionINtNtB1g_6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEENtNtB1g_6marker4SendEL_EEEB2h_4pollCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.b = load i64, ptr %i.a, align 8, !range !6, !noundef !5 ; 3 uses
  %i.c = icmp eq i64 %i.b, -3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.55.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.55.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.55.sroa.9)
  %.not = icmp eq i64 %i.b, -2
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.55.sroa.5, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.55.sroa.8, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.55.sroa.9, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, i64 96, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.55.sroa.6.0 = phi ptr [ %.sroa.5.sroa.5.0.copyload, %bb.d ], [ @54, %bb.c ]
  %.sroa.55.sroa.0.0 = phi i8 [ %.sroa.5.sroa.0.0.copyload, %bb.d ], [ 4, %bb.c ]
  %.sroa.55.sroa.7.0 = phi i64 [ %.sroa.5.sroa.6.0.copyload, %bb.d ], [ 27, %bb.c ]
  %.sroa.04.0 = phi i64 [ %i.b, %bb.d ], [ -1, %bb.c ]
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.55.sroa.0.0, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.55.sroa.5, i64 7, i1 false)
  %.sroa.55.sroa.6.0..sroa.55.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.55.sroa.6.0, ptr %.sroa.55.sroa.6.0..sroa.55.0..sroa_idx.sroa_idx, align 8
  %.sroa.55.sroa.7.0..sroa.55.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.55.sroa.7.0, ptr %.sroa.55.sroa.7.0..sroa.55.0..sroa_idx.sroa_idx, align 8
  %.sroa.55.sroa.8.0..sroa.55.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.55.sroa.8.0..sroa.55.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.55.sroa.8, i64 48, i1 false)
  %.sroa.55.sroa.9.0..sroa.55.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.55.sroa.9.0..sroa.55.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.55.sroa.9, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55.sroa.9)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsG_NtCs37Y8JGf013z_9hashbrown3mapINtB5_4IterNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameNtNtCs9RFwvXNxPyg_16hickory_resolver5hosts10LookupTypeENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1J_(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameNtNtCs9RFwvXNxPyg_16hickory_resolver5hosts10LookupTypeEE9next_implKb0_EB1U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) ; 3 uses
  %i.e = load i64, ptr %i.a, align 8, !noundef !5
  %i.f = add i64 %i.e, -1
  store i64 %i.f, ptr %i.a, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -416
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -336
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0 = phi ptr [ %i.h, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0 = phi ptr [ %i.g, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXs_NtCscg2Fb9rc1fS_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsa9hcECrMlfW_9rand_core5block9Generator8generateCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #5 {
bb.a:
  %i.a = load atomic i8, ptr @_RNvNtCscg2Fb9rc1fS_8chacha2010avx2_cpuid7STORAGE monotonic, align 1
  %i.b = icmp eq i8 %i.a, 1
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %.sroa.012.0.copyload24.i = load <4 x i32>, ptr %0, align 4, !alias.scope !658 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.013.0.copyload25.i = load <4 x i32>, ptr %i.c, align 4, !alias.scope !658 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.014.0.copyload26.i = load <4 x i32>, ptr %i.d, align 4, !alias.scope !658 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.015.0.copyload.i = load <2 x i64>, ptr %i.e, align 4, !alias.scope !658 ; 6 uses
  %i.f = add <2 x i64> %.sroa.015.0.copyload.i, <i64 1, i64 0> ; 2 uses
  %i.g = add <2 x i64> %.sroa.015.0.copyload.i, <i64 2, i64 0> ; 2 uses
  %i.h = add <2 x i64> %.sroa.015.0.copyload.i, <i64 3, i64 0> ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.89.0.i.i = phi <2 x i64> [ %i.h, %bb.b ], [ %19, %bb.c ]
  %.sroa.64.0.i.i = phi <2 x i64> [ %i.g, %bb.b ], [ %18, %bb.c ]
  %.sroa.39.0.i.i = phi <2 x i64> [ %i.f, %bb.b ], [ %17, %bb.c ]
  %.sroa.16.0.i.i = phi <2 x i64> [ %.sroa.015.0.copyload.i, %bb.b ], [ %16, %bb.c ]
  %.sroa.042.0102.i.i = phi i64 [ 0, %bb.b ], [ %i.u, %bb.c ]
  %i.i = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.du, %bb.c ]
  %i.j = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.ci, %bb.c ] ; 2 uses
  %i.k = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dt, %bb.c ]
  %i.l = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.dw, %bb.c ]
  %i.m = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.cu, %bb.c ] ; 2 uses
  %i.n = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dv, %bb.c ]
  %i.o = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.dy, %bb.c ]
  %i.p = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.dg, %bb.c ] ; 2 uses
  %i.q = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dx, %bb.c ]
  %i.r = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.ea, %bb.c ]
  %i.s = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.ds, %bb.c ] ; 2 uses
  %i.t = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dz, %bb.c ]
  %i.u = add nuw nsw i64 %.sroa.042.0102.i.i, 1   ; 2 uses
  %i.v = add <4 x i32> %i.j, %i.i                 ; 2 uses
  %2 = bitcast <2 x i64> %.sroa.16.0.i.i to <4 x i32>
  %i.w = xor <4 x i32> %i.v, %2                   ; 2 uses
  %i.x = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.w, <4 x i32> %i.w, <4 x i32> splat (i32 16)) ; 2 uses
  %i.y = add <4 x i32> %i.x, %i.k                 ; 2 uses
  %i.z = xor <4 x i32> %i.y, %i.j                 ; 2 uses
  %i.aa = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.z, <4 x i32> %i.z, <4 x i32> splat (i32 12)) ; 2 uses
  %i.ab = add <4 x i32> %i.aa, %i.v               ; 2 uses
  %i.ac = xor <4 x i32> %i.ab, %i.x               ; 2 uses
  %i.ad = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ac, <4 x i32> %i.ac, <4 x i32> splat (i32 8)) ; 2 uses
  %i.ae = add <4 x i32> %i.ad, %i.y               ; 2 uses
  %i.af = xor <4 x i32> %i.ae, %i.aa              ; 2 uses
  %i.ag = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.af, <4 x i32> %i.af, <4 x i32> splat (i32 7)) ; 2 uses
  %i.ah = add <4 x i32> %i.m, %i.l                ; 2 uses
  %3 = bitcast <2 x i64> %.sroa.39.0.i.i to <4 x i32>
  %i.ai = xor <4 x i32> %i.ah, %3                 ; 2 uses
  %i.aj = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ai, <4 x i32> %i.ai, <4 x i32> splat (i32 16)) ; 2 uses
  %i.ak = add <4 x i32> %i.aj, %i.n               ; 2 uses
  %i.al = xor <4 x i32> %i.ak, %i.m               ; 2 uses
  %i.am = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.al, <4 x i32> %i.al, <4 x i32> splat (i32 12)) ; 2 uses
  %i.an = add <4 x i32> %i.am, %i.ah              ; 2 uses
  %i.ao = xor <4 x i32> %i.an, %i.aj              ; 2 uses
  %i.ap = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ao, <4 x i32> %i.ao, <4 x i32> splat (i32 8)) ; 2 uses
  %i.aq = add <4 x i32> %i.ap, %i.ak              ; 2 uses
  %i.ar = xor <4 x i32> %i.aq, %i.am              ; 2 uses
  %i.as = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ar, <4 x i32> %i.ar, <4 x i32> splat (i32 7)) ; 2 uses
  %i.at = add <4 x i32> %i.p, %i.o                ; 2 uses
  %4 = bitcast <2 x i64> %.sroa.64.0.i.i to <4 x i32>
  %i.au = xor <4 x i32> %i.at, %4                 ; 2 uses
  %i.av = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.au, <4 x i32> %i.au, <4 x i32> splat (i32 16)) ; 2 uses
  %i.aw = add <4 x i32> %i.av, %i.q               ; 2 uses
  %i.ax = xor <4 x i32> %i.aw, %i.p               ; 2 uses
  %i.ay = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ax, <4 x i32> %i.ax, <4 x i32> splat (i32 12)) ; 2 uses
  %i.az = add <4 x i32> %i.ay, %i.at              ; 2 uses
  %i.ba = xor <4 x i32> %i.az, %i.av              ; 2 uses
  %i.bb = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ba, <4 x i32> %i.ba, <4 x i32> splat (i32 8)) ; 2 uses
  %i.bc = add <4 x i32> %i.bb, %i.aw              ; 2 uses
  %i.bd = xor <4 x i32> %i.bc, %i.ay              ; 2 uses
  %i.be = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bd, <4 x i32> %i.bd, <4 x i32> splat (i32 7)) ; 2 uses
  %i.bf = add <4 x i32> %i.s, %i.r                ; 2 uses
  %5 = bitcast <2 x i64> %.sroa.89.0.i.i to <4 x i32>
  %i.bg = xor <4 x i32> %i.bf, %5                 ; 2 uses
  %i.bh = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bg, <4 x i32> %i.bg, <4 x i32> splat (i32 16)) ; 2 uses
  %i.bi = add <4 x i32> %i.bh, %i.t               ; 2 uses
  %i.bj = xor <4 x i32> %i.bi, %i.s               ; 2 uses
  %i.bk = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bj, <4 x i32> %i.bj, <4 x i32> splat (i32 12)) ; 2 uses
  %i.bl = add <4 x i32> %i.bk, %i.bf              ; 2 uses
  %i.bm = xor <4 x i32> %i.bl, %i.bh              ; 2 uses
  %i.bn = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bm, <4 x i32> %i.bm, <4 x i32> splat (i32 8)) ; 2 uses
  %i.bo = add <4 x i32> %i.bn, %i.bi              ; 2 uses
  %i.bp = xor <4 x i32> %i.bo, %i.bk              ; 2 uses
  %i.bq = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bp, <4 x i32> %i.bp, <4 x i32> splat (i32 7)) ; 2 uses
  %i.br = shufflevector <4 x i32> %i.ae, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bs = shufflevector <4 x i32> %i.ab, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.bt = shufflevector <4 x i32> %i.aq, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bu = shufflevector <4 x i32> %i.an, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.bv = shufflevector <4 x i32> %i.bc, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bw = shufflevector <4 x i32> %i.az, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.bx = shufflevector <4 x i32> %i.bo, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %6 = shufflevector <4 x i32> %i.bl, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %7 = add <4 x i32> %i.ag, %i.bs                 ; 2 uses
  %8 = shufflevector <4 x i32> %i.ad, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.by = xor <4 x i32> %7, %8                    ; 2 uses
  %i.bz = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.by, <4 x i32> %i.by, <4 x i32> splat (i32 16)) ; 2 uses
  %i.ca = add <4 x i32> %i.bz, %i.br              ; 2 uses
  %i.cb = xor <4 x i32> %i.ca, %i.ag              ; 2 uses
  %i.cc = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cb, <4 x i32> %i.cb, <4 x i32> splat (i32 12)) ; 2 uses
  %i.cd = add <4 x i32> %i.cc, %7                 ; 2 uses
  %i.ce = xor <4 x i32> %i.cd, %i.bz              ; 2 uses
  %i.cf = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ce, <4 x i32> %i.ce, <4 x i32> splat (i32 8)) ; 2 uses
  %9 = bitcast <4 x i32> %i.cf to <2 x i64>
  %i.cg = add <4 x i32> %i.cf, %i.ca              ; 2 uses
  %i.ch = xor <4 x i32> %i.cg, %i.cc              ; 2 uses
  %i.ci = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ch, <4 x i32> %i.ch, <4 x i32> splat (i32 7)) ; 2 uses
  %i.cj = add <4 x i32> %i.as, %i.bu              ; 2 uses
  %10 = shufflevector <4 x i32> %i.ap, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ck = xor <4 x i32> %i.cj, %10                ; 2 uses
  %i.cl = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ck, <4 x i32> %i.ck, <4 x i32> splat (i32 16)) ; 2 uses
  %i.cm = add <4 x i32> %i.cl, %i.bt              ; 2 uses
  %i.cn = xor <4 x i32> %i.cm, %i.as              ; 2 uses
  %i.co = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cn, <4 x i32> %i.cn, <4 x i32> splat (i32 12)) ; 2 uses
  %i.cp = add <4 x i32> %i.co, %i.cj              ; 2 uses
  %i.cq = xor <4 x i32> %i.cp, %i.cl              ; 2 uses
  %i.cr = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cq, <4 x i32> %i.cq, <4 x i32> splat (i32 8)) ; 2 uses
  %11 = bitcast <4 x i32> %i.cr to <2 x i64>
  %i.cs = add <4 x i32> %i.cr, %i.cm              ; 2 uses
  %i.ct = xor <4 x i32> %i.cs, %i.co              ; 2 uses
  %i.cu = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ct, <4 x i32> %i.ct, <4 x i32> splat (i32 7)) ; 2 uses
  %i.cv = add <4 x i32> %i.be, %i.bw              ; 2 uses
  %12 = shufflevector <4 x i32> %i.bb, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cw = xor <4 x i32> %i.cv, %12                ; 2 uses
  %i.cx = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cw, <4 x i32> %i.cw, <4 x i32> splat (i32 16)) ; 2 uses
  %i.cy = add <4 x i32> %i.cx, %i.bv              ; 2 uses
  %i.cz = xor <4 x i32> %i.cy, %i.be              ; 2 uses
  %i.da = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cz, <4 x i32> %i.cz, <4 x i32> splat (i32 12)) ; 2 uses
  %i.db = add <4 x i32> %i.da, %i.cv              ; 2 uses
  %i.dc = xor <4 x i32> %i.db, %i.cx              ; 2 uses
  %i.dd = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dc, <4 x i32> %i.dc, <4 x i32> splat (i32 8)) ; 2 uses
  %13 = bitcast <4 x i32> %i.dd to <2 x i64>
  %i.de = add <4 x i32> %i.dd, %i.cy              ; 2 uses
  %i.df = xor <4 x i32> %i.de, %i.da              ; 2 uses
  %i.dg = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.df, <4 x i32> %i.df, <4 x i32> splat (i32 7)) ; 2 uses
  %i.dh = add <4 x i32> %i.bq, %6                 ; 2 uses
  %14 = shufflevector <4 x i32> %i.bn, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.di = xor <4 x i32> %i.dh, %14                ; 2 uses
  %i.dj = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.di, <4 x i32> %i.di, <4 x i32> splat (i32 16)) ; 2 uses
  %i.dk = add <4 x i32> %i.dj, %i.bx              ; 2 uses
  %i.dl = xor <4 x i32> %i.dk, %i.bq              ; 2 uses
  %i.dm = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dl, <4 x i32> %i.dl, <4 x i32> splat (i32 12)) ; 2 uses
  %i.dn = add <4 x i32> %i.dm, %i.dh              ; 2 uses
  %i.do = xor <4 x i32> %i.dn, %i.dj              ; 2 uses
  %i.dp = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.do, <4 x i32> %i.do, <4 x i32> splat (i32 8)) ; 2 uses
  %15 = bitcast <4 x i32> %i.dp to <2 x i64>
  %i.dq = add <4 x i32> %i.dp, %i.dk              ; 2 uses
  %i.dr = xor <4 x i32> %i.dq, %i.dm              ; 2 uses
  %i.ds = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dr, <4 x i32> %i.dr, <4 x i32> splat (i32 7)) ; 2 uses
  %i.dt = shufflevector <4 x i32> %i.cg, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %16 = shufflevector <2 x i64> %9, <2 x i64> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.du = shufflevector <4 x i32> %i.cd, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.dv = shufflevector <4 x i32> %i.cs, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %17 = shufflevector <2 x i64> %11, <2 x i64> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dw = shufflevector <4 x i32> %i.cp, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.dx = shufflevector <4 x i32> %i.de, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %18 = shufflevector <2 x i64> %13, <2 x i64> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dy = shufflevector <4 x i32> %i.db, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.dz = shufflevector <4 x i32> %i.dq, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %19 = shufflevector <2 x i64> %15, <2 x i64> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ea = shufflevector <4 x i32> %i.dn, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, 6
  br i1 %exitcond.not.i.i, label %_RINvNtNtCscg2Fb9rc1fS_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs9RFwvXNxPyg_16hickory_resolver.exit, label %bb.c

_RINvNtNtCscg2Fb9rc1fS_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs9RFwvXNxPyg_16hickory_resolver.exit: ; preds = %bb.c
  %i.eb = add <4 x i32> %i.du, %.sroa.012.0.copyload24.i
  %i.ec = add <4 x i32> %i.ci, %.sroa.013.0.copyload25.i
  %i.ed = add <4 x i32> %i.dt, %.sroa.014.0.copyload26.i
  %20 = bitcast <2 x i64> %16 to <4 x i32>
  %21 = bitcast <2 x i64> %.sroa.015.0.copyload.i to <4 x i32>
  %i.ee = add <4 x i32> %20, %21
  %i.ef = add <4 x i32> %i.dw, %.sroa.012.0.copyload24.i
  %i.eg = add <4 x i32> %i.cu, %.sroa.013.0.copyload25.i
  %i.eh = add <4 x i32> %i.dv, %.sroa.014.0.copyload26.i
  %22 = bitcast <2 x i64> %17 to <4 x i32>
  %23 = bitcast <2 x i64> %i.f to <4 x i32>
  %i.ei = add <4 x i32> %22, %23
  %i.ej = add <4 x i32> %i.dy, %.sroa.012.0.copyload24.i
  %i.ek = add <4 x i32> %i.dg, %.sroa.013.0.copyload25.i
  %i.el = add <4 x i32> %i.dx, %.sroa.014.0.copyload26.i
  %24 = bitcast <2 x i64> %18 to <4 x i32>
  %25 = bitcast <2 x i64> %i.g to <4 x i32>
  %i.em = add <4 x i32> %24, %25
  %i.en = add <4 x i32> %i.ea, %.sroa.012.0.copyload24.i
  %i.eo = add <4 x i32> %i.ds, %.sroa.013.0.copyload25.i
  %i.ep = add <4 x i32> %i.dz, %.sroa.014.0.copyload26.i
  %26 = bitcast <2 x i64> %19 to <4 x i32>
  %27 = bitcast <2 x i64> %i.h to <4 x i32>
  %i.eq = add <4 x i32> %26, %27
  store <4 x i32> %i.eb, ptr %1, align 4, !alias.scope !659, !noalias !5
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %i.ec, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !659, !noalias !5
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %i.ed, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !659, !noalias !5
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %i.ee, ptr %.sroa.6.0..sroa_idx.i, align 4, !alias.scope !659, !noalias !5
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %i.ef, ptr %.sroa.7.0..sroa_idx.i, align 4, !alias.scope !659, !noalias !5
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %i.eg, ptr %.sroa.8.0..sroa_idx.i, align 4, !alias.scope !659, !noalias !5
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %i.eh, ptr %.sroa.9.0..sroa_idx.i, align 4, !alias.scope !659, !noalias !5
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %i.ei, ptr %.sroa.10.0..sroa_idx.i, align 4, !alias.scope !659, !noalias !5
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store <4 x i32> %i.ej, ptr %.sroa.11.0..sroa_idx.i, align 4, !alias.scope !659, !noalias !5
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %i.ek, ptr %.sroa.12.0..sroa_idx.i, align 4, !alias.scope !659, !noalias !5
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %i.el, ptr %.sroa.13.0..sroa_idx.i, align 4, !alias.scope !659, !noalias !5
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %i.em, ptr %.sroa.14.0..sroa_idx.i, align 4, !alias.scope !659, !noalias !5
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %i.en, ptr %.sroa.15.0..sroa_idx.i, align 4, !alias.scope !659, !noalias !5
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %i.eo, ptr %.sroa.16.0..sroa_idx.i, align 4, !alias.scope !659, !noalias !5
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %i.ep, ptr %.sroa.17.0..sroa_idx.i, align 4, !alias.scope !659, !noalias !5
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %i.eq, ptr %.sroa.18.0..sroa_idx.i, align 4, !alias.scope !659, !noalias !5
  %i.er = add <2 x i64> %.sroa.015.0.copyload.i, <i64 4, i64 0> ; 2 uses
  %i.es = bitcast <2 x i64> %i.er to <4 x i32>
  %i.et = extractelement <4 x i32> %i.es, i64 0
  store i32 %i.et, ptr %i.e, align 4, !alias.scope !658
  %i.eu = tail call fastcc noundef i32 @_RINvNtNtNtCsj6eKBz9Db1c_4core9core_arch3x865sse4117__mm_extract_epi32Kl1_ECs9RFwvXNxPyg_16hickory_resolver(<2 x i64> %i.er) #26
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.eu, ptr %i.ev, align 4, !alias.scope !658
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtNtCscg2Fb9rc1fS_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 4 dereferenceable(64) %0, ptr noalias nofree noundef align 4 dereferenceable(256) %1) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RINvNtNtCscg2Fb9rc1fS_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs9RFwvXNxPyg_16hickory_resolver.exit
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsjpgBhlqJ253_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !11, !noundef !5
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsk_NtCs5MfxasYgTEl_11hickory_net4xferNtB5_8ProtocolNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !660, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsk_NtCs5MfxasYgTEl_11hickory_net4xferNtB5_8ProtocolNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsk_NtCs5MfxasYgTEl_11hickory_net4xferNtB5_8ProtocolNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.55, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !12, !noalias !665, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs9RFwvXNxPyg_16hickory_resolver.exit, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9RFwvXNxPyg_16hickory_resolver(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs9RFwvXNxPyg_16hickory_resolver.exit

_RNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs9RFwvXNxPyg_16hickory_resolver.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsjpgBhlqJ253_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCs9RFwvXNxPyg_16hickory_resolver(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @59, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtNtCsbZqQukzfxgd_4rand4rngs6thread3rng() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCsbZqQukzfxgd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(8), i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() unnamed_addr #11

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9RFwvXNxPyg_16hickory_resolver(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyEEB2h_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyENtB1q_12SharedLookupEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B2q_E0EB1s_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRNtNtNtBU_3net7ip_addr6IpAddrECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(17)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: cold nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtCsbCIQ8H6Y6l3_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjXdHNeFfodD_13hickory_proto2rr11record_type10RecordTypeNtNtCs9RFwvXNxPyg_16hickory_resolver5cache9TtlBoundsEE7reserveNCINvNtB8_3map11make_hasherBQ_B1R_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0EB1V_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtNtCsj6eKBz9Db1c_4core3net7ip_addr6IpAddrNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool22ProtocolTransportStateEENtNtNtBV_3ops4drop4Drop4dropB1B_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_hEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtCseieIppCIYdI_4slab5EntryNtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex6WaiterEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCs7w1SCUKeMLI_11prefix_trie5inner4NodeNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCs7w1SCUKeMLI_11prefix_trie5inner4NodeNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv6NetuEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsj6eKBz9Db1c_4core3num7nonzero7NonZerojEENtNtNtBM_3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs9RFwvXNxPyg_16hickory_resolver6config16NameServerConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdCd4pHk2fcR_5ipnet5ipnet5IpNetENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18EchConfigExtensionENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

end_hunk_1
