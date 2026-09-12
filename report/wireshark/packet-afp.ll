Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-afp?download=true
inline.NumInlined: 139
inline.NumDeleted: 45
begin_hunk_0_@spotlight_dissect_query_loop:bb.a
  %i.bf = add i32 %.0212245, 8
  call void @increment_dissection_depth(ptr noundef %1)
  %i.bg = call fastcc i32 @spotlight_dissect_query_loop(ptr noundef %0, ptr noundef %1, ptr noundef %.0, i32 noundef %i.bf, i64 noundef %i.t, i32 noundef %.0209, i32 noundef %6, i32 noundef %7)
  call void @decrement_dissection_depth(ptr noundef %1)
  %i.bh = add nsw i32 %.0213244, -1
  br label %bb.ad

bb.j:                                             ; preds = %bb.c
  %i.bi = lshr i64 %i.h, 32
  %i.bj = trunc nuw i64 %i.bi to i32              ; 8 uses
  %i.bk = icmp slt i32 %.0213244, %i.bj
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bl = load i32, ptr @hf_afp_null, align 4
  %i.bm = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bl, ptr noundef %0, i32 noundef %.0212245, i32 noundef %i.k, i32 noundef 0) ; 2 uses
  store ptr %i.bm, ptr %i.a, align 8
  %i.bn = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.bm, ptr noundef nonnull @ei_afp_subquery_count_over_query_count, ptr noundef nonnull @.str.1126, i32 noundef %i.bj, i32 noundef %.0213244) ; 0 uses
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.bo = icmp sgt i32 %i.bj, 20
  br i1 %i.bo, label %bb.m, label %.preheader

.preheader:                                       ; preds = %bb.l
  %i.bp = icmp sgt i32 %i.bj, 0
  br i1 %i.bp, label %.lr.ph, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.bq = load i32, ptr @hf_afp_null, align 4
  %i.br = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bq, ptr noundef %0, i32 noundef %.0212245, i32 noundef %i.k, i32 noundef 0) ; 2 uses
  store ptr %i.br, ptr %i.a, align 8
  %i.bs = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.br, ptr noundef nonnull @ei_afp_abnormal_num_subqueries, ptr noundef nonnull @.str.1127, i32 noundef %i.bj) ; 0 uses
  %i.bt = sub nsw i32 %.0213244, %i.bj
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.0210243 = phi i32 [ %i.bw, %.lr.ph ], [ 0, %.preheader ]
  %i.bu = load i32, ptr @hf_afp_null, align 4
  %i.bv = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bu, ptr noundef %0, i32 noundef %.0212245, i32 noundef %i.k, i32 noundef %7) ; 0 uses
  %i.bw = add nuw nsw i32 %.0210243, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bw, %i.bj
  br i1 %exitcond.not, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !17

.loopexit.loopexit:                               ; preds = %.lr.ph
  %i.bx = sub nsw i32 %.0213244, %i.bj
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %bb.m, %bb.k
  %.2 = phi i32 [ 0, %bb.k ], [ %i.bt, %bb.m ], [ %.0213244, %.preheader ], [ %i.bx, %.loopexit.loopexit ]
  %i.by = add i32 %i.k, %.0212245
  br label %bb.ad

bb.n:                                             ; preds = %bb.c
  %i.bz = load i32, ptr @hf_afp_bool, align 4
  %i.ca = lshr i64 %i.h, 32                       ; 2 uses
  %.not = icmp eq i64 %i.ca, 0
  %i.cb = select i1 %.not, ptr @.str.1129, ptr @.str.1128
  %i.cc = call ptr (ptr, i32, ptr, i32, i32, i64, ptr, ...) @proto_tree_add_uint64_format_value(ptr noundef %2, i32 noundef %i.bz, ptr noundef %0, i32 noundef %.0212245, i32 noundef %i.k, i64 noundef %i.ca, ptr noundef nonnull @.str.1092, ptr noundef nonnull %i.cb) ; 0 uses
  %i.cd = add nsw i32 %.0213244, -1
  %i.ce = add i32 %i.k, %.0212245
  br label %bb.ad

bb.o:                                             ; preds = %bb.c
  %i.cf = load i32, ptr @ett_afp_spotlight_query_line, align 4
  %i.cg = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %.0212245, i32 noundef 8, i32 noundef %i.cf, ptr noundef null, ptr noundef nonnull @.str.763)
  %i.ch = call i64 @tvb_get_uint64(ptr noundef %0, i32 noundef %.0212245, i32 noundef range(i32 0, -2147483647) %7)
  %i.ci = lshr i64 %i.ch, 32                      ; 2 uses
  %i.cj = trunc nuw i64 %i.ci to i32              ; 2 uses
  %.not.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i, label %spotlight_int64.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.i
  %.016.i = phi i32 [ %i.cm, %.lr.ph.i ], [ 0, %bb.o ]
  %.013.in15.i = phi i32 [ %.013.i, %.lr.ph.i ], [ %.0212245, %bb.o ]
  %.013.i = add i32 %.013.in15.i, 8               ; 2 uses
  %i.ck = load i32, ptr @hf_afp_int64, align 4
  %i.cl = call ptr @proto_tree_add_item(ptr noundef %i.cg, i32 noundef %i.ck, ptr noundef %0, i32 noundef %.013.i, i32 noundef 8, i32 noundef range(i32 0, -2147483647) %7) ; 0 uses
  %i.cm = add nuw i32 %.016.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cm, %i.cj
  br i1 %exitcond.not.i, label %spotlight_int64.exit, label %.lr.ph.i, !llvm.loop !18

spotlight_int64.exit:                             ; preds = %.lr.ph.i, %bb.o
  %i.cn = sub i32 %.0213244, %i.cj
  %i.co = add i32 %i.k, %.0212245
  br label %bb.ad

bb.p:                                             ; preds = %bb.c
  %i.cp = load i32, ptr @ett_afp_spotlight_query_line, align 4
  %i.cq = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %.0212245, i32 noundef 8, i32 noundef %i.cp, ptr noundef null, ptr noundef nonnull @.str.546)
  %i.cr = call i64 @tvb_get_uint64(ptr noundef %0, i32 noundef %.0212245, i32 noundef range(i32 0, -2147483647) %7)
  %i.cs = lshr i64 %i.cr, 32                      ; 2 uses
  %i.ct = trunc nuw i64 %i.cs to i32              ; 2 uses
  %.not.i221 = icmp eq i64 %i.cs, 0
  br i1 %.not.i221, label %spotlight_uuid.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.p
  %i.cu = add i32 %.0212245, 8
  br label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %.lr.ph.i222, %.lr.ph.preheader.i
  %.015.i = phi i32 [ %i.cy, %.lr.ph.i222 ], [ 0, %.lr.ph.preheader.i ]
  %.01214.i = phi i32 [ %i.cx, %.lr.ph.i222 ], [ %i.cu, %.lr.ph.preheader.i ] ; 2 uses
  %i.cv = load i32, ptr @hf_afp_spotlight_uuid, align 4
  %i.cw = call ptr @proto_tree_add_item(ptr noundef %i.cq, i32 noundef %i.cv, ptr noundef %0, i32 noundef %.01214.i, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.cx = add i32 %.01214.i, 16
  %i.cy = add nuw i32 %.015.i, 1                  ; 2 uses
  %exitcond.not.i223 = icmp eq i32 %i.cy, %i.ct
  br i1 %exitcond.not.i223, label %spotlight_uuid.exit, label %.lr.ph.i222, !llvm.loop !19

spotlight_uuid.exit:                              ; preds = %.lr.ph.i222, %bb.p
  %i.cz = sub i32 %.0213244, %i.ct
  %i.da = add i32 %i.k, %.0212245
  br label %bb.ad

bb.q:                                             ; preds = %bb.c
  %i.db = load i32, ptr @ett_afp_spotlight_query_line, align 4
  %i.dc = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %.0212245, i32 noundef 8, i32 noundef %i.db, ptr noundef null, ptr noundef nonnull @.str.765)
  %i.dd = call i64 @tvb_get_uint64(ptr noundef %0, i32 noundef %.0212245, i32 noundef range(i32 0, -2147483647) %7)
  %i.de = lshr i64 %i.dd, 32                      ; 2 uses
  %i.df = trunc nuw i64 %i.de to i32              ; 2 uses
  %.not.i224 = icmp eq i64 %i.de, 0
  br i1 %.not.i224, label %spotlight_float.exit, label %.lr.ph.i225

.lr.ph.i225:                                      ; preds = %bb.q, %.lr.ph.i225
  %.016.i226 = phi i32 [ %i.di, %.lr.ph.i225 ], [ 0, %bb.q ]
  %.013.in15.i227 = phi i32 [ %.013.i228, %.lr.ph.i225 ], [ %.0212245, %bb.q ]
  %.013.i228 = add i32 %.013.in15.i227, 8         ; 2 uses
  %i.dg = load i32, ptr @hf_afp_float, align 4
  %i.dh = call ptr @proto_tree_add_item(ptr noundef %i.dc, i32 noundef %i.dg, ptr noundef %0, i32 noundef %.013.i228, i32 noundef 8, i32 noundef range(i32 0, -2147483647) %7) ; 0 uses
  %i.di = add nuw i32 %.016.i226, 1               ; 2 uses
  %exitcond.not.i229 = icmp eq i32 %i.di, %i.df
  br i1 %exitcond.not.i229, label %spotlight_float.exit, label %.lr.ph.i225, !llvm.loop !20

spotlight_float.exit:                             ; preds = %.lr.ph.i225, %bb.q
  %i.dj = sub i32 %.0213244, %i.df
  %i.dk = add i32 %i.k, %.0212245
  br label %bb.ad

bb.r:                                             ; preds = %bb.c
  switch i16 %trunc220, label %bb.x [
    i16 3072, label %bb.s
    i16 7168, label %bb.t
    i16 6912, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  %i.dl = load ptr, ptr %i.g, align 8
  %i.dm = add i32 %.0212245, 8
  %i.dn = add nsw i32 %i.k, -8
  %i.do = call ptr @tvb_get_string_enc(ptr noundef %i.dl, ptr noundef %0, i32 noundef %i.dm, i32 noundef %i.dn, i32 noundef 2)
  %i.dp = load i32, ptr @hf_afp_string, align 4
  %i.dq = call ptr @proto_tree_add_string(ptr noundef %2, i32 noundef %i.dp, ptr noundef %0, i32 noundef %.0212245, i32 noundef %i.k, ptr noundef %i.do) ; 0 uses
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.dr = load ptr, ptr %i.g, align 8
  %i.ds = add i32 %.0212245, 8
  %i.dt = add nsw i32 %i.k, -8
  %i.du = call ptr @tvb_get_string_enc(ptr noundef %i.dr, ptr noundef %0, i32 noundef %i.ds, i32 noundef %i.dt, i32 noundef 536870916)
  %i.dv = load i32, ptr @hf_afp_utf_16_string, align 4
  %i.dw = call ptr @proto_tree_add_string(ptr noundef %2, i32 noundef %i.dv, ptr noundef %0, i32 noundef %.0212245, i32 noundef %i.k, ptr noundef %i.du) ; 0 uses
  br label %bb.x

bb.u:                                             ; preds = %bb.r
  %i.dx = load i32, ptr @ett_afp_spotlight_query_line, align 4
  %i.dy = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %.0212245, i32 noundef %i.k, i32 noundef %i.dx, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1130)
  %i.dz = icmp samesign ult i32 %i.k, 9
  br i1 %i.dz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ea = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ea, ptr noundef nonnull @.str.1131)
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.eb = add i32 %.0212245, 8
  %i.ec = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.eb, i32 noundef %i.k)
  %i.ed = load ptr, ptr @spotlight_handle, align 8
  %i.ee = call i32 @call_dissector(ptr noundef %i.ed, ptr noundef %i.ec, ptr noundef %1, ptr noundef %i.dy) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.t, %bb.s, %bb.r
  %i.ef = add nsw i32 %.0213244, -1
  %i.eg = add i32 %i.k, %.0212245
  br label %bb.ad

bb.y:                                             ; preds = %bb.c
  %i.eh = load i32, ptr @ett_afp_spotlight_query_line, align 4
  %i.ei = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %.0212245, i32 noundef %i.k, i32 noundef %i.eh, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1132) ; 3 uses
  %i.ej = icmp samesign ult i32 %i.k, 9
  br i1 %i.ej, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ek = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ek, ptr noundef nonnull @.str.1131)
  br label %spotlight_CNID_array.exit

bb.aa:                                            ; preds = %bb.y
  %i.el = add i32 %.0212245, 8                    ; 2 uses
  %i.em = call i64 @tvb_get_uint64(ptr noundef %0, i32 noundef %i.el, i32 noundef range(i32 0, -2147483647) %7) ; 2 uses
  %i.en = trunc i64 %i.em to i32                  ; 2 uses
  %i.eo = and i32 %i.en, 65535                    ; 2 uses
  %9 = lshr i32 %i.en, 16
  %i.ep = lshr i64 %i.em, 32
  %i.eq = trunc nuw i64 %i.ep to i32
  %i.er = load i32, ptr @hf_afp_unknown16, align 4
  %i.es = add i32 %.0212245, 10
  %i.et = call ptr @proto_tree_add_uint(ptr noundef %i.ei, i32 noundef %i.er, ptr noundef %0, i32 noundef %i.es, i32 noundef 2, i32 noundef %9) ; 0 uses
  %i.eu = load i32, ptr @hf_afp_unknown32, align 4
  %i.ev = add i32 %.0212245, 12
  %i.ew = call ptr @proto_tree_add_uint(ptr noundef %i.ei, i32 noundef %i.eu, ptr noundef %0, i32 noundef %i.ev, i32 noundef 4, i32 noundef %i.eq) ; 0 uses
  %.not21.i = icmp eq i32 %i.eo, 0
  br i1 %.not21.i, label %spotlight_CNID_array.exit, label %.lr.ph.i230

.lr.ph.i230:                                      ; preds = %bb.aa, %.lr.ph.i230
  %.023.i = phi i32 [ %i.ex, %.lr.ph.i230 ], [ %i.eo, %bb.aa ]
  %.020.in22.i = phi i32 [ %.020.i, %.lr.ph.i230 ], [ %i.el, %bb.aa ]
  %i.ex = add nsw i32 %.023.i, -1                 ; 2 uses
  %.020.i = add i32 %.020.in22.i, 8               ; 2 uses
  %i.ey = load i32, ptr @hf_afp_cnid, align 4
  %i.ez = call ptr @proto_tree_add_item(ptr noundef %i.ei, i32 noundef %i.ey, ptr noundef %0, i32 noundef %.020.i, i32 noundef 8, i32 noundef range(i32 0, -2147483647) %7) ; 0 uses
  %.not.i231 = icmp eq i32 %i.ex, 0
  br i1 %.not.i231, label %spotlight_CNID_array.exit, label %.lr.ph.i230, !llvm.loop !21

spotlight_CNID_array.exit:                        ; preds = %.lr.ph.i230, %bb.aa, %bb.z
  %i.fa = add nsw i32 %.0213244, -1
  %i.fb = add i32 %i.k, %.0212245
  br label %bb.ad

bb.ab:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  %i.fc = call i64 @tvb_get_uint64(ptr noundef %0, i32 noundef %.0212245, i32 noundef range(i32 0, -2147483647) %7) ; 2 uses
  %i.fd = lshr i64 %i.fc, 32                      ; 2 uses
  %i.fe = trunc nuw i64 %i.fd to i32              ; 3 uses
  %i.ff = icmp ugt i64 %i.fc, 90194313215
  br i1 %i.ff, label %spotlight_date.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ab
  %.not.i232 = icmp eq i64 %i.fd, 0
  br i1 %.not.i232, label %spotlight_date.exit.thread236, label %.lr.ph.i233

spotlight_date.exit.thread:                       ; preds = %bb.ab
  %i.fg = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ei_afp_subquery_count_over_safety_limit, ptr noundef nonnull @.str.1136, i32 noundef %i.fe, i32 noundef 20) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  br label %.loopexit239

.lr.ph.i233:                                      ; preds = %.preheader.i, %.lr.ph.i233
  %.025.i = phi i32 [ %i.fm, %.lr.ph.i233 ], [ 0, %.preheader.i ]
  %.022.in24.i = phi i32 [ %.022.i, %.lr.ph.i233 ], [ %.0212245, %.preheader.i ]
  %.022.i = add i32 %.022.in24.i, 8               ; 3 uses
  %i.fh = call i64 @tvb_get_uint64(ptr noundef %0, i32 noundef %.022.i, i32 noundef range(i32 0, -2147483647) %7)
  %i.fi = lshr i64 %i.fh, 24
  %i.fj = add nsw i64 %i.fi, -280878921600
  store i64 %i.fj, ptr %8, align 8
  store i32 0, ptr %i.f, align 8
  %i.fk = load i32, ptr @hf_afp_spotlight_date, align 4
  %i.fl = call ptr @proto_tree_add_time(ptr noundef %2, i32 noundef %i.fk, ptr noundef %0, i32 noundef %.022.i, i32 noundef 8, ptr noundef nonnull %8) ; 0 uses
  %i.fm = add nuw nsw i32 %.025.i, 1              ; 2 uses
  %exitcond.not.i234 = icmp eq i32 %i.fm, %i.fe
  br i1 %exitcond.not.i234, label %spotlight_date.exit.thread236, label %.lr.ph.i233, !llvm.loop !22

spotlight_date.exit.thread236:                    ; preds = %.lr.ph.i233, %.preheader.i
  %.021.i238 = phi i32 [ 0, %.preheader.i ], [ %i.fe, %.lr.ph.i233 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  %i.fn = sub i32 %.0213244, %.021.i238
  %i.fo = add i32 %i.k, %.0212245
  br label %bb.ad

bb.ac:                                            ; preds = %bb.c
  %i.fp = and i64 %i.m, 65535
  %i.fq = load i32, ptr @hf_afp_query_type, align 4
  %i.fr = call ptr @val64_to_str_const(i64 noundef %i.fp, ptr noundef nonnull @qtype_string_values, ptr noundef nonnull @.str.1119)
  %i.fs = call ptr @proto_tree_add_string(ptr noundef %2, i32 noundef %i.fq, ptr noundef %0, i32 noundef %.0212245, i32 noundef %i.k, ptr noundef %i.fr) ; 0 uses
  %i.ft = add nsw i32 %.0213244, -1
  %i.fu = add i32 %i.k, %.0212245
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %spotlight_date.exit.thread236, %spotlight_CNID_array.exit, %bb.x, %spotlight_float.exit, %spotlight_uuid.exit, %spotlight_int64.exit, %bb.n, %.loopexit, %bb.i
  %.3 = phi i32 [ %i.ft, %bb.ac ], [ %i.bh, %bb.i ], [ %.2, %.loopexit ], [ %i.cd, %bb.n ], [ %i.cn, %spotlight_int64.exit ], [ %i.cz, %spotlight_uuid.exit ], [ %i.dj, %spotlight_float.exit ], [ %i.ef, %bb.x ], [ %i.fa, %spotlight_CNID_array.exit ], [ %i.fn, %spotlight_date.exit.thread236 ] ; 2 uses
  %.1 = phi i32 [ %i.fu, %bb.ac ], [ %i.bg, %bb.i ], [ %i.by, %.loopexit ], [ %i.ce, %bb.n ], [ %i.co, %spotlight_int64.exit ], [ %i.da, %spotlight_uuid.exit ], [ %i.dk, %spotlight_float.exit ], [ %i.eg, %bb.x ], [ %i.fb, %spotlight_CNID_array.exit ], [ %i.fo, %spotlight_date.exit.thread236 ] ; 3 uses
  %i.fv = icmp slt i32 %.1, %i.b
  %i.fw = icmp sgt i32 %.3, 0
  %i.fx = select i1 %i.fv, i1 %i.fw, i1 false
  br i1 %i.fx, label %bb.b, label %.loopexit239, !llvm.loop !23

.loopexit239:                                     ; preds = %bb.b, %bb.ad, %bb.a, %spotlight_date.exit.thread
  %.0212241 = phi i32 [ %.0212245, %spotlight_date.exit.thread ], [ %3, %bb.a ], [ %.0212245, %bb.b ], [ %.1, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0212241
}

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint64_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val64_to_str_const(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @increment_dissection_depth(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @decrement_dissection_depth(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint64_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @add_srt_table_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @init_srt_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @init_srt_table_row(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wmem_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { allocsize(1) }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
end_hunk_0
