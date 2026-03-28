begin_hunk_0
  %2 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  %.14 = select i1 %i.c, i32 143, i32 150         ; 5 uses
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1864
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
end_hunk_0
begin_hunk_1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.ba = call i64 @_ZN2v84base9TimeTicks3NowEv() #23
  %i.bb = sub nsw i64 %i.ba, %i.g                 ; 2 uses
  %3 = add nsw i32 %.14, -147
  %or.cond3.i = icmp ult i32 %3, 16
  br i1 %or.cond3.i, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.i

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 5128 ; 2 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bc) #23
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 5136
  %4 = zext nneg i32 %.14 to i64
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %4 ; 2 uses
  %i.be = load i64, ptr %5, align 8
  %i.bf = add nsw i64 %i.be, %i.bb
  store i64 %i.bf, ptr %5, align 8
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bc) #23
  br label %_ZN2v88internal8GCTracer14AddScopeSampleENS1_5Scope7ScopeIdENS_4base9TimeDeltaE.exit

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %6 = zext nneg i32 %.14 to i64
  %7 = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %6 ; 2 uses
  %i.bh = load i64, ptr %7, align 8
  %i.bi = add nsw i64 %i.bh, %i.bb
  store i64 %i.bi, ptr %7, align 8
  br label %_ZN2v88internal8GCTracer14AddScopeSampleENS1_5Scope7ScopeIdENS_4base9TimeDeltaE.exit

_ZN2v88internal8GCTracer14AddScopeSampleENS1_5Scope7ScopeIdENS_4base9TimeDeltaE.exit: ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, %bb.i
end_hunk_1
begin_hunk_2
  %5 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  %.14 = select i1 %i.c, i32 121, i32 151         ; 5 uses
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1864
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
end_hunk_2
begin_hunk_3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bd = call i64 @_ZN2v84base9TimeTicks3NowEv() #23
  %i.be = sub nsw i64 %i.bd, %i.g                 ; 2 uses
  %6 = add nsw i32 %.14, -147
  %or.cond3.i = icmp ult i32 %6, 16
  br i1 %or.cond3.i, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.k

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 5128 ; 2 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf) #23
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 5136
  %7 = zext nneg i32 %.14 to i64
  %8 = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %7 ; 2 uses
  %i.bh = load i64, ptr %8, align 8
  %i.bi = add nsw i64 %i.bh, %i.be
  store i64 %i.bi, ptr %8, align 8
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf) #23
  br label %_ZN2v88internal8GCTracer14AddScopeSampleENS1_5Scope7ScopeIdENS_4base9TimeDeltaE.exit

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %9 = zext nneg i32 %.14 to i64
  %10 = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %9 ; 2 uses
  %i.bk = load i64, ptr %10, align 8
  %i.bl = add nsw i64 %i.bk, %i.be
  store i64 %i.bl, ptr %10, align 8
  br label %_ZN2v88internal8GCTracer14AddScopeSampleENS1_5Scope7ScopeIdENS_4base9TimeDeltaE.exit

_ZN2v88internal8GCTracer14AddScopeSampleENS1_5Scope7ScopeIdENS_4base9TimeDeltaE.exit: ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, %bb.k
end_hunk_3
