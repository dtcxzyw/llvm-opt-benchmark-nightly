inline.NumInlined: 502
inline.NumDeleted: 136
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNK5arrow15BasicDecimal12815FitsInPrecisionEi:bb.a
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
  store i32 0, ptr %i.b, align 16, !tbaa !3
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
  %.0.i.i.sroa.gep43.a = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.0.i.i.sroa.gep44.a = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.0.i.i.sroa.gep45 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.0.i.i.sroa.gep48.a = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.0.i.i.sroa.gep49.a = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.0.i.i.sroa.gep50.a = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.0.i.i.sroa.gep51 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br i1 %.not.i.i.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %.sroa.6.0.i.i.i, 4294967295
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = lshr i64 %.sroa.6.0.i.i.i, 32
  %i.n = trunc nuw i64 %i.m to i32
  store i32 %i.n, ptr %i.f, align 4, !tbaa !3
  %i.o = trunc i64 %.sroa.6.0.i.i.i to i32
  store i32 %i.o, ptr %.0.i.sroa.gep5.i, align 8, !tbaa !3
  %i.p = lshr i64 %.sroa.0.0.i.i.i, 32
  %i.q = trunc nuw i64 %i.p to i32
  store i32 %i.q, ptr %.0.i.sroa.gep4.i, align 4, !tbaa !3
  %i.r = trunc i64 %.sroa.0.0.i.i.i to i32        ; 2 uses
  store i32 %i.r, ptr %.0.i.sroa.gep.i, align 16, !tbaa !3
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i

bb.d:                                             ; preds = %bb.b
  %i.s = trunc nuw i64 %.sroa.6.0.i.i.i to i32
  store i32 %i.s, ptr %i.f, align 4, !tbaa !3
  %i.t = lshr i64 %.sroa.0.0.i.i.i, 32
  %i.u = trunc nuw i64 %i.t to i32
  store i32 %i.u, ptr %.0.i.sroa.gep5.i, align 8, !tbaa !3
  %i.v = trunc i64 %.sroa.0.0.i.i.i to i32        ; 2 uses
  store i32 %i.v, ptr %.0.i.sroa.gep4.i, align 4, !tbaa !3
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i

bb.e:                                             ; preds = %bb.a
  %i.w = icmp ugt i64 %.sroa.0.0.i.i.i, 4294967295
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = lshr i64 %.sroa.0.0.i.i.i, 32
  %i.y = trunc nuw i64 %i.x to i32
  store i32 %i.y, ptr %i.f, align 4, !tbaa !3
  %i.z = trunc i64 %.sroa.0.0.i.i.i to i32        ; 2 uses
  store i32 %i.z, ptr %.0.i.sroa.gep5.i, align 8, !tbaa !3
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i

bb.g:                                             ; preds = %bb.e
  %i.aa = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %i.aa, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = trunc nuw i64 %.sroa.0.0.i.i.i to i32   ; 2 uses
  store i32 %i.ab, ptr %i.f, align 4, !tbaa !3
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i

_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.c
  %i.ac = phi i32 [ %i.r, %bb.c ], [ %i.v, %bb.d ], [ %i.z, %bb.f ], [ %i.ab, %bb.h ], [ 0, %bb.g ]
  %.0.i.sroa.phi.i = phi ptr [ %.0.i.sroa.gep.i, %bb.c ], [ %.0.i.sroa.gep4.i, %bb.d ], [ %.0.i.sroa.gep5.i, %bb.f ], [ %i.f, %bb.h ], [ %i.b, %bb.g ] ; 5 uses
  %.0.i.sroa.phi14.i = phi ptr [ %.0.i.sroa.gep15.i, %bb.c ], [ %.0.i.sroa.gep16.i, %bb.d ], [ %.0.i.sroa.gep17.i, %bb.f ], [ %.0.i.sroa.gep18.i, %bb.h ], [ %i.a, %bb.g ] ; 2 uses
  %i.ad = phi i1 [ true, %bb.c ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.g ] ; 3 uses
  %i.ae = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.h ], [ true, %bb.g ] ; 3 uses
  %.not.i.i.i = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.f ], [ true, %bb.h ], [ false, %bb.g ] ; 3 uses
  %i.af = phi i1 [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.h ], [ false, %bb.g ] ; 2 uses
  %min.iters.check25 = phi i1 [ false, %bb.c ], [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.h ], [ true, %bb.g ]
  %.0.i.i.sroa.phi = phi ptr [ %.0.i.i.sroa.gep, %bb.c ], [ %.0.i.i.sroa.gep43.a, %bb.d ], [ %.0.i.i.sroa.gep44.a, %bb.f ], [ %.0.i.i.sroa.gep45, %bb.h ], [ %i.b, %bb.g ] ; 2 uses
  %.0.i.i.sroa.phi47 = phi ptr [ %.0.i.i.sroa.gep48.a, %bb.c ], [ %.0.i.i.sroa.gep49.a, %bb.d ], [ %.0.i.i.sroa.gep50.a, %bb.f ], [ %.0.i.i.sroa.gep51, %bb.h ], [ %i.b, %bb.g ]
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
  store i32 %i.ap, ptr %i.c, align 16, !tbaa !3
  %i.aq = trunc i64 %.sroa.6.0.i.i103.i to i32    ; 2 uses
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !3
  %i.ar = lshr i64 %.sroa.0.0.i.i104.i, 32
  %i.as = trunc nuw i64 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.as, ptr %i.at, align 8, !tbaa !3
  %i.au = trunc i64 %.sroa.0.0.i.i104.i to i32
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.au, ptr %i.av, align 4, !tbaa !3
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i

bb.k:                                             ; preds = %bb.i
  %i.aw = trunc nuw i64 %.sroa.6.0.i.i103.i to i32 ; 2 uses
  store i32 %i.aw, ptr %i.c, align 16, !tbaa !3
  %i.ax = lshr i64 %.sroa.0.0.i.i104.i, 32
  %i.ay = trunc nuw i64 %i.ax to i32              ; 2 uses
  store i32 %i.ay, ptr %i.an, align 4, !tbaa !3
  %i.az = trunc i64 %.sroa.0.0.i.i104.i to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !3
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i

bb.l:                                             ; preds = %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i
  %i.bb = icmp ugt i64 %.sroa.0.0.i.i104.i, 4294967295
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bc = lshr i64 %.sroa.0.0.i.i104.i, 32
  %i.bd = trunc nuw i64 %i.bc to i32              ; 2 uses
  store i32 %i.bd, ptr %i.c, align 16, !tbaa !3
  %i.be = trunc i64 %.sroa.0.0.i.i104.i to i32    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !3
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i

bb.n:                                             ; preds = %bb.l
  %i.bg = icmp eq i64 %.sroa.0.0.i.i104.i, 0
  br i1 %i.bg, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = trunc nuw i64 %.sroa.0.0.i.i104.i to i32 ; 2 uses
  store i32 %i.bh, ptr %i.c, align 16, !tbaa !3
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i

_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.k, %bb.j
  %4 = phi i32 [ %i.aq, %bb.j ], [ %i.ay, %bb.k ], [ %i.be, %bb.m ], [ undef, %bb.o ], [ undef, %bb.n ]
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
  %i.bn = load i32, ptr %i.b, align 16, !tbaa !3  ; 2 uses
  %i.bo = udiv i32 %i.bn, %i.bi
  store i32 %i.bo, ptr %i.a, align 16, !tbaa !3
  %i.bp = urem i32 %i.bn, %i.bi
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  br i1 %i.ae, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.r
  %.lcssa42 = phi i64 [ %i.bq, %bb.r ], [ %i.db, %bb.u ], [ %i.dk, %bb.v ], [ %i.dt, %bb.w ], [ %i.ec, %bb.x ]
  br i1 %i.ad, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.s
  %i.br = load i32, ptr %i.a, align 16, !tbaa !3
  %.not.i.i.i.i = icmp eq i32 %i.br, 0
  br i1 %.not.i.i.i.i, label %.lr.ph36.i.i.thread.i.i, label %_ZN5arrowL12SingleDivideINS_15BasicDecimal128EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i

.lr.ph36.i.i.thread.i.i:                          ; preds = %.lr.ph.preheader.i.i.i.i
  %i.bs = getelementptr [4 x i8], ptr %i.a, i64 %i.ah ; 3 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr i8, ptr %i.bs, i64 -8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = zext i32 %i.bx to i64
  %i.bz = shl nuw i64 %i.by, 32
  %i.ca = or disjoint i64 %i.bz, %i.bv
  %.phi.trans.insert.i33.i.i = getelementptr i8, ptr %i.bs, i64 -12 ; 2 uses
  %.pre.i34.i.i = load i32, ptr %.phi.trans.insert.i33.i.i, align 4, !tbaa !3
  %i.cb = zext i32 %.pre.i34.i.i to i64
  br label %.preheader.i.thread28.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.s
  %i.cc = load i32, ptr %.0.i.sroa.phi14.i, align 4, !tbaa !3
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  br i1 %i.ae, label %bb.y, label %bb.t

bb.t:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ce = getelementptr i8, ptr %.0.i.sroa.phi14.i, i64 -4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  %i.cg = zext i32 %i.cf to i64
  %i.ch = shl nuw i64 %i.cg, 32
  %i.ci = or disjoint i64 %i.ch, %i.cd            ; 3 uses
  br i1 %.not.i.i.i, label %bb.y, label %.lr.ph36.i.i.i.i

.preheader.i.thread28.i.i.i:                      ; preds = %.lr.ph36.i.i.i.i, %.lr.ph36.i.i.thread.i.i
  %i.cj = phi i64 [ %i.cb, %.lr.ph36.i.i.thread.i.i ], [ %i.cr, %.lr.ph36.i.i.i.i ]
  %.phi.trans.insert.i35.i.i = phi ptr [ %.phi.trans.insert.i33.i.i, %.lr.ph36.i.i.thread.i.i ], [ %.phi.trans.insert.i.i.i, %.lr.ph36.i.i.i.i ]
  %i.ck = phi i64 [ %i.ca, %.lr.ph36.i.i.thread.i.i ], [ %i.ci, %.lr.ph36.i.i.i.i ]
  %i.cl = getelementptr i8, ptr %.phi.trans.insert.i35.i.i, i64 -4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.cn = zext i32 %i.cm to i64
  %i.co = shl nuw i64 %i.cn, 32
  %i.cp = or disjoint i64 %i.co, %i.cj
  br label %bb.y

.lr.ph36.i.i.i.i:                                 ; preds = %bb.t
  %i.cq = add nsw i64 %.0.i.i, -2                 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cq ; 2 uses
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !3
  %i.cr = zext i32 %.pre.i.i.i to i64             ; 2 uses
  %i.cs = icmp eq i64 %i.cq, 0
  br i1 %i.cs, label %bb.y, label %.preheader.i.thread28.i.i.i

bb.u:                                             ; preds = %bb.r
  %i.ct = shl nuw i64 %i.bq, 32
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3
  %i.cw = zext i32 %i.cv to i64
  %i.cx = or disjoint i64 %i.ct, %i.cw            ; 2 uses
  %i.cy = udiv i64 %i.cx, %i.bm
  %i.cz = trunc i64 %i.cy to i32
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !3
  %i.db = urem i64 %i.cx, %i.bm                   ; 2 uses
  br i1 %.not.i.i.i, label %bb.s, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = shl nuw i64 %i.db, 32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !3
  %i.df = zext i32 %i.de to i64
  %i.dg = or disjoint i64 %i.dc, %i.df            ; 2 uses
  %i.dh = udiv i64 %i.dg, %i.bm
  %i.di = trunc i64 %i.dh to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.di, ptr %i.dj, align 8, !tbaa !3
  %i.dk = urem i64 %i.dg, %i.bm                   ; 2 uses
  br i1 %exitcond.not.i.i.2, label %bb.s, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dl = shl nuw i64 %i.dk, 32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !3
  %i.do = zext i32 %i.dn to i64
  %i.dp = or disjoint i64 %i.dl, %i.do            ; 2 uses
  %i.dq = udiv i64 %i.dp, %i.bm
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !3
  %i.dt = urem i64 %i.dp, %i.bm                   ; 2 uses
  br i1 %exitcond.not.i.i.3, label %bb.s, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.du = shl nuw i64 %i.dt, 32
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dw = load i32, ptr %i.dv, align 16, !tbaa !3
  %i.dx = zext i32 %i.dw to i64
  %i.dy = or disjoint i64 %i.du, %i.dx            ; 2 uses
  %i.dz = udiv i64 %i.dy, %i.bm
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.ea, ptr %i.eb, align 16, !tbaa !3
  %i.ec = urem i64 %i.dy, %i.bm
  br label %bb.s

bb.y:                                             ; preds = %.lr.ph36.i.i.i.i, %.preheader.i.thread28.i.i.i, %bb.t, %._crit_edge.i.i.i.i
  %.sroa.0.i.0.i.i = phi i64 [ %i.ck, %.preheader.i.thread28.i.i.i ], [ %i.ci, %bb.t ], [ %i.ci, %.lr.ph36.i.i.i.i ], [ %i.cd, %._crit_edge.i.i.i.i ]
  %.sink.i.i.i = phi i64 [ %i.cp, %.preheader.i.thread28.i.i.i ], [ 0, %bb.t ], [ %i.cr, %.lr.ph36.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i ]
  store i64 %.sroa.0.i.0.i.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sink.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  store i64 %.lcssa42, ptr %3, align 8
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
  %.0.i109.i = phi i32 [ 0, %bb.ab ], [ 0, %bb.aa ], [ 2, %.lr.ph.preheader.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal128EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit

bb.ac:                                            ; preds = %bb.q
  %i.er = sub nsw i64 %i.ah, %.0.i107.i           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.es = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bi, i1 false) ; 14 uses
  %.not.i = icmp eq i32 %i.es, 0                  ; 2 uses
  %.pre12 = add nsw i64 %.0.i107.i, -1            ; 9 uses
  br i1 %.not.i, label %.lr.ph34.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ac
  %i.et = sub nuw nsw i32 32, %i.es               ; 4 uses
  %min.iters.check = icmp ult i64 %.pre12, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %.pre12, -8                    ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.et, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert21 = insertelement <4 x i32> poison, i32 %i.es, i64 0
  %broadcast.splat22 = shufflevector <4 x i32> %broadcast.splatinsert21, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.bi, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %wide.load23, %vector.body ]
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 20
  %wide.load = load <4 x i32>, ptr %i.ew, align 4, !tbaa !3 ; 3 uses
  %wide.load23 = load <4 x i32>, ptr %i.ex, align 4, !tbaa !3 ; 4 uses
  %i.ey = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ez = shufflevector <4 x i32> %wide.load, <4 x i32> %wide.load23, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fa = shl <4 x i32> %i.ey, %broadcast.splat22
  %i.fb = shl <4 x i32> %i.ez, %broadcast.splat22
  %i.fc = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.fd = lshr <4 x i32> %wide.load23, %broadcast.splat
  %i.fe = or disjoint <4 x i32> %i.fc, %i.fa
  %i.ff = or disjoint <4 x i32> %i.fd, %i.fb
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store <4 x i32> %i.fe, ptr %i.eu, align 16, !tbaa !3
  store <4 x i32> %i.ff, ptr %i.fg, align 16, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fh = icmp eq i64 %index.next, %n.vec
  br i1 %i.fh, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %wide.load23, i64 3
  %cmp.n = icmp eq i64 %.pre12, %n.vec
  br i1 %cmp.n, label %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %.ph41 = phi i32 [ %i.bi, %.lr.ph.i.i ], [ %vector.recur.extract, %middle.block ]
  %.019.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i:    ; preds = %scalar.ph, %middle.block
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.pre12 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !3
  %i.fk = shl i32 %i.fj, %i.es
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !3
  br i1 %i.af, label %.lr.ph.i114.i.preheader, label %._crit_edge.i113.i

.lr.ph.i114.i.preheader:                          ; preds = %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i
  br i1 %min.iters.check25, label %.lr.ph.i114.i.preheader40, label %vector.ph26

vector.ph26:                                      ; preds = %.lr.ph.i114.i.preheader
  %n.vec28 = and i64 %.0.i.i, 4                   ; 2 uses
  %broadcast.splatinsert31 = insertelement <4 x i32> poison, i32 %i.et, i64 0
  %broadcast.splat32 = shufflevector <4 x i32> %broadcast.splatinsert31, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert29 = insertelement <4 x i32> poison, i32 %i.es, i64 0
  %broadcast.splat30 = shufflevector <4 x i32> %broadcast.splatinsert29, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %wide.load34 = load <4 x i32>, ptr %i.fl, align 4, !tbaa !3 ; 3 uses
  %i.fm = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %wide.load34, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fn = shl <4 x i32> %i.fm, %broadcast.splat30
  %i.fo = lshr <4 x i32> %wide.load34, %broadcast.splat32
  %i.fp = or disjoint <4 x i32> %i.fo, %i.fn
  store <4 x i32> %i.fp, ptr %i.b, align 16, !tbaa !3
  %vector.recur.extract36 = extractelement <4 x i32> %wide.load34, i64 3
  %cmp.n37 = icmp eq i64 %.0.i.i, %n.vec28
  br i1 %cmp.n37, label %._crit_edge.i113.loopexit.i, label %.lr.ph.i114.i.preheader40

.lr.ph.i114.i.preheader40:                        ; preds = %.lr.ph.i114.i.preheader, %vector.ph26
  %.ph = phi i32 [ 0, %.lr.ph.i114.i.preheader ], [ %vector.recur.extract36, %vector.ph26 ]
  %.019.i116.i.ph = phi i64 [ 0, %.lr.ph.i114.i.preheader ], [ %n.vec28, %vector.ph26 ]
  br label %.lr.ph.i114.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.fq = phi i32 [ %i.fv, %scalar.ph ], [ %.ph41, %scalar.ph.preheader ]
  %.019.i.i = phi i64 [ %i.ft, %scalar.ph ], [ %.019.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.019.i.i
  %i.fs = shl i32 %i.fq, %i.es
  %i.ft = add nuw nsw i64 %.019.i.i, 1            ; 3 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !3  ; 2 uses
  %i.fw = lshr i32 %i.fv, %i.et
  %i.fx = or disjoint i32 %i.fw, %i.fs
  store i32 %i.fx, ptr %i.fr, align 4, !tbaa !3
  %exitcond.not.i110.i = icmp eq i64 %i.ft, %.pre12
  br i1 %exitcond.not.i110.i, label %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i, label %scalar.ph, !llvm.loop !20

._crit_edge.i113.loopexit.i:                      ; preds = %.lr.ph.i114.i, %vector.ph26
  %.pre.i = load i32, ptr %.0.i.sroa.phi.i, align 4, !tbaa !3
  br label %._crit_edge.i113.i

._crit_edge.i113.i:                               ; preds = %._crit_edge.i113.loopexit.i, %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i
  %i.fy = phi i32 [ %.pre.i, %._crit_edge.i113.loopexit.i ], [ %i.ac, %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i ]
  %i.fz = shl i32 %i.fy, %i.es
  store i32 %i.fz, ptr %.0.i.sroa.phi.i, align 4, !tbaa !3
  %.pre = load i32, ptr %i.c, align 16, !tbaa !3
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.pre11 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !3
  br label %.lr.ph34.i

.lr.ph.i114.i:                                    ; preds = %.lr.ph.i114.i.preheader40, %.lr.ph.i114.i
  %i.ga = phi i32 [ %i.gf, %.lr.ph.i114.i ], [ %.ph, %.lr.ph.i114.i.preheader40 ]
  %.019.i116.i = phi i64 [ %i.gd, %.lr.ph.i114.i ], [ %.019.i116.i.ph, %.lr.ph.i114.i.preheader40 ] ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.019.i116.i
  %i.gc = shl i32 %i.ga, %i.es
  %i.gd = add nuw nsw i64 %.019.i116.i, 1         ; 3 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !3  ; 2 uses
  %i.gg = lshr i32 %i.gf, %i.et
  %i.gh = or disjoint i32 %i.gg, %i.gc
  store i32 %i.gh, ptr %i.gb, align 4, !tbaa !3
  %exitcond.not.i117.i = icmp eq i64 %i.gd, %.0.i.i
  br i1 %exitcond.not.i117.i, label %._crit_edge.i113.loopexit.i, label %.lr.ph.i114.i, !llvm.loop !21

.lr.ph34.i:                                       ; preds = %bb.ac, %._crit_edge.i113.i
  %i.gi = phi i32 [ %.pre11, %._crit_edge.i113.i ], [ %4, %bb.ac ]
  %5 = phi i32 [ %.pre, %._crit_edge.i113.i ], [ %i.bi, %bb.ac ] ; 5 uses
  %6 = zext i32 %5 to i64
  %i.gj = zext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.pre12
  %i.gl = add nsw i64 %.0.i107.i, -2              ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gl
  %i.gn = add nsw i64 %.0.i107.i, -3              ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gn
  %i.gp = add nsw i64 %.0.i107.i, -4              ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gp
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.pre12
  %i.gs = add nsw i64 %.0.i107.i, -2              ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gs
  %i.gu = add nsw i64 %.0.i107.i, -3              ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gu
  %i.gw = add nsw i64 %.0.i107.i, -4              ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gw
  br label %bb.ah

._crit_edge35.i:                                  ; preds = %._crit_edge.thread.i
  br i1 %.not.i, label %_ZN5arrowL15ShiftArrayRightEPjll.exit.i, label %.preheader.i120.i

.preheader.i120.i:                                ; preds = %._crit_edge35.i
  br i1 %i.af, label %.lr.ph.i122.i, label %._crit_edge.i121.i

.lr.ph.i122.i:                                    ; preds = %.preheader.i120.i
  %i.gy = sub nuw nsw i32 32, %i.es               ; 4 uses
  %i.gz = load i32, ptr %.0.i.i.sroa.phi, align 4, !tbaa !3
  %i.ha = lshr i32 %i.gz, %i.es
  %i.hb = getelementptr [4 x i8], ptr %i.b, i64 %i.ah
  %i.hc = getelementptr i8, ptr %i.hb, i64 -8
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !3
  %i.he = shl i32 %i.hd, %i.gy
  %i.hf = or disjoint i32 %i.he, %i.ha
  store i32 %i.hf, ptr %.0.i.i.sroa.phi, align 4, !tbaa !3
  br i1 %i.ag, label %bb.ad, label %._crit_edge.i121.i

._crit_edge.i121.i:                               ; preds = %.lr.ph.i122.i, %bb.ad, %bb.ae, %bb.af, %.preheader.i120.i
  %i.hg = load i32, ptr %i.b, align 16, !tbaa !3
  %i.hh = lshr i32 %i.hg, %i.es
  store i32 %i.hh, ptr %i.b, align 16, !tbaa !3
  br label %_ZN5arrowL15ShiftArrayRightEPjll.exit.i

bb.ad:                                            ; preds = %.lr.ph.i122.i
  %.0.i123.i.1 = add nsw i64 %.0.i.i, -1          ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0.i123.i.1 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !3
  %i.hk = lshr i32 %i.hj, %i.es
  %i.hl = getelementptr i8, ptr %.0.i.i.sroa.phi47, i64 -8
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !3
  %i.hn = shl i32 %i.hm, %i.gy
  %i.ho = or disjoint i32 %i.hn, %i.hk
  store i32 %i.ho, ptr %i.hi, align 4, !tbaa !3
  br i1 %.not.i.i.not, label %._crit_edge.i121.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.0.i123.i.2 = add nsw i64 %.0.i.i, -2          ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0.i123.i.2 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !3
  %i.hr = lshr i32 %i.hq, %i.es
  %i.hs = getelementptr [4 x i8], ptr %i.b, i64 %.0.i123.i.1
  %i.ht = getelementptr i8, ptr %i.hs, i64 -8
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !3
  %i.hv = shl i32 %i.hu, %i.gy
  %i.hw = or disjoint i32 %i.hv, %i.hr
  store i32 %i.hw, ptr %i.hp, align 4, !tbaa !3
  br i1 %i.ad, label %bb.af, label %._crit_edge.i121.i

bb.af:                                            ; preds = %bb.ae
  %i.hx = getelementptr [4 x i8], ptr %i.b, i64 %.0.i.i
  %i.hy = getelementptr i8, ptr %i.hx, i64 -12    ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !3
  %i.ia = lshr i32 %i.hz, %i.es
  %i.ib = getelementptr [4 x i8], ptr %i.b, i64 %.0.i123.i.2
  %i.ic = getelementptr i8, ptr %i.ib, i64 -8
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !3
  %i.ie = shl i32 %i.id, %i.gy
  %i.if = or disjoint i32 %i.ie, %i.ia
  store i32 %i.if, ptr %i.hy, align 4, !tbaa !3
  br label %._crit_edge.i121.i

_ZN5arrowL15ShiftArrayRightEPjll.exit.i:          ; preds = %._crit_edge.i121.i, %._crit_edge35.i
  %i.ig = icmp sgt i64 %i.er, 4
  br i1 %i.ig, label %.lr.ph.preheader.i.i.i, label %.lr.ph36.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN5arrowL15ShiftArrayRightEPjll.exit.i
  %i.ih = load i32, ptr %i.d, align 16, !tbaa !3
  %.not.i.i128.i = icmp eq i32 %i.ih, 0
  br i1 %.not.i.i128.i, label %.lr.ph36.i.i.thread.i, label %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal128EPKjl.exit.i

.lr.ph36.i.i.thread.i:                            ; preds = %.lr.ph.preheader.i.i.i
  %i.ii = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ij = load i32, ptr %i.ii, align 16, !tbaa !3
  %i.ik = zext i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.im = load i32, ptr %i.il, align 4, !tbaa !3
  %i.in = zext i32 %i.im to i64
  %i.io = shl nuw i64 %i.in, 32
  %i.ip = or disjoint i64 %i.io, %i.ik
  %.phi.trans.insert.i48.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.pre.i12549.i = load i32, ptr %.phi.trans.insert.i48.i, align 8, !tbaa !3
  %i.iq = zext i32 %.pre.i12549.i to i64
  br label %.preheader.i.thread28.i.i

.lr.ph36.preheader.i.i.i:                         ; preds = %_ZN5arrowL15ShiftArrayRightEPjll.exit.i
  %i.ir = add nsw i64 %i.er, -1                   ; 3 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ir ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !3
  %i.iu = zext i32 %i.it to i64                   ; 2 uses
  %i.iv = icmp eq i64 %i.ir, 0
  br i1 %i.iv, label %bb.aq, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph36.preheader.i.i.i
  %i.iw = getelementptr i8, ptr %i.is, i64 -4
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !3
  %i.iy = zext i32 %i.ix to i64
  %i.iz = shl nuw i64 %i.iy, 32
  %i.ja = or disjoint i64 %i.iz, %i.iu            ; 3 uses
  %.not.i124.i = icmp eq i64 %i.ir, 1
  br i1 %.not.i124.i, label %bb.aq, label %.lr.ph36.i.i.i

.preheader.i.thread28.i.i:                        ; preds = %.lr.ph36.i.i.i, %.lr.ph36.i.i.thread.i
  %i.jb = phi i64 [ %i.iq, %.lr.ph36.i.i.thread.i ], [ %i.jj, %.lr.ph36.i.i.i ]
  %.phi.trans.insert.i50.i = phi ptr [ %.phi.trans.insert.i48.i, %.lr.ph36.i.i.thread.i ], [ %.phi.trans.insert.i.i, %.lr.ph36.i.i.i ]
  %i.jc = phi i64 [ %i.ip, %.lr.ph36.i.i.thread.i ], [ %i.ja, %.lr.ph36.i.i.i ]
  %i.jd = getelementptr i8, ptr %.phi.trans.insert.i50.i, i64 -4
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !3
  %i.jf = zext i32 %i.je to i64
  %i.jg = shl nuw i64 %i.jf, 32
  %i.jh = or disjoint i64 %i.jg, %i.jb
  br label %bb.aq

.lr.ph36.i.i.i:                                   ; preds = %bb.ag
  %i.ji = add nsw i64 %i.er, -3                   ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ji ; 2 uses
  %.pre.i125.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !3
  %i.jj = zext i32 %.pre.i125.i to i64            ; 2 uses
  %i.jk = icmp eq i64 %i.ji, 0
  br i1 %i.jk, label %bb.aq, label %.preheader.i.thread28.i.i

bb.ah:                                            ; preds = %._crit_edge.thread.i, %.lr.ph34.i
  %.08433.i = phi i64 [ 0, %.lr.ph34.i ], [ %i.jn, %._crit_edge.thread.i ] ; 3 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.08433.i ; 12 uses
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !3  ; 4 uses
  %i.jn = add nuw nsw i64 %.08433.i, 1            ; 3 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jn
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !3  ; 2 uses
  %.not98.i = icmp eq i32 %i.jm, %5
  br i1 %.not98.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jq = zext i32 %i.jp to i64
  %i.jr = zext i32 %i.jm to i64
  %i.js = shl nuw i64 %i.jr, 32
  %i.jt = or disjoint i64 %i.js, %i.jq
  %i.ju = udiv i64 %i.jt, %6
  %i.jv = trunc i64 %i.ju to i32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.089.i = phi i32 [ %i.jv, %bb.ai ], [ -1, %bb.ah ] ; 2 uses
  %i.jw = mul i32 %.089.i, %5
  %i.jx = sub i32 %i.jp, %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !3
  %i.ka = zext i32 %i.jz to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %bb.aj
  %.190.i = phi i32 [ %.089.i, %bb.aj ], [ %i.kh, %bb.al ] ; 3 uses
  %.088.i = phi i32 [ %i.jx, %bb.aj ], [ %i.ki, %bb.al ] ; 2 uses
  %i.kb = zext i32 %.190.i to i64
  %i.kc = mul nuw i64 %i.kb, %i.gj
  %i.kd = zext i32 %.088.i to i64
  %i.ke = shl nuw i64 %i.kd, 32
  %i.kf = or disjoint i64 %i.ke, %i.ka
  %i.kg = icmp ugt i64 %i.kc, %i.kf
  br i1 %i.kg, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.kh = add i32 %.190.i, -1                     ; 2 uses
  %i.ki = add i32 %.088.i, %5                     ; 2 uses
  %i.kj = icmp ult i32 %i.ki, %5
  br i1 %i.kj, label %bb.am, label %bb.ak, !llvm.loop !22

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.2.i = phi i32 [ %i.kh, %bb.al ], [ %.190.i, %bb.ak ] ; 4 uses
  br i1 %i.bj, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.am
  %i.kk = zext i32 %.2.i to i64                   ; 4 uses
  %i.kl = load i32, ptr %i.gk, align 4, !tbaa !3
  %i.km = zext i32 %i.kl to i64
  %i.kn = mul nuw i64 %i.km, %i.kk                ; 2 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %.pre12
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 4 ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !3  ; 2 uses
  %i.kr = trunc i64 %i.kn to i32                  ; 2 uses
  %i.ks = sub i32 %i.kq, %i.kr
  store i32 %i.ks, ptr %i.kp, align 4, !tbaa !3
  %i.kt = lshr i64 %i.kn, 32
  %i.ku = icmp ult i32 %i.kq, %i.kr
  %i.kv = zext i1 %i.ku to i64
  %spec.select.i = add nuw nsw i64 %i.kt, %i.kv   ; 2 uses
  br i1 %i.bk, label %bb.an, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ap, %bb.ao, %bb.an, %.lr.ph.i
  %spec.select.i.lcssa = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %spec.select.i.1, %bb.an ], [ %spec.select.i.2, %bb.ao ], [ %spec.select.i.3, %bb.ap ]
  %i.kw = trunc i64 %spec.select.i.lcssa to i32   ; 2 uses
  %i.kx = sub i32 %i.jm, %i.kw                    ; 2 uses
  store i32 %i.kx, ptr %i.jl, align 4, !tbaa !3
  %i.ky = icmp ult i32 %i.jm, %i.kw
  br i1 %i.ky, label %.lr.ph30.i, label %._crit_edge.thread.i

bb.an:                                            ; preds = %.lr.ph.i
  %i.kz = load i32, ptr %i.gm, align 4, !tbaa !3
  %i.la = zext i32 %i.kz to i64
  %i.lb = mul nuw i64 %i.la, %i.kk
  %i.lc = add nuw i64 %i.lb, %spec.select.i       ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.gl
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 4 ; 2 uses
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !3  ; 2 uses
  %i.lg = trunc i64 %i.lc to i32                  ; 2 uses
  %i.lh = sub i32 %i.lf, %i.lg
  store i32 %i.lh, ptr %i.le, align 4, !tbaa !3
  %i.li = lshr i64 %i.lc, 32
  %i.lj = icmp ult i32 %i.lf, %i.lg
  %i.lk = zext i1 %i.lj to i64
  %spec.select.i.1 = add nuw nsw i64 %i.li, %i.lk ; 2 uses
  br i1 %.not.i106.i.not.not, label %._crit_edge.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ll = load i32, ptr %i.go, align 4, !tbaa !3
  %i.lm = zext i32 %i.ll to i64
  %i.ln = mul nuw i64 %i.lm, %i.kk
  %i.lo = add nuw i64 %i.ln, %spec.select.i.1     ; 2 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.gn
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 4 ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !3  ; 2 uses
  %i.ls = trunc i64 %i.lo to i32                  ; 2 uses
  %i.lt = sub i32 %i.lr, %i.ls
  store i32 %i.lt, ptr %i.lq, align 4, !tbaa !3
  %i.lu = lshr i64 %i.lo, 32
  %i.lv = icmp ult i32 %i.lr, %i.ls
  %i.lw = zext i1 %i.lv to i64
  %spec.select.i.2 = add nuw nsw i64 %i.lu, %i.lw ; 2 uses
  br i1 %i.bl, label %bb.ap, label %._crit_edge.i

bb.ap:                                            ; preds = %bb.ao
  %i.lx = load i32, ptr %i.gq, align 4, !tbaa !3
  %i.ly = zext i32 %i.lx to i64
  %i.lz = mul nuw i64 %i.ly, %i.kk
  %i.ma = add nuw i64 %i.lz, %spec.select.i.2     ; 2 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.gp
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 4 ; 2 uses
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !3  ; 2 uses
  %i.me = trunc i64 %i.ma to i32                  ; 2 uses
  %i.mf = sub i32 %i.md, %i.me
  store i32 %i.mf, ptr %i.mc, align 4, !tbaa !3
  %i.mg = lshr i64 %i.ma, 32
  %i.mh = icmp ult i32 %i.md, %i.me
  %i.mi = zext i1 %i.mh to i64
  %spec.select.i.3 = add nuw nsw i64 %i.mg, %i.mi
  br label %._crit_edge.i

._crit_edge31.i:                                  ; preds = %.lr.ph30.i.3, %.lr.ph30.i.2, %.lr.ph30.i.1, %.lr.ph30.i
  %.lcssa = phi i64 [ %i.mq, %.lr.ph30.i ], [ %i.na, %.lr.ph30.i.1 ], [ %i.nk, %.lr.ph30.i.2 ], [ %i.nu, %.lr.ph30.i.3 ]
  %i.mj = add i32 %.2.i, -1
  %i.mk = trunc nuw nsw i64 %.lcssa to i32
  %i.ml = add i32 %i.kx, %i.mk
  store i32 %i.ml, ptr %i.jl, align 4, !tbaa !3
  br label %._crit_edge.thread.i

.lr.ph30.i:                                       ; preds = %._crit_edge.i
  %i.mm = load i32, ptr %i.gr, align 4, !tbaa !3  ; 2 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %.pre12
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 4 ; 2 uses
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !3
  %add.narrowed = add i32 %i.mm, %i.mp            ; 2 uses
  %add.narrowed.overflow = icmp ult i32 %add.narrowed, %i.mm
  store i32 %add.narrowed, ptr %i.mo, align 4, !tbaa !3
  %i.mq = zext i1 %add.narrowed.overflow to i64   ; 2 uses
  br i1 %i.bk, label %.lr.ph30.i.1, label %._crit_edge31.i

.lr.ph30.i.1:                                     ; preds = %.lr.ph30.i
  %i.mr = load i32, ptr %i.gt, align 4, !tbaa !3
  %i.ms = zext i32 %i.mr to i64
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.gs
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 4 ; 2 uses
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !3
  %i.mw = zext i32 %i.mv to i64
  %i.mx = add nuw nsw i64 %i.mq, %i.ms
  %i.my = add nuw nsw i64 %i.mx, %i.mw            ; 2 uses
  %i.mz = trunc i64 %i.my to i32
  store i32 %i.mz, ptr %i.mu, align 4, !tbaa !3
  %i.na = lshr i64 %i.my, 32                      ; 2 uses
  br i1 %.not.i106.i.not.not, label %._crit_edge31.i, label %.lr.ph30.i.2

.lr.ph30.i.2:                                     ; preds = %.lr.ph30.i.1
  %i.nb = load i32, ptr %i.gv, align 4, !tbaa !3
  %i.nc = zext i32 %i.nb to i64
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.gu
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 4 ; 2 uses
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !3
  %i.ng = zext i32 %i.nf to i64
  %i.nh = add nuw nsw i64 %i.na, %i.nc
  %i.ni = add nuw nsw i64 %i.nh, %i.ng            ; 2 uses
  %i.nj = trunc i64 %i.ni to i32
  store i32 %i.nj, ptr %i.ne, align 4, !tbaa !3
  %i.nk = lshr i64 %i.ni, 32                      ; 2 uses
  br i1 %i.bl, label %.lr.ph30.i.3, label %._crit_edge31.i

.lr.ph30.i.3:                                     ; preds = %.lr.ph30.i.2
  %i.nl = load i32, ptr %i.gx, align 4, !tbaa !3
  %i.nm = zext i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.gw
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 4 ; 2 uses
  %i.np = load i32, ptr %i.no, align 4, !tbaa !3
  %i.nq = zext i32 %i.np to i64
  %i.nr = add nuw nsw i64 %i.nk, %i.nm
  %i.ns = add nuw nsw i64 %i.nr, %i.nq            ; 2 uses
  %i.nt = trunc i64 %i.ns to i32
  store i32 %i.nt, ptr %i.no, align 4, !tbaa !3
  %i.nu = lshr i64 %i.ns, 32
  br label %._crit_edge31.i

._crit_edge.thread.i:                             ; preds = %._crit_edge31.i, %._crit_edge.i, %bb.am
  %.3.i = phi i32 [ %i.mj, %._crit_edge31.i ], [ %.2.i, %._crit_edge.i ], [ %.2.i, %bb.am ]
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.08433.i
  store i32 %.3.i, ptr %i.nv, align 4, !tbaa !3
  %exitcond.not.i = icmp eq i64 %i.jn, %i.er
  br i1 %exitcond.not.i, label %._crit_edge35.i, label %bb.ah, !llvm.loop !23

bb.aq:                                            ; preds = %.lr.ph36.i.i.i, %.preheader.i.thread28.i.i, %bb.ag, %.lr.ph36.preheader.i.i.i
  %.sroa.0.i.0.i = phi i64 [ %i.iu, %.lr.ph36.preheader.i.i.i ], [ %i.jc, %.preheader.i.thread28.i.i ], [ %i.ja, %bb.ag ], [ %i.ja, %.lr.ph36.i.i.i ]
  %.sink.i.i = phi i64 [ 0, %.lr.ph36.preheader.i.i.i ], [ %i.jh, %.preheader.i.thread28.i.i ], [ 0, %bb.ag ], [ %i.jj, %.lr.ph36.i.i.i ]
  store i64 %.sroa.0.i.0.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i126.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sink.i.i, ptr %.sroa.4.0..sroa_idx.i126.i, align 8
  br i1 %i.ad, label %.lr.ph.preheader.i.i144.i, label %._crit_edge.i.i130.i

.lr.ph.preheader.i.i144.i:                        ; preds = %bb.aq
  %i.nw = getelementptr i8, ptr %.0.i.sroa.phi.i, i64 -16
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !3
  %.not.i.i147.i = icmp eq i32 %i.nx, 0
  br i1 %.not.i.i147.i, label %._crit_edge.i.i130.i, label %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal128EPKjl.exit.i

._crit_edge.i.i130.i:                             ; preds = %.lr.ph.preheader.i.i144.i, %bb.aq
  %i.ny = load i32, ptr %.0.i.sroa.phi.i, align 4, !tbaa !3
  %i.nz = zext i32 %i.ny to i64                   ; 2 uses
  br i1 %i.ae, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge.i.i130.i
  %i.oa = getelementptr i8, ptr %.0.i.sroa.phi.i, i64 -4
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !3
  %i.oc = zext i32 %i.ob to i64
  %i.od = shl nuw i64 %i.oc, 32
  %i.oe = or disjoint i64 %i.od, %i.nz            ; 3 uses
  br i1 %.not.i.i.i, label %bb.as, label %.lr.ph36.i.i133.i

.preheader.i.thread28.i136.i:                     ; preds = %.lr.ph36.i.i133.i
  %i.of = getelementptr i8, ptr %.phi.trans.insert.i134.i, i64 -4
  %i.og = load i32, ptr %i.of, align 4, !tbaa !3
  %i.oh = zext i32 %i.og to i64
  %i.oi = shl nuw i64 %i.oh, 32
  %i.oj = or disjoint i64 %i.oi, %i.ol
  br label %bb.as

.lr.ph36.i.i133.i:                                ; preds = %bb.ar
  %i.ok = add nsw i64 %.0.i.i, -2                 ; 2 uses
  %.phi.trans.insert.i134.i = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ok ; 2 uses
  %.pre.i135.i = load i32, ptr %.phi.trans.insert.i134.i, align 4, !tbaa !3
  %i.ol = zext i32 %.pre.i135.i to i64            ; 2 uses
  %i.om = icmp eq i64 %i.ok, 0
  br i1 %i.om, label %bb.as, label %.preheader.i.thread28.i136.i

bb.as:                                            ; preds = %.lr.ph36.i.i133.i, %.preheader.i.thread28.i136.i, %bb.ar, %._crit_edge.i.i130.i
  %.sroa.0.i129.0.i = phi i64 [ %i.oe, %.preheader.i.thread28.i136.i ], [ %i.oe, %bb.ar ], [ %i.oe, %.lr.ph36.i.i133.i ], [ %i.nz, %._crit_edge.i.i130.i ]
  %.sink.i138.i = phi i64 [ %i.oj, %.preheader.i.thread28.i136.i ], [ 0, %bb.ar ], [ %i.ol, %.lr.ph36.i.i133.i ], [ 0, %._crit_edge.i.i130.i ]
  store i64 %.sroa.0.i129.0.i, ptr %3, align 8
  %.sroa.4.0..sroa_idx.i140.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sink.i138.i, ptr %.sroa.4.0..sroa_idx.i140.i, align 8
  %i.on = xor i64 %.val101.i, %.val4
end_hunk_0
