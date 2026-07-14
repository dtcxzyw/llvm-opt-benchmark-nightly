inline.NumInlined: 110
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@hdr_record_corrected_values:bb.a

bb.k:                                             ; preds = %bb.j
  %i.bp = sub nsw i32 %i.bn, %i.ac                ; 3 uses
  %i.bq = icmp slt i32 %i.bp, 0
  %.not.i.i.i23 = icmp slt i32 %i.bp, %i.aa
  %spec.select.i.i.i24 = select i1 %.not.i.i.i23, i32 0, i32 %i.ay
  %.0.i.i.i25 = select i1 %i.bq, i32 %i.aa, i32 %spec.select.i.i.i24
  %i.br = add nsw i32 %.0.i.i.i25, %i.bp
  br label %hdr_record_values.exit30

hdr_record_values.exit30:                         ; preds = %bb.j, %bb.k
  %.011.i.i.i27 = phi i32 [ %i.br, %bb.k ], [ %i.bn, %bb.j ]
  %i.bs = sext i32 %.011.i.i.i27 to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.bs ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !22
  %i.bv = add nsw i64 %i.bu, %2
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !22
  %i.bw = load i64, ptr %i.ao, align 8, !tbaa !27
  %i.bx = add nsw i64 %i.bw, %2
  store i64 %i.bx, ptr %i.ao, align 8, !tbaa !27
  %i.by = load i64, ptr %i.ar, align 8, !tbaa !26
  %i.bz = tail call i64 @llvm.smin.i64(i64 range(i64 0, -9223372036854775808) %.036, i64 %i.by)
  store i64 %i.bz, ptr %i.ar, align 8, !tbaa !26
  %i.ca = load i64, ptr %i.au, align 8, !tbaa !20
  %i.cb = tail call i64 @llvm.smax.i64(i64 range(i64 0, -9223372036854775808) %.036, i64 %i.ca)
  store i64 %i.cb, ptr %i.au, align 8, !tbaa !20
  %.0 = sub nsw i64 %.036, %3                     ; 2 uses
  %.not18 = icmp slt i64 %.0, %3
  br i1 %.not18, label %hdr_record_values.exit.thread, label %bb.h, !llvm.loop !47

hdr_record_values.exit.thread:                    ; preds = %hdr_record_values.exit30, %bb.h, %bb.i, %.preheader, %bb.c, %bb.d, %bb.b, %bb.a, %bb.g
  %.015 = phi i1 [ false, %bb.d ], [ true, %bb.g ], [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.b ], [ true, %.preheader ], [ false, %bb.i ], [ false, %bb.h ], [ true, %hdr_record_values.exit30 ]
  ret i1 %.015
}

; Function Attrs: norecurse nounwind uwtable
define hidden noundef zeroext i1 @hdr_record_corrected_value_atomic(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #15 {
bb.a:
  %i.a = tail call zeroext i1 @hdr_record_corrected_values_atomic(ptr noundef %0, i64 noundef %1, i64 noundef 1, i64 noundef %2)
  ret i1 %i.a
}

; Function Attrs: norecurse nounwind uwtable
define hidden noundef zeroext i1 @hdr_record_corrected_values_atomic(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %hdr_record_values_atomic.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !44
  %i.d = icmp slt i64 %i.c, %1
  br i1 %i.d, label %hdr_record_values_atomic.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9
  %i.g = or i64 %i.f, %1
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !15   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !16   ; 2 uses
  %i.n = add i32 %i.m, %i.k
  %i.o = add i32 %i.n, %i.i                       ; 2 uses
  %reass.sub.i.i = add i32 %i.k, 63
  %i.p = sub i32 %reass.sub.i.i, %i.o
  %i.q = zext nneg i32 %i.p to i64
  %i.r = lshr i64 %1, %i.q
  %i.s = trunc i64 %i.r to i32
  %i.t = getelementptr i8, ptr %0, i64 28         ; 2 uses
  %.val7.i.i = load i32, ptr %i.t, align 4, !tbaa !17
  %i.u = sub i32 64, %i.o
  %i.v = shl i32 %i.u, %i.m
  %i.w = sub i32 %i.v, %.val7.i.i
  %i.x = add i32 %i.w, %i.s                       ; 4 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %hdr_record_values_atomic.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !19  ; 4 uses
  %.not.i = icmp sgt i32 %i.aa, %i.x
  br i1 %.not.i, label %bb.e, label %hdr_record_values_atomic.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !40 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %counts_inc_normalised_atomic.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = sub nsw i32 %i.x, %i.ac                 ; 3 uses
  %i.af = icmp slt i32 %i.ae, 0
  %.not.i.i.i = icmp slt i32 %i.ae, %i.aa
  %i.ag = sub nsw i32 0, %i.aa
  %spec.select.i.i.i = select i1 %.not.i.i.i, i32 0, i32 %i.ag
  %.0.i.i.i = select i1 %i.af, i32 %i.aa, i32 %spec.select.i.i.i
  %i.ah = add nsw i32 %.0.i.i.i, %i.ae
  br label %counts_inc_normalised_atomic.exit.i

counts_inc_normalised_atomic.exit.i:              ; preds = %bb.f, %bb.e
  %.011.i.i.i = phi i32 [ %i.ah, %bb.f ], [ %i.x, %bb.e ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !21
  %i.ak = sext i32 %.011.i.i.i to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ak
  %i.am = atomicrmw add ptr %i.al, i64 %2 seq_cst, align 8 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ao = atomicrmw add ptr %i.an, i64 %2 seq_cst, align 8 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %.not23.i.i = icmp eq i64 %1, 0
  br i1 %.not23.i.i, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %counts_inc_normalised_atomic.exit.i
  %i.aq = load atomic i64, ptr %i.ap seq_cst, align 8 ; 0 uses
  br label %.split22.i.i

.split.i.i:                                       ; preds = %counts_inc_normalised_atomic.exit.i, %bb.g
  %i.ar = load atomic i64, ptr %i.ap seq_cst, align 8 ; 2 uses
  %.not.i.i = icmp sgt i64 %i.ar, %1
  br i1 %.not.i.i, label %bb.g, label %.split22.i.i

bb.g:                                             ; preds = %.split.i.i
  %i.as = cmpxchg ptr %i.ap, i64 %i.ar, i64 %1 seq_cst seq_cst, align 8
  %i.at = extractvalue { i64, i1 } %i.as, 1
  br i1 %i.at, label %.split22.i.i, label %.split.i.i, !llvm.loop !45

.split22.i.i:                                     ; preds = %bb.g, %.split.i.i, %.split.us.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.split22.i.i
  %i.av = load atomic i64, ptr %i.au seq_cst, align 8 ; 2 uses
  %.not20.i.i = icmp sgt i64 %1, %i.av
  br i1 %.not20.i.i, label %bb.i, label %hdr_record_values_atomic.exit

bb.i:                                             ; preds = %bb.h
  %i.aw = cmpxchg ptr %i.au, i64 %i.av, i64 %1 seq_cst seq_cst, align 8
  %i.ax = extractvalue { i64, i1 } %i.aw, 1
  br i1 %i.ax, label %hdr_record_values_atomic.exit, label %bb.h, !llvm.loop !46

hdr_record_values_atomic.exit:                    ; preds = %bb.i, %bb.h
  %i.ay = icmp slt i64 %3, 1
  %.not = icmp sle i64 %1, %3
  %or.cond.not61 = or i1 %i.ay, %.not
  %.038 = sub nsw i64 %1, %3                      ; 2 uses
  %.not1839 = icmp slt i64 %.038, %3
  %or.cond59 = select i1 %or.cond.not61, i1 true, i1 %.not1839
  br i1 %or.cond59, label %hdr_record_values_atomic.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %hdr_record_values_atomic.exit, %hdr_record_values_atomic.exit34
  %.040 = phi i64 [ %.0, %hdr_record_values_atomic.exit34 ], [ %.038, %hdr_record_values_atomic.exit ] ; 8 uses
  %i.az = load i64, ptr %i.b, align 8, !tbaa !44
  %i.ba = icmp slt i64 %i.az, %.040
  br i1 %i.ba, label %hdr_record_values_atomic.exit.thread, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.bb = load i64, ptr %i.e, align 8, !tbaa !9
  %i.bc = or i64 %i.bb, %.040
  %i.bd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bc, i1 true)
  %i.be = trunc nuw nsw i64 %i.bd to i32
  %i.bf = load i32, ptr %i.j, align 8, !tbaa !15  ; 2 uses
  %i.bg = load i32, ptr %i.l, align 8, !tbaa !16  ; 2 uses
  %i.bh = add i32 %i.bg, %i.bf
  %i.bi = add i32 %i.bh, %i.be                    ; 2 uses
  %reass.sub.i.i19 = add i32 %i.bf, 63
  %i.bj = sub i32 %reass.sub.i.i19, %i.bi
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = lshr i64 %.040, %i.bk
  %i.bm = trunc i64 %i.bl to i32
  %.val7.i.i20 = load i32, ptr %i.t, align 4, !tbaa !17
  %i.bn = sub i32 64, %i.bi
  %i.bo = shl i32 %i.bn, %i.bg
  %i.bp = sub i32 %i.bo, %.val7.i.i20
  %i.bq = add i32 %i.bp, %i.bm                    ; 4 uses
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %hdr_record_values_atomic.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load i32, ptr %i.z, align 8, !tbaa !19  ; 4 uses
  %.not.i21 = icmp sgt i32 %i.bs, %i.bq
  br i1 %.not.i21, label %bb.l, label %hdr_record_values_atomic.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.bt = load i32, ptr %i.ab, align 8, !tbaa !40 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %counts_inc_normalised_atomic.exit.i26, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = sub nsw i32 %i.bq, %i.bt                ; 3 uses
  %i.bw = icmp slt i32 %i.bv, 0
  %.not.i.i.i23 = icmp slt i32 %i.bv, %i.bs
  %i.bx = sub nsw i32 0, %i.bs
  %spec.select.i.i.i24 = select i1 %.not.i.i.i23, i32 0, i32 %i.bx
  %.0.i.i.i25 = select i1 %i.bw, i32 %i.bs, i32 %spec.select.i.i.i24
  %i.by = add nsw i32 %.0.i.i.i25, %i.bv
  br label %counts_inc_normalised_atomic.exit.i26

counts_inc_normalised_atomic.exit.i26:            ; preds = %bb.l, %bb.m
  %.011.i.i.i27 = phi i32 [ %i.by, %bb.m ], [ %i.bq, %bb.l ]
  %i.bz = load ptr, ptr %i.ai, align 8, !tbaa !21
  %i.ca = sext i32 %.011.i.i.i27 to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ca
  %i.cc = atomicrmw add ptr %i.cb, i64 %2 seq_cst, align 8 ; 0 uses
  %i.cd = atomicrmw add ptr %i.an, i64 %2 seq_cst, align 8 ; 0 uses
  br label %.split.i.i29

.split.i.i29:                                     ; preds = %counts_inc_normalised_atomic.exit.i26, %bb.n
  %i.ce = load atomic i64, ptr %i.ap seq_cst, align 8 ; 2 uses
  %.not.i.i30 = icmp sgt i64 %i.ce, %.040
  br i1 %.not.i.i30, label %bb.n, label %.split22.i.i31.loopexit.preheader

bb.n:                                             ; preds = %.split.i.i29
  %i.cf = cmpxchg ptr %i.ap, i64 %i.ce, i64 %.040 seq_cst seq_cst, align 8
  %i.cg = extractvalue { i64, i1 } %i.cf, 1
  br i1 %i.cg, label %.split22.i.i31.loopexit.preheader, label %.split.i.i29, !llvm.loop !45

.split22.i.i31.loopexit.preheader:                ; preds = %bb.n, %.split.i.i29
  br label %.split22.i.i31.loopexit

.split22.i.i31.loopexit:                          ; preds = %.split22.i.i31.loopexit.preheader, %bb.o
  %i.ch = load atomic i64, ptr %i.au seq_cst, align 8 ; 2 uses
  %.not20.i.i32 = icmp sgt i64 %.040, %i.ch
  br i1 %.not20.i.i32, label %bb.o, label %hdr_record_values_atomic.exit34

bb.o:                                             ; preds = %.split22.i.i31.loopexit
  %i.ci = cmpxchg ptr %i.au, i64 %i.ch, i64 %.040 seq_cst seq_cst, align 8
  %i.cj = extractvalue { i64, i1 } %i.ci, 1
  br i1 %i.cj, label %hdr_record_values_atomic.exit34, label %.split22.i.i31.loopexit, !llvm.loop !46

hdr_record_values_atomic.exit34:                  ; preds = %.split22.i.i31.loopexit, %bb.o
  %.0 = sub nsw i64 %.040, %3                     ; 2 uses
  %.not18 = icmp slt i64 %.0, %3
  br i1 %.not18, label %hdr_record_values_atomic.exit.thread, label %.lr.ph, !llvm.loop !48

hdr_record_values_atomic.exit.thread:             ; preds = %hdr_record_values_atomic.exit34, %bb.j, %.lr.ph, %bb.k, %bb.d, %bb.b, %bb.a, %bb.c, %hdr_record_values_atomic.exit
  %.015 = phi i1 [ false, %bb.b ], [ true, %hdr_record_values_atomic.exit ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.k ], [ false, %.lr.ph ], [ false, %bb.j ], [ true, %hdr_record_values_atomic.exit34 ]
  ret i1 %.015
}

; Function Attrs: nounwind uwtable
define hidden i64 @hdr_add(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #17 {
bb.a:
  %2 = alloca %struct.hdr_iter, align 8           ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %1, ptr %2, align 8, !tbaa !49
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 -1, ptr %i.a, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.c = load i64, ptr %i.b, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.c, ptr %i.d, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr @recorded_iter_next, ptr %i.g, align 8, !tbaa !53
  %i.h = call zeroext i1 @recorded_iter_next(ptr noundef nonnull %2) #25, !inline_history !54
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr i8, ptr %0, i64 28
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.07 = phi i64 [ 0, %.lr.ph ], [ %i.bj, %bb.i ] ; 2 uses
  %i.u = load i64, ptr %i.i, align 8, !tbaa !55   ; 7 uses
  %i.v = load i64, ptr %i.e, align 8, !tbaa !56   ; 3 uses
  %i.w = icmp slt i64 %i.u, 0
  br i1 %i.w, label %hdr_record_values.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = load i64, ptr %i.j, align 8, !tbaa !44
  %i.y = icmp slt i64 %i.x, %i.u
  br i1 %i.y, label %hdr_record_values.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load i64, ptr %i.k, align 8, !tbaa !9
  %i.aa = or i64 %i.z, %i.u
  %i.ab = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %i.ad = load i32, ptr %i.l, align 8, !tbaa !15  ; 2 uses
  %i.ae = load i32, ptr %i.m, align 8, !tbaa !16  ; 2 uses
  %i.af = add i32 %i.ae, %i.ad
  %i.ag = add i32 %i.af, %i.ac                    ; 2 uses
  %reass.sub.i.i = add i32 %i.ad, 63
  %i.ah = sub i32 %reass.sub.i.i, %i.ag
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = lshr i64 %i.u, %i.ai
  %i.ak = trunc i64 %i.aj to i32
  %.val7.i.i = load i32, ptr %i.n, align 4, !tbaa !17
  %i.al = sub i32 64, %i.ag
  %i.am = shl i32 %i.al, %i.ae
  %i.an = sub i32 %i.am, %.val7.i.i
  %i.ao = add i32 %i.an, %i.ak                    ; 4 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %hdr_record_values.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = load i32, ptr %i.o, align 8, !tbaa !19  ; 4 uses
  %.not.i = icmp sgt i32 %i.aq, %i.ao
  br i1 %.not.i, label %bb.f, label %hdr_record_values.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ar = load i32, ptr %i.p, align 8, !tbaa !40  ; 2 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = sub nsw i32 %i.ao, %i.ar                ; 3 uses
  %i.au = icmp slt i32 %i.at, 0
  %.not.i.i.i = icmp slt i32 %i.at, %i.aq
  %i.av = sub nsw i32 0, %i.aq
  %spec.select.i.i.i = select i1 %.not.i.i.i, i32 0, i32 %i.av
  %.0.i.i.i = select i1 %i.au, i32 %i.aq, i32 %spec.select.i.i.i
  %i.aw = add nsw i32 %.0.i.i.i, %i.at
  br label %bb.h

hdr_record_values.exit.thread:                    ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %i.ax = add nsw i64 %i.v, %.07
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %.011.i.i.i = phi i32 [ %i.aw, %bb.g ], [ %i.ao, %bb.f ]
  %i.ay = load ptr, ptr %i.q, align 8, !tbaa !21
  %i.az = sext i32 %.011.i.i.i to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.az ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !22
  %i.bc = add nsw i64 %i.bb, %i.v
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !22
  %i.bd = load i64, ptr %i.r, align 8, !tbaa !27
  %i.be = add nsw i64 %i.bd, %i.v
  store i64 %i.be, ptr %i.r, align 8, !tbaa !27
  %i.bf = load i64, ptr %i.s, align 8, !tbaa !26  ; 2 uses
  %.not.i.i = icmp eq i64 %i.u, 0
  %i.bg = call i64 @llvm.smin.i64(i64 range(i64 0, -9223372036854775808) %i.u, i64 %i.bf)
  %..i.i = select i1 %.not.i.i, i64 %i.bf, i64 %i.bg
  store i64 %..i.i, ptr %i.s, align 8, !tbaa !26
  %i.bh = load i64, ptr %i.t, align 8, !tbaa !20
  %i.bi = call i64 @llvm.smax.i64(i64 range(i64 0, -9223372036854775808) %i.u, i64 %i.bh)
  store i64 %i.bi, ptr %i.t, align 8, !tbaa !20
  br label %bb.i

bb.i:                                             ; preds = %hdr_record_values.exit.thread, %bb.h
  %i.bj = phi i64 [ %.07, %bb.h ], [ %i.ax, %hdr_record_values.exit.thread ] ; 2 uses
  %i.bk = load ptr, ptr %i.g, align 8, !tbaa !53
  %i.bl = call zeroext i1 %i.bk(ptr noundef nonnull %2) #25, !inline_history !54
  br i1 %i.bl, label %bb.b, label %._crit_edge, !llvm.loop !57

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.bj, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret i64 %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @hdr_iter_recorded_init(ptr nofree noundef writeonly captures(none) initializes((0, 12), (16, 56), (72, 96), (120, 128)) %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !49
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %i.a, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.c = load i64, ptr %i.b, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %i.d, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.h, align 8, !tbaa !58
  store ptr @recorded_iter_next, ptr %i.g, align 8, !tbaa !53
  ret void
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @hdr_iter_next(ptr noundef %0) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.c = tail call zeroext i1 %i.b(ptr noundef %0) #25
  ret i1 %i.c
}

; Function Attrs: nounwind uwtable
define hidden i64 @hdr_add_while_correcting_for_coordinated_omission(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #17 {
bb.a:
  %3 = alloca %struct.hdr_iter, align 8           ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %1, ptr %3, align 8, !tbaa !49
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 -1, ptr %i.a, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.c = load i64, ptr %i.b, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.c, ptr %i.d, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr @recorded_iter_next, ptr %i.g, align 8, !tbaa !53
  %i.h = call zeroext i1 @recorded_iter_next(ptr noundef nonnull %3) #25, !inline_history !54
  br i1 %i.h, label %.lr.ph, label %._crit_edge

end_hunk_0
