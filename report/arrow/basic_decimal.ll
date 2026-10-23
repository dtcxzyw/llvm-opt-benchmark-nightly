Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/basic_decimal?download=true
inline.NumInlined: 502
inline.NumDeleted: 136
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN5arrowdvERKNS_14BasicDecimal64ES2_:bb.a
  %i.c = sdiv i64 %i.a, %i.b
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i64 -9223372036854775807, -9223372036854775808) i64 @_ZN5arrowrmERKNS_14BasicDecimal64ES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_ZNK5arrow14BasicDecimal646DivideERKS0_PS0_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !13
  %i.d = srem i64 %i.c, %i.a
  br label %_ZNK5arrow14BasicDecimal646DivideERKS0_PS0_S3_.exit

_ZNK5arrow14BasicDecimal646DivideERKS0_PS0_S3_.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi i64 [ 0, %bb.a ], [ %i.d, %bb.b ]
  ret i64 %.sroa.02.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal1286NegateEv(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load <2 x i64>, ptr %0, align 8, !tbaa !9
  %i.b = load i64, ptr %0, align 8, !tbaa !9
  %i.c = icmp ne i64 %i.b, 0
  %i.d = sext i1 %i.c to i64
  %i.e = insertelement <2 x i64> <i64 0, i64 poison>, i64 %i.d, i64 1
  %i.f = sub <2 x i64> %i.e, %i.a
  store <2 x i64> %i.f, ptr %0, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal1283AbsEv(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.thread

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit:      ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.e = icmp ne i64 %i.d, 0
  %i.f = sub i64 0, %i.d
  %i.g = sext i1 %i.e to i64
  %.sroa.6.0.i = sub i64 %i.g, %i.b
  store i64 %i.f, ptr %0, align 8
  store i64 %.sroa.6.0.i, ptr %i.a, align 8
  br label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.thread

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.thread: ; preds = %bb.a, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal128ES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %i.e = icmp slt i64 %i.b, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %0, align 8, !tbaa !9
  %i.h = load i64, ptr %1, align 8, !tbaa !9
  %i.i = icmp ult i64 %i.g, %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.j = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZN5arrow15BasicDecimal1283AbsERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow15BasicDecimal1283AbsEv.exit:
  %.sroa.0.0.copyload1 = load i64, ptr %0, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %i.a = icmp slt i64 %.sroa.6.0.copyload, 0      ; 2 uses
  %i.b = icmp ne i64 %.sroa.0.0.copyload1, 0
  %i.c = sub i64 0, %.sroa.0.0.copyload1
  %i.d = sext i1 %i.b to i64
  %.sroa.6.0.i.i = sub i64 %i.d, %.sroa.6.0.copyload
  %.sroa.6.0 = select i1 %i.a, i64 %.sroa.6.0.i.i, i64 %.sroa.6.0.copyload
  %.sroa.0.0 = select i1 %i.a, i64 %i.c, i64 %.sroa.0.0.copyload1
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5arrow15BasicDecimal12815FitsInPrecisionEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.0.copyload1.i = load i64, ptr %0, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8 ; 3 uses
  %i.a = icmp slt i64 %.sroa.6.0.copyload.i, 0    ; 2 uses
  %i.b = icmp ne i64 %.sroa.0.0.copyload1.i, 0
  %i.c = sub i64 0, %.sroa.0.0.copyload1.i
  %i.d = sext i1 %i.b to i64
  %.sroa.6.0.i.i.i = sub i64 %i.d, %.sroa.6.0.copyload.i
  %.sroa.6.0.i = select i1 %i.a, i64 %.sroa.6.0.i.i.i, i64 %.sroa.6.0.copyload.i ; 2 uses
  %.sroa.0.0.i = select i1 %i.a, i64 %i.c, i64 %.sroa.0.0.copyload1.i
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds [16 x i8], ptr @_ZN5arrowL22kDecimal128PowersOfTenE, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !9    ; 2 uses
  %i.i = icmp slt i64 %.sroa.6.0.i, %i.h
  br i1 %i.i, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %.sroa.6.0.i, %i.h
  br i1 %i.j, label %bb.c, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.f, align 16, !tbaa !9
  %i.l = icmp ult i64 %.sroa.0.0.i, %i.k
  br label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit:      ; preds = %bb.a, %bb.b, %bb.c
  %i.m = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.l, %bb.c ]
  ret i1 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal128pLERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9
  %i.e = add i64 %i.d, %i.b
  %i.f = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.g = load i64, ptr %1, align 8, !tbaa !9
  %i.h = add i64 %i.g, %i.f                       ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.f
  %i.j = zext i1 %i.i to i64
  %i.k = add i64 %i.e, %i.j
  store i64 %i.h, ptr %0, align 8
  store i64 %i.k, ptr %i.a, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal128mIERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9
  %i.e = sub i64 %i.b, %i.d
  %i.f = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.g = load i64, ptr %1, align 8, !tbaa !9      ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.g, %i.f
  %.neg = sext i1 %i.i to i64
  %i.j = add i64 %i.e, %.neg
  store i64 %i.h, ptr %0, align 8
  store i64 %i.j, ptr %i.a, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal128dVERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %2 = alloca %"class.arrow::BasicDecimal128", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.a = call noundef i32 @_ZNK5arrow15BasicDecimal1286DivideERKS0_PS0_S3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0, ptr noundef nonnull %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef range(i32 0, 3) i32 @_ZNK5arrow15BasicDecimal1286DivideERKS0_PS0_S3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [33 x i32], align 16              ; 15 uses
  %i.b = alloca [33 x i32], align 16              ; 38 uses
  %i.c = alloca [32 x i32], align 16              ; 26 uses
  %i.d = alloca [32 x i32], align 16              ; 9 uses
  %.val = load i64, ptr %1, align 8               ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load i64, ptr %i.e, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 0, ptr %i.b, align 16, !tbaa !6
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 5 uses
  %.val100.i = load i64, ptr %0, align 8          ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val101.i = load i64, ptr %i.g, align 8        ; 5 uses
  %i.h = icmp slt i64 %.val101.i, 0               ; 4 uses
  %i.i = icmp ne i64 %.val100.i, 0
  %i.j = sub i64 0, %.val100.i
  %i.k = sext i1 %i.i to i64
  %.sroa.6.0.i.i.i.i.i = sub i64 %i.k, %.val101.i
  %.sroa.6.0.i.i.i = select i1 %i.h, i64 %.sroa.6.0.i.i.i.i.i, i64 %.val101.i ; 5 uses
  %.sroa.0.0.i.i.i = select i1 %i.h, i64 %i.j, i64 %.val100.i ; 9 uses
  %.not.i.i.not = icmp eq i64 %.sroa.6.0.i.i.i, 0 ; 2 uses
  %.0.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.0.i.sroa.gep4.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %.0.i.sroa.gep5.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %.0.i.sroa.gep15.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.0.i.sroa.gep16.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.0.i.sroa.gep17.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.0.i.sroa.gep18.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.0.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.0.i.i.sroa.gep41 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.0.i.i.sroa.gep42 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.0.i.i.sroa.gep43 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.0.i.i.sroa.gep46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.0.i.i.sroa.gep47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.0.i.i.sroa.gep48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.0.i.i.sroa.gep49 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br i1 %.not.i.i.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %.sroa.6.0.i.i.i, 4294967295
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = lshr i64 %.sroa.6.0.i.i.i, 32
  %i.n = trunc nuw i64 %i.m to i32
  store i32 %i.n, ptr %i.f, align 4, !tbaa !6
  %i.o = trunc i64 %.sroa.6.0.i.i.i to i32
  store i32 %i.o, ptr %.0.i.sroa.gep5.i, align 8, !tbaa !6
  %i.p = lshr i64 %.sroa.0.0.i.i.i, 32
  %i.q = trunc nuw i64 %i.p to i32
  store i32 %i.q, ptr %.0.i.sroa.gep4.i, align 4, !tbaa !6
  %i.r = trunc i64 %.sroa.0.0.i.i.i to i32        ; 2 uses
  store i32 %i.r, ptr %.0.i.sroa.gep.i, align 16, !tbaa !6
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i

bb.d:                                             ; preds = %bb.b
  %i.s = trunc nuw i64 %.sroa.6.0.i.i.i to i32
  store i32 %i.s, ptr %i.f, align 4, !tbaa !6
  %i.t = lshr i64 %.sroa.0.0.i.i.i, 32
  %i.u = trunc nuw i64 %i.t to i32
  store i32 %i.u, ptr %.0.i.sroa.gep5.i, align 8, !tbaa !6
  %i.v = trunc i64 %.sroa.0.0.i.i.i to i32        ; 2 uses
  store i32 %i.v, ptr %.0.i.sroa.gep4.i, align 4, !tbaa !6
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i

bb.e:                                             ; preds = %bb.a
  %i.w = icmp ugt i64 %.sroa.0.0.i.i.i, 4294967295
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = lshr i64 %.sroa.0.0.i.i.i, 32
  %i.y = trunc nuw i64 %i.x to i32
  store i32 %i.y, ptr %i.f, align 4, !tbaa !6
  %i.z = trunc i64 %.sroa.0.0.i.i.i to i32        ; 2 uses
  store i32 %i.z, ptr %.0.i.sroa.gep5.i, align 8, !tbaa !6
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i

bb.g:                                             ; preds = %bb.e
  %4 = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %4, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = trunc nuw i64 %.sroa.0.0.i.i.i to i32   ; 2 uses
  store i32 %i.aa, ptr %i.f, align 4, !tbaa !6
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i

_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.c
  %i.ab = phi i32 [ %i.r, %bb.c ], [ %i.v, %bb.d ], [ %i.z, %bb.f ], [ %i.aa, %bb.h ], [ 0, %bb.g ]
  %.0.i.sroa.phi.i = phi ptr [ %.0.i.sroa.gep.i, %bb.c ], [ %.0.i.sroa.gep4.i, %bb.d ], [ %.0.i.sroa.gep5.i, %bb.f ], [ %i.f, %bb.h ], [ %i.b, %bb.g ] ; 5 uses
  %.0.i.sroa.phi14.i = phi ptr [ %.0.i.sroa.gep15.i, %bb.c ], [ %.0.i.sroa.gep16.i, %bb.d ], [ %.0.i.sroa.gep17.i, %bb.f ], [ %.0.i.sroa.gep18.i, %bb.h ], [ %i.a, %bb.g ] ; 2 uses
  %i.ac = phi i1 [ true, %bb.c ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.g ] ; 3 uses
  %i.ad = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.h ], [ true, %bb.g ] ; 3 uses
  %.not.i.i.i = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.f ], [ true, %bb.h ], [ false, %bb.g ] ; 3 uses
  %i.ae = phi i1 [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.h ], [ false, %bb.g ] ; 2 uses
  %min.iters.check24 = phi i1 [ false, %bb.c ], [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.h ], [ true, %bb.g ]
  %.0.i.i.sroa.phi = phi ptr [ %.0.i.i.sroa.gep, %bb.c ], [ %.0.i.i.sroa.gep41, %bb.d ], [ %.0.i.i.sroa.gep42, %bb.f ], [ %.0.i.i.sroa.gep43, %bb.h ], [ %i.b, %bb.g ] ; 2 uses
  %.0.i.i.sroa.phi45 = phi ptr [ %.0.i.i.sroa.gep46, %bb.c ], [ %.0.i.i.sroa.gep47, %bb.d ], [ %.0.i.i.sroa.gep48, %bb.f ], [ %.0.i.i.sroa.gep49, %bb.h ], [ %i.b, %bb.g ]
  %exitcond.not.i.i.2 = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.f ], [ false, %bb.h ], [ false, %bb.g ]
  %exitcond.not.i.i.3 = phi i1 [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.g ]
  %i.af = phi i1 [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.f ], [ false, %bb.h ], [ false, %bb.g ]
  %.0.i.i = phi i64 [ 4, %bb.c ], [ 3, %bb.d ], [ 2, %bb.f ], [ 1, %bb.h ], [ 0, %bb.g ] ; 10 uses
  %i.ag = add nuw nsw i64 %.0.i.i, 1              ; 3 uses
  %i.ah = icmp slt i64 %.val4, 0                  ; 2 uses
  %i.ai = icmp ne i64 %.val, 0
  %i.aj = sub i64 0, %.val
  %i.ak = sext i1 %i.ai to i64
  %.sroa.6.0.i.i.i.i102.i = sub i64 %i.ak, %.val4
  %.sroa.6.0.i.i103.i = select i1 %i.ah, i64 %.sroa.6.0.i.i.i.i102.i, i64 %.val4 ; 5 uses
  %.sroa.0.0.i.i104.i = select i1 %i.ah, i64 %i.aj, i64 %.val ; 9 uses
  %.not.i106.i.not.not = icmp eq i64 %.sroa.6.0.i.i103.i, 0 ; 3 uses
  br i1 %.not.i106.i.not.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i
  %i.al = icmp ugt i64 %.sroa.6.0.i.i103.i, 4294967295
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.an = lshr i64 %.sroa.6.0.i.i103.i, 32
  %i.ao = trunc nuw i64 %i.an to i32              ; 2 uses
  store i32 %i.ao, ptr %i.c, align 16, !tbaa !6
  %i.ap = trunc i64 %.sroa.6.0.i.i103.i to i32
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !6
  %i.aq = lshr i64 %.sroa.0.0.i.i104.i, 32
  %i.ar = trunc nuw i64 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !6
  %i.at = trunc i64 %.sroa.0.0.i.i104.i to i32
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.at, ptr %i.au, align 4, !tbaa !6
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i

bb.k:                                             ; preds = %bb.i
  %i.av = trunc nuw i64 %.sroa.6.0.i.i103.i to i32 ; 2 uses
  store i32 %i.av, ptr %i.c, align 16, !tbaa !6
  %i.aw = lshr i64 %.sroa.0.0.i.i104.i, 32
  %i.ax = trunc nuw i64 %i.aw to i32
  store i32 %i.ax, ptr %i.am, align 4, !tbaa !6
  %i.ay = trunc i64 %.sroa.0.0.i.i104.i to i32
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !6
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i

bb.l:                                             ; preds = %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i
  %i.ba = icmp ugt i64 %.sroa.0.0.i.i104.i, 4294967295
  br i1 %i.ba, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bb = lshr i64 %.sroa.0.0.i.i104.i, 32
  %i.bc = trunc nuw i64 %i.bb to i32              ; 2 uses
  store i32 %i.bc, ptr %i.c, align 16, !tbaa !6
  %i.bd = trunc i64 %.sroa.0.0.i.i104.i to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !6
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i

bb.n:                                             ; preds = %bb.l
  %5 = icmp eq i64 %.sroa.0.0.i.i104.i, 0
  br i1 %5, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = trunc nuw i64 %.sroa.0.0.i.i104.i to i32 ; 2 uses
  store i32 %i.bf, ptr %i.c, align 16, !tbaa !6
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i

_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.k, %bb.j
  %i.bg = phi i32 [ %i.ao, %bb.j ], [ %i.av, %bb.k ], [ %i.bc, %bb.m ], [ %i.bf, %bb.o ], [ undef, %bb.n ] ; 7 uses
  %i.bh = phi i1 [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.m ], [ true, %bb.o ], [ false, %bb.n ]
  %i.bi = phi i1 [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.m ], [ false, %bb.o ], [ false, %bb.n ] ; 2 uses
  %i.bj = phi i1 [ true, %bb.j ], [ false, %bb.k ], [ false, %bb.m ], [ false, %bb.o ], [ false, %bb.n ] ; 2 uses
  %.0.i107.i = phi i64 [ 4, %bb.j ], [ 3, %bb.k ], [ 2, %bb.m ], [ 1, %bb.o ], [ 0, %bb.n ] ; 10 uses
  %.not.not.i = icmp samesign ult i64 %.0.i.i, %.0.i107.i
  br i1 %.not.not.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull readonly align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal128EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit

bb.q:                                             ; preds = %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i
  switch i64 %.0.i107.i, label %bb.ac [
    i64 0, label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal128EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.bk = zext i32 %i.bg to i64                   ; 8 uses
  %i.bl = load i32, ptr %i.b, align 16, !tbaa !6  ; 2 uses
  %i.bm = udiv i32 %i.bl, %i.bg
  store i32 %i.bm, ptr %i.a, align 16, !tbaa !6
  %i.bn = urem i32 %i.bl, %i.bg
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  br i1 %i.ad, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.r
  %.lcssa40 = phi i64 [ %i.bo, %bb.r ], [ %i.cz, %bb.u ], [ %i.di, %bb.v ], [ %i.dr, %bb.w ], [ %i.ea, %bb.x ]
  br i1 %i.ac, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.s
  %i.bp = load i32, ptr %i.a, align 16, !tbaa !6
  %.not.i.i.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i.i.i, label %.lr.ph37.i.i.thread.i.i, label %_ZN5arrowL12SingleDivideINS_15BasicDecimal128EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i

.lr.ph37.i.i.thread.i.i:                          ; preds = %.lr.ph.preheader.i.i.i.i
  %i.bq = getelementptr [4 x i8], ptr %i.a, i64 %i.ag ; 3 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !6
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr i8, ptr %i.bq, i64 -8
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !6
  %i.bw = zext i32 %i.bv to i64
  %i.bx = shl nuw i64 %i.bw, 32
  %i.by = or disjoint i64 %i.bx, %i.bt
  %.phi.trans.insert.i32.i.i = getelementptr i8, ptr %i.bq, i64 -12 ; 2 uses
  %.pre.i33.i.i = load i32, ptr %.phi.trans.insert.i32.i.i, align 4, !tbaa !6
  %i.bz = zext i32 %.pre.i33.i.i to i64
  br label %.preheader.i.thread28.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.s
  %i.ca = load i32, ptr %.0.i.sroa.phi14.i, align 4, !tbaa !6
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  br i1 %i.ad, label %bb.y, label %bb.t

bb.t:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cc = getelementptr i8, ptr %.0.i.sroa.phi14.i, i64 -4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !6
  %i.ce = zext i32 %i.cd to i64
  %i.cf = shl nuw i64 %i.ce, 32
  %i.cg = or disjoint i64 %i.cf, %i.cb            ; 3 uses
  br i1 %.not.i.i.i, label %bb.y, label %.lr.ph37.i.i.i.i

.preheader.i.thread28.i.i.i:                      ; preds = %.lr.ph37.i.i.i.i, %.lr.ph37.i.i.thread.i.i
  %i.ch = phi i64 [ %i.bz, %.lr.ph37.i.i.thread.i.i ], [ %i.cp, %.lr.ph37.i.i.i.i ]
  %.phi.trans.insert.i34.i.i = phi ptr [ %.phi.trans.insert.i32.i.i, %.lr.ph37.i.i.thread.i.i ], [ %.phi.trans.insert.i.i.i, %.lr.ph37.i.i.i.i ]
  %i.ci = phi i64 [ %i.by, %.lr.ph37.i.i.thread.i.i ], [ %i.cg, %.lr.ph37.i.i.i.i ]
  %i.cj = getelementptr i8, ptr %.phi.trans.insert.i34.i.i, i64 -4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !6
  %i.cl = zext i32 %i.ck to i64
  %i.cm = shl nuw i64 %i.cl, 32
  %i.cn = or disjoint i64 %i.cm, %i.ch
  br label %bb.y

.lr.ph37.i.i.i.i:                                 ; preds = %bb.t
  %i.co = add nsw i64 %.0.i.i, -2                 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.co ; 2 uses
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !6
  %i.cp = zext i32 %.pre.i.i.i to i64             ; 2 uses
  %i.cq = icmp eq i64 %i.co, 0
  br i1 %i.cq, label %bb.y, label %.preheader.i.thread28.i.i.i

bb.u:                                             ; preds = %bb.r
  %i.cr = shl nuw i64 %i.bo, 32
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !6
  %i.cu = zext i32 %i.ct to i64
  %i.cv = or disjoint i64 %i.cr, %i.cu            ; 2 uses
  %i.cw = udiv i64 %i.cv, %i.bk
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !6
  %i.cz = urem i64 %i.cv, %i.bk                   ; 2 uses
  br i1 %.not.i.i.i, label %bb.s, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.da = shl nuw i64 %i.cz, 32
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !6
  %i.dd = zext i32 %i.dc to i64
  %i.de = or disjoint i64 %i.da, %i.dd            ; 2 uses
  %i.df = udiv i64 %i.de, %i.bk
  %i.dg = trunc i64 %i.df to i32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.dg, ptr %i.dh, align 8, !tbaa !6
  %i.di = urem i64 %i.de, %i.bk                   ; 2 uses
  br i1 %exitcond.not.i.i.2, label %bb.s, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dj = shl nuw i64 %i.di, 32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !6
  %i.dm = zext i32 %i.dl to i64
  %i.dn = or disjoint i64 %i.dj, %i.dm            ; 2 uses
  %i.do = udiv i64 %i.dn, %i.bk
  %i.dp = trunc i64 %i.do to i32
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !6
  %i.dr = urem i64 %i.dn, %i.bk                   ; 2 uses
  br i1 %exitcond.not.i.i.3, label %bb.s, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ds = shl nuw i64 %i.dr, 32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.du = load i32, ptr %i.dt, align 16, !tbaa !6
  %i.dv = zext i32 %i.du to i64
  %i.dw = or disjoint i64 %i.ds, %i.dv            ; 2 uses
  %i.dx = udiv i64 %i.dw, %i.bk
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.dy, ptr %i.dz, align 16, !tbaa !6
  %i.ea = urem i64 %i.dw, %i.bk
  br label %bb.s

bb.y:                                             ; preds = %.lr.ph37.i.i.i.i, %.preheader.i.thread28.i.i.i, %bb.t, %._crit_edge.i.i.i.i
  %.sroa.0.i.0.i.i = phi i64 [ %i.ci, %.preheader.i.thread28.i.i.i ], [ %i.cg, %bb.t ], [ %i.cg, %.lr.ph37.i.i.i.i ], [ %i.cb, %._crit_edge.i.i.i.i ]
  %.sink.i.i.i = phi i64 [ %i.cn, %.preheader.i.thread28.i.i.i ], [ 0, %bb.t ], [ %i.cp, %.lr.ph37.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i ]
  store i64 %.sroa.0.i.0.i.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sink.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  store i64 %.lcssa40, ptr %3, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.eb = xor i64 %.val101.i, %.val4
  %i.ec = icmp slt i64 %i.eb, 0
  br i1 %i.ec, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ed = load <2 x i64>, ptr %2, align 8, !tbaa !9
  %i.ee = load i64, ptr %2, align 8, !tbaa !9
  %i.ef = icmp ne i64 %i.ee, 0
  %i.eg = sext i1 %i.ef to i64
  %i.eh = insertelement <2 x i64> <i64 0, i64 poison>, i64 %i.eg, i64 1
  %i.ei = sub <2 x i64> %i.eh, %i.ed
  store <2 x i64> %i.ei, ptr %2, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  br i1 %i.h, label %bb.ab, label %_ZN5arrowL12SingleDivideINS_15BasicDecimal128EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.ej = load <2 x i64>, ptr %3, align 8, !tbaa !9
  %i.ek = load i64, ptr %3, align 8, !tbaa !9
  %i.el = icmp ne i64 %i.ek, 0
  %i.em = sext i1 %i.el to i64
  %i.en = insertelement <2 x i64> <i64 0, i64 poison>, i64 %i.em, i64 1
  %i.eo = sub <2 x i64> %i.en, %i.ej
  store <2 x i64> %i.eo, ptr %3, align 8
  br label %_ZN5arrowL12SingleDivideINS_15BasicDecimal128EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i

_ZN5arrowL12SingleDivideINS_15BasicDecimal128EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i: ; preds = %bb.ab, %bb.aa, %.lr.ph.preheader.i.i.i.i
  %.023.i.i = phi i32 [ 0, %bb.ab ], [ 0, %bb.aa ], [ 2, %.lr.ph.preheader.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal128EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit

bb.ac:                                            ; preds = %bb.q
  %i.ep = sub nuw nsw i64 %i.ag, %.0.i107.i       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.eq = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bg, i1 false) ; 14 uses
  %.not.i = icmp eq i32 %i.eq, 0                  ; 2 uses
  %.pre11 = add nsw i64 %.0.i107.i, -1            ; 9 uses
  br i1 %.not.i, label %.lr.ph34.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ac
  %i.er = sub nuw nsw i32 32, %i.eq               ; 4 uses
  %min.iters.check = icmp ult i64 %.pre11, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %.pre11, -8                    ; 3 uses
end_hunk_0
