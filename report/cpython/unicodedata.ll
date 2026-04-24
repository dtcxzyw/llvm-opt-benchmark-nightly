inline.NumInlined: 234
inline.NumDeleted: 59
begin_hunk_0_@unicodedata_UCD_is_normalized:bb.a

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.023.i = phi i1 [ true, %bb.i ], [ true, %bb.h ], [ false, %bb.j ], [ false, %bb.k ] ; 2 uses
  %.022.i = phi i1 [ true, %bb.i ], [ false, %bb.h ], [ false, %bb.j ], [ true, %bb.k ] ; 2 uses
  %.not.i26.i = icmp eq ptr %0, null
  br i1 %.not.i26.i, label %PyObject_TypeCheck.exit.thread.i.i, label %bb.n

end_hunk_0
begin_hunk_1_@unicodedata_UCD_is_normalized:bb.a

bb.o:                                             ; preds = %PyObject_TypeCheck.exit.thread.i.i
  %i.z = select i1 %.023.i, i32 4, i32 0
  %3 = select i1 %.022.i, i32 2, i32 0
  %i.aa = or disjoint i32 %3, %i.z                ; 3 uses
  %i.ab = lshr i32 %.val43.i.i, 2
  %i.ac = and i32 %i.ab, 7
end_hunk_1
begin_hunk_2_@unicodedata_UCD_is_normalized:bb.a

is_normalized_quickcheck.exit.thread29.i:         ; preds = %is_normalized_quickcheck.exit.i, %PyObject_TypeCheck.exit.i.i
  %i.dd = select i1 %.023.i, ptr @nfc_nfkc, ptr @nfd_nfkd
  %4 = zext i1 %.022.i to i32
  %i.de = tail call ptr %i.dd(ptr noundef %0, ptr noundef %i.g, i32 noundef %4) #11, !callees !81, !inline_history !82 ; 5 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %unicodedata_UCD_is_normalized_impl.exit, label %bb.z

end_hunk_2
begin_hunk_3_@_getcode:bb.a

bb.u:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.037115.lcssa.wide.ph = phi i32 [ 6, %bb.g ], [ 5, %bb.f ], [ 4, %bb.e ], [ 3, %bb.d ], [ 2, %bb.c ], [ 1, %bb.b ]
  %.lcssa131.ph = phi i64 [ 16, %bb.g ], [ 30, %bb.f ], [ 20, %bb.e ], [ 28, %bb.d ], [ 17, %bb.c ], [ 22, %bb.b ] ; 2 uses
  %3 = trunc nuw nsw i64 %.lcssa131.ph to i32
  %4 = sub i32 %1, %3                             ; 2 uses
  %i.bf = add i32 %4, -7
  %or.cond.i = icmp ult i32 %i.bf, -3
  br i1 %or.cond.i, label %parse_hex_code.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bg = getelementptr i8, ptr %0, i64 %.lcssa131.ph ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !22
  %i.bi = icmp eq i8 %i.bh, 48
  br i1 %i.bi, label %parse_hex_code.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %bb.z
  %.in.i = phi i32 [ %i.bj, %bb.z ], [ %4, %bb.v ]
  %.02641.i = phi i32 [ %.127.i, %bb.z ], [ 0, %bb.v ]
  %.03040.i = phi ptr [ %i.bw, %bb.z ], [ %i.bg, %bb.v ] ; 2 uses
  %i.bj = add i32 %.in.i, -1                      ; 2 uses
end_hunk_3
