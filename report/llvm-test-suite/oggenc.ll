inline.NumInlined: 676
inline.NumDeleted: 90
begin_hunk_0_@res2_forward:bb.a
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i32, ptr %i.b, align 8              ; 3 uses
  %i.d = sdiv i32 %i.c, 2                         ; 5 uses
  %i.e = sext i32 %i.d to i64                     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #66
  %i.f = sext i32 %5 to i64                       ; 14 uses
end_hunk_0
begin_hunk_1_@res2_forward:bb.a

.lr.ph.us.preheader:                              ; preds = %.lr.ph61
  %i.ar = add i64 %i.aa, %i.ac
  %min.iters.check86 = icmp ult i32 %i.d, 8
  %ident.check.not = icmp ne i32 %5, 1
  %or.cond.not128 = or i1 %min.iters.check86, %ident.check.not
  %n.vec89 = and i64 %i.e, 1073741816             ; 4 uses
end_hunk_1
begin_hunk_2_@res2_forward:bb.a
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.g
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.cq
  %scevgep103 = getelementptr i8, ptr %i.ct, i64 -4
  %min.iters.check108 = icmp ugt i32 %i.d, 7
  %ident.check100.not = icmp eq i32 %5, 1
  %or.cond127 = and i1 %min.iters.check108, %ident.check100.not
  %n.vec111 = and i64 %i.e, 1073741816            ; 4 uses
end_hunk_2
