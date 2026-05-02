begin_hunk_0_@ares_parse_into_addrinfo:bb.a
  %.267106 = phi i32 [ %.065116, %bb.h ], [ %.065116, %.preheader ], [ %.065116, %bb.c ], [ %.065116, %bb.f ], [ 1, %bb.g ] ; 2 uses
  %i.aa = add nuw i64 %.058119, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %i.e
  br i1 %exitcond.not, label %4, label %.preheader, !llvm.loop !23

4:                                                ; preds = %.thread100
  %5 = icmp ne i32 %.267106, 0
  %6 = icmp ne i32 %.264107, 0
  %or.cond = select i1 %5, i1 true, i1 %6         ; 2 uses
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %4
  %.not78 = icmp ne i32 %.261108, 0
  %.not79 = icmp eq i32 %1, 0
  %or.cond87 = and i1 %.not79, %.not78
  br i1 %or.cond87, label %bb.j, label %.thread92

bb.j:                                             ; preds = %bb.i, %4
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !25 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
end_hunk_0
begin_hunk_1_@ares_parse_into_addrinfo:bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !15
  br label %.thread92

.thread92:                                        ; preds = %bb.f, %bb.d, %bb.e, %bb.g, %bb.h, %bb.l, %bb.i, %bb.b, %bb.o, %bb.p, %bb.a
  %.4 = phi i32 [ %i.d, %bb.a ], [ 1, %bb.b ], [ 15, %bb.l ], [ 1, %bb.i ], [ 0, %bb.p ], [ 0, %bb.o ], [ 15, %bb.d ], [ 15, %bb.e ], [ %i.w, %bb.g ], [ %i.z, %bb.h ], [ 15, %bb.f ]
  %.4.fr = freeze i32 %.4                         ; 2 uses
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !15
end_hunk_1
