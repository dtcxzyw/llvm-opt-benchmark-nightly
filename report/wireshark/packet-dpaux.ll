Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-dpaux?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dissect_dpaux:bb.a
  %i.o = tail call i32 @tvb_get_bits32(ptr noundef %0, i32 noundef 4, i32 noundef 20, i32 noundef 0) ; 3 uses
  %i.p = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3)
  %i.q = add i8 %i.p, 1                           ; 2 uses
  %i.r = zext i8 %i.n to i32                      ; 3 uses
  %i.s = and i32 %i.r, 1
  %.not.i = icmp eq i32 %i.s, 0                   ; 3 uses
  %i.t = getelementptr i8, ptr %1, i64 20
  %i.u = load i32, ptr %i.t, align 4
  %i.v = getelementptr i8, ptr %1, i64 208
  %i.w = getelementptr i8, ptr %1, i64 232
  %i.x = getelementptr i8, ptr %1, i64 288
  %i.y = load i32, ptr %i.x, align 8
  %i.z = getelementptr i8, ptr %1, i64 292
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = tail call ptr @conversation_new(i32 noundef %i.u, ptr noundef %i.v, ptr noundef %i.w, i32 noundef 0, i32 noundef %i.y, i32 noundef %i.aa, i32 noundef 0)
  %i.ac = tail call ptr @wmem_file_scope()
  %i.ad = tail call noalias dereferenceable_or_null(8) ptr @wmem_alloc(ptr noundef %i.ac, i64 noundef 8) #3 ; 5 uses
  %i.ae = icmp ne i8 %i.l, 0                      ; 2 uses
  %i.af = zext i1 %i.ae to i8
  store i8 %i.af, ptr %i.ad, align 4
  %i.ag = getelementptr i8, ptr %i.ad, i64 4
  store i32 %i.o, ptr %i.ag, align 4
  %i.ah = load i32, ptr @proto_dpaux, align 4
  tail call void @conversation_add_proto_data(ptr noundef %i.ab, i32 noundef %i.ah, ptr noundef %i.ad)
  %i.ai = load i32, ptr @hf_dpaux_transaction_type, align 4
  %.not49.i = xor i1 %i.ae, true
  %i.aj = zext i1 %.not49.i to i32
  %i.ak = tail call ptr @proto_tree_add_uint(ptr noundef %i.k, i32 noundef %i.ai, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.aj) ; 0 uses
  %i.al = load ptr, ptr %i.c, align 8
  %i.am = load i8, ptr %i.ad, align 4, !range !7, !noundef !8
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = select i1 %i.an, ptr @.str, ptr @.str.1
  tail call void @col_set_str(ptr noundef %i.al, i32 noundef 35, ptr noundef nonnull %i.ao)
  %i.ap = load ptr, ptr %i.c, align 8
  %i.aq = select i1 %.not.i, ptr @.str.80, ptr @.str.79
  tail call void @col_set_str(ptr noundef %i.ap, i32 noundef 25, ptr noundef nonnull %i.aq)
  %i.ar = load ptr, ptr %i.c, align 8
  %i.as = zext i8 %i.q to i32                     ; 3 uses
  %i.at = icmp ugt i8 %i.q, 1
  %i.au = select i1 %i.at, ptr @.str.82, ptr @.str.83
  %i.av = select i1 %.not.i, ptr @.str.85, ptr @.str.84
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ar, i32 noundef 25, ptr noundef @.str.81, i32 noundef %i.as, ptr noundef nonnull %i.au, ptr noundef nonnull %i.av, i32 noundef %i.o)
  %i.aw = load i8, ptr %i.ad, align 4, !range !7, !noundef !8
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ay = load i32, ptr @hf_dpaux_native_req_cmd, align 4
  %i.az = tail call ptr @proto_tree_add_uint(ptr noundef %i.k, i32 noundef %i.ay, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.r) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ba = load i32, ptr @hf_dpaux_i2c_req_cmd, align 4
  %i.bb = tail call ptr @proto_tree_add_uint(ptr noundef %i.k, i32 noundef %i.ba, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.r) ; 0 uses
  %i.bc = load i32, ptr @hf_dpaux_mot, align 4
  %i.bd = zext i8 %i.m to i64
  %i.be = tail call ptr @proto_tree_add_boolean(ptr noundef %i.k, i32 noundef %i.bc, ptr noundef %0, i32 noundef 0, i32 noundef 1, i64 noundef %i.bd) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bf = load i32, ptr @hf_dpaux_addr, align 4
  %i.bg = tail call ptr @proto_tree_add_uint(ptr noundef %i.k, i32 noundef %i.bf, ptr noundef %0, i32 noundef 0, i32 noundef 3, i32 noundef %i.o) ; 0 uses
  %i.bh = load i32, ptr @hf_dpaux_len, align 4
  %i.bi = tail call ptr @proto_tree_add_uint(ptr noundef %i.k, i32 noundef %i.bh, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef %i.as) ; 0 uses
  br i1 %.not.i, label %bb.h, label %dissect_dpaux_from_source.exit

bb.h:                                             ; preds = %bb.g
  %i.bj = load i32, ptr @hf_dpaux_data, align 4
  %i.bk = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.bj, ptr noundef %0, i32 noundef 4, i32 noundef %i.as, i32 noundef 0) ; 0 uses
  br label %dissect_dpaux_from_source.exit

bb.i:                                             ; preds = %bb.c
  %i.bl = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef 2, i32 noundef 2) ; 4 uses
  %i.bm = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.bn = icmp ugt i32 %i.bm, 1
  br i1 %i.bn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bo = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.bp = trunc i32 %i.bo to i8
  %i.bq = add i8 %i.bp, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.br = phi i8 [ %i.bq, %bb.j ], [ 0, %bb.i ]   ; 3 uses
  %i.bs = getelementptr i8, ptr %1, i64 20
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = getelementptr i8, ptr %1, i64 208
  %i.bv = getelementptr i8, ptr %1, i64 232
  %i.bw = getelementptr i8, ptr %1, i64 288
  %i.bx = load i32, ptr %i.bw, align 8
  %i.by = getelementptr i8, ptr %1, i64 292
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = tail call ptr @find_conversation(i32 noundef %i.bt, ptr noundef %i.bu, ptr noundef %i.bv, i32 noundef 0, i32 noundef %i.bx, i32 noundef %i.bz, i32 noundef 0) ; 2 uses
  %.not.i20 = icmp eq ptr %i.ca, null
  br i1 %.not.i20, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cb = load i32, ptr @proto_dpaux, align 4
  %i.cc = tail call ptr @conversation_get_proto_data(ptr noundef nonnull %i.ca, i32 noundef %i.cb) ; 4 uses
  %.not69.i = icmp eq ptr %i.cc, null
  br i1 %.not69.i, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = load i32, ptr @hf_dpaux_transaction_type, align 4
  %i.ce = load i8, ptr %i.cc, align 4, !range !7, !noundef !8
  %i.cf = xor i8 %i.ce, 1
  %not..i = zext nneg i8 %i.cf to i32
  %i.cg = tail call ptr @proto_tree_add_uint(ptr noundef %i.k, i32 noundef %i.cd, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %not..i) ; 0 uses
  %i.ch = load ptr, ptr %i.c, align 8
  %i.ci = load i8, ptr %i.cc, align 4, !range !7, !noundef !8
  %i.cj = trunc nuw i8 %i.ci to i1
  %i.ck = select i1 %i.cj, ptr @.str, ptr @.str.1
  tail call void @col_set_str(ptr noundef %i.ch, i32 noundef 35, ptr noundef nonnull %i.ck)
  br label %bb.n

.thread.i:                                        ; preds = %bb.l, %bb.k
  %i.cl = load i32, ptr @hf_dpaux_transaction_type, align 4
  %i.cm = tail call ptr @proto_tree_add_uint(ptr noundef %i.k, i32 noundef %i.cl, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 2) ; 0 uses
  %i.cn = load ptr, ptr %i.c, align 8
  tail call void @col_set_str(ptr noundef %i.cn, i32 noundef 35, ptr noundef @.str.76)
  br label %bb.n

bb.n:                                             ; preds = %.thread.i, %bb.m
  %.not6977.i = phi i1 [ true, %.thread.i ], [ false, %bb.m ] ; 2 uses
  %.06675.i = phi ptr [ null, %.thread.i ], [ %i.cc, %bb.m ] ; 3 uses
  %i.co = zext i8 %i.bl to i32
  %i.cp = icmp ult i8 %i.bl, 9
  br i1 %i.cp, label %switch.hole_check, label %bb.o

switch.hole_check:                                ; preds = %bb.n
  %switch.maskindex = zext nneg i8 %i.bl to i16
  %switch.shifted = lshr i16 279, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.o

switch.lookup:                                    ; preds = %switch.hole_check
  %i.cq = zext nneg i8 %i.bl to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_dpaux, i64 %i.cq
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.cr = load ptr, ptr %i.c, align 8
  tail call void @col_set_str(ptr noundef %i.cr, i32 noundef 25, ptr noundef nonnull %switch.load)
  br label %bb.o

bb.o:                                             ; preds = %switch.hole_check, %bb.n, %switch.lookup
  %i.cs = load i32, ptr @hf_dpaux_reply_cmd, align 4
  %i.ct = tail call ptr @proto_tree_add_uint(ptr noundef %i.k, i32 noundef %i.cs, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.co) ; 0 uses
  %.not70.i = icmp eq i8 %i.br, 0
  br i1 %.not70.i, label %dissect_dpaux_from_source.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cu = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.cv = zext i8 %i.br to i32                    ; 5 uses
  %.not71.i = icmp eq i8 %i.br, 1
  %i.cw = select i1 %.not71.i, ptr @.str.83, ptr @.str.82 ; 2 uses
  br i1 %.not6977.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cx = getelementptr i8, ptr %.06675.i, i64 4  ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.cu, i32 noundef 25, ptr noundef @.str.89, i32 noundef %i.cv, ptr noundef nonnull %i.cw, i32 noundef %i.cy)
  %i.cz = load i32, ptr @hf_dpaux_addr, align 4
  %i.da = load i32, ptr %i.cx, align 4
  %i.db = tail call ptr @proto_tree_add_uint(ptr noundef %i.k, i32 noundef %i.cz, ptr noundef %0, i32 noundef 0, i32 noundef 3, i32 noundef %i.da) ; 0 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.cu, i32 noundef 25, ptr noundef @.str.90, i32 noundef %i.cv, ptr noundef nonnull %i.cw)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dc = load i32, ptr @hf_dpaux_len, align 4
  %i.dd = tail call ptr @proto_tree_add_uint(ptr noundef %i.k, i32 noundef %i.dc, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef %i.cv) ; 0 uses
  %i.de = load i32, ptr @hf_dpaux_data, align 4
  %i.df = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.de, ptr noundef %0, i32 noundef 1, i32 noundef %i.cv, i32 noundef 0) ; 0 uses
  br i1 %.not6977.i, label %dissect_dpaux_from_source.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dg = load i8, ptr %.06675.i, align 4, !range !7, !noundef !8
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %.preheader.i, label %dissect_dpaux_from_source.exit

.preheader.i:                                     ; preds = %bb.t
  %i.di = getelementptr i8, ptr %.06675.i, i64 4  ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %dissect_dpaux_register.exit.i, %.preheader.i
  %.079.i = phi i32 [ 0, %.preheader.i ], [ %i.dk, %dissect_dpaux_register.exit.i ] ; 3 uses
  %i.dj = load i32, ptr @hf_dpaux_reg_addr, align 4
  %i.dk = add nuw nsw i32 %.079.i, 1              ; 5 uses
  %i.dl = load i32, ptr %i.di, align 4
  %i.dm = add i32 %i.dl, %.079.i                  ; 2 uses
  %i.dn = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.dk)
  %i.do = zext i8 %i.dn to i32
  %i.dp = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.k, i32 noundef %i.dj, ptr noundef %0, i32 noundef %i.dk, i32 noundef 1, i32 noundef %i.dm, ptr noundef @.str.91, i32 noundef %i.dm, i32 noundef %i.do)
  %i.dq = load i32, ptr @ett_register, align 4
  %i.dr = tail call ptr @proto_item_add_subtree(ptr noundef %i.dp, i32 noundef %i.dq)
  %i.ds = load i32, ptr %i.di, align 4
  %i.dt = add i32 %i.ds, %.079.i                  ; 2 uses
  %i.du = icmp ult i32 %i.dt, 5
  br i1 %i.du, label %switch.lookup26, label %dissect_dpaux_register.exit.i

switch.lookup26:                                  ; preds = %bb.u
  %4 = zext nneg i32 %i.dt to i64
  %switch.gep27 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_dpaux.2, i64 %4
  %switch.load28 = load ptr, ptr %switch.gep27, align 8 ; 3 uses
  %5 = getelementptr i8, ptr %switch.load28, i64 4
  %6 = load i8, ptr %5, align 4
  %cond.i.i = icmp eq i8 %6, 0
  br i1 %cond.i.i, label %switch.lookup26.a, label %dissect_dpaux_register.exit.i

switch.lookup26.a:                                ; preds = %switch.lookup26
  %i.dv = getelementptr i8, ptr %switch.load28, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = getelementptr i8, ptr %switch.load28, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = tail call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %i.dr, ptr noundef %0, i32 noundef range(i32 1, 256) %i.dk, i32 noundef %i.dx, i32 noundef 0, ptr noundef %i.dz, i32 noundef 0, i32 noundef 0) ; 0 uses
  br label %dissect_dpaux_register.exit.i

dissect_dpaux_register.exit.i:                    ; preds = %bb.u, %switch.lookup26.a, %switch.lookup26
  %exitcond.not.i = icmp eq i32 %i.dk, %i.cv
  br i1 %exitcond.not.i, label %dissect_dpaux_from_source.exit, label %bb.u, !llvm.loop !6

dissect_dpaux_from_source.exit:                   ; preds = %dissect_dpaux_register.exit.i, %bb.t, %bb.s, %bb.o, %bb.h, %bb.g
  %i.eb = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.eb
}

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_bits8(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_bits32(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_new(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @conversation_add_proto_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_append_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_boolean(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @find_conversation(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_get_proto_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask_with_flags(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{!6, !9}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = !{!"llvm.loop.mustprogress"}
end_hunk_0
