Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_crecord?download=true
inline.NumInlined: 64
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@recff_bit64_tobit:bb.a
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !30
  store i32 %.0, ptr %i.ag, align 4, !tbaa !31
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @recff_bit64_unary(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -352
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !34
  %.val = load i64, ptr %i.d, align 8, !tbaa !35  ; 2 uses
  %.mask.i = and i64 %.val, -140737488355328
  %i.e = icmp eq i64 %.mask.i, -1548112371908608
  br i1 %i.e, label %bb.b, label %crec_bit64_type.exit

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %.val, 140737488355327
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %i.i = load i16, ptr %i.h, align 2, !tbaa !35
  %i.j = zext i16 %i.i to i32
  %i.k = tail call ptr @lj_ctype_rawref(ptr noundef %i.c, i32 noundef %i.j) #8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !58   ; 3 uses
  %.mask9.i = and i32 %i.l, -268435456
  %i.m = icmp eq i32 %.mask9.i, 1342177280
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = and i32 %i.l, 65535
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.p = zext nneg i32 %i.n to i64
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %.pre.i = load i32, ptr %i.q, align 8, !tbaa !58
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi i32 [ %.pre.i, %bb.c ], [ %i.l, %bb.b ]
  %.0.i = phi ptr [ %i.q, %bb.c ], [ %i.k, %bb.b ]
  %i.s = and i32 %i.r, -58720256
  %i.t = icmp eq i32 %i.s, 8388608
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !60
  %i.w = icmp eq i32 %i.v, 8
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.1.i.ph = phi i32 [ 11, %bb.f ], [ 12, %bb.e ] ; 3 uses
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.y = zext nneg i32 %.1.i.ph to i64
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !30
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !31 ; 4 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !34    ; 3 uses
  %i.ae = and i32 %i.ac, 520093696
  %i.af = icmp eq i32 %i.ae, 67108864
  br i1 %i.af, label %bb.h, label %crec_bit64_arg.exit, !prof !62

bb.h:                                             ; preds = %bb.g
  %i.ag = load i64, ptr %i.ad, align 8, !tbaa !35
  %i.ah = and i64 %i.ag, 140737488355327
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = tail call i32 @lj_strscan_num(ptr noundef %i.ai, ptr noundef nonnull %i.ad) #8
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %crec_bit64_arg.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = trunc i32 %i.ac to i16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 24206, ptr %i.am, align 4, !tbaa !35
  store i16 %i.ak, ptr %i.al, align 8, !tbaa !35
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 0, ptr %i.an, align 2, !tbaa !35
  %i.ao = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %crec_bit64_arg.exit

crec_bit64_arg.exit:                              ; preds = %bb.g, %bb.h, %bb.i
  %.0.i21 = phi i32 [ %i.ao, %bb.i ], [ %i.ac, %bb.h ], [ %i.ac, %bb.g ]
  %i.ap = tail call fastcc i32 @crec_ct_tv(ptr noundef nonnull %0, ptr noundef nonnull %i.z, i32 noundef 0, i32 noundef %.0.i21, ptr noundef %i.ad)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !63
  %i.as = shl i32 %i.ar, 8
  %i.at = add nuw nsw i32 %.1.i.ph, 10
  %i.au = or disjoint i32 %i.as, %i.at
  %i.av = trunc i32 %i.au to i16
  %i.aw = trunc i32 %i.ap to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  store i16 %i.av, ptr %i.ay, align 4, !tbaa !35
  store i16 %i.aw, ptr %i.ax, align 8, !tbaa !35
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 2 uses
  store i16 0, ptr %i.az, align 2, !tbaa !35
  %i.ba = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.bb = tail call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef %.1.i.ph) #8
  %i.bc = trunc i32 %i.bb to i16
  %i.bd = trunc i32 %i.ba to i16
  store i16 21642, ptr %i.ay, align 4, !tbaa !35
  store i16 %i.bc, ptr %i.ax, align 8, !tbaa !35
  store i16 %i.bd, ptr %i.az, align 2, !tbaa !35
  %i.be = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.bf = load ptr, ptr %i.aa, align 8, !tbaa !30
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !31
  br label %crec_bit64_type.exit

crec_bit64_type.exit:                             ; preds = %bb.a, %crec_bit64_arg.exit
  %.0 = phi i32 [ 1, %crec_bit64_arg.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @recff_bit64_nary(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -352
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.f = load i32, ptr %i.e, align 4, !tbaa !31
  %.not52 = icmp eq i32 %i.f, 0
  br i1 %.not52, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %crec_bit64_type.exit
  %i.g = phi i64 [ %i.ae, %crec_bit64_type.exit ], [ 0, %bb.a ]
  %.04054 = phi i32 [ %i.ac, %crec_bit64_type.exit ], [ 0, %bb.a ]
  %.04153 = phi i32 [ %spec.select, %crec_bit64_type.exit ], [ 0, %bb.a ]
  %i.h = load ptr, ptr %1, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %.val = load i64, ptr %i.i, align 8, !tbaa !35  ; 2 uses
  %.mask.i = and i64 %.val, -140737488355328
  %i.j = icmp eq i64 %.mask.i, -1548112371908608
  br i1 %i.j, label %bb.b, label %crec_bit64_type.exit

bb.b:                                             ; preds = %.lr.ph
  %i.k = and i64 %.val, 140737488355327
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  %i.n = load i16, ptr %i.m, align 2, !tbaa !35
  %i.o = zext i16 %i.n to i32
  %i.p = tail call ptr @lj_ctype_rawref(ptr noundef %i.c, i32 noundef %i.o) #8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !58   ; 3 uses
  %.mask9.i = and i32 %i.q, -268435456
  %i.r = icmp eq i32 %.mask9.i, 1342177280
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = and i32 %i.q, 65535
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %.pre.i = load i32, ptr %i.v, align 8, !tbaa !58
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = phi i32 [ %.pre.i, %bb.c ], [ %i.q, %bb.b ]
  %.0.i = phi ptr [ %i.v, %bb.c ], [ %i.p, %bb.b ]
  %i.x = and i32 %i.w, -58720256
  %i.y = icmp eq i32 %i.x, 8388608
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !60
  %i.ab = icmp eq i32 %i.aa, 8
  br i1 %i.ab, label %crec_bit64_type.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %crec_bit64_type.exit

crec_bit64_type.exit:                             ; preds = %.lr.ph, %bb.e, %bb.f
  %.1.i = phi i32 [ 12, %bb.e ], [ 11, %bb.f ], [ 0, %.lr.ph ]
  %spec.select = tail call i32 @llvm.umax.i32(i32 %.04153, i32 %.1.i) ; 5 uses
  %i.ac = add i32 %.04054, 1                      ; 2 uses
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !30  ; 2 uses
  %i.ae = zext i32 %i.ac to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !31
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !131

._crit_edge:                                      ; preds = %crec_bit64_type.exit
  %.not45 = icmp eq i32 %spec.select, 0
  br i1 %.not45, label %._crit_edge.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.ai = zext nneg i32 %spec.select to i64
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !63
  %i.am = shl i32 %i.al, 8
  %i.an = add nuw nsw i32 %spec.select, 10
  %2 = or disjoint i32 %i.am, %i.an
  %i.ao = load i32, ptr %i.ad, align 4, !tbaa !31 ; 4 uses
  %i.ap = load ptr, ptr %1, align 8, !tbaa !34    ; 3 uses
  %i.aq = and i32 %i.ao, 520093696
  %i.ar = icmp eq i32 %i.aq, 67108864
  br i1 %i.ar, label %bb.h, label %crec_bit64_arg.exit, !prof !62

bb.h:                                             ; preds = %bb.g
  %i.as = load i64, ptr %i.ap, align 8, !tbaa !35
  %i.at = and i64 %i.as, 140737488355327
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = tail call i32 @lj_strscan_num(ptr noundef %i.au, ptr noundef nonnull %i.ap) #8
  %.not.i = icmp eq i32 %i.av, 0
  br i1 %.not.i, label %crec_bit64_arg.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = trunc i32 %i.ao to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 24206, ptr %i.ay, align 4, !tbaa !35
  store i16 %i.aw, ptr %i.ax, align 8, !tbaa !35
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 0, ptr %i.az, align 2, !tbaa !35
  %i.ba = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %crec_bit64_arg.exit

crec_bit64_arg.exit:                              ; preds = %bb.g, %bb.h, %bb.i
  %.0.i47 = phi i32 [ %i.ba, %bb.i ], [ %i.ao, %bb.h ], [ %i.ao, %bb.g ]
  %i.bb = tail call fastcc i32 @crec_ct_tv(ptr noundef nonnull %0, ptr noundef nonnull %i.aj, i32 noundef 0, i32 noundef %.0.i47, ptr noundef %i.ap) ; 2 uses
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !31 ; 2 uses
  %.not4656 = icmp eq i32 %i.be, 0
  br i1 %.not4656, label %._crit_edge60, label %.lr.ph59

.lr.ph59:                                         ; preds = %crec_bit64_arg.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 2 uses
  %i.bi = trunc i32 %2 to i16
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph59, %crec_bit64_arg.exit50
  %i.bj = phi i32 [ %i.be, %.lr.ph59 ], [ %i.cd, %crec_bit64_arg.exit50 ] ; 4 uses
  %i.bk = phi i64 [ 1, %.lr.ph59 ], [ %i.cb, %crec_bit64_arg.exit50 ]
  %.03958 = phi i32 [ %i.bb, %.lr.ph59 ], [ %i.by, %crec_bit64_arg.exit50 ]
  %.157 = phi i32 [ 1, %.lr.ph59 ], [ %i.bz, %crec_bit64_arg.exit50 ]
  %i.bl = load ptr, ptr %1, align 8, !tbaa !34
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bk ; 3 uses
  %i.bn = and i32 %i.bj, 520093696
  %i.bo = icmp eq i32 %i.bn, 67108864
  br i1 %i.bo, label %bb.k, label %crec_bit64_arg.exit50, !prof !62

bb.k:                                             ; preds = %bb.j
  %i.bp = load i64, ptr %i.bm, align 8, !tbaa !35
  %i.bq = and i64 %i.bp, 140737488355327
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = tail call i32 @lj_strscan_num(ptr noundef %i.br, ptr noundef nonnull %i.bm) #8
  %.not.i49 = icmp eq i32 %i.bs, 0
  br i1 %.not.i49, label %crec_bit64_arg.exit50, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = trunc i32 %i.bj to i16
  store i16 24206, ptr %i.bg, align 4, !tbaa !35
  store i16 %i.bt, ptr %i.bf, align 8, !tbaa !35
  store i16 0, ptr %i.bh, align 2, !tbaa !35
  %i.bu = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %crec_bit64_arg.exit50

crec_bit64_arg.exit50:                            ; preds = %bb.j, %bb.k, %bb.l
  %.0.i48 = phi i32 [ %i.bu, %bb.l ], [ %i.bj, %bb.k ], [ %i.bj, %bb.j ]
  %i.bv = tail call fastcc i32 @crec_ct_tv(ptr noundef nonnull %0, ptr noundef nonnull %i.aj, i32 noundef 0, i32 noundef %.0.i48, ptr noundef %i.bm)
  %i.bw = trunc i32 %.03958 to i16
  %i.bx = trunc i32 %i.bv to i16
  store i16 %i.bi, ptr %i.bg, align 4, !tbaa !35
  store i16 %i.bw, ptr %i.bf, align 8, !tbaa !35
  store i16 %i.bx, ptr %i.bh, align 2, !tbaa !35
  %i.by = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 2 uses
  %i.bz = add i32 %.157, 1                        ; 2 uses
  %i.ca = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.cb = zext i32 %i.bz to i64                   ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !31 ; 2 uses
  %.not46 = icmp eq i32 %i.cd, 0
  br i1 %.not46, label %._crit_edge60, label %bb.j, !llvm.loop !132

._crit_edge60:                                    ; preds = %crec_bit64_arg.exit50, %crec_bit64_arg.exit
  %.039.lcssa = phi i32 [ %i.bb, %crec_bit64_arg.exit ], [ %i.by, %crec_bit64_arg.exit50 ]
  %i.ce = tail call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef %spec.select) #8
  %i.cf = trunc i32 %i.ce to i16
  %i.cg = trunc i32 %.039.lcssa to i16
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 21642, ptr %i.ci, align 4, !tbaa !35
  store i16 %i.cf, ptr %i.ch, align 8, !tbaa !35
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %i.cg, ptr %i.cj, align 2, !tbaa !35
  %i.ck = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.cl = load ptr, ptr %i.d, align 8, !tbaa !30
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !31
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge, %._crit_edge60
  %.0 = phi i32 [ 1, %._crit_edge60 ], [ 0, %._crit_edge ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @recff_bit64_shift(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -352
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = load i32, ptr %1, align 4, !tbaa !31
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %2, align 4, !tbaa !31     ; 2 uses
  %i.f = and i32 %i.e, 520093696
  %i.g = icmp eq i32 %i.f, 167772160
  br i1 %i.g, label %crec_bit64_arg.exit, label %bb.c

crec_bit64_arg.exit:                              ; preds = %bb.b
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 264
  %i.j = tail call fastcc i32 @crec_ct_tv(ptr noundef nonnull %0, ptr noundef nonnull %i.i, i32 noundef 0, i32 noundef %i.e, ptr noundef %4) ; 2 uses
  store i32 %i.j, ptr %2, align 4, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %crec_bit64_arg.exit, %bb.b, %bb.a
  %.0 = phi i32 [ %i.j, %crec_bit64_arg.exit ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.val = load i64, ptr %3, align 8, !tbaa !35    ; 2 uses
  %.mask.i = and i64 %.val, -140737488355328
  %i.k = icmp eq i64 %.mask.i, -1548112371908608
  br i1 %i.k, label %bb.d, label %crec_bit64_type.exit

bb.d:                                             ; preds = %bb.c
  %i.l = and i64 %.val, 140737488355327
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 10
  %i.o = load i16, ptr %i.n, align 2, !tbaa !35
  %i.p = zext i16 %i.o to i32
  %i.q = tail call ptr @lj_ctype_rawref(ptr noundef %i.c, i32 noundef %i.p) #8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !58   ; 3 uses
  %.mask9.i = and i32 %i.r, -268435456
  %i.s = icmp eq i32 %.mask9.i, 1342177280
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = and i32 %i.r, 65535
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.v = zext nneg i32 %i.t to i64
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %.pre.i = load i32, ptr %i.w, align 8, !tbaa !58
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = phi i32 [ %.pre.i, %bb.e ], [ %i.r, %bb.d ]
  %.0.i39 = phi ptr [ %i.w, %bb.e ], [ %i.q, %bb.d ]
  %i.y = and i32 %i.x, -58720256
  %i.z = icmp eq i32 %i.y, 8388608
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i39, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !60
  %i.ac = icmp eq i32 %i.ab, 8
  br i1 %i.ac, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.1.i.ph = phi i32 [ 11, %bb.h ], [ 12, %bb.g ] ; 3 uses
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.ae = zext nneg i32 %.1.i.ph to i64
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = load i32, ptr %1, align 4, !tbaa !31    ; 4 uses
  %i.ah = and i32 %i.ag, 520093696
  %i.ai = icmp eq i32 %i.ah, 67108864
  br i1 %i.ai, label %bb.j, label %crec_bit64_arg.exit42, !prof !62

bb.j:                                             ; preds = %bb.i
  %i.aj = load i64, ptr %3, align 8, !tbaa !35
  %i.ak = and i64 %i.aj, 140737488355327
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = tail call i32 @lj_strscan_num(ptr noundef %i.al, ptr noundef nonnull %3) #8
  %.not.i41 = icmp eq i32 %i.am, 0
  br i1 %.not.i41, label %crec_bit64_arg.exit42, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = trunc i32 %i.ag to i16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 24206, ptr %i.ap, align 4, !tbaa !35
  store i16 %i.an, ptr %i.ao, align 8, !tbaa !35
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 0, ptr %i.aq, align 2, !tbaa !35
  %i.ar = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %crec_bit64_arg.exit42
end_hunk_0
