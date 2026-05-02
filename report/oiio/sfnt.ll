inline.NumInlined: 86
inline.NumDeleted: 34
begin_hunk_0_@sfnt_load_face:bb.a
  br i1 %.not391, label %bb.r, label %.thread512

bb.r:                                             ; preds = %.thread501, %bb.q
  %.0344504 = phi i1 [ %.0344505.a, %.thread501 ], [ false, %bb.q ]
  %or.cond8 = select i1 %.not382, i1 true, i1 %.not383
  %spec.select464 = select i1 %or.cond8, i8 0, i8 %i.an ; 3 uses
end_hunk_0
begin_hunk_1_@sfnt_load_face:bb.a
bb.ah:                                            ; preds = %bb.ag
  %or.cond11 = select i1 %.not382, i1 true, i1 %.not384
  %or.cond14 = select i1 %or.cond11, i1 true, i1 %.not385
  %or.cond17 = select i1 %or.cond14, i1 true, i1 %spec.select
  br i1 %or.cond17, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
end_hunk_1
begin_hunk_2_@tt_face_get_name:bb.a
  br i1 %i.ah, label %bb.l, label %bb.n

bb.l:                                             ; preds = %._crit_edge
  %3 = icmp ne i8 %.1, 0
  %i.ai = icmp slt i32 %spec.select134, 0
  %or.cond = select i1 %i.ai, i1 true, i1 %3
  br i1 %or.cond, label %bb.m, label %.thread
end_hunk_2
begin_hunk_3_@tt_sbit_decoder_alloc_bitmap:bb.a
  %i.ah = zext nneg i32 %.sink44 to i64
  %i.ai = mul nuw nsw i64 %i.ah, %i.ag            ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  %2 = icmp ne i8 %1, 0
  %or.cond = or i1 %2, %i.aj
  br i1 %or.cond, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
end_hunk_3
begin_hunk_4_@tt_cmap4_char_map_linear:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !602
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 824
  %i.d = load i64, ptr %i.c, align 8, !tbaa !326
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.24.val, i64 6
  %i.g = load i8, ptr %i.f, align 1, !tbaa !16
  %i.h = zext i8 %i.g to i32
end_hunk_4
begin_hunk_5_@tt_cmap4_char_map_linear:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %.24.val, i64 16
  %i.u = zext nneg i32 %i.r to i64                ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u ; 2 uses
  %i.w = add nsw i32 %i.n, -1                     ; 2 uses
  %.not114 = icmp eq i8 %1, 0                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
end_hunk_5
begin_hunk_6_@tt_cmap4_char_map_linear:bb.a
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !16
  %i.am = zext i8 %i.al to i32
  %i.an = or disjoint i32 %i.aj, %i.am            ; 2 uses
  %.not112.us.us.us.us = icmp ugt i32 %.094104.us.us.mux, %i.an
  br i1 %.not112.us.us.us.us, label %.thread4.split.us.split.us.us.us, label %bb.c

bb.c:                                             ; preds = %.split.us.us.us
  %2 = getelementptr inbounds nuw i8, ptr %.091106.us.us, i64 %i.u ; 5 uses
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 %i.u ; 4 uses
  %i.ao = icmp uge i32 %.0101103.us.us, %i.w
  %i.ap = icmp eq i32 %i.ag, 65535
  %or.cond.us.us = and i1 %i.ao, %i.ap
end_hunk_6
begin_hunk_7_@tt_cmap4_char_map_linear:bb.a
  %or.cond123.us.us.us.us = select i1 %or.cond7.us.us.us.us, i1 %i.bc, i1 false ; 3 uses
  %.0103.us.us.us.us = select i1 %or.cond123.us.us.us.us, i32 0, i32 %i.ax ; 2 uses
  %trunc.us.us.us.us = trunc nuw i32 %.0103.us.us.us.us to i16
  switch i16 %trunc.us.us.us.us, label %.split136.us.split.us [
    i16 -1, label %.thread4.split.us.split.us.us.us
    i16 0, label %.split49.us.split.us.split.us
  ]

.thread4.split.us.split.us.us.us:                 ; preds = %bb.c, %.split.us.us.us
  %i.bd = add nuw nsw i32 %.0101103.us.us, 1      ; 2 uses
  %exitcond204.not = icmp eq i32 %i.bd, %i.n
  br i1 %exitcond204.not, label %.thread10, label %.split107.us.split.us, !llvm.loop !729
end_hunk_7
begin_hunk_8_@tt_cmap4_char_map_linear:bb.a
  %i.bm = and i32 %i.bl, 65535
  br label %.thread14

.split136.us.split.us:                            ; preds = %bb.c
  %4 = sub nsw i32 %.094104.us.us.mux, %i.ag
  %5 = shl nsw i32 %4, 1
  %6 = add nsw i32 %.0103.us.us.us.us, %5
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 %7 ; 2 uses
  %i.bn = load i8, ptr %8, align 1, !tbaa !16
  %i.bo = zext i8 %i.bn to i32
  %i.bp = shl nuw nsw i32 %i.bo, 8
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !16
  %i.bs = zext i8 %i.br to i32
  %i.bt = or disjoint i32 %i.bp, %i.bs            ; 2 uses
end_hunk_8
begin_hunk_9_@tt_cmap4_char_map_linear:bb.a
.split.a:                                         ; preds = %bb.b, %.thread4.split
  %.091106 = phi ptr [ %i.cc, %.thread4.split ], [ %i.v, %bb.b ] ; 4 uses
  %.092105 = phi ptr [ %i.bu, %.thread4.split ], [ %i.s, %bb.b ] ; 3 uses
  %.094104 = phi i32 [ %.296, %.thread4.split ], [ %i.q, %bb.b ]
  %.0101103 = phi i32 [ %i.er, %.thread4.split ], [ 0, %bb.b ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.092105, i64 2
  %i.bv = load i8, ptr %.092105, align 1, !tbaa !16
end_hunk_9
begin_hunk_10_@tt_cmap4_char_map_linear:bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %.091106, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !16
  %i.ci = zext i8 %i.ch to i32
  %i.cj = or disjoint i32 %i.cf, %i.ci            ; 3 uses
  %.094104.mux = tail call i32 @llvm.umax.i32(i32 %.094104, i32 %i.cj)
  %9 = getelementptr inbounds nuw i8, ptr %.091106, i64 %i.u ; 3 uses
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 1
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 %i.u ; 4 uses
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 1
  %i.ck = icmp uge i32 %.0101103, %i.w
  %13 = icmp eq i32 %i.cj, 65535
  %or.cond = and i1 %i.ck, %13
  %14 = icmp eq i32 %i.cb, 65535
  %or.cond3 = and i1 %or.cond, %14
  br label %bb.e

bb.d:                                             ; preds = %.split136.us.split.us
end_hunk_10
begin_hunk_11_@tt_cmap4_char_map_linear:bb.a
  %spec.store.select.us.us = select i1 %.not118.us.us, i32 %i.ct, i32 0
  br label %.thread10

bb.e:                                             ; preds = %.thread, %.split.a
  %.296 = phi i32 [ %.094104.mux, %.split.a ], [ %i.eq, %.thread ] ; 9 uses
  %.not112 = icmp ugt i32 %.296, %i.cb
  br i1 %.not112, label %.thread4.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cw = load i8, ptr %9, align 1, !tbaa !16
  %i.cx = zext i8 %i.cw to i16
  %i.cy = shl nuw i16 %i.cx, 8
  %i.cz = load i8, ptr %10, align 1, !tbaa !16
  %i.da = zext i8 %i.cz to i16
  %i.db = or disjoint i16 %i.cy, %i.da
  %i.dc = sext i16 %i.db to i32
  %i.dd = load i8, ptr %11, align 1, !tbaa !16
  %i.de = zext i8 %i.dd to i32
  %i.df = shl nuw nsw i32 %i.de, 8
  %i.dg = load i8, ptr %12, align 1, !tbaa !16
  %i.dh = zext i8 %i.dg to i32
  %i.di = or disjoint i32 %i.df, %i.dh            ; 3 uses
  %i.dj = icmp ne i32 %i.di, 0
  %or.cond7 = select i1 %or.cond3, i1 %i.dj, i1 false
  %i.dk = zext nneg i32 %i.di to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %11, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  %i.dn = icmp ugt ptr %i.dm, %i.e
  %or.cond123 = select i1 %or.cond7, i1 %i.dn, i1 false ; 2 uses
end_hunk_11
begin_hunk_12_@tt_cmap4_char_map_linear:bb.a
  %i.dp = shl nsw i32 %i.do, 1
  %i.dq = add nsw i32 %.0103, %i.dp
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 %i.dr ; 3 uses
  %i.dt = icmp ugt ptr %i.ds, %i.e
  br i1 %i.dt, label %.thread4.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.du = load i8, ptr %i.ds, align 1, !tbaa !16
end_hunk_12
begin_hunk_13_@tt_cmap4_char_map_linear:bb.a
  store i32 %.625, ptr %0, align 4, !tbaa !3
  br label %.thread14

.thread14:                                        ; preds = %.split107.us.split.us, %.split49.us.split.us.split.us, %.thread10, %.thread10.thread21, %bb.a
  %.0100 = phi i32 [ 0, %bb.a ], [ %.526, %.thread10.thread21 ], [ %.5, %.thread10 ], [ %i.bm, %.split49.us.split.us.split.us ], [ 0, %.split107.us.split.us ]
  ret i32 %.0100
}

end_hunk_13
begin_hunk_14_@tt_cmap4_char_map_binary:bb.a
  %i.iz = add nsw i32 %i.iy, %.11230
  %i.ja = zext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %.10260, i64 %i.ja ; 3 uses
  %.not303 = icmp ne i8 %2, 0
  %i.jc = icmp ugt ptr %i.jb, %i.f
  %or.cond319 = select i1 %.not303, i1 %i.jc, i1 false
  br i1 %or.cond319, label %.thread362, label %bb.o
end_hunk_14
