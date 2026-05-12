inline.NumInlined: 362
inline.NumDeleted: 35
begin_hunk_0_@FT_Vector_Length:bb.a
bb.e:                                             ; preds = %bb.d
  %i.e = tail call i64 @llvm.abs.i64(i64 %.sroa.10.0.copyload, i1 true)
  %i.f = or i64 %i.e, %i.d
  %i.g = trunc i64 %i.f to i32
  %i.h = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.g, i1 true) ; 3 uses
  %1 = xor i32 %i.h, 31                           ; 2 uses
  %2 = icmp samesign ult i32 %1, 30
  br i1 %2, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %3 = sub nuw nsw i32 29, %1                     ; 2 uses
  %i.i = zext nneg i32 %3 to i64                  ; 2 uses
  %i.j = shl i64 %.sroa.0.0.copyload, %i.i
  %i.k = shl i64 %.sroa.10.0.copyload, %i.i
  br label %ft_trig_prenorm.exit

bb.g:                                             ; preds = %bb.e
  %.neg.i = add nsw i32 %i.h, -2
  %i.l = sub nsw i32 2, %i.h
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = ashr i64 %.sroa.0.0.copyload, %i.m
end_hunk_0
begin_hunk_1_@FT_Vector_Length:bb.a
ft_trig_prenorm.exit:                             ; preds = %bb.f, %bb.g
  %.sink.i = phi i64 [ %i.j, %bb.f ], [ %i.n, %bb.g ] ; 4 uses
  %storemerge.i = phi i64 [ %i.k, %bb.f ], [ %i.o, %bb.g ] ; 6 uses
  %.0.i = phi i32 [ %3, %bb.f ], [ %.neg.i, %bb.g ] ; 4 uses
  %i.p = icmp sgt i64 %storemerge.i, %.sink.i
  %i.q = sub nsw i64 0, %.sink.i                  ; 4 uses
  %i.r = sub nsw i64 0, %storemerge.i             ; 2 uses
end_hunk_1
begin_hunk_2_@FT_Vector_Length:bb.a
  %i.fs = lshr i64 %i.fr, 32                      ; 2 uses
  %i.ft = sub nsw i64 0, %i.fs
  %i.fu = select i1 %i.fp, i64 %i.ft, i64 %i.fs   ; 2 uses
  %4 = icmp sgt i32 %.0.i, 0
  br i1 %4, label %bb.j, label %bb.k

bb.j:                                             ; preds = %ft_trig_pseudo_polarize.exit
  %i.fv = add nsw i32 %.0.i, -1
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = shl nuw nsw i64 1, %i.fw
  %i.fy = add nsw i64 %i.fu, %i.fx
  %i.fz = zext nneg i32 %.0.i to i64
  %i.ga = ashr i64 %i.fy, %i.fz
  br label %bb.l

bb.k:                                             ; preds = %ft_trig_pseudo_polarize.exit
  %i.gb = trunc i64 %i.fu to i32
  %i.gc = sub nsw i32 0, %.0.i
  %i.gd = shl i32 %i.gb, %i.gc
  %i.ge = zext i32 %i.gd to i64
  br label %bb.l
end_hunk_2
begin_hunk_3_@FT_Raccess_Get_HeaderInfo:bb.a
  br i1 %i.cu, label %FT_Stream_Seek.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cv = add nuw nsw i64 %i.bz, %i.as
  %5 = xor i64 %i.cv, 9223372036854775807
  %i.cw = icmp slt i64 %5, %2
  br i1 %i.cw, label %FT_Stream_Seek.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cx = add nuw nsw i64 %i.cp, %i.bj
  %6 = xor i64 %i.cx, 9223372036854775807
  %i.cy = icmp slt i64 %6, %2
  br i1 %i.cy, label %FT_Stream_Seek.exit.thread, label %bb.p

end_hunk_3
begin_hunk_4_@FT_Atan2:bb.a
  %i.b = tail call i64 @llvm.abs.i64(i64 %0, i1 true)
  %i.c = tail call i64 @llvm.abs.i64(i64 %1, i1 true)
  %i.d = or i64 %i.c, %i.b
  %i.e = trunc i64 %i.d to i32
  %i.f = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.e, i1 true) ; 2 uses
  %2 = xor i32 %i.f, 31                           ; 2 uses
  %i.g = icmp samesign ult i32 %2, 30
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %3 = sub nuw nsw i32 29, %2
  %i.h = zext nneg i32 %3 to i64                  ; 2 uses
  %i.i = shl i64 %0, %i.h
  %i.j = shl i64 %1, %i.h
  br label %ft_trig_prenorm.exit
end_hunk_4
begin_hunk_5_@FT_Vector_Rotate:bb.a
  %i.e = tail call i64 @llvm.abs.i64(i64 %.sroa.0.0.copyload, i1 true)
  %i.f = tail call i64 @llvm.abs.i64(i64 %.sroa.12.0.copyload, i1 true)
  %i.g = or i64 %i.f, %i.e
  %i.h = trunc i64 %i.g to i32
  %i.i = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.h, i1 true) ; 3 uses
  %2 = xor i32 %i.i, 31                           ; 2 uses
  %3 = icmp samesign ult i32 %2, 30
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %4 = sub nuw nsw i32 29, %2                     ; 2 uses
  %i.j = zext nneg i32 %4 to i64                  ; 2 uses
  %i.k = shl i64 %.sroa.0.0.copyload, %i.j
  %i.l = shl i64 %.sroa.12.0.copyload, %i.j
  br label %ft_trig_prenorm.exit

bb.e:                                             ; preds = %bb.c
  %.neg.i = add nsw i32 %i.i, -2
  %i.m = sub nsw i32 2, %i.i
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = ashr i64 %.sroa.0.0.copyload, %i.n
end_hunk_5
begin_hunk_6_@FT_Vector_Rotate:bb.a
ft_trig_prenorm.exit:                             ; preds = %bb.d, %bb.e
  %.sink.i = phi i64 [ %i.k, %bb.d ], [ %i.o, %bb.e ] ; 4 uses
  %storemerge.i = phi i64 [ %i.l, %bb.d ], [ %i.p, %bb.e ] ; 4 uses
  %.0.i = phi i32 [ %4, %bb.d ], [ %.neg.i, %bb.e ] ; 4 uses
  %i.q = icmp slt i64 %1, -2949120
  br i1 %i.q, label %.lr.ph.i, label %.preheader53.i

end_hunk_6
begin_hunk_7_@FT_Vector_Rotate:bb.a
  %i.az = lshr i64 %i.ay, 32                      ; 2 uses
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = select i1 %i.aw, i64 %i.ba, i64 %i.az   ; 3 uses
  %5 = icmp sgt i32 %.0.i, 0
  br i1 %5, label %bb.i, label %bb.j

bb.i:                                             ; preds = %ft_trig_pseudo_rotate.exit
  %i.bc = add nsw i32 %.0.i, -1
  %i.bd = shl nuw nsw i32 1, %i.bc
  %i.be = zext nneg i32 %i.bd to i64              ; 2 uses
  %i.bf = add nsw i64 %i.av, %i.be
  %.lobit.neg = ashr i64 %i.av, 63
  %i.bg = add nsw i64 %i.bf, %.lobit.neg
  %i.bh = zext nneg i32 %.0.i to i64              ; 2 uses
  %i.bi = ashr i64 %i.bg, %i.bh
  store i64 %i.bi, ptr %0, align 8, !tbaa !166
  %i.bj = add nsw i64 %i.bb, %i.be
end_hunk_7
begin_hunk_8_@FT_Vector_Rotate:bb.a
  br label %.sink.split

bb.j:                                             ; preds = %ft_trig_pseudo_rotate.exit
  %i.bm = sub nsw i32 0, %.0.i
  %i.bn = zext nneg i32 %i.bm to i64              ; 2 uses
  %i.bo = shl nsw i64 %i.av, %i.bn
  store i64 %i.bo, ptr %0, align 8, !tbaa !166
  %i.bp = shl nsw i64 %i.bb, %i.bn
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.i
end_hunk_8
begin_hunk_9_@FT_Vector_Polarize:bb.a
  %i.f = tail call i64 @llvm.abs.i64(i64 %.sroa.0.0.copyload, i1 true)
  %i.g = tail call i64 @llvm.abs.i64(i64 %.sroa.10.0.copyload, i1 true)
  %i.h = or i64 %i.g, %i.f
  %i.i = trunc i64 %i.h to i32
  %i.j = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.i, i1 true) ; 3 uses
  %3 = xor i32 %i.j, 31                           ; 2 uses
  %4 = icmp samesign ult i32 %3, 30
  br i1 %4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %5 = sub nuw nsw i32 29, %3                     ; 2 uses
  %i.k = zext nneg i32 %5 to i64                  ; 2 uses
  %i.l = shl i64 %.sroa.0.0.copyload, %i.k
  %i.m = shl i64 %.sroa.10.0.copyload, %i.k
  br label %ft_trig_prenorm.exit

bb.e:                                             ; preds = %bb.c
  %.neg.i = add nsw i32 %i.j, -2
  %i.n = sub nsw i32 2, %i.j
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = ashr i64 %.sroa.0.0.copyload, %i.o
end_hunk_9
begin_hunk_10_@FT_Vector_Polarize:bb.a
ft_trig_prenorm.exit:                             ; preds = %bb.d, %bb.e
  %.sink.i = phi i64 [ %i.l, %bb.d ], [ %i.p, %bb.e ] ; 4 uses
  %storemerge.i = phi i64 [ %i.m, %bb.d ], [ %i.q, %bb.e ] ; 8 uses
  %.0.i = phi i32 [ %5, %bb.d ], [ %.neg.i, %bb.e ] ; 3 uses
  %i.r = icmp sgt i64 %storemerge.i, %.sink.i
  %i.s = sub nsw i64 0, %.sink.i                  ; 4 uses
  br i1 %i.r, label %bb.f, label %bb.h
end_hunk_10
begin_hunk_11_@FT_Vector_Polarize:bb.a
  %i.av = lshr i64 %i.au, 32                      ; 2 uses
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = select i1 %i.as, i64 %i.aw, i64 %i.av   ; 2 uses
  %i.ay = zext nneg i32 %.0.i to i64
  %i.az = ashr i64 %i.ax, %i.ay
  %i.ba = trunc i64 %i.ax to i32
  %i.bb = sub nsw i32 0, %.0.i
  %i.bc = shl i32 %i.ba, %i.bb
  %i.bd = zext i32 %i.bc to i64
  %6 = icmp slt i32 %.0.i, 0
  %i.be = select i1 %6, i64 %i.bd, i64 %i.az
  store i64 %i.be, ptr %1, align 8, !tbaa !39
  store i64 %.3.i, ptr %2, align 8, !tbaa !39
  br label %bb.q
end_hunk_11
