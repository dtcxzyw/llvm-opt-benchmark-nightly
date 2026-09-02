Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/object-36e6c5f79820f0c2.object.ab504d3f77570492-cgu.6?download=true
inline.NumInlined: 50
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN = external local_unnamed_addr global { { { ptr } } }
@0 = private unnamed_addr constant [31 x i8] c"Invalid Mach-O rebase operation", align 1
@1 = private unnamed_addr constant [32 x i8] c"Unsupported Mach-O rebase opcode", align 1
@2 = private unnamed_addr constant [40 x i8] c"Missing Mach-O rebase segment and offset", align 1
@3 = private unnamed_addr constant [26 x i8] c"Missing Mach-O rebase type", align 1
@4 = private unnamed_addr constant [29 x i8] c"Invalid Mach-O bind operation", align 1
@5 = private unnamed_addr constant [30 x i8] c"Unsupported Mach-O bind opcode", align 1
@6 = private unnamed_addr constant [27 x i8] c"Invalid Mach-O bind ordinal", align 1
@7 = private unnamed_addr constant [38 x i8] c"Missing Mach-O bind segment and offset", align 1
@8 = private unnamed_addr constant [24 x i8] c"Missing Mach-O bind type", align 1
@9 = private unnamed_addr constant [25 x i8] c"Missing Mach-O bind dylib", align 1
@10 = private unnamed_addr constant [26 x i8] c"Missing Mach-O bind symbol", align 1

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECseHTIzroA4w0_6object(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseHTIzroA4w0_6object(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECseHTIzroA4w0_6object.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseHTIzroA4w0_6object(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECseHTIzroA4w0_6object.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECseHTIzroA4w0_6object.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECseHTIzroA4w0_6object.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseHTIzroA4w0_6object(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBS_8adapters3map3MapINtNtNtBU_4char6decode11DecodeUtf16IB1Y_INtNtNtBU_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U16NtB3v_12LittleEndianEENCNvMs2_NtNtNtB3x_4read2pe8resourceNtB4x_12ResourceName15to_string_lossy0EENCB4r_s_0EEB3x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %.sroa.0.0.copyload1.i = load ptr, ptr %1, align 8, !alias.scope !29, !noalias !27, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload3.i = load ptr, ptr %.sroa.5.0..sroa_idx2.i, align 8, !alias.scope !29, !noalias !27, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload5.i = load i16, ptr %.sroa.6.0..sroa_idx4.i, align 8, !alias.scope !29, !noalias !27 ; 2 uses
  %.sroa.7.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %1, i64 18
  %.sroa.7.0.copyload7.i = load i16, ptr %.sroa.7.0..sroa_idx6.i, align 2, !alias.scope !29, !noalias !27 ; 2 uses
  %.sroa.8.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.8.0.copyload9.i = load i32, ptr %.sroa.8.0..sroa_idx8.i, align 4, !alias.scope !29, !noalias !27
  %i.c = trunc nuw i16 %.sroa.6.0.copyload5.i to i1
  br i1 %i.c, label %bb.b, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_4char6decode11DecodeUtf16IBN_INtNtNtBb_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U16NtB22_12LittleEndianEENCNvMs2_NtNtNtB24_4read2pe8resourceNtB34_12ResourceName15to_string_lossy0EENCB2Y_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB24_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = and i16 %.sroa.7.0.copyload7.i, -2048
  %or.cond.i.i.i = icmp eq i16 %i.d, -10240
  br i1 %or.cond.i.i.i, label %bb.c, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_4char6decode11DecodeUtf16IBN_INtNtNtBb_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U16NtB22_12LittleEndianEENCNvMs2_NtNtNtB24_4read2pe8resourceNtB34_12ResourceName15to_string_lossy0EENCB2Y_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB24_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %.sroa.5.0.copyload3.i, %.sroa.0.0.copyload1.i
  %..i.i.i = zext i1 %i.e to i64
  br label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_4char6decode11DecodeUtf16IBN_INtNtNtBb_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U16NtB22_12LittleEndianEENCNvMs2_NtNtNtB24_4read2pe8resourceNtB34_12ResourceName15to_string_lossy0EENCB2Y_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB24_.exit.i

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_4char6decode11DecodeUtf16IBN_INtNtNtBb_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U16NtB22_12LittleEndianEENCNvMs2_NtNtNtB24_4read2pe8resourceNtB34_12ResourceName15to_string_lossy0EENCB2Y_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB24_.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.010.0.i.i.i = phi i64 [ 1, %bb.b ], [ %..i.i.i, %bb.c ], [ 0, %bb.a ]
  %i.f = ptrtoint ptr %.sroa.0.0.copyload1.i to i64
  %i.g = ptrtoint ptr %.sroa.5.0.copyload3.i to i64
  %i.h = sub nuw i64 %i.g, %i.f                   ; 2 uses
  %i.i = lshr i64 %i.h, 1
  %i.j = lshr i64 %i.h, 2
  %i.k = and i64 %i.i, 1
  %.sroa.08.0.i.i.i = add nuw nsw i64 %i.k, %i.j
  %i.l = add nuw nsw i64 %.sroa.08.0.i.i.i, %.sroa.010.0.i.i.i
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCseHTIzroA4w0_6object(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.l)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_4char6decode11DecodeUtf16IBN_INtNtNtBb_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U16NtB22_12LittleEndianEENCNvMs2_NtNtNtB24_4read2pe8resourceNtB34_12ResourceName15to_string_lossy0EENCB2Y_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB24_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32
  store ptr %.sroa.0.0.copyload1.i, ptr %i.a, align 8, !noalias !33
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.5.0.copyload3.i, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !33
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 %.sroa.6.0.copyload5.i, ptr %.sroa.514.0..sroa_idx.i, align 8, !noalias !33
  %.sroa.615.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i16 %.sroa.7.0.copyload7.i, ptr %.sroa.615.0..sroa_idx.i, align 2, !noalias !33
  %.sroa.716.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %.sroa.8.0.copyload9.i, ptr %.sroa.716.0..sroa_idx.i, align 4, !noalias !33
  %i.m = invoke i64 @_RNvXNtNtCskKLDkoKarTP_4core4char6decodeINtB2_11DecodeUtf16INtNtNtNtB6_4iter8adapters3map3MapINtNtNtB6_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U16NtB1V_12LittleEndianEENCNvMs2_NtNtNtB1X_4read2pe8resourceNtB2X_12ResourceName15to_string_lossy0EENtNtNtB11_6traits8iterator8Iterator4nextB1X_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc3 unwind label %.loopexit.split-lp ; 2 uses

.noexc3:                                          ; preds = %.noexc
  %i.n = and i64 %i.m, 65535
  %.not10.i.i.i.i = icmp eq i64 %i.n, 2
  br i1 %.not10.i.i.i.i, label %.loopexit7, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc3, %.noexc6
  %i.o = phi i64 [ %i.ax, %.noexc6 ], [ %i.m, %.noexc3 ] ; 2 uses
  %i.p = trunc i64 %i.o to i1
  %.sroa.5.0.extract.shift.i.i.i.i.i.i = lshr i64 %i.o, 32
  %.sroa.5.0.extract.trunc.i.i.i.i.i.i = trunc nuw i64 %.sroa.5.0.extract.shift.i.i.i.i.i.i to i32
  %.sroa.03.0.i.i.i.i.i.i = select i1 %i.p, i32 65533, i32 %.sroa.5.0.extract.trunc.i.i.i.i.i.i ; 8 uses
  %i.q = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !34, !noalias !35, !noundef !4 ; 4 uses
  %i.r = icmp sgt i64 %i.q, -1
  call void @llvm.assume(i1 %i.r)
  %i.s = icmp samesign ult i32 %.sroa.03.0.i.i.i.i.i.i, 128
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.t = icmp samesign ult i32 %.sroa.03.0.i.i.i.i.i.i, 2048 ; 2 uses
  %i.u = icmp samesign ult i32 %.sroa.03.0.i.i.i.i.i.i, 65536 ; 2 uses
  %..i.i.i.i.i.i.i.i = select i1 %i.u, i64 3, i64 4
  %.sroa.0.0.ph.i.i.i.i.i.i.i.i = select i1 %i.t, i64 2, i64 %..i.i.i.i.i.i.i.i
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCseHTIzroA4w0_6object(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %.sroa.0.0.ph.i.i.i.i.i.i.i.i)
          to label %.noexc4 unwind label %.loopexit

.noexc4:                                          ; preds = %bb.d
  %i.v = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !34, !noalias !35, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.q ; 9 uses
  %i.x = trunc i32 %.sroa.03.0.i.i.i.i.i.i to i8
  %i.y = and i8 %i.x, 63
  %i.z = or disjoint i8 %i.y, -128                ; 3 uses
  %i.aa = lshr i32 %.sroa.03.0.i.i.i.i.i.i, 6
  %i.ab = trunc i32 %i.aa to i8                   ; 2 uses
  %i.ac = and i8 %i.ab, 63
  %i.ad = or disjoint i8 %i.ac, -128              ; 2 uses
  %i.ae = lshr i32 %.sroa.03.0.i.i.i.i.i.i, 12
  %i.af = trunc i32 %i.ae to i8                   ; 2 uses
  %i.ag = and i8 %i.af, 63
  %i.ah = or disjoint i8 %i.ag, -128
  %i.ai = lshr i32 %.sroa.03.0.i.i.i.i.i.i, 18
  %i.aj = trunc nuw nsw i32 %i.ai to i8
  %i.ak = or disjoint i8 %i.aj, -16
  br i1 %i.t, label %bb.f, label %bb.g

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCseHTIzroA4w0_6object(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1)
          to label %.noexc5 unwind label %.loopexit

.noexc5:                                          ; preds = %bb.e
  %i.al = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !34, !noalias !35, !nonnull !4, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.q
  %i.an = trunc nuw nsw i32 %.sroa.03.0.i.i.i.i.i.i to i8
  store i8 %i.an, ptr %i.am, align 1, !noalias !36
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldINtNtBa_6result6ResultcNtNtNtBa_4char6decode16DecodeUtf16ErrorEcuNCNvMs2_NtNtNtCseHTIzroA4w0_6object4read2pe8resourceNtB25_12ResourceName15to_string_lossys_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB4u_6StringINtNtB3C_7collect6ExtendcE6extendINtB4_3MapINtB1j_11DecodeUtf16IB5I_INtNtNtBa_5slice4iter4IterINtNtB2b_6endian3U16NtB6J_12LittleEndianEENCB1Z_0EEB1X_EE0E0E0B2b_.exit.i.i.i.i

bb.f:                                             ; preds = %.noexc4
  %i.ao = or disjoint i8 %i.ab, -64
  store i8 %i.ao, ptr %i.w, align 1, !noalias !36
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store i8 %i.z, ptr %i.ap, align 1, !noalias !36
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldINtNtBa_6result6ResultcNtNtNtBa_4char6decode16DecodeUtf16ErrorEcuNCNvMs2_NtNtNtCseHTIzroA4w0_6object4read2pe8resourceNtB25_12ResourceName15to_string_lossys_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB4u_6StringINtNtB3C_7collect6ExtendcE6extendINtB4_3MapINtB1j_11DecodeUtf16IB5I_INtNtNtBa_5slice4iter4IterINtNtB2b_6endian3U16NtB6J_12LittleEndianEENCB1Z_0EEB1X_EE0E0E0B2b_.exit.i.i.i.i

bb.g:                                             ; preds = %.noexc4
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = or disjoint i8 %i.af, -32
  store i8 %i.aq, ptr %i.w, align 1, !noalias !36
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store i8 %i.ad, ptr %i.ar, align 1, !noalias !36
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store i8 %i.z, ptr %i.as, align 1, !noalias !36
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldINtNtBa_6result6ResultcNtNtNtBa_4char6decode16DecodeUtf16ErrorEcuNCNvMs2_NtNtNtCseHTIzroA4w0_6object4read2pe8resourceNtB25_12ResourceName15to_string_lossys_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB4u_6StringINtNtB3C_7collect6ExtendcE6extendINtB4_3MapINtB1j_11DecodeUtf16IB5I_INtNtNtBa_5slice4iter4IterINtNtB2b_6endian3U16NtB6J_12LittleEndianEENCB1Z_0EEB1X_EE0E0E0B2b_.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  store i8 %i.ak, ptr %i.w, align 1, !noalias !36
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store i8 %i.ah, ptr %i.at, align 1, !noalias !36
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store i8 %i.ad, ptr %i.au, align 1, !noalias !36
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 3
  store i8 %i.z, ptr %i.av, align 1, !noalias !36
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldINtNtBa_6result6ResultcNtNtNtBa_4char6decode16DecodeUtf16ErrorEcuNCNvMs2_NtNtNtCseHTIzroA4w0_6object4read2pe8resourceNtB25_12ResourceName15to_string_lossys_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB4u_6StringINtNtB3C_7collect6ExtendcE6extendINtB4_3MapINtB1j_11DecodeUtf16IB5I_INtNtNtBa_5slice4iter4IterINtNtB2b_6endian3U16NtB6J_12LittleEndianEENCB1Z_0EEB1X_EE0E0E0B2b_.exit.i.i.i.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldINtNtBa_6result6ResultcNtNtNtBa_4char6decode16DecodeUtf16ErrorEcuNCNvMs2_NtNtNtCseHTIzroA4w0_6object4read2pe8resourceNtB25_12ResourceName15to_string_lossys_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB4u_6StringINtNtB3C_7collect6ExtendcE6extendINtB4_3MapINtB1j_11DecodeUtf16IB5I_INtNtNtBa_5slice4iter4IterINtNtB2b_6endian3U16NtB6J_12LittleEndianEENCB1Z_0EEB1X_EE0E0E0B2b_.exit.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f, %.noexc5
  %.sroa.0.03.i.i.i.i.i.i.i.i = phi i64 [ 1, %.noexc5 ], [ 2, %bb.f ], [ 3, %bb.h ], [ 4, %bb.i ]
  %i.aw = add nuw i64 %.sroa.0.03.i.i.i.i.i.i.i.i, %i.q
  store i64 %i.aw, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !34, !noalias !35
  %i.ax = invoke i64 @_RNvXNtNtCskKLDkoKarTP_4core4char6decodeINtB2_11DecodeUtf16INtNtNtNtB6_4iter8adapters3map3MapINtNtNtB6_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U16NtB1V_12LittleEndianEENCNvMs2_NtNtNtB1X_4read2pe8resourceNtB2X_12ResourceName15to_string_lossy0EENtNtNtB11_6traits8iterator8Iterator4nextB1X_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc6 unwind label %.loopexit ; 2 uses

.noexc6:                                          ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldINtNtBa_6result6ResultcNtNtNtBa_4char6decode16DecodeUtf16ErrorEcuNCNvMs2_NtNtNtCseHTIzroA4w0_6object4read2pe8resourceNtB25_12ResourceName15to_string_lossys_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB4u_6StringINtNtB3C_7collect6ExtendcE6extendINtB4_3MapINtB1j_11DecodeUtf16IB5I_INtNtNtBa_5slice4iter4IterINtNtB2b_6endian3U16NtB6J_12LittleEndianEENCB1Z_0EEB1X_EE0E0E0B2b_.exit.i.i.i.i
  %i.ay = and i64 %i.ax, 65535
  %.not.i.i.i.i = icmp eq i64 %i.ay, 2
  br i1 %.not.i.i.i.i, label %.loopexit7, label %.lr.ph.i.i.i.i

.loopexit:                                        ; preds = %bb.d, %bb.e, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldINtNtBa_6result6ResultcNtNtNtBa_4char6decode16DecodeUtf16ErrorEcuNCNvMs2_NtNtNtCseHTIzroA4w0_6object4read2pe8resourceNtB25_12ResourceName15to_string_lossys_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB4u_6StringINtNtB3C_7collect6ExtendcE6extendINtB4_3MapINtB1j_11DecodeUtf16IB5I_INtNtNtBa_5slice4iter4IterINtNtB2b_6endian3U16NtB6J_12LittleEndianEENCB1Z_0EEB1X_EE0E0E0B2b_.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp:                               ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_4char6decode11DecodeUtf16IBN_INtNtNtBb_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U16NtB22_12LittleEndianEENCNvMs2_NtNtNtB24_4read2pe8resourceNtB34_12ResourceName15to_string_lossy0EENCB2Y_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB24_.exit.i, %.noexc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECseHTIzroA4w0_6object(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #10
          to label %bb.l unwind label %bb.k

.loopexit7:                                       ; preds = %.noexc6, %.noexc3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.k:                                             ; preds = %bb.j
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

bb.l:                                             ; preds = %bb.j
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_6endian3U16NtB18_12LittleEndianEEBc_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i64 %3, 0
  br i1 %i.a, label %_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_.exit.thread, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.b = shl nuw i64 %3, 1                        ; 2 uses
  %i.c = load i64, ptr %2, align 8, !alias.scope !40, !noalias !41, !noundef !4 ; 4 uses
  %i.d = icmp eq i64 %3, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ult i64 %1, %i.c
  %i.f = sub nuw nsw i64 %1, %i.c
  %.not.i.i = icmp ugt i64 %i.b, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %or.cond.i = select i1 %i.e, i1 true, i1 %.not.i.i
  br i1 %or.cond.i, label %_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.g, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %i.h = add i64 %i.c, %i.b
  store i64 %i.h, ptr %2, align 8, !alias.scope !40, !noalias !41
  br label %_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_.exit.thread

_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_.exit.thread: ; preds = %bb.c, %bb.a, %bb.d
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i.i, %bb.d ], [ null, %bb.a ], [ null, %bb.c ]
  %i.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %3, 1
  ret { ptr, i64 } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceNtNtBc_2pe18ImageDataDirectoryEBc_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i64 %3, 2305843009213693951
  br i1 %i.a, label %_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_.exit.thread, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.b = shl nuw i64 %3, 3                        ; 2 uses
  %i.c = load i64, ptr %2, align 8, !alias.scope !45, !noalias !46, !noundef !4 ; 4 uses
  %i.d = icmp eq i64 %3, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ult i64 %1, %i.c
  %i.f = sub nuw nsw i64 %1, %i.c
  %.not.i.i = icmp ugt i64 %i.b, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %or.cond.i = select i1 %i.e, i1 true, i1 %.not.i.i
  br i1 %or.cond.i, label %_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.g, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %i.h = add i64 %i.c, %i.b
  store i64 %i.h, ptr %2, align 8, !alias.scope !45, !noalias !46
  br label %_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_.exit.thread

_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_.exit.thread: ; preds = %bb.c, %bb.a, %bb.d
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i.i, %bb.d ], [ null, %bb.a ], [ null, %bb.c ]
  %i.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %3, 1
  ret { ptr, i64 } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceNtNtBc_2pe27ImageResourceDirectoryEntryEBc_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i64 %3, 2305843009213693951
  br i1 %i.a, label %_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_.exit.thread, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.b = shl nuw i64 %3, 3                        ; 2 uses
  %i.c = load i64, ptr %2, align 8, !alias.scope !50, !noalias !51, !noundef !4 ; 4 uses
  %i.d = icmp eq i64 %3, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ult i64 %1, %i.c
  %i.f = sub nuw nsw i64 %1, %i.c
  %.not.i.i = icmp ugt i64 %i.b, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %or.cond.i = select i1 %i.e, i1 true, i1 %.not.i.i
  br i1 %or.cond.i, label %_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.g, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %i.h = add i64 %i.c, %i.b
  store i64 %i.h, ptr %2, align 8, !alias.scope !50, !noalias !51
  br label %_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_.exit.thread

_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_.exit.thread: ; preds = %bb.c, %bb.a, %bb.d
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i.i, %bb.d ], [ null, %bb.a ], [ null, %bb.c ]
  %i.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %3, 1
  ret { ptr, i64 } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden noundef ptr @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef4readINtNtBc_6endian3U16NtB11_12LittleEndianEEBc_(ptr noalias nofree noundef nonnull readonly captures(ret: address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !alias.scope !55, !noalias !56, !noundef !4 ; 4 uses
  %i.b = icmp ult i64 %1, %i.a
  %i.c = sub nuw nsw i64 %1, %i.a
  %.not.i.i = icmp samesign ult i64 %i.c, 2
  %or.cond.i = select i1 %i.b, i1 true, i1 %.not.i.i
  br i1 %or.cond.i, label %_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_.exit.thread, label %_RINvNtCseHTIzroA4w0_6object3pod10from_bytesINtNtB4_6endian3U16NtBI_12LittleEndianEEB4_.exit

_RINvNtCseHTIzroA4w0_6object3pod10from_bytesINtNtB4_6endian3U16NtBI_12LittleEndianEEB4_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.e = add nuw i64 %i.a, 2
  store i64 %i.e, ptr %2, align 8, !alias.scope !55, !noalias !56
  br label %_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_.exit.thread

_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_.exit.thread: ; preds = %bb.a, %_RINvNtCseHTIzroA4w0_6object3pod10from_bytesINtNtB4_6endian3U16NtBI_12LittleEndianEEB4_.exit
  %.sroa.0.0 = phi ptr [ %i.d, %_RINvNtCseHTIzroA4w0_6object3pod10from_bytesINtNtB4_6endian3U16NtBI_12LittleEndianEEB4_.exit ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden noundef ptr @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef4readNtNtBc_2pe20ImageExportDirectoryEBc_(ptr noalias nofree noundef nonnull readonly captures(ret: address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !alias.scope !60, !noalias !61, !noundef !4 ; 4 uses
  %i.b = icmp ult i64 %1, %i.a
  %i.c = sub nuw nsw i64 %1, %i.a
  %.not.i.i = icmp samesign ult i64 %i.c, 40
  %or.cond.i = select i1 %i.b, i1 true, i1 %.not.i.i
  br i1 %or.cond.i, label %_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_.exit.thread, label %_RINvNtCseHTIzroA4w0_6object3pod10from_bytesNtNtB4_2pe20ImageExportDirectoryEB4_.exit

_RINvNtCseHTIzroA4w0_6object3pod10from_bytesNtNtB4_2pe20ImageExportDirectoryEB4_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.e = add nuw i64 %i.a, 40
  store i64 %i.e, ptr %2, align 8, !alias.scope !60, !noalias !61
  br label %_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_.exit.thread

_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_.exit.thread: ; preds = %bb.a, %_RINvNtCseHTIzroA4w0_6object3pod10from_bytesNtNtB4_2pe20ImageExportDirectoryEB4_.exit
  %.sroa.0.0 = phi ptr [ %i.d, %_RINvNtCseHTIzroA4w0_6object3pod10from_bytesNtNtB4_2pe20ImageExportDirectoryEB4_.exit ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden noundef ptr @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef4readNtNtBc_2pe22ImageResourceDataEntryEBc_(ptr noalias nofree noundef nonnull readonly captures(ret: address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !alias.scope !65, !noalias !66, !noundef !4 ; 4 uses
  %i.b = icmp ult i64 %1, %i.a
  %i.c = sub nuw nsw i64 %1, %i.a
  %.not.i.i = icmp samesign ult i64 %i.c, 16
  %or.cond.i = select i1 %i.b, i1 true, i1 %.not.i.i
  br i1 %or.cond.i, label %_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_.exit.thread, label %_RINvNtCseHTIzroA4w0_6object3pod10from_bytesNtNtB4_2pe22ImageResourceDataEntryEB4_.exit

_RINvNtCseHTIzroA4w0_6object3pod10from_bytesNtNtB4_2pe22ImageResourceDataEntryEB4_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.e = add nuw i64 %i.a, 16
  store i64 %i.e, ptr %2, align 8, !alias.scope !65, !noalias !66
  br label %_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_.exit.thread

_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_.exit.thread: ; preds = %bb.a, %_RINvNtCseHTIzroA4w0_6object3pod10from_bytesNtNtB4_2pe22ImageResourceDataEntryEB4_.exit
  %.sroa.0.0 = phi ptr [ %i.d, %_RINvNtCseHTIzroA4w0_6object3pod10from_bytesNtNtB4_2pe22ImageResourceDataEntryEB4_.exit ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden noundef ptr @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef4readNtNtBc_2pe22ImageResourceDirectoryEBc_(ptr noalias nofree noundef nonnull readonly captures(ret: address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !alias.scope !70, !noalias !71, !noundef !4 ; 4 uses
  %i.b = icmp ult i64 %1, %i.a
  %i.c = sub nuw nsw i64 %1, %i.a
  %.not.i.i = icmp samesign ult i64 %i.c, 16
  %or.cond.i = select i1 %i.b, i1 true, i1 %.not.i.i
  br i1 %or.cond.i, label %_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_.exit.thread, label %_RINvNtCseHTIzroA4w0_6object3pod10from_bytesNtNtB4_2pe22ImageResourceDirectoryEB4_.exit

_RINvNtCseHTIzroA4w0_6object3pod10from_bytesNtNtB4_2pe22ImageResourceDirectoryEB4_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.e = add nuw i64 %i.a, 16
  store i64 %i.e, ptr %2, align 8, !alias.scope !70, !noalias !71
  br label %_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_.exit.thread

_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_.exit.thread: ; preds = %bb.a, %_RINvNtCseHTIzroA4w0_6object3pod10from_bytesNtNtB4_2pe22ImageResourceDirectoryEB4_.exit
  %.sroa.0.0 = phi ptr [ %i.d, %_RINvNtCseHTIzroA4w0_6object3pod10from_bytesNtNtB4_2pe22ImageResourceDirectoryEB4_.exit ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_14RebaseIterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !77, !noalias !76, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.preheader.i, label %tailrecurse._crit_edge.i

end_hunk_0
begin_hunk_1_@_RNvMs2_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_14RebaseIterator4next:bb.a
  br label %.backedge.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.y = load i64, ptr %1, align 8, !alias.scope !77, !noalias !76, !noundef !4
  %i.z = zext i8 %.sroa.532.0.copyload.i to i64
  %i.aa = load i8, ptr %i.g, align 8, !alias.scope !77, !noalias !76, !noundef !4
  %i.ab = zext i8 %i.aa to i64
  %i.ac = mul nuw nsw i64 %i.ab, %i.z
  %i.ad = add i64 %i.ac, %i.y
  store i64 %i.ad, ptr %1, align 8, !alias.scope !77, !noalias !76
  br label %.backedge.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.ae = icmp eq ptr %.sroa.7.0.copyload.i, null
  br i1 %i.ae, label %.backedge.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph.i
  %i.af = load i8, ptr %i.g, align 8, !alias.scope !77, !noalias !76, !noundef !4
  %i.ag = zext i8 %i.af to i64
  %i.ah = add i64 %i.ag, %i.v
  br label %tailrecurse._crit_edge.sink.split.i

bb.j:                                             ; preds = %.lr.ph.i
  %i.ai = icmp eq ptr %.sroa.7.0.copyload.i, null
  br i1 %i.ai, label %.backedge.i, label %bb.l

.backedge.i:                                      ; preds = %bb.j, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !78
  call void @_RNvMs_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB4_23RebaseOperationIterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e), !noalias !76, !inline_history !75
  %i.aj = load i8, ptr %i.f, align 8, !range !6, !noalias !78, !noundef !4 ; 2 uses
  %i.ak = icmp eq i8 %i.aj, -2
  br i1 %i.ak, label %.preheader._crit_edge.i, label %.lr.ph.i

bb.k:                                             ; preds = %bb.h
  %i.al = load i8, ptr %i.g, align 8, !alias.scope !77, !noalias !76, !noundef !4
  %i.am = zext i8 %i.al to i64
  br label %tailrecurse._crit_edge.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.an = load i8, ptr %i.g, align 8, !alias.scope !77, !noalias !76, !noundef !4
  %i.ao = zext i8 %i.an to i64
  %i.ap = add i64 %.sroa.835.0.copyload.i, %i.ao
  br label %tailrecurse._crit_edge.sink.split.i

bb.m:                                             ; preds = %tailrecurse._crit_edge.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @2, ptr %i.aq, align 8, !alias.scope !76, !noalias !77
  br label %bb.q

bb.n:                                             ; preds = %tailrecurse._crit_edge.i
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.as = load i8, ptr %i.ar, align 2, !range !7, !alias.scope !77, !noalias !76, !noundef !4
  %i.at = trunc nuw i8 %i.as to i1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.at, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr @3, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !76, !noalias !77
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 16, i1 false), !alias.scope !78
  %i.au = load i64, ptr %1, align 8, !alias.scope !77, !noalias !76, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !77, !noalias !76, !noundef !4
  %i.ax = add i64 %i.aw, %i.au
  store i64 %i.ax, ptr %1, align 8, !alias.scope !77, !noalias !76
  %i.ay = add i64 %.lcssa.i, -1
  store i64 %i.ay, ptr %i.b, align 8, !alias.scope !77, !noalias !76
  store i64 1, ptr %0, align 8, !alias.scope !76, !noalias !77
  br label %_RNvMs2_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_14RebaseIterator10next_inner.exit

_RNvMs2_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_14RebaseIterator10next_inner.exit: ; preds = %bb.p, %bb.c, %bb.b, %bb.q
  ret void

bb.q:                                             ; preds = %.preheader._crit_edge.i, %bb.m, %bb.o
  %.sink = phi i64 [ %i.s, %.preheader._crit_edge.i ], [ 40, %bb.m ], [ 26, %bb.o ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.az, align 8, !alias.scope !76, !noalias !77
  store i64 2, ptr %0, align 8, !alias.scope !76, !noalias !77
  store i64 0, ptr %i.b, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 0, ptr %i.bb, align 8
  br label %_RNvMs2_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_14RebaseIterator10next_inner.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_21BindOperationIterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((8, 9)) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.d = load ptr, ptr %1, align 8, !alias.scope !88, !noalias !87, !nonnull !4, !noundef !4 ; 3 uses
  %i.e = add nsw i64 %i.b, -1                     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 5 uses
  store ptr %i.f, ptr %1, align 8, !alias.scope !88, !noalias !87, !captures !8
  store i64 %i.e, ptr %i.a, align 8, !alias.scope !88, !noalias !87
  %i.g = load i8, ptr %i.d, align 1, !noalias !89, !noundef !4 ; 4 uses
  %i.h = and i8 %i.g, -16
  %i.i = and i8 %i.g, 15                          ; 3 uses
  %i.j = lshr i8 %i.g, 4                          ; 2 uses
  switch i8 %i.j, label %bb.x [
    i8 0, label %_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse.exit
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
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = zext nneg i8 %i.i to i64
  br label %_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse.exit

bb.d:                                             ; preds = %bb.b
  %i.l = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !87 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.x, label %bb.o

bb.e:                                             ; preds = %bb.b
  %i.o = icmp eq i8 %i.i, 0
  %i.p = or i8 %i.g, -16
  %narrow.i = select i1 %i.o, i8 0, i8 %i.p
  %.sroa.014.0.i = sext i8 %narrow.i to i32
  br label %_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse.exit

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.q = getelementptr i8, ptr %i.d, i64 %i.b
  %i.r = load atomic ptr, ptr @_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !91, !nonnull !4, !noundef !4
  %i.s = tail call { i64, ptr } %i.r(i8 noundef 0, ptr noundef nonnull readonly %i.f, ptr noundef nonnull readonly %i.q), !noalias !91, !inline_history !86 ; 2 uses
  %i.t = extractvalue { i64, ptr } %i.s, 0
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.p, label %bb.x

bb.g:                                             ; preds = %bb.b
  br label %_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse.exit

bb.h:                                             ; preds = %bb.b
  %i.v = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_sleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !87 ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.x, label %bb.q

bb.i:                                             ; preds = %bb.b
  %i.y = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !87 ; 2 uses
  %i.z = extractvalue { i64, i64 } %i.y, 0
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.x, label %bb.r

bb.j:                                             ; preds = %bb.b
  %i.ab = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !87 ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.ab, 0
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.x, label %bb.s

bb.k:                                             ; preds = %bb.b
  br label %_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse.exit

bb.l:                                             ; preds = %bb.b
  %i.ae = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !87 ; 2 uses
  %i.af = extractvalue { i64, i64 } %i.ae, 0
  %i.ag = trunc nuw i64 %i.af to i1
  br i1 %i.ag, label %bb.x, label %bb.t

bb.m:                                             ; preds = %bb.b
  br label %_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse.exit

bb.n:                                             ; preds = %bb.b
  %i.ah = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !87 ; 2 uses
  %i.ai = extractvalue { i64, i64 } %i.ah, 0
  %i.aj = extractvalue { i64, i64 } %i.ah, 1
  %i.ak = trunc nuw i64 %i.ai to i1
  br i1 %i.ak, label %bb.x, label %bb.u

bb.o:                                             ; preds = %bb.d
  %i.al = extractvalue { i64, i64 } %i.l, 1
  br label %_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse.exit

bb.p:                                             ; preds = %bb.f
  %i.am = extractvalue { i64, ptr } %i.s, 1
  %i.an = tail call noundef i64 @_RNvXNtCs906JEEYSgkH_6memchr3extPhNtB2_7Pointer8distanceCseHTIzroA4w0_6object(ptr noundef %i.am, ptr noundef nonnull readonly %i.f), !noalias !92 ; 4 uses
  %.not.i.i.i = icmp ult i64 %i.an, %i.e
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.an
  %2 = xor i64 %i.an, -1
  %i.ap = add i64 %i.e, %2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store ptr %i.aq, ptr %1, align 8, !alias.scope !93, !noalias !87
  store i64 %i.ap, ptr %i.a, align 8, !alias.scope !93, !noalias !87
  %i.ar = ptrtoint ptr %i.f to i64
  br label %_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse.exit

bb.q:                                             ; preds = %bb.h
  %i.as = extractvalue { i64, i64 } %i.v, 1
  br label %_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse.exit

bb.r:                                             ; preds = %bb.i
  %i.at = extractvalue { i64, i64 } %i.y, 1
  br label %_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse.exit

bb.s:                                             ; preds = %bb.j
  %i.au = extractvalue { i64, i64 } %i.ab, 1
  br label %_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse.exit

bb.t:                                             ; preds = %bb.l
  %i.av = extractvalue { i64, i64 } %i.ae, 1
  br label %_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse.exit

bb.u:                                             ; preds = %bb.n
  %i.aw = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !87 ; 2 uses
  %i.ax = extractvalue { i64, i64 } %i.aw, 0
  %i.ay = trunc nuw i64 %i.ax to i1
  br i1 %i.ay, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.az = extractvalue { i64, i64 } %i.aw, 1
  br label %_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse.exit

_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse.exit: ; preds = %bb.b, %bb.c, %bb.e, %bb.g, %bb.k, %bb.m, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.v
  %.sroa.27.0.i = phi i64 [ %i.az, %bb.v ], [ undef, %bb.c ], [ undef, %bb.o ], [ undef, %bb.e ], [ %i.an, %bb.p ], [ undef, %bb.g ], [ undef, %bb.q ], [ undef, %bb.r ], [ undef, %bb.s ], [ undef, %bb.k ], [ undef, %bb.t ], [ undef, %bb.m ], [ undef, %bb.b ]
  %.sroa.19.0.i = phi i64 [ %i.aj, %bb.v ], [ %i.k, %bb.c ], [ %i.al, %bb.o ], [ undef, %bb.e ], [ %i.ar, %bb.p ], [ undef, %bb.g ], [ %i.as, %bb.q ], [ %i.at, %bb.r ], [ %i.au, %bb.s ], [ undef, %bb.k ], [ %i.av, %bb.t ], [ undef, %bb.m ], [ undef, %bb.b ]
  %.sroa.185.0.i = phi i32 [ undef, %bb.v ], [ undef, %bb.c ], [ undef, %bb.o ], [ %.sroa.014.0.i, %bb.e ], [ undef, %bb.p ], [ undef, %bb.g ], [ undef, %bb.q ], [ undef, %bb.r ], [ undef, %bb.s ], [ undef, %bb.k ], [ undef, %bb.t ], [ undef, %bb.m ], [ undef, %bb.b ]
  %.sroa.04.0.i = phi i8 [ 11, %bb.v ], [ 1, %bb.c ], [ 1, %bb.o ], [ 2, %bb.e ], [ 3, %bb.p ], [ 4, %bb.g ], [ 5, %bb.q ], [ 6, %bb.r ], [ 7, %bb.s ], [ 8, %bb.k ], [ 9, %bb.t ], [ 10, %bb.m ], [ %i.j, %bb.b ]
  store i8 %i.h, ptr %0, align 8, !alias.scope !87, !noalias !88
  %.sroa.589.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.04.0.i, ptr %.sroa.589.0..sroa_idx.i, align 8, !alias.scope !87, !noalias !88
  %.sroa.690.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.i, ptr %.sroa.690.0..sroa_idx.i, align 1, !alias.scope !87, !noalias !88
  %.sroa.892.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.185.0.i, ptr %.sroa.892.0..sroa_idx.i, align 4, !alias.scope !87, !noalias !88
  %.sroa.993.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.19.0.i, ptr %.sroa.993.0..sroa_idx.i, align 8, !alias.scope !87, !noalias !88
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.27.0.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !87, !noalias !88
  br label %bb.y

bb.w:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 -1, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.u, %bb.n, %bb.l, %bb.j, %bb.i, %bb.h, %bb.f, %bb.d, %bb.b
  %.sink3 = phi ptr [ @4, %bb.n ], [ @5, %bb.b ], [ @4, %bb.d ], [ @4, %bb.f ], [ @4, %bb.h ], [ @4, %bb.i ], [ @4, %bb.j ], [ @4, %bb.l ], [ @4, %bb.u ]
  %.sink = phi i64 [ 29, %bb.n ], [ 30, %bb.b ], [ 29, %bb.d ], [ 29, %bb.f ], [ 29, %bb.h ], [ 29, %bb.i ], [ 29, %bb.j ], [ 29, %bb.l ], [ 29, %bb.u ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink3, ptr %i.ba, align 8, !alias.scope !87, !noalias !88
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sink, ptr %i.bb, align 8, !alias.scope !87, !noalias !88
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 -2, ptr %i.bc, align 8, !alias.scope !87, !noalias !88
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8
  store i64 0, ptr %i.a, align 8
  br label %bb.y

bb.y:                                             ; preds = %_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse.exit, %bb.x, %bb.w
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_12BindIterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !99, !noalias !98, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.preheader.i, label %tailrecurse._crit_edge.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.555.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %.sroa.757.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.858.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.959.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 74
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 75
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 69 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 77 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 70 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 2 uses
  %.sroa.634.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !100
  call void @_RNvMs4_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_21BindOperationIterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1), !noalias !98, !inline_history !97
  %i.t = load i8, ptr %i.e, align 8, !range !9, !noalias !100, !noundef !4 ; 2 uses
  %i.u = icmp eq i8 %i.t, -2
  br i1 %i.u, label %.preheader._crit_edge.i, label %.lr.ph.i

tailrecurse._crit_edge.sink.split.i:              ; preds = %bb.r, %bb.m, %bb.l, %bb.k
  %.sink.i = phi i64 [ %i.ai, %bb.k ], [ %i.al, %bb.l ], [ %i.aq, %bb.m ], [ %i.ax, %bb.r ]
  %.lcssa.ph.i = phi i64 [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.m ], [ %i.ab, %bb.r ]
  store i64 %.sink.i, ptr %.sroa.634.0..sroa_idx.i, align 8, !alias.scope !99, !noalias !98
  br label %tailrecurse._crit_edge.i

tailrecurse._crit_edge.i:                         ; preds = %tailrecurse._crit_edge.sink.split.i, %bb.a
  %.lcssa.i = phi i64 [ %i.c, %bb.a ], [ %.lcssa.ph.i, %tailrecurse._crit_edge.sink.split.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 74
  %i.w = load i8, ptr %i.v, align 2, !range !7, !alias.scope !99, !noalias !98, !noundef !4
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.s, label %.loopexit

.preheader._crit_edge.i:                          ; preds = %.backedge.i, %.preheader.i
  %i.y = load ptr, ptr %.sroa.858.0..sroa_idx.i, align 8, !noalias !100, !nonnull !4, !noundef !4
  %i.z = load i64, ptr %.sroa.959.0..sroa_idx.i, align 8, !noalias !100, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !100
  br label %.loopexit

.lr.ph.i:                                         ; preds = %.preheader.i, %.backedge.i
  %i.aa = phi i8 [ %i.as, %.backedge.i ], [ %i.t, %.preheader.i ]
  %.sroa.555.0.copyload.i = load i8, ptr %.sroa.555.0..sroa_idx.i, align 1, !noalias !100 ; 4 uses
  %.sroa.757.0.copyload.i = load i32, ptr %.sroa.757.0..sroa_idx.i, align 4, !noalias !100
  %.sroa.858.0.copyload.i = load ptr, ptr %.sroa.858.0..sroa_idx.i, align 8, !noalias !100 ; 4 uses
  %.sroa.959.0.copyload.i = load i64, ptr %.sroa.959.0..sroa_idx.i, align 8, !noalias !100 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !100
  %i.ab = ptrtoint ptr %.sroa.858.0.copyload.i to i64 ; 6 uses
  switch i8 %i.aa, label %default.unreachable [
    i8 -1, label %bb.b
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
    i8 6, label %bb.i
    i8 7, label %bb.j
    i8 8, label %bb.k
    i8 9, label %bb.l
    i8 10, label %bb.m
    i8 11, label %bb.n
  ]

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 16, i1 false), !alias.scope !98, !noalias !99
  br label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_12BindIterator10next_inner.exit

default.unreachable:                              ; preds = %.lr.ph.i
  unreachable

bb.c:                                             ; preds = %.lr.ph.i
  %i.ac = load i8, ptr %i.r, align 1, !range !7, !alias.scope !99, !noalias !98, !noundef !4
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.p, label %bb.o

bb.d:                                             ; preds = %.lr.ph.i
  %i.ae = icmp ugt ptr %.sroa.858.0.copyload.i, inttoptr (i64 2147483647 to ptr)
  br i1 %i.ae, label %.loopexit, label %bb.q

bb.e:                                             ; preds = %.lr.ph.i
  store i8 1, ptr %i.p, align 4, !alias.scope !99, !noalias !98
  store i32 %.sroa.757.0.copyload.i, ptr %i.q, align 8, !alias.scope !99, !noalias !98
  br label %.backedge.i

bb.f:                                             ; preds = %.lr.ph.i
  store i8 1, ptr %i.l, align 1, !alias.scope !99, !noalias !98
  store i8 %.sroa.555.0.copyload.i, ptr %i.n, align 2, !alias.scope !99, !noalias !98
  store ptr %.sroa.858.0.copyload.i, ptr %i.m, align 8, !alias.scope !99, !noalias !98, !captures !8
  store i64 %.sroa.959.0.copyload.i, ptr %i.o, align 8, !alias.scope !99, !noalias !98
  br label %.backedge.i

bb.g:                                             ; preds = %.lr.ph.i
  store i8 1, ptr %i.j, align 1, !alias.scope !99, !noalias !98
  store i8 %.sroa.555.0.copyload.i, ptr %i.k, align 1, !alias.scope !99, !noalias !98
  br label %.backedge.i

bb.h:                                             ; preds = %.lr.ph.i
  store i64 %i.ab, ptr %i.i, align 8, !alias.scope !99, !noalias !98
  br label %.backedge.i

bb.i:                                             ; preds = %.lr.ph.i
  store i8 1, ptr %i.g, align 2, !alias.scope !99, !noalias !98
  store i8 %.sroa.555.0.copyload.i, ptr %i.h, align 4, !alias.scope !99, !noalias !98
  store i64 %i.ab, ptr %i.f, align 8, !alias.scope !99, !noalias !98
  br label %.backedge.i

bb.j:                                             ; preds = %.lr.ph.i
  %i.af = load i64, ptr %i.f, align 8, !alias.scope !99, !noalias !98, !noundef !4
  %i.ag = add i64 %i.af, %i.ab
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !99, !noalias !98
end_hunk_1
begin_hunk_2_@_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_23RebaseOperationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 -2, ptr %i.h, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_14RebaseIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs2_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_14RebaseIterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
  %i.b = load i64, ptr %i.a, align 8, !range !111, !noundef !4
  switch i64 %i.b, label %bb.c [
    i64 2, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  store i64 1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  store i64 0, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_21BindOperationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((8, 9)) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_21BindOperationIterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !range !9, !noundef !4
  switch i8 %i.c, label %bb.c [
    i8 -2, label %bb.b
    i8 -1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 -1, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %.sroa.41.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.g, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 -2, ptr %i.h, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs8_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_12BindIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_12BindIterator4next(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1)
  %i.b = load i64, ptr %i.a, align 8, !range !112, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !noundef !4 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.g, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sink = phi i64 [ 1, %bb.b ], [ 1, %bb.d ], [ 0, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, -9223372036854775808) i64 @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U16NtB1j_12LittleEndianNtNtNtNtB1l_4read2pe6export18ExportAddressIndexEENCNvMs5_B2d_NtB2d_11ExportTable9name_iters_0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB1l_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 1
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 4611686018427387904) i64 @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U32NtB1j_12LittleEndianEENCNvMs5_NtNtNtB1l_4read2pe6exportNtB2l_11ExportTable9name_iter0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB1l_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 2
  ret i64 %i.e
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseHTIzroA4w0_6object(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseHTIzroA4w0_6object(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXNtCs906JEEYSgkH_6memchr3extPhNtB2_7Pointer8distanceCseHTIzroA4w0_6object(ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCseHTIzroA4w0_6object(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i64 @_RNvXNtNtCskKLDkoKarTP_4core4char6decodeINtB2_11DecodeUtf16INtNtNtNtB6_4iter8adapters3map3MapINtNtNtB6_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U16NtB1V_12LittleEndianEENCNvMs2_NtNtNtB1X_4read2pe8resourceNtB2X_12ResourceName15to_string_lossy0EENtNtNtB11_6traits8iterator8Iterator4nextB1X_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_sleb128(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { cold noreturn nounwind }
attributes #10 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{i8 -2, i8 8}
!7 = !{i8 0, i8 2}
!8 = !{!"address", !"read_provenance"}
!9 = !{i8 -2, i8 12}
!10 = distinct !{!10, !"_RINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendcE6extendINtNtNtBS_8adapters3map3MapINtNtNtBU_4char6decode11DecodeUtf16IB1O_INtNtNtBU_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U16NtB3l_12LittleEndianEENCNvMs2_NtNtNtB3n_4read2pe8resourceNtB4n_12ResourceName15to_string_lossy0EENCB4h_s_0EEB3n_"}
!11 = distinct !{!11, !10, !"_RINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendcE6extendINtNtNtBS_8adapters3map3MapINtNtNtBU_4char6decode11DecodeUtf16IB1O_INtNtNtBU_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U16NtB3l_12LittleEndianEENCNvMs2_NtNtNtB3n_4read2pe8resourceNtB4n_12ResourceName15to_string_lossy0EENCB4h_s_0EEB3n_: argument 0"}
!12 = distinct !{!12, !10, !"_RINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendcE6extendINtNtNtBS_8adapters3map3MapINtNtNtBU_4char6decode11DecodeUtf16IB1O_INtNtNtBU_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U16NtB3l_12LittleEndianEENCNvMs2_NtNtNtB3n_4read2pe8resourceNtB4n_12ResourceName15to_string_lossy0EENCB4h_s_0EEB3n_: argument 1"}
!13 = distinct !{!13, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_4char6decode11DecodeUtf16IBM_INtNtNtB8_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U16NtB2i_12LittleEndianEENCNvMs2_NtNtNtB2k_4read2pe8resourceNtB3k_12ResourceName15to_string_lossy0EENCB3e_s_0ENtB2_12IntoIterator9into_iterB2k_"}
!14 = distinct !{!14, !13, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_4char6decode11DecodeUtf16IBM_INtNtNtB8_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U16NtB2i_12LittleEndianEENCNvMs2_NtNtNtB2k_4read2pe8resourceNtB3k_12ResourceName15to_string_lossy0EENCB3e_s_0ENtB2_12IntoIterator9into_iterB2k_: argument 1"}
!15 = distinct !{!15, !13, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_4char6decode11DecodeUtf16IBM_INtNtNtB8_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U16NtB2i_12LittleEndianEENCNvMs2_NtNtNtB2k_4read2pe8resourceNtB3k_12ResourceName15to_string_lossy0EENCB3e_s_0ENtB2_12IntoIterator9into_iterB2k_: argument 0"}
!16 = distinct !{!16, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_4char6decode11DecodeUtf16IB4_INtNtNtBc_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U16NtB1X_12LittleEndianEENCNvMs2_NtNtNtB1Z_4read2pe8resourceNtB2Z_12ResourceName15to_string_lossy0EENCB2T_s_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB54_6StringINtNtB4i_7collect6ExtendcE6extendB3_E0EB1Z_"}
!17 = distinct !{!17, !16, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_4char6decode11DecodeUtf16IB4_INtNtNtBc_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U16NtB1X_12LittleEndianEENCNvMs2_NtNtNtB1Z_4read2pe8resourceNtB2Z_12ResourceName15to_string_lossy0EENCB2T_s_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB54_6StringINtNtB4i_7collect6ExtendcE6extendB3_E0EB1Z_: argument 1"}
!18 = distinct !{!18, !"_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_4char6decode11DecodeUtf16IBO_INtNtNtBc_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U16NtB23_12LittleEndianEENCNvMs2_NtNtNtB25_4read2pe8resourceNtB35_12ResourceName15to_string_lossy0EENCB2Z_s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4k_8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB5x_6StringINtNtB4o_7collect6ExtendcE6extendBN_E0E0EB25_"}
!19 = distinct !{!19, !18, !"_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_4char6decode11DecodeUtf16IBO_INtNtNtBc_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U16NtB23_12LittleEndianEENCNvMs2_NtNtNtB25_4read2pe8resourceNtB35_12ResourceName15to_string_lossy0EENCB2Z_s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4k_8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB5x_6StringINtNtB4o_7collect6ExtendcE6extendBN_E0E0EB25_: argument 1"}
!20 = distinct !{!20, !16, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_4char6decode11DecodeUtf16IB4_INtNtNtBc_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U16NtB1X_12LittleEndianEENCNvMs2_NtNtNtB1Z_4read2pe8resourceNtB2Z_12ResourceName15to_string_lossy0EENCB2T_s_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB54_6StringINtNtB4i_7collect6ExtendcE6extendB3_E0EB1Z_: argument 0"}
!21 = distinct !{!21, !18, !"_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_4char6decode11DecodeUtf16IBO_INtNtNtBc_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U16NtB23_12LittleEndianEENCNvMs2_NtNtNtB25_4read2pe8resourceNtB35_12ResourceName15to_string_lossy0EENCB2Z_s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4k_8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB5x_6StringINtNtB4o_7collect6ExtendcE6extendBN_E0E0EB25_: argument 0"}
!22 = distinct !{!22, !"_RINvYINtNtNtCskKLDkoKarTP_4core4char6decode11DecodeUtf16INtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U16NtB1T_12LittleEndianEENCNvMs2_NtNtNtB1V_4read2pe8resourceNtB2V_12ResourceName15to_string_lossy0EENtNtNtBZ_6traits8iterator8Iterator4folduNCINvBV_8map_foldINtNtBa_6result6ResultcNtB6_16DecodeUtf16ErrorEcuNCB2P_s_0NCINvNvB40_8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB6q_6StringINtNtB44_7collect6ExtendcE6extendIBT_B3_B5I_EE0E0E0EB1V_"}
!23 = distinct !{!23, !22, !"_RINvYINtNtNtCskKLDkoKarTP_4core4char6decode11DecodeUtf16INtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U16NtB1T_12LittleEndianEENCNvMs2_NtNtNtB1V_4read2pe8resourceNtB2V_12ResourceName15to_string_lossy0EENtNtNtBZ_6traits8iterator8Iterator4folduNCINvBV_8map_foldINtNtBa_6result6ResultcNtB6_16DecodeUtf16ErrorEcuNCB2P_s_0NCINvNvB40_8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB6q_6StringINtNtB44_7collect6ExtendcE6extendIBT_B3_B5I_EE0E0E0EB1V_: argument 1"}
!24 = distinct !{!24, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push"}
!25 = distinct !{!25, !24, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push: argument 0"}
!26 = distinct !{!26, !22, !"_RINvYINtNtNtCskKLDkoKarTP_4core4char6decode11DecodeUtf16INtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U16NtB1T_12LittleEndianEENCNvMs2_NtNtNtB1V_4read2pe8resourceNtB2V_12ResourceName15to_string_lossy0EENtNtNtBZ_6traits8iterator8Iterator4folduNCINvBV_8map_foldINtNtBa_6result6ResultcNtB6_16DecodeUtf16ErrorEcuNCB2P_s_0NCINvNvB40_8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB6q_6StringINtNtB44_7collect6ExtendcE6extendIBT_B3_B5I_EE0E0E0EB1V_: argument 0"}
!27 = !{!11}
!28 = !{!12}
!29 = !{!15, !14, !12}
!30 = !{!17}
!31 = !{!19}
!32 = !{!21, !19, !20, !17, !11, !12}
!33 = !{!19, !17, !11, !12}
!34 = !{!25, !23, !19, !17, !11}
!35 = !{!26, !21, !20, !12}
!36 = !{!21, !20, !12}
!37 = distinct !{!37, !"_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_"}
!38 = distinct !{!38, !37, !"_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_: argument 1"}
!39 = distinct !{!39, !37, !"_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_: argument 0"}
!40 = !{!38}
!41 = !{!39}
!42 = distinct !{!42, !"_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_"}
!43 = distinct !{!43, !42, !"_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_: argument 1"}
!44 = distinct !{!44, !42, !"_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_: argument 0"}
!45 = !{!43}
!46 = !{!44}
!47 = distinct !{!47, !"_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_"}
!48 = distinct !{!48, !47, !"_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_: argument 1"}
!49 = distinct !{!49, !47, !"_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_: argument 0"}
!50 = !{!48}
!51 = !{!49}
!52 = distinct !{!52, !"_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_"}
!53 = distinct !{!53, !52, !"_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_: argument 1"}
!54 = distinct !{!54, !52, !"_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_: argument 0"}
!55 = !{!53}
!56 = !{!54}
!57 = distinct !{!57, !"_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_"}
!58 = distinct !{!58, !57, !"_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_: argument 1"}
!59 = distinct !{!59, !57, !"_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_: argument 0"}
!60 = !{!58}
!61 = !{!59}
!62 = distinct !{!62, !"_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_"}
!63 = distinct !{!63, !62, !"_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_: argument 1"}
!64 = distinct !{!64, !62, !"_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_: argument 0"}
!65 = !{!63}
!66 = !{!64}
!67 = distinct !{!67, !"_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_"}
!68 = distinct !{!68, !67, !"_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_: argument 1"}
!69 = distinct !{!69, !67, !"_RNvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_bytesBb_: argument 0"}
!70 = !{!68}
!71 = !{!69}
!72 = distinct !{!72, !"_RNvMs2_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_14RebaseIterator10next_inner"}
!73 = distinct !{!73, !72, !"_RNvMs2_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_14RebaseIterator10next_inner: argument 0"}
!74 = distinct !{!74, !72, !"_RNvMs2_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_14RebaseIterator10next_inner: argument 1"}
!75 = distinct !{null}
!76 = !{!73}
!77 = !{!74}
!78 = !{!73, !74}
!79 = distinct !{!79, !"_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse"}
!80 = distinct !{!80, !79, !"_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse: argument 0"}
!81 = distinct !{!81, !79, !"_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse: argument 1"}
!82 = distinct !{!82, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string"}
!83 = distinct !{!83, !82, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string: argument 0"}
!84 = distinct !{!84, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0CseHTIzroA4w0_6object"}
!85 = distinct !{!85, !84, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0CseHTIzroA4w0_6object: argument 0"}
!86 = distinct !{null, null, null}
!87 = !{!80}
!88 = !{!81}
!89 = !{!80, !81}
!90 = !{!83}
!91 = !{!85, !83, !80, !81}
!92 = !{!83, !80, !81}
!93 = !{!83, !81}
!94 = distinct !{!94, !"_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_12BindIterator10next_inner"}
!95 = distinct !{!95, !94, !"_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_12BindIterator10next_inner: argument 0"}
!96 = distinct !{!96, !94, !"_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_12BindIterator10next_inner: argument 1"}
!97 = distinct !{null}
!98 = !{!95}
!99 = !{!96}
!100 = !{!95, !96}
!101 = distinct !{!101, !"_RNvMs1_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_15RebaseOperation5parse"}
!102 = distinct !{!102, !101, !"_RNvMs1_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_15RebaseOperation5parse: argument 0"}
!103 = distinct !{!103, !101, !"_RNvMs1_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_15RebaseOperation5parse: argument 1"}
!104 = !{!102}
!105 = !{!103}
!106 = !{!102, !103}
!107 = distinct !{!107, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0CseHTIzroA4w0_6object"}
!108 = distinct !{!108, !107, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0CseHTIzroA4w0_6object: argument 0"}
!109 = distinct !{null}
!110 = !{!108}
!111 = !{i64 0, i64 3}
!112 = !{i64 0, i64 2}
end_hunk_2
