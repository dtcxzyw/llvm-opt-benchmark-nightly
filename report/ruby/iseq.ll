inline.NumInlined: 615
inline.NumDeleted: 145
begin_hunk_0_@rb_iseq_load:bb.a
  %i.o = tail call i64 @rb_num2long(i64 noundef %i.m) #20 ; 0 uses
  br label %CHECK_INTEGER.exit66.i

CHECK_INTEGER.exit66.i:                           ; preds = %bb.c, %CHECK_INTEGER.exit.i
  %i.p = tail call i64 @rb_ary_entry(i64 noundef %i.g, i64 noundef 3) #24 ; 2 uses
  %i.q = trunc i64 %i.p to i1
  br i1 %i.q, label %CHECK_INTEGER.exit67.i, label %bb.d

bb.d:                                             ; preds = %CHECK_INTEGER.exit66.i
  %i.r = tail call i64 @rb_num2long(i64 noundef %i.p) #20 ; 0 uses
  br label %CHECK_INTEGER.exit67.i

CHECK_INTEGER.exit67.i:                           ; preds = %bb.d, %CHECK_INTEGER.exit66.i
  %i.s = tail call i64 @rb_ary_entry(i64 noundef %i.g, i64 noundef 4) #24
  %i.t = tail call i64 @rb_to_hash_type(i64 noundef %i.s) #20 ; 4 uses
  %i.u = tail call i64 @rb_ary_entry(i64 noundef %i.g, i64 noundef 5) #24
  %i.v = tail call i64 @rb_str_to_str(i64 noundef %i.u) #20
  %i.w = tail call i64 @rb_ary_entry(i64 noundef %i.g, i64 noundef 6) #24
  %i.x = tail call i64 @rb_str_to_str(i64 noundef %i.w) #20
  %i.y = tail call i64 @rb_ary_entry(i64 noundef %i.g, i64 noundef 7) #24 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %CHECK_INTEGER.exit67.i
  %i.aa = tail call i64 @rb_str_to_str(i64 noundef %i.y) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %CHECK_INTEGER.exit67.i
  %i.ab = phi i64 [ %i.aa, %bb.e ], [ 4, %CHECK_INTEGER.exit67.i ]
  %i.ac = tail call i64 @rb_ary_entry(i64 noundef %i.g, i64 noundef 8) #24 ; 3 uses
  %i.ad = trunc i64 %i.ac to i1
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call i64 @rb_fix2int(i64 noundef %i.ac) #20
  br label %rb_num2int_inline.exit.i

bb.h:                                             ; preds = %bb.f
  %i.af = tail call i64 @rb_num2int(i64 noundef %i.ac) #20
  br label %rb_num2int_inline.exit.i

rb_num2int_inline.exit.i:                         ; preds = %bb.h, %bb.g
  %.0.i68.i = phi i64 [ %i.ae, %bb.g ], [ %i.af, %bb.h ]
  %i.ag = tail call i64 @rb_ary_entry(i64 noundef %i.g, i64 noundef 9) #24
  %i.ah = tail call i64 @rb_to_symbol_type(i64 noundef %i.ag) #20 ; 2 uses
  %i.ai = tail call i64 @rb_ary_entry(i64 noundef %i.g, i64 noundef 10) #24
  %i.aj = tail call i64 @rb_to_array_type(i64 noundef %i.ai) #20
  %i.ak = tail call i64 @rb_ary_entry(i64 noundef %i.g, i64 noundef 11) #24
  %i.al = tail call i64 @rb_to_hash_type(i64 noundef %i.ak) #20
  %i.am = tail call i64 @rb_ary_entry(i64 noundef %i.g, i64 noundef 12) #24
  %i.an = tail call i64 @rb_to_array_type(i64 noundef %i.am) #20
  %i.ao = tail call i64 @rb_ary_entry(i64 noundef %i.g, i64 noundef 13) #24
  %i.ap = tail call i64 @rb_to_array_type(i64 noundef %i.ao) #20
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ar = getelementptr i8, ptr %i.aq, i64 176
  store ptr %i.c, ptr %i.ar, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.ah, ptr %i.a, align 8, !tbaa !11
  %.pr.i.i.i = load i64, ptr @iseq_type_from_sym.rbimpl_id, align 8, !tbaa !11 ; 2 uses
  %.not4.i.i.i = icmp eq i64 %.pr.i.i.i, 0
  br i1 %.not4.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %rb_num2int_inline.exit.i, %.lr.ph.i.i.i
  %i.as = tail call i64 @rb_intern2(ptr noundef nonnull @.str.121, i64 noundef 3) #20 ; 3 uses
  store i64 %i.as, ptr @iseq_type_from_sym.rbimpl_id, align 8, !tbaa !11
  %.not.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i, !llvm.loop !272

rbimpl_intern_const.exit.i.i:                     ; preds = %.lr.ph.i.i.i, %rb_num2int_inline.exit.i
  %.lcssa.i.i.i = phi i64 [ %.pr.i.i.i, %rb_num2int_inline.exit.i ], [ %i.as, %.lr.ph.i.i.i ]
  %.pr.i29.i.i = load i64, ptr @iseq_type_from_sym.rbimpl_id.122, align 8, !tbaa !11 ; 2 uses
  %.not4.i30.i.i = icmp eq i64 %.pr.i29.i.i, 0
  br i1 %.not4.i30.i.i, label %.lr.ph.i32.i.i, label %rbimpl_intern_const.exit34.i.i

.lr.ph.i32.i.i:                                   ; preds = %rbimpl_intern_const.exit.i.i, %.lr.ph.i32.i.i
  %i.at = tail call i64 @rb_intern2(ptr noundef nonnull @.str.123, i64 noundef 6) #20 ; 3 uses
  store i64 %i.at, ptr @iseq_type_from_sym.rbimpl_id.122, align 8, !tbaa !11
  %.not.i33.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.i33.i.i, label %.lr.ph.i32.i.i, label %rbimpl_intern_const.exit34.i.i, !llvm.loop !272

rbimpl_intern_const.exit34.i.i:                   ; preds = %.lr.ph.i32.i.i, %rbimpl_intern_const.exit.i.i
  %.lcssa.i31.i.i = phi i64 [ %.pr.i29.i.i, %rbimpl_intern_const.exit.i.i ], [ %i.at, %.lr.ph.i32.i.i ]
  %.pr.i35.i.i = load i64, ptr @iseq_type_from_sym.rbimpl_id.124, align 8, !tbaa !11 ; 2 uses
  %.not4.i36.i.i = icmp eq i64 %.pr.i35.i.i, 0
  br i1 %.not4.i36.i.i, label %.lr.ph.i38.i.i, label %rbimpl_intern_const.exit40.i.i

.lr.ph.i38.i.i:                                   ; preds = %rbimpl_intern_const.exit34.i.i, %.lr.ph.i38.i.i
  %i.au = tail call i64 @rb_intern2(ptr noundef nonnull @.str.67, i64 noundef 5) #20 ; 3 uses
  store i64 %i.au, ptr @iseq_type_from_sym.rbimpl_id.124, align 8, !tbaa !11
  %.not.i39.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i39.i.i, label %.lr.ph.i38.i.i, label %rbimpl_intern_const.exit40.i.i, !llvm.loop !272

rbimpl_intern_const.exit40.i.i:                   ; preds = %.lr.ph.i38.i.i, %rbimpl_intern_const.exit34.i.i
  %.lcssa.i37.i.i = phi i64 [ %.pr.i35.i.i, %rbimpl_intern_const.exit34.i.i ], [ %i.au, %.lr.ph.i38.i.i ]
  %.pr.i41.i.i = load i64, ptr @iseq_type_from_sym.rbimpl_id.125, align 8, !tbaa !11 ; 2 uses
  %.not4.i42.i.i = icmp eq i64 %.pr.i41.i.i, 0
  br i1 %.not4.i42.i.i, label %.lr.ph.i44.i.i, label %rbimpl_intern_const.exit46.i.i

.lr.ph.i44.i.i:                                   ; preds = %rbimpl_intern_const.exit40.i.i, %.lr.ph.i44.i.i
  %i.av = tail call i64 @rb_intern2(ptr noundef nonnull @.str.126, i64 noundef 5) #20 ; 3 uses
  store i64 %i.av, ptr @iseq_type_from_sym.rbimpl_id.125, align 8, !tbaa !11
  %.not.i45.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i45.i.i, label %.lr.ph.i44.i.i, label %rbimpl_intern_const.exit46.i.i, !llvm.loop !272

rbimpl_intern_const.exit46.i.i:                   ; preds = %.lr.ph.i44.i.i, %rbimpl_intern_const.exit40.i.i
  %.lcssa.i43.i.i = phi i64 [ %.pr.i41.i.i, %rbimpl_intern_const.exit40.i.i ], [ %i.av, %.lr.ph.i44.i.i ]
  %.pr.i47.i.i = load i64, ptr @iseq_type_from_sym.rbimpl_id.127, align 8, !tbaa !11 ; 2 uses
  %.not4.i48.i.i = icmp eq i64 %.pr.i47.i.i, 0
  br i1 %.not4.i48.i.i, label %.lr.ph.i50.i.i, label %rbimpl_intern_const.exit52.i.i

.lr.ph.i50.i.i:                                   ; preds = %rbimpl_intern_const.exit46.i.i, %.lr.ph.i50.i.i
  %i.aw = tail call i64 @rb_intern2(ptr noundef nonnull @.str.128, i64 noundef 6) #20 ; 3 uses
  store i64 %i.aw, ptr @iseq_type_from_sym.rbimpl_id.127, align 8, !tbaa !11
  %.not.i51.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i51.i.i, label %.lr.ph.i50.i.i, label %rbimpl_intern_const.exit52.i.i, !llvm.loop !272

rbimpl_intern_const.exit52.i.i:                   ; preds = %.lr.ph.i50.i.i, %rbimpl_intern_const.exit46.i.i
  %.lcssa.i49.i.i = phi i64 [ %.pr.i47.i.i, %rbimpl_intern_const.exit46.i.i ], [ %i.aw, %.lr.ph.i50.i.i ]
  %.pr.i53.i.i = load i64, ptr @iseq_type_from_sym.rbimpl_id.129, align 8, !tbaa !11 ; 2 uses
  %.not4.i54.i.i = icmp eq i64 %.pr.i53.i.i, 0
  br i1 %.not4.i54.i.i, label %.lr.ph.i56.i.i, label %rbimpl_intern_const.exit58.i.i

.lr.ph.i56.i.i:                                   ; preds = %rbimpl_intern_const.exit52.i.i, %.lr.ph.i56.i.i
  %i.ax = tail call i64 @rb_intern2(ptr noundef nonnull @.str.130, i64 noundef 6) #20 ; 3 uses
  store i64 %i.ax, ptr @iseq_type_from_sym.rbimpl_id.129, align 8, !tbaa !11
  %.not.i57.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i57.i.i, label %.lr.ph.i56.i.i, label %rbimpl_intern_const.exit58.i.i, !llvm.loop !272

rbimpl_intern_const.exit58.i.i:                   ; preds = %.lr.ph.i56.i.i, %rbimpl_intern_const.exit52.i.i
  %.lcssa.i55.i.i = phi i64 [ %.pr.i53.i.i, %rbimpl_intern_const.exit52.i.i ], [ %i.ax, %.lr.ph.i56.i.i ]
  %.pr.i59.i.i = load i64, ptr @iseq_type_from_sym.rbimpl_id.131, align 8, !tbaa !11 ; 2 uses
  %.not4.i60.i.i = icmp eq i64 %.pr.i59.i.i, 0
  br i1 %.not4.i60.i.i, label %.lr.ph.i62.i.i, label %rbimpl_intern_const.exit64.i.i

.lr.ph.i62.i.i:                                   ; preds = %rbimpl_intern_const.exit58.i.i, %.lr.ph.i62.i.i
  %i.ay = tail call i64 @rb_intern2(ptr noundef nonnull @.str.85, i64 noundef 4) #20 ; 3 uses
  store i64 %i.ay, ptr @iseq_type_from_sym.rbimpl_id.131, align 8, !tbaa !11
  %.not.i63.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i63.i.i, label %.lr.ph.i62.i.i, label %rbimpl_intern_const.exit64.i.i, !llvm.loop !272

rbimpl_intern_const.exit64.i.i:                   ; preds = %.lr.ph.i62.i.i, %rbimpl_intern_const.exit58.i.i
  %.lcssa.i61.i.i = phi i64 [ %.pr.i59.i.i, %rbimpl_intern_const.exit58.i.i ], [ %i.ay, %.lr.ph.i62.i.i ]
  %.pr.i65.i.i = load i64, ptr @iseq_type_from_sym.rbimpl_id.132, align 8, !tbaa !11 ; 2 uses
  %.not4.i66.i.i = icmp eq i64 %.pr.i65.i.i, 0
  br i1 %.not4.i66.i.i, label %.lr.ph.i68.i.i, label %rbimpl_intern_const.exit70.i.i

.lr.ph.i68.i.i:                                   ; preds = %rbimpl_intern_const.exit64.i.i, %.lr.ph.i68.i.i
  %i.az = tail call i64 @rb_intern2(ptr noundef nonnull @.str.133, i64 noundef 4) #20 ; 3 uses
  store i64 %i.az, ptr @iseq_type_from_sym.rbimpl_id.132, align 8, !tbaa !11
  %.not.i69.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i69.i.i, label %.lr.ph.i68.i.i, label %rbimpl_intern_const.exit70.i.i, !llvm.loop !272

rbimpl_intern_const.exit70.i.i:                   ; preds = %.lr.ph.i68.i.i, %rbimpl_intern_const.exit64.i.i
  %.lcssa.i67.i.i = phi i64 [ %.pr.i65.i.i, %rbimpl_intern_const.exit64.i.i ], [ %i.az, %.lr.ph.i68.i.i ]
  %.pr.i71.i.i = load i64, ptr @iseq_type_from_sym.rbimpl_id.134, align 8, !tbaa !11 ; 2 uses
  %.not4.i72.i.i = icmp eq i64 %.pr.i71.i.i, 0
  br i1 %.not4.i72.i.i, label %.lr.ph.i74.i.i, label %rbimpl_intern_const.exit76.i.i

.lr.ph.i74.i.i:                                   ; preds = %rbimpl_intern_const.exit70.i.i, %.lr.ph.i74.i.i
  %i.ba = tail call i64 @rb_intern2(ptr noundef nonnull @.str.135, i64 noundef 5) #20 ; 3 uses
  store i64 %i.ba, ptr @iseq_type_from_sym.rbimpl_id.134, align 8, !tbaa !11
  %.not.i75.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i75.i.i, label %.lr.ph.i74.i.i, label %rbimpl_intern_const.exit76.i.i, !llvm.loop !272

rbimpl_intern_const.exit76.i.i:                   ; preds = %.lr.ph.i74.i.i, %rbimpl_intern_const.exit70.i.i
  %.lcssa.i73.i.i = phi i64 [ %.pr.i71.i.i, %rbimpl_intern_const.exit70.i.i ], [ %i.ba, %.lr.ph.i74.i.i ]
  %i.bb = call i64 @rb_check_id(ptr noundef nonnull %i.a) #20 ; 9 uses
  %i.bc = icmp eq i64 %i.bb, %.lcssa.i.i.i
  br i1 %i.bc, label %select.unfold.i, label %bb.i

bb.i:                                             ; preds = %rbimpl_intern_const.exit76.i.i
  %i.bd = icmp eq i64 %i.bb, %.lcssa.i31.i.i
  br i1 %i.bd, label %select.unfold.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = icmp eq i64 %i.bb, %.lcssa.i37.i.i
  br i1 %i.be, label %select.unfold.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = icmp eq i64 %i.bb, %.lcssa.i43.i.i
  br i1 %i.bf, label %select.unfold.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = icmp eq i64 %i.bb, %.lcssa.i49.i.i
  br i1 %i.bg, label %select.unfold.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = icmp eq i64 %i.bb, %.lcssa.i55.i.i
  br i1 %i.bh, label %select.unfold.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = icmp eq i64 %i.bb, %.lcssa.i61.i.i
  br i1 %i.bi, label %select.unfold.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = icmp eq i64 %i.bb, %.lcssa.i67.i.i
  br i1 %i.bj, label %select.unfold.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = icmp eq i64 %i.bb, %.lcssa.i73.i.i
  br i1 %i.bk, label %select.unfold.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.bm = call i64 @rb_sym2str(i64 noundef %i.ah) #20
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bl, ptr noundef nonnull @.str.113, i64 noundef %i.bm) #22
  unreachable

select.unfold.i:                                  ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %rbimpl_intern_const.exit76.i.i
  %.0.i69.ph.i = phi i32 [ 7, %bb.o ], [ 6, %bb.n ], [ 5, %bb.m ], [ 4, %bb.l ], [ 3, %bb.k ], [ 2, %bb.j ], [ 1, %bb.i ], [ 0, %rbimpl_intern_const.exit76.i.i ], [ 8, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pr.i.i = load i64, ptr @iseq_load.rbimpl_id, align 8, !tbaa !11 ; 2 uses
  %.not4.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i

.lr.ph.i.i:                                       ; preds = %select.unfold.i, %.lr.ph.i.i
  %i.bn = call i64 @rb_intern2(ptr noundef nonnull @.str.114, i64 noundef 7) #20 ; 3 uses
  store i64 %i.bn, ptr @iseq_load.rbimpl_id, align 8, !tbaa !11
  %.not.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i, !llvm.loop !272

rbimpl_intern_const.exit.i:                       ; preds = %.lr.ph.i.i, %select.unfold.i
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %select.unfold.i ], [ %i.bn, %.lr.ph.i.i ]
  %i.bo = call i64 @rb_id2sym(i64 noundef %.lcssa.i.i) #20
  %i.bp = call i64 @rb_hash_aref(i64 noundef %i.t, i64 noundef %i.bo) #20 ; 3 uses
  %.pr.i70.i = load i64, ptr @iseq_load.rbimpl_id.115, align 8, !tbaa !11 ; 2 uses
  %.not4.i71.i = icmp eq i64 %.pr.i70.i, 0
  br i1 %.not4.i71.i, label %.lr.ph.i73.i, label %rbimpl_intern_const.exit75.i

.lr.ph.i73.i:                                     ; preds = %rbimpl_intern_const.exit.i, %.lr.ph.i73.i
  %i.bq = call i64 @rb_intern2(ptr noundef nonnull @.str.116, i64 noundef 13) #20 ; 3 uses
  store i64 %i.bq, ptr @iseq_load.rbimpl_id.115, align 8, !tbaa !11
  %.not.i74.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i74.i, label %.lr.ph.i73.i, label %rbimpl_intern_const.exit75.i, !llvm.loop !272

rbimpl_intern_const.exit75.i:                     ; preds = %.lr.ph.i73.i, %rbimpl_intern_const.exit.i
  %.lcssa.i72.i = phi i64 [ %.pr.i70.i, %rbimpl_intern_const.exit.i ], [ %i.bq, %.lr.ph.i73.i ]
  %i.br = call i64 @rb_id2sym(i64 noundef %.lcssa.i72.i) #20
  %i.bs = call i64 @rb_hash_aref(i64 noundef %i.t, i64 noundef %i.br) #20 ; 7 uses
  %i.bt = icmp eq i64 %i.bs, 0
  %i.bu = and i64 %i.bs, 7
  %i.bv = icmp ne i64 %i.bu, 0
  %i.bw = or i1 %i.bt, %i.bv
  br i1 %i.bw, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %rbimpl_intern_const.exit75.i
  %i.bx = inttoptr i64 %i.bs to ptr               ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !80 ; 3 uses
  %i.bz = and i64 %i.by, 31
  %i.ca = icmp eq i64 %i.bz, 7
  br i1 %i.ca, label %bb.r, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.r:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.cb = and i64 %i.by, 8192
  %.not.i76.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i76.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = lshr i64 %i.by, 15
  %i.cd = and i64 %i.cc, 127
  br label %rb_array_len.exit.i

bb.t:                                             ; preds = %bb.r
  %i.ce = getelementptr i8, ptr %i.bx, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !90
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.t, %bb.s
  %.0.i77.i = phi i64 [ %i.cd, %bb.s ], [ %i.cf, %bb.t ]
  %i.cg = icmp eq i64 %.0.i77.i, 4
  br i1 %i.cg, label %bb.u, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.u:                                             ; preds = %rb_array_len.exit.i
  %i.ch = call i64 @rb_ary_entry(i64 noundef %i.bs, i64 noundef 0) #24 ; 3 uses
  %i.ci = trunc i64 %i.ch to i1
  br i1 %i.ci, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cj = call i64 @rb_fix2int(i64 noundef %i.ch) #20
  br label %rb_num2int_inline.exit79.i

bb.w:                                             ; preds = %bb.u
  %i.ck = call i64 @rb_num2int(i64 noundef %i.ch) #20
  br label %rb_num2int_inline.exit79.i

rb_num2int_inline.exit79.i:                       ; preds = %bb.w, %bb.v
  %.0.i78.i = phi i64 [ %i.cj, %bb.v ], [ %i.ck, %bb.w ]
  %i.cl = trunc i64 %.0.i78.i to i32
  store i32 %i.cl, ptr %4, align 4, !tbaa !285
  %i.cm = call i64 @rb_ary_entry(i64 noundef %i.bs, i64 noundef 1) #24 ; 3 uses
  %i.cn = trunc i64 %i.cm to i1
  br i1 %i.cn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %rb_num2int_inline.exit79.i
  %i.co = call i64 @rb_fix2int(i64 noundef %i.cm) #20
  br label %rb_num2int_inline.exit81.i

bb.y:                                             ; preds = %rb_num2int_inline.exit79.i
  %i.cp = call i64 @rb_num2int(i64 noundef %i.cm) #20
  br label %rb_num2int_inline.exit81.i

rb_num2int_inline.exit81.i:                       ; preds = %bb.y, %bb.x
  %.0.i80.i = phi i64 [ %i.co, %bb.x ], [ %i.cp, %bb.y ]
  %i.cq = trunc i64 %.0.i80.i to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !286
  %i.cs = call i64 @rb_ary_entry(i64 noundef %i.bs, i64 noundef 2) #24 ; 3 uses
  %i.ct = trunc i64 %i.cs to i1
  br i1 %i.ct, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %rb_num2int_inline.exit81.i
  %i.cu = call i64 @rb_fix2int(i64 noundef %i.cs) #20
  br label %rb_num2int_inline.exit83.i

bb.aa:                                            ; preds = %rb_num2int_inline.exit81.i
  %i.cv = call i64 @rb_num2int(i64 noundef %i.cs) #20
  br label %rb_num2int_inline.exit83.i

rb_num2int_inline.exit83.i:                       ; preds = %bb.aa, %bb.z
  %.0.i82.i = phi i64 [ %i.cu, %bb.z ], [ %i.cv, %bb.aa ]
  %i.cw = trunc i64 %.0.i82.i to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !287
  %i.cy = call i64 @rb_ary_entry(i64 noundef %i.bs, i64 noundef 3) #24 ; 3 uses
  %i.cz = trunc i64 %i.cy to i1
  br i1 %i.cz, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %rb_num2int_inline.exit83.i
  %i.da = call i64 @rb_fix2int(i64 noundef %i.cy) #20
  br label %rb_num2int_inline.exit85.i

bb.ac:                                            ; preds = %rb_num2int_inline.exit83.i
  %i.db = call i64 @rb_num2int(i64 noundef %i.cy) #20
  br label %rb_num2int_inline.exit85.i

rb_num2int_inline.exit85.i:                       ; preds = %bb.ac, %bb.ab
  %.0.i84.i = phi i64 [ %i.da, %bb.ab ], [ %i.db, %bb.ac ]
  %i.dc = trunc i64 %.0.i84.i to i32
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !288
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rb_num2int_inline.exit85.i, %rb_array_len.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %rbimpl_intern_const.exit75.i
  %.pr.i86.i = load i64, ptr @iseq_load.rbimpl_id.117, align 8, !tbaa !11 ; 2 uses
  %.not4.i87.i = icmp eq i64 %.pr.i86.i, 0
  br i1 %.not4.i87.i, label %.lr.ph.i89.i, label %rbimpl_intern_const.exit91.i

.lr.ph.i89.i:                                     ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, %.lr.ph.i89.i
  %i.de = call i64 @rb_intern2(ptr noundef nonnull @.str.118, i64 noundef 6) #20 ; 3 uses
  store i64 %i.de, ptr @iseq_load.rbimpl_id.117, align 8, !tbaa !11
  %.not.i90.i = icmp eq i64 %i.de, 0
  br i1 %.not.i90.i, label %.lr.ph.i89.i, label %rbimpl_intern_const.exit91.i, !llvm.loop !272

rbimpl_intern_const.exit91.i:                     ; preds = %.lr.ph.i89.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.lcssa.i88.i = phi i64 [ %.pr.i86.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %i.de, %.lr.ph.i89.i ]
  %i.df = call i64 @rb_id2sym(i64 noundef %.lcssa.i88.i) #20
  %i.dg = call i64 @rb_hash_aref(i64 noundef %i.t, i64 noundef %i.df) #20
  %i.dh = call i64 @rb_sym2id(i64 noundef %i.dg) #20
  %.pr.i92.i = load i64, ptr @iseq_load.rbimpl_id.119, align 8, !tbaa !11 ; 2 uses
  %.not4.i93.i = icmp eq i64 %.pr.i92.i, 0
  br i1 %.not4.i93.i, label %.lr.ph.i95.i, label %rbimpl_intern_const.exit97.i

.lr.ph.i95.i:                                     ; preds = %rbimpl_intern_const.exit91.i, %.lr.ph.i95.i
  %i.di = call i64 @rb_intern2(ptr noundef nonnull @.str.120, i64 noundef 5) #20 ; 3 uses
  store i64 %i.di, ptr @iseq_load.rbimpl_id.119, align 8, !tbaa !11
  %.not.i96.i = icmp eq i64 %i.di, 0
  br i1 %.not.i96.i, label %.lr.ph.i95.i, label %rbimpl_intern_const.exit97.i, !llvm.loop !272

rbimpl_intern_const.exit97.i:                     ; preds = %.lr.ph.i95.i, %rbimpl_intern_const.exit91.i
  %.lcssa.i94.i = phi i64 [ %.pr.i92.i, %rbimpl_intern_const.exit91.i ], [ %i.di, %.lr.ph.i95.i ]
  %i.dj = icmp eq i64 %i.dh, %.lcssa.i94.i
  br i1 %i.dj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %rbimpl_intern_const.exit97.i
  %i.dk = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.dl = getelementptr i8, ptr %i.dk, i64 272
  store i8 1, ptr %i.dl, align 8, !tbaa !247
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %rbimpl_intern_const.exit97.i
  call fastcc void @make_compile_option(ptr noundef %3, i64 noundef %2)
  %i.dm = load i16, ptr %3, align 4
  %i.dn = and i16 %i.dm, -3
  store i16 %i.dn, ptr %3, align 4
  %i.do = trunc i64 %i.bp to i1
  br i1 %i.do, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dp = call i64 @rb_fix2int(i64 noundef %i.bp) #20
  br label %iseq_load.exit

bb.ag:                                            ; preds = %bb.ae
  %i.dq = call i64 @rb_num2int(i64 noundef %i.bp) #20
  br label %iseq_load.exit

iseq_load.exit:                                   ; preds = %bb.af, %bb.ag
  %.0.i98.i = phi i64 [ %i.dp, %bb.af ], [ %i.dq, %bb.ag ]
  %i.dr = and i64 %1, -5
  %.not = icmp eq i64 %i.dr, 0
  %i.ds = inttoptr i64 %1 to ptr
end_hunk_0
begin_hunk_1_@iseq_type_id:bb.a

rbimpl_intern_const.exit23:                       ; preds = %.lr.ph.i21, %rbimpl_intern_const.exit17
  %.lcssa.i20 = phi i64 [ %.pr.i18, %rbimpl_intern_const.exit17 ], [ %i.e, %.lr.ph.i21 ]
  store i64 %.lcssa.i20, ptr @iseq_type_id.id_block, align 8, !tbaa !11
  %.pr.i24 = load i64, ptr @iseq_type_id.rbimpl_id.194, align 8, !tbaa !11 ; 2 uses
  %.not4.i25 = icmp eq i64 %.pr.i24, 0
  br i1 %.not4.i25, label %.lr.ph.i27, label %rbimpl_intern_const.exit29

.lr.ph.i27:                                       ; preds = %rbimpl_intern_const.exit23, %.lr.ph.i27
  %i.f = tail call i64 @rb_intern2(ptr noundef nonnull @.str.126, i64 noundef 5) #20 ; 3 uses
  store i64 %i.f, ptr @iseq_type_id.rbimpl_id.194, align 8, !tbaa !11
  %.not.i28 = icmp eq i64 %i.f, 0
  br i1 %.not.i28, label %.lr.ph.i27, label %rbimpl_intern_const.exit29, !llvm.loop !272

rbimpl_intern_const.exit29:                       ; preds = %.lr.ph.i27, %rbimpl_intern_const.exit23
  %.lcssa.i26 = phi i64 [ %.pr.i24, %rbimpl_intern_const.exit23 ], [ %i.f, %.lr.ph.i27 ]
  store i64 %.lcssa.i26, ptr @iseq_type_id.id_class, align 8, !tbaa !11
  %.pr.i30 = load i64, ptr @iseq_type_id.rbimpl_id.195, align 8, !tbaa !11 ; 2 uses
  %.not4.i31 = icmp eq i64 %.pr.i30, 0
  br i1 %.not4.i31, label %.lr.ph.i33, label %rbimpl_intern_const.exit35

.lr.ph.i33:                                       ; preds = %rbimpl_intern_const.exit29, %.lr.ph.i33
  %i.g = tail call i64 @rb_intern2(ptr noundef nonnull @.str.128, i64 noundef 6) #20 ; 3 uses
  store i64 %i.g, ptr @iseq_type_id.rbimpl_id.195, align 8, !tbaa !11
  %.not.i34 = icmp eq i64 %i.g, 0
  br i1 %.not.i34, label %.lr.ph.i33, label %rbimpl_intern_const.exit35, !llvm.loop !272

rbimpl_intern_const.exit35:                       ; preds = %.lr.ph.i33, %rbimpl_intern_const.exit29
  %.lcssa.i32 = phi i64 [ %.pr.i30, %rbimpl_intern_const.exit29 ], [ %i.g, %.lr.ph.i33 ]
  store i64 %.lcssa.i32, ptr @iseq_type_id.id_rescue, align 8, !tbaa !11
  %.pr.i36 = load i64, ptr @iseq_type_id.rbimpl_id.196, align 8, !tbaa !11 ; 2 uses
  %.not4.i37 = icmp eq i64 %.pr.i36, 0
  br i1 %.not4.i37, label %.lr.ph.i39, label %rbimpl_intern_const.exit41

.lr.ph.i39:                                       ; preds = %rbimpl_intern_const.exit35, %.lr.ph.i39
  %i.h = tail call i64 @rb_intern2(ptr noundef nonnull @.str.130, i64 noundef 6) #20 ; 3 uses
  store i64 %i.h, ptr @iseq_type_id.rbimpl_id.196, align 8, !tbaa !11
  %.not.i40 = icmp eq i64 %i.h, 0
  br i1 %.not.i40, label %.lr.ph.i39, label %rbimpl_intern_const.exit41, !llvm.loop !272

rbimpl_intern_const.exit41:                       ; preds = %.lr.ph.i39, %rbimpl_intern_const.exit35
  %.lcssa.i38 = phi i64 [ %.pr.i36, %rbimpl_intern_const.exit35 ], [ %i.h, %.lr.ph.i39 ]
  store i64 %.lcssa.i38, ptr @iseq_type_id.id_ensure, align 8, !tbaa !11
  %.pr.i42 = load i64, ptr @iseq_type_id.rbimpl_id.197, align 8, !tbaa !11 ; 2 uses
  %.not4.i43 = icmp eq i64 %.pr.i42, 0
  br i1 %.not4.i43, label %.lr.ph.i45, label %rbimpl_intern_const.exit47

.lr.ph.i45:                                       ; preds = %rbimpl_intern_const.exit41, %.lr.ph.i45
  %i.i = tail call i64 @rb_intern2(ptr noundef nonnull @.str.85, i64 noundef 4) #20 ; 3 uses
  store i64 %i.i, ptr @iseq_type_id.rbimpl_id.197, align 8, !tbaa !11
  %.not.i46 = icmp eq i64 %i.i, 0
  br i1 %.not.i46, label %.lr.ph.i45, label %rbimpl_intern_const.exit47, !llvm.loop !272

rbimpl_intern_const.exit47:                       ; preds = %.lr.ph.i45, %rbimpl_intern_const.exit41
  %.lcssa.i44 = phi i64 [ %.pr.i42, %rbimpl_intern_const.exit41 ], [ %i.i, %.lr.ph.i45 ]
  store i64 %.lcssa.i44, ptr @iseq_type_id.id_eval, align 8, !tbaa !11
  %.pr.i48 = load i64, ptr @iseq_type_id.rbimpl_id.198, align 8, !tbaa !11 ; 2 uses
  %.not4.i49 = icmp eq i64 %.pr.i48, 0
  br i1 %.not4.i49, label %.lr.ph.i51, label %rbimpl_intern_const.exit53

.lr.ph.i51:                                       ; preds = %rbimpl_intern_const.exit47, %.lr.ph.i51
  %i.j = tail call i64 @rb_intern2(ptr noundef nonnull @.str.133, i64 noundef 4) #20 ; 3 uses
  store i64 %i.j, ptr @iseq_type_id.rbimpl_id.198, align 8, !tbaa !11
  %.not.i52 = icmp eq i64 %i.j, 0
  br i1 %.not.i52, label %.lr.ph.i51, label %rbimpl_intern_const.exit53, !llvm.loop !272

rbimpl_intern_const.exit53:                       ; preds = %.lr.ph.i51, %rbimpl_intern_const.exit47
  %.lcssa.i50 = phi i64 [ %.pr.i48, %rbimpl_intern_const.exit47 ], [ %i.j, %.lr.ph.i51 ]
  store i64 %.lcssa.i50, ptr @iseq_type_id.id_main, align 8, !tbaa !11
  %.pr.i54 = load i64, ptr @iseq_type_id.rbimpl_id.199, align 8, !tbaa !11 ; 2 uses
  %.not4.i55 = icmp eq i64 %.pr.i54, 0
  br i1 %.not4.i55, label %.lr.ph.i57, label %rbimpl_intern_const.exit59

.lr.ph.i57:                                       ; preds = %rbimpl_intern_const.exit53, %.lr.ph.i57
  %i.k = tail call i64 @rb_intern2(ptr noundef nonnull @.str.135, i64 noundef 5) #20 ; 3 uses
  store i64 %i.k, ptr @iseq_type_id.rbimpl_id.199, align 8, !tbaa !11
  %.not.i58 = icmp eq i64 %i.k, 0
  br i1 %.not.i58, label %.lr.ph.i57, label %rbimpl_intern_const.exit59, !llvm.loop !272

rbimpl_intern_const.exit59:                       ; preds = %.lr.ph.i57, %rbimpl_intern_const.exit53
  %.lcssa.i56 = phi i64 [ %.pr.i54, %rbimpl_intern_const.exit53 ], [ %i.k, %.lr.ph.i57 ]
  store i64 %.lcssa.i56, ptr @iseq_type_id.id_plain, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %rbimpl_intern_const.exit59, %bb.a
  %i.l = icmp ult i32 %0, 9
  br i1 %i.l, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.200, i32 noundef %0) #23
  unreachable

switch.lookup:                                    ; preds = %bb.c
  %i.m = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.iseq_type_id, i64 %i.m
  %switch.load = load ptr, ptr %switch.gep, align 8
  %.0 = load i64, ptr %switch.load, align 8, !tbaa !11
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @rb_iseq_coverage(ptr noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr i8, ptr %i.b, i64 216
  %i.d = load i64, ptr %i.c, align 8, !tbaa !270
  ret i64 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_iseq_remove_coverage_all() local_unnamed_addr #0 {
bb.a:
  tail call void @rb_objspace_each_objects(ptr noundef nonnull @remove_coverage_i, ptr noundef null) #20
  ret void
}

declare void @rb_objspace_each_objects(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @remove_coverage_i(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr readnone captures(none) %3) #9 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %rb_obj_is_iseq.exit.thread
  %.013 = phi i64 [ %i.m, %rb_obj_is_iseq.exit.thread ], [ %i.b, %.lr.ph.preheader ] ; 4 uses
  %i.c = icmp eq i64 %.013, 0
  %i.d = and i64 %.013, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rb_obj_is_iseq.exit.thread, label %rb_obj_is_iseq.exit, !prof !99

rb_obj_is_iseq.exit:                              ; preds = %.lr.ph
  %i.g = inttoptr i64 %.013 to ptr                ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !80
  %i.i = and i64 %i.h, 61471
  %.not11 = icmp eq i64 %i.i, 28698
  br i1 %.not11, label %bb.b, label %rb_obj_is_iseq.exit.thread

bb.b:                                             ; preds = %rb_obj_is_iseq.exit
  %i.j = getelementptr i8, ptr %i.g, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.l = getelementptr i8, ptr %i.k, i64 216
  store i64 4, ptr %i.l, align 8, !tbaa !11
  br label %rb_obj_is_iseq.exit.thread

rb_obj_is_iseq.exit.thread:                       ; preds = %.lr.ph, %bb.b, %rb_obj_is_iseq.exit
  %i.m = add i64 %.013, %2                        ; 2 uses
  %.not = icmp eq i64 %i.m, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !291

._crit_edge:                                      ; preds = %rb_obj_is_iseq.exit.thread, %bb.a
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_iseqw_new(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @iseqw_new(ptr noundef %0)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @iseqw_new(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !292  ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @rb_check_typeddata(i64 noundef %i.b, ptr noundef nonnull @iseqw_data_type) #20
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !283
  %.not19 = icmp eq ptr %i.d, %0
  br i1 %.not19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.f = load i64, ptr %i.a, align 8, !tbaa !292
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @.str.156, i64 noundef %i.f, ptr noundef nonnull %0) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.a, align 8, !tbaa !292
  br label %rb_obj_write.exit20

bb.e:                                             ; preds = %bb.a
  %i.h = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  %i.i = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %i.h, i64 noundef 8, ptr noundef nonnull @iseqw_data_type) #20 ; 10 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !274
  %i.m = trunc i64 %i.l to i1
  %i.n = getelementptr i8, ptr %i.j, i64 32       ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !276
  br label %RTYPEDDATA_GET_DATA.exit

RTYPEDDATA_GET_DATA.exit:                         ; preds = %bb.e, %bb.f
  %1 = phi ptr [ %i.o, %bb.f ], [ %i.n, %bb.e ]
  %2 = ptrtoint ptr %0 to i64                     ; 4 uses
  store i64 %2, ptr %1, align 8, !tbaa !11
  %3 = and i64 %2, 7
  %.not24 = icmp eq i64 %3, 0
  br i1 %.not24, label %4, label %rb_obj_write.exit

4:                                                ; preds = %RTYPEDDATA_GET_DATA.exit
  tail call void @rb_gc_writebarrier(i64 noundef %i.i, i64 noundef %2) #20
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %RTYPEDDATA_GET_DATA.exit, %4
  tail call void @rb_obj_freeze_inline(i64 noundef %i.i) #20
  %i.p = tail call i64 @rb_obj_set_shareable(i64 noundef %i.i) #20 ; 0 uses
  store i64 %i.i, ptr %i.a, align 8, !tbaa !11
  %i.q = icmp eq i64 %i.i, 0
  %i.r = and i64 %i.i, 7
  %i.s = icmp ne i64 %i.r, 0
  %i.t = or i1 %i.q, %i.s
  br i1 %i.t, label %rb_obj_write.exit20, label %bb.g

bb.g:                                             ; preds = %rb_obj_write.exit
  tail call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %i.i) #20
  br label %rb_obj_write.exit20

rb_obj_write.exit20:                              ; preds = %bb.g, %rb_obj_write.exit, %bb.d
  %.0 = phi i64 [ %i.g, %bb.d ], [ %i.i, %rb_obj_write.exit ], [ %i.i, %bb.g ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @rb_iseqw_to_iseq(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !293

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !80
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !273

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !274  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !276
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @iseqw_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !277

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !278  ; 2 uses
  %i.s = icmp eq ptr %i.r, @iseqw_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !282

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @iseqw_data_type) #20
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = load ptr, ptr %.1.i.i, align 8, !tbaa !283 ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16       ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  tail call void @rb_ibf_load_iseq_complete(ptr noundef nonnull %i.u) #20
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %rbimpl_check_typeddata.exit.i
  %i.x = phi ptr [ %.pre.i, %bb.e ], [ %i.w, %rbimpl_check_typeddata.exit.i ]
  %i.y = getelementptr i8, ptr %i.x, i64 80
  %i.z = load i64, ptr %i.y, align 8, !tbaa !261
  %.not5.i = icmp eq i64 %i.z, 0
  br i1 %.not5.i, label %bb.g, label %iseqw_check.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.158) #22
  unreachable

iseqw_check.exit:                                 ; preds = %bb.f
  ret ptr %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @rb_iseq_line_no(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18  ; 3 uses
  %i.b = getelementptr i8, ptr %.val, i64 112
  %i.c = getelementptr i8, ptr %.val, i64 128
  %i.d = load i32, ptr %i.c, align 8, !tbaa !154  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !83   ; 2 uses
  switch i32 %i.d, label %bb.b [
    i32 0, label %get_insn_info.exit.thread
    i32 1, label %get_insn_info.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !85   ; 2 uses
  %i.h = trunc i64 %1 to i32                      ; 4 uses
  %i.i = icmp slt i32 %i.h, 54
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = sdiv i32 %i.h, 9
  %i.k = srem i32 %i.h, 9
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr [8 x i8], ptr %i.g, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11
  %i.o = mul nsw i32 %i.k, 7
  %i.p = zext nneg i32 %i.o to i64
  %i.q = lshr i64 %i.n, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.r, 127
  br label %succ_index_lookup.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.t = add nsw i32 %i.h, -54                    ; 3 uses
  %i.u = lshr i32 %i.t, 9
  %i.v = getelementptr i8, ptr %i.g, i64 48
  %i.w = zext nneg i32 %i.u to i64
  %i.x = getelementptr [80 x i8], ptr %i.v, i64 %i.w ; 3 uses
  %i.y = lshr i32 %i.t, 6
  %i.z = and i32 %i.y, 7                          ; 3 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr i8, ptr %i.x, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !164
  %i.ad = mul nuw nsw i32 %i.z, 9
  %i.ae = add nsw i32 %i.ad, -9
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = lshr i64 %i.ac, %i.af
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 511
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aj = phi i32 [ %i.ai, %bb.e ], [ 0, %bb.d ]
  %i.ak = getelementptr i8, ptr %i.x, i64 16
  %i.al = zext nneg i32 %i.z to i64
  %i.am = getelementptr [8 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !11
  %i.ao = and i32 %i.t, 63
  %i.ap = xor i32 %i.ao, 63
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %i.an, %i.aq
  %i.as = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ar)
  %i.at = trunc nuw nsw i64 %i.as to i32
  %i.au = load i32, ptr %i.x, align 8, !tbaa !162
  %i.av = add i32 %i.au, %i.aj
  %i.aw = add i32 %i.av, %i.at
  br label %succ_index_lookup.exit.i.i

succ_index_lookup.exit.i.i:                       ; preds = %bb.f, %bb.c
  %.0.i.i.i = phi i32 [ %i.s, %bb.c ], [ %i.aw, %bb.f ]
  %i.ax = add i32 %.0.i.i.i, -1
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr [12 x i8], ptr %i.e, i64 %i.ay
  br label %get_insn_info.exit

get_insn_info.exit:                               ; preds = %bb.a, %succ_index_lookup.exit.i.i
  %.0.i.i = phi ptr [ %i.az, %succ_index_lookup.exit.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %get_insn_info.exit.thread, label %bb.g

bb.g:                                             ; preds = %get_insn_info.exit
  %i.ba = load i32, ptr %.0.i.i, align 4, !tbaa !294
  br label %get_insn_info.exit.thread

get_insn_info.exit.thread:                        ; preds = %bb.a, %get_insn_info.exit, %bb.g
  %.0 = phi i32 [ %i.ba, %bb.g ], [ 0, %get_insn_info.exit ], [ %i.d, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @rb_iseq_node_id(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18  ; 3 uses
  %i.b = getelementptr i8, ptr %.val, i64 112
  %i.c = getelementptr i8, ptr %.val, i64 128
  %i.d = load i32, ptr %i.c, align 8, !tbaa !154  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !83   ; 2 uses
  switch i32 %i.d, label %bb.b [
end_hunk_1
begin_hunk_2_@rb_iseq_disasm_insn:bb.a
bb.w:                                             ; preds = %rb_iseq_event_flags.exit
  %i.gj = insertelement <12 x i32> poison, i32 %i.gi, i64 0
  %i.gk = shufflevector <12 x i32> %i.gj, <12 x i32> poison, <12 x i32> zeroinitializer
  %i.gl = and <12 x i32> %i.gk, <i32 131072, i32 65536, i32 16384, i32 512, i32 256, i32 64, i32 32, i32 16, i32 8, i32 4, i32 2, i32 1>
  %i.gm = icmp eq <12 x i32> %i.gl, zeroinitializer ; 12 uses
  %i.gn = extractelement <12 x i1> %i.gm, i64 11
  %i.go = select i1 %i.gn, ptr @.str.43, ptr @.str.45
  %i.gp = extractelement <12 x i1> %i.gm, i64 10
  %i.gq = select i1 %i.gp, ptr @.str.43, ptr @.str.46
  %i.gr = extractelement <12 x i1> %i.gm, i64 9
  %i.gs = select i1 %i.gr, ptr @.str.43, ptr @.str.47
  %i.gt = extractelement <12 x i1> %i.gm, i64 8
  %i.gu = select i1 %i.gt, ptr @.str.43, ptr @.str.48
  %i.gv = extractelement <12 x i1> %i.gm, i64 7
  %i.gw = select i1 %i.gv, ptr @.str.43, ptr @.str.49
  %i.gx = extractelement <12 x i1> %i.gm, i64 6
  %i.gy = select i1 %i.gx, ptr @.str.43, ptr @.str.50
  %i.gz = extractelement <12 x i1> %i.gm, i64 5
  %i.ha = select i1 %i.gz, ptr @.str.43, ptr @.str.51
  %i.hb = extractelement <12 x i1> %i.gm, i64 4
  %i.hc = select i1 %i.hb, ptr @.str.43, ptr @.str.52
  %i.hd = extractelement <12 x i1> %i.gm, i64 3
  %i.he = select i1 %i.hd, ptr @.str.43, ptr @.str.53
  %i.hf = extractelement <12 x i1> %i.gm, i64 2
  %i.hg = select i1 %i.hf, ptr @.str.43, ptr @.str.54
  %i.hh = extractelement <12 x i1> %i.gm, i64 1
  %i.hi = select i1 %i.hh, ptr @.str.43, ptr @.str.55
  %i.hj = extractelement <12 x i1> %i.gm, i64 0
  %i.hk = select i1 %i.hj, ptr @.str.43, ptr @.str.56
  %i.hl = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %.065, ptr noundef nonnull @.str.44, ptr noundef nonnull %i.go, ptr noundef nonnull %i.gq, ptr noundef nonnull %i.gs, ptr noundef nonnull %i.gu, ptr noundef nonnull %i.gw, ptr noundef nonnull %i.gy, ptr noundef nonnull %i.ha, ptr noundef nonnull %i.hc, ptr noundef nonnull %i.he, ptr noundef nonnull %i.hg, ptr noundef nonnull %i.hi, ptr noundef nonnull %i.hk) #20
  br label %rb_iseq_event_flags.exit.thread

rb_iseq_event_flags.exit.thread:                  ; preds = %bb.q, %get_insn_info.exit.i96, %bb.w, %rb_iseq_event_flags.exit
  %.1 = phi i64 [ %i.hl, %bb.w ], [ %.065, %rb_iseq_event_flags.exit ], [ %.065, %get_insn_info.exit.i96 ], [ %.065, %bb.q ] ; 4 uses
  %i.hm = inttoptr i64 %.1 to ptr                 ; 4 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !80
  %i.ho = and i64 %i.hn, 8192
  %.not.i.i = icmp eq i64 %i.ho, 0
  %i.hp = getelementptr i8, ptr %i.hm, i64 24     ; 4 uses
  br i1 %.not.i.i, label %RSTRING_END.exit.i, label %bb.x

bb.x:                                             ; preds = %rb_iseq_event_flags.exit.thread
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !90
  br label %RSTRING_END.exit.i

RSTRING_END.exit.i:                               ; preds = %bb.x, %rb_iseq_event_flags.exit.thread
  %i.hr = phi ptr [ %i.hq, %bb.x ], [ %i.hp, %rb_iseq_event_flags.exit.thread ] ; 4 uses
  %i.hs = getelementptr i8, ptr %i.hm, i64 16     ; 2 uses
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !311
  %i.hu = getelementptr i8, ptr %i.hr, i64 %i.ht  ; 2 uses
  %i.hv = getelementptr i8, ptr %i.hu, i64 -1     ; 2 uses
  %i.hw = icmp ugt ptr %i.hu, %i.hr
  br i1 %i.hw, label %.lr.ph121, label %right_strip.exit

bb.y:                                             ; preds = %.lr.ph121
  %i.hx = getelementptr i8, ptr %i.hz, i64 -1     ; 2 uses
  %i.hy = icmp ugt ptr %i.hz, %i.hr
  br i1 %i.hy, label %.lr.ph121, label %right_strip.exit, !llvm.loop !313

.lr.ph121:                                        ; preds = %RSTRING_END.exit.i, %bb.y
  %i.hz = phi ptr [ %i.hx, %bb.y ], [ %i.hv, %RSTRING_END.exit.i ] ; 4 uses
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !90
  %i.ib = icmp eq i8 %i.ia, 32
  br i1 %i.ib, label %bb.y, label %.right_strip.exit_crit_edge122, !llvm.loop !313

.right_strip.exit_crit_edge122:                   ; preds = %.lr.ph121
  br label %right_strip.exit, !llvm.loop !313

right_strip.exit:                                 ; preds = %bb.y, %.right_strip.exit_crit_edge122, %RSTRING_END.exit.i
  %.lcssa = phi ptr [ %i.hv, %RSTRING_END.exit.i ], [ %i.hz, %.right_strip.exit_crit_edge122 ], [ %i.hx, %bb.y ]
  %i.ic = ptrtoint ptr %.lcssa to i64
  %i.id = ptrtoint ptr %i.hr to i64
  %reass.sub = sub i64 %i.ic, %i.id
  %i.ie = add i64 %reass.sub, 1
  tail call void @rb_str_set_len(i64 noundef %.1, i64 noundef %i.ie) #20
  %.not85 = icmp eq i64 %0, 0
  br i1 %.not85, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %right_strip.exit
  %i.if = tail call i64 @rb_str_cat(i64 noundef %.1, ptr noundef nonnull @.str.57, i64 noundef 1) #20 ; 0 uses
  %i.ig = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %.1) #20 ; 0 uses
  br label %bb.ac

bb.aa:                                            ; preds = %right_strip.exit
  %i.ih = load i64, ptr %i.hs, align 8, !tbaa !311
  %i.ii = trunc i64 %i.ih to i32
  %i.ij = load i64, ptr %i.hm, align 8, !tbaa !80
  %i.ik = and i64 %i.ij, 8192
  %.not.i103 = icmp eq i64 %i.ik, 0
  br i1 %.not.i103, label %RSTRING_PTR.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.il = load ptr, ptr %i.hp, align 8, !tbaa !90
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.aa, %bb.ab
  %i.im = phi ptr [ %i.il, %bb.ab ], [ %i.hp, %bb.aa ]
  %i.in = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.58, i32 noundef %i.ii, ptr noundef %i.im) #20 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %RSTRING_PTR.exit, %bb.z
  ret i32 %i.e
}

declare i64 @rb_str_new_static(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_concat(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_iseq_disasm(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_str_new_static(ptr noundef null, i64 noundef 0) #20
  %i.b = tail call fastcc i64 @rb_iseq_disasm_recursive(ptr noundef %0, i64 noundef %i.a) ; 3 uses
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !311
  %i.f = tail call i64 @rb_str_resize(i64 noundef %i.b, i64 noundef %i.e) #20 ; 0 uses
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_iseq_disasm_recursive(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [256 x i8], align 16              ; 5 uses
  %i.c = alloca [256 x i8], align 16              ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 16         ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18   ; 15 uses
  %i.g = tail call i64 @rb_str_new_static(ptr noundef null, i64 noundef 0) #20 ; 32 uses
  %i.h = tail call i64 @rb_ary_hidden_new(i64 noundef 3) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 4, ptr %i.a, align 8, !tbaa !11
  %i.i = getelementptr i8, ptr %i.f, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !89   ; 2 uses
  %i.k = inttoptr i64 %1 to ptr                   ; 6 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !311  ; 9 uses
  %i.n = load i64, ptr %i.k, align 8, !tbaa !80
  %i.o = and i64 %i.n, 8192
  %.not.i = icmp eq i64 %i.o, 0
  %i.p = getelementptr i8, ptr %i.k, i64 24       ; 8 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !90
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.r = phi ptr [ %i.q, %bb.b ], [ %i.p, %bb.a ] ; 4 uses
  %i.s = tail call i64 @rb_str_cat(i64 noundef %i.g, ptr noundef %i.r, i64 noundef %i.m) #20 ; 0 uses
  %i.t = tail call i64 @rb_str_cat(i64 noundef %i.g, ptr noundef nonnull @.str.161, i64 noundef 11) #20 ; 0 uses
  %.val = load ptr, ptr %i.e, align 8, !tbaa !18  ; 6 uses
  %i.u = getelementptr i8, ptr %.val, i64 80
  %i.v = load i64, ptr %i.u, align 8, !tbaa !261  ; 2 uses
  %.not.i212 = icmp eq i64 %i.v, 0
  br i1 %.not.i212, label %bb.c, label %bb.d

bb.c:                                             ; preds = %RSTRING_PTR.exit
  %i.w = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.184) #20
  br label %iseq_inspect.exit

bb.d:                                             ; preds = %RSTRING_PTR.exit
  %i.x = getelementptr i8, ptr %.val, i64 96
  %i.y = getelementptr i8, ptr %.val, i64 64
  %i.z = load i64, ptr %i.y, align 8, !tbaa !269  ; 4 uses
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = and i64 %i.z, 7
  %i.ac = icmp eq i64 %i.ab, 0
  %.not4.i.i = and i1 %i.aa, %i.ac
  %.pre.i.i.i = inttoptr i64 %i.z to ptr          ; 3 uses
  %.pre.i.i = load i64, ptr %.pre.i.i.i, align 8, !tbaa !80 ; 2 uses
  %i.ad = and i64 %.pre.i.i, 31
  %i.ae = icmp eq i64 %i.ad, 5
  %or.cond.i.i = select i1 %.not4.i.i, i1 %i.ae, i1 false
  br i1 %or.cond.i.i, label %rb_iseq_path.exit.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i.i:      ; preds = %bb.d
  %i.af = and i64 %.pre.i.i, 8192
  %.not.i.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i.i
  %i.ag = getelementptr i8, ptr %.pre.i.i.i, i64 16
  br label %RARRAY_AREF.exit.i.i.i

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i.i
  %i.ah = getelementptr i8, ptr %.pre.i.i.i, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !90
  br label %RARRAY_AREF.exit.i.i.i

RARRAY_AREF.exit.i.i.i:                           ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi ptr [ %i.ag, %bb.e ], [ %i.ai, %bb.f ]
  %i.aj = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !11
  br label %rb_iseq_path.exit.i

rb_iseq_path.exit.i:                              ; preds = %RARRAY_AREF.exit.i.i.i, %bb.d
  %.0.i.i.i = phi i64 [ %i.aj, %RARRAY_AREF.exit.i.i.i ], [ %i.z, %bb.d ]
  %i.ak = load i32, ptr %i.x, align 4, !tbaa !285 ; 2 uses
  %i.al = getelementptr i8, ptr %.val, i64 100
  %i.am = load i32, ptr %i.al, align 4, !tbaa !286
  %i.an = getelementptr i8, ptr %.val, i64 104
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !287
  %i.ap = getelementptr i8, ptr %.val, i64 108
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !288
  %i.ar = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.185, i64 noundef %i.v, i64 noundef %.0.i.i.i, i32 noundef %i.ak, i32 noundef %i.ak, i32 noundef %i.am, i32 noundef %i.ao, i32 noundef %i.aq) #20
  br label %iseq_inspect.exit

iseq_inspect.exit:                                ; preds = %bb.c, %rb_iseq_path.exit.i
  %.0.i = phi i64 [ %i.ar, %rb_iseq_path.exit.i ], [ %i.w, %bb.c ]
  %i.as = tail call i64 @rb_str_append(i64 noundef %i.g, i64 noundef %.0.i) #20 ; 0 uses
  %i.at = inttoptr i64 %i.g to ptr                ; 5 uses
  %i.au = getelementptr i8, ptr %i.at, i64 16     ; 5 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !311
  %i.aw = sub i64 %i.av, %i.m                     ; 2 uses
  %i.ax = icmp slt i64 %i.aw, 72
  br i1 %i.ax, label %bb.g, label %bb.i

bb.g:                                             ; preds = %iseq_inspect.exit
  %i.ay = sub i64 72, %i.aw                       ; 2 uses
  tail call void @rb_str_modify_expand(i64 noundef %i.g, i64 noundef %i.ay) #20
  %i.az = load i64, ptr %i.at, align 8, !tbaa !80
  %i.ba = and i64 %i.az, 8192
  %.not.i213 = icmp eq i64 %i.ba, 0
  %i.bb = getelementptr i8, ptr %i.at, i64 24     ; 2 uses
  br i1 %.not.i213, label %RSTRING_END.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !90
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %bb.g, %bb.h
  %i.bd = phi ptr [ %i.bc, %bb.h ], [ %i.bb, %bb.g ]
  %i.be = load i64, ptr %i.au, align 8, !tbaa !311
  %i.bf = getelementptr i8, ptr %i.bd, i64 %i.be
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.bf, i8 noundef 61, i64 noundef range(i64 1, -9223372036854775735) %i.ay, i1 noundef false) #20
  br label %bb.i

bb.i:                                             ; preds = %RSTRING_END.exit, %iseq_inspect.exit
  %i.bg = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.bh = getelementptr i8, ptr %i.bg, i64 268
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !314 ; 3 uses
  %.not = icmp eq i32 %i.bi, 0
  br i1 %.not, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = and i32 %i.bi, 1
  %.not182 = icmp eq i32 %i.bj, 0
  br i1 %.not182, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = tail call i64 @rb_str_cat(i64 noundef %i.g, ptr noundef nonnull @.str.162, i64 noundef 5) #20 ; 0 uses
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !18
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 268
  %.pre254 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !314
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bl = phi i32 [ %.pre254, %bb.k ], [ %i.bi, %bb.j ] ; 2 uses
  %i.bm = and i32 %i.bl, 2
  %.not183 = icmp eq i32 %i.bm, 0
  br i1 %.not183, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = tail call i64 @rb_str_cat(i64 noundef %i.g, ptr noundef nonnull @.str.163, i64 noundef 18) #20 ; 0 uses
  %.pre255 = load ptr, ptr %i.e, align 8, !tbaa !18
  %.phi.trans.insert256 = getelementptr i8, ptr %.pre255, i64 268
  %.pre257 = load i32, ptr %.phi.trans.insert256, align 4, !tbaa !314
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bo = phi i32 [ %.pre257, %bb.m ], [ %i.bl, %bb.l ] ; 2 uses
  %i.bp = and i32 %i.bo, 4
  %.not184 = icmp eq i32 %i.bp, 0
  br i1 %.not184, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = tail call i64 @rb_str_cat(i64 noundef %i.g, ptr noundef nonnull @.str.164, i64 noundef 13) #20 ; 0 uses
  %.pre258 = load ptr, ptr %i.e, align 8, !tbaa !18
  %.phi.trans.insert259 = getelementptr i8, ptr %.pre258, i64 268
  %.pre260 = load i32, ptr %.phi.trans.insert259, align 4, !tbaa !314
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.br = phi i32 [ %.pre260, %bb.o ], [ %i.bo, %bb.n ]
  %i.bs = and i32 %i.br, 8
  %.not185 = icmp eq i32 %i.bs, 0
  br i1 %.not185, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = tail call i64 @rb_str_cat(i64 noundef %i.g, ptr noundef nonnull @.str.165, i64 noundef 8) #20 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.i
  %i.bu = tail call i64 @rb_str_cat(i64 noundef %i.g, ptr noundef nonnull @.str.57, i64 noundef 1) #20 ; 0 uses
  %i.bv = getelementptr i8, ptr %i.f, i64 160     ; 5 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !87
  %.not186 = icmp eq ptr %i.bw, null
  br i1 %.not186, label %RSTRING_PTR.exit220.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = tail call i64 @rb_str_cat(i64 noundef %i.g, ptr noundef %i.r, i64 noundef %i.m) #20 ; 0 uses
  %i.by = tail call i64 @rb_str_cat(i64 noundef %i.g, ptr noundef nonnull @.str.166, i64 noundef 15) #20 ; 0 uses
  %.pr = load ptr, ptr %i.bv, align 8, !tbaa !87
  %.not187 = icmp eq ptr %.pr, null
  br i1 %.not187, label %RSTRING_PTR.exit220.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = tail call i64 @rb_str_cat(i64 noundef %1, ptr noundef nonnull @.str.167, i64 noundef 2) #20 ; 0 uses
  %i.ca = load i64, ptr %i.k, align 8, !tbaa !80
  %i.cb = and i64 %i.ca, 8192
  %.not.i214 = icmp eq i64 %i.cb, 0
  br i1 %.not.i214, label %RSTRING_PTR.exit215, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cc = load ptr, ptr %i.p, align 8, !tbaa !90
  br label %RSTRING_PTR.exit215

RSTRING_PTR.exit215:                              ; preds = %bb.t, %bb.u
  %i.cd = phi ptr [ %i.cc, %bb.u ], [ %i.p, %bb.t ]
  %i.ce = load ptr, ptr %i.bv, align 8, !tbaa !87 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 1, !tbaa !7
  %.not249 = icmp eq i32 %i.cf, 0
  br i1 %.not249, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %RSTRING_PTR.exit215, %RSTRING_PTR.exit218
  %indvars.iv = phi i64 [ %indvars.iv.next, %RSTRING_PTR.exit218 ], [ 0, %RSTRING_PTR.exit215 ] ; 2 uses
  %i.cg = phi ptr [ %i.dn, %RSTRING_PTR.exit218 ], [ %i.ce, %RSTRING_PTR.exit215 ]
  %.0169239 = phi ptr [ %.2, %RSTRING_PTR.exit218 ], [ null, %RSTRING_PTR.exit215 ] ; 5 uses
  %.0171238 = phi ptr [ %.1172, %RSTRING_PTR.exit218 ], [ %i.cd, %RSTRING_PTR.exit215 ] ; 3 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 4
  %i.ci = getelementptr [32 x i8], ptr %i.ch, i64 %indvars.iv ; 6 uses
  %i.cj = tail call i64 @rb_str_cat(i64 noundef %i.g, ptr noundef %.0171238, i64 noundef %i.m) #20 ; 0 uses
  %i.ck = load i32, ptr %i.ci, align 8, !tbaa !315 ; 2 uses
  %switch.tableidx = add i32 %i.ck, -3            ; 3 uses
  %i.cl = icmp ult i32 %switch.tableidx, 11
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 1365, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond282 = select i1 %i.cl, i1 %switch.lobit, i1 false
  br i1 %or.cond282, label %switch.lookup, label %bb.v

bb.v:                                             ; preds = %.lr.ph
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.190, i32 noundef %i.ck) #23
  unreachable

switch.lookup:                                    ; preds = %.lr.ph
  %i.cm = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.rb_iseq_disasm_recursive, i64 %i.cm
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.cn = getelementptr i8, ptr %i.ci, i64 16
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !316
  %i.cp = getelementptr i8, ptr %i.ci, i64 20
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !317
  %i.cr = getelementptr i8, ptr %i.ci, i64 28
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !318
  %i.ct = getelementptr i8, ptr %i.ci, i64 24
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !319
  %i.cv = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.g, ptr noundef nonnull @.str.168, ptr noundef nonnull %switch.load, i32 noundef %i.co, i32 noundef %i.cq, i32 noundef %i.cs, i32 noundef %i.cu) #20 ; 0 uses
  %i.cw = getelementptr i8, ptr %i.ci, i64 8      ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !143 ; 3 uses
  %.not209 = icmp eq ptr %i.cx, null
  br i1 %.not209, label %RSTRING_PTR.exit218, label %bb.w

bb.w:                                             ; preds = %switch.lookup
  %.not210 = icmp eq ptr %.0169239, null
  br i1 %.not210, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = tail call i32 @rb_st_lookup(ptr noundef nonnull %.0169239, i64 noundef %i.cy, ptr noundef null) #20
  %.not211 = icmp eq i32 %i.cz, 0
  br i1 %.not211, label %bb.y, label %RSTRING_PTR.exit218

bb.y:                                             ; preds = %bb.x
  %i.da = load ptr, ptr %i.cw, align 8, !tbaa !143
  %i.db = tail call fastcc i64 @rb_iseq_disasm_recursive(ptr noundef %i.da, i64 noundef %1)
  %i.dc = tail call i64 @rb_str_concat(i64 noundef %i.g, i64 noundef %i.db) #20 ; 0 uses
  br label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.dd = tail call fastcc i64 @rb_iseq_disasm_recursive(ptr noundef nonnull %i.cx, i64 noundef %1)
  %i.de = tail call i64 @rb_str_concat(i64 noundef %i.g, i64 noundef %i.dd) #20 ; 0 uses
  %i.df = tail call ptr @rb_st_init_numtable() #20 ; 2 uses
  %i.dg = tail call i64 @rb_data_typed_object_wrap(i64 noundef 0, ptr noundef %i.df, ptr noundef nonnull @tmp_set) #20
  store i64 %i.dg, ptr %i.a, align 8, !tbaa !11
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.1170 = phi ptr [ %.0169239, %bb.y ], [ %i.df, %bb.z ] ; 3 uses
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !143
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = tail call i32 @rb_st_insert(ptr noundef %.1170, i64 noundef %i.di, i64 noundef 0) #20 ; 0 uses
  %i.dk = load i64, ptr %i.k, align 8, !tbaa !80
  %i.dl = and i64 %i.dk, 8192
  %.not.i217 = icmp eq i64 %i.dl, 0
  br i1 %.not.i217, label %RSTRING_PTR.exit218, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dm = load ptr, ptr %i.p, align 8, !tbaa !90
  br label %RSTRING_PTR.exit218

RSTRING_PTR.exit218:                              ; preds = %bb.ab, %bb.aa, %bb.x, %switch.lookup
end_hunk_2
