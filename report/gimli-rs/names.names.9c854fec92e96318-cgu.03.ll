Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/names.names.9c854fec92e96318-cgu.03?download=true
inline.NumInlined: 143
inline.NumDeleted: 60
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [25 x i8] c"src/read/endian_slice.rs\00", align 1
@1 = private unnamed_addr constant [18 x i8] c"src/read/names.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\11\00\00\00\00\00\00\00~\02\00\00\0C\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRyNtB6_5Debug3fmtCsdr9GKMNitvw_5names }>, align 8
@4 = private unnamed_addr constant [8 x i8] c"Unsigned", align 1
@5 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRjNtB6_5Debug3fmtCsdr9GKMNitvw_5names }>, align 8
@6 = private unnamed_addr constant [6 x i8] c"Offset", align 1
@7 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRbNtB6_5Debug3fmtCsdr9GKMNitvw_5names }>, align 8
@8 = private unnamed_addr constant [4 x i8] c"Flag", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\18\00\00\00\00\00\00\00M\01\00\00\0D\00\00\00" }>, align 8
@10 = private unnamed_addr constant [15 x i8] c"NameEntryOffset", align 1

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_10DebugNamesNtCsdr9GKMNitvw_5names7SectionE6borrowQNCNvBY_4mains_0INtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtBY_13RelocationMapEEBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.a, align 8
  call void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvCsdr9GKMNitvw_5names4mains_0INtB7_5FnMutTRNtBS_7SectionEE8call_mutBS_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMsh_NtNtCsi68uqYEhoRA_5gimli4read5namesNtB6_17NameAbbreviations5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEB2P_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 13 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.val140 = load i64, ptr %i.j, align 8, !noundef !5
  %i.k = icmp eq i64 %.val140, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.b

.body110:                                         ; preds = %.loopexit, %.loopexit.split-lp, %bb.ae, %bb.w, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.an, %bb.w ], [ %i.be, %bb.ah ], [ %i.bc, %bb.ae ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli4read5names16NameAbbreviationEECsdr9GKMNitvw_5names(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #13
          to label %common.resume unwind label %bb.ai

.loopexit:                                        ; preds = %bb.b, %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body110

.loopexit.split-lp:                               ; preds = %bb.af
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body110

bb.b:                                             ; preds = %.lr.ph, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapENtNtB7_6reader6Reader12read_uleb128B26_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.c unwind label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.t = load i8, ptr %i.f, align 8, !range !6, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.t, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.462.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.459.0..sroa_idx, i64 7, i1 false)
  %.sroa.560.0.copyload = load i64, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.t, ptr %i.u, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.560.0.copyload, ptr %.sroa.563.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aj

bb.e:                                             ; preds = %bb.c
  %i.v = load i64, ptr %i.l, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapENtNtB7_6reader6Reader16read_uleb128_u16B26_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.g unwind label %.loopexit

._crit_edge:                                      ; preds = %bb.z, %bb.e, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br label %bb.am

bb.g:                                             ; preds = %bb.f
  %i.x = load i8, ptr %i.e, align 8, !range !6, !noundef !5 ; 2 uses
  %.not105 = icmp eq i8 %i.x, -1
  br i1 %.not105, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.469.0.copyload = load i8, ptr %.sroa.469.0..sroa_idx, align 1
  %.sroa.570.0.copyload = load i16, ptr %i.m, align 2
  %.sroa.671.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.675.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.671.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.x, ptr %i.y, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.469.0.copyload, ptr %.sroa.473.0..sroa_idx, align 1
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %.sroa.570.0.copyload, ptr %.sroa.574.0..sroa_idx, align 2
  store i64 -1, ptr %0, align 8
  br label %bb.aj

bb.i:                                             ; preds = %bb.g
  %i.z = load i16, ptr %i.m, align 2, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 8, ptr %i.ab, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aj

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.n, align 8
  br label %bb.l

bb.l:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli4read5names25NameAbbreviationAttributeE8push_mutCsdr9GKMNitvw_5names.exit, %bb.k
  %storemerge = phi i64 [ 0, %bb.k ], [ %i.bb, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli4read5names25NameAbbreviationAttributeE8push_mutCsdr9GKMNitvw_5names.exit ]
  store i64 %storemerge, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapENtNtB7_6reader6Reader16read_uleb128_u16B26_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.m unwind label %bb.ah

bb.m:                                             ; preds = %bb.l
  %i.ac = load i8, ptr %i.c, align 8, !range !6, !noundef !5 ; 2 uses
  %.not106 = icmp eq i8 %i.ac, -1
  br i1 %.not106, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.481.0.copyload = load i8, ptr %.sroa.481.0..sroa_idx, align 1
  %.sroa.582.0.copyload = load i16, ptr %i.p, align 2
  %.sroa.683.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.687.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.687.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.683.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ac, ptr %i.ad, align 8
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.481.0.copyload, ptr %.sroa.485.0..sroa_idx, align 1
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %.sroa.582.0.copyload, ptr %.sroa.586.0..sroa_idx, align 2
  br label %bb.ad

bb.o:                                             ; preds = %bb.m
  %i.ae = load i16, ptr %i.p, align 2, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapENtNtB7_6reader6Reader16read_uleb128_u16B26_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.p unwind label %bb.ah

bb.p:                                             ; preds = %bb.o
  %i.af = load i8, ptr %i.b, align 8, !range !6, !noundef !5 ; 2 uses
  %.not107 = icmp eq i8 %i.af, -1
  br i1 %.not107, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.493.0.copyload = load i8, ptr %.sroa.493.0..sroa_idx, align 1
  %.sroa.594.0.copyload = load i16, ptr %i.q, align 2
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.699.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.695.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.af, ptr %i.ag, align 8
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.493.0.copyload, ptr %.sroa.497.0..sroa_idx, align 1
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %.sroa.594.0.copyload, ptr %.sroa.598.0..sroa_idx, align 2
  br label %bb.ad

bb.r:                                             ; preds = %bb.p
  %i.ah = load i16, ptr %i.q, align 2, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = icmp eq i16 %i.ae, 0
  %i.aj = icmp eq i16 %i.ah, 0                    ; 2 uses
  br i1 %i.ai, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  br i1 %i.aj, label %bb.u, label %bb.y

bb.t:                                             ; preds = %bb.r
  br i1 %i.aj, label %bb.aa, label %bb.ab

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 %i.v, ptr %i.r, align 8
  store i16 %i.z, ptr %i.s, align 8
  %i.ak = load i64, ptr %i.i, align 8, !alias.scope !19, !noundef !5 ; 3 uses
  %i.al = load i64, ptr %i.g, align 8, !range !7, !alias.scope !19, !noundef !5
  %i.am = icmp eq i64 %i.ak, %i.al
  br i1 %i.am, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli4read5names16NameAbbreviationE8grow_oneCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.z unwind label %bb.w, !noalias !20

bb.w:                                             ; preds = %bb.v
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli4read5names16NameAbbreviationECsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) #13
          to label %.body110 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.y:                                             ; preds = %bb.s
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 9, ptr %i.ap, align 8
  br label %bb.ad

bb.z:                                             ; preds = %bb.v, %bb.u
  %i.aq = load ptr, ptr %i.h, align 8, !alias.scope !19, !nonnull !5, !noundef !5
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %i.aq, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  %i.as = add i64 %i.ak, 1
  store i64 %i.as, ptr %i.i, align 8, !alias.scope !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val = load i64, ptr %i.j, align 8, !noundef !5
  %i.at = icmp eq i64 %.val, 0
  br i1 %i.at, label %._crit_edge, label %bb.b

bb.aa:                                            ; preds = %bb.t
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 10, ptr %i.au, align 8
  br label %bb.ad

bb.ab:                                            ; preds = %bb.t
  %i.av = load i64, ptr %i.o, align 8, !alias.scope !21, !noundef !5 ; 3 uses
  %i.aw = load i64, ptr %i.d, align 8, !range !7, !alias.scope !21, !noundef !5
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.ac, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli4read5names25NameAbbreviationAttributeE8push_mutCsdr9GKMNitvw_5names.exit

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli4read5names25NameAbbreviationAttributeE8grow_oneCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #15
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli4read5names25NameAbbreviationAttributeE8push_mutCsdr9GKMNitvw_5names.exit unwind label %bb.ah

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli4read5names25NameAbbreviationAttributeE8push_mutCsdr9GKMNitvw_5names.exit: ; preds = %bb.ac, %bb.ab
  %i.ay = load ptr, ptr %i.n, align 8, !alias.scope !21, !nonnull !5, !noundef !5
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.av ; 2 uses
  store i16 %i.ae, ptr %i.az, align 2
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  store i16 %i.ah, ptr %i.ba, align 2
  %i.bb = add i64 %i.av, 1
  br label %bb.l

bb.ad:                                            ; preds = %bb.q, %bb.y, %bb.aa, %bb.n
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli4read5names25NameAbbreviationAttributeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.af unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli4read5names25NameAbbreviationAttributeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body110 unwind label %bb.ag

bb.af:                                            ; preds = %bb.ad
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli4read5names25NameAbbreviationAttributeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli4read5names25NameAbbreviationAttributeEECsdr9GKMNitvw_5names.exit unwind label %.loopexit.split-lp

bb.ag:                                            ; preds = %bb.ae
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
end_hunk_0
