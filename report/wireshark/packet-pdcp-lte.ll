Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-pdcp-lte?download=true
inline.NumInlined: 52
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@checkChannelSequenceInfo:bb.a
  store i32 %3, ptr %i.bm, align 4
  %i.bn = getelementptr i8, ptr %.092, i64 4      ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4            ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bc, i64 8
  store i32 %i.bo, ptr %i.bp, align 4
  br label %bb.m

bb.g:                                             ; preds = %switch.lookup
  %i.bq = load i32, ptr %.092, align 4
  %i.br = add i32 %i.bq, 1
  %i.bs = add nsw i32 %switch.load, -1            ; 2 uses
  %i.bt = and i32 %i.br, %i.bs                    ; 5 uses
  %i.bu = icmp eq i32 %3, %i.bt                   ; 2 uses
  %i.bv = zext i1 %i.bu to i8
  store i8 %i.bv, ptr %i.bc, align 4
  %i.bw = getelementptr i8, ptr %.092, i64 8      ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4            ; 2 uses
  %i.by = getelementptr i8, ptr %i.bc, i64 24     ; 2 uses
  store i32 %i.bx, ptr %i.by, align 4
  br i1 %i.bu, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bz = sub i32 %switch.load, %3
  %i.ca = add i32 %i.bz, %i.bt
  %i.cb = add nsw i32 %switch.load, -16
  %i.cc = and i32 %i.ca, %i.cb
  %.not98 = icmp eq i32 %i.cc, 0
  %i.cd = getelementptr i8, ptr %i.bc, i64 28     ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bc, i64 16     ; 2 uses
  br i1 %.not98, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 4, ptr %i.cd, align 4
  store i32 %i.bt, ptr %i.ce, align 4
  %i.cf = add i32 %3, -1
  %i.cg = add i32 %i.cf, %switch.load
  %i.ch = and i32 %i.cg, %i.bs
  %i.ci = getelementptr i8, ptr %i.bc, i64 20
  store i32 %i.ch, ptr %i.ci, align 4
  %i.cj = getelementptr i8, ptr %i.bc, i64 4
  store i32 %i.bt, ptr %i.cj, align 4
  %i.ck = getelementptr i8, ptr %.092, i64 4      ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = getelementptr i8, ptr %i.bc, i64 8
  store i32 %i.cl, ptr %i.cm, align 4
  %i.cn = getelementptr i8, ptr %0, i64 20
  %i.co = load i32, ptr %i.cn, align 4
  store i32 %i.co, ptr %i.ck, align 4
  store i32 %3, ptr %.092, align 4
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  store i32 1, ptr %i.cd, align 4
  store i32 %3, ptr %i.ce, align 4
  %i.cp = getelementptr i8, ptr %i.bc, i64 4
  store i32 %i.bt, ptr %i.cp, align 4
  %i.cq = getelementptr i8, ptr %.092, i64 4
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = getelementptr i8, ptr %i.bc, i64 8
  store i32 %i.cr, ptr %i.cs, align 4
  br label %bb.p

bb.k:                                             ; preds = %bb.g
  %i.ct = getelementptr i8, ptr %i.bc, i64 28
  store i32 0, ptr %i.ct, align 4
  %i.cu = getelementptr i8, ptr %i.bc, i64 4
  store i32 %3, ptr %i.cu, align 4
  %i.cv = getelementptr i8, ptr %.092, i64 4      ; 3 uses
  %i.cw = load i32, ptr %i.cv, align 4            ; 3 uses
  %i.cx = getelementptr i8, ptr %i.bc, i64 8
  store i32 %i.cw, ptr %i.cx, align 4
  %i.cy = icmp eq i32 %3, 0
  br i1 %i.cy, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cz = add i32 %i.bx, 1                        ; 2 uses
  store i32 %i.cz, ptr %i.bw, align 4
  store i32 %i.cz, ptr %i.by, align 4
  br label %bb.m

bb.m:                                             ; preds = %.thread105, %bb.l, %bb.k
  %i.da = phi i32 [ %i.bo, %.thread105 ], [ %i.cw, %bb.l ], [ %i.cw, %bb.k ] ; 2 uses
  %i.db = phi ptr [ %i.bn, %.thread105 ], [ %i.cv, %bb.l ], [ %i.cv, %bb.k ]
  %i.dc = getelementptr i8, ptr %0, i64 20        ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4
  store i32 %i.dd, ptr %i.db, align 4
  store i32 %3, ptr %.092, align 4
  %.not = icmp eq i32 %i.da, 0
  br i1 %.not, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.de = load ptr, ptr @pdcp_lte_sequence_analysis_report_hash, align 8
  %i.df = and i32 %3, 262143                      ; 2 uses
  store i32 %i.da, ptr @get_report_hash_key.key, align 4
  store i32 %i.df, ptr getelementptr inbounds nuw (i8, ptr @get_report_hash_key.key, i64 4), align 4
  %i.dg = load i32, ptr %i.ad, align 4
  %i.dh = shl i32 %i.dg, 18
  %i.di = and i32 %i.dh, 786432
  %i.dj = or disjoint i32 %i.di, %i.df            ; 2 uses
  store i32 %i.dj, ptr getelementptr inbounds nuw (i8, ptr @get_report_hash_key.key, i64 4), align 4
  %i.dk = load i16, ptr %i.ai, align 8
  %i.dl = and i16 %i.dk, 31
  %i.dm = zext nneg i16 %i.dl to i32
  %i.dn = shl nuw nsw i32 %i.dm, 20
  %i.do = or disjoint i32 %i.dn, %i.dj            ; 2 uses
  store i32 %i.do, ptr getelementptr inbounds nuw (i8, ptr @get_report_hash_key.key, i64 4), align 4
  %i.dp = load i8, ptr %2, align 8
  %i.dq = and i8 %i.dp, 1
  %i.dr = zext nneg i8 %i.dq to i32
  %i.ds = shl nuw nsw i32 %i.dr, 25
  %i.dt = or disjoint i32 %i.ds, %i.do
  store i32 %i.dt, ptr getelementptr inbounds nuw (i8, ptr @get_report_hash_key.key, i64 4), align 4
  %i.du = tail call ptr @wmem_map_lookup(ptr noundef %i.de, ptr noundef nonnull @get_report_hash_key.key) ; 2 uses
  %.not99 = icmp eq ptr %i.du, null
  br i1 %.not99, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dv = load i32, ptr %i.dc, align 4
  %i.dw = getelementptr i8, ptr %i.du, i64 12
  store i32 %i.dv, ptr %i.dw, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m, %bb.i, %bb.j
  %i.dx = load ptr, ptr @pdcp_lte_sequence_analysis_report_hash, align 8
  %i.dy = getelementptr i8, ptr %0, i64 20
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = tail call ptr @wmem_file_scope()
  %i.eb = tail call noalias dereferenceable_or_null(8) ptr @wmem_alloc(ptr noundef %i.ea, i64 noundef 8) #15 ; 3 uses
  %.phi.trans.insert.i = getelementptr i8, ptr %i.eb, i64 4
  store i32 %i.dz, ptr %i.eb, align 4
  %i.ec = and i32 %3, 262143
  %i.ed = load i32, ptr %i.ad, align 4
  %i.ee = shl i32 %i.ed, 18
  %i.ef = and i32 %i.ee, 786432
  %i.eg = or disjoint i32 %i.ef, %i.ec
  %i.eh = load i16, ptr %i.ai, align 8
  %i.ei = and i16 %i.eh, 31
  %i.ej = zext nneg i16 %i.ei to i32
  %i.ek = shl nuw nsw i32 %i.ej, 20
  %i.el = or disjoint i32 %i.ek, %i.eg
  %i.em = load i8, ptr %2, align 8
  %i.en = and i8 %i.em, 1
  %i.eo = zext nneg i8 %i.en to i32
  %i.ep = shl nuw nsw i32 %i.eo, 25
  %i.eq = or disjoint i32 %i.el, %i.ep
  store i32 %i.eq, ptr %.phi.trans.insert.i, align 4
  %i.er = tail call ptr @wmem_map_insert(ptr noundef %i.dx, ptr noundef %i.eb, ptr noundef %i.bc) ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.p
  %.sink = phi ptr [ %i.bc, %bb.p ], [ %i.z, %bb.b ]
  tail call fastcc void @addChannelSequenceInfo(ptr noundef %.sink, ptr noundef %2, i32 noundef %3, ptr noundef %0, ptr noundef %4, ptr noundef %1, ptr noundef %5, ptr noundef %6)
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @col_get_writable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector_only(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @call_data_dissector(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector_with_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_boolean(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #9

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__vsnprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @addChannelSequenceInfo(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef captures(none) %7) unnamed_addr #0 {
bb.a:
  %8 = alloca i32, align 4                        ; 3 uses
  %9 = alloca i32, align 4                        ; 3 uses
  %10 = alloca i32, align 4                       ; 3 uses
  %i.a = load i32, ptr @hf_pdcp_lte_sequence_analysis, align 4
  %i.b = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %4, i32 noundef %i.a, ptr noundef %5, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.267, ptr noundef nonnull @.str.79) ; 7 uses
  %i.c = load i32, ptr @ett_pdcp_lte_sequence_analysis, align 4
  %i.d = tail call ptr @proto_item_add_subtree(ptr noundef %i.b, i32 noundef %i.c) ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %proto_item_set_generated.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.f, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.f, i64 28       ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = or i32 %i.h, 2
  store i32 %i.i, ptr %i.g, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.a, %bb.b, %bb.c
  %i.j = getelementptr i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %proto_item_set_generated.exit
  %i.l = load i32, ptr @hf_pdcp_lte_sequence_analysis_previous_frame, align 4
  %i.m = tail call ptr @proto_tree_add_uint(ptr noundef %i.d, i32 noundef %i.l, ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef %i.k) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %proto_item_set_generated.exit
  %i.n = load i32, ptr @hf_pdcp_lte_sequence_analysis_expected_sn, align 4
  %i.o = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = tail call ptr @proto_tree_add_uint(ptr noundef %i.d, i32 noundef %i.n, ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef %i.p) ; 4 uses
  %.not.i141 = icmp eq ptr %i.q, null             ; 2 uses
  br i1 %.not.i141, label %proto_item_set_generated.exit143, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not5.i142 = icmp eq ptr %i.s, null
  br i1 %.not5.i142, label %proto_item_set_generated.exit143, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %i.s, i64 28       ; 2 uses
  %i.u = load i32, ptr %i.t, align 4
  %i.v = or i32 %i.u, 2
  store i32 %i.v, ptr %i.t, align 4
  br label %proto_item_set_generated.exit143

proto_item_set_generated.exit143:                 ; preds = %bb.e, %bb.f, %bb.g
  %i.w = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.x = load i8, ptr %i.w, align 8
  switch i8 %i.x, label %bb.h [
    i8 5, label %bb.i
    i8 7, label %bb.i
    i8 12, label %bb.i
    i8 15, label %bb.i
    i8 18, label %bb.i
  ]

bb.h:                                             ; preds = %proto_item_set_generated.exit143
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.298, ptr noundef nonnull @.str.299, i32 noundef 804) #18
  unreachable

bb.i:                                             ; preds = %proto_item_set_generated.exit143, %proto_item_set_generated.exit143, %proto_item_set_generated.exit143, %proto_item_set_generated.exit143, %proto_item_set_generated.exit143
  %i.y = getelementptr i8, ptr %0, i64 28
  %i.z = load i32, ptr %i.y, align 4
  switch i32 %i.z, label %bb.bl [
    i32 0, label %bb.j
    i32 4, label %bb.az
    i32 1, label %bb.bg
  ]

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i141, label %proto_item_set_hidden.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr i8, ptr %i.q, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not5.i145 = icmp eq ptr %i.ab, null
  br i1 %.not5.i145, label %proto_item_set_hidden.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr i8, ptr %i.ab, i64 28     ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = or i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %bb.j, %bb.k, %bb.l
  %i.af = load i32, ptr @hf_pdcp_lte_sequence_analysis_ok, align 4
  %i.ag = tail call ptr @proto_tree_add_boolean(ptr noundef %i.d, i32 noundef %i.af, ptr noundef %5, i32 noundef 0, i32 noundef 0, i64 noundef 1) ; 2 uses
  %.not.i146 = icmp eq ptr %i.ag, null
  br i1 %.not.i146, label %proto_item_set_generated.exit148, label %bb.m

bb.m:                                             ; preds = %proto_item_set_hidden.exit
  %i.ah = getelementptr i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not5.i147 = icmp eq ptr %i.ai, null
  br i1 %.not5.i147, label %proto_item_set_generated.exit148, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr i8, ptr %i.ai, i64 28     ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = or i32 %i.ak, 2
  store i32 %i.al, ptr %i.aj, align 4
  br label %proto_item_set_generated.exit148

proto_item_set_generated.exit148:                 ; preds = %proto_item_set_hidden.exit, %bb.m, %bb.n
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef nonnull @.str.300)
  %i.am = getelementptr i8, ptr %0, i64 12
  %i.an = load i32, ptr %i.am, align 4            ; 2 uses
  %.not135 = icmp eq i32 %i.an, 0
  br i1 %.not135, label %bb.p, label %bb.o

bb.o:                                             ; preds = %proto_item_set_generated.exit148
  %i.ao = load i32, ptr @hf_pdcp_lte_sequence_analysis_next_frame, align 4
  %i.ap = tail call ptr @proto_tree_add_uint(ptr noundef %i.d, i32 noundef %i.ao, ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef %i.an) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %proto_item_set_generated.exit148
  %i.aq = load i32, ptr %7, align 8
  %.not136 = icmp eq i32 %i.aq, 0
  br i1 %.not136, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr i8, ptr %7, i64 4
  %i.as = load i32, ptr %i.ar, align 4
  %.not137 = icmp eq i32 %i.as, 0
  br i1 %.not137, label %bb.bm, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.at = load i32, ptr @hf_pdcp_lte_security_bearer, align 4
  %i.au = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.av = load i16, ptr %i.au, align 8
  %i.aw = zext i16 %i.av to i32
  %i.ax = add nsw i32 %i.aw, -1
  %i.ay = tail call ptr @proto_tree_add_uint(ptr noundef %6, i32 noundef %i.at, ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef %i.ax) ; 2 uses
  %.not.i149 = icmp eq ptr %i.ay, null
  br i1 %.not.i149, label %proto_item_set_generated.exit151, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = getelementptr i8, ptr %i.ay, i64 40
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not5.i150 = icmp eq ptr %i.ba, null
  br i1 %.not5.i150, label %proto_item_set_generated.exit151, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = getelementptr i8, ptr %i.ba, i64 28     ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = or i32 %i.bc, 2
  store i32 %i.bd, ptr %i.bb, align 4
  br label %proto_item_set_generated.exit151

proto_item_set_generated.exit151:                 ; preds = %bb.r, %bb.s, %bb.t
  %i.be = load i16, ptr %i.au, align 8
  %i.bf = trunc i16 %i.be to i8
  %i.bg = add i8 %i.bf, -1
  %i.bh = getelementptr i8, ptr %7, i64 32
  store i8 %i.bg, ptr %i.bh, align 8
  %i.bi = load i32, ptr @hf_pdcp_lte_security_direction, align 4
  %i.bj = load i8, ptr %1, align 8
  %i.bk = zext i8 %i.bj to i32
  %i.bl = tail call ptr @proto_tree_add_uint(ptr noundef %6, i32 noundef %i.bi, ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef %i.bk) ; 2 uses
  %.not.i152 = icmp eq ptr %i.bl, null
  br i1 %.not.i152, label %proto_item_set_generated.exit154, label %bb.u

bb.u:                                             ; preds = %proto_item_set_generated.exit151
  %i.bm = getelementptr i8, ptr %i.bl, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %.not5.i153 = icmp eq ptr %i.bn, null
  br i1 %.not5.i153, label %proto_item_set_generated.exit154, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = getelementptr i8, ptr %i.bn, i64 28     ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = or i32 %i.bp, 2
  store i32 %i.bq, ptr %i.bo, align 4
  br label %proto_item_set_generated.exit154

proto_item_set_generated.exit154:                 ; preds = %proto_item_set_generated.exit151, %bb.u, %bb.v
  %i.br = load i8, ptr %i.w, align 8
  %switch.tableidx = add i8 %i.br, -5             ; 3 uses
  %i.bs = icmp ult i8 %switch.tableidx, 14
  br i1 %i.bs, label %switch.hole_check, label %bb.w

bb.w:                                             ; preds = %switch.hole_check, %proto_item_set_generated.exit154
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.298, ptr noundef nonnull @.str.299, i32 noundef 861) #18
  unreachable

switch.hole_check:                                ; preds = %proto_item_set_generated.exit154
  %switch.maskindex = zext nneg i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 9349, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.w

switch.lookup:                                    ; preds = %switch.hole_check
  %i.bt = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.addChannelSequenceInfo, i64 %i.bt
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.bu = getelementptr i8, ptr %0, i64 24
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = mul i32 %i.bv, %switch.load
  %i.bx = add i32 %i.bw, %2                       ; 2 uses
  %i.by = load i32, ptr @hf_pdcp_lte_security_count, align 4
  %i.bz = tail call ptr @proto_tree_add_uint(ptr noundef %6, i32 noundef %i.by, ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef %i.bx) ; 2 uses
  %.not.i155 = icmp eq ptr %i.bz, null
  br i1 %.not.i155, label %proto_item_set_generated.exit157, label %bb.x

bb.x:                                             ; preds = %switch.lookup
  %i.ca = getelementptr i8, ptr %i.bz, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %.not5.i156 = icmp eq ptr %i.cb, null
  br i1 %.not5.i156, label %proto_item_set_generated.exit157, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = getelementptr i8, ptr %i.cb, i64 28     ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = or i32 %i.cd, 2
  store i32 %i.ce, ptr %i.cc, align 4
  br label %proto_item_set_generated.exit157

proto_item_set_generated.exit157:                 ; preds = %switch.lookup, %bb.x, %bb.y
  %i.cf = getelementptr i8, ptr %7, i64 28
  store i32 %i.bx, ptr %i.cf, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.cg = getelementptr i8, ptr %1, i64 2
  %i.ch = load i16, ptr %i.cg, align 2            ; 2 uses
  %i.ci = getelementptr i8, ptr %3, i64 20
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = load ptr, ptr @pdcp_security_key_hash, align 8
  %i.cl = zext i16 %i.ch to i32                   ; 2 uses
  %i.cm = zext i16 %i.ch to i64
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = tail call ptr @wmem_map_lookup(ptr noundef %i.ck, ptr noundef %i.cn) ; 3 uses
  %.not.i158 = icmp eq ptr %i.co, null
  br i1 %.not.i158, label %.preheader.i, label %bb.z

.preheader.i:                                     ; preds = %proto_item_set_generated.exit157
  %i.cp = load i32, ptr @num_ue_keys_uat, align 4 ; 2 uses
  %.not54.i = icmp eq i32 %i.cp, 0
  br i1 %.not54.i, label %look_up_keys_record.exit.thread, label %.lr.ph51.i

.lr.ph51.i:                                       ; preds = %.preheader.i
  %i.cq = load ptr, ptr @uat_ue_keys_records, align 8
  %wide.trip.count.i = zext i32 %i.cp to i64
  br label %bb.ak

bb.z:                                             ; preds = %proto_item_set_generated.exit157
  %i.cr = tail call ptr @wmem_file_scope()
  %i.cs = tail call noalias dereferenceable_or_null(88) ptr @wmem_alloc0(ptr noundef %i.cr, i64 noundef 88) #15 ; 12 uses
  store i32 %i.cl, ptr %i.cs, align 8
  %i.ct = load i32, ptr %i.co, align 8            ; 2 uses
  %i.cu = icmp sgt i32 %i.ct, 0
  br i1 %i.cu, label %.lr.ph.i, label %look_up_keys_record.exit

.lr.ph.i:                                         ; preds = %bb.z
  %i.cv = getelementptr i8, ptr %i.cs, i64 65     ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cs, i64 16
  %i.cx = getelementptr i8, ptr %i.cs, i64 49
  %i.cy = getelementptr i8, ptr %i.cs, i64 82     ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cs, i64 24
  %i.da = getelementptr i8, ptr %i.cs, i64 66
  %i.db = getelementptr i8, ptr %i.cs, i64 48     ; 2 uses
  %i.dc = getelementptr i8, ptr %i.cs, i64 8
  %i.dd = getelementptr i8, ptr %i.cs, i64 32
  %i.de = zext nneg i32 %i.ct to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ai, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.de, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ai ] ; 3 uses
  %i.df = getelementptr [40 x i8], ptr %i.co, i64 %indvars.iv.i ; 11 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 4
  %i.dh = load i32, ptr %i.dg, align 4            ; 2 uses
  %i.di = icmp ugt i32 %i.cj, %i.dh
  br i1 %i.di, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  %i.dj = getelementptr i8, ptr %i.df, i64 -32
  %i.dk = load i32, ptr %i.dj, align 8
  switch i32 %i.dk, label %bb.ai [
    i32 0, label %bb.ac
    i32 1, label %bb.ae
    i32 2, label %bb.ag
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.dl = load i8, ptr %i.db, align 8, !range !7, !noundef !8
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dn = getelementptr i8, ptr %i.df, i64 -24
  %i.do = load ptr, ptr %i.dn, align 8
  store ptr %i.do, ptr %i.dc, align 8
  %i.dp = getelementptr i8, ptr %i.df, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.dd, ptr noundef align 8 dereferenceable(16) %i.dp, i64 noundef 16, i1 noundef false) #14
  %i.dq = load i8, ptr %i.df, align 8, !range !7, !noundef !8
  store i8 %i.dq, ptr %i.db, align 8
  br label %.sink.split.i

bb.ae:                                            ; preds = %bb.ab
  %i.dr = load i8, ptr %i.cy, align 2, !range !7, !noundef !8
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dt = getelementptr i8, ptr %i.df, i64 -24
  %i.du = load ptr, ptr %i.dt, align 8
  store ptr %i.du, ptr %i.cz, align 8
  %i.dv = getelementptr i8, ptr %i.df, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 2 dereferenceable(16) %i.da, ptr noundef align 8 dereferenceable(16) %i.dv, i64 noundef 16, i1 noundef false) #14
  %i.dw = load i8, ptr %i.df, align 8, !range !7, !noundef !8
  store i8 %i.dw, ptr %i.cy, align 2
  br label %.sink.split.i

bb.ag:                                            ; preds = %bb.ab
  %i.dx = load i8, ptr %i.cv, align 1, !range !7, !noundef !8
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dz = getelementptr i8, ptr %i.df, i64 -24
  %i.ea = load ptr, ptr %i.dz, align 8
  store ptr %i.ea, ptr %i.cw, align 8
  %i.eb = getelementptr i8, ptr %i.df, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(16) %i.cx, ptr noundef align 8 dereferenceable(16) %i.eb, i64 noundef 16, i1 noundef false) #14
  %i.ec = load i8, ptr %i.df, align 8, !range !7, !noundef !8
  store i8 %i.ec, ptr %i.cv, align 1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ah, %bb.af, %bb.ad
  %.sink.i = phi ptr [ %8, %bb.ad ], [ %9, %bb.af ], [ %10, %bb.ah ]
  store i32 %i.dh, ptr %.sink.i, align 4
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split.i, %bb.ag, %bb.ae, %bb.ac, %bb.ab, %bb.aa
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ed = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.ed, label %bb.aa, label %look_up_keys_record.exit, !llvm.loop !13

bb.aj:                                            ; preds = %bb.ak
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next58.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %look_up_keys_record.exit.thread, label %bb.ak, !llvm.loop !14

bb.ak:                                            ; preds = %bb.aj, %.lr.ph51.i
  %indvars.iv57.i = phi i64 [ 0, %.lr.ph51.i ], [ %indvars.iv.next58.i, %bb.aj ] ; 2 uses
  %i.ee = getelementptr [88 x i8], ptr %i.cq, i64 %indvars.iv57.i ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 8
  %i.eg = icmp eq i32 %i.ef, %i.cl
  br i1 %i.eg, label %look_up_keys_record.exit, label %bb.aj

look_up_keys_record.exit:                         ; preds = %bb.ai, %bb.ak, %bb.z
  %.046.i = phi ptr [ %i.ee, %bb.ak ], [ %i.cs, %bb.z ], [ %i.cs, %bb.ai ] ; 10 uses
  %.not138 = icmp eq ptr %.046.i, null
  br i1 %.not138, label %look_up_keys_record.exit.thread, label %bb.al

bb.al:                                            ; preds = %look_up_keys_record.exit
  %i.eh = getelementptr i8, ptr %1, i64 20
  %i.ei = load i32, ptr %i.eh, align 4
  %i.ej = icmp eq i32 %i.ei, 1
  br i1 %i.ej, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.ek = getelementptr i8, ptr %.046.i, i64 48
  %i.el = load i8, ptr %i.ek, align 8, !range !7, !noundef !8
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.en = getelementptr i8, ptr %.046.i, i64 8
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = getelementptr i8, ptr %.046.i, i64 32
  %i.eq = getelementptr i8, ptr %7, i64 8
  store ptr %i.ep, ptr %i.eq, align 8
  %i.er = getelementptr i8, ptr %7, i64 24
  store i8 1, ptr %i.er, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.0126 = phi ptr [ %i.eo, %bb.an ], [ null, %bb.am ] ; 2 uses
  %i.es = getelementptr i8, ptr %.046.i, i64 82
  %i.et = load i8, ptr %i.es, align 2, !range !7, !noundef !8
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.ev = getelementptr i8, ptr %.046.i, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = getelementptr i8, ptr %.046.i, i64 66
  %i.ey = getelementptr i8, ptr %7, i64 16
  store ptr %i.ex, ptr %i.ey, align 8
  %i.ez = getelementptr i8, ptr %7, i64 25
  store i8 1, ptr %i.ez, align 1
  br label %bb.as

bb.aq:                                            ; preds = %bb.al
  %i.fa = getelementptr i8, ptr %.046.i, i64 65
  %i.fb = load i8, ptr %i.fa, align 1, !range !7, !noundef !8
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.ar, label %proto_item_set_generated.exit164

bb.ar:                                            ; preds = %bb.aq
  %i.fd = getelementptr i8, ptr %.046.i, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = getelementptr i8, ptr %.046.i, i64 49
  %i.fg = getelementptr i8, ptr %7, i64 8
  store ptr %i.ff, ptr %i.fg, align 8
  %i.fh = getelementptr i8, ptr %7, i64 24
  store i8 1, ptr %i.fh, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ao, %bb.ap
  %.1 = phi ptr [ %.0126, %bb.ap ], [ %.0126, %bb.ao ], [ %i.fe, %bb.ar ] ; 2 uses
  %.0 = phi ptr [ %i.ew, %bb.ap ], [ null, %bb.ao ], [ null, %bb.ar ] ; 2 uses
  %.not139 = icmp eq ptr %.1, null
  br i1 %.not139, label %proto_item_set_generated.exit161, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fi = load i32, ptr @hf_pdcp_lte_security_cipher_key, align 4
  %i.fj = tail call ptr @proto_tree_add_string(ptr noundef %6, i32 noundef %i.fi, ptr noundef %5, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %.1) ; 2 uses
  %.not.i159 = icmp eq ptr %i.fj, null
  br i1 %.not.i159, label %proto_item_set_generated.exit161, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fk = getelementptr i8, ptr %i.fj, i64 40
  %i.fl = load ptr, ptr %i.fk, align 8            ; 2 uses
  %.not5.i160 = icmp eq ptr %i.fl, null
  br i1 %.not5.i160, label %proto_item_set_generated.exit161, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fm = getelementptr i8, ptr %i.fl, i64 28     ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4
  %i.fo = or i32 %i.fn, 2
  store i32 %i.fo, ptr %i.fm, align 4
  br label %proto_item_set_generated.exit161

proto_item_set_generated.exit161:                 ; preds = %bb.av, %bb.au, %bb.at, %bb.as
  %.not140 = icmp eq ptr %.0, null
  br i1 %.not140, label %proto_item_set_generated.exit164, label %bb.aw

bb.aw:                                            ; preds = %proto_item_set_generated.exit161
  %i.fp = load i32, ptr @hf_pdcp_lte_security_integrity_key, align 4
  %i.fq = tail call ptr @proto_tree_add_string(ptr noundef %6, i32 noundef %i.fp, ptr noundef %5, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %.0) ; 2 uses
  %.not.i162 = icmp eq ptr %i.fq, null
  br i1 %.not.i162, label %proto_item_set_generated.exit164, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fr = getelementptr i8, ptr %i.fq, i64 40
  %i.fs = load ptr, ptr %i.fr, align 8            ; 2 uses
  %.not5.i163 = icmp eq ptr %i.fs, null
  br i1 %.not5.i163, label %proto_item_set_generated.exit164, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ft = getelementptr i8, ptr %i.fs, i64 28     ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4
  %i.fv = or i32 %i.fu, 2
  store i32 %i.fv, ptr %i.ft, align 4
  br label %proto_item_set_generated.exit164

proto_item_set_generated.exit164:                 ; preds = %bb.aq, %bb.ay, %bb.ax, %bb.aw, %proto_item_set_generated.exit161
  %i.fw = load i8, ptr %1, align 8
  %i.fx = getelementptr i8, ptr %7, i64 33
  store i8 %i.fw, ptr %i.fx, align 1
  br label %look_up_keys_record.exit.thread

look_up_keys_record.exit.thread:                  ; preds = %bb.aj, %.preheader.i, %proto_item_set_generated.exit164, %look_up_keys_record.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.bm

bb.az:                                            ; preds = %bb.i
  %i.fy = load i32, ptr @hf_pdcp_lte_sequence_analysis_ok, align 4
  %i.fz = tail call ptr @proto_tree_add_boolean(ptr noundef %i.d, i32 noundef %i.fy, ptr noundef %5, i32 noundef 0, i32 noundef 0, i64 noundef 0) ; 2 uses
  %.not.i165 = icmp eq ptr %i.fz, null
  br i1 %.not.i165, label %proto_item_set_generated.exit167, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ga = getelementptr i8, ptr %i.fz, i64 40
  %i.gb = load ptr, ptr %i.ga, align 8            ; 2 uses
  %.not5.i166 = icmp eq ptr %i.gb, null
  br i1 %.not5.i166, label %proto_item_set_generated.exit167, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gc = getelementptr i8, ptr %i.gb, i64 28     ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4
  %i.ge = or i32 %i.gd, 2
  store i32 %i.ge, ptr %i.gc, align 4
  br label %proto_item_set_generated.exit167

proto_item_set_generated.exit167:                 ; preds = %bb.az, %bb.ba, %bb.bb
  %i.gf = load i32, ptr @hf_pdcp_lte_sequence_analysis_skipped, align 4
  %i.gg = tail call ptr @proto_tree_add_boolean(ptr noundef %i.d, i32 noundef %i.gf, ptr noundef %5, i32 noundef 0, i32 noundef 0, i64 noundef 1) ; 4 uses
  %.not.i168 = icmp eq ptr %i.gg, null
  br i1 %.not.i168, label %proto_item_set_generated.exit170, label %bb.bc

bb.bc:                                            ; preds = %proto_item_set_generated.exit167
  %i.gh = getelementptr i8, ptr %i.gg, i64 40
  %i.gi = load ptr, ptr %i.gh, align 8            ; 2 uses
  %.not5.i169 = icmp eq ptr %i.gi, null
  br i1 %.not5.i169, label %proto_item_set_generated.exit170, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gj = getelementptr i8, ptr %i.gi, i64 28     ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4
  %i.gl = or i32 %i.gk, 2
  store i32 %i.gl, ptr %i.gj, align 4
  br label %proto_item_set_generated.exit170

proto_item_set_generated.exit170:                 ; preds = %proto_item_set_generated.exit167, %bb.bc, %bb.bd
  %i.gm = getelementptr i8, ptr %0, i64 20        ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4            ; 3 uses
  %i.go = getelementptr i8, ptr %0, i64 16        ; 3 uses
  %i.gp = load i32, ptr %i.go, align 4            ; 2 uses
  %.not134 = icmp eq i32 %i.gn, %i.gp
  %i.gq = load i8, ptr %1, align 8
  %i.gr = zext i8 %i.gq to i32
  %i.gs = tail call ptr @val_to_str_const(i32 noundef %i.gr, ptr noundef nonnull @direction_vals, ptr noundef nonnull @.str.272) ; 2 uses
  %i.gt = getelementptr i8, ptr %1, i64 2
  %i.gu = load i16, ptr %i.gt, align 2
  %i.gv = zext i16 %i.gu to i32                   ; 2 uses
  %i.gw = getelementptr i8, ptr %1, i64 4
  %i.gx = load i32, ptr %i.gw, align 4
  %i.gy = tail call ptr @val_to_str_const(i32 noundef %i.gx, ptr noundef nonnull @logical_channel_vals, ptr noundef nonnull @.str.272) ; 2 uses
  %i.gz = getelementptr i8, ptr %1, i64 8
  %i.ha = load i16, ptr %i.gz, align 8
  %i.hb = zext i16 %i.ha to i32                   ; 2 uses
  br i1 %.not134, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %proto_item_set_generated.exit170
  %i.hc = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %3, ptr noundef %i.gg, ptr noundef nonnull @ei_pdcp_lte_sequence_analysis_sn_missing, ptr noundef nonnull @.str.301, i32 noundef %i.gp, i32 noundef %i.gn, ptr noundef %i.gs, i32 noundef %i.gv, ptr noundef %i.gy, i32 noundef %i.hb) ; 0 uses
  %i.hd = load i32, ptr %i.go, align 4
  %i.he = load i32, ptr %i.gm, align 4
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef nonnull @.str.302, i32 noundef %i.hd, i32 noundef %i.he)
  br label %bb.bm

bb.bf:                                            ; preds = %proto_item_set_generated.exit170
  %i.hf = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %3, ptr noundef %i.gg, ptr noundef nonnull @ei_pdcp_lte_sequence_analysis_sn_missing, ptr noundef nonnull @.str.303, i32 noundef %i.gn, ptr noundef %i.gs, i32 noundef %i.gv, ptr noundef %i.gy, i32 noundef %i.hb) ; 0 uses
  %i.hg = load i32, ptr %i.go, align 4
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef nonnull @.str.304, i32 noundef %i.hg)
  br label %bb.bm

bb.bg:                                            ; preds = %bb.i
  %i.hh = load i32, ptr @hf_pdcp_lte_sequence_analysis_ok, align 4
  %i.hi = tail call ptr @proto_tree_add_boolean(ptr noundef %i.d, i32 noundef %i.hh, ptr noundef %5, i32 noundef 0, i32 noundef 0, i64 noundef 0) ; 2 uses
  %.not.i171 = icmp eq ptr %i.hi, null
  br i1 %.not.i171, label %proto_item_set_generated.exit173, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hj = getelementptr i8, ptr %i.hi, i64 40
  %i.hk = load ptr, ptr %i.hj, align 8            ; 2 uses
  %.not5.i172 = icmp eq ptr %i.hk, null
  br i1 %.not5.i172, label %proto_item_set_generated.exit173, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hl = getelementptr i8, ptr %i.hk, i64 28     ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4
  %i.hn = or i32 %i.hm, 2
  store i32 %i.hn, ptr %i.hl, align 4
  br label %proto_item_set_generated.exit173

proto_item_set_generated.exit173:                 ; preds = %bb.bg, %bb.bh, %bb.bi
  %i.ho = load i32, ptr @hf_pdcp_lte_sequence_analysis_repeated, align 4
  %i.hp = tail call ptr @proto_tree_add_boolean(ptr noundef %i.d, i32 noundef %i.ho, ptr noundef %5, i32 noundef 0, i32 noundef 0, i64 noundef 1) ; 3 uses
  %.not.i174 = icmp eq ptr %i.hp, null
  br i1 %.not.i174, label %proto_item_set_generated.exit176, label %bb.bj

bb.bj:                                            ; preds = %proto_item_set_generated.exit173
  %i.hq = getelementptr i8, ptr %i.hp, i64 40
  %i.hr = load ptr, ptr %i.hq, align 8            ; 2 uses
  %.not5.i175 = icmp eq ptr %i.hr, null
  br i1 %.not5.i175, label %proto_item_set_generated.exit176, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hs = getelementptr i8, ptr %i.hr, i64 28     ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4
  %i.hu = or i32 %i.ht, 2
  store i32 %i.hu, ptr %i.hs, align 4
  br label %proto_item_set_generated.exit176

proto_item_set_generated.exit176:                 ; preds = %proto_item_set_generated.exit173, %bb.bj, %bb.bk
  %i.hv = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4
  %i.hx = load i8, ptr %1, align 8
  %i.hy = zext i8 %i.hx to i32
  %i.hz = tail call ptr @val_to_str_const(i32 noundef %i.hy, ptr noundef nonnull @direction_vals, ptr noundef nonnull @.str.272)
  %i.ia = getelementptr i8, ptr %1, i64 2
  %i.ib = load i16, ptr %i.ia, align 2
  %i.ic = zext i16 %i.ib to i32
  %i.id = getelementptr i8, ptr %1, i64 4
  %i.ie = load i32, ptr %i.id, align 4
  %i.if = tail call ptr @val_to_str_const(i32 noundef %i.ie, ptr noundef nonnull @logical_channel_vals, ptr noundef nonnull @.str.272)
  %i.ig = getelementptr i8, ptr %1, i64 8
  %i.ih = load i16, ptr %i.ig, align 8
  %i.ii = zext i16 %i.ih to i32
  %i.ij = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %3, ptr noundef %i.hp, ptr noundef nonnull @ei_pdcp_lte_sequence_analysis_sn_repeated, ptr noundef nonnull @.str.305, i32 noundef %i.hw, ptr noundef %i.hz, i32 noundef %i.ic, ptr noundef %i.if, i32 noundef %i.ii) ; 0 uses
  %i.ik = load i32, ptr %i.hv, align 4
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef nonnull @.str.306, i32 noundef %i.ik)
  br label %bb.bm

bb.bl:                                            ; preds = %bb.i
  %i.il = load i8, ptr %1, align 8
  %i.im = zext i8 %i.il to i32
  %i.in = tail call ptr @val_to_str_const(i32 noundef %i.im, ptr noundef nonnull @direction_vals, ptr noundef nonnull @.str.272)
  %i.io = getelementptr i8, ptr %1, i64 2
  %i.ip = load i16, ptr %i.io, align 2
  %i.iq = zext i16 %i.ip to i32
  %i.ir = getelementptr i8, ptr %1, i64 4
  %i.is = load i32, ptr %i.ir, align 4
  %i.it = tail call ptr @val_to_str_const(i32 noundef %i.is, ptr noundef nonnull @logical_channel_vals, ptr noundef nonnull @.str.272)
  %i.iu = getelementptr i8, ptr %1, i64 8
  %i.iv = load i16, ptr %i.iu, align 8
  %i.iw = zext i16 %i.iv to i32
  %i.ix = load i32, ptr %i.o, align 4
  %i.iy = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %3, ptr noundef %i.q, ptr noundef nonnull @ei_pdcp_lte_sequence_analysis_wrong_sequence_number, ptr noundef nonnull @.str.307, ptr noundef %i.in, i32 noundef %i.iq, ptr noundef %i.it, i32 noundef %i.iw, i32 noundef %2, i32 noundef %i.ix) ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.be, %bb.bf, %bb.q, %look_up_keys_record.exit.thread, %bb.bl, %proto_item_set_generated.exit176
  ret void
}

; Function Attrs: noreturn null_pointer_is_valid
declare void @proto_report_dissector_bug(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_open(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_setkey(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @gcry_cipher_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_setctr(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_memdup(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_decrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_child_real_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_mac_open(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_mac_setkey(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @gcry_mac_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_memcpy(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_mac_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_mac_read(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_strneql(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @report_heur_error(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.b, i32 noundef 35, ptr noundef nonnull @.str.167)
  %i.c = load ptr, ptr %i.a, align 8
  tail call void @col_clear(ptr noundef %i.c, i32 noundef 25)
  %i.d = load i32, ptr @proto_pdcp_lte, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.d, ptr noundef %3, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.f = load i32, ptr @ett_pdcp, align 4
  %i.g = tail call ptr @proto_item_add_subtree(ptr noundef %i.e, i32 noundef %i.f)
  %i.h = tail call ptr @proto_tree_add_expert(ptr noundef %i.g, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @wmem_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @p_add_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #13

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { allocsize(1) }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { allocsize(0) }
attributes #18 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
end_hunk_0
