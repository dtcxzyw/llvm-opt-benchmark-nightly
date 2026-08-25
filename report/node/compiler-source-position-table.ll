Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/compiler-source-position-table?download=true
inline.NumInlined: 86
inline.NumDeleted: 62
begin_hunk_0

@.str = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\22 : \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@_ZTVN2v88internal8compiler19SourcePositionTable9DecoratorE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal8compiler14GraphDecoratorD2Ev, ptr @_ZN2v88internal8compiler19SourcePositionTable9DecoratorD0Ev, ptr @_ZN2v88internal8compiler19SourcePositionTable9Decorator8DecorateEPNS1_4NodeE] }, comdat, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"length < std::numeric_limits<size_t>::max() / sizeof(T)\00", align 1

@_ZN2v88internal8compiler19SourcePositionTableC1EPNS1_7TFGraphE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN2v88internal8compiler19SourcePositionTableC2EPNS1_7TFGraphE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2v88internal8compiler19SourcePositionTableC2EPNS1_7TFGraphE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((0, 65)) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19SourcePositionTable12AddDecoratorEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = sub i64 %i.g, %i.i
  %i.k = icmp ult i64 %i.j, 16
  br i1 %i.k, label %bb.c, label %_ZN2v88internal4Zone3NewINS0_8compiler19SourcePositionTable9DecoratorEJPS4_EEEPT_DpOT0_.exit, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 noundef 16) #10
  %.pre.i.i = load i64, ptr %i.h, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler19SourcePositionTable9DecoratorEJPS4_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler19SourcePositionTable9DecoratorEJPS4_EEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %i.l = phi i64 [ %.pre.i.i, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr                 ; 4 uses
  %i.n = add i64 %i.l, 16
  store i64 %i.n, ptr %i.h, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal8compiler19SourcePositionTable9DecoratorE, i64 16), ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.p, align 8
  %i.q = load ptr, ptr %0, align 8
  tail call void @_ZN2v88internal8compiler7TFGraph12AddDecoratorEPNS1_14GraphDecoratorE(ptr noundef nonnull align 8 dereferenceable(104) %i.q, ptr noundef nonnull %i.m) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN2v88internal4Zone3NewINS0_8compiler19SourcePositionTable9DecoratorEJPS4_EEEPT_DpOT0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_ZN2v88internal8compiler7TFGraph12AddDecoratorEPNS1_14GraphDecoratorE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19SourcePositionTable15RemoveDecoratorEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @_ZN2v88internal8compiler7TFGraph15RemoveDecoratorEPNS1_14GraphDecoratorE(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef %i.f) #10
  store ptr null, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @_ZN2v88internal8compiler7TFGraph15RemoveDecoratorEPNS1_14GraphDecoratorE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @_ZNK2v88internal8compiler19SourcePositionTable17GetSourcePositionEPNS1_4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 16777215
  %i.d = zext nneg i32 %i.c to i64                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %i.m = icmp ugt i64 %i.l, %i.d
  br i1 %i.m, label %bb.b, label %_ZNK2v88internal8compiler11NodeAuxDataINS0_14SourcePositionEXadL_ZNS1_19SourcePositionTable21UnknownSourcePositionEPNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.d
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.n, align 8
  br label %_ZNK2v88internal8compiler11NodeAuxDataINS0_14SourcePositionEXadL_ZNS1_19SourcePositionTable21UnknownSourcePositionEPNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit

_ZNK2v88internal8compiler11NodeAuxDataINS0_14SourcePositionEXadL_ZNS1_19SourcePositionTable21UnknownSourcePositionEPNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.b ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @_ZNK2v88internal8compiler19SourcePositionTable17GetSourcePositionEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = icmp ugt i64 %i.i, %i.a
  br i1 %i.j, label %bb.b, label %_ZNK2v88internal8compiler11NodeAuxDataINS0_14SourcePositionEXadL_ZNS1_19SourcePositionTable21UnknownSourcePositionEPNS0_4ZoneEEEE3GetEj.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.a
  %.sroa.0.0.copyload.i = load i64, ptr %i.k, align 8
  br label %_ZNK2v88internal8compiler11NodeAuxDataINS0_14SourcePositionEXadL_ZNS1_19SourcePositionTable21UnknownSourcePositionEPNS0_4ZoneEEEE3GetEj.exit

_ZNK2v88internal8compiler11NodeAuxDataINS0_14SourcePositionEXadL_ZNS1_19SourcePositionTable21UnknownSourcePositionEPNS0_4ZoneEEEE3GetEj.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.b ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19SourcePositionTable17SetSourcePositionEPNS1_4NodeENS0_14SourcePositionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef readonly captures(none) %1, i64 %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 16777215                   ; 2 uses
  %i.d = zext nneg i32 %i.c to i64                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3
  %.not.i.i = icmp ugt i64 %i.m, %i.d
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = add nuw nsw i32 %i.c, 1
  %i.o = zext nneg i32 %i.n to i64                ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.r, %i.k
  %i.t = ashr exact i64 %i.s, 3
  %.not.i.i.i.i = icmp ult i64 %i.t, %i.o
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i.i.i, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.o)
  %.pre.i.i.i = load ptr, ptr %i.h, align 8
  %.pre.i.i = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i.i.i

_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ %i.g, %bb.b ], [ %.pre.i.i, %bb.c ] ; 3 uses
  %i.v = phi ptr [ %i.i, %bb.b ], [ %.pre.i.i.i, %bb.c ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.o ; 2 uses
  %i.x = icmp ult ptr %i.u, %i.w
  br i1 %i.x, label %.lr.ph.i.preheader.i.i, label %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE6resizeEmRKS2_.exit.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i.i.i
  %i.y = ptrtoaddr ptr %i.u to i64                ; 2 uses
  %i.z = ptrtoaddr ptr %i.v to i64
  %i.aa = shl nuw nsw i64 %i.o, 3
  %3 = add nuw i64 %i.aa, %i.z
  %i.ab = add i64 %i.y, 8
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.ab)
  %4 = xor i64 %i.y, -1
  %i.ac = add i64 %umax.i.i, %4
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.u, i8 0, i64 %i.ae, i1 false)
  %.pre7.pre.i.i = load ptr, ptr %i.h, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE6resizeEmRKS2_.exit.i.i

_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE6resizeEmRKS2_.exit.i.i: ; preds = %.lr.ph.i.preheader.i.i, %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i.i.i
  %.pre7.i.i = phi ptr [ %.pre7.pre.i.i, %.lr.ph.i.preheader.i.i ], [ %i.v, %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i.i.i ]
  store ptr %i.w, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE6resizeEmRKS2_.exit.i.i, %bb.a
  %i.af = phi ptr [ %.pre7.i.i, %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE6resizeEmRKS2_.exit.i.i ], [ %i.i, %bb.a ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.d ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8
  %.not = icmp eq i64 %i.ah, %2
  br i1 %.not, label %_ZN2v88internal8compiler11NodeAuxDataINS0_14SourcePositionEXadL_ZNS1_19SourcePositionTable21UnknownSourcePositionEPNS0_4ZoneEEEE3SetEPNS1_4NodeERKS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %2, ptr %i.ag, align 8
  br label %_ZN2v88internal8compiler11NodeAuxDataINS0_14SourcePositionEXadL_ZNS1_19SourcePositionTable21UnknownSourcePositionEPNS0_4ZoneEEEE3SetEPNS1_4NodeERKS3_.exit

_ZN2v88internal8compiler11NodeAuxDataINS0_14SourcePositionEXadL_ZNS1_19SourcePositionTable21UnknownSourcePositionEPNS0_4ZoneEEEE3SetEPNS1_4NodeERKS3_.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal8compiler19SourcePositionTable9PrintJsonERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::SourcePosition", align 8 ; 4 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 1) #10 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !noalias !8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !8 ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %.not13 = icmp eq ptr %i.c, %i.e
  br i1 %.not13, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 1) #10 ; 0 uses
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.015 = phi i1 [ %.1, %bb.e ], [ false, %bb.a ] ; 2 uses
  %.sroa.5.014 = phi i64 [ %i.r, %bb.e ], [ 0, %bb.a ] ; 3 uses
  %i.k = load ptr, ptr %i.d, align 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.sroa.5.014
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i64 %i.m, ptr %2, align 8
  %.not12 = icmp eq i64 %i.m, 0
  br i1 %.not12, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  br i1 %.015, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i64 noundef 1) #10 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 1) #10 ; 0 uses
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.sroa.5.014) #10
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.3, i64 noundef 4) #10 ; 0 uses
  call void @_ZNK2v88internal14SourcePosition9PrintJsonERSo(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.1 = phi i1 [ true, %bb.d ], [ %.015, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.r = add i64 %.sroa.5.014, 1                  ; 2 uses
  %.not = icmp eq i64 %i.r, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_ZNK2v88internal14SourcePosition9PrintJsonERSo(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler14GraphDecoratorD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler19SourcePositionTable9DecoratorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #11
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler19SourcePositionTable9Decorator8DecorateEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 16777215                   ; 2 uses
  %i.g = zext nneg i32 %i.f to i64                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %.not.i.i.i = icmp ugt i64 %i.p, %i.g
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = add nuw nsw i32 %i.f, 1
  %i.r = zext nneg i32 %i.q to i64                ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.n
  %i.w = ashr exact i64 %i.v, 3
  %.not.i.i.i.i.i = icmp ult i64 %i.w, %i.r
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i.i.i.i, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.k, align 8
  %.pre.i.i.i = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i.i.i.i

_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.x = phi ptr [ %i.j, %bb.b ], [ %.pre.i.i.i, %bb.c ] ; 3 uses
  %i.y = phi ptr [ %i.l, %bb.b ], [ %.pre.i.i.i.i, %bb.c ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.r ; 2 uses
  %i.aa = icmp ult ptr %i.x, %i.z
  br i1 %i.aa, label %.lr.ph.i.preheader.i.i.i, label %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE6resizeEmRKS2_.exit.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i.i.i.i
  %i.ab = ptrtoaddr ptr %i.x to i64               ; 2 uses
  %i.ac = ptrtoaddr ptr %i.y to i64
  %i.ad = shl nuw nsw i64 %i.r, 3
  %2 = add nuw i64 %i.ad, %i.ac
  %i.ae = add i64 %i.ab, 8
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %2, i64 %i.ae)
  %3 = xor i64 %i.ab, -1
  %i.af = add i64 %umax.i.i.i, %3
  %i.ag = and i64 %i.af, -8
  %i.ah = add i64 %i.ag, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.x, i8 0, i64 %i.ah, i1 false)
  %.pre7.pre.i.i.i = load ptr, ptr %i.k, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE6resizeEmRKS2_.exit.i.i.i

_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE6resizeEmRKS2_.exit.i.i.i: ; preds = %.lr.ph.i.preheader.i.i.i, %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i.i.i.i
  %.pre7.i.i.i = phi ptr [ %.pre7.pre.i.i.i, %.lr.ph.i.preheader.i.i.i ], [ %i.y, %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i.i.i.i ]
  store ptr %i.z, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE6resizeEmRKS2_.exit.i.i.i, %bb.a
  %i.ai = phi ptr [ %.pre7.i.i.i, %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE6resizeEmRKS2_.exit.i.i.i ], [ %i.l, %bb.a ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.g ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8
  %.not.i = icmp eq i64 %i.ak, %.sroa.0.0.copyload
  br i1 %.not.i, label %_ZN2v88internal8compiler19SourcePositionTable17SetSourcePositionEPNS1_4NodeENS0_14SourcePositionE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.sroa.0.0.copyload, ptr %i.aj, align 8
  br label %_ZN2v88internal8compiler19SourcePositionTable17SetSourcePositionEPNS1_4NodeENS0_14SourcePositionE.exit

_ZN2v88internal8compiler19SourcePositionTable17SetSourcePositionEPNS1_4NodeENS0_14SourcePositionE.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_14SourcePositionEA_S3_EEPT_m.exit, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #10
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_14SourcePositionEA_S3_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_14SourcePositionEA_S3_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_14SourcePositionEA_S3_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_14SourcePositionEA_S3_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayINS0_14SourcePositionEA_S3_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZNK2v88internal8compiler11NodeAuxDataINS0_14SourcePositionEXadL_ZNS1_19SourcePositionTable21UnknownSourcePositionEPNS0_4ZoneEEEE3endEv: argument 0"}
!10 = distinct !{!10, !"_ZNK2v88internal8compiler11NodeAuxDataINS0_14SourcePositionEXadL_ZNS1_19SourcePositionTable21UnknownSourcePositionEPNS0_4ZoneEEEE3endEv"}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
