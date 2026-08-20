inline.NumInlined: 42
inline.NumDeleted: 11
begin_hunk_0_@proto_register_subtree_array
; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_quakeworld(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i16, align 2                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca [2049 x i8], align 16             ; 8 uses
  %i.g = load ptr, ptr @gbl_quakeworldServerPorts, align 8
  %i.h = getelementptr i8, ptr %1, i64 292        ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = tail call zeroext i1 @value_is_in_range(ptr noundef %i.g, i32 noundef %i.i) ; 3 uses
  %not. = xor i1 %i.j, true
  %i.k = zext i1 %not. to i32                     ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 8          ; 6 uses
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @col_set_str(ptr noundef %i.m, i32 noundef 35, ptr noundef nonnull @.str.56)
  %i.n = load ptr, ptr %i.l, align 8
  %i.o = getelementptr i8, ptr %1, i64 416        ; 7 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call ptr @val_to_str(ptr noundef %i.p, i32 noundef %i.k, ptr noundef nonnull @names_direction, ptr noundef nonnull @.str.59)
  tail call void @col_add_str(ptr noundef %i.n, i32 noundef 25, ptr noundef %i.q)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load i32, ptr @proto_quakeworld, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.r, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.t = load i32, ptr @ett_quakeworld, align 4
  %i.u = tail call ptr @proto_item_add_subtree(ptr noundef %i.s, i32 noundef %i.t) ; 2 uses
  %i.v = load i32, ptr @hf_quakeworld_s2c, align 4
  %i.w = load i32, ptr @hf_quakeworld_c2s, align 4
  %i.x = select i1 %i.j, i32 %i.w, i32 %i.v
  %i.y = load ptr, ptr %i.o, align 8
  %i.z = tail call ptr @val_to_str(ptr noundef %i.y, i32 noundef %i.k, ptr noundef nonnull @names_direction, ptr noundef nonnull @.str.59)
  %i.aa = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.u, i32 noundef %i.x, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @.str.60, ptr noundef %i.z) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ]  ; 4 uses
  %i.ab = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 0)
  %i.ac = icmp eq i32 %i.ab, -1
  %i.ad = load ptr, ptr %i.l, align 8             ; 2 uses
  br i1 %i.ac, label %bb.d, label %bb.bb

bb.d:                                             ; preds = %bb.c
  tail call void @col_append_str(ptr noundef %i.ad, i32 noundef 25, ptr noundef nonnull @.str.61)
  %i.ae = load i32, ptr @hf_quakeworld_connectionless, align 4
  %i.af = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %.0, i32 noundef %i.ae, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @.str.62) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.ag = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 0)
  %i.ah = load i32, ptr @ett_quakeworld_connectionless, align 4
  %i.ai = tail call ptr @proto_tree_add_subtree(ptr noundef %.0, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef %i.ah, ptr noundef null, ptr noundef nonnull @.str.4) ; 2 uses
  %i.aj = load i32, ptr @hf_quakeworld_connectionless_marker, align 4
  %i.ak = tail call ptr @proto_tree_add_uint(ptr noundef %i.ai, i32 noundef %i.aj, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef %i.ag) ; 0 uses
  %i.al = load i32, ptr @hf_quakeworld_connectionless_text, align 4
  %i.am = load ptr, ptr %i.o, align 8
  %i.an = call ptr @proto_tree_add_item_ret_string_and_length(ptr noundef %i.ai, i32 noundef %i.al, ptr noundef %0, i32 noundef 4, i32 noundef -1, i32 noundef 0, ptr noundef %i.am, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.ao = load i32, ptr @ett_quakeworld_connectionless_text, align 4
  %i.ap = call ptr @proto_item_add_subtree(ptr noundef %i.an, i32 noundef %i.ao) ; 7 uses
  br i1 %i.j, label %bb.e, label %bb.ay

bb.e:                                             ; preds = %bb.d
  %i.aq = load ptr, ptr %i.o, align 8
  %i.ar = load ptr, ptr %i.a, align 8
  %i.as = load i32, ptr %i.b, align 4             ; 5 uses
  store i32 0, ptr @cmd_argc, align 4
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.preheader.lr.ph.i.i, label %Cmd_TokenizeString.exit.i

.preheader.lr.ph.i.i:                             ; preds = %bb.e
  %i.au = load ptr, ptr @g_ascii_table, align 8   ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.r, %.preheader.lr.ph.i.i
  %.080.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i ], [ %i.cs, %bb.r ] ; 4 uses
  %.02179.i.i = phi ptr [ %i.ar, %.preheader.lr.ph.i.i ], [ %.054.i.i.i, %bb.r ] ; 5 uses
  %i.av = load i8, ptr %.02179.i.i, align 1
  %.fr.i.i = freeze i8 %i.av                      ; 5 uses
  %i.aw = icmp slt i8 %.fr.i.i, 33
  br i1 %i.aw, label %switch.early.test.i.i, label %.critedge.i.i

switch.early.test.i.i:                            ; preds = %.preheader.i.i
  switch i8 %.fr.i.i, label %.lr.ph.i.i [
    i8 10, label %.critedge.i.i
    i8 0, label %.critedge.i.i
  ]

.lr.ph.i.i:                                       ; preds = %switch.early.test.i.i, %.lr.ph.i.i
  %.176.i.i = phi i32 [ %i.ay, %.lr.ph.i.i ], [ %.080.i.i, %switch.early.test.i.i ]
  %.12275.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.02179.i.i, %switch.early.test.i.i ]
  %i.ax = getelementptr i8, ptr %.12275.i.i, i64 1 ; 3 uses
  %i.ay = add nsw i32 %.176.i.i, 1                ; 3 uses
  %i.az = load i8, ptr %i.ax, align 1             ; 4 uses
  %.not.i.i = icmp ne i8 %i.az, 0
  %i.ba = icmp slt i8 %i.az, 33
  %or.cond.not50.not53.i.i = and i1 %.not.i.i, %i.ba
  %.not27.i.i = icmp ne i8 %i.az, 10
  %or.cond30.not51.i.i = and i1 %.not27.i.i, %or.cond.not50.not53.i.i
  %i.bb = icmp slt i32 %i.ay, %i.as
  %or.cond31.i.i = select i1 %or.cond30.not51.i.i, i1 %i.bb, i1 false
  br i1 %or.cond31.i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !6

.critedge.i.i:                                    ; preds = %.lr.ph.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %.preheader.i.i
  %.122.lcssa.i.i = phi ptr [ %.02179.i.i, %switch.early.test.i.i ], [ %.02179.i.i, %switch.early.test.i.i ], [ %.02179.i.i, %.preheader.i.i ], [ %i.ax, %.lr.ph.i.i ] ; 2 uses
  %.1.lcssa.i.i = phi i32 [ %.080.i.i, %switch.early.test.i.i ], [ %.080.i.i, %switch.early.test.i.i ], [ %.080.i.i, %.preheader.i.i ], [ %i.ay, %.lr.ph.i.i ] ; 4 uses
  %.lcssa.i.i = phi i8 [ %.fr.i.i, %switch.early.test.i.i ], [ %.fr.i.i, %switch.early.test.i.i ], [ %.fr.i.i, %.preheader.i.i ], [ %i.az, %.lr.ph.i.i ]
  switch i8 %.lcssa.i.i, label %bb.f [
    i8 10, label %Cmd_TokenizeString.exit.i
    i8 0, label %Cmd_TokenizeString.exit.i
  ]

bb.f:                                             ; preds = %.critedge.i.i
  %i.bc = icmp eq i32 %.1.lcssa.i.i, %i.as
  br i1 %i.bc, label %Cmd_TokenizeString.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = sub i32 %i.as, %.1.lcssa.i.i            ; 5 uses
  %i.be = add i32 %i.bd, 1
  %i.bf = sext i32 %i.be to i64
  %i.bg = call noalias ptr @wmem_alloc(ptr noundef %i.aq, i64 noundef %i.bf) #6 ; 3 uses
  store i8 0, ptr %i.bg, align 1
  %i.bh = icmp eq ptr %.122.lcssa.i.i, null
  br i1 %i.bh, label %Cmd_TokenizeString.exit.i, label %.preheader72.i.i.i

.preheader72.i.i.i:                               ; preds = %bb.g, %.preheader72.i.i.i.backedge
  %.143.i.i = phi i32 [ %.143.i.i.be, %.preheader72.i.i.i.backedge ], [ 0, %bb.g ] ; 5 uses
  %.156.i.i.i = phi ptr [ %.156.i.i.i.be, %.preheader72.i.i.i.backedge ], [ %.122.lcssa.i.i, %bb.g ] ; 7 uses
  %i.bi = load i8, ptr %.156.i.i.i, align 1       ; 4 uses
  switch i8 %i.bi, label %bb.h [
    i8 0, label %Cmd_TokenizeString.exit.i
    i8 32, label %bb.i
  ]

bb.h:                                             ; preds = %.preheader72.i.i.i
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr [2 x i8], ptr %i.au, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = and i16 %i.bl, 4
  %.not65.i.i.i = icmp eq i16 %i.bm, 0
  br i1 %.not65.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader72.i.i.i
  %i.bn = getelementptr i8, ptr %.156.i.i.i, i64 1
  %i.bo = add i32 %.143.i.i, 1
  br label %.preheader72.i.i.i.backedge

.preheader72.i.i.i.backedge:                      ; preds = %.preheader70.i.i.i, %.preheader70.i.i.i, %bb.i
  %.143.i.i.be = phi i32 [ %i.bo, %bb.i ], [ %.3.i.i, %.preheader70.i.i.i ], [ %.3.i.i, %.preheader70.i.i.i ]
  %.156.i.i.i.be = phi ptr [ %i.bn, %bb.i ], [ %.257.i.i.i, %.preheader70.i.i.i ], [ %.257.i.i.i, %.preheader70.i.i.i ]
  br label %.preheader72.i.i.i

bb.j:                                             ; preds = %bb.h
  switch i8 %i.bi, label %.loopexit.i.i.i [
    i8 47, label %bb.k
    i8 34, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr i8, ptr %.156.i.i.i, i64 1
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = icmp eq i8 %i.bq, 47
  br i1 %i.br, label %.preheader70.i.i.i, label %.loopexit.i.i.i

.preheader70.i.i.i:                               ; preds = %bb.k, %bb.l
  %.3.i.i = phi i32 [ %i.bu, %bb.l ], [ %.143.i.i, %bb.k ] ; 3 uses
  %i.bs = phi i8 [ %.pre.i.i.i, %bb.l ], [ 47, %bb.k ]
  %.257.i.i.i = phi ptr [ %i.bt, %bb.l ], [ %.156.i.i.i, %bb.k ] ; 3 uses
  switch i8 %i.bs, label %bb.l [
    i8 0, label %.preheader72.i.i.i.backedge
    i8 10, label %.preheader72.i.i.i.backedge
  ]

bb.l:                                             ; preds = %.preheader70.i.i.i
  %i.bt = getelementptr i8, ptr %.257.i.i.i, i64 1 ; 2 uses
  %i.bu = add i32 %.3.i.i, 1
  %.pre.i.i.i = load i8, ptr %i.bt, align 1
  br label %.preheader70.i.i.i, !llvm.loop !8

bb.m:                                             ; preds = %bb.j
  %i.bv = getelementptr i8, ptr %.156.i.i.i, i64 1 ; 2 uses
  %i.bw = add i32 %.143.i.i, 1                    ; 3 uses
  %i.bx = icmp sgt i32 %i.bd, 0
  br i1 %i.bx, label %.lr.ph.preheader.i.i.i, label %.loopexit.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.m
  %wide.trip.count.i.i.i = zext nneg i32 %i.bd to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.n ] ; 3 uses
  %.387.i.i.i = phi ptr [ %i.bv, %.lr.ph.preheader.i.i.i ], [ %i.by, %bb.n ] ; 2 uses
  %i.by = getelementptr i8, ptr %.387.i.i.i, i64 1 ; 3 uses
  %i.bz = load i8, ptr %.387.i.i.i, align 1       ; 2 uses
  switch i8 %i.bz, label %bb.n [
    i8 34, label %COM_Parse.exit.loopexit84.i.i
    i8 0, label %COM_Parse.exit.loopexit84.i.i
  ]

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.ca = getelementptr i8, ptr %i.bg, i64 %indvars.iv.i.i.i
  store i8 %i.bz, ptr %i.ca, align 1
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %COM_Parse.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !9

.loopexit.i.i.i:                                  ; preds = %bb.k, %bb.j, %bb.m
  %.244.i.i = phi i32 [ %i.bw, %bb.m ], [ %.143.i.i, %bb.j ], [ %.143.i.i, %bb.k ]
  %.4.i.i.i = phi ptr [ %i.bv, %bb.m ], [ %.156.i.i.i, %bb.j ], [ %.156.i.i.i, %bb.k ]
  %4 = sext i32 %i.bd to i64
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.o, %.loopexit.i.i.i
  %indvars.iv.i.a = phi i64 [ %indvars.iv.next.i, %bb.o ], [ 0, %.loopexit.i.i.i ] ; 2 uses
  %.5.i.i.i = phi ptr [ %i.cc, %bb.o ], [ %.4.i.i.i, %.loopexit.i.i.i ]
  %.2.i.i.i = phi i8 [ %i.cd, %bb.o ], [ %i.bi, %.loopexit.i.i.i ]
  %i.cb = getelementptr i8, ptr %i.bg, i64 %indvars.iv.i.a
  store i8 %.2.i.i.i, ptr %i.cb, align 1
  %i.cc = getelementptr i8, ptr %.5.i.i.i, i64 1  ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i.a, 1 ; 3 uses
  %i.cd = load i8, ptr %i.cc, align 1             ; 3 uses
  %.not66.i.i.i = icmp eq i8 %i.cd, 32
  br i1 %.not66.i.i.i, label %COM_Parse.exit.i.loopexit.i, label %bb.o

bb.o:                                             ; preds = %.preheader.i.i.i
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr [2 x i8], ptr %i.au, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2
  %i.ch = and i16 %i.cg, 4
  %.not67.i.i.i = icmp eq i16 %i.ch, 0
  %i.ci = icmp slt i64 %indvars.iv.next.i, %4
  %or.cond.i.i.i = and i1 %i.ci, %.not67.i.i.i
  br i1 %or.cond.i.i.i, label %.preheader.i.i.i, label %COM_Parse.exit.i.loopexit.i, !llvm.loop !10

COM_Parse.exit.loopexit84.i.i:                    ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %indvars104.i.i = trunc i64 %indvars.iv.i.i.i to i32
  br label %COM_Parse.exit.i.i

COM_Parse.exit.i.loopexit.i:                      ; preds = %bb.o, %.preheader.i.i.i
  %i.cj = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %COM_Parse.exit.i.i

COM_Parse.exit.i.i:                               ; preds = %bb.n, %COM_Parse.exit.i.loopexit.i, %COM_Parse.exit.loopexit84.i.i
  %.4.i.i = phi i32 [ %i.bw, %COM_Parse.exit.loopexit84.i.i ], [ %.244.i.i, %COM_Parse.exit.i.loopexit.i ], [ %i.bw, %bb.n ] ; 2 uses
  %.2.i.i = phi i32 [ %indvars104.i.i, %COM_Parse.exit.loopexit84.i.i ], [ %i.cj, %COM_Parse.exit.i.loopexit.i ], [ %i.bd, %bb.n ] ; 2 uses
  %.054.i.i.i = phi ptr [ %i.by, %COM_Parse.exit.loopexit84.i.i ], [ %i.cc, %COM_Parse.exit.i.loopexit.i ], [ %i.by, %bb.n ] ; 3 uses
  %.not29.i.i = icmp eq ptr %.054.i.i.i, null
  br i1 %.not29.i.i, label %Cmd_TokenizeString.exit.i, label %bb.p

bb.p:                                             ; preds = %COM_Parse.exit.i.i
  %i.ck = load i32, ptr @cmd_argc, align 4        ; 3 uses
  %i.cl = icmp slt i32 %i.ck, 80
  br i1 %i.cl, label %bb.q, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.p
  %.pre.i.i = add i32 %.4.i.i, %.1.lcssa.i.i
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cm = sext i32 %i.ck to i64                   ; 3 uses
  %i.cn = getelementptr [8 x i8], ptr @cmd_argv, i64 %i.cm
  store ptr %.054.i.i.i, ptr %i.cn, align 8
  %i.co = add i32 %.4.i.i, %.1.lcssa.i.i          ; 2 uses
  %i.cp = getelementptr [4 x i8], ptr @cmd_argv_start, i64 %i.cm
  store i32 %i.co, ptr %i.cp, align 4
  %i.cq = getelementptr [4 x i8], ptr @cmd_argv_length, i64 %i.cm
  store i32 %.2.i.i, ptr %i.cq, align 4
  %i.cr = add nsw i32 %i.ck, 1
  store i32 %i.cr, ptr @cmd_argc, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i
  %.pre-phi.i.i = phi i32 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.co, %bb.q ]
  %i.cs = add i32 %.pre-phi.i.i, %.2.i.i          ; 2 uses
  %i.ct = icmp slt i32 %i.cs, %i.as
  br i1 %i.ct, label %.preheader.i.i, label %Cmd_TokenizeString.exit.i, !llvm.loop !11

Cmd_TokenizeString.exit.i:                        ; preds = %bb.r, %COM_Parse.exit.i.i, %bb.g, %bb.f, %.critedge.i.i, %.critedge.i.i, %.preheader72.i.i.i, %bb.e
  %i.cu = load i32, ptr @cmd_argc, align 4        ; 3 uses
  %.not.i110.i = icmp sgt i32 %i.cu, 0            ; 4 uses
  %i.cv = load ptr, ptr @cmd_argv, align 16
  %spec.select.i = select i1 %.not.i110.i, ptr %i.cv, ptr @.str.85 ; 9 uses
  %i.cw = call i32 @strcmp(ptr noundef %spec.select.i, ptr noundef nonnull dereferenceable(5) @.str.66) #7
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %.sink.split.i, label %bb.s

bb.s:                                             ; preds = %Cmd_TokenizeString.exit.i
  %i.cy = call i32 @strcmp(ptr noundef %spec.select.i, ptr noundef nonnull dereferenceable(7) @.str.68) #7
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %.sink.split.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.da = call i32 @strcmp(ptr noundef %spec.select.i, ptr noundef nonnull dereferenceable(4) @.str.70) #7
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %.sink.split.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = call i32 @strcmp(ptr noundef %spec.select.i, ptr noundef nonnull dereferenceable(8) @.str.72) #7
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %Cmd_Argv_length.exit.i, label %bb.an

Cmd_Argv_length.exit.i:                           ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i16 0, ptr %i.d, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  store i32 0, ptr %i.e, align 4
  %i.de = load i32, ptr @cmd_argv_length, align 16
  %spec.select239.i = select i1 %.not.i110.i, i32 %i.de, i32 0 ; 2 uses
  %.not107.not246.i = icmp eq ptr %i.ap, null     ; 3 uses
  br i1 %.not107.not246.i, label %Cmd_Argv.exit123.i, label %bb.v

bb.v:                                             ; preds = %Cmd_Argv_length.exit.i
  %i.df = load i32, ptr @hf_quakeworld_connectionless_command, align 4
  %i.dg = call ptr @proto_tree_add_string(ptr noundef nonnull %i.ap, i32 noundef %i.df, ptr noundef %0, i32 noundef 4, i32 noundef %spec.select239.i, ptr noundef nonnull @.str.73)
  %i.dh = load i32, ptr @hf_quakeworld_connectionless_arguments, align 4
  %i.di = load i32, ptr @cmd_argc, align 4
  %.not.i113.i = icmp sgt i32 %i.di, 1
  br i1 %.not.i113.i, label %bb.w, label %Cmd_Argv_start.exit117.i

Cmd_Argv_start.exit117.i:                         ; preds = %bb.v
  %i.dj = load i32, ptr %i.b, align 4
  br label %Cmd_Argv_start.exit120.i

bb.w:                                             ; preds = %bb.v
  %i.dk = load i32, ptr getelementptr inbounds nuw (i8, ptr @cmd_argv_start, i64 4), align 4 ; 3 uses
  %i.dl = add i32 %i.dk, 4
  %i.dm = load i32, ptr %i.b, align 4
  %reass.sub.i = sub i32 %i.dm, %i.dk
  %i.dn = sext i32 %i.dk to i64
  br label %Cmd_Argv_start.exit120.i

Cmd_Argv_start.exit120.i:                         ; preds = %bb.w, %Cmd_Argv_start.exit117.i
  %.in.i = phi i32 [ %reass.sub.i, %bb.w ], [ %i.dj, %Cmd_Argv_start.exit117.i ]
  %i.do = phi i32 [ %i.dl, %bb.w ], [ 4, %Cmd_Argv_start.exit117.i ]
  %.0.i119.i = phi i64 [ %i.dn, %bb.w ], [ 0, %Cmd_Argv_start.exit117.i ]
  %i.dp = add i32 %.in.i, 1
  %i.dq = load ptr, ptr %i.a, align 8
  %i.dr = getelementptr i8, ptr %i.dq, i64 %.0.i119.i
  %i.ds = call ptr @proto_tree_add_string(ptr noundef nonnull %i.ap, i32 noundef %i.dh, ptr noundef %0, i32 noundef %i.do, i32 noundef %i.dp, ptr noundef %i.dr)
  %i.dt = load i32, ptr @ett_quakeworld_connectionless_arguments, align 4
  %i.du = call ptr @proto_item_add_subtree(ptr noundef %i.ds, i32 noundef %i.dt)
  %.pre313.i = load i32, ptr @cmd_argc, align 4
  br label %Cmd_Argv.exit123.i

Cmd_Argv.exit123.i:                               ; preds = %Cmd_Argv_start.exit120.i, %Cmd_Argv_length.exit.i
  %i.dv = phi i32 [ %.pre313.i, %Cmd_Argv_start.exit120.i ], [ %i.cu, %Cmd_Argv_length.exit.i ]
  %.095.i = phi ptr [ %i.du, %Cmd_Argv_start.exit120.i ], [ null, %Cmd_Argv_length.exit.i ] ; 5 uses
  %.094.i = phi ptr [ %i.dg, %Cmd_Argv_start.exit120.i ], [ null, %Cmd_Argv_length.exit.i ]
  %.not.i121.i = icmp sgt i32 %i.dv, 1
  %i.dw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cmd_argv, i64 8), align 8
  %spec.select240.i = select i1 %.not.i121.i, ptr %i.dw, ptr @.str.85
  %i.dx = call zeroext i1 @ws_strtou32(ptr noundef %spec.select240.i, ptr noundef null, ptr noundef nonnull %i.c)
  %i.dy = load i32, ptr @cmd_argc, align 4
  %.not.i124.i = icmp sgt i32 %i.dy, 2
  %i.dz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cmd_argv, i64 16), align 16
  %.0.i125.i = select i1 %.not.i124.i, ptr %i.dz, ptr @.str.85
  %i.ea = call zeroext i1 @ws_strtou16(ptr noundef %.0.i125.i, ptr noundef null, ptr noundef nonnull %i.d)
  %i.eb = load i32, ptr @cmd_argc, align 4
  %.not.i127.i = icmp sgt i32 %i.eb, 3
  %i.ec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cmd_argv, i64 24), align 8
  %.0.i128.i = select i1 %.not.i127.i, ptr %i.ec, ptr @.str.85
  %i.ed = call zeroext i1 @ws_strtou32(ptr noundef %.0.i128.i, ptr noundef null, ptr noundef nonnull %i.e)
  %i.ee = load i32, ptr @cmd_argc, align 4
  %.not.i130.i = icmp sgt i32 %i.ee, 4
  %i.ef = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cmd_argv, i64 32), align 16
  %.0.i131.i = select i1 %.not.i130.i, ptr %i.ef, ptr @.str.85 ; 2 uses
  %or.cond.i = select i1 %i.dx, i1 %i.ea, i1 false
  %or.cond3.i = select i1 %or.cond.i, i1 %i.ed, i1 false
  %or.cond109.i = select i1 %.not107.not246.i, i1 true, i1 %or.cond3.i
  br i1 %or.cond109.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %Cmd_Argv.exit123.i
  %i.eg = call ptr @expert_add_info(ptr noundef %1, ptr noundef %.094.i, ptr noundef nonnull @ei_quakeworld_connectionless_command_invalid) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %Cmd_Argv.exit123.i
  %.not108.i = icmp eq ptr %.095.i, null
  br i1 %.not108.i, label %Cmd_Argv_length.exit162.i, label %Cmd_Argv_length.exit138.i

Cmd_Argv_length.exit138.i:                        ; preds = %bb.y
  %i.eh = load i32, ptr @hf_quakeworld_connectionless_connect_version, align 4
  %i.ei = load i32, ptr @cmd_argc, align 4
  %.not.i133.i = icmp sgt i32 %i.ei, 1            ; 2 uses
  %i.ej = load i32, ptr getelementptr inbounds nuw (i8, ptr @cmd_argv_start, i64 4), align 4
  %i.ek = add i32 %i.ej, 4
  %i.el = load i32, ptr getelementptr inbounds nuw (i8, ptr @cmd_argv_length, i64 4), align 4
  %i.em = select i1 %.not.i133.i, i32 %i.ek, i32 4
  %.0.i137.i = select i1 %.not.i133.i, i32 %i.el, i32 0
  %i.en = load i32, ptr %i.c, align 4
  %i.eo = call ptr @proto_tree_add_uint(ptr noundef nonnull %.095.i, i32 noundef %i.eh, ptr noundef %0, i32 noundef %i.em, i32 noundef %.0.i137.i, i32 noundef %i.en) ; 0 uses
  %i.ep = load i32, ptr @hf_quakeworld_connectionless_connect_qport, align 4
  %i.eq = load i32, ptr @cmd_argc, align 4
  %.not.i139.i = icmp sgt i32 %i.eq, 2            ; 2 uses
  %i.er = load i32, ptr getelementptr inbounds nuw (i8, ptr @cmd_argv_start, i64 8), align 8
  %i.es = add i32 %i.er, 4
  %i.et = load i32, ptr getelementptr inbounds nuw (i8, ptr @cmd_argv_length, i64 8), align 8
  %i.eu = select i1 %.not.i139.i, i32 %i.es, i32 4
  %.0.i143.i = select i1 %.not.i139.i, i32 %i.et, i32 0
  %i.ev = load i16, ptr %i.d, align 2
  %i.ew = zext i16 %i.ev to i32
  %i.ex = call ptr @proto_tree_add_uint(ptr noundef nonnull %.095.i, i32 noundef %i.ep, ptr noundef %0, i32 noundef %i.eu, i32 noundef %.0.i143.i, i32 noundef %i.ew) ; 0 uses
  %i.ey = load i32, ptr @hf_quakeworld_connectionless_connect_challenge, align 4
  %i.ez = load i32, ptr @cmd_argc, align 4
  %.not.i145.i = icmp sgt i32 %i.ez, 3            ; 2 uses
  %i.fa = load i32, ptr getelementptr inbounds nuw (i8, ptr @cmd_argv_start, i64 12), align 4
  %i.fb = add i32 %i.fa, 4
  %i.fc = load i32, ptr getelementptr inbounds nuw (i8, ptr @cmd_argv_length, i64 12), align 4
  %i.fd = select i1 %.not.i145.i, i32 %i.fb, i32 4
  %.0.i149.i = select i1 %.not.i145.i, i32 %i.fc, i32 0
  %i.fe = load i32, ptr %i.e, align 4
  %i.ff = call ptr @proto_tree_add_int(ptr noundef nonnull %.095.i, i32 noundef %i.ey, ptr noundef %0, i32 noundef %i.fd, i32 noundef %.0.i149.i, i32 noundef %i.fe) ; 0 uses
  %i.fg = load i32, ptr @hf_quakeworld_connectionless_connect_infostring, align 4
  %i.fh = load i32, ptr @cmd_argc, align 4
  %.not.i151.i = icmp sgt i32 %i.fh, 4            ; 2 uses
  %i.fi = load i32, ptr getelementptr inbounds nuw (i8, ptr @cmd_argv_start, i64 16), align 16
  %i.fj = add i32 %i.fi, 4
  %i.fk = load i32, ptr getelementptr inbounds nuw (i8, ptr @cmd_argv_length, i64 16), align 16
  %i.fl = select i1 %.not.i151.i, i32 %i.fj, i32 4
  %.0.i155.i = select i1 %.not.i151.i, i32 %i.fk, i32 0
  %i.fm = call ptr @proto_tree_add_string(ptr noundef nonnull %.095.i, i32 noundef %i.fg, ptr noundef %0, i32 noundef %i.fl, i32 noundef %.0.i155.i, ptr noundef %.0.i131.i)
  %i.fn = load i32, ptr @ett_quakeworld_connectionless_connect_infostring, align 4
  %i.fo = call ptr @proto_item_add_subtree(ptr noundef %i.fm, i32 noundef %i.fn) ; 2 uses
  %i.fp = load i32, ptr @cmd_argc, align 4
  %.not.i157.i = icmp sgt i32 %i.fp, 4
  %i.fq = load i32, ptr getelementptr inbounds nuw (i8, ptr @cmd_argv_start, i64 16), align 16
  %i.fr = add i32 %i.fq, 4
  %i.fs = select i1 %.not.i157.i, i32 %i.fr, i32 4 ; 2 uses
  %i.ft = load ptr, ptr %i.o, align 8
  %i.fu = call noalias ptr @wmem_strdup(ptr noundef %i.ft, ptr noundef %.0.i131.i) ; 3 uses
  %i.fv = load i32, ptr @ett_quakeworld_connectionless_connect_infostring_key_value, align 4
  %i.fw = load i32, ptr @hf_quakeworld_connectionless_connect_infostring_key_value, align 4
  %i.fx = load i32, ptr @hf_quakeworld_connectionless_connect_infostring_key, align 4
  %i.fy = load i32, ptr @hf_quakeworld_connectionless_connect_infostring_value, align 4
  %.not70.i.i = icmp eq ptr %i.fo, null
  %i.fz = ptrtoint ptr %i.fu to i64               ; 2 uses
  br i1 %.not70.i.i, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %Cmd_Argv_length.exit138.i, %.critedge2.us.i.i
  %.081.us.i.i = phi ptr [ %i.go, %.critedge2.us.i.i ], [ %i.fu, %Cmd_Argv_length.exit138.i ] ; 3 uses
  %i.ga = load i8, ptr %.081.us.i.i, align 1
  switch i8 %i.ga, label %bb.aa [
    i8 0, label %Cmd_Argv_length.exit162.i
    i8 92, label %bb.z
  ]
end_hunk_0
