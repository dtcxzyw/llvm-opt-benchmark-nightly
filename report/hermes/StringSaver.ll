inline.NumInlined: 146
inline.NumDeleted: 71
begin_hunk_0_@_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE8AllocateEmm:bb.a
  store i64 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.f = add i64 %2, -1                           ; 4 uses
  %i.g = add i64 %i.f, %i.e
  %i.h = sub i64 0, %2                            ; 3 uses
  %i.i = and i64 %i.g, %i.h
  %i.j = sub i64 %i.i, %i.e                       ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE8AllocateEmm:bb.a
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.r = add i64 %i.f, %1                         ; 3 uses
  %i.s = icmp ugt i64 %i.r, 4096
  br i1 %i.s, label %bb.d, label %bb.g

end_hunk_1
begin_hunk_2_@_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE8AllocateEmm:bb.a
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.w, align 8, !tbaa !41
  %i.ag = ptrtoint ptr %i.t to i64
  %i.ah = add i64 %i.f, %i.ag
  %i.ai = and i64 %i.ah, %i.h
  %i.aj = inttoptr i64 %i.ai to ptr
  br label %bb.j
end_hunk_2
begin_hunk_3_@_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE8AllocateEmm:bb.a
  store i32 %i.bc, ptr %i.al, align 8, !tbaa !41
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  store ptr %i.bd, ptr %i.l, align 8, !tbaa !40
  %i.be = add i64 %i.f, %i.ba
  %i.bf = and i64 %i.be, %i.h
  %i.bg = inttoptr i64 %i.bf to ptr               ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %1
end_hunk_3
