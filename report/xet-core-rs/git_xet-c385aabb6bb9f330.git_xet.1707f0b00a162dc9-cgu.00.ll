Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/git_xet-c385aabb6bb9f330.git_xet.1707f0b00a162dc9-cgu.00?download=true
inline.NumInlined: 514
inline.NumDeleted: 306
begin_hunk_0_@_RINvXsj_NtNtNtCseHpJhTld930_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs6SYjS1KFWza_10serde_core2de7Visitor9visit_seqQINtB6_15SeqDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEECs1YANDSn9Kib_7git_xet:bb.a
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.s, align 8
  %i.t = icmp eq ptr %.val.i, %.val1.i
  br i1 %i.t, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i._crit_edge, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.lr.ph

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.lr.ph: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.3.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.promoted20 = load i64, ptr %i.u, align 8
  br label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.lr.ph, %bb.k
  %i.v = phi ptr [ %i.p, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.lr.ph ], [ %i.aj, %bb.k ]
  %i.w = phi i64 [ 0, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.lr.ph ], [ %i.al, %bb.k ] ; 3 uses
  %i.x = phi i64 [ %.promoted20, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.lr.ph ], [ %i.aa, %bb.k ]
  %i.y = phi ptr [ %.val.i, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.lr.ph ], [ %i.z, %bb.k ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 3 uses
  store ptr %i.z, ptr %i.d, align 8, !alias.scope !125, !noalias !126
  %.sroa.0.0.copyload2.i.i = load i8, ptr %i.y, align 8, !noalias !127 ; 3 uses
  %.not.i.i = icmp eq i8 %.sroa.0.0.copyload2.i.i, -1
  br i1 %.not.i.i, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i._crit_edge, label %_RINvXs4_NtCs6SYjS1KFWza_10serde_core2deQINtNtNtNtCseHpJhTld930_5serde7private2de7content15SeqDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorENtB6_9SeqAccess17next_element_seedNtBF_14ContentVisitorECs1YANDSn9Kib_7git_xet.exit

.body:                                            ; preds = %bb.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #19
          to label %common.resume unwind label %bb.m

_RINvXs4_NtCs6SYjS1KFWza_10serde_core2deQINtNtNtNtCseHpJhTld930_5serde7private2de7content15SeqDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorENtB6_9SeqAccess17next_element_seedNtBF_14ContentVisitorECs1YANDSn9Kib_7git_xet.exit: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx3.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.7.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx3.sroa_idx.i.i, align 8, !noalias !127 ; 3 uses
  %i.aa = add i64 %i.x, 1                         ; 2 uses
  store i64 %i.aa, ptr %i.u, align 8, !alias.scope !123, !noalias !126
  %i.ab = icmp eq i8 %.sroa.0.0.copyload2.i.i, -2
  br i1 %i.ab, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_RINvXs4_NtCs6SYjS1KFWza_10serde_core2deQINtNtNtNtCseHpJhTld930_5serde7private2de7content15SeqDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorENtB6_9SeqAccess17next_element_seedNtBF_14ContentVisitorECs1YANDSn9Kib_7git_xet.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.5.0.copyload.i.i) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.sroa.5.0.copyload.i.i, ptr %i.ac, align 8
  store i8 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentEECs1YANDSn9Kib_7git_xet.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.e ], [ %i.ah, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentEECs1YANDSn9Kib_7git_xet.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.l

bb.g:                                             ; preds = %_RINvXs4_NtCs6SYjS1KFWza_10serde_core2deQINtNtNtNtCseHpJhTld930_5serde7private2de7content15SeqDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorENtB6_9SeqAccess17next_element_seedNtBF_14ContentVisitorECs1YANDSn9Kib_7git_xet.exit
  %.sroa.7.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx3.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %.sroa.0.0.copyload2.i.i, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx4, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx3.i.i, i64 7, i1 false)
  store ptr %.sroa.7.sroa.5.0.copyload.i.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx4.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx3.sroa_idx.i.i, i64 16, i1 false)
  %i.af = load i64, ptr %i.c, align 8, !range !16, !alias.scope !128, !noundef !5
  %i.ag = icmp eq i64 %i.w, %i.af
  br i1 %i.ag, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentE8grow_oneCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %._crit_edge unwind label %bb.i, !noalias !129

._crit_edge:                                      ; preds = %bb.h
  %.pre = load ptr, ptr %i.r, align 8, !alias.scope !128
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #19
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i._crit_edge: ; preds = %bb.k, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.46)
  %.sroa.46.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.46, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.46.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i8 20, ptr %0, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.46.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.46, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.46)
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge, %bb.g
  %i.aj = phi ptr [ %.pre, %._crit_edge ], [ %i.v, %bb.g ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.aj, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.al = add i64 %i.w, 1                         ; 2 uses
  store i64 %i.al, ptr %i.s, align 8, !alias.scope !128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.am = icmp eq ptr %i.z, %.val1.i
  br i1 %i.am, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i._crit_edge, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentEECs1YANDSn9Kib_7git_xet.exit, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.m:                                             ; preds = %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsj_NtNtNtCseHpJhTld930_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs6SYjS1KFWza_10serde_core2de7Visitor9visit_strNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !12, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !13, !noundef !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = icmp ule i64 %2, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  store i8 12, ptr %0, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsk_NtNtNtCseHpJhTld930_5serde7private2de7contentNtB6_19TagOrContentVisitorNtNtCs6SYjS1KFWza_10serde_core2de15DeserializeSeed11deserializeINtNtCsiWcPrHiWZDL_10serde_json2de6MapKeyNtNtB2l_4read7StrReadEECs1YANDSn9Kib_7git_xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef align 8 dereferenceable(56) initializes((16, 24)) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !149, !noundef !5
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.d, align 8, !alias.scope !149
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.g, align 8, !alias.scope !148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !150
  call void @_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %3), !noalias !151
  %i.h = load i64, ptr %i.b, align 8, !range !152, !noalias !150, !noundef !5 ; 2 uses
  %i.i = icmp eq i64 %i.h, 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !150 ; 6 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !147
  store i8 -2, ptr %0, align 8, !alias.scope !147
  br label %_RINvXsh_NtCsiWcPrHiWZDL_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCseHpJhTld930_5serde7private2de7content19TagOrContentVisitorECs1YANDSn9Kib_7git_xet.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !150 ; 7 uses
  %i.m = trunc nuw i64 %i.h to i1
  %i.n = icmp eq i64 %.sroa.4.0.copyload.i, %2    ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %bcmp.i.i = call i32 @bcmp(ptr nonnull readonly %i.k, ptr nonnull readonly %1, i64 %2), !alias.scope !156, !noalias !147
  %i.o = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.o, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !157
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.4.0.copyload.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !158
  %i.p = load i64, ptr %i.a, align 8, !range !12, !noalias !157, !noundef !5
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !13, !noalias !157, !noundef !5 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.h, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.u = load i64, ptr %i.t, align 8, !noalias !157
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #21, !noalias !158
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.t, align 8, !noalias !157, !nonnull !5, !noundef !5 ; 2 uses
  %i.w = icmp ule i64 %.sroa.4.0.copyload.i, %i.s
  call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !157
  %.not.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull readonly align 1 %i.k, i64 %.sroa.4.0.copyload.i, i1 false), !noalias !159
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  store i8 -1, ptr %0, align 8, !alias.scope !160
  br label %_RINvXsh_NtCsiWcPrHiWZDL_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCseHpJhTld930_5serde7private2de7content19TagOrContentVisitorECs1YANDSn9Kib_7git_xet.exit

bb.k:                                             ; preds = %bb.i, %bb.h
  store i8 12, ptr %0, align 8, !alias.scope !160
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !alias.scope !160
  %.sroa.68.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %.sroa.68.0..sroa_idx.i.i, align 8, !alias.scope !160
  %.sroa.79.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.79.0..sroa_idx.i.i, align 8, !alias.scope !160
  br label %_RINvXsh_NtCsiWcPrHiWZDL_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCseHpJhTld930_5serde7private2de7content19TagOrContentVisitorECs1YANDSn9Kib_7git_xet.exit

bb.l:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  br i1 %i.n, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %bcmp.i4.i = call i32 @bcmp(ptr nonnull readonly %i.k, ptr nonnull readonly %1, i64 %2), !alias.scope !164, !noalias !147
  %i.x = icmp eq i32 %bcmp.i4.i, 0
  br i1 %i.x, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i8 13, ptr %0, align 8, !alias.scope !165
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !165
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !165
  br label %_RINvXsh_NtCsiWcPrHiWZDL_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCseHpJhTld930_5serde7private2de7content19TagOrContentVisitorECs1YANDSn9Kib_7git_xet.exit

bb.o:                                             ; preds = %bb.m
  store i8 -1, ptr %0, align 8, !alias.scope !165
  br label %_RINvXsh_NtCsiWcPrHiWZDL_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCseHpJhTld930_5serde7private2de7content19TagOrContentVisitorECs1YANDSn9Kib_7git_xet.exit

_RINvXsh_NtCsiWcPrHiWZDL_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCseHpJhTld930_5serde7private2de7content19TagOrContentVisitorECs1YANDSn9Kib_7git_xet.exit: ; preds = %bb.b, %bb.j, %bb.k, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !150
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsm_NtNtNtCseHpJhTld930_5serde7private2de7contentINtB6_20TaggedContentVisitorNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec1__NtB1o_23LFSProtocolRequestEventNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize7___FieldENtB2X_7Visitor9visit_mapINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB4v_4read7StrReadEEB1s_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(56) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.413 = alloca [31 x i8], align 1          ; 2 uses
  %i.b = alloca [64 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 13 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  store ptr %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = zext i1 %3 to i8
  store i8 %i.j, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext false, i64 noundef 8, i64 noundef 64)
  %i.k = load i64, ptr %i.a, align 8, !range !12, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !13, !noundef !5 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.o, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.n, ptr %i.g, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 0, ptr %i.s, align 8
  %i.t = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noundef !5 ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  br label %.outer

.outer:                                           ; preds = %bb.m, %bb.c
  %.sroa.0.0.ph = phi i8 [ %i.ai, %bb.m ], [ -1, %bb.c ] ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.outer, %bb.u
  invoke void @_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess13next_key_seedNtNtNtNtCseHpJhTld930_5serde7private2de7content19TagOrContentVisitorECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.v)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, %bb.s, %bb.z
  %.pn = phi { ptr, i32 } [ %i.as, %bb.s ], [ %i.az, %bb.z ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentB19_EEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #19
          to label %common.resume unwind label %bb.aa

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %bb.k, %bb.p, %bb.ac, %bb.d, %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.d
  %i.y = load i8, ptr %i.f, align 8, !range !169, !noundef !5 ; 2 uses
  switch i8 %i.y, label %bb.h [
    i8 -3, label %bb.f
    i8 -2, label %bb.g
    i8 -1, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !5, !align !15, !noundef !5
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ab, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.w

bb.g:                                             ; preds = %bb.e
  %.not19 = icmp eq i8 %.sroa.0.0.ph, -1
  br i1 %.not19, label %bb.ac, label %bb.ab, !prof !11

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.y, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.3.0..sroa_idx, i64 31, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedNtNtNtNtCseHpJhTld930_5serde7private2de7content14ContentVisitorECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %bb.o unwind label %bb.z

bb.i:                                             ; preds = %bb.e
  %.not21 = icmp eq i8 %.sroa.0.0.ph, -1
  br i1 %.not21, label %bb.j, label %bb.k, !prof !10

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec1__NtB2Z_23LFSProtocolRequestEventNtB1e_11Deserialize11deserialize7___FieldEEB33_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec1__NtB26_23LFSProtocolRequestEventNtB18_11Deserialize11deserialize7___FieldEB2a_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.k:                                             ; preds = %bb.i
  %i.ac = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error15duplicate_fieldCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.v)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec1__NtB26_23LFSProtocolRequestEventNtB18_11Deserialize11deserialize7___FieldEB2a_.exit: ; preds = %bb.j
  %i.ad = load i8, ptr %i.e, align 8, !range !17, !noundef !5
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec1__NtB26_23LFSProtocolRequestEventNtB18_11Deserialize11deserialize7___FieldEB2a_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !5, !align !15, !noundef !5
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.ah, align 8
end_hunk_0
begin_hunk_1_@_RINvXsm_NtNtNtCseHpJhTld930_5serde7private2de7contentINtB6_20TaggedContentVisitorNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec1__NtB1o_23LFSProtocolRequestEventNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize7___FieldENtB2X_7Visitor9visit_mapINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB4v_4read7StrReadEEB1s_:bb.a
bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %i.ap = load i64, ptr %i.s, align 8, !alias.scope !170, !noundef !5 ; 3 uses
  %i.aq = load i64, ptr %i.g, align 8, !range !16, !alias.scope !170, !noundef !5
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBN_EE8grow_oneCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.u unwind label %bb.s, !noalias !171

bb.s:                                             ; preds = %bb.r
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBC_EECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b) #19
          to label %.body unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.u:                                             ; preds = %bb.r, %bb.q
  %i.au = load ptr, ptr %i.r, align 8, !alias.scope !170, !nonnull !5, !noundef !5
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.av, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  %i.aw = add i64 %i.ap, 1
  store i64 %i.aw, ptr %i.s, align 8, !alias.scope !170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

bb.v:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.w

bb.w:                                             ; preds = %bb.l, %bb.n, %bb.v, %bb.f
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBG_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentB19_EEECs1YANDSn9Kib_7git_xet.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBN_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume:                                    ; preds = %.body, %bb.x
  %common.resume.op = phi { ptr, i32 } [ %i.ax, %bb.x ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentB19_EEECs1YANDSn9Kib_7git_xet.exit: ; preds = %bb.w
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBN_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %bb.ae

bb.z:                                             ; preds = %bb.h
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #19
          to label %.body unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.body
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.ab:                                            ; preds = %bb.g
  %.sroa.413.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.413, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.413.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i8 %.sroa.0.0.ph, ptr %0, align 8
  %.sroa.411.sroa.3.0..sroa.411.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 21, ptr %.sroa.411.sroa.3.0..sroa.411.0..sroa_idx.sroa_idx, align 8
  %.sroa.411.sroa.4.0..sroa.411.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.411.sroa.4.0..sroa.411.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.413, i64 31, i1 false)
  br label %bb.ae

bb.ac:                                            ; preds = %bb.g
  %i.bb = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error13missing_fieldCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.v)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.bc, align 8
  store i8 -1, ptr %0, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentB19_EEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.ad, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentB19_EEECs1YANDSn9Kib_7git_xet.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsm_NtNtNtCseHpJhTld930_5serde7private2de7contentINtB6_20TaggedContentVisitorNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec1__NtB1o_23LFSProtocolRequestEventNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize7___FieldENtB2X_7Visitor9visit_seqINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB4v_4read7StrReadEEB1s_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 1), (8, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(56) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.5 = alloca [39 x i8], align 1            ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = zext i1 %3 to i8
  store i8 %i.e, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvXs7_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9SeqAccessNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de9SeqAccess17next_element_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec1__NtB31_23LFSProtocolRequestEventNtB1e_11Deserialize11deserialize7___FieldEEB35_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.f = load i8, ptr %i.b, align 8, !range !17, !noundef !5
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !align !15, !noundef !5
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.k = load i8, ptr %i.j, align 1, !range !172, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.k, -1
  br i1 %.not, label %bb.e, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = load ptr, ptr %i.c, align 8, !nonnull !5, !align !15, !noundef !5
  %i.m = load i8, ptr %i.d, align 8, !range !17, !noundef !5
  %i.n = trunc nuw i8 %i.m to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @_RINvXsj_NtNtNtCseHpJhTld930_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs6SYjS1KFWza_10serde_core2de7Visitor9visit_seqINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB24_4read7StrReadEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.l, i1 noundef zeroext %i.n)
  %i.o = load i8, ptr %i.a, align 8, !range !6, !noundef !5
  %i.p = icmp eq i8 %i.o, -1
  br i1 %i.p, label %bb.g, label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noundef !5
  %i.t = call noundef nonnull align 8 ptr @_RNvYNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error13missing_fieldCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.s)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.sink = phi ptr [ %i.t, %bb.e ], [ %i.i, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.u, align 8
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !align !15, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.5.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  store i8 %i.k, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5, i64 39, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsr_NtNtNtCseHpJhTld930_5serde7private2de7contentINtB6_19ContentDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyINtB6_20TaggedContentVisitorNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs0_1__NtB3y_11InitRequestNtB1Z_11Deserialize11deserialize7___FieldEEB3C_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 12 uses
  %i.e = alloca [24 x i8], align 8                ; 13 uses
  %i.f = alloca [72 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 9 uses
  %i.h = alloca [72 x i8], align 8                ; 14 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 11 uses
  %i.l = alloca [32 x i8], align 8                ; 14 uses
  %i.m = alloca [40 x i8], align 8                ; 11 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [32 x i8], align 8                ; 5 uses
  %i.s = alloca [32 x i8], align 8                ; 13 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.413.i.i = alloca [31 x i8], align 1      ; 5 uses
  %i.u = alloca [64 x i8], align 8                ; 9 uses
  %i.v = alloca [32 x i8], align 8                ; 11 uses
  %i.w = alloca [16 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 15 uses
  %i.y = alloca [72 x i8], align 8                ; 4 uses
  %i.z = alloca [40 x i8], align 8                ; 7 uses
  %i.aa = alloca [72 x i8], align 8               ; 25 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [32 x i8], align 8               ; 6 uses
  %i.ad = alloca [32 x i8], align 8               ; 5 uses
  %i.ae = alloca [16 x i8], align 8               ; 7 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.5.i.i = alloca [39 x i8], align 1        ; 5 uses
  %i.ag = alloca [40 x i8], align 8               ; 7 uses
  %i.ah = alloca [40 x i8], align 8               ; 11 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 5 uses
  %i.an = alloca [24 x i8], align 8               ; 5 uses
  %i.ao = alloca [24 x i8], align 8               ; 5 uses
  %i.ap = alloca [24 x i8], align 8               ; 5 uses
  %i.aq = alloca [24 x i8], align 8               ; 5 uses
  %i.ar = alloca [24 x i8], align 8               ; 5 uses
  %i.as = alloca [24 x i8], align 8               ; 5 uses
  %i.at = alloca [24 x i8], align 8               ; 5 uses
  %i.au = alloca [24 x i8], align 8               ; 5 uses
  %i.av = alloca [24 x i8], align 8               ; 5 uses
  %i.aw = alloca [24 x i8], align 8               ; 5 uses
  %i.ax = alloca [32 x i8], align 8               ; 4 uses
  %i.ay = alloca [32 x i8], align 8               ; 4 uses
  %i.az = alloca [24 x i8], align 8               ; 4 uses
  %i.ba = alloca [24 x i8], align 8               ; 4 uses
  %i.bb = load i8, ptr %1, align 8, !range !7, !noundef !5
  switch i8 %i.bb, label %default.unreachable64 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.ai
  ]

default.unreachable64:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !range !17, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !390
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store i8 %i.bd, ptr %i.be, align 1, !noalias !390
  store i8 0, ptr %i.aw, align 8, !noalias !390
  %i.bf = call noundef nonnull align 8 ptr @_RNvXs6_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33), !noalias !389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !390
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.bg, align 8, !alias.scope !389
  store i8 2, ptr %0, align 8, !alias.scope !389
  br label %bb.eh

bb.c:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.bj = zext i8 %i.bi to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !393
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !noalias !393
  store i8 1, ptr %i.av, align 8, !noalias !393
  %i.bl = call noundef nonnull align 8 ptr @_RNvXs6_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.av, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33), !noalias !394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !393
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bl, ptr %i.bm, align 8, !alias.scope !394
  store i8 2, ptr %0, align 8, !alias.scope !394
  br label %bb.eh

bb.d:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bo = load i16, ptr %i.bn, align 2, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.bp = zext i16 %i.bo to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !397
  %i.bq = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.bp, ptr %i.bq, align 8, !noalias !397
  store i8 1, ptr %i.au, align 8, !noalias !397
  %i.br = call noundef nonnull align 8 ptr @_RNvXs6_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.au, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33), !noalias !398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !397
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.br, ptr %i.bs, align 8, !alias.scope !398
  store i8 2, ptr %0, align 8, !alias.scope !398
  br label %bb.eh

bb.e:                                             ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %i.bv = zext i32 %i.bu to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !401
  %i.bw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.bv, ptr %i.bw, align 8, !noalias !401
  store i8 1, ptr %i.at, align 8, !noalias !401
  %i.bx = call noundef nonnull align 8 ptr @_RNvXs6_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.at, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33), !noalias !402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !401
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bx, ptr %i.by, align 8, !alias.scope !402
  store i8 2, ptr %0, align 8, !alias.scope !402
  br label %bb.eh

bb.f:                                             ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !404
  %i.cb = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.ca, ptr %i.cb, align 8, !noalias !404
  store i8 1, ptr %i.as, align 8, !noalias !404
  %i.cc = call noundef nonnull align 8 ptr @_RNvXs6_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.as, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33), !noalias !403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !404
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cc, ptr %i.cd, align 8, !alias.scope !403
  store i8 2, ptr %0, align 8, !alias.scope !403
  br label %bb.eh

bb.g:                                             ; preds = %bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %i.cg = sext i8 %i.cf to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !407
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.cg, ptr %i.ch, align 8, !noalias !407
  store i8 2, ptr %i.ar, align 8, !noalias !407
  %i.ci = call noundef nonnull align 8 ptr @_RNvXs6_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ar, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33), !noalias !408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !407
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ci, ptr %i.cj, align 8, !alias.scope !408
  store i8 2, ptr %0, align 8, !alias.scope !408
  br label %bb.eh

bb.h:                                             ; preds = %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.cl = load i16, ptr %i.ck, align 2, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  %i.cm = sext i16 %i.cl to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !411
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %i.cm, ptr %i.cn, align 8, !noalias !411
  store i8 2, ptr %i.aq, align 8, !noalias !411
  %i.co = call noundef nonnull align 8 ptr @_RNvXs6_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aq, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33), !noalias !412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !411
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.co, ptr %i.cp, align 8, !alias.scope !412
  store i8 2, ptr %0, align 8, !alias.scope !412
  br label %bb.eh

bb.i:                                             ; preds = %bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %i.cs = sext i32 %i.cr to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !415
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %i.cs, ptr %i.ct, align 8, !noalias !415
  store i8 2, ptr %i.ap, align 8, !noalias !415
  %i.cu = call noundef nonnull align 8 ptr @_RNvXs6_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ap, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33), !noalias !416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !415
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cu, ptr %i.cv, align 8, !alias.scope !416
  store i8 2, ptr %0, align 8, !alias.scope !416
  br label %bb.eh

bb.j:                                             ; preds = %bb.a
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
end_hunk_1
begin_hunk_2_@_RINvXsr_NtNtNtCseHpJhTld930_5serde7private2de7contentINtB6_19ContentDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyINtB6_20TaggedContentVisitorNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs0_1__NtB3y_11InitRequestNtB1Z_11Deserialize11deserialize7___FieldEEB3C_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !438
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443)
  %i.et = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.et, label %bb.z, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i: ; preds = %bb.v
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 32
  store ptr %i.eu, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !444, !noalias !445
  %.sroa.0.0.copyload1.i.i.i.i.i = load i8, ptr %.sroa.4.0.copyload, align 8, !noalias !446 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload1.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i
  %.sroa.7.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 1
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !447
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx2.i.i.i.i.i, i64 31, i1 false), !noalias !447
  store i64 1, ptr %i.es, align 8, !alias.scope !448, !noalias !445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !447
  store i8 %.sroa.0.0.copyload1.i.i.i.i.i, ptr %i.ad, align 8, !noalias !447
  invoke fastcc void @_RINvXs3_NtCs6SYjS1KFWza_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs0_1__NtB1q_11InitRequestNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCseHpJhTld930_5serde7private2de7content19ContentDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEEB1u_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ae, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.ad) #22
          to label %.noexc.i unwind label %bb.ah, !noalias !438

.noexc.i:                                         ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !447
  %i.ev = load i8, ptr %i.ae, align 8, !range !17, !noalias !447, !noundef !5
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.noexc.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !noalias !447, !nonnull !5, !align !15, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !447
  br label %.noexc9.i

bb.y:                                             ; preds = %.noexc.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.fa = load i8, ptr %i.ez, align 1, !range !17, !noalias !447, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !447
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  invoke fastcc void @_RINvXsj_NtNtNtCseHpJhTld930_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs6SYjS1KFWza_10serde_core2de7Visitor9visit_seqQINtB6_15SeqDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ah)
          to label %.noexc8.i unwind label %bb.ah, !noalias !438

.noexc8.i:                                        ; preds = %bb.y
  %i.fb = load i8, ptr %i.af, align 8, !range !6, !noalias !449, !noundef !5
  %i.fc = icmp eq i8 %i.fb, -1
  br i1 %i.fc, label %bb.aa, label %bb.ac

bb.z:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i, %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %i.fd = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error13missing_fieldCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val3, i64 noundef %.val4)
          to label %.noexc9.i unwind label %bb.ah, !noalias !438

.noexc9.i:                                        ; preds = %bb.z, %bb.x
  %.sink.i.i = phi ptr [ %i.ey, %bb.x ], [ %i.fd, %bb.z ]
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i.i, ptr %i.fe, align 8, !alias.scope !450
  store i8 2, ptr %0, align 8, !alias.scope !450
  br label %bb.ab

bb.aa:                                            ; preds = %.noexc8.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !noalias !449, !nonnull !5, !align !15, !noundef !5
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fg, ptr %i.fh, align 8, !alias.scope !450
  store i8 2, ptr %0, align 8, !alias.scope !450
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.noexc9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !438
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ah), !noalias !438
  br label %_RINvNtNtNtCseHpJhTld930_5serde7private2de7content17visit_content_seqINtB2_20TaggedContentVisitorNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs0_1__NtB1D_11InitRequestNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize7___FieldENtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEB1H_.exit

bb.ac:                                            ; preds = %.noexc8.i
  %.sroa.5.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.i.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.5.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 32, i1 false), !noalias !449
  store i8 %i.fa, ptr %0, align 8, !alias.scope !450
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.i.i, i64 39, i1 false), !noalias !451
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !438
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !noalias !452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !453
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false), !noalias !438
  %.sroa.4.0.copyload.i = load i64, ptr %i.es, align 8, !noalias !438 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.val.i.i.i = load ptr, ptr %i.fi, align 8, !alias.scope !454, !noalias !453, !nonnull !5, !noundef !5 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.val3.i.i.i = load ptr, ptr %i.fj, align 8, !alias.scope !454, !noalias !453, !nonnull !5, !noundef !5 ; 2 uses
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %.noexc10.i unwind label %bb.ae, !noalias !438

.noexc10.i:                                       ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !453
  %i.fk = icmp eq ptr %.val3.i.i.i, %.val.i.i.i
  br i1 %i.fk, label %bb.af, label %bb.ad, !prof !10

bb.ad:                                            ; preds = %.noexc10.i
  %i.fl = ptrtoint ptr %.val.i.i.i to i64
  %i.fm = ptrtoint ptr %.val3.i.i.i to i64
  %i.fn = sub nuw i64 %i.fm, %i.fl
  %i.fo = lshr exact i64 %i.fn, 5
  %i.fp = add i64 %i.fo, %.sroa.4.0.copyload.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !453
  store i64 %.sroa.4.0.copyload.i, ptr %i.ab, align 8, !noalias !453
  %i.fq = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error14invalid_lengthCs1YANDSn9Kib_7git_xet(i64 noundef %i.fp, ptr noundef nonnull %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs0_1__NtBJ_11InitRequestNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize7___FieldNtNtNtB2a_7private7content7ContentEEBN_.exit14.i unwind label %bb.ae, !noalias !438

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fr = landingpad { ptr, i32 }
          cleanup
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(32) %i.fs)
          to label %common.resume unwind label %bb.ag, !noalias !438

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs0_1__NtBJ_11InitRequestNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize7___FieldNtNtNtB2a_7private7content7ContentEEBN_.exit14.i: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !453
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fq, ptr %i.ft, align 8, !alias.scope !437
  store i8 2, ptr %0, align 8, !alias.scope !437
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(32) %i.fu), !noalias !438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !438
  br label %_RINvNtNtNtCseHpJhTld930_5serde7private2de7content17visit_content_seqINtB2_20TaggedContentVisitorNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs0_1__NtB1D_11InitRequestNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize7___FieldENtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEB1H_.exit

bb.af:                                            ; preds = %.noexc10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !438
  br label %_RINvNtNtNtCseHpJhTld930_5serde7private2de7content17visit_content_seqINtB2_20TaggedContentVisitorNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs0_1__NtB1D_11InitRequestNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize7___FieldENtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEB1H_.exit

bb.ag:                                            ; preds = %bb.ah, %bb.ae
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !438
  unreachable

common.resume.sink.split:                         ; preds = %bb.ek, %bb.ei
  %.sink = phi ptr [ %i.ej, %bb.ei ], [ %i.en, %bb.ek ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.mj, %bb.ei ], [ %i.mk, %bb.ek ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 32, i64 noundef 8) #20
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.dy, %bb.dz, %bb.ed, %.thread8.i, %bb.ae, %bb.ah
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body7.i, %.thread8.i ], [ %i.fr, %bb.ae ], [ %lpad.thr_comm.i, %bb.ah ], [ %i.ly, %bb.dy ], [ %i.ly, %bb.dz ], [ %i.mf, %bb.ed ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.ah:                                            ; preds = %bb.z, %bb.y, %bb.w
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ah)
          to label %common.resume unwind label %bb.ag, !noalias !438

_RINvNtNtNtCseHpJhTld930_5serde7private2de7content17visit_content_seqINtB2_20TaggedContentVisitorNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs0_1__NtB1D_11InitRequestNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize7___FieldENtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEB1H_.exit: ; preds = %bb.ab, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs0_1__NtBJ_11InitRequestNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize7___FieldNtNtNtB2a_7private7content7ContentEEBN_.exit14.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !438
  br label %bb.eh

bb.ai:                                            ; preds = %bb.a
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.018.0.copyload = load i64, ptr %i.fw, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.419.0.copyload = load ptr, ptr %.sroa.419.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.520.0.copyload = load i64, ptr %.sroa.520.0..sroa_idx, align 8 ; 4 uses
  %.val5 = load ptr, ptr %2, align 8              ; 7 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val6 = load i64, ptr %i.fx, align 8           ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !456
  %i.fy = icmp ult i64 %.sroa.520.0.copyload, 144115188075855872
  tail call void @llvm.assume(i1 %i.fy)
  %.idx.i7 = shl nuw nsw i64 %.sroa.520.0.copyload, 6
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.419.0.copyload, i64 %.idx.i7
  %i.ga = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  store ptr %.sroa.419.0.copyload, ptr %i.ga, align 8, !noalias !456
  %.sroa.4.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 3 uses
  store ptr %.sroa.419.0.copyload, ptr %.sroa.4.0..sroa_idx.i8, align 8, !noalias !456
  %.sroa.5.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store i64 %.sroa.018.0.copyload, ptr %.sroa.5.0..sroa_idx.i9, align 8, !noalias !456
  %.sroa.6.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %i.aa, i64 56 ; 2 uses
  store ptr %i.fz, ptr %.sroa.6.0..sroa_idx.i10, align 8, !noalias !456
  store i8 -1, ptr %i.aa, align 8, !noalias !456
  %i.gb = getelementptr inbounds nuw i8, ptr %i.aa, i64 64 ; 3 uses
  store i64 0, ptr %i.gb, align 8, !noalias !456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.413.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !459
  %..i.i.i = tail call noundef range(i64 0, 32769) i64 @llvm.umin.i64(i64 %.sroa.520.0.copyload, i64 16384) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !459
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, i64 noundef %..i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 64)
          to label %.noexc.i12 unwind label %.thread12.i, !noalias !456

.noexc.i12:                                       ; preds = %bb.ai
  %i.gc = load i64, ptr %i.t, align 8, !range !12, !noalias !459, !noundef !5
  %i.gd = trunc nuw i64 %i.gc to i1
  br i1 %i.gd, label %bb.aj, label %bb.ak, !prof !11

bb.aj:                                            ; preds = %.noexc.i12
  %3 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %4 = load i64, ptr %3, align 8, !range !13, !noalias !459, !noundef !5
  %5 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ge = load i64, ptr %5, align 8, !noalias !459
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %4, i64 %i.ge) #21
          to label %.noexc10.i15 unwind label %.thread12.i, !noalias !456

.noexc10.i15:                                     ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %.noexc.i12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  %6 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %7 = load i64, ptr %6, align 8, !range !16, !noalias !459, !noundef !5 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.gf = load ptr, ptr %8, align 8, !noalias !459, !nonnull !5, !noundef !5
  %i.gg = icmp samesign ule i64 %..i.i.i, %7
  tail call void @llvm.assume(i1 %i.gg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !459
  store i64 %7, ptr %i.x, align 8, !noalias !459
  %i.gh = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr %i.gf, ptr %i.gh, align 8, !noalias !459
  %i.gi = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  store i64 0, ptr %i.gi, align 8, !noalias !459
  %i.gj = icmp eq i64 %.sroa.520.0.copyload, 0
  br i1 %i.gj, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i._crit_edge.thread.i.i, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.lr.ph.i.i

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.lr.ph.i.i: ; preds = %bb.ak
  %.sroa.9.0..sroa_idx15.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.sroa.7101.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.9102.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.gk = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %.sroa.4.0..sroa_idx.i36.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 5 uses
  %.sroa.5.0..sroa_idx.i37.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.6.0..sroa_idx.i38.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.gl = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.423.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.624.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0..sroa_idx4.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx4.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx4.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx4.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 33
  %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx4.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx4.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.52.0..sroa_idx47.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.67.0..sroa_idx54.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.72.0..sroa_idx63.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.4.0..sroa_idx.i33.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.5.0..sroa_idx.i34.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.6.0..sroa_idx.i35.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.gq = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %.sroa.39.0..sroa_idx22.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.sroa.46.0..sroa_idx31.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %.sroa.48.0..sroa_idx40.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.52.0..sroa_idx49.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.sroa.67.0..sroa_idx56.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.72.0..sroa_idx65.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.39.0..sroa_idx24.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.sroa.46.0..sroa_idx33.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %.sroa.48.0..sroa_idx42.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.52.0..sroa_idx51.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.67.0..sroa_idx58.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.72.0..sroa_idx67.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.gr = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.657.0..sroa_idx58.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %.sroa.760.0..sroa_idx61.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.865.0..sroa_idx66.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.6.0..sroa_idx43.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %.sroa.7.0..sroa_idx45.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.8.0..sroa_idx49.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.26.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.30.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.26.8..sroa_idx90.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.30.8..sroa_idx95.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i13 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.gt = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.7.1..sroa.5.0..sroa_idx.i.i33.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.84.1..sroa.5.0..sroa_idx.i.i33.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 33
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  br label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.i.i

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.i.i: ; preds = %bb.dj, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.lr.ph.i.i
  %i.gv = phi ptr [ %.sroa.419.0.copyload, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.lr.ph.i.i ], [ %i.lf, %bb.dj ] ; 4 uses
  %.sroa.0.0117.i.i = phi i8 [ 2, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.lr.ph.i.i ], [ %.sroa.0.1.i.i, %bb.dj ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !460)
  call void @llvm.experimental.noalias.scope.decl(metadata !461)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 64
  store ptr %i.gw, ptr %.sroa.4.0..sroa_idx.i8, align 8, !alias.scope !462, !noalias !463
  %.sroa.0.0.copyload.i.i.i.i = load i8, ptr %i.gv, align 8, !noalias !464 ; 4 uses
  %.not.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i._crit_edge.i.i, label %bb.al

bb.al:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.i.i
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gv, i64 1
  %i.gx = load i64, ptr %i.gb, align 8, !alias.scope !465, !noalias !463, !noundef !5
  %i.gy = add i64 %i.gx, 1
  store i64 %i.gy, ptr %i.gb, align 8, !alias.scope !465, !noalias !463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !466
  store i8 %.sroa.0.0.copyload.i.i.i.i, ptr %i.s, align 8, !noalias !466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9.0..sroa_idx15.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9.0..sroa_idx.i.i.i.i, i64 31, i1 false), !noalias !467
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.gz, i64 32, i1 false), !noalias !467
  %i.ha = load i8, ptr %i.aa, align 8, !range !6, !alias.scope !468, !noalias !463, !noundef !5
  %i.hb = icmp eq i8 %i.ha, -1
  br i1 %i.hb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentEECs1YANDSn9Kib_7git_xet.exit.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.aa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentEECs1YANDSn9Kib_7git_xet.exit.i.i.i.i unwind label %bb.cw, !noalias !467

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentEECs1YANDSn9Kib_7git_xet.exit.i.i.i.i: ; preds = %bb.am, %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !noalias !467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.4100.0.copyload.i.i.i.i = load i8, ptr %.sroa.9.0..sroa_idx15.i.i.i.i, align 1, !noalias !466 ; 14 uses
  %.sroa.5.0.copyload.i.i.i.i = load i16, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 2, !noalias !466 ; 14 uses
  %.sroa.6.0.copyload.i.i.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 4, !noalias !466 ; 14 uses
  %.sroa.7101.0.copyload.i.i.i.i = load i64, ptr %.sroa.7101.0..sroa_idx.i.i.i.i, align 8, !noalias !466 ; 13 uses
  %.sroa.8.0.copyload.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !noalias !466 ; 14 uses
  %.sroa.9102.0.copyload.i.i.i.i = load i64, ptr %.sroa.9102.0..sroa_idx.i.i.i.i, align 8, !noalias !466 ; 12 uses
  switch i8 %.sroa.0.0.copyload.i.i.i.i, label %default.unreachable.i.i.i.i.i [
    i8 0, label %.thread37.i.i
    i8 1, label %.thread37.i.i
    i8 2, label %.thread37.i.i
    i8 3, label %.thread37.i.i
    i8 4, label %.thread37.i.i
    i8 5, label %.thread37.i.i
    i8 6, label %.thread37.i.i
    i8 7, label %.thread37.i.i
    i8 8, label %.thread37.i.i
    i8 9, label %.thread37.i.i
    i8 10, label %.thread37.i.i
    i8 11, label %.thread37.i.i
    i8 12, label %bb.an
    i8 13, label %bb.as
    i8 14, label %bb.au
    i8 15, label %bb.az
    i8 16, label %.thread37.i.i
    i8 17, label %bb.bb
    i8 18, label %.thread37.i.i
    i8 19, label %bb.bi
    i8 20, label %bb.bp
    i8 21, label %bb.bz
  ]

default.unreachable.i.i.i.i.i:                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentEECs1YANDSn9Kib_7git_xet.exit.i.i.i.i
  unreachable

bb.an:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentEECs1YANDSn9Kib_7git_xet.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !469
  store i64 %.sroa.7101.0.copyload.i.i.i.i, ptr %i.q, align 8, !noalias !470
  store i64 %.sroa.8.0.copyload.i.i.i.i, ptr %.sroa.26.8..sroa_idx90.i.i.i.i, align 8, !noalias !470
  store i64 %.sroa.9102.0.copyload.i.i.i.i, ptr %.sroa.30.8..sroa_idx95.i.i.i.i, align 8, !noalias !470
  %i.hc = icmp eq i64 %.sroa.9102.0.copyload.i.i.i.i, %.val6
  br i1 %i.hc, label %bb.ao, label %_RINvXsl_NtNtNtCseHpJhTld930_5serde7private2de7contentNtB6_19TagOrContentVisitorNtNtCs6SYjS1KFWza_10serde_core2de7Visitor12visit_stringNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.hd = inttoptr i64 %.sroa.8.0.copyload.i.i.i.i to ptr
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.hd, ptr nonnull readonly %.val5, i64 %.val6), !noalias !471
  %i.he = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.he, label %bb.ap, label %_RINvXsl_NtNtNtCseHpJhTld930_5serde7private2de7contentNtB6_19TagOrContentVisitorNtNtCs6SYjS1KFWza_10serde_core2de7Visitor12visit_stringNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i.i unwind label %bb.aq, !noalias !472

bb.aq:                                            ; preds = %bb.ap
  %i.hf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body.i.i unwind label %bb.ar, !noalias !472

bb.ar:                                            ; preds = %bb.aq
  %i.hg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !472
  unreachable

common.resume.sink.split.i.i.i.i.i.i:             ; preds = %bb.bl, %bb.be
  %.sink.i.i.i.i.i.i = phi ptr [ %i.hs, %bb.be ], [ %i.hy, %bb.bl ]
  %common.resume.op.ph.i.i.i.i.i.i = phi { ptr, i32 } [ %i.hw, %bb.be ], [ %i.ic, %bb.bl ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink.i.i.i.i.i.i, i64 noundef 32, i64 noundef 8) #20, !noalias !473
  br label %.body.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i.i: ; preds = %bb.ap
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvXsl_NtNtNtCseHpJhTld930_5serde7private2de7contentNtB6_19TagOrContentVisitorNtNtCs6SYjS1KFWza_10serde_core2de7Visitor12visit_stringNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !474

_RINvXsl_NtNtNtCseHpJhTld930_5serde7private2de7contentNtB6_19TagOrContentVisitorNtNtCs6SYjS1KFWza_10serde_core2de7Visitor12visit_stringNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i.i, %bb.ao, %bb.an
  %.sroa.67.6.i.i.i.i = phi i64 [ %.sroa.8.0.copyload.i.i.i.i, %bb.an ], [ %.sroa.8.0.copyload.i.i.i.i, %bb.ao ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i.i ]
  %.sroa.52.6.i.i.i.i = phi i64 [ %.sroa.7101.0.copyload.i.i.i.i, %bb.an ], [ %.sroa.7101.0.copyload.i.i.i.i, %bb.ao ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i.i ]
  %.sroa.016.6.i.i.i.i = phi i8 [ 12, %bb.an ], [ 12, %bb.ao ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !469
  br label %bb.cz

bb.as:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentEECs1YANDSn9Kib_7git_xet.exit.i.i.i.i
  %i.hh = icmp eq i64 %.sroa.8.0.copyload.i.i.i.i, %.val6
  br i1 %i.hh, label %bb.at, label %.thread37.i.i

bb.at:                                            ; preds = %bb.as
  %i.hi = inttoptr i64 %.sroa.7101.0.copyload.i.i.i.i to ptr
  %bcmp.i14.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %i.hi, ptr nonnull readonly %.val5, i64 %.val6), !alias.scope !475, !noalias !476
  %i.hj = icmp eq i32 %bcmp.i14.i.i.i.i.i.i, 0
  br i1 %i.hj, label %.thread53.i.i, label %.thread37.i.i
end_hunk_2
begin_hunk_3_@_RINvXsr_NtNtNtCseHpJhTld930_5serde7private2de7contentINtB6_19ContentDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyINtB6_20TaggedContentVisitorNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs0_1__NtB3y_11InitRequestNtB1Z_11Deserialize11deserialize7___FieldEEB3C_:bb.a
  store ptr %i.ie, ptr %i.m, align 8, !noalias !490
  store ptr %i.ie, ptr %.sroa.4.0..sroa_idx.i33.i.i.i.i.i.i, align 8, !noalias !490
  store i64 %.sroa.7101.0.copyload.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i34.i.i.i.i.i.i, align 8, !noalias !490
  store ptr %i.ig, ptr %.sroa.6.0..sroa_idx.i35.i.i.i.i.i.i, align 8, !noalias !490
  store i64 0, ptr %i.gq, align 8, !noalias !490
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !490
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !491
  invoke fastcc void @_RINvXsj_NtNtNtCseHpJhTld930_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs6SYjS1KFWza_10serde_core2de7Visitor9visit_seqQINtB6_15SeqDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.m)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.by, !noalias !492

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.bp
  %i.ih = load i8, ptr %i.k, align 8, !range !6, !noalias !491, !noundef !5 ; 3 uses
  %i.ii = icmp eq i8 %i.ih, -1
  br i1 %i.ii, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %.noexc.i.i.i.i.i.i.i
  %i.ij = load ptr, ptr %.sroa.52.0..sroa_idx49.i.i.i.i, align 8, !noalias !491, !nonnull !5, !align !15, !noundef !5
  %i.ik = ptrtoint ptr %i.ij to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !490
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.m)
          to label %_RINvNtNtNtCseHpJhTld930_5serde7private2de7content17visit_content_seqNtB2_19TagOrContentVisitorNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !474

bb.br:                                            ; preds = %.noexc.i.i.i.i.i.i.i
  %.sroa.39.0.copyload23.i.i.i.i = load i8, ptr %.sroa.39.0..sroa_idx22.i.i.i.i, align 1, !noalias !493 ; 2 uses
  %.sroa.46.0.copyload32.i.i.i.i = load i16, ptr %.sroa.46.0..sroa_idx31.i.i.i.i, align 2, !noalias !493 ; 2 uses
  %.sroa.48.0.copyload41.i.i.i.i = load i32, ptr %.sroa.48.0..sroa_idx40.i.i.i.i, align 4, !noalias !493 ; 2 uses
  %.sroa.52.0.copyload50.i.i.i.i = load i64, ptr %.sroa.52.0..sroa_idx49.i.i.i.i, align 8, !noalias !493 ; 2 uses
  %.sroa.67.0.copyload57.i.i.i.i = load i64, ptr %.sroa.67.0..sroa_idx56.i.i.i.i, align 8, !noalias !493 ; 2 uses
  %.sroa.72.0.copyload66.i.i.i.i = load i64, ptr %.sroa.72.0..sroa_idx65.i.i.i.i, align 8, !noalias !493 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !491
  store i8 %i.ih, ptr %i.l, align 8, !noalias !494
  store i8 %.sroa.39.0.copyload23.i.i.i.i, ptr %.sroa.39.0..sroa_idx24.i.i.i.i, align 1, !noalias !494
  store i16 %.sroa.46.0.copyload32.i.i.i.i, ptr %.sroa.46.0..sroa_idx33.i.i.i.i, align 2, !noalias !494
  store i32 %.sroa.48.0.copyload41.i.i.i.i, ptr %.sroa.48.0..sroa_idx42.i.i.i.i, align 4, !noalias !494
  store i64 %.sroa.52.0.copyload50.i.i.i.i, ptr %.sroa.52.0..sroa_idx51.i.i.i.i, align 8, !noalias !494
  store i64 %.sroa.67.0.copyload57.i.i.i.i, ptr %.sroa.67.0..sroa_idx58.i.i.i.i, align 8, !noalias !494
  store i64 %.sroa.72.0.copyload66.i.i.i.i, ptr %.sroa.72.0..sroa_idx67.i.i.i.i, align 8, !noalias !494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !495
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !490
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.gq, align 8, !noalias !490 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.gr, align 8, !alias.scope !496, !noalias !495, !nonnull !5, !noundef !5 ; 2 uses
  %.val3.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.gs, align 8, !alias.scope !496, !noalias !495, !nonnull !5, !noundef !5 ; 2 uses
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %.noexc7.i.i.i.i.i.i.i unwind label %bb.bt, !noalias !492

.noexc7.i.i.i.i.i.i.i:                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !495
  %i.il = icmp eq ptr %.val3.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i.i
  br i1 %i.il, label %_RINvNtNtNtCseHpJhTld930_5serde7private2de7content17visit_content_seqNtB2_19TagOrContentVisitorNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.sink.split.i.i, label %bb.bs, !prof !10

bb.bs:                                            ; preds = %.noexc7.i.i.i.i.i.i.i
  %i.im = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i to i64
  %i.in = ptrtoint ptr %.val3.i.i.i.i.i.i.i.i.i to i64
  %i.io = sub nuw i64 %i.in, %i.im
  %i.ip = lshr exact i64 %i.io, 5
  %i.iq = add i64 %i.ip, %.sroa.4.0.copyload.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !495
  store i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, ptr %i.i, align 8, !noalias !495
  %i.ir = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error14invalid_lengthCs1YANDSn9Kib_7git_xet(i64 noundef %i.iq, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35)
          to label %bb.bv unwind label %bb.bt, !noalias !492

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.is = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.it = load i8, ptr %i.l, align 8, !range !6, !alias.scope !497, !noalias !490, !noundef !5
  %i.iu = icmp eq i8 %i.it, -1
  br i1 %i.iu, label %.body.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %.body.i.i unwind label %bb.bx, !noalias !492

bb.bv:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !495
  %i.iv = ptrtoint ptr %i.ir to i64               ; 2 uses
  %i.iw = load i8, ptr %i.l, align 8, !range !6, !alias.scope !498, !noalias !490, !noundef !5
  %i.ix = icmp eq i8 %i.iw, -1
  br i1 %i.ix, label %_RINvNtNtNtCseHpJhTld930_5serde7private2de7content17visit_content_seqNtB2_19TagOrContentVisitorNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.sink.split.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_RINvNtNtNtCseHpJhTld930_5serde7private2de7content17visit_content_seqNtB2_19TagOrContentVisitorNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.sink.split.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !474

bb.bx:                                            ; preds = %bb.by, %bb.bu
  %i.iy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !492
  unreachable

bb.by:                                            ; preds = %bb.bp
  %i.iz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.m)
          to label %.body.i.i unwind label %bb.bx, !noalias !492

_RINvNtNtNtCseHpJhTld930_5serde7private2de7content17visit_content_seqNtB2_19TagOrContentVisitorNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.sink.split.i.i: ; preds = %bb.bw, %bb.bv, %.noexc7.i.i.i.i.i.i.i
  %.sroa.52.1.i.i.ph.i.i = phi i64 [ %.sroa.52.0.copyload50.i.i.i.i, %.noexc7.i.i.i.i.i.i.i ], [ %i.iv, %bb.bw ], [ %i.iv, %bb.bv ]
  %.sroa.016.1.i.i.ph.i.i = phi i8 [ %i.ih, %.noexc7.i.i.i.i.i.i.i ], [ -2, %bb.bw ], [ -2, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !490
  br label %_RINvNtNtNtCseHpJhTld930_5serde7private2de7content17visit_content_seqNtB2_19TagOrContentVisitorNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i

_RINvNtNtNtCseHpJhTld930_5serde7private2de7content17visit_content_seqNtB2_19TagOrContentVisitorNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i: ; preds = %_RINvNtNtNtCseHpJhTld930_5serde7private2de7content17visit_content_seqNtB2_19TagOrContentVisitorNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.sink.split.i.i, %bb.bq
  %.sroa.72.1.i.i.i.i = phi i64 [ undef, %bb.bq ], [ %.sroa.72.0.copyload66.i.i.i.i, %_RINvNtNtNtCseHpJhTld930_5serde7private2de7content17visit_content_seqNtB2_19TagOrContentVisitorNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.sink.split.i.i ]
  %.sroa.67.1.i.i.i.i = phi i64 [ undef, %bb.bq ], [ %.sroa.67.0.copyload57.i.i.i.i, %_RINvNtNtNtCseHpJhTld930_5serde7private2de7content17visit_content_seqNtB2_19TagOrContentVisitorNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.sink.split.i.i ]
  %.sroa.52.1.i.i.i.i = phi i64 [ %i.ik, %bb.bq ], [ %.sroa.52.1.i.i.ph.i.i, %_RINvNtNtNtCseHpJhTld930_5serde7private2de7content17visit_content_seqNtB2_19TagOrContentVisitorNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.sink.split.i.i ]
  %.sroa.48.0.i.i.i.i = phi i32 [ undef, %bb.bq ], [ %.sroa.48.0.copyload41.i.i.i.i, %_RINvNtNtNtCseHpJhTld930_5serde7private2de7content17visit_content_seqNtB2_19TagOrContentVisitorNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.sink.split.i.i ]
  %.sroa.46.0.i.i.i.i = phi i16 [ undef, %bb.bq ], [ %.sroa.46.0.copyload32.i.i.i.i, %_RINvNtNtNtCseHpJhTld930_5serde7private2de7content17visit_content_seqNtB2_19TagOrContentVisitorNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.sink.split.i.i ]
  %.sroa.39.0.i.i.i.i = phi i8 [ undef, %bb.bq ], [ %.sroa.39.0.copyload23.i.i.i.i, %_RINvNtNtNtCseHpJhTld930_5serde7private2de7content17visit_content_seqNtB2_19TagOrContentVisitorNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.sink.split.i.i ]
  %.sroa.016.1.i.i.i.i = phi i8 [ -2, %bb.bq ], [ %.sroa.016.1.i.i.ph.i.i, %_RINvNtNtNtCseHpJhTld930_5serde7private2de7content17visit_content_seqNtB2_19TagOrContentVisitorNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.sink.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !490
  br label %_RINvXsk_NtNtNtCseHpJhTld930_5serde7private2de7contentNtB6_19TagOrContentVisitorNtNtCs6SYjS1KFWza_10serde_core2de15DeserializeSeed11deserializeINtB6_19ContentDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEECs1YANDSn9Kib_7git_xet.exit.i.i.i.i

bb.bz:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentEECs1YANDSn9Kib_7git_xet.exit.i.i.i.i
  %i.ja = inttoptr i64 %.sroa.8.0.copyload.i.i.i.i to ptr ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !499
  %i.jb = icmp ult i64 %.sroa.9102.0.copyload.i.i.i.i, 144115188075855872
  call void @llvm.assume(i1 %i.jb)
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.9102.0.copyload.i.i.i.i, 6
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 %.idx.i.i.i.i.i.i.i ; 3 uses
  store ptr %i.ja, ptr %i.gk, align 8, !noalias !499
  store ptr %i.ja, ptr %.sroa.4.0..sroa_idx.i36.i.i.i.i.i.i, align 8, !noalias !499
  store i64 %.sroa.7101.0.copyload.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i37.i.i.i.i.i.i, align 8, !noalias !499
  store ptr %i.jc, ptr %.sroa.6.0..sroa_idx.i38.i.i.i.i.i.i, align 8, !noalias !499
  store i8 -1, ptr %i.h, align 8, !noalias !499
  store i64 0, ptr %i.gl, align 8, !noalias !499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !499
  call void @llvm.experimental.noalias.scope.decl(metadata !500)
  call void @llvm.experimental.noalias.scope.decl(metadata !501)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !502
  %..i.i.i.i.i.i.i.i.i.i = call noundef range(i64 0, 32769) i64 @llvm.umin.i64(i64 %.sroa.9102.0.copyload.i.i.i.i, i64 16384) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !502
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %..i.i.i.i.i.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 64)
          to label %.noexc.i39.i.i.i.i.i.i unwind label %.thread9.i.i.i.i.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !503

.noexc.i39.i.i.i.i.i.i:                           ; preds = %bb.bz
  %i.jd = load i64, ptr %i.c, align 8, !range !12, !noalias !502, !noundef !5
  %i.je = trunc nuw i64 %i.jd to i1
  %i.jf = load i64, ptr %i.gm, align 8, !range !13, !noalias !502, !noundef !5 ; 4 uses
  br i1 %i.je, label %bb.ca, label %bb.cb, !prof !11

bb.ca:                                            ; preds = %.noexc.i39.i.i.i.i.i.i
  %i.jg = load i64, ptr %i.gn, align 8, !noalias !502
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.jf, i64 %i.jg) #21
          to label %.noexc9.i.i.i.i.i.i.i unwind label %.thread9.i.i.i.i.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !503

.noexc9.i.i.i.i.i.i.i:                            ; preds = %bb.ca
  unreachable

bb.cb:                                            ; preds = %.noexc.i39.i.i.i.i.i.i
  %i.jh = load ptr, ptr %i.gn, align 8, !noalias !502, !nonnull !5, !noundef !5 ; 3 uses
  %i.ji = icmp samesign ule i64 %..i.i.i.i.i.i.i.i.i.i, %i.jf
  call void @llvm.assume(i1 %i.ji)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !502
  store i64 %i.jf, ptr %i.e, align 8, !noalias !502
  store ptr %i.jh, ptr %i.go, align 8, !noalias !502
  store i64 0, ptr %i.gp, align 8, !noalias !502
  %i.jj = icmp eq i64 %.sroa.9102.0.copyload.i.i.i.i, 0
  %i.jk = ptrtoint ptr %i.jh to i64               ; 2 uses
  br i1 %i.jj, label %bb.cs, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.i.preheader.i.i.i.i.i.i.i.i

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.i.preheader.i.i.i.i.i.i.i.i: ; preds = %bb.cb
  %.promoted29.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gl, align 8, !alias.scope !504, !noalias !499
  br label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i.i.i.i.i.i

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ck, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.i.preheader.i.i.i.i.i.i.i.i
  %.sroa.67.16.copyload168.i.i.i.i = phi i64 [ %.sroa.67.16.copyload166.i.i.i.i, %bb.ck ], [ %i.jk, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.i.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.jl = phi ptr [ %i.jp, %bb.ck ], [ %i.ja, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.i.preheader.i.i.i.i.i.i.i.i ] ; 9 uses
  %i.jm = phi i64 [ %i.jq, %bb.ck ], [ %.promoted29.i.i.i.i.i.i.i.i.i, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.i.preheader.i.i.i.i.i.i.i.i ]
  %i.jn = phi i64 [ %i.kd, %bb.ck ], [ 0, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.i.preheader.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.jo = phi ptr [ %i.kb, %bb.ck ], [ %i.jh, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.i.preheader.i.i.i.i.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  call void @llvm.experimental.noalias.scope.decl(metadata !506)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 64 ; 6 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.jl, align 8, !noalias !507 ; 4 uses
  %.sroa.10.sroa.8.0..sroa.10.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jl, i64 32
  %.sroa.10.sroa.8.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.10.sroa.8.0..sroa.10.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !507 ; 2 uses
  %.sroa.10.sroa.8.sroa.6.0..sroa.10.sroa.8.0..sroa.10.0..sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jl, i64 33
  %.sroa.10.sroa.8.sroa.7.0..sroa.10.sroa.8.0..sroa.10.0..sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jl, i64 40
  %.sroa.10.sroa.8.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.10.sroa.8.sroa.7.0..sroa.10.sroa.8.0..sroa.10.0..sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !507 ; 3 uses
  %.sroa.10.sroa.8.sroa.8.0..sroa.10.sroa.8.0..sroa.10.0..sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jl, i64 48
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.i._crit_edge.loopexit.i.i.i.i.i.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.sroa.7.0..sroa.10.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jl, i64 16 ; 2 uses
  %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %.sroa.10.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !507 ; 3 uses
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jl, i64 1 ; 2 uses
  %i.jq = add i64 %i.jm, 1                        ; 2 uses
  store i64 %i.jq, ptr %i.gl, align 8, !alias.scope !508, !noalias !509
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !510
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.423.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !511
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.624.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.7.0..sroa.10.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !511
  store i8 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %i.b, align 8, !noalias !510
  store ptr %.sroa.10.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !510
  %i.jr = icmp eq i8 %.sroa.10.sroa.8.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %i.jr, label %bb.cd, label %_RINvXs5_NtCs6SYjS1KFWza_10serde_core2deQINtNtNtNtCseHpJhTld930_5serde7private2de7content15MapDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorENtB6_9MapAccess15next_entry_seedNtBF_14ContentVisitorB2S_ECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i.i.i.i

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.sroa.8.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i) ]
  store ptr %i.jp, ptr %.sroa.4.0..sroa_idx.i36.i.i.i.i.i.i, align 8, !alias.scope !512, !noalias !509
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b)
          to label %_RINvXs5_NtCs6SYjS1KFWza_10serde_core2deQINtNtNtNtCseHpJhTld930_5serde7private2de7content15MapDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorENtB6_9MapAccess15next_entry_seedNtBF_14ContentVisitorB2S_ECs1YANDSn9Kib_7git_xet.exit.thread21.i.i.i.i.i.i.i.i.i unwind label %bb.ce, !noalias !513

_RINvXs5_NtCs6SYjS1KFWza_10serde_core2deQINtNtNtNtCseHpJhTld930_5serde7private2de7content15MapDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorENtB6_9MapAccess15next_entry_seedNtBF_14ContentVisitorB2S_ECs1YANDSn9Kib_7git_xet.exit.thread21.i.i.i.i.i.i.i.i.i: ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !510
  br label %.loopexit.i.i.i.i.i.i.i.i.i

bb.ce:                                            ; preds = %bb.cd
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i:                          ; preds = %bb.ci, %bb.ce
  %eh.lpad-body.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.js, %bb.ce ], [ %i.jz, %bb.ci ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentB19_EEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #19
          to label %.thread4.i.i.i.i.i.i.i unwind label %bb.cl, !noalias !513

_RINvXs5_NtCs6SYjS1KFWza_10serde_core2deQINtNtNtNtCseHpJhTld930_5serde7private2de7content15MapDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorENtB6_9MapAccess15next_entry_seedNtBF_14ContentVisitorB2S_ECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !510
  %i.jt = icmp eq i8 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -2
  br i1 %i.jt, label %.loopexit.i.i.loopexit.i.i.i.i.i.i.i, label %_RINvXs5_NtCs6SYjS1KFWza_10serde_core2deQINtNtNtNtCseHpJhTld930_5serde7private2de7content15MapDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorENtB6_9MapAccess15next_entry_seedNtBF_14ContentVisitorB2S_ECs1YANDSn9Kib_7git_xet.exit.thread.i.i.i.i.i.i.i.i.i

.loopexit.i.i.loopexit.i.i.i.i.i.i.i:             ; preds = %_RINvXs5_NtCs6SYjS1KFWza_10serde_core2deQINtNtNtNtCseHpJhTld930_5serde7private2de7content15MapDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorENtB6_9MapAccess15next_entry_seedNtBF_14ContentVisitorB2S_ECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i.i.i.i
  store ptr %i.jp, ptr %.sroa.4.0..sroa_idx.i36.i.i.i.i.i.i, align 8, !alias.scope !512, !noalias !509
  br label %.loopexit.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %.loopexit.i.i.loopexit.i.i.i.i.i.i.i, %_RINvXs5_NtCs6SYjS1KFWza_10serde_core2deQINtNtNtNtCseHpJhTld930_5serde7private2de7content15MapDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorENtB6_9MapAccess15next_entry_seedNtBF_14ContentVisitorB2S_ECs1YANDSn9Kib_7git_xet.exit.thread21.i.i.i.i.i.i.i.i.i
  %.sroa.9.026.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.10.sroa.8.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %_RINvXs5_NtCs6SYjS1KFWza_10serde_core2deQINtNtNtNtCseHpJhTld930_5serde7private2de7content15MapDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorENtB6_9MapAccess15next_entry_seedNtBF_14ContentVisitorB2S_ECs1YANDSn9Kib_7git_xet.exit.thread21.i.i.i.i.i.i.i.i.i ], [ %.sroa.10.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.loopexit.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.026.i.i.i.i.i.i.i.i.i) ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBG_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.cm unwind label %bb.cf, !noalias !513

bb.cf:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i
  %i.ju = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBN_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.thread4.i.i.i.i.i.i.i unwind label %bb.cg, !noalias !513

bb.cg:                                            ; preds = %bb.cf
  %i.jv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !513
  unreachable

_RINvXs5_NtCs6SYjS1KFWza_10serde_core2deQINtNtNtNtCseHpJhTld930_5serde7private2de7content15MapDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorENtB6_9MapAccess15next_entry_seedNtBF_14ContentVisitorB2S_ECs1YANDSn9Kib_7git_xet.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_RINvXs5_NtCs6SYjS1KFWza_10serde_core2deQINtNtNtNtCseHpJhTld930_5serde7private2de7content15MapDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorENtB6_9MapAccess15next_entry_seedNtBF_14ContentVisitorB2S_ECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !502
  store i8 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %i.d, align 8, !noalias !502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx4.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !514
  store ptr %.sroa.10.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx4.sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.7.0..sroa.10.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !514
  store i8 %.sroa.10.sroa.8.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx4.sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx4.sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.sroa.8.sroa.6.0..sroa.10.sroa.8.0..sroa.10.0..sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !514
  store ptr %.sroa.10.sroa.8.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx4.sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx4.sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.8.sroa.8.0..sroa.10.sroa.8.0..sroa.10.0..sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !514
  %i.jw = load i64, ptr %i.e, align 8, !range !16, !alias.scope !515, !noalias !502, !noundef !5
  %i.jx = icmp eq i64 %i.jn, %i.jw
  br i1 %i.jx, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %_RINvXs5_NtCs6SYjS1KFWza_10serde_core2deQINtNtNtNtCseHpJhTld930_5serde7private2de7content15MapDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorENtB6_9MapAccess15next_entry_seedNtBF_14ContentVisitorB2S_ECs1YANDSn9Kib_7git_xet.exit.thread.i.i.i.i.i.i.i.i.i
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBN_EE8grow_oneCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %._crit_edge.i.i.i.i.i.i.i.i.i unwind label %bb.ci, !noalias !516

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.ch
  %.pre.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.go, align 8, !alias.scope !515, !noalias !502 ; 2 uses
  %i.jy = ptrtoint ptr %.pre.i.i.i.i.i.i.i.i.i to i64
  br label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %i.jz = landingpad { ptr, i32 }
          cleanup
  store ptr %i.jp, ptr %.sroa.4.0..sroa_idx.i36.i.i.i.i.i.i, align 8, !alias.scope !512, !noalias !509
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBC_EECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d) #19
          to label %.body.i.i.i.i.i.i.i.i.i unwind label %bb.cj, !noalias !513

bb.cj:                                            ; preds = %bb.ci
  %i.ka = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !513
  unreachable

bb.ck:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i, %_RINvXs5_NtCs6SYjS1KFWza_10serde_core2deQINtNtNtNtCseHpJhTld930_5serde7private2de7content15MapDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorENtB6_9MapAccess15next_entry_seedNtBF_14ContentVisitorB2S_ECs1YANDSn9Kib_7git_xet.exit.thread.i.i.i.i.i.i.i.i.i
  %.sroa.67.16.copyload166.i.i.i.i = phi i64 [ %i.jy, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %.sroa.67.16.copyload168.i.i.i.i, %_RINvXs5_NtCs6SYjS1KFWza_10serde_core2deQINtNtNtNtCseHpJhTld930_5serde7private2de7content15MapDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorENtB6_9MapAccess15next_entry_seedNtBF_14ContentVisitorB2S_ECs1YANDSn9Kib_7git_xet.exit.thread.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.kb = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.jo, %_RINvXs5_NtCs6SYjS1KFWza_10serde_core2deQINtNtNtNtCseHpJhTld930_5serde7private2de7content15MapDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorENtB6_9MapAccess15next_entry_seedNtBF_14ContentVisitorB2S_ECs1YANDSn9Kib_7git_xet.exit.thread.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.kc = getelementptr inbounds nuw [64 x i8], ptr %i.kb, i64 %i.jn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.kc, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false), !noalias !513
  %i.kd = add nuw nsw i64 %i.jn, 1                ; 3 uses
  store i64 %i.kd, ptr %i.gp, align 8, !alias.scope !515, !noalias !502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !502
  %i.ke = icmp eq ptr %i.jp, %i.jc
  br i1 %i.ke, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.i._crit_edge.loopexit.i.i.i.i.i.i.i.i, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i.i.i.i.i.i

bb.cl:                                            ; preds = %.body.i.i.i.i.i.i.i.i.i
  %i.kf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !513
  unreachable

bb.cm:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBN_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.cn unwind label %.thread9.i.i.i.i.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !503

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.i._crit_edge.loopexit.i.i.i.i.i.i.i.i: ; preds = %bb.ck, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.72.16.copyload170.i.i.i.i = phi i64 [ %i.kd, %bb.ck ], [ %i.jn, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.67.16.copyload167.i.i.i.i = phi i64 [ %.sroa.67.16.copyload166.i.i.i.i, %bb.ck ], [ %.sroa.67.16.copyload168.i.i.i.i, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.jc, %bb.ck ], [ %i.jp, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i.i.i.i.i.i ]
  store ptr %.lcssa.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i36.i.i.i.i.i.i, align 8, !alias.scope !512, !noalias !509
  %.sroa.46.i.sroa.3.7.copyload.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !noalias !502
  %i.kg = ptrtoint ptr %.sroa.46.i.sroa.3.7.copyload.pre.i.i.i.i.i.i.i.i to i64
  br label %bb.cs

.thread9.i.i.i.i.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cm, %bb.bz, %bb.ca
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread4.i.i.i.i.i.i.i

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !502
  %i.kh = ptrtoint ptr %.sroa.9.026.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !499
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.gk)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentB1q_EEECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i.i.i unwind label %bb.co, !noalias !503

bb.co:                                            ; preds = %bb.cn
  %i.ki = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kj = load i8, ptr %i.h, align 8, !range !6, !alias.scope !517, !noalias !499, !noundef !5
  %i.kk = icmp eq i8 %i.kj, -1
  br i1 %i.kk, label %.body.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h)
          to label %.body.i.i unwind label %bb.cr, !noalias !503

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentB1q_EEECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i.i.i: ; preds = %bb.cn
  %i.kl = load i8, ptr %i.h, align 8, !range !6, !alias.scope !518, !noalias !499, !noundef !5
  %i.km = icmp eq i8 %i.kl, -1
  br i1 %i.km, label %_RINvNtNtNtCseHpJhTld930_5serde7private2de7content17visit_content_mapNtB2_19TagOrContentVisitorNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentB1q_EEECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h)
          to label %_RINvNtNtNtCseHpJhTld930_5serde7private2de7content17visit_content_mapNtB2_19TagOrContentVisitorNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !474

bb.cr:                                            ; preds = %bb.cp
  %i.kn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !503
  unreachable

bb.cs:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.i._crit_edge.loopexit.i.i.i.i.i.i.i.i, %bb.cb
  %.sroa.72.16.copyload.i.i.i.i = phi i64 [ %.sroa.72.16.copyload170.i.i.i.i, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.i._crit_edge.loopexit.i.i.i.i.i.i.i.i ], [ 0, %bb.cb ] ; 2 uses
  %.sroa.67.16.copyload.i.i.i.i = phi i64 [ %.sroa.67.16.copyload167.i.i.i.i, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.i._crit_edge.loopexit.i.i.i.i.i.i.i.i ], [ %i.jk, %bb.cb ] ; 2 uses
  %.sroa.46.i.sroa.3.7.copyload.i.i.i.i.i.i.i.i = phi i64 [ %i.kg, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit.i.i.i._crit_edge.loopexit.i.i.i.i.i.i.i.i ], [ %i.jf, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !502
  store i8 21, ptr %i.g, align 8, !noalias !519
  store i64 %.sroa.46.i.sroa.3.7.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.52.0..sroa_idx47.i.i.i.i, align 8, !noalias !519
  store i64 %.sroa.67.16.copyload.i.i.i.i, ptr %.sroa.67.0..sroa_idx54.i.i.i.i, align 8, !noalias !519
  store i64 %.sroa.72.16.copyload.i.i.i.i, ptr %.sroa.72.0..sroa_idx63.i.i.i.i, align 8, !noalias !519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false), !noalias !499
  %i.ko = invoke fastcc noundef align 8 ptr @_RNvMs6_NtNtNtCseHpJhTld930_5serde7private2de7contentINtB5_15MapDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorE3endCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.f)
          to label %bb.cu unwind label %bb.ct, !noalias !503 ; 2 uses

bb.ct:                                            ; preds = %bb.cs
  %i.kp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %.body.i.i unwind label %bb.cv, !noalias !503

bb.cu:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !499
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ko, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvNtNtNtCseHpJhTld930_5serde7private2de7content17visit_content_mapNtB2_19TagOrContentVisitorNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.sink.split.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCseHpJhTld930_5serde7private2de7content12TagOrContentECs1YANDSn9Kib_7git_xet.exit13.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCseHpJhTld930_5serde7private2de7content12TagOrContentECs1YANDSn9Kib_7git_xet.exit13.i.i.i.i.i.i.i: ; preds = %bb.cu
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %.noexc30.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !474

.noexc30.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCseHpJhTld930_5serde7private2de7content12TagOrContentECs1YANDSn9Kib_7git_xet.exit13.i.i.i.i.i.i.i
  %i.kq = ptrtoint ptr %i.ko to i64
  br label %_RINvNtNtNtCseHpJhTld930_5serde7private2de7content17visit_content_mapNtB2_19TagOrContentVisitorNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.sink.split.i.i

bb.cv:                                            ; preds = %.thread4.i.i.i.i.i.i.i, %bb.ct
  %i.kr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !503
  unreachable

.thread4.i.i.i.i.i.i.i:                           ; preds = %.thread9.i.i.i.i.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cf, %.body.i.i.i.i.i.i.i.i.i
  %eh.lpad-body7.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ju, %bb.cf ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp, %.thread9.i.i.i.i.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCseHpJhTld930_5serde7private2de7content15MapDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(72) %i.h) #19
          to label %.body.i.i unwind label %bb.cv, !noalias !503

_RINvNtNtNtCseHpJhTld930_5serde7private2de7content17visit_content_mapNtB2_19TagOrContentVisitorNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.sink.split.i.i: ; preds = %.noexc30.i.i, %bb.cu
  %.sroa.52.0.i.i.ph.i.i = phi i64 [ %i.kq, %.noexc30.i.i ], [ %.sroa.46.i.sroa.3.7.copyload.i.i.i.i.i.i.i.i, %bb.cu ]
  %.sroa.016.0.i.i.ph.i.i = phi i8 [ -2, %.noexc30.i.i ], [ 21, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !499
  br label %_RINvNtNtNtCseHpJhTld930_5serde7private2de7content17visit_content_mapNtB2_19TagOrContentVisitorNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i

_RINvNtNtNtCseHpJhTld930_5serde7private2de7content17visit_content_mapNtB2_19TagOrContentVisitorNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i: ; preds = %_RINvNtNtNtCseHpJhTld930_5serde7private2de7content17visit_content_mapNtB2_19TagOrContentVisitorNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.sink.split.i.i, %bb.cq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentB1q_EEECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i.i.i
  %.sroa.72.0.i.i.i.i = phi i64 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentB1q_EEECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i.i.i.i ], [ undef, %bb.cq ], [ %.sroa.72.16.copyload.i.i.i.i, %_RINvNtNtNtCseHpJhTld930_5serde7private2de7content17visit_content_mapNtB2_19TagOrContentVisitorNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i.i.sink.split.i.i ]
end_hunk_3
