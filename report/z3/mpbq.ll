Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/mpbq?download=true
inline.NumInlined: 609
inline.NumDeleted: 169
begin_hunk_0_@_ZN12mpbq_manager3subERK4mpbqRK3mpzRS0_:bb.a
bb.b:                                             ; preds = %bb.a
  tail call void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, 1
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %2, align 8, !tbaa !11
  store i32 %i.j, ptr %i.e, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, -2
  store i8 %i.m, ptr %i.k, align 4
  br label %_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit

_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit:    ; preds = %bb.d, %bb.e
  tail call void @_ZN11mpz_managerILb0EE5mul2kER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef %i.b)
  %i.n = load ptr, ptr %0, align 8, !tbaa !22, !nonnull !23, !align !24
  tail call void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.f

bb.f:                                             ; preds = %_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit, %bb.b
  %i.o = load i32, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.o, ptr %i.p, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.r = icmp eq i32 %i.o, 0
  br i1 %i.r, label %_ZN12mpbq_manager9normalizeER4mpbq.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %3, align 8, !tbaa !11
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.sink.split.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %0, align 8, !tbaa !22, !nonnull !23, !align !24
  %i.v = tail call noundef i32 @_ZN11mpz_managerILb0EE21power_of_two_multipleERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.u, ptr noundef nonnull align 8 dereferenceable(20) %3)
  %i.w = load i32, ptr %i.q, align 8, !tbaa !16
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.w) ; 2 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !22, !nonnull !23, !align !24
  tail call void @_ZN11mpz_managerILb0EE13machine_div2kER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %i.x, ptr noundef nonnull align 8 dereferenceable(20) %3, i32 noundef %spec.select.i)
  %i.y = load i32, ptr %i.q, align 8, !tbaa !16
  %i.z = sub i32 %i.y, %spec.select.i
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %bb.g
  %.sink.i = phi i32 [ %i.z, %bb.h ], [ 0, %bb.g ]
  store i32 %.sink.i, ptr %i.q, align 8, !tbaa !16
  br label %_ZN12mpbq_manager9normalizeER4mpbq.exit

_ZN12mpbq_manager9normalizeER4mpbq.exit:          ; preds = %bb.f, %.sink.split.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12mpbq_manager3mulERK4mpbqS2_RS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 8 dereferenceable(20) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22, !nonnull !23, !align !24
  tail call void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !16
  %i.f = add i32 %i.e, %i.c                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store i32 %i.f, ptr %i.g, align 8, !tbaa !16
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %i.d, align 8, !tbaa !16
  %i.k = icmp ne i32 %i.j, 0
  %i.l = icmp eq i32 %i.f, 0
  %or.cond = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond, label %_ZN12mpbq_manager9normalizeER4mpbq.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %.old = icmp eq i32 %i.f, 0
  br i1 %.old, label %_ZN12mpbq_manager9normalizeER4mpbq.exit, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.m = load i32, ptr %3, align 8, !tbaa !11
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %0, align 8, !tbaa !22, !nonnull !23, !align !24
  %i.p = tail call noundef i32 @_ZN11mpz_managerILb0EE21power_of_two_multipleERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.o, ptr noundef nonnull align 8 dereferenceable(20) %3)
  %i.q = load i32, ptr %i.g, align 8, !tbaa !16
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.p, i32 %i.q) ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !22, !nonnull !23, !align !24
  tail call void @_ZN11mpz_managerILb0EE13machine_div2kER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %i.r, ptr noundef nonnull align 8 dereferenceable(20) %3, i32 noundef %spec.select.i)
  %i.s = load i32, ptr %i.g, align 8, !tbaa !16
  %i.t = sub i32 %i.s, %spec.select.i
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  %.sink.i = phi i32 [ %i.t, %bb.e ], [ 0, %bb.d ]
  store i32 %.sink.i, ptr %i.g, align 8, !tbaa !16
  br label %_ZN12mpbq_manager9normalizeER4mpbq.exit

_ZN12mpbq_manager9normalizeER4mpbq.exit:          ; preds = %.sink.split.i, %bb.c, %bb.b
  ret void
}

declare void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12mpbq_manager3mulERK4mpbqRK3mpzRS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(20) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22, !nonnull !23, !align !24
  tail call void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store i32 %i.c, ptr %i.d, align 8, !tbaa !16
  %i.e = icmp eq i32 %i.c, 0
  br i1 %i.e, label %_ZN12mpbq_manager9normalizeER4mpbq.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %3, align 8, !tbaa !11
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !22, !nonnull !23, !align !24
  %i.i = tail call noundef i32 @_ZN11mpz_managerILb0EE21power_of_two_multipleERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.h, ptr noundef nonnull align 8 dereferenceable(20) %3)
  %i.j = load i32, ptr %i.d, align 8, !tbaa !16
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.i, i32 %i.j) ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !22, !nonnull !23, !align !24
  tail call void @_ZN11mpz_managerILb0EE13machine_div2kER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %i.k, ptr noundef nonnull align 8 dereferenceable(20) %3, i32 noundef %spec.select.i)
  %i.l = load i32, ptr %i.d, align 8, !tbaa !16
  %i.m = sub i32 %i.l, %spec.select.i
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink.i = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ]
  store i32 %.sink.i, ptr %i.d, align 8, !tbaa !16
  br label %_ZN12mpbq_manager9normalizeER4mpbq.exit

_ZN12mpbq_manager9normalizeER4mpbq.exit:          ; preds = %bb.a, %.sink.split.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12mpbq_manager5powerER4mpbqj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16
  %i.c = mul i32 %i.b, %2
  store i32 %i.c, ptr %i.a, align 8, !tbaa !16
  %i.d = load ptr, ptr %0, align 8, !tbaa !22, !nonnull !23, !align !24
  tail call void @_ZN11mpz_managerILb0EE5powerERK3mpzjRS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

declare void @_ZN11mpz_managerILb0EE5powerERK3mpzjRS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN12mpbq_manager10root_lowerER4mpbqj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %class.mpz, align 8                 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !22, !nonnull !23, !align !24
  %i.b = tail call noundef zeroext i1 @_ZN11mpz_managerILb0EE4rootER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) ; 4 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !22, !nonnull !23, !align !24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store i32 -1, ptr %3, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4
  %i.f = and i8 %i.e, -4
  store i8 %i.f, ptr %i.d, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !12
  call void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !16   ; 5 uses
  %i.j = urem i32 %i.i, %2
  %i.k = udiv i32 %i.i, %2                        ; 2 uses
  %i.l = icmp eq i32 %i.j, 0
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = udiv i32 %i.i, %2
  store i32 %i.m, ptr %i.h, align 8, !tbaa !16
  %4 = icmp ugt i32 %2, %i.i
  br i1 %4, label %_ZN12mpbq_manager9normalizeER4mpbq.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %1, align 8, !tbaa !11
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN12mpbq_manager9normalizeER4mpbq.exit.sink.split, label %_ZN12mpbq_manager9normalizeER4mpbq.exit.sink.split.sink.split

bb.f:                                             ; preds = %bb.c
  %i.p = load i32, ptr %1, align 8, !tbaa !11     ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.k, ptr %i.h, align 8, !tbaa !16
  %i.r = icmp ugt i32 %2, %i.i
  br i1 %i.r, label %_ZN12mpbq_manager9normalizeER4mpbq.exit, label %_ZN12mpbq_manager9normalizeER4mpbq.exit.sink.split.sink.split

bb.h:                                             ; preds = %bb.f
  %i.s = add i32 %i.k, 1                          ; 2 uses
  store i32 %i.s, ptr %i.h, align 8, !tbaa !16
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZN12mpbq_manager9normalizeER4mpbq.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = icmp eq i32 %i.p, 0
  br i1 %i.u, label %_ZN12mpbq_manager9normalizeER4mpbq.exit.sink.split, label %_ZN12mpbq_manager9normalizeER4mpbq.exit.sink.split.sink.split

_ZN12mpbq_manager9normalizeER4mpbq.exit.sink.split.sink.split: ; preds = %bb.i, %bb.g, %bb.e
  %.0.ph.ph = phi i1 [ false, %bb.g ], [ %i.b, %bb.e ], [ false, %bb.i ]
  %i.v = load ptr, ptr %0, align 8, !tbaa !22, !nonnull !23, !align !24
  %i.w = call noundef i32 @_ZN11mpz_managerILb0EE21power_of_two_multipleERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.v, ptr noundef nonnull align 8 dereferenceable(20) %1)
  %i.x = load i32, ptr %i.h, align 8, !tbaa !16
  %spec.select.i23 = call i32 @llvm.umin.i32(i32 %i.w, i32 %i.x) ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !22, !nonnull !23, !align !24
  call void @_ZN11mpz_managerILb0EE13machine_div2kER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %i.y, ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef %spec.select.i23)
  %i.z = load i32, ptr %i.h, align 8, !tbaa !16
  %i.aa = sub i32 %i.z, %spec.select.i23
  br label %_ZN12mpbq_manager9normalizeER4mpbq.exit.sink.split

_ZN12mpbq_manager9normalizeER4mpbq.exit.sink.split: ; preds = %_ZN12mpbq_manager9normalizeER4mpbq.exit.sink.split.sink.split, %bb.i, %bb.e
  %.sink.i25.sink = phi i32 [ 0, %bb.e ], [ 0, %bb.i ], [ %i.aa, %_ZN12mpbq_manager9normalizeER4mpbq.exit.sink.split.sink.split ]
  %.0.ph = phi i1 [ %i.b, %bb.e ], [ false, %bb.i ], [ %.0.ph.ph, %_ZN12mpbq_manager9normalizeER4mpbq.exit.sink.split.sink.split ]
  store i32 %.sink.i25.sink, ptr %i.h, align 8, !tbaa !16
  br label %_ZN12mpbq_manager9normalizeER4mpbq.exit

_ZN12mpbq_manager9normalizeER4mpbq.exit:          ; preds = %_ZN12mpbq_manager9normalizeER4mpbq.exit.sink.split, %bb.h, %bb.g, %bb.d
  %.0 = phi i1 [ false, %bb.g ], [ false, %bb.h ], [ %i.b, %bb.d ], [ %.0.ph, %_ZN12mpbq_manager9normalizeER4mpbq.exit.sink.split ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN11mpz_managerILb0EE4rootER3mpzj(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN12mpbq_manager10root_upperER4mpbqj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22, !nonnull !23, !align !24
  %i.b = tail call noundef zeroext i1 @_ZN11mpz_managerILb0EE4rootER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16   ; 5 uses
  %i.e = urem i32 %i.d, %2
  %i.f = udiv i32 %i.d, %2                        ; 2 uses
  %i.g = icmp eq i32 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = udiv i32 %i.d, %2
  store i32 %i.h, ptr %i.c, align 8, !tbaa !16
  %3 = icmp ugt i32 %2, %i.d
  br i1 %3, label %_ZN12mpbq_manager9normalizeER4mpbq.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %1, align 8, !tbaa !11
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN12mpbq_manager9normalizeER4mpbq.exit.sink.split, label %_ZN12mpbq_manager9normalizeER4mpbq.exit.sink.split.sink.split

bb.d:                                             ; preds = %bb.a
  %i.k = load i32, ptr %1, align 8, !tbaa !11     ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = add i32 %i.f, 1                          ; 2 uses
  store i32 %i.m, ptr %i.c, align 8, !tbaa !16
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZN12mpbq_manager9normalizeER4mpbq.exit, label %_ZN12mpbq_manager9normalizeER4mpbq.exit.sink.split.sink.split

bb.f:                                             ; preds = %bb.d
  store i32 %i.f, ptr %i.c, align 8, !tbaa !16
  %i.o = icmp ugt i32 %2, %i.d
  br i1 %i.o, label %_ZN12mpbq_manager9normalizeER4mpbq.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = icmp eq i32 %i.k, 0
  br i1 %i.p, label %_ZN12mpbq_manager9normalizeER4mpbq.exit.sink.split, label %_ZN12mpbq_manager9normalizeER4mpbq.exit.sink.split.sink.split

_ZN12mpbq_manager9normalizeER4mpbq.exit.sink.split.sink.split: ; preds = %bb.g, %bb.e, %bb.c
  %.0.ph.ph = phi i1 [ false, %bb.e ], [ %i.b, %bb.c ], [ false, %bb.g ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !22, !nonnull !23, !align !24
  %i.r = tail call noundef i32 @_ZN11mpz_managerILb0EE21power_of_two_multipleERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.q, ptr noundef nonnull align 8 dereferenceable(20) %1)
  %i.s = load i32, ptr %i.c, align 8, !tbaa !16
  %spec.select.i21 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.s) ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !22, !nonnull !23, !align !24
  tail call void @_ZN11mpz_managerILb0EE13machine_div2kER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %i.t, ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef %spec.select.i21)
  %i.u = load i32, ptr %i.c, align 8, !tbaa !16
  %i.v = sub i32 %i.u, %spec.select.i21
  br label %_ZN12mpbq_manager9normalizeER4mpbq.exit.sink.split

_ZN12mpbq_manager9normalizeER4mpbq.exit.sink.split: ; preds = %_ZN12mpbq_manager9normalizeER4mpbq.exit.sink.split.sink.split, %bb.g, %bb.c
  %.sink.i23.sink = phi i32 [ 0, %bb.c ], [ 0, %bb.g ], [ %i.v, %_ZN12mpbq_manager9normalizeER4mpbq.exit.sink.split.sink.split ]
  %.0.ph = phi i1 [ %i.b, %bb.c ], [ false, %bb.g ], [ %.0.ph.ph, %_ZN12mpbq_manager9normalizeER4mpbq.exit.sink.split.sink.split ]
  store i32 %.sink.i23.sink, ptr %i.c, align 8, !tbaa !16
  br label %_ZN12mpbq_manager9normalizeER4mpbq.exit

_ZN12mpbq_manager9normalizeER4mpbq.exit:          ; preds = %_ZN12mpbq_manager9normalizeER4mpbq.exit.sink.split, %bb.f, %bb.e, %bb.b
  %.0 = phi i1 [ false, %bb.e ], [ false, %bb.f ], [ %i.b, %bb.b ], [ %.0.ph, %_ZN12mpbq_manager9normalizeER4mpbq.exit.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN12mpbq_manager2ltERK4mpbqS2_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(20) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16   ; 4 uses
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !22, !nonnull !23, !align !24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i8, ptr %i.g, align 4
  %i.i = and i8 %i.h, 1
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, 1
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %1, align 8, !tbaa !11
  %i.p = load i32, ptr %2, align 8, !tbaa !11
  %i.q = icmp slt i32 %i.o, %i.p
  br label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.r = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.s = icmp slt i32 %i.r, 0
  br label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit

bb.f:                                             ; preds = %bb.a
  %i.t = icmp ult i32 %i.b, %i.d
  %i.u = load ptr, ptr %0, align 8, !tbaa !22, !nonnull !23, !align !24 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  br i1 %i.t, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.w = sub nuw i32 %i.d, %i.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load i8, ptr %i.x, align 4
  %i.z = and i8 %i.y, 1
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = load i32, ptr %1, align 8, !tbaa !11
  store i32 %i.ab, ptr %i.v, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 4
  %i.ae = and i8 %i.ad, -2
  store i8 %i.ae, ptr %i.ac, align 4
  br label %_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit

_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit:    ; preds = %bb.h, %bb.i
  tail call void @_ZN11mpz_managerILb0EE5mul2kER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i32 noundef %i.w)
  %i.af = load ptr, ptr %0, align 8, !tbaa !22, !nonnull !23, !align !24
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load i8, ptr %i.ag, align 4
  %i.ai = and i8 %i.ah, 1
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.al = load i8, ptr %i.ak, align 4
  %i.am = and i8 %i.al, 1
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = load i32, ptr %i.v, align 8, !tbaa !11
  %i.ap = load i32, ptr %2, align 8, !tbaa !11
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit

bb.l:                                             ; preds = %bb.j, %_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit
  %i.ar = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.as = icmp slt i32 %i.ar, 0
  br label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit

bb.m:                                             ; preds = %bb.f
  %i.at = sub nuw i32 %i.b, %i.d
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.av = load i8, ptr %i.au, align 4
  %i.aw = and i8 %i.av, 1
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = load i32, ptr %2, align 8, !tbaa !11
  store i32 %i.ay, ptr %i.v, align 8, !tbaa !11
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 4
  %i.bb = and i8 %i.ba, -2
  store i8 %i.bb, ptr %i.az, align 4
  br label %_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit20

bb.o:                                             ; preds = %bb.m
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit20

_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit20:  ; preds = %bb.n, %bb.o
  tail call void @_ZN11mpz_managerILb0EE5mul2kER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i32 noundef %i.at)
  %i.bc = load ptr, ptr %0, align 8, !tbaa !22, !nonnull !23, !align !24
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.be = load i8, ptr %i.bd, align 4
  %i.bf = and i8 %i.be, 1
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit20
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bi = load i8, ptr %i.bh, align 4
  %i.bj = and i8 %i.bi, 1
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bl = load i32, ptr %1, align 8, !tbaa !11
  %i.bm = load i32, ptr %i.v, align 8, !tbaa !11
  %i.bn = icmp slt i32 %i.bl, %i.bm
  br label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit

bb.r:                                             ; preds = %bb.p, %_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit20
  %i.bo = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.v)
  %i.bp = icmp slt i32 %i.bo, 0
  br label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit:         ; preds = %bb.r, %bb.q, %bb.l, %bb.k, %bb.e, %bb.d
  %.0 = phi i1 [ %i.as, %bb.l ], [ %i.s, %bb.e ], [ %i.q, %bb.d ], [ %i.aq, %bb.k ], [ %i.bn, %bb.q ], [ %i.bp, %bb.r ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN12mpbq_manager9lt_1div2kERK4mpbqj(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !11
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit, label %bb.b

end_hunk_0
