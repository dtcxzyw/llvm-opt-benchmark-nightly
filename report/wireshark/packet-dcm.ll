Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-dcm?download=true
inline.NumInlined: 60
inline.NumDeleted: 36
begin_hunk_0_@dissect_dcm_heuristic:bb.a
; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_dcm_main(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 10 uses
  %i.h = alloca i8, align 1                       ; 5 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = tail call i32 @tvb_reported_length(ptr noundef %0) ; 5 uses
  %i.k = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.l = add i8 %i.k, -8
  %or.cond = icmp ult i8 %i.l, -7
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ult i32 %i.j, 6
  %or.cond4 = select i1 %3, i1 %i.m, i1 false
  br i1 %or.cond4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %1, i64 340
  store i32 0, ptr %i.n, align 4
  %i.o = getelementptr i8, ptr %1, i64 344
  store i32 268435455, ptr %i.o, align 8
  %i.p = tail call i32 @tvb_captured_length(ptr noundef %0)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.q = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 2) ; 2 uses
  %i.r = icmp ult i32 %i.q, 4
  br i1 %i.r, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %1, i64 8          ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8
  tail call void @col_set_str(ptr noundef %i.t, i32 noundef 35, ptr noundef @.str.170)
  %.not107 = icmp eq i32 %i.j, 0
  br i1 %.not107, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.u = getelementptr i8, ptr %1, i64 20         ; 3 uses
  %i.v = getelementptr i8, ptr %1, i64 416        ; 11 uses
  %i.w = getelementptr i8, ptr %1, i64 80
  %i.x = add i32 %i.j, -6
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.co
  %.046106 = phi i32 [ 0, %.lr.ph ], [ %.033.i, %bb.co ] ; 2 uses
  %.047105 = phi i32 [ %i.q, %.lr.ph ], [ %.249, %bb.co ] ; 3 uses
  %.050101 = phi i32 [ 0, %.lr.ph ], [ %i.od, %bb.co ] ; 22 uses
  %i.y = add i32 %.047105, 6                      ; 2 uses
  %i.z = sub i32 %i.j, %.046106                   ; 2 uses
  %i.aa = icmp ugt i32 %i.y, %i.z
  br i1 %i.aa, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  %i.ab = getelementptr i8, ptr %1, i64 340
  store i32 %.046106, ptr %i.ab, align 4
  %i.ac = sub nuw i32 %i.y, %i.z
  %i.ad = getelementptr i8, ptr %1, i64 344
  store i32 %i.ac, ptr %i.ad, align 8
  %i.ae = call i32 @tvb_captured_length(ptr noundef %0)
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  store i8 0, ptr %i.h, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  store i32 0, ptr %i.i, align 4
  %i.af = call ptr @find_or_create_conversation(ptr noundef %1) ; 3 uses
  %i.ag = load i32, ptr @proto_dcm, align 4
  %i.ah = call ptr @conversation_get_proto_data(ptr noundef %i.af, i32 noundef %i.ag) ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %dcm_state_get.exit.i, label %dcm_state_get.exit.thread.i

dcm_state_get.exit.i:                             ; preds = %bb.g
  %i.aj = call ptr @wmem_file_scope()
  %i.ak = call noalias dereferenceable_or_null(24) ptr @wmem_alloc0(ptr noundef %i.aj, i64 noundef 24) #11 ; 3 uses
  %i.al = load i32, ptr @proto_dcm, align 4
  call void @conversation_add_proto_data(ptr noundef %i.af, i32 noundef %i.al, ptr noundef %i.ak)
  %i.am = load ptr, ptr @dcm_handle, align 8
  call void @conversation_set_dissector(ptr noundef %i.af, ptr noundef %i.am)
  %i.an = icmp eq ptr %i.ak, null
  br i1 %i.an, label %dissect_dcm_pdu.exit, label %dcm_state_get.exit.thread.i

dcm_state_get.exit.thread.i:                      ; preds = %dcm_state_get.exit.i, %bb.g
  %.0.i48.i = phi ptr [ %i.ak, %dcm_state_get.exit.i ], [ %i.ah, %bb.g ] ; 3 uses
  %i.ao = load i32, ptr @proto_dcm, align 4
  %i.ap = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ao, ptr noundef %0, i32 noundef %.050101, i32 noundef -1, i32 noundef 0) ; 2 uses
  %i.aq = load i32, ptr @ett_dcm, align 4
  %i.ar = call ptr @proto_item_add_subtree(ptr noundef %i.ap, i32 noundef %i.aq) ; 5 uses
  %i.as = load i32, ptr @hf_dcm_pdu_type, align 4
  %i.at = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.ar, i32 noundef %i.as, ptr noundef %0, i32 noundef %.050101, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.h) ; 0 uses
  %i.au = add i32 %.050101, 2
  %i.av = load i32, ptr @hf_dcm_pdu_len, align 4
  %i.aw = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ar, i32 noundef %i.av, ptr noundef %0, i32 noundef %i.au, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.i) ; 0 uses
  %i.ax = add i32 %.050101, 6                     ; 9 uses
  %i.ay = load i32, ptr %i.u, align 4             ; 4 uses
  %.021.i.i = load ptr, ptr %.0.i48.i, align 8    ; 4 uses
  %cond22.i.i = icmp eq ptr %.021.i.i, null
  br i1 %cond22.i.i, label %._crit_edge.i.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %dcm_state_get.exit.thread.i
  %i.az = load ptr, ptr %.021.i.i, align 8        ; 2 uses
  %.not17.i65.i = icmp eq ptr %i.az, null
  br i1 %.not17.i65.i, label %.lr.ph.i._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.i
  %i.ba = phi ptr [ %i.bi, %.lr.ph.i.i ], [ %i.az, %.lr.ph.i.preheader.i ] ; 4 uses
  %.023.i66.i = phi ptr [ %i.ba, %.lr.ph.i.i ], [ %.021.i.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.bb = getelementptr i8, ptr %.023.i66.i, i64 32
  %i.bc = load i32, ptr %i.bb, align 8
  %.not19.i.i = icmp ugt i32 %i.bc, %i.ay
  br i1 %.not19.i.i, label %.lr.ph.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.bd = getelementptr i8, ptr %i.ba, i64 32
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = icmp ult i32 %i.ay, %i.be
  br i1 %i.bf, label %dcm_state_assoc_get.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i._crit_edge.i:                            ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.023.i.lcssa.i = phi ptr [ %.021.i.i, %.lr.ph.i.preheader.i ], [ %i.ba, %.lr.ph.i.i ] ; 2 uses
  %i.bg = getelementptr i8, ptr %.023.i.lcssa.i, i64 32
  %i.bh = load i32, ptr %i.bg, align 8
  %.not18.i.i = icmp ugt i32 %i.bh, %i.ay
  br i1 %.not18.i.i, label %._crit_edge.i.i, label %dcm_state_assoc_get.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i
  %i.bi = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not17.i.i = icmp eq ptr %i.bi, null
  br i1 %.not17.i.i, label %.lr.ph.i._crit_edge.i, label %.lr.ph.i, !llvm.loop !15

._crit_edge.i.i:                                  ; preds = %.lr.ph.i._crit_edge.i, %dcm_state_get.exit.thread.i
  %i.bj = call ptr @wmem_file_scope()
  %i.bk = call noalias dereferenceable_or_null(72) ptr @wmem_alloc0(ptr noundef %i.bj, i64 noundef 72) #11 ; 7 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 32
  store i32 %i.ay, ptr %i.bl, align 8
  %i.bm = getelementptr i8, ptr %.0.i48.i, i64 8  ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i
  store ptr %i.bk, ptr %i.bn, align 8
  %i.bo = load ptr, ptr %i.bm, align 8
  %i.bp = getelementptr i8, ptr %i.bk, i64 8
  store ptr %i.bo, ptr %i.bp, align 8
  br label %dcm_state_assoc_get.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i
  store ptr %i.bk, ptr %.0.i48.i, align 8
  br label %dcm_state_assoc_get.exit.i

dcm_state_assoc_get.exit.i:                       ; preds = %bb.j, %bb.i
  store ptr %i.bk, ptr %i.bm, align 8
  %i.bq = icmp eq ptr %i.bk, null
  br i1 %i.bq, label %dissect_dcm_pdu.exit, label %dcm_state_assoc_get.exit.thread.i

dcm_state_assoc_get.exit.thread.i:                ; preds = %bb.h, %dcm_state_assoc_get.exit.i, %.lr.ph.i._crit_edge.i
  %.1.i50.i = phi ptr [ %i.bk, %dcm_state_assoc_get.exit.i ], [ %.023.i.lcssa.i, %.lr.ph.i._crit_edge.i ], [ %.023.i66.i, %bb.h ] ; 15 uses
  %i.br = load i8, ptr %i.h, align 1              ; 2 uses
  %i.bs = icmp eq i8 %i.br, 4
  br i1 %i.bs, label %bb.k, label %bb.bq

bb.k:                                             ; preds = %dcm_state_assoc_get.exit.thread.i
  %i.bt = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.bu = call ptr @col_get_text(ptr noundef %i.bt, i32 noundef 25) ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = call i32 @g_str_has_prefix(ptr noundef nonnull %i.bu, ptr noundef @.str.217)
  %.not.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i, label %bb.m, label %col_set_str_conditional.exit.i

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @col_add_str(ptr noundef %i.bt, i32 noundef 25, ptr noundef @.str.217)
  br label %col_set_str_conditional.exit.i

col_set_str_conditional.exit.i:                   ; preds = %bb.m, %bb.l
  %i.bx = load i32, ptr %i.i, align 4             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store ptr null, ptr %i.g, align 8
  %i.by = add i32 %i.bx, %i.ax                    ; 3 uses
  %i.bz = icmp ult i32 %i.ax, %i.by
  br i1 %i.bz, label %.lr.ph.i38.i, label %dissect_dcm_pdu_data.exit.thread.i

.lr.ph.i38.i:                                     ; preds = %col_set_str_conditional.exit.i
  %i.ca = getelementptr i8, ptr %.1.i50.i, i64 16 ; 2 uses
  %i.cb = getelementptr i8, ptr %.1.i50.i, i64 24 ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.bm, %.lr.ph.i38.i
  %.072.i.i = phi i1 [ true, %.lr.ph.i38.i ], [ false, %bb.bm ]
  %.04371.i.i = phi ptr [ null, %.lr.ph.i38.i ], [ %.1.i40.i, %bb.bm ] ; 2 uses
  %.04570.i.i = phi i32 [ %i.ax, %.lr.ph.i38.i ], [ %.0.i.i.i, %bb.bm ] ; 6 uses
  %i.cc = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %.04570.i.i) ; 5 uses
  %i.cd = add i32 %i.cc, 4                        ; 2 uses
  %i.ce = load i32, ptr @ett_dcm_data_pdv, align 4
  %i.cf = call ptr @proto_tree_add_subtree(ptr noundef %i.ar, ptr noundef %0, i32 noundef %.04570.i.i, i32 noundef %i.cd, i32 noundef %i.ce, ptr noundef nonnull %i.f, ptr noundef @.str.219) ; 10 uses
  %i.cg = load i32, ptr @hf_dcm_pdv_len, align 4
  %i.ch = call ptr @proto_tree_add_item(ptr noundef %i.cf, i32 noundef %i.cg, ptr noundef %0, i32 noundef %.04570.i.i, i32 noundef 4, i32 noundef 0)
  %i.ci = add i32 %.04570.i.i, 4                  ; 4 uses
  %i.cj = icmp ugt i32 %i.cd, %i.bx
  %i.ck = icmp ugt i32 %i.cc, -5
  %or.cond.i.i = or i1 %i.ck, %i.cj
  br i1 %or.cond.i.i, label %dissect_dcm_pdu_data.exit.thread.i.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = icmp ult i32 %i.cc, 3
  br i1 %i.cl, label %dissect_dcm_pdu_data.exit.thread.i.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = and i32 %i.cc, 1
  %.not.i39.i = icmp eq i32 %i.cm, 0
  br i1 %.not.i39.i, label %bb.q, label %dissect_dcm_pdu_data.exit.thread.i.sink.split

bb.q:                                             ; preds = %bb.p
  %i.cn = add i32 %i.cc, -2                       ; 4 uses
  %i.co = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ci) ; 5 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %.0.in.i.i.i.i.i = phi ptr [ %i.ca, %bb.q ], [ %.0.i.i.i.i.i, %bb.s ]
  %.0.i.i.i.i.i = load ptr, ptr %.0.in.i.i.i.i.i, align 8 ; 9 uses
  %.not.i.i.i.i.i = icmp eq ptr %.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %.critedge.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr i8, ptr %.0.i.i.i.i.i, i64 16
  %i.cq = load i8, ptr %i.cp, align 8
  %i.cr = icmp eq i8 %i.cq, %i.co
  br i1 %i.cr, label %dcm_state_pctx_get.exit.i.i.i.i, label %bb.r, !llvm.loop !0

dcm_state_pctx_get.exit.i.i.i.i:                  ; preds = %bb.s
  %i.cs = getelementptr i8, ptr %.0.i.i.i.i.i, i64 40
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %.not123.i.i.i.i = icmp eq ptr %i.ct, null
  %i.cu = load i32, ptr @hf_dcm_pdv_ctx, align 4  ; 2 uses
  %i.cv = zext i8 %i.co to i32                    ; 4 uses
  br i1 %.not123.i.i.i.i, label %dcm_state_pctx_get.exit.thread.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %dcm_state_pctx_get.exit.i.i.i.i
  %i.cw = getelementptr i8, ptr %.0.i.i.i.i.i, i64 48
  %i.cx = load ptr, ptr %i.cw, align 8            ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  %i.cz = select i1 %i.cy, ptr %i.ct, ptr %i.cx
  %i.da = getelementptr i8, ptr %.0.i.i.i.i.i, i64 24
  %i.db = load ptr, ptr %i.da, align 8            ; 2 uses
  %i.dc = getelementptr i8, ptr %.0.i.i.i.i.i, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8            ; 2 uses
  %i.de = icmp eq ptr %i.dd, null
  %i.df = icmp eq ptr %i.db, null
  %i.dg = select i1 %i.df, ptr @.str.247, ptr %i.db
  %i.dh = select i1 %i.de, ptr %i.dg, ptr %i.dd
  %i.di = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.cf, i32 noundef %i.cu, ptr noundef %0, i32 noundef %i.ci, i32 noundef 1, i32 noundef %i.cv, ptr noundef @.str.231, i32 noundef %i.cv, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.dh) ; 0 uses
  br label %bb.w

dcm_state_pctx_get.exit.thread.i.i.i.i:           ; preds = %dcm_state_pctx_get.exit.i.i.i.i
  %i.dj = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.cf, i32 noundef %i.cu, ptr noundef %0, i32 noundef %i.ci, i32 noundef 1, i32 noundef %i.cv, ptr noundef @.str.232, i32 noundef %i.cv)
  %i.dk = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.dj, ptr noundef @ei_dcm_pdv_ctx) ; 0 uses
  br label %bb.w

.critedge.i.i.i:                                  ; preds = %bb.r
  %i.dl = load i32, ptr @hf_dcm_pdv_ctx, align 4
  %i.dm = zext i8 %i.co to i32                    ; 2 uses
  %i.dn = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.cf, i32 noundef %i.dl, ptr noundef %0, i32 noundef %i.ci, i32 noundef 1, i32 noundef %i.dm, ptr noundef @.str.232, i32 noundef %i.dm)
  %i.do = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.dn, ptr noundef @ei_dcm_pdv_ctx) ; 0 uses
  %i.dp = call ptr @wmem_file_scope()
  %i.dq = call noalias dereferenceable_or_null(80) ptr @wmem_alloc0(ptr noundef %i.dp, i64 noundef 80) #11 ; 7 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 16
  store i8 %i.co, ptr %i.dr, align 8
  %i.ds = getelementptr i8, ptr %i.dq, i64 56
  %i.dt = load ptr, ptr %i.cb, align 8            ; 2 uses
  %.not.i132.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i132.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.critedge.i.i.i
  store ptr %i.dq, ptr %i.dt, align 8
  %i.du = load ptr, ptr %i.cb, align 8
  %i.dv = getelementptr i8, ptr %i.dq, i64 8
  store ptr %i.du, ptr %i.dv, align 8
  br label %dcm_state_pctx_new.exit.i.i.i.i

bb.v:                                             ; preds = %.critedge.i.i.i
  store ptr %i.dq, ptr %i.ca, align 8
  br label %dcm_state_pctx_new.exit.i.i.i.i

dcm_state_pctx_new.exit.i.i.i.i:                  ; preds = %bb.v, %bb.u
  store ptr %i.dq, ptr %i.cb, align 8
  store i8 -16, ptr %i.ds, align 8
  br label %bb.w

bb.w:                                             ; preds = %dcm_state_pctx_new.exit.i.i.i.i, %dcm_state_pctx_get.exit.thread.i.i.i.i, %bb.t
  %.0116.i.i.i.i = phi ptr [ %.0.i.i.i.i.i, %bb.t ], [ %i.dq, %dcm_state_pctx_new.exit.i.i.i.i ], [ %.0.i.i.i.i.i, %dcm_state_pctx_get.exit.thread.i.i.i.i ] ; 6 uses
  %i.dw = add i32 %.04570.i.i, 5                  ; 3 uses
  %i.dx = load i32, ptr %i.u, align 4             ; 2 uses
  %i.dy = call i32 @tvb_raw_offset(ptr noundef %0)
  %i.dz = add i32 %i.dy, %i.dw                    ; 2 uses
  %i.ea = getelementptr i8, ptr %.0116.i.i.i.i, i64 64 ; 2 uses
  %.014.i.i.i.i.i = load ptr, ptr %i.ea, align 8  ; 2 uses
  %cond15.i.i.i.i.i = icmp eq ptr %.014.i.i.i.i.i, null
  br i1 %cond15.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.w, %bb.y
  %.016.i.i.i.i.i = phi ptr [ %.0.i133.i.i.i.i, %bb.y ], [ %.014.i.i.i.i.i, %bb.w ] ; 4 uses
  %i.eb = getelementptr i8, ptr %.016.i.i.i.i.i, i64 16
  %i.ec = load i32, ptr %i.eb, align 8
  %i.ed = icmp eq i32 %i.ec, %i.dx
  br i1 %i.ed, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ee = getelementptr i8, ptr %.016.i.i.i.i.i, i64 20
  %i.ef = load i32, ptr %i.ee, align 4
  %i.eg = icmp eq i32 %i.ef, %i.dz
  br i1 %i.eg, label %dcm_state_pdv_get.exit.thread.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i.i.i.i.i
  %.0.i133.i.i.i.i = load ptr, ptr %.016.i.i.i.i.i, align 8 ; 2 uses
  %cond.i.i.i.i.i = icmp eq ptr %.0.i133.i.i.i.i, null
  br i1 %cond.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !16

._crit_edge.i.i.i.i.i:                            ; preds = %bb.y, %bb.w
  %i.eh = call ptr @wmem_file_scope()
  %i.ei = call noalias dereferenceable_or_null(176) ptr @wmem_alloc0(ptr noundef %i.eh, i64 noundef 176) #11 ; 10 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 33
  store i8 -16, ptr %i.ej, align 1
  %i.ek = getelementptr i8, ptr %i.ei, i64 75
  store i8 1, ptr %i.ek, align 1
  %i.el = getelementptr i8, ptr %i.ei, i64 16
  store i32 %i.dx, ptr %i.el, align 8
  %i.em = getelementptr i8, ptr %i.ei, i64 20
  store i32 %i.dz, ptr %i.em, align 4
  %i.en = getelementptr i8, ptr %.0116.i.i.i.i, i64 72 ; 3 uses
  %i.eo = load ptr, ptr %i.en, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.i.i.i.i
  store ptr %i.ei, ptr %i.eo, align 8
  %i.ep = load ptr, ptr %i.en, align 8
  %i.eq = getelementptr i8, ptr %i.ei, i64 8
  store ptr %i.ep, ptr %i.eq, align 8
  br label %dcm_state_pdv_get.exit.i.i.i.i

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i.i
  store ptr %i.ei, ptr %i.ea, align 8
  br label %dcm_state_pdv_get.exit.i.i.i.i

dcm_state_pdv_get.exit.i.i.i.i:                   ; preds = %bb.aa, %bb.z
  store ptr %i.ei, ptr %i.en, align 8
  %i.er = icmp eq ptr %i.ei, null
  br i1 %i.er, label %dissect_dcm_pdv_header.exit.i.i.i, label %dcm_state_pdv_get.exit.thread.i.i.i.i

dcm_state_pdv_get.exit.thread.i.i.i.i:            ; preds = %bb.x, %dcm_state_pdv_get.exit.i.i.i.i
  %.087.i.i.i = phi ptr [ %i.ei, %dcm_state_pdv_get.exit.i.i.i.i ], [ %.016.i.i.i.i.i, %bb.x ] ; 19 uses
  %i.es = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.dw) ; 4 uses
  %i.et = zext i8 %i.es to i32
  %i.eu = and i8 %i.es, 3                         ; 4 uses
  %i.ev = getelementptr i8, ptr %.087.i.i.i, i64 32
  store i8 %i.co, ptr %i.ev, align 8
  %i.ew = zext nneg i8 %i.eu to i32
  %.not127.i.i.i.i = icmp ult i8 %i.es, 4         ; 4 uses
  switch i8 %i.eu, label %default.unreachable [
    i8 0, label %bb.ab
    i8 2, label %bb.ac
    i8 1, label %bb.ad
    i8 3, label %bb.ae
  ]

bb.ab:                                            ; preds = %dcm_state_pdv_get.exit.thread.i.i.i.i
  %.str.234..str.233.i.i.i.i = select i1 %.not127.i.i.i.i, ptr @.str.234, ptr @.str.233
  %i.ex = getelementptr i8, ptr %.087.i.i.i, i64 73
  store i8 1, ptr %i.ex, align 1
  %i.ey = getelementptr i8, ptr %.087.i.i.i, i64 74
  store i8 0, ptr %i.ey, align 2
  %i.ez = getelementptr i8, ptr %.087.i.i.i, i64 75
  store i8 0, ptr %i.ez, align 1
  %i.fa = getelementptr i8, ptr %.0116.i.i.i.i, i64 56
  %i.fb = load i8, ptr %i.fa, align 8
  br label %bb.af

bb.ac:                                            ; preds = %dcm_state_pdv_get.exit.thread.i.i.i.i
  %.str.236..str.235.i.i.i.i = select i1 %.not127.i.i.i.i, ptr @.str.236, ptr @.str.235
  %i.fc = getelementptr i8, ptr %.087.i.i.i, i64 73
  store i8 1, ptr %i.fc, align 1
  %i.fd = getelementptr i8, ptr %.087.i.i.i, i64 74
  store i8 0, ptr %i.fd, align 2
  %i.fe = getelementptr i8, ptr %.087.i.i.i, i64 75
  store i8 1, ptr %i.fe, align 1
  %i.ff = getelementptr i8, ptr %.0116.i.i.i.i, i64 56
  %i.fg = load i8, ptr %i.ff, align 8
  br label %bb.af

bb.ad:                                            ; preds = %dcm_state_pdv_get.exit.thread.i.i.i.i
end_hunk_0
begin_hunk_1_@dissect_dcm_main:bb.a
  %.0.i135.i.i.i.i = phi ptr [ %i.gd, %bb.ak ], [ %.087.i.i.i, %.preheader ] ; 2 uses
  %i.gc = getelementptr i8, ptr %.0.i135.i.i.i.i, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8            ; 4 uses
  %.not.i136.i.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not.i136.i.i.i.i, label %dcm_state_pdv_get_obj_start.exit.thread.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ge = getelementptr i8, ptr %i.gd, i64 75
  %i.gf = load i8, ptr %i.ge, align 1, !range !9, !noundef !10
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %dcm_state_pdv_get_obj_start.exit.i.i.i.i, label %bb.aj, !llvm.loop !1

dcm_state_pdv_get_obj_start.exit.i.i.i.i:         ; preds = %bb.ak
  %i.gh = getelementptr i8, ptr %.0.i135.i.i.i.i, i64 8
  %i.gi = getelementptr i8, ptr %i.gd, i64 74
  %i.gj = load i8, ptr %i.gi, align 2, !range !9, !noundef !10
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %bb.al, label %dcm_state_pdv_get_obj_start.exit.thread.i.i.i.i

bb.al:                                            ; preds = %dcm_state_pdv_get_obj_start.exit.i.i.i.i
  %i.gl = getelementptr i8, ptr %.0116.i.i.i.i, i64 32 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8            ; 3 uses
  %.not130.i.i.i.i = icmp eq ptr %i.gm, null
  br i1 %.not130.i.i.i.i, label %.critedge.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gm) #13 ; 2 uses
  %i.go = icmp ugt i64 %i.gn, 6
  br i1 %i.go, label %bb.an, label %.critedge.i.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.gp = getelementptr i8, ptr %i.gm, i64 %i.gn
  %i.gq = getelementptr i8, ptr %i.gp, i64 -7     ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 1
  %i.gs = xor i32 %i.gr, 1919906899
  %i.gt = getelementptr i8, ptr %i.gq, i64 3
  %i.gu = load i32, ptr %i.gt, align 1
  %i.gv = xor i32 %i.gu, 1701273970
  %i.gw = or i32 %i.gs, %i.gv
  %i.gx = icmp ne i32 %i.gw, 0
  %i.gy = zext i1 %i.gx to i32
  %.not.i.i.i.i = icmp eq i32 %i.gy, 0
  br i1 %.not.i.i.i.i, label %bb.ao, label %.critedge.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.gz = call ptr @wmem_file_scope()             ; 2 uses
  %i.ha = load ptr, ptr %i.gl, align 8            ; 2 uses
  br i1 %i.gb, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hb = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.gz, ptr noundef @.str.243, ptr noundef %i.ha)
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.hc = call noalias ptr @wmem_strdup(ptr noundef %i.gz, ptr noundef %i.ha)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.1112.i.i.i.i = phi ptr [ %i.hb, %bb.ap ], [ %i.hc, %bb.aq ]
  %i.hd = getelementptr i8, ptr %.087.i.i.i, i64 72
  store i8 1, ptr %i.hd, align 8
  br label %bb.as

.critedge.i.i.i.i:                                ; preds = %bb.an, %bb.am, %bb.al
  %i.he = call ptr @wmem_file_scope()
  %i.hf = load ptr, ptr %i.gh, align 8
  %i.hg = getelementptr i8, ptr %i.hf, i64 24
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.he, ptr noundef @.str.244, ptr noundef %i.hh)
  br label %bb.as

dcm_state_pdv_get_obj_start.exit.thread.i.i.i.i:  ; preds = %bb.aj, %dcm_state_pdv_get_obj_start.exit.i.i.i.i
  %i.hj = call ptr @wmem_file_scope()
  %i.hk = call noalias ptr @wmem_strdup(ptr noundef %i.hj, ptr noundef @.str.245)
  br label %bb.as

bb.as:                                            ; preds = %dcm_state_pdv_get_obj_start.exit.thread.i.i.i.i, %.critedge.i.i.i.i, %bb.ar, %bb.ai
  %.2.i.i.i.i = phi ptr [ %.1112.i.i.i.i, %bb.ar ], [ %i.hi, %.critedge.i.i.i.i ], [ %i.hk, %dcm_state_pdv_get_obj_start.exit.thread.i.i.i.i ], [ %.0111.i.i.i.i, %bb.ai ]
  %i.hl = getelementptr i8, ptr %.087.i.i.i, i64 24
  store ptr %.2.i.i.i.i, ptr %i.hl, align 8
  %i.hm = load i32, ptr @hf_dcm_pdv_flags, align 4
  %i.hn = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.cf, i32 noundef %i.hm, ptr noundef %0, i32 noundef %i.dw, i32 noundef 1, i32 noundef %i.ew, ptr noundef @.str.246, i32 noundef %i.et, ptr noundef %.4.i.i.i.i)
  %i.ho = icmp ugt i8 %i.es, 3
  br i1 %i.ho, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hp = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.hn, ptr noundef @ei_dcm_pdv_flags) ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.hq = add i32 %.04570.i.i, 6
  br label %dissect_dcm_pdv_header.exit.i.i.i

dissect_dcm_pdv_header.exit.i.i.i:                ; preds = %bb.au, %dcm_state_pdv_get.exit.i.i.i.i
  %.1.i.i.i = phi ptr [ null, %dcm_state_pdv_get.exit.i.i.i.i ], [ %.087.i.i.i, %bb.au ] ; 7 uses
  %.0.i.i.i.i = phi i32 [ 0, %dcm_state_pdv_get.exit.i.i.i.i ], [ %i.hq, %bb.au ] ; 7 uses
  %i.hr = load i8, ptr @global_dcm_reassemble, align 1, !range !9, !noundef !10
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %bb.av, label %bb.bi

bb.av:                                            ; preds = %dissect_dcm_pdv_header.exit.i.i.i
  %i.ht = call ptr @find_conversation_pinfo(ptr noundef %1, i32 noundef 0) ; 2 uses
  %.not.i.i41.i = icmp eq ptr %i.ht, null
  br i1 %.not.i.i41.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.224, ptr noundef @.str.225, i32 noundef 3578, ptr noundef @.str.226) #14
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.hu = getelementptr i8, ptr %i.ht, i64 24
  %i.hv = load i32, ptr %i.hu, align 8
  %i.hw = shl i32 %i.hv, 12
  %i.hx = getelementptr i8, ptr %.1.i.i.i, i64 32
  %i.hy = load i8, ptr %i.hx, align 8
  %i.hz = zext i8 %i.hy to i32
  %i.ia = shl nuw nsw i32 %i.hz, 4
  %i.ib = or disjoint i32 %i.ia, %i.hw
  %i.ic = getelementptr i8, ptr %.1.i.i.i, i64 168
  %i.id = load i8, ptr %i.ic, align 8
  %i.ie = and i8 %i.id, 15
  %i.if = zext nneg i8 %i.ie to i32
  %i.ig = or disjoint i32 %i.ib, %i.if
  %i.ih = getelementptr i8, ptr %.1.i.i.i, i64 75
  %i.ii = load i8, ptr %i.ih, align 1, !range !9, !noundef !10
  %i.ij = trunc nuw i8 %i.ii to i1
  %i.ik = xor i1 %i.ij, true
  %i.il = call ptr @fragment_add_seq_next(ptr noundef @dcm_pdv_reassembly_table, ptr noundef %0, i32 noundef %.0.i.i.i.i, ptr noundef %1, i32 noundef %i.ig, ptr noundef null, i32 noundef %i.cn, i1 noundef zeroext %i.ik) ; 4 uses
  %.not61.i.i.i = icmp eq ptr %i.il, null
  br i1 %.not61.i.i.i, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.im = load ptr, ptr %i.il, align 8
  %i.in = icmp eq ptr %i.im, null
  br i1 %i.in, label %bb.az, label %.thread.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.io = call fastcc i32 @dissect_dcm_pdv_body(ptr noundef %0, ptr noundef %1, ptr noundef %i.cf, ptr noundef nonnull %.1.i50.i, ptr noundef %.1.i.i.i, i32 noundef %.0.i.i.i.i, i32 noundef %i.cn, ptr noundef nonnull %i.g)
  br label %dissect_dcm_pdv_fragmented.exitthread-pre-split.i.i

bb.ba:                                            ; preds = %bb.ax
  %i.ip = call ptr @process_reassembled_data(ptr noundef %0, i32 noundef %.0.i.i.i.i, ptr noundef %1, ptr noundef @.str.227, ptr noundef null, ptr noundef @dcm_pdv_fragment_items, ptr noundef null, ptr noundef %i.cf) ; 2 uses
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %bb.bf, label %bb.bh

.thread.i.i.i:                                    ; preds = %bb.ay
  %i.ir = call ptr @process_reassembled_data(ptr noundef %0, i32 noundef %.0.i.i.i.i, ptr noundef %1, ptr noundef @.str.227, ptr noundef nonnull %i.il, ptr noundef @dcm_pdv_fragment_items, ptr noundef null, ptr noundef %i.cf) ; 2 uses
  %i.is = icmp eq ptr %i.ir, null
  br i1 %i.is, label %bb.bb, label %bb.bh

bb.bb:                                            ; preds = %.thread.i.i.i
  %i.it = getelementptr i8, ptr %i.il, i64 40
  %i.iu = load i32, ptr %i.it, align 8            ; 3 uses
  %i.iv = load i32, ptr %i.u, align 4
  %.not62.i.i.i = icmp eq i32 %i.iu, %i.iv
  br i1 %.not62.i.i.i, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.iw = getelementptr i8, ptr %.1.i.i.i, i64 24
  %i.ix = load ptr, ptr %i.iw, align 8            ; 2 uses
  %.not63.i.i.i = icmp eq ptr %i.ix, null
  %i.iy = load ptr, ptr %i.v, align 8             ; 2 uses
  br i1 %.not63.i.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.iz = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.iy, ptr noundef @.str.228, ptr noundef nonnull %i.ix, i32 noundef %i.iu)
  br label %bb.bg

bb.be:                                            ; preds = %bb.bc
  %i.ja = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.iy, ptr noundef @.str.229, i32 noundef %i.iu)
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bb, %bb.ba
  %i.jb = load ptr, ptr %i.v, align 8
  %i.jc = call noalias ptr @wmem_strdup(ptr noundef %i.jb, ptr noundef @.str.230)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd
  %.sink.i.i.i = phi ptr [ %i.iz, %bb.bd ], [ %i.ja, %bb.be ], [ %i.jc, %bb.bf ] ; 2 uses
  store ptr %.sink.i.i.i, ptr %i.g, align 8
  %i.jd = add i32 %.0.i.i.i.i, %i.cn
  br label %dissect_dcm_pdv_fragmented.exit.i.i

bb.bh:                                            ; preds = %.thread.i.i.i, %bb.ba
  %i.je = phi ptr [ %i.ir, %.thread.i.i.i ], [ %i.ip, %bb.ba ] ; 2 uses
  %i.jf = call i32 @tvb_captured_length(ptr noundef nonnull %i.je)
  %i.jg = call fastcc i32 @dissect_dcm_pdv_body(ptr noundef nonnull %i.je, ptr noundef %1, ptr noundef %i.cf, ptr noundef nonnull %.1.i50.i, ptr noundef %.1.i.i.i, i32 noundef 0, i32 noundef %i.jf, ptr noundef nonnull %i.g)
  %i.jh = add i32 %i.jg, %.0.i.i.i.i
  br label %dissect_dcm_pdv_fragmented.exitthread-pre-split.i.i

bb.bi:                                            ; preds = %dissect_dcm_pdv_header.exit.i.i.i
  %i.ji = call fastcc i32 @dissect_dcm_pdv_body(ptr noundef %0, ptr noundef %1, ptr noundef %i.cf, ptr noundef nonnull %.1.i50.i, ptr noundef %.1.i.i.i, i32 noundef %.0.i.i.i.i, i32 noundef %i.cn, ptr noundef nonnull %i.g)
  br label %dissect_dcm_pdv_fragmented.exitthread-pre-split.i.i

dissect_dcm_pdv_fragmented.exitthread-pre-split.i.i: ; preds = %bb.bi, %bb.bh, %bb.az
  %.0.i.ph.i.i = phi i32 [ %i.ji, %bb.bi ], [ %i.jh, %bb.bh ], [ %i.io, %bb.az ]
  %.pr.i.i = load ptr, ptr %i.g, align 8
  br label %dissect_dcm_pdv_fragmented.exit.i.i

dissect_dcm_pdv_fragmented.exit.i.i:              ; preds = %dissect_dcm_pdv_fragmented.exitthread-pre-split.i.i, %bb.bg
  %i.jj = phi ptr [ %.pr.i.i, %dissect_dcm_pdv_fragmented.exitthread-pre-split.i.i ], [ %.sink.i.i.i, %bb.bg ] ; 4 uses
  %.0.i.i.i = phi i32 [ %.0.i.ph.i.i, %dissect_dcm_pdv_fragmented.exitthread-pre-split.i.i ], [ %i.jd, %bb.bg ] ; 5 uses
  %.not50.i.i = icmp eq ptr %i.jj, null
  br i1 %.not50.i.i, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %dissect_dcm_pdv_fragmented.exit.i.i
  %i.jk = load ptr, ptr %i.v, align 8             ; 2 uses
  br i1 %.072.i.i, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.jl = call noalias ptr @wmem_strdup(ptr noundef %i.jk, ptr noundef nonnull %i.jj)
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.jm = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.jk, ptr noundef @.str.223, ptr noundef %.04371.i.i, ptr noundef nonnull %i.jj)
  %.pre.i.i = load ptr, ptr %i.g, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %dissect_dcm_pdv_fragmented.exit.i.i
  %.1.i40.i.a = phi ptr [ %i.jj, %bb.bk ], [ %.pre.i.i, %bb.bl ], [ null, %dissect_dcm_pdv_fragmented.exit.i.i ]
  %.1.i40.i = phi ptr [ %i.jl, %bb.bk ], [ %i.jm, %bb.bl ], [ %.04371.i.i, %dissect_dcm_pdv_fragmented.exit.i.i ] ; 5 uses
  %i.jn = load ptr, ptr %i.f, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.jn, ptr noundef @.str.218, ptr noundef %.1.i40.i.a)
  %i.jo = icmp ult i32 %.0.i.i.i, %i.by
  br i1 %i.jo, label %bb.n, label %dissect_dcm_pdu_data.exit.i, !llvm.loop !17

dissect_dcm_pdu_data.exit.thread.i.sink.split:    ; preds = %bb.p, %bb.o, %bb.n
  %.str.222.sink = phi ptr [ @.str.221, %bb.o ], [ @.str.220, %bb.n ], [ @.str.222, %bb.p ]
  %i.jp = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ch, ptr noundef @ei_dcm_pdv_len, ptr noundef %.str.222.sink) ; 0 uses
  br label %dissect_dcm_pdu_data.exit.thread.i

dissect_dcm_pdu_data.exit.thread.i:               ; preds = %dissect_dcm_pdu_data.exit.thread.i.sink.split, %col_set_str_conditional.exit.i
  %.044.i.ph.i = phi i32 [ %i.ax, %col_set_str_conditional.exit.i ], [ %i.by, %dissect_dcm_pdu_data.exit.thread.i.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  br label %dissect_dcm_pdu.exit

dissect_dcm_pdu_data.exit.i:                      ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  %.not.i = icmp eq ptr %.1.i40.i, null
  br i1 %.not.i, label %dissect_dcm_pdu.exit, label %bb.bn

bb.bn:                                            ; preds = %dissect_dcm_pdu_data.exit.i
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ap, ptr noundef @.str.218, ptr noundef nonnull %.1.i40.i)
  %i.jq = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.jr = call ptr @col_get_text(ptr noundef %i.jq, i32 noundef 25) ; 2 uses
  %i.js = icmp eq ptr %i.jr, null
  br i1 %i.js, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jt = call ptr @g_strrstr(ptr noundef nonnull %i.jr, ptr noundef nonnull %.1.i40.i)
  %.not.i42.i = icmp eq ptr %i.jt, null
  br i1 %.not.i42.i, label %bb.bp, label %dissect_dcm_pdu.exit

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.jq, i32 noundef 25, ptr noundef @.str.218, ptr noundef nonnull %.1.i40.i)
  br label %dissect_dcm_pdu.exit

bb.bq:                                            ; preds = %dcm_state_assoc_get.exit.thread.i
  %i.ju = load i32, ptr %i.i, align 4             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.jv = load i32, ptr @ett_assoc_header, align 4
  %i.jw = call ptr @proto_tree_add_subtree(ptr noundef %i.ar, ptr noundef %0, i32 noundef %i.ax, i32 noundef %i.ju, i32 noundef %i.jv, ptr noundef nonnull %i.a, ptr noundef @.str.363) ; 13 uses
  switch i8 %i.br, label %dissect_dcm_assoc_header.exit.i [
    i8 1, label %bb.br
    i8 2, label %bb.bs
    i8 3, label %bb.bt
    i8 5, label %bb.cc
    i8 6, label %bb.cd
    i8 7, label %bb.ce
  ]

bb.br:                                            ; preds = %bb.bq
  %i.jx = load i32, ptr @hf_dcm_assoc_version, align 4
  %i.jy = call ptr @proto_tree_add_item(ptr noundef %i.jw, i32 noundef %i.jx, ptr noundef %0, i32 noundef %i.ax, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.jz = add i32 %.050101, 10
  %i.ka = load i32, ptr @hf_dcm_assoc_called, align 4
  %i.kb = load ptr, ptr %i.v, align 8
  %i.kc = call ptr @proto_tree_add_item_ret_display_string(ptr noundef %i.jw, i32 noundef %i.ka, ptr noundef %0, i32 noundef %i.jz, i32 noundef 16, i32 noundef 66, ptr noundef %i.kb, ptr noundef nonnull %i.b) ; 0 uses
  %i.kd = call ptr @wmem_file_scope()
  %i.ke = load ptr, ptr %i.b, align 8
  %i.kf = call ptr @g_strchug(ptr noundef %i.ke)
  %i.kg = call ptr @g_strchomp(ptr noundef %i.kf)
  %i.kh = call noalias ptr @wmem_strdup(ptr noundef %i.kd, ptr noundef %i.kg)
  %i.ki = getelementptr i8, ptr %.1.i50.i, i64 40 ; 2 uses
  store ptr %i.kh, ptr %i.ki, align 8
  %i.kj = add i32 %.050101, 26
  %i.kk = load i32, ptr @hf_dcm_assoc_calling, align 4
  %i.kl = load ptr, ptr %i.v, align 8
  %i.km = call ptr @proto_tree_add_item_ret_display_string(ptr noundef %i.jw, i32 noundef %i.kk, ptr noundef %0, i32 noundef %i.kj, i32 noundef 16, i32 noundef 66, ptr noundef %i.kl, ptr noundef nonnull %i.c) ; 0 uses
  %i.kn = call ptr @wmem_file_scope()
  %i.ko = load ptr, ptr %i.c, align 8
  %i.kp = call ptr @g_strchug(ptr noundef %i.ko)
  %i.kq = call ptr @g_strchomp(ptr noundef %i.kp)
  %i.kr = call noalias ptr @wmem_strdup(ptr noundef %i.kn, ptr noundef %i.kq) ; 2 uses
  %i.ks = getelementptr i8, ptr %.1.i50.i, i64 48
  store ptr %i.kr, ptr %i.ks, align 8
  %i.kt = add i32 %.050101, 74                    ; 2 uses
  %i.ku = load ptr, ptr %i.v, align 8
  %i.kv = load ptr, ptr %i.ki, align 8
  %i.kw = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.ku, ptr noundef @.str.364, ptr noundef %i.kr, ptr noundef %i.kv)
  %i.kx = sub i32 %i.ju, %i.kt
  %i.ky = call fastcc i32 @dissect_dcm_assoc_detail(ptr noundef %0, ptr noundef %1, ptr noundef %i.jw, ptr noundef nonnull %.1.i50.i, i32 noundef %i.kt, i32 noundef %i.kx)
  br label %bb.cl

bb.bs:                                            ; preds = %bb.bq
  %i.kz = load i32, ptr @hf_dcm_assoc_version, align 4
  %i.la = call ptr @proto_tree_add_item(ptr noundef %i.jw, i32 noundef %i.kz, ptr noundef %0, i32 noundef %i.ax, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.lb = add i32 %.050101, 10
  %i.lc = load i32, ptr @hf_dcm_assoc_called, align 4
  %i.ld = load ptr, ptr %i.v, align 8
  %i.le = call ptr @proto_tree_add_item_ret_display_string(ptr noundef %i.jw, i32 noundef %i.lc, ptr noundef %0, i32 noundef %i.lb, i32 noundef 16, i32 noundef 66, ptr noundef %i.ld, ptr noundef nonnull %i.d) ; 0 uses
  %i.lf = call ptr @wmem_file_scope()
  %i.lg = load ptr, ptr %i.d, align 8
  %i.lh = call ptr @g_strchug(ptr noundef %i.lg)
  %i.li = call ptr @g_strchomp(ptr noundef %i.lh)
  %i.lj = call noalias ptr @wmem_strdup(ptr noundef %i.lf, ptr noundef %i.li)
  %i.lk = getelementptr i8, ptr %.1.i50.i, i64 56 ; 2 uses
  store ptr %i.lj, ptr %i.lk, align 8
  %i.ll = add i32 %.050101, 26
  %i.lm = load i32, ptr @hf_dcm_assoc_calling, align 4
  %i.ln = load ptr, ptr %i.v, align 8
  %i.lo = call ptr @proto_tree_add_item_ret_display_string(ptr noundef %i.jw, i32 noundef %i.lm, ptr noundef %0, i32 noundef %i.ll, i32 noundef 16, i32 noundef 66, ptr noundef %i.ln, ptr noundef nonnull %i.e) ; 0 uses
  %i.lp = call ptr @wmem_file_scope()
  %i.lq = load ptr, ptr %i.e, align 8
  %i.lr = call ptr @g_strchug(ptr noundef %i.lq)
  %i.ls = call ptr @g_strchomp(ptr noundef %i.lr)
  %i.lt = call noalias ptr @wmem_strdup(ptr noundef %i.lp, ptr noundef %i.ls) ; 2 uses
  %i.lu = getelementptr i8, ptr %.1.i50.i, i64 64
  store ptr %i.lt, ptr %i.lu, align 8
  %i.lv = add i32 %.050101, 74                    ; 2 uses
  %i.lw = load ptr, ptr %i.v, align 8
  %i.lx = load ptr, ptr %i.lk, align 8
  %i.ly = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.lw, ptr noundef @.str.365, ptr noundef %i.lt, ptr noundef %i.lx)
  %i.lz = sub i32 %i.ju, %i.lv
  %i.ma = call fastcc i32 @dissect_dcm_assoc_detail(ptr noundef %0, ptr noundef %1, ptr noundef %i.jw, ptr noundef nonnull %.1.i50.i, i32 noundef %i.lv, i32 noundef %i.lz)
  br label %bb.cl

bb.bt:                                            ; preds = %bb.bq
  %i.mb = add i32 %.050101, 7                     ; 2 uses
  %i.mc = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.mb) ; 3 uses
  %i.md = add i32 %.050101, 8                     ; 2 uses
  %i.me = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.md) ; 2 uses
  %i.mf = add i32 %.050101, 9                     ; 2 uses
  %i.mg = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.mf) ; 4 uses
  %i.mh = zext i8 %i.mc to i32
  %switch.selectcmp.i.i = icmp eq i8 %i.mc, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr @.str.367, ptr @.str.260
  %switch.selectcmp135.i.i = icmp eq i8 %i.mc, 1
  %switch.select136.i.i = select i1 %switch.selectcmp135.i.i, ptr @.str.366, ptr %switch.select.i.i
  %i.mi = zext i8 %i.me to i32
  switch i8 %i.me, label %bb.cb [
    i8 1, label %bb.bu
    i8 2, label %bb.bv
    i8 3, label %bb.by
  ]

bb.bu:                                            ; preds = %bb.bt
  %switch.tableidx = add i8 %i.mg, -1             ; 2 uses
  %i.mj = icmp ult i8 %switch.tableidx, 7
  br i1 %i.mj, label %switch.lookup, label %bb.cb

bb.bv:                                            ; preds = %bb.bt
  switch i8 %i.mg, label %bb.cb [
    i8 1, label %bb.bw
    i8 2, label %bb.bx
  ]

bb.bw:                                            ; preds = %bb.bv
  br label %bb.cb

bb.bx:                                            ; preds = %bb.bv
  br label %bb.cb

bb.by:                                            ; preds = %bb.bt
  switch i8 %i.mg, label %bb.cb [
    i8 1, label %bb.bz
    i8 2, label %bb.ca
  ]

bb.bz:                                            ; preds = %bb.by
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  br label %bb.cb

switch.lookup:                                    ; preds = %bb.bu
  %i.mk = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_dcm_main, i64 %i.mk
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.cb

bb.cb:                                            ; preds = %switch.lookup, %bb.bu, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bt
  %.0131.i.i = phi ptr [ @.str.260, %bb.bt ], [ @.str.368, %bb.bu ], [ @.str.368, %switch.lookup ], [ @.str.375, %bb.ca ], [ @.str.375, %bb.bz ], [ @.str.375, %bb.by ], [ @.str.373, %bb.bv ], [ @.str.373, %bb.bw ], [ @.str.373, %bb.bx ]
  %.0130.i.i = phi ptr [ @.str.260, %bb.bt ], [ @.str.260, %bb.bu ], [ %switch.load, %switch.lookup ], [ @.str.377, %bb.ca ], [ @.str.376, %bb.bz ], [ @.str.260, %bb.by ], [ @.str.260, %bb.bv ], [ @.str.369, %bb.bw ], [ @.str.374, %bb.bx ] ; 2 uses
  %i.ml = load i32, ptr @hf_dcm_assoc_reject_result, align 4
  %i.mm = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.jw, i32 noundef %i.ml, ptr noundef %0, i32 noundef %i.mb, i32 noundef 1, i32 noundef %i.mh, ptr noundef @.str.306, ptr noundef nonnull %switch.select136.i.i) ; 0 uses
  %i.mn = load i32, ptr @hf_dcm_assoc_reject_source, align 4
  %i.mo = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.jw, i32 noundef %i.mn, ptr noundef %0, i32 noundef %i.md, i32 noundef 1, i32 noundef %i.mi, ptr noundef @.str.306, ptr noundef nonnull %.0131.i.i) ; 0 uses
  %i.mp = load i32, ptr @hf_dcm_assoc_reject_reason, align 4
  %i.mq = zext i8 %i.mg to i32
  %i.mr = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.jw, i32 noundef %i.mp, ptr noundef %0, i32 noundef %i.mf, i32 noundef 1, i32 noundef %i.mq, ptr noundef @.str.306, ptr noundef nonnull %.0130.i.i) ; 0 uses
  %i.ms = add i32 %.050101, 10
  %i.mt = load ptr, ptr %i.v, align 8
  %i.mu = getelementptr i8, ptr %.1.i50.i, i64 48
  %i.mv = load ptr, ptr %i.mu, align 8
  %i.mw = getelementptr i8, ptr %.1.i50.i, i64 40
  %i.mx = load ptr, ptr %i.mw, align 8
  %i.my = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.mt, ptr noundef @.str.378, ptr noundef %i.mv, ptr noundef %i.mx, ptr noundef nonnull %.0130.i.i)
  %i.mz = load ptr, ptr %i.a, align 8
  %i.na = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.mz, ptr noundef @ei_dcm_assoc_rejected) ; 0 uses
  br label %bb.cl

bb.cc:                                            ; preds = %bb.bq
  %i.nb = add i32 %.050101, 8
  br label %.thread.i.i

bb.cd:                                            ; preds = %bb.bq
  %i.nc = add i32 %.050101, 8
  br label %.thread.i.i

bb.ce:                                            ; preds = %bb.bq
  %i.nd = add i32 %.050101, 8                     ; 2 uses
  %i.ne = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.nd) ; 3 uses
  %i.nf = add i32 %.050101, 9                     ; 2 uses
  %i.ng = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.nf) ; 3 uses
  %i.nh = zext i8 %i.ne to i32
  switch i8 %i.ne, label %bb.ch [
    i8 0, label %bb.cf
    i8 2, label %bb.cg
  ]

bb.cf:                                            ; preds = %bb.ce
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.ni = icmp ult i8 %i.ng, 7
  br i1 %i.ni, label %switch.lookup231, label %bb.ch

switch.lookup231:                                 ; preds = %bb.cg
  %i.nj = zext nneg i8 %i.ng to i64
  %switch.gep232 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_dcm_main.6, i64 %i.nj
  %switch.load233 = load ptr, ptr %switch.gep232, align 8
  br label %bb.ch

bb.ch:                                            ; preds = %switch.lookup231, %bb.cg, %bb.cf, %bb.ce
  %.0129.i.i = phi ptr [ @.str.260, %bb.ce ], [ @.str.368, %bb.cf ], [ @.str.382, %bb.cg ], [ @.str.382, %switch.lookup231 ]
  %.0.i43.i = phi ptr [ @.str.260, %bb.ce ], [ @.str.381, %bb.cf ], [ @.str.260, %bb.cg ], [ %switch.load233, %switch.lookup231 ] ; 2 uses
  %i.nk = load i32, ptr @hf_dcm_assoc_abort_source, align 4
  %i.nl = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.jw, i32 noundef %i.nk, ptr noundef %0, i32 noundef %i.nd, i32 noundef 1, i32 noundef %i.nh, ptr noundef @.str.306, ptr noundef nonnull %.0129.i.i) ; 0 uses
  %i.nm = load i32, ptr @hf_dcm_assoc_abort_reason, align 4
  %i.nn = zext i8 %i.ng to i32
end_hunk_1
