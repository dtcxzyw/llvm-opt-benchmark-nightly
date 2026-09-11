Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_record?download=true
inline.NumInlined: 71
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@rec_mm_callcomp:bb.a
  store i32 %i.q, ptr %i.u, align 4, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 131072, ptr %i.v, align 4, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 4 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !31
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !36  ; 3 uses
  %i.ab = icmp ult i32 %i.aa, %i.o
  br i1 %i.ab, label %.lr.ph.preheader.i, label %rec_mm_prep.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.ac = zext nneg i32 %i.aa to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %scevgep.i = getelementptr i8, ptr %i.s, i64 %i.ad
  %i.ae = xor i32 %i.aa, -1
  %i.af = add nsw i32 %i.ae, %i.o
  %i.ag = zext i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = add nuw nsw i64 %i.ah, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.ai, i1 false), !tbaa !37
  br label %rec_mm_prep.exit

rec_mm_prep.exit:                                 ; preds = %bb.a, %.lr.ph.preheader.i
  %i.aj = add nuw nsw i32 %i.o, 2                 ; 2 uses
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ak ; 3 uses
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !46
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ak ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !50
  store i32 %i.ar, ptr %i.al, align 4, !tbaa !37
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !75
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 %i.at, ptr %i.au, align 4, !tbaa !37
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !74
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !37
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !9
  store i64 %i.az, ptr %i.ap, align 8, !tbaa !9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !9
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !9
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !9
  tail call fastcc void @rec_call_setup(ptr noundef nonnull %0, i32 noundef %i.aj, i64 noundef 2), !inline_history !77
  %i.bg = load i32, ptr %i.w, align 4, !tbaa !31
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.w, align 4, !tbaa !31
  %i.bi = add nuw nsw i32 %i.o, 4                 ; 2 uses
  %i.bj = load ptr, ptr %i.r, align 8, !tbaa !42
  %i.bk = zext nneg i32 %i.bi to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bk
  store ptr %i.bl, ptr %i.r, align 8, !tbaa !42
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !35
  %i.bo = add i32 %i.bn, %i.bi                    ; 2 uses
  store i32 %i.bo, ptr %i.bm, align 8, !tbaa !35
  %i.bp = load i32, ptr %i.z, align 4, !tbaa !36
  %i.bq = add i32 %i.bp, %i.bo
  %i.br = icmp ugt i32 %i.bq, 249
  br i1 %i.br, label %bb.b, label %lj_record_call.exit

bb.b:                                             ; preds = %rec_mm_prep.exit
  tail call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 3) #9, !inline_history !77
  unreachable

lj_record_call.exit:                              ; preds = %rec_mm_prep.exit
  ret void
}

declare hidden void @lj_cont_condf() #2

declare hidden void @lj_cont_condt() #2

declare hidden i32 @lj_ir_kint64(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden i32 @lj_ffrecord_select_mode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @lj_meta_for(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden i32 @lj_opt_narrow_forl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @rec_for_check(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #0 {
bb.a:
  %i.a = trunc i32 %4 to i16                      ; 4 uses
  %i.b = and i32 %4, 32768
  %.not.not = icmp eq i32 %i.b, 0
  br i1 %.not.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %1, 19                       ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @lj_ir_kint(ptr noundef %0, i32 noundef 0) #8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = tail call i32 @lj_ir_knum_u64(ptr noundef %0, i64 noundef 0) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = phi i32 [ %i.d, %bb.c ], [ %i.e, %bb.d ]
  %.not.not50 = icmp eq i32 %2, 0
  %i.g = shl nuw nsw i32 %2, 8
  %i.h = or i32 %1, %i.g
  %i.i = trunc i32 %i.h to i16
  %i.j = or i16 %i.i, 128
  %i.k = trunc i32 %i.f to i16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 5 uses
  store i16 %i.j, ptr %i.m, align 4, !tbaa !9
  store i16 %i.a, ptr %i.l, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 5 uses
  store i16 %i.k, ptr %i.n, align 2, !tbaa !9
  %i.o = tail call i32 @lj_opt_fold(ptr noundef %0) #8 ; 0 uses
  %i.p = icmp ne i32 %5, 0
  %or.cond = and i1 %i.c, %i.p
  br i1 %or.cond, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.q = and i32 %3, 32768
  %.not.not51 = icmp eq i32 %i.q, 0
  br i1 %.not.not51, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !38
  %.mask = and i32 %3, 32767
  %i.t = zext nneg i32 %.mask to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i32, ptr %i.u, align 8, !tbaa !9    ; 4 uses
  br i1 %.not.not50, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.x = sub nuw nsw i32 2147483647, %i.v
  %i.y = tail call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef %i.x) #8
  %i.z = trunc i32 %i.y to i16
  store i16 659, ptr %i.m, align 4, !tbaa !9
  store i16 %i.a, ptr %i.l, align 8, !tbaa !9
  store i16 %i.z, ptr %i.n, align 2, !tbaa !9
  br label %.sink.split

bb.j:                                             ; preds = %bb.g
  %i.aa = icmp slt i32 %i.v, 0
  br i1 %i.aa, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ab = sub nsw i32 -2147483648, %i.v
  %i.ac = tail call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef %i.ab) #8
  %i.ad = trunc i32 %i.ac to i16
  store i16 403, ptr %i.m, align 4, !tbaa !9
  store i16 %i.a, ptr %i.l, align 8, !tbaa !9
  store i16 %i.ad, ptr %i.n, align 2, !tbaa !9
  br label %.sink.split

bb.l:                                             ; preds = %bb.f
  %i.ae = trunc i32 %3 to i16
  store i16 13715, ptr %i.m, align 4, !tbaa !9
  store i16 %i.a, ptr %i.l, align 8, !tbaa !9
  store i16 %i.ae, ptr %i.n, align 2, !tbaa !9
  %i.af = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.ag = trunc i32 %i.af to i16
  store i16 4627, ptr %i.m, align 4, !tbaa !9
  store i16 %i.ag, ptr %i.l, align 8, !tbaa !9
  store i16 0, ptr %i.n, align 2, !tbaa !9
  br label %.sink.split

bb.m:                                             ; preds = %bb.a
  %i.ah = icmp eq i32 %5, 0
  %i.ai = icmp ne i32 %1, 19
  %or.cond3.not57 = or i1 %i.ai, %i.ah
  %i.aj = and i32 %3, 32768
  %.not.not52 = icmp eq i32 %i.aj, 0
  %or.cond54 = or i1 %.not.not52, %or.cond3.not57
  br i1 %or.cond54, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = trunc i32 %3 to i16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !38
  %.mask53 = and i32 %4, 32767
  %i.an = zext nneg i32 %.mask53 to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !9
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  %6 = select i1 %.not, i32 -2147483648, i32 2147483647
  %7 = sub nsw i32 %6, %i.ap
  %8 = select i1 %.not, i16 403, i16 659
  %i.aq = tail call i32 @lj_ir_kint(ptr noundef %0, i32 noundef %7) #8
  %i.ar = trunc i32 %i.aq to i16
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 %8, ptr %i.at, align 4, !tbaa !9
  store i16 %i.ak, ptr %i.as, align 8, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %i.ar, ptr %i.au, align 2, !tbaa !9
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.i, %bb.k, %bb.l
  %i.av = tail call i32 @lj_opt_fold(ptr noundef %0) #8 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.e, %bb.j, %bb.h, %bb.m
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nounwind uwtable
define internal fastcc void @check_call_unroll(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9
  %i.g = and i64 %i.f, 140737488355327
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.l = load i32, ptr %i.k, align 4, !tbaa !31   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 61
  %i.p = load i8, ptr %i.o, align 1, !tbaa !52
  %i.q = shl i8 %i.p, 6
  %sext = ashr i8 %i.q, 7
  %i.r = sext i8 %sext to i32
  %spec.select = add nsw i32 %i.l, %i.r           ; 2 uses
  %i.s = icmp sgt i32 %spec.select, 0
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.t = getelementptr inbounds i8, ptr %i.d, i64 -8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.047 = phi i32 [ %spec.select44, %bb.d ], [ 0, %.lr.ph.preheader ]
  %.13846 = phi i32 [ %i.av, %bb.d ], [ %spec.select, %.lr.ph.preheader ]
  %.03945 = phi ptr [ %i.am, %bb.d ], [ %i.t, %.lr.ph.preheader ] ; 3 uses
  %i.u = load i64, ptr %.03945, align 8, !tbaa !9 ; 4 uses
  %i.v = and i64 %i.u, 7
  %i.w = icmp eq i64 %i.v, 2
  %i.x = sext i1 %i.w to i32
  %i.y = and i64 %i.u, 3
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.aa = inttoptr i64 %i.u to ptr
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !37
  %i.ad = lshr i32 %i.ac, 8
  %i.ae = and i32 %i.ad, 255
  %i.af = add nuw nsw i32 %i.ae, 2
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds [8 x i8], ptr %.03945, i64 %i.ah
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.aj = and i64 %i.u, -8
  %i.ak = sub i64 0, %i.aj
  %i.al = getelementptr inbounds i8, ptr %.03945, i64 %i.ak
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.am = phi ptr [ %i.ai, %bb.b ], [ %i.al, %bb.c ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !9
  %i.ap = and i64 %i.ao, 140737488355327
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !9
  %i.at = icmp eq i64 %i.as, %i.j
  %i.au = zext i1 %i.at to i32
  %spec.select44 = add nuw nsw i32 %.047, %i.au   ; 2 uses
  %spec.select43 = add nsw i32 %.13846, -1
  %i.av = add nsw i32 %spec.select43, %i.x        ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph, label %._crit_edge, !llvm.loop !205

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select44, %bb.d ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !56 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !70
  %i.bb = icmp eq ptr %i.ay, %i.ba
  br i1 %i.bb, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !53
  %i.be = add nsw i32 %i.bd, %.0.lcssa
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1684
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !37
  %i.bh = icmp sgt i32 %i.be, %i.bg
  br i1 %i.bh, label %.sink.split, label %bb.j

.sink.split:                                      ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store ptr %i.bi, ptr %i.ax, align 8, !tbaa !56
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !32
  %i.bl = sub i32 0, %i.bk
  %i.bm = icmp eq i32 %i.l, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bo = load i16, ptr %i.bn, align 8, !tbaa !30
  %i.bp = zext i16 %i.bo to i32
  %. = select i1 %i.bm, i32 3, i32 4
  tail call void @lj_record_stop(ptr noundef nonnull %0, i32 noundef %., i32 noundef %i.bp)
  br label %bb.j

bb.f:                                             ; preds = %._crit_edge
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1680
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !37
  %i.bs = icmp sgt i32 %.0.lcssa, %i.br
  br i1 %i.bs, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.not42 = icmp eq i32 %1, 0
  br i1 %.not42, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lj_trace_flush(ptr noundef nonnull %0, i32 noundef %1) #8
  %i.bt = getelementptr inbounds i8, ptr %0, i64 -344
  %i.bu = tail call i64 @lj_prng_u64(ptr noundef nonnull %i.bt) #8
  %i.bv = trunc i64 %i.bu to i16
  %i.bw = and i16 %i.bv, 15
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 3128
  %i.by = load ptr, ptr %i.ax, align 8, !tbaa !56
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = lshr i64 %i.ca, 2
  %i.cc = and i64 %i.cb, 63
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.cc
  store i16 %i.bw, ptr %i.cd, align 2, !tbaa !94
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 13) #9
  unreachable

bb.j:                                             ; preds = %.sink.split, %bb.f, %bb.e
  ret void
}

declare hidden void @lj_trace_flush(ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden i64 @lj_prng_u64(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @find_kinit(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef range(i32 0, 258) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 5 uses
  %.05072 = getelementptr inbounds i8, ptr %1, i64 -4 ; 2 uses
  %i.d = icmp ugt ptr %.05072, %i.c
  br i1 %i.d, label %.lr.ph, label %.thread65

.lr.ph:                                           ; preds = %bb.a, %.lr.ph.backedge
  %.05073 = phi ptr [ %.05073.be, %.lr.ph.backedge ], [ %.05072, %bb.a ] ; 6 uses
  %i.e = load i32, ptr %.05073, align 4, !tbaa !37 ; 5 uses
  %i.f = and i32 %i.e, 255                        ; 3 uses
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [2 x i8], ptr @lj_bc_mode, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !94
  %i.j = and i16 %i.i, 7
  switch i16 %i.j, label %.thread [
    i16 2, label %bb.b
    i16 1, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.k = lshr i32 %i.e, 8
  %i.l = and i32 %i.k, 255
  %.not = icmp samesign ugt i32 %i.l, %2
  %.050 = getelementptr inbounds i8, ptr %.05073, i64 -4 ; 2 uses
  %i.m = icmp ugt ptr %.050, %i.c
  %or.cond77 = select i1 %.not, i1 %i.m, i1 false
  br i1 %or.cond77, label %.lr.ph.backedge, label %.thread65

bb.c:                                             ; preds = %.lr.ph
  %i.n = lshr i32 %i.e, 8
  %i.o = and i32 %i.n, 255
  %i.p = icmp eq i32 %i.o, %2
  br i1 %i.p, label %bb.d, label %.thread

end_hunk_0
