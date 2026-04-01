begin_hunk_0
  %i.blf = getelementptr inbounds nuw i8, ptr %i.bgb, i64 %.094.i2226
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %.lr.ph.i.i884, %bb.mm
  %.033.i.i = phi i64 [ %i.ble, %.lr.ph.i.i884 ], [ %i.blo, %bb.mm ]
  %.02132.i.i = phi ptr [ %i.blf, %.lr.ph.i.i884 ], [ %i.blm, %bb.mm ]
  %i.blg = add i64 %.033.i.i, -1
  %i.blh = call ptr @memchr(ptr noundef %.02132.i.i, i32 noundef 47, i64 noundef %i.blg) #33 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.blh, null
  br i1 %.not26.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i885

end_hunk_0
begin_hunk_1
  br i1 %.not25.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !118

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread: ; preds = %bb.ml, %bb.mp, %bb.mm, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.095.i2007 = phi i1 [ %.095.i2225, %bb.mm ], [ %.095.i2225, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ %.095.i2225, %bb.ml ], [ %i.blv, %bb.mp ]
  br i1 %.095.i2007, label %.critedge2387, label %bb.mz

bb.mn:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit
end_hunk_1
begin_hunk_2
  %i.if = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.094.i12550
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %.lr.ph.i.i71, %bb.ad
  %.033.i.i = phi i64 [ %i.ie, %.lr.ph.i.i71 ], [ %i.io, %bb.ad ]
  %.02132.i.i = phi ptr [ %i.if, %.lr.ph.i.i71 ], [ %i.im, %bb.ad ]
  %i.ig = add i64 %.033.i.i, -1
  %i.ih = call ptr @memchr(ptr noundef nonnull %.02132.i.i, i32 noundef 47, i64 noundef %i.ig) #33 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.ih, null
  br i1 %.not26.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

end_hunk_2
begin_hunk_3
  br i1 %.not25.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !118

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread: ; preds = %bb.ac, %bb.ag, %bb.ad, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.095.i11529 = phi i1 [ %.095.i11549, %bb.ad ], [ %.095.i11549, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ %.095.i11549, %bb.ac ], [ %i.iv, %bb.ag ]
  br i1 %.095.i11529, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, label %.critedge.i14

bb.ae:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit
end_hunk_3
begin_hunk_4
  %i.uh = getelementptr inbounds nuw i8, ptr %.sroa.8.0435, i64 %.094.i568
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i152

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i152:  ; preds = %.lr.ph.i.i151, %bb.cp
  %.033.i.i153 = phi i64 [ %i.ug, %.lr.ph.i.i151 ], [ %i.uq, %bb.cp ]
  %.02132.i.i154 = phi ptr [ %i.uh, %.lr.ph.i.i151 ], [ %i.uo, %bb.cp ]
  %i.ui = add i64 %.033.i.i153, -1
  %i.uj = call ptr @memchr(ptr noundef %.02132.i.i154, i32 noundef 47, i64 noundef %i.ui) #33 ; 4 uses
  %.not26.i.i156 = icmp eq ptr %i.uj, null
  br i1 %.not26.i.i156, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit161.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i157

end_hunk_4
begin_hunk_5
  br i1 %.not25.i.i159, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit161.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i152, !llvm.loop !118

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit161.thread: ; preds = %bb.cs, %bb.co, %bb.cp, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i152
  %.095.i520 = phi i1 [ %.095.i567, %bb.cp ], [ %.095.i567, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i152 ], [ %i.ux, %bb.cs ], [ %.095.i567, %bb.co ]
  br i1 %.095.i520, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit164, label %.critedge.i

bb.cq:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit161
end_hunk_5
begin_hunk_6
  %i.ig = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.094.i89.i1265
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %.lr.ph.i.i97, %bb.ad
  %.033.i.i = phi i64 [ %i.if, %.lr.ph.i.i97 ], [ %i.ip, %bb.ad ]
  %.02132.i.i = phi ptr [ %i.ig, %.lr.ph.i.i97 ], [ %i.in, %bb.ad ]
  %i.ih = add i64 %.033.i.i, -1
  %i.ii = call ptr @memchr(ptr noundef nonnull %.02132.i.i, i32 noundef 47, i64 noundef %i.ih) #33 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.ii, null
  br i1 %.not26.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

end_hunk_6
begin_hunk_7
  br i1 %.not25.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !118

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread: ; preds = %bb.ac, %bb.ag, %bb.ad, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.095.i88.i1244 = phi i1 [ %.095.i88.i1264, %bb.ad ], [ %.095.i88.i1264, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ %.095.i88.i1264, %bb.ac ], [ %i.iw, %bb.ag ]
  br i1 %.095.i88.i1244, label %.critedge1346.a, label %bb.aq

bb.ae:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit
end_hunk_7
begin_hunk_8
  %i.xv = getelementptr inbounds nuw i8, ptr %i.do, i64 %.094.i52.i1288
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i233

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i233:  ; preds = %.lr.ph.i.i232, %bb.dl
  %.033.i.i234 = phi i64 [ %i.xu, %.lr.ph.i.i232 ], [ %i.ye, %bb.dl ]
  %.02132.i.i235 = phi ptr [ %i.xv, %.lr.ph.i.i232 ], [ %i.yc, %bb.dl ]
  %i.xw = add i64 %.033.i.i234, -1
  %i.xx = call ptr @memchr(ptr noundef %.02132.i.i235, i32 noundef 47, i64 noundef %i.xw) #33 ; 4 uses
  %.not26.i.i237 = icmp eq ptr %i.xx, null
  br i1 %.not26.i.i237, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit242.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i238

end_hunk_8
begin_hunk_9
  br i1 %.not25.i.i240, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit242.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i233, !llvm.loop !118

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit242.thread: ; preds = %bb.dk, %bb.do, %bb.dl, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i233
  %.095.i51.i1233 = phi i1 [ %.095.i51.i1287, %bb.dl ], [ %.095.i51.i1287, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i233 ], [ %.095.i51.i1287, %bb.dk ], [ %i.yl, %bb.do ]
  br i1 %.095.i51.i1233, label %.critedge1347.a, label %bb.dp

bb.dm:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit242
end_hunk_9
begin_hunk_10
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.aft, i64 %.094.i15.i1335
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i378

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i378:  ; preds = %.lr.ph.i.i377, %bb.fk
  %.033.i.i379 = phi i64 [ %i.ajp, %.lr.ph.i.i377 ], [ %i.ajz, %bb.fk ]
  %.02132.i.i380 = phi ptr [ %i.ajq, %.lr.ph.i.i377 ], [ %i.ajx, %bb.fk ]
  %i.ajr = add i64 %.033.i.i379, -1
  %i.ajs = call ptr @memchr(ptr noundef nonnull %.02132.i.i380, i32 noundef 47, i64 noundef %i.ajr) #33 ; 4 uses
  %.not26.i.i382 = icmp eq ptr %i.ajs, null
  br i1 %.not26.i.i382, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit387.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i383

end_hunk_10
begin_hunk_11
  br i1 %.not25.i.i385, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit387.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i378, !llvm.loop !118

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit387.thread: ; preds = %bb.fj, %bb.fn, %bb.fk, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i378
  %.095.i14.i1211 = phi i1 [ %.095.i14.i1334, %bb.fk ], [ %.095.i14.i1334, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i378 ], [ %.095.i14.i1334, %bb.fj ], [ %i.akg, %bb.fn ]
  br i1 %.095.i14.i1211, label %.critedge1348.a, label %.critedge.i17.i

bb.fl:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit387
end_hunk_11
begin_hunk_12
  %i.asu = getelementptr inbounds nuw i8, ptr %i.do, i64 %.094.i.i1313
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i536

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i536:  ; preds = %.lr.ph.i.i535, %bb.gz
  %.033.i.i537 = phi i64 [ %i.ast, %.lr.ph.i.i535 ], [ %i.atd, %bb.gz ]
  %.02132.i.i538 = phi ptr [ %i.asu, %.lr.ph.i.i535 ], [ %i.atb, %bb.gz ]
  %i.asv = add i64 %.033.i.i537, -1
  %i.asw = call ptr @memchr(ptr noundef %.02132.i.i538, i32 noundef 47, i64 noundef %i.asv) #33 ; 4 uses
  %.not26.i.i540 = icmp eq ptr %i.asw, null
  br i1 %.not26.i.i540, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit545.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i541

end_hunk_12
begin_hunk_13
  br i1 %.not25.i.i543, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit545.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i536, !llvm.loop !118

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit545.thread: ; preds = %bb.gy, %bb.hc, %bb.gz, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i536
  %.095.i.i1221 = phi i1 [ %.095.i.i1312, %bb.gz ], [ %.095.i.i1312, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i536 ], [ %.095.i.i1312, %bb.gy ], [ %i.atk, %bb.hc ]
  br i1 %.095.i.i1221, label %.critedge1349, label %.critedge.i.i

bb.ha:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit545
end_hunk_13
begin_hunk_14
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 %.077400
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %.lr.ph.i.i, %bb.l
  %.033.i.i = phi i64 [ %i.dp, %.lr.ph.i.i ], [ %i.dz, %bb.l ]
  %.02132.i.i = phi ptr [ %i.dq, %.lr.ph.i.i ], [ %i.dx, %bb.l ]
  %i.dr = add i64 %.033.i.i, -1
  %i.ds = tail call ptr @memchr(ptr noundef %.02132.i.i, i32 noundef 47, i64 noundef %i.dr) #33 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.ds, null
  br i1 %.not26.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

end_hunk_14
begin_hunk_15
  br i1 %.not25.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !118

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread: ; preds = %bb.k, %bb.o, %bb.l, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.078389 = phi i1 [ %.078399, %bb.l ], [ %.078399, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ %.078399, %bb.k ], [ %i.eg, %bb.o ]
  br i1 %.078389, label %.critedge411, label %bb.z

bb.m:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit
end_hunk_15
begin_hunk_16
  %i.j = load i8, ptr %1, align 1
  %i.k = sext i8 %i.j to i32
  %i.l = ptrtoint ptr %i.h to i64
  %invariant.op = sub i64 1, %i.a
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.a

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.a:     ; preds = %bb.f, %.lr.ph.i
  %.033.i = phi i64 [ %i.g, %.lr.ph.i ], [ %i.t, %bb.f ]
  %.02132.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.r, %bb.f ]
  %i.m = add i64 %.033.i, %invariant.op           ; 2 uses
  %.not26.i.a = icmp eq i64 %i.m, 0
  br i1 %.not26.i.a, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcmm.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.a
  %3 = tail call ptr @memchr(ptr noundef %.02132.i, i32 noundef %i.k, i64 noundef %i.m) #33 ; 4 uses
  %.not26.i = icmp eq ptr %3, null
  br i1 %.not26.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcmm.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %3, ptr nonnull %1, i64 %i.a)
  %i.n = icmp eq i32 %bcmp.i, 0
  br i1 %i.n, label %bb.e, label %bb.f
end_hunk_16
begin_hunk_17
  %.not25.i = icmp ult i64 %i.t, %i.a
  br i1 %.not25.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcmm.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.a, !llvm.loop !118

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcmm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.a, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.f, %bb.b, %bb.c, %bb.d, %bb.e
  %.1.i = phi i64 [ %i.d, %bb.b ], [ -1, %bb.c ], [ %i.q, %bb.e ], [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ], [ -1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.a ]
  ret i64 %.1.i
}

end_hunk_17
begin_hunk_18
  %i.j = load i8, ptr %1, align 1
  %i.k = sext i8 %i.j to i32
  %i.l = ptrtoint ptr %i.h to i64
  %invariant.op = sub i64 1, %i.a
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.a

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.a:     ; preds = %bb.f, %.lr.ph.i
  %.041.i = phi i64 [ %i.g, %.lr.ph.i ], [ %i.t, %bb.f ]
  %.02840.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.r, %bb.f ]
  %i.m = add i64 %.041.i, %invariant.op           ; 2 uses
  %.not34.i.a = icmp eq i64 %i.m, 0
  br i1 %.not34.i.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.a
  %3 = tail call ptr @memchr(ptr noundef %.02840.i, i32 noundef %i.k, i64 noundef %i.m) #33 ; 4 uses
  %.not34.i = icmp eq ptr %3, null
  br i1 %.not34.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %3, ptr nonnull %1, i64 %i.a)
  %i.n = icmp eq i32 %bcmp.i, 0
  br i1 %i.n, label %bb.e, label %bb.f
end_hunk_18
begin_hunk_19
  %.not33.i = icmp ult i64 %i.t, %i.a
  br i1 %.not33.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.a, !llvm.loop !530

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.a, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.f, %bb.b, %bb.c, %bb.d, %bb.e
  %.1.i = phi i64 [ %i.e, %bb.b ], [ -1, %bb.c ], [ %i.q, %bb.e ], [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ], [ -1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.a ]
  ret i64 %.1.i
}

end_hunk_19
