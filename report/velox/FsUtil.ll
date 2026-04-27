inline.NumInlined: 293
inline.NumDeleted: 129
begin_hunk_0_@_ZNK5boost6system14error_category10equivalentERKNS0_10error_codeEi:bb.a
_ZNK5boost6system10error_code5valueEv.exit.i:     ; preds = %bb.c
  %i.k = load i32, ptr %1, align 8, !tbaa !1360
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1361, !nonnull !408, !noundef !408
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = urem i64 %i.n, 2097143
  %i.p = trunc nuw nsw i64 %i.o to i32
end_hunk_0
begin_hunk_1_@_ZNK5folly2fs14unique_path_fnclERKNSt10filesystem7__cxx114pathE:bb.a
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr @.str.9, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !1360
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.0.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !1360
  %i.bl = add nuw i64 %.0.i, 1                    ; 2 uses
  %i.bm = load i64, ptr %i.x, align 8, !tbaa !1373 ; 3 uses
end_hunk_1
