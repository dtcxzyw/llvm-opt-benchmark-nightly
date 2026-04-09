inline.NumInlined: 28
inline.NumDeleted: 12
begin_hunk_0_@_ZN4llvh3sys6Memory20allocateMappedMemoryEmPKNS0_11MemoryBlockEjRSt10error_code:bb.a

switch.lookup:                                    ; preds = %bb.d, %bb.c, %bb.b
  %i.i = load i64, ptr @_ZZN4llvh3sys6Memory20allocateMappedMemoryEmPKNS0_11MemoryBlockEjRSt10error_codeE8PageSize, align 8, !tbaa !11 ; 6 uses
  %i.j = add i64 %0, -1
  %i.k = add i64 %i.j, %i.i
  %i.l = udiv i64 %i.k, %i.i                      ; 3 uses
  %i.m = add i32 %2, -16777216                    ; 2 uses
  %i.n = tail call i32 @llvm.fshl.i32(i32 %i.m, i32 %i.m, i32 8)
end_hunk_0
begin_hunk_1_@_ZN4llvh3sys6Memory19protectMappedMemoryERKNS0_11MemoryBlockEj:bb.a
  %i.p = zext nneg i32 %i.o to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN4llvh3sys6Memory19protectMappedMemoryERKNS0_11MemoryBlockEj, i64 %i.p
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.q = load i64, ptr @_ZZN4llvh3sys6Memory19protectMappedMemoryERKNS0_11MemoryBlockEjE8PageSize, align 8, !tbaa !11 ; 2 uses
  %i.r = sub i64 0, %i.q                          ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %i.g, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = add i64 %i.q, -1                         ; 2 uses
  %i.w = add i64 %i.v, %i.u
  %i.x = and i64 %i.w, %i.r                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = add i64 %i.v, %i.z
  %i.ab = and i64 %i.aa, %i.r
  %i.ac = inttoptr i64 %i.x to ptr
  %i.ad = sub i64 %i.ab, %i.x
end_hunk_1
