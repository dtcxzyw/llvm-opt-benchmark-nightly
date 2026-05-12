inline.NumInlined: 309
inline.NumDeleted: 149
begin_hunk_0_@_ZN6hermes3hbc21SimpleBytecodeBuilder22generateBytecodeBufferEv:bb.a
  %i.cp = ptrtoint ptr %i.cn to i64               ; 2 uses
  %i.cq = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.cr = sub i64 %i.cp, %i.cq                    ; 10 uses
  %i.cs = add i64 %i.cr, 3
  %i.ct = and i64 %i.cs, -4                       ; 5 uses
  %i.cu = icmp ugt i64 %i.ct, %i.cr
  br i1 %i.cu, label %bb.k, label %bb.s

bb.k:                                             ; preds = %._crit_edge52
  %i.cv = sub nuw i64 %i.ct, %i.cr                ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !36
  %i.cy = ptrtoint ptr %i.cx to i64               ; 2 uses
  %i.cz = sub i64 %i.cy, %i.cp                    ; 2 uses
  %i.da = icmp sgt i64 %i.cr, -1
  call void @llvm.assume(i1 %i.da)
  %8 = xor i64 %i.cr, 9223372036854775807         ; 2 uses
  %i.db = icmp ule i64 %i.cz, %8
  call void @llvm.assume(i1 %i.db)
  %.not23.i.i = icmp ult i64 %i.cz, %i.cv
end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc21SimpleBytecodeBuilder22generateBytecodeBufferEv:bb.a
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.n:                                             ; preds = %bb.k
  %9 = icmp ult i64 %8, %i.cv
  br i1 %9, label %bb.o, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.o:                                             ; preds = %bb.n
end_hunk_1
