Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/compile?download=true
inline.NumInlined: 6690
inline.NumDeleted: 334
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 108
loop-unroll.NumUnrolled: 111
begin_hunk_0_@rb_node_case_when_optimizable_literal:bb.a

declare i64 @rb_node_integer_literal_val(ptr noundef) local_unnamed_addr #4

declare i64 @rb_node_float_literal_val(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.modf.f64(double) #5

declare i64 @rb_dbl2big(double noundef) local_unnamed_addr #4

declare i64 @rb_node_sym_string_val(ptr noundef) local_unnamed_addr #4

declare i64 @rb_node_line_lineno_val(ptr noundef) local_unnamed_addr #4

declare i64 @rb_node_str_string_val(ptr noundef) local_unnamed_addr #4

declare i64 @rb_node_file_path_val(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden range(i32 0, 256) i32 @rb_insn_len(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr @rb_vm_insn_len_info, i64 %0
  %i.b = load i8, ptr %i.a, align 1, !tbaa !47
  %i.c = zext i8 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden ptr @rb_insns_name(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr [2 x i8], ptr @rb_vm_insn_name_offset, i64 %i.a
  %i.c = load i16, ptr %i.b, align 2, !tbaa !105
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr i8, ptr @rb_vm_insn_name_base, i64 %i.d
  ret ptr %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_insns_name_array() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @rb_ary_new_capa(i64 noundef 248) #37 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.b = getelementptr [2 x i8], ptr @rb_vm_insn_name_offset, i64 %indvars.iv
  %i.c = load i16, ptr %i.b, align 2, !tbaa !105
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr i8, ptr @rb_vm_insn_name_base, i64 %i.d
  %i.f = tail call i64 @rb_fstring_cstr(ptr noundef %i.e) #37
  %i.g = tail call i64 @rb_ary_push(i64 noundef %i.a, i64 noundef %i.f) #37 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 248
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !718

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i64 @rb_ary_freeze(i64 noundef %i.a) #37
  ret i64 %i.h
}

declare i64 @rb_ary_new_capa(i64 noundef) local_unnamed_addr #4

declare i64 @rb_fstring_new(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare i64 @rb_fstring_cstr(ptr noundef) local_unnamed_addr #4

declare i64 @rb_ary_freeze(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_iseq_mark_and_move_insn_storage(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #1 {
bb.a:
  %.not17 = icmp eq ptr %0, null
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %.019 = phi i32 [ %.1, %bb.i ], [ 0, %bb.a ]    ; 2 uses
  %.01318 = phi ptr [ %.114, %bb.i ], [ %0, %bb.a ] ; 5 uses
  %i.a = zext i32 %.019 to i64                    ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 64                 ; 2 uses
  %i.c = getelementptr i8, ptr %.01318, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !37
  %i.e = zext i32 %i.d to i64
  %i.f = icmp samesign ugt i64 %i.b, %i.e
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr i8, ptr %.01318, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !37
  %i.i = zext i32 %i.h to i64
  %i.j = icmp samesign ugt i64 %i.b, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.k = load ptr, ptr %.01318, align 8, !tbaa !64
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %.01318, i64 16
  %i.m = getelementptr i8, ptr %i.l, i64 %i.a     ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 40       ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !93
  %.not16 = icmp eq ptr %i.o, null
  br i1 %.not16, label %iseq_insn_each_markable_object.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.m, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !91
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr [2 x i8], ptr @rb_vm_insn_op_offset, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !105
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr i8, ptr @rb_vm_insn_op_base, i64 %i.u
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.0.i = phi i32 [ 0, %bb.e ], [ %i.ab, %bb.h ]  ; 2 uses
  %i.w = sext i32 %.0.i to i64                    ; 2 uses
  %i.x = getelementptr i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !47
  switch i8 %i.y, label %bb.h [
    i8 0, label %iseq_insn_each_markable_object.exit
    i8 72, label %bb.g
    i8 83, label %bb.g
    i8 86, label %bb.g
    i8 75, label %bb.g
    i8 67, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !93
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %i.w
  tail call void @rb_gc_mark_and_move(ptr noundef %i.aa) #37
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = add i32 %.0.i, 1
  br label %bb.f, !llvm.loop !8

iseq_insn_each_markable_object.exit:              ; preds = %bb.f, %bb.d
  %i.ac = add i32 %.019, 64
  br label %bb.i

bb.i:                                             ; preds = %iseq_insn_each_markable_object.exit, %bb.c
  %.114 = phi ptr [ %i.k, %bb.c ], [ %.01318, %iseq_insn_each_markable_object.exit ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.c ], [ %i.ac, %iseq_insn_each_markable_object.exit ]
  %.not = icmp eq ptr %.114, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !719

._crit_edge:                                      ; preds = %bb.i, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_iseq_build_from_ary(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 19 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 10 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %6 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 6 uses
  %i.j = tail call ptr @rb_st_init_numtable() #37 ; 5 uses
  %i.k = tail call i64 @rb_data_typed_object_wrap(i64 noundef 0, ptr noundef %i.j, ptr noundef nonnull @labels_wrapper_type) #37 ; 2 uses
  %i.l = tail call i64 @rb_intern2(ptr noundef nonnull @.str.9, i64 noundef 3) #37
  %i.m = tail call i64 @rb_id2sym(i64 noundef %i.l) #37
  %i.n = tail call i64 @rb_hash_aref(i64 noundef %3, i64 noundef %i.m) #37 ; 5 uses
  %i.o = tail call i64 @rb_intern2(ptr noundef nonnull @.str.10, i64 noundef 7) #37
  %i.p = tail call i64 @rb_id2sym(i64 noundef %i.o) #37
  %i.q = tail call i64 @rb_hash_aref(i64 noundef %3, i64 noundef %i.p) #37 ; 5 uses
  %i.r = tail call i64 @rb_intern2(ptr noundef nonnull @.str.11, i64 noundef 9) #37
  %i.s = tail call i64 @rb_id2sym(i64 noundef %i.r) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store ptr %6, ptr %i.t, align 8, !tbaa !42
  %i.u = inttoptr i64 %2 to ptr                   ; 5 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !100  ; 2 uses
  %i.w = and i64 %i.v, 8192
  %.not.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = lshr i64 %i.v, 15
  %i.y = and i64 %i.x, 127
  br label %rb_array_len.exit.i

bb.c:                                             ; preds = %bb.a
  %i.z = getelementptr i8, ptr %i.u, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !47
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.c, %bb.b
  %.0.i.i = phi i64 [ %i.y, %bb.b ], [ %i.aa, %bb.c ] ; 5 uses
  %i.ab = add i64 %.0.i.i, 2147483648
  %.not.i1.i = icmp ult i64 %i.ab, 4294967296
  br i1 %.not.i1.i, label %RARRAY_LENINT.exit, label %bb.d

bb.d:                                             ; preds = %rb_array_len.exit.i
  call void @rb_out_of_int(i64 noundef %.0.i.i) #38
  unreachable

RARRAY_LENINT.exit:                               ; preds = %rb_array_len.exit.i
  %i.ac = trunc nsw i64 %.0.i.i to i32            ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 16        ; 32 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !70 ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 240
  store i32 %i.ac, ptr %i.af, align 8, !tbaa !170
  %i.ag = icmp sgt i64 %.0.i.i, 0
  br i1 %i.ag, label %.lr.ph, label %bb.e

bb.e:                                             ; preds = %RARRAY_LENINT.exit
  %i.ah = getelementptr i8, ptr %i.ae, i64 144
  store ptr null, ptr %i.ah, align 8, !tbaa !179
  br label %._crit_edge

.lr.ph:                                           ; preds = %RARRAY_LENINT.exit
  %i.ai = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %.0.i.i, i64 noundef 8) #39 ; 2 uses
  %.pre = load ptr, ptr %i.ad, align 8, !tbaa !70
  %i.aj = getelementptr i8, ptr %.pre, i64 144
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !179
  %i.ak = getelementptr i8, ptr %i.u, i64 16
  %i.al = getelementptr i8, ptr %i.u, i64 32
  %smax = call i32 @llvm.smax.i32(i32 %i.ac, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.am = load i64, ptr %i.u, align 8, !tbaa !100
  %i.an = and i64 %i.am, 8192
  %.not.i.i106 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i106, label %bb.g, label %RARRAY_AREF.exit

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !47
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.f, %bb.g
  %.0.i.i107 = phi ptr [ %i.ao, %bb.g ], [ %i.ak, %bb.f ]
  %i.ap = getelementptr [8 x i8], ptr %.0.i.i107, i64 %indvars.iv
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !63 ; 4 uses
  %i.ar = icmp eq i64 %i.s, %i.aq
  br i1 %i.ar, label %bb.k, label %bb.h

bb.h:                                             ; preds = %RARRAY_AREF.exit
  %i.as = trunc i64 %i.aq to i1
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.at = ashr i64 %i.aq, 1
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.au = call i64 @rb_to_symbol_type(i64 noundef %i.aq) #37
  %i.av = call i64 @rb_sym2id(i64 noundef %i.au) #37
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %RARRAY_AREF.exit
  %.sink = phi i64 [ 0, %RARRAY_AREF.exit ], [ %i.at, %bb.i ], [ %i.av, %bb.j ]
  %i.aw = getelementptr [8 x i8], ptr %i.ai, i64 %indvars.iv
  store i64 %.sink, ptr %i.aw, align 8, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !720

._crit_edge.loopexit:                             ; preds = %bb.k
  %.pre304 = load ptr, ptr %i.ad, align 8, !tbaa !70
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %._crit_edge.loopexit
  %i.ax = phi ptr [ %.pre304, %._crit_edge.loopexit ], [ %i.ae, %bb.e ]
  %i.ay = call i64 @rb_intern2(ptr noundef nonnull @.str.12, i64 noundef 8) #37
  %i.az = call i64 @rb_id2sym(i64 noundef %i.ay) #37 ; 2 uses
  %i.ba = call i64 @rb_hash_aref(i64 noundef %3, i64 noundef %i.az) #37 ; 4 uses
  %i.bb = trunc i64 %i.ba to i1
  br i1 %i.bb, label %bb.n, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.bc = icmp eq i64 %i.ba, 4
  br i1 %i.bc, label %int_param.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = load i64, ptr @rb_eTypeError, align 8, !tbaa !63
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bd, ptr noundef nonnull @.str.196, i64 noundef %i.az, i64 noundef %i.ba) #41
  unreachable

bb.n:                                             ; preds = %._crit_edge
  %i.be = getelementptr i8, ptr %i.ax, i64 24
  %i.bf = call i64 @rb_fix2int(i64 noundef %i.ba) #37
  %i.bg = trunc i64 %i.bf to i32
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !37
  %i.bh = load ptr, ptr %i.ad, align 8, !tbaa !70
  %i.bi = getelementptr i8, ptr %i.bh, i64 16     ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 8
  %i.bk = or i16 %i.bj, 1
  store i16 %i.bk, ptr %i.bi, align 8
  br label %int_param.exit.thread

int_param.exit.thread:                            ; preds = %bb.l, %bb.n
  %i.bl = load ptr, ptr %i.ad, align 8, !tbaa !70
  %i.bm = call i64 @rb_intern2(ptr noundef nonnull @.str.13, i64 noundef 8) #37
  %i.bn = call i64 @rb_id2sym(i64 noundef %i.bm) #37 ; 2 uses
  %i.bo = call i64 @rb_hash_aref(i64 noundef %3, i64 noundef %i.bn) #37 ; 4 uses
  %i.bp = trunc i64 %i.bo to i1
  br i1 %i.bp, label %bb.q, label %bb.o

bb.o:                                             ; preds = %int_param.exit.thread
  %i.bq = icmp eq i64 %i.bo, 4
  br i1 %i.bq, label %int_param.exit110.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = load i64, ptr @rb_eTypeError, align 8, !tbaa !63
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.br, ptr noundef nonnull @.str.196, i64 noundef %i.bn, i64 noundef %i.bo) #41
  unreachable

bb.q:                                             ; preds = %int_param.exit.thread
  %i.bs = getelementptr i8, ptr %i.bl, i64 40
  %i.bt = call i64 @rb_fix2int(i64 noundef %i.bo) #37
  %i.bu = trunc i64 %i.bt to i32
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !37
  %i.bv = load ptr, ptr %i.ad, align 8, !tbaa !70
  %i.bw = getelementptr i8, ptr %i.bv, i64 16     ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 8
  %i.by = or i16 %i.bx, 8
  store i16 %i.by, ptr %i.bw, align 8
  br label %int_param.exit110.thread

int_param.exit110.thread:                         ; preds = %bb.o, %bb.q
  %i.bz = load ptr, ptr %i.ad, align 8, !tbaa !70
  %i.ca = call i64 @rb_intern2(ptr noundef nonnull @.str.14, i64 noundef 10) #37
  %i.cb = call i64 @rb_id2sym(i64 noundef %i.ca) #37 ; 2 uses
  %i.cc = call i64 @rb_hash_aref(i64 noundef %3, i64 noundef %i.cb) #37 ; 4 uses
  %i.cd = trunc i64 %i.cc to i1
  br i1 %i.cd, label %bb.t, label %bb.r

bb.r:                                             ; preds = %int_param.exit110.thread
  %i.ce = icmp eq i64 %i.cc, 4
  br i1 %i.ce, label %int_param.exit112.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = load i64, ptr @rb_eTypeError, align 8, !tbaa !63
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cf, ptr noundef nonnull @.str.196, i64 noundef %i.cb, i64 noundef %i.cc) #41
  unreachable

bb.t:                                             ; preds = %int_param.exit110.thread
  %i.cg = getelementptr i8, ptr %i.bz, i64 36
  %i.ch = call i64 @rb_fix2int(i64 noundef %i.cc) #37
  %i.ci = trunc i64 %i.ch to i32
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !37
  %i.cj = load ptr, ptr %i.ad, align 8, !tbaa !70
  %i.ck = getelementptr i8, ptr %i.cj, i64 16     ; 2 uses
  %i.cl = load i16, ptr %i.ck, align 8
  %i.cm = or i16 %i.cl, 8
  store i16 %i.cm, ptr %i.ck, align 8
  br label %int_param.exit112.thread

int_param.exit112.thread:                         ; preds = %bb.r, %bb.t
  %i.cn = load ptr, ptr %i.ad, align 8, !tbaa !70
  %i.co = call i64 @rb_intern2(ptr noundef nonnull @.str.15, i64 noundef 10) #37
  %i.cp = call i64 @rb_id2sym(i64 noundef %i.co) #37 ; 2 uses
  %i.cq = call i64 @rb_hash_aref(i64 noundef %3, i64 noundef %i.cp) #37 ; 4 uses
  %i.cr = trunc i64 %i.cq to i1
  br i1 %i.cr, label %bb.w, label %bb.u

bb.u:                                             ; preds = %int_param.exit112.thread
  %i.cs = icmp eq i64 %i.cq, 4
  br i1 %i.cs, label %int_param.exit114.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = load i64, ptr @rb_eTypeError, align 8, !tbaa !63
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ct, ptr noundef nonnull @.str.196, i64 noundef %i.cp, i64 noundef %i.cq) #41
  unreachable

bb.w:                                             ; preds = %int_param.exit112.thread
  %i.cu = getelementptr i8, ptr %i.cn, i64 32
  %i.cv = call i64 @rb_fix2int(i64 noundef %i.cq) #37
  %i.cw = trunc i64 %i.cv to i32
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !37
  %i.cx = load ptr, ptr %i.ad, align 8, !tbaa !70
  %i.cy = getelementptr i8, ptr %i.cx, i64 16     ; 2 uses
  %i.cz = load i16, ptr %i.cy, align 8
  %i.da = or i16 %i.cz, 4
  store i16 %i.da, ptr %i.cy, align 8
  br label %int_param.exit114.thread

int_param.exit114.thread:                         ; preds = %bb.u, %bb.w
  %i.db = load ptr, ptr %i.ad, align 8, !tbaa !70
  %i.dc = call i64 @rb_intern2(ptr noundef nonnull @.str.16, i64 noundef 11) #37
  %i.dd = call i64 @rb_id2sym(i64 noundef %i.dc) #37 ; 2 uses
  %i.de = call i64 @rb_hash_aref(i64 noundef %3, i64 noundef %i.dd) #37 ; 4 uses
  %i.df = trunc i64 %i.de to i1
  br i1 %i.df, label %bb.z, label %bb.x

bb.x:                                             ; preds = %int_param.exit114.thread
  %i.dg = icmp eq i64 %i.de, 4
  br i1 %i.dg, label %int_param.exit116.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dh = load i64, ptr @rb_eTypeError, align 8, !tbaa !63
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.dh, ptr noundef nonnull @.str.196, i64 noundef %i.dd, i64 noundef %i.de) #41
  unreachable

bb.z:                                             ; preds = %int_param.exit114.thread
  %i.di = getelementptr i8, ptr %i.db, i64 44
  %i.dj = call i64 @rb_fix2int(i64 noundef %i.de) #37
  %i.dk = trunc i64 %i.dj to i32
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !37
  %i.dl = load ptr, ptr %i.ad, align 8, !tbaa !70
  %i.dm = getelementptr i8, ptr %i.dl, i64 16     ; 2 uses
  %i.dn = load i16, ptr %i.dm, align 8
  %i.do = or i16 %i.dn, 64
  store i16 %i.do, ptr %i.dm, align 8
  br label %int_param.exit116.thread

int_param.exit116.thread:                         ; preds = %bb.x, %bb.z
  %i.dp = call i64 @rb_intern2(ptr noundef nonnull @.str.17, i64 noundef 8) #37
  %i.dq = call i64 @rb_id2sym(i64 noundef %i.dp) #37 ; 2 uses
  %i.dr = call i64 @rb_hash_aref(i64 noundef %1, i64 noundef %i.dq) #37 ; 4 uses
  %i.ds = trunc i64 %i.dr to i1
  br i1 %i.ds, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %int_param.exit116.thread
  %i.dt = call i64 @rb_fix2int(i64 noundef %i.dr) #37
  %i.du = trunc i64 %i.dt to i32
  br label %int_param.exit118

bb.ab:                                            ; preds = %int_param.exit116.thread
  %i.dv = icmp eq i64 %i.dr, 4
  br i1 %i.dv, label %int_param.exit118, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dw = load i64, ptr @rb_eTypeError, align 8, !tbaa !63
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.dw, ptr noundef nonnull @.str.196, i64 noundef %i.dq, i64 noundef %i.dr) #41
  unreachable

int_param.exit118:                                ; preds = %bb.aa, %bb.ab
  %i.dx = phi i32 [ %i.du, %bb.aa ], [ 0, %bb.ab ]
  %i.dy = call i64 @rb_intern2(ptr noundef nonnull @.str.18, i64 noundef 10) #37
  %i.dz = call i64 @rb_id2sym(i64 noundef %i.dy) #37 ; 2 uses
  %i.ea = call i64 @rb_hash_aref(i64 noundef %1, i64 noundef %i.dz) #37 ; 4 uses
  %i.eb = trunc i64 %i.ea to i1
  br i1 %i.eb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %int_param.exit118
  %i.ec = call i64 @rb_fix2int(i64 noundef %i.ea) #37
  %i.ed = trunc i64 %i.ec to i32
  br label %int_param.exit120

bb.ae:                                            ; preds = %int_param.exit118
  %i.ee = icmp eq i64 %i.ea, 4
  br i1 %i.ee, label %int_param.exit120, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ef = load i64, ptr @rb_eTypeError, align 8, !tbaa !63
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ef, ptr noundef nonnull @.str.196, i64 noundef %i.dz, i64 noundef %i.ea) #41
  unreachable

int_param.exit120:                                ; preds = %bb.ad, %bb.ae
  %i.eg = phi i32 [ %i.ed, %bb.ad ], [ 0, %bb.ae ]
  %i.eh = call i64 @rb_intern2(ptr noundef nonnull @.str.19, i64 noundef 9) #37
  %i.ei = call i64 @rb_id2sym(i64 noundef %i.eh) #37 ; 2 uses
  %i.ej = call i64 @rb_hash_aref(i64 noundef %1, i64 noundef %i.ei) #37 ; 4 uses
  %i.ek = trunc i64 %i.ej to i1
  br i1 %i.ek, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %int_param.exit120
  %i.el = call i64 @rb_fix2int(i64 noundef %i.ej) #37
  %i.em = trunc i64 %i.el to i32
  br label %int_param.exit122

bb.ah:                                            ; preds = %int_param.exit120
  %i.en = icmp eq i64 %i.ej, 4
  br i1 %i.en, label %int_param.exit122, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eo = load i64, ptr @rb_eTypeError, align 8, !tbaa !63
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.eo, ptr noundef nonnull @.str.196, i64 noundef %i.ei, i64 noundef %i.ej) #41
  unreachable

int_param.exit122:                                ; preds = %bb.ag, %bb.ah
  %i.ep = phi i32 [ %i.em, %bb.ag ], [ 0, %bb.ah ]
  %.pr.i = load i64, ptr @rb_iseq_build_from_ary.rbimpl_id, align 8, !tbaa !63 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %int_param.exit122, %.lr.ph.i
  %i.eq = call i64 @rb_intern2(ptr noundef nonnull @.str.20, i64 noundef 8) #37 ; 3 uses
  store i64 %i.eq, ptr @rb_iseq_build_from_ary.rbimpl_id, align 8, !tbaa !63
  %.not.i = icmp eq i64 %i.eq, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !3

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %int_param.exit122
  %.lcssa.i = phi i64 [ %.pr.i, %int_param.exit122 ], [ %i.eq, %.lr.ph.i ]
  %i.er = call i64 @rb_id2sym(i64 noundef %.lcssa.i) #37
  %i.es = call i64 @rb_hash_aref(i64 noundef %1, i64 noundef %i.er) #37 ; 4 uses
  %i.et = icmp eq i64 %i.es, 0
  %i.eu = and i64 %i.es, 7
  %i.ev = icmp ne i64 %i.eu, 0
  %i.ew = or i1 %i.et, %i.ev
  br i1 %i.ew, label %rbimpl_RB_TYPE_P_fastpath.exit105.thread, label %rbimpl_RB_TYPE_P_fastpath.exit105

rbimpl_RB_TYPE_P_fastpath.exit105:                ; preds = %rbimpl_intern_const.exit
  %i.ex = inttoptr i64 %i.es to ptr
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !100
  %i.ez = and i64 %i.ey, 31
  %i.fa = icmp eq i64 %i.ez, 7
  br i1 %i.fa, label %bb.aj, label %rbimpl_RB_TYPE_P_fastpath.exit105.thread

rbimpl_RB_TYPE_P_fastpath.exit105.thread:         ; preds = %rbimpl_intern_const.exit, %rbimpl_RB_TYPE_P_fastpath.exit105
  %i.fb = load i64, ptr @rb_eTypeError, align 8, !tbaa !63
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.fb, ptr noundef nonnull @.str.21) #41
  unreachable

bb.aj:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit105
  %i.fc = icmp eq i64 %i.n, 0
  %i.fd = and i64 %i.n, 7
  %i.fe = icmp ne i64 %i.fd, 0
  %i.ff = or i1 %i.fc, %i.fe
  br i1 %i.ff, label %rbimpl_RB_TYPE_P_fastpath.exit103.thread, label %rbimpl_RB_TYPE_P_fastpath.exit103

rbimpl_RB_TYPE_P_fastpath.exit103:                ; preds = %bb.aj
  %i.fg = inttoptr i64 %i.n to ptr                ; 5 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !100 ; 3 uses
  %i.fi = and i64 %i.fh, 31
  %i.fj = icmp eq i64 %i.fi, 7
  br i1 %i.fj, label %bb.ak, label %rbimpl_RB_TYPE_P_fastpath.exit103.thread

bb.ak:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit103
  %i.fk = and i64 %i.fh, 8192
  %.not.i.i123 = icmp eq i64 %i.fk, 0
  br i1 %.not.i.i123, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fl = lshr i64 %i.fh, 15
  %i.fm = and i64 %i.fl, 127
  br label %rb_array_len.exit.i124

bb.am:                                            ; preds = %bb.ak
  %i.fn = getelementptr i8, ptr %i.fg, i64 16
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !47
  br label %rb_array_len.exit.i124

rb_array_len.exit.i124:                           ; preds = %bb.am, %bb.al
  %.0.i.i125 = phi i64 [ %i.fm, %bb.al ], [ %i.fo, %bb.am ] ; 5 uses
  %i.fp = add i64 %.0.i.i125, 2147483648
  %.not.i1.i126 = icmp ult i64 %i.fp, 4294967296
  br i1 %.not.i1.i126, label %RARRAY_LENINT.exit127, label %bb.an

bb.an:                                            ; preds = %rb_array_len.exit.i124
  call void @rb_out_of_int(i64 noundef %.0.i.i125) #38
  unreachable

RARRAY_LENINT.exit127:                            ; preds = %rb_array_len.exit.i124
  %i.fq = trunc nsw i64 %.0.i.i125 to i32         ; 2 uses
  %i.fr = add i32 %i.fq, -1                       ; 2 uses
  %i.fs = icmp sgt i32 %i.fr, -1
  %i.ft = load ptr, ptr %i.ad, align 8, !tbaa !70
  %i.fu = getelementptr i8, ptr %i.ft, i64 16     ; 2 uses
  %i.fv = load i16, ptr %i.fu, align 8
  %i.fw = select i1 %i.fs, i16 2, i16 0
  %i.fx = and i16 %i.fv, -3
  %i.fy = or disjoint i16 %i.fx, %i.fw
  store i16 %i.fy, ptr %i.fu, align 8
  %i.fz = load ptr, ptr %i.ad, align 8, !tbaa !70
  %i.ga = getelementptr i8, ptr %i.fz, i64 16
  %i.gb = load i16, ptr %i.ga, align 8
  %i.gc = and i16 %i.gb, 2
  %.not99 = icmp eq i16 %i.gc, 0
  br i1 %.not99, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %RARRAY_LENINT.exit127
  %i.gd = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %.0.i.i125, i64 noundef 8) #39 ; 2 uses
  %i.ge = icmp sgt i64 %.0.i.i125, 0
  br i1 %i.ge, label %.lr.ph248, label %._crit_edge249

.lr.ph248:                                        ; preds = %bb.ao
  %i.gf = getelementptr i8, ptr %i.fg, i64 16
  %i.gg = getelementptr i8, ptr %i.fg, i64 32
  %smax298 = call i32 @llvm.smax.i32(i32 %i.fq, i32 1)
  %wide.trip.count299 = zext nneg i32 %smax298 to i64
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph248, %RARRAY_AREF.exit130
  %indvars.iv295 = phi i64 [ 0, %.lr.ph248 ], [ %indvars.iv.next296, %RARRAY_AREF.exit130 ] ; 3 uses
  %i.gh = load i64, ptr %i.fg, align 8, !tbaa !100
  %i.gi = and i64 %i.gh, 8192
  %.not.i.i128 = icmp eq i64 %i.gi, 0
  br i1 %.not.i.i128, label %bb.aq, label %RARRAY_AREF.exit130

bb.aq:                                            ; preds = %bb.ap
  %i.gj = load ptr, ptr %i.gg, align 8, !tbaa !47
  br label %RARRAY_AREF.exit130

RARRAY_AREF.exit130:                              ; preds = %bb.ap, %bb.aq
  %.0.i.i129 = phi ptr [ %i.gj, %bb.aq ], [ %i.gf, %bb.ap ]
  %i.gk = getelementptr [8 x i8], ptr %.0.i.i129, i64 %indvars.iv295
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !63
  %i.gm = call fastcc ptr @register_label(ptr noundef %0, ptr noundef %i.j, i64 noundef %i.gl)
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = getelementptr [8 x i8], ptr %i.gd, i64 %indvars.iv295
  store i64 %i.gn, ptr %i.go, align 8, !tbaa !63
  %indvars.iv.next296 = add nuw nsw i64 %indvars.iv295, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next296, %wide.trip.count299
  br i1 %exitcond300.not, label %._crit_edge249, label %bb.ap, !llvm.loop !721

._crit_edge249:                                   ; preds = %RARRAY_AREF.exit130, %bb.ao
  %i.gp = load ptr, ptr %i.ad, align 8, !tbaa !70 ; 2 uses
  %i.gq = getelementptr i8, ptr %i.gp, i64 28
  store i32 %i.fr, ptr %i.gq, align 4, !tbaa !165
  %i.gr = getelementptr i8, ptr %i.gp, i64 48
  store ptr %i.gd, ptr %i.gr, align 8, !tbaa !164
  br label %bb.as

rbimpl_RB_TYPE_P_fastpath.exit103.thread:         ; preds = %bb.aj, %rbimpl_RB_TYPE_P_fastpath.exit103
  %i.gs = icmp eq i64 %i.n, 4
  br i1 %i.gs, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit103.thread
  %i.gt = load i64, ptr @rb_eTypeError, align 8, !tbaa !63
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.gt, ptr noundef nonnull @.str.22, i64 noundef %i.n) #41
  unreachable

bb.as:                                            ; preds = %._crit_edge249, %RARRAY_LENINT.exit127, %rbimpl_RB_TYPE_P_fastpath.exit103.thread
  %i.gu = icmp eq i64 %i.q, 0
  %i.gv = and i64 %i.q, 7
  %i.gw = icmp ne i64 %i.gv, 0
  %i.gx = or i1 %i.gu, %i.gw
  br i1 %i.gx, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.as
  %i.gy = inttoptr i64 %i.q to ptr                ; 8 uses
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !100 ; 3 uses
  %i.ha = and i64 %i.gz, 31
  %i.hb = icmp eq i64 %i.ha, 7
  br i1 %i.hb, label %bb.at, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.at:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.hc = and i64 %i.gz, 8192
  %.not.i.i.i = icmp eq i64 %i.hc, 0
  br i1 %.not.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hd = lshr i64 %i.gz, 15
  %i.he = and i64 %i.hd, 127
  br label %rb_array_len.exit.i.i

bb.av:                                            ; preds = %bb.at
  %i.hf = getelementptr i8, ptr %i.gy, i64 16
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !47
  br label %rb_array_len.exit.i.i

rb_array_len.exit.i.i:                            ; preds = %bb.av, %bb.au
  %.0.i.i.i = phi i64 [ %i.he, %bb.au ], [ %i.hg, %bb.av ] ; 5 uses
  %i.hh = add i64 %.0.i.i.i, 2147483648
  %.not.i1.i.i = icmp ult i64 %i.hh, 4294967296
  br i1 %.not.i1.i.i, label %RARRAY_LENINT.exit.i, label %bb.aw

bb.aw:                                            ; preds = %rb_array_len.exit.i.i
  call void @rb_out_of_int(i64 noundef %.0.i.i.i) #38
  unreachable

RARRAY_LENINT.exit.i:                             ; preds = %rb_array_len.exit.i.i
  %i.hi = trunc nsw i64 %.0.i.i.i to i32          ; 5 uses
  %i.hj = call noalias nonnull dereferenceable(32) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 32) #39 ; 6 uses
  %i.hk = load ptr, ptr %i.ad, align 8, !tbaa !70
  %i.hl = getelementptr i8, ptr %i.hk, i64 16     ; 2 uses
  %i.hm = load i16, ptr %i.hl, align 8
  %i.hn = or i16 %i.hm, 16
  store i16 %i.hn, ptr %i.hl, align 8
  store i32 %i.hi, ptr %i.hj, align 8, !tbaa !197
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 8 ; 2 uses
  %i.hp = call i64 @rb_intern2(ptr noundef nonnull @.str.197, i64 noundef 6) #37
  %i.hq = call i64 @rb_id2sym(i64 noundef %i.hp) #37 ; 2 uses
  %i.hr = call i64 @rb_hash_aref(i64 noundef %3, i64 noundef %i.hq) #37 ; 4 uses
  %i.hs = trunc i64 %i.hr to i1
  br i1 %i.hs, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %RARRAY_LENINT.exit.i
  %i.ht = call i64 @rb_fix2int(i64 noundef %i.hr) #37
  %i.hu = trunc i64 %i.ht to i32                  ; 2 uses
  store i32 %i.hu, ptr %i.ho, align 8, !tbaa !37
  br label %int_param.exit.i

bb.ay:                                            ; preds = %RARRAY_LENINT.exit.i
  %i.hv = icmp eq i64 %i.hr, 4
  br i1 %i.hv, label %.int_param.exit_crit_edge.i, label %bb.az

.int_param.exit_crit_edge.i:                      ; preds = %bb.ay
  %.pre.i = load i32, ptr %i.ho, align 8, !tbaa !194
  br label %int_param.exit.i

bb.az:                                            ; preds = %bb.ay
  %i.hw = load i64, ptr @rb_eTypeError, align 8, !tbaa !63
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.hw, ptr noundef nonnull @.str.196, i64 noundef %i.hq, i64 noundef %i.hr) #41
  unreachable

int_param.exit.i:                                 ; preds = %.int_param.exit_crit_edge.i, %bb.ax
  %i.hx = phi i32 [ %.pre.i, %.int_param.exit_crit_edge.i ], [ %i.hu, %bb.ax ]
  %i.hy = sub i32 %i.hx, %i.hi
  %i.hz = load ptr, ptr %i.ad, align 8, !tbaa !70
  %i.ia = getelementptr i8, ptr %i.hz, i64 144
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !179
  %i.ic = sext i32 %i.hy to i64
  %i.id = getelementptr [8 x i8], ptr %i.ib, i64 %i.ic ; 5 uses
  %i.ie = icmp sgt i64 %.0.i.i.i, 0
  br i1 %i.ie, label %.lr.ph.i133, label %.thread.i

.lr.ph.i133:                                      ; preds = %int_param.exit.i
  %i.if = getelementptr i8, ptr %i.gy, i64 16
  %i.ig = getelementptr i8, ptr %i.gy, i64 32
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hj, i64 4 ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %RB_SYMBOL_P.exit.thread.i, %.lr.ph.i133
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i133 ], [ %indvars.iv.next.i, %RB_SYMBOL_P.exit.thread.i ] ; 5 uses
  %i.ii = load i64, ptr %i.gy, align 8, !tbaa !100
  %i.ij = and i64 %i.ii, 8192
  %.not.i.i59.i = icmp eq i64 %i.ij, 0
  br i1 %.not.i.i59.i, label %bb.bb, label %RARRAY_AREF.exit.i

bb.bb:                                            ; preds = %bb.ba
  %i.ik = load ptr, ptr %i.ig, align 8, !tbaa !47
  br label %RARRAY_AREF.exit.i

RARRAY_AREF.exit.i:                               ; preds = %bb.bb, %bb.ba
  %.0.i.i60.i = phi ptr [ %i.ik, %bb.bb ], [ %i.if, %bb.ba ]
  %i.il = getelementptr [8 x i8], ptr %.0.i.i60.i, i64 %indvars.iv.i
  %i.im = load i64, ptr %i.il, align 8, !tbaa !63 ; 5 uses
  %i.in = and i64 %i.im, 255
  %i.io = icmp eq i64 %i.in, 12
  br i1 %i.io, label %RB_SYMBOL_P.exit.thread.i, label %bb.bc

bb.bc:                                            ; preds = %RARRAY_AREF.exit.i
  %i.ip = icmp eq i64 %i.im, 0
  %i.iq = and i64 %i.im, 7
  %i.ir = icmp ne i64 %i.iq, 0
  %i.is = or i1 %i.ip, %i.ir
  br i1 %i.is, label %.thread.loopexit.split.loop.exit.i, label %RB_SYMBOL_P.exit.i

RB_SYMBOL_P.exit.i:                               ; preds = %bb.bc
  %i.it = inttoptr i64 %i.im to ptr
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !100
  %i.iv = and i64 %i.iu, 31
  %i.iw = icmp eq i64 %i.iv, 20
  br i1 %i.iw, label %RB_SYMBOL_P.exit.thread.i, label %.thread.loopexit.split.loop.exit94.i

RB_SYMBOL_P.exit.thread.i:                        ; preds = %RB_SYMBOL_P.exit.i, %RARRAY_AREF.exit.i
  %i.ix = call i64 @rb_sym2id(i64 noundef %i.im) #37
  %i.iy = getelementptr [8 x i8], ptr %i.id, i64 %indvars.iv.i
  store i64 %i.ix, ptr %i.iy, align 8, !tbaa !63
  %i.iz = load i32, ptr %i.ih, align 4, !tbaa !201
  %i.ja = add i32 %i.iz, 1
  store i32 %i.ja, ptr %i.ih, align 4, !tbaa !201
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %.0.i.i.i
  br i1 %exitcond.not.i, label %iseq_build_kw.exit, label %bb.ba, !llvm.loop !722

.thread.loopexit.split.loop.exit.i:               ; preds = %bb.bc
  %i.jb = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.thread.i

.thread.loopexit.split.loop.exit94.i:             ; preds = %RB_SYMBOL_P.exit.i
  %i.jc = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.split.loop.exit94.i, %.thread.loopexit.split.loop.exit.i, %int_param.exit.i
  %.056.lcssa.i = phi i32 [ 0, %int_param.exit.i ], [ %i.jc, %.thread.loopexit.split.loop.exit94.i ], [ %i.jb, %.thread.loopexit.split.loop.exit.i ] ; 4 uses
  %i.jd = icmp eq i32 %.056.lcssa.i, %i.hi
  br i1 %i.jd, label %iseq_build_kw.exit, label %bb.bd

bb.bd:                                            ; preds = %.thread.i
  %i.je = sub nuw i32 %i.hi, %.056.lcssa.i        ; 2 uses
  %i.jf = icmp sgt i32 %i.je, -1
  call void @llvm.assume(i1 %i.jf)
  %i.jg = zext nneg i32 %i.je to i64              ; 2 uses
  %i.jh = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.jg, i64 noundef 8) #39 ; 2 uses
  %i.ji = icmp slt i32 %.056.lcssa.i, %i.hi
  br i1 %i.ji, label %.lr.ph83.i, label %._crit_edge.i

.lr.ph83.i:                                       ; preds = %bb.bd
  %i.jj = getelementptr i8, ptr %i.gy, i64 16
  %i.jk = getelementptr i8, ptr %i.gy, i64 32
  %i.jl = ptrtoint ptr %0 to i64
  %i.jm = zext i32 %.056.lcssa.i to i64
  br label %bb.be

bb.be:                                            ; preds = %rb_obj_write.exit.i, %.lr.ph83.i
  %indvars.iv301 = phi i64 [ %indvars.iv.next302, %rb_obj_write.exit.i ], [ 0, %.lr.ph83.i ] ; 2 uses
  %indvars.iv86.i = phi i64 [ %indvars.iv.next87.i, %rb_obj_write.exit.i ], [ %i.jm, %.lr.ph83.i ] ; 3 uses
  %i.jn = load i64, ptr %i.gy, align 8, !tbaa !100
  %i.jo = and i64 %i.jn, 8192
  %.not.i.i61.i = icmp eq i64 %i.jo, 0
  br i1 %.not.i.i61.i, label %bb.bf, label %RARRAY_AREF.exit63.i

bb.bf:                                            ; preds = %bb.be
  %i.jp = load ptr, ptr %i.jk, align 8, !tbaa !47
  br label %RARRAY_AREF.exit63.i

RARRAY_AREF.exit63.i:                             ; preds = %bb.bf, %bb.be
  %.0.i.i62.i = phi ptr [ %i.jp, %bb.bf ], [ %i.jj, %bb.be ]
  %i.jq = getelementptr [8 x i8], ptr %.0.i.i62.i, i64 %indvars.iv86.i
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !63 ; 3 uses
  %i.js = call i64 @rb_to_array_type(i64 noundef %i.jr) #37 ; 0 uses
end_hunk_0
begin_hunk_1_@compile_super:ISEQ_COMPILE_DATA.exit198
  %i.du = getelementptr i8, ptr %i.ai, i64 240
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph265, %bb.p
  %.0175264 = phi i32 [ 0, %.lr.ph265 ], [ %i.dy, %bb.p ] ; 2 uses
  %i.dv = load i32, ptr %i.dt, align 8, !tbaa !170
  %i.dw = add i32 %.0175264, %i.dq
  %i.dx = sub i32 %i.dv, %i.dw
  call fastcc void @iseq_add_getlocal(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %2, i32 noundef %i.dx, i32 noundef %.0.lcssa.i)
  %i.dy = add nuw nsw i32 %.0175264, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.dy, %i.do
  br i1 %exitcond.not, label %._crit_edge266.loopexit, label %bb.p, !llvm.loop !1163

._crit_edge266.loopexit:                          ; preds = %bb.p
  %i.dz = shl nuw i32 %i.do, 1
  %i.ea = or disjoint i32 %i.dz, 1
  %i.eb = zext i32 %i.ea to i64
  br label %._crit_edge266

._crit_edge266:                                   ; preds = %._crit_edge266.loopexit, %.preheader254
  %.0175.lcssa = phi i64 [ 1, %.preheader254 ], [ %i.eb, %._crit_edge266.loopexit ]
  %i.ec = load i64, ptr %2, align 8, !tbaa !172
  %i.ed = lshr i64 %i.ec, 15
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = getelementptr i8, ptr %2, i64 24
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !243
  %i.eh = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.ee, i32 noundef %i.eg, i32 noundef 34, i32 noundef 1, i64 noundef %.0175.lcssa) ; 3 uses
  %i.ei = load ptr, ptr %i.e, align 8, !tbaa !42  ; 2 uses
  %i.ej = getelementptr i8, ptr %i.eh, i64 16
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !61
  %i.ek = getelementptr i8, ptr %i.ei, i64 8
  store ptr %i.eh, ptr %i.ek, align 8, !tbaa !62
  store ptr %i.eh, ptr %i.e, align 8, !tbaa !42
  %i.el = or i32 %i.dk, 4096                      ; 2 uses
  store i32 %i.el, ptr %i.a, align 4, !tbaa !37
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph269, %bb.q
  %.0173268 = phi i32 [ 0, %.lr.ph269 ], [ %i.ep, %bb.q ] ; 2 uses
  %i.em = load i32, ptr %i.du, align 8, !tbaa !170
  %i.en = add i32 %.0173268, %i.dq
  %i.eo = sub i32 %i.em, %i.en
  call fastcc void @iseq_add_getlocal(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %2, i32 noundef %i.eo, i32 noundef %.0.lcssa.i)
  %i.ep = add nuw nsw i32 %.0173268, 1            ; 2 uses
  %exitcond283.not = icmp eq i32 %i.ep, %i.do
  br i1 %exitcond283.not, label %._crit_edge270, label %bb.q, !llvm.loop !1164

._crit_edge270:                                   ; preds = %bb.q, %.preheader
  %i.eq = add i32 %i.dq, %i.do
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge266, %._crit_edge270, %bb.n
  %i.er = phi i32 [ %i.dk, %bb.n ], [ %i.el, %._crit_edge266 ], [ %i.dk, %._crit_edge270 ] ; 2 uses
  %.4 = phi i32 [ %.2, %bb.n ], [ %.2, %._crit_edge266 ], [ %i.eq, %._crit_edge270 ] ; 3 uses
  %i.es = load i16, ptr %i.aj, align 8            ; 2 uses
  %i.et = and i16 %i.es, 16
  %.not184 = icmp eq i16 %i.et, 0
  br i1 %.not184, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eu = getelementptr i8, ptr %i.ai, i64 240    ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !170
  %i.ew = add i32 %.4, 1
  %i.ex = load i64, ptr %2, align 8, !tbaa !172
  %i.ey = lshr i64 %i.ex, 15
  %i.ez = trunc i64 %i.ey to i32
  %i.fa = getelementptr i8, ptr %2, i64 24        ; 5 uses
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !243
  %i.fc = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.ez, i32 noundef %i.fb, i32 noundef 20, i32 noundef 1, i64 noundef 3) ; 3 uses
  %i.fd = load ptr, ptr %i.e, align 8, !tbaa !42  ; 2 uses
  %i.fe = getelementptr i8, ptr %i.fc, i64 16
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !61
  %i.ff = getelementptr i8, ptr %i.fd, i64 8
  store ptr %i.fc, ptr %i.ff, align 8, !tbaa !62
  store ptr %i.fc, ptr %i.e, align 8, !tbaa !42
  %i.fg = load i16, ptr %i.aj, align 8
  %i.fh = and i16 %i.fg, 32
  %.not186 = icmp eq i16 %i.fh, 0
  br i1 %.not186, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fi = load i32, ptr %i.eu, align 8, !tbaa !170
  %i.fj = getelementptr i8, ptr %i.al, i64 12
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !200
  %i.fl = sub i32 %i.fi, %i.fk
  call fastcc void @iseq_add_getlocal(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %2, i32 noundef %i.fl, i32 noundef %.0.lcssa.i)
  %i.fm = load i64, ptr %2, align 8, !tbaa !172
  %i.fn = lshr i64 %i.fm, 15
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = load i32, ptr %i.fa, align 8, !tbaa !243
  %.pr.i = load i64, ptr @compile_super.rbimpl_id, align 8, !tbaa !63 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i210, label %rbimpl_intern_const.exit

.lr.ph.i210:                                      ; preds = %bb.t, %.lr.ph.i210
  %i.fq = call i64 @rb_intern2(ptr noundef nonnull @.str.113, i64 noundef 3) #37 ; 3 uses
  store i64 %i.fq, ptr @compile_super.rbimpl_id, align 8, !tbaa !63
  %.not.i211 = icmp eq i64 %i.fq, 0
  br i1 %.not.i211, label %.lr.ph.i210, label %rbimpl_intern_const.exit, !llvm.loop !3

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i210, %bb.t
  %.lcssa.i = phi i64 [ %.pr.i, %bb.t ], [ %i.fq, %.lr.ph.i210 ]
  %i.fr = call fastcc ptr @new_insn_send(ptr noundef nonnull %0, i32 noundef %i.fo, i32 noundef %i.fp, i64 noundef %.lcssa.i, i64 noundef 1, ptr noundef null, i64 noundef 1, ptr noundef null)
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.fs = load i64, ptr %2, align 8, !tbaa !172
  %i.ft = lshr i64 %i.fs, 15
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = load i32, ptr %i.fa, align 8, !tbaa !243
  %i.fw = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.fu, i32 noundef %i.fv, i32 noundef 37, i32 noundef 1, i64 noundef 1)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %rbimpl_intern_const.exit
  %.sink312 = phi ptr [ %i.fw, %bb.u ], [ %i.fr, %rbimpl_intern_const.exit ] ; 3 uses
  %i.fx = load ptr, ptr %i.e, align 8, !tbaa !42  ; 2 uses
  %i.fy = getelementptr i8, ptr %.sink312, i64 16
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !61
  %i.fz = getelementptr i8, ptr %i.fx, i64 8
  store ptr %.sink312, ptr %i.fz, align 8, !tbaa !62
  store ptr %.sink312, ptr %i.e, align 8, !tbaa !42
  %i.ga = load i32, ptr %i.al, align 8, !tbaa !197
  %i.gb = icmp sgt i32 %i.ga, 0
  br i1 %i.gb, label %.lr.ph273, label %._crit_edge274

.lr.ph273:                                        ; preds = %bb.v
  %i.gc = getelementptr i8, ptr %i.al, i64 16
  %i.gd = getelementptr i8, ptr %i.ag, i64 24
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph273, %get_local_var_idx.exit225
  %indvars.iv = phi i64 [ 0, %.lr.ph273 ], [ %indvars.iv.next, %get_local_var_idx.exit225 ] ; 2 uses
  %i.ge = load ptr, ptr %i.gc, align 8, !tbaa !202
  %i.gf = getelementptr [8 x i8], ptr %i.ge, i64 %indvars.iv
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !63 ; 2 uses
  %i.gh = load ptr, ptr %i.ah, align 8, !tbaa !70
  %i.gi = getelementptr i8, ptr %i.gh, i64 176
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !242
  %i.gk = getelementptr i8, ptr %i.gj, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !70 ; 2 uses
  %i.gm = getelementptr i8, ptr %i.gl, i64 240
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !170 ; 2 uses
  %.not.i.i214 = icmp eq i32 %i.gn, 0
  br i1 %.not.i.i214, label %get_dyna_var_idx_at_raw.exit.thread.i220, label %.lr.ph.i.i215

.lr.ph.i.i215:                                    ; preds = %bb.w
  %i.go = getelementptr i8, ptr %i.gl, i64 144
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !179
  %wide.trip.count.i.i216 = zext i32 %i.gn to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph.i.i215
  %indvars.iv.i.i217 = phi i64 [ 0, %.lr.ph.i.i215 ], [ %indvars.iv.next.i.i218, %bb.y ] ; 3 uses
  %i.gq = getelementptr [8 x i8], ptr %i.gp, i64 %indvars.iv.i.i217
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !63
  %i.gs = icmp eq i64 %i.gr, %i.gg
  br i1 %i.gs, label %get_dyna_var_idx_at_raw.exit.i224, label %bb.y

bb.y:                                             ; preds = %bb.x
  %indvars.iv.next.i.i218 = add nuw nsw i64 %indvars.iv.i.i217, 1 ; 2 uses
  %exitcond.not.i.i219 = icmp eq i64 %indvars.iv.next.i.i218, %wide.trip.count.i.i216
  br i1 %exitcond.not.i.i219, label %get_dyna_var_idx_at_raw.exit.thread.i220, label %bb.x, !llvm.loop !14

get_dyna_var_idx_at_raw.exit.i224:                ; preds = %bb.x
  %i.gt = trunc nuw i64 %indvars.iv.i.i217 to i32 ; 3 uses
  %i.gu = icmp slt i32 %i.gt, 0
  br i1 %i.gu, label %get_dyna_var_idx_at_raw.exit.thread.i220, label %get_local_var_idx.exit225

get_dyna_var_idx_at_raw.exit.thread.i220:         ; preds = %bb.y, %get_dyna_var_idx_at_raw.exit.i224, %bb.w
  %.07.i8.i221 = phi i32 [ %i.gt, %get_dyna_var_idx_at_raw.exit.i224 ], [ -1, %bb.w ], [ -1, %bb.y ] ; 2 uses
  %i.gv = load ptr, ptr %i.gd, align 8, !tbaa !47
  %i.gw = getelementptr i8, ptr %i.gv, i64 128
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !60
  call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef nonnull %i.ag, i32 noundef %i.gx, ptr noundef nonnull @.str.146, i32 noundef %.07.i8.i221)
  br label %get_local_var_idx.exit225

get_local_var_idx.exit225:                        ; preds = %get_dyna_var_idx_at_raw.exit.i224, %get_dyna_var_idx_at_raw.exit.thread.i220
  %.07.i9.i223 = phi i32 [ %.07.i8.i221, %get_dyna_var_idx_at_raw.exit.thread.i220 ], [ %i.gt, %get_dyna_var_idx_at_raw.exit.i224 ]
  %i.gy = sub i32 %i.ev, %.07.i9.i223
  %i.gz = load i64, ptr %2, align 8, !tbaa !172
  %i.ha = lshr i64 %i.gz, 15
  %i.hb = trunc i64 %i.ha to i32
  %i.hc = load i32, ptr %i.fa, align 8, !tbaa !243
  %i.hd = call i64 @rb_id2sym(i64 noundef %i.gg) #37
  %i.he = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.hb, i32 noundef %i.hc, i32 noundef 19, i32 noundef 1, i64 noundef %i.hd) ; 3 uses
  %i.hf = load ptr, ptr %i.e, align 8, !tbaa !42  ; 2 uses
  %i.hg = getelementptr i8, ptr %i.he, i64 16
  store ptr %i.hf, ptr %i.hg, align 8, !tbaa !61
  %i.hh = getelementptr i8, ptr %i.hf, i64 8
  store ptr %i.he, ptr %i.hh, align 8, !tbaa !62
  store ptr %i.he, ptr %i.e, align 8, !tbaa !42
  call fastcc void @iseq_add_getlocal(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %2, i32 noundef %i.gy, i32 noundef %.0.lcssa.i)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.hi = load i32, ptr %i.al, align 8, !tbaa !197
  %i.hj = sext i32 %i.hi to i64
  %i.hk = icmp slt i64 %indvars.iv.next, %i.hj
  br i1 %i.hk, label %bb.w, label %._crit_edge274.loopexit, !llvm.loop !1165

._crit_edge274.loopexit:                          ; preds = %get_local_var_idx.exit225
  %i.hl = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.hm = shl i32 %i.hl, 1
  %i.hn = or disjoint i32 %i.hm, 1
  %i.ho = sext i32 %i.hn to i64
  %i.hp = shl nsw i64 %i.ho, 1
  %i.hq = or disjoint i64 %i.hp, 1
  br label %._crit_edge274

._crit_edge274:                                   ; preds = %._crit_edge274.loopexit, %bb.v
  %.1177.lcssa = phi i64 [ 3, %bb.v ], [ %i.hq, %._crit_edge274.loopexit ]
  %i.hr = load i64, ptr %2, align 8, !tbaa !172
  %i.hs = lshr i64 %i.hr, 15
  %i.ht = trunc i64 %i.hs to i32
  %i.hu = load i32, ptr %i.fa, align 8, !tbaa !243
  %i.hv = call fastcc ptr @new_insn_send(ptr noundef nonnull %0, i32 noundef %i.ht, i32 noundef %i.hu, i64 noundef 167, i64 noundef %.1177.lcssa, ptr noundef null, i64 noundef 1, ptr noundef null) ; 3 uses
  %i.hw = load ptr, ptr %i.e, align 8, !tbaa !42  ; 2 uses
  %i.hx = getelementptr i8, ptr %i.hv, i64 16
  store ptr %i.hw, ptr %i.hx, align 8, !tbaa !61
  %i.hy = getelementptr i8, ptr %i.hw, i64 8
  store ptr %i.hv, ptr %i.hy, align 8, !tbaa !62
  store ptr %i.hv, ptr %i.e, align 8, !tbaa !42
  %i.hz = or i32 %i.er, 2112
  store i32 %i.hz, ptr %i.a, align 4, !tbaa !37
  br label %bb.ab

bb.z:                                             ; preds = %bb.r
  %i.ia = and i16 %i.es, 32
  %.not185 = icmp eq i16 %i.ia, 0
  br i1 %.not185, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ib = getelementptr i8, ptr %i.ai, i64 240
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !170
  %i.id = getelementptr i8, ptr %i.al, i64 12
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !200
  %i.if = sub i32 %i.ic, %i.ie
  call fastcc void @iseq_add_getlocal(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %2, i32 noundef %i.if, i32 noundef %.0.lcssa.i)
  %i.ig = add i32 %.4, 1
  %i.ih = or i32 %i.er, 64
  store i32 %i.ih, ptr %i.a, align 4, !tbaa !37
  br label %bb.ab

bb.ab:                                            ; preds = %bb.d, %._crit_edge274, %bb.aa, %bb.z
  %.2172 = phi i1 [ %i.ae, %bb.d ], [ true, %bb.z ], [ true, %bb.aa ], [ true, %._crit_edge274 ]
  %.6 = phi i32 [ %i.q, %bb.d ], [ %.4, %bb.z ], [ %i.ig, %bb.aa ], [ %i.ew, %._crit_edge274 ] ; 2 uses
  %i.ii = icmp eq ptr %i.i, null                  ; 2 uses
  %or.cond = select i1 %.2172, i1 %i.ii, i1 false
  br i1 %or.cond, label %bb.ac, label %iseq_set_use_block.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ij = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.ik = getelementptr i8, ptr %i.ij, i64 176
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !242
  %i.im = getelementptr i8, ptr %i.il, i64 16
  %.val = load ptr, ptr %i.im, align 8, !tbaa !70 ; 2 uses
  %i.in = getelementptr i8, ptr %.val, i64 16     ; 2 uses
  %i.io = load i16, ptr %i.in, align 8            ; 2 uses
  %i.ip = and i16 %i.io, 4096
  %.not.i230 = icmp eq i16 %i.ip, 0
  br i1 %.not.i230, label %bb.ad, label %iseq_set_use_block.exit

bb.ad:                                            ; preds = %bb.ac
  %i.iq = or disjoint i16 %i.io, 4096
  store i16 %i.iq, ptr %i.in, align 8
  %i.ir = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !206
  %i.is = call zeroext i1 @rb_warning_category_enabled_p(i32 noundef 4) #37
  br i1 %i.is, label %iseq_set_use_block.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.it = getelementptr i8, ptr %.val, i64 80
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !207
  %i.iv = call i64 @rb_intern_str(i64 noundef %i.iu) #37
  %i.iw = getelementptr i8, ptr %i.ir, i64 1304
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !231
  %i.iy = call i32 @rb_set_insert(ptr noundef %i.ix, i64 noundef %i.iv) #37 ; 0 uses
  br label %iseq_set_use_block.exit

iseq_set_use_block.exit:                          ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %i.iz = load i32, ptr %i.a, align 4, !tbaa !37
  %i.ja = icmp eq i32 %4, 42
  %spec.select195.v = select i1 %i.ja, i32 772, i32 260
  %spec.select195 = or i32 %i.iz, %spec.select195.v
  store i32 %spec.select195, ptr %i.a, align 4, !tbaa !37
  %i.jb = load i64, ptr %2, align 8, !tbaa !172
  %i.jc = lshr i64 %i.jb, 15
  %i.jd = trunc i64 %i.jc to i32
  %i.je = getelementptr i8, ptr %2, i64 24        ; 3 uses
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !243
  %i.jg = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.jd, i32 noundef %i.jf, i32 noundef 18, i32 noundef 0, ptr noundef null) ; 5 uses
  %i.jh = getelementptr i8, ptr %1, i64 24        ; 7 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !42 ; 2 uses
  %i.jj = getelementptr i8, ptr %i.jg, i64 16
  store ptr %i.ji, ptr %i.jj, align 8, !tbaa !61
  %i.jk = getelementptr i8, ptr %i.ji, i64 8
  store ptr %i.jg, ptr %i.jk, align 8, !tbaa !62
  store ptr %i.jg, ptr %i.jh, align 8, !tbaa !42
  %i.jl = load ptr, ptr %i.j, align 8, !tbaa !87  ; 2 uses
  %.not.i233 = icmp eq ptr %i.jl, null
  br i1 %.not.i233, label %APPEND_LIST.exit, label %bb.af

bb.af:                                            ; preds = %iseq_set_use_block.exit
  %i.jm = getelementptr i8, ptr %i.jg, i64 8
  store ptr %i.jl, ptr %i.jm, align 8, !tbaa !62
  %i.jn = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.jo = getelementptr i8, ptr %i.jn, i64 16
  store ptr %i.jg, ptr %i.jo, align 8, !tbaa !61
  %i.jp = load ptr, ptr %i.e, align 8, !tbaa !42
  store ptr %i.jp, ptr %i.jh, align 8, !tbaa !42
  br label %APPEND_LIST.exit

APPEND_LIST.exit:                                 ; preds = %iseq_set_use_block.exit, %bb.af
  %i.jq = load i32, ptr %i.a, align 4, !tbaa !37  ; 2 uses
  %i.jr = load ptr, ptr %i.b, align 8, !tbaa !566 ; 3 uses
  %.not288 = xor i1 %i.ii, true
  %i.js = zext i1 %.not288 to i32
  %.not.i234 = icmp ne ptr %i.jr, null            ; 2 uses
  br i1 %.not.i234, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %APPEND_LIST.exit
  %i.jt = or i32 %i.jq, 32
  %i.ju = load i32, ptr %i.jr, align 8, !tbaa !37
  %i.jv = add i32 %i.ju, %.6
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %APPEND_LIST.exit
  %.015.i = phi i32 [ %i.jt, %bb.ag ], [ %i.jq, %APPEND_LIST.exit ] ; 3 uses
  %.0.i235 = phi i32 [ %i.jv, %bb.ag ], [ %.6, %APPEND_LIST.exit ] ; 3 uses
  %i.jw = and i32 %.015.i, 8291
  %i.jx = or i32 %i.jw, %i.js
  %or.cond.not.i = icmp eq i32 %i.jx, 0
  %i.jy = or i32 %.015.i, 16
  %spec.select.i = select i1 %or.cond.not.i, i32 %i.jy, i32 %.015.i ; 3 uses
  %i.jz = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.ka = getelementptr i8, ptr %i.jz, i64 260    ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !121
  %i.kc = add i32 %i.kb, 1
  store i32 %i.kc, ptr %i.ka, align 4, !tbaa !121
  %i.kd = icmp ugt i32 %spec.select.i, 65535
  %i.ke = icmp ugt i32 %.0.i235, 32767
  %or.cond.i.i = or i1 %.not.i234, %i.ke
  %or.cond.i = select i1 %i.kd, i1 true, i1 %or.cond.i.i
  br i1 %or.cond.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.kf = shl nuw i32 %spec.select.i, 16
  %i.kg = shl nuw nsw i32 %.0.i235, 1
  %i.kh = or disjoint i32 %i.kf, %i.kg
  %i.ki = or disjoint i32 %i.kh, 1
  %i.kj = zext i32 %i.ki to i64
  %i.kk = inttoptr i64 %i.kj to ptr
  br label %vm_ci_new_.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.kl = call ptr @rb_vm_ci_lookup(i64 noundef 0, i32 noundef %spec.select.i, i32 noundef %.0.i235, ptr noundef %i.jr) #37
  br label %vm_ci_new_.exit.i

vm_ci_new_.exit.i:                                ; preds = %bb.aj, %bb.ai
  %.0.i.i = phi ptr [ %i.kl, %bb.aj ], [ %i.kk, %bb.ai ] ; 3 uses
  %i.km = ptrtoint ptr %.0.i.i to i64             ; 5 uses
  %i.kn = icmp eq ptr %.0.i.i, null
  %i.ko = and i64 %i.km, 7
  %i.kp = icmp ne i64 %i.ko, 0
  %i.kq = or i1 %i.kn, %i.kp
  br i1 %i.kq, label %new_callinfo.exit, label %bb.ak

bb.ak:                                            ; preds = %vm_ci_new_.exit.i
  %i.kr = ptrtoint ptr %0 to i64
  call void @rb_gc_writebarrier(i64 noundef %i.kr, i64 noundef %i.km) #37
  br label %new_callinfo.exit

new_callinfo.exit:                                ; preds = %vm_ci_new_.exit.i, %bb.ak
  %.not.i.i236 = trunc i64 %i.km to i1
  br i1 %.not.i.i236, label %bb.al, label %bb.am

bb.al:                                            ; preds = %new_callinfo.exit
  %i.ks = trunc i64 %i.km to i32
  %i.kt = lshr i32 %i.ks, 16
  br label %vm_ci_flag.exit

bb.am:                                            ; preds = %new_callinfo.exit
  %i.ku = getelementptr i8, ptr %.0.i.i, i64 24
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !96
  %i.kw = trunc i64 %i.kv to i32
  br label %vm_ci_flag.exit

vm_ci_flag.exit:                                  ; preds = %bb.al, %bb.am
  %.0.i237 = phi i32 [ %i.kt, %bb.al ], [ %i.kw, %bb.am ]
  %i.kx = and i32 %.0.i237, 8192
  %.not191 = icmp eq i32 %i.kx, 0
  %i.ky = load i64, ptr %2, align 8, !tbaa !172
  %i.kz = lshr i64 %i.ky, 15
  %i.la = trunc i64 %i.kz to i32
  %i.lb = load i32, ptr %i.je, align 8, !tbaa !243
  %i.lc = ptrtoint ptr %i.i to i64
  %. = select i1 %.not191, i32 67, i32 68
  %i.ld = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.la, i32 noundef %i.lb, i32 noundef %., i32 noundef 2, i64 noundef %i.km, i64 noundef %i.lc) ; 3 uses
  %i.le = load ptr, ptr %i.jh, align 8, !tbaa !42 ; 2 uses
  %i.lf = getelementptr i8, ptr %i.ld, i64 16
  store ptr %i.le, ptr %i.lf, align 8, !tbaa !61
  %i.lg = getelementptr i8, ptr %i.le, i64 8
  store ptr %i.ld, ptr %i.lg, align 8, !tbaa !62
  store ptr %i.ld, ptr %i.jh, align 8, !tbaa !42
end_hunk_1
begin_hunk_2_@pm_compile_forwarding_super_node:bb.a
  %i.jb = getelementptr i8, ptr %i.ff, i64 240
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph318, %bb.aa
  %.0212316 = phi i32 [ 0, %.lr.ph318 ], [ %i.jh, %bb.aa ] ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !170
  %i.jd = add i32 %.0212316, %i.iz
  %i.je = sub i32 %i.jc, %i.jd
  %i.jf = load i32, ptr %2, align 4, !tbaa !370
  %i.jg = load i32, ptr %i.cw, align 4, !tbaa !372
  call fastcc void @pm_iseq_add_getlocal(ptr noundef nonnull %0, ptr noundef %7, i32 noundef %i.jf, i32 noundef %i.jg, i32 noundef %i.je, i32 noundef %.0.lcssa.i)
  %i.jh = add nuw nsw i32 %.0212316, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.jh, %i.ix
  br i1 %exitcond.not, label %._crit_edge319.loopexit, label %bb.aa, !llvm.loop !1376

._crit_edge319.loopexit:                          ; preds = %bb.aa
  %.pre342 = load i16, ptr %i.fo, align 8
  %i.ji = shl nuw i32 %i.ix, 1
  %i.jj = or disjoint i32 %i.ji, 1
  %i.jk = zext i32 %i.jj to i64
  br label %._crit_edge319

._crit_edge319:                                   ; preds = %._crit_edge319.loopexit, %bb.z
  %i.jl = phi i16 [ %i.iu, %bb.z ], [ %.pre342, %._crit_edge319.loopexit ] ; 2 uses
  %.0212.lcssa = phi i64 [ 1, %bb.z ], [ %i.jk, %._crit_edge319.loopexit ]
  %i.jm = and i16 %i.jl, 4
  %.not226 = icmp eq i16 %i.jm, 0
  br i1 %.not226, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge319
  %i.jn = load i32, ptr %2, align 4, !tbaa !370
  %i.jo = load i32, ptr %i.cw, align 4, !tbaa !372
  %i.jp = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.jn, i32 noundef %i.jo, i32 noundef 27, i32 noundef 1, i64 noundef %.0212.lcssa) ; 3 uses
  %i.jq = load ptr, ptr %i.ez, align 8, !tbaa !42 ; 2 uses
  %i.jr = getelementptr i8, ptr %i.jp, i64 16
  store ptr %i.jq, ptr %i.jr, align 8, !tbaa !61
  %i.js = getelementptr i8, ptr %i.jq, i64 8
  store ptr %i.jp, ptr %i.js, align 8, !tbaa !62
  store ptr %i.jp, ptr %i.ez, align 8, !tbaa !42
  %i.jt = load i32, ptr %2, align 4, !tbaa !370
  %i.ju = load i32, ptr %i.cw, align 4, !tbaa !372
  %i.jv = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.jt, i32 noundef %i.ju, i32 noundef 32, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.jw = load ptr, ptr %i.ez, align 8, !tbaa !42 ; 2 uses
  %i.jx = getelementptr i8, ptr %i.jv, i64 16
  store ptr %i.jw, ptr %i.jx, align 8, !tbaa !61
  %i.jy = getelementptr i8, ptr %i.jw, i64 8
  store ptr %i.jv, ptr %i.jy, align 8, !tbaa !62
  store ptr %i.jv, ptr %i.ez, align 8, !tbaa !42
  %.pre343 = load i16, ptr %i.fo, align 8
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge319
  %i.jz = add i32 %i.iz, %i.ix
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.y
  %i.ka = phi i16 [ %i.iu, %bb.y ], [ %.pre343, %bb.ab ], [ %i.jl, %bb.ac ] ; 2 uses
  %.4 = phi i32 [ %.2, %bb.y ], [ %.2, %bb.ab ], [ %i.jz, %bb.ac ] ; 3 uses
  %i.kb = getelementptr i8, ptr %i.ff, i64 56
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !191 ; 5 uses
  %i.kd = and i16 %i.ka, 16
  %.not227 = icmp eq i16 %i.kd, 0
  br i1 %.not227, label %bb.al, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ke = getelementptr i8, ptr %i.ff, i64 240    ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 8, !tbaa !170
  %i.kg = add i32 %.4, 1
  %i.kh = load i32, ptr %2, align 4, !tbaa !370
  %i.ki = load i32, ptr %i.cw, align 4, !tbaa !372
  %i.kj = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.kh, i32 noundef %i.ki, i32 noundef 20, i32 noundef 1, i64 noundef 3) ; 3 uses
  %i.kk = load ptr, ptr %i.ez, align 8, !tbaa !42 ; 2 uses
  %i.kl = getelementptr i8, ptr %i.kj, i64 16
  store ptr %i.kk, ptr %i.kl, align 8, !tbaa !61
  %i.km = getelementptr i8, ptr %i.kk, i64 8
  store ptr %i.kj, ptr %i.km, align 8, !tbaa !62
  store ptr %i.kj, ptr %i.ez, align 8, !tbaa !42
  %i.kn = load i16, ptr %i.fo, align 8
  %i.ko = and i16 %i.kn, 32
  %.not229 = icmp eq i16 %i.ko, 0
  br i1 %.not229, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.kp = load i32, ptr %i.ke, align 8, !tbaa !170
  %i.kq = getelementptr i8, ptr %i.kc, i64 12
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !200
  %i.ks = sub i32 %i.kp, %i.kr
  %i.kt = load i32, ptr %2, align 4, !tbaa !370
  %i.ku = load i32, ptr %i.cw, align 4, !tbaa !372
  call fastcc void @pm_iseq_add_getlocal(ptr noundef nonnull %0, ptr noundef %7, i32 noundef %i.kt, i32 noundef %i.ku, i32 noundef %i.ks, i32 noundef %.0.lcssa.i)
  %i.kv = load i32, ptr %2, align 4, !tbaa !370
  %i.kw = load i32, ptr %i.cw, align 4, !tbaa !372
  %.pr.i = load i64, ptr @pm_compile_forwarding_super_node.rbimpl_id, align 8, !tbaa !63 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i271, label %rbimpl_intern_const.exit

.lr.ph.i271:                                      ; preds = %bb.af, %.lr.ph.i271
  %i.kx = call i64 @rb_intern2(ptr noundef nonnull @.str.113, i64 noundef 3) #37 ; 3 uses
  store i64 %i.kx, ptr @pm_compile_forwarding_super_node.rbimpl_id, align 8, !tbaa !63
  %.not.i272 = icmp eq i64 %i.kx, 0
  br i1 %.not.i272, label %.lr.ph.i271, label %rbimpl_intern_const.exit, !llvm.loop !3

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i271, %bb.af
  %.lcssa.i = phi i64 [ %.pr.i, %bb.af ], [ %i.kx, %.lr.ph.i271 ]
  %i.ky = call fastcc ptr @new_insn_send(ptr noundef nonnull %0, i32 noundef %i.kv, i32 noundef %i.kw, i64 noundef %.lcssa.i, i64 noundef 1, ptr noundef null, i64 noundef 1, ptr noundef null)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.kz = load i32, ptr %2, align 4, !tbaa !370
  %i.la = load i32, ptr %i.cw, align 4, !tbaa !372
  %i.lb = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.kz, i32 noundef %i.la, i32 noundef 37, i32 noundef 1, i64 noundef 1)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %rbimpl_intern_const.exit
  %.sink384 = phi ptr [ %i.lb, %bb.ag ], [ %i.ky, %rbimpl_intern_const.exit ] ; 3 uses
  %i.lc = load ptr, ptr %i.ez, align 8, !tbaa !42 ; 2 uses
  %i.ld = getelementptr i8, ptr %.sink384, i64 16
  store ptr %i.lc, ptr %i.ld, align 8, !tbaa !61
  %i.le = getelementptr i8, ptr %i.lc, i64 8
  store ptr %.sink384, ptr %i.le, align 8, !tbaa !62
  store ptr %.sink384, ptr %i.ez, align 8, !tbaa !42
  %i.lf = load i32, ptr %i.kc, align 8, !tbaa !197
  %i.lg = icmp sgt i32 %i.lf, 0
  br i1 %i.lg, label %.lr.ph323, label %._crit_edge324

.lr.ph323:                                        ; preds = %bb.ah
  %i.lh = getelementptr i8, ptr %i.kc, i64 16
  %i.li = getelementptr i8, ptr %i.fd, i64 24
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph323, %get_local_var_idx.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph323 ], [ %indvars.iv.next, %get_local_var_idx.exit ] ; 2 uses
  %i.lj = load ptr, ptr %i.lh, align 8, !tbaa !202
  %i.lk = getelementptr [8 x i8], ptr %i.lj, i64 %indvars.iv
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !63 ; 2 uses
  %i.lm = load ptr, ptr %i.fe, align 8, !tbaa !70
  %i.ln = getelementptr i8, ptr %i.lm, i64 176
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !242
  %i.lp = getelementptr i8, ptr %i.lo, i64 16
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !70 ; 2 uses
  %i.lr = getelementptr i8, ptr %i.lq, i64 240
  %i.ls = load i32, ptr %i.lr, align 8, !tbaa !170 ; 2 uses
  %.not.i.i273 = icmp eq i32 %i.ls, 0
  br i1 %.not.i.i273, label %get_dyna_var_idx_at_raw.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ai
  %i.lt = getelementptr i8, ptr %i.lq, i64 144
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !179
  %wide.trip.count.i.i = zext i32 %i.ls to i64
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.ak ] ; 3 uses
  %i.lv = getelementptr [8 x i8], ptr %i.lu, i64 %indvars.iv.i.i
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !63
  %i.lx = icmp eq i64 %i.lw, %i.ll
  br i1 %i.lx, label %get_dyna_var_idx_at_raw.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %get_dyna_var_idx_at_raw.exit.thread.i, label %bb.aj, !llvm.loop !14

get_dyna_var_idx_at_raw.exit.i:                   ; preds = %bb.aj
  %i.ly = trunc nuw i64 %indvars.iv.i.i to i32    ; 3 uses
  %i.lz = icmp slt i32 %i.ly, 0
  br i1 %i.lz, label %get_dyna_var_idx_at_raw.exit.thread.i, label %get_local_var_idx.exit

get_dyna_var_idx_at_raw.exit.thread.i:            ; preds = %bb.ak, %get_dyna_var_idx_at_raw.exit.i, %bb.ai
  %.07.i8.i = phi i32 [ %i.ly, %get_dyna_var_idx_at_raw.exit.i ], [ -1, %bb.ai ], [ -1, %bb.ak ] ; 2 uses
  %i.ma = load ptr, ptr %i.li, align 8, !tbaa !47
  %i.mb = getelementptr i8, ptr %i.ma, i64 128
  %i.mc = load i32, ptr %i.mb, align 8, !tbaa !60
  call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef nonnull %i.fd, i32 noundef %i.mc, ptr noundef nonnull @.str.146, i32 noundef %.07.i8.i)
  br label %get_local_var_idx.exit

get_local_var_idx.exit:                           ; preds = %get_dyna_var_idx_at_raw.exit.i, %get_dyna_var_idx_at_raw.exit.thread.i
  %.07.i9.i = phi i32 [ %.07.i8.i, %get_dyna_var_idx_at_raw.exit.thread.i ], [ %i.ly, %get_dyna_var_idx_at_raw.exit.i ]
  %i.md = sub i32 %i.kf, %.07.i9.i
  %i.me = call i64 @rb_id2sym(i64 noundef %i.ll) #37
  %i.mf = load i32, ptr %2, align 4, !tbaa !370
  %i.mg = load i32, ptr %i.cw, align 4, !tbaa !372
  %i.mh = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.mf, i32 noundef %i.mg, i32 noundef 19, i32 noundef 1, i64 noundef %i.me) ; 3 uses
  %i.mi = load ptr, ptr %i.ez, align 8, !tbaa !42 ; 2 uses
  %i.mj = getelementptr i8, ptr %i.mh, i64 16
  store ptr %i.mi, ptr %i.mj, align 8, !tbaa !61
  %i.mk = getelementptr i8, ptr %i.mi, i64 8
  store ptr %i.mh, ptr %i.mk, align 8, !tbaa !62
  store ptr %i.mh, ptr %i.ez, align 8, !tbaa !42
  %i.ml = load i32, ptr %2, align 4, !tbaa !370
  %i.mm = load i32, ptr %i.cw, align 4, !tbaa !372
  call fastcc void @pm_iseq_add_getlocal(ptr noundef nonnull %0, ptr noundef %7, i32 noundef %i.ml, i32 noundef %i.mm, i32 noundef %i.md, i32 noundef %.0.lcssa.i)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.mn = load i32, ptr %i.kc, align 8, !tbaa !197
  %i.mo = sext i32 %i.mn to i64
  %i.mp = icmp slt i64 %indvars.iv.next, %i.mo
  br i1 %i.mp, label %bb.ai, label %._crit_edge324.loopexit, !llvm.loop !1377

._crit_edge324.loopexit:                          ; preds = %get_local_var_idx.exit
  %i.mq = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.mr = shl i32 %i.mq, 1
  %i.ms = or disjoint i32 %i.mr, 1
  %i.mt = sext i32 %i.ms to i64
  %i.mu = shl nsw i64 %i.mt, 1
  %i.mv = or disjoint i64 %i.mu, 1
  br label %._crit_edge324

._crit_edge324:                                   ; preds = %._crit_edge324.loopexit, %bb.ah
  %.0211.lcssa = phi i64 [ 3, %bb.ah ], [ %i.mv, %._crit_edge324.loopexit ]
  %i.mw = load i32, ptr %2, align 4, !tbaa !370
  %i.mx = load i32, ptr %i.cw, align 4, !tbaa !372
  %i.my = call fastcc ptr @new_insn_send(ptr noundef nonnull %0, i32 noundef %i.mw, i32 noundef %i.mx, i64 noundef 167, i64 noundef %.0211.lcssa, ptr noundef null, i64 noundef 1, ptr noundef null) ; 3 uses
  %i.mz = load ptr, ptr %i.ez, align 8, !tbaa !42 ; 2 uses
  %i.na = getelementptr i8, ptr %i.my, i64 16
  store ptr %i.mz, ptr %i.na, align 8, !tbaa !61
  %i.nb = getelementptr i8, ptr %i.mz, i64 8
  store ptr %i.my, ptr %i.nb, align 8, !tbaa !62
  store ptr %i.my, ptr %i.ez, align 8, !tbaa !42
  %i.nc = or disjoint i32 %.0210, 2112
  br label %bb.an

bb.al:                                            ; preds = %bb.ad
  %i.nd = and i16 %i.ka, 32
  %.not228 = icmp eq i16 %i.nd, 0
  br i1 %.not228, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ne = getelementptr i8, ptr %i.ff, i64 240
  %i.nf = load i32, ptr %i.ne, align 8, !tbaa !170
  %i.ng = getelementptr i8, ptr %i.kc, i64 12
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !200
  %i.ni = sub i32 %i.nf, %i.nh
  %i.nj = load i32, ptr %2, align 4, !tbaa !370
  %i.nk = load i32, ptr %i.cw, align 4, !tbaa !372
  call fastcc void @pm_iseq_add_getlocal(ptr noundef nonnull %0, ptr noundef %7, i32 noundef %i.nj, i32 noundef %i.nk, i32 noundef %i.ni, i32 noundef %.0.lcssa.i)
  %i.nl = add i32 %.4, 1
  %i.nm = or disjoint i32 %.0210, 64
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am, %._crit_edge324
  %.5 = phi i32 [ %i.kg, %._crit_edge324 ], [ %i.nl, %bb.am ], [ %.4, %bb.al ] ; 3 uses
  %.1 = phi i32 [ %i.nc, %._crit_edge324 ], [ %i.nm, %bb.am ], [ %.0210, %bb.al ] ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !87 ; 2 uses
  %.not.i274 = icmp eq ptr %i.no, null
  br i1 %.not.i274, label %APPEND_LIST.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.np = load ptr, ptr %i.cz, align 8, !tbaa !42 ; 2 uses
  %i.nq = getelementptr i8, ptr %i.np, i64 8
  store ptr %i.no, ptr %i.nq, align 8, !tbaa !62
  %i.nr = load ptr, ptr %i.nn, align 8, !tbaa !87
  %i.ns = getelementptr i8, ptr %i.nr, i64 16
  store ptr %i.np, ptr %i.ns, align 8, !tbaa !61
  %i.nt = load ptr, ptr %i.ez, align 8, !tbaa !42
  store ptr %i.nt, ptr %i.cz, align 8, !tbaa !42
  br label %APPEND_LIST.exit

APPEND_LIST.exit:                                 ; preds = %bb.an, %bb.ao
  %i.nu = icmp ne ptr %.0, null
  %i.nv = zext i1 %i.nu to i32
  %i.nw = and i32 %.1, 8291
  %i.nx = or i32 %i.nw, %i.nv
  %or.cond.not.i = icmp eq i32 %i.nx, 0
  %i.ny = or i32 %.1, 16
  %spec.select.i276 = select i1 %or.cond.not.i, i32 %i.ny, i32 %.1 ; 2 uses
  %i.nz = load ptr, ptr %i.fa, align 8, !tbaa !70
  %i.oa = getelementptr i8, ptr %i.nz, i64 260    ; 2 uses
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !121
  %i.oc = add i32 %i.ob, 1
  store i32 %i.oc, ptr %i.oa, align 4, !tbaa !121
  %i.od = icmp ugt i32 %.5, 32767
  br i1 %i.od, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %APPEND_LIST.exit
  %i.oe = shl nuw nsw i32 %spec.select.i276, 16
  %i.of = shl nuw nsw i32 %.5, 1
  %i.og = or disjoint i32 %i.oe, %i.of
  %i.oh = or disjoint i32 %i.og, 1
  %i.oi = zext nneg i32 %i.oh to i64
  %i.oj = inttoptr i64 %i.oi to ptr
  br label %vm_ci_new_.exit.i

bb.aq:                                            ; preds = %APPEND_LIST.exit
  %i.ok = call ptr @rb_vm_ci_lookup(i64 noundef 0, i32 noundef %spec.select.i276, i32 noundef %.5, ptr noundef null) #37
  br label %vm_ci_new_.exit.i

vm_ci_new_.exit.i:                                ; preds = %bb.aq, %bb.ap
  %.0.i.i = phi ptr [ %i.ok, %bb.aq ], [ %i.oj, %bb.ap ] ; 2 uses
  %i.ol = ptrtoint ptr %.0.i.i to i64             ; 3 uses
  %i.om = icmp eq ptr %.0.i.i, null
  %i.on = and i64 %i.ol, 7
  %i.oo = icmp ne i64 %i.on, 0
  %i.op = or i1 %i.om, %i.oo
  br i1 %i.op, label %new_callinfo.exit277, label %bb.ar

bb.ar:                                            ; preds = %vm_ci_new_.exit.i
  %i.oq = ptrtoint ptr %0 to i64
  call void @rb_gc_writebarrier(i64 noundef %i.oq, i64 noundef %i.ol) #37
  br label %new_callinfo.exit277

new_callinfo.exit277:                             ; preds = %vm_ci_new_.exit.i, %bb.ar
  %i.or = load i32, ptr %2, align 4, !tbaa !370
  %i.os = load i32, ptr %i.cw, align 4, !tbaa !372
  %i.ot = ptrtoint ptr %.0 to i64                 ; 2 uses
  %i.ou = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.or, i32 noundef %i.os, i32 noundef 67, i32 noundef 2, i64 noundef %i.ol, i64 noundef %i.ot) ; 7 uses
  %i.ov = load ptr, ptr %i.cz, align 8, !tbaa !42 ; 2 uses
  %i.ow = getelementptr i8, ptr %i.ou, i64 16
  store ptr %i.ov, ptr %i.ow, align 8, !tbaa !61
  %i.ox = getelementptr i8, ptr %i.ov, i64 8
  store ptr %i.ou, ptr %i.ox, align 8, !tbaa !62
  store ptr %i.ou, ptr %i.cz, align 8, !tbaa !42
  %i.oy = load ptr, ptr %i.c, align 8, !tbaa !620
  %.not230 = icmp eq ptr %i.oy, null
  br i1 %.not230, label %bb.az, label %bb.as

bb.as:                                            ; preds = %new_callinfo.exit277
  %i.oz = load i32, ptr %i.ou, align 8, !tbaa !88
  %i.pa = icmp eq i32 %i.oz, 2
  br i1 %i.pa, label %get_prev_insn.exit.i.preheader, label %.preheader1.i

.preheader1.i:                                    ; preds = %bb.as, %.preheader1.i
  %.pn.i.i = phi ptr [ %.0.i.i278, %.preheader1.i ], [ %i.ou, %bb.as ]
  %.0.in.i.i = getelementptr i8, ptr %.pn.i.i, i64 16
  %.0.i.i278 = load ptr, ptr %.0.in.i.i, align 8, !tbaa !61, !nonnull !152, !noundef !152 ; 3 uses
  %i.pb = load i32, ptr %.0.i.i278, align 8, !tbaa !88
  %i.pc = and i32 %i.pb, -2
  %switch.i.i = icmp eq i32 %i.pc, 2
  br i1 %switch.i.i, label %get_prev_insn.exit.i.preheader, label %.preheader1.i

get_prev_insn.exit.i.preheader:                   ; preds = %.preheader1.i, %bb.as
  %.0.i280.ph = phi ptr [ %i.ou, %bb.as ], [ %.0.i.i278, %.preheader1.i ]
  br label %get_prev_insn.exit.i

get_prev_insn.exit.i.loopexit:                    ; preds = %bb.at, %.preheader.i281
  br label %get_prev_insn.exit.i

get_prev_insn.exit.i:                             ; preds = %get_prev_insn.exit.i.preheader, %get_prev_insn.exit.i.loopexit
  %.0.i280 = phi ptr [ %.0.i19.i, %get_prev_insn.exit.i.loopexit ], [ %.0.i280.ph, %get_prev_insn.exit.i.preheader ] ; 5 uses
  %i.pd = getelementptr i8, ptr %.0.i280, i64 24
  %i.pe = load i32, ptr %i.pd, align 8, !tbaa !91
  switch i32 %i.pe, label %.preheader.i281 [
    i32 55, label %.critedge.i
    i32 67, label %.critedge.i
    i32 56, label %.critedge.i
    i32 68, label %.critedge.i
  ]

.preheader.i281:                                  ; preds = %get_prev_insn.exit.i, %bb.at
  %.pn.i17.i = phi ptr [ %.0.i19.i, %bb.at ], [ %.0.i280, %get_prev_insn.exit.i ]
  %.0.in.i18.i = getelementptr i8, ptr %.pn.i17.i, i64 16
  %.0.i19.i = load ptr, ptr %.0.in.i18.i, align 8, !tbaa !61 ; 4 uses
  %.not.i20.i = icmp eq ptr %.0.i19.i, null
  br i1 %.not.i20.i, label %get_prev_insn.exit.i.loopexit, label %bb.at, !llvm.loop !24

bb.at:                                            ; preds = %.preheader.i281
  %i.pf = load i32, ptr %.0.i19.i, align 8, !tbaa !88
  %i.pg = and i32 %i.pf, -2
  %switch.i21.i = icmp eq i32 %i.pg, 2
  br i1 %switch.i21.i, label %get_prev_insn.exit.i.loopexit, label %.preheader.i281, !llvm.loop !24

.critedge.i:                                      ; preds = %get_prev_insn.exit.i, %get_prev_insn.exit.i, %get_prev_insn.exit.i, %get_prev_insn.exit.i
  %i.ph = getelementptr i8, ptr %.0.i280, i64 8   ; 2 uses
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !62
  %i.pj = getelementptr i8, ptr %.0209, i64 8     ; 2 uses
  store ptr %i.pi, ptr %i.pj, align 8, !tbaa !62
  %i.pk = getelementptr i8, ptr %.0209, i64 16
  store ptr %.0.i280, ptr %i.pk, align 8, !tbaa !61
  store ptr %.0209, ptr %i.ph, align 8, !tbaa !62
  %i.pl = load ptr, ptr %i.pj, align 8, !tbaa !62 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.pl, null
  br i1 %.not.i23.i, label %ELEM_INSERT_NEXT.exit.i, label %bb.au

bb.au:                                            ; preds = %.critedge.i
  %i.pm = getelementptr i8, ptr %i.pl, i64 16
  store ptr %.0209, ptr %i.pm, align 8, !tbaa !61
  br label %ELEM_INSERT_NEXT.exit.i

ELEM_INSERT_NEXT.exit.i:                          ; preds = %bb.au, %.critedge.i
  %i.pn = icmp eq ptr %.0.i280, %i.ou
  br i1 %i.pn, label %bb.av, label %pm_compile_retry_end_label.exit

bb.av:                                            ; preds = %ELEM_INSERT_NEXT.exit.i
  store ptr %.0209, ptr %i.cz, align 8, !tbaa !42
  br label %pm_compile_retry_end_label.exit

pm_compile_retry_end_label.exit:                  ; preds = %ELEM_INSERT_NEXT.exit.i, %bb.av
  %i.po = ptrtoint ptr %.0208 to i64
  %i.pp = or i64 %i.po, 1
  %i.pq = ptrtoint ptr %.0209 to i64
  %i.pr = or i64 %i.pq, 1                         ; 2 uses
  %i.ps = call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 5, i32 noundef 9, i64 noundef %i.pp, i64 noundef %i.pr, i64 noundef %i.ot, i64 noundef %i.pr) #37 ; 3 uses
  %.not231 = icmp eq ptr %.0208, null
  br i1 %.not231, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %pm_compile_retry_end_label.exit
  %i.pt = getelementptr i8, ptr %.0208, i64 40    ; 2 uses
  %i.pu = load i32, ptr %i.pt, align 8, !tbaa !240
  %i.pv = add i32 %i.pu, 1
  store i32 %i.pv, ptr %i.pt, align 8, !tbaa !240
  %i.pw = getelementptr i8, ptr %.0208, i64 44    ; 2 uses
end_hunk_2
