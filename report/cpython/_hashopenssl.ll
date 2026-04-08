inline.NumInlined: 180
inline.NumDeleted: 73
begin_hunk_0_@_hashlib_HASH_new_impl:bb.a
  br i1 %.not.i53.i, label %_hashlib_HASH_hash.exit59.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i
  %i.be = sub nsw i64 %.01214.i.i, %i.bb          ; 2 uses
  %i.bf = getelementptr i8, ptr %.015.i.i, i64 %i.bb
  %6 = icmp sgt i64 %i.be, 0
  br i1 %6, label %.lr.ph.i.i, label %_hashlib_HASH_hash.exit59.thread66.i, !llvm.loop !67

bb.z:                                             ; preds = %bb.w
  %i.bg = icmp sgt i64 %i.au, 0
end_hunk_0
begin_hunk_1_@_hashlib_HASH_new_impl:bb.a
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i55.i
  %i.bl = sub nsw i64 %.01214.i57.i, %i.bh        ; 2 uses
  %i.bm = getelementptr i8, ptr %.015.i56.i, i64 %i.bh
  %7 = icmp sgt i64 %i.bl, 0
  br i1 %7, label %.lr.ph.i55.i, label %Py_DECREF.exit48.i, !llvm.loop !67

_hashlib_HASH_hash.exit59.thread66.i:             ; preds = %bb.y, %bb.x
  call void @PyEval_RestoreThread(ptr noundef %i.ax) #9
end_hunk_1
begin_hunk_2_@_hashlib_HASH_update:bb.a
  br label %_hashlib_HASH_hash.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ab = sub nsw i64 %.01214.i.i, %i.x           ; 2 uses
  %i.ac = getelementptr i8, ptr %.015.i.i, i64 %i.x
  %3 = icmp sgt i64 %i.ab, 0
  br i1 %3, label %bb.j, label %_hashlib_HASH_hash.exit.i, !llvm.loop !67

_hashlib_HASH_hash.exit.i:                        ; preds = %bb.l, %bb.k, %_PyMutex_Lock.exit.i
  %.013.i.i = phi i32 [ -1, %bb.k ], [ 0, %_PyMutex_Lock.exit.i ], [ 0, %bb.l ]
end_hunk_2
begin_hunk_3_@_hashlib_HASH_update:bb.a
  br label %_hashlib_HASH_hash.exit17.i

bb.r:                                             ; preds = %bb.p
  %i.aq = sub nsw i64 %.01214.i15.i, %i.am        ; 2 uses
  %i.ar = getelementptr i8, ptr %.015.i14.i, i64 %i.am
  %4 = icmp sgt i64 %i.aq, 0
  br i1 %4, label %bb.p, label %_hashlib_HASH_hash.exit17.i, !llvm.loop !67

_hashlib_HASH_hash.exit17.i:                      ; preds = %bb.r, %bb.q, %_PyMutex_Lock.exit11.i
  %.013.i12.i = phi i32 [ -1, %bb.q ], [ 0, %_PyMutex_Lock.exit11.i ], [ 0, %bb.r ] ; 2 uses
end_hunk_3
