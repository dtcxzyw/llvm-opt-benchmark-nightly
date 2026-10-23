Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_webrtc-46423433e7cd39fc.libp2p_webrtc.37636298509d9d5c-cgu.08?download=true
inline.NumInlined: 1749
inline.NumDeleted: 773
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvMsy_Cs4ywFJ4GriGC_8smol_strNtB6_4Repr12new_on_stackReECs4KPtkQIfQGm_13libp2p_webrtc:bb.a
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsy_Cs4ywFJ4GriGC_8smol_strNtB6_4Repr3newNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KPtkQIfQGm_13libp2p_webrtc(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !7 ; 2 uses
  invoke fastcc void @_RINvMsy_Cs4ywFJ4GriGC_8smol_strNtB6_4Repr12new_on_stackReECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.noexc, %bb.e, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #33
          to label %common.resume unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.a, align 8, !range !11, !noundef !7
  %.not = icmp eq i8 %i.e, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = invoke { ptr, i64 } @_RNvMsq_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE15copy_from_sliceCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1)
          to label %.noexc unwind label %bb.b     ; 2 uses

.noexc:                                           ; preds = %bb.e
  %i.g = extractvalue { ptr, i64 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.f, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.j = invoke noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offseteECs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull %i.i, i64 noundef %i.h)
          to label %_RNCINvMsy_Cs4ywFJ4GriGC_8smol_strNtB8_4Repr3newNtNtCsexYYUdYSQU6_5alloc6string6StringE0Cs4KPtkQIfQGm_13libp2p_webrtc.exit unwind label %bb.b

_RNCINvMsy_Cs4ywFJ4GriGC_8smol_strNtB8_4Repr3newNtNtCsexYYUdYSQU6_5alloc6string6StringE0Cs4KPtkQIfQGm_13libp2p_webrtc.exit: ; preds = %.noexc
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !188
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %i.n, align 8, !alias.scope !188
  store i8 25, ptr %0, align 8, !alias.scope !188
  br label %bb.f

bb.f:                                             ; preds = %_RNCINvMsy_Cs4ywFJ4GriGC_8smol_strNtB8_4Repr3newNtNtCsexYYUdYSQU6_5alloc6string6StringE0Cs4KPtkQIfQGm_13libp2p_webrtc.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KPtkQIfQGm_13libp2p_webrtc.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KPtkQIfQGm_13libp2p_webrtc.exit: ; preds = %bb.f
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret void

bb.i:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsy_Cs4ywFJ4GriGC_8smol_strNtB6_4Repr3newRNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KPtkQIfQGm_13libp2p_webrtc(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1), (8, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.c, align 8, !noundef !7 ; 2 uses
  call fastcc void @_RINvMsy_Cs4ywFJ4GriGC_8smol_strNtB6_4Repr12new_on_stackReECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
  %i.d = load i8, ptr %i.a, align 8, !range !11, !noundef !7
  %.not = icmp eq i8 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.e = tail call { ptr, i64 } @_RNvMsq_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE15copy_from_sliceCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i), !noalias !191 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0        ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.e, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.i = tail call noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offseteECs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull %i.h, i64 noundef %i.g), !noalias !191
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !191
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.m, align 8, !alias.scope !191
  store i8 25, ptr %0, align 8, !alias.scope !191
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsy_Cs4ywFJ4GriGC_8smol_strNtB6_4Repr3newReECs4KPtkQIfQGm_13libp2p_webrtc(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1), (8, 24)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvMsy_Cs4ywFJ4GriGC_8smol_strNtB6_4Repr12new_on_stackReECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = load i8, ptr %i.a, align 8, !range !11, !noundef !7
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.c = tail call { ptr, i64 } @_RNvMsq_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE15copy_from_sliceCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !194 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.g = tail call noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offseteECs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull %i.f, i64 noundef %i.e), !noalias !194
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !194
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.k, align 8, !alias.scope !194
  store i8 25, ptr %0, align 8, !alias.scope !194
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCseeQwDhuaSHd_4rtcp6packet9unmarshalRShECs4KPtkQIfQGm_13libp2p_webrtc(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 9 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 9 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [40 x i8], align 8                ; 9 uses
  %i.l = alloca [40 x i8], align 8                ; 8 uses
  %i.m = alloca [72 x i8], align 8                ; 13 uses
  %i.n = alloca [72 x i8], align 8                ; 11 uses
  %i.o = alloca [40 x i8], align 8                ; 9 uses
  %i.p = alloca [32 x i8], align 8                ; 9 uses
  %i.q = alloca [40 x i8], align 8                ; 8 uses
  %i.r = alloca [56 x i8], align 8                ; 13 uses
  %i.s = alloca [56 x i8], align 8                ; 11 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [40 x i8], align 8                ; 9 uses
  %i.v = alloca [64 x i8], align 8                ; 13 uses
  %i.w = alloca [64 x i8], align 8                ; 11 uses
  %i.x = alloca [80 x i8], align 8                ; 13 uses
  %i.y = alloca [80 x i8], align 8                ; 11 uses
  %i.z = alloca [40 x i8], align 8                ; 7 uses
  %i.aa = alloca [48 x i8], align 8               ; 28 uses
  %i.ab = alloca [40 x i8], align 8               ; 13 uses
  %i.ac = alloca [6 x i8], align 2                ; 9 uses
  %i.ad = alloca [24 x i8], align 8               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.4141.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 10
  %.sroa.5142.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 11
  %.sroa.6143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.6.i.sroa.7.0..sroa_idx109 = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.6.i.sroa.8.0..sroa_idx113 = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.6.i.sroa.7.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %.sroa.6.i.sroa.8.0..sroa_idx115 = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 4 uses
  %.sroa.6.i.sroa.9.0..sroa_idx119 = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6130.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6130.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.6130.i.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.6130.i.sroa.8.0..sroa_idx269 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6130.i.sroa.9.0..sroa_idx275 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6130.i.sroa.10.0..sroa_idx281 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.6118.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6118.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.6118.i.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.6118.i.sroa.8.0..sroa_idx248 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6118.i.sroa.9.0..sroa_idx254 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6118.i.sroa.10.0..sroa_idx260 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.6112.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.6112.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.6112.i.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.6112.i.sroa.8.0..sroa_idx227 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.6112.i.sroa.9.0..sroa_idx233 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.6112.i.sroa.10.0..sroa_idx239 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.6106.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.6106.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.6106.i.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.6106.i.sroa.8.0..sroa_idx206 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.6106.i.sroa.9.0..sroa_idx212 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.6106.i.sroa.10.0..sroa_idx218 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.4198.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.sroa.6200.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.54.16..sroa.6200.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.58.16..sroa.6200.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4383.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5384.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.6385.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.4187.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.679.i.sroa.7.0..sroa.4187.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.679.i.sroa.8.0..sroa.4187.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.679.i.sroa.9.0..sroa.4187.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.679.i.sroa.10.0..sroa.4187.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.5188.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.881.0..sroa_idx82.i = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %.sroa.679.0..sroa_idx80.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.679.i.sroa.7.0..sroa.679.0..sroa_idx80.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.679.i.sroa.8.0..sroa.679.0..sroa_idx80.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.679.i.sroa.9.0..sroa.679.0..sroa_idx80.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.679.i.sroa.10.0..sroa.679.0..sroa_idx80.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.4183.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.sroa.6185.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.54.16..sroa.6185.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.58.16..sroa.6185.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.660.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.660.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.660.i.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.660.i.sroa.8.0..sroa_idx175 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.660.i.sroa.9.0..sroa_idx181 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.660.i.sroa.10.0..sroa_idx187 = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.4349.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5350.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.6351.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.653.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.653.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.653.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.653.i.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.5173.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.653.0..sroa_idx54.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.653.i.sroa.7.0..sroa.653.0..sroa_idx54.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.653.i.sroa.8.0..sroa.653.0..sroa_idx54.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.653.i.sroa.9.0..sroa.653.0..sroa_idx54.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.653.i.sroa.10.0..sroa.653.0..sroa_idx54.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.855.0..sroa_idx56.i = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.643.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.643.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.5170.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.sroa.643.i.sroa.8.0..sroa_idx146 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.643.i.sroa.9.0..sroa_idx152 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.4163.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.637.i.sroa.7.0..sroa.4163.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.637.i.sroa.8.0..sroa.4163.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.637.i.sroa.9.0..sroa.4163.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sroa.637.i.sroa.10.0..sroa.4163.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.sroa.5164.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %.sroa.839.0..sroa_idx40.i = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.637.0..sroa_idx38.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.637.i.sroa.7.0..sroa.637.0..sroa_idx38.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.637.i.sroa.8.0..sroa.637.0..sroa_idx38.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.637.i.sroa.9.0..sroa.637.0..sroa_idx38.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.637.i.sroa.10.0..sroa.637.0..sroa_idx38.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.4160.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.631.i.sroa.7.0..sroa.4160.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.631.i.sroa.8.0..sroa.4160.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.631.i.sroa.9.0..sroa.4160.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.sroa.631.i.sroa.10.0..sroa.4160.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %.sroa.5161.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %.sroa.833.0..sroa_idx34.i = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %.sroa.631.0..sroa_idx32.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.631.i.sroa.7.0..sroa.631.0..sroa_idx32.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.631.i.sroa.8.0..sroa.631.0..sroa_idx32.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.631.i.sroa.9.0..sroa.631.0..sroa_idx32.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.631.i.sroa.10.0..sroa.631.0..sroa_idx32.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4401.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5402.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.6403.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.b

bb.b:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCseeQwDhuaSHd_4rtcp6packet6PacketNtNtCskKLDkoKarTP_4core6marker4SendNtB1B_4SyncEL_EE8push_mutCs4KPtkQIfQGm_13libp2p_webrtc.exit, %bb.a
  %storemerge = phi i64 [ 0, %bb.a ], [ %i.fs, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCseeQwDhuaSHd_4rtcp6packet6PacketNtNtCskKLDkoKarTP_4core6marker4SendNtB1B_4SyncEL_EE8push_mutCs4KPtkQIfQGm_13libp2p_webrtc.exit ]
  store i64 %storemerge, ptr %i.af, align 8
  %i.av = invoke noundef zeroext i1 @_RNvYRShNtNtNtCs1eA6bChxBZF_5bytes3buf8buf_impl3Buf13has_remainingCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.aa, %bb.y, %bb.i, %bb.f, %bb.b
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ds, %.body.i, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.aw, %bb.c ], [ %i.fn, %bb.ds ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtCseeQwDhuaSHd_4rtcp6packet6PacketNtNtB4_6marker4SendNtB24_4SyncEL_EEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad) #33
          to label %common.resume unwind label %bb.du

bb.d:                                             ; preds = %bb.b
  br i1 %i.av, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = load i64, ptr %i.af, align 8, !noundef !7 ; 2 uses
  %i.ay = icmp ult i64 %i.ax, 576460752303423488
  call void @llvm.assume(i1 %i.ay)
  %i.az = icmp eq i64 %i.ax, 0
  br i1 %i.az, label %bb.di, label %bb.dl

bb.f:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !265)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !266
  invoke void @_RINvXs2_NtCseeQwDhuaSHd_4rtcp6headerNtB6_6HeaderNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalRShECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.f
  %i.ba = load i64, ptr %i.ab, align 8, !range !267, !noalias !266, !noundef !7 ; 2 uses
  %.not.i = icmp eq i64 %i.ba, -1
  %.sroa.0140.0.copyload.i = load i16, ptr %i.ag, align 8, !noalias !266 ; 3 uses
  %.sroa.4141.0.copyload.i = load i8, ptr %.sroa.4141.0..sroa_idx.i, align 2, !noalias !266 ; 4 uses
  %.sroa.5142.0.copyload.i = load i8, ptr %.sroa.5142.0..sroa_idx.i, align 1, !noalias !266 ; 3 uses
  %.sroa.6143.0.copyload.i = load i16, ptr %.sroa.6143.0..sroa_idx.i, align 4, !noalias !266 ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc
  %.sroa.8154.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 14
  %.sroa.24.6.copyload = load i16, ptr %.sroa.8154.0..sroa_idx.i, align 2, !noalias !265
  %.sroa.24.6.insert.ext = zext i16 %.sroa.24.6.copyload to i64
  %.sroa.24.6.insert.shift = shl nuw i64 %.sroa.24.6.insert.ext, 48
  %.sroa.46.14..sroa.8154.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.46.14.copyload = load ptr, ptr %.sroa.46.14..sroa.8154.0..sroa_idx.i.sroa_idx, align 8, !noalias !265
  %.sroa.54.14..sroa.8154.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.54.14.copyload = load i64, ptr %.sroa.54.14..sroa.8154.0..sroa_idx.i.sroa_idx, align 8, !noalias !265
  %.sroa.58.14..sroa.8154.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.sroa.58.14.copyload = load i64, ptr %.sroa.58.14..sroa.8154.0..sroa_idx.i.sroa_idx, align 8, !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !266
  %.sroa.24.0.insert.ext94 = zext i16 %.sroa.0140.0.copyload.i to i64
  %.sroa.24.2.insert.ext = zext i8 %.sroa.4141.0.copyload.i to i64
  %.sroa.24.2.insert.shift = shl nuw nsw i64 %.sroa.24.2.insert.ext, 16
  %.sroa.24.3.insert.ext = zext i8 %.sroa.5142.0.copyload.i to i64
  %.sroa.24.3.insert.shift = shl nuw nsw i64 %.sroa.24.3.insert.ext, 24
  %.sroa.24.4.insert.ext103 = zext i16 %.sroa.6143.0.copyload.i to i64
  %.sroa.24.4.insert.shift104 = shl nuw nsw i64 %.sroa.24.4.insert.ext103, 32
  %.sroa.24.0.insert.insert96 = or disjoint i64 %.sroa.24.2.insert.shift, %.sroa.24.0.insert.ext94
  %.sroa.24.2.insert.insert = or disjoint i64 %.sroa.24.0.insert.insert96, %.sroa.24.3.insert.shift
  %.sroa.24.3.insert.insert = or disjoint i64 %.sroa.24.2.insert.insert, %.sroa.24.4.insert.shift104
  %.sroa.24.4.insert.insert106 = or disjoint i64 %.sroa.24.3.insert.insert, %.sroa.24.6.insert.shift
  %i.bb = inttoptr i64 %.sroa.24.4.insert.insert106 to ptr
  br label %.loopexit.sink.split

bb.h:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !266
  store i16 %.sroa.0140.0.copyload.i, ptr %i.ac, align 2, !noalias !266
  store i8 %.sroa.4141.0.copyload.i, ptr %.sroa.3.0..sroa_idx.i, align 2, !noalias !266
  store i8 %.sroa.5142.0.copyload.i, ptr %.sroa.59.0..sroa_idx.i, align 1, !noalias !266
  store i16 %.sroa.6143.0.copyload.i, ptr %.sroa.611.0..sroa_idx.i, align 2, !noalias !266
  %i.bc = zext i16 %.sroa.0140.0.copyload.i to i64
  %i.bd = shl nuw nsw i64 %i.bc, 2                ; 2 uses
  %.val.i = load i64, ptr %i.ah, align 8, !alias.scope !265, !noundef !7
  %i.be = icmp ugt i64 %i.bd, %.val.i
  br i1 %i.be, label %.loopexit.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !266
  invoke void @_RNvYNtNtCseeQwDhuaSHd_4rtcp6header6HeaderNtNtCslqlypCAacxc_11webrtc_util7marshal7Marshal7marshalCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.z, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(6) %i.ac)
          to label %.noexc26 unwind label %bb.c

.noexc26:                                         ; preds = %bb.i
  %i.bf = load i64, ptr %i.z, align 8, !range !267, !noalias !266, !noundef !7 ; 2 uses
  %.not228.i = icmp eq i64 %i.bf, -1
  %.sroa.6.i.sroa.0.0.copyload107 = load ptr, ptr %i.ai, align 8, !noalias !266 ; 2 uses
  %.sroa.6.i.sroa.7.0.copyload110 = load ptr, ptr %.sroa.6.i.sroa.7.0..sroa_idx109, align 8, !noalias !266 ; 2 uses
  %i.bg = load <2 x i64>, ptr %.sroa.6.i.sroa.8.0..sroa_idx113, align 8, !noalias !266 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !266
  br i1 %.not228.i, label %bb.j, label %.thread305

.thread305:                                       ; preds = %.noexc26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !266
  %i.bh = extractelement <2 x i64> %i.bg, i64 0
  %i.bi = extractelement <2 x i64> %i.bg, i64 1
  br label %.loopexit.sink.split

bb.j:                                             ; preds = %.noexc26
  store ptr %.sroa.6.i.sroa.0.0.copyload107, ptr %i.aa, align 8, !noalias !266
  store ptr %.sroa.6.i.sroa.7.0.copyload110, ptr %.sroa.6.i.sroa.7.0..sroa_idx111, align 8, !noalias !266
  store <2 x i64> %i.bg, ptr %.sroa.6.i.sroa.8.0..sroa_idx115, align 8, !noalias !266
  store ptr %1, ptr %i.aj, align 8, !noalias !266
  store i64 %i.bd, ptr %i.ak, align 8, !noalias !266
  switch i8 %.sroa.5142.0.copyload.i, label %bb.k [
    i8 -56, label %bb.l
    i8 -55, label %bb.m
    i8 -54, label %bb.n
    i8 -53, label %bb.o
    i8 -51, label %bb.p
    i8 -50, label %bb.q
    i8 -49, label %bb.r
  ]

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !266
  invoke void @_RINvXs2_NtCseeQwDhuaSHd_4rtcp10raw_packetNtB6_9RawPacketNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB1W_5bytes5BytesINtNtB1U_4take4TakeQRShEEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aa)
          to label %bb.db unwind label %bb.s, !noalias !268

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !266
  invoke void @_RINvXs2_NtCseeQwDhuaSHd_4rtcp13sender_reportNtB6_12SenderReportNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB23_5bytes5BytesINtNtB21_4take4TakeQRShEEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aa)
          to label %bb.t unwind label %bb.s, !noalias !268

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !266
  invoke void @_RINvXs2_NtCseeQwDhuaSHd_4rtcp15receiver_reportNtB6_14ReceiverReportNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB27_5bytes5BytesINtNtB25_4take4TakeQRShEEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aa)
          to label %bb.ab unwind label %bb.s, !noalias !268

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !266
  invoke void @_RINvXsb_NtCseeQwDhuaSHd_4rtcp18source_descriptionNtB6_17SourceDescriptionNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB2d_5bytes5BytesINtNtB2b_4take4TakeQRShEEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aa)
          to label %bb.ah unwind label %bb.s, !noalias !268

bb.o:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !266
  invoke void @_RINvXs2_NtCseeQwDhuaSHd_4rtcp7goodbyeNtB6_7GoodbyeNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB1Q_5bytes5BytesINtNtB1O_4take4TakeQRShEEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aa)
          to label %bb.an unwind label %bb.s, !noalias !268

bb.p:                                             ; preds = %bb.j
  switch i8 %.sroa.4141.0.copyload.i, label %bb.at [
    i8 1, label %bb.au
    i8 5, label %bb.av
    i8 15, label %bb.aw
  ]

bb.q:                                             ; preds = %bb.j
  switch i8 %.sroa.4141.0.copyload.i, label %bb.bs [
    i8 1, label %bb.bt
    i8 2, label %bb.bu
    i8 15, label %bb.bv
    i8 4, label %bb.bw
  ]

bb.r:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !266
  invoke void @_RINvXs7_NtCseeQwDhuaSHd_4rtcp15extended_reportNtB6_14ExtendedReportNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB27_5bytes5BytesINtNtB25_4take4TakeQRShEEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aa)
          to label %bb.cw unwind label %bb.s, !noalias !268

bb.s:                                             ; preds = %bb.by, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.bd, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.r, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.de, %bb.cz, %bb.cs, %bb.cn, %bb.ci, %bb.cd, %bb.bo, %bb.bj, %bb.az, %bb.aq, %bb.ak, %bb.ae, %bb.w, %bb.s
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.eu, %bb.cz ], [ %i.ei, %bb.cn ], [ %i.dl, %bb.bj ], [ %i.cx, %bb.aq ], [ %i.em, %bb.cs ], [ %i.bu, %bb.w ], [ %i.cm, %bb.ae ], [ %i.cr, %bb.ak ], [ %i.ee, %bb.ci ], [ %i.dp, %bb.bo ], [ %i.ea, %bb.cd ], [ %i.db, %bb.az ], [ %i.bj, %bb.s ], [ %i.ez, %bb.de ]
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  call void @llvm.experimental.noalias.scope.decl(metadata !270)
  call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %i.bk = load ptr, ptr %.sroa.6.i.sroa.9.0..sroa_idx119, align 8, !alias.scope !272, !noalias !266, !noundef !7
  %i.bl = load ptr, ptr %i.aa, align 8, !alias.scope !272, !noalias !266, !nonnull !7, !align !12, !noundef !7
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !273, !nonnull !7, !noundef !7
  %i.bo = load ptr, ptr %.sroa.6.i.sroa.7.0..sroa_idx111, align 8, !alias.scope !272, !noalias !266, !noundef !7
  %i.bp = load i64, ptr %.sroa.6.i.sroa.8.0..sroa_idx115, align 8, !alias.scope !272, !noalias !266, !noundef !7
  invoke void %i.bn(ptr noundef %i.bk, ptr noundef %i.bo, i64 noundef %i.bp)
          to label %.body unwind label %bb.dh, !noalias !268, !inline_history !204

bb.t:                                             ; preds = %bb.l
  %i.bq = load i64, ptr %i.y, align 8, !range !13, !noalias !266, !noundef !7 ; 2 uses
  %i.br = icmp eq i64 %i.bq, -1
  %.sroa.631.i.sroa.0.0.copyload122 = load i64, ptr %.sroa.4160.0..sroa_idx.i, align 8, !noalias !266 ; 2 uses
  %.sroa.631.i.sroa.7.0.copyload124 = load ptr, ptr %.sroa.631.i.sroa.7.0..sroa.4160.0..sroa_idx.i.sroa_idx, align 8, !noalias !266 ; 2 uses
  %.sroa.631.i.sroa.8.0.copyload126 = load ptr, ptr %.sroa.631.i.sroa.8.0..sroa.4160.0..sroa_idx.i.sroa_idx, align 8, !noalias !266 ; 2 uses
  %.sroa.631.i.sroa.9.0.copyload128 = load i64, ptr %.sroa.631.i.sroa.9.0..sroa.4160.0..sroa_idx.i.sroa_idx, align 8, !noalias !266 ; 2 uses
  %.sroa.631.i.sroa.10.0.copyload130 = load i64, ptr %.sroa.631.i.sroa.10.0..sroa.4160.0..sroa_idx.i.sroa_idx, align 8, !noalias !266 ; 2 uses
  br i1 %i.br, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.833.0..sroa_idx34.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5161.0..sroa_idx.i, i64 32, i1 false), !noalias !266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !266
  store i64 %i.bq, ptr %i.x, align 8, !noalias !266
  store i64 %.sroa.631.i.sroa.0.0.copyload122, ptr %.sroa.631.0..sroa_idx32.i, align 8, !noalias !266
  store ptr %.sroa.631.i.sroa.7.0.copyload124, ptr %.sroa.631.i.sroa.7.0..sroa.631.0..sroa_idx32.i.sroa_idx, align 8, !noalias !266
  store ptr %.sroa.631.i.sroa.8.0.copyload126, ptr %.sroa.631.i.sroa.8.0..sroa.631.0..sroa_idx32.i.sroa_idx, align 8, !noalias !266
  store i64 %.sroa.631.i.sroa.9.0.copyload128, ptr %.sroa.631.i.sroa.9.0..sroa.631.0..sroa_idx32.i.sroa_idx, align 8, !noalias !266
  store i64 %.sroa.631.i.sroa.10.0.copyload130, ptr %.sroa.631.i.sroa.10.0..sroa.631.0..sroa_idx32.i.sroa_idx, align 8, !noalias !266
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !274
  %i.bs = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2529) 80, i64 noundef range(i64 4, 9) 8) #32, !noalias !274 ; 3 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.v, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit45, !prof !10

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #31
          to label %.noexc44 unwind label %bb.w

.noexc44:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCseeQwDhuaSHd_4rtcp13sender_report12SenderReportECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.x) #33
          to label %.body.i unwind label %bb.x, !noalias !268

bb.x:                                             ; preds = %bb.w
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !268
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit45: ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bs, ptr noundef nonnull align 8 dereferenceable(80) %i.x, i64 80, i1 false), !noalias !268
  br label %bb.y

bb.y:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit35, %bb.cu, %bb.cp, %bb.ck, %bb.cf, %bb.bz, %bb.bq, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit37, %bb.be, %bb.bb, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit39, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit41, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit43, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit45
  %.sroa.16.0.i = phi ptr [ @43, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit ], [ @15, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit45 ], [ @19, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit43 ], [ @23, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit41 ], [ @27, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit39 ], [ @43, %bb.bq ], [ @31, %bb.bb ], [ @35, %bb.be ], [ @39, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit37 ], [ @43, %bb.cu ], [ @47, %bb.bz ], [ @51, %bb.cf ], [ @55, %bb.ck ], [ @59, %bb.cp ], [ @63, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit35 ]
  %.sroa.089.0.i = phi ptr [ %i.ex, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit ], [ %i.bs, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit45 ], [ %i.ck, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit43 ], [ %i.cp, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit41 ], [ %i.cv, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit39 ], [ %i.do, %bb.bq ], [ %i.da, %bb.bb ], [ %i.df, %bb.be ], [ %i.dj, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit37 ], [ %i.el, %bb.cu ], [ %i.dw, %bb.bz ], [ %i.dz, %bb.cf ], [ %i.ed, %bb.ck ], [ %i.eh, %bb.cp ], [ %i.es, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit35 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !275)
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.bw = load ptr, ptr %.sroa.6.i.sroa.9.0..sroa_idx119, align 8, !alias.scope !278, !noalias !266, !noundef !7
  %i.bx = load ptr, ptr %i.aa, align 8, !alias.scope !278, !noalias !266, !nonnull !7, !align !12, !noundef !7
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !279, !nonnull !7, !noundef !7
  %i.ca = load ptr, ptr %.sroa.6.i.sroa.7.0..sroa_idx111, align 8, !alias.scope !278, !noalias !266, !noundef !7
  %i.cb = load i64, ptr %.sroa.6.i.sroa.8.0..sroa_idx115, align 8, !alias.scope !278, !noalias !266, !noundef !7
  invoke void %i.bz(ptr noundef %i.bw, ptr noundef %i.ca, i64 noundef %i.cb)
          to label %.thread296 unwind label %bb.c, !inline_history !213

.thread296:                                       ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.dq

bb.z:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !266
  br label %bb.aa

bb.aa:                                            ; preds = %bb.cw, %bb.cl, %bb.cg, %bb.cb, %bb.ax, %bb.dg, %bb.cv, %bb.ca, %bb.br, %bb.bl, %bb.bf, %bb.as, %bb.am, %bb.ag, %bb.z
  %.sroa.24.1 = phi ptr [ %.sroa.0400.0.copyload.i, %bb.dg ], [ %.sroa.631.i.sroa.7.0.copyload124, %bb.z ], [ %.sroa.637.i.sroa.7.0.copyload134, %bb.ag ], [ %.sroa.643.i.sroa.0.0.copyload141, %bb.am ], [ %.sroa.653.i.sroa.7.0.copyload160, %bb.as ], [ %.sroa.0348.0.copyload.i, %bb.br ], [ %.sroa.6118.i.sroa.0.0.copyload243, %bb.cl ], [ %i.dg, %bb.bf ], [ %.sroa.679.i.sroa.7.0.copyload194, %bb.bl ], [ %.sroa.0382.0.copyload.i, %bb.cv ], [ %i.dx, %bb.ca ], [ %.sroa.660.i.sroa.0.0.copyload170, %bb.ax ], [ %.sroa.6106.i.sroa.0.0.copyload201, %bb.cb ], [ %.sroa.6112.i.sroa.0.0.copyload222, %bb.cg ], [ %.sroa.6130.i.sroa.0.0.copyload264, %bb.cw ] ; 2 uses
  %.sroa.58.1 = phi i64 [ %i.fd, %bb.dg ], [ %.sroa.631.i.sroa.10.0.copyload130, %bb.z ], [ %.sroa.637.i.sroa.10.0.copyload140, %bb.ag ], [ %.sroa.5170.0.copyload.i, %bb.am ], [ %.sroa.653.i.sroa.10.0.copyload169, %bb.as ], [ %i.dt, %bb.br ], [ %.sroa.6118.i.sroa.10.0.copyload259, %bb.cl ], [ %.sroa.58.16.copyload88, %bb.bf ], [ %.sroa.679.i.sroa.10.0.copyload200, %bb.bl ], [ %i.eq, %bb.cv ], [ %.sroa.58.16.copyload, %bb.ca ], [ %.sroa.660.i.sroa.10.0.copyload186, %bb.ax ], [ %.sroa.6106.i.sroa.10.0.copyload217, %bb.cb ], [ %.sroa.6112.i.sroa.10.0.copyload238, %bb.cg ], [ %.sroa.6130.i.sroa.10.0.copyload280, %bb.cw ]
  %.sroa.54.1 = phi i64 [ %.sroa.5402.0.copyload.i, %bb.dg ], [ %.sroa.631.i.sroa.9.0.copyload128, %bb.z ], [ %.sroa.637.i.sroa.9.0.copyload138, %bb.ag ], [ %.sroa.643.i.sroa.9.0.copyload151, %bb.am ], [ %.sroa.653.i.sroa.9.0.copyload166, %bb.as ], [ %.sroa.5350.0.copyload.i, %bb.br ], [ %.sroa.6118.i.sroa.9.0.copyload253, %bb.cl ], [ %.sroa.54.16.copyload79, %bb.bf ], [ %.sroa.679.i.sroa.9.0.copyload198, %bb.bl ], [ %.sroa.5384.0.copyload.i, %bb.cv ], [ %.sroa.54.16.copyload, %bb.ca ], [ %.sroa.660.i.sroa.9.0.copyload180, %bb.ax ], [ %.sroa.6106.i.sroa.9.0.copyload211, %bb.cb ], [ %.sroa.6112.i.sroa.9.0.copyload232, %bb.cg ], [ %.sroa.6130.i.sroa.9.0.copyload274, %bb.cw ]
  %.sroa.46.1 = phi ptr [ %.sroa.4401.0.copyload.i, %bb.dg ], [ %.sroa.631.i.sroa.8.0.copyload126, %bb.z ], [ %.sroa.637.i.sroa.8.0.copyload136, %bb.ag ], [ %.sroa.643.i.sroa.8.0.copyload145, %bb.am ], [ %.sroa.653.i.sroa.8.0.copyload163, %bb.as ], [ %.sroa.4349.0.copyload.i, %bb.br ], [ %.sroa.6118.i.sroa.8.0.copyload247, %bb.cl ], [ %.sroa.46.16.copyload69, %bb.bf ], [ %.sroa.679.i.sroa.8.0.copyload196, %bb.bl ], [ %.sroa.4383.0.copyload.i, %bb.cv ], [ %.sroa.46.16.copyload, %bb.ca ], [ %.sroa.660.i.sroa.8.0.copyload174, %bb.ax ], [ %.sroa.6106.i.sroa.8.0.copyload205, %bb.cb ], [ %.sroa.6112.i.sroa.8.0.copyload226, %bb.cg ], [ %.sroa.6130.i.sroa.8.0.copyload268, %bb.cw ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %i.ew, %bb.dg ], [ %.sroa.631.i.sroa.0.0.copyload122, %bb.z ], [ %.sroa.637.i.sroa.0.0.copyload132, %bb.ag ], [ %i.co, %bb.am ], [ %.sroa.653.i.sroa.0.0.copyload157, %bb.as ], [ %i.dn, %bb.br ], [ %i.eg, %bb.cl ], [ %i.dd, %bb.bf ], [ %.sroa.679.i.sroa.0.0.copyload192, %bb.bl ], [ %i.ek, %bb.cv ], [ %i.du, %bb.ca ], [ %i.cz, %bb.ax ], [ %i.dy, %bb.cb ], [ %i.ec, %bb.cg ], [ %i.er, %bb.cw ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !280)
end_hunk_0
