Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/basic_decimal?download=true
inline.NumInlined: 502
inline.NumDeleted: 136
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN5arrowplERKNS_14BasicDecimal64ES2_:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @_ZN5arrowmiERKNS_14BasicDecimal64ES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = load i64, ptr %1, align 8, !tbaa !13
  %i.c = sub nsw i64 %i.a, %i.b
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @_ZN5arrowdvERKNS_14BasicDecimal64ES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = load i64, ptr %1, align 8, !tbaa !13
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
  %i.aa = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %i.aa, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = trunc nuw i64 %.sroa.0.0.i.i.i to i32   ; 2 uses
  store i32 %i.ab, ptr %i.f, align 4, !tbaa !6
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i

_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.c
  %i.ac = phi i32 [ %i.r, %bb.c ], [ %i.v, %bb.d ], [ %i.z, %bb.f ], [ %i.ab, %bb.h ], [ 0, %bb.g ]
  %.0.i.sroa.phi.i = phi ptr [ %.0.i.sroa.gep.i, %bb.c ], [ %.0.i.sroa.gep4.i, %bb.d ], [ %.0.i.sroa.gep5.i, %bb.f ], [ %i.f, %bb.h ], [ %i.b, %bb.g ] ; 5 uses
  %.0.i.sroa.phi14.i = phi ptr [ %.0.i.sroa.gep15.i, %bb.c ], [ %.0.i.sroa.gep16.i, %bb.d ], [ %.0.i.sroa.gep17.i, %bb.f ], [ %.0.i.sroa.gep18.i, %bb.h ], [ %i.a, %bb.g ] ; 2 uses
  %i.ad = phi i1 [ true, %bb.c ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.g ] ; 3 uses
  %i.ae = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.h ], [ true, %bb.g ] ; 3 uses
  %.not.i.i.i = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.f ], [ true, %bb.h ], [ false, %bb.g ] ; 3 uses
  %i.af = phi i1 [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.h ], [ false, %bb.g ] ; 2 uses
  %min.iters.check24 = phi i1 [ false, %bb.c ], [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.h ], [ true, %bb.g ]
  %.0.i.i.sroa.phi = phi ptr [ %.0.i.i.sroa.gep, %bb.c ], [ %.0.i.i.sroa.gep41, %bb.d ], [ %.0.i.i.sroa.gep42, %bb.f ], [ %.0.i.i.sroa.gep43, %bb.h ], [ %i.b, %bb.g ] ; 2 uses
  %.0.i.i.sroa.phi45 = phi ptr [ %.0.i.i.sroa.gep46, %bb.c ], [ %.0.i.i.sroa.gep47, %bb.d ], [ %.0.i.i.sroa.gep48, %bb.f ], [ %.0.i.i.sroa.gep49, %bb.h ], [ %i.b, %bb.g ]
  %exitcond.not.i.i.2 = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.f ], [ false, %bb.h ], [ false, %bb.g ]
  %exitcond.not.i.i.3 = phi i1 [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.g ]
  %i.ag = phi i1 [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.f ], [ false, %bb.h ], [ false, %bb.g ]
  %.0.i.i = phi i64 [ 4, %bb.c ], [ 3, %bb.d ], [ 2, %bb.f ], [ 1, %bb.h ], [ 0, %bb.g ] ; 10 uses
  %i.ah = add nuw nsw i64 %.0.i.i, 1              ; 3 uses
  %i.ai = icmp slt i64 %.val4, 0                  ; 2 uses
  %i.aj = icmp ne i64 %.val, 0
  %i.ak = sub i64 0, %.val
  %i.al = sext i1 %i.aj to i64
  %.sroa.6.0.i.i.i.i102.i = sub i64 %i.al, %.val4
  %.sroa.6.0.i.i103.i = select i1 %i.ai, i64 %.sroa.6.0.i.i.i.i102.i, i64 %.val4 ; 5 uses
  %.sroa.0.0.i.i104.i = select i1 %i.ai, i64 %i.ak, i64 %.val ; 9 uses
  %.not.i106.i.not.not = icmp eq i64 %.sroa.6.0.i.i103.i, 0 ; 3 uses
  br i1 %.not.i106.i.not.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i
  %i.am = icmp ugt i64 %.sroa.6.0.i.i103.i, 4294967295
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = lshr i64 %.sroa.6.0.i.i103.i, 32
  %i.ap = trunc nuw i64 %i.ao to i32              ; 2 uses
  store i32 %i.ap, ptr %i.c, align 16, !tbaa !6
  %i.aq = trunc i64 %.sroa.6.0.i.i103.i to i32
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !6
  %i.ar = lshr i64 %.sroa.0.0.i.i104.i, 32
  %i.as = trunc nuw i64 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.as, ptr %i.at, align 8, !tbaa !6
  %i.au = trunc i64 %.sroa.0.0.i.i104.i to i32
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.au, ptr %i.av, align 4, !tbaa !6
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i

bb.k:                                             ; preds = %bb.i
  %i.aw = trunc nuw i64 %.sroa.6.0.i.i103.i to i32 ; 2 uses
  store i32 %i.aw, ptr %i.c, align 16, !tbaa !6
  %i.ax = lshr i64 %.sroa.0.0.i.i104.i, 32
  %i.ay = trunc nuw i64 %i.ax to i32
  store i32 %i.ay, ptr %i.an, align 4, !tbaa !6
  %i.az = trunc i64 %.sroa.0.0.i.i104.i to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !6
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i

bb.l:                                             ; preds = %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i
  %i.bb = icmp ugt i64 %.sroa.0.0.i.i104.i, 4294967295
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bc = lshr i64 %.sroa.0.0.i.i104.i, 32
  %i.bd = trunc nuw i64 %i.bc to i32              ; 2 uses
  store i32 %i.bd, ptr %i.c, align 16, !tbaa !6
  %i.be = trunc i64 %.sroa.0.0.i.i104.i to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !6
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i

bb.n:                                             ; preds = %bb.l
  %i.bg = icmp eq i64 %.sroa.0.0.i.i104.i, 0
  br i1 %i.bg, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = trunc nuw i64 %.sroa.0.0.i.i104.i to i32 ; 2 uses
  store i32 %i.bh, ptr %i.c, align 16, !tbaa !6
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i

_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.k, %bb.j
  %i.bi = phi i32 [ %i.ap, %bb.j ], [ %i.aw, %bb.k ], [ %i.bd, %bb.m ], [ %i.bh, %bb.o ], [ undef, %bb.n ] ; 7 uses
  %i.bj = phi i1 [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.m ], [ true, %bb.o ], [ false, %bb.n ]
  %i.bk = phi i1 [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.m ], [ false, %bb.o ], [ false, %bb.n ] ; 2 uses
  %i.bl = phi i1 [ true, %bb.j ], [ false, %bb.k ], [ false, %bb.m ], [ false, %bb.o ], [ false, %bb.n ] ; 2 uses
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
  %i.bm = zext i32 %i.bi to i64                   ; 8 uses
  %i.bn = load i32, ptr %i.b, align 16, !tbaa !6  ; 2 uses
  %i.bo = udiv i32 %i.bn, %i.bi
  store i32 %i.bo, ptr %i.a, align 16, !tbaa !6
  %i.bp = urem i32 %i.bn, %i.bi
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  br i1 %i.ae, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.r
  %.lcssa40 = phi i64 [ %i.bq, %bb.r ], [ %i.db, %bb.u ], [ %i.dk, %bb.v ], [ %i.dt, %bb.w ], [ %i.ec, %bb.x ]
  br i1 %i.ad, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.s
  %i.br = load i32, ptr %i.a, align 16, !tbaa !6
  %.not.i.i.i.i = icmp eq i32 %i.br, 0
  br i1 %.not.i.i.i.i, label %.lr.ph37.i.i.thread.i.i, label %_ZN5arrowL12SingleDivideINS_15BasicDecimal128EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i

.lr.ph37.i.i.thread.i.i:                          ; preds = %.lr.ph.preheader.i.i.i.i
  %i.bs = getelementptr [4 x i8], ptr %i.a, i64 %i.ah ; 3 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !6
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr i8, ptr %i.bs, i64 -8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !6
  %i.by = zext i32 %i.bx to i64
  %i.bz = shl nuw i64 %i.by, 32
  %i.ca = or disjoint i64 %i.bz, %i.bv
  %.phi.trans.insert.i32.i.i = getelementptr i8, ptr %i.bs, i64 -12 ; 2 uses
  %.pre.i33.i.i = load i32, ptr %.phi.trans.insert.i32.i.i, align 4, !tbaa !6
  %i.cb = zext i32 %.pre.i33.i.i to i64
  br label %.preheader.i.thread28.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.s
  %i.cc = load i32, ptr %.0.i.sroa.phi14.i, align 4, !tbaa !6
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  br i1 %i.ae, label %bb.y, label %bb.t

bb.t:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ce = getelementptr i8, ptr %.0.i.sroa.phi14.i, i64 -4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !6
  %i.cg = zext i32 %i.cf to i64
  %i.ch = shl nuw i64 %i.cg, 32
  %i.ci = or disjoint i64 %i.ch, %i.cd            ; 3 uses
  br i1 %.not.i.i.i, label %bb.y, label %.lr.ph37.i.i.i.i

.preheader.i.thread28.i.i.i:                      ; preds = %.lr.ph37.i.i.i.i, %.lr.ph37.i.i.thread.i.i
  %i.cj = phi i64 [ %i.cb, %.lr.ph37.i.i.thread.i.i ], [ %i.cr, %.lr.ph37.i.i.i.i ]
  %.phi.trans.insert.i34.i.i = phi ptr [ %.phi.trans.insert.i32.i.i, %.lr.ph37.i.i.thread.i.i ], [ %.phi.trans.insert.i.i.i, %.lr.ph37.i.i.i.i ]
  %i.ck = phi i64 [ %i.ca, %.lr.ph37.i.i.thread.i.i ], [ %i.ci, %.lr.ph37.i.i.i.i ]
  %i.cl = getelementptr i8, ptr %.phi.trans.insert.i34.i.i, i64 -4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !6
  %i.cn = zext i32 %i.cm to i64
  %i.co = shl nuw i64 %i.cn, 32
  %i.cp = or disjoint i64 %i.co, %i.cj
  br label %bb.y

.lr.ph37.i.i.i.i:                                 ; preds = %bb.t
  %i.cq = add nsw i64 %.0.i.i, -2                 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cq ; 2 uses
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !6
  %i.cr = zext i32 %.pre.i.i.i to i64             ; 2 uses
  %i.cs = icmp eq i64 %i.cq, 0
  br i1 %i.cs, label %bb.y, label %.preheader.i.thread28.i.i.i

bb.u:                                             ; preds = %bb.r
  %i.ct = shl nuw i64 %i.bq, 32
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !6
  %i.cw = zext i32 %i.cv to i64
  %i.cx = or disjoint i64 %i.ct, %i.cw            ; 2 uses
  %i.cy = udiv i64 %i.cx, %i.bm
  %i.cz = trunc i64 %i.cy to i32
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !6
  %i.db = urem i64 %i.cx, %i.bm                   ; 2 uses
  br i1 %.not.i.i.i, label %bb.s, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = shl nuw i64 %i.db, 32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !6
  %i.df = zext i32 %i.de to i64
  %i.dg = or disjoint i64 %i.dc, %i.df            ; 2 uses
  %i.dh = udiv i64 %i.dg, %i.bm
  %i.di = trunc i64 %i.dh to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.di, ptr %i.dj, align 8, !tbaa !6
  %i.dk = urem i64 %i.dg, %i.bm                   ; 2 uses
  br i1 %exitcond.not.i.i.2, label %bb.s, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dl = shl nuw i64 %i.dk, 32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !6
  %i.do = zext i32 %i.dn to i64
  %i.dp = or disjoint i64 %i.dl, %i.do            ; 2 uses
  %i.dq = udiv i64 %i.dp, %i.bm
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !6
  %i.dt = urem i64 %i.dp, %i.bm                   ; 2 uses
  br i1 %exitcond.not.i.i.3, label %bb.s, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.du = shl nuw i64 %i.dt, 32
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dw = load i32, ptr %i.dv, align 16, !tbaa !6
  %i.dx = zext i32 %i.dw to i64
  %i.dy = or disjoint i64 %i.du, %i.dx            ; 2 uses
  %i.dz = udiv i64 %i.dy, %i.bm
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.ea, ptr %i.eb, align 16, !tbaa !6
  %i.ec = urem i64 %i.dy, %i.bm
  br label %bb.s

bb.y:                                             ; preds = %.lr.ph37.i.i.i.i, %.preheader.i.thread28.i.i.i, %bb.t, %._crit_edge.i.i.i.i
  %.sroa.0.i.0.i.i = phi i64 [ %i.ck, %.preheader.i.thread28.i.i.i ], [ %i.ci, %bb.t ], [ %i.ci, %.lr.ph37.i.i.i.i ], [ %i.cd, %._crit_edge.i.i.i.i ]
  %.sink.i.i.i = phi i64 [ %i.cp, %.preheader.i.thread28.i.i.i ], [ 0, %bb.t ], [ %i.cr, %.lr.ph37.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i ]
  store i64 %.sroa.0.i.0.i.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sink.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  store i64 %.lcssa40, ptr %3, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.ed = xor i64 %.val101.i, %.val4
  %i.ee = icmp slt i64 %i.ed, 0
  br i1 %i.ee, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ef = load <2 x i64>, ptr %2, align 8, !tbaa !9
  %i.eg = load i64, ptr %2, align 8, !tbaa !9
  %i.eh = icmp ne i64 %i.eg, 0
  %i.ei = sext i1 %i.eh to i64
  %i.ej = insertelement <2 x i64> <i64 0, i64 poison>, i64 %i.ei, i64 1
  %i.ek = sub <2 x i64> %i.ej, %i.ef
  store <2 x i64> %i.ek, ptr %2, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  br i1 %i.h, label %bb.ab, label %_ZN5arrowL12SingleDivideINS_15BasicDecimal128EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.el = load <2 x i64>, ptr %3, align 8, !tbaa !9
  %i.em = load i64, ptr %3, align 8, !tbaa !9
  %i.en = icmp ne i64 %i.em, 0
  %i.eo = sext i1 %i.en to i64
  %i.ep = insertelement <2 x i64> <i64 0, i64 poison>, i64 %i.eo, i64 1
  %i.eq = sub <2 x i64> %i.ep, %i.el
  store <2 x i64> %i.eq, ptr %3, align 8
  br label %_ZN5arrowL12SingleDivideINS_15BasicDecimal128EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i

_ZN5arrowL12SingleDivideINS_15BasicDecimal128EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i: ; preds = %bb.ab, %bb.aa, %.lr.ph.preheader.i.i.i.i
  %.023.i.i = phi i32 [ 0, %bb.ab ], [ 0, %bb.aa ], [ 2, %.lr.ph.preheader.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal128EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit

bb.ac:                                            ; preds = %bb.q
  %i.er = sub nuw nsw i64 %i.ah, %.0.i107.i       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.es = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bi, i1 false) ; 14 uses
  %.not.i = icmp eq i32 %i.es, 0                  ; 2 uses
  %.pre11 = add nsw i64 %.0.i107.i, -1            ; 9 uses
  br i1 %.not.i, label %.lr.ph34.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ac
  %i.et = sub nuw nsw i32 32, %i.es               ; 4 uses
  %min.iters.check = icmp ult i64 %.pre11, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %.pre11, -8                    ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.et, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert20 = insertelement <4 x i32> poison, i32 %i.es, i64 0
  %broadcast.splat21 = shufflevector <4 x i32> %broadcast.splatinsert20, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.bi, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %wide.load22, %vector.body ]
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 20
  %wide.load = load <4 x i32>, ptr %i.ew, align 4, !tbaa !6 ; 3 uses
  %wide.load22 = load <4 x i32>, ptr %i.ex, align 4, !tbaa !6 ; 4 uses
  %i.ey = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ez = shufflevector <4 x i32> %wide.load, <4 x i32> %wide.load22, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fa = shl <4 x i32> %i.ey, %broadcast.splat21
  %i.fb = shl <4 x i32> %i.ez, %broadcast.splat21
  %i.fc = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.fd = lshr <4 x i32> %wide.load22, %broadcast.splat
  %i.fe = or disjoint <4 x i32> %i.fc, %i.fa
  %i.ff = or disjoint <4 x i32> %i.fd, %i.fb
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store <4 x i32> %i.fe, ptr %i.eu, align 16, !tbaa !6
  store <4 x i32> %i.ff, ptr %i.fg, align 16, !tbaa !6
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fh = icmp eq i64 %index.next, %n.vec
  br i1 %i.fh, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %wide.load22, i64 3
  %cmp.n = icmp eq i64 %.pre11, %n.vec
  br i1 %cmp.n, label %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %.ph39 = phi i32 [ %i.bi, %.lr.ph.i.i ], [ %vector.recur.extract, %middle.block ]
  %.019.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i:    ; preds = %scalar.ph, %middle.block
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.pre11 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !6
  %i.fk = shl i32 %i.fj, %i.es
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !6
  br i1 %i.af, label %.lr.ph.i113.i.preheader, label %._crit_edge.i112.i

.lr.ph.i113.i.preheader:                          ; preds = %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i
  br i1 %min.iters.check24, label %.lr.ph.i113.i.preheader38, label %vector.ph25

vector.ph25:                                      ; preds = %.lr.ph.i113.i.preheader
  %n.vec26 = and i64 %.0.i.i, 4                   ; 2 uses
  %broadcast.splatinsert29 = insertelement <4 x i32> poison, i32 %i.et, i64 0
  %broadcast.splat30 = shufflevector <4 x i32> %broadcast.splatinsert29, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert27 = insertelement <4 x i32> poison, i32 %i.es, i64 0
  %broadcast.splat28 = shufflevector <4 x i32> %broadcast.splatinsert27, <4 x i32> poison, <4 x i32> zeroinitializer
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %wide.load32 = load <4 x i32>, ptr %4, align 4, !tbaa !6 ; 3 uses
  %5 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %wide.load32, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %6 = shl <4 x i32> %5, %broadcast.splat28
  %7 = lshr <4 x i32> %wide.load32, %broadcast.splat30
  %8 = or disjoint <4 x i32> %7, %6
  store <4 x i32> %8, ptr %i.b, align 16, !tbaa !6
  %vector.recur.extract34 = extractelement <4 x i32> %wide.load32, i64 3
  %cmp.n35 = icmp eq i64 %.0.i.i, %n.vec26
  br i1 %cmp.n35, label %._crit_edge.i112.loopexit.i, label %.lr.ph.i113.i.preheader38

.lr.ph.i113.i.preheader38:                        ; preds = %.lr.ph.i113.i.preheader, %vector.ph25
  %.ph = phi i32 [ 0, %.lr.ph.i113.i.preheader ], [ %vector.recur.extract34, %vector.ph25 ]
  %.019.i115.i.ph = phi i64 [ 0, %.lr.ph.i113.i.preheader ], [ %n.vec26, %vector.ph25 ]
  br label %.lr.ph.i113.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.fl = phi i32 [ %i.fo, %scalar.ph ], [ %.ph39, %scalar.ph.preheader ]
  %.019.i.i.a = phi i64 [ %9, %scalar.ph ], [ %.019.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.019.i.i.a
  %i.fn = shl i32 %i.fl, %i.es
  %9 = add nuw nsw i64 %.019.i.i.a, 1             ; 3 uses
  %10 = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %9
  %i.fo = load i32, ptr %10, align 4, !tbaa !6    ; 2 uses
  %i.fp = lshr i32 %i.fo, %i.et
  %i.fq = or disjoint i32 %i.fp, %i.fn
  store i32 %i.fq, ptr %i.fm, align 4, !tbaa !6
  %exitcond.not.i109.i = icmp eq i64 %9, %.pre11
  br i1 %exitcond.not.i109.i, label %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i, label %scalar.ph, !llvm.loop !22

._crit_edge.i112.loopexit.i:                      ; preds = %.lr.ph.i113.i, %vector.ph25
  %.pre.i = load i32, ptr %.0.i.sroa.phi.i, align 4, !tbaa !6
  br label %._crit_edge.i112.i

._crit_edge.i112.i:                               ; preds = %._crit_edge.i112.loopexit.i, %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i
  %i.fr = phi i32 [ %.pre.i, %._crit_edge.i112.loopexit.i ], [ %i.ac, %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i ]
  %i.fs = shl i32 %i.fr, %i.es
  store i32 %i.fs, ptr %.0.i.sroa.phi.i, align 4, !tbaa !6
  %.pre = load i32, ptr %i.c, align 16, !tbaa !6
  br label %.lr.ph34.i

.lr.ph.i113.i:                                    ; preds = %.lr.ph.i113.i.preheader38, %.lr.ph.i113.i
  %i.ft = phi i32 [ %i.fy, %.lr.ph.i113.i ], [ %.ph, %.lr.ph.i113.i.preheader38 ]
  %.019.i115.i.a = phi i64 [ %i.fw, %.lr.ph.i113.i ], [ %.019.i115.i.ph, %.lr.ph.i113.i.preheader38 ] ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.019.i115.i.a
  %i.fv = shl i32 %i.ft, %i.es
  %i.fw = add nuw nsw i64 %.019.i115.i.a, 1       ; 3 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !6  ; 2 uses
  %i.fz = lshr i32 %i.fy, %i.et
  %i.ga = or disjoint i32 %i.fz, %i.fv
  store i32 %i.ga, ptr %i.fu, align 4, !tbaa !6
  %exitcond.not.i116.i = icmp eq i64 %i.fw, %.0.i.i
  br i1 %exitcond.not.i116.i, label %._crit_edge.i112.loopexit.i, label %.lr.ph.i113.i, !llvm.loop !23

.lr.ph34.i:                                       ; preds = %bb.ac, %._crit_edge.i112.i
  %i.gb = phi i32 [ %.pre, %._crit_edge.i112.i ], [ %i.bi, %bb.ac ] ; 5 uses
  %i.gc = zext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !6
  %i.gf = zext i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.pre11
  %i.gh = add nsw i64 %.0.i107.i, -2              ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gh
  %i.gj = add nsw i64 %.0.i107.i, -3              ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gj
  %i.gl = add nsw i64 %.0.i107.i, -4              ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gl
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.pre11
  %i.go = add nsw i64 %.0.i107.i, -2              ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.go
  %i.gq = add nsw i64 %.0.i107.i, -3              ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gq
  %i.gs = add nsw i64 %.0.i107.i, -4              ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gs
  br label %bb.ah

._crit_edge35.i:                                  ; preds = %._crit_edge.thread.i
  br i1 %.not.i, label %_ZN5arrowL15ShiftArrayRightEPjll.exit.i, label %.preheader.i119.i

.preheader.i119.i:                                ; preds = %._crit_edge35.i
  br i1 %i.af, label %.lr.ph.i121.i, label %._crit_edge.i120.i

.lr.ph.i121.i:                                    ; preds = %.preheader.i119.i
  %i.gu = sub nuw nsw i32 32, %i.es               ; 4 uses
  %i.gv = load i32, ptr %.0.i.i.sroa.phi, align 4, !tbaa !6
  %i.gw = lshr i32 %i.gv, %i.es
  %i.gx = getelementptr [4 x i8], ptr %i.b, i64 %i.ah
  %i.gy = getelementptr i8, ptr %i.gx, i64 -8
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !6
  %i.ha = shl i32 %i.gz, %i.gu
  %i.hb = or disjoint i32 %i.ha, %i.gw
  store i32 %i.hb, ptr %.0.i.i.sroa.phi, align 4, !tbaa !6
  br i1 %i.ag, label %bb.ad, label %._crit_edge.i120.i

._crit_edge.i120.i:                               ; preds = %.lr.ph.i121.i, %bb.ad, %bb.ae, %bb.af, %.preheader.i119.i
  %i.hc = load i32, ptr %i.b, align 16, !tbaa !6
  %i.hd = lshr i32 %i.hc, %i.es
  store i32 %i.hd, ptr %i.b, align 16, !tbaa !6
  br label %_ZN5arrowL15ShiftArrayRightEPjll.exit.i

bb.ad:                                            ; preds = %.lr.ph.i121.i
  %.0.i122.i.1 = add nsw i64 %.0.i.i, -1          ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0.i122.i.1 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !6
  %i.hg = lshr i32 %i.hf, %i.es
  %i.hh = getelementptr i8, ptr %.0.i.i.sroa.phi45, i64 -8
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !6
  %i.hj = shl i32 %i.hi, %i.gu
  %i.hk = or disjoint i32 %i.hj, %i.hg
  store i32 %i.hk, ptr %i.he, align 4, !tbaa !6
  br i1 %.not.i.i.not, label %._crit_edge.i120.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.0.i122.i.2 = add nsw i64 %.0.i.i, -2          ; 2 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0.i122.i.2 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !6
  %i.hn = lshr i32 %i.hm, %i.es
  %i.ho = getelementptr [4 x i8], ptr %i.b, i64 %.0.i122.i.1
  %i.hp = getelementptr i8, ptr %i.ho, i64 -8
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !6
  %i.hr = shl i32 %i.hq, %i.gu
  %i.hs = or disjoint i32 %i.hr, %i.hn
  store i32 %i.hs, ptr %i.hl, align 4, !tbaa !6
  br i1 %i.ad, label %bb.af, label %._crit_edge.i120.i

bb.af:                                            ; preds = %bb.ae
  %i.ht = getelementptr [4 x i8], ptr %i.b, i64 %.0.i.i
  %i.hu = getelementptr i8, ptr %i.ht, i64 -12    ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !6
  %i.hw = lshr i32 %i.hv, %i.es
  %i.hx = getelementptr [4 x i8], ptr %i.b, i64 %.0.i122.i.2
  %i.hy = getelementptr i8, ptr %i.hx, i64 -8
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !6
  %i.ia = shl i32 %i.hz, %i.gu
  %i.ib = or disjoint i32 %i.ia, %i.hw
  store i32 %i.ib, ptr %i.hu, align 4, !tbaa !6
  br label %._crit_edge.i120.i

_ZN5arrowL15ShiftArrayRightEPjll.exit.i:          ; preds = %._crit_edge.i120.i, %._crit_edge35.i
  %i.ic = icmp samesign ugt i64 %i.er, 4
  br i1 %i.ic, label %.lr.ph.preheader.i.i.i, label %.lr.ph37.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN5arrowL15ShiftArrayRightEPjll.exit.i
  %i.id = load i32, ptr %i.d, align 16, !tbaa !6
  %.not.i.i127.i = icmp eq i32 %i.id, 0
  br i1 %.not.i.i127.i, label %.lr.ph37.i.i.thread.i, label %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal128EPKjl.exit.i

.lr.ph37.i.i.thread.i:                            ; preds = %.lr.ph.preheader.i.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.if = load i32, ptr %i.ie, align 16, !tbaa !6
  %i.ig = zext i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !6
  %i.ij = zext i32 %i.ii to i64
  %i.ik = shl nuw i64 %i.ij, 32
  %i.il = or disjoint i64 %i.ik, %i.ig
  %.phi.trans.insert.i48.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.pre.i12449.i = load i32, ptr %.phi.trans.insert.i48.i, align 8, !tbaa !6
  %i.im = zext i32 %.pre.i12449.i to i64
  br label %.preheader.i.thread28.i.i

.lr.ph37.preheader.i.i.i:                         ; preds = %_ZN5arrowL15ShiftArrayRightEPjll.exit.i
  %i.in = add nsw i64 %i.er, -1                   ; 3 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.in ; 2 uses
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !6
  %i.iq = zext i32 %i.ip to i64                   ; 2 uses
  %i.ir = icmp eq i64 %i.in, 0
  br i1 %i.ir, label %bb.aq, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph37.preheader.i.i.i
  %i.is = getelementptr i8, ptr %i.io, i64 -4
  %i.it = load i32, ptr %i.is, align 4, !tbaa !6
  %i.iu = zext i32 %i.it to i64
  %i.iv = shl nuw i64 %i.iu, 32
  %i.iw = or disjoint i64 %i.iv, %i.iq            ; 3 uses
  %.not.i123.i = icmp eq i64 %i.in, 1
  br i1 %.not.i123.i, label %bb.aq, label %.lr.ph37.i.i.i

.preheader.i.thread28.i.i:                        ; preds = %.lr.ph37.i.i.i, %.lr.ph37.i.i.thread.i
  %i.ix = phi i64 [ %i.im, %.lr.ph37.i.i.thread.i ], [ %i.jf, %.lr.ph37.i.i.i ]
  %.phi.trans.insert.i50.i = phi ptr [ %.phi.trans.insert.i48.i, %.lr.ph37.i.i.thread.i ], [ %.phi.trans.insert.i.i, %.lr.ph37.i.i.i ]
  %i.iy = phi i64 [ %i.il, %.lr.ph37.i.i.thread.i ], [ %i.iw, %.lr.ph37.i.i.i ]
  %i.iz = getelementptr i8, ptr %.phi.trans.insert.i50.i, i64 -4
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !6
  %i.jb = zext i32 %i.ja to i64
  %i.jc = shl nuw i64 %i.jb, 32
  %i.jd = or disjoint i64 %i.jc, %i.ix
  br label %bb.aq

.lr.ph37.i.i.i:                                   ; preds = %bb.ag
  %i.je = add nsw i64 %i.er, -3                   ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.je ; 2 uses
  %.pre.i124.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !6
  %i.jf = zext i32 %.pre.i124.i to i64            ; 2 uses
  %i.jg = icmp eq i64 %i.je, 0
  br i1 %i.jg, label %bb.aq, label %.preheader.i.thread28.i.i

bb.ah:                                            ; preds = %._crit_edge.thread.i, %.lr.ph34.i
  %.09033.i = phi i64 [ 0, %.lr.ph34.i ], [ %i.jj, %._crit_edge.thread.i ] ; 3 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.09033.i ; 12 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !6  ; 4 uses
  %i.jj = add nuw nsw i64 %.09033.i, 1            ; 3 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jj
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !6  ; 2 uses
  %.not98.i = icmp eq i32 %i.ji, %i.gb
  br i1 %.not98.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jm = zext i32 %i.jl to i64
  %i.jn = zext i32 %i.ji to i64
  %i.jo = shl nuw i64 %i.jn, 32
  %i.jp = or disjoint i64 %i.jo, %i.jm
  %i.jq = udiv i64 %i.jp, %i.gc
  %i.jr = trunc i64 %i.jq to i32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.088.i = phi i32 [ %i.jr, %bb.ai ], [ -1, %bb.ah ] ; 2 uses
  %i.js = mul i32 %.088.i, %i.gb
  %i.jt = sub i32 %i.jl, %i.js
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !6
  %i.jw = zext i32 %i.jv to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %bb.aj
  %.189.i = phi i32 [ %.088.i, %bb.aj ], [ %i.kd, %bb.al ] ; 3 uses
  %.087.i = phi i32 [ %i.jt, %bb.aj ], [ %i.ke, %bb.al ] ; 2 uses
  %i.jx = zext i32 %.189.i to i64
  %i.jy = mul nuw i64 %i.jx, %i.gf
  %i.jz = zext i32 %.087.i to i64
  %i.ka = shl nuw i64 %i.jz, 32
  %i.kb = or disjoint i64 %i.ka, %i.jw
  %i.kc = icmp ugt i64 %i.jy, %i.kb
  br i1 %i.kc, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.kd = add i32 %.189.i, -1                     ; 2 uses
  %i.ke = add i32 %.087.i, %i.gb                  ; 2 uses
  %i.kf = icmp ult i32 %i.ke, %i.gb
  br i1 %i.kf, label %bb.am, label %bb.ak, !llvm.loop !24

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.2.i = phi i32 [ %i.kd, %bb.al ], [ %.189.i, %bb.ak ] ; 4 uses
  br i1 %i.bj, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.am
  %i.kg = zext i32 %.2.i to i64                   ; 4 uses
  %i.kh = load i32, ptr %i.gg, align 4, !tbaa !6
  %i.ki = zext i32 %i.kh to i64
  %i.kj = mul nuw i64 %i.ki, %i.kg                ; 2 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %.pre11
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 4 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK5arrow15BasicDecimal25619GetWholeAndFractionEiPS0_S1_
define void @_ZNK5arrow15BasicDecimal25619GetWholeAndFractionEiPS0_S1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [32 x i8], ptr @_ZN5arrowL22kDecimal256PowersOfTenE, i64 %i.a
  %i.c = tail call noundef i32 @_ZNK5arrow15BasicDecimal2566DivideERKS0_PS0_S3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef %2, ptr noundef %3) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal25618GetScaleMultiplierEi(i32 noundef %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [32 x i8], ptr @_ZN5arrowL22kDecimal256PowersOfTenE, i64 %i.a
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal25622GetHalfScaleMultiplierEi(i32 noundef %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [32 x i8], ptr @_ZN5arrowL26kDecimal256HalfPowersOfTenE, i64 %i.a
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5arrow15BasicDecimal25611GetMaxValueEi(ptr dead_on_unwind noalias nofree writable sret(%"class.arrow::BasicDecimal256") align 8 captures(none) initializes((0, 32)) %0, i32 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [32 x i8], ptr @_ZN5arrowL22kDecimal256PowersOfTenE, i64 %i.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.c = load i64, ptr %0, align 8, !tbaa !9, !alias.scope !59 ; 2 uses
  %i.d = add i64 %i.c, -1
  %.not = icmp eq i64 %i.c, 0                     ; 3 uses
  store i64 %i.d, ptr %0, align 8, !tbaa !9, !alias.scope !59
  %i.e = sext i1 %.not to i64
  %i.f = xor i1 %.not, true                       ; 2 uses
  %spec.select.1.i.i = zext i1 %i.f to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !9, !alias.scope !59 ; 2 uses
  %i.i = add i64 %i.h, %i.e                       ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h                  ; 2 uses
  %i.k = select i1 %.not, i64 1, i64 2
  %.2.1.i.i = select i1 %i.j, i64 %i.k, i64 %spec.select.1.i.i
  store i64 %i.i, ptr %i.g, align 8, !tbaa !9, !alias.scope !59
  %i.l = select i1 %i.j, i1 true, i1 %i.f         ; 2 uses
  %spec.select.2.i.i = zext i1 %i.l to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !9, !alias.scope !59 ; 2 uses
  %i.o = add i64 %i.n, -1
  %i.p = add i64 %i.o, %.2.1.i.i                  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.n
  %i.r = select i1 %i.l, i64 2, i64 1
  %.2.2.i.i = select i1 %i.q, i64 %i.r, i64 %spec.select.2.i.i
  store i64 %i.p, ptr %i.m, align 8, !tbaa !9, !alias.scope !59
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !9, !alias.scope !59
  %i.u = add i64 %i.t, -1
  %i.v = add i64 %i.u, %.2.2.i.i
  store i64 %i.v, ptr %i.s, align 8, !tbaa !9, !alias.scope !59
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5arrowplERKNS_15BasicDecimal256ES2_(ptr dead_on_unwind noalias nofree writable sret(%"class.arrow::BasicDecimal256") align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = load i64, ptr %2, align 8, !tbaa !9
  %i.b = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.c = add i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp ult i64 %i.c, %i.b
  %.2.i = zext i1 %i.d to i64
  store i64 %i.c, ptr %0, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9    ; 2 uses
  %i.g = add i64 %i.f, %.2.i                      ; 2 uses
  %i.h = icmp ult i64 %i.g, %i.f                  ; 2 uses
  %spec.select.1.i = zext i1 %i.h to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !9    ; 2 uses
  %i.k = add i64 %i.g, %i.j                       ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.j
  %i.m = select i1 %i.h, i64 2, i64 1
  %.2.1.i = select i1 %i.l, i64 %i.m, i64 %spec.select.1.i
  store i64 %i.k, ptr %i.i, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !9    ; 2 uses
  %i.p = add i64 %.2.1.i, %i.o                    ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o                  ; 2 uses
  %spec.select.2.i = zext i1 %i.q to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !9    ; 2 uses
  %i.t = add i64 %i.p, %i.s                       ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = select i1 %i.q, i64 2, i64 1
  %.2.2.i = select i1 %i.u, i64 %i.v, i64 %spec.select.2.i
  store i64 %i.t, ptr %i.r, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !9
  %i.aa = add i64 %i.z, %i.x
  %i.ab = add i64 %i.aa, %.2.2.i
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5arrowcoERKNS_15BasicDecimal256E(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::BasicDecimal256") align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x i64>, ptr %1, align 8, !tbaa !9
  %i.c = xor <2 x i64> %i.b, splat (i64 -1)
  store <2 x i64> %i.c, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load <2 x i64>, ptr %i.a, align 8, !tbaa !9
  %i.e = xor <2 x i64> %i.d, splat (i64 -1)
  store <2 x i64> %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256dVERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %2 = alloca %"class.arrow::BasicDecimal256", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.a = call noundef i32 @_ZNK5arrow15BasicDecimal2566DivideERKS0_PS0_S3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %0, ptr noundef nonnull %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrowdvERKNS_15BasicDecimal256ES2_(ptr dead_on_unwind noalias nofree writable sret(%"class.arrow::BasicDecimal256") align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #7 {
bb.a:
  %3 = alloca %"class.arrow::BasicDecimal256", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.a = call noundef i32 @_ZNK5arrow15BasicDecimal2566DivideERKS0_PS0_S3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %0, ptr noundef nonnull %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!4, !4, i64 0}
!8 = !{!"long", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"_ZTSN5arrow17SmallBasicDecimalIiEE", !5, i64 0}
!11 = !{!10, !5, i64 0}
!12 = !{!"_ZTSN5arrow17SmallBasicDecimalIlEE", !8, i64 0}
!13 = !{!12, !8, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{!"branch_weights", !"expected", i32 2146234828, i32 1248820}
!18 = !{!"branch_weights", !"expected", i32 1248820, i32 2146234828}
!19 = !{i64 0, i64 16, !7}
!20 = !{i64 0, i64 32, !7}
!21 = distinct !{!21, !14, !15, !16}
!22 = distinct !{!22, !14, !16, !15}
!23 = distinct !{!23, !14, !16, !15}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!27 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!28 = distinct !{!28, !"_ZN5arrowngERKNS_15BasicDecimal256E"}
!29 = distinct !{!29, !28, !"_ZN5arrowngERKNS_15BasicDecimal256E: argument 0"}
!30 = !{!29}
!31 = distinct !{!31, !"_ZN5arrow15BasicDecimal2563AbsERKS0_"}
!32 = distinct !{!32, !31, !"_ZN5arrow15BasicDecimal2563AbsERKS0_: argument 0"}
!33 = distinct !{!33, !"_ZN5arrow15BasicDecimal2563AbsERKS0_"}
!34 = distinct !{!34, !33, !"_ZN5arrow15BasicDecimal2563AbsERKS0_: argument 0"}
!35 = !{!32}
!36 = !{!34}
!37 = distinct !{!37, !14, !15, !16}
!38 = distinct !{!38, !14, !16, !15}
!39 = distinct !{!39, !14, !15, !16}
!40 = distinct !{!40, !14, !16, !15}
!41 = distinct !{!41, !14}
!42 = distinct !{!42, !14}
!43 = distinct !{!43, !14, !15, !16}
!44 = distinct !{!44, !14, !16, !15}
!45 = distinct !{!45, !14, !15, !16}
!46 = distinct !{!46, !14, !16, !15}
!47 = distinct !{!47, !14, !15, !16}
!48 = distinct !{!48, !14, !16, !15}
!49 = distinct !{!49, !14}
!50 = distinct !{!50, !14}
!51 = distinct !{!51, !14}
!52 = distinct !{!52, !14}
!53 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!54 = distinct !{!54, !"_ZN5arrow15BasicDecimal2563AbsERKS0_"}
!55 = distinct !{!55, !54, !"_ZN5arrow15BasicDecimal2563AbsERKS0_: argument 0"}
!56 = !{!55}
!57 = distinct !{!57, !"_ZN5arrowplERKNS_15BasicDecimal256ES2_"}
!58 = distinct !{!58, !57, !"_ZN5arrowplERKNS_15BasicDecimal256ES2_: argument 0"}
!59 = !{!58}
end_hunk_1
