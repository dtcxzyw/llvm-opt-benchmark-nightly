Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-5co-legacy?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@dissect_FiveCoLegacy_pdu:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.e = getelementptr i8, ptr %1, i64 8          ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @col_set_str(ptr noundef %i.f, i32 noundef 35, ptr noundef nonnull @.str.96)
  %i.g = load ptr, ptr %i.e, align 8
  tail call void @col_clear(ptr noundef %i.g, i32 noundef 25)
  %i.h = tail call ptr @find_or_create_conversation(ptr noundef %1)
  %i.i = getelementptr i8, ptr %i.h, i64 24
  %i.j = load i32, ptr %i.i, align 8
  store i32 %i.j, ptr %4, align 8
  %i.k = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 0) ; 6 uses
  %i.l = zext i16 %i.k to i32                     ; 2 uses
  %i.m = tail call ptr @try_val_to_str(i32 noundef %i.l, ptr noundef nonnull @packettypenames)
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.ao, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 2)
  %i.p = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 4) ; 5 uses
  %i.q = tail call ptr @wmem_file_scope()
  %i.r = load i32, ptr @proto_FiveCoLegacy, align 4
  %i.s = getelementptr i8, ptr %1, i64 20         ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = tail call ptr @p_get_proto_data(ptr noundef %i.q, ptr noundef %1, i32 noundef %i.r, i32 noundef %i.t) ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  switch i16 %i.k, label %bb.e [
    i16 1, label %bb.d
    i16 2, label %bb.d
    i16 5, label %bb.d
    i16 7, label %bb.d
    i16 33, label %bb.d
    i16 34, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.v = load i64, ptr @g_unInternalID, align 8
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr @g_unInternalID, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0230 = phi i1 [ false, %bb.c ], [ true, %bb.d ]
  %i.x = tail call ptr @wmem_file_scope()
  %i.y = tail call noalias dereferenceable_or_null(8) ptr @wmem_alloc(ptr noundef %i.x, i64 noundef 8) #8 ; 3 uses
  %i.z = load i64, ptr @g_unInternalID, align 8
  store i64 %i.z, ptr %i.y, align 8
  %i.aa = tail call ptr @wmem_file_scope()
  %i.ab = load i32, ptr @proto_FiveCoLegacy, align 4
  %i.ac = load i32, ptr %i.s, align 4
  tail call void @p_add_proto_data(ptr noundef %i.aa, ptr noundef %1, i32 noundef %i.ab, i32 noundef %i.ac, ptr noundef %i.y)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.1231 = phi i1 [ false, %bb.b ], [ %.0230, %bb.e ]
  %.0229 = phi ptr [ %i.u, %bb.b ], [ %i.y, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.k, ptr %i.ad, align 8
  %i.ae = load i64, ptr %.0229, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ae, ptr %i.af, align 8
  %i.ag = load ptr, ptr @FiveCo_requests_hash, align 8
  %i.ah = call ptr @wmem_map_lookup(ptr noundef %i.ag, ptr noundef nonnull %4) ; 2 uses
  %i.ai = getelementptr i8, ptr %1, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr i8, ptr %i.aj, i64 53
  %i.al = load i16, ptr %i.ak, align 1
  %i.am = and i16 %i.al, 8
  %i.an = icmp eq i16 %i.am, 0
  %i.ao = icmp eq ptr %i.ah, null
  %or.cond.not239 = select i1 %i.an, i1 %i.ao, i1 false
  %or.cond3 = and i1 %.1231, %or.cond.not239
  br i1 %or.cond3, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ap = call ptr @wmem_file_scope()
  %i.aq = call noalias dereferenceable_or_null(24) ptr @wmem_alloc(ptr noundef %i.ap, i64 noundef 24) #8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.ar = load i64, ptr @g_unInternalID, align 8
  %i.as = getelementptr i8, ptr %i.aq, i64 8
  store i64 %i.ar, ptr %i.as, align 8
  %switch.tableidx = add i16 %i.k, -1             ; 3 uses
  %i.at = icmp ult i16 %switch.tableidx, 33
  br i1 %i.at, label %switch.hole_check, label %bb.h

switch.hole_check:                                ; preds = %bb.g
  %switch.maskindex = zext nneg i16 %switch.tableidx to i64
  %switch.shifted = lshr i64 4294967379, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.h

switch.lookup:                                    ; preds = %switch.hole_check
  %i.au = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.dissect_FiveCoLegacy_pdu, i64 %i.au
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16
  %i.av = getelementptr i8, ptr %i.aq, i64 16
  store i16 %switch.ext, ptr %i.av, align 8
  br label %bb.h

bb.h:                                             ; preds = %switch.hole_check, %bb.g, %switch.lookup
  %i.aw = call ptr @wmem_file_scope()
  %i.ax = call noalias dereferenceable_or_null(16) ptr @wmem_alloc(ptr noundef %i.aw, i64 noundef 16) #8 ; 5 uses
  store i16 %i.p, ptr %i.ax, align 8
  %i.ay = getelementptr i8, ptr %i.ax, i64 2
  store i16 0, ptr %i.ay, align 2
  %i.az = call ptr @wmem_file_scope()
  %i.ba = zext i16 %i.p to i64                    ; 2 uses
  %i.bb = call noalias ptr @wmem_alloc(ptr noundef %i.az, i64 noundef %i.ba) #8 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.ax, i64 8
  store ptr %i.bb, ptr %i.bc, align 8
  %i.bd = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef %i.bb, i32 noundef 6, i64 noundef %i.ba) ; 0 uses
  %i.be = load ptr, ptr @FiveCo_requests_hash, align 8
  %i.bf = call ptr @wmem_map_insert(ptr noundef %i.be, ptr noundef %i.aq, ptr noundef %i.ax) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.0228 = phi ptr [ %i.ax, %bb.h ], [ %i.ah, %bb.f ] ; 7 uses
  %.not240 = icmp eq ptr %.0228, null             ; 3 uses
  br i1 %.not240, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr i8, ptr %.0228, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = load i16, ptr %.0228, align 8
  %i.bj = zext i16 %i.bi to i32                   ; 2 uses
  %i.bk = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.bh, i32 noundef %i.bj, i32 noundef %i.bj)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0227 = phi ptr [ %i.bk, %bb.j ], [ null, %bb.i ] ; 3 uses
  %i.bl = getelementptr i8, ptr %1, i64 416
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call ptr @val_to_str(ptr noundef %i.bm, i32 noundef %i.l, ptr noundef nonnull @packettypenames, ptr noundef nonnull @.str.130) ; 2 uses
  %i.bo = load ptr, ptr %i.e, align 8
  %i.bp = zext i16 %i.o to i32
  %i.bq = zext i16 %i.p to i32                    ; 13 uses
  call void (ptr, i32, ptr, ptr, ...) @col_append_sep_fstr(ptr noundef %i.bo, i32 noundef 25, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, ptr noundef %i.bn, i32 noundef %i.bp, i32 noundef %i.bq)
  %i.br = load ptr, ptr %i.e, align 8
  call void @col_set_fence(ptr noundef %i.br, i32 noundef 25)
  %i.bs = load i32, ptr @proto_FiveCoLegacy, align 4
  %i.bt = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bs, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 2 uses
  %i.bu = load i32, ptr @ett_fiveco, align 4
  %i.bv = call ptr @proto_item_add_subtree(ptr noundef %i.bt, i32 noundef %i.bu) ; 3 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bt, ptr noundef nonnull @.str.133, ptr noundef %i.bn)
  %i.bw = load i32, ptr @hf_fiveco_header, align 4
  %i.bx = call ptr @proto_tree_add_item(ptr noundef %i.bv, i32 noundef %i.bw, ptr noundef %0, i32 noundef 0, i32 noundef 6, i32 noundef 0)
  %i.by = load i32, ptr @ett_fiveco_header, align 4
  %i.bz = call ptr @proto_item_add_subtree(ptr noundef %i.bx, i32 noundef %i.by) ; 3 uses
  %i.ca = load i32, ptr @hf_fiveco_fct, align 4
  %i.cb = call ptr @proto_tree_add_item(ptr noundef %i.bz, i32 noundef %i.ca, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cc = load i32, ptr @hf_fiveco_id, align 4
  %i.cd = call ptr @proto_tree_add_item(ptr noundef %i.bz, i32 noundef %i.cc, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ce = load i32, ptr @hf_fiveco_length, align 4
  %i.cf = call ptr @proto_tree_add_item(ptr noundef %i.bz, i32 noundef %i.ce, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.not241 = icmp eq i16 %i.p, 0
  br i1 %.not241, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = load i32, ptr @hf_fiveco_data, align 4
  %i.ch = call ptr @proto_tree_add_item(ptr noundef %i.bv, i32 noundef %i.cg, ptr noundef %0, i32 noundef 6, i32 noundef %i.bq, i32 noundef 0) ; 6 uses
  %i.ci = load i32, ptr @ett_fiveco_data, align 4
  %i.cj = call ptr @proto_item_add_subtree(ptr noundef %i.ch, i32 noundef %i.ci) ; 26 uses
  switch i16 %i.k, label %bb.an [
    i16 1, label %bb.m
    i16 7, label %bb.m
    i16 2, label %.preheader
    i16 5, label %bb.p
    i16 6, label %bb.q
    i16 9, label %bb.r
    i16 33, label %.preheader246
    i16 34, label %bb.v
    i16 37, label %bb.v
    i16 42, label %bb.x
    i16 3, label %bb.y
    i16 4, label %bb.y
    i16 8, label %bb.y
    i16 35, label %bb.af
    i16 50, label %bb.aj
    i16 51, label %bb.ak
    i16 36, label %bb.am
    i16 49, label %bb.am
    i16 43, label %bb.am
  ]

.preheader246:                                    ; preds = %bb.l
  %i.ck = add nuw nsw i32 %i.bq, 6                ; 2 uses
  br label %bb.s

.preheader:                                       ; preds = %bb.l
  %i.cl = add nuw nsw i32 %i.bq, 6
  br label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.cm = add nuw nsw i32 %i.bq, 5
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.n
  %.0226259 = phi i32 [ 6, %bb.m ], [ %i.da, %bb.n ] ; 3 uses
  %i.cn = load i32, ptr @hf_fiveco_i2cadd, align 4
  %i.co = call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.cn, ptr noundef %0, i32 noundef %.0226259, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cp = add nuw nsw i32 %.0226259, 1            ; 2 uses
  %i.cq = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.cp)
  %i.cr = load i32, ptr @hf_fiveco_i2c2write, align 4
  %i.cs = call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.cr, ptr noundef %0, i32 noundef %i.cp, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ct = add nuw nsw i32 %.0226259, 2            ; 2 uses
  %i.cu = load i32, ptr @hf_fiveco_i2cwrite, align 4
  %i.cv = zext i8 %i.cq to i32                    ; 2 uses
  %i.cw = call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.cu, ptr noundef %0, i32 noundef %i.ct, i32 noundef %i.cv, i32 noundef 0) ; 0 uses
  %i.cx = add nuw nsw i32 %i.ct, %i.cv            ; 3 uses
  %i.cy = load i32, ptr @hf_fiveco_i2c2read, align 4
  %i.cz = call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.cy, ptr noundef %0, i32 noundef %i.cx, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.da = add nuw nsw i32 %i.cx, 1                ; 2 uses
  %i.db = icmp samesign ult i32 %i.cx, %i.cm
  br i1 %i.db, label %bb.n, label %.loopexit, !llvm.loop !6

bb.o:                                             ; preds = %.preheader, %bb.o
  %.1258 = phi i32 [ 6, %.preheader ], [ %i.dm, %bb.o ] ; 3 uses
  %i.dc = load i32, ptr @hf_fiveco_i2cadd, align 4
  %i.dd = call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.dc, ptr noundef %0, i32 noundef %.1258, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.de = add nuw nsw i32 %.1258, 1               ; 2 uses
  %i.df = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.de)
  %i.dg = load i32, ptr @hf_fiveco_i2c2write, align 4
  %i.dh = call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.dg, ptr noundef %0, i32 noundef %i.de, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.di = add nuw nsw i32 %.1258, 2               ; 2 uses
  %i.dj = load i32, ptr @hf_fiveco_i2cwrite, align 4
  %i.dk = zext i8 %i.df to i32                    ; 2 uses
  %i.dl = call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.dj, ptr noundef %0, i32 noundef %i.di, i32 noundef %i.dk, i32 noundef 0) ; 0 uses
  %i.dm = add nuw nsw i32 %i.di, %i.dk            ; 3 uses
  %i.dn = icmp samesign ult i32 %i.dm, %i.cl
  br i1 %i.dn, label %bb.o, label %.loopexit, !llvm.loop !7

bb.p:                                             ; preds = %bb.l
  %i.do = load i32, ptr @hf_fiveco_i2c2scan, align 4
  %i.dp = call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.do, ptr noundef %0, i32 noundef 6, i32 noundef %i.bq, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.q:                                             ; preds = %bb.l
  %i.dq = load i32, ptr @hf_fiveco_i2cscaned, align 4
  %i.dr = call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.dq, ptr noundef %0, i32 noundef 6, i32 noundef %i.bq, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.r:                                             ; preds = %bb.l
  %i.ds = load i32, ptr @hf_fiveco_i2cerror, align 4
  %i.dt = call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.ds, ptr noundef %0, i32 noundef 6, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.s:                                             ; preds = %.preheader246, %bb.u
  %.2257 = phi i32 [ 6, %.preheader246 ], [ %i.ea, %bb.u ] ; 2 uses
  %i.du = load i32, ptr @hf_fiveco_regread, align 4
  %i.dv = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.cj, i32 noundef %i.du, ptr noundef %0, i32 noundef %.2257, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.d)
  %i.dw = load i32, ptr %i.d, align 4
  %i.dx = call ptr @try_val_to_str(i32 noundef %i.dw, ptr noundef nonnull @register_name_vals)
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dz = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.dv, ptr noundef nonnull @ei_fiveco_regread) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.ea = add nuw nsw i32 %.2257, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ea, %i.ck
  br i1 %exitcond.not, label %.loopexit, label %bb.s, !llvm.loop !8

bb.v:                                             ; preds = %bb.l, %bb.l
  %i.eb = add nuw nsw i32 %i.bq, 6                ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.w
  %.3256 = phi i32 [ 6, %bb.v ], [ %i.ei, %bb.w ] ; 2 uses
  %i.ec = load i32, ptr @hf_fiveco_regwrite, align 4
  %i.ed = add nuw nsw i32 %.3256, 1               ; 2 uses
  %i.ee = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.cj, i32 noundef %i.ec, ptr noundef %0, i32 noundef %.3256, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.d) ; 0 uses
  %i.ef = load i32, ptr %i.d, align 4
  %i.eg = sub nuw nsw i32 %i.eb, %i.ed
  %i.eh = load i32, ptr @hf_fiveco_regwriteuk, align 4
  %i.ei = call fastcc i32 @dissect_FiveCoLegacy_registers(i32 noundef %i.ef, ptr noundef %i.cj, ptr noundef %1, ptr noundef %0, i32 noundef %i.ed, i32 noundef %i.eg, i32 noundef %i.eh) ; 3 uses
  %i.ej = icmp ult i32 %i.ei, %i.eb
  br i1 %i.ej, label %bb.w, label %.loopexit, !llvm.loop !9

bb.x:                                             ; preds = %bb.l
  %i.ek = load i32, ptr @hf_fiveco_EasyIPMAC, align 4
  %i.el = call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.ek, ptr noundef %0, i32 noundef 6, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.em = load i32, ptr @hf_fiveco_EasyIPIP, align 4
  %i.en = call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.em, ptr noundef %0, i32 noundef 18, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.eo = load i32, ptr @hf_fiveco_EasyIPSM, align 4
  %i.ep = call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.eo, ptr noundef %0, i32 noundef 26, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.y:                                             ; preds = %bb.l, %bb.l, %bb.l
  br i1 %.not240, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.eq = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ch, ptr noundef nonnull @ei_fiveco_interpretation) ; 0 uses
  br label %.loopexit

bb.aa:                                            ; preds = %bb.y
  %i.er = getelementptr i8, ptr %.0228, i64 2
  %i.es = load i16, ptr %i.er, align 2
  %.not244 = icmp eq i16 %i.es, 0
  br i1 %.not244, label %.preheader249, label %bb.ab

.preheader249:                                    ; preds = %bb.aa
  %i.et = add nuw nsw i32 %i.bq, 6
  %i.eu = load i16, ptr %.0228, align 8
  %.not260 = icmp eq i16 %i.eu, 0
  br i1 %.not260, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader249
  %i.ev = icmp eq i16 %i.k, 8
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ew = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ch, ptr noundef nonnull @ei_fiveco_answer_already_found) ; 0 uses
  br label %.loopexit

bb.ac:                                            ; preds = %.lr.ph, %bb.ae
  %.0255 = phi i32 [ 0, %.lr.ph ], [ %i.fg, %bb.ae ] ; 3 uses
  %.4254 = phi i32 [ 6, %.lr.ph ], [ %.5, %bb.ae ] ; 2 uses
  %i.ex = load i32, ptr @hf_fiveco_i2cadd, align 4
  %i.ey = add nuw nsw i32 %.0255, 1
  %i.ez = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.cj, i32 noundef %i.ex, ptr noundef %.0227, i32 noundef %.0255, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.fa = load i32, ptr @hf_fiveco_i2c2write, align 4
  %i.fb = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.cj, i32 noundef %i.fa, ptr noundef %.0227, i32 noundef %i.ey, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.fc = load i32, ptr %i.b, align 4
  %i.fd = add nuw nsw i32 %.0255, 2
  %i.fe = add i32 %i.fd, %i.fc                    ; 2 uses
  %i.ff = load i32, ptr @hf_fiveco_i2c2read, align 4
  %i.fg = add i32 %i.fe, 1                        ; 2 uses
  %i.fh = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.cj, i32 noundef %i.ff, ptr noundef %.0227, i32 noundef %i.fe, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.c) ; 0 uses
  %i.fi = load i32, ptr @hf_fiveco_i2canswer, align 4
  %i.fj = load i32, ptr %i.c, align 4
  %i.fk = call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.fi, ptr noundef %0, i32 noundef %.4254, i32 noundef %i.fj, i32 noundef 0) ; 0 uses
  %i.fl = load i32, ptr %i.c, align 4
  %i.fm = add i32 %i.fl, %.4254                   ; 3 uses
  br i1 %i.ev, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fn = load i32, ptr @hf_fiveco_i2cack, align 4
  %i.fo = add i32 %i.fm, 1
  %i.fp = call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.fn, ptr noundef %0, i32 noundef %i.fm, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.5 = phi i32 [ %i.fo, %bb.ad ], [ %i.fm, %bb.ac ] ; 3 uses
  %i.fq = load i16, ptr %.0228, align 8
  %i.fr = zext i16 %i.fq to i32
  %i.fs = icmp ult i32 %i.fg, %i.fr
  %i.ft = icmp ult i32 %.5, %i.et
  %i.fu = select i1 %i.fs, i1 %i.ft, i1 false
  br i1 %i.fu, label %bb.ac, label %.loopexit, !llvm.loop !10

bb.af:                                            ; preds = %bb.l
  br i1 %.not240, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fv = getelementptr i8, ptr %.0228, i64 2
  %i.fw = load i16, ptr %i.fv, align 2
  %.not243 = icmp eq i16 %i.fw, 0
  br i1 %.not243, label %.preheader251, label %bb.ah

.preheader251:                                    ; preds = %bb.ag
  %i.fx = add nuw nsw i32 %i.bq, 6                ; 2 uses
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fy = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ch, ptr noundef nonnull @ei_fiveco_answer_already_found) ; 0 uses
  br label %.loopexit

bb.ai:                                            ; preds = %.preheader251, %bb.ai
  %.6253 = phi i32 [ 6, %.preheader251 ], [ %i.gf, %bb.ai ] ; 2 uses
  %i.fz = load i32, ptr @hf_fiveco_regread, align 4
  %i.ga = add nuw nsw i32 %.6253, 1               ; 2 uses
  %i.gb = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.cj, i32 noundef %i.fz, ptr noundef %0, i32 noundef %.6253, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.d) ; 0 uses
  %i.gc = load i32, ptr %i.d, align 4
  %i.gd = sub nuw nsw i32 %i.fx, %i.ga
  %i.ge = load i32, ptr @hf_fiveco_regreaduk, align 4
  %i.gf = call fastcc i32 @dissect_FiveCoLegacy_registers(i32 noundef %i.gc, ptr noundef %i.cj, ptr noundef %1, ptr noundef %0, i32 noundef %i.ga, i32 noundef %i.gd, i32 noundef %i.ge) ; 3 uses
  %i.gg = icmp ult i32 %i.gf, %i.fx
  br i1 %i.gg, label %bb.ai, label %.loopexit, !llvm.loop !11

bb.aj:                                            ; preds = %bb.l
  %i.gh = load i32, ptr @hf_fiveco_flash_offset, align 4
  %i.gi = call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.gh, ptr noundef %0, i32 noundef 6, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.gj = load i32, ptr @hf_fiveco_flash_size, align 4
  %i.gk = call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.gj, ptr noundef %0, i32 noundef 9, i32 noundef 3, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.ak:                                            ; preds = %bb.l
  %.not242 = icmp eq i16 %i.p, 1
  br i1 %.not242, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gl = load i32, ptr @hf_fiveco_flash_answer, align 4
  %i.gm = add nsw i32 %i.bq, -1
  %i.gn = call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.gl, ptr noundef %0, i32 noundef 6, i32 noundef %i.gm, i32 noundef 0) ; 0 uses
  %i.go = add nuw nsw i32 %i.bq, 5
  br label %.loopexit

bb.am:                                            ; preds = %bb.l, %bb.l, %bb.l
  %i.gp = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ch, ptr noundef nonnull @ei_fiveco_no_data_expected) ; 0 uses
  br label %.loopexit

bb.an:                                            ; preds = %bb.l
  %i.gq = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ch, ptr noundef nonnull @ei_fiveco_interpretation) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ai, %bb.ae, %bb.w, %bb.u, %bb.o, %bb.n, %.preheader249, %bb.p, %bb.q, %bb.r, %bb.x, %bb.z, %bb.ab, %bb.ah, %bb.aj, %bb.am, %bb.an, %bb.af, %bb.al, %bb.ak, %bb.k
  %.7 = phi i32 [ 6, %bb.an ], [ 6, %bb.k ], [ %i.dm, %bb.o ], [ 6, %bb.p ], [ 6, %bb.q ], [ 6, %bb.r ], [ %i.ck, %bb.u ], [ %i.ei, %bb.w ], [ 20, %bb.x ], [ 6, %bb.z ], [ 6, %bb.ab ], [ %.5, %bb.ae ], [ 6, %bb.af ], [ 6, %bb.ah ], [ %i.da, %bb.n ], [ 12, %bb.aj ], [ %i.go, %bb.al ], [ 6, %bb.ak ], [ 6, %bb.am ], [ 6, %.preheader249 ], [ %i.gf, %bb.ai ]
  %i.gr = load i32, ptr @hf_fiveco_cks, align 4
  %i.gs = load i32, ptr @hf_fiveco_cks_status, align 4
  %i.gt = add nuw nsw i32 %i.bq, 6
  %i.gu = call zeroext i16 @ip_checksum_tvb(ptr noundef %0, i32 noundef 0, i32 noundef %i.gt)
end_hunk_0
