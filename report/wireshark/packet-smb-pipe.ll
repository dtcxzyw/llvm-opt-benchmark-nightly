Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-smb-pipe?download=true
inline.NumInlined: 28
inline.NumDeleted: 7
begin_hunk_0_@dissect_pipe_smb:bb.a
  br i1 %i.ck, label %bb.ao, label %.critedge

bb.ao:                                            ; preds = %bb.an
  %i.cl = icmp eq ptr %3, null
  br i1 %i.cl, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cm = tail call i32 @dissect_ipc_state(ptr noundef nonnull %3, ptr noundef %.0176, i32 noundef 0, i1 noundef zeroext true) ; 0 uses
  br label %.critedge

bb.aq:                                            ; preds = %.thread
  %i.cn = load i8, ptr %i.g, align 1, !range !7, !noundef !8
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.cp = icmp eq ptr %3, null
  br i1 %i.cp, label %.critedge, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cq = tail call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %3, i32 noundef 0)
  %i.cr = load i32, ptr @hf_smb_pipe_getinfo_info_level, align 4
  %i.cs = zext i16 %i.cq to i32                   ; 2 uses
  %i.ct = tail call ptr @proto_tree_add_uint(ptr noundef %.0176, i32 noundef %i.cr, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 2, i32 noundef %i.cs) ; 0 uses
  %i.cu = getelementptr i8, ptr %6, i64 80
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = getelementptr i8, ptr %i.cv, i64 53
  %i.cx = load i16, ptr %i.cw, align 1
  %i.cy = and i16 %i.cx, 8
  %.not201 = icmp eq i16 %i.cy, 0
  br i1 %.not201, label %bb.at, label %.critedge

bb.at:                                            ; preds = %bb.as
  %i.cz = getelementptr i8, ptr %.0178, i64 40
  store i32 %i.cs, ptr %i.cz, align 8
  br label %.critedge

bb.au:                                            ; preds = %bb.aq
  %.not200 = icmp eq ptr %4, null
  br i1 %.not200, label %.critedge, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.da = getelementptr i8, ptr %.0178, i64 40
  %i.db = load i32, ptr %i.da, align 8
  %cond = icmp eq i32 %i.db, 1
  br i1 %cond, label %bb.aw, label %.critedge

bb.aw:                                            ; preds = %bb.av
  %i.dc = load i32, ptr @hf_smb_pipe_getinfo_output_buffer_size, align 4
  %i.dd = tail call ptr @proto_tree_add_item(ptr noundef %.0176, i32 noundef %i.dc, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.de = load i32, ptr @hf_smb_pipe_getinfo_input_buffer_size, align 4
  %i.df = tail call ptr @proto_tree_add_item(ptr noundef %.0176, i32 noundef %i.de, ptr noundef nonnull %4, i32 noundef 2, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.dg = load i32, ptr @hf_smb_pipe_getinfo_maximum_instances, align 4
  %i.dh = tail call ptr @proto_tree_add_item(ptr noundef %.0176, i32 noundef %i.dg, ptr noundef nonnull %4, i32 noundef 4, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.di = load i32, ptr @hf_smb_pipe_getinfo_current_instances, align 4
  %i.dj = tail call ptr @proto_tree_add_item(ptr noundef %.0176, i32 noundef %i.di, ptr noundef nonnull %4, i32 noundef 5, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.dk = tail call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %4, i32 noundef 6)
  %i.dl = load i32, ptr @hf_smb_pipe_getinfo_pipe_name_length, align 4
  %i.dm = zext i8 %i.dk to i32                    ; 2 uses
  %i.dn = tail call ptr @proto_tree_add_uint(ptr noundef %.0176, i32 noundef %i.dl, ptr noundef nonnull %4, i32 noundef 6, i32 noundef 1, i32 noundef %i.dm) ; 0 uses
  %i.do = load i32, ptr @hf_smb_pipe_getinfo_pipe_name, align 4
  %i.dp = tail call ptr @proto_tree_add_item(ptr noundef %.0176, i32 noundef %i.do, ptr noundef nonnull %4, i32 noundef 7, i32 noundef %i.dm, i32 noundef 0) ; 0 uses
  br label %.critedge

bb.ax:                                            ; preds = %.thread
  %i.dq = load i8, ptr %i.g, align 1, !range !7, !noundef !8
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %.critedge, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ds = icmp eq ptr %4, null
  br i1 %i.ds, label %.critedge, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dt = tail call i32 @tvb_reported_length(ptr noundef nonnull %4)
  %i.du = trunc i32 %i.dt to i16
  %i.dv = tail call i32 @tvb_reported_length(ptr noundef nonnull %4)
  %i.dw = trunc i32 %i.dv to i16
  %i.dx = tail call i32 @dissect_file_data(ptr noundef nonnull %4, ptr noundef %.0176, i32 noundef 0, i16 noundef zeroext %i.du, i32 noundef -1, i16 noundef zeroext %i.dw) ; 0 uses
  br label %.critedge

bb.ba:                                            ; preds = %.thread
  %i.dy = load i8, ptr %i.g, align 1, !range !7, !noundef !8
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.ea = icmp eq ptr %4, null
  br i1 %i.ea, label %.critedge, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eb = tail call i32 @tvb_reported_length(ptr noundef nonnull %4)
  %i.ec = trunc i32 %i.eb to i16
  %i.ed = tail call i32 @tvb_reported_length(ptr noundef nonnull %4)
  %i.ee = trunc i32 %i.ed to i16
  %i.ef = tail call i32 @dissect_file_data(ptr noundef nonnull %4, ptr noundef %.0176, i32 noundef 0, i16 noundef zeroext %i.ec, i32 noundef -1, i16 noundef zeroext %i.ee) ; 0 uses
  br label %.critedge

bb.bd:                                            ; preds = %bb.ba
  %i.eg = icmp eq ptr %3, null
  br i1 %i.eg, label %.critedge, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.eh = load i32, ptr @hf_smb_pipe_write_raw_bytes_written, align 4
  %i.ei = tail call ptr @proto_tree_add_item(ptr noundef %.0176, i32 noundef %i.eh, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.ac, %bb.aa, %bb.af, %bb.aj, %bb.ah, %bb.am, %bb.ak, %bb.ap, %bb.an, %bb.as, %bb.at, %bb.az, %bb.ax, %bb.be, %bb.bc, %bb.aw, %bb.av, %bb.au, %bb.bd, %bb.bb, %bb.ay, %bb.ar, %bb.ao, %bb.al, %bb.ai, %bb.ad, %bb.z, %bb.x, %bb.v, %bb.a, %bb.ag, %bb.ae, %bb.ab
  %.1180 = phi i1 [ false, %bb.x ], [ false, %bb.ar ], [ %i.bs, %bb.ab ], [ false, %bb.z ], [ true, %bb.ae ], [ %i.bv, %bb.ag ], [ false, %bb.ay ], [ false, %bb.bb ], [ false, %bb.ad ], [ false, %bb.ai ], [ false, %bb.al ], [ false, %bb.ao ], [ false, %bb.au ], [ false, %bb.bd ], [ false, %bb.a ], [ false, %bb.v ], [ true, %bb.av ], [ true, %bb.aw ], [ true, %bb.bc ], [ true, %bb.be ], [ true, %bb.ax ], [ true, %bb.az ], [ true, %bb.at ], [ true, %bb.as ], [ true, %bb.an ], [ true, %bb.ap ], [ true, %bb.ak ], [ true, %bb.am ], [ true, %bb.ah ], [ true, %bb.aj ], [ true, %bb.af ], [ true, %bb.aa ], [ true, %bb.ac ], [ true, %.thread ]
  ret i1 %.1180
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @proto_is_protocol_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @find_protocol_by_id(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_letohs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_add_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @dissect_smb_fid(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @dissect_pipe_lanman(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca i16, align 2                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store ptr null, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.f = getelementptr i8, ptr %5, i64 40
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 40
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp eq i32 %i.i, 3
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.g, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0148 = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ] ; 11 uses
  %i.m = load i32, ptr @proto_smb_lanman, align 4
  %i.n = tail call ptr @find_protocol_by_id(i32 noundef %i.m)
  %i.o = tail call zeroext i1 @proto_is_protocol_enabled(ptr noundef %i.n)
  %i.p = icmp ne ptr %1, null
  %or.cond171.not = and i1 %i.p, %i.o
  br i1 %or.cond171.not, label %bb.d, label %bb.cp

bb.d:                                             ; preds = %bb.c
  store ptr @.str.252, ptr %3, align 8
  %i.q = getelementptr i8, ptr %3, i64 8          ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8
  tail call void @col_set_str(ptr noundef %i.r, i32 noundef 35, ptr noundef @.str.252)
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr @proto_smb_lanman, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef nonnull %4, i32 noundef %i.s, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.u = load i32, ptr @ett_lanman, align 4
  %i.v = tail call ptr @proto_item_add_subtree(ptr noundef %i.t, i32 noundef %i.u)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0146 = phi ptr [ %i.v, %bb.e ], [ null, %bb.d ] ; 43 uses
  %i.w = getelementptr i8, ptr %5, i64 25
  %i.x = load i8, ptr %i.w, align 1, !range !7, !noundef !8
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.g, label %bb.bj

bb.g:                                             ; preds = %bb.f
  %i.z = tail call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %1, i32 noundef 0) ; 2 uses
  %i.aa = load ptr, ptr %i.q, align 8
  %i.ab = getelementptr i8, ptr %3, i64 416       ; 6 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = zext i16 %i.z to i32                    ; 3 uses
  %i.ae = tail call ptr @val_to_str_ext(ptr noundef %i.ac, i32 noundef %i.ad, ptr noundef @commands_ext, ptr noundef @.str.653)
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.aa, i32 noundef 25, ptr noundef @.str.652, ptr noundef %i.ae)
  %i.af = load i32, ptr @hf_function_code, align 4
  %i.ag = tail call ptr @proto_tree_add_uint(ptr noundef %.0146, i32 noundef %i.af, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 2, i32 noundef %i.ad) ; 0 uses
  %.not160 = icmp eq ptr %.0148, null
  br i1 %.not160, label %bb.cp, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr i8, ptr %3, i64 80        ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 53
  %i.ak = load i16, ptr %i.aj, align 1
  %i.al = and i16 %i.ak, 8
  %.not161 = icmp eq i16 %i.al, 0
  br i1 %.not161, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr i8, ptr %.0148, i64 14
  store i16 %i.z, ptr %i.am, align 2
  %i.an = getelementptr i8, ptr %.0148, i64 40
  store i32 -1, ptr %i.an, align 8
  %i.ao = getelementptr i8, ptr %.0148, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ap = load i32, ptr @hf_param_desc, align 4
  %i.aq = load ptr, ptr %i.ab, align 8
  %i.ar = call ptr @proto_tree_add_item_ret_string_and_length(ptr noundef %.0146, i32 noundef %i.ap, ptr noundef nonnull %1, i32 noundef 2, i32 noundef -1, i32 noundef 0, ptr noundef %i.aq, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) ; 0 uses
  %i.as = load ptr, ptr %i.ah, align 8
  %i.at = getelementptr i8, ptr %i.as, i64 53
  %i.au = load i16, ptr %i.at, align 1
  %i.av = and i16 %i.au, 8
  %.not162 = icmp eq i16 %i.av, 0
  br i1 %.not162, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr i8, ptr %.0148, i64 16    ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.654, ptr noundef @.str.655, i32 noundef 2664, ptr noundef @.str.656) #11
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.az = call ptr @wmem_file_scope()
  %i.ba = load ptr, ptr %i.b, align 8
  %i.bb = call noalias ptr @wmem_strdup(ptr noundef %i.az, ptr noundef %i.ba)
  store ptr %i.bb, ptr %i.aw, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.bc = load i32, ptr %i.a, align 4
  %i.bd = add i32 %i.bc, 2                        ; 2 uses
  %i.be = load i32, ptr @hf_return_desc, align 4
  %i.bf = load ptr, ptr %i.ab, align 8
  %i.bg = call ptr @proto_tree_add_item_ret_string_and_length(ptr noundef %.0146, i32 noundef %i.be, ptr noundef nonnull %1, i32 noundef %i.bd, i32 noundef -1, i32 noundef 0, ptr noundef %i.bf, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) ; 0 uses
  %i.bh = load ptr, ptr %i.ah, align 8
  %i.bi = getelementptr i8, ptr %i.bh, i64 53
  %i.bj = load i16, ptr %i.bi, align 1
  %i.bk = and i16 %i.bj, 8
  %.not163 = icmp eq i16 %i.bk, 0
  br i1 %.not163, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr i8, ptr %.0148, i64 24    ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.654, ptr noundef @.str.655, i32 noundef 2675, ptr noundef @.str.657) #11
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bo = call ptr @wmem_file_scope()
  %i.bp = load ptr, ptr %i.c, align 8
  %i.bq = call noalias ptr @wmem_strdup(ptr noundef %i.bo, ptr noundef %i.bp)
  store ptr %i.bq, ptr %i.bl, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %i.br = load i32, ptr %i.a, align 4
  br label %.fold.split17.i

.fold.split17.i:                                  ; preds = %.fold.split17.i, %bb.r
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.fold.split17.i ], [ 0, %bb.r ] ; 2 uses
  %6 = getelementptr [104 x i8], ptr @lmd, i64 %indvars.iv.i ; 6 uses
  %7 = load i32, ptr %6, align 8                  ; 2 uses
  %.not.i = icmp eq i32 %7, -1
  %8 = icmp eq i32 %7, %i.ad
  %or.cond.i = or i1 %.not.i, %8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %or.cond.i, label %find_lanman.exit, label %.fold.split17.i, !llvm.loop !11

find_lanman.exit:                                 ; preds = %.fold.split17.i
  %9 = add i32 %i.br, %i.bd
  %i.bs = load ptr, ptr %i.b, align 8
  %i.bt = getelementptr i8, ptr %6, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = load ptr, ptr @g_ascii_table, align 8   ; 4 uses
  br label %bb.s

bb.s:                                             ; preds = %.backedge, %find_lanman.exit
  %.0208 = phi i1 [ false, %find_lanman.exit ], [ %.0208.be, %.backedge ] ; 19 uses
  %.0145.i = phi ptr [ %i.bu, %find_lanman.exit ], [ %.0145.i.be, %.backedge ] ; 38 uses
  %.0143.i = phi ptr [ %i.bs, %find_lanman.exit ], [ %.0143.i.be, %.backedge ] ; 2 uses
  %.0.i = phi i32 [ %9, %find_lanman.exit ], [ %.0.i.be, %.backedge ] ; 41 uses
  %i.bw = getelementptr i8, ptr %.0143.i, i64 1   ; 25 uses
  %i.bx = load i8, ptr %.0143.i, align 1
  switch i8 %i.bx, label %.backedge [
    i8 0, label %dissect_request_parameters.exit
    i8 87, label %bb.t
    i8 68, label %bb.y
    i8 98, label %bb.ad
    i8 79, label %bb.aj
    i8 122, label %bb.ao
    i8 70, label %bb.at
    i8 76, label %bb.av
    i8 115, label %bb.aw
    i8 84, label %bb.ax
  ]

bb.t:                                             ; preds = %bb.s
  %i.by = getelementptr i8, ptr %.0145.i, i64 8
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cb = load i32, ptr @hf_smb_pipe_word_param, align 4
  %i.cc = call ptr @proto_tree_add_item(ptr noundef %.0146, i32 noundef %i.cb, ptr noundef nonnull %1, i32 noundef %.0.i, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.cd = add i32 %.0.i, 2
  br label %.backedge

bb.v:                                             ; preds = %bb.t
  %i.ce = getelementptr i8, ptr %.0145.i, i64 16
  %i.cf = load i32, ptr %i.ce, align 8
  %.not160.i = icmp eq i32 %i.cf, 1
  br i1 %.not160.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %1, i32 noundef %.0.i)
  %i.ch = load ptr, ptr %.0145.i, align 8
  %i.ci = load i32, ptr %i.ch, align 4            ; 2 uses
  %i.cj = icmp slt i32 %i.ci, 1
  %i.ck = load i32, ptr @hf_smb_pipe_word_param, align 4
  %i.cl = select i1 %i.cj, i32 %i.ck, i32 %i.ci
  %i.cm = call ptr @proto_registrar_get_name(i32 noundef %i.cl)
  %i.cn = zext i16 %i.cg to i32                   ; 2 uses
  %i.co = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %.0146, ptr noundef %3, ptr noundef @ei_smb_pipe_bad_type, ptr noundef nonnull %1, i32 noundef %.0.i, i32 noundef 2, ptr noundef @.str.723, ptr noundef %i.cm, i32 noundef %i.cn, i32 noundef %i.cn) ; 0 uses
  %i.cp = add i32 %.0.i, 2
  %i.cq = getelementptr i8, ptr %.0145.i, i64 24
  br label %.backedge

bb.x:                                             ; preds = %bb.v
  %i.cr = load ptr, ptr %.0145.i, align 8
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = call i32 %i.bz(ptr noundef nonnull %1, i32 noundef %.0.i, i32 noundef 0, ptr noundef %3, ptr noundef %.0146, i32 noundef 0, i32 noundef %i.cs, ptr noundef %5), !inline_history !12
  %i.cu = getelementptr i8, ptr %.0145.i, i64 24
  br label %.backedge

bb.y:                                             ; preds = %bb.s
  %i.cv = getelementptr i8, ptr %.0145.i, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8            ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr @hf_smb_pipe_doubleword_param, align 4
  %i.cz = call ptr @proto_tree_add_item(ptr noundef %.0146, i32 noundef %i.cy, ptr noundef nonnull %1, i32 noundef %.0.i, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.da = add i32 %.0.i, 4
  br label %.backedge

bb.aa:                                            ; preds = %bb.y
  %i.db = getelementptr i8, ptr %.0145.i, i64 16
  %i.dc = load i32, ptr %i.db, align 8
  %.not159.i = icmp eq i32 %i.dc, 2
  br i1 %.not159.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dd = call i32 @tvb_get_letohl(ptr noundef nonnull %1, i32 noundef %.0.i) ; 2 uses
  %i.de = load ptr, ptr %.0145.i, align 8
  %i.df = load i32, ptr %i.de, align 4            ; 2 uses
  %i.dg = icmp slt i32 %i.df, 1
  %i.dh = load i32, ptr @hf_smb_pipe_doubleword_param, align 4
  %i.di = select i1 %i.dg, i32 %i.dh, i32 %i.df
  %i.dj = call ptr @proto_registrar_get_name(i32 noundef %i.di)
  %i.dk = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %.0146, ptr noundef %3, ptr noundef @ei_smb_pipe_bad_type, ptr noundef nonnull %1, i32 noundef %.0.i, i32 noundef 2, ptr noundef @.str.724, ptr noundef %i.dj, i32 noundef %i.dd, i32 noundef %i.dd) ; 0 uses
  %i.dl = add i32 %.0.i, 4
  %i.dm = getelementptr i8, ptr %.0145.i, i64 24
  br label %.backedge

bb.ac:                                            ; preds = %bb.aa
  %i.dn = load ptr, ptr %.0145.i, align 8
  %i.do = load i32, ptr %i.dn, align 4
  %i.dp = call i32 %i.cw(ptr noundef nonnull %1, i32 noundef %.0.i, i32 noundef 0, ptr noundef %3, ptr noundef %.0146, i32 noundef 0, i32 noundef %i.do, ptr noundef %5), !inline_history !12
  %i.dq = getelementptr i8, ptr %.0145.i, i64 24
  br label %.backedge

bb.ad:                                            ; preds = %bb.s
  %i.dr = load i8, ptr %i.bw, align 1             ; 3 uses
  %i.ds = zext i8 %i.dr to i64
  %i.dt = getelementptr [2 x i8], ptr %i.bv, i64 %i.ds
  %i.du = load i16, ptr %i.dt, align 2
  %i.dv = and i16 %i.du, 8
  %.not.i.i = icmp eq i16 %i.dv, 0
  br i1 %.not.i.i, label %get_count.exit.thread201.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ad
  %.not1416.i.i = icmp eq i8 %i.dr, 0
  br i1 %.not1416.i.i, label %get_count.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.ae
  %i.dw = phi i8 [ %i.eg, %bb.ae ], [ %i.dr, %.preheader.i.i ] ; 2 uses
  %.018.i.i = phi i32 [ %i.ee, %bb.ae ], [ 0, %.preheader.i.i ] ; 2 uses
  %.01217.i.i = phi ptr [ %i.ef, %bb.ae ], [ %i.bw, %.preheader.i.i ] ; 2 uses
  %i.dx = zext i8 %i.dw to i64
  %i.dy = getelementptr [2 x i8], ptr %i.bv, i64 %i.dx
  %i.dz = load i16, ptr %i.dy, align 2
  %i.ea = and i16 %i.dz, 8
  %.not15.i.i = icmp eq i16 %i.ea, 0
  br i1 %.not15.i.i, label %get_count.exit.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i
  %i.eb = zext i8 %i.dw to i32
  %i.ec = mul i32 %.018.i.i, 10
  %i.ed = add nsw i32 %i.eb, -48
  %i.ee = add i32 %i.ed, %i.ec                    ; 2 uses
  %i.ef = getelementptr i8, ptr %.01217.i.i, i64 1 ; 3 uses
  %i.eg = load i8, ptr %i.ef, align 1             ; 2 uses
  %.not14.i.i = icmp eq i8 %i.eg, 0
  br i1 %.not14.i.i, label %get_count.exit.i, label %.lr.ph.i.i, !llvm.loop !0

get_count.exit.i:                                 ; preds = %bb.ae, %.lr.ph.i.i
  %storemerge.i.i = phi i32 [ %i.ee, %bb.ae ], [ %.018.i.i, %.lr.ph.i.i ] ; 3 uses
  %.011.i.i = phi ptr [ %i.ef, %bb.ae ], [ %.01217.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.eh = getelementptr i8, ptr %.0145.i, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8            ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.af, label %bb.ag

get_count.exit.thread201.i:                       ; preds = %bb.ad
  %i.ek = getelementptr i8, ptr %.0145.i, i64 8
  %i.el = load ptr, ptr %i.ek, align 8            ; 2 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %.thread206.i, label %bb.ag

get_count.exit.thread.i:                          ; preds = %.preheader.i.i
  %i.en = getelementptr i8, ptr %.0145.i, i64 8
  %i.eo = load ptr, ptr %i.en, align 8            ; 2 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %.thread.i, label %bb.ag

bb.af:                                            ; preds = %get_count.exit.i
  %i.eq = icmp eq i32 %storemerge.i.i, 1
  br i1 %i.eq, label %.thread206.i, label %.thread.i

.thread206.i:                                     ; preds = %bb.af, %get_count.exit.thread201.i
  %.011.i205209.i = phi ptr [ %.011.i.i, %bb.af ], [ %i.bw, %get_count.exit.thread201.i ]
  %i.er = load i32, ptr @hf_smb_pipe_byte_param, align 4
  %i.es = call ptr @proto_tree_add_item(ptr noundef %.0146, i32 noundef %i.er, ptr noundef nonnull %1, i32 noundef %.0.i, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %add_bytes_param.exit.i

.thread.i:                                        ; preds = %bb.af, %get_count.exit.thread.i
  %storemerge.i181189.i = phi i32 [ %storemerge.i.i, %bb.af ], [ 0, %get_count.exit.thread.i ] ; 2 uses
  %.011.i184188.i = phi ptr [ %.011.i.i, %bb.af ], [ %i.bw, %get_count.exit.thread.i ]
  %i.et = load i32, ptr @hf_smb_pipe_bytes_param, align 4
  %i.eu = call ptr @proto_tree_add_item(ptr noundef %.0146, i32 noundef %i.et, ptr noundef nonnull %1, i32 noundef %.0.i, i32 noundef %storemerge.i181189.i, i32 noundef 0) ; 0 uses
  br label %add_bytes_param.exit.i

add_bytes_param.exit.i:                           ; preds = %.thread.i, %.thread206.i
  %storemerge.i181190.i = phi i32 [ 1, %.thread206.i ], [ %storemerge.i181189.i, %.thread.i ]
  %.011.i184187.i = phi ptr [ %.011.i205209.i, %.thread206.i ], [ %.011.i184188.i, %.thread.i ]
  %i.ev = add i32 %storemerge.i181190.i, %.0.i
  br label %.backedge

bb.ag:                                            ; preds = %get_count.exit.thread.i, %get_count.exit.thread201.i, %get_count.exit.i
  %i.ew = phi ptr [ %i.eo, %get_count.exit.thread.i ], [ %i.ei, %get_count.exit.i ], [ %i.el, %get_count.exit.thread201.i ]
  %.011.i183.i = phi ptr [ %i.bw, %get_count.exit.thread.i ], [ %.011.i.i, %get_count.exit.i ], [ %i.bw, %get_count.exit.thread201.i ] ; 2 uses
  %storemerge.i182.i = phi i32 [ 0, %get_count.exit.thread.i ], [ %storemerge.i.i, %get_count.exit.i ], [ 1, %get_count.exit.thread201.i ] ; 4 uses
  %i.ex = getelementptr i8, ptr %.0145.i, i64 16
  %i.ey = load i32, ptr %i.ex, align 8
  %.not158.i = icmp eq i32 %i.ey, 3
  %i.ez = load ptr, ptr %.0145.i, align 8
  %i.fa = load i32, ptr %i.ez, align 4            ; 3 uses
  br i1 %.not158.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fb = icmp slt i32 %i.fa, 1
  %i.fc = load i32, ptr @hf_smb_pipe_bytes_param, align 4
  %i.fd = select i1 %i.fb, i32 %i.fc, i32 %i.fa
  %i.fe = call ptr @proto_registrar_get_name(i32 noundef %i.fd)
  %i.ff = load ptr, ptr %i.ab, align 8
  %i.fg = call ptr @tvb_bytes_to_str(ptr noundef %i.ff, ptr noundef nonnull %1, i32 noundef %.0.i, i32 noundef %storemerge.i182.i)
  %i.fh = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %.0146, ptr noundef %3, ptr noundef @ei_smb_pipe_bad_type, ptr noundef nonnull %1, i32 noundef %.0.i, i32 noundef %storemerge.i182.i, ptr noundef @.str.725, ptr noundef %i.fe, ptr noundef %i.fg) ; 0 uses
  %i.fi = add i32 %storemerge.i182.i, %.0.i
  %i.fj = getelementptr i8, ptr %.0145.i, i64 24
  br label %.backedge

bb.ai:                                            ; preds = %bb.ag
  %i.fk = call i32 %i.ew(ptr noundef nonnull %1, i32 noundef %.0.i, i32 noundef %storemerge.i182.i, ptr noundef %3, ptr noundef %.0146, i32 noundef 0, i32 noundef %i.fa, ptr noundef %5), !inline_history !12
  %i.fl = getelementptr i8, ptr %.0145.i, i64 24
  br label %.backedge

bb.aj:                                            ; preds = %bb.s
  %i.fm = getelementptr i8, ptr %.0145.i, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fp = load i32, ptr @hf_smb_pipe_string_param, align 4
  %i.fq = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format_value(ptr noundef %.0146, i32 noundef %i.fp, ptr noundef nonnull %1, i32 noundef %.0.i, i32 noundef 0, ptr noundef @.str.727, ptr noundef @.str.728) ; 0 uses
  br label %.backedge

bb.al:                                            ; preds = %bb.aj
  %i.fr = load ptr, ptr %.0145.i, align 8
  %i.fs = load i32, ptr %i.fr, align 4            ; 2 uses
  %i.ft = icmp sgt i32 %i.fs, 0
  br i1 %i.ft, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fu = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format_value(ptr noundef %.0146, i32 noundef %i.fs, ptr noundef nonnull %1, i32 noundef %.0.i, i32 noundef 0, ptr noundef @.str.727, ptr noundef @.str.728) ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.fv = getelementptr i8, ptr %.0145.i, i64 24
  br label %.backedge

bb.ao:                                            ; preds = %bb.s
  %i.fw = getelementptr i8, ptr %.0145.i, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8            ; 2 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fz = call i32 @tvb_strsize(ptr noundef nonnull %1, i32 noundef %.0.i) ; 2 uses
  %i.ga = load i32, ptr @hf_smb_pipe_string_param, align 4
  %i.gb = call ptr @proto_tree_add_item(ptr noundef %.0146, i32 noundef %i.ga, ptr noundef nonnull %1, i32 noundef %.0.i, i32 noundef %i.fz, i32 noundef 0) ; 0 uses
  %i.gc = add i32 %i.fz, %.0.i
  br label %.backedge

bb.aq:                                            ; preds = %bb.ao
  %i.gd = getelementptr i8, ptr %.0145.i, i64 16
  %i.ge = load i32, ptr %i.gd, align 8
  %.not157.i = icmp eq i32 %i.ge, 4
  br i1 %.not157.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gf = call i32 @tvb_strsize(ptr noundef nonnull %1, i32 noundef %.0.i) ; 3 uses
  %i.gg = load ptr, ptr %.0145.i, align 8
  %i.gh = load i32, ptr %i.gg, align 4            ; 2 uses
  %i.gi = icmp slt i32 %i.gh, 1
  %i.gj = load i32, ptr @hf_smb_pipe_string_param, align 4
  %i.gk = select i1 %i.gi, i32 %i.gj, i32 %i.gh
  %i.gl = call ptr @proto_registrar_get_name(i32 noundef %i.gk)
  %i.gm = load ptr, ptr %i.ab, align 8
  %i.gn = call ptr @tvb_format_text(ptr noundef %i.gm, ptr noundef nonnull %1, i32 noundef %.0.i, i32 noundef %i.gf)
  %i.go = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %.0146, ptr noundef %3, ptr noundef @ei_smb_pipe_bad_type, ptr noundef nonnull %1, i32 noundef %.0.i, i32 noundef %i.gf, ptr noundef @.str.726, ptr noundef %i.gl, ptr noundef %i.gn) ; 0 uses
  %i.gp = add i32 %i.gf, %.0.i
  %i.gq = getelementptr i8, ptr %.0145.i, i64 24
  br label %.backedge

bb.as:                                            ; preds = %bb.aq
  %i.gr = load ptr, ptr %.0145.i, align 8
  %i.gs = load i32, ptr %i.gr, align 4
  %i.gt = call i32 %i.fx(ptr noundef nonnull %1, i32 noundef %.0.i, i32 noundef 0, ptr noundef %3, ptr noundef %.0146, i32 noundef 0, i32 noundef %i.gs, ptr noundef %5), !inline_history !12
  %i.gu = getelementptr i8, ptr %.0145.i, i64 24
  br label %.backedge

bb.at:                                            ; preds = %bb.s
  %i.gv = load i8, ptr %i.bw, align 1             ; 3 uses
  %i.gw = zext i8 %i.gv to i64
  %i.gx = getelementptr [2 x i8], ptr %i.bv, i64 %i.gw
  %i.gy = load i16, ptr %i.gx, align 2
  %i.gz = and i16 %i.gy, 8
  %.not.i162.i = icmp eq i16 %i.gz, 0
  br i1 %.not.i162.i, label %get_count.exit172.i, label %.preheader.i163.i

.preheader.i163.i:                                ; preds = %bb.at
  %.not1416.i164.i = icmp eq i8 %i.gv, 0
  br i1 %.not1416.i164.i, label %get_count.exit172.i, label %.lr.ph.i165.i

.lr.ph.i165.i:                                    ; preds = %.preheader.i163.i, %bb.au
  %i.ha = phi i8 [ %i.hk, %bb.au ], [ %i.gv, %.preheader.i163.i ] ; 2 uses
  %.018.i166.i = phi i32 [ %i.hi, %bb.au ], [ 0, %.preheader.i163.i ] ; 2 uses
  %.01217.i167.i = phi ptr [ %i.hj, %bb.au ], [ %i.bw, %.preheader.i163.i ] ; 2 uses
  %i.hb = zext i8 %i.ha to i64
  %i.hc = getelementptr [2 x i8], ptr %i.bv, i64 %i.hb
  %i.hd = load i16, ptr %i.hc, align 2
  %i.he = and i16 %i.hd, 8
  %.not15.i168.i = icmp eq i16 %i.he, 0
  br i1 %.not15.i168.i, label %get_count.exit172.i, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i165.i
  %i.hf = zext i8 %i.ha to i32
  %i.hg = mul i32 %.018.i166.i, 10
  %i.hh = add nsw i32 %i.hf, -48
  %i.hi = add i32 %i.hh, %i.hg                    ; 2 uses
  %i.hj = getelementptr i8, ptr %.01217.i167.i, i64 1 ; 3 uses
  %i.hk = load i8, ptr %i.hj, align 1             ; 2 uses
  %.not14.i169.i = icmp eq i8 %i.hk, 0
  br i1 %.not14.i169.i, label %get_count.exit172.i, label %.lr.ph.i165.i, !llvm.loop !0

get_count.exit172.i:                              ; preds = %bb.au, %.lr.ph.i165.i, %.preheader.i163.i, %bb.at
  %storemerge.i170.i = phi i32 [ 1, %bb.at ], [ 0, %.preheader.i163.i ], [ %i.hi, %bb.au ], [ %.018.i166.i, %.lr.ph.i165.i ] ; 2 uses
  %.011.i171.i = phi ptr [ %i.bw, %bb.at ], [ %i.bw, %.preheader.i163.i ], [ %i.hj, %bb.au ], [ %.01217.i167.i, %.lr.ph.i165.i ]
  %i.hl = load i32, ptr @hf_padding, align 4
  %i.hm = call ptr @proto_tree_add_item(ptr noundef %.0146, i32 noundef %i.hl, ptr noundef nonnull %1, i32 noundef %.0.i, i32 noundef %storemerge.i170.i, i32 noundef 0) ; 0 uses
  %i.hn = add i32 %storemerge.i170.i, %.0.i
  br label %.backedge

bb.av:                                            ; preds = %bb.s
  %i.ho = load i32, ptr @hf_recv_buf_len, align 4
  %i.hp = call ptr @proto_tree_add_item(ptr noundef %.0146, i32 noundef %i.ho, ptr noundef nonnull %1, i32 noundef %.0.i, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.hq = add i32 %.0.i, 2
  br label %.backedge

bb.aw:                                            ; preds = %bb.s
  br label %.backedge

bb.ax:                                            ; preds = %bb.s
  %i.hr = load i32, ptr @hf_send_buf_len, align 4
  %i.hs = call ptr @proto_tree_add_item(ptr noundef %.0146, i32 noundef %i.hr, ptr noundef nonnull %1, i32 noundef %.0.i, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ht = add i32 %.0.i, 2
  br label %.backedge

.backedge:                                        ; preds = %bb.ax, %bb.aw, %bb.av, %get_count.exit172.i, %bb.as, %bb.ar, %bb.ap, %bb.an, %bb.ak, %bb.ai, %bb.ah, %add_bytes_param.exit.i, %bb.ac, %bb.ab, %bb.z, %bb.x, %bb.w, %bb.u, %bb.s
  %.0208.be = phi i1 [ %.0208, %bb.s ], [ %.0208, %bb.u ], [ %.0208, %bb.x ], [ %.0208, %bb.w ], [ %.0208, %bb.z ], [ %.0208, %bb.ac ], [ %.0208, %bb.ab ], [ %.0208, %add_bytes_param.exit.i ], [ %.0208, %bb.ai ], [ %.0208, %bb.ah ], [ %.0208, %bb.ak ], [ %.0208, %bb.an ], [ %.0208, %bb.ap ], [ %.0208, %bb.as ], [ %.0208, %bb.ar ], [ %.0208, %get_count.exit172.i ], [ %.0208, %bb.av ], [ true, %bb.aw ], [ %.0208, %bb.ax ]
  %.0145.i.be = phi ptr [ %.0145.i, %bb.s ], [ %.0145.i, %bb.u ], [ %i.cu, %bb.x ], [ %i.cq, %bb.w ], [ %.0145.i, %bb.z ], [ %i.dq, %bb.ac ], [ %i.dm, %bb.ab ], [ %.0145.i, %add_bytes_param.exit.i ], [ %i.fl, %bb.ai ], [ %i.fj, %bb.ah ], [ %.0145.i, %bb.ak ], [ %i.fv, %bb.an ], [ %.0145.i, %bb.ap ], [ %i.gu, %bb.as ], [ %i.gq, %bb.ar ], [ %.0145.i, %get_count.exit172.i ], [ %.0145.i, %bb.av ], [ %.0145.i, %bb.aw ], [ %.0145.i, %bb.ax ]
  %.0143.i.be = phi ptr [ %i.bw, %bb.s ], [ %i.bw, %bb.u ], [ %i.bw, %bb.x ], [ %i.bw, %bb.w ], [ %i.bw, %bb.z ], [ %i.bw, %bb.ac ], [ %i.bw, %bb.ab ], [ %.011.i184187.i, %add_bytes_param.exit.i ], [ %.011.i183.i, %bb.ai ], [ %.011.i183.i, %bb.ah ], [ %i.bw, %bb.ak ], [ %i.bw, %bb.an ], [ %i.bw, %bb.ap ], [ %i.bw, %bb.as ], [ %i.bw, %bb.ar ], [ %.011.i171.i, %get_count.exit172.i ], [ %i.bw, %bb.av ], [ %i.bw, %bb.aw ], [ %i.bw, %bb.ax ]
  %.0.i.be = phi i32 [ %.0.i, %bb.s ], [ %i.cd, %bb.u ], [ %i.ct, %bb.x ], [ %i.cp, %bb.w ], [ %i.da, %bb.z ], [ %i.dp, %bb.ac ], [ %i.dl, %bb.ab ], [ %i.ev, %add_bytes_param.exit.i ], [ %i.fk, %bb.ai ], [ %i.fi, %bb.ah ], [ %.0.i, %bb.ak ], [ %.0.i, %bb.an ], [ %i.gc, %bb.ap ], [ %i.gt, %bb.as ], [ %i.gp, %bb.ar ], [ %i.hn, %get_count.exit172.i ], [ %i.hq, %bb.av ], [ %.0.i, %bb.aw ], [ %i.ht, %bb.ax ]
  br label %bb.s, !llvm.loop !13

dissect_request_parameters.exit:                  ; preds = %bb.s
  %i.hu = call i32 @tvb_reported_length_remaining(ptr noundef nonnull %1, i32 noundef %.0.i)
  %.not164 = icmp eq i32 %i.hu, 0
  br i1 %.not164, label %bb.bc, label %bb.ay

bb.ay:                                            ; preds = %dissect_request_parameters.exit
  %i.hv = load i32, ptr @hf_aux_data_desc, align 4
  %i.hw = load ptr, ptr %i.ab, align 8
  %i.hx = call ptr @proto_tree_add_item_ret_string_and_length(ptr noundef %.0146, i32 noundef %i.hv, ptr noundef nonnull %1, i32 noundef %.0.i, i32 noundef -1, i32 noundef 0, ptr noundef %i.hw, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a) ; 0 uses
  %i.hy = load ptr, ptr %i.ah, align 8
  %i.hz = getelementptr i8, ptr %i.hy, i64 53
  %i.ia = load i16, ptr %i.hz, align 1
  %i.ib = and i16 %i.ia, 8
  %.not165 = icmp eq i16 %i.ib, 0
  br i1 %.not165, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.ic = getelementptr i8, ptr %.0148, i64 32    ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8
  %i.ie = icmp eq ptr %i.id, null
  br i1 %i.ie, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.654, ptr noundef @.str.655, i32 noundef 2699, ptr noundef @.str.658) #11
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.if = call ptr @wmem_file_scope()
  %i.ig = load ptr, ptr %i.d, align 8
  %i.ih = call noalias ptr @wmem_strdup(ptr noundef %i.if, ptr noundef %i.ig)
  store ptr %i.ih, ptr %i.ic, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ay, %bb.bb, %dissect_request_parameters.exit
  %i.ii = icmp ne ptr %2, null
  %or.cond = and i1 %i.ii, %.0208
  br i1 %or.cond, label %bb.bd, label %bb.cp

bb.bd:                                            ; preds = %bb.bc
  %i.ij = call i32 @tvb_reported_length(ptr noundef nonnull %2)
  %.not166 = icmp eq i32 %i.ij, 0
  br i1 %.not166, label %bb.cp, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ik = getelementptr i8, ptr %6, i64 16
  %i.il = load ptr, ptr %i.ik, align 8            ; 2 uses
  %.not167 = icmp eq ptr %i.il, null
  br i1 %.not167, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.im = call ptr %i.il(ptr noundef nonnull %2, ptr noundef %3, ptr noundef %.0146, i32 noundef 0) ; 2 uses
  %i.in = getelementptr i8, ptr %6, i64 24
  %i.io = load ptr, ptr %i.in, align 8
  %i.ip = load i32, ptr %i.io, align 4
  %i.iq = call ptr @proto_item_add_subtree(ptr noundef %i.im, i32 noundef %i.ip)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %.0144 = phi ptr [ %i.im, %bb.bf ], [ null, %bb.be ] ; 2 uses
  %.0 = phi ptr [ %i.iq, %bb.bf ], [ %.0146, %bb.be ] ; 2 uses
  %i.ir = load ptr, ptr %i.c, align 8
  %i.is = getelementptr i8, ptr %6, i64 32
  %i.it = load ptr, ptr %i.is, align 8
  %i.iu = call fastcc i32 @dissect_transact_data(ptr noundef %2, i32 noundef 0, i32 noundef -1, ptr noundef %3, ptr noundef %.0, ptr noundef %i.ir, ptr noundef %i.it, ptr noundef nonnull %i.e, ptr noundef %5) ; 2 uses
  %i.iv = load ptr, ptr %i.d, align 8
  %.not168 = icmp ne ptr %i.iv, null
  %i.iw = load i16, ptr %i.e, align 2
  %i.ix = icmp ne i16 %i.iw, 0
  %or.cond215 = select i1 %.not168, i1 %i.ix, i1 false
  br i1 %or.cond215, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.bg
  %i.iy = getelementptr i8, ptr %6, i64 40
  %10 = load ptr, ptr %i.iy, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph, %bb.bh
  %.0145212 = phi i32 [ 0, %.lr.ph ], [ %i.jb, %bb.bh ]
  %.0147211 = phi i32 [ %i.iu, %.lr.ph ], [ %i.ja, %bb.bh ]
  %i.iz = load ptr, ptr %i.d, align 8
  %i.ja = call fastcc i32 @dissect_transact_data(ptr noundef %2, i32 noundef %.0147211, i32 noundef -1, ptr noundef %3, ptr noundef %.0, ptr noundef %i.iz, ptr noundef %10, ptr noundef null, ptr noundef %5) ; 2 uses
  %i.jb = add nuw nsw i32 %.0145212, 1            ; 2 uses
  %i.jc = load i16, ptr %i.e, align 2
  %i.jd = zext i16 %i.jc to i32
  %i.je = icmp samesign ult i32 %i.jb, %i.jd
  br i1 %i.je, label %bb.bh, label %.loopexit, !llvm.loop !14

.loopexit:                                        ; preds = %bb.bh, %bb.bg
  %.1 = phi i32 [ %i.iu, %bb.bg ], [ %i.ja, %bb.bh ]
  %.not169 = icmp eq ptr %.0144, null
  br i1 %.not169, label %bb.cp, label %bb.bi

bb.bi:                                            ; preds = %.loopexit
  call void @proto_item_set_len(ptr noundef nonnull %.0144, i32 noundef %.1)
  br label %bb.cp

bb.bj:                                            ; preds = %bb.f
  %i.jf = icmp eq ptr %.0148, null
  br i1 %i.jf, label %bb.cp, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jg = tail call i32 @tvb_reported_length(ptr noundef nonnull %1)
  %i.jh = icmp eq i32 %i.jg, 0
  br i1 %i.jh, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.ji = tail call i32 @tvb_reported_length(ptr noundef %2)
  %i.jj = icmp eq i32 %i.ji, 0
  br i1 %i.jj, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.jk = load ptr, ptr %i.q, align 8
  %i.jl = getelementptr i8, ptr %3, i64 416
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = getelementptr i8, ptr %.0148, i64 14    ; 2 uses
  %i.jo = load i16, ptr %i.jn, align 2
  %i.jp = zext i16 %i.jo to i32
  %i.jq = tail call ptr @val_to_str_ext(ptr noundef %i.jm, i32 noundef %i.jp, ptr noundef @commands_ext, ptr noundef @.str.653)
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.jk, i32 noundef 25, ptr noundef @.str.659, ptr noundef %i.jq)
  %i.jr = load i32, ptr @hf_function_code, align 4
  %i.js = load i16, ptr %i.jn, align 2
  %i.jt = zext i16 %i.js to i32
  %i.ju = tail call ptr @proto_tree_add_uint(ptr noundef %.0146, i32 noundef %i.jr, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, i32 noundef %i.jt) ; 0 uses
  br label %bb.cp

bb.bn:                                            ; preds = %bb.bl, %bb.bk
  %i.jv = load ptr, ptr %i.q, align 8
  %i.jw = getelementptr i8, ptr %3, i64 416       ; 2 uses
  %i.jx = load ptr, ptr %i.jw, align 8
  %i.jy = getelementptr i8, ptr %.0148, i64 14    ; 3 uses
  %i.jz = load i16, ptr %i.jy, align 2
  %i.ka = zext i16 %i.jz to i32
  %i.kb = tail call ptr @val_to_str_ext(ptr noundef %i.jx, i32 noundef %i.ka, ptr noundef @commands_ext, ptr noundef @.str.653)
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.jv, i32 noundef 25, ptr noundef @.str.660, ptr noundef %i.kb)
  %i.kc = load i32, ptr @hf_function_code, align 4
  %i.kd = load i16, ptr %i.jy, align 2
  %i.ke = zext i16 %i.kd to i32
  %i.kf = tail call ptr @proto_tree_add_uint(ptr noundef %.0146, i32 noundef %i.kc, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, i32 noundef %i.ke) ; 0 uses
  %i.kg = load i16, ptr %i.jy, align 2
  %11 = zext i16 %i.kg to i32
  br label %.fold.split17.i172

.fold.split17.i172:                               ; preds = %.fold.split17.i172, %bb.bn
  %indvars.iv.i172 = phi i64 [ %indvars.iv.next.i175, %.fold.split17.i172 ], [ 0, %bb.bn ] ; 2 uses
  %12 = getelementptr [104 x i8], ptr @lmd, i64 %indvars.iv.i172 ; 3 uses
  %13 = load i32, ptr %12, align 8                ; 2 uses
  %.not.i173 = icmp eq i32 %13, -1
  %14 = icmp eq i32 %13, %11
  %or.cond.i174 = or i1 %.not.i173, %14
  %indvars.iv.next.i175 = add nuw nsw i64 %indvars.iv.i172, 1
  br i1 %or.cond.i174, label %find_lanman.exit184, label %.fold.split17.i172, !llvm.loop !11

find_lanman.exit184:                              ; preds = %.fold.split17.i172
  %i.kh = tail call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %1, i32 noundef 0)
  %i.ki = load i32, ptr @hf_status, align 4
  %i.kj = zext i16 %i.kh to i32
  %i.kk = tail call ptr @proto_tree_add_uint(ptr noundef %.0146, i32 noundef %i.ki, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 2, i32 noundef %i.kj) ; 0 uses
  %i.kl = tail call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %1, i32 noundef 2)
  %i.km = zext i16 %i.kl to i32                   ; 2 uses
  %i.kn = load i32, ptr @hf_convert, align 4
  %i.ko = tail call ptr @proto_tree_add_uint(ptr noundef %.0146, i32 noundef %i.kn, ptr noundef nonnull %1, i32 noundef 2, i32 noundef 2, i32 noundef %i.km) ; 0 uses
  %i.kp = getelementptr i8, ptr %.0148, i64 16
  %i.kq = load ptr, ptr %i.kp, align 8            ; 2 uses
  %i.kr = icmp eq ptr %i.kq, null
  br i1 %i.kr, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %find_lanman.exit184
  %i.ks = load i32, ptr @hf_param_no_descriptor, align 4
  %i.kt = tail call ptr @proto_tree_add_item(ptr noundef %.0146, i32 noundef %i.ks, ptr noundef nonnull %1, i32 noundef 4, i32 noundef -1, i32 noundef 0) ; 0 uses
  %.not158 = icmp eq ptr %2, null
  br i1 %.not158, label %bb.cp, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ku = tail call i32 @tvb_reported_length(ptr noundef nonnull %2)
  %.not159 = icmp eq i32 %i.ku, 0
  br i1 %.not159, label %bb.cp, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.kv = load i32, ptr @hf_data_no_descriptor, align 4
  %i.kw = tail call ptr @proto_tree_add_item(ptr noundef %.0146, i32 noundef %i.kv, ptr noundef nonnull %2, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.cp

bb.br:                                            ; preds = %find_lanman.exit184
  %i.kx = getelementptr i8, ptr %12, i64 48
  %i.ky = load ptr, ptr %i.kx, align 8
  %i.kz = load ptr, ptr @g_ascii_table, align 8   ; 2 uses
  br label %bb.bs

bb.bs:                                            ; preds = %.backedge241, %bb.br
  %.2 = phi i1 [ false, %bb.br ], [ %.2.be, %.backedge241 ] ; 12 uses
  %.0206 = phi i1 [ false, %bb.br ], [ %.0206.be, %.backedge241 ] ; 12 uses
  %.0204 = phi i16 [ 0, %bb.br ], [ %.0204.be, %.backedge241 ] ; 12 uses
  %.098.i = phi ptr [ %i.ky, %bb.br ], [ %.098.i.be, %.backedge241 ] ; 25 uses
  %.096.i = phi ptr [ %i.kq, %bb.br ], [ %.096.i.be, %.backedge241 ] ; 2 uses
  %.0.i185 = phi i32 [ 4, %bb.br ], [ %.0.i185.be, %.backedge241 ] ; 24 uses
  %i.la = getelementptr i8, ptr %.096.i, i64 1    ; 15 uses
  %i.lb = load i8, ptr %.096.i, align 1
  switch i8 %i.lb, label %.backedge241 [
    i8 0, label %dissect_response_parameters.exit
    i8 114, label %bb.bt
    i8 103, label %bb.bu
    i8 104, label %bb.ca
    i8 105, label %bb.cf
    i8 101, label %bb.ck
  ]

bb.bt:                                            ; preds = %bb.bs
  br label %.backedge241

bb.bu:                                            ; preds = %bb.bs
  %i.lc = load i8, ptr %i.la, align 1             ; 3 uses
  %i.ld = zext i8 %i.lc to i64
  %i.le = getelementptr [2 x i8], ptr %i.kz, i64 %i.ld
  %i.lf = load i16, ptr %i.le, align 2
  %i.lg = and i16 %i.lf, 8
  %.not.i.i187 = icmp eq i16 %i.lg, 0
  br i1 %.not.i.i187, label %get_count.exit.thread132.i, label %.preheader.i.i188

.preheader.i.i188:                                ; preds = %bb.bu
  %.not1416.i.i189 = icmp eq i8 %i.lc, 0
  br i1 %.not1416.i.i189, label %get_count.exit.thread.i200, label %.lr.ph.i.i190

.lr.ph.i.i190:                                    ; preds = %.preheader.i.i188, %bb.bv
  %i.lh = phi i8 [ %i.lr, %bb.bv ], [ %i.lc, %.preheader.i.i188 ] ; 2 uses
  %.018.i.i191 = phi i32 [ %i.lp, %bb.bv ], [ 0, %.preheader.i.i188 ] ; 2 uses
  %.01217.i.i192 = phi ptr [ %i.lq, %bb.bv ], [ %i.la, %.preheader.i.i188 ] ; 2 uses
  %i.li = zext i8 %i.lh to i64
  %i.lj = getelementptr [2 x i8], ptr %i.kz, i64 %i.li
  %i.lk = load i16, ptr %i.lj, align 2
  %i.ll = and i16 %i.lk, 8
  %.not15.i.i193 = icmp eq i16 %i.ll, 0
  br i1 %.not15.i.i193, label %get_count.exit.i195, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph.i.i190
  %i.lm = zext i8 %i.lh to i32
  %i.ln = mul i32 %.018.i.i191, 10
  %i.lo = add nsw i32 %i.lm, -48
  %i.lp = add i32 %i.lo, %i.ln                    ; 2 uses
  %i.lq = getelementptr i8, ptr %.01217.i.i192, i64 1 ; 3 uses
  %i.lr = load i8, ptr %i.lq, align 1             ; 2 uses
  %.not14.i.i194 = icmp eq i8 %i.lr, 0
  br i1 %.not14.i.i194, label %get_count.exit.i195, label %.lr.ph.i.i190, !llvm.loop !0

get_count.exit.i195:                              ; preds = %bb.bv, %.lr.ph.i.i190
  %storemerge.i.i196 = phi i32 [ %i.lp, %bb.bv ], [ %.018.i.i191, %.lr.ph.i.i190 ] ; 3 uses
  %.011.i.i197 = phi ptr [ %i.lq, %bb.bv ], [ %.01217.i.i192, %.lr.ph.i.i190 ] ; 3 uses
  %i.ls = getelementptr i8, ptr %.098.i, i64 8
  %i.lt = load ptr, ptr %i.ls, align 8            ; 2 uses
  %i.lu = icmp eq ptr %i.lt, null
  br i1 %i.lu, label %bb.bw, label %bb.bx

get_count.exit.thread132.i:                       ; preds = %bb.bu
  %i.lv = getelementptr i8, ptr %.098.i, i64 8
  %i.lw = load ptr, ptr %i.lv, align 8            ; 2 uses
  %i.lx = icmp eq ptr %i.lw, null
  br i1 %i.lx, label %.thread137.i, label %bb.bx

get_count.exit.thread.i200:                       ; preds = %.preheader.i.i188
  %i.ly = getelementptr i8, ptr %.098.i, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8            ; 2 uses
  %i.ma = icmp eq ptr %i.lz, null
  br i1 %i.ma, label %.thread.i198, label %bb.bx

bb.bw:                                            ; preds = %get_count.exit.i195
  %i.mb = icmp eq i32 %storemerge.i.i196, 1
  br i1 %i.mb, label %.thread137.i, label %.thread.i198

.thread137.i:                                     ; preds = %bb.bw, %get_count.exit.thread132.i
  %.011.i136140.i = phi ptr [ %.011.i.i197, %bb.bw ], [ %i.la, %get_count.exit.thread132.i ]
  %i.mc = load i32, ptr @hf_smb_pipe_byte_param, align 4
  %i.md = tail call ptr @proto_tree_add_item(ptr noundef %.0146, i32 noundef %i.mc, ptr noundef nonnull %1, i32 noundef %.0.i185, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %add_bytes_param.exit.i199

.thread.i198:                                     ; preds = %bb.bw, %get_count.exit.thread.i200
  %storemerge.i116124.i = phi i32 [ %storemerge.i.i196, %bb.bw ], [ 0, %get_count.exit.thread.i200 ] ; 2 uses
  %.011.i119123.i = phi ptr [ %.011.i.i197, %bb.bw ], [ %i.la, %get_count.exit.thread.i200 ]
  %i.me = load i32, ptr @hf_smb_pipe_bytes_param, align 4
  %i.mf = tail call ptr @proto_tree_add_item(ptr noundef %.0146, i32 noundef %i.me, ptr noundef nonnull %1, i32 noundef %.0.i185, i32 noundef %storemerge.i116124.i, i32 noundef 0) ; 0 uses
  br label %add_bytes_param.exit.i199

add_bytes_param.exit.i199:                        ; preds = %.thread.i198, %.thread137.i
  %storemerge.i116125.i = phi i32 [ 1, %.thread137.i ], [ %storemerge.i116124.i, %.thread.i198 ]
  %.011.i119122.i = phi ptr [ %.011.i136140.i, %.thread137.i ], [ %.011.i119123.i, %.thread.i198 ]
  %i.mg = add i32 %storemerge.i116125.i, %.0.i185
  br label %.backedge241

bb.bx:                                            ; preds = %get_count.exit.thread.i200, %get_count.exit.thread132.i, %get_count.exit.i195
  %i.mh = phi ptr [ %i.lz, %get_count.exit.thread.i200 ], [ %i.lt, %get_count.exit.i195 ], [ %i.lw, %get_count.exit.thread132.i ]
  %.011.i118.i = phi ptr [ %i.la, %get_count.exit.thread.i200 ], [ %.011.i.i197, %get_count.exit.i195 ], [ %i.la, %get_count.exit.thread132.i ] ; 2 uses
  %storemerge.i117.i = phi i32 [ 0, %get_count.exit.thread.i200 ], [ %storemerge.i.i196, %get_count.exit.i195 ], [ 1, %get_count.exit.thread132.i ] ; 4 uses
  %i.mi = getelementptr i8, ptr %.098.i, i64 16
  %i.mj = load i32, ptr %i.mi, align 8
  %.not109.i = icmp eq i32 %i.mj, 3
  %i.mk = load ptr, ptr %.098.i, align 8
  %i.ml = load i32, ptr %i.mk, align 4            ; 3 uses
  br i1 %.not109.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.mm = icmp slt i32 %i.ml, 1
  %i.mn = load i32, ptr @hf_smb_pipe_bytes_param, align 4
  %i.mo = select i1 %i.mm, i32 %i.mn, i32 %i.ml
  %i.mp = tail call ptr @proto_registrar_get_name(i32 noundef %i.mo)
  %i.mq = load ptr, ptr %i.jw, align 8
  %i.mr = tail call ptr @tvb_bytes_to_str(ptr noundef %i.mq, ptr noundef nonnull %1, i32 noundef %.0.i185, i32 noundef %storemerge.i117.i)
  %i.ms = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %.0146, ptr noundef %3, ptr noundef @ei_smb_pipe_bad_type, ptr noundef nonnull %1, i32 noundef %.0.i185, i32 noundef %storemerge.i117.i, ptr noundef @.str.731, ptr noundef %i.mp, ptr noundef %i.mr) ; 0 uses
  %i.mt = add i32 %storemerge.i117.i, %.0.i185
  %i.mu = getelementptr i8, ptr %.098.i, i64 24
  br label %.backedge241

bb.bz:                                            ; preds = %bb.bx
  %i.mv = tail call i32 %i.mh(ptr noundef nonnull %1, i32 noundef %.0.i185, i32 noundef %storemerge.i117.i, ptr noundef %3, ptr noundef %.0146, i32 noundef 0, i32 noundef %i.ml, ptr noundef %5), !inline_history !15
  %i.mw = getelementptr i8, ptr %.098.i, i64 24
  br label %.backedge241

bb.ca:                                            ; preds = %bb.bs
  %i.mx = getelementptr i8, ptr %.098.i, i64 8
  %i.my = load ptr, ptr %i.mx, align 8            ; 2 uses
  %i.mz = icmp eq ptr %i.my, null
  br i1 %i.mz, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.na = load i32, ptr @hf_smb_pipe_word_param, align 4
  %i.nb = tail call ptr @proto_tree_add_item(ptr noundef %.0146, i32 noundef %i.na, ptr noundef nonnull %1, i32 noundef %.0.i185, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.nc = add i32 %.0.i185, 2
  br label %.backedge241

bb.cc:                                            ; preds = %bb.ca
  %i.nd = getelementptr i8, ptr %.098.i, i64 16
  %i.ne = load i32, ptr %i.nd, align 8
  %.not108.i = icmp eq i32 %i.ne, 1
  br i1 %.not108.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.nf = tail call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %1, i32 noundef %.0.i185)
  %i.ng = load ptr, ptr %.098.i, align 8
  %i.nh = load i32, ptr %i.ng, align 4            ; 2 uses
  %i.ni = icmp slt i32 %i.nh, 1
  %i.nj = load i32, ptr @hf_smb_pipe_word_param, align 4
  %i.nk = select i1 %i.ni, i32 %i.nj, i32 %i.nh
  %i.nl = tail call ptr @proto_registrar_get_name(i32 noundef %i.nk)
  %i.nm = zext i16 %i.nf to i32                   ; 2 uses
  %i.nn = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %.0146, ptr noundef %3, ptr noundef @ei_smb_pipe_bad_type, ptr noundef nonnull %1, i32 noundef %.0.i185, i32 noundef 2, ptr noundef @.str.723, ptr noundef %i.nl, i32 noundef %i.nm, i32 noundef %i.nm) ; 0 uses
  %i.no = add i32 %.0.i185, 2
  %i.np = getelementptr i8, ptr %.098.i, i64 24
  br label %.backedge241

bb.ce:                                            ; preds = %bb.cc
  %i.nq = load ptr, ptr %.098.i, align 8
  %i.nr = load i32, ptr %i.nq, align 4
  %i.ns = tail call i32 %i.my(ptr noundef nonnull %1, i32 noundef %.0.i185, i32 noundef 0, ptr noundef %3, ptr noundef %.0146, i32 noundef 0, i32 noundef %i.nr, ptr noundef %5), !inline_history !15
  %i.nt = getelementptr i8, ptr %.098.i, i64 24
  br label %.backedge241

bb.cf:                                            ; preds = %bb.bs
  %i.nu = getelementptr i8, ptr %.098.i, i64 8
  %i.nv = load ptr, ptr %i.nu, align 8            ; 2 uses
  %i.nw = icmp eq ptr %i.nv, null
  br i1 %i.nw, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.nx = load i32, ptr @hf_smb_pipe_doubleword_param, align 4
  %i.ny = tail call ptr @proto_tree_add_item(ptr noundef %.0146, i32 noundef %i.nx, ptr noundef nonnull %1, i32 noundef %.0.i185, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.nz = add i32 %.0.i185, 4
  br label %.backedge241

bb.ch:                                            ; preds = %bb.cf
  %i.oa = getelementptr i8, ptr %.098.i, i64 16
  %i.ob = load i32, ptr %i.oa, align 8
  %.not107.i = icmp eq i32 %i.ob, 2
  br i1 %.not107.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.oc = tail call i32 @tvb_get_letohl(ptr noundef nonnull %1, i32 noundef %.0.i185) ; 2 uses
  %i.od = load ptr, ptr %.098.i, align 8
  %i.oe = load i32, ptr %i.od, align 4            ; 2 uses
  %i.of = icmp slt i32 %i.oe, 1
  %i.og = load i32, ptr @hf_smb_pipe_doubleword_param, align 4
  %i.oh = select i1 %i.of, i32 %i.og, i32 %i.oe
  %i.oi = tail call ptr @proto_registrar_get_name(i32 noundef %i.oh)
  %i.oj = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %.0146, ptr noundef %3, ptr noundef @ei_smb_pipe_bad_type, ptr noundef nonnull %1, i32 noundef %.0.i185, i32 noundef 2, ptr noundef @.str.732, ptr noundef %i.oi, i32 noundef %i.oc, i32 noundef %i.oc) ; 0 uses
  %i.ok = add i32 %.0.i185, 4
  %i.ol = getelementptr i8, ptr %.098.i, i64 24
  br label %.backedge241

bb.cj:                                            ; preds = %bb.ch
  %i.om = load ptr, ptr %.098.i, align 8
  %i.on = load i32, ptr %i.om, align 4
  %i.oo = tail call i32 %i.nv(ptr noundef nonnull %1, i32 noundef %.0.i185, i32 noundef 0, ptr noundef %3, ptr noundef %.0146, i32 noundef 0, i32 noundef %i.on, ptr noundef %5), !inline_history !15
  %i.op = getelementptr i8, ptr %.098.i, i64 24
  br label %.backedge241

bb.ck:                                            ; preds = %bb.bs
  %i.oq = tail call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %1, i32 noundef %.0.i185) ; 2 uses
  %i.or = load i32, ptr @hf_ecount, align 4
  %i.os = zext i16 %i.oq to i32
  %i.ot = tail call ptr @proto_tree_add_uint(ptr noundef %.0146, i32 noundef %i.or, ptr noundef nonnull %1, i32 noundef %.0.i185, i32 noundef 2, i32 noundef %i.os) ; 0 uses
  %i.ou = add i32 %.0.i185, 2
  br label %.backedge241

.backedge241:                                     ; preds = %bb.ck, %bb.cj, %bb.ci, %bb.cg, %bb.ce, %bb.cd, %bb.cb, %bb.bz, %bb.by, %add_bytes_param.exit.i199, %bb.bt, %bb.bs
  %.2.be = phi i1 [ %.2, %bb.bs ], [ true, %bb.bt ], [ %.2, %add_bytes_param.exit.i199 ], [ %.2, %bb.bz ], [ %.2, %bb.by ], [ %.2, %bb.cb ], [ %.2, %bb.ce ], [ %.2, %bb.cd ], [ %.2, %bb.cg ], [ %.2, %bb.cj ], [ %.2, %bb.ci ], [ %.2, %bb.ck ]
  %.0206.be = phi i1 [ %.0206, %bb.bs ], [ %.0206, %bb.bt ], [ %.0206, %add_bytes_param.exit.i199 ], [ %.0206, %bb.bz ], [ %.0206, %bb.by ], [ %.0206, %bb.cb ], [ %.0206, %bb.ce ], [ %.0206, %bb.cd ], [ %.0206, %bb.cg ], [ %.0206, %bb.cj ], [ %.0206, %bb.ci ], [ true, %bb.ck ]
  %.0204.be = phi i16 [ %.0204, %bb.bs ], [ %.0204, %bb.bt ], [ %.0204, %add_bytes_param.exit.i199 ], [ %.0204, %bb.bz ], [ %.0204, %bb.by ], [ %.0204, %bb.cb ], [ %.0204, %bb.ce ], [ %.0204, %bb.cd ], [ %.0204, %bb.cg ], [ %.0204, %bb.cj ], [ %.0204, %bb.ci ], [ %i.oq, %bb.ck ]
  %.098.i.be = phi ptr [ %.098.i, %bb.bs ], [ %.098.i, %bb.bt ], [ %.098.i, %add_bytes_param.exit.i199 ], [ %i.mw, %bb.bz ], [ %i.mu, %bb.by ], [ %.098.i, %bb.cb ], [ %i.nt, %bb.ce ], [ %i.np, %bb.cd ], [ %.098.i, %bb.cg ], [ %i.op, %bb.cj ], [ %i.ol, %bb.ci ], [ %.098.i, %bb.ck ]
  %.096.i.be = phi ptr [ %i.la, %bb.bs ], [ %i.la, %bb.bt ], [ %.011.i119122.i, %add_bytes_param.exit.i199 ], [ %.011.i118.i, %bb.bz ], [ %.011.i118.i, %bb.by ], [ %i.la, %bb.cb ], [ %i.la, %bb.ce ], [ %i.la, %bb.cd ], [ %i.la, %bb.cg ], [ %i.la, %bb.cj ], [ %i.la, %bb.ci ], [ %i.la, %bb.ck ]
  %.0.i185.be = phi i32 [ %.0.i185, %bb.bs ], [ %.0.i185, %bb.bt ], [ %i.mg, %add_bytes_param.exit.i199 ], [ %i.mv, %bb.bz ], [ %i.mt, %bb.by ], [ %i.nc, %bb.cb ], [ %i.ns, %bb.ce ], [ %i.no, %bb.cd ], [ %i.nz, %bb.cg ], [ %i.oo, %bb.cj ], [ %i.ok, %bb.ci ], [ %i.ou, %bb.ck ]
  br label %bb.bs, !llvm.loop !16

dissect_response_parameters.exit:                 ; preds = %bb.bs
  %.not156 = icmp eq ptr %2, null
  br i1 %.not156, label %bb.cp, label %bb.cl

bb.cl:                                            ; preds = %dissect_response_parameters.exit
  %i.ov = tail call i32 @tvb_reported_length(ptr noundef nonnull %2)
  %.not157 = icmp eq i32 %i.ov, 0
  br i1 %.not157, label %bb.cp, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  br i1 %.2, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  tail call fastcc void @dissect_response_data(ptr noundef %2, ptr noundef %3, i32 noundef %i.km, ptr noundef %.0146, ptr noundef %5, ptr noundef %12, i1 noundef zeroext %.0206, i16 noundef zeroext %.0204)
  br label %bb.cp

bb.co:                                            ; preds = %bb.cm
  %i.ow = load i32, ptr @hf_data_no_recv_buffer, align 4
  %i.ox = tail call ptr @proto_tree_add_item(ptr noundef %.0146, i32 noundef %i.ow, ptr noundef nonnull %2, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.cp

bb.cp:                                            ; preds = %.loopexit, %bb.bi, %bb.bd, %bb.bc, %dissect_response_parameters.exit, %bb.cl, %bb.co, %bb.cn, %bb.bo, %bb.bp, %bb.bq, %bb.bj, %bb.g, %bb.c, %bb.bm
  %.0149 = phi i1 [ false, %bb.c ], [ false, %bb.bj ], [ true, %.loopexit ], [ false, %bb.g ], [ true, %bb.bm ], [ true, %bb.bq ], [ true, %bb.bp ], [ true, %bb.bo ], [ true, %bb.cn ], [ true, %bb.co ], [ true, %bb.cl ], [ true, %dissect_response_parameters.exit ], [ true, %bb.bc ], [ true, %bb.bd ], [ true, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i1 %.0149
}

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ipc_state(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_file_data(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_smb_pipe() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef @.str.340, ptr noundef @.str.255, ptr noundef @.str.341) ; 2 uses
  store i32 %i.a, ptr @proto_smb_pipe, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef @proto_register_smb_pipe.hf, i32 noundef 29)
  tail call void @proto_register_subtree_array(ptr noundef @proto_register_smb_pipe.ett, i32 noundef 3)
  %i.b = load i32, ptr @proto_smb_pipe, align 4
  %i.c = tail call ptr @expert_register_protocol(i32 noundef %i.b)
  tail call void @expert_register_field_array(ptr noundef %i.c, ptr noundef @proto_register_smb_pipe.ei, i32 noundef 2)
  %i.d = load i32, ptr @proto_smb_pipe, align 4
  %i.e = tail call ptr @register_heur_dissector_list_with_description(ptr noundef @.str.342, ptr noundef @.str.343, i32 noundef %i.d)
  store ptr %i.e, ptr @smb_transact_heur_subdissector_list, align 8
  tail call void @reassembly_table_register(ptr noundef @dcerpc_reassembly_table, ptr noundef @addresses_reassembly_table_functions)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @register_heur_dissector_list_with_description(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @reassembly_table_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @_try_val_to_str_ext_init(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_ext(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_string_and_length(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn null_pointer_is_valid
declare void @proto_report_dissector_bug(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_transact_data(ptr noundef nonnull %0, i32 noundef %1, i32 noundef range(i32 -1, 65536) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr noundef %8) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %7, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i16 0, ptr %7, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = load ptr, ptr @g_ascii_table, align 8    ; 8 uses
  %i.b = getelementptr i8, ptr %3, i64 416        ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %bb.c
  %.0250 = phi i32 [ 0, %bb.c ], [ %.0250.be, %.backedge ] ; 21 uses
  %.0182 = phi ptr [ %6, %bb.c ], [ %.0182.be, %.backedge ] ; 43 uses
  %.0180 = phi ptr [ %5, %bb.c ], [ %.0180.be, %.backedge ] ; 2 uses
  %.0 = phi i32 [ %1, %bb.c ], [ %.0.be, %.backedge ] ; 37 uses
  %i.c = getelementptr i8, ptr %.0180, i64 1      ; 24 uses
  %i.d = load i8, ptr %.0180, align 1
  switch i8 %i.d, label %.backedge [
    i8 0, label %bb.as
    i8 87, label %bb.e
    i8 68, label %bb.k
    i8 66, label %bb.q
    i8 79, label %bb.w
    i8 122, label %bb.ab
    i8 98, label %bb.ai
    i8 78, label %bb.aq
  ]

.backedge:                                        ; preds = %bb.d, %bb.aq, %bb.ar, %add_bytes_pointer_param.exit, %bb.ap, %bb.ao, %bb.ac, %bb.ah, %get_stringz_pointer_value.exit, %bb.x, %bb.aa, %add_bytes_param.exit, %bb.v, %bb.u, %bb.m, %bb.p, %bb.o, %bb.g, %bb.j, %bb.i
  %.0250.be = phi i32 [ %.0250, %bb.d ], [ %.0250, %bb.g ], [ %.0250, %bb.j ], [ %.0250, %bb.i ], [ %.0250, %bb.m ], [ %.0250, %bb.p ], [ %.0250, %bb.o ], [ %.0250, %add_bytes_param.exit ], [ %.0250, %bb.v ], [ %.0250, %bb.u ], [ %.0250, %bb.x ], [ %.0250, %bb.aa ], [ %.0250, %bb.ac ], [ %.0250, %bb.ah ], [ %.2, %get_stringz_pointer_value.exit ], [ %.0250, %add_bytes_pointer_param.exit ], [ %.0250, %bb.ap ], [ %.0250, %bb.ao ], [ %.0250, %bb.aq ], [ %.0250, %bb.ar ]
  %.0182.be = phi ptr [ %.0182, %bb.d ], [ %.0182, %bb.g ], [ %i.am, %bb.j ], [ %i.ai, %bb.i ], [ %.0182, %bb.m ], [ %i.bu, %bb.p ], [ %i.bq, %bb.o ], [ %.0182, %add_bytes_param.exit ], [ %i.dp, %bb.v ], [ %i.dn, %bb.u ], [ %.0182, %bb.x ], [ %i.dz, %bb.aa ], [ %.0182, %bb.ac ], [ %i.fb, %bb.ah ], [ %i.ex, %get_stringz_pointer_value.exit ], [ %.0182, %add_bytes_pointer_param.exit ], [ %i.gw, %bb.ap ], [ %i.gs, %bb.ao ], [ %.0182, %bb.aq ], [ %.0182, %bb.ar ]
  %.0180.be = phi ptr [ %i.c, %bb.d ], [ %.011.i, %bb.g ], [ %.011.i, %bb.j ], [ %.011.i, %bb.i ], [ %.011.i214, %bb.m ], [ %.011.i214, %bb.p ], [ %.011.i214, %bb.o ], [ %.011.i225257260, %add_bytes_param.exit ], [ %.011.i225256, %bb.v ], [ %.011.i225256, %bb.u ], [ %i.c, %bb.x ], [ %i.c, %bb.aa ], [ %i.c, %bb.ac ], [ %i.c, %bb.ah ], [ %i.c, %get_stringz_pointer_value.exit ], [ %.011.i237, %add_bytes_pointer_param.exit ], [ %.011.i237, %bb.ap ], [ %.011.i237, %bb.ao ], [ %i.c, %bb.aq ], [ %i.c, %bb.ar ]
  %.0.be = phi i32 [ %.0, %bb.d ], [ %i.v, %bb.g ], [ %i.al, %bb.j ], [ %i.ah, %bb.i ], [ %i.be, %bb.m ], [ %i.bt, %bb.p ], [ %i.bp, %bb.o ], [ %i.cz, %add_bytes_param.exit ], [ %i.do, %bb.v ], [ %i.dm, %bb.u ], [ %.0, %bb.x ], [ %.0, %bb.aa ], [ %i.ed, %bb.ac ], [ %i.fa, %bb.ah ], [ %i.eo, %get_stringz_pointer_value.exit ], [ %i.gc, %add_bytes_pointer_param.exit ], [ %i.gv, %bb.ap ], [ %i.gi, %bb.ao ], [ %i.hb, %bb.aq ], [ %i.hb, %bb.ar ]
  br label %bb.d, !llvm.loop !17

bb.e:                                             ; preds = %bb.d
  %i.e = load i8, ptr %i.c, align 1               ; 3 uses
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr [2 x i8], ptr %i.a, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2
  %i.i = and i16 %i.h, 8
  %.not.i = icmp eq i16 %i.i, 0
  %.not1416.i = icmp eq i8 %i.e, 0
  %or.cond = or i1 %.not1416.i, %.not.i
  br i1 %or.cond, label %get_count.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %i.j = phi i8 [ %i.p, %bb.f ], [ %i.e, %bb.e ]
  %.01217.i = phi ptr [ %i.o, %bb.f ], [ %i.c, %bb.e ] ; 2 uses
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr [2 x i8], ptr %i.a, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2
  %i.n = and i16 %i.m, 8
  %.not15.i = icmp eq i16 %i.n, 0
  br i1 %.not15.i, label %get_count.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr i8, ptr %.01217.i, i64 1   ; 3 uses
  %i.p = load i8, ptr %i.o, align 1               ; 2 uses
  %.not14.i = icmp eq i8 %i.p, 0
  br i1 %.not14.i, label %get_count.exit, label %.lr.ph.i, !llvm.loop !0

get_count.exit:                                   ; preds = %.lr.ph.i, %bb.f, %bb.e
  %.011.i = phi ptr [ %i.c, %bb.e ], [ %i.o, %bb.f ], [ %.01217.i, %.lr.ph.i ] ; 3 uses
  %i.q = getelementptr i8, ptr %.0182, i64 8
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %get_count.exit
  %i.t = load i32, ptr @hf_smb_pipe_word_param, align 4
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.t, ptr noundef nonnull %0, i32 noundef %.0, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.v = add i32 %.0, 2
  br label %.backedge

bb.h:                                             ; preds = %get_count.exit
  %i.w = getelementptr i8, ptr %.0182, i64 16
  %i.x = load i32, ptr %i.w, align 8
  %.not204 = icmp eq i32 %i.x, 1
  br i1 %.not204, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = tail call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %0, i32 noundef %.0)
  %i.z = load ptr, ptr %.0182, align 8
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 1
  %i.ac = load i32, ptr @hf_smb_pipe_word_param, align 4
  %i.ad = select i1 %i.ab, i32 %i.ac, i32 %i.aa
  %i.ae = tail call ptr @proto_registrar_get_name(i32 noundef %i.ad)
  %i.af = zext i16 %i.y to i32                    ; 2 uses
  %i.ag = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %4, ptr noundef %3, ptr noundef @ei_smb_pipe_bad_type, ptr noundef nonnull %0, i32 noundef %.0, i32 noundef 2, ptr noundef @.str.723, ptr noundef %i.ae, i32 noundef %i.af, i32 noundef %i.af) ; 0 uses
  %i.ah = add i32 %.0, 2
  %i.ai = getelementptr i8, ptr %.0182, i64 24
  br label %.backedge

bb.j:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %.0182, align 8
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = tail call i32 %i.r(ptr noundef nonnull %0, i32 noundef %.0, i32 noundef 0, ptr noundef %3, ptr noundef %4, i32 noundef %2, i32 noundef %i.ak, ptr noundef %8)
  %i.am = getelementptr i8, ptr %.0182, i64 24
  br label %.backedge

bb.k:                                             ; preds = %bb.d
  %i.an = load i8, ptr %i.c, align 1              ; 3 uses
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr [2 x i8], ptr %i.a, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2
  %i.ar = and i16 %i.aq, 8
  %.not.i205 = icmp eq i16 %i.ar, 0
  %.not1416.i207 = icmp eq i8 %i.an, 0
  %or.cond264 = or i1 %.not1416.i207, %.not.i205
  br i1 %or.cond264, label %get_count.exit215, label %.lr.ph.i208

.lr.ph.i208:                                      ; preds = %bb.k, %bb.l
  %i.as = phi i8 [ %i.ay, %bb.l ], [ %i.an, %bb.k ]
  %.01217.i210 = phi ptr [ %i.ax, %bb.l ], [ %i.c, %bb.k ] ; 2 uses
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr [2 x i8], ptr %i.a, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2
  %i.aw = and i16 %i.av, 8
  %.not15.i211 = icmp eq i16 %i.aw, 0
  br i1 %.not15.i211, label %get_count.exit215, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i208
  %i.ax = getelementptr i8, ptr %.01217.i210, i64 1 ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 1             ; 2 uses
  %.not14.i212 = icmp eq i8 %i.ay, 0
  br i1 %.not14.i212, label %get_count.exit215, label %.lr.ph.i208, !llvm.loop !0

get_count.exit215:                                ; preds = %.lr.ph.i208, %bb.l, %bb.k
  %.011.i214 = phi ptr [ %i.c, %bb.k ], [ %i.ax, %bb.l ], [ %.01217.i210, %.lr.ph.i208 ] ; 3 uses
  %i.az = getelementptr i8, ptr %.0182, i64 8
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %get_count.exit215
  %i.bc = load i32, ptr @hf_smb_pipe_doubleword_param, align 4
  %i.bd = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.bc, ptr noundef nonnull %0, i32 noundef %.0, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.be = add i32 %.0, 4
  br label %.backedge

bb.n:                                             ; preds = %get_count.exit215
  %i.bf = getelementptr i8, ptr %.0182, i64 16
  %i.bg = load i32, ptr %i.bf, align 8
  %.not203 = icmp eq i32 %i.bg, 2
  br i1 %.not203, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = tail call i32 @tvb_get_letohl(ptr noundef nonnull %0, i32 noundef %.0) ; 2 uses
  %i.bi = load ptr, ptr %.0182, align 8
  %i.bj = load i32, ptr %i.bi, align 4            ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 1
  %i.bl = load i32, ptr @hf_smb_pipe_doubleword_param, align 4
  %i.bm = select i1 %i.bk, i32 %i.bl, i32 %i.bj
  %i.bn = tail call ptr @proto_registrar_get_name(i32 noundef %i.bm)
  %i.bo = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %4, ptr noundef %3, ptr noundef @ei_smb_pipe_bad_type, ptr noundef nonnull %0, i32 noundef %.0, i32 noundef 2, ptr noundef @.str.724, ptr noundef %i.bn, i32 noundef %i.bh, i32 noundef %i.bh) ; 0 uses
  %i.bp = add i32 %.0, 4
  %i.bq = getelementptr i8, ptr %.0182, i64 24
  br label %.backedge

bb.p:                                             ; preds = %bb.n
  %i.br = load ptr, ptr %.0182, align 8
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = tail call i32 %i.ba(ptr noundef nonnull %0, i32 noundef %.0, i32 noundef 0, ptr noundef %3, ptr noundef %4, i32 noundef %2, i32 noundef %i.bs, ptr noundef %8)
  %i.bu = getelementptr i8, ptr %.0182, i64 24
  br label %.backedge

bb.q:                                             ; preds = %bb.d
  %i.bv = load i8, ptr %i.c, align 1              ; 3 uses
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr [2 x i8], ptr %i.a, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2
  %i.bz = and i16 %i.by, 8
  %.not.i216 = icmp eq i16 %i.bz, 0
  br i1 %.not.i216, label %get_count.exit226.thread283, label %.preheader.i217

.preheader.i217:                                  ; preds = %bb.q
  %.not1416.i218 = icmp eq i8 %i.bv, 0
  br i1 %.not1416.i218, label %get_count.exit226.thread, label %.lr.ph.i219

.lr.ph.i219:                                      ; preds = %.preheader.i217, %bb.r
  %i.ca = phi i8 [ %i.ck, %bb.r ], [ %i.bv, %.preheader.i217 ] ; 2 uses
  %.018.i220 = phi i32 [ %i.ci, %bb.r ], [ 0, %.preheader.i217 ] ; 2 uses
  %.01217.i221 = phi ptr [ %i.cj, %bb.r ], [ %i.c, %.preheader.i217 ] ; 2 uses
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr [2 x i8], ptr %i.a, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2
  %i.ce = and i16 %i.cd, 8
  %.not15.i222 = icmp eq i16 %i.ce, 0
  br i1 %.not15.i222, label %get_count.exit226, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i219
  %i.cf = zext i8 %i.ca to i32
  %i.cg = mul i32 %.018.i220, 10
  %i.ch = add nsw i32 %i.cf, -48
  %i.ci = add i32 %i.ch, %i.cg                    ; 2 uses
  %i.cj = getelementptr i8, ptr %.01217.i221, i64 1 ; 3 uses
  %i.ck = load i8, ptr %i.cj, align 1             ; 2 uses
  %.not14.i223 = icmp eq i8 %i.ck, 0
  br i1 %.not14.i223, label %get_count.exit226, label %.lr.ph.i219, !llvm.loop !0

get_count.exit226:                                ; preds = %.lr.ph.i219, %bb.r
  %storemerge.i224 = phi i32 [ %i.ci, %bb.r ], [ %.018.i220, %.lr.ph.i219 ] ; 3 uses
  %.011.i225 = phi ptr [ %i.cj, %bb.r ], [ %.01217.i221, %.lr.ph.i219 ] ; 3 uses
  %i.cl = getelementptr i8, ptr %.0182, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.s, label %bb.t

get_count.exit226.thread283:                      ; preds = %bb.q
  %i.co = getelementptr i8, ptr %.0182, i64 8
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %.thread288, label %bb.t

get_count.exit226.thread:                         ; preds = %.preheader.i217
  %i.cr = getelementptr i8, ptr %.0182, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8            ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %.thread, label %bb.t

bb.s:                                             ; preds = %get_count.exit226
  %i.cu = icmp eq i32 %storemerge.i224, 1
  br i1 %i.cu, label %.thread288, label %.thread

.thread288:                                       ; preds = %get_count.exit226.thread283, %bb.s
  %.011.i225287291 = phi ptr [ %.011.i225, %bb.s ], [ %i.c, %get_count.exit226.thread283 ]
  %i.cv = load i32, ptr @hf_smb_pipe_byte_param, align 4
  %i.cw = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.cv, ptr noundef nonnull %0, i32 noundef %.0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %add_bytes_param.exit

.thread:                                          ; preds = %get_count.exit226.thread, %bb.s
  %storemerge.i224254262 = phi i32 [ %storemerge.i224, %bb.s ], [ 0, %get_count.exit226.thread ] ; 2 uses
end_hunk_0
begin_hunk_1_@dissect_transact_data:bb.a
  %i.ea = getelementptr i8, ptr %.0182, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8            ; 2 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ed = tail call i32 @add_stringz_pointer_param(ptr noundef nonnull %0, i32 noundef %.0, i32 poison, ptr noundef %3, ptr noundef %4, i32 noundef %2, i32 noundef -1, ptr poison)
  br label %.backedge

bb.ad:                                            ; preds = %bb.ab
  %i.ee = getelementptr i8, ptr %.0182, i64 16
  %i.ef = load i32, ptr %i.ee, align 8
  %.not200 = icmp eq i32 %i.ef, 4
  br i1 %.not200, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eg = load ptr, ptr %i.b, align 8
  %i.eh = tail call i32 @tvb_get_letohl(ptr noundef nonnull %0, i32 noundef %.0)
  %i.ei = and i32 %i.eh, 65535
  %i.ej = sub nsw i32 %i.ei, %2                   ; 4 uses
  %i.ek = tail call zeroext i1 @tvb_offset_exists(ptr noundef nonnull %0, i32 noundef %i.ej)
  br i1 %i.ek, label %bb.af, label %get_stringz_pointer_value.exit

bb.af:                                            ; preds = %bb.ae
  %i.el = tail call i32 @tvb_strnlen(ptr noundef nonnull %0, i32 noundef %i.ej, i32 noundef -1) ; 3 uses
  %.not.i227 = icmp eq i32 %i.el, -1
  br i1 %.not.i227, label %get_stringz_pointer_value.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.em = add nuw i32 %i.el, 1
  %i.en = tail call ptr @tvb_format_text(ptr noundef %i.eg, ptr noundef nonnull %0, i32 noundef %i.ej, i32 noundef %i.el)
  br label %get_stringz_pointer_value.exit

get_stringz_pointer_value.exit:                   ; preds = %bb.ae, %bb.af, %bb.ag
  %.2 = phi i32 [ %.0250, %bb.af ], [ %i.em, %bb.ag ], [ %.0250, %bb.ae ] ; 2 uses
  %.0.i = phi ptr [ null, %bb.af ], [ %i.en, %bb.ag ], [ null, %bb.ae ] ; 2 uses
  %i.eo = add i32 %.0, 4
  %i.ep = load ptr, ptr %.0182, align 8
  %i.eq = load i32, ptr %i.ep, align 4            ; 2 uses
  %i.er = icmp slt i32 %i.eq, 1
  %i.es = load i32, ptr @hf_smb_pipe_string_param, align 4
  %i.et = select i1 %i.er, i32 %i.es, i32 %i.eq
  %i.eu = tail call ptr @proto_registrar_get_name(i32 noundef %i.et)
  %.not201 = icmp eq ptr %.0.i, null
  %i.ev = select i1 %.not201, ptr @.str.730, ptr %.0.i
  %i.ew = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %4, ptr noundef %3, ptr noundef @ei_smb_pipe_bad_type, ptr noundef nonnull %0, i32 noundef %i.ej, i32 noundef %.2, ptr noundef @.str.726, ptr noundef %i.eu, ptr noundef nonnull %i.ev) ; 0 uses
  %i.ex = getelementptr i8, ptr %.0182, i64 24
  br label %.backedge

bb.ah:                                            ; preds = %bb.ad
  %i.ey = load ptr, ptr %.0182, align 8
  %i.ez = load i32, ptr %i.ey, align 4
  %i.fa = tail call i32 %i.eb(ptr noundef nonnull %0, i32 noundef %.0, i32 noundef 0, ptr noundef %3, ptr noundef %4, i32 noundef %2, i32 noundef %i.ez, ptr noundef %8)
  %i.fb = getelementptr i8, ptr %.0182, i64 24
  br label %.backedge

bb.ai:                                            ; preds = %bb.d
  %i.fc = load i8, ptr %i.c, align 1              ; 3 uses
  %i.fd = zext i8 %i.fc to i64
  %i.fe = getelementptr [2 x i8], ptr %i.a, i64 %i.fd
  %i.ff = load i16, ptr %i.fe, align 2
  %i.fg = and i16 %i.ff, 8
  %.not.i228 = icmp eq i16 %i.fg, 0
  br i1 %.not.i228, label %get_count.exit238, label %.preheader.i229

.preheader.i229:                                  ; preds = %bb.ai
  %.not1416.i230 = icmp eq i8 %i.fc, 0
  br i1 %.not1416.i230, label %get_count.exit238, label %.lr.ph.i231

.lr.ph.i231:                                      ; preds = %.preheader.i229, %bb.aj
  %i.fh = phi i8 [ %i.fr, %bb.aj ], [ %i.fc, %.preheader.i229 ] ; 2 uses
  %.018.i232 = phi i32 [ %i.fp, %bb.aj ], [ 0, %.preheader.i229 ] ; 2 uses
  %.01217.i233 = phi ptr [ %i.fq, %bb.aj ], [ %i.c, %.preheader.i229 ] ; 2 uses
  %i.fi = zext i8 %i.fh to i64
  %i.fj = getelementptr [2 x i8], ptr %i.a, i64 %i.fi
  %i.fk = load i16, ptr %i.fj, align 2
  %i.fl = and i16 %i.fk, 8
  %.not15.i234 = icmp eq i16 %i.fl, 0
  br i1 %.not15.i234, label %get_count.exit238, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i231
  %i.fm = zext i8 %i.fh to i32
  %i.fn = mul i32 %.018.i232, 10
  %i.fo = add nsw i32 %i.fm, -48
  %i.fp = add i32 %i.fo, %i.fn                    ; 2 uses
  %i.fq = getelementptr i8, ptr %.01217.i233, i64 1 ; 3 uses
  %i.fr = load i8, ptr %i.fq, align 1             ; 2 uses
  %.not14.i235 = icmp eq i8 %i.fr, 0
  br i1 %.not14.i235, label %get_count.exit238, label %.lr.ph.i231, !llvm.loop !0

get_count.exit238:                                ; preds = %.lr.ph.i231, %bb.aj, %bb.ai, %.preheader.i229
  %storemerge.i236 = phi i32 [ 1, %bb.ai ], [ 0, %.preheader.i229 ], [ %.018.i232, %.lr.ph.i231 ], [ %i.fp, %bb.aj ] ; 5 uses
  %.011.i237 = phi ptr [ %i.c, %bb.ai ], [ %i.c, %.preheader.i229 ], [ %.01217.i233, %.lr.ph.i231 ], [ %i.fq, %bb.aj ] ; 3 uses
  %i.fs = getelementptr i8, ptr %.0182, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8            ; 2 uses
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %get_count.exit238
  %i.fv = tail call i32 @tvb_get_letohl(ptr noundef nonnull %0, i32 noundef %.0)
  %i.fw = and i32 %i.fv, 65535
  %i.fx = sub nsw i32 %i.fw, %2                   ; 2 uses
  %i.fy = tail call zeroext i1 @tvb_bytes_exist(ptr noundef nonnull %0, i32 noundef %i.fx, i32 noundef %storemerge.i236)
  %i.fz = load i32, ptr @hf_smb_pipe_bytes_param, align 4 ; 2 uses
  br i1 %i.fy, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ga = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.fz, ptr noundef nonnull %0, i32 noundef %i.fx, i32 noundef %storemerge.i236, i32 noundef 0) ; 0 uses
  br label %add_bytes_pointer_param.exit

bb.am:                                            ; preds = %bb.ak
  %i.gb = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format_value(ptr noundef %4, i32 noundef %i.fz, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef @.str.692) ; 0 uses
  br label %add_bytes_pointer_param.exit

add_bytes_pointer_param.exit:                     ; preds = %bb.al, %bb.am
  %i.gc = add i32 %.0, 4
  br label %.backedge

bb.an:                                            ; preds = %get_count.exit238
  %i.gd = getelementptr i8, ptr %.0182, i64 16
  %i.ge = load i32, ptr %i.gd, align 8
  %.not199 = icmp eq i32 %i.ge, 3
  br i1 %.not199, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gf = tail call i32 @tvb_get_letohl(ptr noundef nonnull %0, i32 noundef %.0)
  %i.gg = and i32 %i.gf, 65535
  %i.gh = sub nsw i32 %i.gg, %2
  %i.gi = add i32 %.0, 4                          ; 2 uses
  %i.gj = load ptr, ptr %.0182, align 8
  %i.gk = load i32, ptr %i.gj, align 4            ; 2 uses
  %i.gl = icmp slt i32 %i.gk, 1
  %i.gm = load i32, ptr @hf_smb_pipe_bytes_param, align 4
  %i.gn = select i1 %i.gl, i32 %i.gm, i32 %i.gk
  %i.go = tail call ptr @proto_registrar_get_name(i32 noundef %i.gn)
  %i.gp = load ptr, ptr %i.b, align 8
  %i.gq = tail call ptr @tvb_bytes_to_str(ptr noundef %i.gp, ptr noundef nonnull %0, i32 noundef %i.gh, i32 noundef %storemerge.i236)
  %i.gr = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %4, ptr noundef %3, ptr noundef @ei_smb_pipe_bad_type, ptr noundef nonnull %0, i32 noundef %i.gi, i32 noundef %storemerge.i236, ptr noundef @.str.725, ptr noundef %i.go, ptr noundef %i.gq) ; 0 uses
  %i.gs = getelementptr i8, ptr %.0182, i64 24
  br label %.backedge

bb.ap:                                            ; preds = %bb.an
  %i.gt = load ptr, ptr %.0182, align 8
  %i.gu = load i32, ptr %i.gt, align 4
  %i.gv = tail call i32 %i.ft(ptr noundef nonnull %0, i32 noundef %.0, i32 noundef %storemerge.i236, ptr noundef %3, ptr noundef %4, i32 noundef %2, i32 noundef %i.gu, ptr noundef %8)
  %i.gw = getelementptr i8, ptr %.0182, i64 24
  br label %.backedge

bb.aq:                                            ; preds = %bb.d
  %i.gx = tail call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %0, i32 noundef %.0) ; 2 uses
  %i.gy = load i32, ptr @hf_aux_data_struct_count, align 4
  %i.gz = zext i16 %i.gx to i32
  %i.ha = tail call ptr @proto_tree_add_uint(ptr noundef %4, i32 noundef %i.gy, ptr noundef nonnull %0, i32 noundef %.0, i32 noundef 2, i32 noundef %i.gz) ; 0 uses
  %i.hb = add i32 %.0, 2                          ; 2 uses
  br i1 %.not, label %.backedge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i16 %i.gx, ptr %7, align 2
  br label %.backedge

bb.as:                                            ; preds = %bb.d
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_len(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_response_data(ptr noundef nonnull %0, ptr noundef %1, i32 noundef range(i32 0, 65536) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, i1 noundef zeroext %6, i16 noundef zeroext %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i16, align 2                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.c = getelementptr i8, ptr %4, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr i8, ptr %5, i64 88
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %.not86 = icmp eq i32 %i.i, -1
  br i1 %.not86, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.f, i64 40
  %i.k = load i32, ptr %i.j, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.l = phi i32 [ %i.i, %.lr.ph ], [ %i.o, %bb.c ]
  %.07087 = phi ptr [ %i.h, %.lr.ph ], [ %i.n, %bb.c ] ; 2 uses
  %i.m = icmp eq i32 %i.l, %i.k
  br i1 %i.m, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %.07087, i64 16    ; 3 uses
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %.not = icmp eq i32 %i.o, -1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.070.lcssa = phi ptr [ %i.h, %bb.a ], [ %.07087, %bb.b ], [ %i.n, %bb.c ]
  %i.p = getelementptr i8, ptr %.070.lcssa, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp ne ptr %3, null
  %or.cond = and i1 %i.r, %6
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.s = getelementptr i8, ptr %5, i64 56
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  %spec.store.select = select i1 %i.u, ptr @.str.733, ptr %i.t
  %i.v = getelementptr i8, ptr %5, i64 64
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not78 = icmp eq ptr %i.w, null
  %ett_lanman_unknown_entries. = select i1 %.not78, ptr @ett_lanman_unknown_entries, ptr %i.w
  %.068 = load i32, ptr %ett_lanman_unknown_entries., align 4
  %i.x = call ptr @proto_tree_add_subtree(ptr noundef nonnull %3, ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, i32 noundef %.068, ptr noundef nonnull %i.a, ptr noundef nonnull %spec.store.select)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.067 = phi ptr [ %i.x, %bb.d ], [ null, %._crit_edge ] ; 5 uses
  %i.y = getelementptr i8, ptr %i.f, i64 24       ; 5 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.j, label %.preheader84

.preheader84:                                     ; preds = %bb.e
  %i.ab = zext i16 %7 to i32
  %i.ac = select i1 %6, i32 %i.ab, i32 1          ; 3 uses
  %.not104 = icmp eq i32 %i.ac, 0
  br i1 %.not104, label %.loopexit85, label %.lr.ph96

.lr.ph96:                                         ; preds = %.preheader84
  %i.ad = getelementptr i8, ptr %5, i64 72
  %i.ae = getelementptr i8, ptr %5, i64 80
  %i.af = getelementptr i8, ptr %i.f, i64 32      ; 2 uses
  %i.ag = getelementptr i8, ptr %5, i64 96        ; 2 uses
  br i1 %6, label %.lr.ph96.split.us, label %.lr.ph96.split

.lr.ph96.split.us:                                ; preds = %.lr.ph96, %bb.i
  %.06495.us = phi i32 [ %i.az, %bb.i ], [ 0, %.lr.ph96 ]
  %.06994.us = phi i32 [ %.2.us, %bb.i ], [ 0, %.lr.ph96 ] ; 3 uses
  %i.ah = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not79.us = icmp eq ptr %i.ah, null
  br i1 %.not79.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph96.split.us
  %i.ai = call ptr %i.ah(ptr noundef nonnull %0, ptr noundef %.067, i32 noundef %.06994.us) ; 2 uses
  %i.aj = load ptr, ptr %i.ae, align 8
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = call ptr @proto_item_add_subtree(ptr noundef %i.ai, i32 noundef %i.ak)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph96.split.us
  %.066.us = phi ptr [ %i.ai, %bb.f ], [ null, %.lr.ph96.split.us ] ; 2 uses
  %.065.us = phi ptr [ %i.al, %bb.f ], [ %.067, %.lr.ph96.split.us ] ; 2 uses
  %i.am = load ptr, ptr %i.y, align 8
  %i.an = call fastcc i32 @dissect_transact_data(ptr noundef %0, i32 noundef %.06994.us, i32 noundef %2, ptr noundef %1, ptr noundef %.065.us, ptr noundef %i.am, ptr noundef %i.q, ptr noundef nonnull %i.b, ptr noundef %4) ; 2 uses
  %i.ao = load ptr, ptr %i.af, align 8
  %.not80.us = icmp ne ptr %i.ao, null
  %i.ap = load i16, ptr %i.b, align 2
  %i.aq = icmp ne i16 %i.ap, 0
  %or.cond100 = select i1 %.not80.us, i1 %i.aq, i1 false
  br i1 %or.cond100, label %.lr.ph92.us, label %.loopexit.us

.lr.ph92.us:                                      ; preds = %bb.g, %.lr.ph92.us
  %.091.us = phi i32 [ %i.au, %.lr.ph92.us ], [ 0, %bb.g ]
  %.190.us = phi i32 [ %i.at, %.lr.ph92.us ], [ %i.an, %bb.g ]
  %i.ar = load ptr, ptr %i.y, align 8
  %i.as = load ptr, ptr %i.ag, align 8
  %i.at = call fastcc i32 @dissect_transact_data(ptr noundef %0, i32 noundef %.190.us, i32 noundef %2, ptr noundef %1, ptr noundef %.065.us, ptr noundef %i.ar, ptr noundef %i.as, ptr noundef null, ptr noundef %4) ; 2 uses
  %i.au = add nuw nsw i32 %.091.us, 1             ; 2 uses
  %i.av = load i16, ptr %i.b, align 2
  %i.aw = zext i16 %i.av to i32
  %i.ax = icmp samesign ult i32 %i.au, %i.aw
  br i1 %i.ax, label %.lr.ph92.us, label %.loopexit.us, !llvm.loop !19

.loopexit.us:                                     ; preds = %.lr.ph92.us, %bb.g
  %.2.us = phi i32 [ %i.an, %bb.g ], [ %i.at, %.lr.ph92.us ] ; 3 uses
  %.not81.us = icmp eq ptr %.066.us, null
  br i1 %.not81.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit.us
  %i.ay = sub i32 %.2.us, %.06994.us
  call void @proto_item_set_len(ptr noundef nonnull %.066.us, i32 noundef %i.ay)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit.us
  %i.az = add nuw nsw i32 %.06495.us, 1           ; 2 uses
  %exitcond107.not = icmp eq i32 %i.az, %i.ac
  br i1 %exitcond107.not, label %.loopexit85, label %.lr.ph96.split.us, !llvm.loop !20

bb.j:                                             ; preds = %bb.e
  br i1 %6, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ba = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not82 = icmp eq ptr %i.ba, null
  br i1 %.not82, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef nonnull %i.ba, ptr noundef @.str.734)
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.bb = load i32, ptr @hf_data_no_descriptor, align 4
  %i.bc = call ptr @proto_tree_add_item(ptr noundef %.067, i32 noundef %i.bb, ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  %i.bd = call i32 @tvb_captured_length_remaining(ptr noundef nonnull %0, i32 noundef 0)
  br label %.loopexit85

.lr.ph96.split:                                   ; preds = %.lr.ph96, %.loopexit
  %.06495 = phi i32 [ %i.bq, %.loopexit ], [ 0, %.lr.ph96 ]
  %.06994 = phi i32 [ %.2, %.loopexit ], [ 0, %.lr.ph96 ]
  %i.be = load ptr, ptr %i.y, align 8
  %i.bf = call fastcc i32 @dissect_transact_data(ptr noundef %0, i32 noundef %.06994, i32 noundef %2, ptr noundef %1, ptr noundef %.067, ptr noundef %i.be, ptr noundef %i.q, ptr noundef nonnull %i.b, ptr noundef %4) ; 2 uses
  %i.bg = load ptr, ptr %i.af, align 8
  %.not80 = icmp ne ptr %i.bg, null
  %i.bh = load i16, ptr %i.b, align 2
  %i.bi = icmp ne i16 %i.bh, 0
  %or.cond103 = select i1 %.not80, i1 %i.bi, i1 false
  br i1 %or.cond103, label %.lr.ph92, label %.loopexit

.lr.ph92:                                         ; preds = %.lr.ph96.split, %.lr.ph92
  %.091 = phi i32 [ %i.bm, %.lr.ph92 ], [ 0, %.lr.ph96.split ]
  %.190 = phi i32 [ %i.bl, %.lr.ph92 ], [ %i.bf, %.lr.ph96.split ]
  %i.bj = load ptr, ptr %i.y, align 8
  %i.bk = load ptr, ptr %i.ag, align 8
  %i.bl = call fastcc i32 @dissect_transact_data(ptr noundef %0, i32 noundef %.190, i32 noundef %2, ptr noundef %1, ptr noundef %.067, ptr noundef %i.bj, ptr noundef %i.bk, ptr noundef null, ptr noundef %4) ; 2 uses
  %i.bm = add nuw nsw i32 %.091, 1                ; 2 uses
  %i.bn = load i16, ptr %i.b, align 2
  %i.bo = zext i16 %i.bn to i32
  %i.bp = icmp samesign ult i32 %i.bm, %i.bo
  br i1 %i.bp, label %.lr.ph92, label %.loopexit, !llvm.loop !19

.loopexit:                                        ; preds = %.lr.ph92, %.lr.ph96.split
  %.2 = phi i32 [ %i.bf, %.lr.ph96.split ], [ %i.bl, %.lr.ph92 ] ; 2 uses
  %i.bq = add nuw nsw i32 %.06495, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bq, %i.ac
  br i1 %exitcond.not, label %.loopexit85, label %.lr.ph96.split, !llvm.loop !20

.loopexit85:                                      ; preds = %.loopexit, %bb.i, %.preheader84, %bb.n
  %.3 = phi i32 [ %i.bd, %bb.n ], [ 0, %.preheader84 ], [ %.2.us, %bb.i ], [ %.2, %.loopexit ]
  %i.br = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not83 = icmp eq ptr %i.br, null
  br i1 %.not83, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.loopexit85
  call void @proto_item_set_len(ptr noundef nonnull %i.br, i32 noundef %.3)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.loopexit85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal ptr @netshareenum_share_entry(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_share, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.a, ptr noundef %0, i32 noundef %2, i32 noundef -1, i32 noundef 0)
  ret ptr %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal ptr @netserverenum2_server_entry(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_server, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.a, ptr noundef %0, i32 noundef %2, i32 noundef -1, i32 noundef 0)
  ret ptr %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @add_detail_level(ptr noundef %0, i32 noundef %1, i32 %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %7, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 3
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.b, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]  ; 2 uses
  %i.h = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %1)
  %i.i = getelementptr i8, ptr %3, i64 80
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 53
  %i.l = load i16, ptr %i.k, align 1
  %i.m = and i16 %i.l, 8
  %i.n = icmp eq i16 %i.m, 0
  %i.o = icmp ne ptr %.0, null
  %or.cond = select i1 %i.n, i1 %i.o, i1 false
  %i.p = zext i16 %i.h to i32                     ; 2 uses
  br i1 %or.cond, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %.0, i64 40
  store i32 %i.p, ptr %i.q, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %i.r = tail call ptr @proto_tree_add_uint(ptr noundef %4, i32 noundef %6, ptr noundef %0, i32 noundef %1, i32 noundef 2, i32 noundef %i.p) ; 0 uses
  %i.s = add i32 %1, 2
  ret i32 %i.s
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @add_word_param(ptr noundef %0, i32 noundef %1, i32 %2, ptr nofree readnone captures(none) %3, ptr noundef %4, i32 %5, i32 noundef %6, ptr nofree readnone captures(none) %7) #0 {
bb.a:
  %i.a = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %6, ptr noundef %0, i32 noundef %1, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.b = add i32 %1, 2
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @add_string_param_update_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 %5, i32 noundef %6, ptr nofree readnone captures(none) %7) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = icmp sgt i32 %6, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.654, ptr noundef @.str.655, i32 noundef 316, ptr noundef @.str.669) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 416        ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call ptr @proto_tree_add_item_ret_string(ptr noundef %4, i32 noundef %6, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 0, ptr noundef %i.d, ptr noundef nonnull %i.a)
  %i.f = call ptr @proto_item_get_parent(ptr noundef %i.e)
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.i = call i64 @strlen(ptr noundef %i.h) #10
  %i.j = call ptr @format_text(ptr noundef %i.g, ptr noundef %i.h, i64 noundef %i.i)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.f, ptr noundef @.str.670, ptr noundef %i.j)
  %i.k = add i32 %2, %1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define internal noundef i32 @add_pad_param(ptr nofree readnone captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, i32 %5, i32 %6, ptr nofree readnone captures(none) %7) #5 {
bb.a:
  %i.a = add i32 %2, %1
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @add_stringz_pointer_param(ptr noundef %0, i32 noundef %1, i32 %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree readnone captures(none) %7) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 416
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %1)
  %i.d = and i32 %i.c, 65535
  %i.e = sub i32 %i.d, %5                         ; 5 uses
  %i.f = tail call zeroext i1 @tvb_offset_exists(ptr noundef %0, i32 noundef %i.e)
  br i1 %i.f, label %bb.b, label %get_stringz_pointer_value.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @tvb_strnlen(ptr noundef %0, i32 noundef %i.e, i32 noundef -1) ; 3 uses
  %.not.i = icmp eq i32 %i.g, -1
  br i1 %.not.i, label %get_stringz_pointer_value.exit.thread, label %get_stringz_pointer_value.exit

get_stringz_pointer_value.exit:                   ; preds = %bb.b
  %i.h = add nuw i32 %i.g, 1                      ; 2 uses
  %i.i = tail call ptr @tvb_format_text(ptr noundef %i.b, ptr noundef %0, i32 noundef %i.e, i32 noundef %i.g)
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %get_stringz_pointer_value.exit.thread, label %bb.c

bb.c:                                             ; preds = %get_stringz_pointer_value.exit
  %i.j = icmp sgt i32 %6, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %6, ptr noundef %0, i32 noundef %i.e, i32 noundef %i.h, i32 noundef 0) ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.l = load i32, ptr @hf_smb_pipe_stringz_param, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.e, i32 noundef %i.h, i32 noundef 0) ; 0 uses
  br label %bb.h

get_stringz_pointer_value.exit.thread:            ; preds = %bb.a, %bb.b, %get_stringz_pointer_value.exit
  %i.n = icmp sgt i32 %6, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %get_stringz_pointer_value.exit.thread
  %i.o = tail call ptr @proto_tree_add_string(ptr noundef %4, i32 noundef %6, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef @.str.671) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %get_stringz_pointer_value.exit.thread
  %i.p = load i32, ptr @hf_smb_pipe_stringz_param, align 4
  %i.q = tail call ptr @proto_tree_add_string(ptr noundef %4, i32 noundef %i.p, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef @.str.671) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d, %bb.e
  %i.r = add i32 %1, 4
  ret i32 %i.r
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @format_text(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_letohl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @tvb_offset_exists(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_strnlen(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_format_text(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @add_string_param(ptr noundef %0, i32 noundef %1, i32 %2, ptr nofree readnone captures(none) %3, ptr noundef %4, i32 %5, i32 noundef %6, ptr nofree readnone captures(none) %7) #0 {
end_hunk_1
begin_hunk_2_@add_abstime_common:bb.a
  %5 = alloca %struct.nstime_t, align 8           ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.a = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %1) ; 2 uses
  %i.b = zext i32 %i.a to i64
  store i64 %i.b, ptr %5, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.c, align 8
  %i.d = icmp eq i32 %i.a, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_time_format_value(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %1, i32 noundef 4, ptr noundef nonnull %5, ptr noundef @.str.688, ptr noundef %4) ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = call ptr @gmtime(ptr noundef nonnull %5) #9 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_time_format_value(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %1, i32 noundef 4, ptr noundef nonnull %5, ptr noundef @.str.690) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.f, i64 32
  store i32 -1, ptr %i.i, align 8
  %i.j = call i64 @mktime(ptr noundef nonnull %i.f) #9
  store i64 %i.j, ptr %5, align 8
  %i.k = call ptr @proto_tree_add_time(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %1, i32 noundef 4, ptr noundef nonnull %5) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %i.l = add i32 %1, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  ret i32 %i.l
}

; Function Attrs: nounwind null_pointer_is_valid
declare ptr @gmtime(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid willreturn
declare noundef i64 @mktime(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_time(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @tvb_bytes_exist(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bytes_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_bytes_to_str(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @add_tzoffset(ptr noundef %0, i32 noundef %1, i32 %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 %5, i32 %6, ptr nofree readnone captures(none) %7) #0 {
bb.a:
  %i.a = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %1) ; 3 uses
  %i.b = sext i16 %i.a to i32                     ; 4 uses
  %i.c = icmp slt i16 %i.a, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @hf_tzoffset, align 4
  %i.e = getelementptr i8, ptr %3, i64 416
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = mul nsw i32 %i.b, -60
  %i.h = zext nneg i32 %i.g to i64
  %i.i = tail call ptr @signed_time_secs_to_str(ptr noundef %i.f, i64 noundef %i.h)
  %i.j = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_int_format_value(ptr noundef %4, i32 noundef %i.d, ptr noundef %0, i32 noundef %1, i32 noundef 2, i32 noundef %i.b, ptr noundef @.str.699, ptr noundef %i.i) ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i16 %i.a, 0
  %i.k = load i32, ptr @hf_tzoffset, align 4      ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %3, i64 416
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = mul nuw nsw i32 %i.b, 60
  %i.o = zext nneg i32 %i.n to i64
  %i.p = tail call ptr @signed_time_secs_to_str(ptr noundef %i.m, i64 noundef %i.o)
  %i.q = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_int_format_value(ptr noundef %4, i32 noundef %i.k, ptr noundef %0, i32 noundef %1, i32 noundef 2, i32 noundef %i.b, ptr noundef @.str.700, ptr noundef %i.p) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.r = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_int_format_value(ptr noundef %4, i32 noundef %i.k, ptr noundef %0, i32 noundef %1, i32 noundef 2, i32 noundef 0, ptr noundef @.str.701) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %i.s = add i32 %1, 2
  ret i32 %i.s
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @add_timeinterval(ptr noundef %0, i32 noundef %1, i32 %2, ptr nofree readnone captures(none) %3, ptr noundef %4, i32 %5, i32 %6, ptr nofree readnone captures(none) %7) #0 {
bb.a:
  %i.a = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %1) ; 2 uses
  %i.b = load i32, ptr @hf_timeinterval, align 4
  %i.c = zext i16 %i.a to i32
  %i.d = uitofp i16 %i.a to double
  %i.e = fmul nnan double %i.d, 1.000000e-04
  %i.f = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %4, i32 noundef %i.b, ptr noundef %0, i32 noundef %1, i32 noundef 2, i32 noundef %i.c, ptr noundef @.str.702, double noundef %i.e) ; 0 uses
  %i.g = add i32 %1, 2
  ret i32 %i.g
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_int_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @add_server_type_info(ptr noundef %0, i32 noundef %1, i32 %2, ptr noundef %3, ptr noundef %4, i32 %5, i32 %6, ptr nofree readnone captures(none) %7) #0 {
bb.a:
  %i.a = tail call i32 @dissect_smb_server_type_flags(ptr noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef null, i1 noundef zeroext true)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @add_logon_args(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 %5, i32 %6, ptr nofree readnone captures(none) %7) #0 {
bb.a:
  %.not = icmp eq i32 %2, 54
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %4, ptr noundef %3, ptr noundef @ei_smb_pipe_bogus_netwkstauserlogon, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef @.str.710, i32 noundef %2) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr @hf_user_name, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.b, ptr noundef %0, i32 noundef %1, i32 noundef 21, i32 noundef 0) ; 0 uses
  %i.d = add i32 %1, 22
  %i.e = load i32, ptr @hf_password, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.e, ptr noundef %0, i32 noundef %i.d, i32 noundef 15, i32 noundef 0) ; 0 uses
  %i.g = add i32 %1, 38
  %i.h = load i32, ptr @hf_workstation_name, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.h, ptr noundef %0, i32 noundef %i.g, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = add i32 %2, %1
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @add_abstime_absent_never(ptr noundef %0, i32 noundef %1, i32 %2, ptr nofree readnone captures(none) %3, ptr noundef %4, i32 %5, i32 noundef %6, ptr nofree readnone captures(none) %7) #0 {
bb.a:
  %i.a = tail call fastcc i32 @add_abstime_common(ptr noundef %0, i32 noundef %1, ptr noundef %4, i32 noundef %6, ptr noundef @.str.714)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_registrar_get_name(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { noreturn }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !{!0, !9}
!1 = !{i32 8, !"cf-protection-return", i32 1}
!2 = !{i32 8, !"cf-protection-branch", i32 1}
!3 = !{i32 4, !"probe-stack", !"inline-asm"}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{null}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{null}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
end_hunk_2
