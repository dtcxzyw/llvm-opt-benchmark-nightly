inline.NumInlined: 10
inline.NumDeleted: 1
begin_hunk_0_@fun_so_iso2022jp_encoder:bb.a
  br label %iso2022jp_put_state.exit

iso2022jp_put_state.exit:                         ; preds = %bb.c, %switch.lookup
  %.1.i = phi ptr [ %.0.i, %switch.lookup ], [ %3, %bb.c ] ; 5 uses
  br i1 %i.a, label %bb.d, label %bb.e

bb.d:                                             ; preds = %iso2022jp_put_state.exit
  %i.i = load i8, ptr %1, align 1, !tbaa !10
  %i.j = and i8 %i.i, 127
  %5 = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  store i8 %i.j, ptr %.1.i, align 1, !tbaa !10
  br label %bb.f

end_hunk_0
begin_hunk_1_@fun_so_iso2022jp_encoder:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !10
  %i.q = and i8 %i.p, 127
  %6 = getelementptr inbounds nuw i8, ptr %.1.i, i64 2
  store i8 %i.q, ptr %i.n, align 1, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.016 = phi ptr [ %5, %bb.d ], [ %6, %bb.e ]
  %i.r = ptrtoint ptr %.016 to i64
  %i.s = ptrtoint ptr %3 to i64
  %i.t = sub i64 %i.r, %i.s
end_hunk_1
begin_hunk_2_@fun_so_cp50220_encoder:bb.a
  br label %iso2022jp_put_state.exit.i

iso2022jp_put_state.exit.i:                       ; preds = %switch.lookup, %bb.n
  %.1.i.i = phi ptr [ %.0.i.i, %switch.lookup ], [ %.177, %bb.n ] ; 3 uses
  %i.ao = load i8, ptr %.017.i, align 1, !tbaa !10
  %i.ap = and i8 %i.ao, 127
  %5 = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1 ; 2 uses
  store i8 %i.ap, ptr %.1.i.i, align 1, !tbaa !10
  br i1 %.018.i, label %fun_so_cp5022x_encoder.exit.a, label %bb.o

bb.o:                                             ; preds = %iso2022jp_put_state.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.017.i, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !10
  %i.as = and i8 %i.ar, 127
  %6 = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2
  store i8 %i.as, ptr %5, align 1, !tbaa !10
  br label %fun_so_cp5022x_encoder.exit.a

bb.p:                                             ; preds = %bb.k
end_hunk_2
begin_hunk_3_@fun_so_cp50220_encoder:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !10
  %i.bd = and i8 %i.bc, 127
  %7 = getelementptr inbounds nuw i8, ptr %.1.i.i96, i64 2
  store i8 %i.bd, ptr %i.ba, align 1, !tbaa !10
  br label %fun_so_cp5022x_encoder.exit.a

bb.r:                                             ; preds = %bb.p
end_hunk_3
begin_hunk_4_@fun_so_cp50220_encoder:bb.a
  store i8 3, ptr %0, align 1, !tbaa !10
  br label %.thread

fun_so_cp5022x_encoder.exit.a:                    ; preds = %bb.o, %iso2022jp_put_state.exit.i, %fun_so_cp5022x_encoder.exit99
  %.sink119 = phi ptr [ %7, %fun_so_cp5022x_encoder.exit99 ], [ %6, %bb.o ], [ %5, %iso2022jp_put_state.exit.i ]
  %i.cf = ptrtoint ptr %.sink119 to i64
  %i.cg = ptrtoint ptr %.177 to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = getelementptr inbounds i8, ptr %.177, i64 %i.ch
end_hunk_4
begin_hunk_5_@fun_so_cp5022x_encoder:bb.a
  br label %iso2022jp_put_state.exit

iso2022jp_put_state.exit:                         ; preds = %bb.d, %switch.lookup
  %.1.i = phi ptr [ %.0.i, %switch.lookup ], [ %3, %bb.d ] ; 3 uses
  %i.j = load i8, ptr %.017, align 1, !tbaa !10
  %i.k = and i8 %i.j, 127
  %5 = getelementptr inbounds nuw i8, ptr %.1.i, i64 1 ; 2 uses
  store i8 %i.k, ptr %.1.i, align 1, !tbaa !10
  br i1 %.018, label %bb.f, label %bb.e

bb.e:                                             ; preds = %iso2022jp_put_state.exit
  %i.l = getelementptr inbounds nuw i8, ptr %.017, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !10
  %i.n = and i8 %i.m, 127
  %6 = getelementptr inbounds nuw i8, ptr %.1.i, i64 2
  store i8 %i.n, ptr %5, align 1, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %iso2022jp_put_state.exit, %bb.e
  %.019 = phi ptr [ %6, %bb.e ], [ %5, %iso2022jp_put_state.exit ]
  %i.o = ptrtoint ptr %.019 to i64
  %i.p = ptrtoint ptr %3 to i64
  %i.q = sub i64 %i.o, %i.p
end_hunk_5
