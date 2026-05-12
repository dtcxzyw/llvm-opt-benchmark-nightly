inline.NumInlined: 172
inline.NumDeleted: 107
begin_hunk_0_@_ZN6Assimp4STEP12StringToUTF8ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.b:                                             ; preds = %.lr.ph416, %bb.ci
  %i.i = phi i64 [ %i.d, %.lr.ph416 ], [ %i.nw, %bb.ci ] ; 4 uses
  %i.j = load ptr, ptr %0, align 8                ; 6 uses
  %i.k = getelementptr i8, ptr %i.j, i64 %.0146.ph637 ; 8 uses
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp eq i8 %i.l, 92
end_hunk_0
begin_hunk_1_@_ZN6Assimp4STEP12StringToUTF8ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ct = lshr exact i64 %i.cr, 2                 ; 5 uses
  %i.cu = lshr exact i64 %i.cr, 1
  %i.cv = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cu) #13 ; 9 uses
  %1 = load ptr, ptr %0, align 8                  ; 2 uses
  %i.cw = getelementptr i8, ptr %1, i64 %i.h      ; 12 uses
  %min.iters.check = icmp ult i64 %i.cr, 32
  br i1 %min.iters.check, label %.lr.ph412.preheader657, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph412.preheader
  %i.cx = lshr exact i64 %i.cr, 1
  %scevgep = getelementptr i8, ptr %i.cv, i64 %i.cx
  %scevgep639 = getelementptr i8, ptr %1, i64 4
  %scevgep640 = getelementptr i8, ptr %scevgep639, i64 %.0146.ph637
  %scevgep641 = getelementptr i8, ptr %scevgep640, i64 %i.cr
  %bound0 = icmp ult ptr %i.cv, %scevgep641
end_hunk_1
begin_hunk_2_@_ZN6Assimp4STEP12StringToUTF8ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.kj = lshr exact i64 %i.kh, 3                 ; 2 uses
  %i.kk = lshr exact i64 %i.kh, 1                 ; 2 uses
  %i.kl = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.kk) #13 ; 6 uses
  %2 = load ptr, ptr %0, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  br label %.lr.ph407

._crit_edge408:                                   ; preds = %bb.cc
end_hunk_2
