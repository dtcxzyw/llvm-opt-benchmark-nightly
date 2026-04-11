inline.NumInlined: 10
inline.NumDeleted: 1
begin_hunk_0_@fun_so_iso2022jp_encoder:bb.a
  br label %iso2022jp_put_state.exit

iso2022jp_put_state.exit:                         ; preds = %bb.c, %switch.lookup
  %.1.i = phi ptr [ %.0.i, %switch.lookup ], [ %3, %bb.c ] ; 4 uses
  br i1 %i.a, label %bb.d, label %bb.e

bb.d:                                             ; preds = %iso2022jp_put_state.exit
  %i.i = load i8, ptr %1, align 1, !tbaa !10
  %i.j = and i8 %i.i, 127
  store i8 %i.j, ptr %.1.i, align 1, !tbaa !10
  br label %bb.f

end_hunk_0
begin_hunk_1_@fun_so_iso2022jp_encoder:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !10
  %i.q = and i8 %i.p, 127
  store i8 %i.q, ptr %i.n, align 1, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi i64 [ 1, %bb.d ], [ 2, %bb.e ]
  %.016 = getelementptr inbounds nuw i8, ptr %.1.i, i64 %.pn
  %i.r = ptrtoint ptr %.016 to i64
  %i.s = ptrtoint ptr %3 to i64
  %i.t = sub i64 %i.r, %i.s
end_hunk_1
begin_hunk_2_@fun_so_cp50220_encoder:bb.a
  br label %iso2022jp_put_state.exit.i

iso2022jp_put_state.exit.i:                       ; preds = %switch.lookup, %bb.n
  %.1.i.i = phi ptr [ %.0.i.i, %switch.lookup ], [ %.177, %bb.n ] ; 4 uses
  %i.ao = load i8, ptr %.017.i, align 1, !tbaa !10
  %i.ap = and i8 %i.ao, 127                       ; 2 uses
  br i1 %.018.i, label %5, label %bb.o

5:                                                ; preds = %iso2022jp_put_state.exit.i
  store i8 %i.ap, ptr %.1.i.i, align 1, !tbaa !10
  br label %fun_so_cp5022x_encoder.exit

bb.o:                                             ; preds = %iso2022jp_put_state.exit.i
  %6 = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  store i8 %i.ap, ptr %.1.i.i, align 1, !tbaa !10
  %i.aq = getelementptr inbounds nuw i8, ptr %.017.i, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !10
  %i.as = and i8 %i.ar, 127
  store i8 %i.as, ptr %6, align 1, !tbaa !10
  br label %fun_so_cp5022x_encoder.exit

fun_so_cp5022x_encoder.exit:                      ; preds = %5, %bb.o
  %.pn.i = phi i64 [ 1, %5 ], [ 2, %bb.o ]
  %.019.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %.pn.i
  br label %fun_so_cp5022x_encoder.exit.a

bb.p:                                             ; preds = %bb.k
end_hunk_2
begin_hunk_3_@fun_so_cp50220_encoder:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !10
  %i.bd = and i8 %i.bc, 127
  store i8 %i.bd, ptr %i.ba, align 1, !tbaa !10
  %.019.i98 = getelementptr inbounds nuw i8, ptr %.1.i.i96, i64 2
  br label %fun_so_cp5022x_encoder.exit.a

bb.r:                                             ; preds = %bb.p
end_hunk_3
begin_hunk_4_@fun_so_cp50220_encoder:bb.a
  store i8 3, ptr %0, align 1, !tbaa !10
  br label %.thread

fun_so_cp5022x_encoder.exit.a:                    ; preds = %fun_so_cp5022x_encoder.exit99, %fun_so_cp5022x_encoder.exit
  %.019.i98.sink = phi ptr [ %.019.i98, %fun_so_cp5022x_encoder.exit99 ], [ %.019.i, %fun_so_cp5022x_encoder.exit ]
  %i.cf = ptrtoint ptr %.019.i98.sink to i64
  %i.cg = ptrtoint ptr %.177 to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = getelementptr inbounds i8, ptr %.177, i64 %i.ch
end_hunk_4
begin_hunk_5_@fun_so_cp5022x_encoder:bb.a
  br label %iso2022jp_put_state.exit

iso2022jp_put_state.exit:                         ; preds = %bb.d, %switch.lookup
  %.1.i = phi ptr [ %.0.i, %switch.lookup ], [ %3, %bb.d ] ; 4 uses
  %i.j = load i8, ptr %.017, align 1, !tbaa !10
  %i.k = and i8 %i.j, 127                         ; 2 uses
  br i1 %.018, label %5, label %bb.e

5:                                                ; preds = %iso2022jp_put_state.exit
  store i8 %i.k, ptr %.1.i, align 1, !tbaa !10
  br label %bb.f

bb.e:                                             ; preds = %iso2022jp_put_state.exit
  %6 = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  store i8 %i.k, ptr %.1.i, align 1, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %.017, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !10
  %i.n = and i8 %i.m, 127
  store i8 %i.n, ptr %6, align 1, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %5
  %.pn = phi i64 [ 1, %5 ], [ 2, %bb.e ]
  %.019 = getelementptr inbounds nuw i8, ptr %.1.i, i64 %.pn
  %i.o = ptrtoint ptr %.019 to i64
  %i.p = ptrtoint ptr %3 to i64
  %i.q = sub i64 %i.o, %i.p
end_hunk_5
