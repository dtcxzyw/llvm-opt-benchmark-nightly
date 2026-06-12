inline.NumInlined: 143
inline.NumDeleted: 77
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array" = type { [6 x i8] }
%"class.llvh::SmallVector" = type { %"class.llvh::SmallVectorImpl", %"struct.llvh::SmallVectorStorage" }
%"class.llvh::SmallVectorImpl" = type { %"class.llvh::SmallVectorTemplateBase" }
%"class.llvh::SmallVectorTemplateBase" = type { %"class.llvh::SmallVectorTemplateCommon" }
%"class.llvh::SmallVectorTemplateCommon" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage" = type { [8 x %"struct.llvh::AlignedCharArrayUnion"] }
%"struct.llvh::AlignedCharArrayUnion" = type { %"struct.llvh::AlignedCharArray" }
%"struct.llvh::AlignedCharArray" = type { [2 x i8] }
%"class.llvh::Twine" = type <{ %"union.llvh::Twine::Child", %"union.llvh::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvh::Twine::Child" = type { ptr }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIPcvEEN9__gnu_cxx17__normal_iteratorIS6_S4_EENS8_IPKcS4_EET_SD_ = comdat any

$_ZN6hermes19_decodeUTF8SlowPathILb1EZNS_32convertUTF8WithSurrogatesToUTF16IPDsEET_S3_PKcS5_EUlRKN4llvh5TwineEE_EEjRS5_T0_ = comdat any

$_ZN4llvhplERKNS_5TwineES2_ = comdat any

@.str = private unnamed_addr constant [22 x i8] c"basic_string::replace\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Invalid UTF-8 code point 0x\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Invalid UTF-8 lead byte 0x\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6hermes10encodeUTF8ERPcj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7      ; 17 uses
  %i.b = icmp ult i32 %1, 128
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw nsw i32 %1 to i8
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ult i32 %1, 2048
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = trunc i32 %1 to i8
  %i.f = and i8 %i.e, 63
  %i.g = or disjoint i8 %i.f, -128
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.g, ptr %i.h, align 1, !tbaa !10
  %i.i = lshr i32 %1, 6
  %i.j = trunc nuw nsw i32 %i.i to i8
  %i.k = or disjoint i8 %i.j, -64
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.l = icmp ult i32 %1, 65536
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = trunc i32 %1 to i8
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.o, ptr %i.p, align 1, !tbaa !10
  %i.q = lshr i32 %1, 6
  %i.r = trunc i32 %i.q to i8
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.t, ptr %i.u, align 1, !tbaa !10
  %i.v = lshr i32 %1, 12
  %i.w = trunc nuw nsw i32 %i.v to i8
  %i.x = or disjoint i8 %i.w, -32
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.y = icmp ult i32 %1, 2097152
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = trunc i32 %1 to i8
  %i.aa = and i8 %i.z, 63
  %i.ab = or disjoint i8 %i.aa, -128
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !10
  %i.ad = lshr i32 %1, 6
  %i.ae = trunc i32 %i.ad to i8
  %i.af = and i8 %i.ae, 63
  %i.ag = or disjoint i8 %i.af, -128
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !10
  %i.ai = lshr i32 %1, 12
  %i.aj = trunc i32 %i.ai to i8
  %i.ak = and i8 %i.aj, 63
  %i.al = or disjoint i8 %i.ak, -128
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.al, ptr %i.am, align 1, !tbaa !10
  %i.an = lshr i32 %1, 18
  %i.ao = trunc nuw nsw i32 %i.an to i8
  %i.ap = or disjoint i8 %i.ao, -16
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.aq = icmp ult i32 %1, 67108864
  %i.ar = trunc i32 %1 to i8
  %i.as = and i8 %i.ar, 63
  %i.at = or disjoint i8 %i.as, -128              ; 2 uses
  %i.au = lshr i32 %1, 6
  %i.av = trunc i32 %i.au to i8
  %i.aw = and i8 %i.av, 63
  %i.ax = or disjoint i8 %i.aw, -128              ; 2 uses
  %i.ay = lshr i32 %1, 12
  %i.az = trunc i32 %i.ay to i8
  %i.ba = and i8 %i.az, 63
  %i.bb = or disjoint i8 %i.ba, -128              ; 2 uses
  %i.bc = lshr i32 %1, 18
  %i.bd = trunc i32 %i.bc to i8
  %i.be = and i8 %i.bd, 63
  %i.bf = or disjoint i8 %i.be, -128              ; 2 uses
  %i.bg = lshr i32 %1, 24
  %i.bh = trunc nuw i32 %i.bg to i8               ; 2 uses
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.at, ptr %i.bi, align 1, !tbaa !10
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.ax, ptr %i.bj, align 1, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.bb, ptr %i.bk, align 1, !tbaa !10
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.bf, ptr %i.bl, align 1, !tbaa !10
  %i.bm = or disjoint i8 %i.bh, -8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.at, ptr %i.bn, align 1, !tbaa !10
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.ax, ptr %i.bo, align 1, !tbaa !10
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.bb, ptr %i.bp, align 1, !tbaa !10
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.bf, ptr %i.bq, align 1, !tbaa !10
  %i.br = and i8 %i.bh, 63
  %i.bs = or disjoint i8 %i.br, -128
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !10
  %i.bu = lshr i32 %1, 30
  %i.bv = trunc nuw nsw i32 %i.bu to i8
  %i.bw = and i8 %i.bv, 1
  %i.bx = or disjoint i8 %i.bw, -4
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.h, %bb.k, %bb.j, %bb.f, %bb.b
  %.sink72 = phi i8 [ %i.k, %bb.d ], [ %i.ap, %bb.h ], [ %i.bx, %bb.k ], [ %i.bm, %bb.j ], [ %i.x, %bb.f ], [ %i.c, %bb.b ]
  %.sink = phi i64 [ 2, %bb.d ], [ 4, %bb.h ], [ 6, %bb.k ], [ 5, %bb.j ], [ 3, %bb.f ], [ 1, %bb.b ]
  store i8 %.sink72, ptr %i.a, align 1, !tbaa !10
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink
  store ptr %i.by, ptr %0, align 8, !tbaa !7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes34convertUTF16ToUTF8WithReplacementsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvh8ArrayRefIDsEEm(ptr noundef nonnull align 8 dereferenceable(32) initializes((8, 16)) %0, ptr nofree readonly captures(address) %1, i64 %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %"struct.std::array", align 1       ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !11
  %i.c = load ptr, ptr %0, align 8, !tbaa !15
  store i8 0, ptr %i.c, align 1, !tbaa !10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #11
  %.not = icmp eq i64 %3, 0
  %spec.select = select i1 %.not, i64 -1, i64 %3
  %.idx = shl nuw nsw i64 %2, 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 3 uses
  %.not33 = icmp eq i64 %2, 0
  br i1 %.not33, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.02132 = phi i64 [ 0, %.lr.ph ], [ %i.ad, %bb.g ]
  %.02231 = phi ptr [ %1, %.lr.ph ], [ %i.ac, %bb.g ] ; 4 uses
  %i.f = load i16, ptr %.02231, align 2, !tbaa !16 ; 2 uses
  %i.g = icmp ult i16 %i.f, 128
  br i1 %i.g, label %bb.c, label %bb.f, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.h = trunc nuw nsw i16 %i.f to i8
  %i.i = load i64, ptr %i.b, align 8, !tbaa !11   ; 4 uses
  %i.j = add i64 %i.i, 1                          ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.e                   ; 2 uses
  br i1 %i.l, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.m)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.d, %bb.c
  %5 = load i64, ptr %i.e, align 8
  %6 = select i1 %i.l, i64 15, i64 %5
  %i.n = icmp ugt i64 %i.j, %6
  br i1 %i.n, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.i, i64 noundef 0, ptr noundef null, i64 noundef 1) #11
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.e
  %i.o = phi ptr [ %.pre.i, %bb.e ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.i
  store i8 %i.h, ptr %i.p, align 1, !tbaa !10
  store i64 %i.j, ptr %i.b, align 8, !tbaa !11
  %i.q = load ptr, ptr %0, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.j
  store i8 0, ptr %i.r, align 1, !tbaa !10
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.s = call fastcc { i32, i64 } @_ZN6hermesL20convertToCodePointAtEPKDsS1_(ptr noundef nonnull %.02231, ptr noundef nonnull %i.d) ; 2 uses
  %i.t = extractvalue { i32, i64 } %i.s, 0
  %i.u = extractvalue { i32, i64 } %i.s, 1
  %i.v = getelementptr [2 x i8], ptr %.02231, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 -2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr %4, ptr %i.a, align 8, !tbaa !7
  call void @_ZN6hermes10encodeUTF8ERPcj(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.t)
  %i.x = load ptr, ptr %0, align 8, !tbaa !15
  %i.y = load i64, ptr %i.b, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ab = call ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIPcvEEN9__gnu_cxx17__normal_iteratorIS6_S4_EENS8_IPKcS4_EET_SD_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %i.z, ptr noundef nonnull %4, ptr noundef %i.aa) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %.1 = phi ptr [ %.02231, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ %i.w, %bb.f ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 3 uses
  %i.ad = add nuw i64 %.02132, 1                  ; 2 uses
  %i.ae = icmp ult ptr %i.ac, %i.d
  %i.af = icmp ult i64 %i.ad, %spec.select
  %i.ag = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %i.ag, label %bb.b, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %.022.lcssa = phi ptr [ %1, %bb.a ], [ %i.ac, %bb.g ]
  %i.ah = icmp eq ptr %.022.lcssa, %i.d
  ret i1 %i.ah
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc { i32, i64 } @_ZN6hermesL20convertToCodePointAtEPKDsS1_(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !16     ; 2 uses
  %i.b = zext i16 %i.a to i32                     ; 2 uses
  %trunc = and i16 %i.a, -1024
  switch i16 %trunc, label %.fold.split [
    i16 -9216, label %bb.e
    i16 -10240, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.d = icmp eq ptr %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i16, ptr %i.c, align 2, !tbaa !16
  %i.f = zext i16 %i.e to i32                     ; 2 uses
  %i.g = and i32 %i.f, 64512
  %i.h = icmp eq i32 %i.g, 56320
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw nsw i32 %i.b, 10
  %i.j = add nsw i32 %i.i, -56613888
  %i.k = add nsw i32 %i.j, %i.f
  br label %bb.e

.fold.split:                                      ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %.fold.split, %bb.b, %bb.c, %bb.d
  %.sroa.0.0 = phi i32 [ 65533, %bb.b ], [ 65533, %bb.a ], [ %i.k, %bb.d ], [ 65533, %bb.c ], [ %i.b, %.fold.split ]
  %.sroa.5.0 = phi i64 [ 1, %bb.b ], [ 1, %bb.a ], [ 2, %bb.d ], [ 1, %bb.c ], [ 1, %.fold.split ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIPcvEEN9__gnu_cxx17__normal_iteratorIS6_S4_EENS8_IPKcS4_EET_SD_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11   ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_PcSA_.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef %i.d, i64 noundef %i.f) #12
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_PcSA_.exit: ; preds = %bb.a
  %i.h = ptrtoint ptr %3 to i64
  %i.i = ptrtoint ptr %2 to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d, i64 noundef 0, ptr noundef %2, i64 noundef %i.j) #11 ; 0 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  ret ptr %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @_ZN6hermes40convertUTF16ToUTF8BufferWithReplacementsEN4llvh15MutableArrayRefIhEENS0_8ArrayRefIDsEE(ptr nofree writeonly captures(none) %0, i64 %1, ptr nofree readonly captures(address) %2, i64 %3) local_unnamed_addr #5 {
bb.a:
  %4 = alloca %"struct.std::array", align 1       ; 6 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %.idx = shl nuw nsw i64 %3, 1
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %4 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.074 = phi ptr [ %0, %.lr.ph ], [ %.261, %bb.f ] ; 4 uses
  %.02073 = phi ptr [ %2, %.lr.ph ], [ %i.ab, %bb.f ] ; 4 uses
  %.04072 = phi i32 [ 0, %.lr.ph ], [ %.24259, %bb.f ] ; 4 uses
  %.04371 = phi i32 [ 0, %.lr.ph ], [ %.24558, %bb.f ] ; 5 uses
  %i.d = load i16, ptr %.02073, align 2, !tbaa !16 ; 2 uses
  %i.e = icmp ult i16 %i.d, 128
  br i1 %i.e, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.f = add i32 %.04371, 1                       ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = icmp ult i64 %1, %i.g
  br i1 %i.h, label %.thread, label %.thread52

.thread52:                                        ; preds = %bb.c
  %i.i = trunc nuw nsw i16 %i.d to i8
  store i8 %i.i, ptr %.074, align 1, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %.074, i64 1
  %i.k = add i32 %.04072, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.l = call fastcc { i32, i64 } @_ZN6hermesL20convertToCodePointAtEPKDsS1_(ptr noundef nonnull %.02073, ptr noundef nonnull %i.b) ; 2 uses
  %i.m = extractvalue { i32, i64 } %i.l, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr %4, ptr %i.a, align 8, !tbaa !7
  call void @_ZN6hermes10encodeUTF8ERPcj(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.m)
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.c                       ; 4 uses
  %i.q = zext i32 %.04371 to i64
  %i.r = add i64 %i.p, %i.q
  %i.s = icmp ugt i64 %i.r, %1
  br i1 %i.s, label %.thread62, label %bb.e

.thread62:                                        ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %.thread

bb.e:                                             ; preds = %bb.d
  %i.t = extractvalue { i32, i64 } %i.l, 1        ; 2 uses
  %i.u = getelementptr [2 x i8], ptr %.02073, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.074, ptr nonnull align 1 %4, i64 %i.p, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.074, i64 %i.p
  %i.x = trunc i64 %i.p to i32
  %i.y = add i32 %.04371, %i.x
  %i.z = trunc i64 %i.t to i32
  %i.aa = add i32 %.04072, %i.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread52
  %.261 = phi ptr [ %i.j, %.thread52 ], [ %i.w, %bb.e ]
  %.12160 = phi ptr [ %.02073, %.thread52 ], [ %i.v, %bb.e ]
  %.24259 = phi i32 [ %i.k, %.thread52 ], [ %i.aa, %bb.e ] ; 2 uses
  %.24558 = phi i32 [ %i.f, %.thread52 ], [ %i.y, %bb.e ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.12160, i64 2 ; 2 uses
  %i.ac = icmp ult ptr %i.ab, %i.b
  br i1 %i.ac, label %bb.b, label %.thread, !llvm.loop !21

.thread:                                          ; preds = %bb.f, %bb.c, %bb.a, %.thread62
  %.04370 = phi i32 [ %.04371, %.thread62 ], [ 0, %bb.a ], [ %.24558, %bb.f ], [ %.04371, %bb.c ]
  %.04068 = phi i32 [ %.04072, %.thread62 ], [ 0, %bb.a ], [ %.24259, %bb.f ], [ %.04072, %bb.c ]
  %.sroa.239.0.insert.ext = zext i32 %.04370 to i64
  %.sroa.239.0.insert.shift = shl nuw i64 %.sroa.239.0.insert.ext, 32
  %.sroa.038.0.insert.ext = zext i32 %.04068 to i64
  %.sroa.038.0.insert.insert = or disjoint i64 %.sroa.239.0.insert.shift, %.sroa.038.0.insert.ext
  ret i64 %.sroa.038.0.insert.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes38convertUTF16ToUTF8WithSingleSurrogatesERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(32) initializes((8, 16)) %0, ptr nofree readonly captures(address) %1, i64 %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [6 x i8], align 1                 ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.c, align 8, !tbaa !11
  %i.d = load ptr, ptr %0, align 8, !tbaa !15
  store i8 0, ptr %i.d, align 1, !tbaa !10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #11
  %.idx = shl nuw nsw i64 %2, 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not19 = icmp eq i64 %2, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.020 = phi ptr [ %1, %.lr.ph ], [ %i.z, %bb.g ] ; 2 uses
  %i.g = load i16, ptr %.020, align 2, !tbaa !16  ; 3 uses
  %i.h = icmp ult i16 %i.g, 128
  br i1 %i.h, label %bb.c, label %bb.f, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.i = trunc nuw nsw i16 %i.g to i8
  %i.j = load i64, ptr %i.c, align 8, !tbaa !11   ; 4 uses
  %i.k = add i64 %i.j, 1                          ; 3 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.f                   ; 2 uses
  br i1 %i.m, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.n = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.n)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.d, %bb.c
  %3 = load i64, ptr %i.f, align 8
  %4 = select i1 %i.m, i64 15, i64 %3
  %i.o = icmp ugt i64 %i.k, %4
  br i1 %i.o, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.j, i64 noundef 0, ptr noundef null, i64 noundef 1) #11
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.e
  %i.p = phi ptr [ %.pre.i, %bb.e ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.j
  store i8 %i.i, ptr %i.q, align 1, !tbaa !10
  store i64 %i.k, ptr %i.c, align 8, !tbaa !11
  %i.r = load ptr, ptr %0, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.k
  store i8 0, ptr %i.s, align 1, !tbaa !10
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.t = zext i16 %i.g to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr %i.a, ptr %i.b, align 8, !tbaa !7
  call void @_ZN6hermes10encodeUTF8ERPcj(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.t)
  %i.u = load ptr, ptr %0, align 8, !tbaa !15
  %i.v = load i64, ptr %i.c, align 8, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.y = call ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIPcvEEN9__gnu_cxx17__normal_iteratorIS6_S4_EENS8_IPKcS4_EET_SD_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %i.w, ptr noundef nonnull %i.a, ptr noundef %i.x) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.020, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.z, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN6hermes10isAllASCIIEPKhS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 7 uses
  %i.d = icmp ugt i64 %i.c, 3
  br i1 %i.d, label %.preheader42, label %.loopexit

.preheader42:                                     ; preds = %bb.a
  %i.e = and i64 %i.b, 3
  %.not45 = icmp eq i64 %i.e, 0
  br i1 %.not45, label %.preheader.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader42
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.g = load i8, ptr %0, align 1, !tbaa !10      ; 2 uses
  %i.h = add i64 %i.c, -1
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = and i64 %i.i, 3
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.l = load i8, ptr %i.f, align 1, !tbaa !10
  %i.m = or i8 %i.l, %i.g                         ; 2 uses
  %i.n = add i64 %i.c, -2
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = and i64 %i.o, 3
  %.not.1 = icmp eq i64 %i.p, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 3 uses
  %i.r = load i8, ptr %i.k, align 1, !tbaa !10
  %i.s = or i8 %i.r, %i.m                         ; 2 uses
  %i.t = add i64 %i.c, -3
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = and i64 %i.u, 3
  %.not.2 = icmp eq i64 %i.v, 0
  br i1 %.not.2, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load i8, ptr %i.q, align 1, !tbaa !10
  %i.y = or i8 %i.x, %i.s
  %i.z = add i64 %i.c, -4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %.lcssa103 = phi ptr [ %i.f, %.lr.ph ], [ %i.k, %.lr.ph.1 ], [ %i.q, %.lr.ph.2 ], [ %i.w, %.lr.ph.3 ]
  %.lcssa102 = phi i8 [ %i.g, %.lr.ph ], [ %i.m, %.lr.ph.1 ], [ %i.s, %.lr.ph.2 ], [ %i.y, %.lr.ph.3 ]
  %.lcssa101 = phi i64 [ %i.h, %.lr.ph ], [ %i.n, %.lr.ph.1 ], [ %i.t, %.lr.ph.2 ], [ %i.z, %.lr.ph.3 ]
  %i.aa = icmp sgt i8 %.lcssa102, -1
  br i1 %i.aa, label %.preheader.preheader, label %.critedge

.preheader.preheader:                             ; preds = %.preheader42, %._crit_edge
  %.025.lcssa68 = phi i64 [ %.lcssa101, %._crit_edge ], [ %i.c, %.preheader42 ] ; 3 uses
  %.030.lcssa67 = phi ptr [ %.lcssa103, %._crit_edge ], [ %0, %.preheader42 ] ; 2 uses
  %i.ab = icmp ugt i64 %.025.lcssa68, 3
  br i1 %i.ab, label %.lr.ph81, label %.loopexit

.preheader:                                       ; preds = %.lr.ph81
  %i.ac = add i64 %.12680, -4                     ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.13179, i64 4 ; 2 uses
  %i.ae = icmp ugt i64 %i.ac, 3
  br i1 %i.ae, label %.lr.ph81, label %.loopexit, !llvm.loop !22

.lr.ph81:                                         ; preds = %.preheader.preheader, %.preheader
  %.12680 = phi i64 [ %i.ac, %.preheader ], [ %.025.lcssa68, %.preheader.preheader ]
  %.13179 = phi ptr [ %i.ad, %.preheader ], [ %.030.lcssa67, %.preheader.preheader ] ; 2 uses
  %i.af = load i32, ptr %.13179, align 4, !tbaa !3
  %i.ag = and i32 %i.af, -2139062144
  %.not39 = icmp eq i32 %i.ag, 0
  br i1 %.not39, label %.preheader, label %.critedge, !llvm.loop !22

.loopexit:                                        ; preds = %.preheader, %.preheader.preheader, %bb.a
  %.434 = phi ptr [ %0, %bb.a ], [ %.030.lcssa67, %.preheader.preheader ], [ %i.ad, %.preheader ]
  %.429 = phi i64 [ %i.c, %bb.a ], [ %.025.lcssa68, %.preheader.preheader ], [ %i.ac, %.preheader ] ; 2 uses
  %.not4051 = icmp eq i64 %.429, 0
  br i1 %.not4051, label %.critedge, label %.lr.ph56

.lr.ph56:                                         ; preds = %.loopexit, %.lr.ph56
  %.054 = phi i8 [ %i.ak, %.lr.ph56 ], [ 0, %.loopexit ]
  %.553 = phi i64 [ %i.ah, %.lr.ph56 ], [ %.429, %.loopexit ]
  %.53552 = phi ptr [ %i.ai, %.lr.ph56 ], [ %.434, %.loopexit ] ; 2 uses
  %i.ah = add i64 %.553, -1                       ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.53552, i64 1
  %i.aj = load i8, ptr %.53552, align 1, !tbaa !10
  %i.ak = or i8 %i.aj, %.054                      ; 2 uses
  %.not40 = icmp eq i64 %i.ah, 0
  br i1 %.not40, label %._crit_edge57.loopexit.loopexit, label %.lr.ph56, !llvm.loop !23

._crit_edge57.loopexit.loopexit:                  ; preds = %.lr.ph56
  %i.al = icmp sgt i8 %i.ak, -1
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph81, %.loopexit, %._crit_edge57.loopexit.loopexit, %._crit_edge
  %.4 = phi i1 [ %i.al, %._crit_edge57.loopexit.loopexit ], [ false, %._crit_edge ], [ true, %.loopexit ], [ false, %.lr.ph81 ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes47convertUTF8WithSurrogatesToUTF8WithReplacementsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %3 = alloca %"class.llvh::SmallVector", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 8, ptr %i.d, align 4, !tbaa !29
  %i.e = icmp ugt i64 %2, 8
  br i1 %i.e, label %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit.thread, label %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit

_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit.thread: ; preds = %bb.a
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.b, i64 noundef %2, i64 noundef 2) #11
  %.pre = load ptr, ptr %3, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !7
  br label %.lr.ph.i.preheader

_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit:     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !7
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZN6hermes32convertUTF8WithSurrogatesToUTF16IPDsEET_S2_PKcS4_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit.thread, %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit
  %i.f = phi ptr [ %.pre, %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit.thread ], [ %i.b, %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN6hermes11encodeUTF16IPDsEEvRT_j.exit.i
  %i.h = phi ptr [ %i.aa, %_ZN6hermes11encodeUTF16IPDsEEvRT_j.exit.i ], [ %1, %.lr.ph.i.preheader ] ; 3 uses
  %.03.i = phi ptr [ %i.z, %_ZN6hermes11encodeUTF16IPDsEEvRT_j.exit.i ], [ %i.f, %.lr.ph.i.preheader ] ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !10
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store ptr %i.k, ptr %i.a, align 8, !tbaa !7
  %i.l = load i8, ptr %i.h, align 1, !tbaa !10
  %i.m = sext i8 %i.l to i32
  br label %_ZN6hermes10decodeUTF8ILb1EZNS_32convertUTF8WithSurrogatesToUTF16IPDsEET_S3_PKcS5_EUlRKN4llvh5TwineEE_EEjRS5_T0_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = call noundef i32 @_ZN6hermes19_decodeUTF8SlowPathILb1EZNS_32convertUTF8WithSurrogatesToUTF16IPDsEET_S3_PKcS5_EUlRKN4llvh5TwineEE_EEjRS5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN6hermes10decodeUTF8ILb1EZNS_32convertUTF8WithSurrogatesToUTF16IPDsEET_S3_PKcS5_EUlRKN4llvh5TwineEE_EEjRS5_T0_.exit.i

_ZN6hermes10decodeUTF8ILb1EZNS_32convertUTF8WithSurrogatesToUTF16IPDsEET_S3_PKcS5_EUlRKN4llvh5TwineEE_EEjRS5_T0_.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.m, %bb.b ], [ %i.n, %bb.c ] ; 4 uses
  %i.o = icmp ult i32 %.0.i.i, 65536
  br i1 %i.o, label %bb.d, label %bb.e, !prof !18

bb.d:                                             ; preds = %_ZN6hermes10decodeUTF8ILb1EZNS_32convertUTF8WithSurrogatesToUTF16IPDsEET_S3_PKcS5_EUlRKN4llvh5TwineEE_EEjRS5_T0_.exit.i
  %i.p = trunc nuw i32 %.0.i.i to i16
end_hunk_0
