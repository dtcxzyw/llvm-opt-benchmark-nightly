Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/webpki-ce99a4d7babff5cd.webpki.d0e49e753f3852db-cgu.0?download=true
inline.NumInlined: 79
inline.NumDeleted: 48
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [123 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rustls-webpki-0.103.13/src/subject_name/ip_address.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"z\00\00\00\00\00\00\00\87\00\00\00>\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"z\00\00\00\00\00\00\00\88\00\00\00;\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs3_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB5_10EndOfInputNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8
@4 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@5 = private unnamed_addr constant [10 x i8] c"EndOfInput", align 1

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs2XfPe3Xe4Zx_9untrusted5inputNtB5_5Input8read_allNCINvNtCshVVPy9isBpn_6webpki3der13nested_of_mutNCNCNCNvMNtB12_4certNtB1P_4Cert10from_inputs_000E0uNtNtB12_5error5ErrorEB12_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.h, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %i.i = load ptr, ptr %3, align 8, !alias.scope !17, !nonnull !4, !noundef !4
  %i.j = load i8, ptr %i.i, align 1, !range !5, !noalias !19, !noundef !4
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = icmp eq i64 %i.f, 0
  %or.cond = and i1 %i.l, %i.k
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !17, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !17, !nonnull !4, !align !6, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !17, !nonnull !4, !align !6
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19
  %i.s = load i8, ptr %i.n, align 1, !range !7, !noalias !20, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19
  invoke fastcc void @_RNvXs2_NtCshVVPy9isBpn_6webpki5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p) #9
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  invoke void @_RINvNtCshVVPy9isBpn_6webpki3der14nested_limiteduNCNCINvB2_13nested_of_mutNCNCNCNvMNtB4_4certNtB1i_4Cert10from_inputs_000E00EB4_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i8 noundef %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r, i64 noundef 65535)
          to label %.noexc14 unwind label %bb.e

.noexc14:                                         ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19
  %i.t = load i64, ptr %i.b, align 8, !range !8, !noalias !19, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.t, -1
  br i1 %.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19
  %i.u = load i64, ptr %i.h, align 8, !alias.scope !18, !noundef !4
  %i.v = load i64, ptr %i.g, align 8, !alias.scope !18, !noundef !4
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %.loopexit, label %bb.c

bb.e:                                             ; preds = %.noexc, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %2) #10
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %.noexc14
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.f
  %storemerge = phi i64 [ %i.t, %bb.f ], [ -1, %bb.a ], [ -1, %bb.d ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %2)
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.x

bb.h:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #11
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs2XfPe3Xe4Zx_9untrusted5inputNtB5_5Input8read_allNCINvNtCshVVPy9isBpn_6webpki3der13nested_of_mutNCNCNCNvXs3_NtNtB12_3crl5typesNtB1S_26BorrowedCertRevocationListNtB10_7FromDer8from_ders_000E0uNtNtB12_5error5ErrorEB12_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.h, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.i = load ptr, ptr %3, align 8, !alias.scope !25, !nonnull !4, !noundef !4
  %i.j = load i8, ptr %i.i, align 1, !range !5, !noalias !27, !noundef !4
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = icmp eq i64 %i.f, 0
  %or.cond = and i1 %i.l, %i.k
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !25, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !25, !nonnull !4, !align !6, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !25, !nonnull !4, !align !6
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !27
  %i.s = load i8, ptr %i.n, align 1, !range !7, !noalias !28, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27
  invoke fastcc void @_RNvXs2_NtCshVVPy9isBpn_6webpki5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p) #9
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  invoke void @_RINvNtCshVVPy9isBpn_6webpki3der14nested_limiteduNCNCINvB2_13nested_of_mutNCNCNCNvXs3_NtNtB4_3crl5typesNtB1l_26BorrowedCertRevocationListNtB2_7FromDer8from_ders_000E00EB4_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i8 noundef %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r, i64 noundef 65535)
          to label %.noexc14 unwind label %bb.e

.noexc14:                                         ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27
  %i.t = load i64, ptr %i.b, align 8, !range !8, !noalias !27, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.t, -1
  br i1 %.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27
  %i.u = load i64, ptr %i.h, align 8, !alias.scope !26, !noundef !4
  %i.v = load i64, ptr %i.g, align 8, !alias.scope !26, !noundef !4
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %.loopexit, label %bb.c

bb.e:                                             ; preds = %.noexc, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %2) #10
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %.noexc14
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.f
  %storemerge = phi i64 [ %i.t, %bb.f ], [ -1, %bb.a ], [ -1, %bb.d ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %2)
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.x

bb.h:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #11
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs2XfPe3Xe4Zx_9untrusted5inputNtB5_5Input8read_allNCNCINvNtCshVVPy9isBpn_6webpki3der13nested_of_mutNCNCNCNvMNtB14_4certNtB1R_4Cert10from_inputs_000E00uNtNtB14_5error5ErrorEB14_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %.sroa.6.i.i = alloca [40 x i8], align 8        ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  store ptr %i.e, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i64 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.val = load ptr, ptr %3, align 8, !nonnull !4, !align !6, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val14 = load ptr, ptr %i.j, align 8           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !37
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37
  invoke void @_RNvXs_NtCshVVPy9isBpn_6webpki4x509NtB4_9ExtensionNtNtB6_3der7FromDer8from_der(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.k = load i64, ptr %i.a, align 8, !range !8, !noalias !37, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, -1
  br i1 %.not.i.i, label %bb.b, label %.thread

.thread:                                          ; preds = %.noexc
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.410.0..sroa_idx.i.i, i64 40, i1 false), !noalias !37
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.511.0.copyload.i.i = load i64, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !37
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.413.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, i64 40, i1 false), !noalias !38
  %.sroa.514.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %.sroa.511.0.copyload.i.i, ptr %.sroa.514.0..sroa_idx.i.i, align 8, !alias.scope !39
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !37
  br label %bb.e

bb.b:                                             ; preds = %.noexc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14) ]
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !noalias !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, i64 40, i1 false), !noalias !37
  %i.l = load i8, ptr %.val14, align 1, !range !5, !noalias !37, !noundef !4
  %i.m = trunc nuw i8 %i.l to i1
  invoke void @_RNvNtCshVVPy9isBpn_6webpki4cert23remember_cert_extension(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b, i1 noundef zeroext %i.m)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %2) #10
          to label %bb.j unwind label %bb.k

bb.d:                                             ; preds = %bb.b
  %.pr = load i64, ptr %i.c, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !37
  %.not = icmp eq i64 %.pr, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %i.o = phi i64 [ %i.k, %.thread ], [ %.pr, %bb.d ]
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.48.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.o, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %2)
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.p = load i64, ptr %i.i, align 8, !noundef !4
  %i.q = load i64, ptr %i.h, align 8, !noundef !4
  %i.r = icmp eq i64 %i.p, %i.q
  br i1 %i.r, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  ret void

bb.j:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.n

bb.k:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #11
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs2XfPe3Xe4Zx_9untrusted5inputNtB5_5Input8read_allNCNCINvNtCshVVPy9isBpn_6webpki3der13nested_of_mutNCNCNCNvXs3_NtNtB14_3crl5typesNtB1U_26BorrowedCertRevocationListNtB12_7FromDer8from_ders_000E00uNtNtB14_5error5ErrorEB14_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.6.i.i = alloca [40 x i8], align 8        ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  store ptr %i.e, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i64 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.val = load ptr, ptr %3, align 8, !nonnull !4, !align !6, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !48
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !48
  invoke void @_RNvXs_NtCshVVPy9isBpn_6webpki4x509NtB4_9ExtensionNtNtB6_3der7FromDer8from_der(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.j = load i64, ptr %i.a, align 8, !range !8, !noalias !48, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, -1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false), !noalias !48
  br i1 %.not.i.i, label %bb.b, label %.thread

.thread:                                          ; preds = %.noexc
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.511.0.copyload.i.i = load i64, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !48
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.413.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, i64 40, i1 false), !noalias !49
  %.sroa.514.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %.sroa.511.0.copyload.i.i, ptr %.sroa.514.0..sroa_idx.i.i, align 8, !alias.scope !50
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !48
  br label %bb.e

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, i64 40, i1 false), !noalias !48
  invoke void @_RNvMs2_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB5_26BorrowedCertRevocationList18remember_extension(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %2) #10
          to label %bb.j unwind label %bb.k

bb.d:                                             ; preds = %bb.b
  %.pr = load i64, ptr %i.c, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !48
  %.not = icmp eq i64 %.pr, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %i.m = phi i64 [ %i.j, %.thread ], [ %.pr, %bb.d ]
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.48.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.m, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %2)
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.n = load i64, ptr %i.i, align 8, !noundef !4
  %i.o = load i64, ptr %i.h, align 8, !noundef !4
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  ret void

bb.j:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.l

bb.k:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #11
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs2XfPe3Xe4Zx_9untrusted5inputNtB5_5Input8read_allNCNCNCNvNtCshVVPy9isBpn_6webpki12trust_anchor37extract_trust_anchor_from_v1_cert_der000NtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorNtNtB15_5error5ErrorEB15_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [56 x i8], align 8                ; 10 uses
  %i.c = alloca [56 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = alloca [56 x i8], align 8                ; 10 uses
  %i.f = alloca [56 x i8], align 8                ; 10 uses
  %i.g = alloca [72 x i8], align 8                ; 13 uses
  %i.h = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !4
  store ptr %i.i, ptr %i.h, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i64 %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !54
  invoke void @_RNvNtCshVVPy9isBpn_6webpki4cert33lenient_certificate_serial_number(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.a
  %i.n = load i64, ptr %i.f, align 8, !range !8, !noalias !54, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.n, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc
  %.sroa.447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.447.0.copyload.i = load ptr, ptr %.sroa.447.0..sroa_idx.i, align 8, !noalias !54
end_hunk_0
